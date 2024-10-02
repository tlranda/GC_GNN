; ModuleID = 'syr2k_recreations//mmp_syr2k_S_23.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_23.c"
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
  %call807 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1668 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1668, %call2
  %polly.access.call2688 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2688, %call1
  %2 = or i1 %0, %1
  %polly.access.call708 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call708, %call2
  %4 = icmp ule i8* %polly.access.call2688, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call708, %call1
  %8 = icmp ule i8* %polly.access.call1668, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header793, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv7.i, i64 %index1008
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit854.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start470, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i, i64 %index1290
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
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !23

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting471
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start283, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i52, i64 %index1313
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1317 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1317, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1314 = add i64 %index1313, 4
  %57 = icmp eq i64 %index.next1314, %n.vec1312
  br i1 %57, label %middle.block1306, label %vector.body1308, !llvm.loop !57

middle.block1306:                                 ; preds = %vector.body1308
  %cmp.n1316 = icmp eq i64 %indvars.iv21.i52, %n.vec1312
  br i1 %cmp.n1316, label %for.inc6.i63, label %for.body3.i60.preheader1359

for.body3.i60.preheader1359:                      ; preds = %for.body3.i60.preheader, %middle.block1306
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1312, %middle.block1306 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1359, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1359 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !23

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting284
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
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i91, i64 %index1339
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1343 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1343, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1340 = add i64 %index1339, 4
  %68 = icmp eq i64 %index.next1340, %n.vec1338
  br i1 %68, label %middle.block1332, label %vector.body1334, !llvm.loop !59

middle.block1332:                                 ; preds = %vector.body1334
  %cmp.n1342 = icmp eq i64 %indvars.iv21.i91, %n.vec1338
  br i1 %cmp.n1342, label %for.inc6.i102, label %for.body3.i99.preheader1358

for.body3.i99.preheader1358:                      ; preds = %for.body3.i99.preheader, %middle.block1332
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1338, %middle.block1332 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1358, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1358 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !23

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !61
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call807, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !64

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit230.2
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1347 = phi i64 [ %indvar.next1348, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1347, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1349 = icmp ult i64 %88, 4
  br i1 %min.iters.check1349, label %polly.loop_header192.preheader, label %vector.ph1350

vector.ph1350:                                    ; preds = %polly.loop_header
  %n.vec1352 = and i64 %88, -4
  br label %vector.body1346

vector.body1346:                                  ; preds = %vector.body1346, %vector.ph1350
  %index1353 = phi i64 [ 0, %vector.ph1350 ], [ %index.next1354, %vector.body1346 ]
  %90 = shl nuw nsw i64 %index1353, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1357, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1354 = add i64 %index1353, 4
  %95 = icmp eq i64 %index.next1354, %n.vec1352
  br i1 %95, label %middle.block1344, label %vector.body1346, !llvm.loop !72

middle.block1344:                                 ; preds = %vector.body1346
  %cmp.n1356 = icmp eq i64 %88, %n.vec1352
  br i1 %cmp.n1356, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1344
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1352, %middle.block1344 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1344
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1348 = add i64 %indvar1347, 1
  br i1 %exitcond881.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall136, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep877.1 = getelementptr i8, i8* %malloccall136, i64 480
  %scevgep878.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.1, i64 480, i1 false)
  %scevgep877.2 = getelementptr i8, i8* %malloccall136, i64 960
  %scevgep878.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.2, i64 480, i1 false)
  %scevgep877.3 = getelementptr i8, i8* %malloccall136, i64 1440
  %scevgep878.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.3, i64 480, i1 false)
  %scevgep877.4 = getelementptr i8, i8* %malloccall136, i64 1920
  %scevgep878.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.4, i64 480, i1 false)
  %scevgep877.5 = getelementptr i8, i8* %malloccall136, i64 2400
  %scevgep878.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.5, i64 480, i1 false)
  %scevgep877.6 = getelementptr i8, i8* %malloccall136, i64 2880
  %scevgep878.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.6, i64 480, i1 false)
  %scevgep877.7 = getelementptr i8, i8* %malloccall136, i64 3360
  %scevgep878.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.7, i64 480, i1 false)
  %scevgep877.8 = getelementptr i8, i8* %malloccall136, i64 3840
  %scevgep878.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.8, i64 480, i1 false)
  %scevgep877.9 = getelementptr i8, i8* %malloccall136, i64 4320
  %scevgep878.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.9, i64 480, i1 false)
  %scevgep877.10 = getelementptr i8, i8* %malloccall136, i64 4800
  %scevgep878.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.10, i64 480, i1 false)
  %scevgep877.11 = getelementptr i8, i8* %malloccall136, i64 5280
  %scevgep878.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.11, i64 480, i1 false)
  %scevgep877.12 = getelementptr i8, i8* %malloccall136, i64 5760
  %scevgep878.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.12, i64 480, i1 false)
  %scevgep877.13 = getelementptr i8, i8* %malloccall136, i64 6240
  %scevgep878.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.13, i64 480, i1 false)
  %scevgep877.14 = getelementptr i8, i8* %malloccall136, i64 6720
  %scevgep878.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.14, i64 480, i1 false)
  %scevgep877.15 = getelementptr i8, i8* %malloccall136, i64 7200
  %scevgep878.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.15, i64 480, i1 false)
  %scevgep877.16 = getelementptr i8, i8* %malloccall136, i64 7680
  %scevgep878.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.16, i64 480, i1 false)
  %scevgep877.17 = getelementptr i8, i8* %malloccall136, i64 8160
  %scevgep878.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.17, i64 480, i1 false)
  %scevgep877.18 = getelementptr i8, i8* %malloccall136, i64 8640
  %scevgep878.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.18, i64 480, i1 false)
  %scevgep877.19 = getelementptr i8, i8* %malloccall136, i64 9120
  %scevgep878.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.19, i64 480, i1 false)
  %scevgep877.20 = getelementptr i8, i8* %malloccall136, i64 9600
  %scevgep878.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.20, i64 480, i1 false)
  %scevgep877.21 = getelementptr i8, i8* %malloccall136, i64 10080
  %scevgep878.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.21, i64 480, i1 false)
  %scevgep877.22 = getelementptr i8, i8* %malloccall136, i64 10560
  %scevgep878.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.22, i64 480, i1 false)
  %scevgep877.23 = getelementptr i8, i8* %malloccall136, i64 11040
  %scevgep878.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.23, i64 480, i1 false)
  %scevgep877.24 = getelementptr i8, i8* %malloccall136, i64 11520
  %scevgep878.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.24, i64 480, i1 false)
  %scevgep877.25 = getelementptr i8, i8* %malloccall136, i64 12000
  %scevgep878.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.25, i64 480, i1 false)
  %scevgep877.26 = getelementptr i8, i8* %malloccall136, i64 12480
  %scevgep878.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.26, i64 480, i1 false)
  %scevgep877.27 = getelementptr i8, i8* %malloccall136, i64 12960
  %scevgep878.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.27, i64 480, i1 false)
  %scevgep877.28 = getelementptr i8, i8* %malloccall136, i64 13440
  %scevgep878.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.28, i64 480, i1 false)
  %scevgep877.29 = getelementptr i8, i8* %malloccall136, i64 13920
  %scevgep878.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.29, i64 480, i1 false)
  %scevgep877.30 = getelementptr i8, i8* %malloccall136, i64 14400
  %scevgep878.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.30, i64 480, i1 false)
  %scevgep877.31 = getelementptr i8, i8* %malloccall136, i64 14880
  %scevgep878.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.31, i64 480, i1 false)
  %scevgep877.32 = getelementptr i8, i8* %malloccall136, i64 15360
  %scevgep878.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.32, i64 480, i1 false)
  %scevgep877.33 = getelementptr i8, i8* %malloccall136, i64 15840
  %scevgep878.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.33, i64 480, i1 false)
  %scevgep877.34 = getelementptr i8, i8* %malloccall136, i64 16320
  %scevgep878.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.34, i64 480, i1 false)
  %scevgep877.35 = getelementptr i8, i8* %malloccall136, i64 16800
  %scevgep878.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.35, i64 480, i1 false)
  %scevgep877.36 = getelementptr i8, i8* %malloccall136, i64 17280
  %scevgep878.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.36, i64 480, i1 false)
  %scevgep877.37 = getelementptr i8, i8* %malloccall136, i64 17760
  %scevgep878.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.37, i64 480, i1 false)
  %scevgep877.38 = getelementptr i8, i8* %malloccall136, i64 18240
  %scevgep878.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.38, i64 480, i1 false)
  %scevgep877.39 = getelementptr i8, i8* %malloccall136, i64 18720
  %scevgep878.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.39, i64 480, i1 false)
  %scevgep877.40 = getelementptr i8, i8* %malloccall136, i64 19200
  %scevgep878.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.40, i64 480, i1 false)
  %scevgep877.41 = getelementptr i8, i8* %malloccall136, i64 19680
  %scevgep878.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.41, i64 480, i1 false)
  %scevgep877.42 = getelementptr i8, i8* %malloccall136, i64 20160
  %scevgep878.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.42, i64 480, i1 false)
  %scevgep877.43 = getelementptr i8, i8* %malloccall136, i64 20640
  %scevgep878.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.43, i64 480, i1 false)
  %scevgep877.44 = getelementptr i8, i8* %malloccall136, i64 21120
  %scevgep878.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.44, i64 480, i1 false)
  %scevgep877.45 = getelementptr i8, i8* %malloccall136, i64 21600
  %scevgep878.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.45, i64 480, i1 false)
  %scevgep877.46 = getelementptr i8, i8* %malloccall136, i64 22080
  %scevgep878.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.46, i64 480, i1 false)
  %scevgep877.47 = getelementptr i8, i8* %malloccall136, i64 22560
  %scevgep878.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.47, i64 480, i1 false)
  %scevgep877.48 = getelementptr i8, i8* %malloccall136, i64 23040
  %scevgep878.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.48, i64 480, i1 false)
  %scevgep877.49 = getelementptr i8, i8* %malloccall136, i64 23520
  %scevgep878.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.49, i64 480, i1 false)
  %scevgep877.50 = getelementptr i8, i8* %malloccall136, i64 24000
  %scevgep878.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.50, i64 480, i1 false)
  %scevgep877.51 = getelementptr i8, i8* %malloccall136, i64 24480
  %scevgep878.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.51, i64 480, i1 false)
  %scevgep877.52 = getelementptr i8, i8* %malloccall136, i64 24960
  %scevgep878.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.52, i64 480, i1 false)
  %scevgep877.53 = getelementptr i8, i8* %malloccall136, i64 25440
  %scevgep878.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.53, i64 480, i1 false)
  %scevgep877.54 = getelementptr i8, i8* %malloccall136, i64 25920
  %scevgep878.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.54, i64 480, i1 false)
  %scevgep877.55 = getelementptr i8, i8* %malloccall136, i64 26400
  %scevgep878.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.55, i64 480, i1 false)
  %scevgep877.56 = getelementptr i8, i8* %malloccall136, i64 26880
  %scevgep878.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.56, i64 480, i1 false)
  %scevgep877.57 = getelementptr i8, i8* %malloccall136, i64 27360
  %scevgep878.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.57, i64 480, i1 false)
  %scevgep877.58 = getelementptr i8, i8* %malloccall136, i64 27840
  %scevgep878.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.58, i64 480, i1 false)
  %scevgep877.59 = getelementptr i8, i8* %malloccall136, i64 28320
  %scevgep878.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.59, i64 480, i1 false)
  %scevgep877.60 = getelementptr i8, i8* %malloccall136, i64 28800
  %scevgep878.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.60, i64 480, i1 false)
  %scevgep877.61 = getelementptr i8, i8* %malloccall136, i64 29280
  %scevgep878.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.61, i64 480, i1 false)
  %scevgep877.62 = getelementptr i8, i8* %malloccall136, i64 29760
  %scevgep878.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.62, i64 480, i1 false)
  %scevgep877.63 = getelementptr i8, i8* %malloccall136, i64 30240
  %scevgep878.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.63, i64 480, i1 false)
  %scevgep877.64 = getelementptr i8, i8* %malloccall136, i64 30720
  %scevgep878.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.64, i64 480, i1 false)
  %scevgep877.65 = getelementptr i8, i8* %malloccall136, i64 31200
  %scevgep878.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.65, i64 480, i1 false)
  %scevgep877.66 = getelementptr i8, i8* %malloccall136, i64 31680
  %scevgep878.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.66, i64 480, i1 false)
  %scevgep877.67 = getelementptr i8, i8* %malloccall136, i64 32160
  %scevgep878.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.67, i64 480, i1 false)
  %scevgep877.68 = getelementptr i8, i8* %malloccall136, i64 32640
  %scevgep878.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.68, i64 480, i1 false)
  %scevgep877.69 = getelementptr i8, i8* %malloccall136, i64 33120
  %scevgep878.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.69, i64 480, i1 false)
  %scevgep877.70 = getelementptr i8, i8* %malloccall136, i64 33600
  %scevgep878.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.70, i64 480, i1 false)
  %scevgep877.71 = getelementptr i8, i8* %malloccall136, i64 34080
  %scevgep878.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.71, i64 480, i1 false)
  %scevgep877.72 = getelementptr i8, i8* %malloccall136, i64 34560
  %scevgep878.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.72, i64 480, i1 false)
  %scevgep877.73 = getelementptr i8, i8* %malloccall136, i64 35040
  %scevgep878.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.73, i64 480, i1 false)
  %scevgep877.74 = getelementptr i8, i8* %malloccall136, i64 35520
  %scevgep878.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.74, i64 480, i1 false)
  %scevgep877.75 = getelementptr i8, i8* %malloccall136, i64 36000
  %scevgep878.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.75, i64 480, i1 false)
  %scevgep877.76 = getelementptr i8, i8* %malloccall136, i64 36480
  %scevgep878.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.76, i64 480, i1 false)
  %scevgep877.77 = getelementptr i8, i8* %malloccall136, i64 36960
  %scevgep878.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.77, i64 480, i1 false)
  %scevgep877.78 = getelementptr i8, i8* %malloccall136, i64 37440
  %scevgep878.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.78, i64 480, i1 false)
  %scevgep877.79 = getelementptr i8, i8* %malloccall136, i64 37920
  %scevgep878.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep877.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep878.79, i64 480, i1 false)
  br label %polly.loop_header216

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond880.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header216:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit230.2
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230.2 ], [ 1, %polly.loop_header200.preheader ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit230.2 ], [ 0, %polly.loop_header200.preheader ]
  %97 = shl nsw i64 %polly.indvar219, 3
  br label %polly.loop_header228

polly.loop_header228:                             ; preds = %polly.loop_exit252, %polly.loop_header216
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit252 ], [ %indvars.iv, %polly.loop_header216 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit252 ], [ 0, %polly.loop_header216 ]
  br label %polly.loop_header234

polly.loop_exit252:                               ; preds = %polly.loop_exit258
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next870 = add nuw nsw i64 %indvars.iv869, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next232, 8
  br i1 %exitcond873.not, label %polly.loop_header228.1, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234, %polly.loop_header228
  %polly.indvar237 = phi i64 [ 0, %polly.loop_header228 ], [ %polly.indvar_next238, %polly.loop_header234 ]
  %98 = mul nuw nsw i64 %polly.indvar237, 160
  %scevgep867 = getelementptr i8, i8* %malloccall, i64 %98
  %99 = mul nuw nsw i64 %polly.indvar237, 480
  %scevgep868 = getelementptr i8, i8* %call1, i64 %99
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep867, i8* noundef nonnull align 8 dereferenceable(160) %scevgep868, i64 160, i1 false)
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238, %indvars.iv869
  br i1 %exitcond.not, label %polly.loop_header250.preheader, label %polly.loop_header234

polly.loop_header250.preheader:                   ; preds = %polly.loop_header234
  %100 = add nuw nsw i64 %polly.indvar231, %97
  %polly.access.mul.Packed_MemRef_call2266 = mul nuw nsw i64 %100, 60
  %polly.access.mul.Packed_MemRef_call1274 = mul nuw nsw i64 %100, 20
  %101 = mul nuw nsw i64 %100, 640
  br label %polly.loop_header250

polly.loop_header250:                             ; preds = %polly.loop_header250.preheader, %polly.loop_exit258
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_exit258 ], [ 0, %polly.loop_header250.preheader ]
  %polly.access.add.Packed_MemRef_call2267 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call2266
  %polly.access.Packed_MemRef_call2268 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267
  %_p_scalar_269 = load double, double* %polly.access.Packed_MemRef_call2268, align 8
  %polly.access.add.Packed_MemRef_call1275 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1274
  %polly.access.Packed_MemRef_call1276 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275
  %_p_scalar_277 = load double, double* %polly.access.Packed_MemRef_call1276, align 8
  br label %polly.loop_header256

polly.loop_exit258:                               ; preds = %polly.loop_header256
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next254, 20
  br i1 %exitcond872.not, label %polly.loop_exit252, label %polly.loop_header250

polly.loop_header256:                             ; preds = %polly.loop_header256, %polly.loop_header250
  %polly.indvar259 = phi i64 [ 0, %polly.loop_header250 ], [ %polly.indvar_next260, %polly.loop_header256 ]
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar259, 20
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1262, %polly.indvar253
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  %_p_scalar_265 = load double, double* %polly.access.Packed_MemRef_call1264, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_269, %_p_scalar_265
  %polly.access.mul.Packed_MemRef_call2270 = mul nuw nsw i64 %polly.indvar259, 60
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2270, %polly.indvar253
  %polly.access.Packed_MemRef_call2272 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2271
  %_p_scalar_273 = load double, double* %polly.access.Packed_MemRef_call2272, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_277, %_p_scalar_273
  %102 = shl nuw nsw i64 %polly.indvar259, 3
  %103 = add nuw nsw i64 %102, %101
  %scevgep278 = getelementptr i8, i8* %call, i64 %103
  %scevgep278279 = bitcast i8* %scevgep278 to double*
  %_p_scalar_280 = load double, double* %scevgep278279, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_280
  store double %p_add42.i118, double* %scevgep278279, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next260 = add nuw nsw i64 %polly.indvar259, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next260, %indvars.iv869
  br i1 %exitcond871.not, label %polly.loop_exit258, label %polly.loop_header256

polly.start283:                                   ; preds = %kernel_syr2k.exit
  %malloccall285 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  %malloccall287 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header371

polly.exiting284:                                 ; preds = %polly.loop_exit417.2
  tail call void @free(i8* nonnull %malloccall285)
  tail call void @free(i8* nonnull %malloccall287)
  br label %kernel_syr2k.exit90

polly.loop_header371:                             ; preds = %polly.loop_exit379, %polly.start283
  %indvar1321 = phi i64 [ %indvar.next1322, %polly.loop_exit379 ], [ 0, %polly.start283 ]
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_exit379 ], [ 1, %polly.start283 ]
  %104 = add i64 %indvar1321, 1
  %105 = mul nuw nsw i64 %polly.indvar374, 640
  %scevgep383 = getelementptr i8, i8* %call, i64 %105
  %min.iters.check1323 = icmp ult i64 %104, 4
  br i1 %min.iters.check1323, label %polly.loop_header377.preheader, label %vector.ph1324

vector.ph1324:                                    ; preds = %polly.loop_header371
  %n.vec1326 = and i64 %104, -4
  br label %vector.body1320

vector.body1320:                                  ; preds = %vector.body1320, %vector.ph1324
  %index1327 = phi i64 [ 0, %vector.ph1324 ], [ %index.next1328, %vector.body1320 ]
  %106 = shl nuw nsw i64 %index1327, 3
  %107 = getelementptr i8, i8* %scevgep383, i64 %106
  %108 = bitcast i8* %107 to <4 x double>*
  %wide.load1331 = load <4 x double>, <4 x double>* %108, align 8, !alias.scope !75, !noalias !77
  %109 = fmul fast <4 x double> %wide.load1331, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %110 = bitcast i8* %107 to <4 x double>*
  store <4 x double> %109, <4 x double>* %110, align 8, !alias.scope !75, !noalias !77
  %index.next1328 = add i64 %index1327, 4
  %111 = icmp eq i64 %index.next1328, %n.vec1326
  br i1 %111, label %middle.block1318, label %vector.body1320, !llvm.loop !82

middle.block1318:                                 ; preds = %vector.body1320
  %cmp.n1330 = icmp eq i64 %104, %n.vec1326
  br i1 %cmp.n1330, label %polly.loop_exit379, label %polly.loop_header377.preheader

polly.loop_header377.preheader:                   ; preds = %polly.loop_header371, %middle.block1318
  %polly.indvar380.ph = phi i64 [ 0, %polly.loop_header371 ], [ %n.vec1326, %middle.block1318 ]
  br label %polly.loop_header377

polly.loop_exit379:                               ; preds = %polly.loop_header377, %middle.block1318
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond900.not = icmp eq i64 %polly.indvar_next375, 80
  %indvar.next1322 = add i64 %indvar1321, 1
  br i1 %exitcond900.not, label %polly.loop_header387.preheader, label %polly.loop_header371

polly.loop_header387.preheader:                   ; preds = %polly.loop_exit379
  %Packed_MemRef_call1286 = bitcast i8* %malloccall285 to double*
  %Packed_MemRef_call2288 = bitcast i8* %malloccall287 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall287, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep896.1 = getelementptr i8, i8* %malloccall287, i64 480
  %scevgep897.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.1, i64 480, i1 false)
  %scevgep896.2 = getelementptr i8, i8* %malloccall287, i64 960
  %scevgep897.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.2, i64 480, i1 false)
  %scevgep896.3 = getelementptr i8, i8* %malloccall287, i64 1440
  %scevgep897.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.3, i64 480, i1 false)
  %scevgep896.4 = getelementptr i8, i8* %malloccall287, i64 1920
  %scevgep897.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.4, i64 480, i1 false)
  %scevgep896.5 = getelementptr i8, i8* %malloccall287, i64 2400
  %scevgep897.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.5, i64 480, i1 false)
  %scevgep896.6 = getelementptr i8, i8* %malloccall287, i64 2880
  %scevgep897.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.6, i64 480, i1 false)
  %scevgep896.7 = getelementptr i8, i8* %malloccall287, i64 3360
  %scevgep897.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.7, i64 480, i1 false)
  %scevgep896.8 = getelementptr i8, i8* %malloccall287, i64 3840
  %scevgep897.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.8, i64 480, i1 false)
  %scevgep896.9 = getelementptr i8, i8* %malloccall287, i64 4320
  %scevgep897.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.9, i64 480, i1 false)
  %scevgep896.10 = getelementptr i8, i8* %malloccall287, i64 4800
  %scevgep897.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.10, i64 480, i1 false)
  %scevgep896.11 = getelementptr i8, i8* %malloccall287, i64 5280
  %scevgep897.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.11, i64 480, i1 false)
  %scevgep896.12 = getelementptr i8, i8* %malloccall287, i64 5760
  %scevgep897.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.12, i64 480, i1 false)
  %scevgep896.13 = getelementptr i8, i8* %malloccall287, i64 6240
  %scevgep897.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.13, i64 480, i1 false)
  %scevgep896.14 = getelementptr i8, i8* %malloccall287, i64 6720
  %scevgep897.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.14, i64 480, i1 false)
  %scevgep896.15 = getelementptr i8, i8* %malloccall287, i64 7200
  %scevgep897.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.15, i64 480, i1 false)
  %scevgep896.16 = getelementptr i8, i8* %malloccall287, i64 7680
  %scevgep897.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.16, i64 480, i1 false)
  %scevgep896.17 = getelementptr i8, i8* %malloccall287, i64 8160
  %scevgep897.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.17, i64 480, i1 false)
  %scevgep896.18 = getelementptr i8, i8* %malloccall287, i64 8640
  %scevgep897.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.18, i64 480, i1 false)
  %scevgep896.19 = getelementptr i8, i8* %malloccall287, i64 9120
  %scevgep897.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.19, i64 480, i1 false)
  %scevgep896.20 = getelementptr i8, i8* %malloccall287, i64 9600
  %scevgep897.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.20, i64 480, i1 false)
  %scevgep896.21 = getelementptr i8, i8* %malloccall287, i64 10080
  %scevgep897.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.21, i64 480, i1 false)
  %scevgep896.22 = getelementptr i8, i8* %malloccall287, i64 10560
  %scevgep897.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.22, i64 480, i1 false)
  %scevgep896.23 = getelementptr i8, i8* %malloccall287, i64 11040
  %scevgep897.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.23, i64 480, i1 false)
  %scevgep896.24 = getelementptr i8, i8* %malloccall287, i64 11520
  %scevgep897.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.24, i64 480, i1 false)
  %scevgep896.25 = getelementptr i8, i8* %malloccall287, i64 12000
  %scevgep897.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.25, i64 480, i1 false)
  %scevgep896.26 = getelementptr i8, i8* %malloccall287, i64 12480
  %scevgep897.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.26, i64 480, i1 false)
  %scevgep896.27 = getelementptr i8, i8* %malloccall287, i64 12960
  %scevgep897.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.27, i64 480, i1 false)
  %scevgep896.28 = getelementptr i8, i8* %malloccall287, i64 13440
  %scevgep897.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.28, i64 480, i1 false)
  %scevgep896.29 = getelementptr i8, i8* %malloccall287, i64 13920
  %scevgep897.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.29, i64 480, i1 false)
  %scevgep896.30 = getelementptr i8, i8* %malloccall287, i64 14400
  %scevgep897.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.30, i64 480, i1 false)
  %scevgep896.31 = getelementptr i8, i8* %malloccall287, i64 14880
  %scevgep897.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.31, i64 480, i1 false)
  %scevgep896.32 = getelementptr i8, i8* %malloccall287, i64 15360
  %scevgep897.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.32, i64 480, i1 false)
  %scevgep896.33 = getelementptr i8, i8* %malloccall287, i64 15840
  %scevgep897.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.33, i64 480, i1 false)
  %scevgep896.34 = getelementptr i8, i8* %malloccall287, i64 16320
  %scevgep897.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.34, i64 480, i1 false)
  %scevgep896.35 = getelementptr i8, i8* %malloccall287, i64 16800
  %scevgep897.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.35, i64 480, i1 false)
  %scevgep896.36 = getelementptr i8, i8* %malloccall287, i64 17280
  %scevgep897.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.36, i64 480, i1 false)
  %scevgep896.37 = getelementptr i8, i8* %malloccall287, i64 17760
  %scevgep897.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.37, i64 480, i1 false)
  %scevgep896.38 = getelementptr i8, i8* %malloccall287, i64 18240
  %scevgep897.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.38, i64 480, i1 false)
  %scevgep896.39 = getelementptr i8, i8* %malloccall287, i64 18720
  %scevgep897.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.39, i64 480, i1 false)
  %scevgep896.40 = getelementptr i8, i8* %malloccall287, i64 19200
  %scevgep897.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.40, i64 480, i1 false)
  %scevgep896.41 = getelementptr i8, i8* %malloccall287, i64 19680
  %scevgep897.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.41, i64 480, i1 false)
  %scevgep896.42 = getelementptr i8, i8* %malloccall287, i64 20160
  %scevgep897.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.42, i64 480, i1 false)
  %scevgep896.43 = getelementptr i8, i8* %malloccall287, i64 20640
  %scevgep897.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.43, i64 480, i1 false)
  %scevgep896.44 = getelementptr i8, i8* %malloccall287, i64 21120
  %scevgep897.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.44, i64 480, i1 false)
  %scevgep896.45 = getelementptr i8, i8* %malloccall287, i64 21600
  %scevgep897.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.45, i64 480, i1 false)
  %scevgep896.46 = getelementptr i8, i8* %malloccall287, i64 22080
  %scevgep897.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.46, i64 480, i1 false)
  %scevgep896.47 = getelementptr i8, i8* %malloccall287, i64 22560
  %scevgep897.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.47, i64 480, i1 false)
  %scevgep896.48 = getelementptr i8, i8* %malloccall287, i64 23040
  %scevgep897.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.48, i64 480, i1 false)
  %scevgep896.49 = getelementptr i8, i8* %malloccall287, i64 23520
  %scevgep897.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.49, i64 480, i1 false)
  %scevgep896.50 = getelementptr i8, i8* %malloccall287, i64 24000
  %scevgep897.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.50, i64 480, i1 false)
  %scevgep896.51 = getelementptr i8, i8* %malloccall287, i64 24480
  %scevgep897.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.51, i64 480, i1 false)
  %scevgep896.52 = getelementptr i8, i8* %malloccall287, i64 24960
  %scevgep897.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.52, i64 480, i1 false)
  %scevgep896.53 = getelementptr i8, i8* %malloccall287, i64 25440
  %scevgep897.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.53, i64 480, i1 false)
  %scevgep896.54 = getelementptr i8, i8* %malloccall287, i64 25920
  %scevgep897.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.54, i64 480, i1 false)
  %scevgep896.55 = getelementptr i8, i8* %malloccall287, i64 26400
  %scevgep897.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.55, i64 480, i1 false)
  %scevgep896.56 = getelementptr i8, i8* %malloccall287, i64 26880
  %scevgep897.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.56, i64 480, i1 false)
  %scevgep896.57 = getelementptr i8, i8* %malloccall287, i64 27360
  %scevgep897.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.57, i64 480, i1 false)
  %scevgep896.58 = getelementptr i8, i8* %malloccall287, i64 27840
  %scevgep897.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.58, i64 480, i1 false)
  %scevgep896.59 = getelementptr i8, i8* %malloccall287, i64 28320
  %scevgep897.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.59, i64 480, i1 false)
  %scevgep896.60 = getelementptr i8, i8* %malloccall287, i64 28800
  %scevgep897.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.60, i64 480, i1 false)
  %scevgep896.61 = getelementptr i8, i8* %malloccall287, i64 29280
  %scevgep897.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.61, i64 480, i1 false)
  %scevgep896.62 = getelementptr i8, i8* %malloccall287, i64 29760
  %scevgep897.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.62, i64 480, i1 false)
  %scevgep896.63 = getelementptr i8, i8* %malloccall287, i64 30240
  %scevgep897.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.63, i64 480, i1 false)
  %scevgep896.64 = getelementptr i8, i8* %malloccall287, i64 30720
  %scevgep897.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.64, i64 480, i1 false)
  %scevgep896.65 = getelementptr i8, i8* %malloccall287, i64 31200
  %scevgep897.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.65, i64 480, i1 false)
  %scevgep896.66 = getelementptr i8, i8* %malloccall287, i64 31680
  %scevgep897.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.66, i64 480, i1 false)
  %scevgep896.67 = getelementptr i8, i8* %malloccall287, i64 32160
  %scevgep897.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.67, i64 480, i1 false)
  %scevgep896.68 = getelementptr i8, i8* %malloccall287, i64 32640
  %scevgep897.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.68, i64 480, i1 false)
  %scevgep896.69 = getelementptr i8, i8* %malloccall287, i64 33120
  %scevgep897.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.69, i64 480, i1 false)
  %scevgep896.70 = getelementptr i8, i8* %malloccall287, i64 33600
  %scevgep897.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.70, i64 480, i1 false)
  %scevgep896.71 = getelementptr i8, i8* %malloccall287, i64 34080
  %scevgep897.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.71, i64 480, i1 false)
  %scevgep896.72 = getelementptr i8, i8* %malloccall287, i64 34560
  %scevgep897.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.72, i64 480, i1 false)
  %scevgep896.73 = getelementptr i8, i8* %malloccall287, i64 35040
  %scevgep897.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.73, i64 480, i1 false)
  %scevgep896.74 = getelementptr i8, i8* %malloccall287, i64 35520
  %scevgep897.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.74, i64 480, i1 false)
  %scevgep896.75 = getelementptr i8, i8* %malloccall287, i64 36000
  %scevgep897.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.75, i64 480, i1 false)
  %scevgep896.76 = getelementptr i8, i8* %malloccall287, i64 36480
  %scevgep897.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.76, i64 480, i1 false)
  %scevgep896.77 = getelementptr i8, i8* %malloccall287, i64 36960
  %scevgep897.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.77, i64 480, i1 false)
  %scevgep896.78 = getelementptr i8, i8* %malloccall287, i64 37440
  %scevgep897.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.78, i64 480, i1 false)
  %scevgep896.79 = getelementptr i8, i8* %malloccall287, i64 37920
  %scevgep897.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep896.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep897.79, i64 480, i1 false)
  br label %polly.loop_header403

polly.loop_header377:                             ; preds = %polly.loop_header377.preheader, %polly.loop_header377
  %polly.indvar380 = phi i64 [ %polly.indvar_next381, %polly.loop_header377 ], [ %polly.indvar380.ph, %polly.loop_header377.preheader ]
  %112 = shl nuw nsw i64 %polly.indvar380, 3
  %scevgep384 = getelementptr i8, i8* %scevgep383, i64 %112
  %scevgep384385 = bitcast i8* %scevgep384 to double*
  %_p_scalar_386 = load double, double* %scevgep384385, align 8, !alias.scope !75, !noalias !77
  %p_mul.i57 = fmul fast double %_p_scalar_386, 1.200000e+00
  store double %p_mul.i57, double* %scevgep384385, align 8, !alias.scope !75, !noalias !77
  %polly.indvar_next381 = add nuw nsw i64 %polly.indvar380, 1
  %exitcond899.not = icmp eq i64 %polly.indvar_next381, %polly.indvar374
  br i1 %exitcond899.not, label %polly.loop_exit379, label %polly.loop_header377, !llvm.loop !83

polly.loop_header403:                             ; preds = %polly.loop_header387.preheader, %polly.loop_exit417.2
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %polly.loop_exit417.2 ], [ 1, %polly.loop_header387.preheader ]
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit417.2 ], [ 0, %polly.loop_header387.preheader ]
  %113 = shl nsw i64 %polly.indvar406, 3
  br label %polly.loop_header415

polly.loop_header415:                             ; preds = %polly.loop_exit439, %polly.loop_header403
  %indvars.iv887 = phi i64 [ %indvars.iv.next888, %polly.loop_exit439 ], [ %indvars.iv885, %polly.loop_header403 ]
  %polly.indvar418 = phi i64 [ %polly.indvar_next419, %polly.loop_exit439 ], [ 0, %polly.loop_header403 ]
  br label %polly.loop_header421

polly.loop_exit439:                               ; preds = %polly.loop_exit445
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %indvars.iv.next888 = add nuw nsw i64 %indvars.iv887, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next419, 8
  br i1 %exitcond892.not, label %polly.loop_header415.1, label %polly.loop_header415

polly.loop_header421:                             ; preds = %polly.loop_header421, %polly.loop_header415
  %polly.indvar424 = phi i64 [ 0, %polly.loop_header415 ], [ %polly.indvar_next425, %polly.loop_header421 ]
  %114 = mul nuw nsw i64 %polly.indvar424, 160
  %scevgep883 = getelementptr i8, i8* %malloccall285, i64 %114
  %115 = mul nuw nsw i64 %polly.indvar424, 480
  %scevgep884 = getelementptr i8, i8* %call1, i64 %115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep883, i8* noundef nonnull align 8 dereferenceable(160) %scevgep884, i64 160, i1 false)
  %polly.indvar_next425 = add nuw nsw i64 %polly.indvar424, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next425, %indvars.iv887
  br i1 %exitcond889.not, label %polly.loop_header437.preheader, label %polly.loop_header421

polly.loop_header437.preheader:                   ; preds = %polly.loop_header421
  %116 = add nuw nsw i64 %polly.indvar418, %113
  %polly.access.mul.Packed_MemRef_call2288453 = mul nuw nsw i64 %116, 60
  %polly.access.mul.Packed_MemRef_call1286461 = mul nuw nsw i64 %116, 20
  %117 = mul nuw nsw i64 %116, 640
  br label %polly.loop_header437

polly.loop_header437:                             ; preds = %polly.loop_header437.preheader, %polly.loop_exit445
  %polly.indvar440 = phi i64 [ %polly.indvar_next441, %polly.loop_exit445 ], [ 0, %polly.loop_header437.preheader ]
  %polly.access.add.Packed_MemRef_call2288454 = add nuw nsw i64 %polly.indvar440, %polly.access.mul.Packed_MemRef_call2288453
  %polly.access.Packed_MemRef_call2288455 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288454
  %_p_scalar_456 = load double, double* %polly.access.Packed_MemRef_call2288455, align 8
  %polly.access.add.Packed_MemRef_call1286462 = add nuw nsw i64 %polly.indvar440, %polly.access.mul.Packed_MemRef_call1286461
  %polly.access.Packed_MemRef_call1286463 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286462
  %_p_scalar_464 = load double, double* %polly.access.Packed_MemRef_call1286463, align 8
  br label %polly.loop_header443

polly.loop_exit445:                               ; preds = %polly.loop_header443
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next441, 20
  br i1 %exitcond891.not, label %polly.loop_exit439, label %polly.loop_header437

polly.loop_header443:                             ; preds = %polly.loop_header443, %polly.loop_header437
  %polly.indvar446 = phi i64 [ 0, %polly.loop_header437 ], [ %polly.indvar_next447, %polly.loop_header443 ]
  %polly.access.mul.Packed_MemRef_call1286449 = mul nuw nsw i64 %polly.indvar446, 20
  %polly.access.add.Packed_MemRef_call1286450 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286449, %polly.indvar440
  %polly.access.Packed_MemRef_call1286451 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286450
  %_p_scalar_452 = load double, double* %polly.access.Packed_MemRef_call1286451, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_456, %_p_scalar_452
  %polly.access.mul.Packed_MemRef_call2288457 = mul nuw nsw i64 %polly.indvar446, 60
  %polly.access.add.Packed_MemRef_call2288458 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2288457, %polly.indvar440
  %polly.access.Packed_MemRef_call2288459 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288458
  %_p_scalar_460 = load double, double* %polly.access.Packed_MemRef_call2288459, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_464, %_p_scalar_460
  %118 = shl nuw nsw i64 %polly.indvar446, 3
  %119 = add nuw nsw i64 %118, %117
  %scevgep465 = getelementptr i8, i8* %call, i64 %119
  %scevgep465466 = bitcast i8* %scevgep465 to double*
  %_p_scalar_467 = load double, double* %scevgep465466, align 8, !alias.scope !75, !noalias !77
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_467
  store double %p_add42.i79, double* %scevgep465466, align 8, !alias.scope !75, !noalias !77
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next447, %indvars.iv887
  br i1 %exitcond890.not, label %polly.loop_exit445, label %polly.loop_header443

polly.start470:                                   ; preds = %init_array.exit
  %malloccall472 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  %malloccall474 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header558

polly.exiting471:                                 ; preds = %polly.loop_exit604.2
  tail call void @free(i8* nonnull %malloccall472)
  tail call void @free(i8* nonnull %malloccall474)
  br label %kernel_syr2k.exit

polly.loop_header558:                             ; preds = %polly.loop_exit566, %polly.start470
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit566 ], [ 0, %polly.start470 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit566 ], [ 1, %polly.start470 ]
  %120 = add i64 %indvar, 1
  %121 = mul nuw nsw i64 %polly.indvar561, 640
  %scevgep570 = getelementptr i8, i8* %call, i64 %121
  %min.iters.check1297 = icmp ult i64 %120, 4
  br i1 %min.iters.check1297, label %polly.loop_header564.preheader, label %vector.ph1298

vector.ph1298:                                    ; preds = %polly.loop_header558
  %n.vec1300 = and i64 %120, -4
  br label %vector.body1296

vector.body1296:                                  ; preds = %vector.body1296, %vector.ph1298
  %index1301 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1302, %vector.body1296 ]
  %122 = shl nuw nsw i64 %index1301, 3
  %123 = getelementptr i8, i8* %scevgep570, i64 %122
  %124 = bitcast i8* %123 to <4 x double>*
  %wide.load1305 = load <4 x double>, <4 x double>* %124, align 8, !alias.scope !84, !noalias !86
  %125 = fmul fast <4 x double> %wide.load1305, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %126 = bitcast i8* %123 to <4 x double>*
  store <4 x double> %125, <4 x double>* %126, align 8, !alias.scope !84, !noalias !86
  %index.next1302 = add i64 %index1301, 4
  %127 = icmp eq i64 %index.next1302, %n.vec1300
  br i1 %127, label %middle.block1294, label %vector.body1296, !llvm.loop !91

middle.block1294:                                 ; preds = %vector.body1296
  %cmp.n1304 = icmp eq i64 %120, %n.vec1300
  br i1 %cmp.n1304, label %polly.loop_exit566, label %polly.loop_header564.preheader

polly.loop_header564.preheader:                   ; preds = %polly.loop_header558, %middle.block1294
  %polly.indvar567.ph = phi i64 [ 0, %polly.loop_header558 ], [ %n.vec1300, %middle.block1294 ]
  br label %polly.loop_header564

polly.loop_exit566:                               ; preds = %polly.loop_header564, %middle.block1294
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %exitcond919.not = icmp eq i64 %polly.indvar_next562, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond919.not, label %polly.loop_header574.preheader, label %polly.loop_header558

polly.loop_header574.preheader:                   ; preds = %polly.loop_exit566
  %Packed_MemRef_call1473 = bitcast i8* %malloccall472 to double*
  %Packed_MemRef_call2475 = bitcast i8* %malloccall474 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall474, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep915.1 = getelementptr i8, i8* %malloccall474, i64 480
  %scevgep916.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.1, i64 480, i1 false)
  %scevgep915.2 = getelementptr i8, i8* %malloccall474, i64 960
  %scevgep916.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.2, i64 480, i1 false)
  %scevgep915.3 = getelementptr i8, i8* %malloccall474, i64 1440
  %scevgep916.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.3, i64 480, i1 false)
  %scevgep915.4 = getelementptr i8, i8* %malloccall474, i64 1920
  %scevgep916.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.4, i64 480, i1 false)
  %scevgep915.5 = getelementptr i8, i8* %malloccall474, i64 2400
  %scevgep916.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.5, i64 480, i1 false)
  %scevgep915.6 = getelementptr i8, i8* %malloccall474, i64 2880
  %scevgep916.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.6, i64 480, i1 false)
  %scevgep915.7 = getelementptr i8, i8* %malloccall474, i64 3360
  %scevgep916.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.7, i64 480, i1 false)
  %scevgep915.8 = getelementptr i8, i8* %malloccall474, i64 3840
  %scevgep916.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.8, i64 480, i1 false)
  %scevgep915.9 = getelementptr i8, i8* %malloccall474, i64 4320
  %scevgep916.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.9, i64 480, i1 false)
  %scevgep915.10 = getelementptr i8, i8* %malloccall474, i64 4800
  %scevgep916.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.10, i64 480, i1 false)
  %scevgep915.11 = getelementptr i8, i8* %malloccall474, i64 5280
  %scevgep916.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.11, i64 480, i1 false)
  %scevgep915.12 = getelementptr i8, i8* %malloccall474, i64 5760
  %scevgep916.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.12, i64 480, i1 false)
  %scevgep915.13 = getelementptr i8, i8* %malloccall474, i64 6240
  %scevgep916.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.13, i64 480, i1 false)
  %scevgep915.14 = getelementptr i8, i8* %malloccall474, i64 6720
  %scevgep916.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.14, i64 480, i1 false)
  %scevgep915.15 = getelementptr i8, i8* %malloccall474, i64 7200
  %scevgep916.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.15, i64 480, i1 false)
  %scevgep915.16 = getelementptr i8, i8* %malloccall474, i64 7680
  %scevgep916.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.16, i64 480, i1 false)
  %scevgep915.17 = getelementptr i8, i8* %malloccall474, i64 8160
  %scevgep916.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.17, i64 480, i1 false)
  %scevgep915.18 = getelementptr i8, i8* %malloccall474, i64 8640
  %scevgep916.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.18, i64 480, i1 false)
  %scevgep915.19 = getelementptr i8, i8* %malloccall474, i64 9120
  %scevgep916.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.19, i64 480, i1 false)
  %scevgep915.20 = getelementptr i8, i8* %malloccall474, i64 9600
  %scevgep916.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.20, i64 480, i1 false)
  %scevgep915.21 = getelementptr i8, i8* %malloccall474, i64 10080
  %scevgep916.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.21, i64 480, i1 false)
  %scevgep915.22 = getelementptr i8, i8* %malloccall474, i64 10560
  %scevgep916.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.22, i64 480, i1 false)
  %scevgep915.23 = getelementptr i8, i8* %malloccall474, i64 11040
  %scevgep916.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.23, i64 480, i1 false)
  %scevgep915.24 = getelementptr i8, i8* %malloccall474, i64 11520
  %scevgep916.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.24, i64 480, i1 false)
  %scevgep915.25 = getelementptr i8, i8* %malloccall474, i64 12000
  %scevgep916.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.25, i64 480, i1 false)
  %scevgep915.26 = getelementptr i8, i8* %malloccall474, i64 12480
  %scevgep916.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.26, i64 480, i1 false)
  %scevgep915.27 = getelementptr i8, i8* %malloccall474, i64 12960
  %scevgep916.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.27, i64 480, i1 false)
  %scevgep915.28 = getelementptr i8, i8* %malloccall474, i64 13440
  %scevgep916.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.28, i64 480, i1 false)
  %scevgep915.29 = getelementptr i8, i8* %malloccall474, i64 13920
  %scevgep916.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.29, i64 480, i1 false)
  %scevgep915.30 = getelementptr i8, i8* %malloccall474, i64 14400
  %scevgep916.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.30, i64 480, i1 false)
  %scevgep915.31 = getelementptr i8, i8* %malloccall474, i64 14880
  %scevgep916.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.31, i64 480, i1 false)
  %scevgep915.32 = getelementptr i8, i8* %malloccall474, i64 15360
  %scevgep916.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.32, i64 480, i1 false)
  %scevgep915.33 = getelementptr i8, i8* %malloccall474, i64 15840
  %scevgep916.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.33, i64 480, i1 false)
  %scevgep915.34 = getelementptr i8, i8* %malloccall474, i64 16320
  %scevgep916.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.34, i64 480, i1 false)
  %scevgep915.35 = getelementptr i8, i8* %malloccall474, i64 16800
  %scevgep916.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.35, i64 480, i1 false)
  %scevgep915.36 = getelementptr i8, i8* %malloccall474, i64 17280
  %scevgep916.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.36, i64 480, i1 false)
  %scevgep915.37 = getelementptr i8, i8* %malloccall474, i64 17760
  %scevgep916.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.37, i64 480, i1 false)
  %scevgep915.38 = getelementptr i8, i8* %malloccall474, i64 18240
  %scevgep916.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.38, i64 480, i1 false)
  %scevgep915.39 = getelementptr i8, i8* %malloccall474, i64 18720
  %scevgep916.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.39, i64 480, i1 false)
  %scevgep915.40 = getelementptr i8, i8* %malloccall474, i64 19200
  %scevgep916.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.40, i64 480, i1 false)
  %scevgep915.41 = getelementptr i8, i8* %malloccall474, i64 19680
  %scevgep916.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.41, i64 480, i1 false)
  %scevgep915.42 = getelementptr i8, i8* %malloccall474, i64 20160
  %scevgep916.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.42, i64 480, i1 false)
  %scevgep915.43 = getelementptr i8, i8* %malloccall474, i64 20640
  %scevgep916.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.43, i64 480, i1 false)
  %scevgep915.44 = getelementptr i8, i8* %malloccall474, i64 21120
  %scevgep916.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.44, i64 480, i1 false)
  %scevgep915.45 = getelementptr i8, i8* %malloccall474, i64 21600
  %scevgep916.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.45, i64 480, i1 false)
  %scevgep915.46 = getelementptr i8, i8* %malloccall474, i64 22080
  %scevgep916.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.46, i64 480, i1 false)
  %scevgep915.47 = getelementptr i8, i8* %malloccall474, i64 22560
  %scevgep916.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.47, i64 480, i1 false)
  %scevgep915.48 = getelementptr i8, i8* %malloccall474, i64 23040
  %scevgep916.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.48, i64 480, i1 false)
  %scevgep915.49 = getelementptr i8, i8* %malloccall474, i64 23520
  %scevgep916.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.49, i64 480, i1 false)
  %scevgep915.50 = getelementptr i8, i8* %malloccall474, i64 24000
  %scevgep916.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.50, i64 480, i1 false)
  %scevgep915.51 = getelementptr i8, i8* %malloccall474, i64 24480
  %scevgep916.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.51, i64 480, i1 false)
  %scevgep915.52 = getelementptr i8, i8* %malloccall474, i64 24960
  %scevgep916.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.52, i64 480, i1 false)
  %scevgep915.53 = getelementptr i8, i8* %malloccall474, i64 25440
  %scevgep916.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.53, i64 480, i1 false)
  %scevgep915.54 = getelementptr i8, i8* %malloccall474, i64 25920
  %scevgep916.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.54, i64 480, i1 false)
  %scevgep915.55 = getelementptr i8, i8* %malloccall474, i64 26400
  %scevgep916.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.55, i64 480, i1 false)
  %scevgep915.56 = getelementptr i8, i8* %malloccall474, i64 26880
  %scevgep916.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.56, i64 480, i1 false)
  %scevgep915.57 = getelementptr i8, i8* %malloccall474, i64 27360
  %scevgep916.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.57, i64 480, i1 false)
  %scevgep915.58 = getelementptr i8, i8* %malloccall474, i64 27840
  %scevgep916.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.58, i64 480, i1 false)
  %scevgep915.59 = getelementptr i8, i8* %malloccall474, i64 28320
  %scevgep916.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.59, i64 480, i1 false)
  %scevgep915.60 = getelementptr i8, i8* %malloccall474, i64 28800
  %scevgep916.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.60, i64 480, i1 false)
  %scevgep915.61 = getelementptr i8, i8* %malloccall474, i64 29280
  %scevgep916.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.61, i64 480, i1 false)
  %scevgep915.62 = getelementptr i8, i8* %malloccall474, i64 29760
  %scevgep916.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.62, i64 480, i1 false)
  %scevgep915.63 = getelementptr i8, i8* %malloccall474, i64 30240
  %scevgep916.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.63, i64 480, i1 false)
  %scevgep915.64 = getelementptr i8, i8* %malloccall474, i64 30720
  %scevgep916.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.64, i64 480, i1 false)
  %scevgep915.65 = getelementptr i8, i8* %malloccall474, i64 31200
  %scevgep916.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.65, i64 480, i1 false)
  %scevgep915.66 = getelementptr i8, i8* %malloccall474, i64 31680
  %scevgep916.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.66, i64 480, i1 false)
  %scevgep915.67 = getelementptr i8, i8* %malloccall474, i64 32160
  %scevgep916.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.67, i64 480, i1 false)
  %scevgep915.68 = getelementptr i8, i8* %malloccall474, i64 32640
  %scevgep916.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.68, i64 480, i1 false)
  %scevgep915.69 = getelementptr i8, i8* %malloccall474, i64 33120
  %scevgep916.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.69, i64 480, i1 false)
  %scevgep915.70 = getelementptr i8, i8* %malloccall474, i64 33600
  %scevgep916.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.70, i64 480, i1 false)
  %scevgep915.71 = getelementptr i8, i8* %malloccall474, i64 34080
  %scevgep916.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.71, i64 480, i1 false)
  %scevgep915.72 = getelementptr i8, i8* %malloccall474, i64 34560
  %scevgep916.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.72, i64 480, i1 false)
  %scevgep915.73 = getelementptr i8, i8* %malloccall474, i64 35040
  %scevgep916.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.73, i64 480, i1 false)
  %scevgep915.74 = getelementptr i8, i8* %malloccall474, i64 35520
  %scevgep916.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.74, i64 480, i1 false)
  %scevgep915.75 = getelementptr i8, i8* %malloccall474, i64 36000
  %scevgep916.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.75, i64 480, i1 false)
  %scevgep915.76 = getelementptr i8, i8* %malloccall474, i64 36480
  %scevgep916.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.76, i64 480, i1 false)
  %scevgep915.77 = getelementptr i8, i8* %malloccall474, i64 36960
  %scevgep916.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.77, i64 480, i1 false)
  %scevgep915.78 = getelementptr i8, i8* %malloccall474, i64 37440
  %scevgep916.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.78, i64 480, i1 false)
  %scevgep915.79 = getelementptr i8, i8* %malloccall474, i64 37920
  %scevgep916.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep915.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep916.79, i64 480, i1 false)
  br label %polly.loop_header590

polly.loop_header564:                             ; preds = %polly.loop_header564.preheader, %polly.loop_header564
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_header564 ], [ %polly.indvar567.ph, %polly.loop_header564.preheader ]
  %128 = shl nuw nsw i64 %polly.indvar567, 3
  %scevgep571 = getelementptr i8, i8* %scevgep570, i64 %128
  %scevgep571572 = bitcast i8* %scevgep571 to double*
  %_p_scalar_573 = load double, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_573, 1.200000e+00
  store double %p_mul.i, double* %scevgep571572, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond918.not = icmp eq i64 %polly.indvar_next568, %polly.indvar561
  br i1 %exitcond918.not, label %polly.loop_exit566, label %polly.loop_header564, !llvm.loop !92

polly.loop_header590:                             ; preds = %polly.loop_header574.preheader, %polly.loop_exit604.2
  %indvars.iv904 = phi i64 [ %indvars.iv.next905, %polly.loop_exit604.2 ], [ 1, %polly.loop_header574.preheader ]
  %polly.indvar593 = phi i64 [ %polly.indvar_next594, %polly.loop_exit604.2 ], [ 0, %polly.loop_header574.preheader ]
  %129 = shl nsw i64 %polly.indvar593, 3
  br label %polly.loop_header602

polly.loop_header602:                             ; preds = %polly.loop_exit626, %polly.loop_header590
  %indvars.iv906 = phi i64 [ %indvars.iv.next907, %polly.loop_exit626 ], [ %indvars.iv904, %polly.loop_header590 ]
  %polly.indvar605 = phi i64 [ %polly.indvar_next606, %polly.loop_exit626 ], [ 0, %polly.loop_header590 ]
  br label %polly.loop_header608

polly.loop_exit626:                               ; preds = %polly.loop_exit632
  %polly.indvar_next606 = add nuw nsw i64 %polly.indvar605, 1
  %indvars.iv.next907 = add nuw nsw i64 %indvars.iv906, 1
  %exitcond911.not = icmp eq i64 %polly.indvar_next606, 8
  br i1 %exitcond911.not, label %polly.loop_header602.1, label %polly.loop_header602

polly.loop_header608:                             ; preds = %polly.loop_header608, %polly.loop_header602
  %polly.indvar611 = phi i64 [ 0, %polly.loop_header602 ], [ %polly.indvar_next612, %polly.loop_header608 ]
  %130 = mul nuw nsw i64 %polly.indvar611, 160
  %scevgep902 = getelementptr i8, i8* %malloccall472, i64 %130
  %131 = mul nuw nsw i64 %polly.indvar611, 480
  %scevgep903 = getelementptr i8, i8* %call1, i64 %131
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep902, i8* noundef nonnull align 8 dereferenceable(160) %scevgep903, i64 160, i1 false)
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next612, %indvars.iv906
  br i1 %exitcond908.not, label %polly.loop_header624.preheader, label %polly.loop_header608

polly.loop_header624.preheader:                   ; preds = %polly.loop_header608
  %132 = add nuw nsw i64 %polly.indvar605, %129
  %polly.access.mul.Packed_MemRef_call2475640 = mul nuw nsw i64 %132, 60
  %polly.access.mul.Packed_MemRef_call1473648 = mul nuw nsw i64 %132, 20
  %133 = mul nuw nsw i64 %132, 640
  br label %polly.loop_header624

polly.loop_header624:                             ; preds = %polly.loop_header624.preheader, %polly.loop_exit632
  %polly.indvar627 = phi i64 [ %polly.indvar_next628, %polly.loop_exit632 ], [ 0, %polly.loop_header624.preheader ]
  %polly.access.add.Packed_MemRef_call2475641 = add nuw nsw i64 %polly.indvar627, %polly.access.mul.Packed_MemRef_call2475640
  %polly.access.Packed_MemRef_call2475642 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475641
  %_p_scalar_643 = load double, double* %polly.access.Packed_MemRef_call2475642, align 8
  %polly.access.add.Packed_MemRef_call1473649 = add nuw nsw i64 %polly.indvar627, %polly.access.mul.Packed_MemRef_call1473648
  %polly.access.Packed_MemRef_call1473650 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473649
  %_p_scalar_651 = load double, double* %polly.access.Packed_MemRef_call1473650, align 8
  br label %polly.loop_header630

polly.loop_exit632:                               ; preds = %polly.loop_header630
  %polly.indvar_next628 = add nuw nsw i64 %polly.indvar627, 1
  %exitcond910.not = icmp eq i64 %polly.indvar_next628, 20
  br i1 %exitcond910.not, label %polly.loop_exit626, label %polly.loop_header624

polly.loop_header630:                             ; preds = %polly.loop_header630, %polly.loop_header624
  %polly.indvar633 = phi i64 [ 0, %polly.loop_header624 ], [ %polly.indvar_next634, %polly.loop_header630 ]
  %polly.access.mul.Packed_MemRef_call1473636 = mul nuw nsw i64 %polly.indvar633, 20
  %polly.access.add.Packed_MemRef_call1473637 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1473636, %polly.indvar627
  %polly.access.Packed_MemRef_call1473638 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473637
  %_p_scalar_639 = load double, double* %polly.access.Packed_MemRef_call1473638, align 8
  %p_mul27.i = fmul fast double %_p_scalar_643, %_p_scalar_639
  %polly.access.mul.Packed_MemRef_call2475644 = mul nuw nsw i64 %polly.indvar633, 60
  %polly.access.add.Packed_MemRef_call2475645 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2475644, %polly.indvar627
  %polly.access.Packed_MemRef_call2475646 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475645
  %_p_scalar_647 = load double, double* %polly.access.Packed_MemRef_call2475646, align 8
  %p_mul37.i = fmul fast double %_p_scalar_651, %_p_scalar_647
  %134 = shl nuw nsw i64 %polly.indvar633, 3
  %135 = add nuw nsw i64 %134, %133
  %scevgep652 = getelementptr i8, i8* %call, i64 %135
  %scevgep652653 = bitcast i8* %scevgep652 to double*
  %_p_scalar_654 = load double, double* %scevgep652653, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_654
  store double %p_add42.i, double* %scevgep652653, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next634 = add nuw nsw i64 %polly.indvar633, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next634, %indvars.iv906
  br i1 %exitcond909.not, label %polly.loop_exit632, label %polly.loop_header630

polly.loop_header793:                             ; preds = %entry, %polly.loop_exit801
  %polly.indvar796 = phi i64 [ %polly.indvar_next797, %polly.loop_exit801 ], [ 0, %entry ]
  %136 = mul nuw nsw i64 %polly.indvar796, 640
  %137 = trunc i64 %polly.indvar796 to i32
  %broadcast.splatinsert1028 = insertelement <4 x i32> poison, i32 %137, i32 0
  %broadcast.splat1029 = shufflevector <4 x i32> %broadcast.splatinsert1028, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %polly.loop_header793
  %index1020 = phi i64 [ 0, %polly.loop_header793 ], [ %index.next1021, %vector.body1018 ]
  %vec.ind1026 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793 ], [ %vec.ind.next1027, %vector.body1018 ]
  %138 = mul <4 x i32> %vec.ind1026, %broadcast.splat1029
  %139 = add <4 x i32> %138, <i32 3, i32 3, i32 3, i32 3>
  %140 = urem <4 x i32> %139, <i32 80, i32 80, i32 80, i32 80>
  %141 = sitofp <4 x i32> %140 to <4 x double>
  %142 = fmul fast <4 x double> %141, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %143 = shl i64 %index1020, 3
  %144 = add nuw nsw i64 %143, %136
  %145 = getelementptr i8, i8* %call, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %142, <4 x double>* %146, align 8, !alias.scope !93, !noalias !95
  %index.next1021 = add i64 %index1020, 4
  %vec.ind.next1027 = add <4 x i32> %vec.ind1026, <i32 4, i32 4, i32 4, i32 4>
  %147 = icmp eq i64 %index.next1021, 32
  br i1 %147, label %polly.loop_exit801, label %vector.body1018, !llvm.loop !98

polly.loop_exit801:                               ; preds = %vector.body1018
  %polly.indvar_next797 = add nuw nsw i64 %polly.indvar796, 1
  %exitcond938.not = icmp eq i64 %polly.indvar_next797, 32
  br i1 %exitcond938.not, label %polly.loop_header793.1, label %polly.loop_header793

polly.loop_header820:                             ; preds = %polly.loop_exit801.2.2, %polly.loop_exit828
  %polly.indvar823 = phi i64 [ %polly.indvar_next824, %polly.loop_exit828 ], [ 0, %polly.loop_exit801.2.2 ]
  %148 = mul nuw nsw i64 %polly.indvar823, 480
  %149 = trunc i64 %polly.indvar823 to i32
  %broadcast.splatinsert1142 = insertelement <4 x i32> poison, i32 %149, i32 0
  %broadcast.splat1143 = shufflevector <4 x i32> %broadcast.splatinsert1142, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %polly.loop_header820
  %index1134 = phi i64 [ 0, %polly.loop_header820 ], [ %index.next1135, %vector.body1132 ]
  %vec.ind1140 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header820 ], [ %vec.ind.next1141, %vector.body1132 ]
  %150 = mul <4 x i32> %vec.ind1140, %broadcast.splat1143
  %151 = add <4 x i32> %150, <i32 2, i32 2, i32 2, i32 2>
  %152 = urem <4 x i32> %151, <i32 60, i32 60, i32 60, i32 60>
  %153 = sitofp <4 x i32> %152 to <4 x double>
  %154 = fmul fast <4 x double> %153, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %155 = shl i64 %index1134, 3
  %156 = add i64 %155, %148
  %157 = getelementptr i8, i8* %call2, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %154, <4 x double>* %158, align 8, !alias.scope !97, !noalias !99
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1141 = add <4 x i32> %vec.ind1140, <i32 4, i32 4, i32 4, i32 4>
  %159 = icmp eq i64 %index.next1135, 32
  br i1 %159, label %polly.loop_exit828, label %vector.body1132, !llvm.loop !100

polly.loop_exit828:                               ; preds = %vector.body1132
  %polly.indvar_next824 = add nuw nsw i64 %polly.indvar823, 1
  %exitcond929.not = icmp eq i64 %polly.indvar_next824, 32
  br i1 %exitcond929.not, label %polly.loop_header820.1, label %polly.loop_header820

polly.loop_header846:                             ; preds = %polly.loop_exit828.1.2, %polly.loop_exit854
  %polly.indvar849 = phi i64 [ %polly.indvar_next850, %polly.loop_exit854 ], [ 0, %polly.loop_exit828.1.2 ]
  %160 = mul nuw nsw i64 %polly.indvar849, 480
  %161 = trunc i64 %polly.indvar849 to i32
  %broadcast.splatinsert1220 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat1221 = shufflevector <4 x i32> %broadcast.splatinsert1220, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %polly.loop_header846
  %index1212 = phi i64 [ 0, %polly.loop_header846 ], [ %index.next1213, %vector.body1210 ]
  %vec.ind1218 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header846 ], [ %vec.ind.next1219, %vector.body1210 ]
  %162 = mul <4 x i32> %vec.ind1218, %broadcast.splat1221
  %163 = add <4 x i32> %162, <i32 1, i32 1, i32 1, i32 1>
  %164 = urem <4 x i32> %163, <i32 80, i32 80, i32 80, i32 80>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %167 = shl i64 %index1212, 3
  %168 = add i64 %167, %160
  %169 = getelementptr i8, i8* %call1, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !96, !noalias !101
  %index.next1213 = add i64 %index1212, 4
  %vec.ind.next1219 = add <4 x i32> %vec.ind1218, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next1213, 32
  br i1 %171, label %polly.loop_exit854, label %vector.body1210, !llvm.loop !102

polly.loop_exit854:                               ; preds = %vector.body1210
  %polly.indvar_next850 = add nuw nsw i64 %polly.indvar849, 1
  %exitcond923.not = icmp eq i64 %polly.indvar_next850, 32
  br i1 %exitcond923.not, label %polly.loop_header846.1, label %polly.loop_header846

polly.loop_header228.1:                           ; preds = %polly.loop_exit252, %polly.loop_exit252.1
  %indvars.iv869.1 = phi i64 [ %indvars.iv.next870.1, %polly.loop_exit252.1 ], [ %indvars.iv, %polly.loop_exit252 ]
  %polly.indvar231.1 = phi i64 [ %polly.indvar_next232.1, %polly.loop_exit252.1 ], [ 0, %polly.loop_exit252 ]
  br label %polly.loop_header234.1

polly.loop_header234.1:                           ; preds = %polly.loop_header234.1, %polly.loop_header228.1
  %polly.indvar237.1 = phi i64 [ 0, %polly.loop_header228.1 ], [ %polly.indvar_next238.1, %polly.loop_header234.1 ]
  %172 = mul nuw nsw i64 %polly.indvar237.1, 160
  %scevgep867.1 = getelementptr i8, i8* %malloccall, i64 %172
  %173 = mul nuw nsw i64 %polly.indvar237.1, 480
  %174 = add nuw nsw i64 %173, 160
  %scevgep868.1 = getelementptr i8, i8* %call1, i64 %174
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep867.1, i8* noundef nonnull align 8 dereferenceable(160) %scevgep868.1, i64 160, i1 false)
  %polly.indvar_next238.1 = add nuw nsw i64 %polly.indvar237.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next238.1, %indvars.iv869.1
  br i1 %exitcond.1.not, label %polly.loop_header250.preheader.1, label %polly.loop_header234.1

polly.loop_header250.preheader.1:                 ; preds = %polly.loop_header234.1
  %175 = add nuw nsw i64 %polly.indvar231.1, %97
  %polly.access.mul.Packed_MemRef_call2266.1 = mul nuw nsw i64 %175, 60
  %polly.access.mul.Packed_MemRef_call1274.1 = mul nuw nsw i64 %175, 20
  %176 = mul nuw nsw i64 %175, 640
  br label %polly.loop_header250.1

polly.loop_header250.1:                           ; preds = %polly.loop_exit258.1, %polly.loop_header250.preheader.1
  %polly.indvar253.1 = phi i64 [ %polly.indvar_next254.1, %polly.loop_exit258.1 ], [ 0, %polly.loop_header250.preheader.1 ]
  %177 = add nuw nsw i64 %polly.indvar253.1, 20
  %polly.access.add.Packed_MemRef_call2267.1 = add nuw nsw i64 %177, %polly.access.mul.Packed_MemRef_call2266.1
  %polly.access.Packed_MemRef_call2268.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.1
  %_p_scalar_269.1 = load double, double* %polly.access.Packed_MemRef_call2268.1, align 8
  %polly.access.add.Packed_MemRef_call1275.1 = add nuw nsw i64 %polly.indvar253.1, %polly.access.mul.Packed_MemRef_call1274.1
  %polly.access.Packed_MemRef_call1276.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.1
  %_p_scalar_277.1 = load double, double* %polly.access.Packed_MemRef_call1276.1, align 8
  br label %polly.loop_header256.1

polly.loop_header256.1:                           ; preds = %polly.loop_header256.1, %polly.loop_header250.1
  %polly.indvar259.1 = phi i64 [ 0, %polly.loop_header250.1 ], [ %polly.indvar_next260.1, %polly.loop_header256.1 ]
  %polly.access.mul.Packed_MemRef_call1262.1 = mul nuw nsw i64 %polly.indvar259.1, 20
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1262.1, %polly.indvar253.1
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  %_p_scalar_265.1 = load double, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_269.1, %_p_scalar_265.1
  %polly.access.mul.Packed_MemRef_call2270.1 = mul nuw nsw i64 %polly.indvar259.1, 60
  %polly.access.add.Packed_MemRef_call2271.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2270.1, %177
  %polly.access.Packed_MemRef_call2272.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2271.1
  %_p_scalar_273.1 = load double, double* %polly.access.Packed_MemRef_call2272.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_277.1, %_p_scalar_273.1
  %178 = shl nuw nsw i64 %polly.indvar259.1, 3
  %179 = add nuw nsw i64 %178, %176
  %scevgep278.1 = getelementptr i8, i8* %call, i64 %179
  %scevgep278279.1 = bitcast i8* %scevgep278.1 to double*
  %_p_scalar_280.1 = load double, double* %scevgep278279.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_280.1
  store double %p_add42.i118.1, double* %scevgep278279.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next260.1 = add nuw nsw i64 %polly.indvar259.1, 1
  %exitcond871.1.not = icmp eq i64 %polly.indvar_next260.1, %indvars.iv869.1
  br i1 %exitcond871.1.not, label %polly.loop_exit258.1, label %polly.loop_header256.1

polly.loop_exit258.1:                             ; preds = %polly.loop_header256.1
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %exitcond872.1.not = icmp eq i64 %polly.indvar_next254.1, 20
  br i1 %exitcond872.1.not, label %polly.loop_exit252.1, label %polly.loop_header250.1

polly.loop_exit252.1:                             ; preds = %polly.loop_exit258.1
  %polly.indvar_next232.1 = add nuw nsw i64 %polly.indvar231.1, 1
  %indvars.iv.next870.1 = add nuw nsw i64 %indvars.iv869.1, 1
  %exitcond873.1.not = icmp eq i64 %polly.indvar_next232.1, 8
  br i1 %exitcond873.1.not, label %polly.loop_header228.2, label %polly.loop_header228.1

polly.loop_header228.2:                           ; preds = %polly.loop_exit252.1, %polly.loop_exit252.2
  %indvars.iv869.2 = phi i64 [ %indvars.iv.next870.2, %polly.loop_exit252.2 ], [ %indvars.iv, %polly.loop_exit252.1 ]
  %polly.indvar231.2 = phi i64 [ %polly.indvar_next232.2, %polly.loop_exit252.2 ], [ 0, %polly.loop_exit252.1 ]
  br label %polly.loop_header234.2

polly.loop_header234.2:                           ; preds = %polly.loop_header234.2, %polly.loop_header228.2
  %polly.indvar237.2 = phi i64 [ 0, %polly.loop_header228.2 ], [ %polly.indvar_next238.2, %polly.loop_header234.2 ]
  %180 = mul nuw nsw i64 %polly.indvar237.2, 160
  %scevgep867.2 = getelementptr i8, i8* %malloccall, i64 %180
  %181 = mul nuw nsw i64 %polly.indvar237.2, 480
  %182 = add nuw nsw i64 %181, 320
  %scevgep868.2 = getelementptr i8, i8* %call1, i64 %182
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep867.2, i8* noundef nonnull align 8 dereferenceable(160) %scevgep868.2, i64 160, i1 false)
  %polly.indvar_next238.2 = add nuw nsw i64 %polly.indvar237.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next238.2, %indvars.iv869.2
  br i1 %exitcond.2.not, label %polly.loop_header250.preheader.2, label %polly.loop_header234.2

polly.loop_header250.preheader.2:                 ; preds = %polly.loop_header234.2
  %183 = add nuw nsw i64 %polly.indvar231.2, %97
  %polly.access.mul.Packed_MemRef_call2266.2 = mul nuw nsw i64 %183, 60
  %polly.access.mul.Packed_MemRef_call1274.2 = mul nuw nsw i64 %183, 20
  %184 = mul nuw nsw i64 %183, 640
  br label %polly.loop_header250.2

polly.loop_header250.2:                           ; preds = %polly.loop_exit258.2, %polly.loop_header250.preheader.2
  %polly.indvar253.2 = phi i64 [ %polly.indvar_next254.2, %polly.loop_exit258.2 ], [ 0, %polly.loop_header250.preheader.2 ]
  %185 = add nuw nsw i64 %polly.indvar253.2, 40
  %polly.access.add.Packed_MemRef_call2267.2 = add nuw nsw i64 %185, %polly.access.mul.Packed_MemRef_call2266.2
  %polly.access.Packed_MemRef_call2268.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.2
  %_p_scalar_269.2 = load double, double* %polly.access.Packed_MemRef_call2268.2, align 8
  %polly.access.add.Packed_MemRef_call1275.2 = add nuw nsw i64 %polly.indvar253.2, %polly.access.mul.Packed_MemRef_call1274.2
  %polly.access.Packed_MemRef_call1276.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1275.2
  %_p_scalar_277.2 = load double, double* %polly.access.Packed_MemRef_call1276.2, align 8
  br label %polly.loop_header256.2

polly.loop_header256.2:                           ; preds = %polly.loop_header256.2, %polly.loop_header250.2
  %polly.indvar259.2 = phi i64 [ 0, %polly.loop_header250.2 ], [ %polly.indvar_next260.2, %polly.loop_header256.2 ]
  %polly.access.mul.Packed_MemRef_call1262.2 = mul nuw nsw i64 %polly.indvar259.2, 20
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1262.2, %polly.indvar253.2
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  %_p_scalar_265.2 = load double, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_269.2, %_p_scalar_265.2
  %polly.access.mul.Packed_MemRef_call2270.2 = mul nuw nsw i64 %polly.indvar259.2, 60
  %polly.access.add.Packed_MemRef_call2271.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2270.2, %185
  %polly.access.Packed_MemRef_call2272.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2271.2
  %_p_scalar_273.2 = load double, double* %polly.access.Packed_MemRef_call2272.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_277.2, %_p_scalar_273.2
  %186 = shl nuw nsw i64 %polly.indvar259.2, 3
  %187 = add nuw nsw i64 %186, %184
  %scevgep278.2 = getelementptr i8, i8* %call, i64 %187
  %scevgep278279.2 = bitcast i8* %scevgep278.2 to double*
  %_p_scalar_280.2 = load double, double* %scevgep278279.2, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_280.2
  store double %p_add42.i118.2, double* %scevgep278279.2, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next260.2 = add nuw nsw i64 %polly.indvar259.2, 1
  %exitcond871.2.not = icmp eq i64 %polly.indvar_next260.2, %indvars.iv869.2
  br i1 %exitcond871.2.not, label %polly.loop_exit258.2, label %polly.loop_header256.2

polly.loop_exit258.2:                             ; preds = %polly.loop_header256.2
  %polly.indvar_next254.2 = add nuw nsw i64 %polly.indvar253.2, 1
  %exitcond872.2.not = icmp eq i64 %polly.indvar_next254.2, 20
  br i1 %exitcond872.2.not, label %polly.loop_exit252.2, label %polly.loop_header250.2

polly.loop_exit252.2:                             ; preds = %polly.loop_exit258.2
  %polly.indvar_next232.2 = add nuw nsw i64 %polly.indvar231.2, 1
  %indvars.iv.next870.2 = add nuw nsw i64 %indvars.iv869.2, 1
  %exitcond873.2.not = icmp eq i64 %polly.indvar_next232.2, 8
  br i1 %exitcond873.2.not, label %polly.loop_exit230.2, label %polly.loop_header228.2

polly.loop_exit230.2:                             ; preds = %polly.loop_exit252.2
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %exitcond875.not = icmp eq i64 %polly.indvar_next220, 10
  br i1 %exitcond875.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header415.1:                           ; preds = %polly.loop_exit439, %polly.loop_exit439.1
  %indvars.iv887.1 = phi i64 [ %indvars.iv.next888.1, %polly.loop_exit439.1 ], [ %indvars.iv885, %polly.loop_exit439 ]
  %polly.indvar418.1 = phi i64 [ %polly.indvar_next419.1, %polly.loop_exit439.1 ], [ 0, %polly.loop_exit439 ]
  br label %polly.loop_header421.1

polly.loop_header421.1:                           ; preds = %polly.loop_header421.1, %polly.loop_header415.1
  %polly.indvar424.1 = phi i64 [ 0, %polly.loop_header415.1 ], [ %polly.indvar_next425.1, %polly.loop_header421.1 ]
  %188 = mul nuw nsw i64 %polly.indvar424.1, 160
  %scevgep883.1 = getelementptr i8, i8* %malloccall285, i64 %188
  %189 = mul nuw nsw i64 %polly.indvar424.1, 480
  %190 = add nuw nsw i64 %189, 160
  %scevgep884.1 = getelementptr i8, i8* %call1, i64 %190
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep883.1, i8* noundef nonnull align 8 dereferenceable(160) %scevgep884.1, i64 160, i1 false)
  %polly.indvar_next425.1 = add nuw nsw i64 %polly.indvar424.1, 1
  %exitcond889.1.not = icmp eq i64 %polly.indvar_next425.1, %indvars.iv887.1
  br i1 %exitcond889.1.not, label %polly.loop_header437.preheader.1, label %polly.loop_header421.1

polly.loop_header437.preheader.1:                 ; preds = %polly.loop_header421.1
  %191 = add nuw nsw i64 %polly.indvar418.1, %113
  %polly.access.mul.Packed_MemRef_call2288453.1 = mul nuw nsw i64 %191, 60
  %polly.access.mul.Packed_MemRef_call1286461.1 = mul nuw nsw i64 %191, 20
  %192 = mul nuw nsw i64 %191, 640
  br label %polly.loop_header437.1

polly.loop_header437.1:                           ; preds = %polly.loop_exit445.1, %polly.loop_header437.preheader.1
  %polly.indvar440.1 = phi i64 [ %polly.indvar_next441.1, %polly.loop_exit445.1 ], [ 0, %polly.loop_header437.preheader.1 ]
  %193 = add nuw nsw i64 %polly.indvar440.1, 20
  %polly.access.add.Packed_MemRef_call2288454.1 = add nuw nsw i64 %193, %polly.access.mul.Packed_MemRef_call2288453.1
  %polly.access.Packed_MemRef_call2288455.1 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288454.1
  %_p_scalar_456.1 = load double, double* %polly.access.Packed_MemRef_call2288455.1, align 8
  %polly.access.add.Packed_MemRef_call1286462.1 = add nuw nsw i64 %polly.indvar440.1, %polly.access.mul.Packed_MemRef_call1286461.1
  %polly.access.Packed_MemRef_call1286463.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286462.1
  %_p_scalar_464.1 = load double, double* %polly.access.Packed_MemRef_call1286463.1, align 8
  br label %polly.loop_header443.1

polly.loop_header443.1:                           ; preds = %polly.loop_header443.1, %polly.loop_header437.1
  %polly.indvar446.1 = phi i64 [ 0, %polly.loop_header437.1 ], [ %polly.indvar_next447.1, %polly.loop_header443.1 ]
  %polly.access.mul.Packed_MemRef_call1286449.1 = mul nuw nsw i64 %polly.indvar446.1, 20
  %polly.access.add.Packed_MemRef_call1286450.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286449.1, %polly.indvar440.1
  %polly.access.Packed_MemRef_call1286451.1 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286450.1
  %_p_scalar_452.1 = load double, double* %polly.access.Packed_MemRef_call1286451.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_456.1, %_p_scalar_452.1
  %polly.access.mul.Packed_MemRef_call2288457.1 = mul nuw nsw i64 %polly.indvar446.1, 60
  %polly.access.add.Packed_MemRef_call2288458.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2288457.1, %193
  %polly.access.Packed_MemRef_call2288459.1 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288458.1
  %_p_scalar_460.1 = load double, double* %polly.access.Packed_MemRef_call2288459.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_464.1, %_p_scalar_460.1
  %194 = shl nuw nsw i64 %polly.indvar446.1, 3
  %195 = add nuw nsw i64 %194, %192
  %scevgep465.1 = getelementptr i8, i8* %call, i64 %195
  %scevgep465466.1 = bitcast i8* %scevgep465.1 to double*
  %_p_scalar_467.1 = load double, double* %scevgep465466.1, align 8, !alias.scope !75, !noalias !77
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_467.1
  store double %p_add42.i79.1, double* %scevgep465466.1, align 8, !alias.scope !75, !noalias !77
  %polly.indvar_next447.1 = add nuw nsw i64 %polly.indvar446.1, 1
  %exitcond890.1.not = icmp eq i64 %polly.indvar_next447.1, %indvars.iv887.1
  br i1 %exitcond890.1.not, label %polly.loop_exit445.1, label %polly.loop_header443.1

polly.loop_exit445.1:                             ; preds = %polly.loop_header443.1
  %polly.indvar_next441.1 = add nuw nsw i64 %polly.indvar440.1, 1
  %exitcond891.1.not = icmp eq i64 %polly.indvar_next441.1, 20
  br i1 %exitcond891.1.not, label %polly.loop_exit439.1, label %polly.loop_header437.1

polly.loop_exit439.1:                             ; preds = %polly.loop_exit445.1
  %polly.indvar_next419.1 = add nuw nsw i64 %polly.indvar418.1, 1
  %indvars.iv.next888.1 = add nuw nsw i64 %indvars.iv887.1, 1
  %exitcond892.1.not = icmp eq i64 %polly.indvar_next419.1, 8
  br i1 %exitcond892.1.not, label %polly.loop_header415.2, label %polly.loop_header415.1

polly.loop_header415.2:                           ; preds = %polly.loop_exit439.1, %polly.loop_exit439.2
  %indvars.iv887.2 = phi i64 [ %indvars.iv.next888.2, %polly.loop_exit439.2 ], [ %indvars.iv885, %polly.loop_exit439.1 ]
  %polly.indvar418.2 = phi i64 [ %polly.indvar_next419.2, %polly.loop_exit439.2 ], [ 0, %polly.loop_exit439.1 ]
  br label %polly.loop_header421.2

polly.loop_header421.2:                           ; preds = %polly.loop_header421.2, %polly.loop_header415.2
  %polly.indvar424.2 = phi i64 [ 0, %polly.loop_header415.2 ], [ %polly.indvar_next425.2, %polly.loop_header421.2 ]
  %196 = mul nuw nsw i64 %polly.indvar424.2, 160
  %scevgep883.2 = getelementptr i8, i8* %malloccall285, i64 %196
  %197 = mul nuw nsw i64 %polly.indvar424.2, 480
  %198 = add nuw nsw i64 %197, 320
  %scevgep884.2 = getelementptr i8, i8* %call1, i64 %198
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep883.2, i8* noundef nonnull align 8 dereferenceable(160) %scevgep884.2, i64 160, i1 false)
  %polly.indvar_next425.2 = add nuw nsw i64 %polly.indvar424.2, 1
  %exitcond889.2.not = icmp eq i64 %polly.indvar_next425.2, %indvars.iv887.2
  br i1 %exitcond889.2.not, label %polly.loop_header437.preheader.2, label %polly.loop_header421.2

polly.loop_header437.preheader.2:                 ; preds = %polly.loop_header421.2
  %199 = add nuw nsw i64 %polly.indvar418.2, %113
  %polly.access.mul.Packed_MemRef_call2288453.2 = mul nuw nsw i64 %199, 60
  %polly.access.mul.Packed_MemRef_call1286461.2 = mul nuw nsw i64 %199, 20
  %200 = mul nuw nsw i64 %199, 640
  br label %polly.loop_header437.2

polly.loop_header437.2:                           ; preds = %polly.loop_exit445.2, %polly.loop_header437.preheader.2
  %polly.indvar440.2 = phi i64 [ %polly.indvar_next441.2, %polly.loop_exit445.2 ], [ 0, %polly.loop_header437.preheader.2 ]
  %201 = add nuw nsw i64 %polly.indvar440.2, 40
  %polly.access.add.Packed_MemRef_call2288454.2 = add nuw nsw i64 %201, %polly.access.mul.Packed_MemRef_call2288453.2
  %polly.access.Packed_MemRef_call2288455.2 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288454.2
  %_p_scalar_456.2 = load double, double* %polly.access.Packed_MemRef_call2288455.2, align 8
  %polly.access.add.Packed_MemRef_call1286462.2 = add nuw nsw i64 %polly.indvar440.2, %polly.access.mul.Packed_MemRef_call1286461.2
  %polly.access.Packed_MemRef_call1286463.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286462.2
  %_p_scalar_464.2 = load double, double* %polly.access.Packed_MemRef_call1286463.2, align 8
  br label %polly.loop_header443.2

polly.loop_header443.2:                           ; preds = %polly.loop_header443.2, %polly.loop_header437.2
  %polly.indvar446.2 = phi i64 [ 0, %polly.loop_header437.2 ], [ %polly.indvar_next447.2, %polly.loop_header443.2 ]
  %polly.access.mul.Packed_MemRef_call1286449.2 = mul nuw nsw i64 %polly.indvar446.2, 20
  %polly.access.add.Packed_MemRef_call1286450.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1286449.2, %polly.indvar440.2
  %polly.access.Packed_MemRef_call1286451.2 = getelementptr double, double* %Packed_MemRef_call1286, i64 %polly.access.add.Packed_MemRef_call1286450.2
  %_p_scalar_452.2 = load double, double* %polly.access.Packed_MemRef_call1286451.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_456.2, %_p_scalar_452.2
  %polly.access.mul.Packed_MemRef_call2288457.2 = mul nuw nsw i64 %polly.indvar446.2, 60
  %polly.access.add.Packed_MemRef_call2288458.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2288457.2, %201
  %polly.access.Packed_MemRef_call2288459.2 = getelementptr double, double* %Packed_MemRef_call2288, i64 %polly.access.add.Packed_MemRef_call2288458.2
  %_p_scalar_460.2 = load double, double* %polly.access.Packed_MemRef_call2288459.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_464.2, %_p_scalar_460.2
  %202 = shl nuw nsw i64 %polly.indvar446.2, 3
  %203 = add nuw nsw i64 %202, %200
  %scevgep465.2 = getelementptr i8, i8* %call, i64 %203
  %scevgep465466.2 = bitcast i8* %scevgep465.2 to double*
  %_p_scalar_467.2 = load double, double* %scevgep465466.2, align 8, !alias.scope !75, !noalias !77
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_467.2
  store double %p_add42.i79.2, double* %scevgep465466.2, align 8, !alias.scope !75, !noalias !77
  %polly.indvar_next447.2 = add nuw nsw i64 %polly.indvar446.2, 1
  %exitcond890.2.not = icmp eq i64 %polly.indvar_next447.2, %indvars.iv887.2
  br i1 %exitcond890.2.not, label %polly.loop_exit445.2, label %polly.loop_header443.2

polly.loop_exit445.2:                             ; preds = %polly.loop_header443.2
  %polly.indvar_next441.2 = add nuw nsw i64 %polly.indvar440.2, 1
  %exitcond891.2.not = icmp eq i64 %polly.indvar_next441.2, 20
  br i1 %exitcond891.2.not, label %polly.loop_exit439.2, label %polly.loop_header437.2

polly.loop_exit439.2:                             ; preds = %polly.loop_exit445.2
  %polly.indvar_next419.2 = add nuw nsw i64 %polly.indvar418.2, 1
  %indvars.iv.next888.2 = add nuw nsw i64 %indvars.iv887.2, 1
  %exitcond892.2.not = icmp eq i64 %polly.indvar_next419.2, 8
  br i1 %exitcond892.2.not, label %polly.loop_exit417.2, label %polly.loop_header415.2

polly.loop_exit417.2:                             ; preds = %polly.loop_exit439.2
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, 8
  %exitcond894.not = icmp eq i64 %polly.indvar_next407, 10
  br i1 %exitcond894.not, label %polly.exiting284, label %polly.loop_header403

polly.loop_header602.1:                           ; preds = %polly.loop_exit626, %polly.loop_exit626.1
  %indvars.iv906.1 = phi i64 [ %indvars.iv.next907.1, %polly.loop_exit626.1 ], [ %indvars.iv904, %polly.loop_exit626 ]
  %polly.indvar605.1 = phi i64 [ %polly.indvar_next606.1, %polly.loop_exit626.1 ], [ 0, %polly.loop_exit626 ]
  br label %polly.loop_header608.1

polly.loop_header608.1:                           ; preds = %polly.loop_header608.1, %polly.loop_header602.1
  %polly.indvar611.1 = phi i64 [ 0, %polly.loop_header602.1 ], [ %polly.indvar_next612.1, %polly.loop_header608.1 ]
  %204 = mul nuw nsw i64 %polly.indvar611.1, 160
  %scevgep902.1 = getelementptr i8, i8* %malloccall472, i64 %204
  %205 = mul nuw nsw i64 %polly.indvar611.1, 480
  %206 = add nuw nsw i64 %205, 160
  %scevgep903.1 = getelementptr i8, i8* %call1, i64 %206
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep902.1, i8* noundef nonnull align 8 dereferenceable(160) %scevgep903.1, i64 160, i1 false)
  %polly.indvar_next612.1 = add nuw nsw i64 %polly.indvar611.1, 1
  %exitcond908.1.not = icmp eq i64 %polly.indvar_next612.1, %indvars.iv906.1
  br i1 %exitcond908.1.not, label %polly.loop_header624.preheader.1, label %polly.loop_header608.1

polly.loop_header624.preheader.1:                 ; preds = %polly.loop_header608.1
  %207 = add nuw nsw i64 %polly.indvar605.1, %129
  %polly.access.mul.Packed_MemRef_call2475640.1 = mul nuw nsw i64 %207, 60
  %polly.access.mul.Packed_MemRef_call1473648.1 = mul nuw nsw i64 %207, 20
  %208 = mul nuw nsw i64 %207, 640
  br label %polly.loop_header624.1

polly.loop_header624.1:                           ; preds = %polly.loop_exit632.1, %polly.loop_header624.preheader.1
  %polly.indvar627.1 = phi i64 [ %polly.indvar_next628.1, %polly.loop_exit632.1 ], [ 0, %polly.loop_header624.preheader.1 ]
  %209 = add nuw nsw i64 %polly.indvar627.1, 20
  %polly.access.add.Packed_MemRef_call2475641.1 = add nuw nsw i64 %209, %polly.access.mul.Packed_MemRef_call2475640.1
  %polly.access.Packed_MemRef_call2475642.1 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475641.1
  %_p_scalar_643.1 = load double, double* %polly.access.Packed_MemRef_call2475642.1, align 8
  %polly.access.add.Packed_MemRef_call1473649.1 = add nuw nsw i64 %polly.indvar627.1, %polly.access.mul.Packed_MemRef_call1473648.1
  %polly.access.Packed_MemRef_call1473650.1 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473649.1
  %_p_scalar_651.1 = load double, double* %polly.access.Packed_MemRef_call1473650.1, align 8
  br label %polly.loop_header630.1

polly.loop_header630.1:                           ; preds = %polly.loop_header630.1, %polly.loop_header624.1
  %polly.indvar633.1 = phi i64 [ 0, %polly.loop_header624.1 ], [ %polly.indvar_next634.1, %polly.loop_header630.1 ]
  %polly.access.mul.Packed_MemRef_call1473636.1 = mul nuw nsw i64 %polly.indvar633.1, 20
  %polly.access.add.Packed_MemRef_call1473637.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1473636.1, %polly.indvar627.1
  %polly.access.Packed_MemRef_call1473638.1 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473637.1
  %_p_scalar_639.1 = load double, double* %polly.access.Packed_MemRef_call1473638.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_643.1, %_p_scalar_639.1
  %polly.access.mul.Packed_MemRef_call2475644.1 = mul nuw nsw i64 %polly.indvar633.1, 60
  %polly.access.add.Packed_MemRef_call2475645.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2475644.1, %209
  %polly.access.Packed_MemRef_call2475646.1 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475645.1
  %_p_scalar_647.1 = load double, double* %polly.access.Packed_MemRef_call2475646.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_651.1, %_p_scalar_647.1
  %210 = shl nuw nsw i64 %polly.indvar633.1, 3
  %211 = add nuw nsw i64 %210, %208
  %scevgep652.1 = getelementptr i8, i8* %call, i64 %211
  %scevgep652653.1 = bitcast i8* %scevgep652.1 to double*
  %_p_scalar_654.1 = load double, double* %scevgep652653.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_654.1
  store double %p_add42.i.1, double* %scevgep652653.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next634.1 = add nuw nsw i64 %polly.indvar633.1, 1
  %exitcond909.1.not = icmp eq i64 %polly.indvar_next634.1, %indvars.iv906.1
  br i1 %exitcond909.1.not, label %polly.loop_exit632.1, label %polly.loop_header630.1

polly.loop_exit632.1:                             ; preds = %polly.loop_header630.1
  %polly.indvar_next628.1 = add nuw nsw i64 %polly.indvar627.1, 1
  %exitcond910.1.not = icmp eq i64 %polly.indvar_next628.1, 20
  br i1 %exitcond910.1.not, label %polly.loop_exit626.1, label %polly.loop_header624.1

polly.loop_exit626.1:                             ; preds = %polly.loop_exit632.1
  %polly.indvar_next606.1 = add nuw nsw i64 %polly.indvar605.1, 1
  %indvars.iv.next907.1 = add nuw nsw i64 %indvars.iv906.1, 1
  %exitcond911.1.not = icmp eq i64 %polly.indvar_next606.1, 8
  br i1 %exitcond911.1.not, label %polly.loop_header602.2, label %polly.loop_header602.1

polly.loop_header602.2:                           ; preds = %polly.loop_exit626.1, %polly.loop_exit626.2
  %indvars.iv906.2 = phi i64 [ %indvars.iv.next907.2, %polly.loop_exit626.2 ], [ %indvars.iv904, %polly.loop_exit626.1 ]
  %polly.indvar605.2 = phi i64 [ %polly.indvar_next606.2, %polly.loop_exit626.2 ], [ 0, %polly.loop_exit626.1 ]
  br label %polly.loop_header608.2

polly.loop_header608.2:                           ; preds = %polly.loop_header608.2, %polly.loop_header602.2
  %polly.indvar611.2 = phi i64 [ 0, %polly.loop_header602.2 ], [ %polly.indvar_next612.2, %polly.loop_header608.2 ]
  %212 = mul nuw nsw i64 %polly.indvar611.2, 160
  %scevgep902.2 = getelementptr i8, i8* %malloccall472, i64 %212
  %213 = mul nuw nsw i64 %polly.indvar611.2, 480
  %214 = add nuw nsw i64 %213, 320
  %scevgep903.2 = getelementptr i8, i8* %call1, i64 %214
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(160) %scevgep902.2, i8* noundef nonnull align 8 dereferenceable(160) %scevgep903.2, i64 160, i1 false)
  %polly.indvar_next612.2 = add nuw nsw i64 %polly.indvar611.2, 1
  %exitcond908.2.not = icmp eq i64 %polly.indvar_next612.2, %indvars.iv906.2
  br i1 %exitcond908.2.not, label %polly.loop_header624.preheader.2, label %polly.loop_header608.2

polly.loop_header624.preheader.2:                 ; preds = %polly.loop_header608.2
  %215 = add nuw nsw i64 %polly.indvar605.2, %129
  %polly.access.mul.Packed_MemRef_call2475640.2 = mul nuw nsw i64 %215, 60
  %polly.access.mul.Packed_MemRef_call1473648.2 = mul nuw nsw i64 %215, 20
  %216 = mul nuw nsw i64 %215, 640
  br label %polly.loop_header624.2

polly.loop_header624.2:                           ; preds = %polly.loop_exit632.2, %polly.loop_header624.preheader.2
  %polly.indvar627.2 = phi i64 [ %polly.indvar_next628.2, %polly.loop_exit632.2 ], [ 0, %polly.loop_header624.preheader.2 ]
  %217 = add nuw nsw i64 %polly.indvar627.2, 40
  %polly.access.add.Packed_MemRef_call2475641.2 = add nuw nsw i64 %217, %polly.access.mul.Packed_MemRef_call2475640.2
  %polly.access.Packed_MemRef_call2475642.2 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475641.2
  %_p_scalar_643.2 = load double, double* %polly.access.Packed_MemRef_call2475642.2, align 8
  %polly.access.add.Packed_MemRef_call1473649.2 = add nuw nsw i64 %polly.indvar627.2, %polly.access.mul.Packed_MemRef_call1473648.2
  %polly.access.Packed_MemRef_call1473650.2 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473649.2
  %_p_scalar_651.2 = load double, double* %polly.access.Packed_MemRef_call1473650.2, align 8
  br label %polly.loop_header630.2

polly.loop_header630.2:                           ; preds = %polly.loop_header630.2, %polly.loop_header624.2
  %polly.indvar633.2 = phi i64 [ 0, %polly.loop_header624.2 ], [ %polly.indvar_next634.2, %polly.loop_header630.2 ]
  %polly.access.mul.Packed_MemRef_call1473636.2 = mul nuw nsw i64 %polly.indvar633.2, 20
  %polly.access.add.Packed_MemRef_call1473637.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1473636.2, %polly.indvar627.2
  %polly.access.Packed_MemRef_call1473638.2 = getelementptr double, double* %Packed_MemRef_call1473, i64 %polly.access.add.Packed_MemRef_call1473637.2
  %_p_scalar_639.2 = load double, double* %polly.access.Packed_MemRef_call1473638.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_643.2, %_p_scalar_639.2
  %polly.access.mul.Packed_MemRef_call2475644.2 = mul nuw nsw i64 %polly.indvar633.2, 60
  %polly.access.add.Packed_MemRef_call2475645.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2475644.2, %217
  %polly.access.Packed_MemRef_call2475646.2 = getelementptr double, double* %Packed_MemRef_call2475, i64 %polly.access.add.Packed_MemRef_call2475645.2
  %_p_scalar_647.2 = load double, double* %polly.access.Packed_MemRef_call2475646.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_651.2, %_p_scalar_647.2
  %218 = shl nuw nsw i64 %polly.indvar633.2, 3
  %219 = add nuw nsw i64 %218, %216
  %scevgep652.2 = getelementptr i8, i8* %call, i64 %219
  %scevgep652653.2 = bitcast i8* %scevgep652.2 to double*
  %_p_scalar_654.2 = load double, double* %scevgep652653.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_654.2
  store double %p_add42.i.2, double* %scevgep652653.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next634.2 = add nuw nsw i64 %polly.indvar633.2, 1
  %exitcond909.2.not = icmp eq i64 %polly.indvar_next634.2, %indvars.iv906.2
  br i1 %exitcond909.2.not, label %polly.loop_exit632.2, label %polly.loop_header630.2

polly.loop_exit632.2:                             ; preds = %polly.loop_header630.2
  %polly.indvar_next628.2 = add nuw nsw i64 %polly.indvar627.2, 1
  %exitcond910.2.not = icmp eq i64 %polly.indvar_next628.2, 20
  br i1 %exitcond910.2.not, label %polly.loop_exit626.2, label %polly.loop_header624.2

polly.loop_exit626.2:                             ; preds = %polly.loop_exit632.2
  %polly.indvar_next606.2 = add nuw nsw i64 %polly.indvar605.2, 1
  %indvars.iv.next907.2 = add nuw nsw i64 %indvars.iv906.2, 1
  %exitcond911.2.not = icmp eq i64 %polly.indvar_next606.2, 8
  br i1 %exitcond911.2.not, label %polly.loop_exit604.2, label %polly.loop_header602.2

polly.loop_exit604.2:                             ; preds = %polly.loop_exit626.2
  %polly.indvar_next594 = add nuw nsw i64 %polly.indvar593, 1
  %indvars.iv.next905 = add nuw nsw i64 %indvars.iv904, 8
  %exitcond913.not = icmp eq i64 %polly.indvar_next594, 10
  br i1 %exitcond913.not, label %polly.exiting471, label %polly.loop_header590

polly.loop_header846.1:                           ; preds = %polly.loop_exit854, %polly.loop_exit854.1
  %polly.indvar849.1 = phi i64 [ %polly.indvar_next850.1, %polly.loop_exit854.1 ], [ 0, %polly.loop_exit854 ]
  %220 = mul nuw nsw i64 %polly.indvar849.1, 480
  %221 = trunc i64 %polly.indvar849.1 to i32
  %broadcast.splatinsert1232 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1233 = shufflevector <4 x i32> %broadcast.splatinsert1232, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %polly.loop_header846.1
  %index1226 = phi i64 [ 0, %polly.loop_header846.1 ], [ %index.next1227, %vector.body1224 ]
  %vec.ind1230 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header846.1 ], [ %vec.ind.next1231, %vector.body1224 ]
  %222 = add nuw nsw <4 x i64> %vec.ind1230, <i64 32, i64 32, i64 32, i64 32>
  %223 = trunc <4 x i64> %222 to <4 x i32>
  %224 = mul <4 x i32> %broadcast.splat1233, %223
  %225 = add <4 x i32> %224, <i32 1, i32 1, i32 1, i32 1>
  %226 = urem <4 x i32> %225, <i32 80, i32 80, i32 80, i32 80>
  %227 = sitofp <4 x i32> %226 to <4 x double>
  %228 = fmul fast <4 x double> %227, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %229 = extractelement <4 x i64> %222, i32 0
  %230 = shl i64 %229, 3
  %231 = add i64 %230, %220
  %232 = getelementptr i8, i8* %call1, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %228, <4 x double>* %233, align 8, !alias.scope !96, !noalias !101
  %index.next1227 = add i64 %index1226, 4
  %vec.ind.next1231 = add <4 x i64> %vec.ind1230, <i64 4, i64 4, i64 4, i64 4>
  %234 = icmp eq i64 %index.next1227, 28
  br i1 %234, label %polly.loop_exit854.1, label %vector.body1224, !llvm.loop !103

polly.loop_exit854.1:                             ; preds = %vector.body1224
  %polly.indvar_next850.1 = add nuw nsw i64 %polly.indvar849.1, 1
  %exitcond923.1.not = icmp eq i64 %polly.indvar_next850.1, 32
  br i1 %exitcond923.1.not, label %polly.loop_header846.1943, label %polly.loop_header846.1

polly.loop_header846.1943:                        ; preds = %polly.loop_exit854.1, %polly.loop_exit854.1954
  %polly.indvar849.1942 = phi i64 [ %polly.indvar_next850.1952, %polly.loop_exit854.1954 ], [ 0, %polly.loop_exit854.1 ]
  %235 = add nuw nsw i64 %polly.indvar849.1942, 32
  %236 = mul nuw nsw i64 %235, 480
  %237 = trunc i64 %235 to i32
  %broadcast.splatinsert1246 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat1247 = shufflevector <4 x i32> %broadcast.splatinsert1246, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %polly.loop_header846.1943
  %index1238 = phi i64 [ 0, %polly.loop_header846.1943 ], [ %index.next1239, %vector.body1236 ]
  %vec.ind1244 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header846.1943 ], [ %vec.ind.next1245, %vector.body1236 ]
  %238 = mul <4 x i32> %vec.ind1244, %broadcast.splat1247
  %239 = add <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %240 = urem <4 x i32> %239, <i32 80, i32 80, i32 80, i32 80>
  %241 = sitofp <4 x i32> %240 to <4 x double>
  %242 = fmul fast <4 x double> %241, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %243 = shl i64 %index1238, 3
  %244 = add i64 %243, %236
  %245 = getelementptr i8, i8* %call1, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %242, <4 x double>* %246, align 8, !alias.scope !96, !noalias !101
  %index.next1239 = add i64 %index1238, 4
  %vec.ind.next1245 = add <4 x i32> %vec.ind1244, <i32 4, i32 4, i32 4, i32 4>
  %247 = icmp eq i64 %index.next1239, 32
  br i1 %247, label %polly.loop_exit854.1954, label %vector.body1236, !llvm.loop !104

polly.loop_exit854.1954:                          ; preds = %vector.body1236
  %polly.indvar_next850.1952 = add nuw nsw i64 %polly.indvar849.1942, 1
  %exitcond923.1953.not = icmp eq i64 %polly.indvar_next850.1952, 32
  br i1 %exitcond923.1953.not, label %polly.loop_header846.1.1, label %polly.loop_header846.1943

polly.loop_header846.1.1:                         ; preds = %polly.loop_exit854.1954, %polly.loop_exit854.1.1
  %polly.indvar849.1.1 = phi i64 [ %polly.indvar_next850.1.1, %polly.loop_exit854.1.1 ], [ 0, %polly.loop_exit854.1954 ]
  %248 = add nuw nsw i64 %polly.indvar849.1.1, 32
  %249 = mul nuw nsw i64 %248, 480
  %250 = trunc i64 %248 to i32
  %broadcast.splatinsert1258 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1259 = shufflevector <4 x i32> %broadcast.splatinsert1258, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %polly.loop_header846.1.1
  %index1252 = phi i64 [ 0, %polly.loop_header846.1.1 ], [ %index.next1253, %vector.body1250 ]
  %vec.ind1256 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header846.1.1 ], [ %vec.ind.next1257, %vector.body1250 ]
  %251 = add nuw nsw <4 x i64> %vec.ind1256, <i64 32, i64 32, i64 32, i64 32>
  %252 = trunc <4 x i64> %251 to <4 x i32>
  %253 = mul <4 x i32> %broadcast.splat1259, %252
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 80, i32 80, i32 80, i32 80>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %258 = extractelement <4 x i64> %251, i32 0
  %259 = shl i64 %258, 3
  %260 = add i64 %259, %249
  %261 = getelementptr i8, i8* %call1, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %257, <4 x double>* %262, align 8, !alias.scope !96, !noalias !101
  %index.next1253 = add i64 %index1252, 4
  %vec.ind.next1257 = add <4 x i64> %vec.ind1256, <i64 4, i64 4, i64 4, i64 4>
  %263 = icmp eq i64 %index.next1253, 28
  br i1 %263, label %polly.loop_exit854.1.1, label %vector.body1250, !llvm.loop !105

polly.loop_exit854.1.1:                           ; preds = %vector.body1250
  %polly.indvar_next850.1.1 = add nuw nsw i64 %polly.indvar849.1.1, 1
  %exitcond923.1.1.not = icmp eq i64 %polly.indvar_next850.1.1, 32
  br i1 %exitcond923.1.1.not, label %polly.loop_header846.2, label %polly.loop_header846.1.1

polly.loop_header846.2:                           ; preds = %polly.loop_exit854.1.1, %polly.loop_exit854.2
  %polly.indvar849.2 = phi i64 [ %polly.indvar_next850.2, %polly.loop_exit854.2 ], [ 0, %polly.loop_exit854.1.1 ]
  %264 = add nuw nsw i64 %polly.indvar849.2, 64
  %265 = mul nuw nsw i64 %264, 480
  %266 = trunc i64 %264 to i32
  %broadcast.splatinsert1272 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1273 = shufflevector <4 x i32> %broadcast.splatinsert1272, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %polly.loop_header846.2
  %index1264 = phi i64 [ 0, %polly.loop_header846.2 ], [ %index.next1265, %vector.body1262 ]
  %vec.ind1270 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header846.2 ], [ %vec.ind.next1271, %vector.body1262 ]
  %267 = mul <4 x i32> %vec.ind1270, %broadcast.splat1273
  %268 = add <4 x i32> %267, <i32 1, i32 1, i32 1, i32 1>
  %269 = urem <4 x i32> %268, <i32 80, i32 80, i32 80, i32 80>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %272 = shl i64 %index1264, 3
  %273 = add i64 %272, %265
  %274 = getelementptr i8, i8* %call1, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %271, <4 x double>* %275, align 8, !alias.scope !96, !noalias !101
  %index.next1265 = add i64 %index1264, 4
  %vec.ind.next1271 = add <4 x i32> %vec.ind1270, <i32 4, i32 4, i32 4, i32 4>
  %276 = icmp eq i64 %index.next1265, 32
  br i1 %276, label %polly.loop_exit854.2, label %vector.body1262, !llvm.loop !106

polly.loop_exit854.2:                             ; preds = %vector.body1262
  %polly.indvar_next850.2 = add nuw nsw i64 %polly.indvar849.2, 1
  %exitcond923.2.not = icmp eq i64 %polly.indvar_next850.2, 16
  br i1 %exitcond923.2.not, label %polly.loop_header846.1.2, label %polly.loop_header846.2

polly.loop_header846.1.2:                         ; preds = %polly.loop_exit854.2, %polly.loop_exit854.1.2
  %polly.indvar849.1.2 = phi i64 [ %polly.indvar_next850.1.2, %polly.loop_exit854.1.2 ], [ 0, %polly.loop_exit854.2 ]
  %277 = add nuw nsw i64 %polly.indvar849.1.2, 64
  %278 = mul nuw nsw i64 %277, 480
  %279 = trunc i64 %277 to i32
  %broadcast.splatinsert1284 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1285 = shufflevector <4 x i32> %broadcast.splatinsert1284, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %polly.loop_header846.1.2
  %index1278 = phi i64 [ 0, %polly.loop_header846.1.2 ], [ %index.next1279, %vector.body1276 ]
  %vec.ind1282 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header846.1.2 ], [ %vec.ind.next1283, %vector.body1276 ]
  %280 = add nuw nsw <4 x i64> %vec.ind1282, <i64 32, i64 32, i64 32, i64 32>
  %281 = trunc <4 x i64> %280 to <4 x i32>
  %282 = mul <4 x i32> %broadcast.splat1285, %281
  %283 = add <4 x i32> %282, <i32 1, i32 1, i32 1, i32 1>
  %284 = urem <4 x i32> %283, <i32 80, i32 80, i32 80, i32 80>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %287 = extractelement <4 x i64> %280, i32 0
  %288 = shl i64 %287, 3
  %289 = add i64 %288, %278
  %290 = getelementptr i8, i8* %call1, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %286, <4 x double>* %291, align 8, !alias.scope !96, !noalias !101
  %index.next1279 = add i64 %index1278, 4
  %vec.ind.next1283 = add <4 x i64> %vec.ind1282, <i64 4, i64 4, i64 4, i64 4>
  %292 = icmp eq i64 %index.next1279, 28
  br i1 %292, label %polly.loop_exit854.1.2, label %vector.body1276, !llvm.loop !107

polly.loop_exit854.1.2:                           ; preds = %vector.body1276
  %polly.indvar_next850.1.2 = add nuw nsw i64 %polly.indvar849.1.2, 1
  %exitcond923.1.2.not = icmp eq i64 %polly.indvar_next850.1.2, 16
  br i1 %exitcond923.1.2.not, label %init_array.exit, label %polly.loop_header846.1.2

polly.loop_header820.1:                           ; preds = %polly.loop_exit828, %polly.loop_exit828.1
  %polly.indvar823.1 = phi i64 [ %polly.indvar_next824.1, %polly.loop_exit828.1 ], [ 0, %polly.loop_exit828 ]
  %293 = mul nuw nsw i64 %polly.indvar823.1, 480
  %294 = trunc i64 %polly.indvar823.1 to i32
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1146

vector.body1146:                                  ; preds = %vector.body1146, %polly.loop_header820.1
  %index1148 = phi i64 [ 0, %polly.loop_header820.1 ], [ %index.next1149, %vector.body1146 ]
  %vec.ind1152 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header820.1 ], [ %vec.ind.next1153, %vector.body1146 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1152, <i64 32, i64 32, i64 32, i64 32>
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1155, %296
  %298 = add <4 x i32> %297, <i32 2, i32 2, i32 2, i32 2>
  %299 = urem <4 x i32> %298, <i32 60, i32 60, i32 60, i32 60>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add i64 %303, %293
  %305 = getelementptr i8, i8* %call2, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !97, !noalias !99
  %index.next1149 = add i64 %index1148, 4
  %vec.ind.next1153 = add <4 x i64> %vec.ind1152, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1149, 28
  br i1 %307, label %polly.loop_exit828.1, label %vector.body1146, !llvm.loop !108

polly.loop_exit828.1:                             ; preds = %vector.body1146
  %polly.indvar_next824.1 = add nuw nsw i64 %polly.indvar823.1, 1
  %exitcond929.1.not = icmp eq i64 %polly.indvar_next824.1, 32
  br i1 %exitcond929.1.not, label %polly.loop_header820.1957, label %polly.loop_header820.1

polly.loop_header820.1957:                        ; preds = %polly.loop_exit828.1, %polly.loop_exit828.1968
  %polly.indvar823.1956 = phi i64 [ %polly.indvar_next824.1966, %polly.loop_exit828.1968 ], [ 0, %polly.loop_exit828.1 ]
  %308 = add nuw nsw i64 %polly.indvar823.1956, 32
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1168 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1169 = shufflevector <4 x i32> %broadcast.splatinsert1168, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %polly.loop_header820.1957
  %index1160 = phi i64 [ 0, %polly.loop_header820.1957 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1166 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header820.1957 ], [ %vec.ind.next1167, %vector.body1158 ]
  %311 = mul <4 x i32> %vec.ind1166, %broadcast.splat1169
  %312 = add <4 x i32> %311, <i32 2, i32 2, i32 2, i32 2>
  %313 = urem <4 x i32> %312, <i32 60, i32 60, i32 60, i32 60>
  %314 = sitofp <4 x i32> %313 to <4 x double>
  %315 = fmul fast <4 x double> %314, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %316 = shl i64 %index1160, 3
  %317 = add i64 %316, %309
  %318 = getelementptr i8, i8* %call2, i64 %317
  %319 = bitcast i8* %318 to <4 x double>*
  store <4 x double> %315, <4 x double>* %319, align 8, !alias.scope !97, !noalias !99
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1167 = add <4 x i32> %vec.ind1166, <i32 4, i32 4, i32 4, i32 4>
  %320 = icmp eq i64 %index.next1161, 32
  br i1 %320, label %polly.loop_exit828.1968, label %vector.body1158, !llvm.loop !109

polly.loop_exit828.1968:                          ; preds = %vector.body1158
  %polly.indvar_next824.1966 = add nuw nsw i64 %polly.indvar823.1956, 1
  %exitcond929.1967.not = icmp eq i64 %polly.indvar_next824.1966, 32
  br i1 %exitcond929.1967.not, label %polly.loop_header820.1.1, label %polly.loop_header820.1957

polly.loop_header820.1.1:                         ; preds = %polly.loop_exit828.1968, %polly.loop_exit828.1.1
  %polly.indvar823.1.1 = phi i64 [ %polly.indvar_next824.1.1, %polly.loop_exit828.1.1 ], [ 0, %polly.loop_exit828.1968 ]
  %321 = add nuw nsw i64 %polly.indvar823.1.1, 32
  %322 = mul nuw nsw i64 %321, 480
  %323 = trunc i64 %321 to i32
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %323, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1172

vector.body1172:                                  ; preds = %vector.body1172, %polly.loop_header820.1.1
  %index1174 = phi i64 [ 0, %polly.loop_header820.1.1 ], [ %index.next1175, %vector.body1172 ]
  %vec.ind1178 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header820.1.1 ], [ %vec.ind.next1179, %vector.body1172 ]
  %324 = add nuw nsw <4 x i64> %vec.ind1178, <i64 32, i64 32, i64 32, i64 32>
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = mul <4 x i32> %broadcast.splat1181, %325
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 60, i32 60, i32 60, i32 60>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %331 = extractelement <4 x i64> %324, i32 0
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %322
  %334 = getelementptr i8, i8* %call2, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %330, <4 x double>* %335, align 8, !alias.scope !97, !noalias !99
  %index.next1175 = add i64 %index1174, 4
  %vec.ind.next1179 = add <4 x i64> %vec.ind1178, <i64 4, i64 4, i64 4, i64 4>
  %336 = icmp eq i64 %index.next1175, 28
  br i1 %336, label %polly.loop_exit828.1.1, label %vector.body1172, !llvm.loop !110

polly.loop_exit828.1.1:                           ; preds = %vector.body1172
  %polly.indvar_next824.1.1 = add nuw nsw i64 %polly.indvar823.1.1, 1
  %exitcond929.1.1.not = icmp eq i64 %polly.indvar_next824.1.1, 32
  br i1 %exitcond929.1.1.not, label %polly.loop_header820.2, label %polly.loop_header820.1.1

polly.loop_header820.2:                           ; preds = %polly.loop_exit828.1.1, %polly.loop_exit828.2
  %polly.indvar823.2 = phi i64 [ %polly.indvar_next824.2, %polly.loop_exit828.2 ], [ 0, %polly.loop_exit828.1.1 ]
  %337 = add nuw nsw i64 %polly.indvar823.2, 64
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1194 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1195 = shufflevector <4 x i32> %broadcast.splatinsert1194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %polly.loop_header820.2
  %index1186 = phi i64 [ 0, %polly.loop_header820.2 ], [ %index.next1187, %vector.body1184 ]
  %vec.ind1192 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header820.2 ], [ %vec.ind.next1193, %vector.body1184 ]
  %340 = mul <4 x i32> %vec.ind1192, %broadcast.splat1195
  %341 = add <4 x i32> %340, <i32 2, i32 2, i32 2, i32 2>
  %342 = urem <4 x i32> %341, <i32 60, i32 60, i32 60, i32 60>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %345 = shl i64 %index1186, 3
  %346 = add i64 %345, %338
  %347 = getelementptr i8, i8* %call2, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %344, <4 x double>* %348, align 8, !alias.scope !97, !noalias !99
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1193 = add <4 x i32> %vec.ind1192, <i32 4, i32 4, i32 4, i32 4>
  %349 = icmp eq i64 %index.next1187, 32
  br i1 %349, label %polly.loop_exit828.2, label %vector.body1184, !llvm.loop !111

polly.loop_exit828.2:                             ; preds = %vector.body1184
  %polly.indvar_next824.2 = add nuw nsw i64 %polly.indvar823.2, 1
  %exitcond929.2.not = icmp eq i64 %polly.indvar_next824.2, 16
  br i1 %exitcond929.2.not, label %polly.loop_header820.1.2, label %polly.loop_header820.2

polly.loop_header820.1.2:                         ; preds = %polly.loop_exit828.2, %polly.loop_exit828.1.2
  %polly.indvar823.1.2 = phi i64 [ %polly.indvar_next824.1.2, %polly.loop_exit828.1.2 ], [ 0, %polly.loop_exit828.2 ]
  %350 = add nuw nsw i64 %polly.indvar823.1.2, 64
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1206 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1207 = shufflevector <4 x i32> %broadcast.splatinsert1206, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %polly.loop_header820.1.2
  %index1200 = phi i64 [ 0, %polly.loop_header820.1.2 ], [ %index.next1201, %vector.body1198 ]
  %vec.ind1204 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header820.1.2 ], [ %vec.ind.next1205, %vector.body1198 ]
  %353 = add nuw nsw <4 x i64> %vec.ind1204, <i64 32, i64 32, i64 32, i64 32>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1207, %354
  %356 = add <4 x i32> %355, <i32 2, i32 2, i32 2, i32 2>
  %357 = urem <4 x i32> %356, <i32 60, i32 60, i32 60, i32 60>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add i64 %361, %351
  %363 = getelementptr i8, i8* %call2, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !97, !noalias !99
  %index.next1201 = add i64 %index1200, 4
  %vec.ind.next1205 = add <4 x i64> %vec.ind1204, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next1201, 28
  br i1 %365, label %polly.loop_exit828.1.2, label %vector.body1198, !llvm.loop !112

polly.loop_exit828.1.2:                           ; preds = %vector.body1198
  %polly.indvar_next824.1.2 = add nuw nsw i64 %polly.indvar823.1.2, 1
  %exitcond929.1.2.not = icmp eq i64 %polly.indvar_next824.1.2, 16
  br i1 %exitcond929.1.2.not, label %polly.loop_header846, label %polly.loop_header820.1.2

polly.loop_header793.1:                           ; preds = %polly.loop_exit801, %polly.loop_exit801.1
  %polly.indvar796.1 = phi i64 [ %polly.indvar_next797.1, %polly.loop_exit801.1 ], [ 0, %polly.loop_exit801 ]
  %366 = mul nuw nsw i64 %polly.indvar796.1, 640
  %367 = trunc i64 %polly.indvar796.1 to i32
  %broadcast.splatinsert1040 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1041 = shufflevector <4 x i32> %broadcast.splatinsert1040, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %polly.loop_header793.1
  %index1034 = phi i64 [ 0, %polly.loop_header793.1 ], [ %index.next1035, %vector.body1032 ]
  %vec.ind1038 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1 ], [ %vec.ind.next1039, %vector.body1032 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1038, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1041, %369
  %371 = add <4 x i32> %370, <i32 3, i32 3, i32 3, i32 3>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add nuw nsw i64 %376, %366
  %378 = getelementptr i8, i8* %call, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !93, !noalias !95
  %index.next1035 = add i64 %index1034, 4
  %vec.ind.next1039 = add <4 x i64> %vec.ind1038, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1035, 32
  br i1 %380, label %polly.loop_exit801.1, label %vector.body1032, !llvm.loop !113

polly.loop_exit801.1:                             ; preds = %vector.body1032
  %polly.indvar_next797.1 = add nuw nsw i64 %polly.indvar796.1, 1
  %exitcond938.1.not = icmp eq i64 %polly.indvar_next797.1, 32
  br i1 %exitcond938.1.not, label %polly.loop_header793.2, label %polly.loop_header793.1

polly.loop_header793.2:                           ; preds = %polly.loop_exit801.1, %polly.loop_exit801.2
  %polly.indvar796.2 = phi i64 [ %polly.indvar_next797.2, %polly.loop_exit801.2 ], [ 0, %polly.loop_exit801.1 ]
  %381 = mul nuw nsw i64 %polly.indvar796.2, 640
  %382 = trunc i64 %polly.indvar796.2 to i32
  %broadcast.splatinsert1052 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat1053 = shufflevector <4 x i32> %broadcast.splatinsert1052, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.body1044, %polly.loop_header793.2
  %index1046 = phi i64 [ 0, %polly.loop_header793.2 ], [ %index.next1047, %vector.body1044 ]
  %vec.ind1050 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.2 ], [ %vec.ind.next1051, %vector.body1044 ]
  %383 = add nuw nsw <4 x i64> %vec.ind1050, <i64 64, i64 64, i64 64, i64 64>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat1053, %384
  %386 = add <4 x i32> %385, <i32 3, i32 3, i32 3, i32 3>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %381
  %393 = getelementptr i8, i8* %call, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !93, !noalias !95
  %index.next1047 = add i64 %index1046, 4
  %vec.ind.next1051 = add <4 x i64> %vec.ind1050, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next1047, 16
  br i1 %395, label %polly.loop_exit801.2, label %vector.body1044, !llvm.loop !114

polly.loop_exit801.2:                             ; preds = %vector.body1044
  %polly.indvar_next797.2 = add nuw nsw i64 %polly.indvar796.2, 1
  %exitcond938.2.not = icmp eq i64 %polly.indvar_next797.2, 32
  br i1 %exitcond938.2.not, label %polly.loop_header793.1971, label %polly.loop_header793.2

polly.loop_header793.1971:                        ; preds = %polly.loop_exit801.2, %polly.loop_exit801.1982
  %polly.indvar796.1970 = phi i64 [ %polly.indvar_next797.1980, %polly.loop_exit801.1982 ], [ 0, %polly.loop_exit801.2 ]
  %396 = add nuw nsw i64 %polly.indvar796.1970, 32
  %397 = mul nuw nsw i64 %396, 640
  %398 = trunc i64 %396 to i32
  %broadcast.splatinsert1066 = insertelement <4 x i32> poison, i32 %398, i32 0
  %broadcast.splat1067 = shufflevector <4 x i32> %broadcast.splatinsert1066, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1056

vector.body1056:                                  ; preds = %vector.body1056, %polly.loop_header793.1971
  %index1058 = phi i64 [ 0, %polly.loop_header793.1971 ], [ %index.next1059, %vector.body1056 ]
  %vec.ind1064 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.1971 ], [ %vec.ind.next1065, %vector.body1056 ]
  %399 = mul <4 x i32> %vec.ind1064, %broadcast.splat1067
  %400 = add <4 x i32> %399, <i32 3, i32 3, i32 3, i32 3>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = shl i64 %index1058, 3
  %405 = add nuw nsw i64 %404, %397
  %406 = getelementptr i8, i8* %call, i64 %405
  %407 = bitcast i8* %406 to <4 x double>*
  store <4 x double> %403, <4 x double>* %407, align 8, !alias.scope !93, !noalias !95
  %index.next1059 = add i64 %index1058, 4
  %vec.ind.next1065 = add <4 x i32> %vec.ind1064, <i32 4, i32 4, i32 4, i32 4>
  %408 = icmp eq i64 %index.next1059, 32
  br i1 %408, label %polly.loop_exit801.1982, label %vector.body1056, !llvm.loop !115

polly.loop_exit801.1982:                          ; preds = %vector.body1056
  %polly.indvar_next797.1980 = add nuw nsw i64 %polly.indvar796.1970, 1
  %exitcond938.1981.not = icmp eq i64 %polly.indvar_next797.1980, 32
  br i1 %exitcond938.1981.not, label %polly.loop_header793.1.1, label %polly.loop_header793.1971

polly.loop_header793.1.1:                         ; preds = %polly.loop_exit801.1982, %polly.loop_exit801.1.1
  %polly.indvar796.1.1 = phi i64 [ %polly.indvar_next797.1.1, %polly.loop_exit801.1.1 ], [ 0, %polly.loop_exit801.1982 ]
  %409 = add nuw nsw i64 %polly.indvar796.1.1, 32
  %410 = mul nuw nsw i64 %409, 640
  %411 = trunc i64 %409 to i32
  %broadcast.splatinsert1078 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat1079 = shufflevector <4 x i32> %broadcast.splatinsert1078, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1070

vector.body1070:                                  ; preds = %vector.body1070, %polly.loop_header793.1.1
  %index1072 = phi i64 [ 0, %polly.loop_header793.1.1 ], [ %index.next1073, %vector.body1070 ]
  %vec.ind1076 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.1 ], [ %vec.ind.next1077, %vector.body1070 ]
  %412 = add nuw nsw <4 x i64> %vec.ind1076, <i64 32, i64 32, i64 32, i64 32>
  %413 = trunc <4 x i64> %412 to <4 x i32>
  %414 = mul <4 x i32> %broadcast.splat1079, %413
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = extractelement <4 x i64> %412, i32 0
  %420 = shl i64 %419, 3
  %421 = add nuw nsw i64 %420, %410
  %422 = getelementptr i8, i8* %call, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %418, <4 x double>* %423, align 8, !alias.scope !93, !noalias !95
  %index.next1073 = add i64 %index1072, 4
  %vec.ind.next1077 = add <4 x i64> %vec.ind1076, <i64 4, i64 4, i64 4, i64 4>
  %424 = icmp eq i64 %index.next1073, 32
  br i1 %424, label %polly.loop_exit801.1.1, label %vector.body1070, !llvm.loop !116

polly.loop_exit801.1.1:                           ; preds = %vector.body1070
  %polly.indvar_next797.1.1 = add nuw nsw i64 %polly.indvar796.1.1, 1
  %exitcond938.1.1.not = icmp eq i64 %polly.indvar_next797.1.1, 32
  br i1 %exitcond938.1.1.not, label %polly.loop_header793.2.1, label %polly.loop_header793.1.1

polly.loop_header793.2.1:                         ; preds = %polly.loop_exit801.1.1, %polly.loop_exit801.2.1
  %polly.indvar796.2.1 = phi i64 [ %polly.indvar_next797.2.1, %polly.loop_exit801.2.1 ], [ 0, %polly.loop_exit801.1.1 ]
  %425 = add nuw nsw i64 %polly.indvar796.2.1, 32
  %426 = mul nuw nsw i64 %425, 640
  %427 = trunc i64 %425 to i32
  %broadcast.splatinsert1090 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1091 = shufflevector <4 x i32> %broadcast.splatinsert1090, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1082

vector.body1082:                                  ; preds = %vector.body1082, %polly.loop_header793.2.1
  %index1084 = phi i64 [ 0, %polly.loop_header793.2.1 ], [ %index.next1085, %vector.body1082 ]
  %vec.ind1088 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.2.1 ], [ %vec.ind.next1089, %vector.body1082 ]
  %428 = add nuw nsw <4 x i64> %vec.ind1088, <i64 64, i64 64, i64 64, i64 64>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1091, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !93, !noalias !95
  %index.next1085 = add i64 %index1084, 4
  %vec.ind.next1089 = add <4 x i64> %vec.ind1088, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next1085, 16
  br i1 %440, label %polly.loop_exit801.2.1, label %vector.body1082, !llvm.loop !117

polly.loop_exit801.2.1:                           ; preds = %vector.body1082
  %polly.indvar_next797.2.1 = add nuw nsw i64 %polly.indvar796.2.1, 1
  %exitcond938.2.1.not = icmp eq i64 %polly.indvar_next797.2.1, 32
  br i1 %exitcond938.2.1.not, label %polly.loop_header793.2985, label %polly.loop_header793.2.1

polly.loop_header793.2985:                        ; preds = %polly.loop_exit801.2.1, %polly.loop_exit801.2996
  %polly.indvar796.2984 = phi i64 [ %polly.indvar_next797.2994, %polly.loop_exit801.2996 ], [ 0, %polly.loop_exit801.2.1 ]
  %441 = add nuw nsw i64 %polly.indvar796.2984, 64
  %442 = mul nuw nsw i64 %441, 640
  %443 = trunc i64 %441 to i32
  %broadcast.splatinsert1104 = insertelement <4 x i32> poison, i32 %443, i32 0
  %broadcast.splat1105 = shufflevector <4 x i32> %broadcast.splatinsert1104, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %polly.loop_header793.2985
  %index1096 = phi i64 [ 0, %polly.loop_header793.2985 ], [ %index.next1097, %vector.body1094 ]
  %vec.ind1102 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header793.2985 ], [ %vec.ind.next1103, %vector.body1094 ]
  %444 = mul <4 x i32> %vec.ind1102, %broadcast.splat1105
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = shl i64 %index1096, 3
  %450 = add nuw nsw i64 %449, %442
  %451 = getelementptr i8, i8* %call, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %448, <4 x double>* %452, align 8, !alias.scope !93, !noalias !95
  %index.next1097 = add i64 %index1096, 4
  %vec.ind.next1103 = add <4 x i32> %vec.ind1102, <i32 4, i32 4, i32 4, i32 4>
  %453 = icmp eq i64 %index.next1097, 32
  br i1 %453, label %polly.loop_exit801.2996, label %vector.body1094, !llvm.loop !118

polly.loop_exit801.2996:                          ; preds = %vector.body1094
  %polly.indvar_next797.2994 = add nuw nsw i64 %polly.indvar796.2984, 1
  %exitcond938.2995.not = icmp eq i64 %polly.indvar_next797.2994, 16
  br i1 %exitcond938.2995.not, label %polly.loop_header793.1.2, label %polly.loop_header793.2985

polly.loop_header793.1.2:                         ; preds = %polly.loop_exit801.2996, %polly.loop_exit801.1.2
  %polly.indvar796.1.2 = phi i64 [ %polly.indvar_next797.1.2, %polly.loop_exit801.1.2 ], [ 0, %polly.loop_exit801.2996 ]
  %454 = add nuw nsw i64 %polly.indvar796.1.2, 64
  %455 = mul nuw nsw i64 %454, 640
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert1116 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1117 = shufflevector <4 x i32> %broadcast.splatinsert1116, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1108

vector.body1108:                                  ; preds = %vector.body1108, %polly.loop_header793.1.2
  %index1110 = phi i64 [ 0, %polly.loop_header793.1.2 ], [ %index.next1111, %vector.body1108 ]
  %vec.ind1114 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.1.2 ], [ %vec.ind.next1115, %vector.body1108 ]
  %457 = add nuw nsw <4 x i64> %vec.ind1114, <i64 32, i64 32, i64 32, i64 32>
  %458 = trunc <4 x i64> %457 to <4 x i32>
  %459 = mul <4 x i32> %broadcast.splat1117, %458
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = extractelement <4 x i64> %457, i32 0
  %465 = shl i64 %464, 3
  %466 = add nuw nsw i64 %465, %455
  %467 = getelementptr i8, i8* %call, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %463, <4 x double>* %468, align 8, !alias.scope !93, !noalias !95
  %index.next1111 = add i64 %index1110, 4
  %vec.ind.next1115 = add <4 x i64> %vec.ind1114, <i64 4, i64 4, i64 4, i64 4>
  %469 = icmp eq i64 %index.next1111, 32
  br i1 %469, label %polly.loop_exit801.1.2, label %vector.body1108, !llvm.loop !119

polly.loop_exit801.1.2:                           ; preds = %vector.body1108
  %polly.indvar_next797.1.2 = add nuw nsw i64 %polly.indvar796.1.2, 1
  %exitcond938.1.2.not = icmp eq i64 %polly.indvar_next797.1.2, 16
  br i1 %exitcond938.1.2.not, label %polly.loop_header793.2.2, label %polly.loop_header793.1.2

polly.loop_header793.2.2:                         ; preds = %polly.loop_exit801.1.2, %polly.loop_exit801.2.2
  %polly.indvar796.2.2 = phi i64 [ %polly.indvar_next797.2.2, %polly.loop_exit801.2.2 ], [ 0, %polly.loop_exit801.1.2 ]
  %470 = add nuw nsw i64 %polly.indvar796.2.2, 64
  %471 = mul nuw nsw i64 %470, 640
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1128 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1129 = shufflevector <4 x i32> %broadcast.splatinsert1128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1120

vector.body1120:                                  ; preds = %vector.body1120, %polly.loop_header793.2.2
  %index1122 = phi i64 [ 0, %polly.loop_header793.2.2 ], [ %index.next1123, %vector.body1120 ]
  %vec.ind1126 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header793.2.2 ], [ %vec.ind.next1127, %vector.body1120 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1126, <i64 64, i64 64, i64 64, i64 64>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1129, %474
  %476 = add <4 x i32> %475, <i32 3, i32 3, i32 3, i32 3>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add nuw nsw i64 %481, %471
  %483 = getelementptr i8, i8* %call, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !93, !noalias !95
  %index.next1123 = add i64 %index1122, 4
  %vec.ind.next1127 = add <4 x i64> %vec.ind1126, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1123, 16
  br i1 %485, label %polly.loop_exit801.2.2, label %vector.body1120, !llvm.loop !120

polly.loop_exit801.2.2:                           ; preds = %vector.body1120
  %polly.indvar_next797.2.2 = add nuw nsw i64 %polly.indvar796.2.2, 1
  %exitcond938.2.2.not = icmp eq i64 %polly.indvar_next797.2.2, 16
  br i1 %exitcond938.2.2.not, label %polly.loop_header820, label %polly.loop_header793.2.2
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 256}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 20}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 8}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !24, !52, !42, !53, !44}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.data.pack.array", !22}
!54 = !{!"llvm.loop.tile.followup_tile", !55}
!55 = distinct !{!55, !12, !56}
!56 = !{!"llvm.loop.id", !"i2"}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !4, i64 0}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !66, !"polly.alias.scope.MemRef_call"}
!66 = distinct !{!66, !"polly.alias.scope.domain"}
!67 = !{!68, !69, !70, !71}
!68 = distinct !{!68, !66, !"polly.alias.scope.MemRef_call1"}
!69 = distinct !{!69, !66, !"polly.alias.scope.MemRef_call2"}
!70 = distinct !{!70, !66, !"polly.alias.scope.Packed_MemRef_call1"}
!71 = distinct !{!71, !66, !"polly.alias.scope.Packed_MemRef_call2"}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !74, !13}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = distinct !{!75, !76, !"polly.alias.scope.MemRef_call"}
!76 = distinct !{!76, !"polly.alias.scope.domain"}
!77 = !{!78, !79, !80, !81}
!78 = distinct !{!78, !76, !"polly.alias.scope.MemRef_call1"}
!79 = distinct !{!79, !76, !"polly.alias.scope.MemRef_call2"}
!80 = distinct !{!80, !76, !"polly.alias.scope.Packed_MemRef_call1"}
!81 = distinct !{!81, !76, !"polly.alias.scope.Packed_MemRef_call2"}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !74, !13}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89, !90}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !74, !13}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = !{!96, !93}
!100 = distinct !{!100, !13}
!101 = !{!97, !93}
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
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
