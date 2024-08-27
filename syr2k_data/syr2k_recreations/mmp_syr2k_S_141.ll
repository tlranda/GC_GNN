; ModuleID = 'syr2k_recreations//mmp_syr2k_S_141.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_141.c"
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
  %call776 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1637 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2638 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1637, %call2
  %polly.access.call2657 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2657, %call1
  %2 = or i1 %0, %1
  %polly.access.call677 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call677, %call2
  %4 = icmp ule i8* %polly.access.call2657, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call677, %call1
  %8 = icmp ule i8* %polly.access.call1637, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header762, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep983 = getelementptr i8, i8* %call2, i64 %12
  %scevgep982 = getelementptr i8, i8* %call2, i64 %11
  %scevgep981 = getelementptr i8, i8* %call1, i64 %12
  %scevgep980 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep980, %scevgep983
  %bound1 = icmp ult i8* %scevgep982, %scevgep981
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
  br i1 %exitcond18.not.i, label %vector.ph987, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph987:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert994 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat995 = shufflevector <4 x i64> %broadcast.splatinsert994, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body986

vector.body986:                                   ; preds = %vector.body986, %vector.ph987
  %index988 = phi i64 [ 0, %vector.ph987 ], [ %index.next989, %vector.body986 ]
  %vec.ind992 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph987 ], [ %vec.ind.next993, %vector.body986 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind992, %broadcast.splat995
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv7.i, i64 %index988
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next989 = add i64 %index988, 4
  %vec.ind.next993 = add <4 x i64> %vec.ind992, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next989, 80
  br i1 %40, label %for.inc41.i, label %vector.body986, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body986
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph987, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit823.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start449, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1340, label %vector.ph1269

vector.ph1269:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1269
  %index1270 = phi i64 [ 0, %vector.ph1269 ], [ %index.next1271, %vector.body1268 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i, i64 %index1270
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1271 = add i64 %index1270, 4
  %46 = icmp eq i64 %index.next1271, %n.vec
  br i1 %46, label %middle.block1266, label %vector.body1268, !llvm.loop !18

middle.block1266:                                 ; preds = %vector.body1268
  %cmp.n1273 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1273, label %for.inc6.i, label %for.body3.i46.preheader1340

for.body3.i46.preheader1340:                      ; preds = %for.body3.i46.preheader, %middle.block1266
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1266 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1340, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1340 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1266, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting450
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start272, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1289 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1289, label %for.body3.i60.preheader1339, label %vector.ph1290

vector.ph1290:                                    ; preds = %for.body3.i60.preheader
  %n.vec1292 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1288

vector.body1288:                                  ; preds = %vector.body1288, %vector.ph1290
  %index1293 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1294, %vector.body1288 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i52, i64 %index1293
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1297 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1297, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1294 = add i64 %index1293, 4
  %57 = icmp eq i64 %index.next1294, %n.vec1292
  br i1 %57, label %middle.block1286, label %vector.body1288, !llvm.loop !55

middle.block1286:                                 ; preds = %vector.body1288
  %cmp.n1296 = icmp eq i64 %indvars.iv21.i52, %n.vec1292
  br i1 %cmp.n1296, label %for.inc6.i63, label %for.body3.i60.preheader1339

for.body3.i60.preheader1339:                      ; preds = %for.body3.i60.preheader, %middle.block1286
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1292, %middle.block1286 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1339, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1339 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1286, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting273
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1315 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1315, label %for.body3.i99.preheader1338, label %vector.ph1316

vector.ph1316:                                    ; preds = %for.body3.i99.preheader
  %n.vec1318 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1320, %vector.body1314 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i91, i64 %index1319
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1323 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1323, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1320 = add i64 %index1319, 4
  %68 = icmp eq i64 %index.next1320, %n.vec1318
  br i1 %68, label %middle.block1312, label %vector.body1314, !llvm.loop !57

middle.block1312:                                 ; preds = %vector.body1314
  %cmp.n1322 = icmp eq i64 %indvars.iv21.i91, %n.vec1318
  br i1 %cmp.n1322, label %for.inc6.i102, label %for.body3.i99.preheader1338

for.body3.i99.preheader1338:                      ; preds = %for.body3.i99.preheader, %middle.block1312
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1318, %middle.block1312 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1338, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1338 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1312, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.exiting:                                    ; preds = %polly.loop_exit229.3
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1327 = phi i64 [ %indvar.next1328, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1327, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1329 = icmp ult i64 %88, 4
  br i1 %min.iters.check1329, label %polly.loop_header191.preheader, label %vector.ph1330

vector.ph1330:                                    ; preds = %polly.loop_header
  %n.vec1332 = and i64 %88, -4
  br label %vector.body1326

vector.body1326:                                  ; preds = %vector.body1326, %vector.ph1330
  %index1333 = phi i64 [ 0, %vector.ph1330 ], [ %index.next1334, %vector.body1326 ]
  %90 = shl nuw nsw i64 %index1333, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1337 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1337, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1334 = add i64 %index1333, 4
  %95 = icmp eq i64 %index.next1334, %n.vec1332
  br i1 %95, label %middle.block1324, label %vector.body1326, !llvm.loop !69

middle.block1324:                                 ; preds = %vector.body1326
  %cmp.n1336 = icmp eq i64 %88, %n.vec1332
  br i1 %cmp.n1336, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1324
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1332, %middle.block1324 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1324
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1328 = add i64 %indvar1327, 1
  br i1 %exitcond848.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond847.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond847.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond846.not, label %polly.loop_header215, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 60
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond845.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header215:                             ; preds = %polly.loop_exit207, %polly.loop_exit229.3
  %polly.loop_cond220 = phi i1 [ false, %polly.loop_exit229.3 ], [ true, %polly.loop_exit207 ]
  %polly.indvar218 = phi i64 [ 1, %polly.loop_exit229.3 ], [ 0, %polly.loop_exit207 ]
  %97 = shl nuw nsw i64 %polly.indvar218, 4
  %98 = or i64 %97, 15
  %99 = icmp ult i64 %98, 19
  %100 = select i1 %99, i64 %98, i64 19
  %101 = mul nuw nsw i64 %polly.indvar218, -64
  %102 = icmp slt i64 %101, -16
  %103 = select i1 %102, i64 %101, i64 -16
  %104 = add nsw i64 %103, 79
  %105 = shl nuw nsw i64 %polly.indvar218, 6
  br label %polly.loop_header227

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header215
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit235 ], [ %105, %polly.loop_header215 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit235 ], [ %101, %polly.loop_header215 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header215 ]
  %106 = shl nsw i64 %polly.indvar230, 2
  %107 = add nsw i64 %106, %101
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %polly.loop_guard.not = icmp sgt i64 %109, %104
  br i1 %polly.loop_guard.not, label %polly.loop_exit235, label %polly.loop_header233.preheader

polly.loop_header233.preheader:                   ; preds = %polly.loop_header227
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 0)
  %110 = add i64 %smax, %indvars.iv835
  %111 = sub nsw i64 %105, %106
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 4
  %indvars.iv.next836 = add nsw i64 %indvars.iv835, -4
  %exitcond843.not = icmp eq i64 %polly.indvar230, %100
  br i1 %exitcond843.not, label %polly.loop_header227.1, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233.preheader, %polly.loop_exit241
  %indvars.iv837 = phi i64 [ %110, %polly.loop_header233.preheader ], [ %indvars.iv.next838, %polly.loop_exit241 ]
  %polly.indvar236 = phi i64 [ %109, %polly.loop_header233.preheader ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv837, i64 3)
  %112 = add nsw i64 %polly.indvar236, %111
  %polly.loop_guard249966 = icmp sgt i64 %112, -1
  %113 = add nuw nsw i64 %polly.indvar236, %105
  %114 = mul i64 %113, 480
  %115 = mul i64 %113, 640
  br i1 %polly.loop_guard249966, label %polly.loop_header239.us, label %polly.loop_exit241

polly.loop_header239.us:                          ; preds = %polly.loop_header233, %polly.loop_exit248.loopexit.us
  %polly.indvar242.us = phi i64 [ %polly.indvar_next243.us, %polly.loop_exit248.loopexit.us ], [ 0, %polly.loop_header233 ]
  %116 = shl i64 %polly.indvar242.us, 3
  %polly.access.mul.Packed_MemRef_call2256.us = mul nuw nsw i64 %polly.indvar242.us, 80
  %polly.access.add.Packed_MemRef_call2257.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us, %113
  %polly.access.Packed_MemRef_call2258.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call2258.us, align 8
  %117 = add i64 %116, %114
  %scevgep264.us = getelementptr i8, i8* %call1, i64 %117
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header246.us
  %polly.indvar250.us = phi i64 [ %polly.indvar_next251.us, %polly.loop_header246.us ], [ 0, %polly.loop_header239.us ]
  %118 = add nuw nsw i64 %polly.indvar250.us, %106
  %119 = mul nuw nsw i64 %118, 480
  %120 = add nuw nsw i64 %119, %116
  %scevgep253.us = getelementptr i8, i8* %call1, i64 %120
  %scevgep253254.us = bitcast i8* %scevgep253.us to double*
  %_p_scalar_255.us = load double, double* %scevgep253254.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_259.us, %_p_scalar_255.us
  %polly.access.add.Packed_MemRef_call2261.us = add nuw nsw i64 %118, %polly.access.mul.Packed_MemRef_call2256.us
  %polly.access.Packed_MemRef_call2262.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call2262.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %121 = shl i64 %118, 3
  %122 = add i64 %121, %115
  %scevgep267.us = getelementptr i8, i8* %call, i64 %122
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_269.us
  store double %p_add42.i118.us, double* %scevgep267268.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next251.us = add nuw nsw i64 %polly.indvar250.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar250.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit248.loopexit.us, label %polly.loop_header246.us

polly.loop_exit248.loopexit.us:                   ; preds = %polly.loop_header246.us
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next243.us, 16
  br i1 %exitcond842.not, label %polly.loop_exit241, label %polly.loop_header239.us

polly.loop_exit241:                               ; preds = %polly.loop_exit248.loopexit.us, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp ult i64 %polly.indvar236, %104
  %indvars.iv.next838 = add i64 %indvars.iv837, 1
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header358

polly.exiting273:                                 ; preds = %polly.loop_exit404.3
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1301 = phi i64 [ %indvar.next1302, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %123 = add i64 %indvar1301, 1
  %124 = mul nuw nsw i64 %polly.indvar361, 640
  %scevgep370 = getelementptr i8, i8* %call, i64 %124
  %min.iters.check1303 = icmp ult i64 %123, 4
  br i1 %min.iters.check1303, label %polly.loop_header364.preheader, label %vector.ph1304

vector.ph1304:                                    ; preds = %polly.loop_header358
  %n.vec1306 = and i64 %123, -4
  br label %vector.body1300

vector.body1300:                                  ; preds = %vector.body1300, %vector.ph1304
  %index1307 = phi i64 [ 0, %vector.ph1304 ], [ %index.next1308, %vector.body1300 ]
  %125 = shl nuw nsw i64 %index1307, 3
  %126 = getelementptr i8, i8* %scevgep370, i64 %125
  %127 = bitcast i8* %126 to <4 x double>*
  %wide.load1311 = load <4 x double>, <4 x double>* %127, align 8, !alias.scope !74, !noalias !76
  %128 = fmul fast <4 x double> %wide.load1311, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %129 = bitcast i8* %126 to <4 x double>*
  store <4 x double> %128, <4 x double>* %129, align 8, !alias.scope !74, !noalias !76
  %index.next1308 = add i64 %index1307, 4
  %130 = icmp eq i64 %index.next1308, %n.vec1306
  br i1 %130, label %middle.block1298, label %vector.body1300, !llvm.loop !80

middle.block1298:                                 ; preds = %vector.body1300
  %cmp.n1310 = icmp eq i64 %123, %n.vec1306
  br i1 %cmp.n1310, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1298
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1306, %middle.block1298 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1298
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next362, 80
  %indvar.next1302 = add i64 %indvar1301, 1
  br i1 %exitcond867.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header374

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %131 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %131
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond866.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond866.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !81

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit382
  %polly.indvar377 = phi i64 [ %polly.indvar_next378, %polly.loop_exit382 ], [ 0, %polly.loop_header374.preheader ]
  %polly.access.mul.Packed_MemRef_call2275 = mul nuw nsw i64 %polly.indvar377, 80
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_header380
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next378, 60
  br i1 %exitcond865.not, label %polly.loop_header390, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_header380, %polly.loop_header374
  %polly.indvar383 = phi i64 [ 0, %polly.loop_header374 ], [ %polly.indvar_next384, %polly.loop_header380 ]
  %polly.access.mul.call2387 = mul nuw nsw i64 %polly.indvar383, 60
  %polly.access.add.call2388 = add nuw nsw i64 %polly.access.mul.call2387, %polly.indvar377
  %polly.access.call2389 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2388
  %polly.access.call2389.load = load double, double* %polly.access.call2389, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2275 = add nuw nsw i64 %polly.indvar383, %polly.access.mul.Packed_MemRef_call2275
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275
  store double %polly.access.call2389.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next384, 80
  br i1 %exitcond864.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header390:                             ; preds = %polly.loop_exit382, %polly.loop_exit404.3
  %polly.loop_cond395 = phi i1 [ false, %polly.loop_exit404.3 ], [ true, %polly.loop_exit382 ]
  %polly.indvar393 = phi i64 [ 1, %polly.loop_exit404.3 ], [ 0, %polly.loop_exit382 ]
  %132 = shl nuw nsw i64 %polly.indvar393, 4
  %133 = or i64 %132, 15
  %134 = icmp ult i64 %133, 19
  %135 = select i1 %134, i64 %133, i64 19
  %136 = mul nuw nsw i64 %polly.indvar393, -64
  %137 = icmp slt i64 %136, -16
  %138 = select i1 %137, i64 %136, i64 -16
  %139 = add nsw i64 %138, 79
  %140 = shl nuw nsw i64 %polly.indvar393, 6
  br label %polly.loop_header402

polly.loop_header402:                             ; preds = %polly.loop_exit411, %polly.loop_header390
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit411 ], [ %140, %polly.loop_header390 ]
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit411 ], [ %136, %polly.loop_header390 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit411 ], [ 0, %polly.loop_header390 ]
  %141 = shl nsw i64 %polly.indvar405, 2
  %142 = add nsw i64 %141, %136
  %143 = icmp sgt i64 %142, 0
  %144 = select i1 %143, i64 %142, i64 0
  %polly.loop_guard412.not = icmp sgt i64 %144, %139
  br i1 %polly.loop_guard412.not, label %polly.loop_exit411, label %polly.loop_header409.preheader

polly.loop_header409.preheader:                   ; preds = %polly.loop_header402
  %smax851 = call i64 @llvm.smax.i64(i64 %indvars.iv849, i64 0)
  %145 = add i64 %smax851, %indvars.iv852
  %146 = sub nsw i64 %140, %141
  br label %polly.loop_header409

polly.loop_exit411:                               ; preds = %polly.loop_exit418, %polly.loop_header402
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, 4
  %indvars.iv.next853 = add nsw i64 %indvars.iv852, -4
  %exitcond862.not = icmp eq i64 %polly.indvar405, %135
  br i1 %exitcond862.not, label %polly.loop_header402.1, label %polly.loop_header402

polly.loop_header409:                             ; preds = %polly.loop_header409.preheader, %polly.loop_exit418
  %indvars.iv854 = phi i64 [ %145, %polly.loop_header409.preheader ], [ %indvars.iv.next855, %polly.loop_exit418 ]
  %polly.indvar413 = phi i64 [ %144, %polly.loop_header409.preheader ], [ %polly.indvar_next414, %polly.loop_exit418 ]
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv854, i64 3)
  %147 = add nsw i64 %polly.indvar413, %146
  %polly.loop_guard426970 = icmp sgt i64 %147, -1
  %148 = add nuw nsw i64 %polly.indvar413, %140
  %149 = mul i64 %148, 480
  %150 = mul i64 %148, 640
  br i1 %polly.loop_guard426970, label %polly.loop_header416.us, label %polly.loop_exit418

polly.loop_header416.us:                          ; preds = %polly.loop_header409, %polly.loop_exit425.loopexit.us
  %polly.indvar419.us = phi i64 [ %polly.indvar_next420.us, %polly.loop_exit425.loopexit.us ], [ 0, %polly.loop_header409 ]
  %151 = shl i64 %polly.indvar419.us, 3
  %polly.access.mul.Packed_MemRef_call2275433.us = mul nuw nsw i64 %polly.indvar419.us, 80
  %polly.access.add.Packed_MemRef_call2275434.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275433.us, %148
  %polly.access.Packed_MemRef_call2275435.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434.us
  %_p_scalar_436.us = load double, double* %polly.access.Packed_MemRef_call2275435.us, align 8
  %152 = add i64 %151, %149
  %scevgep441.us = getelementptr i8, i8* %call1, i64 %152
  %scevgep441442.us = bitcast i8* %scevgep441.us to double*
  %_p_scalar_443.us = load double, double* %scevgep441442.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header423.us

polly.loop_header423.us:                          ; preds = %polly.loop_header416.us, %polly.loop_header423.us
  %polly.indvar427.us = phi i64 [ %polly.indvar_next428.us, %polly.loop_header423.us ], [ 0, %polly.loop_header416.us ]
  %153 = add nuw nsw i64 %polly.indvar427.us, %141
  %154 = mul nuw nsw i64 %153, 480
  %155 = add nuw nsw i64 %154, %151
  %scevgep430.us = getelementptr i8, i8* %call1, i64 %155
  %scevgep430431.us = bitcast i8* %scevgep430.us to double*
  %_p_scalar_432.us = load double, double* %scevgep430431.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_436.us, %_p_scalar_432.us
  %polly.access.add.Packed_MemRef_call2275438.us = add nuw nsw i64 %153, %polly.access.mul.Packed_MemRef_call2275433.us
  %polly.access.Packed_MemRef_call2275439.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438.us
  %_p_scalar_440.us = load double, double* %polly.access.Packed_MemRef_call2275439.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_443.us, %_p_scalar_440.us
  %156 = shl i64 %153, 3
  %157 = add i64 %156, %150
  %scevgep444.us = getelementptr i8, i8* %call, i64 %157
  %scevgep444445.us = bitcast i8* %scevgep444.us to double*
  %_p_scalar_446.us = load double, double* %scevgep444445.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_446.us
  store double %p_add42.i79.us, double* %scevgep444445.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next428.us = add nuw nsw i64 %polly.indvar427.us, 1
  %exitcond857.not = icmp eq i64 %polly.indvar427.us, %smin856
  br i1 %exitcond857.not, label %polly.loop_exit425.loopexit.us, label %polly.loop_header423.us

polly.loop_exit425.loopexit.us:                   ; preds = %polly.loop_header423.us
  %polly.indvar_next420.us = add nuw nsw i64 %polly.indvar419.us, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next420.us, 16
  br i1 %exitcond861.not, label %polly.loop_exit418, label %polly.loop_header416.us

polly.loop_exit418:                               ; preds = %polly.loop_exit425.loopexit.us, %polly.loop_header409
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %polly.loop_cond415.not.not = icmp ult i64 %polly.indvar413, %139
  %indvars.iv.next855 = add i64 %indvars.iv854, 1
  br i1 %polly.loop_cond415.not.not, label %polly.loop_header409, label %polly.loop_exit411

polly.start449:                                   ; preds = %init_array.exit
  %malloccall451 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header535

polly.exiting450:                                 ; preds = %polly.loop_exit581.3
  tail call void @free(i8* %malloccall451)
  br label %kernel_syr2k.exit

polly.loop_header535:                             ; preds = %polly.loop_exit543, %polly.start449
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit543 ], [ 0, %polly.start449 ]
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_exit543 ], [ 1, %polly.start449 ]
  %158 = add i64 %indvar, 1
  %159 = mul nuw nsw i64 %polly.indvar538, 640
  %scevgep547 = getelementptr i8, i8* %call, i64 %159
  %min.iters.check1277 = icmp ult i64 %158, 4
  br i1 %min.iters.check1277, label %polly.loop_header541.preheader, label %vector.ph1278

vector.ph1278:                                    ; preds = %polly.loop_header535
  %n.vec1280 = and i64 %158, -4
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %vector.ph1278
  %index1281 = phi i64 [ 0, %vector.ph1278 ], [ %index.next1282, %vector.body1276 ]
  %160 = shl nuw nsw i64 %index1281, 3
  %161 = getelementptr i8, i8* %scevgep547, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  %wide.load1285 = load <4 x double>, <4 x double>* %162, align 8, !alias.scope !84, !noalias !86
  %163 = fmul fast <4 x double> %wide.load1285, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %164 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %163, <4 x double>* %164, align 8, !alias.scope !84, !noalias !86
  %index.next1282 = add i64 %index1281, 4
  %165 = icmp eq i64 %index.next1282, %n.vec1280
  br i1 %165, label %middle.block1274, label %vector.body1276, !llvm.loop !90

middle.block1274:                                 ; preds = %vector.body1276
  %cmp.n1284 = icmp eq i64 %158, %n.vec1280
  br i1 %cmp.n1284, label %polly.loop_exit543, label %polly.loop_header541.preheader

polly.loop_header541.preheader:                   ; preds = %polly.loop_header535, %middle.block1274
  %polly.indvar544.ph = phi i64 [ 0, %polly.loop_header535 ], [ %n.vec1280, %middle.block1274 ]
  br label %polly.loop_header541

polly.loop_exit543:                               ; preds = %polly.loop_header541, %middle.block1274
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next539, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond886.not, label %polly.loop_header551.preheader, label %polly.loop_header535

polly.loop_header551.preheader:                   ; preds = %polly.loop_exit543
  %Packed_MemRef_call2452 = bitcast i8* %malloccall451 to double*
  br label %polly.loop_header551

polly.loop_header541:                             ; preds = %polly.loop_header541.preheader, %polly.loop_header541
  %polly.indvar544 = phi i64 [ %polly.indvar_next545, %polly.loop_header541 ], [ %polly.indvar544.ph, %polly.loop_header541.preheader ]
  %166 = shl nuw nsw i64 %polly.indvar544, 3
  %scevgep548 = getelementptr i8, i8* %scevgep547, i64 %166
  %scevgep548549 = bitcast i8* %scevgep548 to double*
  %_p_scalar_550 = load double, double* %scevgep548549, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_550, 1.200000e+00
  store double %p_mul.i, double* %scevgep548549, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next545 = add nuw nsw i64 %polly.indvar544, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next545, %polly.indvar538
  br i1 %exitcond885.not, label %polly.loop_exit543, label %polly.loop_header541, !llvm.loop !91

polly.loop_header551:                             ; preds = %polly.loop_header551.preheader, %polly.loop_exit559
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_exit559 ], [ 0, %polly.loop_header551.preheader ]
  %polly.access.mul.Packed_MemRef_call2452 = mul nuw nsw i64 %polly.indvar554, 80
  br label %polly.loop_header557

polly.loop_exit559:                               ; preds = %polly.loop_header557
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next555, 60
  br i1 %exitcond884.not, label %polly.loop_header567, label %polly.loop_header551

polly.loop_header557:                             ; preds = %polly.loop_header557, %polly.loop_header551
  %polly.indvar560 = phi i64 [ 0, %polly.loop_header551 ], [ %polly.indvar_next561, %polly.loop_header557 ]
  %polly.access.mul.call2564 = mul nuw nsw i64 %polly.indvar560, 60
  %polly.access.add.call2565 = add nuw nsw i64 %polly.access.mul.call2564, %polly.indvar554
  %polly.access.call2566 = getelementptr double, double* %polly.access.cast.call2638, i64 %polly.access.add.call2565
  %polly.access.call2566.load = load double, double* %polly.access.call2566, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2452 = add nuw nsw i64 %polly.indvar560, %polly.access.mul.Packed_MemRef_call2452
  %polly.access.Packed_MemRef_call2452 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452
  store double %polly.access.call2566.load, double* %polly.access.Packed_MemRef_call2452, align 8
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next561, 80
  br i1 %exitcond883.not, label %polly.loop_exit559, label %polly.loop_header557

polly.loop_header567:                             ; preds = %polly.loop_exit559, %polly.loop_exit581.3
  %polly.loop_cond572 = phi i1 [ false, %polly.loop_exit581.3 ], [ true, %polly.loop_exit559 ]
  %polly.indvar570 = phi i64 [ 1, %polly.loop_exit581.3 ], [ 0, %polly.loop_exit559 ]
  %167 = shl nuw nsw i64 %polly.indvar570, 4
  %168 = or i64 %167, 15
  %169 = icmp ult i64 %168, 19
  %170 = select i1 %169, i64 %168, i64 19
  %171 = mul nuw nsw i64 %polly.indvar570, -64
  %172 = icmp slt i64 %171, -16
  %173 = select i1 %172, i64 %171, i64 -16
  %174 = add nsw i64 %173, 79
  %175 = shl nuw nsw i64 %polly.indvar570, 6
  br label %polly.loop_header579

polly.loop_header579:                             ; preds = %polly.loop_exit588, %polly.loop_header567
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %polly.loop_exit588 ], [ %175, %polly.loop_header567 ]
  %indvars.iv868 = phi i64 [ %indvars.iv.next869, %polly.loop_exit588 ], [ %171, %polly.loop_header567 ]
  %polly.indvar582 = phi i64 [ %polly.indvar_next583, %polly.loop_exit588 ], [ 0, %polly.loop_header567 ]
  %176 = shl nsw i64 %polly.indvar582, 2
  %177 = add nsw i64 %176, %171
  %178 = icmp sgt i64 %177, 0
  %179 = select i1 %178, i64 %177, i64 0
  %polly.loop_guard589.not = icmp sgt i64 %179, %174
  br i1 %polly.loop_guard589.not, label %polly.loop_exit588, label %polly.loop_header586.preheader

polly.loop_header586.preheader:                   ; preds = %polly.loop_header579
  %smax870 = call i64 @llvm.smax.i64(i64 %indvars.iv868, i64 0)
  %180 = add i64 %smax870, %indvars.iv871
  %181 = sub nsw i64 %175, %176
  br label %polly.loop_header586

polly.loop_exit588:                               ; preds = %polly.loop_exit595, %polly.loop_header579
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %indvars.iv.next869 = add nsw i64 %indvars.iv868, 4
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, -4
  %exitcond881.not = icmp eq i64 %polly.indvar582, %170
  br i1 %exitcond881.not, label %polly.loop_header579.1, label %polly.loop_header579

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit595
  %indvars.iv873 = phi i64 [ %180, %polly.loop_header586.preheader ], [ %indvars.iv.next874, %polly.loop_exit595 ]
  %polly.indvar590 = phi i64 [ %179, %polly.loop_header586.preheader ], [ %polly.indvar_next591, %polly.loop_exit595 ]
  %smin875 = call i64 @llvm.smin.i64(i64 %indvars.iv873, i64 3)
  %182 = add nsw i64 %polly.indvar590, %181
  %polly.loop_guard603974 = icmp sgt i64 %182, -1
  %183 = add nuw nsw i64 %polly.indvar590, %175
  %184 = mul i64 %183, 480
  %185 = mul i64 %183, 640
  br i1 %polly.loop_guard603974, label %polly.loop_header593.us, label %polly.loop_exit595

polly.loop_header593.us:                          ; preds = %polly.loop_header586, %polly.loop_exit602.loopexit.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.loop_exit602.loopexit.us ], [ 0, %polly.loop_header586 ]
  %186 = shl i64 %polly.indvar596.us, 3
  %polly.access.mul.Packed_MemRef_call2452610.us = mul nuw nsw i64 %polly.indvar596.us, 80
  %polly.access.add.Packed_MemRef_call2452611.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2452610.us, %183
  %polly.access.Packed_MemRef_call2452612.us = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611.us
  %_p_scalar_613.us = load double, double* %polly.access.Packed_MemRef_call2452612.us, align 8
  %187 = add i64 %186, %184
  %scevgep618.us = getelementptr i8, i8* %call1, i64 %187
  %scevgep618619.us = bitcast i8* %scevgep618.us to double*
  %_p_scalar_620.us = load double, double* %scevgep618619.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header600.us

polly.loop_header600.us:                          ; preds = %polly.loop_header593.us, %polly.loop_header600.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header600.us ], [ 0, %polly.loop_header593.us ]
  %188 = add nuw nsw i64 %polly.indvar604.us, %176
  %189 = mul nuw nsw i64 %188, 480
  %190 = add nuw nsw i64 %189, %186
  %scevgep607.us = getelementptr i8, i8* %call1, i64 %190
  %scevgep607608.us = bitcast i8* %scevgep607.us to double*
  %_p_scalar_609.us = load double, double* %scevgep607608.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_613.us, %_p_scalar_609.us
  %polly.access.add.Packed_MemRef_call2452615.us = add nuw nsw i64 %188, %polly.access.mul.Packed_MemRef_call2452610.us
  %polly.access.Packed_MemRef_call2452616.us = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615.us
  %_p_scalar_617.us = load double, double* %polly.access.Packed_MemRef_call2452616.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_620.us, %_p_scalar_617.us
  %191 = shl i64 %188, 3
  %192 = add i64 %191, %185
  %scevgep621.us = getelementptr i8, i8* %call, i64 %192
  %scevgep621622.us = bitcast i8* %scevgep621.us to double*
  %_p_scalar_623.us = load double, double* %scevgep621622.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_623.us
  store double %p_add42.i.us, double* %scevgep621622.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond876.not = icmp eq i64 %polly.indvar604.us, %smin875
  br i1 %exitcond876.not, label %polly.loop_exit602.loopexit.us, label %polly.loop_header600.us

polly.loop_exit602.loopexit.us:                   ; preds = %polly.loop_header600.us
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next597.us, 16
  br i1 %exitcond880.not, label %polly.loop_exit595, label %polly.loop_header593.us

polly.loop_exit595:                               ; preds = %polly.loop_exit602.loopexit.us, %polly.loop_header586
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %polly.loop_cond592.not.not = icmp ult i64 %polly.indvar590, %174
  %indvars.iv.next874 = add i64 %indvars.iv873, 1
  br i1 %polly.loop_cond592.not.not, label %polly.loop_header586, label %polly.loop_exit588

polly.loop_header762:                             ; preds = %entry, %polly.loop_exit770
  %polly.indvar765 = phi i64 [ %polly.indvar_next766, %polly.loop_exit770 ], [ 0, %entry ]
  %193 = mul nuw nsw i64 %polly.indvar765, 640
  %194 = trunc i64 %polly.indvar765 to i32
  %broadcast.splatinsert1008 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat1009 = shufflevector <4 x i32> %broadcast.splatinsert1008, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %polly.loop_header762
  %index1000 = phi i64 [ 0, %polly.loop_header762 ], [ %index.next1001, %vector.body998 ]
  %vec.ind1006 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header762 ], [ %vec.ind.next1007, %vector.body998 ]
  %195 = mul <4 x i32> %vec.ind1006, %broadcast.splat1009
  %196 = add <4 x i32> %195, <i32 3, i32 3, i32 3, i32 3>
  %197 = urem <4 x i32> %196, <i32 80, i32 80, i32 80, i32 80>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %200 = shl i64 %index1000, 3
  %201 = add nuw nsw i64 %200, %193
  %202 = getelementptr i8, i8* %call, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %199, <4 x double>* %203, align 8, !alias.scope !94, !noalias !96
  %index.next1001 = add i64 %index1000, 4
  %vec.ind.next1007 = add <4 x i32> %vec.ind1006, <i32 4, i32 4, i32 4, i32 4>
  %204 = icmp eq i64 %index.next1001, 32
  br i1 %204, label %polly.loop_exit770, label %vector.body998, !llvm.loop !99

polly.loop_exit770:                               ; preds = %vector.body998
  %polly.indvar_next766 = add nuw nsw i64 %polly.indvar765, 1
  %exitcond906.not = icmp eq i64 %polly.indvar_next766, 32
  br i1 %exitcond906.not, label %polly.loop_header762.1, label %polly.loop_header762

polly.loop_header789:                             ; preds = %polly.loop_exit770.2.2, %polly.loop_exit797
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_exit797 ], [ 0, %polly.loop_exit770.2.2 ]
  %205 = mul nuw nsw i64 %polly.indvar792, 480
  %206 = trunc i64 %polly.indvar792 to i32
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %polly.loop_header789
  %index1114 = phi i64 [ 0, %polly.loop_header789 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1120 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header789 ], [ %vec.ind.next1121, %vector.body1112 ]
  %207 = mul <4 x i32> %vec.ind1120, %broadcast.splat1123
  %208 = add <4 x i32> %207, <i32 2, i32 2, i32 2, i32 2>
  %209 = urem <4 x i32> %208, <i32 60, i32 60, i32 60, i32 60>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %212 = shl i64 %index1114, 3
  %213 = add i64 %212, %205
  %214 = getelementptr i8, i8* %call2, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %211, <4 x double>* %215, align 8, !alias.scope !98, !noalias !100
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1121 = add <4 x i32> %vec.ind1120, <i32 4, i32 4, i32 4, i32 4>
  %216 = icmp eq i64 %index.next1115, 32
  br i1 %216, label %polly.loop_exit797, label %vector.body1112, !llvm.loop !101

polly.loop_exit797:                               ; preds = %vector.body1112
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next793, 32
  br i1 %exitcond897.not, label %polly.loop_header789.1, label %polly.loop_header789

polly.loop_header815:                             ; preds = %polly.loop_exit797.1.2, %polly.loop_exit823
  %polly.indvar818 = phi i64 [ %polly.indvar_next819, %polly.loop_exit823 ], [ 0, %polly.loop_exit797.1.2 ]
  %217 = mul nuw nsw i64 %polly.indvar818, 480
  %218 = trunc i64 %polly.indvar818 to i32
  %broadcast.splatinsert1200 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1201 = shufflevector <4 x i32> %broadcast.splatinsert1200, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %polly.loop_header815
  %index1192 = phi i64 [ 0, %polly.loop_header815 ], [ %index.next1193, %vector.body1190 ]
  %vec.ind1198 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header815 ], [ %vec.ind.next1199, %vector.body1190 ]
  %219 = mul <4 x i32> %vec.ind1198, %broadcast.splat1201
  %220 = add <4 x i32> %219, <i32 1, i32 1, i32 1, i32 1>
  %221 = urem <4 x i32> %220, <i32 80, i32 80, i32 80, i32 80>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %224 = shl i64 %index1192, 3
  %225 = add i64 %224, %217
  %226 = getelementptr i8, i8* %call1, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %223, <4 x double>* %227, align 8, !alias.scope !97, !noalias !102
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1199 = add <4 x i32> %vec.ind1198, <i32 4, i32 4, i32 4, i32 4>
  %228 = icmp eq i64 %index.next1193, 32
  br i1 %228, label %polly.loop_exit823, label %vector.body1190, !llvm.loop !103

polly.loop_exit823:                               ; preds = %vector.body1190
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next819, 32
  br i1 %exitcond891.not, label %polly.loop_header815.1, label %polly.loop_header815

polly.loop_header227.1:                           ; preds = %polly.loop_exit235, %polly.loop_exit235.1
  %indvars.iv835.1 = phi i64 [ %indvars.iv.next836.1, %polly.loop_exit235.1 ], [ %105, %polly.loop_exit235 ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit235.1 ], [ %101, %polly.loop_exit235 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_exit235 ]
  %229 = shl nsw i64 %polly.indvar230.1, 2
  %230 = add nsw i64 %229, %101
  %231 = icmp sgt i64 %230, 0
  %232 = select i1 %231, i64 %230, i64 0
  %polly.loop_guard.not.1 = icmp sgt i64 %232, %104
  br i1 %polly.loop_guard.not.1, label %polly.loop_exit235.1, label %polly.loop_header233.preheader.1

polly.loop_header233.preheader.1:                 ; preds = %polly.loop_header227.1
  %smax.1 = call i64 @llvm.smax.i64(i64 %indvars.iv.1, i64 0)
  %233 = add i64 %smax.1, %indvars.iv835.1
  %234 = sub nsw i64 %105, %229
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header233.preheader.1
  %indvars.iv837.1 = phi i64 [ %233, %polly.loop_header233.preheader.1 ], [ %indvars.iv.next838.1, %polly.loop_exit241.1 ]
  %polly.indvar236.1 = phi i64 [ %232, %polly.loop_header233.preheader.1 ], [ %polly.indvar_next237.1, %polly.loop_exit241.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv837.1, i64 3)
  %235 = add nsw i64 %polly.indvar236.1, %234
  %polly.loop_guard249.1967 = icmp sgt i64 %235, -1
  %236 = add nuw nsw i64 %polly.indvar236.1, %105
  %237 = mul i64 %236, 480
  %238 = mul i64 %236, 640
  br i1 %polly.loop_guard249.1967, label %polly.loop_header239.us.1, label %polly.loop_exit241.1

polly.loop_header239.us.1:                        ; preds = %polly.loop_header233.1, %polly.loop_exit248.loopexit.us.1
  %polly.indvar242.us.1 = phi i64 [ %polly.indvar_next243.us.1, %polly.loop_exit248.loopexit.us.1 ], [ 0, %polly.loop_header233.1 ]
  %239 = add nuw nsw i64 %polly.indvar242.us.1, 16
  %240 = shl i64 %239, 3
  %polly.access.mul.Packed_MemRef_call2256.us.1 = mul nuw nsw i64 %239, 80
  %polly.access.add.Packed_MemRef_call2257.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us.1, %236
  %polly.access.Packed_MemRef_call2258.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us.1
  %_p_scalar_259.us.1 = load double, double* %polly.access.Packed_MemRef_call2258.us.1, align 8
  %241 = add i64 %240, %237
  %scevgep264.us.1 = getelementptr i8, i8* %call1, i64 %241
  %scevgep264265.us.1 = bitcast i8* %scevgep264.us.1 to double*
  %_p_scalar_266.us.1 = load double, double* %scevgep264265.us.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header246.us.1

polly.loop_header246.us.1:                        ; preds = %polly.loop_header246.us.1, %polly.loop_header239.us.1
  %polly.indvar250.us.1 = phi i64 [ %polly.indvar_next251.us.1, %polly.loop_header246.us.1 ], [ 0, %polly.loop_header239.us.1 ]
  %242 = add nuw nsw i64 %polly.indvar250.us.1, %229
  %243 = mul nuw nsw i64 %242, 480
  %244 = add nuw nsw i64 %243, %240
  %scevgep253.us.1 = getelementptr i8, i8* %call1, i64 %244
  %scevgep253254.us.1 = bitcast i8* %scevgep253.us.1 to double*
  %_p_scalar_255.us.1 = load double, double* %scevgep253254.us.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_259.us.1, %_p_scalar_255.us.1
  %polly.access.add.Packed_MemRef_call2261.us.1 = add nuw nsw i64 %242, %polly.access.mul.Packed_MemRef_call2256.us.1
  %polly.access.Packed_MemRef_call2262.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us.1
  %_p_scalar_263.us.1 = load double, double* %polly.access.Packed_MemRef_call2262.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_266.us.1, %_p_scalar_263.us.1
  %245 = shl i64 %242, 3
  %246 = add i64 %245, %238
  %scevgep267.us.1 = getelementptr i8, i8* %call, i64 %246
  %scevgep267268.us.1 = bitcast i8* %scevgep267.us.1 to double*
  %_p_scalar_269.us.1 = load double, double* %scevgep267268.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_269.us.1
  store double %p_add42.i118.us.1, double* %scevgep267268.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next251.us.1 = add nuw nsw i64 %polly.indvar250.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar250.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit248.loopexit.us.1, label %polly.loop_header246.us.1

polly.loop_exit248.loopexit.us.1:                 ; preds = %polly.loop_header246.us.1
  %polly.indvar_next243.us.1 = add nuw nsw i64 %polly.indvar242.us.1, 1
  %exitcond842.1.not = icmp eq i64 %polly.indvar_next243.us.1, 16
  br i1 %exitcond842.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.us.1

polly.loop_exit241.1:                             ; preds = %polly.loop_exit248.loopexit.us.1, %polly.loop_header233.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %polly.loop_cond238.not.not.1 = icmp ult i64 %polly.indvar236.1, %104
  %indvars.iv.next838.1 = add i64 %indvars.iv837.1, 1
  br i1 %polly.loop_cond238.not.not.1, label %polly.loop_header233.1, label %polly.loop_exit235.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 4
  %indvars.iv.next836.1 = add nsw i64 %indvars.iv835.1, -4
  %exitcond843.1.not = icmp eq i64 %polly.indvar230.1, %100
  br i1 %exitcond843.1.not, label %polly.loop_header227.2, label %polly.loop_header227.1

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit235.2
  %indvars.iv835.2 = phi i64 [ %indvars.iv.next836.2, %polly.loop_exit235.2 ], [ %105, %polly.loop_exit235.1 ]
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit235.2 ], [ %101, %polly.loop_exit235.1 ]
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_exit235.1 ]
  %247 = shl nsw i64 %polly.indvar230.2, 2
  %248 = add nsw i64 %247, %101
  %249 = icmp sgt i64 %248, 0
  %250 = select i1 %249, i64 %248, i64 0
  %polly.loop_guard.not.2 = icmp sgt i64 %250, %104
  br i1 %polly.loop_guard.not.2, label %polly.loop_exit235.2, label %polly.loop_header233.preheader.2

polly.loop_header233.preheader.2:                 ; preds = %polly.loop_header227.2
  %smax.2 = call i64 @llvm.smax.i64(i64 %indvars.iv.2, i64 0)
  %251 = add i64 %smax.2, %indvars.iv835.2
  %252 = sub nsw i64 %105, %247
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_exit241.2, %polly.loop_header233.preheader.2
  %indvars.iv837.2 = phi i64 [ %251, %polly.loop_header233.preheader.2 ], [ %indvars.iv.next838.2, %polly.loop_exit241.2 ]
  %polly.indvar236.2 = phi i64 [ %250, %polly.loop_header233.preheader.2 ], [ %polly.indvar_next237.2, %polly.loop_exit241.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv837.2, i64 3)
  %253 = add nsw i64 %polly.indvar236.2, %252
  %polly.loop_guard249.2968 = icmp sgt i64 %253, -1
  %254 = add nuw nsw i64 %polly.indvar236.2, %105
  %255 = mul i64 %254, 480
  %256 = mul i64 %254, 640
  br i1 %polly.loop_guard249.2968, label %polly.loop_header239.us.2, label %polly.loop_exit241.2

polly.loop_header239.us.2:                        ; preds = %polly.loop_header233.2, %polly.loop_exit248.loopexit.us.2
  %polly.indvar242.us.2 = phi i64 [ %polly.indvar_next243.us.2, %polly.loop_exit248.loopexit.us.2 ], [ 0, %polly.loop_header233.2 ]
  %257 = add nuw nsw i64 %polly.indvar242.us.2, 32
  %258 = shl i64 %257, 3
  %polly.access.mul.Packed_MemRef_call2256.us.2 = mul nuw nsw i64 %257, 80
  %polly.access.add.Packed_MemRef_call2257.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us.2, %254
  %polly.access.Packed_MemRef_call2258.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us.2
  %_p_scalar_259.us.2 = load double, double* %polly.access.Packed_MemRef_call2258.us.2, align 8
  %259 = add i64 %258, %255
  %scevgep264.us.2 = getelementptr i8, i8* %call1, i64 %259
  %scevgep264265.us.2 = bitcast i8* %scevgep264.us.2 to double*
  %_p_scalar_266.us.2 = load double, double* %scevgep264265.us.2, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header246.us.2

polly.loop_header246.us.2:                        ; preds = %polly.loop_header246.us.2, %polly.loop_header239.us.2
  %polly.indvar250.us.2 = phi i64 [ %polly.indvar_next251.us.2, %polly.loop_header246.us.2 ], [ 0, %polly.loop_header239.us.2 ]
  %260 = add nuw nsw i64 %polly.indvar250.us.2, %247
  %261 = mul nuw nsw i64 %260, 480
  %262 = add nuw nsw i64 %261, %258
  %scevgep253.us.2 = getelementptr i8, i8* %call1, i64 %262
  %scevgep253254.us.2 = bitcast i8* %scevgep253.us.2 to double*
  %_p_scalar_255.us.2 = load double, double* %scevgep253254.us.2, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_259.us.2, %_p_scalar_255.us.2
  %polly.access.add.Packed_MemRef_call2261.us.2 = add nuw nsw i64 %260, %polly.access.mul.Packed_MemRef_call2256.us.2
  %polly.access.Packed_MemRef_call2262.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us.2
  %_p_scalar_263.us.2 = load double, double* %polly.access.Packed_MemRef_call2262.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_266.us.2, %_p_scalar_263.us.2
  %263 = shl i64 %260, 3
  %264 = add i64 %263, %256
  %scevgep267.us.2 = getelementptr i8, i8* %call, i64 %264
  %scevgep267268.us.2 = bitcast i8* %scevgep267.us.2 to double*
  %_p_scalar_269.us.2 = load double, double* %scevgep267268.us.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_269.us.2
  store double %p_add42.i118.us.2, double* %scevgep267268.us.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next251.us.2 = add nuw nsw i64 %polly.indvar250.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar250.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit248.loopexit.us.2, label %polly.loop_header246.us.2

polly.loop_exit248.loopexit.us.2:                 ; preds = %polly.loop_header246.us.2
  %polly.indvar_next243.us.2 = add nuw nsw i64 %polly.indvar242.us.2, 1
  %exitcond842.2.not = icmp eq i64 %polly.indvar_next243.us.2, 16
  br i1 %exitcond842.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.us.2

polly.loop_exit241.2:                             ; preds = %polly.loop_exit248.loopexit.us.2, %polly.loop_header233.2
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %polly.loop_cond238.not.not.2 = icmp ult i64 %polly.indvar236.2, %104
  %indvars.iv.next838.2 = add i64 %indvars.iv837.2, 1
  br i1 %polly.loop_cond238.not.not.2, label %polly.loop_header233.2, label %polly.loop_exit235.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.2, %polly.loop_header227.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.2, 4
  %indvars.iv.next836.2 = add nsw i64 %indvars.iv835.2, -4
  %exitcond843.2.not = icmp eq i64 %polly.indvar230.2, %100
  br i1 %exitcond843.2.not, label %polly.loop_header227.3, label %polly.loop_header227.2

polly.loop_header227.3:                           ; preds = %polly.loop_exit235.2, %polly.loop_exit235.3
  %indvars.iv835.3 = phi i64 [ %indvars.iv.next836.3, %polly.loop_exit235.3 ], [ %105, %polly.loop_exit235.2 ]
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit235.3 ], [ %101, %polly.loop_exit235.2 ]
  %polly.indvar230.3 = phi i64 [ %polly.indvar_next231.3, %polly.loop_exit235.3 ], [ 0, %polly.loop_exit235.2 ]
  %265 = shl nsw i64 %polly.indvar230.3, 2
  %266 = add nsw i64 %265, %101
  %267 = icmp sgt i64 %266, 0
  %268 = select i1 %267, i64 %266, i64 0
  %polly.loop_guard.not.3 = icmp sgt i64 %268, %104
  br i1 %polly.loop_guard.not.3, label %polly.loop_exit235.3, label %polly.loop_header233.preheader.3

polly.loop_header233.preheader.3:                 ; preds = %polly.loop_header227.3
  %smax.3 = call i64 @llvm.smax.i64(i64 %indvars.iv.3, i64 0)
  %269 = add i64 %smax.3, %indvars.iv835.3
  %270 = sub nsw i64 %105, %265
  br label %polly.loop_header233.3

polly.loop_header233.3:                           ; preds = %polly.loop_exit241.3, %polly.loop_header233.preheader.3
  %indvars.iv837.3 = phi i64 [ %269, %polly.loop_header233.preheader.3 ], [ %indvars.iv.next838.3, %polly.loop_exit241.3 ]
  %polly.indvar236.3 = phi i64 [ %268, %polly.loop_header233.preheader.3 ], [ %polly.indvar_next237.3, %polly.loop_exit241.3 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv837.3, i64 3)
  %271 = add nsw i64 %polly.indvar236.3, %270
  %polly.loop_guard249.3969 = icmp sgt i64 %271, -1
  %272 = add nuw nsw i64 %polly.indvar236.3, %105
  %273 = mul i64 %272, 480
  %274 = mul i64 %272, 640
  br i1 %polly.loop_guard249.3969, label %polly.loop_header239.us.3, label %polly.loop_exit241.3

polly.loop_header239.us.3:                        ; preds = %polly.loop_header233.3, %polly.loop_exit248.loopexit.us.3
  %polly.indvar242.us.3 = phi i64 [ %polly.indvar_next243.us.3, %polly.loop_exit248.loopexit.us.3 ], [ 0, %polly.loop_header233.3 ]
  %275 = add nuw nsw i64 %polly.indvar242.us.3, 48
  %276 = shl i64 %275, 3
  %polly.access.mul.Packed_MemRef_call2256.us.3 = mul nuw nsw i64 %275, 80
  %polly.access.add.Packed_MemRef_call2257.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us.3, %272
  %polly.access.Packed_MemRef_call2258.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us.3
  %_p_scalar_259.us.3 = load double, double* %polly.access.Packed_MemRef_call2258.us.3, align 8
  %277 = add i64 %276, %273
  %scevgep264.us.3 = getelementptr i8, i8* %call1, i64 %277
  %scevgep264265.us.3 = bitcast i8* %scevgep264.us.3 to double*
  %_p_scalar_266.us.3 = load double, double* %scevgep264265.us.3, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header246.us.3

polly.loop_header246.us.3:                        ; preds = %polly.loop_header246.us.3, %polly.loop_header239.us.3
  %polly.indvar250.us.3 = phi i64 [ %polly.indvar_next251.us.3, %polly.loop_header246.us.3 ], [ 0, %polly.loop_header239.us.3 ]
  %278 = add nuw nsw i64 %polly.indvar250.us.3, %265
  %279 = mul nuw nsw i64 %278, 480
  %280 = add nuw nsw i64 %279, %276
  %scevgep253.us.3 = getelementptr i8, i8* %call1, i64 %280
  %scevgep253254.us.3 = bitcast i8* %scevgep253.us.3 to double*
  %_p_scalar_255.us.3 = load double, double* %scevgep253254.us.3, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_259.us.3, %_p_scalar_255.us.3
  %polly.access.add.Packed_MemRef_call2261.us.3 = add nuw nsw i64 %278, %polly.access.mul.Packed_MemRef_call2256.us.3
  %polly.access.Packed_MemRef_call2262.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us.3
  %_p_scalar_263.us.3 = load double, double* %polly.access.Packed_MemRef_call2262.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_266.us.3, %_p_scalar_263.us.3
  %281 = shl i64 %278, 3
  %282 = add i64 %281, %274
  %scevgep267.us.3 = getelementptr i8, i8* %call, i64 %282
  %scevgep267268.us.3 = bitcast i8* %scevgep267.us.3 to double*
  %_p_scalar_269.us.3 = load double, double* %scevgep267268.us.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_269.us.3
  store double %p_add42.i118.us.3, double* %scevgep267268.us.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next251.us.3 = add nuw nsw i64 %polly.indvar250.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar250.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit248.loopexit.us.3, label %polly.loop_header246.us.3

polly.loop_exit248.loopexit.us.3:                 ; preds = %polly.loop_header246.us.3
  %polly.indvar_next243.us.3 = add nuw nsw i64 %polly.indvar242.us.3, 1
  %exitcond842.3.not = icmp eq i64 %polly.indvar_next243.us.3, 12
  br i1 %exitcond842.3.not, label %polly.loop_exit241.3, label %polly.loop_header239.us.3

polly.loop_exit241.3:                             ; preds = %polly.loop_exit248.loopexit.us.3, %polly.loop_header233.3
  %polly.indvar_next237.3 = add nuw nsw i64 %polly.indvar236.3, 1
  %polly.loop_cond238.not.not.3 = icmp ult i64 %polly.indvar236.3, %104
  %indvars.iv.next838.3 = add i64 %indvars.iv837.3, 1
  br i1 %polly.loop_cond238.not.not.3, label %polly.loop_header233.3, label %polly.loop_exit235.3

polly.loop_exit235.3:                             ; preds = %polly.loop_exit241.3, %polly.loop_header227.3
  %polly.indvar_next231.3 = add nuw nsw i64 %polly.indvar230.3, 1
  %indvars.iv.next.3 = add nsw i64 %indvars.iv.3, 4
  %indvars.iv.next836.3 = add nsw i64 %indvars.iv835.3, -4
  %exitcond843.3.not = icmp eq i64 %polly.indvar230.3, %100
  br i1 %exitcond843.3.not, label %polly.loop_exit229.3, label %polly.loop_header227.3

polly.loop_exit229.3:                             ; preds = %polly.loop_exit235.3
  br i1 %polly.loop_cond220, label %polly.loop_header215, label %polly.exiting

polly.loop_header402.1:                           ; preds = %polly.loop_exit411, %polly.loop_exit411.1
  %indvars.iv852.1 = phi i64 [ %indvars.iv.next853.1, %polly.loop_exit411.1 ], [ %140, %polly.loop_exit411 ]
  %indvars.iv849.1 = phi i64 [ %indvars.iv.next850.1, %polly.loop_exit411.1 ], [ %136, %polly.loop_exit411 ]
  %polly.indvar405.1 = phi i64 [ %polly.indvar_next406.1, %polly.loop_exit411.1 ], [ 0, %polly.loop_exit411 ]
  %283 = shl nsw i64 %polly.indvar405.1, 2
  %284 = add nsw i64 %283, %136
  %285 = icmp sgt i64 %284, 0
  %286 = select i1 %285, i64 %284, i64 0
  %polly.loop_guard412.not.1 = icmp sgt i64 %286, %139
  br i1 %polly.loop_guard412.not.1, label %polly.loop_exit411.1, label %polly.loop_header409.preheader.1

polly.loop_header409.preheader.1:                 ; preds = %polly.loop_header402.1
  %smax851.1 = call i64 @llvm.smax.i64(i64 %indvars.iv849.1, i64 0)
  %287 = add i64 %smax851.1, %indvars.iv852.1
  %288 = sub nsw i64 %140, %283
  br label %polly.loop_header409.1

polly.loop_header409.1:                           ; preds = %polly.loop_exit418.1, %polly.loop_header409.preheader.1
  %indvars.iv854.1 = phi i64 [ %287, %polly.loop_header409.preheader.1 ], [ %indvars.iv.next855.1, %polly.loop_exit418.1 ]
  %polly.indvar413.1 = phi i64 [ %286, %polly.loop_header409.preheader.1 ], [ %polly.indvar_next414.1, %polly.loop_exit418.1 ]
  %smin856.1 = call i64 @llvm.smin.i64(i64 %indvars.iv854.1, i64 3)
  %289 = add nsw i64 %polly.indvar413.1, %288
  %polly.loop_guard426.1971 = icmp sgt i64 %289, -1
  %290 = add nuw nsw i64 %polly.indvar413.1, %140
  %291 = mul i64 %290, 480
  %292 = mul i64 %290, 640
  br i1 %polly.loop_guard426.1971, label %polly.loop_header416.us.1, label %polly.loop_exit418.1

polly.loop_header416.us.1:                        ; preds = %polly.loop_header409.1, %polly.loop_exit425.loopexit.us.1
  %polly.indvar419.us.1 = phi i64 [ %polly.indvar_next420.us.1, %polly.loop_exit425.loopexit.us.1 ], [ 0, %polly.loop_header409.1 ]
  %293 = add nuw nsw i64 %polly.indvar419.us.1, 16
  %294 = shl i64 %293, 3
  %polly.access.mul.Packed_MemRef_call2275433.us.1 = mul nuw nsw i64 %293, 80
  %polly.access.add.Packed_MemRef_call2275434.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275433.us.1, %290
  %polly.access.Packed_MemRef_call2275435.us.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434.us.1
  %_p_scalar_436.us.1 = load double, double* %polly.access.Packed_MemRef_call2275435.us.1, align 8
  %295 = add i64 %294, %291
  %scevgep441.us.1 = getelementptr i8, i8* %call1, i64 %295
  %scevgep441442.us.1 = bitcast i8* %scevgep441.us.1 to double*
  %_p_scalar_443.us.1 = load double, double* %scevgep441442.us.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header423.us.1

polly.loop_header423.us.1:                        ; preds = %polly.loop_header423.us.1, %polly.loop_header416.us.1
  %polly.indvar427.us.1 = phi i64 [ %polly.indvar_next428.us.1, %polly.loop_header423.us.1 ], [ 0, %polly.loop_header416.us.1 ]
  %296 = add nuw nsw i64 %polly.indvar427.us.1, %283
  %297 = mul nuw nsw i64 %296, 480
  %298 = add nuw nsw i64 %297, %294
  %scevgep430.us.1 = getelementptr i8, i8* %call1, i64 %298
  %scevgep430431.us.1 = bitcast i8* %scevgep430.us.1 to double*
  %_p_scalar_432.us.1 = load double, double* %scevgep430431.us.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_436.us.1, %_p_scalar_432.us.1
  %polly.access.add.Packed_MemRef_call2275438.us.1 = add nuw nsw i64 %296, %polly.access.mul.Packed_MemRef_call2275433.us.1
  %polly.access.Packed_MemRef_call2275439.us.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438.us.1
  %_p_scalar_440.us.1 = load double, double* %polly.access.Packed_MemRef_call2275439.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_443.us.1, %_p_scalar_440.us.1
  %299 = shl i64 %296, 3
  %300 = add i64 %299, %292
  %scevgep444.us.1 = getelementptr i8, i8* %call, i64 %300
  %scevgep444445.us.1 = bitcast i8* %scevgep444.us.1 to double*
  %_p_scalar_446.us.1 = load double, double* %scevgep444445.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_446.us.1
  store double %p_add42.i79.us.1, double* %scevgep444445.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next428.us.1 = add nuw nsw i64 %polly.indvar427.us.1, 1
  %exitcond857.1.not = icmp eq i64 %polly.indvar427.us.1, %smin856.1
  br i1 %exitcond857.1.not, label %polly.loop_exit425.loopexit.us.1, label %polly.loop_header423.us.1

polly.loop_exit425.loopexit.us.1:                 ; preds = %polly.loop_header423.us.1
  %polly.indvar_next420.us.1 = add nuw nsw i64 %polly.indvar419.us.1, 1
  %exitcond861.1.not = icmp eq i64 %polly.indvar_next420.us.1, 16
  br i1 %exitcond861.1.not, label %polly.loop_exit418.1, label %polly.loop_header416.us.1

polly.loop_exit418.1:                             ; preds = %polly.loop_exit425.loopexit.us.1, %polly.loop_header409.1
  %polly.indvar_next414.1 = add nuw nsw i64 %polly.indvar413.1, 1
  %polly.loop_cond415.not.not.1 = icmp ult i64 %polly.indvar413.1, %139
  %indvars.iv.next855.1 = add i64 %indvars.iv854.1, 1
  br i1 %polly.loop_cond415.not.not.1, label %polly.loop_header409.1, label %polly.loop_exit411.1

polly.loop_exit411.1:                             ; preds = %polly.loop_exit418.1, %polly.loop_header402.1
  %polly.indvar_next406.1 = add nuw nsw i64 %polly.indvar405.1, 1
  %indvars.iv.next850.1 = add nsw i64 %indvars.iv849.1, 4
  %indvars.iv.next853.1 = add nsw i64 %indvars.iv852.1, -4
  %exitcond862.1.not = icmp eq i64 %polly.indvar405.1, %135
  br i1 %exitcond862.1.not, label %polly.loop_header402.2, label %polly.loop_header402.1

polly.loop_header402.2:                           ; preds = %polly.loop_exit411.1, %polly.loop_exit411.2
  %indvars.iv852.2 = phi i64 [ %indvars.iv.next853.2, %polly.loop_exit411.2 ], [ %140, %polly.loop_exit411.1 ]
  %indvars.iv849.2 = phi i64 [ %indvars.iv.next850.2, %polly.loop_exit411.2 ], [ %136, %polly.loop_exit411.1 ]
  %polly.indvar405.2 = phi i64 [ %polly.indvar_next406.2, %polly.loop_exit411.2 ], [ 0, %polly.loop_exit411.1 ]
  %301 = shl nsw i64 %polly.indvar405.2, 2
  %302 = add nsw i64 %301, %136
  %303 = icmp sgt i64 %302, 0
  %304 = select i1 %303, i64 %302, i64 0
  %polly.loop_guard412.not.2 = icmp sgt i64 %304, %139
  br i1 %polly.loop_guard412.not.2, label %polly.loop_exit411.2, label %polly.loop_header409.preheader.2

polly.loop_header409.preheader.2:                 ; preds = %polly.loop_header402.2
  %smax851.2 = call i64 @llvm.smax.i64(i64 %indvars.iv849.2, i64 0)
  %305 = add i64 %smax851.2, %indvars.iv852.2
  %306 = sub nsw i64 %140, %301
  br label %polly.loop_header409.2

polly.loop_header409.2:                           ; preds = %polly.loop_exit418.2, %polly.loop_header409.preheader.2
  %indvars.iv854.2 = phi i64 [ %305, %polly.loop_header409.preheader.2 ], [ %indvars.iv.next855.2, %polly.loop_exit418.2 ]
  %polly.indvar413.2 = phi i64 [ %304, %polly.loop_header409.preheader.2 ], [ %polly.indvar_next414.2, %polly.loop_exit418.2 ]
  %smin856.2 = call i64 @llvm.smin.i64(i64 %indvars.iv854.2, i64 3)
  %307 = add nsw i64 %polly.indvar413.2, %306
  %polly.loop_guard426.2972 = icmp sgt i64 %307, -1
  %308 = add nuw nsw i64 %polly.indvar413.2, %140
  %309 = mul i64 %308, 480
  %310 = mul i64 %308, 640
  br i1 %polly.loop_guard426.2972, label %polly.loop_header416.us.2, label %polly.loop_exit418.2

polly.loop_header416.us.2:                        ; preds = %polly.loop_header409.2, %polly.loop_exit425.loopexit.us.2
  %polly.indvar419.us.2 = phi i64 [ %polly.indvar_next420.us.2, %polly.loop_exit425.loopexit.us.2 ], [ 0, %polly.loop_header409.2 ]
  %311 = add nuw nsw i64 %polly.indvar419.us.2, 32
  %312 = shl i64 %311, 3
  %polly.access.mul.Packed_MemRef_call2275433.us.2 = mul nuw nsw i64 %311, 80
  %polly.access.add.Packed_MemRef_call2275434.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275433.us.2, %308
  %polly.access.Packed_MemRef_call2275435.us.2 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434.us.2
  %_p_scalar_436.us.2 = load double, double* %polly.access.Packed_MemRef_call2275435.us.2, align 8
  %313 = add i64 %312, %309
  %scevgep441.us.2 = getelementptr i8, i8* %call1, i64 %313
  %scevgep441442.us.2 = bitcast i8* %scevgep441.us.2 to double*
  %_p_scalar_443.us.2 = load double, double* %scevgep441442.us.2, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header423.us.2

polly.loop_header423.us.2:                        ; preds = %polly.loop_header423.us.2, %polly.loop_header416.us.2
  %polly.indvar427.us.2 = phi i64 [ %polly.indvar_next428.us.2, %polly.loop_header423.us.2 ], [ 0, %polly.loop_header416.us.2 ]
  %314 = add nuw nsw i64 %polly.indvar427.us.2, %301
  %315 = mul nuw nsw i64 %314, 480
  %316 = add nuw nsw i64 %315, %312
  %scevgep430.us.2 = getelementptr i8, i8* %call1, i64 %316
  %scevgep430431.us.2 = bitcast i8* %scevgep430.us.2 to double*
  %_p_scalar_432.us.2 = load double, double* %scevgep430431.us.2, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_436.us.2, %_p_scalar_432.us.2
  %polly.access.add.Packed_MemRef_call2275438.us.2 = add nuw nsw i64 %314, %polly.access.mul.Packed_MemRef_call2275433.us.2
  %polly.access.Packed_MemRef_call2275439.us.2 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438.us.2
  %_p_scalar_440.us.2 = load double, double* %polly.access.Packed_MemRef_call2275439.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_443.us.2, %_p_scalar_440.us.2
  %317 = shl i64 %314, 3
  %318 = add i64 %317, %310
  %scevgep444.us.2 = getelementptr i8, i8* %call, i64 %318
  %scevgep444445.us.2 = bitcast i8* %scevgep444.us.2 to double*
  %_p_scalar_446.us.2 = load double, double* %scevgep444445.us.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_446.us.2
  store double %p_add42.i79.us.2, double* %scevgep444445.us.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next428.us.2 = add nuw nsw i64 %polly.indvar427.us.2, 1
  %exitcond857.2.not = icmp eq i64 %polly.indvar427.us.2, %smin856.2
  br i1 %exitcond857.2.not, label %polly.loop_exit425.loopexit.us.2, label %polly.loop_header423.us.2

polly.loop_exit425.loopexit.us.2:                 ; preds = %polly.loop_header423.us.2
  %polly.indvar_next420.us.2 = add nuw nsw i64 %polly.indvar419.us.2, 1
  %exitcond861.2.not = icmp eq i64 %polly.indvar_next420.us.2, 16
  br i1 %exitcond861.2.not, label %polly.loop_exit418.2, label %polly.loop_header416.us.2

polly.loop_exit418.2:                             ; preds = %polly.loop_exit425.loopexit.us.2, %polly.loop_header409.2
  %polly.indvar_next414.2 = add nuw nsw i64 %polly.indvar413.2, 1
  %polly.loop_cond415.not.not.2 = icmp ult i64 %polly.indvar413.2, %139
  %indvars.iv.next855.2 = add i64 %indvars.iv854.2, 1
  br i1 %polly.loop_cond415.not.not.2, label %polly.loop_header409.2, label %polly.loop_exit411.2

polly.loop_exit411.2:                             ; preds = %polly.loop_exit418.2, %polly.loop_header402.2
  %polly.indvar_next406.2 = add nuw nsw i64 %polly.indvar405.2, 1
  %indvars.iv.next850.2 = add nsw i64 %indvars.iv849.2, 4
  %indvars.iv.next853.2 = add nsw i64 %indvars.iv852.2, -4
  %exitcond862.2.not = icmp eq i64 %polly.indvar405.2, %135
  br i1 %exitcond862.2.not, label %polly.loop_header402.3, label %polly.loop_header402.2

polly.loop_header402.3:                           ; preds = %polly.loop_exit411.2, %polly.loop_exit411.3
  %indvars.iv852.3 = phi i64 [ %indvars.iv.next853.3, %polly.loop_exit411.3 ], [ %140, %polly.loop_exit411.2 ]
  %indvars.iv849.3 = phi i64 [ %indvars.iv.next850.3, %polly.loop_exit411.3 ], [ %136, %polly.loop_exit411.2 ]
  %polly.indvar405.3 = phi i64 [ %polly.indvar_next406.3, %polly.loop_exit411.3 ], [ 0, %polly.loop_exit411.2 ]
  %319 = shl nsw i64 %polly.indvar405.3, 2
  %320 = add nsw i64 %319, %136
  %321 = icmp sgt i64 %320, 0
  %322 = select i1 %321, i64 %320, i64 0
  %polly.loop_guard412.not.3 = icmp sgt i64 %322, %139
  br i1 %polly.loop_guard412.not.3, label %polly.loop_exit411.3, label %polly.loop_header409.preheader.3

polly.loop_header409.preheader.3:                 ; preds = %polly.loop_header402.3
  %smax851.3 = call i64 @llvm.smax.i64(i64 %indvars.iv849.3, i64 0)
  %323 = add i64 %smax851.3, %indvars.iv852.3
  %324 = sub nsw i64 %140, %319
  br label %polly.loop_header409.3

polly.loop_header409.3:                           ; preds = %polly.loop_exit418.3, %polly.loop_header409.preheader.3
  %indvars.iv854.3 = phi i64 [ %323, %polly.loop_header409.preheader.3 ], [ %indvars.iv.next855.3, %polly.loop_exit418.3 ]
  %polly.indvar413.3 = phi i64 [ %322, %polly.loop_header409.preheader.3 ], [ %polly.indvar_next414.3, %polly.loop_exit418.3 ]
  %smin856.3 = call i64 @llvm.smin.i64(i64 %indvars.iv854.3, i64 3)
  %325 = add nsw i64 %polly.indvar413.3, %324
  %polly.loop_guard426.3973 = icmp sgt i64 %325, -1
  %326 = add nuw nsw i64 %polly.indvar413.3, %140
  %327 = mul i64 %326, 480
  %328 = mul i64 %326, 640
  br i1 %polly.loop_guard426.3973, label %polly.loop_header416.us.3, label %polly.loop_exit418.3

polly.loop_header416.us.3:                        ; preds = %polly.loop_header409.3, %polly.loop_exit425.loopexit.us.3
  %polly.indvar419.us.3 = phi i64 [ %polly.indvar_next420.us.3, %polly.loop_exit425.loopexit.us.3 ], [ 0, %polly.loop_header409.3 ]
  %329 = add nuw nsw i64 %polly.indvar419.us.3, 48
  %330 = shl i64 %329, 3
  %polly.access.mul.Packed_MemRef_call2275433.us.3 = mul nuw nsw i64 %329, 80
  %polly.access.add.Packed_MemRef_call2275434.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275433.us.3, %326
  %polly.access.Packed_MemRef_call2275435.us.3 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434.us.3
  %_p_scalar_436.us.3 = load double, double* %polly.access.Packed_MemRef_call2275435.us.3, align 8
  %331 = add i64 %330, %327
  %scevgep441.us.3 = getelementptr i8, i8* %call1, i64 %331
  %scevgep441442.us.3 = bitcast i8* %scevgep441.us.3 to double*
  %_p_scalar_443.us.3 = load double, double* %scevgep441442.us.3, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header423.us.3

polly.loop_header423.us.3:                        ; preds = %polly.loop_header423.us.3, %polly.loop_header416.us.3
  %polly.indvar427.us.3 = phi i64 [ %polly.indvar_next428.us.3, %polly.loop_header423.us.3 ], [ 0, %polly.loop_header416.us.3 ]
  %332 = add nuw nsw i64 %polly.indvar427.us.3, %319
  %333 = mul nuw nsw i64 %332, 480
  %334 = add nuw nsw i64 %333, %330
  %scevgep430.us.3 = getelementptr i8, i8* %call1, i64 %334
  %scevgep430431.us.3 = bitcast i8* %scevgep430.us.3 to double*
  %_p_scalar_432.us.3 = load double, double* %scevgep430431.us.3, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_436.us.3, %_p_scalar_432.us.3
  %polly.access.add.Packed_MemRef_call2275438.us.3 = add nuw nsw i64 %332, %polly.access.mul.Packed_MemRef_call2275433.us.3
  %polly.access.Packed_MemRef_call2275439.us.3 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438.us.3
  %_p_scalar_440.us.3 = load double, double* %polly.access.Packed_MemRef_call2275439.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_443.us.3, %_p_scalar_440.us.3
  %335 = shl i64 %332, 3
  %336 = add i64 %335, %328
  %scevgep444.us.3 = getelementptr i8, i8* %call, i64 %336
  %scevgep444445.us.3 = bitcast i8* %scevgep444.us.3 to double*
  %_p_scalar_446.us.3 = load double, double* %scevgep444445.us.3, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_446.us.3
  store double %p_add42.i79.us.3, double* %scevgep444445.us.3, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next428.us.3 = add nuw nsw i64 %polly.indvar427.us.3, 1
  %exitcond857.3.not = icmp eq i64 %polly.indvar427.us.3, %smin856.3
  br i1 %exitcond857.3.not, label %polly.loop_exit425.loopexit.us.3, label %polly.loop_header423.us.3

polly.loop_exit425.loopexit.us.3:                 ; preds = %polly.loop_header423.us.3
  %polly.indvar_next420.us.3 = add nuw nsw i64 %polly.indvar419.us.3, 1
  %exitcond861.3.not = icmp eq i64 %polly.indvar_next420.us.3, 12
  br i1 %exitcond861.3.not, label %polly.loop_exit418.3, label %polly.loop_header416.us.3

polly.loop_exit418.3:                             ; preds = %polly.loop_exit425.loopexit.us.3, %polly.loop_header409.3
  %polly.indvar_next414.3 = add nuw nsw i64 %polly.indvar413.3, 1
  %polly.loop_cond415.not.not.3 = icmp ult i64 %polly.indvar413.3, %139
  %indvars.iv.next855.3 = add i64 %indvars.iv854.3, 1
  br i1 %polly.loop_cond415.not.not.3, label %polly.loop_header409.3, label %polly.loop_exit411.3

polly.loop_exit411.3:                             ; preds = %polly.loop_exit418.3, %polly.loop_header402.3
  %polly.indvar_next406.3 = add nuw nsw i64 %polly.indvar405.3, 1
  %indvars.iv.next850.3 = add nsw i64 %indvars.iv849.3, 4
  %indvars.iv.next853.3 = add nsw i64 %indvars.iv852.3, -4
  %exitcond862.3.not = icmp eq i64 %polly.indvar405.3, %135
  br i1 %exitcond862.3.not, label %polly.loop_exit404.3, label %polly.loop_header402.3

polly.loop_exit404.3:                             ; preds = %polly.loop_exit411.3
  br i1 %polly.loop_cond395, label %polly.loop_header390, label %polly.exiting273

polly.loop_header579.1:                           ; preds = %polly.loop_exit588, %polly.loop_exit588.1
  %indvars.iv871.1 = phi i64 [ %indvars.iv.next872.1, %polly.loop_exit588.1 ], [ %175, %polly.loop_exit588 ]
  %indvars.iv868.1 = phi i64 [ %indvars.iv.next869.1, %polly.loop_exit588.1 ], [ %171, %polly.loop_exit588 ]
  %polly.indvar582.1 = phi i64 [ %polly.indvar_next583.1, %polly.loop_exit588.1 ], [ 0, %polly.loop_exit588 ]
  %337 = shl nsw i64 %polly.indvar582.1, 2
  %338 = add nsw i64 %337, %171
  %339 = icmp sgt i64 %338, 0
  %340 = select i1 %339, i64 %338, i64 0
  %polly.loop_guard589.not.1 = icmp sgt i64 %340, %174
  br i1 %polly.loop_guard589.not.1, label %polly.loop_exit588.1, label %polly.loop_header586.preheader.1

polly.loop_header586.preheader.1:                 ; preds = %polly.loop_header579.1
  %smax870.1 = call i64 @llvm.smax.i64(i64 %indvars.iv868.1, i64 0)
  %341 = add i64 %smax870.1, %indvars.iv871.1
  %342 = sub nsw i64 %175, %337
  br label %polly.loop_header586.1

polly.loop_header586.1:                           ; preds = %polly.loop_exit595.1, %polly.loop_header586.preheader.1
  %indvars.iv873.1 = phi i64 [ %341, %polly.loop_header586.preheader.1 ], [ %indvars.iv.next874.1, %polly.loop_exit595.1 ]
  %polly.indvar590.1 = phi i64 [ %340, %polly.loop_header586.preheader.1 ], [ %polly.indvar_next591.1, %polly.loop_exit595.1 ]
  %smin875.1 = call i64 @llvm.smin.i64(i64 %indvars.iv873.1, i64 3)
  %343 = add nsw i64 %polly.indvar590.1, %342
  %polly.loop_guard603.1975 = icmp sgt i64 %343, -1
  %344 = add nuw nsw i64 %polly.indvar590.1, %175
  %345 = mul i64 %344, 480
  %346 = mul i64 %344, 640
  br i1 %polly.loop_guard603.1975, label %polly.loop_header593.us.1, label %polly.loop_exit595.1

polly.loop_header593.us.1:                        ; preds = %polly.loop_header586.1, %polly.loop_exit602.loopexit.us.1
  %polly.indvar596.us.1 = phi i64 [ %polly.indvar_next597.us.1, %polly.loop_exit602.loopexit.us.1 ], [ 0, %polly.loop_header586.1 ]
  %347 = add nuw nsw i64 %polly.indvar596.us.1, 16
  %348 = shl i64 %347, 3
  %polly.access.mul.Packed_MemRef_call2452610.us.1 = mul nuw nsw i64 %347, 80
  %polly.access.add.Packed_MemRef_call2452611.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2452610.us.1, %344
  %polly.access.Packed_MemRef_call2452612.us.1 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611.us.1
  %_p_scalar_613.us.1 = load double, double* %polly.access.Packed_MemRef_call2452612.us.1, align 8
  %349 = add i64 %348, %345
  %scevgep618.us.1 = getelementptr i8, i8* %call1, i64 %349
  %scevgep618619.us.1 = bitcast i8* %scevgep618.us.1 to double*
  %_p_scalar_620.us.1 = load double, double* %scevgep618619.us.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header600.us.1

polly.loop_header600.us.1:                        ; preds = %polly.loop_header600.us.1, %polly.loop_header593.us.1
  %polly.indvar604.us.1 = phi i64 [ %polly.indvar_next605.us.1, %polly.loop_header600.us.1 ], [ 0, %polly.loop_header593.us.1 ]
  %350 = add nuw nsw i64 %polly.indvar604.us.1, %337
  %351 = mul nuw nsw i64 %350, 480
  %352 = add nuw nsw i64 %351, %348
  %scevgep607.us.1 = getelementptr i8, i8* %call1, i64 %352
  %scevgep607608.us.1 = bitcast i8* %scevgep607.us.1 to double*
  %_p_scalar_609.us.1 = load double, double* %scevgep607608.us.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_613.us.1, %_p_scalar_609.us.1
  %polly.access.add.Packed_MemRef_call2452615.us.1 = add nuw nsw i64 %350, %polly.access.mul.Packed_MemRef_call2452610.us.1
  %polly.access.Packed_MemRef_call2452616.us.1 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615.us.1
  %_p_scalar_617.us.1 = load double, double* %polly.access.Packed_MemRef_call2452616.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_620.us.1, %_p_scalar_617.us.1
  %353 = shl i64 %350, 3
  %354 = add i64 %353, %346
  %scevgep621.us.1 = getelementptr i8, i8* %call, i64 %354
  %scevgep621622.us.1 = bitcast i8* %scevgep621.us.1 to double*
  %_p_scalar_623.us.1 = load double, double* %scevgep621622.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_623.us.1
  store double %p_add42.i.us.1, double* %scevgep621622.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next605.us.1 = add nuw nsw i64 %polly.indvar604.us.1, 1
  %exitcond876.1.not = icmp eq i64 %polly.indvar604.us.1, %smin875.1
  br i1 %exitcond876.1.not, label %polly.loop_exit602.loopexit.us.1, label %polly.loop_header600.us.1

polly.loop_exit602.loopexit.us.1:                 ; preds = %polly.loop_header600.us.1
  %polly.indvar_next597.us.1 = add nuw nsw i64 %polly.indvar596.us.1, 1
  %exitcond880.1.not = icmp eq i64 %polly.indvar_next597.us.1, 16
  br i1 %exitcond880.1.not, label %polly.loop_exit595.1, label %polly.loop_header593.us.1

polly.loop_exit595.1:                             ; preds = %polly.loop_exit602.loopexit.us.1, %polly.loop_header586.1
  %polly.indvar_next591.1 = add nuw nsw i64 %polly.indvar590.1, 1
  %polly.loop_cond592.not.not.1 = icmp ult i64 %polly.indvar590.1, %174
  %indvars.iv.next874.1 = add i64 %indvars.iv873.1, 1
  br i1 %polly.loop_cond592.not.not.1, label %polly.loop_header586.1, label %polly.loop_exit588.1

polly.loop_exit588.1:                             ; preds = %polly.loop_exit595.1, %polly.loop_header579.1
  %polly.indvar_next583.1 = add nuw nsw i64 %polly.indvar582.1, 1
  %indvars.iv.next869.1 = add nsw i64 %indvars.iv868.1, 4
  %indvars.iv.next872.1 = add nsw i64 %indvars.iv871.1, -4
  %exitcond881.1.not = icmp eq i64 %polly.indvar582.1, %170
  br i1 %exitcond881.1.not, label %polly.loop_header579.2, label %polly.loop_header579.1

polly.loop_header579.2:                           ; preds = %polly.loop_exit588.1, %polly.loop_exit588.2
  %indvars.iv871.2 = phi i64 [ %indvars.iv.next872.2, %polly.loop_exit588.2 ], [ %175, %polly.loop_exit588.1 ]
  %indvars.iv868.2 = phi i64 [ %indvars.iv.next869.2, %polly.loop_exit588.2 ], [ %171, %polly.loop_exit588.1 ]
  %polly.indvar582.2 = phi i64 [ %polly.indvar_next583.2, %polly.loop_exit588.2 ], [ 0, %polly.loop_exit588.1 ]
  %355 = shl nsw i64 %polly.indvar582.2, 2
  %356 = add nsw i64 %355, %171
  %357 = icmp sgt i64 %356, 0
  %358 = select i1 %357, i64 %356, i64 0
  %polly.loop_guard589.not.2 = icmp sgt i64 %358, %174
  br i1 %polly.loop_guard589.not.2, label %polly.loop_exit588.2, label %polly.loop_header586.preheader.2

polly.loop_header586.preheader.2:                 ; preds = %polly.loop_header579.2
  %smax870.2 = call i64 @llvm.smax.i64(i64 %indvars.iv868.2, i64 0)
  %359 = add i64 %smax870.2, %indvars.iv871.2
  %360 = sub nsw i64 %175, %355
  br label %polly.loop_header586.2

polly.loop_header586.2:                           ; preds = %polly.loop_exit595.2, %polly.loop_header586.preheader.2
  %indvars.iv873.2 = phi i64 [ %359, %polly.loop_header586.preheader.2 ], [ %indvars.iv.next874.2, %polly.loop_exit595.2 ]
  %polly.indvar590.2 = phi i64 [ %358, %polly.loop_header586.preheader.2 ], [ %polly.indvar_next591.2, %polly.loop_exit595.2 ]
  %smin875.2 = call i64 @llvm.smin.i64(i64 %indvars.iv873.2, i64 3)
  %361 = add nsw i64 %polly.indvar590.2, %360
  %polly.loop_guard603.2976 = icmp sgt i64 %361, -1
  %362 = add nuw nsw i64 %polly.indvar590.2, %175
  %363 = mul i64 %362, 480
  %364 = mul i64 %362, 640
  br i1 %polly.loop_guard603.2976, label %polly.loop_header593.us.2, label %polly.loop_exit595.2

polly.loop_header593.us.2:                        ; preds = %polly.loop_header586.2, %polly.loop_exit602.loopexit.us.2
  %polly.indvar596.us.2 = phi i64 [ %polly.indvar_next597.us.2, %polly.loop_exit602.loopexit.us.2 ], [ 0, %polly.loop_header586.2 ]
  %365 = add nuw nsw i64 %polly.indvar596.us.2, 32
  %366 = shl i64 %365, 3
  %polly.access.mul.Packed_MemRef_call2452610.us.2 = mul nuw nsw i64 %365, 80
  %polly.access.add.Packed_MemRef_call2452611.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2452610.us.2, %362
  %polly.access.Packed_MemRef_call2452612.us.2 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611.us.2
  %_p_scalar_613.us.2 = load double, double* %polly.access.Packed_MemRef_call2452612.us.2, align 8
  %367 = add i64 %366, %363
  %scevgep618.us.2 = getelementptr i8, i8* %call1, i64 %367
  %scevgep618619.us.2 = bitcast i8* %scevgep618.us.2 to double*
  %_p_scalar_620.us.2 = load double, double* %scevgep618619.us.2, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header600.us.2

polly.loop_header600.us.2:                        ; preds = %polly.loop_header600.us.2, %polly.loop_header593.us.2
  %polly.indvar604.us.2 = phi i64 [ %polly.indvar_next605.us.2, %polly.loop_header600.us.2 ], [ 0, %polly.loop_header593.us.2 ]
  %368 = add nuw nsw i64 %polly.indvar604.us.2, %355
  %369 = mul nuw nsw i64 %368, 480
  %370 = add nuw nsw i64 %369, %366
  %scevgep607.us.2 = getelementptr i8, i8* %call1, i64 %370
  %scevgep607608.us.2 = bitcast i8* %scevgep607.us.2 to double*
  %_p_scalar_609.us.2 = load double, double* %scevgep607608.us.2, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_613.us.2, %_p_scalar_609.us.2
  %polly.access.add.Packed_MemRef_call2452615.us.2 = add nuw nsw i64 %368, %polly.access.mul.Packed_MemRef_call2452610.us.2
  %polly.access.Packed_MemRef_call2452616.us.2 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615.us.2
  %_p_scalar_617.us.2 = load double, double* %polly.access.Packed_MemRef_call2452616.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_620.us.2, %_p_scalar_617.us.2
  %371 = shl i64 %368, 3
  %372 = add i64 %371, %364
  %scevgep621.us.2 = getelementptr i8, i8* %call, i64 %372
  %scevgep621622.us.2 = bitcast i8* %scevgep621.us.2 to double*
  %_p_scalar_623.us.2 = load double, double* %scevgep621622.us.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_623.us.2
  store double %p_add42.i.us.2, double* %scevgep621622.us.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next605.us.2 = add nuw nsw i64 %polly.indvar604.us.2, 1
  %exitcond876.2.not = icmp eq i64 %polly.indvar604.us.2, %smin875.2
  br i1 %exitcond876.2.not, label %polly.loop_exit602.loopexit.us.2, label %polly.loop_header600.us.2

polly.loop_exit602.loopexit.us.2:                 ; preds = %polly.loop_header600.us.2
  %polly.indvar_next597.us.2 = add nuw nsw i64 %polly.indvar596.us.2, 1
  %exitcond880.2.not = icmp eq i64 %polly.indvar_next597.us.2, 16
  br i1 %exitcond880.2.not, label %polly.loop_exit595.2, label %polly.loop_header593.us.2

polly.loop_exit595.2:                             ; preds = %polly.loop_exit602.loopexit.us.2, %polly.loop_header586.2
  %polly.indvar_next591.2 = add nuw nsw i64 %polly.indvar590.2, 1
  %polly.loop_cond592.not.not.2 = icmp ult i64 %polly.indvar590.2, %174
  %indvars.iv.next874.2 = add i64 %indvars.iv873.2, 1
  br i1 %polly.loop_cond592.not.not.2, label %polly.loop_header586.2, label %polly.loop_exit588.2

polly.loop_exit588.2:                             ; preds = %polly.loop_exit595.2, %polly.loop_header579.2
  %polly.indvar_next583.2 = add nuw nsw i64 %polly.indvar582.2, 1
  %indvars.iv.next869.2 = add nsw i64 %indvars.iv868.2, 4
  %indvars.iv.next872.2 = add nsw i64 %indvars.iv871.2, -4
  %exitcond881.2.not = icmp eq i64 %polly.indvar582.2, %170
  br i1 %exitcond881.2.not, label %polly.loop_header579.3, label %polly.loop_header579.2

polly.loop_header579.3:                           ; preds = %polly.loop_exit588.2, %polly.loop_exit588.3
  %indvars.iv871.3 = phi i64 [ %indvars.iv.next872.3, %polly.loop_exit588.3 ], [ %175, %polly.loop_exit588.2 ]
  %indvars.iv868.3 = phi i64 [ %indvars.iv.next869.3, %polly.loop_exit588.3 ], [ %171, %polly.loop_exit588.2 ]
  %polly.indvar582.3 = phi i64 [ %polly.indvar_next583.3, %polly.loop_exit588.3 ], [ 0, %polly.loop_exit588.2 ]
  %373 = shl nsw i64 %polly.indvar582.3, 2
  %374 = add nsw i64 %373, %171
  %375 = icmp sgt i64 %374, 0
  %376 = select i1 %375, i64 %374, i64 0
  %polly.loop_guard589.not.3 = icmp sgt i64 %376, %174
  br i1 %polly.loop_guard589.not.3, label %polly.loop_exit588.3, label %polly.loop_header586.preheader.3

polly.loop_header586.preheader.3:                 ; preds = %polly.loop_header579.3
  %smax870.3 = call i64 @llvm.smax.i64(i64 %indvars.iv868.3, i64 0)
  %377 = add i64 %smax870.3, %indvars.iv871.3
  %378 = sub nsw i64 %175, %373
  br label %polly.loop_header586.3

polly.loop_header586.3:                           ; preds = %polly.loop_exit595.3, %polly.loop_header586.preheader.3
  %indvars.iv873.3 = phi i64 [ %377, %polly.loop_header586.preheader.3 ], [ %indvars.iv.next874.3, %polly.loop_exit595.3 ]
  %polly.indvar590.3 = phi i64 [ %376, %polly.loop_header586.preheader.3 ], [ %polly.indvar_next591.3, %polly.loop_exit595.3 ]
  %smin875.3 = call i64 @llvm.smin.i64(i64 %indvars.iv873.3, i64 3)
  %379 = add nsw i64 %polly.indvar590.3, %378
  %polly.loop_guard603.3977 = icmp sgt i64 %379, -1
  %380 = add nuw nsw i64 %polly.indvar590.3, %175
  %381 = mul i64 %380, 480
  %382 = mul i64 %380, 640
  br i1 %polly.loop_guard603.3977, label %polly.loop_header593.us.3, label %polly.loop_exit595.3

polly.loop_header593.us.3:                        ; preds = %polly.loop_header586.3, %polly.loop_exit602.loopexit.us.3
  %polly.indvar596.us.3 = phi i64 [ %polly.indvar_next597.us.3, %polly.loop_exit602.loopexit.us.3 ], [ 0, %polly.loop_header586.3 ]
  %383 = add nuw nsw i64 %polly.indvar596.us.3, 48
  %384 = shl i64 %383, 3
  %polly.access.mul.Packed_MemRef_call2452610.us.3 = mul nuw nsw i64 %383, 80
  %polly.access.add.Packed_MemRef_call2452611.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2452610.us.3, %380
  %polly.access.Packed_MemRef_call2452612.us.3 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611.us.3
  %_p_scalar_613.us.3 = load double, double* %polly.access.Packed_MemRef_call2452612.us.3, align 8
  %385 = add i64 %384, %381
  %scevgep618.us.3 = getelementptr i8, i8* %call1, i64 %385
  %scevgep618619.us.3 = bitcast i8* %scevgep618.us.3 to double*
  %_p_scalar_620.us.3 = load double, double* %scevgep618619.us.3, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header600.us.3

polly.loop_header600.us.3:                        ; preds = %polly.loop_header600.us.3, %polly.loop_header593.us.3
  %polly.indvar604.us.3 = phi i64 [ %polly.indvar_next605.us.3, %polly.loop_header600.us.3 ], [ 0, %polly.loop_header593.us.3 ]
  %386 = add nuw nsw i64 %polly.indvar604.us.3, %373
  %387 = mul nuw nsw i64 %386, 480
  %388 = add nuw nsw i64 %387, %384
  %scevgep607.us.3 = getelementptr i8, i8* %call1, i64 %388
  %scevgep607608.us.3 = bitcast i8* %scevgep607.us.3 to double*
  %_p_scalar_609.us.3 = load double, double* %scevgep607608.us.3, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_613.us.3, %_p_scalar_609.us.3
  %polly.access.add.Packed_MemRef_call2452615.us.3 = add nuw nsw i64 %386, %polly.access.mul.Packed_MemRef_call2452610.us.3
  %polly.access.Packed_MemRef_call2452616.us.3 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615.us.3
  %_p_scalar_617.us.3 = load double, double* %polly.access.Packed_MemRef_call2452616.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_620.us.3, %_p_scalar_617.us.3
  %389 = shl i64 %386, 3
  %390 = add i64 %389, %382
  %scevgep621.us.3 = getelementptr i8, i8* %call, i64 %390
  %scevgep621622.us.3 = bitcast i8* %scevgep621.us.3 to double*
  %_p_scalar_623.us.3 = load double, double* %scevgep621622.us.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_623.us.3
  store double %p_add42.i.us.3, double* %scevgep621622.us.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next605.us.3 = add nuw nsw i64 %polly.indvar604.us.3, 1
  %exitcond876.3.not = icmp eq i64 %polly.indvar604.us.3, %smin875.3
  br i1 %exitcond876.3.not, label %polly.loop_exit602.loopexit.us.3, label %polly.loop_header600.us.3

polly.loop_exit602.loopexit.us.3:                 ; preds = %polly.loop_header600.us.3
  %polly.indvar_next597.us.3 = add nuw nsw i64 %polly.indvar596.us.3, 1
  %exitcond880.3.not = icmp eq i64 %polly.indvar_next597.us.3, 12
  br i1 %exitcond880.3.not, label %polly.loop_exit595.3, label %polly.loop_header593.us.3

polly.loop_exit595.3:                             ; preds = %polly.loop_exit602.loopexit.us.3, %polly.loop_header586.3
  %polly.indvar_next591.3 = add nuw nsw i64 %polly.indvar590.3, 1
  %polly.loop_cond592.not.not.3 = icmp ult i64 %polly.indvar590.3, %174
  %indvars.iv.next874.3 = add i64 %indvars.iv873.3, 1
  br i1 %polly.loop_cond592.not.not.3, label %polly.loop_header586.3, label %polly.loop_exit588.3

polly.loop_exit588.3:                             ; preds = %polly.loop_exit595.3, %polly.loop_header579.3
  %polly.indvar_next583.3 = add nuw nsw i64 %polly.indvar582.3, 1
  %indvars.iv.next869.3 = add nsw i64 %indvars.iv868.3, 4
  %indvars.iv.next872.3 = add nsw i64 %indvars.iv871.3, -4
  %exitcond881.3.not = icmp eq i64 %polly.indvar582.3, %170
  br i1 %exitcond881.3.not, label %polly.loop_exit581.3, label %polly.loop_header579.3

polly.loop_exit581.3:                             ; preds = %polly.loop_exit588.3
  br i1 %polly.loop_cond572, label %polly.loop_header567, label %polly.exiting450

polly.loop_header815.1:                           ; preds = %polly.loop_exit823, %polly.loop_exit823.1
  %polly.indvar818.1 = phi i64 [ %polly.indvar_next819.1, %polly.loop_exit823.1 ], [ 0, %polly.loop_exit823 ]
  %391 = mul nuw nsw i64 %polly.indvar818.1, 480
  %392 = trunc i64 %polly.indvar818.1 to i32
  %broadcast.splatinsert1212 = insertelement <4 x i32> poison, i32 %392, i32 0
  %broadcast.splat1213 = shufflevector <4 x i32> %broadcast.splatinsert1212, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %polly.loop_header815.1
  %index1206 = phi i64 [ 0, %polly.loop_header815.1 ], [ %index.next1207, %vector.body1204 ]
  %vec.ind1210 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header815.1 ], [ %vec.ind.next1211, %vector.body1204 ]
  %393 = add nuw nsw <4 x i64> %vec.ind1210, <i64 32, i64 32, i64 32, i64 32>
  %394 = trunc <4 x i64> %393 to <4 x i32>
  %395 = mul <4 x i32> %broadcast.splat1213, %394
  %396 = add <4 x i32> %395, <i32 1, i32 1, i32 1, i32 1>
  %397 = urem <4 x i32> %396, <i32 80, i32 80, i32 80, i32 80>
  %398 = sitofp <4 x i32> %397 to <4 x double>
  %399 = fmul fast <4 x double> %398, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %400 = extractelement <4 x i64> %393, i32 0
  %401 = shl i64 %400, 3
  %402 = add i64 %401, %391
  %403 = getelementptr i8, i8* %call1, i64 %402
  %404 = bitcast i8* %403 to <4 x double>*
  store <4 x double> %399, <4 x double>* %404, align 8, !alias.scope !97, !noalias !102
  %index.next1207 = add i64 %index1206, 4
  %vec.ind.next1211 = add <4 x i64> %vec.ind1210, <i64 4, i64 4, i64 4, i64 4>
  %405 = icmp eq i64 %index.next1207, 28
  br i1 %405, label %polly.loop_exit823.1, label %vector.body1204, !llvm.loop !104

polly.loop_exit823.1:                             ; preds = %vector.body1204
  %polly.indvar_next819.1 = add nuw nsw i64 %polly.indvar818.1, 1
  %exitcond891.1.not = icmp eq i64 %polly.indvar_next819.1, 32
  br i1 %exitcond891.1.not, label %polly.loop_header815.1911, label %polly.loop_header815.1

polly.loop_header815.1911:                        ; preds = %polly.loop_exit823.1, %polly.loop_exit823.1922
  %polly.indvar818.1910 = phi i64 [ %polly.indvar_next819.1920, %polly.loop_exit823.1922 ], [ 0, %polly.loop_exit823.1 ]
  %406 = add nuw nsw i64 %polly.indvar818.1910, 32
  %407 = mul nuw nsw i64 %406, 480
  %408 = trunc i64 %406 to i32
  %broadcast.splatinsert1226 = insertelement <4 x i32> poison, i32 %408, i32 0
  %broadcast.splat1227 = shufflevector <4 x i32> %broadcast.splatinsert1226, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %polly.loop_header815.1911
  %index1218 = phi i64 [ 0, %polly.loop_header815.1911 ], [ %index.next1219, %vector.body1216 ]
  %vec.ind1224 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header815.1911 ], [ %vec.ind.next1225, %vector.body1216 ]
  %409 = mul <4 x i32> %vec.ind1224, %broadcast.splat1227
  %410 = add <4 x i32> %409, <i32 1, i32 1, i32 1, i32 1>
  %411 = urem <4 x i32> %410, <i32 80, i32 80, i32 80, i32 80>
  %412 = sitofp <4 x i32> %411 to <4 x double>
  %413 = fmul fast <4 x double> %412, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %414 = shl i64 %index1218, 3
  %415 = add i64 %414, %407
  %416 = getelementptr i8, i8* %call1, i64 %415
  %417 = bitcast i8* %416 to <4 x double>*
  store <4 x double> %413, <4 x double>* %417, align 8, !alias.scope !97, !noalias !102
  %index.next1219 = add i64 %index1218, 4
  %vec.ind.next1225 = add <4 x i32> %vec.ind1224, <i32 4, i32 4, i32 4, i32 4>
  %418 = icmp eq i64 %index.next1219, 32
  br i1 %418, label %polly.loop_exit823.1922, label %vector.body1216, !llvm.loop !105

polly.loop_exit823.1922:                          ; preds = %vector.body1216
  %polly.indvar_next819.1920 = add nuw nsw i64 %polly.indvar818.1910, 1
  %exitcond891.1921.not = icmp eq i64 %polly.indvar_next819.1920, 32
  br i1 %exitcond891.1921.not, label %polly.loop_header815.1.1, label %polly.loop_header815.1911

polly.loop_header815.1.1:                         ; preds = %polly.loop_exit823.1922, %polly.loop_exit823.1.1
  %polly.indvar818.1.1 = phi i64 [ %polly.indvar_next819.1.1, %polly.loop_exit823.1.1 ], [ 0, %polly.loop_exit823.1922 ]
  %419 = add nuw nsw i64 %polly.indvar818.1.1, 32
  %420 = mul nuw nsw i64 %419, 480
  %421 = trunc i64 %419 to i32
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %421, i32 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %polly.loop_header815.1.1
  %index1232 = phi i64 [ 0, %polly.loop_header815.1.1 ], [ %index.next1233, %vector.body1230 ]
  %vec.ind1236 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header815.1.1 ], [ %vec.ind.next1237, %vector.body1230 ]
  %422 = add nuw nsw <4 x i64> %vec.ind1236, <i64 32, i64 32, i64 32, i64 32>
  %423 = trunc <4 x i64> %422 to <4 x i32>
  %424 = mul <4 x i32> %broadcast.splat1239, %423
  %425 = add <4 x i32> %424, <i32 1, i32 1, i32 1, i32 1>
  %426 = urem <4 x i32> %425, <i32 80, i32 80, i32 80, i32 80>
  %427 = sitofp <4 x i32> %426 to <4 x double>
  %428 = fmul fast <4 x double> %427, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %429 = extractelement <4 x i64> %422, i32 0
  %430 = shl i64 %429, 3
  %431 = add i64 %430, %420
  %432 = getelementptr i8, i8* %call1, i64 %431
  %433 = bitcast i8* %432 to <4 x double>*
  store <4 x double> %428, <4 x double>* %433, align 8, !alias.scope !97, !noalias !102
  %index.next1233 = add i64 %index1232, 4
  %vec.ind.next1237 = add <4 x i64> %vec.ind1236, <i64 4, i64 4, i64 4, i64 4>
  %434 = icmp eq i64 %index.next1233, 28
  br i1 %434, label %polly.loop_exit823.1.1, label %vector.body1230, !llvm.loop !106

polly.loop_exit823.1.1:                           ; preds = %vector.body1230
  %polly.indvar_next819.1.1 = add nuw nsw i64 %polly.indvar818.1.1, 1
  %exitcond891.1.1.not = icmp eq i64 %polly.indvar_next819.1.1, 32
  br i1 %exitcond891.1.1.not, label %polly.loop_header815.2, label %polly.loop_header815.1.1

polly.loop_header815.2:                           ; preds = %polly.loop_exit823.1.1, %polly.loop_exit823.2
  %polly.indvar818.2 = phi i64 [ %polly.indvar_next819.2, %polly.loop_exit823.2 ], [ 0, %polly.loop_exit823.1.1 ]
  %435 = add nuw nsw i64 %polly.indvar818.2, 64
  %436 = mul nuw nsw i64 %435, 480
  %437 = trunc i64 %435 to i32
  %broadcast.splatinsert1252 = insertelement <4 x i32> poison, i32 %437, i32 0
  %broadcast.splat1253 = shufflevector <4 x i32> %broadcast.splatinsert1252, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %polly.loop_header815.2
  %index1244 = phi i64 [ 0, %polly.loop_header815.2 ], [ %index.next1245, %vector.body1242 ]
  %vec.ind1250 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header815.2 ], [ %vec.ind.next1251, %vector.body1242 ]
  %438 = mul <4 x i32> %vec.ind1250, %broadcast.splat1253
  %439 = add <4 x i32> %438, <i32 1, i32 1, i32 1, i32 1>
  %440 = urem <4 x i32> %439, <i32 80, i32 80, i32 80, i32 80>
  %441 = sitofp <4 x i32> %440 to <4 x double>
  %442 = fmul fast <4 x double> %441, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %443 = shl i64 %index1244, 3
  %444 = add i64 %443, %436
  %445 = getelementptr i8, i8* %call1, i64 %444
  %446 = bitcast i8* %445 to <4 x double>*
  store <4 x double> %442, <4 x double>* %446, align 8, !alias.scope !97, !noalias !102
  %index.next1245 = add i64 %index1244, 4
  %vec.ind.next1251 = add <4 x i32> %vec.ind1250, <i32 4, i32 4, i32 4, i32 4>
  %447 = icmp eq i64 %index.next1245, 32
  br i1 %447, label %polly.loop_exit823.2, label %vector.body1242, !llvm.loop !107

polly.loop_exit823.2:                             ; preds = %vector.body1242
  %polly.indvar_next819.2 = add nuw nsw i64 %polly.indvar818.2, 1
  %exitcond891.2.not = icmp eq i64 %polly.indvar_next819.2, 16
  br i1 %exitcond891.2.not, label %polly.loop_header815.1.2, label %polly.loop_header815.2

polly.loop_header815.1.2:                         ; preds = %polly.loop_exit823.2, %polly.loop_exit823.1.2
  %polly.indvar818.1.2 = phi i64 [ %polly.indvar_next819.1.2, %polly.loop_exit823.1.2 ], [ 0, %polly.loop_exit823.2 ]
  %448 = add nuw nsw i64 %polly.indvar818.1.2, 64
  %449 = mul nuw nsw i64 %448, 480
  %450 = trunc i64 %448 to i32
  %broadcast.splatinsert1264 = insertelement <4 x i32> poison, i32 %450, i32 0
  %broadcast.splat1265 = shufflevector <4 x i32> %broadcast.splatinsert1264, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %polly.loop_header815.1.2
  %index1258 = phi i64 [ 0, %polly.loop_header815.1.2 ], [ %index.next1259, %vector.body1256 ]
  %vec.ind1262 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header815.1.2 ], [ %vec.ind.next1263, %vector.body1256 ]
  %451 = add nuw nsw <4 x i64> %vec.ind1262, <i64 32, i64 32, i64 32, i64 32>
  %452 = trunc <4 x i64> %451 to <4 x i32>
  %453 = mul <4 x i32> %broadcast.splat1265, %452
  %454 = add <4 x i32> %453, <i32 1, i32 1, i32 1, i32 1>
  %455 = urem <4 x i32> %454, <i32 80, i32 80, i32 80, i32 80>
  %456 = sitofp <4 x i32> %455 to <4 x double>
  %457 = fmul fast <4 x double> %456, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %458 = extractelement <4 x i64> %451, i32 0
  %459 = shl i64 %458, 3
  %460 = add i64 %459, %449
  %461 = getelementptr i8, i8* %call1, i64 %460
  %462 = bitcast i8* %461 to <4 x double>*
  store <4 x double> %457, <4 x double>* %462, align 8, !alias.scope !97, !noalias !102
  %index.next1259 = add i64 %index1258, 4
  %vec.ind.next1263 = add <4 x i64> %vec.ind1262, <i64 4, i64 4, i64 4, i64 4>
  %463 = icmp eq i64 %index.next1259, 28
  br i1 %463, label %polly.loop_exit823.1.2, label %vector.body1256, !llvm.loop !108

polly.loop_exit823.1.2:                           ; preds = %vector.body1256
  %polly.indvar_next819.1.2 = add nuw nsw i64 %polly.indvar818.1.2, 1
  %exitcond891.1.2.not = icmp eq i64 %polly.indvar_next819.1.2, 16
  br i1 %exitcond891.1.2.not, label %init_array.exit, label %polly.loop_header815.1.2

polly.loop_header789.1:                           ; preds = %polly.loop_exit797, %polly.loop_exit797.1
  %polly.indvar792.1 = phi i64 [ %polly.indvar_next793.1, %polly.loop_exit797.1 ], [ 0, %polly.loop_exit797 ]
  %464 = mul nuw nsw i64 %polly.indvar792.1, 480
  %465 = trunc i64 %polly.indvar792.1 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %465, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header789.1
  %index1128 = phi i64 [ 0, %polly.loop_header789.1 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1132 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header789.1 ], [ %vec.ind.next1133, %vector.body1126 ]
  %466 = add nuw nsw <4 x i64> %vec.ind1132, <i64 32, i64 32, i64 32, i64 32>
  %467 = trunc <4 x i64> %466 to <4 x i32>
  %468 = mul <4 x i32> %broadcast.splat1135, %467
  %469 = add <4 x i32> %468, <i32 2, i32 2, i32 2, i32 2>
  %470 = urem <4 x i32> %469, <i32 60, i32 60, i32 60, i32 60>
  %471 = sitofp <4 x i32> %470 to <4 x double>
  %472 = fmul fast <4 x double> %471, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %473 = extractelement <4 x i64> %466, i32 0
  %474 = shl i64 %473, 3
  %475 = add i64 %474, %464
  %476 = getelementptr i8, i8* %call2, i64 %475
  %477 = bitcast i8* %476 to <4 x double>*
  store <4 x double> %472, <4 x double>* %477, align 8, !alias.scope !98, !noalias !100
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1133 = add <4 x i64> %vec.ind1132, <i64 4, i64 4, i64 4, i64 4>
  %478 = icmp eq i64 %index.next1129, 28
  br i1 %478, label %polly.loop_exit797.1, label %vector.body1126, !llvm.loop !109

polly.loop_exit797.1:                             ; preds = %vector.body1126
  %polly.indvar_next793.1 = add nuw nsw i64 %polly.indvar792.1, 1
  %exitcond897.1.not = icmp eq i64 %polly.indvar_next793.1, 32
  br i1 %exitcond897.1.not, label %polly.loop_header789.1925, label %polly.loop_header789.1

polly.loop_header789.1925:                        ; preds = %polly.loop_exit797.1, %polly.loop_exit797.1936
  %polly.indvar792.1924 = phi i64 [ %polly.indvar_next793.1934, %polly.loop_exit797.1936 ], [ 0, %polly.loop_exit797.1 ]
  %479 = add nuw nsw i64 %polly.indvar792.1924, 32
  %480 = mul nuw nsw i64 %479, 480
  %481 = trunc i64 %479 to i32
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %481, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_header789.1925
  %index1140 = phi i64 [ 0, %polly.loop_header789.1925 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1146 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header789.1925 ], [ %vec.ind.next1147, %vector.body1138 ]
  %482 = mul <4 x i32> %vec.ind1146, %broadcast.splat1149
  %483 = add <4 x i32> %482, <i32 2, i32 2, i32 2, i32 2>
  %484 = urem <4 x i32> %483, <i32 60, i32 60, i32 60, i32 60>
  %485 = sitofp <4 x i32> %484 to <4 x double>
  %486 = fmul fast <4 x double> %485, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %487 = shl i64 %index1140, 3
  %488 = add i64 %487, %480
  %489 = getelementptr i8, i8* %call2, i64 %488
  %490 = bitcast i8* %489 to <4 x double>*
  store <4 x double> %486, <4 x double>* %490, align 8, !alias.scope !98, !noalias !100
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1147 = add <4 x i32> %vec.ind1146, <i32 4, i32 4, i32 4, i32 4>
  %491 = icmp eq i64 %index.next1141, 32
  br i1 %491, label %polly.loop_exit797.1936, label %vector.body1138, !llvm.loop !110

polly.loop_exit797.1936:                          ; preds = %vector.body1138
  %polly.indvar_next793.1934 = add nuw nsw i64 %polly.indvar792.1924, 1
  %exitcond897.1935.not = icmp eq i64 %polly.indvar_next793.1934, 32
  br i1 %exitcond897.1935.not, label %polly.loop_header789.1.1, label %polly.loop_header789.1925

polly.loop_header789.1.1:                         ; preds = %polly.loop_exit797.1936, %polly.loop_exit797.1.1
  %polly.indvar792.1.1 = phi i64 [ %polly.indvar_next793.1.1, %polly.loop_exit797.1.1 ], [ 0, %polly.loop_exit797.1936 ]
  %492 = add nuw nsw i64 %polly.indvar792.1.1, 32
  %493 = mul nuw nsw i64 %492, 480
  %494 = trunc i64 %492 to i32
  %broadcast.splatinsert1160 = insertelement <4 x i32> poison, i32 %494, i32 0
  %broadcast.splat1161 = shufflevector <4 x i32> %broadcast.splatinsert1160, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %polly.loop_header789.1.1
  %index1154 = phi i64 [ 0, %polly.loop_header789.1.1 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1158 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header789.1.1 ], [ %vec.ind.next1159, %vector.body1152 ]
  %495 = add nuw nsw <4 x i64> %vec.ind1158, <i64 32, i64 32, i64 32, i64 32>
  %496 = trunc <4 x i64> %495 to <4 x i32>
  %497 = mul <4 x i32> %broadcast.splat1161, %496
  %498 = add <4 x i32> %497, <i32 2, i32 2, i32 2, i32 2>
  %499 = urem <4 x i32> %498, <i32 60, i32 60, i32 60, i32 60>
  %500 = sitofp <4 x i32> %499 to <4 x double>
  %501 = fmul fast <4 x double> %500, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %502 = extractelement <4 x i64> %495, i32 0
  %503 = shl i64 %502, 3
  %504 = add i64 %503, %493
  %505 = getelementptr i8, i8* %call2, i64 %504
  %506 = bitcast i8* %505 to <4 x double>*
  store <4 x double> %501, <4 x double>* %506, align 8, !alias.scope !98, !noalias !100
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1159 = add <4 x i64> %vec.ind1158, <i64 4, i64 4, i64 4, i64 4>
  %507 = icmp eq i64 %index.next1155, 28
  br i1 %507, label %polly.loop_exit797.1.1, label %vector.body1152, !llvm.loop !111

polly.loop_exit797.1.1:                           ; preds = %vector.body1152
  %polly.indvar_next793.1.1 = add nuw nsw i64 %polly.indvar792.1.1, 1
  %exitcond897.1.1.not = icmp eq i64 %polly.indvar_next793.1.1, 32
  br i1 %exitcond897.1.1.not, label %polly.loop_header789.2, label %polly.loop_header789.1.1

polly.loop_header789.2:                           ; preds = %polly.loop_exit797.1.1, %polly.loop_exit797.2
  %polly.indvar792.2 = phi i64 [ %polly.indvar_next793.2, %polly.loop_exit797.2 ], [ 0, %polly.loop_exit797.1.1 ]
  %508 = add nuw nsw i64 %polly.indvar792.2, 64
  %509 = mul nuw nsw i64 %508, 480
  %510 = trunc i64 %508 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %510, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %polly.loop_header789.2
  %index1166 = phi i64 [ 0, %polly.loop_header789.2 ], [ %index.next1167, %vector.body1164 ]
  %vec.ind1172 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header789.2 ], [ %vec.ind.next1173, %vector.body1164 ]
  %511 = mul <4 x i32> %vec.ind1172, %broadcast.splat1175
  %512 = add <4 x i32> %511, <i32 2, i32 2, i32 2, i32 2>
  %513 = urem <4 x i32> %512, <i32 60, i32 60, i32 60, i32 60>
  %514 = sitofp <4 x i32> %513 to <4 x double>
  %515 = fmul fast <4 x double> %514, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %516 = shl i64 %index1166, 3
  %517 = add i64 %516, %509
  %518 = getelementptr i8, i8* %call2, i64 %517
  %519 = bitcast i8* %518 to <4 x double>*
  store <4 x double> %515, <4 x double>* %519, align 8, !alias.scope !98, !noalias !100
  %index.next1167 = add i64 %index1166, 4
  %vec.ind.next1173 = add <4 x i32> %vec.ind1172, <i32 4, i32 4, i32 4, i32 4>
  %520 = icmp eq i64 %index.next1167, 32
  br i1 %520, label %polly.loop_exit797.2, label %vector.body1164, !llvm.loop !112

polly.loop_exit797.2:                             ; preds = %vector.body1164
  %polly.indvar_next793.2 = add nuw nsw i64 %polly.indvar792.2, 1
  %exitcond897.2.not = icmp eq i64 %polly.indvar_next793.2, 16
  br i1 %exitcond897.2.not, label %polly.loop_header789.1.2, label %polly.loop_header789.2

polly.loop_header789.1.2:                         ; preds = %polly.loop_exit797.2, %polly.loop_exit797.1.2
  %polly.indvar792.1.2 = phi i64 [ %polly.indvar_next793.1.2, %polly.loop_exit797.1.2 ], [ 0, %polly.loop_exit797.2 ]
  %521 = add nuw nsw i64 %polly.indvar792.1.2, 64
  %522 = mul nuw nsw i64 %521, 480
  %523 = trunc i64 %521 to i32
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %523, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %polly.loop_header789.1.2
  %index1180 = phi i64 [ 0, %polly.loop_header789.1.2 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1184 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header789.1.2 ], [ %vec.ind.next1185, %vector.body1178 ]
  %524 = add nuw nsw <4 x i64> %vec.ind1184, <i64 32, i64 32, i64 32, i64 32>
  %525 = trunc <4 x i64> %524 to <4 x i32>
  %526 = mul <4 x i32> %broadcast.splat1187, %525
  %527 = add <4 x i32> %526, <i32 2, i32 2, i32 2, i32 2>
  %528 = urem <4 x i32> %527, <i32 60, i32 60, i32 60, i32 60>
  %529 = sitofp <4 x i32> %528 to <4 x double>
  %530 = fmul fast <4 x double> %529, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %531 = extractelement <4 x i64> %524, i32 0
  %532 = shl i64 %531, 3
  %533 = add i64 %532, %522
  %534 = getelementptr i8, i8* %call2, i64 %533
  %535 = bitcast i8* %534 to <4 x double>*
  store <4 x double> %530, <4 x double>* %535, align 8, !alias.scope !98, !noalias !100
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1185 = add <4 x i64> %vec.ind1184, <i64 4, i64 4, i64 4, i64 4>
  %536 = icmp eq i64 %index.next1181, 28
  br i1 %536, label %polly.loop_exit797.1.2, label %vector.body1178, !llvm.loop !113

polly.loop_exit797.1.2:                           ; preds = %vector.body1178
  %polly.indvar_next793.1.2 = add nuw nsw i64 %polly.indvar792.1.2, 1
  %exitcond897.1.2.not = icmp eq i64 %polly.indvar_next793.1.2, 16
  br i1 %exitcond897.1.2.not, label %polly.loop_header815, label %polly.loop_header789.1.2

polly.loop_header762.1:                           ; preds = %polly.loop_exit770, %polly.loop_exit770.1
  %polly.indvar765.1 = phi i64 [ %polly.indvar_next766.1, %polly.loop_exit770.1 ], [ 0, %polly.loop_exit770 ]
  %537 = mul nuw nsw i64 %polly.indvar765.1, 640
  %538 = trunc i64 %polly.indvar765.1 to i32
  %broadcast.splatinsert1020 = insertelement <4 x i32> poison, i32 %538, i32 0
  %broadcast.splat1021 = shufflevector <4 x i32> %broadcast.splatinsert1020, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %polly.loop_header762.1
  %index1014 = phi i64 [ 0, %polly.loop_header762.1 ], [ %index.next1015, %vector.body1012 ]
  %vec.ind1018 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.1 ], [ %vec.ind.next1019, %vector.body1012 ]
  %539 = add nuw nsw <4 x i64> %vec.ind1018, <i64 32, i64 32, i64 32, i64 32>
  %540 = trunc <4 x i64> %539 to <4 x i32>
  %541 = mul <4 x i32> %broadcast.splat1021, %540
  %542 = add <4 x i32> %541, <i32 3, i32 3, i32 3, i32 3>
  %543 = urem <4 x i32> %542, <i32 80, i32 80, i32 80, i32 80>
  %544 = sitofp <4 x i32> %543 to <4 x double>
  %545 = fmul fast <4 x double> %544, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %546 = extractelement <4 x i64> %539, i32 0
  %547 = shl i64 %546, 3
  %548 = add nuw nsw i64 %547, %537
  %549 = getelementptr i8, i8* %call, i64 %548
  %550 = bitcast i8* %549 to <4 x double>*
  store <4 x double> %545, <4 x double>* %550, align 8, !alias.scope !94, !noalias !96
  %index.next1015 = add i64 %index1014, 4
  %vec.ind.next1019 = add <4 x i64> %vec.ind1018, <i64 4, i64 4, i64 4, i64 4>
  %551 = icmp eq i64 %index.next1015, 32
  br i1 %551, label %polly.loop_exit770.1, label %vector.body1012, !llvm.loop !114

polly.loop_exit770.1:                             ; preds = %vector.body1012
  %polly.indvar_next766.1 = add nuw nsw i64 %polly.indvar765.1, 1
  %exitcond906.1.not = icmp eq i64 %polly.indvar_next766.1, 32
  br i1 %exitcond906.1.not, label %polly.loop_header762.2, label %polly.loop_header762.1

polly.loop_header762.2:                           ; preds = %polly.loop_exit770.1, %polly.loop_exit770.2
  %polly.indvar765.2 = phi i64 [ %polly.indvar_next766.2, %polly.loop_exit770.2 ], [ 0, %polly.loop_exit770.1 ]
  %552 = mul nuw nsw i64 %polly.indvar765.2, 640
  %553 = trunc i64 %polly.indvar765.2 to i32
  %broadcast.splatinsert1032 = insertelement <4 x i32> poison, i32 %553, i32 0
  %broadcast.splat1033 = shufflevector <4 x i32> %broadcast.splatinsert1032, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1024

vector.body1024:                                  ; preds = %vector.body1024, %polly.loop_header762.2
  %index1026 = phi i64 [ 0, %polly.loop_header762.2 ], [ %index.next1027, %vector.body1024 ]
  %vec.ind1030 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.2 ], [ %vec.ind.next1031, %vector.body1024 ]
  %554 = add nuw nsw <4 x i64> %vec.ind1030, <i64 64, i64 64, i64 64, i64 64>
  %555 = trunc <4 x i64> %554 to <4 x i32>
  %556 = mul <4 x i32> %broadcast.splat1033, %555
  %557 = add <4 x i32> %556, <i32 3, i32 3, i32 3, i32 3>
  %558 = urem <4 x i32> %557, <i32 80, i32 80, i32 80, i32 80>
  %559 = sitofp <4 x i32> %558 to <4 x double>
  %560 = fmul fast <4 x double> %559, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %561 = extractelement <4 x i64> %554, i32 0
  %562 = shl i64 %561, 3
  %563 = add nuw nsw i64 %562, %552
  %564 = getelementptr i8, i8* %call, i64 %563
  %565 = bitcast i8* %564 to <4 x double>*
  store <4 x double> %560, <4 x double>* %565, align 8, !alias.scope !94, !noalias !96
  %index.next1027 = add i64 %index1026, 4
  %vec.ind.next1031 = add <4 x i64> %vec.ind1030, <i64 4, i64 4, i64 4, i64 4>
  %566 = icmp eq i64 %index.next1027, 16
  br i1 %566, label %polly.loop_exit770.2, label %vector.body1024, !llvm.loop !115

polly.loop_exit770.2:                             ; preds = %vector.body1024
  %polly.indvar_next766.2 = add nuw nsw i64 %polly.indvar765.2, 1
  %exitcond906.2.not = icmp eq i64 %polly.indvar_next766.2, 32
  br i1 %exitcond906.2.not, label %polly.loop_header762.1939, label %polly.loop_header762.2

polly.loop_header762.1939:                        ; preds = %polly.loop_exit770.2, %polly.loop_exit770.1950
  %polly.indvar765.1938 = phi i64 [ %polly.indvar_next766.1948, %polly.loop_exit770.1950 ], [ 0, %polly.loop_exit770.2 ]
  %567 = add nuw nsw i64 %polly.indvar765.1938, 32
  %568 = mul nuw nsw i64 %567, 640
  %569 = trunc i64 %567 to i32
  %broadcast.splatinsert1046 = insertelement <4 x i32> poison, i32 %569, i32 0
  %broadcast.splat1047 = shufflevector <4 x i32> %broadcast.splatinsert1046, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %polly.loop_header762.1939
  %index1038 = phi i64 [ 0, %polly.loop_header762.1939 ], [ %index.next1039, %vector.body1036 ]
  %vec.ind1044 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header762.1939 ], [ %vec.ind.next1045, %vector.body1036 ]
  %570 = mul <4 x i32> %vec.ind1044, %broadcast.splat1047
  %571 = add <4 x i32> %570, <i32 3, i32 3, i32 3, i32 3>
  %572 = urem <4 x i32> %571, <i32 80, i32 80, i32 80, i32 80>
  %573 = sitofp <4 x i32> %572 to <4 x double>
  %574 = fmul fast <4 x double> %573, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %575 = shl i64 %index1038, 3
  %576 = add nuw nsw i64 %575, %568
  %577 = getelementptr i8, i8* %call, i64 %576
  %578 = bitcast i8* %577 to <4 x double>*
  store <4 x double> %574, <4 x double>* %578, align 8, !alias.scope !94, !noalias !96
  %index.next1039 = add i64 %index1038, 4
  %vec.ind.next1045 = add <4 x i32> %vec.ind1044, <i32 4, i32 4, i32 4, i32 4>
  %579 = icmp eq i64 %index.next1039, 32
  br i1 %579, label %polly.loop_exit770.1950, label %vector.body1036, !llvm.loop !116

polly.loop_exit770.1950:                          ; preds = %vector.body1036
  %polly.indvar_next766.1948 = add nuw nsw i64 %polly.indvar765.1938, 1
  %exitcond906.1949.not = icmp eq i64 %polly.indvar_next766.1948, 32
  br i1 %exitcond906.1949.not, label %polly.loop_header762.1.1, label %polly.loop_header762.1939

polly.loop_header762.1.1:                         ; preds = %polly.loop_exit770.1950, %polly.loop_exit770.1.1
  %polly.indvar765.1.1 = phi i64 [ %polly.indvar_next766.1.1, %polly.loop_exit770.1.1 ], [ 0, %polly.loop_exit770.1950 ]
  %580 = add nuw nsw i64 %polly.indvar765.1.1, 32
  %581 = mul nuw nsw i64 %580, 640
  %582 = trunc i64 %580 to i32
  %broadcast.splatinsert1058 = insertelement <4 x i32> poison, i32 %582, i32 0
  %broadcast.splat1059 = shufflevector <4 x i32> %broadcast.splatinsert1058, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %polly.loop_header762.1.1
  %index1052 = phi i64 [ 0, %polly.loop_header762.1.1 ], [ %index.next1053, %vector.body1050 ]
  %vec.ind1056 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.1.1 ], [ %vec.ind.next1057, %vector.body1050 ]
  %583 = add nuw nsw <4 x i64> %vec.ind1056, <i64 32, i64 32, i64 32, i64 32>
  %584 = trunc <4 x i64> %583 to <4 x i32>
  %585 = mul <4 x i32> %broadcast.splat1059, %584
  %586 = add <4 x i32> %585, <i32 3, i32 3, i32 3, i32 3>
  %587 = urem <4 x i32> %586, <i32 80, i32 80, i32 80, i32 80>
  %588 = sitofp <4 x i32> %587 to <4 x double>
  %589 = fmul fast <4 x double> %588, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %590 = extractelement <4 x i64> %583, i32 0
  %591 = shl i64 %590, 3
  %592 = add nuw nsw i64 %591, %581
  %593 = getelementptr i8, i8* %call, i64 %592
  %594 = bitcast i8* %593 to <4 x double>*
  store <4 x double> %589, <4 x double>* %594, align 8, !alias.scope !94, !noalias !96
  %index.next1053 = add i64 %index1052, 4
  %vec.ind.next1057 = add <4 x i64> %vec.ind1056, <i64 4, i64 4, i64 4, i64 4>
  %595 = icmp eq i64 %index.next1053, 32
  br i1 %595, label %polly.loop_exit770.1.1, label %vector.body1050, !llvm.loop !117

polly.loop_exit770.1.1:                           ; preds = %vector.body1050
  %polly.indvar_next766.1.1 = add nuw nsw i64 %polly.indvar765.1.1, 1
  %exitcond906.1.1.not = icmp eq i64 %polly.indvar_next766.1.1, 32
  br i1 %exitcond906.1.1.not, label %polly.loop_header762.2.1, label %polly.loop_header762.1.1

polly.loop_header762.2.1:                         ; preds = %polly.loop_exit770.1.1, %polly.loop_exit770.2.1
  %polly.indvar765.2.1 = phi i64 [ %polly.indvar_next766.2.1, %polly.loop_exit770.2.1 ], [ 0, %polly.loop_exit770.1.1 ]
  %596 = add nuw nsw i64 %polly.indvar765.2.1, 32
  %597 = mul nuw nsw i64 %596, 640
  %598 = trunc i64 %596 to i32
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %598, i32 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.body1062, %polly.loop_header762.2.1
  %index1064 = phi i64 [ 0, %polly.loop_header762.2.1 ], [ %index.next1065, %vector.body1062 ]
  %vec.ind1068 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.2.1 ], [ %vec.ind.next1069, %vector.body1062 ]
  %599 = add nuw nsw <4 x i64> %vec.ind1068, <i64 64, i64 64, i64 64, i64 64>
  %600 = trunc <4 x i64> %599 to <4 x i32>
  %601 = mul <4 x i32> %broadcast.splat1071, %600
  %602 = add <4 x i32> %601, <i32 3, i32 3, i32 3, i32 3>
  %603 = urem <4 x i32> %602, <i32 80, i32 80, i32 80, i32 80>
  %604 = sitofp <4 x i32> %603 to <4 x double>
  %605 = fmul fast <4 x double> %604, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %606 = extractelement <4 x i64> %599, i32 0
  %607 = shl i64 %606, 3
  %608 = add nuw nsw i64 %607, %597
  %609 = getelementptr i8, i8* %call, i64 %608
  %610 = bitcast i8* %609 to <4 x double>*
  store <4 x double> %605, <4 x double>* %610, align 8, !alias.scope !94, !noalias !96
  %index.next1065 = add i64 %index1064, 4
  %vec.ind.next1069 = add <4 x i64> %vec.ind1068, <i64 4, i64 4, i64 4, i64 4>
  %611 = icmp eq i64 %index.next1065, 16
  br i1 %611, label %polly.loop_exit770.2.1, label %vector.body1062, !llvm.loop !118

polly.loop_exit770.2.1:                           ; preds = %vector.body1062
  %polly.indvar_next766.2.1 = add nuw nsw i64 %polly.indvar765.2.1, 1
  %exitcond906.2.1.not = icmp eq i64 %polly.indvar_next766.2.1, 32
  br i1 %exitcond906.2.1.not, label %polly.loop_header762.2953, label %polly.loop_header762.2.1

polly.loop_header762.2953:                        ; preds = %polly.loop_exit770.2.1, %polly.loop_exit770.2964
  %polly.indvar765.2952 = phi i64 [ %polly.indvar_next766.2962, %polly.loop_exit770.2964 ], [ 0, %polly.loop_exit770.2.1 ]
  %612 = add nuw nsw i64 %polly.indvar765.2952, 64
  %613 = mul nuw nsw i64 %612, 640
  %614 = trunc i64 %612 to i32
  %broadcast.splatinsert1084 = insertelement <4 x i32> poison, i32 %614, i32 0
  %broadcast.splat1085 = shufflevector <4 x i32> %broadcast.splatinsert1084, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %polly.loop_header762.2953
  %index1076 = phi i64 [ 0, %polly.loop_header762.2953 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1082 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header762.2953 ], [ %vec.ind.next1083, %vector.body1074 ]
  %615 = mul <4 x i32> %vec.ind1082, %broadcast.splat1085
  %616 = add <4 x i32> %615, <i32 3, i32 3, i32 3, i32 3>
  %617 = urem <4 x i32> %616, <i32 80, i32 80, i32 80, i32 80>
  %618 = sitofp <4 x i32> %617 to <4 x double>
  %619 = fmul fast <4 x double> %618, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %620 = shl i64 %index1076, 3
  %621 = add nuw nsw i64 %620, %613
  %622 = getelementptr i8, i8* %call, i64 %621
  %623 = bitcast i8* %622 to <4 x double>*
  store <4 x double> %619, <4 x double>* %623, align 8, !alias.scope !94, !noalias !96
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1083 = add <4 x i32> %vec.ind1082, <i32 4, i32 4, i32 4, i32 4>
  %624 = icmp eq i64 %index.next1077, 32
  br i1 %624, label %polly.loop_exit770.2964, label %vector.body1074, !llvm.loop !119

polly.loop_exit770.2964:                          ; preds = %vector.body1074
  %polly.indvar_next766.2962 = add nuw nsw i64 %polly.indvar765.2952, 1
  %exitcond906.2963.not = icmp eq i64 %polly.indvar_next766.2962, 16
  br i1 %exitcond906.2963.not, label %polly.loop_header762.1.2, label %polly.loop_header762.2953

polly.loop_header762.1.2:                         ; preds = %polly.loop_exit770.2964, %polly.loop_exit770.1.2
  %polly.indvar765.1.2 = phi i64 [ %polly.indvar_next766.1.2, %polly.loop_exit770.1.2 ], [ 0, %polly.loop_exit770.2964 ]
  %625 = add nuw nsw i64 %polly.indvar765.1.2, 64
  %626 = mul nuw nsw i64 %625, 640
  %627 = trunc i64 %625 to i32
  %broadcast.splatinsert1096 = insertelement <4 x i32> poison, i32 %627, i32 0
  %broadcast.splat1097 = shufflevector <4 x i32> %broadcast.splatinsert1096, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %polly.loop_header762.1.2
  %index1090 = phi i64 [ 0, %polly.loop_header762.1.2 ], [ %index.next1091, %vector.body1088 ]
  %vec.ind1094 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.1.2 ], [ %vec.ind.next1095, %vector.body1088 ]
  %628 = add nuw nsw <4 x i64> %vec.ind1094, <i64 32, i64 32, i64 32, i64 32>
  %629 = trunc <4 x i64> %628 to <4 x i32>
  %630 = mul <4 x i32> %broadcast.splat1097, %629
  %631 = add <4 x i32> %630, <i32 3, i32 3, i32 3, i32 3>
  %632 = urem <4 x i32> %631, <i32 80, i32 80, i32 80, i32 80>
  %633 = sitofp <4 x i32> %632 to <4 x double>
  %634 = fmul fast <4 x double> %633, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %635 = extractelement <4 x i64> %628, i32 0
  %636 = shl i64 %635, 3
  %637 = add nuw nsw i64 %636, %626
  %638 = getelementptr i8, i8* %call, i64 %637
  %639 = bitcast i8* %638 to <4 x double>*
  store <4 x double> %634, <4 x double>* %639, align 8, !alias.scope !94, !noalias !96
  %index.next1091 = add i64 %index1090, 4
  %vec.ind.next1095 = add <4 x i64> %vec.ind1094, <i64 4, i64 4, i64 4, i64 4>
  %640 = icmp eq i64 %index.next1091, 32
  br i1 %640, label %polly.loop_exit770.1.2, label %vector.body1088, !llvm.loop !120

polly.loop_exit770.1.2:                           ; preds = %vector.body1088
  %polly.indvar_next766.1.2 = add nuw nsw i64 %polly.indvar765.1.2, 1
  %exitcond906.1.2.not = icmp eq i64 %polly.indvar_next766.1.2, 16
  br i1 %exitcond906.1.2.not, label %polly.loop_header762.2.2, label %polly.loop_header762.1.2

polly.loop_header762.2.2:                         ; preds = %polly.loop_exit770.1.2, %polly.loop_exit770.2.2
  %polly.indvar765.2.2 = phi i64 [ %polly.indvar_next766.2.2, %polly.loop_exit770.2.2 ], [ 0, %polly.loop_exit770.1.2 ]
  %641 = add nuw nsw i64 %polly.indvar765.2.2, 64
  %642 = mul nuw nsw i64 %641, 640
  %643 = trunc i64 %641 to i32
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %643, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %polly.loop_header762.2.2
  %index1102 = phi i64 [ 0, %polly.loop_header762.2.2 ], [ %index.next1103, %vector.body1100 ]
  %vec.ind1106 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.2.2 ], [ %vec.ind.next1107, %vector.body1100 ]
  %644 = add nuw nsw <4 x i64> %vec.ind1106, <i64 64, i64 64, i64 64, i64 64>
  %645 = trunc <4 x i64> %644 to <4 x i32>
  %646 = mul <4 x i32> %broadcast.splat1109, %645
  %647 = add <4 x i32> %646, <i32 3, i32 3, i32 3, i32 3>
  %648 = urem <4 x i32> %647, <i32 80, i32 80, i32 80, i32 80>
  %649 = sitofp <4 x i32> %648 to <4 x double>
  %650 = fmul fast <4 x double> %649, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %651 = extractelement <4 x i64> %644, i32 0
  %652 = shl i64 %651, 3
  %653 = add nuw nsw i64 %652, %642
  %654 = getelementptr i8, i8* %call, i64 %653
  %655 = bitcast i8* %654 to <4 x double>*
  store <4 x double> %650, <4 x double>* %655, align 8, !alias.scope !94, !noalias !96
  %index.next1103 = add i64 %index1102, 4
  %vec.ind.next1107 = add <4 x i64> %vec.ind1106, <i64 4, i64 4, i64 4, i64 4>
  %656 = icmp eq i64 %index.next1103, 16
  br i1 %656, label %polly.loop_exit770.2.2, label %vector.body1100, !llvm.loop !121

polly.loop_exit770.2.2:                           ; preds = %vector.body1100
  %polly.indvar_next766.2.2 = add nuw nsw i64 %polly.indvar765.2.2, 1
  %exitcond906.2.2.not = icmp eq i64 %polly.indvar_next766.2.2, 16
  br i1 %exitcond906.2.2.not, label %polly.loop_header789, label %polly.loop_header762.2.2
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 4}
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
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !52}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 64}
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
