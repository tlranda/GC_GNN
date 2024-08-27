; ModuleID = 'syr2k_recreations//mmp_syr2k_S_132.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_132.c"
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
  %scevgep1003 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1002 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1001 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1000 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1000, %scevgep1003
  %bound1 = icmp ult i8* %scevgep1002, %scevgep1001
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
  br i1 %exitcond18.not.i, label %vector.ph1007, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1007:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1014 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1015 = shufflevector <4 x i64> %broadcast.splatinsert1014, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1006

vector.body1006:                                  ; preds = %vector.body1006, %vector.ph1007
  %index1008 = phi i64 [ 0, %vector.ph1007 ], [ %index.next1009, %vector.body1006 ]
  %vec.ind1012 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1007 ], [ %vec.ind.next1013, %vector.body1006 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1012, %broadcast.splat1015
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv7.i, i64 %index1008
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1009 = add i64 %index1008, 4
  %vec.ind.next1013 = add <4 x i64> %vec.ind1012, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1009, 80
  br i1 %40, label %for.inc41.i, label %vector.body1006, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1006
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1007, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1360, label %vector.ph1289

vector.ph1289:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1288

vector.body1288:                                  ; preds = %vector.body1288, %vector.ph1289
  %index1290 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1291, %vector.body1288 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i, i64 %index1290
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1291 = add i64 %index1290, 4
  %46 = icmp eq i64 %index.next1291, %n.vec
  br i1 %46, label %middle.block1286, label %vector.body1288, !llvm.loop !18

middle.block1286:                                 ; preds = %vector.body1288
  %cmp.n1293 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1293, label %for.inc6.i, label %for.body3.i46.preheader1360

for.body3.i46.preheader1360:                      ; preds = %for.body3.i46.preheader, %middle.block1286
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1286 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1360, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1360 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1286, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit575.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start272, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1309 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1309, label %for.body3.i60.preheader1359, label %vector.ph1310

vector.ph1310:                                    ; preds = %for.body3.i60.preheader
  %n.vec1312 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1308

vector.body1308:                                  ; preds = %vector.body1308, %vector.ph1310
  %index1313 = phi i64 [ 0, %vector.ph1310 ], [ %index.next1314, %vector.body1308 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i52, i64 %index1313
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1317 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1317, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1314 = add i64 %index1313, 4
  %57 = icmp eq i64 %index.next1314, %n.vec1312
  br i1 %57, label %middle.block1306, label %vector.body1308, !llvm.loop !55

middle.block1306:                                 ; preds = %vector.body1308
  %cmp.n1316 = icmp eq i64 %indvars.iv21.i52, %n.vec1312
  br i1 %cmp.n1316, label %for.inc6.i63, label %for.body3.i60.preheader1359

for.body3.i60.preheader1359:                      ; preds = %for.body3.i60.preheader, %middle.block1306
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1312, %middle.block1306 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1359, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1359 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1306, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit398.2
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1335 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1335, label %for.body3.i99.preheader1358, label %vector.ph1336

vector.ph1336:                                    ; preds = %for.body3.i99.preheader
  %n.vec1338 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1334

vector.body1334:                                  ; preds = %vector.body1334, %vector.ph1336
  %index1339 = phi i64 [ 0, %vector.ph1336 ], [ %index.next1340, %vector.body1334 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i91, i64 %index1339
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1343 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1343, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1340 = add i64 %index1339, 4
  %68 = icmp eq i64 %index.next1340, %n.vec1338
  br i1 %68, label %middle.block1332, label %vector.body1334, !llvm.loop !57

middle.block1332:                                 ; preds = %vector.body1334
  %cmp.n1342 = icmp eq i64 %indvars.iv21.i91, %n.vec1338
  br i1 %cmp.n1342, label %for.inc6.i102, label %for.body3.i99.preheader1358

for.body3.i99.preheader1358:                      ; preds = %for.body3.i99.preheader, %middle.block1332
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1338, %middle.block1332 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1358, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1358 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call776, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1332, %for.cond1.preheader.i93
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit223.2
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

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1347 = phi i64 [ %indvar.next1348, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1347, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1349 = icmp ult i64 %88, 4
  br i1 %min.iters.check1349, label %polly.loop_header191.preheader, label %vector.ph1350

vector.ph1350:                                    ; preds = %polly.loop_header
  %n.vec1352 = and i64 %88, -4
  br label %vector.body1346

vector.body1346:                                  ; preds = %vector.body1346, %vector.ph1350
  %index1353 = phi i64 [ 0, %vector.ph1350 ], [ %index.next1354, %vector.body1346 ]
  %90 = shl nuw nsw i64 %index1353, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1357, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1354 = add i64 %index1353, 4
  %95 = icmp eq i64 %index.next1354, %n.vec1352
  br i1 %95, label %middle.block1344, label %vector.body1346, !llvm.loop !69

middle.block1344:                                 ; preds = %vector.body1346
  %cmp.n1356 = icmp eq i64 %88, %n.vec1352
  br i1 %cmp.n1356, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1344
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1352, %middle.block1344 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1344
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1348 = add i64 %indvar1347, 1
  br i1 %exitcond855.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond854.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond854.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond853.not, label %polly.loop_header221, label %polly.loop_header199

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
  %exitcond852.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond852.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header221:                             ; preds = %polly.loop_exit207, %polly.loop_exit229
  %indvars.iv843 = phi i64 [ %indvars.iv.next844, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %smin845 = call i64 @llvm.smin.i64(i64 %indvars.iv843, i64 -52)
  %97 = shl nsw i64 %polly.indvar224, 3
  %98 = add nsw i64 %smin845, 59
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next844 = add nsw i64 %indvars.iv843, -8
  %exitcond850.not = icmp eq i64 %polly.indvar_next225, 8
  br i1 %exitcond850.not, label %polly.loop_header221.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_header221
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header221 ]
  %99 = shl i64 %polly.indvar230, 2
  %polly.loop_guard.not = icmp sgt i64 %99, 31
  br i1 %polly.loop_guard.not, label %polly.loop_exit235, label %polly.loop_header233.preheader

polly.loop_header233.preheader:                   ; preds = %polly.loop_header227
  %100 = add i64 %indvars.iv835, %indvars.iv839
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv835, 4
  %indvars.iv.next840 = add nsw i64 %indvars.iv839, -4
  %exitcond849.not = icmp eq i64 %polly.indvar_next231, 8
  br i1 %exitcond849.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header233.preheader, %polly.loop_exit241
  %indvars.iv841 = phi i64 [ %100, %polly.loop_header233.preheader ], [ %indvars.iv.next842, %polly.loop_exit241 ]
  %polly.indvar236 = phi i64 [ %99, %polly.loop_header233.preheader ], [ %polly.indvar_next237, %polly.loop_exit241 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv841, i64 3)
  %101 = sub i64 %polly.indvar236, %99
  %polly.loop_guard249989 = icmp sgt i64 %101, -1
  %102 = mul i64 %polly.indvar236, 480
  %103 = mul i64 %polly.indvar236, 640
  br i1 %polly.loop_guard249989, label %polly.loop_header239.us, label %polly.loop_exit241

polly.loop_header239.us:                          ; preds = %polly.loop_header233, %polly.loop_exit248.loopexit.us
  %polly.indvar242.us = phi i64 [ %polly.indvar_next243.us, %polly.loop_exit248.loopexit.us ], [ 0, %polly.loop_header233 ]
  %104 = add nuw nsw i64 %polly.indvar242.us, %97
  %105 = shl i64 %104, 3
  %polly.access.mul.Packed_MemRef_call2256.us = mul nuw nsw i64 %104, 80
  %polly.access.add.Packed_MemRef_call2257.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us, %polly.indvar236
  %polly.access.Packed_MemRef_call2258.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call2258.us, align 8
  %106 = add i64 %105, %102
  %scevgep264.us = getelementptr i8, i8* %call1, i64 %106
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header246.us

polly.loop_header246.us:                          ; preds = %polly.loop_header239.us, %polly.loop_header246.us
  %polly.indvar250.us = phi i64 [ %polly.indvar_next251.us, %polly.loop_header246.us ], [ 0, %polly.loop_header239.us ]
  %107 = add nuw nsw i64 %polly.indvar250.us, %99
  %108 = mul nuw nsw i64 %107, 480
  %109 = add nuw nsw i64 %108, %105
  %scevgep253.us = getelementptr i8, i8* %call1, i64 %109
  %scevgep253254.us = bitcast i8* %scevgep253.us to double*
  %_p_scalar_255.us = load double, double* %scevgep253254.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_259.us, %_p_scalar_255.us
  %polly.access.add.Packed_MemRef_call2261.us = add nuw nsw i64 %107, %polly.access.mul.Packed_MemRef_call2256.us
  %polly.access.Packed_MemRef_call2262.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call2262.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %110 = shl i64 %107, 3
  %111 = add i64 %110, %103
  %scevgep267.us = getelementptr i8, i8* %call, i64 %111
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
  %exitcond846.not = icmp eq i64 %polly.indvar242.us, %98
  br i1 %exitcond846.not, label %polly.loop_exit241, label %polly.loop_header239.us

polly.loop_exit241:                               ; preds = %polly.loop_exit248.loopexit.us, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp ult i64 %polly.indvar236, 31
  %indvars.iv.next842 = add i64 %indvars.iv841, 1
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header358

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1321 = phi i64 [ %indvar.next1322, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %112 = add i64 %indvar1321, 1
  %113 = mul nuw nsw i64 %polly.indvar361, 640
  %scevgep370 = getelementptr i8, i8* %call, i64 %113
  %min.iters.check1323 = icmp ult i64 %112, 4
  br i1 %min.iters.check1323, label %polly.loop_header364.preheader, label %vector.ph1324

vector.ph1324:                                    ; preds = %polly.loop_header358
  %n.vec1326 = and i64 %112, -4
  br label %vector.body1320

vector.body1320:                                  ; preds = %vector.body1320, %vector.ph1324
  %index1327 = phi i64 [ 0, %vector.ph1324 ], [ %index.next1328, %vector.body1320 ]
  %114 = shl nuw nsw i64 %index1327, 3
  %115 = getelementptr i8, i8* %scevgep370, i64 %114
  %116 = bitcast i8* %115 to <4 x double>*
  %wide.load1331 = load <4 x double>, <4 x double>* %116, align 8, !alias.scope !74, !noalias !76
  %117 = fmul fast <4 x double> %wide.load1331, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %118 = bitcast i8* %115 to <4 x double>*
  store <4 x double> %117, <4 x double>* %118, align 8, !alias.scope !74, !noalias !76
  %index.next1328 = add i64 %index1327, 4
  %119 = icmp eq i64 %index.next1328, %n.vec1326
  br i1 %119, label %middle.block1318, label %vector.body1320, !llvm.loop !80

middle.block1318:                                 ; preds = %vector.body1320
  %cmp.n1330 = icmp eq i64 %112, %n.vec1326
  br i1 %cmp.n1330, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1318
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1326, %middle.block1318 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1318
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next362, 80
  %indvar.next1322 = add i64 %indvar1321, 1
  br i1 %exitcond882.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header374

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %120 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %120
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond881.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !81

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit382
  %polly.indvar377 = phi i64 [ %polly.indvar_next378, %polly.loop_exit382 ], [ 0, %polly.loop_header374.preheader ]
  %polly.access.mul.Packed_MemRef_call2275 = mul nuw nsw i64 %polly.indvar377, 80
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_header380
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next378, 60
  br i1 %exitcond880.not, label %polly.loop_header396, label %polly.loop_header374

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
  %exitcond879.not = icmp eq i64 %polly.indvar_next384, 80
  br i1 %exitcond879.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header396:                             ; preds = %polly.loop_exit382, %polly.loop_exit404
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit404 ], [ 0, %polly.loop_exit382 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_exit382 ]
  %smin871 = call i64 @llvm.smin.i64(i64 %indvars.iv869, i64 -52)
  %121 = shl nsw i64 %polly.indvar399, 3
  %122 = add nsw i64 %smin871, 59
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit411
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %indvars.iv.next870 = add nsw i64 %indvars.iv869, -8
  %exitcond877.not = icmp eq i64 %polly.indvar_next400, 8
  br i1 %exitcond877.not, label %polly.loop_header396.1, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_exit411, %polly.loop_header396
  %indvars.iv863 = phi i64 [ %indvars.iv.next864, %polly.loop_exit411 ], [ 0, %polly.loop_header396 ]
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit411 ], [ 0, %polly.loop_header396 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit411 ], [ 0, %polly.loop_header396 ]
  %123 = shl i64 %polly.indvar405, 2
  %polly.loop_guard412.not = icmp sgt i64 %123, 31
  br i1 %polly.loop_guard412.not, label %polly.loop_exit411, label %polly.loop_header409.preheader

polly.loop_header409.preheader:                   ; preds = %polly.loop_header402
  %124 = add i64 %indvars.iv858, %indvars.iv863
  br label %polly.loop_header409

polly.loop_exit411:                               ; preds = %polly.loop_exit418, %polly.loop_header402
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next859 = add nuw nsw i64 %indvars.iv858, 4
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -4
  %exitcond876.not = icmp eq i64 %polly.indvar_next406, 8
  br i1 %exitcond876.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header409:                             ; preds = %polly.loop_header409.preheader, %polly.loop_exit418
  %indvars.iv865 = phi i64 [ %124, %polly.loop_header409.preheader ], [ %indvars.iv.next866, %polly.loop_exit418 ]
  %polly.indvar413 = phi i64 [ %123, %polly.loop_header409.preheader ], [ %polly.indvar_next414, %polly.loop_exit418 ]
  %smin867 = call i64 @llvm.smin.i64(i64 %indvars.iv865, i64 3)
  %125 = sub i64 %polly.indvar413, %123
  %polly.loop_guard426992 = icmp sgt i64 %125, -1
  %126 = mul i64 %polly.indvar413, 480
  %127 = mul i64 %polly.indvar413, 640
  br i1 %polly.loop_guard426992, label %polly.loop_header416.us, label %polly.loop_exit418

polly.loop_header416.us:                          ; preds = %polly.loop_header409, %polly.loop_exit425.loopexit.us
  %polly.indvar419.us = phi i64 [ %polly.indvar_next420.us, %polly.loop_exit425.loopexit.us ], [ 0, %polly.loop_header409 ]
  %128 = add nuw nsw i64 %polly.indvar419.us, %121
  %129 = shl i64 %128, 3
  %polly.access.mul.Packed_MemRef_call2275433.us = mul nuw nsw i64 %128, 80
  %polly.access.add.Packed_MemRef_call2275434.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275433.us, %polly.indvar413
  %polly.access.Packed_MemRef_call2275435.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434.us
  %_p_scalar_436.us = load double, double* %polly.access.Packed_MemRef_call2275435.us, align 8
  %130 = add i64 %129, %126
  %scevgep441.us = getelementptr i8, i8* %call1, i64 %130
  %scevgep441442.us = bitcast i8* %scevgep441.us to double*
  %_p_scalar_443.us = load double, double* %scevgep441442.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header423.us

polly.loop_header423.us:                          ; preds = %polly.loop_header416.us, %polly.loop_header423.us
  %polly.indvar427.us = phi i64 [ %polly.indvar_next428.us, %polly.loop_header423.us ], [ 0, %polly.loop_header416.us ]
  %131 = add nuw nsw i64 %polly.indvar427.us, %123
  %132 = mul nuw nsw i64 %131, 480
  %133 = add nuw nsw i64 %132, %129
  %scevgep430.us = getelementptr i8, i8* %call1, i64 %133
  %scevgep430431.us = bitcast i8* %scevgep430.us to double*
  %_p_scalar_432.us = load double, double* %scevgep430431.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_436.us, %_p_scalar_432.us
  %polly.access.add.Packed_MemRef_call2275438.us = add nuw nsw i64 %131, %polly.access.mul.Packed_MemRef_call2275433.us
  %polly.access.Packed_MemRef_call2275439.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438.us
  %_p_scalar_440.us = load double, double* %polly.access.Packed_MemRef_call2275439.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_443.us, %_p_scalar_440.us
  %134 = shl i64 %131, 3
  %135 = add i64 %134, %127
  %scevgep444.us = getelementptr i8, i8* %call, i64 %135
  %scevgep444445.us = bitcast i8* %scevgep444.us to double*
  %_p_scalar_446.us = load double, double* %scevgep444445.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_446.us
  store double %p_add42.i79.us, double* %scevgep444445.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next428.us = add nuw nsw i64 %polly.indvar427.us, 1
  %exitcond868.not = icmp eq i64 %polly.indvar427.us, %smin867
  br i1 %exitcond868.not, label %polly.loop_exit425.loopexit.us, label %polly.loop_header423.us

polly.loop_exit425.loopexit.us:                   ; preds = %polly.loop_header423.us
  %polly.indvar_next420.us = add nuw nsw i64 %polly.indvar419.us, 1
  %exitcond872.not = icmp eq i64 %polly.indvar419.us, %122
  br i1 %exitcond872.not, label %polly.loop_exit418, label %polly.loop_header416.us

polly.loop_exit418:                               ; preds = %polly.loop_exit425.loopexit.us, %polly.loop_header409
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %polly.loop_cond415.not.not = icmp ult i64 %polly.indvar413, 31
  %indvars.iv.next866 = add i64 %indvars.iv865, 1
  br i1 %polly.loop_cond415.not.not, label %polly.loop_header409, label %polly.loop_exit411

polly.start449:                                   ; preds = %init_array.exit
  %malloccall451 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header535

polly.loop_header535:                             ; preds = %polly.loop_exit543, %polly.start449
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit543 ], [ 0, %polly.start449 ]
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_exit543 ], [ 1, %polly.start449 ]
  %136 = add i64 %indvar, 1
  %137 = mul nuw nsw i64 %polly.indvar538, 640
  %scevgep547 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check1297 = icmp ult i64 %136, 4
  br i1 %min.iters.check1297, label %polly.loop_header541.preheader, label %vector.ph1298

vector.ph1298:                                    ; preds = %polly.loop_header535
  %n.vec1300 = and i64 %136, -4
  br label %vector.body1296

vector.body1296:                                  ; preds = %vector.body1296, %vector.ph1298
  %index1301 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1302, %vector.body1296 ]
  %138 = shl nuw nsw i64 %index1301, 3
  %139 = getelementptr i8, i8* %scevgep547, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !84, !noalias !86
  %141 = fmul fast <4 x double> %wide.load1305, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !84, !noalias !86
  %index.next1302 = add i64 %index1301, 4
  %143 = icmp eq i64 %index.next1302, %n.vec1300
  br i1 %143, label %middle.block1294, label %vector.body1296, !llvm.loop !90

middle.block1294:                                 ; preds = %vector.body1296
  %cmp.n1304 = icmp eq i64 %136, %n.vec1300
  br i1 %cmp.n1304, label %polly.loop_exit543, label %polly.loop_header541.preheader

polly.loop_header541.preheader:                   ; preds = %polly.loop_header535, %middle.block1294
  %polly.indvar544.ph = phi i64 [ 0, %polly.loop_header535 ], [ %n.vec1300, %middle.block1294 ]
  br label %polly.loop_header541

polly.loop_exit543:                               ; preds = %polly.loop_header541, %middle.block1294
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next539, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond909.not, label %polly.loop_header551.preheader, label %polly.loop_header535

polly.loop_header551.preheader:                   ; preds = %polly.loop_exit543
  %Packed_MemRef_call2452 = bitcast i8* %malloccall451 to double*
  br label %polly.loop_header551

polly.loop_header541:                             ; preds = %polly.loop_header541.preheader, %polly.loop_header541
  %polly.indvar544 = phi i64 [ %polly.indvar_next545, %polly.loop_header541 ], [ %polly.indvar544.ph, %polly.loop_header541.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar544, 3
  %scevgep548 = getelementptr i8, i8* %scevgep547, i64 %144
  %scevgep548549 = bitcast i8* %scevgep548 to double*
  %_p_scalar_550 = load double, double* %scevgep548549, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_550, 1.200000e+00
  store double %p_mul.i, double* %scevgep548549, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next545 = add nuw nsw i64 %polly.indvar544, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next545, %polly.indvar538
  br i1 %exitcond908.not, label %polly.loop_exit543, label %polly.loop_header541, !llvm.loop !91

polly.loop_header551:                             ; preds = %polly.loop_header551.preheader, %polly.loop_exit559
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_exit559 ], [ 0, %polly.loop_header551.preheader ]
  %polly.access.mul.Packed_MemRef_call2452 = mul nuw nsw i64 %polly.indvar554, 80
  br label %polly.loop_header557

polly.loop_exit559:                               ; preds = %polly.loop_header557
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %exitcond907.not = icmp eq i64 %polly.indvar_next555, 60
  br i1 %exitcond907.not, label %polly.loop_header573, label %polly.loop_header551

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
  %exitcond906.not = icmp eq i64 %polly.indvar_next561, 80
  br i1 %exitcond906.not, label %polly.loop_exit559, label %polly.loop_header557

polly.loop_header573:                             ; preds = %polly.loop_exit559, %polly.loop_exit581
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit581 ], [ 0, %polly.loop_exit559 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit581 ], [ 0, %polly.loop_exit559 ]
  %smin898 = call i64 @llvm.smin.i64(i64 %indvars.iv896, i64 -52)
  %145 = shl nsw i64 %polly.indvar576, 3
  %146 = add nsw i64 %smin898, 59
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit588
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next897 = add nsw i64 %indvars.iv896, -8
  %exitcond904.not = icmp eq i64 %polly.indvar_next577, 8
  br i1 %exitcond904.not, label %polly.loop_header573.1, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit588, %polly.loop_header573
  %indvars.iv890 = phi i64 [ %indvars.iv.next891, %polly.loop_exit588 ], [ 0, %polly.loop_header573 ]
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %polly.loop_exit588 ], [ 0, %polly.loop_header573 ]
  %polly.indvar582 = phi i64 [ %polly.indvar_next583, %polly.loop_exit588 ], [ 0, %polly.loop_header573 ]
  %147 = shl i64 %polly.indvar582, 2
  %polly.loop_guard589.not = icmp sgt i64 %147, 31
  br i1 %polly.loop_guard589.not, label %polly.loop_exit588, label %polly.loop_header586.preheader

polly.loop_header586.preheader:                   ; preds = %polly.loop_header579
  %148 = add i64 %indvars.iv885, %indvars.iv890
  br label %polly.loop_header586

polly.loop_exit588:                               ; preds = %polly.loop_exit595, %polly.loop_header579
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, 4
  %indvars.iv.next891 = add nsw i64 %indvars.iv890, -4
  %exitcond903.not = icmp eq i64 %polly.indvar_next583, 8
  br i1 %exitcond903.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit595
  %indvars.iv892 = phi i64 [ %148, %polly.loop_header586.preheader ], [ %indvars.iv.next893, %polly.loop_exit595 ]
  %polly.indvar590 = phi i64 [ %147, %polly.loop_header586.preheader ], [ %polly.indvar_next591, %polly.loop_exit595 ]
  %smin894 = call i64 @llvm.smin.i64(i64 %indvars.iv892, i64 3)
  %149 = sub i64 %polly.indvar590, %147
  %polly.loop_guard603995 = icmp sgt i64 %149, -1
  %150 = mul i64 %polly.indvar590, 480
  %151 = mul i64 %polly.indvar590, 640
  br i1 %polly.loop_guard603995, label %polly.loop_header593.us, label %polly.loop_exit595

polly.loop_header593.us:                          ; preds = %polly.loop_header586, %polly.loop_exit602.loopexit.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.loop_exit602.loopexit.us ], [ 0, %polly.loop_header586 ]
  %152 = add nuw nsw i64 %polly.indvar596.us, %145
  %153 = shl i64 %152, 3
  %polly.access.mul.Packed_MemRef_call2452610.us = mul nuw nsw i64 %152, 80
  %polly.access.add.Packed_MemRef_call2452611.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2452610.us, %polly.indvar590
  %polly.access.Packed_MemRef_call2452612.us = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611.us
  %_p_scalar_613.us = load double, double* %polly.access.Packed_MemRef_call2452612.us, align 8
  %154 = add i64 %153, %150
  %scevgep618.us = getelementptr i8, i8* %call1, i64 %154
  %scevgep618619.us = bitcast i8* %scevgep618.us to double*
  %_p_scalar_620.us = load double, double* %scevgep618619.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header600.us

polly.loop_header600.us:                          ; preds = %polly.loop_header593.us, %polly.loop_header600.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header600.us ], [ 0, %polly.loop_header593.us ]
  %155 = add nuw nsw i64 %polly.indvar604.us, %147
  %156 = mul nuw nsw i64 %155, 480
  %157 = add nuw nsw i64 %156, %153
  %scevgep607.us = getelementptr i8, i8* %call1, i64 %157
  %scevgep607608.us = bitcast i8* %scevgep607.us to double*
  %_p_scalar_609.us = load double, double* %scevgep607608.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_613.us, %_p_scalar_609.us
  %polly.access.add.Packed_MemRef_call2452615.us = add nuw nsw i64 %155, %polly.access.mul.Packed_MemRef_call2452610.us
  %polly.access.Packed_MemRef_call2452616.us = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615.us
  %_p_scalar_617.us = load double, double* %polly.access.Packed_MemRef_call2452616.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_620.us, %_p_scalar_617.us
  %158 = shl i64 %155, 3
  %159 = add i64 %158, %151
  %scevgep621.us = getelementptr i8, i8* %call, i64 %159
  %scevgep621622.us = bitcast i8* %scevgep621.us to double*
  %_p_scalar_623.us = load double, double* %scevgep621622.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_623.us
  store double %p_add42.i.us, double* %scevgep621622.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond895.not = icmp eq i64 %polly.indvar604.us, %smin894
  br i1 %exitcond895.not, label %polly.loop_exit602.loopexit.us, label %polly.loop_header600.us

polly.loop_exit602.loopexit.us:                   ; preds = %polly.loop_header600.us
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond899.not = icmp eq i64 %polly.indvar596.us, %146
  br i1 %exitcond899.not, label %polly.loop_exit595, label %polly.loop_header593.us

polly.loop_exit595:                               ; preds = %polly.loop_exit602.loopexit.us, %polly.loop_header586
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %polly.loop_cond592.not.not = icmp ult i64 %polly.indvar590, 31
  %indvars.iv.next893 = add i64 %indvars.iv892, 1
  br i1 %polly.loop_cond592.not.not, label %polly.loop_header586, label %polly.loop_exit588

polly.loop_header762:                             ; preds = %entry, %polly.loop_exit770
  %polly.indvar765 = phi i64 [ %polly.indvar_next766, %polly.loop_exit770 ], [ 0, %entry ]
  %160 = mul nuw nsw i64 %polly.indvar765, 640
  %161 = trunc i64 %polly.indvar765 to i32
  %broadcast.splatinsert1028 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat1029 = shufflevector <4 x i32> %broadcast.splatinsert1028, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %polly.loop_header762
  %index1020 = phi i64 [ 0, %polly.loop_header762 ], [ %index.next1021, %vector.body1018 ]
  %vec.ind1026 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header762 ], [ %vec.ind.next1027, %vector.body1018 ]
  %162 = mul <4 x i32> %vec.ind1026, %broadcast.splat1029
  %163 = add <4 x i32> %162, <i32 3, i32 3, i32 3, i32 3>
  %164 = urem <4 x i32> %163, <i32 80, i32 80, i32 80, i32 80>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %167 = shl i64 %index1020, 3
  %168 = add nuw nsw i64 %167, %160
  %169 = getelementptr i8, i8* %call, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !94, !noalias !96
  %index.next1021 = add i64 %index1020, 4
  %vec.ind.next1027 = add <4 x i32> %vec.ind1026, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next1021, 32
  br i1 %171, label %polly.loop_exit770, label %vector.body1018, !llvm.loop !99

polly.loop_exit770:                               ; preds = %vector.body1018
  %polly.indvar_next766 = add nuw nsw i64 %polly.indvar765, 1
  %exitcond929.not = icmp eq i64 %polly.indvar_next766, 32
  br i1 %exitcond929.not, label %polly.loop_header762.1, label %polly.loop_header762

polly.loop_header789:                             ; preds = %polly.loop_exit770.2.2, %polly.loop_exit797
  %polly.indvar792 = phi i64 [ %polly.indvar_next793, %polly.loop_exit797 ], [ 0, %polly.loop_exit770.2.2 ]
  %172 = mul nuw nsw i64 %polly.indvar792, 480
  %173 = trunc i64 %polly.indvar792 to i32
  %broadcast.splatinsert1142 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat1143 = shufflevector <4 x i32> %broadcast.splatinsert1142, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %polly.loop_header789
  %index1134 = phi i64 [ 0, %polly.loop_header789 ], [ %index.next1135, %vector.body1132 ]
  %vec.ind1140 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header789 ], [ %vec.ind.next1141, %vector.body1132 ]
  %174 = mul <4 x i32> %vec.ind1140, %broadcast.splat1143
  %175 = add <4 x i32> %174, <i32 2, i32 2, i32 2, i32 2>
  %176 = urem <4 x i32> %175, <i32 60, i32 60, i32 60, i32 60>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %179 = shl i64 %index1134, 3
  %180 = add i64 %179, %172
  %181 = getelementptr i8, i8* %call2, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !98, !noalias !100
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1141 = add <4 x i32> %vec.ind1140, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next1135, 32
  br i1 %183, label %polly.loop_exit797, label %vector.body1132, !llvm.loop !101

polly.loop_exit797:                               ; preds = %vector.body1132
  %polly.indvar_next793 = add nuw nsw i64 %polly.indvar792, 1
  %exitcond920.not = icmp eq i64 %polly.indvar_next793, 32
  br i1 %exitcond920.not, label %polly.loop_header789.1, label %polly.loop_header789

polly.loop_header815:                             ; preds = %polly.loop_exit797.1.2, %polly.loop_exit823
  %polly.indvar818 = phi i64 [ %polly.indvar_next819, %polly.loop_exit823 ], [ 0, %polly.loop_exit797.1.2 ]
  %184 = mul nuw nsw i64 %polly.indvar818, 480
  %185 = trunc i64 %polly.indvar818 to i32
  %broadcast.splatinsert1220 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1221 = shufflevector <4 x i32> %broadcast.splatinsert1220, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %polly.loop_header815
  %index1212 = phi i64 [ 0, %polly.loop_header815 ], [ %index.next1213, %vector.body1210 ]
  %vec.ind1218 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header815 ], [ %vec.ind.next1219, %vector.body1210 ]
  %186 = mul <4 x i32> %vec.ind1218, %broadcast.splat1221
  %187 = add <4 x i32> %186, <i32 1, i32 1, i32 1, i32 1>
  %188 = urem <4 x i32> %187, <i32 80, i32 80, i32 80, i32 80>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %191 = shl i64 %index1212, 3
  %192 = add i64 %191, %184
  %193 = getelementptr i8, i8* %call1, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %190, <4 x double>* %194, align 8, !alias.scope !97, !noalias !102
  %index.next1213 = add i64 %index1212, 4
  %vec.ind.next1219 = add <4 x i32> %vec.ind1218, <i32 4, i32 4, i32 4, i32 4>
  %195 = icmp eq i64 %index.next1213, 32
  br i1 %195, label %polly.loop_exit823, label %vector.body1210, !llvm.loop !103

polly.loop_exit823:                               ; preds = %vector.body1210
  %polly.indvar_next819 = add nuw nsw i64 %polly.indvar818, 1
  %exitcond914.not = icmp eq i64 %polly.indvar_next819, 32
  br i1 %exitcond914.not, label %polly.loop_header815.1, label %polly.loop_header815

polly.loop_header221.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv843.1 = phi i64 [ %indvars.iv.next844.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %smin845.1 = call i64 @llvm.smin.i64(i64 %indvars.iv843.1, i64 -52)
  %196 = shl nsw i64 %polly.indvar224.1, 3
  %197 = add nsw i64 %smin845.1, 59
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header221.1
  %indvars.iv839.1 = phi i64 [ %indvars.iv.next840.1, %polly.loop_exit235.1 ], [ 32, %polly.loop_header221.1 ]
  %indvars.iv835.1 = phi i64 [ %indvars.iv.next836.1, %polly.loop_exit235.1 ], [ -32, %polly.loop_header221.1 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_header221.1 ]
  %198 = shl nsw i64 %polly.indvar230.1, 2
  %199 = icmp ugt i64 %198, 32
  %200 = select i1 %199, i64 %198, i64 32
  %polly.loop_guard.not.1 = icmp sgt i64 %200, 63
  br i1 %polly.loop_guard.not.1, label %polly.loop_exit235.1, label %polly.loop_header233.preheader.1

polly.loop_header233.preheader.1:                 ; preds = %polly.loop_header227.1
  %201 = add nsw i64 %200, -32
  %smax.1 = call i64 @llvm.smax.i64(i64 %indvars.iv835.1, i64 0)
  %202 = add i64 %smax.1, %indvars.iv839.1
  %203 = sub nsw i64 32, %198
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header233.preheader.1
  %indvars.iv841.1 = phi i64 [ %202, %polly.loop_header233.preheader.1 ], [ %indvars.iv.next842.1, %polly.loop_exit241.1 ]
  %polly.indvar236.1 = phi i64 [ %201, %polly.loop_header233.preheader.1 ], [ %polly.indvar_next237.1, %polly.loop_exit241.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv841.1, i64 3)
  %204 = add nsw i64 %polly.indvar236.1, %203
  %polly.loop_guard249.1990 = icmp sgt i64 %204, -1
  %205 = add nuw nsw i64 %polly.indvar236.1, 32
  %206 = mul i64 %205, 480
  %207 = mul i64 %205, 640
  br i1 %polly.loop_guard249.1990, label %polly.loop_header239.us.1, label %polly.loop_exit241.1

polly.loop_header239.us.1:                        ; preds = %polly.loop_header233.1, %polly.loop_exit248.loopexit.us.1
  %polly.indvar242.us.1 = phi i64 [ %polly.indvar_next243.us.1, %polly.loop_exit248.loopexit.us.1 ], [ 0, %polly.loop_header233.1 ]
  %208 = add nuw nsw i64 %polly.indvar242.us.1, %196
  %209 = shl i64 %208, 3
  %polly.access.mul.Packed_MemRef_call2256.us.1 = mul nuw nsw i64 %208, 80
  %polly.access.add.Packed_MemRef_call2257.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us.1, %205
  %polly.access.Packed_MemRef_call2258.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us.1
  %_p_scalar_259.us.1 = load double, double* %polly.access.Packed_MemRef_call2258.us.1, align 8
  %210 = add i64 %209, %206
  %scevgep264.us.1 = getelementptr i8, i8* %call1, i64 %210
  %scevgep264265.us.1 = bitcast i8* %scevgep264.us.1 to double*
  %_p_scalar_266.us.1 = load double, double* %scevgep264265.us.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header246.us.1

polly.loop_header246.us.1:                        ; preds = %polly.loop_header246.us.1, %polly.loop_header239.us.1
  %polly.indvar250.us.1 = phi i64 [ %polly.indvar_next251.us.1, %polly.loop_header246.us.1 ], [ 0, %polly.loop_header239.us.1 ]
  %211 = add nuw nsw i64 %polly.indvar250.us.1, %198
  %212 = mul nuw nsw i64 %211, 480
  %213 = add nuw nsw i64 %212, %209
  %scevgep253.us.1 = getelementptr i8, i8* %call1, i64 %213
  %scevgep253254.us.1 = bitcast i8* %scevgep253.us.1 to double*
  %_p_scalar_255.us.1 = load double, double* %scevgep253254.us.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_259.us.1, %_p_scalar_255.us.1
  %polly.access.add.Packed_MemRef_call2261.us.1 = add nuw nsw i64 %211, %polly.access.mul.Packed_MemRef_call2256.us.1
  %polly.access.Packed_MemRef_call2262.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us.1
  %_p_scalar_263.us.1 = load double, double* %polly.access.Packed_MemRef_call2262.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_266.us.1, %_p_scalar_263.us.1
  %214 = shl i64 %211, 3
  %215 = add i64 %214, %207
  %scevgep267.us.1 = getelementptr i8, i8* %call, i64 %215
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
  %exitcond846.1.not = icmp eq i64 %polly.indvar242.us.1, %197
  br i1 %exitcond846.1.not, label %polly.loop_exit241.1, label %polly.loop_header239.us.1

polly.loop_exit241.1:                             ; preds = %polly.loop_exit248.loopexit.us.1, %polly.loop_header233.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %polly.loop_cond238.not.not.1 = icmp ult i64 %polly.indvar236.1, 31
  %indvars.iv.next842.1 = add i64 %indvars.iv841.1, 1
  br i1 %polly.loop_cond238.not.not.1, label %polly.loop_header233.1, label %polly.loop_exit235.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next836.1 = add nsw i64 %indvars.iv835.1, 4
  %indvars.iv.next840.1 = add nsw i64 %indvars.iv839.1, -4
  %exitcond849.1.not = icmp eq i64 %polly.indvar_next231.1, 16
  br i1 %exitcond849.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %indvars.iv.next844.1 = add nsw i64 %indvars.iv843.1, -8
  %exitcond850.1.not = icmp eq i64 %polly.indvar_next225.1, 8
  br i1 %exitcond850.1.not, label %polly.loop_header221.2, label %polly.loop_header221.1

polly.loop_header221.2:                           ; preds = %polly.loop_exit229.1, %polly.loop_exit229.2
  %indvars.iv843.2 = phi i64 [ %indvars.iv.next844.2, %polly.loop_exit229.2 ], [ 0, %polly.loop_exit229.1 ]
  %polly.indvar224.2 = phi i64 [ %polly.indvar_next225.2, %polly.loop_exit229.2 ], [ 0, %polly.loop_exit229.1 ]
  %smin845.2 = call i64 @llvm.smin.i64(i64 %indvars.iv843.2, i64 -52)
  %216 = shl nsw i64 %polly.indvar224.2, 3
  %217 = add nsw i64 %smin845.2, 59
  br label %polly.loop_header227.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.2, %polly.loop_header221.2
  %indvars.iv839.2 = phi i64 [ %indvars.iv.next840.2, %polly.loop_exit235.2 ], [ 64, %polly.loop_header221.2 ]
  %indvars.iv835.2 = phi i64 [ %indvars.iv.next836.2, %polly.loop_exit235.2 ], [ -64, %polly.loop_header221.2 ]
  %polly.indvar230.2 = phi i64 [ %polly.indvar_next231.2, %polly.loop_exit235.2 ], [ 0, %polly.loop_header221.2 ]
  %218 = shl nsw i64 %polly.indvar230.2, 2
  %219 = icmp ugt i64 %218, 64
  %220 = select i1 %219, i64 %218, i64 64
  %polly.loop_guard.not.2 = icmp sgt i64 %220, 79
  br i1 %polly.loop_guard.not.2, label %polly.loop_exit235.2, label %polly.loop_header233.preheader.2

polly.loop_header233.preheader.2:                 ; preds = %polly.loop_header227.2
  %221 = add nsw i64 %220, -64
  %smax.2 = call i64 @llvm.smax.i64(i64 %indvars.iv835.2, i64 0)
  %222 = add i64 %smax.2, %indvars.iv839.2
  %223 = sub nsw i64 64, %218
  br label %polly.loop_header233.2

polly.loop_header233.2:                           ; preds = %polly.loop_exit241.2, %polly.loop_header233.preheader.2
  %indvars.iv841.2 = phi i64 [ %222, %polly.loop_header233.preheader.2 ], [ %indvars.iv.next842.2, %polly.loop_exit241.2 ]
  %polly.indvar236.2 = phi i64 [ %221, %polly.loop_header233.preheader.2 ], [ %polly.indvar_next237.2, %polly.loop_exit241.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv841.2, i64 3)
  %224 = add nsw i64 %polly.indvar236.2, %223
  %polly.loop_guard249.2991 = icmp sgt i64 %224, -1
  %225 = add nuw nsw i64 %polly.indvar236.2, 64
  %226 = mul i64 %225, 480
  %227 = mul i64 %225, 640
  br i1 %polly.loop_guard249.2991, label %polly.loop_header239.us.2, label %polly.loop_exit241.2

polly.loop_header239.us.2:                        ; preds = %polly.loop_header233.2, %polly.loop_exit248.loopexit.us.2
  %polly.indvar242.us.2 = phi i64 [ %polly.indvar_next243.us.2, %polly.loop_exit248.loopexit.us.2 ], [ 0, %polly.loop_header233.2 ]
  %228 = add nuw nsw i64 %polly.indvar242.us.2, %216
  %229 = shl i64 %228, 3
  %polly.access.mul.Packed_MemRef_call2256.us.2 = mul nuw nsw i64 %228, 80
  %polly.access.add.Packed_MemRef_call2257.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2256.us.2, %225
  %polly.access.Packed_MemRef_call2258.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us.2
  %_p_scalar_259.us.2 = load double, double* %polly.access.Packed_MemRef_call2258.us.2, align 8
  %230 = add i64 %229, %226
  %scevgep264.us.2 = getelementptr i8, i8* %call1, i64 %230
  %scevgep264265.us.2 = bitcast i8* %scevgep264.us.2 to double*
  %_p_scalar_266.us.2 = load double, double* %scevgep264265.us.2, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header246.us.2

polly.loop_header246.us.2:                        ; preds = %polly.loop_header246.us.2, %polly.loop_header239.us.2
  %polly.indvar250.us.2 = phi i64 [ %polly.indvar_next251.us.2, %polly.loop_header246.us.2 ], [ 0, %polly.loop_header239.us.2 ]
  %231 = add nuw nsw i64 %polly.indvar250.us.2, %218
  %232 = mul nuw nsw i64 %231, 480
  %233 = add nuw nsw i64 %232, %229
  %scevgep253.us.2 = getelementptr i8, i8* %call1, i64 %233
  %scevgep253254.us.2 = bitcast i8* %scevgep253.us.2 to double*
  %_p_scalar_255.us.2 = load double, double* %scevgep253254.us.2, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_259.us.2, %_p_scalar_255.us.2
  %polly.access.add.Packed_MemRef_call2261.us.2 = add nuw nsw i64 %231, %polly.access.mul.Packed_MemRef_call2256.us.2
  %polly.access.Packed_MemRef_call2262.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us.2
  %_p_scalar_263.us.2 = load double, double* %polly.access.Packed_MemRef_call2262.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_266.us.2, %_p_scalar_263.us.2
  %234 = shl i64 %231, 3
  %235 = add i64 %234, %227
  %scevgep267.us.2 = getelementptr i8, i8* %call, i64 %235
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
  %exitcond846.2.not = icmp eq i64 %polly.indvar242.us.2, %217
  br i1 %exitcond846.2.not, label %polly.loop_exit241.2, label %polly.loop_header239.us.2

polly.loop_exit241.2:                             ; preds = %polly.loop_exit248.loopexit.us.2, %polly.loop_header233.2
  %polly.indvar_next237.2 = add nuw nsw i64 %polly.indvar236.2, 1
  %polly.loop_cond238.not.not.2 = icmp ult i64 %polly.indvar236.2, 15
  %indvars.iv.next842.2 = add i64 %indvars.iv841.2, 1
  br i1 %polly.loop_cond238.not.not.2, label %polly.loop_header233.2, label %polly.loop_exit235.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit241.2, %polly.loop_header227.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %indvars.iv.next836.2 = add nsw i64 %indvars.iv835.2, 4
  %indvars.iv.next840.2 = add nsw i64 %indvars.iv839.2, -4
  %exitcond849.2.not = icmp eq i64 %polly.indvar_next231.2, 20
  br i1 %exitcond849.2.not, label %polly.loop_exit229.2, label %polly.loop_header227.2

polly.loop_exit229.2:                             ; preds = %polly.loop_exit235.2
  %polly.indvar_next225.2 = add nuw nsw i64 %polly.indvar224.2, 1
  %indvars.iv.next844.2 = add nsw i64 %indvars.iv843.2, -8
  %exitcond850.2.not = icmp eq i64 %polly.indvar_next225.2, 8
  br i1 %exitcond850.2.not, label %polly.loop_exit223.2, label %polly.loop_header221.2

polly.loop_exit223.2:                             ; preds = %polly.loop_exit229.2
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header396.1:                           ; preds = %polly.loop_exit404, %polly.loop_exit404.1
  %indvars.iv869.1 = phi i64 [ %indvars.iv.next870.1, %polly.loop_exit404.1 ], [ 0, %polly.loop_exit404 ]
  %polly.indvar399.1 = phi i64 [ %polly.indvar_next400.1, %polly.loop_exit404.1 ], [ 0, %polly.loop_exit404 ]
  %smin871.1 = call i64 @llvm.smin.i64(i64 %indvars.iv869.1, i64 -52)
  %236 = shl nsw i64 %polly.indvar399.1, 3
  %237 = add nsw i64 %smin871.1, 59
  br label %polly.loop_header402.1

polly.loop_header402.1:                           ; preds = %polly.loop_exit411.1, %polly.loop_header396.1
  %indvars.iv863.1 = phi i64 [ %indvars.iv.next864.1, %polly.loop_exit411.1 ], [ 32, %polly.loop_header396.1 ]
  %indvars.iv858.1 = phi i64 [ %indvars.iv.next859.1, %polly.loop_exit411.1 ], [ -32, %polly.loop_header396.1 ]
  %polly.indvar405.1 = phi i64 [ %polly.indvar_next406.1, %polly.loop_exit411.1 ], [ 0, %polly.loop_header396.1 ]
  %238 = shl nsw i64 %polly.indvar405.1, 2
  %239 = icmp ugt i64 %238, 32
  %240 = select i1 %239, i64 %238, i64 32
  %polly.loop_guard412.not.1 = icmp sgt i64 %240, 63
  br i1 %polly.loop_guard412.not.1, label %polly.loop_exit411.1, label %polly.loop_header409.preheader.1

polly.loop_header409.preheader.1:                 ; preds = %polly.loop_header402.1
  %241 = add nsw i64 %240, -32
  %smax860.1 = call i64 @llvm.smax.i64(i64 %indvars.iv858.1, i64 0)
  %242 = add i64 %smax860.1, %indvars.iv863.1
  %243 = sub nsw i64 32, %238
  br label %polly.loop_header409.1

polly.loop_header409.1:                           ; preds = %polly.loop_exit418.1, %polly.loop_header409.preheader.1
  %indvars.iv865.1 = phi i64 [ %242, %polly.loop_header409.preheader.1 ], [ %indvars.iv.next866.1, %polly.loop_exit418.1 ]
  %polly.indvar413.1 = phi i64 [ %241, %polly.loop_header409.preheader.1 ], [ %polly.indvar_next414.1, %polly.loop_exit418.1 ]
  %smin867.1 = call i64 @llvm.smin.i64(i64 %indvars.iv865.1, i64 3)
  %244 = add nsw i64 %polly.indvar413.1, %243
  %polly.loop_guard426.1993 = icmp sgt i64 %244, -1
  %245 = add nuw nsw i64 %polly.indvar413.1, 32
  %246 = mul i64 %245, 480
  %247 = mul i64 %245, 640
  br i1 %polly.loop_guard426.1993, label %polly.loop_header416.us.1, label %polly.loop_exit418.1

polly.loop_header416.us.1:                        ; preds = %polly.loop_header409.1, %polly.loop_exit425.loopexit.us.1
  %polly.indvar419.us.1 = phi i64 [ %polly.indvar_next420.us.1, %polly.loop_exit425.loopexit.us.1 ], [ 0, %polly.loop_header409.1 ]
  %248 = add nuw nsw i64 %polly.indvar419.us.1, %236
  %249 = shl i64 %248, 3
  %polly.access.mul.Packed_MemRef_call2275433.us.1 = mul nuw nsw i64 %248, 80
  %polly.access.add.Packed_MemRef_call2275434.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275433.us.1, %245
  %polly.access.Packed_MemRef_call2275435.us.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434.us.1
  %_p_scalar_436.us.1 = load double, double* %polly.access.Packed_MemRef_call2275435.us.1, align 8
  %250 = add i64 %249, %246
  %scevgep441.us.1 = getelementptr i8, i8* %call1, i64 %250
  %scevgep441442.us.1 = bitcast i8* %scevgep441.us.1 to double*
  %_p_scalar_443.us.1 = load double, double* %scevgep441442.us.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header423.us.1

polly.loop_header423.us.1:                        ; preds = %polly.loop_header423.us.1, %polly.loop_header416.us.1
  %polly.indvar427.us.1 = phi i64 [ %polly.indvar_next428.us.1, %polly.loop_header423.us.1 ], [ 0, %polly.loop_header416.us.1 ]
  %251 = add nuw nsw i64 %polly.indvar427.us.1, %238
  %252 = mul nuw nsw i64 %251, 480
  %253 = add nuw nsw i64 %252, %249
  %scevgep430.us.1 = getelementptr i8, i8* %call1, i64 %253
  %scevgep430431.us.1 = bitcast i8* %scevgep430.us.1 to double*
  %_p_scalar_432.us.1 = load double, double* %scevgep430431.us.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_436.us.1, %_p_scalar_432.us.1
  %polly.access.add.Packed_MemRef_call2275438.us.1 = add nuw nsw i64 %251, %polly.access.mul.Packed_MemRef_call2275433.us.1
  %polly.access.Packed_MemRef_call2275439.us.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438.us.1
  %_p_scalar_440.us.1 = load double, double* %polly.access.Packed_MemRef_call2275439.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_443.us.1, %_p_scalar_440.us.1
  %254 = shl i64 %251, 3
  %255 = add i64 %254, %247
  %scevgep444.us.1 = getelementptr i8, i8* %call, i64 %255
  %scevgep444445.us.1 = bitcast i8* %scevgep444.us.1 to double*
  %_p_scalar_446.us.1 = load double, double* %scevgep444445.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_446.us.1
  store double %p_add42.i79.us.1, double* %scevgep444445.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next428.us.1 = add nuw nsw i64 %polly.indvar427.us.1, 1
  %exitcond868.1.not = icmp eq i64 %polly.indvar427.us.1, %smin867.1
  br i1 %exitcond868.1.not, label %polly.loop_exit425.loopexit.us.1, label %polly.loop_header423.us.1

polly.loop_exit425.loopexit.us.1:                 ; preds = %polly.loop_header423.us.1
  %polly.indvar_next420.us.1 = add nuw nsw i64 %polly.indvar419.us.1, 1
  %exitcond872.1.not = icmp eq i64 %polly.indvar419.us.1, %237
  br i1 %exitcond872.1.not, label %polly.loop_exit418.1, label %polly.loop_header416.us.1

polly.loop_exit418.1:                             ; preds = %polly.loop_exit425.loopexit.us.1, %polly.loop_header409.1
  %polly.indvar_next414.1 = add nuw nsw i64 %polly.indvar413.1, 1
  %polly.loop_cond415.not.not.1 = icmp ult i64 %polly.indvar413.1, 31
  %indvars.iv.next866.1 = add i64 %indvars.iv865.1, 1
  br i1 %polly.loop_cond415.not.not.1, label %polly.loop_header409.1, label %polly.loop_exit411.1

polly.loop_exit411.1:                             ; preds = %polly.loop_exit418.1, %polly.loop_header402.1
  %polly.indvar_next406.1 = add nuw nsw i64 %polly.indvar405.1, 1
  %indvars.iv.next859.1 = add nsw i64 %indvars.iv858.1, 4
  %indvars.iv.next864.1 = add nsw i64 %indvars.iv863.1, -4
  %exitcond876.1.not = icmp eq i64 %polly.indvar_next406.1, 16
  br i1 %exitcond876.1.not, label %polly.loop_exit404.1, label %polly.loop_header402.1

polly.loop_exit404.1:                             ; preds = %polly.loop_exit411.1
  %polly.indvar_next400.1 = add nuw nsw i64 %polly.indvar399.1, 1
  %indvars.iv.next870.1 = add nsw i64 %indvars.iv869.1, -8
  %exitcond877.1.not = icmp eq i64 %polly.indvar_next400.1, 8
  br i1 %exitcond877.1.not, label %polly.loop_header396.2, label %polly.loop_header396.1

polly.loop_header396.2:                           ; preds = %polly.loop_exit404.1, %polly.loop_exit404.2
  %indvars.iv869.2 = phi i64 [ %indvars.iv.next870.2, %polly.loop_exit404.2 ], [ 0, %polly.loop_exit404.1 ]
  %polly.indvar399.2 = phi i64 [ %polly.indvar_next400.2, %polly.loop_exit404.2 ], [ 0, %polly.loop_exit404.1 ]
  %smin871.2 = call i64 @llvm.smin.i64(i64 %indvars.iv869.2, i64 -52)
  %256 = shl nsw i64 %polly.indvar399.2, 3
  %257 = add nsw i64 %smin871.2, 59
  br label %polly.loop_header402.2

polly.loop_header402.2:                           ; preds = %polly.loop_exit411.2, %polly.loop_header396.2
  %indvars.iv863.2 = phi i64 [ %indvars.iv.next864.2, %polly.loop_exit411.2 ], [ 64, %polly.loop_header396.2 ]
  %indvars.iv858.2 = phi i64 [ %indvars.iv.next859.2, %polly.loop_exit411.2 ], [ -64, %polly.loop_header396.2 ]
  %polly.indvar405.2 = phi i64 [ %polly.indvar_next406.2, %polly.loop_exit411.2 ], [ 0, %polly.loop_header396.2 ]
  %258 = shl nsw i64 %polly.indvar405.2, 2
  %259 = icmp ugt i64 %258, 64
  %260 = select i1 %259, i64 %258, i64 64
  %polly.loop_guard412.not.2 = icmp sgt i64 %260, 79
  br i1 %polly.loop_guard412.not.2, label %polly.loop_exit411.2, label %polly.loop_header409.preheader.2

polly.loop_header409.preheader.2:                 ; preds = %polly.loop_header402.2
  %261 = add nsw i64 %260, -64
  %smax860.2 = call i64 @llvm.smax.i64(i64 %indvars.iv858.2, i64 0)
  %262 = add i64 %smax860.2, %indvars.iv863.2
  %263 = sub nsw i64 64, %258
  br label %polly.loop_header409.2

polly.loop_header409.2:                           ; preds = %polly.loop_exit418.2, %polly.loop_header409.preheader.2
  %indvars.iv865.2 = phi i64 [ %262, %polly.loop_header409.preheader.2 ], [ %indvars.iv.next866.2, %polly.loop_exit418.2 ]
  %polly.indvar413.2 = phi i64 [ %261, %polly.loop_header409.preheader.2 ], [ %polly.indvar_next414.2, %polly.loop_exit418.2 ]
  %smin867.2 = call i64 @llvm.smin.i64(i64 %indvars.iv865.2, i64 3)
  %264 = add nsw i64 %polly.indvar413.2, %263
  %polly.loop_guard426.2994 = icmp sgt i64 %264, -1
  %265 = add nuw nsw i64 %polly.indvar413.2, 64
  %266 = mul i64 %265, 480
  %267 = mul i64 %265, 640
  br i1 %polly.loop_guard426.2994, label %polly.loop_header416.us.2, label %polly.loop_exit418.2

polly.loop_header416.us.2:                        ; preds = %polly.loop_header409.2, %polly.loop_exit425.loopexit.us.2
  %polly.indvar419.us.2 = phi i64 [ %polly.indvar_next420.us.2, %polly.loop_exit425.loopexit.us.2 ], [ 0, %polly.loop_header409.2 ]
  %268 = add nuw nsw i64 %polly.indvar419.us.2, %256
  %269 = shl i64 %268, 3
  %polly.access.mul.Packed_MemRef_call2275433.us.2 = mul nuw nsw i64 %268, 80
  %polly.access.add.Packed_MemRef_call2275434.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2275433.us.2, %265
  %polly.access.Packed_MemRef_call2275435.us.2 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275434.us.2
  %_p_scalar_436.us.2 = load double, double* %polly.access.Packed_MemRef_call2275435.us.2, align 8
  %270 = add i64 %269, %266
  %scevgep441.us.2 = getelementptr i8, i8* %call1, i64 %270
  %scevgep441442.us.2 = bitcast i8* %scevgep441.us.2 to double*
  %_p_scalar_443.us.2 = load double, double* %scevgep441442.us.2, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header423.us.2

polly.loop_header423.us.2:                        ; preds = %polly.loop_header423.us.2, %polly.loop_header416.us.2
  %polly.indvar427.us.2 = phi i64 [ %polly.indvar_next428.us.2, %polly.loop_header423.us.2 ], [ 0, %polly.loop_header416.us.2 ]
  %271 = add nuw nsw i64 %polly.indvar427.us.2, %258
  %272 = mul nuw nsw i64 %271, 480
  %273 = add nuw nsw i64 %272, %269
  %scevgep430.us.2 = getelementptr i8, i8* %call1, i64 %273
  %scevgep430431.us.2 = bitcast i8* %scevgep430.us.2 to double*
  %_p_scalar_432.us.2 = load double, double* %scevgep430431.us.2, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_436.us.2, %_p_scalar_432.us.2
  %polly.access.add.Packed_MemRef_call2275438.us.2 = add nuw nsw i64 %271, %polly.access.mul.Packed_MemRef_call2275433.us.2
  %polly.access.Packed_MemRef_call2275439.us.2 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275438.us.2
  %_p_scalar_440.us.2 = load double, double* %polly.access.Packed_MemRef_call2275439.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_443.us.2, %_p_scalar_440.us.2
  %274 = shl i64 %271, 3
  %275 = add i64 %274, %267
  %scevgep444.us.2 = getelementptr i8, i8* %call, i64 %275
  %scevgep444445.us.2 = bitcast i8* %scevgep444.us.2 to double*
  %_p_scalar_446.us.2 = load double, double* %scevgep444445.us.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_446.us.2
  store double %p_add42.i79.us.2, double* %scevgep444445.us.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next428.us.2 = add nuw nsw i64 %polly.indvar427.us.2, 1
  %exitcond868.2.not = icmp eq i64 %polly.indvar427.us.2, %smin867.2
  br i1 %exitcond868.2.not, label %polly.loop_exit425.loopexit.us.2, label %polly.loop_header423.us.2

polly.loop_exit425.loopexit.us.2:                 ; preds = %polly.loop_header423.us.2
  %polly.indvar_next420.us.2 = add nuw nsw i64 %polly.indvar419.us.2, 1
  %exitcond872.2.not = icmp eq i64 %polly.indvar419.us.2, %257
  br i1 %exitcond872.2.not, label %polly.loop_exit418.2, label %polly.loop_header416.us.2

polly.loop_exit418.2:                             ; preds = %polly.loop_exit425.loopexit.us.2, %polly.loop_header409.2
  %polly.indvar_next414.2 = add nuw nsw i64 %polly.indvar413.2, 1
  %polly.loop_cond415.not.not.2 = icmp ult i64 %polly.indvar413.2, 15
  %indvars.iv.next866.2 = add i64 %indvars.iv865.2, 1
  br i1 %polly.loop_cond415.not.not.2, label %polly.loop_header409.2, label %polly.loop_exit411.2

polly.loop_exit411.2:                             ; preds = %polly.loop_exit418.2, %polly.loop_header402.2
  %polly.indvar_next406.2 = add nuw nsw i64 %polly.indvar405.2, 1
  %indvars.iv.next859.2 = add nsw i64 %indvars.iv858.2, 4
  %indvars.iv.next864.2 = add nsw i64 %indvars.iv863.2, -4
  %exitcond876.2.not = icmp eq i64 %polly.indvar_next406.2, 20
  br i1 %exitcond876.2.not, label %polly.loop_exit404.2, label %polly.loop_header402.2

polly.loop_exit404.2:                             ; preds = %polly.loop_exit411.2
  %polly.indvar_next400.2 = add nuw nsw i64 %polly.indvar399.2, 1
  %indvars.iv.next870.2 = add nsw i64 %indvars.iv869.2, -8
  %exitcond877.2.not = icmp eq i64 %polly.indvar_next400.2, 8
  br i1 %exitcond877.2.not, label %polly.loop_exit398.2, label %polly.loop_header396.2

polly.loop_exit398.2:                             ; preds = %polly.loop_exit404.2
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header573.1:                           ; preds = %polly.loop_exit581, %polly.loop_exit581.1
  %indvars.iv896.1 = phi i64 [ %indvars.iv.next897.1, %polly.loop_exit581.1 ], [ 0, %polly.loop_exit581 ]
  %polly.indvar576.1 = phi i64 [ %polly.indvar_next577.1, %polly.loop_exit581.1 ], [ 0, %polly.loop_exit581 ]
  %smin898.1 = call i64 @llvm.smin.i64(i64 %indvars.iv896.1, i64 -52)
  %276 = shl nsw i64 %polly.indvar576.1, 3
  %277 = add nsw i64 %smin898.1, 59
  br label %polly.loop_header579.1

polly.loop_header579.1:                           ; preds = %polly.loop_exit588.1, %polly.loop_header573.1
  %indvars.iv890.1 = phi i64 [ %indvars.iv.next891.1, %polly.loop_exit588.1 ], [ 32, %polly.loop_header573.1 ]
  %indvars.iv885.1 = phi i64 [ %indvars.iv.next886.1, %polly.loop_exit588.1 ], [ -32, %polly.loop_header573.1 ]
  %polly.indvar582.1 = phi i64 [ %polly.indvar_next583.1, %polly.loop_exit588.1 ], [ 0, %polly.loop_header573.1 ]
  %278 = shl nsw i64 %polly.indvar582.1, 2
  %279 = icmp ugt i64 %278, 32
  %280 = select i1 %279, i64 %278, i64 32
  %polly.loop_guard589.not.1 = icmp sgt i64 %280, 63
  br i1 %polly.loop_guard589.not.1, label %polly.loop_exit588.1, label %polly.loop_header586.preheader.1

polly.loop_header586.preheader.1:                 ; preds = %polly.loop_header579.1
  %281 = add nsw i64 %280, -32
  %smax887.1 = call i64 @llvm.smax.i64(i64 %indvars.iv885.1, i64 0)
  %282 = add i64 %smax887.1, %indvars.iv890.1
  %283 = sub nsw i64 32, %278
  br label %polly.loop_header586.1

polly.loop_header586.1:                           ; preds = %polly.loop_exit595.1, %polly.loop_header586.preheader.1
  %indvars.iv892.1 = phi i64 [ %282, %polly.loop_header586.preheader.1 ], [ %indvars.iv.next893.1, %polly.loop_exit595.1 ]
  %polly.indvar590.1 = phi i64 [ %281, %polly.loop_header586.preheader.1 ], [ %polly.indvar_next591.1, %polly.loop_exit595.1 ]
  %smin894.1 = call i64 @llvm.smin.i64(i64 %indvars.iv892.1, i64 3)
  %284 = add nsw i64 %polly.indvar590.1, %283
  %polly.loop_guard603.1996 = icmp sgt i64 %284, -1
  %285 = add nuw nsw i64 %polly.indvar590.1, 32
  %286 = mul i64 %285, 480
  %287 = mul i64 %285, 640
  br i1 %polly.loop_guard603.1996, label %polly.loop_header593.us.1, label %polly.loop_exit595.1

polly.loop_header593.us.1:                        ; preds = %polly.loop_header586.1, %polly.loop_exit602.loopexit.us.1
  %polly.indvar596.us.1 = phi i64 [ %polly.indvar_next597.us.1, %polly.loop_exit602.loopexit.us.1 ], [ 0, %polly.loop_header586.1 ]
  %288 = add nuw nsw i64 %polly.indvar596.us.1, %276
  %289 = shl i64 %288, 3
  %polly.access.mul.Packed_MemRef_call2452610.us.1 = mul nuw nsw i64 %288, 80
  %polly.access.add.Packed_MemRef_call2452611.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2452610.us.1, %285
  %polly.access.Packed_MemRef_call2452612.us.1 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611.us.1
  %_p_scalar_613.us.1 = load double, double* %polly.access.Packed_MemRef_call2452612.us.1, align 8
  %290 = add i64 %289, %286
  %scevgep618.us.1 = getelementptr i8, i8* %call1, i64 %290
  %scevgep618619.us.1 = bitcast i8* %scevgep618.us.1 to double*
  %_p_scalar_620.us.1 = load double, double* %scevgep618619.us.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header600.us.1

polly.loop_header600.us.1:                        ; preds = %polly.loop_header600.us.1, %polly.loop_header593.us.1
  %polly.indvar604.us.1 = phi i64 [ %polly.indvar_next605.us.1, %polly.loop_header600.us.1 ], [ 0, %polly.loop_header593.us.1 ]
  %291 = add nuw nsw i64 %polly.indvar604.us.1, %278
  %292 = mul nuw nsw i64 %291, 480
  %293 = add nuw nsw i64 %292, %289
  %scevgep607.us.1 = getelementptr i8, i8* %call1, i64 %293
  %scevgep607608.us.1 = bitcast i8* %scevgep607.us.1 to double*
  %_p_scalar_609.us.1 = load double, double* %scevgep607608.us.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_613.us.1, %_p_scalar_609.us.1
  %polly.access.add.Packed_MemRef_call2452615.us.1 = add nuw nsw i64 %291, %polly.access.mul.Packed_MemRef_call2452610.us.1
  %polly.access.Packed_MemRef_call2452616.us.1 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615.us.1
  %_p_scalar_617.us.1 = load double, double* %polly.access.Packed_MemRef_call2452616.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_620.us.1, %_p_scalar_617.us.1
  %294 = shl i64 %291, 3
  %295 = add i64 %294, %287
  %scevgep621.us.1 = getelementptr i8, i8* %call, i64 %295
  %scevgep621622.us.1 = bitcast i8* %scevgep621.us.1 to double*
  %_p_scalar_623.us.1 = load double, double* %scevgep621622.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_623.us.1
  store double %p_add42.i.us.1, double* %scevgep621622.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next605.us.1 = add nuw nsw i64 %polly.indvar604.us.1, 1
  %exitcond895.1.not = icmp eq i64 %polly.indvar604.us.1, %smin894.1
  br i1 %exitcond895.1.not, label %polly.loop_exit602.loopexit.us.1, label %polly.loop_header600.us.1

polly.loop_exit602.loopexit.us.1:                 ; preds = %polly.loop_header600.us.1
  %polly.indvar_next597.us.1 = add nuw nsw i64 %polly.indvar596.us.1, 1
  %exitcond899.1.not = icmp eq i64 %polly.indvar596.us.1, %277
  br i1 %exitcond899.1.not, label %polly.loop_exit595.1, label %polly.loop_header593.us.1

polly.loop_exit595.1:                             ; preds = %polly.loop_exit602.loopexit.us.1, %polly.loop_header586.1
  %polly.indvar_next591.1 = add nuw nsw i64 %polly.indvar590.1, 1
  %polly.loop_cond592.not.not.1 = icmp ult i64 %polly.indvar590.1, 31
  %indvars.iv.next893.1 = add i64 %indvars.iv892.1, 1
  br i1 %polly.loop_cond592.not.not.1, label %polly.loop_header586.1, label %polly.loop_exit588.1

polly.loop_exit588.1:                             ; preds = %polly.loop_exit595.1, %polly.loop_header579.1
  %polly.indvar_next583.1 = add nuw nsw i64 %polly.indvar582.1, 1
  %indvars.iv.next886.1 = add nsw i64 %indvars.iv885.1, 4
  %indvars.iv.next891.1 = add nsw i64 %indvars.iv890.1, -4
  %exitcond903.1.not = icmp eq i64 %polly.indvar_next583.1, 16
  br i1 %exitcond903.1.not, label %polly.loop_exit581.1, label %polly.loop_header579.1

polly.loop_exit581.1:                             ; preds = %polly.loop_exit588.1
  %polly.indvar_next577.1 = add nuw nsw i64 %polly.indvar576.1, 1
  %indvars.iv.next897.1 = add nsw i64 %indvars.iv896.1, -8
  %exitcond904.1.not = icmp eq i64 %polly.indvar_next577.1, 8
  br i1 %exitcond904.1.not, label %polly.loop_header573.2, label %polly.loop_header573.1

polly.loop_header573.2:                           ; preds = %polly.loop_exit581.1, %polly.loop_exit581.2
  %indvars.iv896.2 = phi i64 [ %indvars.iv.next897.2, %polly.loop_exit581.2 ], [ 0, %polly.loop_exit581.1 ]
  %polly.indvar576.2 = phi i64 [ %polly.indvar_next577.2, %polly.loop_exit581.2 ], [ 0, %polly.loop_exit581.1 ]
  %smin898.2 = call i64 @llvm.smin.i64(i64 %indvars.iv896.2, i64 -52)
  %296 = shl nsw i64 %polly.indvar576.2, 3
  %297 = add nsw i64 %smin898.2, 59
  br label %polly.loop_header579.2

polly.loop_header579.2:                           ; preds = %polly.loop_exit588.2, %polly.loop_header573.2
  %indvars.iv890.2 = phi i64 [ %indvars.iv.next891.2, %polly.loop_exit588.2 ], [ 64, %polly.loop_header573.2 ]
  %indvars.iv885.2 = phi i64 [ %indvars.iv.next886.2, %polly.loop_exit588.2 ], [ -64, %polly.loop_header573.2 ]
  %polly.indvar582.2 = phi i64 [ %polly.indvar_next583.2, %polly.loop_exit588.2 ], [ 0, %polly.loop_header573.2 ]
  %298 = shl nsw i64 %polly.indvar582.2, 2
  %299 = icmp ugt i64 %298, 64
  %300 = select i1 %299, i64 %298, i64 64
  %polly.loop_guard589.not.2 = icmp sgt i64 %300, 79
  br i1 %polly.loop_guard589.not.2, label %polly.loop_exit588.2, label %polly.loop_header586.preheader.2

polly.loop_header586.preheader.2:                 ; preds = %polly.loop_header579.2
  %301 = add nsw i64 %300, -64
  %smax887.2 = call i64 @llvm.smax.i64(i64 %indvars.iv885.2, i64 0)
  %302 = add i64 %smax887.2, %indvars.iv890.2
  %303 = sub nsw i64 64, %298
  br label %polly.loop_header586.2

polly.loop_header586.2:                           ; preds = %polly.loop_exit595.2, %polly.loop_header586.preheader.2
  %indvars.iv892.2 = phi i64 [ %302, %polly.loop_header586.preheader.2 ], [ %indvars.iv.next893.2, %polly.loop_exit595.2 ]
  %polly.indvar590.2 = phi i64 [ %301, %polly.loop_header586.preheader.2 ], [ %polly.indvar_next591.2, %polly.loop_exit595.2 ]
  %smin894.2 = call i64 @llvm.smin.i64(i64 %indvars.iv892.2, i64 3)
  %304 = add nsw i64 %polly.indvar590.2, %303
  %polly.loop_guard603.2997 = icmp sgt i64 %304, -1
  %305 = add nuw nsw i64 %polly.indvar590.2, 64
  %306 = mul i64 %305, 480
  %307 = mul i64 %305, 640
  br i1 %polly.loop_guard603.2997, label %polly.loop_header593.us.2, label %polly.loop_exit595.2

polly.loop_header593.us.2:                        ; preds = %polly.loop_header586.2, %polly.loop_exit602.loopexit.us.2
  %polly.indvar596.us.2 = phi i64 [ %polly.indvar_next597.us.2, %polly.loop_exit602.loopexit.us.2 ], [ 0, %polly.loop_header586.2 ]
  %308 = add nuw nsw i64 %polly.indvar596.us.2, %296
  %309 = shl i64 %308, 3
  %polly.access.mul.Packed_MemRef_call2452610.us.2 = mul nuw nsw i64 %308, 80
  %polly.access.add.Packed_MemRef_call2452611.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2452610.us.2, %305
  %polly.access.Packed_MemRef_call2452612.us.2 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452611.us.2
  %_p_scalar_613.us.2 = load double, double* %polly.access.Packed_MemRef_call2452612.us.2, align 8
  %310 = add i64 %309, %306
  %scevgep618.us.2 = getelementptr i8, i8* %call1, i64 %310
  %scevgep618619.us.2 = bitcast i8* %scevgep618.us.2 to double*
  %_p_scalar_620.us.2 = load double, double* %scevgep618619.us.2, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header600.us.2

polly.loop_header600.us.2:                        ; preds = %polly.loop_header600.us.2, %polly.loop_header593.us.2
  %polly.indvar604.us.2 = phi i64 [ %polly.indvar_next605.us.2, %polly.loop_header600.us.2 ], [ 0, %polly.loop_header593.us.2 ]
  %311 = add nuw nsw i64 %polly.indvar604.us.2, %298
  %312 = mul nuw nsw i64 %311, 480
  %313 = add nuw nsw i64 %312, %309
  %scevgep607.us.2 = getelementptr i8, i8* %call1, i64 %313
  %scevgep607608.us.2 = bitcast i8* %scevgep607.us.2 to double*
  %_p_scalar_609.us.2 = load double, double* %scevgep607608.us.2, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_613.us.2, %_p_scalar_609.us.2
  %polly.access.add.Packed_MemRef_call2452615.us.2 = add nuw nsw i64 %311, %polly.access.mul.Packed_MemRef_call2452610.us.2
  %polly.access.Packed_MemRef_call2452616.us.2 = getelementptr double, double* %Packed_MemRef_call2452, i64 %polly.access.add.Packed_MemRef_call2452615.us.2
  %_p_scalar_617.us.2 = load double, double* %polly.access.Packed_MemRef_call2452616.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_620.us.2, %_p_scalar_617.us.2
  %314 = shl i64 %311, 3
  %315 = add i64 %314, %307
  %scevgep621.us.2 = getelementptr i8, i8* %call, i64 %315
  %scevgep621622.us.2 = bitcast i8* %scevgep621.us.2 to double*
  %_p_scalar_623.us.2 = load double, double* %scevgep621622.us.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_623.us.2
  store double %p_add42.i.us.2, double* %scevgep621622.us.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next605.us.2 = add nuw nsw i64 %polly.indvar604.us.2, 1
  %exitcond895.2.not = icmp eq i64 %polly.indvar604.us.2, %smin894.2
  br i1 %exitcond895.2.not, label %polly.loop_exit602.loopexit.us.2, label %polly.loop_header600.us.2

polly.loop_exit602.loopexit.us.2:                 ; preds = %polly.loop_header600.us.2
  %polly.indvar_next597.us.2 = add nuw nsw i64 %polly.indvar596.us.2, 1
  %exitcond899.2.not = icmp eq i64 %polly.indvar596.us.2, %297
  br i1 %exitcond899.2.not, label %polly.loop_exit595.2, label %polly.loop_header593.us.2

polly.loop_exit595.2:                             ; preds = %polly.loop_exit602.loopexit.us.2, %polly.loop_header586.2
  %polly.indvar_next591.2 = add nuw nsw i64 %polly.indvar590.2, 1
  %polly.loop_cond592.not.not.2 = icmp ult i64 %polly.indvar590.2, 15
  %indvars.iv.next893.2 = add i64 %indvars.iv892.2, 1
  br i1 %polly.loop_cond592.not.not.2, label %polly.loop_header586.2, label %polly.loop_exit588.2

polly.loop_exit588.2:                             ; preds = %polly.loop_exit595.2, %polly.loop_header579.2
  %polly.indvar_next583.2 = add nuw nsw i64 %polly.indvar582.2, 1
  %indvars.iv.next886.2 = add nsw i64 %indvars.iv885.2, 4
  %indvars.iv.next891.2 = add nsw i64 %indvars.iv890.2, -4
  %exitcond903.2.not = icmp eq i64 %polly.indvar_next583.2, 20
  br i1 %exitcond903.2.not, label %polly.loop_exit581.2, label %polly.loop_header579.2

polly.loop_exit581.2:                             ; preds = %polly.loop_exit588.2
  %polly.indvar_next577.2 = add nuw nsw i64 %polly.indvar576.2, 1
  %indvars.iv.next897.2 = add nsw i64 %indvars.iv896.2, -8
  %exitcond904.2.not = icmp eq i64 %polly.indvar_next577.2, 8
  br i1 %exitcond904.2.not, label %polly.loop_exit575.2, label %polly.loop_header573.2

polly.loop_exit575.2:                             ; preds = %polly.loop_exit581.2
  tail call void @free(i8* %malloccall451)
  br label %kernel_syr2k.exit

polly.loop_header815.1:                           ; preds = %polly.loop_exit823, %polly.loop_exit823.1
  %polly.indvar818.1 = phi i64 [ %polly.indvar_next819.1, %polly.loop_exit823.1 ], [ 0, %polly.loop_exit823 ]
  %316 = mul nuw nsw i64 %polly.indvar818.1, 480
  %317 = trunc i64 %polly.indvar818.1 to i32
  %broadcast.splatinsert1232 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1233 = shufflevector <4 x i32> %broadcast.splatinsert1232, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %polly.loop_header815.1
  %index1226 = phi i64 [ 0, %polly.loop_header815.1 ], [ %index.next1227, %vector.body1224 ]
  %vec.ind1230 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header815.1 ], [ %vec.ind.next1231, %vector.body1224 ]
  %318 = add nuw nsw <4 x i64> %vec.ind1230, <i64 32, i64 32, i64 32, i64 32>
  %319 = trunc <4 x i64> %318 to <4 x i32>
  %320 = mul <4 x i32> %broadcast.splat1233, %319
  %321 = add <4 x i32> %320, <i32 1, i32 1, i32 1, i32 1>
  %322 = urem <4 x i32> %321, <i32 80, i32 80, i32 80, i32 80>
  %323 = sitofp <4 x i32> %322 to <4 x double>
  %324 = fmul fast <4 x double> %323, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %325 = extractelement <4 x i64> %318, i32 0
  %326 = shl i64 %325, 3
  %327 = add i64 %326, %316
  %328 = getelementptr i8, i8* %call1, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %324, <4 x double>* %329, align 8, !alias.scope !97, !noalias !102
  %index.next1227 = add i64 %index1226, 4
  %vec.ind.next1231 = add <4 x i64> %vec.ind1230, <i64 4, i64 4, i64 4, i64 4>
  %330 = icmp eq i64 %index.next1227, 28
  br i1 %330, label %polly.loop_exit823.1, label %vector.body1224, !llvm.loop !104

polly.loop_exit823.1:                             ; preds = %vector.body1224
  %polly.indvar_next819.1 = add nuw nsw i64 %polly.indvar818.1, 1
  %exitcond914.1.not = icmp eq i64 %polly.indvar_next819.1, 32
  br i1 %exitcond914.1.not, label %polly.loop_header815.1934, label %polly.loop_header815.1

polly.loop_header815.1934:                        ; preds = %polly.loop_exit823.1, %polly.loop_exit823.1945
  %polly.indvar818.1933 = phi i64 [ %polly.indvar_next819.1943, %polly.loop_exit823.1945 ], [ 0, %polly.loop_exit823.1 ]
  %331 = add nuw nsw i64 %polly.indvar818.1933, 32
  %332 = mul nuw nsw i64 %331, 480
  %333 = trunc i64 %331 to i32
  %broadcast.splatinsert1246 = insertelement <4 x i32> poison, i32 %333, i32 0
  %broadcast.splat1247 = shufflevector <4 x i32> %broadcast.splatinsert1246, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %polly.loop_header815.1934
  %index1238 = phi i64 [ 0, %polly.loop_header815.1934 ], [ %index.next1239, %vector.body1236 ]
  %vec.ind1244 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header815.1934 ], [ %vec.ind.next1245, %vector.body1236 ]
  %334 = mul <4 x i32> %vec.ind1244, %broadcast.splat1247
  %335 = add <4 x i32> %334, <i32 1, i32 1, i32 1, i32 1>
  %336 = urem <4 x i32> %335, <i32 80, i32 80, i32 80, i32 80>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %339 = shl i64 %index1238, 3
  %340 = add i64 %339, %332
  %341 = getelementptr i8, i8* %call1, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %338, <4 x double>* %342, align 8, !alias.scope !97, !noalias !102
  %index.next1239 = add i64 %index1238, 4
  %vec.ind.next1245 = add <4 x i32> %vec.ind1244, <i32 4, i32 4, i32 4, i32 4>
  %343 = icmp eq i64 %index.next1239, 32
  br i1 %343, label %polly.loop_exit823.1945, label %vector.body1236, !llvm.loop !105

polly.loop_exit823.1945:                          ; preds = %vector.body1236
  %polly.indvar_next819.1943 = add nuw nsw i64 %polly.indvar818.1933, 1
  %exitcond914.1944.not = icmp eq i64 %polly.indvar_next819.1943, 32
  br i1 %exitcond914.1944.not, label %polly.loop_header815.1.1, label %polly.loop_header815.1934

polly.loop_header815.1.1:                         ; preds = %polly.loop_exit823.1945, %polly.loop_exit823.1.1
  %polly.indvar818.1.1 = phi i64 [ %polly.indvar_next819.1.1, %polly.loop_exit823.1.1 ], [ 0, %polly.loop_exit823.1945 ]
  %344 = add nuw nsw i64 %polly.indvar818.1.1, 32
  %345 = mul nuw nsw i64 %344, 480
  %346 = trunc i64 %344 to i32
  %broadcast.splatinsert1258 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1259 = shufflevector <4 x i32> %broadcast.splatinsert1258, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %polly.loop_header815.1.1
  %index1252 = phi i64 [ 0, %polly.loop_header815.1.1 ], [ %index.next1253, %vector.body1250 ]
  %vec.ind1256 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header815.1.1 ], [ %vec.ind.next1257, %vector.body1250 ]
  %347 = add nuw nsw <4 x i64> %vec.ind1256, <i64 32, i64 32, i64 32, i64 32>
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat1259, %348
  %350 = add <4 x i32> %349, <i32 1, i32 1, i32 1, i32 1>
  %351 = urem <4 x i32> %350, <i32 80, i32 80, i32 80, i32 80>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add i64 %355, %345
  %357 = getelementptr i8, i8* %call1, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !97, !noalias !102
  %index.next1253 = add i64 %index1252, 4
  %vec.ind.next1257 = add <4 x i64> %vec.ind1256, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next1253, 28
  br i1 %359, label %polly.loop_exit823.1.1, label %vector.body1250, !llvm.loop !106

polly.loop_exit823.1.1:                           ; preds = %vector.body1250
  %polly.indvar_next819.1.1 = add nuw nsw i64 %polly.indvar818.1.1, 1
  %exitcond914.1.1.not = icmp eq i64 %polly.indvar_next819.1.1, 32
  br i1 %exitcond914.1.1.not, label %polly.loop_header815.2, label %polly.loop_header815.1.1

polly.loop_header815.2:                           ; preds = %polly.loop_exit823.1.1, %polly.loop_exit823.2
  %polly.indvar818.2 = phi i64 [ %polly.indvar_next819.2, %polly.loop_exit823.2 ], [ 0, %polly.loop_exit823.1.1 ]
  %360 = add nuw nsw i64 %polly.indvar818.2, 64
  %361 = mul nuw nsw i64 %360, 480
  %362 = trunc i64 %360 to i32
  %broadcast.splatinsert1272 = insertelement <4 x i32> poison, i32 %362, i32 0
  %broadcast.splat1273 = shufflevector <4 x i32> %broadcast.splatinsert1272, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %polly.loop_header815.2
  %index1264 = phi i64 [ 0, %polly.loop_header815.2 ], [ %index.next1265, %vector.body1262 ]
  %vec.ind1270 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header815.2 ], [ %vec.ind.next1271, %vector.body1262 ]
  %363 = mul <4 x i32> %vec.ind1270, %broadcast.splat1273
  %364 = add <4 x i32> %363, <i32 1, i32 1, i32 1, i32 1>
  %365 = urem <4 x i32> %364, <i32 80, i32 80, i32 80, i32 80>
  %366 = sitofp <4 x i32> %365 to <4 x double>
  %367 = fmul fast <4 x double> %366, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %368 = shl i64 %index1264, 3
  %369 = add i64 %368, %361
  %370 = getelementptr i8, i8* %call1, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %367, <4 x double>* %371, align 8, !alias.scope !97, !noalias !102
  %index.next1265 = add i64 %index1264, 4
  %vec.ind.next1271 = add <4 x i32> %vec.ind1270, <i32 4, i32 4, i32 4, i32 4>
  %372 = icmp eq i64 %index.next1265, 32
  br i1 %372, label %polly.loop_exit823.2, label %vector.body1262, !llvm.loop !107

polly.loop_exit823.2:                             ; preds = %vector.body1262
  %polly.indvar_next819.2 = add nuw nsw i64 %polly.indvar818.2, 1
  %exitcond914.2.not = icmp eq i64 %polly.indvar_next819.2, 16
  br i1 %exitcond914.2.not, label %polly.loop_header815.1.2, label %polly.loop_header815.2

polly.loop_header815.1.2:                         ; preds = %polly.loop_exit823.2, %polly.loop_exit823.1.2
  %polly.indvar818.1.2 = phi i64 [ %polly.indvar_next819.1.2, %polly.loop_exit823.1.2 ], [ 0, %polly.loop_exit823.2 ]
  %373 = add nuw nsw i64 %polly.indvar818.1.2, 64
  %374 = mul nuw nsw i64 %373, 480
  %375 = trunc i64 %373 to i32
  %broadcast.splatinsert1284 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1285 = shufflevector <4 x i32> %broadcast.splatinsert1284, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %polly.loop_header815.1.2
  %index1278 = phi i64 [ 0, %polly.loop_header815.1.2 ], [ %index.next1279, %vector.body1276 ]
  %vec.ind1282 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header815.1.2 ], [ %vec.ind.next1283, %vector.body1276 ]
  %376 = add nuw nsw <4 x i64> %vec.ind1282, <i64 32, i64 32, i64 32, i64 32>
  %377 = trunc <4 x i64> %376 to <4 x i32>
  %378 = mul <4 x i32> %broadcast.splat1285, %377
  %379 = add <4 x i32> %378, <i32 1, i32 1, i32 1, i32 1>
  %380 = urem <4 x i32> %379, <i32 80, i32 80, i32 80, i32 80>
  %381 = sitofp <4 x i32> %380 to <4 x double>
  %382 = fmul fast <4 x double> %381, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %383 = extractelement <4 x i64> %376, i32 0
  %384 = shl i64 %383, 3
  %385 = add i64 %384, %374
  %386 = getelementptr i8, i8* %call1, i64 %385
  %387 = bitcast i8* %386 to <4 x double>*
  store <4 x double> %382, <4 x double>* %387, align 8, !alias.scope !97, !noalias !102
  %index.next1279 = add i64 %index1278, 4
  %vec.ind.next1283 = add <4 x i64> %vec.ind1282, <i64 4, i64 4, i64 4, i64 4>
  %388 = icmp eq i64 %index.next1279, 28
  br i1 %388, label %polly.loop_exit823.1.2, label %vector.body1276, !llvm.loop !108

polly.loop_exit823.1.2:                           ; preds = %vector.body1276
  %polly.indvar_next819.1.2 = add nuw nsw i64 %polly.indvar818.1.2, 1
  %exitcond914.1.2.not = icmp eq i64 %polly.indvar_next819.1.2, 16
  br i1 %exitcond914.1.2.not, label %init_array.exit, label %polly.loop_header815.1.2

polly.loop_header789.1:                           ; preds = %polly.loop_exit797, %polly.loop_exit797.1
  %polly.indvar792.1 = phi i64 [ %polly.indvar_next793.1, %polly.loop_exit797.1 ], [ 0, %polly.loop_exit797 ]
  %389 = mul nuw nsw i64 %polly.indvar792.1, 480
  %390 = trunc i64 %polly.indvar792.1 to i32
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %390, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %polly.loop_header789.1
  %index1148 = phi i64 [ 0, %polly.loop_header789.1 ], [ %index.next1149, %vector.body1146 ]
  %vec.ind1152 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header789.1 ], [ %vec.ind.next1153, %vector.body1146 ]
  %391 = add nuw nsw <4 x i64> %vec.ind1152, <i64 32, i64 32, i64 32, i64 32>
  %392 = trunc <4 x i64> %391 to <4 x i32>
  %393 = mul <4 x i32> %broadcast.splat1155, %392
  %394 = add <4 x i32> %393, <i32 2, i32 2, i32 2, i32 2>
  %395 = urem <4 x i32> %394, <i32 60, i32 60, i32 60, i32 60>
  %396 = sitofp <4 x i32> %395 to <4 x double>
  %397 = fmul fast <4 x double> %396, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %398 = extractelement <4 x i64> %391, i32 0
  %399 = shl i64 %398, 3
  %400 = add i64 %399, %389
  %401 = getelementptr i8, i8* %call2, i64 %400
  %402 = bitcast i8* %401 to <4 x double>*
  store <4 x double> %397, <4 x double>* %402, align 8, !alias.scope !98, !noalias !100
  %index.next1149 = add i64 %index1148, 4
  %vec.ind.next1153 = add <4 x i64> %vec.ind1152, <i64 4, i64 4, i64 4, i64 4>
  %403 = icmp eq i64 %index.next1149, 28
  br i1 %403, label %polly.loop_exit797.1, label %vector.body1146, !llvm.loop !109

polly.loop_exit797.1:                             ; preds = %vector.body1146
  %polly.indvar_next793.1 = add nuw nsw i64 %polly.indvar792.1, 1
  %exitcond920.1.not = icmp eq i64 %polly.indvar_next793.1, 32
  br i1 %exitcond920.1.not, label %polly.loop_header789.1948, label %polly.loop_header789.1

polly.loop_header789.1948:                        ; preds = %polly.loop_exit797.1, %polly.loop_exit797.1959
  %polly.indvar792.1947 = phi i64 [ %polly.indvar_next793.1957, %polly.loop_exit797.1959 ], [ 0, %polly.loop_exit797.1 ]
  %404 = add nuw nsw i64 %polly.indvar792.1947, 32
  %405 = mul nuw nsw i64 %404, 480
  %406 = trunc i64 %404 to i32
  %broadcast.splatinsert1168 = insertelement <4 x i32> poison, i32 %406, i32 0
  %broadcast.splat1169 = shufflevector <4 x i32> %broadcast.splatinsert1168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %polly.loop_header789.1948
  %index1160 = phi i64 [ 0, %polly.loop_header789.1948 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1166 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header789.1948 ], [ %vec.ind.next1167, %vector.body1158 ]
  %407 = mul <4 x i32> %vec.ind1166, %broadcast.splat1169
  %408 = add <4 x i32> %407, <i32 2, i32 2, i32 2, i32 2>
  %409 = urem <4 x i32> %408, <i32 60, i32 60, i32 60, i32 60>
  %410 = sitofp <4 x i32> %409 to <4 x double>
  %411 = fmul fast <4 x double> %410, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %412 = shl i64 %index1160, 3
  %413 = add i64 %412, %405
  %414 = getelementptr i8, i8* %call2, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %411, <4 x double>* %415, align 8, !alias.scope !98, !noalias !100
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1167 = add <4 x i32> %vec.ind1166, <i32 4, i32 4, i32 4, i32 4>
  %416 = icmp eq i64 %index.next1161, 32
  br i1 %416, label %polly.loop_exit797.1959, label %vector.body1158, !llvm.loop !110

polly.loop_exit797.1959:                          ; preds = %vector.body1158
  %polly.indvar_next793.1957 = add nuw nsw i64 %polly.indvar792.1947, 1
  %exitcond920.1958.not = icmp eq i64 %polly.indvar_next793.1957, 32
  br i1 %exitcond920.1958.not, label %polly.loop_header789.1.1, label %polly.loop_header789.1948

polly.loop_header789.1.1:                         ; preds = %polly.loop_exit797.1959, %polly.loop_exit797.1.1
  %polly.indvar792.1.1 = phi i64 [ %polly.indvar_next793.1.1, %polly.loop_exit797.1.1 ], [ 0, %polly.loop_exit797.1959 ]
  %417 = add nuw nsw i64 %polly.indvar792.1.1, 32
  %418 = mul nuw nsw i64 %417, 480
  %419 = trunc i64 %417 to i32
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %419, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %polly.loop_header789.1.1
  %index1174 = phi i64 [ 0, %polly.loop_header789.1.1 ], [ %index.next1175, %vector.body1172 ]
  %vec.ind1178 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header789.1.1 ], [ %vec.ind.next1179, %vector.body1172 ]
  %420 = add nuw nsw <4 x i64> %vec.ind1178, <i64 32, i64 32, i64 32, i64 32>
  %421 = trunc <4 x i64> %420 to <4 x i32>
  %422 = mul <4 x i32> %broadcast.splat1181, %421
  %423 = add <4 x i32> %422, <i32 2, i32 2, i32 2, i32 2>
  %424 = urem <4 x i32> %423, <i32 60, i32 60, i32 60, i32 60>
  %425 = sitofp <4 x i32> %424 to <4 x double>
  %426 = fmul fast <4 x double> %425, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %427 = extractelement <4 x i64> %420, i32 0
  %428 = shl i64 %427, 3
  %429 = add i64 %428, %418
  %430 = getelementptr i8, i8* %call2, i64 %429
  %431 = bitcast i8* %430 to <4 x double>*
  store <4 x double> %426, <4 x double>* %431, align 8, !alias.scope !98, !noalias !100
  %index.next1175 = add i64 %index1174, 4
  %vec.ind.next1179 = add <4 x i64> %vec.ind1178, <i64 4, i64 4, i64 4, i64 4>
  %432 = icmp eq i64 %index.next1175, 28
  br i1 %432, label %polly.loop_exit797.1.1, label %vector.body1172, !llvm.loop !111

polly.loop_exit797.1.1:                           ; preds = %vector.body1172
  %polly.indvar_next793.1.1 = add nuw nsw i64 %polly.indvar792.1.1, 1
  %exitcond920.1.1.not = icmp eq i64 %polly.indvar_next793.1.1, 32
  br i1 %exitcond920.1.1.not, label %polly.loop_header789.2, label %polly.loop_header789.1.1

polly.loop_header789.2:                           ; preds = %polly.loop_exit797.1.1, %polly.loop_exit797.2
  %polly.indvar792.2 = phi i64 [ %polly.indvar_next793.2, %polly.loop_exit797.2 ], [ 0, %polly.loop_exit797.1.1 ]
  %433 = add nuw nsw i64 %polly.indvar792.2, 64
  %434 = mul nuw nsw i64 %433, 480
  %435 = trunc i64 %433 to i32
  %broadcast.splatinsert1194 = insertelement <4 x i32> poison, i32 %435, i32 0
  %broadcast.splat1195 = shufflevector <4 x i32> %broadcast.splatinsert1194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %polly.loop_header789.2
  %index1186 = phi i64 [ 0, %polly.loop_header789.2 ], [ %index.next1187, %vector.body1184 ]
  %vec.ind1192 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header789.2 ], [ %vec.ind.next1193, %vector.body1184 ]
  %436 = mul <4 x i32> %vec.ind1192, %broadcast.splat1195
  %437 = add <4 x i32> %436, <i32 2, i32 2, i32 2, i32 2>
  %438 = urem <4 x i32> %437, <i32 60, i32 60, i32 60, i32 60>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = shl i64 %index1186, 3
  %442 = add i64 %441, %434
  %443 = getelementptr i8, i8* %call2, i64 %442
  %444 = bitcast i8* %443 to <4 x double>*
  store <4 x double> %440, <4 x double>* %444, align 8, !alias.scope !98, !noalias !100
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1193 = add <4 x i32> %vec.ind1192, <i32 4, i32 4, i32 4, i32 4>
  %445 = icmp eq i64 %index.next1187, 32
  br i1 %445, label %polly.loop_exit797.2, label %vector.body1184, !llvm.loop !112

polly.loop_exit797.2:                             ; preds = %vector.body1184
  %polly.indvar_next793.2 = add nuw nsw i64 %polly.indvar792.2, 1
  %exitcond920.2.not = icmp eq i64 %polly.indvar_next793.2, 16
  br i1 %exitcond920.2.not, label %polly.loop_header789.1.2, label %polly.loop_header789.2

polly.loop_header789.1.2:                         ; preds = %polly.loop_exit797.2, %polly.loop_exit797.1.2
  %polly.indvar792.1.2 = phi i64 [ %polly.indvar_next793.1.2, %polly.loop_exit797.1.2 ], [ 0, %polly.loop_exit797.2 ]
  %446 = add nuw nsw i64 %polly.indvar792.1.2, 64
  %447 = mul nuw nsw i64 %446, 480
  %448 = trunc i64 %446 to i32
  %broadcast.splatinsert1206 = insertelement <4 x i32> poison, i32 %448, i32 0
  %broadcast.splat1207 = shufflevector <4 x i32> %broadcast.splatinsert1206, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %polly.loop_header789.1.2
  %index1200 = phi i64 [ 0, %polly.loop_header789.1.2 ], [ %index.next1201, %vector.body1198 ]
  %vec.ind1204 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header789.1.2 ], [ %vec.ind.next1205, %vector.body1198 ]
  %449 = add nuw nsw <4 x i64> %vec.ind1204, <i64 32, i64 32, i64 32, i64 32>
  %450 = trunc <4 x i64> %449 to <4 x i32>
  %451 = mul <4 x i32> %broadcast.splat1207, %450
  %452 = add <4 x i32> %451, <i32 2, i32 2, i32 2, i32 2>
  %453 = urem <4 x i32> %452, <i32 60, i32 60, i32 60, i32 60>
  %454 = sitofp <4 x i32> %453 to <4 x double>
  %455 = fmul fast <4 x double> %454, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %456 = extractelement <4 x i64> %449, i32 0
  %457 = shl i64 %456, 3
  %458 = add i64 %457, %447
  %459 = getelementptr i8, i8* %call2, i64 %458
  %460 = bitcast i8* %459 to <4 x double>*
  store <4 x double> %455, <4 x double>* %460, align 8, !alias.scope !98, !noalias !100
  %index.next1201 = add i64 %index1200, 4
  %vec.ind.next1205 = add <4 x i64> %vec.ind1204, <i64 4, i64 4, i64 4, i64 4>
  %461 = icmp eq i64 %index.next1201, 28
  br i1 %461, label %polly.loop_exit797.1.2, label %vector.body1198, !llvm.loop !113

polly.loop_exit797.1.2:                           ; preds = %vector.body1198
  %polly.indvar_next793.1.2 = add nuw nsw i64 %polly.indvar792.1.2, 1
  %exitcond920.1.2.not = icmp eq i64 %polly.indvar_next793.1.2, 16
  br i1 %exitcond920.1.2.not, label %polly.loop_header815, label %polly.loop_header789.1.2

polly.loop_header762.1:                           ; preds = %polly.loop_exit770, %polly.loop_exit770.1
  %polly.indvar765.1 = phi i64 [ %polly.indvar_next766.1, %polly.loop_exit770.1 ], [ 0, %polly.loop_exit770 ]
  %462 = mul nuw nsw i64 %polly.indvar765.1, 640
  %463 = trunc i64 %polly.indvar765.1 to i32
  %broadcast.splatinsert1040 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat1041 = shufflevector <4 x i32> %broadcast.splatinsert1040, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %polly.loop_header762.1
  %index1034 = phi i64 [ 0, %polly.loop_header762.1 ], [ %index.next1035, %vector.body1032 ]
  %vec.ind1038 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.1 ], [ %vec.ind.next1039, %vector.body1032 ]
  %464 = add nuw nsw <4 x i64> %vec.ind1038, <i64 32, i64 32, i64 32, i64 32>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat1041, %465
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
  %index.next1035 = add i64 %index1034, 4
  %vec.ind.next1039 = add <4 x i64> %vec.ind1038, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next1035, 32
  br i1 %476, label %polly.loop_exit770.1, label %vector.body1032, !llvm.loop !114

polly.loop_exit770.1:                             ; preds = %vector.body1032
  %polly.indvar_next766.1 = add nuw nsw i64 %polly.indvar765.1, 1
  %exitcond929.1.not = icmp eq i64 %polly.indvar_next766.1, 32
  br i1 %exitcond929.1.not, label %polly.loop_header762.2, label %polly.loop_header762.1

polly.loop_header762.2:                           ; preds = %polly.loop_exit770.1, %polly.loop_exit770.2
  %polly.indvar765.2 = phi i64 [ %polly.indvar_next766.2, %polly.loop_exit770.2 ], [ 0, %polly.loop_exit770.1 ]
  %477 = mul nuw nsw i64 %polly.indvar765.2, 640
  %478 = trunc i64 %polly.indvar765.2 to i32
  %broadcast.splatinsert1052 = insertelement <4 x i32> poison, i32 %478, i32 0
  %broadcast.splat1053 = shufflevector <4 x i32> %broadcast.splatinsert1052, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.body1044, %polly.loop_header762.2
  %index1046 = phi i64 [ 0, %polly.loop_header762.2 ], [ %index.next1047, %vector.body1044 ]
  %vec.ind1050 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.2 ], [ %vec.ind.next1051, %vector.body1044 ]
  %479 = add nuw nsw <4 x i64> %vec.ind1050, <i64 64, i64 64, i64 64, i64 64>
  %480 = trunc <4 x i64> %479 to <4 x i32>
  %481 = mul <4 x i32> %broadcast.splat1053, %480
  %482 = add <4 x i32> %481, <i32 3, i32 3, i32 3, i32 3>
  %483 = urem <4 x i32> %482, <i32 80, i32 80, i32 80, i32 80>
  %484 = sitofp <4 x i32> %483 to <4 x double>
  %485 = fmul fast <4 x double> %484, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %486 = extractelement <4 x i64> %479, i32 0
  %487 = shl i64 %486, 3
  %488 = add nuw nsw i64 %487, %477
  %489 = getelementptr i8, i8* %call, i64 %488
  %490 = bitcast i8* %489 to <4 x double>*
  store <4 x double> %485, <4 x double>* %490, align 8, !alias.scope !94, !noalias !96
  %index.next1047 = add i64 %index1046, 4
  %vec.ind.next1051 = add <4 x i64> %vec.ind1050, <i64 4, i64 4, i64 4, i64 4>
  %491 = icmp eq i64 %index.next1047, 16
  br i1 %491, label %polly.loop_exit770.2, label %vector.body1044, !llvm.loop !115

polly.loop_exit770.2:                             ; preds = %vector.body1044
  %polly.indvar_next766.2 = add nuw nsw i64 %polly.indvar765.2, 1
  %exitcond929.2.not = icmp eq i64 %polly.indvar_next766.2, 32
  br i1 %exitcond929.2.not, label %polly.loop_header762.1962, label %polly.loop_header762.2

polly.loop_header762.1962:                        ; preds = %polly.loop_exit770.2, %polly.loop_exit770.1973
  %polly.indvar765.1961 = phi i64 [ %polly.indvar_next766.1971, %polly.loop_exit770.1973 ], [ 0, %polly.loop_exit770.2 ]
  %492 = add nuw nsw i64 %polly.indvar765.1961, 32
  %493 = mul nuw nsw i64 %492, 640
  %494 = trunc i64 %492 to i32
  %broadcast.splatinsert1066 = insertelement <4 x i32> poison, i32 %494, i32 0
  %broadcast.splat1067 = shufflevector <4 x i32> %broadcast.splatinsert1066, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1056

vector.body1056:                                  ; preds = %vector.body1056, %polly.loop_header762.1962
  %index1058 = phi i64 [ 0, %polly.loop_header762.1962 ], [ %index.next1059, %vector.body1056 ]
  %vec.ind1064 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header762.1962 ], [ %vec.ind.next1065, %vector.body1056 ]
  %495 = mul <4 x i32> %vec.ind1064, %broadcast.splat1067
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = shl i64 %index1058, 3
  %501 = add nuw nsw i64 %500, %493
  %502 = getelementptr i8, i8* %call, i64 %501
  %503 = bitcast i8* %502 to <4 x double>*
  store <4 x double> %499, <4 x double>* %503, align 8, !alias.scope !94, !noalias !96
  %index.next1059 = add i64 %index1058, 4
  %vec.ind.next1065 = add <4 x i32> %vec.ind1064, <i32 4, i32 4, i32 4, i32 4>
  %504 = icmp eq i64 %index.next1059, 32
  br i1 %504, label %polly.loop_exit770.1973, label %vector.body1056, !llvm.loop !116

polly.loop_exit770.1973:                          ; preds = %vector.body1056
  %polly.indvar_next766.1971 = add nuw nsw i64 %polly.indvar765.1961, 1
  %exitcond929.1972.not = icmp eq i64 %polly.indvar_next766.1971, 32
  br i1 %exitcond929.1972.not, label %polly.loop_header762.1.1, label %polly.loop_header762.1962

polly.loop_header762.1.1:                         ; preds = %polly.loop_exit770.1973, %polly.loop_exit770.1.1
  %polly.indvar765.1.1 = phi i64 [ %polly.indvar_next766.1.1, %polly.loop_exit770.1.1 ], [ 0, %polly.loop_exit770.1973 ]
  %505 = add nuw nsw i64 %polly.indvar765.1.1, 32
  %506 = mul nuw nsw i64 %505, 640
  %507 = trunc i64 %505 to i32
  %broadcast.splatinsert1078 = insertelement <4 x i32> poison, i32 %507, i32 0
  %broadcast.splat1079 = shufflevector <4 x i32> %broadcast.splatinsert1078, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1070

vector.body1070:                                  ; preds = %vector.body1070, %polly.loop_header762.1.1
  %index1072 = phi i64 [ 0, %polly.loop_header762.1.1 ], [ %index.next1073, %vector.body1070 ]
  %vec.ind1076 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.1.1 ], [ %vec.ind.next1077, %vector.body1070 ]
  %508 = add nuw nsw <4 x i64> %vec.ind1076, <i64 32, i64 32, i64 32, i64 32>
  %509 = trunc <4 x i64> %508 to <4 x i32>
  %510 = mul <4 x i32> %broadcast.splat1079, %509
  %511 = add <4 x i32> %510, <i32 3, i32 3, i32 3, i32 3>
  %512 = urem <4 x i32> %511, <i32 80, i32 80, i32 80, i32 80>
  %513 = sitofp <4 x i32> %512 to <4 x double>
  %514 = fmul fast <4 x double> %513, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %515 = extractelement <4 x i64> %508, i32 0
  %516 = shl i64 %515, 3
  %517 = add nuw nsw i64 %516, %506
  %518 = getelementptr i8, i8* %call, i64 %517
  %519 = bitcast i8* %518 to <4 x double>*
  store <4 x double> %514, <4 x double>* %519, align 8, !alias.scope !94, !noalias !96
  %index.next1073 = add i64 %index1072, 4
  %vec.ind.next1077 = add <4 x i64> %vec.ind1076, <i64 4, i64 4, i64 4, i64 4>
  %520 = icmp eq i64 %index.next1073, 32
  br i1 %520, label %polly.loop_exit770.1.1, label %vector.body1070, !llvm.loop !117

polly.loop_exit770.1.1:                           ; preds = %vector.body1070
  %polly.indvar_next766.1.1 = add nuw nsw i64 %polly.indvar765.1.1, 1
  %exitcond929.1.1.not = icmp eq i64 %polly.indvar_next766.1.1, 32
  br i1 %exitcond929.1.1.not, label %polly.loop_header762.2.1, label %polly.loop_header762.1.1

polly.loop_header762.2.1:                         ; preds = %polly.loop_exit770.1.1, %polly.loop_exit770.2.1
  %polly.indvar765.2.1 = phi i64 [ %polly.indvar_next766.2.1, %polly.loop_exit770.2.1 ], [ 0, %polly.loop_exit770.1.1 ]
  %521 = add nuw nsw i64 %polly.indvar765.2.1, 32
  %522 = mul nuw nsw i64 %521, 640
  %523 = trunc i64 %521 to i32
  %broadcast.splatinsert1090 = insertelement <4 x i32> poison, i32 %523, i32 0
  %broadcast.splat1091 = shufflevector <4 x i32> %broadcast.splatinsert1090, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1082

vector.body1082:                                  ; preds = %vector.body1082, %polly.loop_header762.2.1
  %index1084 = phi i64 [ 0, %polly.loop_header762.2.1 ], [ %index.next1085, %vector.body1082 ]
  %vec.ind1088 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.2.1 ], [ %vec.ind.next1089, %vector.body1082 ]
  %524 = add nuw nsw <4 x i64> %vec.ind1088, <i64 64, i64 64, i64 64, i64 64>
  %525 = trunc <4 x i64> %524 to <4 x i32>
  %526 = mul <4 x i32> %broadcast.splat1091, %525
  %527 = add <4 x i32> %526, <i32 3, i32 3, i32 3, i32 3>
  %528 = urem <4 x i32> %527, <i32 80, i32 80, i32 80, i32 80>
  %529 = sitofp <4 x i32> %528 to <4 x double>
  %530 = fmul fast <4 x double> %529, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %531 = extractelement <4 x i64> %524, i32 0
  %532 = shl i64 %531, 3
  %533 = add nuw nsw i64 %532, %522
  %534 = getelementptr i8, i8* %call, i64 %533
  %535 = bitcast i8* %534 to <4 x double>*
  store <4 x double> %530, <4 x double>* %535, align 8, !alias.scope !94, !noalias !96
  %index.next1085 = add i64 %index1084, 4
  %vec.ind.next1089 = add <4 x i64> %vec.ind1088, <i64 4, i64 4, i64 4, i64 4>
  %536 = icmp eq i64 %index.next1085, 16
  br i1 %536, label %polly.loop_exit770.2.1, label %vector.body1082, !llvm.loop !118

polly.loop_exit770.2.1:                           ; preds = %vector.body1082
  %polly.indvar_next766.2.1 = add nuw nsw i64 %polly.indvar765.2.1, 1
  %exitcond929.2.1.not = icmp eq i64 %polly.indvar_next766.2.1, 32
  br i1 %exitcond929.2.1.not, label %polly.loop_header762.2976, label %polly.loop_header762.2.1

polly.loop_header762.2976:                        ; preds = %polly.loop_exit770.2.1, %polly.loop_exit770.2987
  %polly.indvar765.2975 = phi i64 [ %polly.indvar_next766.2985, %polly.loop_exit770.2987 ], [ 0, %polly.loop_exit770.2.1 ]
  %537 = add nuw nsw i64 %polly.indvar765.2975, 64
  %538 = mul nuw nsw i64 %537, 640
  %539 = trunc i64 %537 to i32
  %broadcast.splatinsert1104 = insertelement <4 x i32> poison, i32 %539, i32 0
  %broadcast.splat1105 = shufflevector <4 x i32> %broadcast.splatinsert1104, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %polly.loop_header762.2976
  %index1096 = phi i64 [ 0, %polly.loop_header762.2976 ], [ %index.next1097, %vector.body1094 ]
  %vec.ind1102 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header762.2976 ], [ %vec.ind.next1103, %vector.body1094 ]
  %540 = mul <4 x i32> %vec.ind1102, %broadcast.splat1105
  %541 = add <4 x i32> %540, <i32 3, i32 3, i32 3, i32 3>
  %542 = urem <4 x i32> %541, <i32 80, i32 80, i32 80, i32 80>
  %543 = sitofp <4 x i32> %542 to <4 x double>
  %544 = fmul fast <4 x double> %543, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %545 = shl i64 %index1096, 3
  %546 = add nuw nsw i64 %545, %538
  %547 = getelementptr i8, i8* %call, i64 %546
  %548 = bitcast i8* %547 to <4 x double>*
  store <4 x double> %544, <4 x double>* %548, align 8, !alias.scope !94, !noalias !96
  %index.next1097 = add i64 %index1096, 4
  %vec.ind.next1103 = add <4 x i32> %vec.ind1102, <i32 4, i32 4, i32 4, i32 4>
  %549 = icmp eq i64 %index.next1097, 32
  br i1 %549, label %polly.loop_exit770.2987, label %vector.body1094, !llvm.loop !119

polly.loop_exit770.2987:                          ; preds = %vector.body1094
  %polly.indvar_next766.2985 = add nuw nsw i64 %polly.indvar765.2975, 1
  %exitcond929.2986.not = icmp eq i64 %polly.indvar_next766.2985, 16
  br i1 %exitcond929.2986.not, label %polly.loop_header762.1.2, label %polly.loop_header762.2976

polly.loop_header762.1.2:                         ; preds = %polly.loop_exit770.2987, %polly.loop_exit770.1.2
  %polly.indvar765.1.2 = phi i64 [ %polly.indvar_next766.1.2, %polly.loop_exit770.1.2 ], [ 0, %polly.loop_exit770.2987 ]
  %550 = add nuw nsw i64 %polly.indvar765.1.2, 64
  %551 = mul nuw nsw i64 %550, 640
  %552 = trunc i64 %550 to i32
  %broadcast.splatinsert1116 = insertelement <4 x i32> poison, i32 %552, i32 0
  %broadcast.splat1117 = shufflevector <4 x i32> %broadcast.splatinsert1116, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1108

vector.body1108:                                  ; preds = %vector.body1108, %polly.loop_header762.1.2
  %index1110 = phi i64 [ 0, %polly.loop_header762.1.2 ], [ %index.next1111, %vector.body1108 ]
  %vec.ind1114 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.1.2 ], [ %vec.ind.next1115, %vector.body1108 ]
  %553 = add nuw nsw <4 x i64> %vec.ind1114, <i64 32, i64 32, i64 32, i64 32>
  %554 = trunc <4 x i64> %553 to <4 x i32>
  %555 = mul <4 x i32> %broadcast.splat1117, %554
  %556 = add <4 x i32> %555, <i32 3, i32 3, i32 3, i32 3>
  %557 = urem <4 x i32> %556, <i32 80, i32 80, i32 80, i32 80>
  %558 = sitofp <4 x i32> %557 to <4 x double>
  %559 = fmul fast <4 x double> %558, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %560 = extractelement <4 x i64> %553, i32 0
  %561 = shl i64 %560, 3
  %562 = add nuw nsw i64 %561, %551
  %563 = getelementptr i8, i8* %call, i64 %562
  %564 = bitcast i8* %563 to <4 x double>*
  store <4 x double> %559, <4 x double>* %564, align 8, !alias.scope !94, !noalias !96
  %index.next1111 = add i64 %index1110, 4
  %vec.ind.next1115 = add <4 x i64> %vec.ind1114, <i64 4, i64 4, i64 4, i64 4>
  %565 = icmp eq i64 %index.next1111, 32
  br i1 %565, label %polly.loop_exit770.1.2, label %vector.body1108, !llvm.loop !120

polly.loop_exit770.1.2:                           ; preds = %vector.body1108
  %polly.indvar_next766.1.2 = add nuw nsw i64 %polly.indvar765.1.2, 1
  %exitcond929.1.2.not = icmp eq i64 %polly.indvar_next766.1.2, 16
  br i1 %exitcond929.1.2.not, label %polly.loop_header762.2.2, label %polly.loop_header762.1.2

polly.loop_header762.2.2:                         ; preds = %polly.loop_exit770.1.2, %polly.loop_exit770.2.2
  %polly.indvar765.2.2 = phi i64 [ %polly.indvar_next766.2.2, %polly.loop_exit770.2.2 ], [ 0, %polly.loop_exit770.1.2 ]
  %566 = add nuw nsw i64 %polly.indvar765.2.2, 64
  %567 = mul nuw nsw i64 %566, 640
  %568 = trunc i64 %566 to i32
  %broadcast.splatinsert1128 = insertelement <4 x i32> poison, i32 %568, i32 0
  %broadcast.splat1129 = shufflevector <4 x i32> %broadcast.splatinsert1128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %polly.loop_header762.2.2
  %index1122 = phi i64 [ 0, %polly.loop_header762.2.2 ], [ %index.next1123, %vector.body1120 ]
  %vec.ind1126 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header762.2.2 ], [ %vec.ind.next1127, %vector.body1120 ]
  %569 = add nuw nsw <4 x i64> %vec.ind1126, <i64 64, i64 64, i64 64, i64 64>
  %570 = trunc <4 x i64> %569 to <4 x i32>
  %571 = mul <4 x i32> %broadcast.splat1129, %570
  %572 = add <4 x i32> %571, <i32 3, i32 3, i32 3, i32 3>
  %573 = urem <4 x i32> %572, <i32 80, i32 80, i32 80, i32 80>
  %574 = sitofp <4 x i32> %573 to <4 x double>
  %575 = fmul fast <4 x double> %574, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %576 = extractelement <4 x i64> %569, i32 0
  %577 = shl i64 %576, 3
  %578 = add nuw nsw i64 %577, %567
  %579 = getelementptr i8, i8* %call, i64 %578
  %580 = bitcast i8* %579 to <4 x double>*
  store <4 x double> %575, <4 x double>* %580, align 8, !alias.scope !94, !noalias !96
  %index.next1123 = add i64 %index1122, 4
  %vec.ind.next1127 = add <4 x i64> %vec.ind1126, <i64 4, i64 4, i64 4, i64 4>
  %581 = icmp eq i64 %index.next1123, 16
  br i1 %581, label %polly.loop_exit770.2.2, label %vector.body1120, !llvm.loop !121

polly.loop_exit770.2.2:                           ; preds = %vector.body1120
  %polly.indvar_next766.2.2 = add nuw nsw i64 %polly.indvar765.2.2, 1
  %exitcond929.2.2.not = icmp eq i64 %polly.indvar_next766.2.2, 16
  br i1 %exitcond929.2.2.not, label %polly.loop_header789, label %polly.loop_header762.2.2
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
!34 = !{!"llvm.loop.tile.size", i32 8}
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
!45 = !{!"llvm.loop.tile.size", i32 32}
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
