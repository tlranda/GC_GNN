; ModuleID = 'syr2k_recreations//mmp_syr2k_S_136.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_136.c"
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
  %call760 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1621 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2622 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1621, %call2
  %polly.access.call2641 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2641, %call1
  %2 = or i1 %0, %1
  %polly.access.call661 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call661, %call2
  %4 = icmp ule i8* %polly.access.call2641, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call661, %call1
  %8 = icmp ule i8* %polly.access.call1621, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header746, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep962 = getelementptr i8, i8* %call2, i64 %12
  %scevgep961 = getelementptr i8, i8* %call2, i64 %11
  %scevgep960 = getelementptr i8, i8* %call1, i64 %12
  %scevgep959 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep959, %scevgep962
  %bound1 = icmp ult i8* %scevgep961, %scevgep960
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
  br i1 %exitcond18.not.i, label %vector.ph966, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph966:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert973 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat974 = shufflevector <4 x i64> %broadcast.splatinsert973, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph966
  %index967 = phi i64 [ 0, %vector.ph966 ], [ %index.next968, %vector.body965 ]
  %vec.ind971 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph966 ], [ %vec.ind.next972, %vector.body965 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind971, %broadcast.splat974
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv7.i, i64 %index967
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next968 = add i64 %index967, 4
  %vec.ind.next972 = add <4 x i64> %vec.ind971, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next968, 80
  br i1 %40, label %for.inc41.i, label %vector.body965, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body965
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph966, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit807.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start438, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1319, label %vector.ph1248

vector.ph1248:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %vector.ph1248
  %index1249 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1250, %vector.body1247 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv21.i, i64 %index1249
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1250 = add i64 %index1249, 4
  %46 = icmp eq i64 %index.next1250, %n.vec
  br i1 %46, label %middle.block1245, label %vector.body1247, !llvm.loop !18

middle.block1245:                                 ; preds = %vector.body1247
  %cmp.n1252 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1252, label %for.inc6.i, label %for.body3.i46.preheader1319

for.body3.i46.preheader1319:                      ; preds = %for.body3.i46.preheader, %middle.block1245
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1245 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1319, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1319 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1245, %for.cond1.preheader.i45
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !21
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !21
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !41

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting439
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start266, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1268 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1268, label %for.body3.i60.preheader1318, label %vector.ph1269

vector.ph1269:                                    ; preds = %for.body3.i60.preheader
  %n.vec1271 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1269
  %index1272 = phi i64 [ 0, %vector.ph1269 ], [ %index.next1273, %vector.body1267 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv21.i52, i64 %index1272
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1276 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1276, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1273 = add i64 %index1272, 4
  %57 = icmp eq i64 %index.next1273, %n.vec1271
  br i1 %57, label %middle.block1265, label %vector.body1267, !llvm.loop !55

middle.block1265:                                 ; preds = %vector.body1267
  %cmp.n1275 = icmp eq i64 %indvars.iv21.i52, %n.vec1271
  br i1 %cmp.n1275, label %for.inc6.i63, label %for.body3.i60.preheader1318

for.body3.i60.preheader1318:                      ; preds = %for.body3.i60.preheader, %middle.block1265
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1271, %middle.block1265 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1318, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1318 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1265, %for.cond1.preheader.i54
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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !21
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !21
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !41

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting267
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1294 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1294, label %for.body3.i99.preheader1317, label %vector.ph1295

vector.ph1295:                                    ; preds = %for.body3.i99.preheader
  %n.vec1297 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1293

vector.body1293:                                  ; preds = %vector.body1293, %vector.ph1295
  %index1298 = phi i64 [ 0, %vector.ph1295 ], [ %index.next1299, %vector.body1293 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv21.i91, i64 %index1298
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1302 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1302, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1299 = add i64 %index1298, 4
  %68 = icmp eq i64 %index.next1299, %n.vec1297
  br i1 %68, label %middle.block1291, label %vector.body1293, !llvm.loop !57

middle.block1291:                                 ; preds = %vector.body1293
  %cmp.n1301 = icmp eq i64 %indvars.iv21.i91, %n.vec1297
  br i1 %cmp.n1301, label %for.inc6.i102, label %for.body3.i99.preheader1317

for.body3.i99.preheader1317:                      ; preds = %for.body3.i99.preheader, %middle.block1291
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1297, %middle.block1291 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1317, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1317 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1291, %for.cond1.preheader.i93
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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !21
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !21
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !41

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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call760, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1306 = phi i64 [ %indvar.next1307, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1306, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1308 = icmp ult i64 %88, 4
  br i1 %min.iters.check1308, label %polly.loop_header191.preheader, label %vector.ph1309

vector.ph1309:                                    ; preds = %polly.loop_header
  %n.vec1311 = and i64 %88, -4
  br label %vector.body1305

vector.body1305:                                  ; preds = %vector.body1305, %vector.ph1309
  %index1312 = phi i64 [ 0, %vector.ph1309 ], [ %index.next1313, %vector.body1305 ]
  %90 = shl nuw nsw i64 %index1312, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1316 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1316, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1313 = add i64 %index1312, 4
  %95 = icmp eq i64 %index.next1313, %n.vec1311
  br i1 %95, label %middle.block1303, label %vector.body1305, !llvm.loop !69

middle.block1303:                                 ; preds = %vector.body1305
  %cmp.n1315 = icmp eq i64 %88, %n.vec1311
  br i1 %cmp.n1315, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1303
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1311, %middle.block1303 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1303
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1307 = add i64 %indvar1306, 1
  br i1 %exitcond833.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
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
  %exitcond832.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond832.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond831.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 60
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2622, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond830.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit223
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ %polly.indvar_next219, %polly.loop_exit223 ], [ 0, %polly.loop_exit207 ]
  %97 = udiv i64 %polly.indvar218, 5
  %98 = shl nsw i64 %polly.indvar218, 2
  %99 = mul nsw i64 %polly.indvar218, 1920
  %100 = mul nsw i64 %polly.indvar218, 2560
  %101 = or i64 %98, 1
  %102 = mul nuw nsw i64 %101, 480
  %103 = mul nuw nsw i64 %101, 640
  %104 = or i64 %98, 2
  %105 = mul nuw nsw i64 %104, 480
  %106 = mul nuw nsw i64 %104, 640
  %107 = or i64 %98, 3
  %108 = mul nuw nsw i64 %107, 480
  %109 = mul nuw nsw i64 %107, 640
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit235.3
  %polly.indvar_next219 = add nuw nsw i64 %polly.indvar218, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond829.not = icmp eq i64 %polly.indvar_next219, 20
  br i1 %exitcond829.not, label %polly.exiting, label %polly.loop_header215

polly.loop_header221:                             ; preds = %polly.loop_exit235.3, %polly.loop_header215
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit235.3 ], [ %indvars.iv, %polly.loop_header215 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit235.3 ], [ 0, %polly.loop_header215 ]
  %110 = mul nuw nsw i64 %polly.indvar224, 20
  %111 = sub nsw i64 %98, %110
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv822, i64 19)
  %polly.loop_guard945 = icmp sgt i64 %111, -1
  br i1 %polly.loop_guard945, label %polly.loop_header233.us, label %polly.loop_exit235

polly.loop_header233.us:                          ; preds = %polly.loop_header221, %polly.loop_exit241.loopexit.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit241.loopexit.us ], [ 0, %polly.loop_header221 ]
  %112 = shl nuw nsw i64 %polly.indvar236.us, 3
  %scevgep245.us = getelementptr i8, i8* %call1, i64 %112
  %polly.access.mul.Packed_MemRef_call2249.us = mul nuw nsw i64 %polly.indvar236.us, 80
  %polly.access.add.Packed_MemRef_call2250.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249.us, %98
  %polly.access.Packed_MemRef_call2251.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.us
  %_p_scalar_252.us = load double, double* %polly.access.Packed_MemRef_call2251.us, align 8
  %scevgep258.us = getelementptr i8, i8* %scevgep245.us, i64 %99
  %scevgep258259.us = bitcast i8* %scevgep258.us to double*
  %_p_scalar_260.us = load double, double* %scevgep258259.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.us

polly.loop_header239.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header233.us
  %polly.indvar242.us = phi i64 [ 0, %polly.loop_header233.us ], [ %polly.indvar_next243.us, %polly.loop_header239.us ]
  %113 = add nuw nsw i64 %polly.indvar242.us, %110
  %114 = mul nuw nsw i64 %113, 480
  %scevgep246.us = getelementptr i8, i8* %scevgep245.us, i64 %114
  %scevgep246247.us = bitcast i8* %scevgep246.us to double*
  %_p_scalar_248.us = load double, double* %scevgep246247.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_252.us, %_p_scalar_248.us
  %polly.access.add.Packed_MemRef_call2254.us = add nuw nsw i64 %113, %polly.access.mul.Packed_MemRef_call2249.us
  %polly.access.Packed_MemRef_call2255.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.us
  %_p_scalar_256.us = load double, double* %polly.access.Packed_MemRef_call2255.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_260.us, %_p_scalar_256.us
  %115 = shl i64 %113, 3
  %116 = add nuw nsw i64 %115, %100
  %scevgep261.us = getelementptr i8, i8* %call, i64 %116
  %scevgep261262.us = bitcast i8* %scevgep261.us to double*
  %_p_scalar_263.us = load double, double* %scevgep261262.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_263.us
  store double %p_add42.i118.us, double* %scevgep261262.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar242.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit241.loopexit.us, label %polly.loop_header239.us

polly.loop_exit241.loopexit.us:                   ; preds = %polly.loop_header239.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond826.not = icmp eq i64 %polly.indvar_next237.us, 60
  br i1 %exitcond826.not, label %polly.loop_exit235, label %polly.loop_header233.us

polly.loop_exit235:                               ; preds = %polly.loop_exit241.loopexit.us, %polly.loop_header221
  %indvars.iv.next825 = or i64 %indvars.iv822, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next825, i64 19)
  %polly.loop_guard.1946 = icmp sgt i64 %111, -1
  br i1 %polly.loop_guard.1946, label %polly.loop_header233.us.1, label %polly.loop_exit235.1

polly.start266:                                   ; preds = %kernel_syr2k.exit
  %malloccall268 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header352

polly.exiting267:                                 ; preds = %polly.loop_exit393
  tail call void @free(i8* %malloccall268)
  br label %kernel_syr2k.exit90

polly.loop_header352:                             ; preds = %polly.loop_exit360, %polly.start266
  %indvar1280 = phi i64 [ %indvar.next1281, %polly.loop_exit360 ], [ 0, %polly.start266 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit360 ], [ 1, %polly.start266 ]
  %117 = add i64 %indvar1280, 1
  %118 = mul nuw nsw i64 %polly.indvar355, 640
  %scevgep364 = getelementptr i8, i8* %call, i64 %118
  %min.iters.check1282 = icmp ult i64 %117, 4
  br i1 %min.iters.check1282, label %polly.loop_header358.preheader, label %vector.ph1283

vector.ph1283:                                    ; preds = %polly.loop_header352
  %n.vec1285 = and i64 %117, -4
  br label %vector.body1279

vector.body1279:                                  ; preds = %vector.body1279, %vector.ph1283
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1287, %vector.body1279 ]
  %119 = shl nuw nsw i64 %index1286, 3
  %120 = getelementptr i8, i8* %scevgep364, i64 %119
  %121 = bitcast i8* %120 to <4 x double>*
  %wide.load1290 = load <4 x double>, <4 x double>* %121, align 8, !alias.scope !74, !noalias !76
  %122 = fmul fast <4 x double> %wide.load1290, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %123 = bitcast i8* %120 to <4 x double>*
  store <4 x double> %122, <4 x double>* %123, align 8, !alias.scope !74, !noalias !76
  %index.next1287 = add i64 %index1286, 4
  %124 = icmp eq i64 %index.next1287, %n.vec1285
  br i1 %124, label %middle.block1277, label %vector.body1279, !llvm.loop !80

middle.block1277:                                 ; preds = %vector.body1279
  %cmp.n1289 = icmp eq i64 %117, %n.vec1285
  br i1 %cmp.n1289, label %polly.loop_exit360, label %polly.loop_header358.preheader

polly.loop_header358.preheader:                   ; preds = %polly.loop_header352, %middle.block1277
  %polly.indvar361.ph = phi i64 [ 0, %polly.loop_header352 ], [ %n.vec1285, %middle.block1277 ]
  br label %polly.loop_header358

polly.loop_exit360:                               ; preds = %polly.loop_header358, %middle.block1277
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next356, 80
  %indvar.next1281 = add i64 %indvar1280, 1
  br i1 %exitcond849.not, label %polly.loop_header368.preheader, label %polly.loop_header352

polly.loop_header368.preheader:                   ; preds = %polly.loop_exit360
  %Packed_MemRef_call2269 = bitcast i8* %malloccall268 to double*
  br label %polly.loop_header368

polly.loop_header358:                             ; preds = %polly.loop_header358.preheader, %polly.loop_header358
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_header358 ], [ %polly.indvar361.ph, %polly.loop_header358.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar361, 3
  %scevgep365 = getelementptr i8, i8* %scevgep364, i64 %125
  %scevgep365366 = bitcast i8* %scevgep365 to double*
  %_p_scalar_367 = load double, double* %scevgep365366, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_367, 1.200000e+00
  store double %p_mul.i57, double* %scevgep365366, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next362, %polly.indvar355
  br i1 %exitcond848.not, label %polly.loop_exit360, label %polly.loop_header358, !llvm.loop !81

polly.loop_header368:                             ; preds = %polly.loop_header368.preheader, %polly.loop_exit376
  %polly.indvar371 = phi i64 [ %polly.indvar_next372, %polly.loop_exit376 ], [ 0, %polly.loop_header368.preheader ]
  %polly.access.mul.Packed_MemRef_call2269 = mul nuw nsw i64 %polly.indvar371, 80
  br label %polly.loop_header374

polly.loop_exit376:                               ; preds = %polly.loop_header374
  %polly.indvar_next372 = add nuw nsw i64 %polly.indvar371, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next372, 60
  br i1 %exitcond847.not, label %polly.loop_header384, label %polly.loop_header368

polly.loop_header374:                             ; preds = %polly.loop_header374, %polly.loop_header368
  %polly.indvar377 = phi i64 [ 0, %polly.loop_header368 ], [ %polly.indvar_next378, %polly.loop_header374 ]
  %polly.access.mul.call2381 = mul nuw nsw i64 %polly.indvar377, 60
  %polly.access.add.call2382 = add nuw nsw i64 %polly.access.mul.call2381, %polly.indvar371
  %polly.access.call2383 = getelementptr double, double* %polly.access.cast.call2622, i64 %polly.access.add.call2382
  %polly.access.call2383.load = load double, double* %polly.access.call2383, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2269 = add nuw nsw i64 %polly.indvar377, %polly.access.mul.Packed_MemRef_call2269
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269
  store double %polly.access.call2383.load, double* %polly.access.Packed_MemRef_call2269, align 8
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next378, 80
  br i1 %exitcond846.not, label %polly.loop_exit376, label %polly.loop_header374

polly.loop_header384:                             ; preds = %polly.loop_exit376, %polly.loop_exit393
  %indvars.iv834 = phi i64 [ %indvars.iv.next835, %polly.loop_exit393 ], [ 0, %polly.loop_exit376 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit393 ], [ 0, %polly.loop_exit376 ]
  %126 = udiv i64 %polly.indvar387, 5
  %127 = shl nsw i64 %polly.indvar387, 2
  %128 = mul nsw i64 %polly.indvar387, 1920
  %129 = mul nsw i64 %polly.indvar387, 2560
  %130 = or i64 %127, 1
  %131 = mul nuw nsw i64 %130, 480
  %132 = mul nuw nsw i64 %130, 640
  %133 = or i64 %127, 2
  %134 = mul nuw nsw i64 %133, 480
  %135 = mul nuw nsw i64 %133, 640
  %136 = or i64 %127, 3
  %137 = mul nuw nsw i64 %136, 480
  %138 = mul nuw nsw i64 %136, 640
  br label %polly.loop_header391

polly.loop_exit393:                               ; preds = %polly.loop_exit405.3
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %indvars.iv.next835 = add nuw nsw i64 %indvars.iv834, 4
  %exitcond845.not = icmp eq i64 %polly.indvar_next388, 20
  br i1 %exitcond845.not, label %polly.exiting267, label %polly.loop_header384

polly.loop_header391:                             ; preds = %polly.loop_exit405.3, %polly.loop_header384
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %polly.loop_exit405.3 ], [ %indvars.iv834, %polly.loop_header384 ]
  %polly.indvar394 = phi i64 [ %polly.indvar_next395, %polly.loop_exit405.3 ], [ 0, %polly.loop_header384 ]
  %139 = mul nuw nsw i64 %polly.indvar394, 20
  %140 = sub nsw i64 %127, %139
  %smin840 = call i64 @llvm.smin.i64(i64 %indvars.iv836, i64 19)
  %polly.loop_guard413949 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard413949, label %polly.loop_header403.us, label %polly.loop_exit405

polly.loop_header403.us:                          ; preds = %polly.loop_header391, %polly.loop_exit412.loopexit.us
  %polly.indvar406.us = phi i64 [ %polly.indvar_next407.us, %polly.loop_exit412.loopexit.us ], [ 0, %polly.loop_header391 ]
  %141 = shl nuw nsw i64 %polly.indvar406.us, 3
  %scevgep417.us = getelementptr i8, i8* %call1, i64 %141
  %polly.access.mul.Packed_MemRef_call2269421.us = mul nuw nsw i64 %polly.indvar406.us, 80
  %polly.access.add.Packed_MemRef_call2269422.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269421.us, %127
  %polly.access.Packed_MemRef_call2269423.us = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.us
  %_p_scalar_424.us = load double, double* %polly.access.Packed_MemRef_call2269423.us, align 8
  %scevgep430.us = getelementptr i8, i8* %scevgep417.us, i64 %128
  %scevgep430431.us = bitcast i8* %scevgep430.us to double*
  %_p_scalar_432.us = load double, double* %scevgep430431.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header410.us

polly.loop_header410.us:                          ; preds = %polly.loop_header410.us, %polly.loop_header403.us
  %polly.indvar414.us = phi i64 [ 0, %polly.loop_header403.us ], [ %polly.indvar_next415.us, %polly.loop_header410.us ]
  %142 = add nuw nsw i64 %polly.indvar414.us, %139
  %143 = mul nuw nsw i64 %142, 480
  %scevgep418.us = getelementptr i8, i8* %scevgep417.us, i64 %143
  %scevgep418419.us = bitcast i8* %scevgep418.us to double*
  %_p_scalar_420.us = load double, double* %scevgep418419.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_424.us, %_p_scalar_420.us
  %polly.access.add.Packed_MemRef_call2269426.us = add nuw nsw i64 %142, %polly.access.mul.Packed_MemRef_call2269421.us
  %polly.access.Packed_MemRef_call2269427.us = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269426.us
  %_p_scalar_428.us = load double, double* %polly.access.Packed_MemRef_call2269427.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_432.us, %_p_scalar_428.us
  %144 = shl i64 %142, 3
  %145 = add nuw nsw i64 %144, %129
  %scevgep433.us = getelementptr i8, i8* %call, i64 %145
  %scevgep433434.us = bitcast i8* %scevgep433.us to double*
  %_p_scalar_435.us = load double, double* %scevgep433434.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_435.us
  store double %p_add42.i79.us, double* %scevgep433434.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next415.us = add nuw nsw i64 %polly.indvar414.us, 1
  %exitcond841.not = icmp eq i64 %polly.indvar414.us, %smin840
  br i1 %exitcond841.not, label %polly.loop_exit412.loopexit.us, label %polly.loop_header410.us

polly.loop_exit412.loopexit.us:                   ; preds = %polly.loop_header410.us
  %polly.indvar_next407.us = add nuw nsw i64 %polly.indvar406.us, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next407.us, 60
  br i1 %exitcond842.not, label %polly.loop_exit405, label %polly.loop_header403.us

polly.loop_exit405:                               ; preds = %polly.loop_exit412.loopexit.us, %polly.loop_header391
  %indvars.iv.next839 = or i64 %indvars.iv836, 1
  %smin840.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next839, i64 19)
  %polly.loop_guard413.1950 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard413.1950, label %polly.loop_header403.us.1, label %polly.loop_exit405.1

polly.start438:                                   ; preds = %init_array.exit
  %malloccall440 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header524

polly.exiting439:                                 ; preds = %polly.loop_exit565
  tail call void @free(i8* %malloccall440)
  br label %kernel_syr2k.exit

polly.loop_header524:                             ; preds = %polly.loop_exit532, %polly.start438
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit532 ], [ 0, %polly.start438 ]
  %polly.indvar527 = phi i64 [ %polly.indvar_next528, %polly.loop_exit532 ], [ 1, %polly.start438 ]
  %146 = add i64 %indvar, 1
  %147 = mul nuw nsw i64 %polly.indvar527, 640
  %scevgep536 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check1256 = icmp ult i64 %146, 4
  br i1 %min.iters.check1256, label %polly.loop_header530.preheader, label %vector.ph1257

vector.ph1257:                                    ; preds = %polly.loop_header524
  %n.vec1259 = and i64 %146, -4
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1255 ]
  %148 = shl nuw nsw i64 %index1260, 3
  %149 = getelementptr i8, i8* %scevgep536, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load1264 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !84, !noalias !86
  %151 = fmul fast <4 x double> %wide.load1264, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !84, !noalias !86
  %index.next1261 = add i64 %index1260, 4
  %153 = icmp eq i64 %index.next1261, %n.vec1259
  br i1 %153, label %middle.block1253, label %vector.body1255, !llvm.loop !90

middle.block1253:                                 ; preds = %vector.body1255
  %cmp.n1263 = icmp eq i64 %146, %n.vec1259
  br i1 %cmp.n1263, label %polly.loop_exit532, label %polly.loop_header530.preheader

polly.loop_header530.preheader:                   ; preds = %polly.loop_header524, %middle.block1253
  %polly.indvar533.ph = phi i64 [ 0, %polly.loop_header524 ], [ %n.vec1259, %middle.block1253 ]
  br label %polly.loop_header530

polly.loop_exit532:                               ; preds = %polly.loop_header530, %middle.block1253
  %polly.indvar_next528 = add nuw nsw i64 %polly.indvar527, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next528, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond865.not, label %polly.loop_header540.preheader, label %polly.loop_header524

polly.loop_header540.preheader:                   ; preds = %polly.loop_exit532
  %Packed_MemRef_call2441 = bitcast i8* %malloccall440 to double*
  br label %polly.loop_header540

polly.loop_header530:                             ; preds = %polly.loop_header530.preheader, %polly.loop_header530
  %polly.indvar533 = phi i64 [ %polly.indvar_next534, %polly.loop_header530 ], [ %polly.indvar533.ph, %polly.loop_header530.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar533, 3
  %scevgep537 = getelementptr i8, i8* %scevgep536, i64 %154
  %scevgep537538 = bitcast i8* %scevgep537 to double*
  %_p_scalar_539 = load double, double* %scevgep537538, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_539, 1.200000e+00
  store double %p_mul.i, double* %scevgep537538, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next534 = add nuw nsw i64 %polly.indvar533, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next534, %polly.indvar527
  br i1 %exitcond864.not, label %polly.loop_exit532, label %polly.loop_header530, !llvm.loop !91

polly.loop_header540:                             ; preds = %polly.loop_header540.preheader, %polly.loop_exit548
  %polly.indvar543 = phi i64 [ %polly.indvar_next544, %polly.loop_exit548 ], [ 0, %polly.loop_header540.preheader ]
  %polly.access.mul.Packed_MemRef_call2441 = mul nuw nsw i64 %polly.indvar543, 80
  br label %polly.loop_header546

polly.loop_exit548:                               ; preds = %polly.loop_header546
  %polly.indvar_next544 = add nuw nsw i64 %polly.indvar543, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next544, 60
  br i1 %exitcond863.not, label %polly.loop_header556, label %polly.loop_header540

polly.loop_header546:                             ; preds = %polly.loop_header546, %polly.loop_header540
  %polly.indvar549 = phi i64 [ 0, %polly.loop_header540 ], [ %polly.indvar_next550, %polly.loop_header546 ]
  %polly.access.mul.call2553 = mul nuw nsw i64 %polly.indvar549, 60
  %polly.access.add.call2554 = add nuw nsw i64 %polly.access.mul.call2553, %polly.indvar543
  %polly.access.call2555 = getelementptr double, double* %polly.access.cast.call2622, i64 %polly.access.add.call2554
  %polly.access.call2555.load = load double, double* %polly.access.call2555, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2441 = add nuw nsw i64 %polly.indvar549, %polly.access.mul.Packed_MemRef_call2441
  %polly.access.Packed_MemRef_call2441 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441
  store double %polly.access.call2555.load, double* %polly.access.Packed_MemRef_call2441, align 8
  %polly.indvar_next550 = add nuw nsw i64 %polly.indvar549, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next550, 80
  br i1 %exitcond862.not, label %polly.loop_exit548, label %polly.loop_header546

polly.loop_header556:                             ; preds = %polly.loop_exit548, %polly.loop_exit565
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit565 ], [ 0, %polly.loop_exit548 ]
  %polly.indvar559 = phi i64 [ %polly.indvar_next560, %polly.loop_exit565 ], [ 0, %polly.loop_exit548 ]
  %155 = udiv i64 %polly.indvar559, 5
  %156 = shl nsw i64 %polly.indvar559, 2
  %157 = mul nsw i64 %polly.indvar559, 1920
  %158 = mul nsw i64 %polly.indvar559, 2560
  %159 = or i64 %156, 1
  %160 = mul nuw nsw i64 %159, 480
  %161 = mul nuw nsw i64 %159, 640
  %162 = or i64 %156, 2
  %163 = mul nuw nsw i64 %162, 480
  %164 = mul nuw nsw i64 %162, 640
  %165 = or i64 %156, 3
  %166 = mul nuw nsw i64 %165, 480
  %167 = mul nuw nsw i64 %165, 640
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_exit577.3
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %indvars.iv.next851 = add nuw nsw i64 %indvars.iv850, 4
  %exitcond861.not = icmp eq i64 %polly.indvar_next560, 20
  br i1 %exitcond861.not, label %polly.exiting439, label %polly.loop_header556

polly.loop_header563:                             ; preds = %polly.loop_exit577.3, %polly.loop_header556
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit577.3 ], [ %indvars.iv850, %polly.loop_header556 ]
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_exit577.3 ], [ 0, %polly.loop_header556 ]
  %168 = mul nuw nsw i64 %polly.indvar566, 20
  %169 = sub nsw i64 %156, %168
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv852, i64 19)
  %polly.loop_guard585953 = icmp sgt i64 %169, -1
  br i1 %polly.loop_guard585953, label %polly.loop_header575.us, label %polly.loop_exit577

polly.loop_header575.us:                          ; preds = %polly.loop_header563, %polly.loop_exit584.loopexit.us
  %polly.indvar578.us = phi i64 [ %polly.indvar_next579.us, %polly.loop_exit584.loopexit.us ], [ 0, %polly.loop_header563 ]
  %170 = shl nuw nsw i64 %polly.indvar578.us, 3
  %scevgep589.us = getelementptr i8, i8* %call1, i64 %170
  %polly.access.mul.Packed_MemRef_call2441593.us = mul nuw nsw i64 %polly.indvar578.us, 80
  %polly.access.add.Packed_MemRef_call2441594.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2441593.us, %156
  %polly.access.Packed_MemRef_call2441595.us = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441594.us
  %_p_scalar_596.us = load double, double* %polly.access.Packed_MemRef_call2441595.us, align 8
  %scevgep602.us = getelementptr i8, i8* %scevgep589.us, i64 %157
  %scevgep602603.us = bitcast i8* %scevgep602.us to double*
  %_p_scalar_604.us = load double, double* %scevgep602603.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header582.us

polly.loop_header582.us:                          ; preds = %polly.loop_header582.us, %polly.loop_header575.us
  %polly.indvar586.us = phi i64 [ 0, %polly.loop_header575.us ], [ %polly.indvar_next587.us, %polly.loop_header582.us ]
  %171 = add nuw nsw i64 %polly.indvar586.us, %168
  %172 = mul nuw nsw i64 %171, 480
  %scevgep590.us = getelementptr i8, i8* %scevgep589.us, i64 %172
  %scevgep590591.us = bitcast i8* %scevgep590.us to double*
  %_p_scalar_592.us = load double, double* %scevgep590591.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_596.us, %_p_scalar_592.us
  %polly.access.add.Packed_MemRef_call2441598.us = add nuw nsw i64 %171, %polly.access.mul.Packed_MemRef_call2441593.us
  %polly.access.Packed_MemRef_call2441599.us = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441598.us
  %_p_scalar_600.us = load double, double* %polly.access.Packed_MemRef_call2441599.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_604.us, %_p_scalar_600.us
  %173 = shl i64 %171, 3
  %174 = add nuw nsw i64 %173, %158
  %scevgep605.us = getelementptr i8, i8* %call, i64 %174
  %scevgep605606.us = bitcast i8* %scevgep605.us to double*
  %_p_scalar_607.us = load double, double* %scevgep605606.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_607.us
  store double %p_add42.i.us, double* %scevgep605606.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next587.us = add nuw nsw i64 %polly.indvar586.us, 1
  %exitcond857.not = icmp eq i64 %polly.indvar586.us, %smin856
  br i1 %exitcond857.not, label %polly.loop_exit584.loopexit.us, label %polly.loop_header582.us

polly.loop_exit584.loopexit.us:                   ; preds = %polly.loop_header582.us
  %polly.indvar_next579.us = add nuw nsw i64 %polly.indvar578.us, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next579.us, 60
  br i1 %exitcond858.not, label %polly.loop_exit577, label %polly.loop_header575.us

polly.loop_exit577:                               ; preds = %polly.loop_exit584.loopexit.us, %polly.loop_header563
  %indvars.iv.next855 = or i64 %indvars.iv852, 1
  %smin856.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next855, i64 19)
  %polly.loop_guard585.1954 = icmp sgt i64 %169, -1
  br i1 %polly.loop_guard585.1954, label %polly.loop_header575.us.1, label %polly.loop_exit577.1

polly.loop_header746:                             ; preds = %entry, %polly.loop_exit754
  %polly.indvar749 = phi i64 [ %polly.indvar_next750, %polly.loop_exit754 ], [ 0, %entry ]
  %175 = mul nuw nsw i64 %polly.indvar749, 640
  %176 = trunc i64 %polly.indvar749 to i32
  %broadcast.splatinsert987 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat988 = shufflevector <4 x i32> %broadcast.splatinsert987, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body977

vector.body977:                                   ; preds = %vector.body977, %polly.loop_header746
  %index979 = phi i64 [ 0, %polly.loop_header746 ], [ %index.next980, %vector.body977 ]
  %vec.ind985 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header746 ], [ %vec.ind.next986, %vector.body977 ]
  %177 = mul <4 x i32> %vec.ind985, %broadcast.splat988
  %178 = add <4 x i32> %177, <i32 3, i32 3, i32 3, i32 3>
  %179 = urem <4 x i32> %178, <i32 80, i32 80, i32 80, i32 80>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %182 = shl i64 %index979, 3
  %183 = add nuw nsw i64 %182, %175
  %184 = getelementptr i8, i8* %call, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !94, !noalias !96
  %index.next980 = add i64 %index979, 4
  %vec.ind.next986 = add <4 x i32> %vec.ind985, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next980, 32
  br i1 %186, label %polly.loop_exit754, label %vector.body977, !llvm.loop !99

polly.loop_exit754:                               ; preds = %vector.body977
  %polly.indvar_next750 = add nuw nsw i64 %polly.indvar749, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next750, 32
  br i1 %exitcond885.not, label %polly.loop_header746.1, label %polly.loop_header746

polly.loop_header773:                             ; preds = %polly.loop_exit754.2.2, %polly.loop_exit781
  %polly.indvar776 = phi i64 [ %polly.indvar_next777, %polly.loop_exit781 ], [ 0, %polly.loop_exit754.2.2 ]
  %187 = mul nuw nsw i64 %polly.indvar776, 480
  %188 = trunc i64 %polly.indvar776 to i32
  %broadcast.splatinsert1101 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat1102 = shufflevector <4 x i32> %broadcast.splatinsert1101, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1091

vector.body1091:                                  ; preds = %vector.body1091, %polly.loop_header773
  %index1093 = phi i64 [ 0, %polly.loop_header773 ], [ %index.next1094, %vector.body1091 ]
  %vec.ind1099 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header773 ], [ %vec.ind.next1100, %vector.body1091 ]
  %189 = mul <4 x i32> %vec.ind1099, %broadcast.splat1102
  %190 = add <4 x i32> %189, <i32 2, i32 2, i32 2, i32 2>
  %191 = urem <4 x i32> %190, <i32 60, i32 60, i32 60, i32 60>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %194 = shl i64 %index1093, 3
  %195 = add i64 %194, %187
  %196 = getelementptr i8, i8* %call2, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %193, <4 x double>* %197, align 8, !alias.scope !98, !noalias !100
  %index.next1094 = add i64 %index1093, 4
  %vec.ind.next1100 = add <4 x i32> %vec.ind1099, <i32 4, i32 4, i32 4, i32 4>
  %198 = icmp eq i64 %index.next1094, 32
  br i1 %198, label %polly.loop_exit781, label %vector.body1091, !llvm.loop !101

polly.loop_exit781:                               ; preds = %vector.body1091
  %polly.indvar_next777 = add nuw nsw i64 %polly.indvar776, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next777, 32
  br i1 %exitcond876.not, label %polly.loop_header773.1, label %polly.loop_header773

polly.loop_header799:                             ; preds = %polly.loop_exit781.1.2, %polly.loop_exit807
  %polly.indvar802 = phi i64 [ %polly.indvar_next803, %polly.loop_exit807 ], [ 0, %polly.loop_exit781.1.2 ]
  %199 = mul nuw nsw i64 %polly.indvar802, 480
  %200 = trunc i64 %polly.indvar802 to i32
  %broadcast.splatinsert1179 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat1180 = shufflevector <4 x i32> %broadcast.splatinsert1179, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %polly.loop_header799
  %index1171 = phi i64 [ 0, %polly.loop_header799 ], [ %index.next1172, %vector.body1169 ]
  %vec.ind1177 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header799 ], [ %vec.ind.next1178, %vector.body1169 ]
  %201 = mul <4 x i32> %vec.ind1177, %broadcast.splat1180
  %202 = add <4 x i32> %201, <i32 1, i32 1, i32 1, i32 1>
  %203 = urem <4 x i32> %202, <i32 80, i32 80, i32 80, i32 80>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %206 = shl i64 %index1171, 3
  %207 = add i64 %206, %199
  %208 = getelementptr i8, i8* %call1, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %205, <4 x double>* %209, align 8, !alias.scope !97, !noalias !102
  %index.next1172 = add i64 %index1171, 4
  %vec.ind.next1178 = add <4 x i32> %vec.ind1177, <i32 4, i32 4, i32 4, i32 4>
  %210 = icmp eq i64 %index.next1172, 32
  br i1 %210, label %polly.loop_exit807, label %vector.body1169, !llvm.loop !103

polly.loop_exit807:                               ; preds = %vector.body1169
  %polly.indvar_next803 = add nuw nsw i64 %polly.indvar802, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next803, 32
  br i1 %exitcond870.not, label %polly.loop_header799.1, label %polly.loop_header799

polly.loop_header233.us.1:                        ; preds = %polly.loop_exit235, %polly.loop_exit241.loopexit.us.1
  %polly.indvar236.us.1 = phi i64 [ %polly.indvar_next237.us.1, %polly.loop_exit241.loopexit.us.1 ], [ 0, %polly.loop_exit235 ]
  %211 = shl nuw nsw i64 %polly.indvar236.us.1, 3
  %scevgep245.us.1 = getelementptr i8, i8* %call1, i64 %211
  %polly.access.mul.Packed_MemRef_call2249.us.1 = mul nuw nsw i64 %polly.indvar236.us.1, 80
  %polly.access.add.Packed_MemRef_call2250.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249.us.1, %101
  %polly.access.Packed_MemRef_call2251.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.us.1
  %_p_scalar_252.us.1 = load double, double* %polly.access.Packed_MemRef_call2251.us.1, align 8
  %scevgep258.us.1 = getelementptr i8, i8* %scevgep245.us.1, i64 %102
  %scevgep258259.us.1 = bitcast i8* %scevgep258.us.1 to double*
  %_p_scalar_260.us.1 = load double, double* %scevgep258259.us.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.us.1

polly.loop_header239.us.1:                        ; preds = %polly.loop_header239.us.1, %polly.loop_header233.us.1
  %polly.indvar242.us.1 = phi i64 [ 0, %polly.loop_header233.us.1 ], [ %polly.indvar_next243.us.1, %polly.loop_header239.us.1 ]
  %212 = add nuw nsw i64 %polly.indvar242.us.1, %110
  %213 = mul nuw nsw i64 %212, 480
  %scevgep246.us.1 = getelementptr i8, i8* %scevgep245.us.1, i64 %213
  %scevgep246247.us.1 = bitcast i8* %scevgep246.us.1 to double*
  %_p_scalar_248.us.1 = load double, double* %scevgep246247.us.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_252.us.1, %_p_scalar_248.us.1
  %polly.access.add.Packed_MemRef_call2254.us.1 = add nuw nsw i64 %212, %polly.access.mul.Packed_MemRef_call2249.us.1
  %polly.access.Packed_MemRef_call2255.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.us.1
  %_p_scalar_256.us.1 = load double, double* %polly.access.Packed_MemRef_call2255.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_260.us.1, %_p_scalar_256.us.1
  %214 = shl i64 %212, 3
  %215 = add nuw nsw i64 %214, %103
  %scevgep261.us.1 = getelementptr i8, i8* %call, i64 %215
  %scevgep261262.us.1 = bitcast i8* %scevgep261.us.1 to double*
  %_p_scalar_263.us.1 = load double, double* %scevgep261262.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_263.us.1
  store double %p_add42.i118.us.1, double* %scevgep261262.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.us.1 = add nuw nsw i64 %polly.indvar242.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar242.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit241.loopexit.us.1, label %polly.loop_header239.us.1

polly.loop_exit241.loopexit.us.1:                 ; preds = %polly.loop_header239.us.1
  %polly.indvar_next237.us.1 = add nuw nsw i64 %polly.indvar236.us.1, 1
  %exitcond826.1.not = icmp eq i64 %polly.indvar_next237.us.1, 60
  br i1 %exitcond826.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.us.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.loopexit.us.1, %polly.loop_exit235
  %indvars.iv.next825.1 = add nuw nsw i64 %indvars.iv.next825, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next825.1, i64 19)
  %polly.loop_guard.2947 = icmp sgt i64 %111, -1
  br i1 %polly.loop_guard.2947, label %polly.loop_header233.us.2, label %polly.loop_exit235.2

polly.loop_header233.us.2:                        ; preds = %polly.loop_exit235.1, %polly.loop_exit241.loopexit.us.2
  %polly.indvar236.us.2 = phi i64 [ %polly.indvar_next237.us.2, %polly.loop_exit241.loopexit.us.2 ], [ 0, %polly.loop_exit235.1 ]
  %216 = shl nuw nsw i64 %polly.indvar236.us.2, 3
  %scevgep245.us.2 = getelementptr i8, i8* %call1, i64 %216
  %polly.access.mul.Packed_MemRef_call2249.us.2 = mul nuw nsw i64 %polly.indvar236.us.2, 80
  %polly.access.add.Packed_MemRef_call2250.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249.us.2, %104
  %polly.access.Packed_MemRef_call2251.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.us.2
  %_p_scalar_252.us.2 = load double, double* %polly.access.Packed_MemRef_call2251.us.2, align 8
  %scevgep258.us.2 = getelementptr i8, i8* %scevgep245.us.2, i64 %105
  %scevgep258259.us.2 = bitcast i8* %scevgep258.us.2 to double*
  %_p_scalar_260.us.2 = load double, double* %scevgep258259.us.2, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.us.2

polly.loop_header239.us.2:                        ; preds = %polly.loop_header239.us.2, %polly.loop_header233.us.2
  %polly.indvar242.us.2 = phi i64 [ 0, %polly.loop_header233.us.2 ], [ %polly.indvar_next243.us.2, %polly.loop_header239.us.2 ]
  %217 = add nuw nsw i64 %polly.indvar242.us.2, %110
  %218 = mul nuw nsw i64 %217, 480
  %scevgep246.us.2 = getelementptr i8, i8* %scevgep245.us.2, i64 %218
  %scevgep246247.us.2 = bitcast i8* %scevgep246.us.2 to double*
  %_p_scalar_248.us.2 = load double, double* %scevgep246247.us.2, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_252.us.2, %_p_scalar_248.us.2
  %polly.access.add.Packed_MemRef_call2254.us.2 = add nuw nsw i64 %217, %polly.access.mul.Packed_MemRef_call2249.us.2
  %polly.access.Packed_MemRef_call2255.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.us.2
  %_p_scalar_256.us.2 = load double, double* %polly.access.Packed_MemRef_call2255.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_260.us.2, %_p_scalar_256.us.2
  %219 = shl i64 %217, 3
  %220 = add nuw nsw i64 %219, %106
  %scevgep261.us.2 = getelementptr i8, i8* %call, i64 %220
  %scevgep261262.us.2 = bitcast i8* %scevgep261.us.2 to double*
  %_p_scalar_263.us.2 = load double, double* %scevgep261262.us.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_263.us.2
  store double %p_add42.i118.us.2, double* %scevgep261262.us.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.us.2 = add nuw nsw i64 %polly.indvar242.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar242.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit241.loopexit.us.2, label %polly.loop_header239.us.2

polly.loop_exit241.loopexit.us.2:                 ; preds = %polly.loop_header239.us.2
  %polly.indvar_next237.us.2 = add nuw nsw i64 %polly.indvar236.us.2, 1
  %exitcond826.2.not = icmp eq i64 %polly.indvar_next237.us.2, 60
  br i1 %exitcond826.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.us.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.loopexit.us.2, %polly.loop_exit235.1
  %indvars.iv.next825.2 = or i64 %indvars.iv822, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next825.2, i64 19)
  %polly.loop_guard.3948 = icmp sgt i64 %111, -1
  br i1 %polly.loop_guard.3948, label %polly.loop_header233.us.3, label %polly.loop_exit235.3

polly.loop_header233.us.3:                        ; preds = %polly.loop_exit235.2, %polly.loop_exit241.loopexit.us.3
  %polly.indvar236.us.3 = phi i64 [ %polly.indvar_next237.us.3, %polly.loop_exit241.loopexit.us.3 ], [ 0, %polly.loop_exit235.2 ]
  %221 = shl nuw nsw i64 %polly.indvar236.us.3, 3
  %scevgep245.us.3 = getelementptr i8, i8* %call1, i64 %221
  %polly.access.mul.Packed_MemRef_call2249.us.3 = mul nuw nsw i64 %polly.indvar236.us.3, 80
  %polly.access.add.Packed_MemRef_call2250.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2249.us.3, %107
  %polly.access.Packed_MemRef_call2251.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2250.us.3
  %_p_scalar_252.us.3 = load double, double* %polly.access.Packed_MemRef_call2251.us.3, align 8
  %scevgep258.us.3 = getelementptr i8, i8* %scevgep245.us.3, i64 %108
  %scevgep258259.us.3 = bitcast i8* %scevgep258.us.3 to double*
  %_p_scalar_260.us.3 = load double, double* %scevgep258259.us.3, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header239.us.3

polly.loop_header239.us.3:                        ; preds = %polly.loop_header239.us.3, %polly.loop_header233.us.3
  %polly.indvar242.us.3 = phi i64 [ 0, %polly.loop_header233.us.3 ], [ %polly.indvar_next243.us.3, %polly.loop_header239.us.3 ]
  %222 = add nuw nsw i64 %polly.indvar242.us.3, %110
  %223 = mul nuw nsw i64 %222, 480
  %scevgep246.us.3 = getelementptr i8, i8* %scevgep245.us.3, i64 %223
  %scevgep246247.us.3 = bitcast i8* %scevgep246.us.3 to double*
  %_p_scalar_248.us.3 = load double, double* %scevgep246247.us.3, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_252.us.3, %_p_scalar_248.us.3
  %polly.access.add.Packed_MemRef_call2254.us.3 = add nuw nsw i64 %222, %polly.access.mul.Packed_MemRef_call2249.us.3
  %polly.access.Packed_MemRef_call2255.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2254.us.3
  %_p_scalar_256.us.3 = load double, double* %polly.access.Packed_MemRef_call2255.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_260.us.3, %_p_scalar_256.us.3
  %224 = shl i64 %222, 3
  %225 = add nuw nsw i64 %224, %109
  %scevgep261.us.3 = getelementptr i8, i8* %call, i64 %225
  %scevgep261262.us.3 = bitcast i8* %scevgep261.us.3 to double*
  %_p_scalar_263.us.3 = load double, double* %scevgep261262.us.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_263.us.3
  store double %p_add42.i118.us.3, double* %scevgep261262.us.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next243.us.3 = add nuw nsw i64 %polly.indvar242.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar242.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit241.loopexit.us.3, label %polly.loop_header239.us.3

polly.loop_exit241.loopexit.us.3:                 ; preds = %polly.loop_header239.us.3
  %polly.indvar_next237.us.3 = add nuw nsw i64 %polly.indvar236.us.3, 1
  %exitcond826.3.not = icmp eq i64 %polly.indvar_next237.us.3, 60
  br i1 %exitcond826.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.us.3

polly.loop_exit235.3:                             ; preds = %polly.loop_exit241.loopexit.us.3, %polly.loop_exit235.2
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next823 = add nsw i64 %indvars.iv822, -20
  %exitcond828.not = icmp eq i64 %polly.indvar224, %97
  br i1 %exitcond828.not, label %polly.loop_exit223, label %polly.loop_header221

polly.loop_header403.us.1:                        ; preds = %polly.loop_exit405, %polly.loop_exit412.loopexit.us.1
  %polly.indvar406.us.1 = phi i64 [ %polly.indvar_next407.us.1, %polly.loop_exit412.loopexit.us.1 ], [ 0, %polly.loop_exit405 ]
  %226 = shl nuw nsw i64 %polly.indvar406.us.1, 3
  %scevgep417.us.1 = getelementptr i8, i8* %call1, i64 %226
  %polly.access.mul.Packed_MemRef_call2269421.us.1 = mul nuw nsw i64 %polly.indvar406.us.1, 80
  %polly.access.add.Packed_MemRef_call2269422.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269421.us.1, %130
  %polly.access.Packed_MemRef_call2269423.us.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.us.1
  %_p_scalar_424.us.1 = load double, double* %polly.access.Packed_MemRef_call2269423.us.1, align 8
  %scevgep430.us.1 = getelementptr i8, i8* %scevgep417.us.1, i64 %131
  %scevgep430431.us.1 = bitcast i8* %scevgep430.us.1 to double*
  %_p_scalar_432.us.1 = load double, double* %scevgep430431.us.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header410.us.1

polly.loop_header410.us.1:                        ; preds = %polly.loop_header410.us.1, %polly.loop_header403.us.1
  %polly.indvar414.us.1 = phi i64 [ 0, %polly.loop_header403.us.1 ], [ %polly.indvar_next415.us.1, %polly.loop_header410.us.1 ]
  %227 = add nuw nsw i64 %polly.indvar414.us.1, %139
  %228 = mul nuw nsw i64 %227, 480
  %scevgep418.us.1 = getelementptr i8, i8* %scevgep417.us.1, i64 %228
  %scevgep418419.us.1 = bitcast i8* %scevgep418.us.1 to double*
  %_p_scalar_420.us.1 = load double, double* %scevgep418419.us.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_424.us.1, %_p_scalar_420.us.1
  %polly.access.add.Packed_MemRef_call2269426.us.1 = add nuw nsw i64 %227, %polly.access.mul.Packed_MemRef_call2269421.us.1
  %polly.access.Packed_MemRef_call2269427.us.1 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269426.us.1
  %_p_scalar_428.us.1 = load double, double* %polly.access.Packed_MemRef_call2269427.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_432.us.1, %_p_scalar_428.us.1
  %229 = shl i64 %227, 3
  %230 = add nuw nsw i64 %229, %132
  %scevgep433.us.1 = getelementptr i8, i8* %call, i64 %230
  %scevgep433434.us.1 = bitcast i8* %scevgep433.us.1 to double*
  %_p_scalar_435.us.1 = load double, double* %scevgep433434.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_435.us.1
  store double %p_add42.i79.us.1, double* %scevgep433434.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next415.us.1 = add nuw nsw i64 %polly.indvar414.us.1, 1
  %exitcond841.1.not = icmp eq i64 %polly.indvar414.us.1, %smin840.1
  br i1 %exitcond841.1.not, label %polly.loop_exit412.loopexit.us.1, label %polly.loop_header410.us.1

polly.loop_exit412.loopexit.us.1:                 ; preds = %polly.loop_header410.us.1
  %polly.indvar_next407.us.1 = add nuw nsw i64 %polly.indvar406.us.1, 1
  %exitcond842.1.not = icmp eq i64 %polly.indvar_next407.us.1, 60
  br i1 %exitcond842.1.not, label %polly.loop_exit405.1, label %polly.loop_header403.us.1

polly.loop_exit405.1:                             ; preds = %polly.loop_exit412.loopexit.us.1, %polly.loop_exit405
  %indvars.iv.next839.1 = add nuw nsw i64 %indvars.iv.next839, 1
  %smin840.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next839.1, i64 19)
  %polly.loop_guard413.2951 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard413.2951, label %polly.loop_header403.us.2, label %polly.loop_exit405.2

polly.loop_header403.us.2:                        ; preds = %polly.loop_exit405.1, %polly.loop_exit412.loopexit.us.2
  %polly.indvar406.us.2 = phi i64 [ %polly.indvar_next407.us.2, %polly.loop_exit412.loopexit.us.2 ], [ 0, %polly.loop_exit405.1 ]
  %231 = shl nuw nsw i64 %polly.indvar406.us.2, 3
  %scevgep417.us.2 = getelementptr i8, i8* %call1, i64 %231
  %polly.access.mul.Packed_MemRef_call2269421.us.2 = mul nuw nsw i64 %polly.indvar406.us.2, 80
  %polly.access.add.Packed_MemRef_call2269422.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269421.us.2, %133
  %polly.access.Packed_MemRef_call2269423.us.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.us.2
  %_p_scalar_424.us.2 = load double, double* %polly.access.Packed_MemRef_call2269423.us.2, align 8
  %scevgep430.us.2 = getelementptr i8, i8* %scevgep417.us.2, i64 %134
  %scevgep430431.us.2 = bitcast i8* %scevgep430.us.2 to double*
  %_p_scalar_432.us.2 = load double, double* %scevgep430431.us.2, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header410.us.2

polly.loop_header410.us.2:                        ; preds = %polly.loop_header410.us.2, %polly.loop_header403.us.2
  %polly.indvar414.us.2 = phi i64 [ 0, %polly.loop_header403.us.2 ], [ %polly.indvar_next415.us.2, %polly.loop_header410.us.2 ]
  %232 = add nuw nsw i64 %polly.indvar414.us.2, %139
  %233 = mul nuw nsw i64 %232, 480
  %scevgep418.us.2 = getelementptr i8, i8* %scevgep417.us.2, i64 %233
  %scevgep418419.us.2 = bitcast i8* %scevgep418.us.2 to double*
  %_p_scalar_420.us.2 = load double, double* %scevgep418419.us.2, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_424.us.2, %_p_scalar_420.us.2
  %polly.access.add.Packed_MemRef_call2269426.us.2 = add nuw nsw i64 %232, %polly.access.mul.Packed_MemRef_call2269421.us.2
  %polly.access.Packed_MemRef_call2269427.us.2 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269426.us.2
  %_p_scalar_428.us.2 = load double, double* %polly.access.Packed_MemRef_call2269427.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_432.us.2, %_p_scalar_428.us.2
  %234 = shl i64 %232, 3
  %235 = add nuw nsw i64 %234, %135
  %scevgep433.us.2 = getelementptr i8, i8* %call, i64 %235
  %scevgep433434.us.2 = bitcast i8* %scevgep433.us.2 to double*
  %_p_scalar_435.us.2 = load double, double* %scevgep433434.us.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_435.us.2
  store double %p_add42.i79.us.2, double* %scevgep433434.us.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next415.us.2 = add nuw nsw i64 %polly.indvar414.us.2, 1
  %exitcond841.2.not = icmp eq i64 %polly.indvar414.us.2, %smin840.2
  br i1 %exitcond841.2.not, label %polly.loop_exit412.loopexit.us.2, label %polly.loop_header410.us.2

polly.loop_exit412.loopexit.us.2:                 ; preds = %polly.loop_header410.us.2
  %polly.indvar_next407.us.2 = add nuw nsw i64 %polly.indvar406.us.2, 1
  %exitcond842.2.not = icmp eq i64 %polly.indvar_next407.us.2, 60
  br i1 %exitcond842.2.not, label %polly.loop_exit405.2, label %polly.loop_header403.us.2

polly.loop_exit405.2:                             ; preds = %polly.loop_exit412.loopexit.us.2, %polly.loop_exit405.1
  %indvars.iv.next839.2 = or i64 %indvars.iv836, 3
  %smin840.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next839.2, i64 19)
  %polly.loop_guard413.3952 = icmp sgt i64 %140, -1
  br i1 %polly.loop_guard413.3952, label %polly.loop_header403.us.3, label %polly.loop_exit405.3

polly.loop_header403.us.3:                        ; preds = %polly.loop_exit405.2, %polly.loop_exit412.loopexit.us.3
  %polly.indvar406.us.3 = phi i64 [ %polly.indvar_next407.us.3, %polly.loop_exit412.loopexit.us.3 ], [ 0, %polly.loop_exit405.2 ]
  %236 = shl nuw nsw i64 %polly.indvar406.us.3, 3
  %scevgep417.us.3 = getelementptr i8, i8* %call1, i64 %236
  %polly.access.mul.Packed_MemRef_call2269421.us.3 = mul nuw nsw i64 %polly.indvar406.us.3, 80
  %polly.access.add.Packed_MemRef_call2269422.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2269421.us.3, %136
  %polly.access.Packed_MemRef_call2269423.us.3 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269422.us.3
  %_p_scalar_424.us.3 = load double, double* %polly.access.Packed_MemRef_call2269423.us.3, align 8
  %scevgep430.us.3 = getelementptr i8, i8* %scevgep417.us.3, i64 %137
  %scevgep430431.us.3 = bitcast i8* %scevgep430.us.3 to double*
  %_p_scalar_432.us.3 = load double, double* %scevgep430431.us.3, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header410.us.3

polly.loop_header410.us.3:                        ; preds = %polly.loop_header410.us.3, %polly.loop_header403.us.3
  %polly.indvar414.us.3 = phi i64 [ 0, %polly.loop_header403.us.3 ], [ %polly.indvar_next415.us.3, %polly.loop_header410.us.3 ]
  %237 = add nuw nsw i64 %polly.indvar414.us.3, %139
  %238 = mul nuw nsw i64 %237, 480
  %scevgep418.us.3 = getelementptr i8, i8* %scevgep417.us.3, i64 %238
  %scevgep418419.us.3 = bitcast i8* %scevgep418.us.3 to double*
  %_p_scalar_420.us.3 = load double, double* %scevgep418419.us.3, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_424.us.3, %_p_scalar_420.us.3
  %polly.access.add.Packed_MemRef_call2269426.us.3 = add nuw nsw i64 %237, %polly.access.mul.Packed_MemRef_call2269421.us.3
  %polly.access.Packed_MemRef_call2269427.us.3 = getelementptr double, double* %Packed_MemRef_call2269, i64 %polly.access.add.Packed_MemRef_call2269426.us.3
  %_p_scalar_428.us.3 = load double, double* %polly.access.Packed_MemRef_call2269427.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_432.us.3, %_p_scalar_428.us.3
  %239 = shl i64 %237, 3
  %240 = add nuw nsw i64 %239, %138
  %scevgep433.us.3 = getelementptr i8, i8* %call, i64 %240
  %scevgep433434.us.3 = bitcast i8* %scevgep433.us.3 to double*
  %_p_scalar_435.us.3 = load double, double* %scevgep433434.us.3, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_435.us.3
  store double %p_add42.i79.us.3, double* %scevgep433434.us.3, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next415.us.3 = add nuw nsw i64 %polly.indvar414.us.3, 1
  %exitcond841.3.not = icmp eq i64 %polly.indvar414.us.3, %smin840.3
  br i1 %exitcond841.3.not, label %polly.loop_exit412.loopexit.us.3, label %polly.loop_header410.us.3

polly.loop_exit412.loopexit.us.3:                 ; preds = %polly.loop_header410.us.3
  %polly.indvar_next407.us.3 = add nuw nsw i64 %polly.indvar406.us.3, 1
  %exitcond842.3.not = icmp eq i64 %polly.indvar_next407.us.3, 60
  br i1 %exitcond842.3.not, label %polly.loop_exit405.3, label %polly.loop_header403.us.3

polly.loop_exit405.3:                             ; preds = %polly.loop_exit412.loopexit.us.3, %polly.loop_exit405.2
  %polly.indvar_next395 = add nuw nsw i64 %polly.indvar394, 1
  %indvars.iv.next837 = add nsw i64 %indvars.iv836, -20
  %exitcond844.not = icmp eq i64 %polly.indvar394, %126
  br i1 %exitcond844.not, label %polly.loop_exit393, label %polly.loop_header391

polly.loop_header575.us.1:                        ; preds = %polly.loop_exit577, %polly.loop_exit584.loopexit.us.1
  %polly.indvar578.us.1 = phi i64 [ %polly.indvar_next579.us.1, %polly.loop_exit584.loopexit.us.1 ], [ 0, %polly.loop_exit577 ]
  %241 = shl nuw nsw i64 %polly.indvar578.us.1, 3
  %scevgep589.us.1 = getelementptr i8, i8* %call1, i64 %241
  %polly.access.mul.Packed_MemRef_call2441593.us.1 = mul nuw nsw i64 %polly.indvar578.us.1, 80
  %polly.access.add.Packed_MemRef_call2441594.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2441593.us.1, %159
  %polly.access.Packed_MemRef_call2441595.us.1 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441594.us.1
  %_p_scalar_596.us.1 = load double, double* %polly.access.Packed_MemRef_call2441595.us.1, align 8
  %scevgep602.us.1 = getelementptr i8, i8* %scevgep589.us.1, i64 %160
  %scevgep602603.us.1 = bitcast i8* %scevgep602.us.1 to double*
  %_p_scalar_604.us.1 = load double, double* %scevgep602603.us.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header582.us.1

polly.loop_header582.us.1:                        ; preds = %polly.loop_header582.us.1, %polly.loop_header575.us.1
  %polly.indvar586.us.1 = phi i64 [ 0, %polly.loop_header575.us.1 ], [ %polly.indvar_next587.us.1, %polly.loop_header582.us.1 ]
  %242 = add nuw nsw i64 %polly.indvar586.us.1, %168
  %243 = mul nuw nsw i64 %242, 480
  %scevgep590.us.1 = getelementptr i8, i8* %scevgep589.us.1, i64 %243
  %scevgep590591.us.1 = bitcast i8* %scevgep590.us.1 to double*
  %_p_scalar_592.us.1 = load double, double* %scevgep590591.us.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_596.us.1, %_p_scalar_592.us.1
  %polly.access.add.Packed_MemRef_call2441598.us.1 = add nuw nsw i64 %242, %polly.access.mul.Packed_MemRef_call2441593.us.1
  %polly.access.Packed_MemRef_call2441599.us.1 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441598.us.1
  %_p_scalar_600.us.1 = load double, double* %polly.access.Packed_MemRef_call2441599.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_604.us.1, %_p_scalar_600.us.1
  %244 = shl i64 %242, 3
  %245 = add nuw nsw i64 %244, %161
  %scevgep605.us.1 = getelementptr i8, i8* %call, i64 %245
  %scevgep605606.us.1 = bitcast i8* %scevgep605.us.1 to double*
  %_p_scalar_607.us.1 = load double, double* %scevgep605606.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_607.us.1
  store double %p_add42.i.us.1, double* %scevgep605606.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next587.us.1 = add nuw nsw i64 %polly.indvar586.us.1, 1
  %exitcond857.1.not = icmp eq i64 %polly.indvar586.us.1, %smin856.1
  br i1 %exitcond857.1.not, label %polly.loop_exit584.loopexit.us.1, label %polly.loop_header582.us.1

polly.loop_exit584.loopexit.us.1:                 ; preds = %polly.loop_header582.us.1
  %polly.indvar_next579.us.1 = add nuw nsw i64 %polly.indvar578.us.1, 1
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next579.us.1, 60
  br i1 %exitcond858.1.not, label %polly.loop_exit577.1, label %polly.loop_header575.us.1

polly.loop_exit577.1:                             ; preds = %polly.loop_exit584.loopexit.us.1, %polly.loop_exit577
  %indvars.iv.next855.1 = add nuw nsw i64 %indvars.iv.next855, 1
  %smin856.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next855.1, i64 19)
  %polly.loop_guard585.2955 = icmp sgt i64 %169, -1
  br i1 %polly.loop_guard585.2955, label %polly.loop_header575.us.2, label %polly.loop_exit577.2

polly.loop_header575.us.2:                        ; preds = %polly.loop_exit577.1, %polly.loop_exit584.loopexit.us.2
  %polly.indvar578.us.2 = phi i64 [ %polly.indvar_next579.us.2, %polly.loop_exit584.loopexit.us.2 ], [ 0, %polly.loop_exit577.1 ]
  %246 = shl nuw nsw i64 %polly.indvar578.us.2, 3
  %scevgep589.us.2 = getelementptr i8, i8* %call1, i64 %246
  %polly.access.mul.Packed_MemRef_call2441593.us.2 = mul nuw nsw i64 %polly.indvar578.us.2, 80
  %polly.access.add.Packed_MemRef_call2441594.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2441593.us.2, %162
  %polly.access.Packed_MemRef_call2441595.us.2 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441594.us.2
  %_p_scalar_596.us.2 = load double, double* %polly.access.Packed_MemRef_call2441595.us.2, align 8
  %scevgep602.us.2 = getelementptr i8, i8* %scevgep589.us.2, i64 %163
  %scevgep602603.us.2 = bitcast i8* %scevgep602.us.2 to double*
  %_p_scalar_604.us.2 = load double, double* %scevgep602603.us.2, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header582.us.2

polly.loop_header582.us.2:                        ; preds = %polly.loop_header582.us.2, %polly.loop_header575.us.2
  %polly.indvar586.us.2 = phi i64 [ 0, %polly.loop_header575.us.2 ], [ %polly.indvar_next587.us.2, %polly.loop_header582.us.2 ]
  %247 = add nuw nsw i64 %polly.indvar586.us.2, %168
  %248 = mul nuw nsw i64 %247, 480
  %scevgep590.us.2 = getelementptr i8, i8* %scevgep589.us.2, i64 %248
  %scevgep590591.us.2 = bitcast i8* %scevgep590.us.2 to double*
  %_p_scalar_592.us.2 = load double, double* %scevgep590591.us.2, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_596.us.2, %_p_scalar_592.us.2
  %polly.access.add.Packed_MemRef_call2441598.us.2 = add nuw nsw i64 %247, %polly.access.mul.Packed_MemRef_call2441593.us.2
  %polly.access.Packed_MemRef_call2441599.us.2 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441598.us.2
  %_p_scalar_600.us.2 = load double, double* %polly.access.Packed_MemRef_call2441599.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_604.us.2, %_p_scalar_600.us.2
  %249 = shl i64 %247, 3
  %250 = add nuw nsw i64 %249, %164
  %scevgep605.us.2 = getelementptr i8, i8* %call, i64 %250
  %scevgep605606.us.2 = bitcast i8* %scevgep605.us.2 to double*
  %_p_scalar_607.us.2 = load double, double* %scevgep605606.us.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_607.us.2
  store double %p_add42.i.us.2, double* %scevgep605606.us.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next587.us.2 = add nuw nsw i64 %polly.indvar586.us.2, 1
  %exitcond857.2.not = icmp eq i64 %polly.indvar586.us.2, %smin856.2
  br i1 %exitcond857.2.not, label %polly.loop_exit584.loopexit.us.2, label %polly.loop_header582.us.2

polly.loop_exit584.loopexit.us.2:                 ; preds = %polly.loop_header582.us.2
  %polly.indvar_next579.us.2 = add nuw nsw i64 %polly.indvar578.us.2, 1
  %exitcond858.2.not = icmp eq i64 %polly.indvar_next579.us.2, 60
  br i1 %exitcond858.2.not, label %polly.loop_exit577.2, label %polly.loop_header575.us.2

polly.loop_exit577.2:                             ; preds = %polly.loop_exit584.loopexit.us.2, %polly.loop_exit577.1
  %indvars.iv.next855.2 = or i64 %indvars.iv852, 3
  %smin856.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next855.2, i64 19)
  %polly.loop_guard585.3956 = icmp sgt i64 %169, -1
  br i1 %polly.loop_guard585.3956, label %polly.loop_header575.us.3, label %polly.loop_exit577.3

polly.loop_header575.us.3:                        ; preds = %polly.loop_exit577.2, %polly.loop_exit584.loopexit.us.3
  %polly.indvar578.us.3 = phi i64 [ %polly.indvar_next579.us.3, %polly.loop_exit584.loopexit.us.3 ], [ 0, %polly.loop_exit577.2 ]
  %251 = shl nuw nsw i64 %polly.indvar578.us.3, 3
  %scevgep589.us.3 = getelementptr i8, i8* %call1, i64 %251
  %polly.access.mul.Packed_MemRef_call2441593.us.3 = mul nuw nsw i64 %polly.indvar578.us.3, 80
  %polly.access.add.Packed_MemRef_call2441594.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2441593.us.3, %165
  %polly.access.Packed_MemRef_call2441595.us.3 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441594.us.3
  %_p_scalar_596.us.3 = load double, double* %polly.access.Packed_MemRef_call2441595.us.3, align 8
  %scevgep602.us.3 = getelementptr i8, i8* %scevgep589.us.3, i64 %166
  %scevgep602603.us.3 = bitcast i8* %scevgep602.us.3 to double*
  %_p_scalar_604.us.3 = load double, double* %scevgep602603.us.3, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header582.us.3

polly.loop_header582.us.3:                        ; preds = %polly.loop_header582.us.3, %polly.loop_header575.us.3
  %polly.indvar586.us.3 = phi i64 [ 0, %polly.loop_header575.us.3 ], [ %polly.indvar_next587.us.3, %polly.loop_header582.us.3 ]
  %252 = add nuw nsw i64 %polly.indvar586.us.3, %168
  %253 = mul nuw nsw i64 %252, 480
  %scevgep590.us.3 = getelementptr i8, i8* %scevgep589.us.3, i64 %253
  %scevgep590591.us.3 = bitcast i8* %scevgep590.us.3 to double*
  %_p_scalar_592.us.3 = load double, double* %scevgep590591.us.3, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_596.us.3, %_p_scalar_592.us.3
  %polly.access.add.Packed_MemRef_call2441598.us.3 = add nuw nsw i64 %252, %polly.access.mul.Packed_MemRef_call2441593.us.3
  %polly.access.Packed_MemRef_call2441599.us.3 = getelementptr double, double* %Packed_MemRef_call2441, i64 %polly.access.add.Packed_MemRef_call2441598.us.3
  %_p_scalar_600.us.3 = load double, double* %polly.access.Packed_MemRef_call2441599.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_604.us.3, %_p_scalar_600.us.3
  %254 = shl i64 %252, 3
  %255 = add nuw nsw i64 %254, %167
  %scevgep605.us.3 = getelementptr i8, i8* %call, i64 %255
  %scevgep605606.us.3 = bitcast i8* %scevgep605.us.3 to double*
  %_p_scalar_607.us.3 = load double, double* %scevgep605606.us.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_607.us.3
  store double %p_add42.i.us.3, double* %scevgep605606.us.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next587.us.3 = add nuw nsw i64 %polly.indvar586.us.3, 1
  %exitcond857.3.not = icmp eq i64 %polly.indvar586.us.3, %smin856.3
  br i1 %exitcond857.3.not, label %polly.loop_exit584.loopexit.us.3, label %polly.loop_header582.us.3

polly.loop_exit584.loopexit.us.3:                 ; preds = %polly.loop_header582.us.3
  %polly.indvar_next579.us.3 = add nuw nsw i64 %polly.indvar578.us.3, 1
  %exitcond858.3.not = icmp eq i64 %polly.indvar_next579.us.3, 60
  br i1 %exitcond858.3.not, label %polly.loop_exit577.3, label %polly.loop_header575.us.3

polly.loop_exit577.3:                             ; preds = %polly.loop_exit584.loopexit.us.3, %polly.loop_exit577.2
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %indvars.iv.next853 = add nsw i64 %indvars.iv852, -20
  %exitcond860.not = icmp eq i64 %polly.indvar566, %155
  br i1 %exitcond860.not, label %polly.loop_exit565, label %polly.loop_header563

polly.loop_header799.1:                           ; preds = %polly.loop_exit807, %polly.loop_exit807.1
  %polly.indvar802.1 = phi i64 [ %polly.indvar_next803.1, %polly.loop_exit807.1 ], [ 0, %polly.loop_exit807 ]
  %256 = mul nuw nsw i64 %polly.indvar802.1, 480
  %257 = trunc i64 %polly.indvar802.1 to i32
  %broadcast.splatinsert1191 = insertelement <4 x i32> poison, i32 %257, i32 0
  %broadcast.splat1192 = shufflevector <4 x i32> %broadcast.splatinsert1191, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1183

vector.body1183:                                  ; preds = %vector.body1183, %polly.loop_header799.1
  %index1185 = phi i64 [ 0, %polly.loop_header799.1 ], [ %index.next1186, %vector.body1183 ]
  %vec.ind1189 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.1 ], [ %vec.ind.next1190, %vector.body1183 ]
  %258 = add nuw nsw <4 x i64> %vec.ind1189, <i64 32, i64 32, i64 32, i64 32>
  %259 = trunc <4 x i64> %258 to <4 x i32>
  %260 = mul <4 x i32> %broadcast.splat1192, %259
  %261 = add <4 x i32> %260, <i32 1, i32 1, i32 1, i32 1>
  %262 = urem <4 x i32> %261, <i32 80, i32 80, i32 80, i32 80>
  %263 = sitofp <4 x i32> %262 to <4 x double>
  %264 = fmul fast <4 x double> %263, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %265 = extractelement <4 x i64> %258, i32 0
  %266 = shl i64 %265, 3
  %267 = add i64 %266, %256
  %268 = getelementptr i8, i8* %call1, i64 %267
  %269 = bitcast i8* %268 to <4 x double>*
  store <4 x double> %264, <4 x double>* %269, align 8, !alias.scope !97, !noalias !102
  %index.next1186 = add i64 %index1185, 4
  %vec.ind.next1190 = add <4 x i64> %vec.ind1189, <i64 4, i64 4, i64 4, i64 4>
  %270 = icmp eq i64 %index.next1186, 28
  br i1 %270, label %polly.loop_exit807.1, label %vector.body1183, !llvm.loop !104

polly.loop_exit807.1:                             ; preds = %vector.body1183
  %polly.indvar_next803.1 = add nuw nsw i64 %polly.indvar802.1, 1
  %exitcond870.1.not = icmp eq i64 %polly.indvar_next803.1, 32
  br i1 %exitcond870.1.not, label %polly.loop_header799.1890, label %polly.loop_header799.1

polly.loop_header799.1890:                        ; preds = %polly.loop_exit807.1, %polly.loop_exit807.1901
  %polly.indvar802.1889 = phi i64 [ %polly.indvar_next803.1899, %polly.loop_exit807.1901 ], [ 0, %polly.loop_exit807.1 ]
  %271 = add nuw nsw i64 %polly.indvar802.1889, 32
  %272 = mul nuw nsw i64 %271, 480
  %273 = trunc i64 %271 to i32
  %broadcast.splatinsert1205 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat1206 = shufflevector <4 x i32> %broadcast.splatinsert1205, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %polly.loop_header799.1890
  %index1197 = phi i64 [ 0, %polly.loop_header799.1890 ], [ %index.next1198, %vector.body1195 ]
  %vec.ind1203 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header799.1890 ], [ %vec.ind.next1204, %vector.body1195 ]
  %274 = mul <4 x i32> %vec.ind1203, %broadcast.splat1206
  %275 = add <4 x i32> %274, <i32 1, i32 1, i32 1, i32 1>
  %276 = urem <4 x i32> %275, <i32 80, i32 80, i32 80, i32 80>
  %277 = sitofp <4 x i32> %276 to <4 x double>
  %278 = fmul fast <4 x double> %277, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %279 = shl i64 %index1197, 3
  %280 = add i64 %279, %272
  %281 = getelementptr i8, i8* %call1, i64 %280
  %282 = bitcast i8* %281 to <4 x double>*
  store <4 x double> %278, <4 x double>* %282, align 8, !alias.scope !97, !noalias !102
  %index.next1198 = add i64 %index1197, 4
  %vec.ind.next1204 = add <4 x i32> %vec.ind1203, <i32 4, i32 4, i32 4, i32 4>
  %283 = icmp eq i64 %index.next1198, 32
  br i1 %283, label %polly.loop_exit807.1901, label %vector.body1195, !llvm.loop !105

polly.loop_exit807.1901:                          ; preds = %vector.body1195
  %polly.indvar_next803.1899 = add nuw nsw i64 %polly.indvar802.1889, 1
  %exitcond870.1900.not = icmp eq i64 %polly.indvar_next803.1899, 32
  br i1 %exitcond870.1900.not, label %polly.loop_header799.1.1, label %polly.loop_header799.1890

polly.loop_header799.1.1:                         ; preds = %polly.loop_exit807.1901, %polly.loop_exit807.1.1
  %polly.indvar802.1.1 = phi i64 [ %polly.indvar_next803.1.1, %polly.loop_exit807.1.1 ], [ 0, %polly.loop_exit807.1901 ]
  %284 = add nuw nsw i64 %polly.indvar802.1.1, 32
  %285 = mul nuw nsw i64 %284, 480
  %286 = trunc i64 %284 to i32
  %broadcast.splatinsert1217 = insertelement <4 x i32> poison, i32 %286, i32 0
  %broadcast.splat1218 = shufflevector <4 x i32> %broadcast.splatinsert1217, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %polly.loop_header799.1.1
  %index1211 = phi i64 [ 0, %polly.loop_header799.1.1 ], [ %index.next1212, %vector.body1209 ]
  %vec.ind1215 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.1.1 ], [ %vec.ind.next1216, %vector.body1209 ]
  %287 = add nuw nsw <4 x i64> %vec.ind1215, <i64 32, i64 32, i64 32, i64 32>
  %288 = trunc <4 x i64> %287 to <4 x i32>
  %289 = mul <4 x i32> %broadcast.splat1218, %288
  %290 = add <4 x i32> %289, <i32 1, i32 1, i32 1, i32 1>
  %291 = urem <4 x i32> %290, <i32 80, i32 80, i32 80, i32 80>
  %292 = sitofp <4 x i32> %291 to <4 x double>
  %293 = fmul fast <4 x double> %292, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %294 = extractelement <4 x i64> %287, i32 0
  %295 = shl i64 %294, 3
  %296 = add i64 %295, %285
  %297 = getelementptr i8, i8* %call1, i64 %296
  %298 = bitcast i8* %297 to <4 x double>*
  store <4 x double> %293, <4 x double>* %298, align 8, !alias.scope !97, !noalias !102
  %index.next1212 = add i64 %index1211, 4
  %vec.ind.next1216 = add <4 x i64> %vec.ind1215, <i64 4, i64 4, i64 4, i64 4>
  %299 = icmp eq i64 %index.next1212, 28
  br i1 %299, label %polly.loop_exit807.1.1, label %vector.body1209, !llvm.loop !106

polly.loop_exit807.1.1:                           ; preds = %vector.body1209
  %polly.indvar_next803.1.1 = add nuw nsw i64 %polly.indvar802.1.1, 1
  %exitcond870.1.1.not = icmp eq i64 %polly.indvar_next803.1.1, 32
  br i1 %exitcond870.1.1.not, label %polly.loop_header799.2, label %polly.loop_header799.1.1

polly.loop_header799.2:                           ; preds = %polly.loop_exit807.1.1, %polly.loop_exit807.2
  %polly.indvar802.2 = phi i64 [ %polly.indvar_next803.2, %polly.loop_exit807.2 ], [ 0, %polly.loop_exit807.1.1 ]
  %300 = add nuw nsw i64 %polly.indvar802.2, 64
  %301 = mul nuw nsw i64 %300, 480
  %302 = trunc i64 %300 to i32
  %broadcast.splatinsert1231 = insertelement <4 x i32> poison, i32 %302, i32 0
  %broadcast.splat1232 = shufflevector <4 x i32> %broadcast.splatinsert1231, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %polly.loop_header799.2
  %index1223 = phi i64 [ 0, %polly.loop_header799.2 ], [ %index.next1224, %vector.body1221 ]
  %vec.ind1229 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header799.2 ], [ %vec.ind.next1230, %vector.body1221 ]
  %303 = mul <4 x i32> %vec.ind1229, %broadcast.splat1232
  %304 = add <4 x i32> %303, <i32 1, i32 1, i32 1, i32 1>
  %305 = urem <4 x i32> %304, <i32 80, i32 80, i32 80, i32 80>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %308 = shl i64 %index1223, 3
  %309 = add i64 %308, %301
  %310 = getelementptr i8, i8* %call1, i64 %309
  %311 = bitcast i8* %310 to <4 x double>*
  store <4 x double> %307, <4 x double>* %311, align 8, !alias.scope !97, !noalias !102
  %index.next1224 = add i64 %index1223, 4
  %vec.ind.next1230 = add <4 x i32> %vec.ind1229, <i32 4, i32 4, i32 4, i32 4>
  %312 = icmp eq i64 %index.next1224, 32
  br i1 %312, label %polly.loop_exit807.2, label %vector.body1221, !llvm.loop !107

polly.loop_exit807.2:                             ; preds = %vector.body1221
  %polly.indvar_next803.2 = add nuw nsw i64 %polly.indvar802.2, 1
  %exitcond870.2.not = icmp eq i64 %polly.indvar_next803.2, 16
  br i1 %exitcond870.2.not, label %polly.loop_header799.1.2, label %polly.loop_header799.2

polly.loop_header799.1.2:                         ; preds = %polly.loop_exit807.2, %polly.loop_exit807.1.2
  %polly.indvar802.1.2 = phi i64 [ %polly.indvar_next803.1.2, %polly.loop_exit807.1.2 ], [ 0, %polly.loop_exit807.2 ]
  %313 = add nuw nsw i64 %polly.indvar802.1.2, 64
  %314 = mul nuw nsw i64 %313, 480
  %315 = trunc i64 %313 to i32
  %broadcast.splatinsert1243 = insertelement <4 x i32> poison, i32 %315, i32 0
  %broadcast.splat1244 = shufflevector <4 x i32> %broadcast.splatinsert1243, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %polly.loop_header799.1.2
  %index1237 = phi i64 [ 0, %polly.loop_header799.1.2 ], [ %index.next1238, %vector.body1235 ]
  %vec.ind1241 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header799.1.2 ], [ %vec.ind.next1242, %vector.body1235 ]
  %316 = add nuw nsw <4 x i64> %vec.ind1241, <i64 32, i64 32, i64 32, i64 32>
  %317 = trunc <4 x i64> %316 to <4 x i32>
  %318 = mul <4 x i32> %broadcast.splat1244, %317
  %319 = add <4 x i32> %318, <i32 1, i32 1, i32 1, i32 1>
  %320 = urem <4 x i32> %319, <i32 80, i32 80, i32 80, i32 80>
  %321 = sitofp <4 x i32> %320 to <4 x double>
  %322 = fmul fast <4 x double> %321, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %323 = extractelement <4 x i64> %316, i32 0
  %324 = shl i64 %323, 3
  %325 = add i64 %324, %314
  %326 = getelementptr i8, i8* %call1, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %322, <4 x double>* %327, align 8, !alias.scope !97, !noalias !102
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1242 = add <4 x i64> %vec.ind1241, <i64 4, i64 4, i64 4, i64 4>
  %328 = icmp eq i64 %index.next1238, 28
  br i1 %328, label %polly.loop_exit807.1.2, label %vector.body1235, !llvm.loop !108

polly.loop_exit807.1.2:                           ; preds = %vector.body1235
  %polly.indvar_next803.1.2 = add nuw nsw i64 %polly.indvar802.1.2, 1
  %exitcond870.1.2.not = icmp eq i64 %polly.indvar_next803.1.2, 16
  br i1 %exitcond870.1.2.not, label %init_array.exit, label %polly.loop_header799.1.2

polly.loop_header773.1:                           ; preds = %polly.loop_exit781, %polly.loop_exit781.1
  %polly.indvar776.1 = phi i64 [ %polly.indvar_next777.1, %polly.loop_exit781.1 ], [ 0, %polly.loop_exit781 ]
  %329 = mul nuw nsw i64 %polly.indvar776.1, 480
  %330 = trunc i64 %polly.indvar776.1 to i32
  %broadcast.splatinsert1113 = insertelement <4 x i32> poison, i32 %330, i32 0
  %broadcast.splat1114 = shufflevector <4 x i32> %broadcast.splatinsert1113, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.body1105, %polly.loop_header773.1
  %index1107 = phi i64 [ 0, %polly.loop_header773.1 ], [ %index.next1108, %vector.body1105 ]
  %vec.ind1111 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header773.1 ], [ %vec.ind.next1112, %vector.body1105 ]
  %331 = add nuw nsw <4 x i64> %vec.ind1111, <i64 32, i64 32, i64 32, i64 32>
  %332 = trunc <4 x i64> %331 to <4 x i32>
  %333 = mul <4 x i32> %broadcast.splat1114, %332
  %334 = add <4 x i32> %333, <i32 2, i32 2, i32 2, i32 2>
  %335 = urem <4 x i32> %334, <i32 60, i32 60, i32 60, i32 60>
  %336 = sitofp <4 x i32> %335 to <4 x double>
  %337 = fmul fast <4 x double> %336, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %338 = extractelement <4 x i64> %331, i32 0
  %339 = shl i64 %338, 3
  %340 = add i64 %339, %329
  %341 = getelementptr i8, i8* %call2, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %337, <4 x double>* %342, align 8, !alias.scope !98, !noalias !100
  %index.next1108 = add i64 %index1107, 4
  %vec.ind.next1112 = add <4 x i64> %vec.ind1111, <i64 4, i64 4, i64 4, i64 4>
  %343 = icmp eq i64 %index.next1108, 28
  br i1 %343, label %polly.loop_exit781.1, label %vector.body1105, !llvm.loop !109

polly.loop_exit781.1:                             ; preds = %vector.body1105
  %polly.indvar_next777.1 = add nuw nsw i64 %polly.indvar776.1, 1
  %exitcond876.1.not = icmp eq i64 %polly.indvar_next777.1, 32
  br i1 %exitcond876.1.not, label %polly.loop_header773.1904, label %polly.loop_header773.1

polly.loop_header773.1904:                        ; preds = %polly.loop_exit781.1, %polly.loop_exit781.1915
  %polly.indvar776.1903 = phi i64 [ %polly.indvar_next777.1913, %polly.loop_exit781.1915 ], [ 0, %polly.loop_exit781.1 ]
  %344 = add nuw nsw i64 %polly.indvar776.1903, 32
  %345 = mul nuw nsw i64 %344, 480
  %346 = trunc i64 %344 to i32
  %broadcast.splatinsert1127 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1128 = shufflevector <4 x i32> %broadcast.splatinsert1127, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1117

vector.body1117:                                  ; preds = %vector.body1117, %polly.loop_header773.1904
  %index1119 = phi i64 [ 0, %polly.loop_header773.1904 ], [ %index.next1120, %vector.body1117 ]
  %vec.ind1125 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header773.1904 ], [ %vec.ind.next1126, %vector.body1117 ]
  %347 = mul <4 x i32> %vec.ind1125, %broadcast.splat1128
  %348 = add <4 x i32> %347, <i32 2, i32 2, i32 2, i32 2>
  %349 = urem <4 x i32> %348, <i32 60, i32 60, i32 60, i32 60>
  %350 = sitofp <4 x i32> %349 to <4 x double>
  %351 = fmul fast <4 x double> %350, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %352 = shl i64 %index1119, 3
  %353 = add i64 %352, %345
  %354 = getelementptr i8, i8* %call2, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %351, <4 x double>* %355, align 8, !alias.scope !98, !noalias !100
  %index.next1120 = add i64 %index1119, 4
  %vec.ind.next1126 = add <4 x i32> %vec.ind1125, <i32 4, i32 4, i32 4, i32 4>
  %356 = icmp eq i64 %index.next1120, 32
  br i1 %356, label %polly.loop_exit781.1915, label %vector.body1117, !llvm.loop !110

polly.loop_exit781.1915:                          ; preds = %vector.body1117
  %polly.indvar_next777.1913 = add nuw nsw i64 %polly.indvar776.1903, 1
  %exitcond876.1914.not = icmp eq i64 %polly.indvar_next777.1913, 32
  br i1 %exitcond876.1914.not, label %polly.loop_header773.1.1, label %polly.loop_header773.1904

polly.loop_header773.1.1:                         ; preds = %polly.loop_exit781.1915, %polly.loop_exit781.1.1
  %polly.indvar776.1.1 = phi i64 [ %polly.indvar_next777.1.1, %polly.loop_exit781.1.1 ], [ 0, %polly.loop_exit781.1915 ]
  %357 = add nuw nsw i64 %polly.indvar776.1.1, 32
  %358 = mul nuw nsw i64 %357, 480
  %359 = trunc i64 %357 to i32
  %broadcast.splatinsert1139 = insertelement <4 x i32> poison, i32 %359, i32 0
  %broadcast.splat1140 = shufflevector <4 x i32> %broadcast.splatinsert1139, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1131

vector.body1131:                                  ; preds = %vector.body1131, %polly.loop_header773.1.1
  %index1133 = phi i64 [ 0, %polly.loop_header773.1.1 ], [ %index.next1134, %vector.body1131 ]
  %vec.ind1137 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header773.1.1 ], [ %vec.ind.next1138, %vector.body1131 ]
  %360 = add nuw nsw <4 x i64> %vec.ind1137, <i64 32, i64 32, i64 32, i64 32>
  %361 = trunc <4 x i64> %360 to <4 x i32>
  %362 = mul <4 x i32> %broadcast.splat1140, %361
  %363 = add <4 x i32> %362, <i32 2, i32 2, i32 2, i32 2>
  %364 = urem <4 x i32> %363, <i32 60, i32 60, i32 60, i32 60>
  %365 = sitofp <4 x i32> %364 to <4 x double>
  %366 = fmul fast <4 x double> %365, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %367 = extractelement <4 x i64> %360, i32 0
  %368 = shl i64 %367, 3
  %369 = add i64 %368, %358
  %370 = getelementptr i8, i8* %call2, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %366, <4 x double>* %371, align 8, !alias.scope !98, !noalias !100
  %index.next1134 = add i64 %index1133, 4
  %vec.ind.next1138 = add <4 x i64> %vec.ind1137, <i64 4, i64 4, i64 4, i64 4>
  %372 = icmp eq i64 %index.next1134, 28
  br i1 %372, label %polly.loop_exit781.1.1, label %vector.body1131, !llvm.loop !111

polly.loop_exit781.1.1:                           ; preds = %vector.body1131
  %polly.indvar_next777.1.1 = add nuw nsw i64 %polly.indvar776.1.1, 1
  %exitcond876.1.1.not = icmp eq i64 %polly.indvar_next777.1.1, 32
  br i1 %exitcond876.1.1.not, label %polly.loop_header773.2, label %polly.loop_header773.1.1

polly.loop_header773.2:                           ; preds = %polly.loop_exit781.1.1, %polly.loop_exit781.2
  %polly.indvar776.2 = phi i64 [ %polly.indvar_next777.2, %polly.loop_exit781.2 ], [ 0, %polly.loop_exit781.1.1 ]
  %373 = add nuw nsw i64 %polly.indvar776.2, 64
  %374 = mul nuw nsw i64 %373, 480
  %375 = trunc i64 %373 to i32
  %broadcast.splatinsert1153 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1154 = shufflevector <4 x i32> %broadcast.splatinsert1153, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1143

vector.body1143:                                  ; preds = %vector.body1143, %polly.loop_header773.2
  %index1145 = phi i64 [ 0, %polly.loop_header773.2 ], [ %index.next1146, %vector.body1143 ]
  %vec.ind1151 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header773.2 ], [ %vec.ind.next1152, %vector.body1143 ]
  %376 = mul <4 x i32> %vec.ind1151, %broadcast.splat1154
  %377 = add <4 x i32> %376, <i32 2, i32 2, i32 2, i32 2>
  %378 = urem <4 x i32> %377, <i32 60, i32 60, i32 60, i32 60>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = shl i64 %index1145, 3
  %382 = add i64 %381, %374
  %383 = getelementptr i8, i8* %call2, i64 %382
  %384 = bitcast i8* %383 to <4 x double>*
  store <4 x double> %380, <4 x double>* %384, align 8, !alias.scope !98, !noalias !100
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1152 = add <4 x i32> %vec.ind1151, <i32 4, i32 4, i32 4, i32 4>
  %385 = icmp eq i64 %index.next1146, 32
  br i1 %385, label %polly.loop_exit781.2, label %vector.body1143, !llvm.loop !112

polly.loop_exit781.2:                             ; preds = %vector.body1143
  %polly.indvar_next777.2 = add nuw nsw i64 %polly.indvar776.2, 1
  %exitcond876.2.not = icmp eq i64 %polly.indvar_next777.2, 16
  br i1 %exitcond876.2.not, label %polly.loop_header773.1.2, label %polly.loop_header773.2

polly.loop_header773.1.2:                         ; preds = %polly.loop_exit781.2, %polly.loop_exit781.1.2
  %polly.indvar776.1.2 = phi i64 [ %polly.indvar_next777.1.2, %polly.loop_exit781.1.2 ], [ 0, %polly.loop_exit781.2 ]
  %386 = add nuw nsw i64 %polly.indvar776.1.2, 64
  %387 = mul nuw nsw i64 %386, 480
  %388 = trunc i64 %386 to i32
  %broadcast.splatinsert1165 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1166 = shufflevector <4 x i32> %broadcast.splatinsert1165, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1157

vector.body1157:                                  ; preds = %vector.body1157, %polly.loop_header773.1.2
  %index1159 = phi i64 [ 0, %polly.loop_header773.1.2 ], [ %index.next1160, %vector.body1157 ]
  %vec.ind1163 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header773.1.2 ], [ %vec.ind.next1164, %vector.body1157 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1163, <i64 32, i64 32, i64 32, i64 32>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1166, %390
  %392 = add <4 x i32> %391, <i32 2, i32 2, i32 2, i32 2>
  %393 = urem <4 x i32> %392, <i32 60, i32 60, i32 60, i32 60>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add i64 %397, %387
  %399 = getelementptr i8, i8* %call2, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !98, !noalias !100
  %index.next1160 = add i64 %index1159, 4
  %vec.ind.next1164 = add <4 x i64> %vec.ind1163, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1160, 28
  br i1 %401, label %polly.loop_exit781.1.2, label %vector.body1157, !llvm.loop !113

polly.loop_exit781.1.2:                           ; preds = %vector.body1157
  %polly.indvar_next777.1.2 = add nuw nsw i64 %polly.indvar776.1.2, 1
  %exitcond876.1.2.not = icmp eq i64 %polly.indvar_next777.1.2, 16
  br i1 %exitcond876.1.2.not, label %polly.loop_header799, label %polly.loop_header773.1.2

polly.loop_header746.1:                           ; preds = %polly.loop_exit754, %polly.loop_exit754.1
  %polly.indvar749.1 = phi i64 [ %polly.indvar_next750.1, %polly.loop_exit754.1 ], [ 0, %polly.loop_exit754 ]
  %402 = mul nuw nsw i64 %polly.indvar749.1, 640
  %403 = trunc i64 %polly.indvar749.1 to i32
  %broadcast.splatinsert999 = insertelement <4 x i32> poison, i32 %403, i32 0
  %broadcast.splat1000 = shufflevector <4 x i32> %broadcast.splatinsert999, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body991

vector.body991:                                   ; preds = %vector.body991, %polly.loop_header746.1
  %index993 = phi i64 [ 0, %polly.loop_header746.1 ], [ %index.next994, %vector.body991 ]
  %vec.ind997 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header746.1 ], [ %vec.ind.next998, %vector.body991 ]
  %404 = add nuw nsw <4 x i64> %vec.ind997, <i64 32, i64 32, i64 32, i64 32>
  %405 = trunc <4 x i64> %404 to <4 x i32>
  %406 = mul <4 x i32> %broadcast.splat1000, %405
  %407 = add <4 x i32> %406, <i32 3, i32 3, i32 3, i32 3>
  %408 = urem <4 x i32> %407, <i32 80, i32 80, i32 80, i32 80>
  %409 = sitofp <4 x i32> %408 to <4 x double>
  %410 = fmul fast <4 x double> %409, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %411 = extractelement <4 x i64> %404, i32 0
  %412 = shl i64 %411, 3
  %413 = add nuw nsw i64 %412, %402
  %414 = getelementptr i8, i8* %call, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %410, <4 x double>* %415, align 8, !alias.scope !94, !noalias !96
  %index.next994 = add i64 %index993, 4
  %vec.ind.next998 = add <4 x i64> %vec.ind997, <i64 4, i64 4, i64 4, i64 4>
  %416 = icmp eq i64 %index.next994, 32
  br i1 %416, label %polly.loop_exit754.1, label %vector.body991, !llvm.loop !114

polly.loop_exit754.1:                             ; preds = %vector.body991
  %polly.indvar_next750.1 = add nuw nsw i64 %polly.indvar749.1, 1
  %exitcond885.1.not = icmp eq i64 %polly.indvar_next750.1, 32
  br i1 %exitcond885.1.not, label %polly.loop_header746.2, label %polly.loop_header746.1

polly.loop_header746.2:                           ; preds = %polly.loop_exit754.1, %polly.loop_exit754.2
  %polly.indvar749.2 = phi i64 [ %polly.indvar_next750.2, %polly.loop_exit754.2 ], [ 0, %polly.loop_exit754.1 ]
  %417 = mul nuw nsw i64 %polly.indvar749.2, 640
  %418 = trunc i64 %polly.indvar749.2 to i32
  %broadcast.splatinsert1011 = insertelement <4 x i32> poison, i32 %418, i32 0
  %broadcast.splat1012 = shufflevector <4 x i32> %broadcast.splatinsert1011, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %polly.loop_header746.2
  %index1005 = phi i64 [ 0, %polly.loop_header746.2 ], [ %index.next1006, %vector.body1003 ]
  %vec.ind1009 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header746.2 ], [ %vec.ind.next1010, %vector.body1003 ]
  %419 = add nuw nsw <4 x i64> %vec.ind1009, <i64 64, i64 64, i64 64, i64 64>
  %420 = trunc <4 x i64> %419 to <4 x i32>
  %421 = mul <4 x i32> %broadcast.splat1012, %420
  %422 = add <4 x i32> %421, <i32 3, i32 3, i32 3, i32 3>
  %423 = urem <4 x i32> %422, <i32 80, i32 80, i32 80, i32 80>
  %424 = sitofp <4 x i32> %423 to <4 x double>
  %425 = fmul fast <4 x double> %424, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %426 = extractelement <4 x i64> %419, i32 0
  %427 = shl i64 %426, 3
  %428 = add nuw nsw i64 %427, %417
  %429 = getelementptr i8, i8* %call, i64 %428
  %430 = bitcast i8* %429 to <4 x double>*
  store <4 x double> %425, <4 x double>* %430, align 8, !alias.scope !94, !noalias !96
  %index.next1006 = add i64 %index1005, 4
  %vec.ind.next1010 = add <4 x i64> %vec.ind1009, <i64 4, i64 4, i64 4, i64 4>
  %431 = icmp eq i64 %index.next1006, 16
  br i1 %431, label %polly.loop_exit754.2, label %vector.body1003, !llvm.loop !115

polly.loop_exit754.2:                             ; preds = %vector.body1003
  %polly.indvar_next750.2 = add nuw nsw i64 %polly.indvar749.2, 1
  %exitcond885.2.not = icmp eq i64 %polly.indvar_next750.2, 32
  br i1 %exitcond885.2.not, label %polly.loop_header746.1918, label %polly.loop_header746.2

polly.loop_header746.1918:                        ; preds = %polly.loop_exit754.2, %polly.loop_exit754.1929
  %polly.indvar749.1917 = phi i64 [ %polly.indvar_next750.1927, %polly.loop_exit754.1929 ], [ 0, %polly.loop_exit754.2 ]
  %432 = add nuw nsw i64 %polly.indvar749.1917, 32
  %433 = mul nuw nsw i64 %432, 640
  %434 = trunc i64 %432 to i32
  %broadcast.splatinsert1025 = insertelement <4 x i32> poison, i32 %434, i32 0
  %broadcast.splat1026 = shufflevector <4 x i32> %broadcast.splatinsert1025, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %polly.loop_header746.1918
  %index1017 = phi i64 [ 0, %polly.loop_header746.1918 ], [ %index.next1018, %vector.body1015 ]
  %vec.ind1023 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header746.1918 ], [ %vec.ind.next1024, %vector.body1015 ]
  %435 = mul <4 x i32> %vec.ind1023, %broadcast.splat1026
  %436 = add <4 x i32> %435, <i32 3, i32 3, i32 3, i32 3>
  %437 = urem <4 x i32> %436, <i32 80, i32 80, i32 80, i32 80>
  %438 = sitofp <4 x i32> %437 to <4 x double>
  %439 = fmul fast <4 x double> %438, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %440 = shl i64 %index1017, 3
  %441 = add nuw nsw i64 %440, %433
  %442 = getelementptr i8, i8* %call, i64 %441
  %443 = bitcast i8* %442 to <4 x double>*
  store <4 x double> %439, <4 x double>* %443, align 8, !alias.scope !94, !noalias !96
  %index.next1018 = add i64 %index1017, 4
  %vec.ind.next1024 = add <4 x i32> %vec.ind1023, <i32 4, i32 4, i32 4, i32 4>
  %444 = icmp eq i64 %index.next1018, 32
  br i1 %444, label %polly.loop_exit754.1929, label %vector.body1015, !llvm.loop !116

polly.loop_exit754.1929:                          ; preds = %vector.body1015
  %polly.indvar_next750.1927 = add nuw nsw i64 %polly.indvar749.1917, 1
  %exitcond885.1928.not = icmp eq i64 %polly.indvar_next750.1927, 32
  br i1 %exitcond885.1928.not, label %polly.loop_header746.1.1, label %polly.loop_header746.1918

polly.loop_header746.1.1:                         ; preds = %polly.loop_exit754.1929, %polly.loop_exit754.1.1
  %polly.indvar749.1.1 = phi i64 [ %polly.indvar_next750.1.1, %polly.loop_exit754.1.1 ], [ 0, %polly.loop_exit754.1929 ]
  %445 = add nuw nsw i64 %polly.indvar749.1.1, 32
  %446 = mul nuw nsw i64 %445, 640
  %447 = trunc i64 %445 to i32
  %broadcast.splatinsert1037 = insertelement <4 x i32> poison, i32 %447, i32 0
  %broadcast.splat1038 = shufflevector <4 x i32> %broadcast.splatinsert1037, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1029

vector.body1029:                                  ; preds = %vector.body1029, %polly.loop_header746.1.1
  %index1031 = phi i64 [ 0, %polly.loop_header746.1.1 ], [ %index.next1032, %vector.body1029 ]
  %vec.ind1035 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header746.1.1 ], [ %vec.ind.next1036, %vector.body1029 ]
  %448 = add nuw nsw <4 x i64> %vec.ind1035, <i64 32, i64 32, i64 32, i64 32>
  %449 = trunc <4 x i64> %448 to <4 x i32>
  %450 = mul <4 x i32> %broadcast.splat1038, %449
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = extractelement <4 x i64> %448, i32 0
  %456 = shl i64 %455, 3
  %457 = add nuw nsw i64 %456, %446
  %458 = getelementptr i8, i8* %call, i64 %457
  %459 = bitcast i8* %458 to <4 x double>*
  store <4 x double> %454, <4 x double>* %459, align 8, !alias.scope !94, !noalias !96
  %index.next1032 = add i64 %index1031, 4
  %vec.ind.next1036 = add <4 x i64> %vec.ind1035, <i64 4, i64 4, i64 4, i64 4>
  %460 = icmp eq i64 %index.next1032, 32
  br i1 %460, label %polly.loop_exit754.1.1, label %vector.body1029, !llvm.loop !117

polly.loop_exit754.1.1:                           ; preds = %vector.body1029
  %polly.indvar_next750.1.1 = add nuw nsw i64 %polly.indvar749.1.1, 1
  %exitcond885.1.1.not = icmp eq i64 %polly.indvar_next750.1.1, 32
  br i1 %exitcond885.1.1.not, label %polly.loop_header746.2.1, label %polly.loop_header746.1.1

polly.loop_header746.2.1:                         ; preds = %polly.loop_exit754.1.1, %polly.loop_exit754.2.1
  %polly.indvar749.2.1 = phi i64 [ %polly.indvar_next750.2.1, %polly.loop_exit754.2.1 ], [ 0, %polly.loop_exit754.1.1 ]
  %461 = add nuw nsw i64 %polly.indvar749.2.1, 32
  %462 = mul nuw nsw i64 %461, 640
  %463 = trunc i64 %461 to i32
  %broadcast.splatinsert1049 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat1050 = shufflevector <4 x i32> %broadcast.splatinsert1049, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %polly.loop_header746.2.1
  %index1043 = phi i64 [ 0, %polly.loop_header746.2.1 ], [ %index.next1044, %vector.body1041 ]
  %vec.ind1047 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header746.2.1 ], [ %vec.ind.next1048, %vector.body1041 ]
  %464 = add nuw nsw <4 x i64> %vec.ind1047, <i64 64, i64 64, i64 64, i64 64>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat1050, %465
  %467 = add <4 x i32> %466, <i32 3, i32 3, i32 3, i32 3>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %462
  %474 = getelementptr i8, i8* %call, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !94, !noalias !96
  %index.next1044 = add i64 %index1043, 4
  %vec.ind.next1048 = add <4 x i64> %vec.ind1047, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next1044, 16
  br i1 %476, label %polly.loop_exit754.2.1, label %vector.body1041, !llvm.loop !118

polly.loop_exit754.2.1:                           ; preds = %vector.body1041
  %polly.indvar_next750.2.1 = add nuw nsw i64 %polly.indvar749.2.1, 1
  %exitcond885.2.1.not = icmp eq i64 %polly.indvar_next750.2.1, 32
  br i1 %exitcond885.2.1.not, label %polly.loop_header746.2932, label %polly.loop_header746.2.1

polly.loop_header746.2932:                        ; preds = %polly.loop_exit754.2.1, %polly.loop_exit754.2943
  %polly.indvar749.2931 = phi i64 [ %polly.indvar_next750.2941, %polly.loop_exit754.2943 ], [ 0, %polly.loop_exit754.2.1 ]
  %477 = add nuw nsw i64 %polly.indvar749.2931, 64
  %478 = mul nuw nsw i64 %477, 640
  %479 = trunc i64 %477 to i32
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %479, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %polly.loop_header746.2932
  %index1055 = phi i64 [ 0, %polly.loop_header746.2932 ], [ %index.next1056, %vector.body1053 ]
  %vec.ind1061 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header746.2932 ], [ %vec.ind.next1062, %vector.body1053 ]
  %480 = mul <4 x i32> %vec.ind1061, %broadcast.splat1064
  %481 = add <4 x i32> %480, <i32 3, i32 3, i32 3, i32 3>
  %482 = urem <4 x i32> %481, <i32 80, i32 80, i32 80, i32 80>
  %483 = sitofp <4 x i32> %482 to <4 x double>
  %484 = fmul fast <4 x double> %483, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %485 = shl i64 %index1055, 3
  %486 = add nuw nsw i64 %485, %478
  %487 = getelementptr i8, i8* %call, i64 %486
  %488 = bitcast i8* %487 to <4 x double>*
  store <4 x double> %484, <4 x double>* %488, align 8, !alias.scope !94, !noalias !96
  %index.next1056 = add i64 %index1055, 4
  %vec.ind.next1062 = add <4 x i32> %vec.ind1061, <i32 4, i32 4, i32 4, i32 4>
  %489 = icmp eq i64 %index.next1056, 32
  br i1 %489, label %polly.loop_exit754.2943, label %vector.body1053, !llvm.loop !119

polly.loop_exit754.2943:                          ; preds = %vector.body1053
  %polly.indvar_next750.2941 = add nuw nsw i64 %polly.indvar749.2931, 1
  %exitcond885.2942.not = icmp eq i64 %polly.indvar_next750.2941, 16
  br i1 %exitcond885.2942.not, label %polly.loop_header746.1.2, label %polly.loop_header746.2932

polly.loop_header746.1.2:                         ; preds = %polly.loop_exit754.2943, %polly.loop_exit754.1.2
  %polly.indvar749.1.2 = phi i64 [ %polly.indvar_next750.1.2, %polly.loop_exit754.1.2 ], [ 0, %polly.loop_exit754.2943 ]
  %490 = add nuw nsw i64 %polly.indvar749.1.2, 64
  %491 = mul nuw nsw i64 %490, 640
  %492 = trunc i64 %490 to i32
  %broadcast.splatinsert1075 = insertelement <4 x i32> poison, i32 %492, i32 0
  %broadcast.splat1076 = shufflevector <4 x i32> %broadcast.splatinsert1075, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header746.1.2
  %index1069 = phi i64 [ 0, %polly.loop_header746.1.2 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1073 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header746.1.2 ], [ %vec.ind.next1074, %vector.body1067 ]
  %493 = add nuw nsw <4 x i64> %vec.ind1073, <i64 32, i64 32, i64 32, i64 32>
  %494 = trunc <4 x i64> %493 to <4 x i32>
  %495 = mul <4 x i32> %broadcast.splat1076, %494
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = extractelement <4 x i64> %493, i32 0
  %501 = shl i64 %500, 3
  %502 = add nuw nsw i64 %501, %491
  %503 = getelementptr i8, i8* %call, i64 %502
  %504 = bitcast i8* %503 to <4 x double>*
  store <4 x double> %499, <4 x double>* %504, align 8, !alias.scope !94, !noalias !96
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1074 = add <4 x i64> %vec.ind1073, <i64 4, i64 4, i64 4, i64 4>
  %505 = icmp eq i64 %index.next1070, 32
  br i1 %505, label %polly.loop_exit754.1.2, label %vector.body1067, !llvm.loop !120

polly.loop_exit754.1.2:                           ; preds = %vector.body1067
  %polly.indvar_next750.1.2 = add nuw nsw i64 %polly.indvar749.1.2, 1
  %exitcond885.1.2.not = icmp eq i64 %polly.indvar_next750.1.2, 16
  br i1 %exitcond885.1.2.not, label %polly.loop_header746.2.2, label %polly.loop_header746.1.2

polly.loop_header746.2.2:                         ; preds = %polly.loop_exit754.1.2, %polly.loop_exit754.2.2
  %polly.indvar749.2.2 = phi i64 [ %polly.indvar_next750.2.2, %polly.loop_exit754.2.2 ], [ 0, %polly.loop_exit754.1.2 ]
  %506 = add nuw nsw i64 %polly.indvar749.2.2, 64
  %507 = mul nuw nsw i64 %506, 640
  %508 = trunc i64 %506 to i32
  %broadcast.splatinsert1087 = insertelement <4 x i32> poison, i32 %508, i32 0
  %broadcast.splat1088 = shufflevector <4 x i32> %broadcast.splatinsert1087, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %polly.loop_header746.2.2
  %index1081 = phi i64 [ 0, %polly.loop_header746.2.2 ], [ %index.next1082, %vector.body1079 ]
  %vec.ind1085 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header746.2.2 ], [ %vec.ind.next1086, %vector.body1079 ]
  %509 = add nuw nsw <4 x i64> %vec.ind1085, <i64 64, i64 64, i64 64, i64 64>
  %510 = trunc <4 x i64> %509 to <4 x i32>
  %511 = mul <4 x i32> %broadcast.splat1088, %510
  %512 = add <4 x i32> %511, <i32 3, i32 3, i32 3, i32 3>
  %513 = urem <4 x i32> %512, <i32 80, i32 80, i32 80, i32 80>
  %514 = sitofp <4 x i32> %513 to <4 x double>
  %515 = fmul fast <4 x double> %514, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %516 = extractelement <4 x i64> %509, i32 0
  %517 = shl i64 %516, 3
  %518 = add nuw nsw i64 %517, %507
  %519 = getelementptr i8, i8* %call, i64 %518
  %520 = bitcast i8* %519 to <4 x double>*
  store <4 x double> %515, <4 x double>* %520, align 8, !alias.scope !94, !noalias !96
  %index.next1082 = add i64 %index1081, 4
  %vec.ind.next1086 = add <4 x i64> %vec.ind1085, <i64 4, i64 4, i64 4, i64 4>
  %521 = icmp eq i64 %index.next1082, 16
  br i1 %521, label %polly.loop_exit754.2.2, label %vector.body1079, !llvm.loop !121

polly.loop_exit754.2.2:                           ; preds = %vector.body1079
  %polly.indvar_next750.2.2 = add nuw nsw i64 %polly.indvar749.2.2, 1
  %exitcond885.2.2.not = icmp eq i64 %polly.indvar_next750.2.2, 16
  br i1 %exitcond885.2.2.not, label %polly.loop_header773, label %polly.loop_header746.2.2
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 64}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !52}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 4}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.data.pack.enable", i1 true}
!50 = !{!"llvm.data.pack.array", !21}
!51 = !{!"llvm.data.pack.allocate", !"malloc"}
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
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call2"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !66, !68}
!73 = !{!63, !67, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call2"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !77, !79}
!83 = !{!74, !78, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !87, !89}
!93 = !{!84, !88, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = !{!97, !94}
!101 = distinct !{!101, !13}
!102 = !{!98, !94}
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
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
