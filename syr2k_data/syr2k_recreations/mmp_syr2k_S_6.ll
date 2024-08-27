; ModuleID = 'syr2k_recreations//mmp_syr2k_S_6.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_6.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #8
  %call810 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #8
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #8
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1662 = bitcast i8* %call1 to double*
  %polly.access.call1671 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2672 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1671, %call2
  %polly.access.call2691 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2691, %call1
  %2 = or i1 %0, %1
  %polly.access.call711 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call711, %call2
  %4 = icmp ule i8* %polly.access.call2691, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call711, %call1
  %8 = icmp ule i8* %polly.access.call1671, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header796, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1013 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1012 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1011 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1010 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1010, %scevgep1013
  %bound1 = icmp ult i8* %scevgep1012, %scevgep1011
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
  br i1 %exitcond18.not.i, label %vector.ph1017, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1017:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1024 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1025 = shufflevector <4 x i64> %broadcast.splatinsert1024, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %vector.ph1017
  %index1018 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1019, %vector.body1016 ]
  %vec.ind1022 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1017 ], [ %vec.ind.next1023, %vector.body1016 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1022, %broadcast.splat1025
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv7.i, i64 %index1018
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1019 = add i64 %index1018, 4
  %vec.ind.next1023 = add <4 x i64> %vec.ind1022, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1019, 80
  br i1 %40, label %for.inc41.i, label %vector.body1016, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1016
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1017, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit857.1.2
  tail call void (...) @polybench_timer_start() #8
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start472, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1438, label %vector.ph1299

vector.ph1299:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %vector.ph1299
  %index1300 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1301, %vector.body1298 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i, i64 %index1300
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1301 = add i64 %index1300, 4
  %46 = icmp eq i64 %index.next1301, %n.vec
  br i1 %46, label %middle.block1296, label %vector.body1298, !llvm.loop !18

middle.block1296:                                 ; preds = %vector.body1298
  %cmp.n1303 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1303, label %for.inc6.i, label %for.body3.i46.preheader1438

for.body3.i46.preheader1438:                      ; preds = %for.body3.i46.preheader, %middle.block1296
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1296 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1438, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1438 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1296, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit584.1
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start284, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1339 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1339, label %for.body3.i60.preheader1437, label %vector.ph1340

vector.ph1340:                                    ; preds = %for.body3.i60.preheader
  %n.vec1342 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1338

vector.body1338:                                  ; preds = %vector.body1338, %vector.ph1340
  %index1343 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1344, %vector.body1338 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i52, i64 %index1343
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1347 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1347, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1344 = add i64 %index1343, 4
  %57 = icmp eq i64 %index.next1344, %n.vec1342
  br i1 %57, label %middle.block1336, label %vector.body1338, !llvm.loop !64

middle.block1336:                                 ; preds = %vector.body1338
  %cmp.n1346 = icmp eq i64 %indvars.iv21.i52, %n.vec1342
  br i1 %cmp.n1346, label %for.inc6.i63, label %for.body3.i60.preheader1437

for.body3.i60.preheader1437:                      ; preds = %for.body3.i60.preheader, %middle.block1336
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1342, %middle.block1336 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1437, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1437 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1336, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit396.1
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1389 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1389, label %for.body3.i99.preheader1436, label %vector.ph1390

vector.ph1390:                                    ; preds = %for.body3.i99.preheader
  %n.vec1392 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1388

vector.body1388:                                  ; preds = %vector.body1388, %vector.ph1390
  %index1393 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1394, %vector.body1388 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i91, i64 %index1393
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1397 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1397, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1394 = add i64 %index1393, 4
  %68 = icmp eq i64 %index.next1394, %n.vec1392
  br i1 %68, label %middle.block1386, label %vector.body1388, !llvm.loop !66

middle.block1386:                                 ; preds = %vector.body1388
  %cmp.n1396 = icmp eq i64 %indvars.iv21.i91, %n.vec1392
  br i1 %cmp.n1396, label %for.inc6.i102, label %for.body3.i99.preheader1436

for.body3.i99.preheader1436:                      ; preds = %for.body3.i99.preheader, %middle.block1386
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1392, %middle.block1386 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1436, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1436 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1386, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !47

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit208.1
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !68
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #9
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #9
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !71

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #8
  tail call void @free(i8* %call1) #8
  tail call void @free(i8* %call2) #8
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #8
  %malloccall136 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #8
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1401 = phi i64 [ %indvar.next1402, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1401, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1403 = icmp ult i64 %88, 4
  br i1 %min.iters.check1403, label %polly.loop_header192.preheader, label %vector.ph1404

vector.ph1404:                                    ; preds = %polly.loop_header
  %n.vec1406 = and i64 %88, -4
  br label %vector.body1400

vector.body1400:                                  ; preds = %vector.body1400, %vector.ph1404
  %index1407 = phi i64 [ 0, %vector.ph1404 ], [ %index.next1408, %vector.body1400 ]
  %90 = shl nuw nsw i64 %index1407, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1411 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1411, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1408 = add i64 %index1407, 4
  %95 = icmp eq i64 %index.next1408, %n.vec1406
  br i1 %95, label %middle.block1398, label %vector.body1400, !llvm.loop !79

middle.block1398:                                 ; preds = %vector.body1400
  %cmp.n1410 = icmp eq i64 %88, %n.vec1406
  br i1 %cmp.n1410, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1398
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1406, %middle.block1398 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1398
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1402 = add i64 %indvar1401, 1
  br i1 %exitcond898.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header206

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond897.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header206:                             ; preds = %polly.loop_exit246, %polly.loop_header200.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit246 ], [ 80, %polly.loop_header200.preheader ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit246 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nsw i64 %polly.indvar209, -8
  %98 = shl nsw i64 %polly.indvar209, 3
  br label %polly.loop_header212

polly.loop_exit246:                               ; preds = %polly.loop_exit252
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %exitcond896.not = icmp eq i64 %polly.indvar_next210, 10
  br i1 %exitcond896.not, label %polly.loop_header206.1, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 80
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond888.not = icmp eq i64 %polly.indvar_next216, 32
  br i1 %exitcond888.not, label %polly.loop_header228, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %99 = add nuw nsw i64 %polly.indvar221, %98
  %polly.access.mul.call2225 = mul nuw nsw i64 %99, 60
  %polly.access.add.call2226 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit220, %polly.loop_exit236
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_exit220 ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar231, 80
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_header234
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next232, 32
  br i1 %exitcond890.not, label %polly.loop_header244, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234, %polly.loop_header228
  %polly.indvar237 = phi i64 [ 0, %polly.loop_header228 ], [ %polly.indvar_next238, %polly.loop_header234 ]
  %100 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.call1241 = mul nuw nsw i64 %100, 60
  %polly.access.add.call1242 = add nuw nsw i64 %polly.indvar231, %polly.access.mul.call1241
  %polly.access.call1243 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1242
  %polly.access.call1243.load = load double, double* %polly.access.call1243, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1243.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next238, %indvars.iv
  br i1 %exitcond889.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header244:                             ; preds = %polly.loop_exit236, %polly.loop_exit252
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_exit252 ], [ 0, %polly.loop_exit236 ]
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar247, 80
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_exit258
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next248, 32
  br i1 %exitcond895.not, label %polly.loop_exit246, label %polly.loop_header244

polly.loop_header250:                             ; preds = %polly.loop_exit258, %polly.loop_header244
  %indvars.iv891 = phi i64 [ %indvars.iv.next892, %polly.loop_exit258 ], [ 0, %polly.loop_header244 ]
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_exit258 ], [ %98, %polly.loop_header244 ]
  %smin1415 = call i64 @llvm.smin.i64(i64 %indvars.iv891, i64 7)
  %101 = add nsw i64 %polly.indvar253, %97
  %102 = mul nuw nsw i64 %polly.indvar253, 640
  %scevgep278 = getelementptr i8, i8* %call, i64 %102
  %polly.access.add.Packed_MemRef_call2267 = add nuw nsw i64 %101, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1276 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267
  %_p_scalar_277 = load double, double* %polly.access.Packed_MemRef_call1276, align 8
  %polly.access.Packed_MemRef_call2268 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267
  %_p_scalar_269 = load double, double* %polly.access.Packed_MemRef_call2268, align 8
  %n.rnd.up1417 = add nuw nsw i64 %smin1415, 4
  %n.vec1419 = and i64 %n.rnd.up1417, 12
  %broadcast.splatinsert1424 = insertelement <4 x i64> poison, i64 %smin1415, i32 0
  %broadcast.splat1425 = shufflevector <4 x i64> %broadcast.splatinsert1424, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1430 = insertelement <4 x double> poison, double %_p_scalar_269, i32 0
  %broadcast.splat1431 = shufflevector <4 x double> %broadcast.splatinsert1430, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1433 = insertelement <4 x double> poison, double %_p_scalar_277, i32 0
  %broadcast.splat1434 = shufflevector <4 x double> %broadcast.splatinsert1433, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1414

vector.body1414:                                  ; preds = %vector.body1414, %polly.loop_header250
  %index1420 = phi i64 [ 0, %polly.loop_header250 ], [ %index.next1421, %vector.body1414 ]
  %broadcast.splatinsert1426 = insertelement <4 x i64> poison, i64 %index1420, i32 0
  %broadcast.splat1427 = shufflevector <4 x i64> %broadcast.splatinsert1426, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1428 = or <4 x i64> %broadcast.splat1427, <i64 0, i64 1, i64 2, i64 3>
  %103 = icmp ule <4 x i64> %induction1428, %broadcast.splat1425
  %104 = add nuw nsw i64 %index1420, %98
  %105 = add nuw nsw i64 %index1420, %polly.access.mul.Packed_MemRef_call1262
  %106 = getelementptr double, double* %Packed_MemRef_call1, i64 %105
  %107 = bitcast double* %106 to <4 x double>*
  %wide.masked.load1429 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %107, i32 8, <4 x i1> %103, <4 x double> poison)
  %108 = fmul fast <4 x double> %broadcast.splat1431, %wide.masked.load1429
  %109 = getelementptr double, double* %Packed_MemRef_call2, i64 %105
  %110 = bitcast double* %109 to <4 x double>*
  %wide.masked.load1432 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %110, i32 8, <4 x i1> %103, <4 x double> poison)
  %111 = fmul fast <4 x double> %broadcast.splat1434, %wide.masked.load1432
  %112 = shl i64 %104, 3
  %113 = getelementptr i8, i8* %scevgep278, i64 %112
  %114 = bitcast i8* %113 to <4 x double>*
  %wide.masked.load1435 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %114, i32 8, <4 x i1> %103, <4 x double> poison), !alias.scope !72, !noalias !74
  %115 = fadd fast <4 x double> %111, %108
  %116 = fmul fast <4 x double> %115, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %117 = fadd fast <4 x double> %116, %wide.masked.load1435
  %118 = bitcast i8* %113 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %117, <4 x double>* %118, i32 8, <4 x i1> %103), !alias.scope !72, !noalias !74
  %index.next1421 = add i64 %index1420, 4
  %119 = icmp eq i64 %index.next1421, %n.vec1419
  br i1 %119, label %polly.loop_exit258, label %vector.body1414, !llvm.loop !84

polly.loop_exit258:                               ; preds = %vector.body1414
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %indvars.iv.next892 = add nuw nsw i64 %indvars.iv891, 1
  %exitcond894.not = icmp eq i64 %indvars.iv.next892, %indvars.iv
  br i1 %exitcond894.not, label %polly.loop_exit252, label %polly.loop_header250

polly.start284:                                   ; preds = %kernel_syr2k.exit
  %malloccall286 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #8
  %malloccall288 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #8
  br label %polly.loop_header372

polly.loop_header372:                             ; preds = %polly.loop_exit380, %polly.start284
  %indvar1351 = phi i64 [ %indvar.next1352, %polly.loop_exit380 ], [ 0, %polly.start284 ]
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 1, %polly.start284 ]
  %120 = add i64 %indvar1351, 1
  %121 = mul nuw nsw i64 %polly.indvar375, 640
  %scevgep384 = getelementptr i8, i8* %call, i64 %121
  %min.iters.check1353 = icmp ult i64 %120, 4
  br i1 %min.iters.check1353, label %polly.loop_header378.preheader, label %vector.ph1354

vector.ph1354:                                    ; preds = %polly.loop_header372
  %n.vec1356 = and i64 %120, -4
  br label %vector.body1350

vector.body1350:                                  ; preds = %vector.body1350, %vector.ph1354
  %index1357 = phi i64 [ 0, %vector.ph1354 ], [ %index.next1358, %vector.body1350 ]
  %122 = shl nuw nsw i64 %index1357, 3
  %123 = getelementptr i8, i8* %scevgep384, i64 %122
  %124 = bitcast i8* %123 to <4 x double>*
  %wide.load1361 = load <4 x double>, <4 x double>* %124, align 8, !alias.scope !85, !noalias !87
  %125 = fmul fast <4 x double> %wide.load1361, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %126 = bitcast i8* %123 to <4 x double>*
  store <4 x double> %125, <4 x double>* %126, align 8, !alias.scope !85, !noalias !87
  %index.next1358 = add i64 %index1357, 4
  %127 = icmp eq i64 %index.next1358, %n.vec1356
  br i1 %127, label %middle.block1348, label %vector.body1350, !llvm.loop !92

middle.block1348:                                 ; preds = %vector.body1350
  %cmp.n1360 = icmp eq i64 %120, %n.vec1356
  br i1 %cmp.n1360, label %polly.loop_exit380, label %polly.loop_header378.preheader

polly.loop_header378.preheader:                   ; preds = %polly.loop_header372, %middle.block1348
  %polly.indvar381.ph = phi i64 [ 0, %polly.loop_header372 ], [ %n.vec1356, %middle.block1348 ]
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_header378, %middle.block1348
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond913.not = icmp eq i64 %polly.indvar_next376, 80
  %indvar.next1352 = add i64 %indvar1351, 1
  br i1 %exitcond913.not, label %polly.loop_header388.preheader, label %polly.loop_header372

polly.loop_header388.preheader:                   ; preds = %polly.loop_exit380
  %Packed_MemRef_call1287 = bitcast i8* %malloccall286 to double*
  %Packed_MemRef_call2289 = bitcast i8* %malloccall288 to double*
  br label %polly.loop_header394

polly.loop_header378:                             ; preds = %polly.loop_header378.preheader, %polly.loop_header378
  %polly.indvar381 = phi i64 [ %polly.indvar_next382, %polly.loop_header378 ], [ %polly.indvar381.ph, %polly.loop_header378.preheader ]
  %128 = shl nuw nsw i64 %polly.indvar381, 3
  %scevgep385 = getelementptr i8, i8* %scevgep384, i64 %128
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_387, 1.200000e+00
  store double %p_mul.i57, double* %scevgep385386, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next382, %polly.indvar375
  br i1 %exitcond912.not, label %polly.loop_exit380, label %polly.loop_header378, !llvm.loop !93

polly.loop_header394:                             ; preds = %polly.loop_exit434, %polly.loop_header388.preheader
  %indvars.iv899 = phi i64 [ %indvars.iv.next900, %polly.loop_exit434 ], [ 80, %polly.loop_header388.preheader ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit434 ], [ 0, %polly.loop_header388.preheader ]
  %129 = mul nsw i64 %polly.indvar397, -8
  %130 = shl nsw i64 %polly.indvar397, 3
  br label %polly.loop_header400

polly.loop_exit434:                               ; preds = %polly.loop_exit440
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %indvars.iv.next900 = add nsw i64 %indvars.iv899, -8
  %exitcond911.not = icmp eq i64 %polly.indvar_next398, 10
  br i1 %exitcond911.not, label %polly.loop_header394.1, label %polly.loop_header394

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_header394
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header394 ], [ %polly.indvar_next404, %polly.loop_exit408 ]
  %polly.access.mul.Packed_MemRef_call2289 = mul nuw nsw i64 %polly.indvar403, 80
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond902.not = icmp eq i64 %polly.indvar_next404, 32
  br i1 %exitcond902.not, label %polly.loop_header416, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %131 = add nuw nsw i64 %polly.indvar409, %130
  %polly.access.mul.call2413 = mul nuw nsw i64 %131, 60
  %polly.access.add.call2414 = add nuw nsw i64 %polly.indvar403, %polly.access.mul.call2413
  %polly.access.call2415 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2414
  %polly.access.call2415.load = load double, double* %polly.access.call2415, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2289 = add nuw nsw i64 %polly.indvar409, %polly.access.mul.Packed_MemRef_call2289
  %polly.access.Packed_MemRef_call2289 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289
  store double %polly.access.call2415.load, double* %polly.access.Packed_MemRef_call2289, align 8
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond901.not = icmp eq i64 %polly.indvar_next410, %indvars.iv899
  br i1 %exitcond901.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header416:                             ; preds = %polly.loop_exit408, %polly.loop_exit424
  %polly.indvar419 = phi i64 [ %polly.indvar_next420, %polly.loop_exit424 ], [ 0, %polly.loop_exit408 ]
  %polly.access.mul.Packed_MemRef_call1287 = mul nuw nsw i64 %polly.indvar419, 80
  br label %polly.loop_header422

polly.loop_exit424:                               ; preds = %polly.loop_header422
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next420, 32
  br i1 %exitcond904.not, label %polly.loop_header432, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_header422, %polly.loop_header416
  %polly.indvar425 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next426, %polly.loop_header422 ]
  %132 = add nuw nsw i64 %polly.indvar425, %130
  %polly.access.mul.call1429 = mul nuw nsw i64 %132, 60
  %polly.access.add.call1430 = add nuw nsw i64 %polly.indvar419, %polly.access.mul.call1429
  %polly.access.call1431 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1430
  %polly.access.call1431.load = load double, double* %polly.access.call1431, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1287 = add nuw nsw i64 %polly.indvar425, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call1287 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287
  store double %polly.access.call1431.load, double* %polly.access.Packed_MemRef_call1287, align 8
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next426, %indvars.iv899
  br i1 %exitcond903.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header432:                             ; preds = %polly.loop_exit424, %polly.loop_exit440
  %polly.indvar435 = phi i64 [ %polly.indvar_next436, %polly.loop_exit440 ], [ 0, %polly.loop_exit424 ]
  %polly.access.mul.Packed_MemRef_call1287450 = mul nuw nsw i64 %polly.indvar435, 80
  br label %polly.loop_header438

polly.loop_exit440:                               ; preds = %polly.loop_exit446
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %exitcond910.not = icmp eq i64 %polly.indvar_next436, 32
  br i1 %exitcond910.not, label %polly.loop_exit434, label %polly.loop_header432

polly.loop_header438:                             ; preds = %polly.loop_exit446, %polly.loop_header432
  %indvars.iv905 = phi i64 [ %indvars.iv.next906, %polly.loop_exit446 ], [ 0, %polly.loop_header432 ]
  %polly.indvar441 = phi i64 [ %polly.indvar_next442, %polly.loop_exit446 ], [ %130, %polly.loop_header432 ]
  %smin1365 = call i64 @llvm.smin.i64(i64 %indvars.iv905, i64 7)
  %133 = add nsw i64 %polly.indvar441, %129
  %134 = mul nuw nsw i64 %polly.indvar441, 640
  %scevgep466 = getelementptr i8, i8* %call, i64 %134
  %polly.access.add.Packed_MemRef_call2289455 = add nuw nsw i64 %133, %polly.access.mul.Packed_MemRef_call1287450
  %polly.access.Packed_MemRef_call1287464 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call2289455
  %_p_scalar_465 = load double, double* %polly.access.Packed_MemRef_call1287464, align 8
  %polly.access.Packed_MemRef_call2289456 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289455
  %_p_scalar_457 = load double, double* %polly.access.Packed_MemRef_call2289456, align 8
  %n.rnd.up1367 = add nuw nsw i64 %smin1365, 4
  %n.vec1369 = and i64 %n.rnd.up1367, 12
  %broadcast.splatinsert1374 = insertelement <4 x i64> poison, i64 %smin1365, i32 0
  %broadcast.splat1375 = shufflevector <4 x i64> %broadcast.splatinsert1374, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1380 = insertelement <4 x double> poison, double %_p_scalar_457, i32 0
  %broadcast.splat1381 = shufflevector <4 x double> %broadcast.splatinsert1380, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1383 = insertelement <4 x double> poison, double %_p_scalar_465, i32 0
  %broadcast.splat1384 = shufflevector <4 x double> %broadcast.splatinsert1383, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %polly.loop_header438
  %index1370 = phi i64 [ 0, %polly.loop_header438 ], [ %index.next1371, %vector.body1364 ]
  %broadcast.splatinsert1376 = insertelement <4 x i64> poison, i64 %index1370, i32 0
  %broadcast.splat1377 = shufflevector <4 x i64> %broadcast.splatinsert1376, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1378 = or <4 x i64> %broadcast.splat1377, <i64 0, i64 1, i64 2, i64 3>
  %135 = icmp ule <4 x i64> %induction1378, %broadcast.splat1375
  %136 = add nuw nsw i64 %index1370, %130
  %137 = add nuw nsw i64 %index1370, %polly.access.mul.Packed_MemRef_call1287450
  %138 = getelementptr double, double* %Packed_MemRef_call1287, i64 %137
  %139 = bitcast double* %138 to <4 x double>*
  %wide.masked.load1379 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %139, i32 8, <4 x i1> %135, <4 x double> poison)
  %140 = fmul fast <4 x double> %broadcast.splat1381, %wide.masked.load1379
  %141 = getelementptr double, double* %Packed_MemRef_call2289, i64 %137
  %142 = bitcast double* %141 to <4 x double>*
  %wide.masked.load1382 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %142, i32 8, <4 x i1> %135, <4 x double> poison)
  %143 = fmul fast <4 x double> %broadcast.splat1384, %wide.masked.load1382
  %144 = shl i64 %136, 3
  %145 = getelementptr i8, i8* %scevgep466, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  %wide.masked.load1385 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %146, i32 8, <4 x i1> %135, <4 x double> poison), !alias.scope !85, !noalias !87
  %147 = fadd fast <4 x double> %143, %140
  %148 = fmul fast <4 x double> %147, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %149 = fadd fast <4 x double> %148, %wide.masked.load1385
  %150 = bitcast i8* %145 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %149, <4 x double>* %150, i32 8, <4 x i1> %135), !alias.scope !85, !noalias !87
  %index.next1371 = add i64 %index1370, 4
  %151 = icmp eq i64 %index.next1371, %n.vec1369
  br i1 %151, label %polly.loop_exit446, label %vector.body1364, !llvm.loop !96

polly.loop_exit446:                               ; preds = %vector.body1364
  %polly.indvar_next442 = add nuw nsw i64 %polly.indvar441, 1
  %indvars.iv.next906 = add nuw nsw i64 %indvars.iv905, 1
  %exitcond909.not = icmp eq i64 %indvars.iv.next906, %indvars.iv899
  br i1 %exitcond909.not, label %polly.loop_exit440, label %polly.loop_header438

polly.start472:                                   ; preds = %init_array.exit
  %malloccall474 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #8
  %malloccall476 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #8
  br label %polly.loop_header560

polly.loop_header560:                             ; preds = %polly.loop_exit568, %polly.start472
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit568 ], [ 0, %polly.start472 ]
  %polly.indvar563 = phi i64 [ %polly.indvar_next564, %polly.loop_exit568 ], [ 1, %polly.start472 ]
  %152 = add i64 %indvar, 1
  %153 = mul nuw nsw i64 %polly.indvar563, 640
  %scevgep572 = getelementptr i8, i8* %call, i64 %153
  %min.iters.check1307 = icmp ult i64 %152, 4
  br i1 %min.iters.check1307, label %polly.loop_header566.preheader, label %vector.ph1308

vector.ph1308:                                    ; preds = %polly.loop_header560
  %n.vec1310 = and i64 %152, -4
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1312, %vector.body1306 ]
  %154 = shl nuw nsw i64 %index1311, 3
  %155 = getelementptr i8, i8* %scevgep572, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1315 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !97, !noalias !99
  %157 = fmul fast <4 x double> %wide.load1315, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %158 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !97, !noalias !99
  %index.next1312 = add i64 %index1311, 4
  %159 = icmp eq i64 %index.next1312, %n.vec1310
  br i1 %159, label %middle.block1304, label %vector.body1306, !llvm.loop !104

middle.block1304:                                 ; preds = %vector.body1306
  %cmp.n1314 = icmp eq i64 %152, %n.vec1310
  br i1 %cmp.n1314, label %polly.loop_exit568, label %polly.loop_header566.preheader

polly.loop_header566.preheader:                   ; preds = %polly.loop_header560, %middle.block1304
  %polly.indvar569.ph = phi i64 [ 0, %polly.loop_header560 ], [ %n.vec1310, %middle.block1304 ]
  br label %polly.loop_header566

polly.loop_exit568:                               ; preds = %polly.loop_header566, %middle.block1304
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %exitcond928.not = icmp eq i64 %polly.indvar_next564, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond928.not, label %polly.loop_header576.preheader, label %polly.loop_header560

polly.loop_header576.preheader:                   ; preds = %polly.loop_exit568
  %Packed_MemRef_call1475 = bitcast i8* %malloccall474 to double*
  %Packed_MemRef_call2477 = bitcast i8* %malloccall476 to double*
  br label %polly.loop_header582

polly.loop_header566:                             ; preds = %polly.loop_header566.preheader, %polly.loop_header566
  %polly.indvar569 = phi i64 [ %polly.indvar_next570, %polly.loop_header566 ], [ %polly.indvar569.ph, %polly.loop_header566.preheader ]
  %160 = shl nuw nsw i64 %polly.indvar569, 3
  %scevgep573 = getelementptr i8, i8* %scevgep572, i64 %160
  %scevgep573574 = bitcast i8* %scevgep573 to double*
  %_p_scalar_575 = load double, double* %scevgep573574, align 8, !alias.scope !97, !noalias !99
  %p_mul.i = fmul fast double %_p_scalar_575, 1.200000e+00
  store double %p_mul.i, double* %scevgep573574, align 8, !alias.scope !97, !noalias !99
  %polly.indvar_next570 = add nuw nsw i64 %polly.indvar569, 1
  %exitcond927.not = icmp eq i64 %polly.indvar_next570, %polly.indvar563
  br i1 %exitcond927.not, label %polly.loop_exit568, label %polly.loop_header566, !llvm.loop !105

polly.loop_header582:                             ; preds = %polly.loop_exit622, %polly.loop_header576.preheader
  %indvars.iv914 = phi i64 [ %indvars.iv.next915, %polly.loop_exit622 ], [ 80, %polly.loop_header576.preheader ]
  %polly.indvar585 = phi i64 [ %polly.indvar_next586, %polly.loop_exit622 ], [ 0, %polly.loop_header576.preheader ]
  %161 = mul nsw i64 %polly.indvar585, -8
  %162 = shl nsw i64 %polly.indvar585, 3
  br label %polly.loop_header588

polly.loop_exit622:                               ; preds = %polly.loop_exit628
  %polly.indvar_next586 = add nuw nsw i64 %polly.indvar585, 1
  %indvars.iv.next915 = add nsw i64 %indvars.iv914, -8
  %exitcond926.not = icmp eq i64 %polly.indvar_next586, 10
  br i1 %exitcond926.not, label %polly.loop_header582.1, label %polly.loop_header582

polly.loop_header588:                             ; preds = %polly.loop_exit596, %polly.loop_header582
  %polly.indvar591 = phi i64 [ 0, %polly.loop_header582 ], [ %polly.indvar_next592, %polly.loop_exit596 ]
  %polly.access.mul.Packed_MemRef_call2477 = mul nuw nsw i64 %polly.indvar591, 80
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_header594
  %polly.indvar_next592 = add nuw nsw i64 %polly.indvar591, 1
  %exitcond917.not = icmp eq i64 %polly.indvar_next592, 32
  br i1 %exitcond917.not, label %polly.loop_header604, label %polly.loop_header588

polly.loop_header594:                             ; preds = %polly.loop_header594, %polly.loop_header588
  %polly.indvar597 = phi i64 [ 0, %polly.loop_header588 ], [ %polly.indvar_next598, %polly.loop_header594 ]
  %163 = add nuw nsw i64 %polly.indvar597, %162
  %polly.access.mul.call2601 = mul nuw nsw i64 %163, 60
  %polly.access.add.call2602 = add nuw nsw i64 %polly.indvar591, %polly.access.mul.call2601
  %polly.access.call2603 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2602
  %polly.access.call2603.load = load double, double* %polly.access.call2603, align 8, !alias.scope !101, !noalias !106
  %polly.access.add.Packed_MemRef_call2477 = add nuw nsw i64 %polly.indvar597, %polly.access.mul.Packed_MemRef_call2477
  %polly.access.Packed_MemRef_call2477 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477
  store double %polly.access.call2603.load, double* %polly.access.Packed_MemRef_call2477, align 8
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond916.not = icmp eq i64 %polly.indvar_next598, %indvars.iv914
  br i1 %exitcond916.not, label %polly.loop_exit596, label %polly.loop_header594

polly.loop_header604:                             ; preds = %polly.loop_exit596, %polly.loop_exit612
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_exit612 ], [ 0, %polly.loop_exit596 ]
  %polly.access.mul.Packed_MemRef_call1475 = mul nuw nsw i64 %polly.indvar607, 80
  br label %polly.loop_header610

polly.loop_exit612:                               ; preds = %polly.loop_header610
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond919.not = icmp eq i64 %polly.indvar_next608, 32
  br i1 %exitcond919.not, label %polly.loop_header620, label %polly.loop_header604

polly.loop_header610:                             ; preds = %polly.loop_header610, %polly.loop_header604
  %polly.indvar613 = phi i64 [ 0, %polly.loop_header604 ], [ %polly.indvar_next614, %polly.loop_header610 ]
  %164 = add nuw nsw i64 %polly.indvar613, %162
  %polly.access.mul.call1617 = mul nuw nsw i64 %164, 60
  %polly.access.add.call1618 = add nuw nsw i64 %polly.indvar607, %polly.access.mul.call1617
  %polly.access.call1619 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1618
  %polly.access.call1619.load = load double, double* %polly.access.call1619, align 8, !alias.scope !100, !noalias !107
  %polly.access.add.Packed_MemRef_call1475 = add nuw nsw i64 %polly.indvar613, %polly.access.mul.Packed_MemRef_call1475
  %polly.access.Packed_MemRef_call1475 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475
  store double %polly.access.call1619.load, double* %polly.access.Packed_MemRef_call1475, align 8
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond918.not = icmp eq i64 %polly.indvar_next614, %indvars.iv914
  br i1 %exitcond918.not, label %polly.loop_exit612, label %polly.loop_header610

polly.loop_header620:                             ; preds = %polly.loop_exit612, %polly.loop_exit628
  %polly.indvar623 = phi i64 [ %polly.indvar_next624, %polly.loop_exit628 ], [ 0, %polly.loop_exit612 ]
  %polly.access.mul.Packed_MemRef_call1475638 = mul nuw nsw i64 %polly.indvar623, 80
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_exit634
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %exitcond925.not = icmp eq i64 %polly.indvar_next624, 32
  br i1 %exitcond925.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header626:                             ; preds = %polly.loop_exit634, %polly.loop_header620
  %indvars.iv920 = phi i64 [ %indvars.iv.next921, %polly.loop_exit634 ], [ 0, %polly.loop_header620 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit634 ], [ %162, %polly.loop_header620 ]
  %smin1319 = call i64 @llvm.smin.i64(i64 %indvars.iv920, i64 7)
  %165 = add nsw i64 %polly.indvar629, %161
  %166 = mul nuw nsw i64 %polly.indvar629, 640
  %scevgep654 = getelementptr i8, i8* %call, i64 %166
  %polly.access.add.Packed_MemRef_call2477643 = add nuw nsw i64 %165, %polly.access.mul.Packed_MemRef_call1475638
  %polly.access.Packed_MemRef_call1475652 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call2477643
  %_p_scalar_653 = load double, double* %polly.access.Packed_MemRef_call1475652, align 8
  %polly.access.Packed_MemRef_call2477644 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477643
  %_p_scalar_645 = load double, double* %polly.access.Packed_MemRef_call2477644, align 8
  %n.rnd.up = add nuw nsw i64 %smin1319, 4
  %n.vec1322 = and i64 %n.rnd.up, 12
  %broadcast.splatinsert1326 = insertelement <4 x i64> poison, i64 %smin1319, i32 0
  %broadcast.splat1327 = shufflevector <4 x i64> %broadcast.splatinsert1326, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1330 = insertelement <4 x double> poison, double %_p_scalar_645, i32 0
  %broadcast.splat1331 = shufflevector <4 x double> %broadcast.splatinsert1330, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1333 = insertelement <4 x double> poison, double %_p_scalar_653, i32 0
  %broadcast.splat1334 = shufflevector <4 x double> %broadcast.splatinsert1333, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %polly.loop_header626
  %index1323 = phi i64 [ 0, %polly.loop_header626 ], [ %index.next1324, %vector.body1318 ]
  %broadcast.splatinsert1328 = insertelement <4 x i64> poison, i64 %index1323, i32 0
  %broadcast.splat1329 = shufflevector <4 x i64> %broadcast.splatinsert1328, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or <4 x i64> %broadcast.splat1329, <i64 0, i64 1, i64 2, i64 3>
  %167 = icmp ule <4 x i64> %induction, %broadcast.splat1327
  %168 = add nuw nsw i64 %index1323, %162
  %169 = add nuw nsw i64 %index1323, %polly.access.mul.Packed_MemRef_call1475638
  %170 = getelementptr double, double* %Packed_MemRef_call1475, i64 %169
  %171 = bitcast double* %170 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %171, i32 8, <4 x i1> %167, <4 x double> poison)
  %172 = fmul fast <4 x double> %broadcast.splat1331, %wide.masked.load
  %173 = getelementptr double, double* %Packed_MemRef_call2477, i64 %169
  %174 = bitcast double* %173 to <4 x double>*
  %wide.masked.load1332 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %174, i32 8, <4 x i1> %167, <4 x double> poison)
  %175 = fmul fast <4 x double> %broadcast.splat1334, %wide.masked.load1332
  %176 = shl i64 %168, 3
  %177 = getelementptr i8, i8* %scevgep654, i64 %176
  %178 = bitcast i8* %177 to <4 x double>*
  %wide.masked.load1335 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %178, i32 8, <4 x i1> %167, <4 x double> poison), !alias.scope !97, !noalias !99
  %179 = fadd fast <4 x double> %175, %172
  %180 = fmul fast <4 x double> %179, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %181 = fadd fast <4 x double> %180, %wide.masked.load1335
  %182 = bitcast i8* %177 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %181, <4 x double>* %182, i32 8, <4 x i1> %167), !alias.scope !97, !noalias !99
  %index.next1324 = add i64 %index1323, 4
  %183 = icmp eq i64 %index.next1324, %n.vec1322
  br i1 %183, label %polly.loop_exit634, label %vector.body1318, !llvm.loop !108

polly.loop_exit634:                               ; preds = %vector.body1318
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next921 = add nuw nsw i64 %indvars.iv920, 1
  %exitcond924.not = icmp eq i64 %indvars.iv.next921, %indvars.iv914
  br i1 %exitcond924.not, label %polly.loop_exit628, label %polly.loop_header626

polly.loop_header796:                             ; preds = %entry, %polly.loop_exit804
  %polly.indvar799 = phi i64 [ %polly.indvar_next800, %polly.loop_exit804 ], [ 0, %entry ]
  %184 = mul nuw nsw i64 %polly.indvar799, 640
  %185 = trunc i64 %polly.indvar799 to i32
  %broadcast.splatinsert1038 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1039 = shufflevector <4 x i32> %broadcast.splatinsert1038, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1028

vector.body1028:                                  ; preds = %vector.body1028, %polly.loop_header796
  %index1030 = phi i64 [ 0, %polly.loop_header796 ], [ %index.next1031, %vector.body1028 ]
  %vec.ind1036 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header796 ], [ %vec.ind.next1037, %vector.body1028 ]
  %186 = mul <4 x i32> %vec.ind1036, %broadcast.splat1039
  %187 = add <4 x i32> %186, <i32 3, i32 3, i32 3, i32 3>
  %188 = urem <4 x i32> %187, <i32 80, i32 80, i32 80, i32 80>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %191 = shl i64 %index1030, 3
  %192 = add nuw nsw i64 %191, %184
  %193 = getelementptr i8, i8* %call, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %190, <4 x double>* %194, align 8, !alias.scope !109, !noalias !111
  %index.next1031 = add i64 %index1030, 4
  %vec.ind.next1037 = add <4 x i32> %vec.ind1036, <i32 4, i32 4, i32 4, i32 4>
  %195 = icmp eq i64 %index.next1031, 32
  br i1 %195, label %polly.loop_exit804, label %vector.body1028, !llvm.loop !114

polly.loop_exit804:                               ; preds = %vector.body1028
  %polly.indvar_next800 = add nuw nsw i64 %polly.indvar799, 1
  %exitcond948.not = icmp eq i64 %polly.indvar_next800, 32
  br i1 %exitcond948.not, label %polly.loop_header796.1, label %polly.loop_header796

polly.loop_header823:                             ; preds = %polly.loop_exit804.2.2, %polly.loop_exit831
  %polly.indvar826 = phi i64 [ %polly.indvar_next827, %polly.loop_exit831 ], [ 0, %polly.loop_exit804.2.2 ]
  %196 = mul nuw nsw i64 %polly.indvar826, 480
  %197 = trunc i64 %polly.indvar826 to i32
  %broadcast.splatinsert1152 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1153 = shufflevector <4 x i32> %broadcast.splatinsert1152, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %polly.loop_header823
  %index1144 = phi i64 [ 0, %polly.loop_header823 ], [ %index.next1145, %vector.body1142 ]
  %vec.ind1150 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823 ], [ %vec.ind.next1151, %vector.body1142 ]
  %198 = mul <4 x i32> %vec.ind1150, %broadcast.splat1153
  %199 = add <4 x i32> %198, <i32 2, i32 2, i32 2, i32 2>
  %200 = urem <4 x i32> %199, <i32 60, i32 60, i32 60, i32 60>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %203 = shl i64 %index1144, 3
  %204 = add i64 %203, %196
  %205 = getelementptr i8, i8* %call2, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !113, !noalias !115
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1151 = add <4 x i32> %vec.ind1150, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next1145, 32
  br i1 %207, label %polly.loop_exit831, label %vector.body1142, !llvm.loop !116

polly.loop_exit831:                               ; preds = %vector.body1142
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond939.not = icmp eq i64 %polly.indvar_next827, 32
  br i1 %exitcond939.not, label %polly.loop_header823.1, label %polly.loop_header823

polly.loop_header849:                             ; preds = %polly.loop_exit831.1.2, %polly.loop_exit857
  %polly.indvar852 = phi i64 [ %polly.indvar_next853, %polly.loop_exit857 ], [ 0, %polly.loop_exit831.1.2 ]
  %208 = mul nuw nsw i64 %polly.indvar852, 480
  %209 = trunc i64 %polly.indvar852 to i32
  %broadcast.splatinsert1230 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1231 = shufflevector <4 x i32> %broadcast.splatinsert1230, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %polly.loop_header849
  %index1222 = phi i64 [ 0, %polly.loop_header849 ], [ %index.next1223, %vector.body1220 ]
  %vec.ind1228 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header849 ], [ %vec.ind.next1229, %vector.body1220 ]
  %210 = mul <4 x i32> %vec.ind1228, %broadcast.splat1231
  %211 = add <4 x i32> %210, <i32 1, i32 1, i32 1, i32 1>
  %212 = urem <4 x i32> %211, <i32 80, i32 80, i32 80, i32 80>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %215 = shl i64 %index1222, 3
  %216 = add i64 %215, %208
  %217 = getelementptr i8, i8* %call1, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %214, <4 x double>* %218, align 8, !alias.scope !112, !noalias !117
  %index.next1223 = add i64 %index1222, 4
  %vec.ind.next1229 = add <4 x i32> %vec.ind1228, <i32 4, i32 4, i32 4, i32 4>
  %219 = icmp eq i64 %index.next1223, 32
  br i1 %219, label %polly.loop_exit857, label %vector.body1220, !llvm.loop !118

polly.loop_exit857:                               ; preds = %vector.body1220
  %polly.indvar_next853 = add nuw nsw i64 %polly.indvar852, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next853, 32
  br i1 %exitcond933.not, label %polly.loop_header849.1, label %polly.loop_header849

polly.loop_header206.1:                           ; preds = %polly.loop_exit246, %polly.loop_exit246.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit246.1 ], [ 80, %polly.loop_exit246 ]
  %polly.indvar209.1 = phi i64 [ %polly.indvar_next210.1, %polly.loop_exit246.1 ], [ 0, %polly.loop_exit246 ]
  %220 = mul nsw i64 %polly.indvar209.1, -8
  %221 = shl nsw i64 %polly.indvar209.1, 3
  br label %polly.loop_header212.1

polly.loop_header212.1:                           ; preds = %polly.loop_exit220.1, %polly.loop_header206.1
  %polly.indvar215.1 = phi i64 [ 0, %polly.loop_header206.1 ], [ %polly.indvar_next216.1, %polly.loop_exit220.1 ]
  %222 = add nuw nsw i64 %polly.indvar215.1, 32
  %polly.access.mul.Packed_MemRef_call2.1 = mul nuw nsw i64 %polly.indvar215.1, 80
  br label %polly.loop_header218.1

polly.loop_header218.1:                           ; preds = %polly.loop_header218.1, %polly.loop_header212.1
  %polly.indvar221.1 = phi i64 [ 0, %polly.loop_header212.1 ], [ %polly.indvar_next222.1, %polly.loop_header218.1 ]
  %223 = add nuw nsw i64 %polly.indvar221.1, %221
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %223, 60
  %polly.access.add.call2226.1 = add nuw nsw i64 %222, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, %polly.access.mul.Packed_MemRef_call2.1
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %polly.loop_exit220.1, label %polly.loop_header218.1

polly.loop_exit220.1:                             ; preds = %polly.loop_header218.1
  %polly.indvar_next216.1 = add nuw nsw i64 %polly.indvar215.1, 1
  %exitcond888.1.not = icmp eq i64 %polly.indvar_next216.1, 28
  br i1 %exitcond888.1.not, label %polly.loop_header228.1, label %polly.loop_header212.1

polly.loop_header228.1:                           ; preds = %polly.loop_exit220.1, %polly.loop_exit236.1
  %polly.indvar231.1 = phi i64 [ %polly.indvar_next232.1, %polly.loop_exit236.1 ], [ 0, %polly.loop_exit220.1 ]
  %224 = add nuw nsw i64 %polly.indvar231.1, 32
  %polly.access.mul.Packed_MemRef_call1.1 = mul nuw nsw i64 %polly.indvar231.1, 80
  br label %polly.loop_header234.1

polly.loop_header234.1:                           ; preds = %polly.loop_header234.1, %polly.loop_header228.1
  %polly.indvar237.1 = phi i64 [ 0, %polly.loop_header228.1 ], [ %polly.indvar_next238.1, %polly.loop_header234.1 ]
  %225 = add nuw nsw i64 %polly.indvar237.1, %221
  %polly.access.mul.call1241.1 = mul nuw nsw i64 %225, 60
  %polly.access.add.call1242.1 = add nuw nsw i64 %224, %polly.access.mul.call1241.1
  %polly.access.call1243.1 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1242.1
  %polly.access.call1243.load.1 = load double, double* %polly.access.call1243.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.1 = add nuw nsw i64 %polly.indvar237.1, %polly.access.mul.Packed_MemRef_call1.1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1243.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.indvar_next238.1 = add nuw nsw i64 %polly.indvar237.1, 1
  %exitcond889.1.not = icmp eq i64 %polly.indvar_next238.1, %indvars.iv.1
  br i1 %exitcond889.1.not, label %polly.loop_exit236.1, label %polly.loop_header234.1

polly.loop_exit236.1:                             ; preds = %polly.loop_header234.1
  %polly.indvar_next232.1 = add nuw nsw i64 %polly.indvar231.1, 1
  %exitcond890.1.not = icmp eq i64 %polly.indvar_next232.1, 28
  br i1 %exitcond890.1.not, label %polly.loop_header244.1, label %polly.loop_header228.1

polly.loop_header244.1:                           ; preds = %polly.loop_exit236.1, %polly.loop_exit252.1
  %polly.indvar247.1 = phi i64 [ %polly.indvar_next248.1, %polly.loop_exit252.1 ], [ 0, %polly.loop_exit236.1 ]
  %polly.access.mul.Packed_MemRef_call1262.1 = mul nuw nsw i64 %polly.indvar247.1, 80
  br label %polly.loop_header250.1

polly.loop_header250.1:                           ; preds = %polly.loop_exit258.1, %polly.loop_header244.1
  %indvars.iv891.1 = phi i64 [ %indvars.iv.next892.1, %polly.loop_exit258.1 ], [ 0, %polly.loop_header244.1 ]
  %polly.indvar253.1 = phi i64 [ %polly.indvar_next254.1, %polly.loop_exit258.1 ], [ %221, %polly.loop_header244.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv891.1, i64 7)
  %226 = add nsw i64 %polly.indvar253.1, %220
  %227 = mul nuw nsw i64 %polly.indvar253.1, 640
  %scevgep278.1 = getelementptr i8, i8* %call, i64 %227
  %polly.access.add.Packed_MemRef_call2267.1 = add nuw nsw i64 %226, %polly.access.mul.Packed_MemRef_call1262.1
  %polly.access.Packed_MemRef_call2268.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.1
  %_p_scalar_269.1 = load double, double* %polly.access.Packed_MemRef_call2268.1, align 8
  %polly.access.Packed_MemRef_call1276.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267.1
  %_p_scalar_277.1 = load double, double* %polly.access.Packed_MemRef_call1276.1, align 8
  br label %polly.loop_header256.1

polly.loop_header256.1:                           ; preds = %polly.loop_header256.1, %polly.loop_header250.1
  %polly.indvar259.1 = phi i64 [ 0, %polly.loop_header250.1 ], [ %polly.indvar_next260.1, %polly.loop_header256.1 ]
  %228 = add nuw nsw i64 %polly.indvar259.1, %221
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar259.1, %polly.access.mul.Packed_MemRef_call1262.1
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  %_p_scalar_265.1 = load double, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_269.1, %_p_scalar_265.1
  %polly.access.Packed_MemRef_call2272.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263.1
  %_p_scalar_273.1 = load double, double* %polly.access.Packed_MemRef_call2272.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_277.1, %_p_scalar_273.1
  %229 = shl i64 %228, 3
  %scevgep279.1 = getelementptr i8, i8* %scevgep278.1, i64 %229
  %scevgep279280.1 = bitcast i8* %scevgep279.1 to double*
  %_p_scalar_281.1 = load double, double* %scevgep279280.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_281.1
  store double %p_add42.i118.1, double* %scevgep279280.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next260.1 = add nuw nsw i64 %polly.indvar259.1, 1
  %exitcond893.1.not = icmp eq i64 %polly.indvar259.1, %smin.1
  br i1 %exitcond893.1.not, label %polly.loop_exit258.1, label %polly.loop_header256.1

polly.loop_exit258.1:                             ; preds = %polly.loop_header256.1
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %indvars.iv.next892.1 = add nuw nsw i64 %indvars.iv891.1, 1
  %exitcond894.1.not = icmp eq i64 %indvars.iv.next892.1, %indvars.iv.1
  br i1 %exitcond894.1.not, label %polly.loop_exit252.1, label %polly.loop_header250.1

polly.loop_exit252.1:                             ; preds = %polly.loop_exit258.1
  %polly.indvar_next248.1 = add nuw nsw i64 %polly.indvar247.1, 1
  %exitcond895.1.not = icmp eq i64 %polly.indvar_next248.1, 28
  br i1 %exitcond895.1.not, label %polly.loop_exit246.1, label %polly.loop_header244.1

polly.loop_exit246.1:                             ; preds = %polly.loop_exit252.1
  %polly.indvar_next210.1 = add nuw nsw i64 %polly.indvar209.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -8
  %exitcond896.1.not = icmp eq i64 %polly.indvar_next210.1, 10
  br i1 %exitcond896.1.not, label %polly.loop_exit208.1, label %polly.loop_header206.1

polly.loop_exit208.1:                             ; preds = %polly.loop_exit246.1
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header394.1:                           ; preds = %polly.loop_exit434, %polly.loop_exit434.1
  %indvars.iv899.1 = phi i64 [ %indvars.iv.next900.1, %polly.loop_exit434.1 ], [ 80, %polly.loop_exit434 ]
  %polly.indvar397.1 = phi i64 [ %polly.indvar_next398.1, %polly.loop_exit434.1 ], [ 0, %polly.loop_exit434 ]
  %230 = mul nsw i64 %polly.indvar397.1, -8
  %231 = shl nsw i64 %polly.indvar397.1, 3
  br label %polly.loop_header400.1

polly.loop_header400.1:                           ; preds = %polly.loop_exit408.1, %polly.loop_header394.1
  %polly.indvar403.1 = phi i64 [ 0, %polly.loop_header394.1 ], [ %polly.indvar_next404.1, %polly.loop_exit408.1 ]
  %232 = add nuw nsw i64 %polly.indvar403.1, 32
  %polly.access.mul.Packed_MemRef_call2289.1 = mul nuw nsw i64 %polly.indvar403.1, 80
  br label %polly.loop_header406.1

polly.loop_header406.1:                           ; preds = %polly.loop_header406.1, %polly.loop_header400.1
  %polly.indvar409.1 = phi i64 [ 0, %polly.loop_header400.1 ], [ %polly.indvar_next410.1, %polly.loop_header406.1 ]
  %233 = add nuw nsw i64 %polly.indvar409.1, %231
  %polly.access.mul.call2413.1 = mul nuw nsw i64 %233, 60
  %polly.access.add.call2414.1 = add nuw nsw i64 %232, %polly.access.mul.call2413.1
  %polly.access.call2415.1 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2414.1
  %polly.access.call2415.load.1 = load double, double* %polly.access.call2415.1, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2289.1 = add nuw nsw i64 %polly.indvar409.1, %polly.access.mul.Packed_MemRef_call2289.1
  %polly.access.Packed_MemRef_call2289.1 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289.1
  store double %polly.access.call2415.load.1, double* %polly.access.Packed_MemRef_call2289.1, align 8
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %exitcond901.1.not = icmp eq i64 %polly.indvar_next410.1, %indvars.iv899.1
  br i1 %exitcond901.1.not, label %polly.loop_exit408.1, label %polly.loop_header406.1

polly.loop_exit408.1:                             ; preds = %polly.loop_header406.1
  %polly.indvar_next404.1 = add nuw nsw i64 %polly.indvar403.1, 1
  %exitcond902.1.not = icmp eq i64 %polly.indvar_next404.1, 28
  br i1 %exitcond902.1.not, label %polly.loop_header416.1, label %polly.loop_header400.1

polly.loop_header416.1:                           ; preds = %polly.loop_exit408.1, %polly.loop_exit424.1
  %polly.indvar419.1 = phi i64 [ %polly.indvar_next420.1, %polly.loop_exit424.1 ], [ 0, %polly.loop_exit408.1 ]
  %234 = add nuw nsw i64 %polly.indvar419.1, 32
  %polly.access.mul.Packed_MemRef_call1287.1 = mul nuw nsw i64 %polly.indvar419.1, 80
  br label %polly.loop_header422.1

polly.loop_header422.1:                           ; preds = %polly.loop_header422.1, %polly.loop_header416.1
  %polly.indvar425.1 = phi i64 [ 0, %polly.loop_header416.1 ], [ %polly.indvar_next426.1, %polly.loop_header422.1 ]
  %235 = add nuw nsw i64 %polly.indvar425.1, %231
  %polly.access.mul.call1429.1 = mul nuw nsw i64 %235, 60
  %polly.access.add.call1430.1 = add nuw nsw i64 %234, %polly.access.mul.call1429.1
  %polly.access.call1431.1 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1430.1
  %polly.access.call1431.load.1 = load double, double* %polly.access.call1431.1, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1287.1 = add nuw nsw i64 %polly.indvar425.1, %polly.access.mul.Packed_MemRef_call1287.1
  %polly.access.Packed_MemRef_call1287.1 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287.1
  store double %polly.access.call1431.load.1, double* %polly.access.Packed_MemRef_call1287.1, align 8
  %polly.indvar_next426.1 = add nuw nsw i64 %polly.indvar425.1, 1
  %exitcond903.1.not = icmp eq i64 %polly.indvar_next426.1, %indvars.iv899.1
  br i1 %exitcond903.1.not, label %polly.loop_exit424.1, label %polly.loop_header422.1

polly.loop_exit424.1:                             ; preds = %polly.loop_header422.1
  %polly.indvar_next420.1 = add nuw nsw i64 %polly.indvar419.1, 1
  %exitcond904.1.not = icmp eq i64 %polly.indvar_next420.1, 28
  br i1 %exitcond904.1.not, label %polly.loop_header432.1, label %polly.loop_header416.1

polly.loop_header432.1:                           ; preds = %polly.loop_exit424.1, %polly.loop_exit440.1
  %polly.indvar435.1 = phi i64 [ %polly.indvar_next436.1, %polly.loop_exit440.1 ], [ 0, %polly.loop_exit424.1 ]
  %polly.access.mul.Packed_MemRef_call1287450.1 = mul nuw nsw i64 %polly.indvar435.1, 80
  br label %polly.loop_header438.1

polly.loop_header438.1:                           ; preds = %polly.loop_exit446.1, %polly.loop_header432.1
  %indvars.iv905.1 = phi i64 [ %indvars.iv.next906.1, %polly.loop_exit446.1 ], [ 0, %polly.loop_header432.1 ]
  %polly.indvar441.1 = phi i64 [ %polly.indvar_next442.1, %polly.loop_exit446.1 ], [ %231, %polly.loop_header432.1 ]
  %smin907.1 = call i64 @llvm.smin.i64(i64 %indvars.iv905.1, i64 7)
  %236 = add nsw i64 %polly.indvar441.1, %230
  %237 = mul nuw nsw i64 %polly.indvar441.1, 640
  %scevgep466.1 = getelementptr i8, i8* %call, i64 %237
  %polly.access.add.Packed_MemRef_call2289455.1 = add nuw nsw i64 %236, %polly.access.mul.Packed_MemRef_call1287450.1
  %polly.access.Packed_MemRef_call2289456.1 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289455.1
  %_p_scalar_457.1 = load double, double* %polly.access.Packed_MemRef_call2289456.1, align 8
  %polly.access.Packed_MemRef_call1287464.1 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call2289455.1
  %_p_scalar_465.1 = load double, double* %polly.access.Packed_MemRef_call1287464.1, align 8
  br label %polly.loop_header444.1

polly.loop_header444.1:                           ; preds = %polly.loop_header444.1, %polly.loop_header438.1
  %polly.indvar447.1 = phi i64 [ 0, %polly.loop_header438.1 ], [ %polly.indvar_next448.1, %polly.loop_header444.1 ]
  %238 = add nuw nsw i64 %polly.indvar447.1, %231
  %polly.access.add.Packed_MemRef_call1287451.1 = add nuw nsw i64 %polly.indvar447.1, %polly.access.mul.Packed_MemRef_call1287450.1
  %polly.access.Packed_MemRef_call1287452.1 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287451.1
  %_p_scalar_453.1 = load double, double* %polly.access.Packed_MemRef_call1287452.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_457.1, %_p_scalar_453.1
  %polly.access.Packed_MemRef_call2289460.1 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call1287451.1
  %_p_scalar_461.1 = load double, double* %polly.access.Packed_MemRef_call2289460.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_465.1, %_p_scalar_461.1
  %239 = shl i64 %238, 3
  %scevgep467.1 = getelementptr i8, i8* %scevgep466.1, i64 %239
  %scevgep467468.1 = bitcast i8* %scevgep467.1 to double*
  %_p_scalar_469.1 = load double, double* %scevgep467468.1, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_469.1
  store double %p_add42.i79.1, double* %scevgep467468.1, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next448.1 = add nuw nsw i64 %polly.indvar447.1, 1
  %exitcond908.1.not = icmp eq i64 %polly.indvar447.1, %smin907.1
  br i1 %exitcond908.1.not, label %polly.loop_exit446.1, label %polly.loop_header444.1

polly.loop_exit446.1:                             ; preds = %polly.loop_header444.1
  %polly.indvar_next442.1 = add nuw nsw i64 %polly.indvar441.1, 1
  %indvars.iv.next906.1 = add nuw nsw i64 %indvars.iv905.1, 1
  %exitcond909.1.not = icmp eq i64 %indvars.iv.next906.1, %indvars.iv899.1
  br i1 %exitcond909.1.not, label %polly.loop_exit440.1, label %polly.loop_header438.1

polly.loop_exit440.1:                             ; preds = %polly.loop_exit446.1
  %polly.indvar_next436.1 = add nuw nsw i64 %polly.indvar435.1, 1
  %exitcond910.1.not = icmp eq i64 %polly.indvar_next436.1, 28
  br i1 %exitcond910.1.not, label %polly.loop_exit434.1, label %polly.loop_header432.1

polly.loop_exit434.1:                             ; preds = %polly.loop_exit440.1
  %polly.indvar_next398.1 = add nuw nsw i64 %polly.indvar397.1, 1
  %indvars.iv.next900.1 = add nsw i64 %indvars.iv899.1, -8
  %exitcond911.1.not = icmp eq i64 %polly.indvar_next398.1, 10
  br i1 %exitcond911.1.not, label %polly.loop_exit396.1, label %polly.loop_header394.1

polly.loop_exit396.1:                             ; preds = %polly.loop_exit434.1
  tail call void @free(i8* nonnull %malloccall286)
  tail call void @free(i8* nonnull %malloccall288)
  br label %kernel_syr2k.exit90

polly.loop_header582.1:                           ; preds = %polly.loop_exit622, %polly.loop_exit622.1
  %indvars.iv914.1 = phi i64 [ %indvars.iv.next915.1, %polly.loop_exit622.1 ], [ 80, %polly.loop_exit622 ]
  %polly.indvar585.1 = phi i64 [ %polly.indvar_next586.1, %polly.loop_exit622.1 ], [ 0, %polly.loop_exit622 ]
  %240 = mul nsw i64 %polly.indvar585.1, -8
  %241 = shl nsw i64 %polly.indvar585.1, 3
  br label %polly.loop_header588.1

polly.loop_header588.1:                           ; preds = %polly.loop_exit596.1, %polly.loop_header582.1
  %polly.indvar591.1 = phi i64 [ 0, %polly.loop_header582.1 ], [ %polly.indvar_next592.1, %polly.loop_exit596.1 ]
  %242 = add nuw nsw i64 %polly.indvar591.1, 32
  %polly.access.mul.Packed_MemRef_call2477.1 = mul nuw nsw i64 %polly.indvar591.1, 80
  br label %polly.loop_header594.1

polly.loop_header594.1:                           ; preds = %polly.loop_header594.1, %polly.loop_header588.1
  %polly.indvar597.1 = phi i64 [ 0, %polly.loop_header588.1 ], [ %polly.indvar_next598.1, %polly.loop_header594.1 ]
  %243 = add nuw nsw i64 %polly.indvar597.1, %241
  %polly.access.mul.call2601.1 = mul nuw nsw i64 %243, 60
  %polly.access.add.call2602.1 = add nuw nsw i64 %242, %polly.access.mul.call2601.1
  %polly.access.call2603.1 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2602.1
  %polly.access.call2603.load.1 = load double, double* %polly.access.call2603.1, align 8, !alias.scope !101, !noalias !106
  %polly.access.add.Packed_MemRef_call2477.1 = add nuw nsw i64 %polly.indvar597.1, %polly.access.mul.Packed_MemRef_call2477.1
  %polly.access.Packed_MemRef_call2477.1 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477.1
  store double %polly.access.call2603.load.1, double* %polly.access.Packed_MemRef_call2477.1, align 8
  %polly.indvar_next598.1 = add nuw nsw i64 %polly.indvar597.1, 1
  %exitcond916.1.not = icmp eq i64 %polly.indvar_next598.1, %indvars.iv914.1
  br i1 %exitcond916.1.not, label %polly.loop_exit596.1, label %polly.loop_header594.1

polly.loop_exit596.1:                             ; preds = %polly.loop_header594.1
  %polly.indvar_next592.1 = add nuw nsw i64 %polly.indvar591.1, 1
  %exitcond917.1.not = icmp eq i64 %polly.indvar_next592.1, 28
  br i1 %exitcond917.1.not, label %polly.loop_header604.1, label %polly.loop_header588.1

polly.loop_header604.1:                           ; preds = %polly.loop_exit596.1, %polly.loop_exit612.1
  %polly.indvar607.1 = phi i64 [ %polly.indvar_next608.1, %polly.loop_exit612.1 ], [ 0, %polly.loop_exit596.1 ]
  %244 = add nuw nsw i64 %polly.indvar607.1, 32
  %polly.access.mul.Packed_MemRef_call1475.1 = mul nuw nsw i64 %polly.indvar607.1, 80
  br label %polly.loop_header610.1

polly.loop_header610.1:                           ; preds = %polly.loop_header610.1, %polly.loop_header604.1
  %polly.indvar613.1 = phi i64 [ 0, %polly.loop_header604.1 ], [ %polly.indvar_next614.1, %polly.loop_header610.1 ]
  %245 = add nuw nsw i64 %polly.indvar613.1, %241
  %polly.access.mul.call1617.1 = mul nuw nsw i64 %245, 60
  %polly.access.add.call1618.1 = add nuw nsw i64 %244, %polly.access.mul.call1617.1
  %polly.access.call1619.1 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1618.1
  %polly.access.call1619.load.1 = load double, double* %polly.access.call1619.1, align 8, !alias.scope !100, !noalias !107
  %polly.access.add.Packed_MemRef_call1475.1 = add nuw nsw i64 %polly.indvar613.1, %polly.access.mul.Packed_MemRef_call1475.1
  %polly.access.Packed_MemRef_call1475.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.1
  store double %polly.access.call1619.load.1, double* %polly.access.Packed_MemRef_call1475.1, align 8
  %polly.indvar_next614.1 = add nuw nsw i64 %polly.indvar613.1, 1
  %exitcond918.1.not = icmp eq i64 %polly.indvar_next614.1, %indvars.iv914.1
  br i1 %exitcond918.1.not, label %polly.loop_exit612.1, label %polly.loop_header610.1

polly.loop_exit612.1:                             ; preds = %polly.loop_header610.1
  %polly.indvar_next608.1 = add nuw nsw i64 %polly.indvar607.1, 1
  %exitcond919.1.not = icmp eq i64 %polly.indvar_next608.1, 28
  br i1 %exitcond919.1.not, label %polly.loop_header620.1, label %polly.loop_header604.1

polly.loop_header620.1:                           ; preds = %polly.loop_exit612.1, %polly.loop_exit628.1
  %polly.indvar623.1 = phi i64 [ %polly.indvar_next624.1, %polly.loop_exit628.1 ], [ 0, %polly.loop_exit612.1 ]
  %polly.access.mul.Packed_MemRef_call1475638.1 = mul nuw nsw i64 %polly.indvar623.1, 80
  br label %polly.loop_header626.1

polly.loop_header626.1:                           ; preds = %polly.loop_exit634.1, %polly.loop_header620.1
  %indvars.iv920.1 = phi i64 [ %indvars.iv.next921.1, %polly.loop_exit634.1 ], [ 0, %polly.loop_header620.1 ]
  %polly.indvar629.1 = phi i64 [ %polly.indvar_next630.1, %polly.loop_exit634.1 ], [ %241, %polly.loop_header620.1 ]
  %smin922.1 = call i64 @llvm.smin.i64(i64 %indvars.iv920.1, i64 7)
  %246 = add nsw i64 %polly.indvar629.1, %240
  %247 = mul nuw nsw i64 %polly.indvar629.1, 640
  %scevgep654.1 = getelementptr i8, i8* %call, i64 %247
  %polly.access.add.Packed_MemRef_call2477643.1 = add nuw nsw i64 %246, %polly.access.mul.Packed_MemRef_call1475638.1
  %polly.access.Packed_MemRef_call2477644.1 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477643.1
  %_p_scalar_645.1 = load double, double* %polly.access.Packed_MemRef_call2477644.1, align 8
  %polly.access.Packed_MemRef_call1475652.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call2477643.1
  %_p_scalar_653.1 = load double, double* %polly.access.Packed_MemRef_call1475652.1, align 8
  br label %polly.loop_header632.1

polly.loop_header632.1:                           ; preds = %polly.loop_header632.1, %polly.loop_header626.1
  %polly.indvar635.1 = phi i64 [ 0, %polly.loop_header626.1 ], [ %polly.indvar_next636.1, %polly.loop_header632.1 ]
  %248 = add nuw nsw i64 %polly.indvar635.1, %241
  %polly.access.add.Packed_MemRef_call1475639.1 = add nuw nsw i64 %polly.indvar635.1, %polly.access.mul.Packed_MemRef_call1475638.1
  %polly.access.Packed_MemRef_call1475640.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475639.1
  %_p_scalar_641.1 = load double, double* %polly.access.Packed_MemRef_call1475640.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_645.1, %_p_scalar_641.1
  %polly.access.Packed_MemRef_call2477648.1 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call1475639.1
  %_p_scalar_649.1 = load double, double* %polly.access.Packed_MemRef_call2477648.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_653.1, %_p_scalar_649.1
  %249 = shl i64 %248, 3
  %scevgep655.1 = getelementptr i8, i8* %scevgep654.1, i64 %249
  %scevgep655656.1 = bitcast i8* %scevgep655.1 to double*
  %_p_scalar_657.1 = load double, double* %scevgep655656.1, align 8, !alias.scope !97, !noalias !99
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_657.1
  store double %p_add42.i.1, double* %scevgep655656.1, align 8, !alias.scope !97, !noalias !99
  %polly.indvar_next636.1 = add nuw nsw i64 %polly.indvar635.1, 1
  %exitcond923.1.not = icmp eq i64 %polly.indvar635.1, %smin922.1
  br i1 %exitcond923.1.not, label %polly.loop_exit634.1, label %polly.loop_header632.1

polly.loop_exit634.1:                             ; preds = %polly.loop_header632.1
  %polly.indvar_next630.1 = add nuw nsw i64 %polly.indvar629.1, 1
  %indvars.iv.next921.1 = add nuw nsw i64 %indvars.iv920.1, 1
  %exitcond924.1.not = icmp eq i64 %indvars.iv.next921.1, %indvars.iv914.1
  br i1 %exitcond924.1.not, label %polly.loop_exit628.1, label %polly.loop_header626.1

polly.loop_exit628.1:                             ; preds = %polly.loop_exit634.1
  %polly.indvar_next624.1 = add nuw nsw i64 %polly.indvar623.1, 1
  %exitcond925.1.not = icmp eq i64 %polly.indvar_next624.1, 28
  br i1 %exitcond925.1.not, label %polly.loop_exit622.1, label %polly.loop_header620.1

polly.loop_exit622.1:                             ; preds = %polly.loop_exit628.1
  %polly.indvar_next586.1 = add nuw nsw i64 %polly.indvar585.1, 1
  %indvars.iv.next915.1 = add nsw i64 %indvars.iv914.1, -8
  %exitcond926.1.not = icmp eq i64 %polly.indvar_next586.1, 10
  br i1 %exitcond926.1.not, label %polly.loop_exit584.1, label %polly.loop_header582.1

polly.loop_exit584.1:                             ; preds = %polly.loop_exit622.1
  tail call void @free(i8* nonnull %malloccall474)
  tail call void @free(i8* nonnull %malloccall476)
  br label %kernel_syr2k.exit

polly.loop_header849.1:                           ; preds = %polly.loop_exit857, %polly.loop_exit857.1
  %polly.indvar852.1 = phi i64 [ %polly.indvar_next853.1, %polly.loop_exit857.1 ], [ 0, %polly.loop_exit857 ]
  %250 = mul nuw nsw i64 %polly.indvar852.1, 480
  %251 = trunc i64 %polly.indvar852.1 to i32
  %broadcast.splatinsert1242 = insertelement <4 x i32> poison, i32 %251, i32 0
  %broadcast.splat1243 = shufflevector <4 x i32> %broadcast.splatinsert1242, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %polly.loop_header849.1
  %index1236 = phi i64 [ 0, %polly.loop_header849.1 ], [ %index.next1237, %vector.body1234 ]
  %vec.ind1240 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header849.1 ], [ %vec.ind.next1241, %vector.body1234 ]
  %252 = add nuw nsw <4 x i64> %vec.ind1240, <i64 32, i64 32, i64 32, i64 32>
  %253 = trunc <4 x i64> %252 to <4 x i32>
  %254 = mul <4 x i32> %broadcast.splat1243, %253
  %255 = add <4 x i32> %254, <i32 1, i32 1, i32 1, i32 1>
  %256 = urem <4 x i32> %255, <i32 80, i32 80, i32 80, i32 80>
  %257 = sitofp <4 x i32> %256 to <4 x double>
  %258 = fmul fast <4 x double> %257, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %259 = extractelement <4 x i64> %252, i32 0
  %260 = shl i64 %259, 3
  %261 = add i64 %260, %250
  %262 = getelementptr i8, i8* %call1, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %258, <4 x double>* %263, align 8, !alias.scope !112, !noalias !117
  %index.next1237 = add i64 %index1236, 4
  %vec.ind.next1241 = add <4 x i64> %vec.ind1240, <i64 4, i64 4, i64 4, i64 4>
  %264 = icmp eq i64 %index.next1237, 28
  br i1 %264, label %polly.loop_exit857.1, label %vector.body1234, !llvm.loop !119

polly.loop_exit857.1:                             ; preds = %vector.body1234
  %polly.indvar_next853.1 = add nuw nsw i64 %polly.indvar852.1, 1
  %exitcond933.1.not = icmp eq i64 %polly.indvar_next853.1, 32
  br i1 %exitcond933.1.not, label %polly.loop_header849.1953, label %polly.loop_header849.1

polly.loop_header849.1953:                        ; preds = %polly.loop_exit857.1, %polly.loop_exit857.1964
  %polly.indvar852.1952 = phi i64 [ %polly.indvar_next853.1962, %polly.loop_exit857.1964 ], [ 0, %polly.loop_exit857.1 ]
  %265 = add nuw nsw i64 %polly.indvar852.1952, 32
  %266 = mul nuw nsw i64 %265, 480
  %267 = trunc i64 %265 to i32
  %broadcast.splatinsert1256 = insertelement <4 x i32> poison, i32 %267, i32 0
  %broadcast.splat1257 = shufflevector <4 x i32> %broadcast.splatinsert1256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %polly.loop_header849.1953
  %index1248 = phi i64 [ 0, %polly.loop_header849.1953 ], [ %index.next1249, %vector.body1246 ]
  %vec.ind1254 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header849.1953 ], [ %vec.ind.next1255, %vector.body1246 ]
  %268 = mul <4 x i32> %vec.ind1254, %broadcast.splat1257
  %269 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  %270 = urem <4 x i32> %269, <i32 80, i32 80, i32 80, i32 80>
  %271 = sitofp <4 x i32> %270 to <4 x double>
  %272 = fmul fast <4 x double> %271, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %273 = shl i64 %index1248, 3
  %274 = add i64 %273, %266
  %275 = getelementptr i8, i8* %call1, i64 %274
  %276 = bitcast i8* %275 to <4 x double>*
  store <4 x double> %272, <4 x double>* %276, align 8, !alias.scope !112, !noalias !117
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1255 = add <4 x i32> %vec.ind1254, <i32 4, i32 4, i32 4, i32 4>
  %277 = icmp eq i64 %index.next1249, 32
  br i1 %277, label %polly.loop_exit857.1964, label %vector.body1246, !llvm.loop !120

polly.loop_exit857.1964:                          ; preds = %vector.body1246
  %polly.indvar_next853.1962 = add nuw nsw i64 %polly.indvar852.1952, 1
  %exitcond933.1963.not = icmp eq i64 %polly.indvar_next853.1962, 32
  br i1 %exitcond933.1963.not, label %polly.loop_header849.1.1, label %polly.loop_header849.1953

polly.loop_header849.1.1:                         ; preds = %polly.loop_exit857.1964, %polly.loop_exit857.1.1
  %polly.indvar852.1.1 = phi i64 [ %polly.indvar_next853.1.1, %polly.loop_exit857.1.1 ], [ 0, %polly.loop_exit857.1964 ]
  %278 = add nuw nsw i64 %polly.indvar852.1.1, 32
  %279 = mul nuw nsw i64 %278, 480
  %280 = trunc i64 %278 to i32
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %280, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %polly.loop_header849.1.1
  %index1262 = phi i64 [ 0, %polly.loop_header849.1.1 ], [ %index.next1263, %vector.body1260 ]
  %vec.ind1266 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header849.1.1 ], [ %vec.ind.next1267, %vector.body1260 ]
  %281 = add nuw nsw <4 x i64> %vec.ind1266, <i64 32, i64 32, i64 32, i64 32>
  %282 = trunc <4 x i64> %281 to <4 x i32>
  %283 = mul <4 x i32> %broadcast.splat1269, %282
  %284 = add <4 x i32> %283, <i32 1, i32 1, i32 1, i32 1>
  %285 = urem <4 x i32> %284, <i32 80, i32 80, i32 80, i32 80>
  %286 = sitofp <4 x i32> %285 to <4 x double>
  %287 = fmul fast <4 x double> %286, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %288 = extractelement <4 x i64> %281, i32 0
  %289 = shl i64 %288, 3
  %290 = add i64 %289, %279
  %291 = getelementptr i8, i8* %call1, i64 %290
  %292 = bitcast i8* %291 to <4 x double>*
  store <4 x double> %287, <4 x double>* %292, align 8, !alias.scope !112, !noalias !117
  %index.next1263 = add i64 %index1262, 4
  %vec.ind.next1267 = add <4 x i64> %vec.ind1266, <i64 4, i64 4, i64 4, i64 4>
  %293 = icmp eq i64 %index.next1263, 28
  br i1 %293, label %polly.loop_exit857.1.1, label %vector.body1260, !llvm.loop !121

polly.loop_exit857.1.1:                           ; preds = %vector.body1260
  %polly.indvar_next853.1.1 = add nuw nsw i64 %polly.indvar852.1.1, 1
  %exitcond933.1.1.not = icmp eq i64 %polly.indvar_next853.1.1, 32
  br i1 %exitcond933.1.1.not, label %polly.loop_header849.2, label %polly.loop_header849.1.1

polly.loop_header849.2:                           ; preds = %polly.loop_exit857.1.1, %polly.loop_exit857.2
  %polly.indvar852.2 = phi i64 [ %polly.indvar_next853.2, %polly.loop_exit857.2 ], [ 0, %polly.loop_exit857.1.1 ]
  %294 = add nuw nsw i64 %polly.indvar852.2, 64
  %295 = mul nuw nsw i64 %294, 480
  %296 = trunc i64 %294 to i32
  %broadcast.splatinsert1282 = insertelement <4 x i32> poison, i32 %296, i32 0
  %broadcast.splat1283 = shufflevector <4 x i32> %broadcast.splatinsert1282, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %polly.loop_header849.2
  %index1274 = phi i64 [ 0, %polly.loop_header849.2 ], [ %index.next1275, %vector.body1272 ]
  %vec.ind1280 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header849.2 ], [ %vec.ind.next1281, %vector.body1272 ]
  %297 = mul <4 x i32> %vec.ind1280, %broadcast.splat1283
  %298 = add <4 x i32> %297, <i32 1, i32 1, i32 1, i32 1>
  %299 = urem <4 x i32> %298, <i32 80, i32 80, i32 80, i32 80>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %302 = shl i64 %index1274, 3
  %303 = add i64 %302, %295
  %304 = getelementptr i8, i8* %call1, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %301, <4 x double>* %305, align 8, !alias.scope !112, !noalias !117
  %index.next1275 = add i64 %index1274, 4
  %vec.ind.next1281 = add <4 x i32> %vec.ind1280, <i32 4, i32 4, i32 4, i32 4>
  %306 = icmp eq i64 %index.next1275, 32
  br i1 %306, label %polly.loop_exit857.2, label %vector.body1272, !llvm.loop !122

polly.loop_exit857.2:                             ; preds = %vector.body1272
  %polly.indvar_next853.2 = add nuw nsw i64 %polly.indvar852.2, 1
  %exitcond933.2.not = icmp eq i64 %polly.indvar_next853.2, 16
  br i1 %exitcond933.2.not, label %polly.loop_header849.1.2, label %polly.loop_header849.2

polly.loop_header849.1.2:                         ; preds = %polly.loop_exit857.2, %polly.loop_exit857.1.2
  %polly.indvar852.1.2 = phi i64 [ %polly.indvar_next853.1.2, %polly.loop_exit857.1.2 ], [ 0, %polly.loop_exit857.2 ]
  %307 = add nuw nsw i64 %polly.indvar852.1.2, 64
  %308 = mul nuw nsw i64 %307, 480
  %309 = trunc i64 %307 to i32
  %broadcast.splatinsert1294 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1295 = shufflevector <4 x i32> %broadcast.splatinsert1294, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %polly.loop_header849.1.2
  %index1288 = phi i64 [ 0, %polly.loop_header849.1.2 ], [ %index.next1289, %vector.body1286 ]
  %vec.ind1292 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header849.1.2 ], [ %vec.ind.next1293, %vector.body1286 ]
  %310 = add nuw nsw <4 x i64> %vec.ind1292, <i64 32, i64 32, i64 32, i64 32>
  %311 = trunc <4 x i64> %310 to <4 x i32>
  %312 = mul <4 x i32> %broadcast.splat1295, %311
  %313 = add <4 x i32> %312, <i32 1, i32 1, i32 1, i32 1>
  %314 = urem <4 x i32> %313, <i32 80, i32 80, i32 80, i32 80>
  %315 = sitofp <4 x i32> %314 to <4 x double>
  %316 = fmul fast <4 x double> %315, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %317 = extractelement <4 x i64> %310, i32 0
  %318 = shl i64 %317, 3
  %319 = add i64 %318, %308
  %320 = getelementptr i8, i8* %call1, i64 %319
  %321 = bitcast i8* %320 to <4 x double>*
  store <4 x double> %316, <4 x double>* %321, align 8, !alias.scope !112, !noalias !117
  %index.next1289 = add i64 %index1288, 4
  %vec.ind.next1293 = add <4 x i64> %vec.ind1292, <i64 4, i64 4, i64 4, i64 4>
  %322 = icmp eq i64 %index.next1289, 28
  br i1 %322, label %polly.loop_exit857.1.2, label %vector.body1286, !llvm.loop !123

polly.loop_exit857.1.2:                           ; preds = %vector.body1286
  %polly.indvar_next853.1.2 = add nuw nsw i64 %polly.indvar852.1.2, 1
  %exitcond933.1.2.not = icmp eq i64 %polly.indvar_next853.1.2, 16
  br i1 %exitcond933.1.2.not, label %init_array.exit, label %polly.loop_header849.1.2

polly.loop_header823.1:                           ; preds = %polly.loop_exit831, %polly.loop_exit831.1
  %polly.indvar826.1 = phi i64 [ %polly.indvar_next827.1, %polly.loop_exit831.1 ], [ 0, %polly.loop_exit831 ]
  %323 = mul nuw nsw i64 %polly.indvar826.1, 480
  %324 = trunc i64 %polly.indvar826.1 to i32
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %324, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %polly.loop_header823.1
  %index1158 = phi i64 [ 0, %polly.loop_header823.1 ], [ %index.next1159, %vector.body1156 ]
  %vec.ind1162 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1 ], [ %vec.ind.next1163, %vector.body1156 ]
  %325 = add nuw nsw <4 x i64> %vec.ind1162, <i64 32, i64 32, i64 32, i64 32>
  %326 = trunc <4 x i64> %325 to <4 x i32>
  %327 = mul <4 x i32> %broadcast.splat1165, %326
  %328 = add <4 x i32> %327, <i32 2, i32 2, i32 2, i32 2>
  %329 = urem <4 x i32> %328, <i32 60, i32 60, i32 60, i32 60>
  %330 = sitofp <4 x i32> %329 to <4 x double>
  %331 = fmul fast <4 x double> %330, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %332 = extractelement <4 x i64> %325, i32 0
  %333 = shl i64 %332, 3
  %334 = add i64 %333, %323
  %335 = getelementptr i8, i8* %call2, i64 %334
  %336 = bitcast i8* %335 to <4 x double>*
  store <4 x double> %331, <4 x double>* %336, align 8, !alias.scope !113, !noalias !115
  %index.next1159 = add i64 %index1158, 4
  %vec.ind.next1163 = add <4 x i64> %vec.ind1162, <i64 4, i64 4, i64 4, i64 4>
  %337 = icmp eq i64 %index.next1159, 28
  br i1 %337, label %polly.loop_exit831.1, label %vector.body1156, !llvm.loop !124

polly.loop_exit831.1:                             ; preds = %vector.body1156
  %polly.indvar_next827.1 = add nuw nsw i64 %polly.indvar826.1, 1
  %exitcond939.1.not = icmp eq i64 %polly.indvar_next827.1, 32
  br i1 %exitcond939.1.not, label %polly.loop_header823.1967, label %polly.loop_header823.1

polly.loop_header823.1967:                        ; preds = %polly.loop_exit831.1, %polly.loop_exit831.1978
  %polly.indvar826.1966 = phi i64 [ %polly.indvar_next827.1976, %polly.loop_exit831.1978 ], [ 0, %polly.loop_exit831.1 ]
  %338 = add nuw nsw i64 %polly.indvar826.1966, 32
  %339 = mul nuw nsw i64 %338, 480
  %340 = trunc i64 %338 to i32
  %broadcast.splatinsert1178 = insertelement <4 x i32> poison, i32 %340, i32 0
  %broadcast.splat1179 = shufflevector <4 x i32> %broadcast.splatinsert1178, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %polly.loop_header823.1967
  %index1170 = phi i64 [ 0, %polly.loop_header823.1967 ], [ %index.next1171, %vector.body1168 ]
  %vec.ind1176 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823.1967 ], [ %vec.ind.next1177, %vector.body1168 ]
  %341 = mul <4 x i32> %vec.ind1176, %broadcast.splat1179
  %342 = add <4 x i32> %341, <i32 2, i32 2, i32 2, i32 2>
  %343 = urem <4 x i32> %342, <i32 60, i32 60, i32 60, i32 60>
  %344 = sitofp <4 x i32> %343 to <4 x double>
  %345 = fmul fast <4 x double> %344, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %346 = shl i64 %index1170, 3
  %347 = add i64 %346, %339
  %348 = getelementptr i8, i8* %call2, i64 %347
  %349 = bitcast i8* %348 to <4 x double>*
  store <4 x double> %345, <4 x double>* %349, align 8, !alias.scope !113, !noalias !115
  %index.next1171 = add i64 %index1170, 4
  %vec.ind.next1177 = add <4 x i32> %vec.ind1176, <i32 4, i32 4, i32 4, i32 4>
  %350 = icmp eq i64 %index.next1171, 32
  br i1 %350, label %polly.loop_exit831.1978, label %vector.body1168, !llvm.loop !125

polly.loop_exit831.1978:                          ; preds = %vector.body1168
  %polly.indvar_next827.1976 = add nuw nsw i64 %polly.indvar826.1966, 1
  %exitcond939.1977.not = icmp eq i64 %polly.indvar_next827.1976, 32
  br i1 %exitcond939.1977.not, label %polly.loop_header823.1.1, label %polly.loop_header823.1967

polly.loop_header823.1.1:                         ; preds = %polly.loop_exit831.1978, %polly.loop_exit831.1.1
  %polly.indvar826.1.1 = phi i64 [ %polly.indvar_next827.1.1, %polly.loop_exit831.1.1 ], [ 0, %polly.loop_exit831.1978 ]
  %351 = add nuw nsw i64 %polly.indvar826.1.1, 32
  %352 = mul nuw nsw i64 %351, 480
  %353 = trunc i64 %351 to i32
  %broadcast.splatinsert1190 = insertelement <4 x i32> poison, i32 %353, i32 0
  %broadcast.splat1191 = shufflevector <4 x i32> %broadcast.splatinsert1190, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %polly.loop_header823.1.1
  %index1184 = phi i64 [ 0, %polly.loop_header823.1.1 ], [ %index.next1185, %vector.body1182 ]
  %vec.ind1188 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1.1 ], [ %vec.ind.next1189, %vector.body1182 ]
  %354 = add nuw nsw <4 x i64> %vec.ind1188, <i64 32, i64 32, i64 32, i64 32>
  %355 = trunc <4 x i64> %354 to <4 x i32>
  %356 = mul <4 x i32> %broadcast.splat1191, %355
  %357 = add <4 x i32> %356, <i32 2, i32 2, i32 2, i32 2>
  %358 = urem <4 x i32> %357, <i32 60, i32 60, i32 60, i32 60>
  %359 = sitofp <4 x i32> %358 to <4 x double>
  %360 = fmul fast <4 x double> %359, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %361 = extractelement <4 x i64> %354, i32 0
  %362 = shl i64 %361, 3
  %363 = add i64 %362, %352
  %364 = getelementptr i8, i8* %call2, i64 %363
  %365 = bitcast i8* %364 to <4 x double>*
  store <4 x double> %360, <4 x double>* %365, align 8, !alias.scope !113, !noalias !115
  %index.next1185 = add i64 %index1184, 4
  %vec.ind.next1189 = add <4 x i64> %vec.ind1188, <i64 4, i64 4, i64 4, i64 4>
  %366 = icmp eq i64 %index.next1185, 28
  br i1 %366, label %polly.loop_exit831.1.1, label %vector.body1182, !llvm.loop !126

polly.loop_exit831.1.1:                           ; preds = %vector.body1182
  %polly.indvar_next827.1.1 = add nuw nsw i64 %polly.indvar826.1.1, 1
  %exitcond939.1.1.not = icmp eq i64 %polly.indvar_next827.1.1, 32
  br i1 %exitcond939.1.1.not, label %polly.loop_header823.2, label %polly.loop_header823.1.1

polly.loop_header823.2:                           ; preds = %polly.loop_exit831.1.1, %polly.loop_exit831.2
  %polly.indvar826.2 = phi i64 [ %polly.indvar_next827.2, %polly.loop_exit831.2 ], [ 0, %polly.loop_exit831.1.1 ]
  %367 = add nuw nsw i64 %polly.indvar826.2, 64
  %368 = mul nuw nsw i64 %367, 480
  %369 = trunc i64 %367 to i32
  %broadcast.splatinsert1204 = insertelement <4 x i32> poison, i32 %369, i32 0
  %broadcast.splat1205 = shufflevector <4 x i32> %broadcast.splatinsert1204, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %polly.loop_header823.2
  %index1196 = phi i64 [ 0, %polly.loop_header823.2 ], [ %index.next1197, %vector.body1194 ]
  %vec.ind1202 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823.2 ], [ %vec.ind.next1203, %vector.body1194 ]
  %370 = mul <4 x i32> %vec.ind1202, %broadcast.splat1205
  %371 = add <4 x i32> %370, <i32 2, i32 2, i32 2, i32 2>
  %372 = urem <4 x i32> %371, <i32 60, i32 60, i32 60, i32 60>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = shl i64 %index1196, 3
  %376 = add i64 %375, %368
  %377 = getelementptr i8, i8* %call2, i64 %376
  %378 = bitcast i8* %377 to <4 x double>*
  store <4 x double> %374, <4 x double>* %378, align 8, !alias.scope !113, !noalias !115
  %index.next1197 = add i64 %index1196, 4
  %vec.ind.next1203 = add <4 x i32> %vec.ind1202, <i32 4, i32 4, i32 4, i32 4>
  %379 = icmp eq i64 %index.next1197, 32
  br i1 %379, label %polly.loop_exit831.2, label %vector.body1194, !llvm.loop !127

polly.loop_exit831.2:                             ; preds = %vector.body1194
  %polly.indvar_next827.2 = add nuw nsw i64 %polly.indvar826.2, 1
  %exitcond939.2.not = icmp eq i64 %polly.indvar_next827.2, 16
  br i1 %exitcond939.2.not, label %polly.loop_header823.1.2, label %polly.loop_header823.2

polly.loop_header823.1.2:                         ; preds = %polly.loop_exit831.2, %polly.loop_exit831.1.2
  %polly.indvar826.1.2 = phi i64 [ %polly.indvar_next827.1.2, %polly.loop_exit831.1.2 ], [ 0, %polly.loop_exit831.2 ]
  %380 = add nuw nsw i64 %polly.indvar826.1.2, 64
  %381 = mul nuw nsw i64 %380, 480
  %382 = trunc i64 %380 to i32
  %broadcast.splatinsert1216 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat1217 = shufflevector <4 x i32> %broadcast.splatinsert1216, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %polly.loop_header823.1.2
  %index1210 = phi i64 [ 0, %polly.loop_header823.1.2 ], [ %index.next1211, %vector.body1208 ]
  %vec.ind1214 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1.2 ], [ %vec.ind.next1215, %vector.body1208 ]
  %383 = add nuw nsw <4 x i64> %vec.ind1214, <i64 32, i64 32, i64 32, i64 32>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat1217, %384
  %386 = add <4 x i32> %385, <i32 2, i32 2, i32 2, i32 2>
  %387 = urem <4 x i32> %386, <i32 60, i32 60, i32 60, i32 60>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add i64 %391, %381
  %393 = getelementptr i8, i8* %call2, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !113, !noalias !115
  %index.next1211 = add i64 %index1210, 4
  %vec.ind.next1215 = add <4 x i64> %vec.ind1214, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next1211, 28
  br i1 %395, label %polly.loop_exit831.1.2, label %vector.body1208, !llvm.loop !128

polly.loop_exit831.1.2:                           ; preds = %vector.body1208
  %polly.indvar_next827.1.2 = add nuw nsw i64 %polly.indvar826.1.2, 1
  %exitcond939.1.2.not = icmp eq i64 %polly.indvar_next827.1.2, 16
  br i1 %exitcond939.1.2.not, label %polly.loop_header849, label %polly.loop_header823.1.2

polly.loop_header796.1:                           ; preds = %polly.loop_exit804, %polly.loop_exit804.1
  %polly.indvar799.1 = phi i64 [ %polly.indvar_next800.1, %polly.loop_exit804.1 ], [ 0, %polly.loop_exit804 ]
  %396 = mul nuw nsw i64 %polly.indvar799.1, 640
  %397 = trunc i64 %polly.indvar799.1 to i32
  %broadcast.splatinsert1050 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat1051 = shufflevector <4 x i32> %broadcast.splatinsert1050, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %polly.loop_header796.1
  %index1044 = phi i64 [ 0, %polly.loop_header796.1 ], [ %index.next1045, %vector.body1042 ]
  %vec.ind1048 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.1 ], [ %vec.ind.next1049, %vector.body1042 ]
  %398 = add nuw nsw <4 x i64> %vec.ind1048, <i64 32, i64 32, i64 32, i64 32>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat1051, %399
  %401 = add <4 x i32> %400, <i32 3, i32 3, i32 3, i32 3>
  %402 = urem <4 x i32> %401, <i32 80, i32 80, i32 80, i32 80>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = extractelement <4 x i64> %398, i32 0
  %406 = shl i64 %405, 3
  %407 = add nuw nsw i64 %406, %396
  %408 = getelementptr i8, i8* %call, i64 %407
  %409 = bitcast i8* %408 to <4 x double>*
  store <4 x double> %404, <4 x double>* %409, align 8, !alias.scope !109, !noalias !111
  %index.next1045 = add i64 %index1044, 4
  %vec.ind.next1049 = add <4 x i64> %vec.ind1048, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next1045, 32
  br i1 %410, label %polly.loop_exit804.1, label %vector.body1042, !llvm.loop !129

polly.loop_exit804.1:                             ; preds = %vector.body1042
  %polly.indvar_next800.1 = add nuw nsw i64 %polly.indvar799.1, 1
  %exitcond948.1.not = icmp eq i64 %polly.indvar_next800.1, 32
  br i1 %exitcond948.1.not, label %polly.loop_header796.2, label %polly.loop_header796.1

polly.loop_header796.2:                           ; preds = %polly.loop_exit804.1, %polly.loop_exit804.2
  %polly.indvar799.2 = phi i64 [ %polly.indvar_next800.2, %polly.loop_exit804.2 ], [ 0, %polly.loop_exit804.1 ]
  %411 = mul nuw nsw i64 %polly.indvar799.2, 640
  %412 = trunc i64 %polly.indvar799.2 to i32
  %broadcast.splatinsert1062 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1063 = shufflevector <4 x i32> %broadcast.splatinsert1062, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1054

vector.body1054:                                  ; preds = %vector.body1054, %polly.loop_header796.2
  %index1056 = phi i64 [ 0, %polly.loop_header796.2 ], [ %index.next1057, %vector.body1054 ]
  %vec.ind1060 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.2 ], [ %vec.ind.next1061, %vector.body1054 ]
  %413 = add nuw nsw <4 x i64> %vec.ind1060, <i64 64, i64 64, i64 64, i64 64>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat1063, %414
  %416 = add <4 x i32> %415, <i32 3, i32 3, i32 3, i32 3>
  %417 = urem <4 x i32> %416, <i32 80, i32 80, i32 80, i32 80>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add nuw nsw i64 %421, %411
  %423 = getelementptr i8, i8* %call, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !109, !noalias !111
  %index.next1057 = add i64 %index1056, 4
  %vec.ind.next1061 = add <4 x i64> %vec.ind1060, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next1057, 16
  br i1 %425, label %polly.loop_exit804.2, label %vector.body1054, !llvm.loop !130

polly.loop_exit804.2:                             ; preds = %vector.body1054
  %polly.indvar_next800.2 = add nuw nsw i64 %polly.indvar799.2, 1
  %exitcond948.2.not = icmp eq i64 %polly.indvar_next800.2, 32
  br i1 %exitcond948.2.not, label %polly.loop_header796.1981, label %polly.loop_header796.2

polly.loop_header796.1981:                        ; preds = %polly.loop_exit804.2, %polly.loop_exit804.1992
  %polly.indvar799.1980 = phi i64 [ %polly.indvar_next800.1990, %polly.loop_exit804.1992 ], [ 0, %polly.loop_exit804.2 ]
  %426 = add nuw nsw i64 %polly.indvar799.1980, 32
  %427 = mul nuw nsw i64 %426, 640
  %428 = trunc i64 %426 to i32
  %broadcast.splatinsert1076 = insertelement <4 x i32> poison, i32 %428, i32 0
  %broadcast.splat1077 = shufflevector <4 x i32> %broadcast.splatinsert1076, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.body1066, %polly.loop_header796.1981
  %index1068 = phi i64 [ 0, %polly.loop_header796.1981 ], [ %index.next1069, %vector.body1066 ]
  %vec.ind1074 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header796.1981 ], [ %vec.ind.next1075, %vector.body1066 ]
  %429 = mul <4 x i32> %vec.ind1074, %broadcast.splat1077
  %430 = add <4 x i32> %429, <i32 3, i32 3, i32 3, i32 3>
  %431 = urem <4 x i32> %430, <i32 80, i32 80, i32 80, i32 80>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %434 = shl i64 %index1068, 3
  %435 = add nuw nsw i64 %434, %427
  %436 = getelementptr i8, i8* %call, i64 %435
  %437 = bitcast i8* %436 to <4 x double>*
  store <4 x double> %433, <4 x double>* %437, align 8, !alias.scope !109, !noalias !111
  %index.next1069 = add i64 %index1068, 4
  %vec.ind.next1075 = add <4 x i32> %vec.ind1074, <i32 4, i32 4, i32 4, i32 4>
  %438 = icmp eq i64 %index.next1069, 32
  br i1 %438, label %polly.loop_exit804.1992, label %vector.body1066, !llvm.loop !131

polly.loop_exit804.1992:                          ; preds = %vector.body1066
  %polly.indvar_next800.1990 = add nuw nsw i64 %polly.indvar799.1980, 1
  %exitcond948.1991.not = icmp eq i64 %polly.indvar_next800.1990, 32
  br i1 %exitcond948.1991.not, label %polly.loop_header796.1.1, label %polly.loop_header796.1981

polly.loop_header796.1.1:                         ; preds = %polly.loop_exit804.1992, %polly.loop_exit804.1.1
  %polly.indvar799.1.1 = phi i64 [ %polly.indvar_next800.1.1, %polly.loop_exit804.1.1 ], [ 0, %polly.loop_exit804.1992 ]
  %439 = add nuw nsw i64 %polly.indvar799.1.1, 32
  %440 = mul nuw nsw i64 %439, 640
  %441 = trunc i64 %439 to i32
  %broadcast.splatinsert1088 = insertelement <4 x i32> poison, i32 %441, i32 0
  %broadcast.splat1089 = shufflevector <4 x i32> %broadcast.splatinsert1088, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %polly.loop_header796.1.1
  %index1082 = phi i64 [ 0, %polly.loop_header796.1.1 ], [ %index.next1083, %vector.body1080 ]
  %vec.ind1086 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.1.1 ], [ %vec.ind.next1087, %vector.body1080 ]
  %442 = add nuw nsw <4 x i64> %vec.ind1086, <i64 32, i64 32, i64 32, i64 32>
  %443 = trunc <4 x i64> %442 to <4 x i32>
  %444 = mul <4 x i32> %broadcast.splat1089, %443
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = extractelement <4 x i64> %442, i32 0
  %450 = shl i64 %449, 3
  %451 = add nuw nsw i64 %450, %440
  %452 = getelementptr i8, i8* %call, i64 %451
  %453 = bitcast i8* %452 to <4 x double>*
  store <4 x double> %448, <4 x double>* %453, align 8, !alias.scope !109, !noalias !111
  %index.next1083 = add i64 %index1082, 4
  %vec.ind.next1087 = add <4 x i64> %vec.ind1086, <i64 4, i64 4, i64 4, i64 4>
  %454 = icmp eq i64 %index.next1083, 32
  br i1 %454, label %polly.loop_exit804.1.1, label %vector.body1080, !llvm.loop !132

polly.loop_exit804.1.1:                           ; preds = %vector.body1080
  %polly.indvar_next800.1.1 = add nuw nsw i64 %polly.indvar799.1.1, 1
  %exitcond948.1.1.not = icmp eq i64 %polly.indvar_next800.1.1, 32
  br i1 %exitcond948.1.1.not, label %polly.loop_header796.2.1, label %polly.loop_header796.1.1

polly.loop_header796.2.1:                         ; preds = %polly.loop_exit804.1.1, %polly.loop_exit804.2.1
  %polly.indvar799.2.1 = phi i64 [ %polly.indvar_next800.2.1, %polly.loop_exit804.2.1 ], [ 0, %polly.loop_exit804.1.1 ]
  %455 = add nuw nsw i64 %polly.indvar799.2.1, 32
  %456 = mul nuw nsw i64 %455, 640
  %457 = trunc i64 %455 to i32
  %broadcast.splatinsert1100 = insertelement <4 x i32> poison, i32 %457, i32 0
  %broadcast.splat1101 = shufflevector <4 x i32> %broadcast.splatinsert1100, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1092

vector.body1092:                                  ; preds = %vector.body1092, %polly.loop_header796.2.1
  %index1094 = phi i64 [ 0, %polly.loop_header796.2.1 ], [ %index.next1095, %vector.body1092 ]
  %vec.ind1098 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.2.1 ], [ %vec.ind.next1099, %vector.body1092 ]
  %458 = add nuw nsw <4 x i64> %vec.ind1098, <i64 64, i64 64, i64 64, i64 64>
  %459 = trunc <4 x i64> %458 to <4 x i32>
  %460 = mul <4 x i32> %broadcast.splat1101, %459
  %461 = add <4 x i32> %460, <i32 3, i32 3, i32 3, i32 3>
  %462 = urem <4 x i32> %461, <i32 80, i32 80, i32 80, i32 80>
  %463 = sitofp <4 x i32> %462 to <4 x double>
  %464 = fmul fast <4 x double> %463, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %465 = extractelement <4 x i64> %458, i32 0
  %466 = shl i64 %465, 3
  %467 = add nuw nsw i64 %466, %456
  %468 = getelementptr i8, i8* %call, i64 %467
  %469 = bitcast i8* %468 to <4 x double>*
  store <4 x double> %464, <4 x double>* %469, align 8, !alias.scope !109, !noalias !111
  %index.next1095 = add i64 %index1094, 4
  %vec.ind.next1099 = add <4 x i64> %vec.ind1098, <i64 4, i64 4, i64 4, i64 4>
  %470 = icmp eq i64 %index.next1095, 16
  br i1 %470, label %polly.loop_exit804.2.1, label %vector.body1092, !llvm.loop !133

polly.loop_exit804.2.1:                           ; preds = %vector.body1092
  %polly.indvar_next800.2.1 = add nuw nsw i64 %polly.indvar799.2.1, 1
  %exitcond948.2.1.not = icmp eq i64 %polly.indvar_next800.2.1, 32
  br i1 %exitcond948.2.1.not, label %polly.loop_header796.2995, label %polly.loop_header796.2.1

polly.loop_header796.2995:                        ; preds = %polly.loop_exit804.2.1, %polly.loop_exit804.21006
  %polly.indvar799.2994 = phi i64 [ %polly.indvar_next800.21004, %polly.loop_exit804.21006 ], [ 0, %polly.loop_exit804.2.1 ]
  %471 = add nuw nsw i64 %polly.indvar799.2994, 64
  %472 = mul nuw nsw i64 %471, 640
  %473 = trunc i64 %471 to i32
  %broadcast.splatinsert1114 = insertelement <4 x i32> poison, i32 %473, i32 0
  %broadcast.splat1115 = shufflevector <4 x i32> %broadcast.splatinsert1114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %polly.loop_header796.2995
  %index1106 = phi i64 [ 0, %polly.loop_header796.2995 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1112 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header796.2995 ], [ %vec.ind.next1113, %vector.body1104 ]
  %474 = mul <4 x i32> %vec.ind1112, %broadcast.splat1115
  %475 = add <4 x i32> %474, <i32 3, i32 3, i32 3, i32 3>
  %476 = urem <4 x i32> %475, <i32 80, i32 80, i32 80, i32 80>
  %477 = sitofp <4 x i32> %476 to <4 x double>
  %478 = fmul fast <4 x double> %477, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %479 = shl i64 %index1106, 3
  %480 = add nuw nsw i64 %479, %472
  %481 = getelementptr i8, i8* %call, i64 %480
  %482 = bitcast i8* %481 to <4 x double>*
  store <4 x double> %478, <4 x double>* %482, align 8, !alias.scope !109, !noalias !111
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1113 = add <4 x i32> %vec.ind1112, <i32 4, i32 4, i32 4, i32 4>
  %483 = icmp eq i64 %index.next1107, 32
  br i1 %483, label %polly.loop_exit804.21006, label %vector.body1104, !llvm.loop !134

polly.loop_exit804.21006:                         ; preds = %vector.body1104
  %polly.indvar_next800.21004 = add nuw nsw i64 %polly.indvar799.2994, 1
  %exitcond948.21005.not = icmp eq i64 %polly.indvar_next800.21004, 16
  br i1 %exitcond948.21005.not, label %polly.loop_header796.1.2, label %polly.loop_header796.2995

polly.loop_header796.1.2:                         ; preds = %polly.loop_exit804.21006, %polly.loop_exit804.1.2
  %polly.indvar799.1.2 = phi i64 [ %polly.indvar_next800.1.2, %polly.loop_exit804.1.2 ], [ 0, %polly.loop_exit804.21006 ]
  %484 = add nuw nsw i64 %polly.indvar799.1.2, 64
  %485 = mul nuw nsw i64 %484, 640
  %486 = trunc i64 %484 to i32
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %486, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %polly.loop_header796.1.2
  %index1120 = phi i64 [ 0, %polly.loop_header796.1.2 ], [ %index.next1121, %vector.body1118 ]
  %vec.ind1124 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.1.2 ], [ %vec.ind.next1125, %vector.body1118 ]
  %487 = add nuw nsw <4 x i64> %vec.ind1124, <i64 32, i64 32, i64 32, i64 32>
  %488 = trunc <4 x i64> %487 to <4 x i32>
  %489 = mul <4 x i32> %broadcast.splat1127, %488
  %490 = add <4 x i32> %489, <i32 3, i32 3, i32 3, i32 3>
  %491 = urem <4 x i32> %490, <i32 80, i32 80, i32 80, i32 80>
  %492 = sitofp <4 x i32> %491 to <4 x double>
  %493 = fmul fast <4 x double> %492, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %494 = extractelement <4 x i64> %487, i32 0
  %495 = shl i64 %494, 3
  %496 = add nuw nsw i64 %495, %485
  %497 = getelementptr i8, i8* %call, i64 %496
  %498 = bitcast i8* %497 to <4 x double>*
  store <4 x double> %493, <4 x double>* %498, align 8, !alias.scope !109, !noalias !111
  %index.next1121 = add i64 %index1120, 4
  %vec.ind.next1125 = add <4 x i64> %vec.ind1124, <i64 4, i64 4, i64 4, i64 4>
  %499 = icmp eq i64 %index.next1121, 32
  br i1 %499, label %polly.loop_exit804.1.2, label %vector.body1118, !llvm.loop !135

polly.loop_exit804.1.2:                           ; preds = %vector.body1118
  %polly.indvar_next800.1.2 = add nuw nsw i64 %polly.indvar799.1.2, 1
  %exitcond948.1.2.not = icmp eq i64 %polly.indvar_next800.1.2, 16
  br i1 %exitcond948.1.2.not, label %polly.loop_header796.2.2, label %polly.loop_header796.1.2

polly.loop_header796.2.2:                         ; preds = %polly.loop_exit804.1.2, %polly.loop_exit804.2.2
  %polly.indvar799.2.2 = phi i64 [ %polly.indvar_next800.2.2, %polly.loop_exit804.2.2 ], [ 0, %polly.loop_exit804.1.2 ]
  %500 = add nuw nsw i64 %polly.indvar799.2.2, 64
  %501 = mul nuw nsw i64 %500, 640
  %502 = trunc i64 %500 to i32
  %broadcast.splatinsert1138 = insertelement <4 x i32> poison, i32 %502, i32 0
  %broadcast.splat1139 = shufflevector <4 x i32> %broadcast.splatinsert1138, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %polly.loop_header796.2.2
  %index1132 = phi i64 [ 0, %polly.loop_header796.2.2 ], [ %index.next1133, %vector.body1130 ]
  %vec.ind1136 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.2.2 ], [ %vec.ind.next1137, %vector.body1130 ]
  %503 = add nuw nsw <4 x i64> %vec.ind1136, <i64 64, i64 64, i64 64, i64 64>
  %504 = trunc <4 x i64> %503 to <4 x i32>
  %505 = mul <4 x i32> %broadcast.splat1139, %504
  %506 = add <4 x i32> %505, <i32 3, i32 3, i32 3, i32 3>
  %507 = urem <4 x i32> %506, <i32 80, i32 80, i32 80, i32 80>
  %508 = sitofp <4 x i32> %507 to <4 x double>
  %509 = fmul fast <4 x double> %508, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %510 = extractelement <4 x i64> %503, i32 0
  %511 = shl i64 %510, 3
  %512 = add nuw nsw i64 %511, %501
  %513 = getelementptr i8, i8* %call, i64 %512
  %514 = bitcast i8* %513 to <4 x double>*
  store <4 x double> %509, <4 x double>* %514, align 8, !alias.scope !109, !noalias !111
  %index.next1133 = add i64 %index1132, 4
  %vec.ind.next1137 = add <4 x i64> %vec.ind1136, <i64 4, i64 4, i64 4, i64 4>
  %515 = icmp eq i64 %index.next1133, 16
  br i1 %515, label %polly.loop_exit804.2.2, label %vector.body1130, !llvm.loop !136

polly.loop_exit804.2.2:                           ; preds = %vector.body1130
  %polly.indvar_next800.2.2 = add nuw nsw i64 %polly.indvar799.2.2, 1
  %exitcond948.2.2.not = icmp eq i64 %polly.indvar_next800.2.2, 16
  br i1 %exitcond948.2.2.not, label %polly.loop_header823, label %polly.loop_header796.2.2
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

; Function Attrs: argmemonly nofree nosync nounwind readonly willreturn
declare <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>*, i32 immarg, <4 x i1>, <4 x double>) #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.v4f64.p0v4f64(<4 x double>, <4 x double>*, i32 immarg, <4 x i1>) #7

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nosync nounwind readonly willreturn }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!26 = !{!"llvm.loop.tile.size", i32 8}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 32}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !24, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.loop.interchange.followup_interchanged", !43}
!43 = distinct !{!43, !12, !24, !41, !44, !45, !46}
!44 = !{!"llvm.data.pack.enable", i1 true}
!45 = !{!"llvm.data.pack.array", !21}
!46 = !{!"llvm.data.pack.allocate", !"malloc"}
!47 = distinct !{!47, !12, !24, !48, !49, !50, !51, !52, !61}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.size", i32 128}
!52 = !{!"llvm.loop.tile.followup_floor", !53}
!53 = distinct !{!53, !12, !24, !54, !55, !56, !57, !58}
!54 = !{!"llvm.loop.id", !"i1"}
!55 = !{!"llvm.loop.interchange.enable", i1 true}
!56 = !{!"llvm.loop.interchange.depth", i32 5}
!57 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!58 = !{!"llvm.loop.interchange.followup_interchanged", !59}
!59 = distinct !{!59, !12, !24, !54, !44, !60, !46}
!60 = !{!"llvm.data.pack.array", !22}
!61 = !{!"llvm.loop.tile.followup_tile", !62}
!62 = distinct !{!62, !12, !24, !63}
!63 = !{!"llvm.loop.id", !"i2"}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = distinct !{!67, !12, !13}
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !4, i64 0}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76, !77, !78}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !73, !"polly.alias.scope.Packed_MemRef_call1"}
!78 = distinct !{!78, !73, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !81, !13}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!72, !75, !77, !78}
!83 = !{!72, !76, !77, !78}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !86, !"polly.alias.scope.MemRef_call"}
!86 = distinct !{!86, !"polly.alias.scope.domain"}
!87 = !{!88, !89, !90, !91}
!88 = distinct !{!88, !86, !"polly.alias.scope.MemRef_call1"}
!89 = distinct !{!89, !86, !"polly.alias.scope.MemRef_call2"}
!90 = distinct !{!90, !86, !"polly.alias.scope.Packed_MemRef_call1"}
!91 = distinct !{!91, !86, !"polly.alias.scope.Packed_MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !81, !13}
!94 = !{!85, !88, !90, !91}
!95 = !{!85, !89, !90, !91}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !98, !"polly.alias.scope.MemRef_call"}
!98 = distinct !{!98, !"polly.alias.scope.domain"}
!99 = !{!100, !101, !102, !103}
!100 = distinct !{!100, !98, !"polly.alias.scope.MemRef_call1"}
!101 = distinct !{!101, !98, !"polly.alias.scope.MemRef_call2"}
!102 = distinct !{!102, !98, !"polly.alias.scope.Packed_MemRef_call1"}
!103 = distinct !{!103, !98, !"polly.alias.scope.Packed_MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !81, !13}
!106 = !{!97, !100, !102, !103}
!107 = !{!97, !101, !102, !103}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !110, !"polly.alias.scope.MemRef_call"}
!110 = distinct !{!110, !"polly.alias.scope.domain"}
!111 = !{!112, !113}
!112 = distinct !{!112, !110, !"polly.alias.scope.MemRef_call1"}
!113 = distinct !{!113, !110, !"polly.alias.scope.MemRef_call2"}
!114 = distinct !{!114, !13}
!115 = !{!112, !109}
!116 = distinct !{!116, !13}
!117 = !{!113, !109}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
