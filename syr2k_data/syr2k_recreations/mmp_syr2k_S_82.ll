; ModuleID = 'syr2k_recreations//mmp_syr2k_S_82.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_82.c"
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
  %call810 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
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
  %scevgep1022 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1021 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1020 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1019 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1019, %scevgep1022
  %bound1 = icmp ult i8* %scevgep1021, %scevgep1020
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
  br i1 %exitcond18.not.i, label %vector.ph1026, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1026:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1033 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1034 = shufflevector <4 x i64> %broadcast.splatinsert1033, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1025

vector.body1025:                                  ; preds = %vector.body1025, %vector.ph1026
  %index1027 = phi i64 [ 0, %vector.ph1026 ], [ %index.next1028, %vector.body1025 ]
  %vec.ind1031 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1026 ], [ %vec.ind.next1032, %vector.body1025 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1031, %broadcast.splat1034
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv7.i, i64 %index1027
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1028 = add i64 %index1027, 4
  %vec.ind.next1032 = add <4 x i64> %vec.ind1031, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1028, 80
  br i1 %40, label %for.inc41.i, label %vector.body1025, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1025
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1026, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit857.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start472, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1489, label %vector.ph1308

vector.ph1308:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1308
  %index1309 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1310, %vector.body1307 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i, i64 %index1309
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1310 = add i64 %index1309, 4
  %46 = icmp eq i64 %index.next1310, %n.vec
  br i1 %46, label %middle.block1305, label %vector.body1307, !llvm.loop !18

middle.block1305:                                 ; preds = %vector.body1307
  %cmp.n1312 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1312, label %for.inc6.i, label %for.body3.i46.preheader1489

for.body3.i46.preheader1489:                      ; preds = %for.body3.i46.preheader, %middle.block1305
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1305 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1489, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1489 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1305, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting473
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start284, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1364 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1364, label %for.body3.i60.preheader1488, label %vector.ph1365

vector.ph1365:                                    ; preds = %for.body3.i60.preheader
  %n.vec1367 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1363

vector.body1363:                                  ; preds = %vector.body1363, %vector.ph1365
  %index1368 = phi i64 [ 0, %vector.ph1365 ], [ %index.next1369, %vector.body1363 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i52, i64 %index1368
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1372, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1369 = add i64 %index1368, 4
  %57 = icmp eq i64 %index.next1369, %n.vec1367
  br i1 %57, label %middle.block1361, label %vector.body1363, !llvm.loop !64

middle.block1361:                                 ; preds = %vector.body1363
  %cmp.n1371 = icmp eq i64 %indvars.iv21.i52, %n.vec1367
  br i1 %cmp.n1371, label %for.inc6.i63, label %for.body3.i60.preheader1488

for.body3.i60.preheader1488:                      ; preds = %for.body3.i60.preheader, %middle.block1361
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1367, %middle.block1361 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1488, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1488 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1361, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting285
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1427 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1427, label %for.body3.i99.preheader1487, label %vector.ph1428

vector.ph1428:                                    ; preds = %for.body3.i99.preheader
  %n.vec1430 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1426

vector.body1426:                                  ; preds = %vector.body1426, %vector.ph1428
  %index1431 = phi i64 [ 0, %vector.ph1428 ], [ %index.next1432, %vector.body1426 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i91, i64 %index1431
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1435 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1435, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1432 = add i64 %index1431, 4
  %68 = icmp eq i64 %index.next1432, %n.vec1430
  br i1 %68, label %middle.block1424, label %vector.body1426, !llvm.loop !66

middle.block1424:                                 ; preds = %vector.body1426
  %cmp.n1434 = icmp eq i64 %indvars.iv21.i91, %n.vec1430
  br i1 %cmp.n1434, label %for.inc6.i102, label %for.body3.i99.preheader1487

for.body3.i99.preheader1487:                      ; preds = %for.body3.i99.preheader, %middle.block1424
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1430, %middle.block1424 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1487, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1487 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1424, %for.cond1.preheader.i93
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !68
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call810, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !71

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  %malloccall136 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit246.1
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1439 = phi i64 [ %indvar.next1440, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1439, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1441 = icmp ult i64 %88, 4
  br i1 %min.iters.check1441, label %polly.loop_header192.preheader, label %vector.ph1442

vector.ph1442:                                    ; preds = %polly.loop_header
  %n.vec1444 = and i64 %88, -4
  br label %vector.body1438

vector.body1438:                                  ; preds = %vector.body1438, %vector.ph1442
  %index1445 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1446, %vector.body1438 ]
  %90 = shl nuw nsw i64 %index1445, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1449 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1449, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1446 = add i64 %index1445, 4
  %95 = icmp eq i64 %index.next1446, %n.vec1444
  br i1 %95, label %middle.block1436, label %vector.body1438, !llvm.loop !79

middle.block1436:                                 ; preds = %vector.body1438
  %cmp.n1448 = icmp eq i64 %88, %n.vec1444
  br i1 %cmp.n1448, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1436
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1444, %middle.block1436 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1436
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond901.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1440 = add i64 %indvar1439, 1
  br i1 %exitcond901.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond900.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond900.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit246.1
  %indvars.iv = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit246.1 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit246.1 ]
  %smin897 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -52)
  %97 = add nsw i64 %smin897, 60
  %98 = shl nsw i64 %polly.indvar203, 3
  br label %polly.loop_header212

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header200
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %99 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 80
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond888.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond888.not, label %polly.loop_header228, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %polly.access.mul.call2225 = mul nuw nsw i64 %polly.indvar221, 60
  %polly.access.add.call2226 = add nuw nsw i64 %99, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, 80
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit220, %polly.loop_exit236
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_exit220 ]
  %100 = add nuw nsw i64 %polly.indvar231, %98
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar231, 80
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_header234
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next232, %97
  br i1 %exitcond891.not, label %polly.loop_header244, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234, %polly.loop_header228
  %polly.indvar237 = phi i64 [ 0, %polly.loop_header228 ], [ %polly.indvar_next238, %polly.loop_header234 ]
  %polly.access.mul.call1241 = mul nuw nsw i64 %polly.indvar237, 60
  %polly.access.add.call1242 = add nuw nsw i64 %100, %polly.access.mul.call1241
  %polly.access.call1243 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1242
  %polly.access.call1243.load = load double, double* %polly.access.call1243, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1243.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next238, 80
  br i1 %exitcond889.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_header244:                             ; preds = %polly.loop_exit236, %polly.loop_exit252
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_exit252 ], [ 0, %polly.loop_exit236 ]
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar247, 80
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_exit258
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next248, %97
  br i1 %exitcond898.not, label %polly.loop_header212.1, label %polly.loop_header244

polly.loop_header250:                             ; preds = %polly.loop_exit258, %polly.loop_header244
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit258 ], [ 0, %polly.loop_header244 ]
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_exit258 ], [ 0, %polly.loop_header244 ]
  %smin1471 = call i64 @llvm.smin.i64(i64 %indvars.iv892, i64 63)
  %101 = add nuw nsw i64 %smin1471, 1
  %smin894 = call i64 @llvm.smin.i64(i64 %indvars.iv892, i64 63)
  %102 = mul nuw nsw i64 %polly.indvar253, 640
  %scevgep278 = getelementptr i8, i8* %call, i64 %102
  %polly.access.add.Packed_MemRef_call2267 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call2268 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267
  %_p_scalar_269 = load double, double* %polly.access.Packed_MemRef_call2268, align 8
  %polly.access.Packed_MemRef_call1276 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267
  %_p_scalar_277 = load double, double* %polly.access.Packed_MemRef_call1276, align 8
  %min.iters.check1472 = icmp ult i64 %smin1471, 3
  br i1 %min.iters.check1472, label %polly.loop_header256.preheader, label %vector.ph1473

vector.ph1473:                                    ; preds = %polly.loop_header250
  %n.vec1475 = and i64 %101, 124
  %broadcast.splatinsert1481 = insertelement <4 x double> poison, double %_p_scalar_269, i32 0
  %broadcast.splat1482 = shufflevector <4 x double> %broadcast.splatinsert1481, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1484 = insertelement <4 x double> poison, double %_p_scalar_277, i32 0
  %broadcast.splat1485 = shufflevector <4 x double> %broadcast.splatinsert1484, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %vector.ph1473
  %index1476 = phi i64 [ 0, %vector.ph1473 ], [ %index.next1477, %vector.body1470 ]
  %103 = add nuw nsw i64 %index1476, %polly.access.mul.Packed_MemRef_call1262
  %104 = getelementptr double, double* %Packed_MemRef_call1, i64 %103
  %105 = bitcast double* %104 to <4 x double>*
  %wide.load1480 = load <4 x double>, <4 x double>* %105, align 8
  %106 = fmul fast <4 x double> %broadcast.splat1482, %wide.load1480
  %107 = getelementptr double, double* %Packed_MemRef_call2, i64 %103
  %108 = bitcast double* %107 to <4 x double>*
  %wide.load1483 = load <4 x double>, <4 x double>* %108, align 8
  %109 = fmul fast <4 x double> %broadcast.splat1485, %wide.load1483
  %110 = shl i64 %index1476, 3
  %111 = getelementptr i8, i8* %scevgep278, i64 %110
  %112 = bitcast i8* %111 to <4 x double>*
  %wide.load1486 = load <4 x double>, <4 x double>* %112, align 8, !alias.scope !72, !noalias !74
  %113 = fadd fast <4 x double> %109, %106
  %114 = fmul fast <4 x double> %113, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %115 = fadd fast <4 x double> %114, %wide.load1486
  %116 = bitcast i8* %111 to <4 x double>*
  store <4 x double> %115, <4 x double>* %116, align 8, !alias.scope !72, !noalias !74
  %index.next1477 = add i64 %index1476, 4
  %117 = icmp eq i64 %index.next1477, %n.vec1475
  br i1 %117, label %middle.block1468, label %vector.body1470, !llvm.loop !84

middle.block1468:                                 ; preds = %vector.body1470
  %cmp.n1479 = icmp eq i64 %101, %n.vec1475
  br i1 %cmp.n1479, label %polly.loop_exit258, label %polly.loop_header256.preheader

polly.loop_header256.preheader:                   ; preds = %polly.loop_header250, %middle.block1468
  %polly.indvar259.ph = phi i64 [ 0, %polly.loop_header250 ], [ %n.vec1475, %middle.block1468 ]
  br label %polly.loop_header256

polly.loop_exit258:                               ; preds = %polly.loop_header256, %middle.block1468
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %indvars.iv.next893 = add nuw nsw i64 %indvars.iv892, 1
  %exitcond896.not = icmp eq i64 %indvars.iv.next893, 80
  br i1 %exitcond896.not, label %polly.loop_exit252, label %polly.loop_header250

polly.loop_header256:                             ; preds = %polly.loop_header256.preheader, %polly.loop_header256
  %polly.indvar259 = phi i64 [ %polly.indvar_next260, %polly.loop_header256 ], [ %polly.indvar259.ph, %polly.loop_header256.preheader ]
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar259, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  %_p_scalar_265 = load double, double* %polly.access.Packed_MemRef_call1264, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_269, %_p_scalar_265
  %polly.access.Packed_MemRef_call2272 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263
  %_p_scalar_273 = load double, double* %polly.access.Packed_MemRef_call2272, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_277, %_p_scalar_273
  %118 = shl i64 %polly.indvar259, 3
  %scevgep279 = getelementptr i8, i8* %scevgep278, i64 %118
  %scevgep279280 = bitcast i8* %scevgep279 to double*
  %_p_scalar_281 = load double, double* %scevgep279280, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_281
  store double %p_add42.i118, double* %scevgep279280, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next260 = add nuw nsw i64 %polly.indvar259, 1
  %exitcond895.not = icmp eq i64 %polly.indvar259, %smin894
  br i1 %exitcond895.not, label %polly.loop_exit258, label %polly.loop_header256, !llvm.loop !85

polly.start284:                                   ; preds = %kernel_syr2k.exit
  %malloccall286 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  %malloccall288 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header372

polly.exiting285:                                 ; preds = %polly.loop_exit434.1
  tail call void @free(i8* nonnull %malloccall286)
  tail call void @free(i8* nonnull %malloccall288)
  br label %kernel_syr2k.exit90

polly.loop_header372:                             ; preds = %polly.loop_exit380, %polly.start284
  %indvar1376 = phi i64 [ %indvar.next1377, %polly.loop_exit380 ], [ 0, %polly.start284 ]
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_exit380 ], [ 1, %polly.start284 ]
  %119 = add i64 %indvar1376, 1
  %120 = mul nuw nsw i64 %polly.indvar375, 640
  %scevgep384 = getelementptr i8, i8* %call, i64 %120
  %min.iters.check1378 = icmp ult i64 %119, 4
  br i1 %min.iters.check1378, label %polly.loop_header378.preheader, label %vector.ph1379

vector.ph1379:                                    ; preds = %polly.loop_header372
  %n.vec1381 = and i64 %119, -4
  br label %vector.body1375

vector.body1375:                                  ; preds = %vector.body1375, %vector.ph1379
  %index1382 = phi i64 [ 0, %vector.ph1379 ], [ %index.next1383, %vector.body1375 ]
  %121 = shl nuw nsw i64 %index1382, 3
  %122 = getelementptr i8, i8* %scevgep384, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1386 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !86, !noalias !88
  %124 = fmul fast <4 x double> %wide.load1386, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %125 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %124, <4 x double>* %125, align 8, !alias.scope !86, !noalias !88
  %index.next1383 = add i64 %index1382, 4
  %126 = icmp eq i64 %index.next1383, %n.vec1381
  br i1 %126, label %middle.block1373, label %vector.body1375, !llvm.loop !93

middle.block1373:                                 ; preds = %vector.body1375
  %cmp.n1385 = icmp eq i64 %119, %n.vec1381
  br i1 %cmp.n1385, label %polly.loop_exit380, label %polly.loop_header378.preheader

polly.loop_header378.preheader:                   ; preds = %polly.loop_header372, %middle.block1373
  %polly.indvar381.ph = phi i64 [ 0, %polly.loop_header372 ], [ %n.vec1381, %middle.block1373 ]
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_header378, %middle.block1373
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond919.not = icmp eq i64 %polly.indvar_next376, 80
  %indvar.next1377 = add i64 %indvar1376, 1
  br i1 %exitcond919.not, label %polly.loop_header388.preheader, label %polly.loop_header372

polly.loop_header388.preheader:                   ; preds = %polly.loop_exit380
  %Packed_MemRef_call1287 = bitcast i8* %malloccall286 to double*
  %Packed_MemRef_call2289 = bitcast i8* %malloccall288 to double*
  br label %polly.loop_header388

polly.loop_header378:                             ; preds = %polly.loop_header378.preheader, %polly.loop_header378
  %polly.indvar381 = phi i64 [ %polly.indvar_next382, %polly.loop_header378 ], [ %polly.indvar381.ph, %polly.loop_header378.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar381, 3
  %scevgep385 = getelementptr i8, i8* %scevgep384, i64 %127
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_387, 1.200000e+00
  store double %p_mul.i57, double* %scevgep385386, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %exitcond918.not = icmp eq i64 %polly.indvar_next382, %polly.indvar375
  br i1 %exitcond918.not, label %polly.loop_exit380, label %polly.loop_header378, !llvm.loop !94

polly.loop_header388:                             ; preds = %polly.loop_header388.preheader, %polly.loop_exit434.1
  %indvars.iv903 = phi i64 [ 0, %polly.loop_header388.preheader ], [ %indvars.iv.next904, %polly.loop_exit434.1 ]
  %polly.indvar391 = phi i64 [ 0, %polly.loop_header388.preheader ], [ %polly.indvar_next392, %polly.loop_exit434.1 ]
  %smin915 = call i64 @llvm.smin.i64(i64 %indvars.iv903, i64 -52)
  %128 = add nsw i64 %smin915, 60
  %129 = shl nsw i64 %polly.indvar391, 3
  br label %polly.loop_header400

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_header388
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header388 ], [ %polly.indvar_next404, %polly.loop_exit408 ]
  %130 = add nuw nsw i64 %polly.indvar403, %129
  %polly.access.mul.Packed_MemRef_call2289 = mul nuw nsw i64 %polly.indvar403, 80
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_header406
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond906.not = icmp eq i64 %polly.indvar_next404, %128
  br i1 %exitcond906.not, label %polly.loop_header416, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_header406, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_header406 ]
  %polly.access.mul.call2413 = mul nuw nsw i64 %polly.indvar409, 60
  %polly.access.add.call2414 = add nuw nsw i64 %130, %polly.access.mul.call2413
  %polly.access.call2415 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2414
  %polly.access.call2415.load = load double, double* %polly.access.call2415, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2289 = add nuw nsw i64 %polly.indvar409, %polly.access.mul.Packed_MemRef_call2289
  %polly.access.Packed_MemRef_call2289 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289
  store double %polly.access.call2415.load, double* %polly.access.Packed_MemRef_call2289, align 8
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond902.not = icmp eq i64 %polly.indvar_next410, 80
  br i1 %exitcond902.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header416:                             ; preds = %polly.loop_exit408, %polly.loop_exit424
  %polly.indvar419 = phi i64 [ %polly.indvar_next420, %polly.loop_exit424 ], [ 0, %polly.loop_exit408 ]
  %131 = add nuw nsw i64 %polly.indvar419, %129
  %polly.access.mul.Packed_MemRef_call1287 = mul nuw nsw i64 %polly.indvar419, 80
  br label %polly.loop_header422

polly.loop_exit424:                               ; preds = %polly.loop_header422
  %polly.indvar_next420 = add nuw nsw i64 %polly.indvar419, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next420, %128
  br i1 %exitcond909.not, label %polly.loop_header432, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_header422, %polly.loop_header416
  %polly.indvar425 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next426, %polly.loop_header422 ]
  %polly.access.mul.call1429 = mul nuw nsw i64 %polly.indvar425, 60
  %polly.access.add.call1430 = add nuw nsw i64 %131, %polly.access.mul.call1429
  %polly.access.call1431 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1430
  %polly.access.call1431.load = load double, double* %polly.access.call1431, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1287 = add nuw nsw i64 %polly.indvar425, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call1287 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287
  store double %polly.access.call1431.load, double* %polly.access.Packed_MemRef_call1287, align 8
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond907.not = icmp eq i64 %polly.indvar_next426, 80
  br i1 %exitcond907.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header432:                             ; preds = %polly.loop_exit424, %polly.loop_exit440
  %polly.indvar435 = phi i64 [ %polly.indvar_next436, %polly.loop_exit440 ], [ 0, %polly.loop_exit424 ]
  %polly.access.mul.Packed_MemRef_call1287450 = mul nuw nsw i64 %polly.indvar435, 80
  br label %polly.loop_header438

polly.loop_exit440:                               ; preds = %polly.loop_exit446
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %exitcond916.not = icmp eq i64 %polly.indvar_next436, %128
  br i1 %exitcond916.not, label %polly.loop_header400.1, label %polly.loop_header432

polly.loop_header438:                             ; preds = %polly.loop_exit446, %polly.loop_header432
  %indvars.iv910 = phi i64 [ %indvars.iv.next911, %polly.loop_exit446 ], [ 0, %polly.loop_header432 ]
  %polly.indvar441 = phi i64 [ %polly.indvar_next442, %polly.loop_exit446 ], [ 0, %polly.loop_header432 ]
  %smin1408 = call i64 @llvm.smin.i64(i64 %indvars.iv910, i64 63)
  %132 = add nuw nsw i64 %smin1408, 1
  %smin912 = call i64 @llvm.smin.i64(i64 %indvars.iv910, i64 63)
  %133 = mul nuw nsw i64 %polly.indvar441, 640
  %scevgep466 = getelementptr i8, i8* %call, i64 %133
  %polly.access.add.Packed_MemRef_call2289455 = add nuw nsw i64 %polly.indvar441, %polly.access.mul.Packed_MemRef_call1287450
  %polly.access.Packed_MemRef_call2289456 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289455
  %_p_scalar_457 = load double, double* %polly.access.Packed_MemRef_call2289456, align 8
  %polly.access.Packed_MemRef_call1287464 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call2289455
  %_p_scalar_465 = load double, double* %polly.access.Packed_MemRef_call1287464, align 8
  %min.iters.check1409 = icmp ult i64 %smin1408, 3
  br i1 %min.iters.check1409, label %polly.loop_header444.preheader, label %vector.ph1410

vector.ph1410:                                    ; preds = %polly.loop_header438
  %n.vec1412 = and i64 %132, 124
  %broadcast.splatinsert1418 = insertelement <4 x double> poison, double %_p_scalar_457, i32 0
  %broadcast.splat1419 = shufflevector <4 x double> %broadcast.splatinsert1418, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1421 = insertelement <4 x double> poison, double %_p_scalar_465, i32 0
  %broadcast.splat1422 = shufflevector <4 x double> %broadcast.splatinsert1421, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1407

vector.body1407:                                  ; preds = %vector.body1407, %vector.ph1410
  %index1413 = phi i64 [ 0, %vector.ph1410 ], [ %index.next1414, %vector.body1407 ]
  %134 = add nuw nsw i64 %index1413, %polly.access.mul.Packed_MemRef_call1287450
  %135 = getelementptr double, double* %Packed_MemRef_call1287, i64 %134
  %136 = bitcast double* %135 to <4 x double>*
  %wide.load1417 = load <4 x double>, <4 x double>* %136, align 8
  %137 = fmul fast <4 x double> %broadcast.splat1419, %wide.load1417
  %138 = getelementptr double, double* %Packed_MemRef_call2289, i64 %134
  %139 = bitcast double* %138 to <4 x double>*
  %wide.load1420 = load <4 x double>, <4 x double>* %139, align 8
  %140 = fmul fast <4 x double> %broadcast.splat1422, %wide.load1420
  %141 = shl i64 %index1413, 3
  %142 = getelementptr i8, i8* %scevgep466, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  %wide.load1423 = load <4 x double>, <4 x double>* %143, align 8, !alias.scope !86, !noalias !88
  %144 = fadd fast <4 x double> %140, %137
  %145 = fmul fast <4 x double> %144, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %146 = fadd fast <4 x double> %145, %wide.load1423
  %147 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %146, <4 x double>* %147, align 8, !alias.scope !86, !noalias !88
  %index.next1414 = add i64 %index1413, 4
  %148 = icmp eq i64 %index.next1414, %n.vec1412
  br i1 %148, label %middle.block1405, label %vector.body1407, !llvm.loop !97

middle.block1405:                                 ; preds = %vector.body1407
  %cmp.n1416 = icmp eq i64 %132, %n.vec1412
  br i1 %cmp.n1416, label %polly.loop_exit446, label %polly.loop_header444.preheader

polly.loop_header444.preheader:                   ; preds = %polly.loop_header438, %middle.block1405
  %polly.indvar447.ph = phi i64 [ 0, %polly.loop_header438 ], [ %n.vec1412, %middle.block1405 ]
  br label %polly.loop_header444

polly.loop_exit446:                               ; preds = %polly.loop_header444, %middle.block1405
  %polly.indvar_next442 = add nuw nsw i64 %polly.indvar441, 1
  %indvars.iv.next911 = add nuw nsw i64 %indvars.iv910, 1
  %exitcond914.not = icmp eq i64 %indvars.iv.next911, 80
  br i1 %exitcond914.not, label %polly.loop_exit440, label %polly.loop_header438

polly.loop_header444:                             ; preds = %polly.loop_header444.preheader, %polly.loop_header444
  %polly.indvar447 = phi i64 [ %polly.indvar_next448, %polly.loop_header444 ], [ %polly.indvar447.ph, %polly.loop_header444.preheader ]
  %polly.access.add.Packed_MemRef_call1287451 = add nuw nsw i64 %polly.indvar447, %polly.access.mul.Packed_MemRef_call1287450
  %polly.access.Packed_MemRef_call1287452 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287451
  %_p_scalar_453 = load double, double* %polly.access.Packed_MemRef_call1287452, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_457, %_p_scalar_453
  %polly.access.Packed_MemRef_call2289460 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call1287451
  %_p_scalar_461 = load double, double* %polly.access.Packed_MemRef_call2289460, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_465, %_p_scalar_461
  %149 = shl i64 %polly.indvar447, 3
  %scevgep467 = getelementptr i8, i8* %scevgep466, i64 %149
  %scevgep467468 = bitcast i8* %scevgep467 to double*
  %_p_scalar_469 = load double, double* %scevgep467468, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_469
  store double %p_add42.i79, double* %scevgep467468, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next448 = add nuw nsw i64 %polly.indvar447, 1
  %exitcond913.not = icmp eq i64 %polly.indvar447, %smin912
  br i1 %exitcond913.not, label %polly.loop_exit446, label %polly.loop_header444, !llvm.loop !98

polly.start472:                                   ; preds = %init_array.exit
  %malloccall474 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  %malloccall476 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header560

polly.exiting473:                                 ; preds = %polly.loop_exit622.1
  tail call void @free(i8* nonnull %malloccall474)
  tail call void @free(i8* nonnull %malloccall476)
  br label %kernel_syr2k.exit

polly.loop_header560:                             ; preds = %polly.loop_exit568, %polly.start472
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit568 ], [ 0, %polly.start472 ]
  %polly.indvar563 = phi i64 [ %polly.indvar_next564, %polly.loop_exit568 ], [ 1, %polly.start472 ]
  %150 = add i64 %indvar, 1
  %151 = mul nuw nsw i64 %polly.indvar563, 640
  %scevgep572 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check1316 = icmp ult i64 %150, 4
  br i1 %min.iters.check1316, label %polly.loop_header566.preheader, label %vector.ph1317

vector.ph1317:                                    ; preds = %polly.loop_header560
  %n.vec1319 = and i64 %150, -4
  br label %vector.body1315

vector.body1315:                                  ; preds = %vector.body1315, %vector.ph1317
  %index1320 = phi i64 [ 0, %vector.ph1317 ], [ %index.next1321, %vector.body1315 ]
  %152 = shl nuw nsw i64 %index1320, 3
  %153 = getelementptr i8, i8* %scevgep572, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !99, !noalias !101
  %155 = fmul fast <4 x double> %wide.load1324, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !99, !noalias !101
  %index.next1321 = add i64 %index1320, 4
  %157 = icmp eq i64 %index.next1321, %n.vec1319
  br i1 %157, label %middle.block1313, label %vector.body1315, !llvm.loop !106

middle.block1313:                                 ; preds = %vector.body1315
  %cmp.n1323 = icmp eq i64 %150, %n.vec1319
  br i1 %cmp.n1323, label %polly.loop_exit568, label %polly.loop_header566.preheader

polly.loop_header566.preheader:                   ; preds = %polly.loop_header560, %middle.block1313
  %polly.indvar569.ph = phi i64 [ 0, %polly.loop_header560 ], [ %n.vec1319, %middle.block1313 ]
  br label %polly.loop_header566

polly.loop_exit568:                               ; preds = %polly.loop_header566, %middle.block1313
  %polly.indvar_next564 = add nuw nsw i64 %polly.indvar563, 1
  %exitcond937.not = icmp eq i64 %polly.indvar_next564, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond937.not, label %polly.loop_header576.preheader, label %polly.loop_header560

polly.loop_header576.preheader:                   ; preds = %polly.loop_exit568
  %Packed_MemRef_call1475 = bitcast i8* %malloccall474 to double*
  %Packed_MemRef_call2477 = bitcast i8* %malloccall476 to double*
  br label %polly.loop_header576

polly.loop_header566:                             ; preds = %polly.loop_header566.preheader, %polly.loop_header566
  %polly.indvar569 = phi i64 [ %polly.indvar_next570, %polly.loop_header566 ], [ %polly.indvar569.ph, %polly.loop_header566.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar569, 3
  %scevgep573 = getelementptr i8, i8* %scevgep572, i64 %158
  %scevgep573574 = bitcast i8* %scevgep573 to double*
  %_p_scalar_575 = load double, double* %scevgep573574, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_575, 1.200000e+00
  store double %p_mul.i, double* %scevgep573574, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next570 = add nuw nsw i64 %polly.indvar569, 1
  %exitcond936.not = icmp eq i64 %polly.indvar_next570, %polly.indvar563
  br i1 %exitcond936.not, label %polly.loop_exit568, label %polly.loop_header566, !llvm.loop !107

polly.loop_header576:                             ; preds = %polly.loop_header576.preheader, %polly.loop_exit622.1
  %indvars.iv921 = phi i64 [ 0, %polly.loop_header576.preheader ], [ %indvars.iv.next922, %polly.loop_exit622.1 ]
  %polly.indvar579 = phi i64 [ 0, %polly.loop_header576.preheader ], [ %polly.indvar_next580, %polly.loop_exit622.1 ]
  %smin933 = call i64 @llvm.smin.i64(i64 %indvars.iv921, i64 -52)
  %159 = add nsw i64 %smin933, 60
  %160 = shl nsw i64 %polly.indvar579, 3
  br label %polly.loop_header588

polly.loop_header588:                             ; preds = %polly.loop_exit596, %polly.loop_header576
  %polly.indvar591 = phi i64 [ 0, %polly.loop_header576 ], [ %polly.indvar_next592, %polly.loop_exit596 ]
  %161 = add nuw nsw i64 %polly.indvar591, %160
  %polly.access.mul.Packed_MemRef_call2477 = mul nuw nsw i64 %polly.indvar591, 80
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_header594
  %polly.indvar_next592 = add nuw nsw i64 %polly.indvar591, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next592, %159
  br i1 %exitcond924.not, label %polly.loop_header604, label %polly.loop_header588

polly.loop_header594:                             ; preds = %polly.loop_header594, %polly.loop_header588
  %polly.indvar597 = phi i64 [ 0, %polly.loop_header588 ], [ %polly.indvar_next598, %polly.loop_header594 ]
  %polly.access.mul.call2601 = mul nuw nsw i64 %polly.indvar597, 60
  %polly.access.add.call2602 = add nuw nsw i64 %161, %polly.access.mul.call2601
  %polly.access.call2603 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2602
  %polly.access.call2603.load = load double, double* %polly.access.call2603, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2477 = add nuw nsw i64 %polly.indvar597, %polly.access.mul.Packed_MemRef_call2477
  %polly.access.Packed_MemRef_call2477 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477
  store double %polly.access.call2603.load, double* %polly.access.Packed_MemRef_call2477, align 8
  %polly.indvar_next598 = add nuw nsw i64 %polly.indvar597, 1
  %exitcond920.not = icmp eq i64 %polly.indvar_next598, 80
  br i1 %exitcond920.not, label %polly.loop_exit596, label %polly.loop_header594

polly.loop_header604:                             ; preds = %polly.loop_exit596, %polly.loop_exit612
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_exit612 ], [ 0, %polly.loop_exit596 ]
  %162 = add nuw nsw i64 %polly.indvar607, %160
  %polly.access.mul.Packed_MemRef_call1475 = mul nuw nsw i64 %polly.indvar607, 80
  br label %polly.loop_header610

polly.loop_exit612:                               ; preds = %polly.loop_header610
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond927.not = icmp eq i64 %polly.indvar_next608, %159
  br i1 %exitcond927.not, label %polly.loop_header620, label %polly.loop_header604

polly.loop_header610:                             ; preds = %polly.loop_header610, %polly.loop_header604
  %polly.indvar613 = phi i64 [ 0, %polly.loop_header604 ], [ %polly.indvar_next614, %polly.loop_header610 ]
  %polly.access.mul.call1617 = mul nuw nsw i64 %polly.indvar613, 60
  %polly.access.add.call1618 = add nuw nsw i64 %162, %polly.access.mul.call1617
  %polly.access.call1619 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1618
  %polly.access.call1619.load = load double, double* %polly.access.call1619, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1475 = add nuw nsw i64 %polly.indvar613, %polly.access.mul.Packed_MemRef_call1475
  %polly.access.Packed_MemRef_call1475 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475
  store double %polly.access.call1619.load, double* %polly.access.Packed_MemRef_call1475, align 8
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond925.not = icmp eq i64 %polly.indvar_next614, 80
  br i1 %exitcond925.not, label %polly.loop_exit612, label %polly.loop_header610

polly.loop_header620:                             ; preds = %polly.loop_exit612, %polly.loop_exit628
  %polly.indvar623 = phi i64 [ %polly.indvar_next624, %polly.loop_exit628 ], [ 0, %polly.loop_exit612 ]
  %polly.access.mul.Packed_MemRef_call1475638 = mul nuw nsw i64 %polly.indvar623, 80
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_exit634
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %exitcond934.not = icmp eq i64 %polly.indvar_next624, %159
  br i1 %exitcond934.not, label %polly.loop_header588.1, label %polly.loop_header620

polly.loop_header626:                             ; preds = %polly.loop_exit634, %polly.loop_header620
  %indvars.iv928 = phi i64 [ %indvars.iv.next929, %polly.loop_exit634 ], [ 0, %polly.loop_header620 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit634 ], [ 0, %polly.loop_header620 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv928, i64 63)
  %163 = add nuw nsw i64 %smin, 1
  %smin930 = call i64 @llvm.smin.i64(i64 %indvars.iv928, i64 63)
  %164 = mul nuw nsw i64 %polly.indvar629, 640
  %scevgep654 = getelementptr i8, i8* %call, i64 %164
  %polly.access.add.Packed_MemRef_call2477643 = add nuw nsw i64 %polly.indvar629, %polly.access.mul.Packed_MemRef_call1475638
  %polly.access.Packed_MemRef_call2477644 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477643
  %_p_scalar_645 = load double, double* %polly.access.Packed_MemRef_call2477644, align 8
  %polly.access.Packed_MemRef_call1475652 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call2477643
  %_p_scalar_653 = load double, double* %polly.access.Packed_MemRef_call1475652, align 8
  %min.iters.check1346 = icmp ult i64 %smin, 3
  br i1 %min.iters.check1346, label %polly.loop_header632.preheader, label %vector.ph1347

vector.ph1347:                                    ; preds = %polly.loop_header626
  %n.vec1349 = and i64 %163, 124
  %broadcast.splatinsert1355 = insertelement <4 x double> poison, double %_p_scalar_645, i32 0
  %broadcast.splat1356 = shufflevector <4 x double> %broadcast.splatinsert1355, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1358 = insertelement <4 x double> poison, double %_p_scalar_653, i32 0
  %broadcast.splat1359 = shufflevector <4 x double> %broadcast.splatinsert1358, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1345

vector.body1345:                                  ; preds = %vector.body1345, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1351, %vector.body1345 ]
  %165 = add nuw nsw i64 %index1350, %polly.access.mul.Packed_MemRef_call1475638
  %166 = getelementptr double, double* %Packed_MemRef_call1475, i64 %165
  %167 = bitcast double* %166 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %167, align 8
  %168 = fmul fast <4 x double> %broadcast.splat1356, %wide.load1354
  %169 = getelementptr double, double* %Packed_MemRef_call2477, i64 %165
  %170 = bitcast double* %169 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %170, align 8
  %171 = fmul fast <4 x double> %broadcast.splat1359, %wide.load1357
  %172 = shl i64 %index1350, 3
  %173 = getelementptr i8, i8* %scevgep654, i64 %172
  %174 = bitcast i8* %173 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %174, align 8, !alias.scope !99, !noalias !101
  %175 = fadd fast <4 x double> %171, %168
  %176 = fmul fast <4 x double> %175, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %177 = fadd fast <4 x double> %176, %wide.load1360
  %178 = bitcast i8* %173 to <4 x double>*
  store <4 x double> %177, <4 x double>* %178, align 8, !alias.scope !99, !noalias !101
  %index.next1351 = add i64 %index1350, 4
  %179 = icmp eq i64 %index.next1351, %n.vec1349
  br i1 %179, label %middle.block1343, label %vector.body1345, !llvm.loop !110

middle.block1343:                                 ; preds = %vector.body1345
  %cmp.n1353 = icmp eq i64 %163, %n.vec1349
  br i1 %cmp.n1353, label %polly.loop_exit634, label %polly.loop_header632.preheader

polly.loop_header632.preheader:                   ; preds = %polly.loop_header626, %middle.block1343
  %polly.indvar635.ph = phi i64 [ 0, %polly.loop_header626 ], [ %n.vec1349, %middle.block1343 ]
  br label %polly.loop_header632

polly.loop_exit634:                               ; preds = %polly.loop_header632, %middle.block1343
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next929 = add nuw nsw i64 %indvars.iv928, 1
  %exitcond932.not = icmp eq i64 %indvars.iv.next929, 80
  br i1 %exitcond932.not, label %polly.loop_exit628, label %polly.loop_header626

polly.loop_header632:                             ; preds = %polly.loop_header632.preheader, %polly.loop_header632
  %polly.indvar635 = phi i64 [ %polly.indvar_next636, %polly.loop_header632 ], [ %polly.indvar635.ph, %polly.loop_header632.preheader ]
  %polly.access.add.Packed_MemRef_call1475639 = add nuw nsw i64 %polly.indvar635, %polly.access.mul.Packed_MemRef_call1475638
  %polly.access.Packed_MemRef_call1475640 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475639
  %_p_scalar_641 = load double, double* %polly.access.Packed_MemRef_call1475640, align 8
  %p_mul27.i = fmul fast double %_p_scalar_645, %_p_scalar_641
  %polly.access.Packed_MemRef_call2477648 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call1475639
  %_p_scalar_649 = load double, double* %polly.access.Packed_MemRef_call2477648, align 8
  %p_mul37.i = fmul fast double %_p_scalar_653, %_p_scalar_649
  %180 = shl i64 %polly.indvar635, 3
  %scevgep655 = getelementptr i8, i8* %scevgep654, i64 %180
  %scevgep655656 = bitcast i8* %scevgep655 to double*
  %_p_scalar_657 = load double, double* %scevgep655656, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_657
  store double %p_add42.i, double* %scevgep655656, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond931.not = icmp eq i64 %polly.indvar635, %smin930
  br i1 %exitcond931.not, label %polly.loop_exit634, label %polly.loop_header632, !llvm.loop !111

polly.loop_header796:                             ; preds = %entry, %polly.loop_exit804
  %polly.indvar799 = phi i64 [ %polly.indvar_next800, %polly.loop_exit804 ], [ 0, %entry ]
  %181 = mul nuw nsw i64 %polly.indvar799, 640
  %182 = trunc i64 %polly.indvar799 to i32
  %broadcast.splatinsert1047 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1048 = shufflevector <4 x i32> %broadcast.splatinsert1047, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1037

vector.body1037:                                  ; preds = %vector.body1037, %polly.loop_header796
  %index1039 = phi i64 [ 0, %polly.loop_header796 ], [ %index.next1040, %vector.body1037 ]
  %vec.ind1045 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header796 ], [ %vec.ind.next1046, %vector.body1037 ]
  %183 = mul <4 x i32> %vec.ind1045, %broadcast.splat1048
  %184 = add <4 x i32> %183, <i32 3, i32 3, i32 3, i32 3>
  %185 = urem <4 x i32> %184, <i32 80, i32 80, i32 80, i32 80>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %188 = shl i64 %index1039, 3
  %189 = add nuw nsw i64 %188, %181
  %190 = getelementptr i8, i8* %call, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %187, <4 x double>* %191, align 8, !alias.scope !112, !noalias !114
  %index.next1040 = add i64 %index1039, 4
  %vec.ind.next1046 = add <4 x i32> %vec.ind1045, <i32 4, i32 4, i32 4, i32 4>
  %192 = icmp eq i64 %index.next1040, 32
  br i1 %192, label %polly.loop_exit804, label %vector.body1037, !llvm.loop !117

polly.loop_exit804:                               ; preds = %vector.body1037
  %polly.indvar_next800 = add nuw nsw i64 %polly.indvar799, 1
  %exitcond957.not = icmp eq i64 %polly.indvar_next800, 32
  br i1 %exitcond957.not, label %polly.loop_header796.1, label %polly.loop_header796

polly.loop_header823:                             ; preds = %polly.loop_exit804.2.2, %polly.loop_exit831
  %polly.indvar826 = phi i64 [ %polly.indvar_next827, %polly.loop_exit831 ], [ 0, %polly.loop_exit804.2.2 ]
  %193 = mul nuw nsw i64 %polly.indvar826, 480
  %194 = trunc i64 %polly.indvar826 to i32
  %broadcast.splatinsert1161 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat1162 = shufflevector <4 x i32> %broadcast.splatinsert1161, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %polly.loop_header823
  %index1153 = phi i64 [ 0, %polly.loop_header823 ], [ %index.next1154, %vector.body1151 ]
  %vec.ind1159 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823 ], [ %vec.ind.next1160, %vector.body1151 ]
  %195 = mul <4 x i32> %vec.ind1159, %broadcast.splat1162
  %196 = add <4 x i32> %195, <i32 2, i32 2, i32 2, i32 2>
  %197 = urem <4 x i32> %196, <i32 60, i32 60, i32 60, i32 60>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %200 = shl i64 %index1153, 3
  %201 = add i64 %200, %193
  %202 = getelementptr i8, i8* %call2, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %199, <4 x double>* %203, align 8, !alias.scope !116, !noalias !118
  %index.next1154 = add i64 %index1153, 4
  %vec.ind.next1160 = add <4 x i32> %vec.ind1159, <i32 4, i32 4, i32 4, i32 4>
  %204 = icmp eq i64 %index.next1154, 32
  br i1 %204, label %polly.loop_exit831, label %vector.body1151, !llvm.loop !119

polly.loop_exit831:                               ; preds = %vector.body1151
  %polly.indvar_next827 = add nuw nsw i64 %polly.indvar826, 1
  %exitcond948.not = icmp eq i64 %polly.indvar_next827, 32
  br i1 %exitcond948.not, label %polly.loop_header823.1, label %polly.loop_header823

polly.loop_header849:                             ; preds = %polly.loop_exit831.1.2, %polly.loop_exit857
  %polly.indvar852 = phi i64 [ %polly.indvar_next853, %polly.loop_exit857 ], [ 0, %polly.loop_exit831.1.2 ]
  %205 = mul nuw nsw i64 %polly.indvar852, 480
  %206 = trunc i64 %polly.indvar852 to i32
  %broadcast.splatinsert1239 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1240 = shufflevector <4 x i32> %broadcast.splatinsert1239, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %polly.loop_header849
  %index1231 = phi i64 [ 0, %polly.loop_header849 ], [ %index.next1232, %vector.body1229 ]
  %vec.ind1237 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header849 ], [ %vec.ind.next1238, %vector.body1229 ]
  %207 = mul <4 x i32> %vec.ind1237, %broadcast.splat1240
  %208 = add <4 x i32> %207, <i32 1, i32 1, i32 1, i32 1>
  %209 = urem <4 x i32> %208, <i32 80, i32 80, i32 80, i32 80>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %212 = shl i64 %index1231, 3
  %213 = add i64 %212, %205
  %214 = getelementptr i8, i8* %call1, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %211, <4 x double>* %215, align 8, !alias.scope !115, !noalias !120
  %index.next1232 = add i64 %index1231, 4
  %vec.ind.next1238 = add <4 x i32> %vec.ind1237, <i32 4, i32 4, i32 4, i32 4>
  %216 = icmp eq i64 %index.next1232, 32
  br i1 %216, label %polly.loop_exit857, label %vector.body1229, !llvm.loop !121

polly.loop_exit857:                               ; preds = %vector.body1229
  %polly.indvar_next853 = add nuw nsw i64 %polly.indvar852, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next853, 32
  br i1 %exitcond942.not, label %polly.loop_header849.1, label %polly.loop_header849

polly.loop_header212.1:                           ; preds = %polly.loop_exit252, %polly.loop_exit220.1
  %polly.indvar215.1 = phi i64 [ %polly.indvar_next216.1, %polly.loop_exit220.1 ], [ 0, %polly.loop_exit252 ]
  %217 = add nuw nsw i64 %polly.indvar215.1, %98
  %polly.access.mul.Packed_MemRef_call2.1 = mul nuw nsw i64 %polly.indvar215.1, 80
  br label %polly.loop_header218.1

polly.loop_header218.1:                           ; preds = %polly.loop_header218.1, %polly.loop_header212.1
  %polly.indvar221.1 = phi i64 [ 0, %polly.loop_header212.1 ], [ %polly.indvar_next222.1, %polly.loop_header218.1 ]
  %218 = mul i64 %polly.indvar221.1, 60
  %polly.access.mul.call2225.1 = add i64 %218, 3840
  %polly.access.add.call2226.1 = add nuw nsw i64 %217, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, %polly.access.mul.Packed_MemRef_call2.1
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, 16
  br i1 %exitcond.1.not, label %polly.loop_exit220.1, label %polly.loop_header218.1

polly.loop_exit220.1:                             ; preds = %polly.loop_header218.1
  %polly.indvar_next216.1 = add nuw nsw i64 %polly.indvar215.1, 1
  %exitcond888.1.not = icmp eq i64 %polly.indvar_next216.1, %97
  br i1 %exitcond888.1.not, label %polly.loop_header228.1, label %polly.loop_header212.1

polly.loop_header228.1:                           ; preds = %polly.loop_exit220.1, %polly.loop_exit236.1
  %polly.indvar231.1 = phi i64 [ %polly.indvar_next232.1, %polly.loop_exit236.1 ], [ 0, %polly.loop_exit220.1 ]
  %219 = add nuw nsw i64 %polly.indvar231.1, %98
  %polly.access.mul.Packed_MemRef_call1.1 = mul nuw nsw i64 %polly.indvar231.1, 80
  br label %polly.loop_header234.1

polly.loop_header234.1:                           ; preds = %polly.loop_header234.1, %polly.loop_header228.1
  %polly.indvar237.1 = phi i64 [ 0, %polly.loop_header228.1 ], [ %polly.indvar_next238.1, %polly.loop_header234.1 ]
  %220 = mul i64 %polly.indvar237.1, 60
  %polly.access.mul.call1241.1 = add i64 %220, 3840
  %polly.access.add.call1242.1 = add nuw nsw i64 %219, %polly.access.mul.call1241.1
  %polly.access.call1243.1 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1242.1
  %polly.access.call1243.load.1 = load double, double* %polly.access.call1243.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.1 = add nuw nsw i64 %polly.indvar237.1, %polly.access.mul.Packed_MemRef_call1.1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1243.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.indvar_next238.1 = add nuw nsw i64 %polly.indvar237.1, 1
  %exitcond889.1.not = icmp eq i64 %polly.indvar_next238.1, 16
  br i1 %exitcond889.1.not, label %polly.loop_exit236.1, label %polly.loop_header234.1

polly.loop_exit236.1:                             ; preds = %polly.loop_header234.1
  %polly.indvar_next232.1 = add nuw nsw i64 %polly.indvar231.1, 1
  %exitcond891.1.not = icmp eq i64 %polly.indvar_next232.1, %97
  br i1 %exitcond891.1.not, label %polly.loop_header244.1, label %polly.loop_header228.1

polly.loop_header244.1:                           ; preds = %polly.loop_exit236.1, %polly.loop_exit252.1
  %polly.indvar247.1 = phi i64 [ %polly.indvar_next248.1, %polly.loop_exit252.1 ], [ 0, %polly.loop_exit236.1 ]
  %polly.access.mul.Packed_MemRef_call1262.1 = mul nuw nsw i64 %polly.indvar247.1, 80
  br label %polly.loop_header250.1

polly.loop_header250.1:                           ; preds = %polly.loop_exit258.1, %polly.loop_header244.1
  %indvars.iv892.1 = phi i64 [ %indvars.iv.next893.1, %polly.loop_exit258.1 ], [ 0, %polly.loop_header244.1 ]
  %polly.indvar253.1 = phi i64 [ %polly.indvar_next254.1, %polly.loop_exit258.1 ], [ 64, %polly.loop_header244.1 ]
  %221 = add nuw i64 %indvars.iv892.1, 1
  %smin894.1 = call i64 @llvm.smin.i64(i64 %indvars.iv892.1, i64 63)
  %222 = add nsw i64 %polly.indvar253.1, -64
  %223 = mul nuw nsw i64 %polly.indvar253.1, 640
  %scevgep278.1 = getelementptr i8, i8* %call, i64 %223
  %polly.access.add.Packed_MemRef_call2267.1 = add nuw nsw i64 %222, %polly.access.mul.Packed_MemRef_call1262.1
  %polly.access.Packed_MemRef_call2268.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2267.1
  %_p_scalar_269.1 = load double, double* %polly.access.Packed_MemRef_call2268.1, align 8
  %polly.access.Packed_MemRef_call1276.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2267.1
  %_p_scalar_277.1 = load double, double* %polly.access.Packed_MemRef_call1276.1, align 8
  %min.iters.check1453 = icmp ult i64 %indvars.iv892.1, 3
  br i1 %min.iters.check1453, label %polly.loop_header256.1.preheader, label %vector.ph1454

vector.ph1454:                                    ; preds = %polly.loop_header250.1
  %n.vec1456 = and i64 %221, -4
  %broadcast.splatinsert1462 = insertelement <4 x double> poison, double %_p_scalar_269.1, i32 0
  %broadcast.splat1463 = shufflevector <4 x double> %broadcast.splatinsert1462, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1465 = insertelement <4 x double> poison, double %_p_scalar_277.1, i32 0
  %broadcast.splat1466 = shufflevector <4 x double> %broadcast.splatinsert1465, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1452

vector.body1452:                                  ; preds = %vector.body1452, %vector.ph1454
  %index1457 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1458, %vector.body1452 ]
  %224 = add nuw nsw i64 %index1457, %polly.access.mul.Packed_MemRef_call1262.1
  %225 = getelementptr double, double* %Packed_MemRef_call1, i64 %224
  %226 = bitcast double* %225 to <4 x double>*
  %wide.load1461 = load <4 x double>, <4 x double>* %226, align 8
  %227 = fmul fast <4 x double> %broadcast.splat1463, %wide.load1461
  %228 = getelementptr double, double* %Packed_MemRef_call2, i64 %224
  %229 = bitcast double* %228 to <4 x double>*
  %wide.load1464 = load <4 x double>, <4 x double>* %229, align 8
  %230 = fmul fast <4 x double> %broadcast.splat1466, %wide.load1464
  %231 = shl i64 %index1457, 3
  %232 = add i64 %231, 512
  %233 = getelementptr i8, i8* %scevgep278.1, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  %wide.load1467 = load <4 x double>, <4 x double>* %234, align 8, !alias.scope !72, !noalias !74
  %235 = fadd fast <4 x double> %230, %227
  %236 = fmul fast <4 x double> %235, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %237 = fadd fast <4 x double> %236, %wide.load1467
  %238 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %237, <4 x double>* %238, align 8, !alias.scope !72, !noalias !74
  %index.next1458 = add i64 %index1457, 4
  %239 = icmp eq i64 %index.next1458, %n.vec1456
  br i1 %239, label %middle.block1450, label %vector.body1452, !llvm.loop !122

middle.block1450:                                 ; preds = %vector.body1452
  %cmp.n1460 = icmp eq i64 %221, %n.vec1456
  br i1 %cmp.n1460, label %polly.loop_exit258.1, label %polly.loop_header256.1.preheader

polly.loop_header256.1.preheader:                 ; preds = %polly.loop_header250.1, %middle.block1450
  %polly.indvar259.1.ph = phi i64 [ 0, %polly.loop_header250.1 ], [ %n.vec1456, %middle.block1450 ]
  br label %polly.loop_header256.1

polly.loop_header256.1:                           ; preds = %polly.loop_header256.1.preheader, %polly.loop_header256.1
  %polly.indvar259.1 = phi i64 [ %polly.indvar_next260.1, %polly.loop_header256.1 ], [ %polly.indvar259.1.ph, %polly.loop_header256.1.preheader ]
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar259.1, %polly.access.mul.Packed_MemRef_call1262.1
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  %_p_scalar_265.1 = load double, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_269.1, %_p_scalar_265.1
  %polly.access.Packed_MemRef_call2272.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1263.1
  %_p_scalar_273.1 = load double, double* %polly.access.Packed_MemRef_call2272.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_277.1, %_p_scalar_273.1
  %240 = shl i64 %polly.indvar259.1, 3
  %241 = add i64 %240, 512
  %scevgep279.1 = getelementptr i8, i8* %scevgep278.1, i64 %241
  %scevgep279280.1 = bitcast i8* %scevgep279.1 to double*
  %_p_scalar_281.1 = load double, double* %scevgep279280.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_281.1
  store double %p_add42.i118.1, double* %scevgep279280.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next260.1 = add nuw nsw i64 %polly.indvar259.1, 1
  %exitcond895.1.not = icmp eq i64 %polly.indvar259.1, %smin894.1
  br i1 %exitcond895.1.not, label %polly.loop_exit258.1, label %polly.loop_header256.1, !llvm.loop !123

polly.loop_exit258.1:                             ; preds = %polly.loop_header256.1, %middle.block1450
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %indvars.iv.next893.1 = add nuw nsw i64 %indvars.iv892.1, 1
  %exitcond896.1.not = icmp eq i64 %indvars.iv.next893.1, 16
  br i1 %exitcond896.1.not, label %polly.loop_exit252.1, label %polly.loop_header250.1

polly.loop_exit252.1:                             ; preds = %polly.loop_exit258.1
  %polly.indvar_next248.1 = add nuw nsw i64 %polly.indvar247.1, 1
  %exitcond898.1.not = icmp eq i64 %polly.indvar_next248.1, %97
  br i1 %exitcond898.1.not, label %polly.loop_exit246.1, label %polly.loop_header244.1

polly.loop_exit246.1:                             ; preds = %polly.loop_exit252.1
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %exitcond899.not = icmp eq i64 %polly.indvar_next204, 8
  br i1 %exitcond899.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header400.1:                           ; preds = %polly.loop_exit440, %polly.loop_exit408.1
  %polly.indvar403.1 = phi i64 [ %polly.indvar_next404.1, %polly.loop_exit408.1 ], [ 0, %polly.loop_exit440 ]
  %242 = add nuw nsw i64 %polly.indvar403.1, %129
  %polly.access.mul.Packed_MemRef_call2289.1 = mul nuw nsw i64 %polly.indvar403.1, 80
  br label %polly.loop_header406.1

polly.loop_header406.1:                           ; preds = %polly.loop_header406.1, %polly.loop_header400.1
  %polly.indvar409.1 = phi i64 [ 0, %polly.loop_header400.1 ], [ %polly.indvar_next410.1, %polly.loop_header406.1 ]
  %243 = mul i64 %polly.indvar409.1, 60
  %polly.access.mul.call2413.1 = add i64 %243, 3840
  %polly.access.add.call2414.1 = add nuw nsw i64 %242, %polly.access.mul.call2413.1
  %polly.access.call2415.1 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2414.1
  %polly.access.call2415.load.1 = load double, double* %polly.access.call2415.1, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2289.1 = add nuw nsw i64 %polly.indvar409.1, %polly.access.mul.Packed_MemRef_call2289.1
  %polly.access.Packed_MemRef_call2289.1 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289.1
  store double %polly.access.call2415.load.1, double* %polly.access.Packed_MemRef_call2289.1, align 8
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %exitcond902.1.not = icmp eq i64 %polly.indvar_next410.1, 16
  br i1 %exitcond902.1.not, label %polly.loop_exit408.1, label %polly.loop_header406.1

polly.loop_exit408.1:                             ; preds = %polly.loop_header406.1
  %polly.indvar_next404.1 = add nuw nsw i64 %polly.indvar403.1, 1
  %exitcond906.1.not = icmp eq i64 %polly.indvar_next404.1, %128
  br i1 %exitcond906.1.not, label %polly.loop_header416.1, label %polly.loop_header400.1

polly.loop_header416.1:                           ; preds = %polly.loop_exit408.1, %polly.loop_exit424.1
  %polly.indvar419.1 = phi i64 [ %polly.indvar_next420.1, %polly.loop_exit424.1 ], [ 0, %polly.loop_exit408.1 ]
  %244 = add nuw nsw i64 %polly.indvar419.1, %129
  %polly.access.mul.Packed_MemRef_call1287.1 = mul nuw nsw i64 %polly.indvar419.1, 80
  br label %polly.loop_header422.1

polly.loop_header422.1:                           ; preds = %polly.loop_header422.1, %polly.loop_header416.1
  %polly.indvar425.1 = phi i64 [ 0, %polly.loop_header416.1 ], [ %polly.indvar_next426.1, %polly.loop_header422.1 ]
  %245 = mul i64 %polly.indvar425.1, 60
  %polly.access.mul.call1429.1 = add i64 %245, 3840
  %polly.access.add.call1430.1 = add nuw nsw i64 %244, %polly.access.mul.call1429.1
  %polly.access.call1431.1 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1430.1
  %polly.access.call1431.load.1 = load double, double* %polly.access.call1431.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1287.1 = add nuw nsw i64 %polly.indvar425.1, %polly.access.mul.Packed_MemRef_call1287.1
  %polly.access.Packed_MemRef_call1287.1 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287.1
  store double %polly.access.call1431.load.1, double* %polly.access.Packed_MemRef_call1287.1, align 8
  %polly.indvar_next426.1 = add nuw nsw i64 %polly.indvar425.1, 1
  %exitcond907.1.not = icmp eq i64 %polly.indvar_next426.1, 16
  br i1 %exitcond907.1.not, label %polly.loop_exit424.1, label %polly.loop_header422.1

polly.loop_exit424.1:                             ; preds = %polly.loop_header422.1
  %polly.indvar_next420.1 = add nuw nsw i64 %polly.indvar419.1, 1
  %exitcond909.1.not = icmp eq i64 %polly.indvar_next420.1, %128
  br i1 %exitcond909.1.not, label %polly.loop_header432.1, label %polly.loop_header416.1

polly.loop_header432.1:                           ; preds = %polly.loop_exit424.1, %polly.loop_exit440.1
  %polly.indvar435.1 = phi i64 [ %polly.indvar_next436.1, %polly.loop_exit440.1 ], [ 0, %polly.loop_exit424.1 ]
  %polly.access.mul.Packed_MemRef_call1287450.1 = mul nuw nsw i64 %polly.indvar435.1, 80
  br label %polly.loop_header438.1

polly.loop_header438.1:                           ; preds = %polly.loop_exit446.1, %polly.loop_header432.1
  %indvars.iv910.1 = phi i64 [ %indvars.iv.next911.1, %polly.loop_exit446.1 ], [ 0, %polly.loop_header432.1 ]
  %polly.indvar441.1 = phi i64 [ %polly.indvar_next442.1, %polly.loop_exit446.1 ], [ 64, %polly.loop_header432.1 ]
  %246 = add nuw i64 %indvars.iv910.1, 1
  %smin912.1 = call i64 @llvm.smin.i64(i64 %indvars.iv910.1, i64 63)
  %247 = add nsw i64 %polly.indvar441.1, -64
  %248 = mul nuw nsw i64 %polly.indvar441.1, 640
  %scevgep466.1 = getelementptr i8, i8* %call, i64 %248
  %polly.access.add.Packed_MemRef_call2289455.1 = add nuw nsw i64 %247, %polly.access.mul.Packed_MemRef_call1287450.1
  %polly.access.Packed_MemRef_call2289456.1 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call2289455.1
  %_p_scalar_457.1 = load double, double* %polly.access.Packed_MemRef_call2289456.1, align 8
  %polly.access.Packed_MemRef_call1287464.1 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call2289455.1
  %_p_scalar_465.1 = load double, double* %polly.access.Packed_MemRef_call1287464.1, align 8
  %min.iters.check1390 = icmp ult i64 %indvars.iv910.1, 3
  br i1 %min.iters.check1390, label %polly.loop_header444.1.preheader, label %vector.ph1391

vector.ph1391:                                    ; preds = %polly.loop_header438.1
  %n.vec1393 = and i64 %246, -4
  %broadcast.splatinsert1399 = insertelement <4 x double> poison, double %_p_scalar_457.1, i32 0
  %broadcast.splat1400 = shufflevector <4 x double> %broadcast.splatinsert1399, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1402 = insertelement <4 x double> poison, double %_p_scalar_465.1, i32 0
  %broadcast.splat1403 = shufflevector <4 x double> %broadcast.splatinsert1402, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1389

vector.body1389:                                  ; preds = %vector.body1389, %vector.ph1391
  %index1394 = phi i64 [ 0, %vector.ph1391 ], [ %index.next1395, %vector.body1389 ]
  %249 = add nuw nsw i64 %index1394, %polly.access.mul.Packed_MemRef_call1287450.1
  %250 = getelementptr double, double* %Packed_MemRef_call1287, i64 %249
  %251 = bitcast double* %250 to <4 x double>*
  %wide.load1398 = load <4 x double>, <4 x double>* %251, align 8
  %252 = fmul fast <4 x double> %broadcast.splat1400, %wide.load1398
  %253 = getelementptr double, double* %Packed_MemRef_call2289, i64 %249
  %254 = bitcast double* %253 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %254, align 8
  %255 = fmul fast <4 x double> %broadcast.splat1403, %wide.load1401
  %256 = shl i64 %index1394, 3
  %257 = add i64 %256, 512
  %258 = getelementptr i8, i8* %scevgep466.1, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  %wide.load1404 = load <4 x double>, <4 x double>* %259, align 8, !alias.scope !86, !noalias !88
  %260 = fadd fast <4 x double> %255, %252
  %261 = fmul fast <4 x double> %260, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %262 = fadd fast <4 x double> %261, %wide.load1404
  %263 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %262, <4 x double>* %263, align 8, !alias.scope !86, !noalias !88
  %index.next1395 = add i64 %index1394, 4
  %264 = icmp eq i64 %index.next1395, %n.vec1393
  br i1 %264, label %middle.block1387, label %vector.body1389, !llvm.loop !124

middle.block1387:                                 ; preds = %vector.body1389
  %cmp.n1397 = icmp eq i64 %246, %n.vec1393
  br i1 %cmp.n1397, label %polly.loop_exit446.1, label %polly.loop_header444.1.preheader

polly.loop_header444.1.preheader:                 ; preds = %polly.loop_header438.1, %middle.block1387
  %polly.indvar447.1.ph = phi i64 [ 0, %polly.loop_header438.1 ], [ %n.vec1393, %middle.block1387 ]
  br label %polly.loop_header444.1

polly.loop_header444.1:                           ; preds = %polly.loop_header444.1.preheader, %polly.loop_header444.1
  %polly.indvar447.1 = phi i64 [ %polly.indvar_next448.1, %polly.loop_header444.1 ], [ %polly.indvar447.1.ph, %polly.loop_header444.1.preheader ]
  %polly.access.add.Packed_MemRef_call1287451.1 = add nuw nsw i64 %polly.indvar447.1, %polly.access.mul.Packed_MemRef_call1287450.1
  %polly.access.Packed_MemRef_call1287452.1 = getelementptr double, double* %Packed_MemRef_call1287, i64 %polly.access.add.Packed_MemRef_call1287451.1
  %_p_scalar_453.1 = load double, double* %polly.access.Packed_MemRef_call1287452.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_457.1, %_p_scalar_453.1
  %polly.access.Packed_MemRef_call2289460.1 = getelementptr double, double* %Packed_MemRef_call2289, i64 %polly.access.add.Packed_MemRef_call1287451.1
  %_p_scalar_461.1 = load double, double* %polly.access.Packed_MemRef_call2289460.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_465.1, %_p_scalar_461.1
  %265 = shl i64 %polly.indvar447.1, 3
  %266 = add i64 %265, 512
  %scevgep467.1 = getelementptr i8, i8* %scevgep466.1, i64 %266
  %scevgep467468.1 = bitcast i8* %scevgep467.1 to double*
  %_p_scalar_469.1 = load double, double* %scevgep467468.1, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_469.1
  store double %p_add42.i79.1, double* %scevgep467468.1, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next448.1 = add nuw nsw i64 %polly.indvar447.1, 1
  %exitcond913.1.not = icmp eq i64 %polly.indvar447.1, %smin912.1
  br i1 %exitcond913.1.not, label %polly.loop_exit446.1, label %polly.loop_header444.1, !llvm.loop !125

polly.loop_exit446.1:                             ; preds = %polly.loop_header444.1, %middle.block1387
  %polly.indvar_next442.1 = add nuw nsw i64 %polly.indvar441.1, 1
  %indvars.iv.next911.1 = add nuw nsw i64 %indvars.iv910.1, 1
  %exitcond914.1.not = icmp eq i64 %indvars.iv.next911.1, 16
  br i1 %exitcond914.1.not, label %polly.loop_exit440.1, label %polly.loop_header438.1

polly.loop_exit440.1:                             ; preds = %polly.loop_exit446.1
  %polly.indvar_next436.1 = add nuw nsw i64 %polly.indvar435.1, 1
  %exitcond916.1.not = icmp eq i64 %polly.indvar_next436.1, %128
  br i1 %exitcond916.1.not, label %polly.loop_exit434.1, label %polly.loop_header432.1

polly.loop_exit434.1:                             ; preds = %polly.loop_exit440.1
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %indvars.iv.next904 = add nsw i64 %indvars.iv903, -8
  %exitcond917.not = icmp eq i64 %polly.indvar_next392, 8
  br i1 %exitcond917.not, label %polly.exiting285, label %polly.loop_header388

polly.loop_header588.1:                           ; preds = %polly.loop_exit628, %polly.loop_exit596.1
  %polly.indvar591.1 = phi i64 [ %polly.indvar_next592.1, %polly.loop_exit596.1 ], [ 0, %polly.loop_exit628 ]
  %267 = add nuw nsw i64 %polly.indvar591.1, %160
  %polly.access.mul.Packed_MemRef_call2477.1 = mul nuw nsw i64 %polly.indvar591.1, 80
  br label %polly.loop_header594.1

polly.loop_header594.1:                           ; preds = %polly.loop_header594.1, %polly.loop_header588.1
  %polly.indvar597.1 = phi i64 [ 0, %polly.loop_header588.1 ], [ %polly.indvar_next598.1, %polly.loop_header594.1 ]
  %268 = mul i64 %polly.indvar597.1, 60
  %polly.access.mul.call2601.1 = add i64 %268, 3840
  %polly.access.add.call2602.1 = add nuw nsw i64 %267, %polly.access.mul.call2601.1
  %polly.access.call2603.1 = getelementptr double, double* %polly.access.cast.call2672, i64 %polly.access.add.call2602.1
  %polly.access.call2603.load.1 = load double, double* %polly.access.call2603.1, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2477.1 = add nuw nsw i64 %polly.indvar597.1, %polly.access.mul.Packed_MemRef_call2477.1
  %polly.access.Packed_MemRef_call2477.1 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477.1
  store double %polly.access.call2603.load.1, double* %polly.access.Packed_MemRef_call2477.1, align 8
  %polly.indvar_next598.1 = add nuw nsw i64 %polly.indvar597.1, 1
  %exitcond920.1.not = icmp eq i64 %polly.indvar_next598.1, 16
  br i1 %exitcond920.1.not, label %polly.loop_exit596.1, label %polly.loop_header594.1

polly.loop_exit596.1:                             ; preds = %polly.loop_header594.1
  %polly.indvar_next592.1 = add nuw nsw i64 %polly.indvar591.1, 1
  %exitcond924.1.not = icmp eq i64 %polly.indvar_next592.1, %159
  br i1 %exitcond924.1.not, label %polly.loop_header604.1, label %polly.loop_header588.1

polly.loop_header604.1:                           ; preds = %polly.loop_exit596.1, %polly.loop_exit612.1
  %polly.indvar607.1 = phi i64 [ %polly.indvar_next608.1, %polly.loop_exit612.1 ], [ 0, %polly.loop_exit596.1 ]
  %269 = add nuw nsw i64 %polly.indvar607.1, %160
  %polly.access.mul.Packed_MemRef_call1475.1 = mul nuw nsw i64 %polly.indvar607.1, 80
  br label %polly.loop_header610.1

polly.loop_header610.1:                           ; preds = %polly.loop_header610.1, %polly.loop_header604.1
  %polly.indvar613.1 = phi i64 [ 0, %polly.loop_header604.1 ], [ %polly.indvar_next614.1, %polly.loop_header610.1 ]
  %270 = mul i64 %polly.indvar613.1, 60
  %polly.access.mul.call1617.1 = add i64 %270, 3840
  %polly.access.add.call1618.1 = add nuw nsw i64 %269, %polly.access.mul.call1617.1
  %polly.access.call1619.1 = getelementptr double, double* %polly.access.cast.call1662, i64 %polly.access.add.call1618.1
  %polly.access.call1619.load.1 = load double, double* %polly.access.call1619.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1475.1 = add nuw nsw i64 %polly.indvar613.1, %polly.access.mul.Packed_MemRef_call1475.1
  %polly.access.Packed_MemRef_call1475.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475.1
  store double %polly.access.call1619.load.1, double* %polly.access.Packed_MemRef_call1475.1, align 8
  %polly.indvar_next614.1 = add nuw nsw i64 %polly.indvar613.1, 1
  %exitcond925.1.not = icmp eq i64 %polly.indvar_next614.1, 16
  br i1 %exitcond925.1.not, label %polly.loop_exit612.1, label %polly.loop_header610.1

polly.loop_exit612.1:                             ; preds = %polly.loop_header610.1
  %polly.indvar_next608.1 = add nuw nsw i64 %polly.indvar607.1, 1
  %exitcond927.1.not = icmp eq i64 %polly.indvar_next608.1, %159
  br i1 %exitcond927.1.not, label %polly.loop_header620.1, label %polly.loop_header604.1

polly.loop_header620.1:                           ; preds = %polly.loop_exit612.1, %polly.loop_exit628.1
  %polly.indvar623.1 = phi i64 [ %polly.indvar_next624.1, %polly.loop_exit628.1 ], [ 0, %polly.loop_exit612.1 ]
  %polly.access.mul.Packed_MemRef_call1475638.1 = mul nuw nsw i64 %polly.indvar623.1, 80
  br label %polly.loop_header626.1

polly.loop_header626.1:                           ; preds = %polly.loop_exit634.1, %polly.loop_header620.1
  %indvars.iv928.1 = phi i64 [ %indvars.iv.next929.1, %polly.loop_exit634.1 ], [ 0, %polly.loop_header620.1 ]
  %polly.indvar629.1 = phi i64 [ %polly.indvar_next630.1, %polly.loop_exit634.1 ], [ 64, %polly.loop_header620.1 ]
  %271 = add nuw i64 %indvars.iv928.1, 1
  %smin930.1 = call i64 @llvm.smin.i64(i64 %indvars.iv928.1, i64 63)
  %272 = add nsw i64 %polly.indvar629.1, -64
  %273 = mul nuw nsw i64 %polly.indvar629.1, 640
  %scevgep654.1 = getelementptr i8, i8* %call, i64 %273
  %polly.access.add.Packed_MemRef_call2477643.1 = add nuw nsw i64 %272, %polly.access.mul.Packed_MemRef_call1475638.1
  %polly.access.Packed_MemRef_call2477644.1 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call2477643.1
  %_p_scalar_645.1 = load double, double* %polly.access.Packed_MemRef_call2477644.1, align 8
  %polly.access.Packed_MemRef_call1475652.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call2477643.1
  %_p_scalar_653.1 = load double, double* %polly.access.Packed_MemRef_call1475652.1, align 8
  %min.iters.check1328 = icmp ult i64 %indvars.iv928.1, 3
  br i1 %min.iters.check1328, label %polly.loop_header632.1.preheader, label %vector.ph1329

vector.ph1329:                                    ; preds = %polly.loop_header626.1
  %n.vec1331 = and i64 %271, -4
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_645.1, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1340 = insertelement <4 x double> poison, double %_p_scalar_653.1, i32 0
  %broadcast.splat1341 = shufflevector <4 x double> %broadcast.splatinsert1340, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.body1327, %vector.ph1329
  %index1332 = phi i64 [ 0, %vector.ph1329 ], [ %index.next1333, %vector.body1327 ]
  %274 = add nuw nsw i64 %index1332, %polly.access.mul.Packed_MemRef_call1475638.1
  %275 = getelementptr double, double* %Packed_MemRef_call1475, i64 %274
  %276 = bitcast double* %275 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %276, align 8
  %277 = fmul fast <4 x double> %broadcast.splat1338, %wide.load1336
  %278 = getelementptr double, double* %Packed_MemRef_call2477, i64 %274
  %279 = bitcast double* %278 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %279, align 8
  %280 = fmul fast <4 x double> %broadcast.splat1341, %wide.load1339
  %281 = shl i64 %index1332, 3
  %282 = add i64 %281, 512
  %283 = getelementptr i8, i8* %scevgep654.1, i64 %282
  %284 = bitcast i8* %283 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %284, align 8, !alias.scope !99, !noalias !101
  %285 = fadd fast <4 x double> %280, %277
  %286 = fmul fast <4 x double> %285, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %287 = fadd fast <4 x double> %286, %wide.load1342
  %288 = bitcast i8* %283 to <4 x double>*
  store <4 x double> %287, <4 x double>* %288, align 8, !alias.scope !99, !noalias !101
  %index.next1333 = add i64 %index1332, 4
  %289 = icmp eq i64 %index.next1333, %n.vec1331
  br i1 %289, label %middle.block1325, label %vector.body1327, !llvm.loop !126

middle.block1325:                                 ; preds = %vector.body1327
  %cmp.n1335 = icmp eq i64 %271, %n.vec1331
  br i1 %cmp.n1335, label %polly.loop_exit634.1, label %polly.loop_header632.1.preheader

polly.loop_header632.1.preheader:                 ; preds = %polly.loop_header626.1, %middle.block1325
  %polly.indvar635.1.ph = phi i64 [ 0, %polly.loop_header626.1 ], [ %n.vec1331, %middle.block1325 ]
  br label %polly.loop_header632.1

polly.loop_header632.1:                           ; preds = %polly.loop_header632.1.preheader, %polly.loop_header632.1
  %polly.indvar635.1 = phi i64 [ %polly.indvar_next636.1, %polly.loop_header632.1 ], [ %polly.indvar635.1.ph, %polly.loop_header632.1.preheader ]
  %polly.access.add.Packed_MemRef_call1475639.1 = add nuw nsw i64 %polly.indvar635.1, %polly.access.mul.Packed_MemRef_call1475638.1
  %polly.access.Packed_MemRef_call1475640.1 = getelementptr double, double* %Packed_MemRef_call1475, i64 %polly.access.add.Packed_MemRef_call1475639.1
  %_p_scalar_641.1 = load double, double* %polly.access.Packed_MemRef_call1475640.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_645.1, %_p_scalar_641.1
  %polly.access.Packed_MemRef_call2477648.1 = getelementptr double, double* %Packed_MemRef_call2477, i64 %polly.access.add.Packed_MemRef_call1475639.1
  %_p_scalar_649.1 = load double, double* %polly.access.Packed_MemRef_call2477648.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_653.1, %_p_scalar_649.1
  %290 = shl i64 %polly.indvar635.1, 3
  %291 = add i64 %290, 512
  %scevgep655.1 = getelementptr i8, i8* %scevgep654.1, i64 %291
  %scevgep655656.1 = bitcast i8* %scevgep655.1 to double*
  %_p_scalar_657.1 = load double, double* %scevgep655656.1, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_657.1
  store double %p_add42.i.1, double* %scevgep655656.1, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next636.1 = add nuw nsw i64 %polly.indvar635.1, 1
  %exitcond931.1.not = icmp eq i64 %polly.indvar635.1, %smin930.1
  br i1 %exitcond931.1.not, label %polly.loop_exit634.1, label %polly.loop_header632.1, !llvm.loop !127

polly.loop_exit634.1:                             ; preds = %polly.loop_header632.1, %middle.block1325
  %polly.indvar_next630.1 = add nuw nsw i64 %polly.indvar629.1, 1
  %indvars.iv.next929.1 = add nuw nsw i64 %indvars.iv928.1, 1
  %exitcond932.1.not = icmp eq i64 %indvars.iv.next929.1, 16
  br i1 %exitcond932.1.not, label %polly.loop_exit628.1, label %polly.loop_header626.1

polly.loop_exit628.1:                             ; preds = %polly.loop_exit634.1
  %polly.indvar_next624.1 = add nuw nsw i64 %polly.indvar623.1, 1
  %exitcond934.1.not = icmp eq i64 %polly.indvar_next624.1, %159
  br i1 %exitcond934.1.not, label %polly.loop_exit622.1, label %polly.loop_header620.1

polly.loop_exit622.1:                             ; preds = %polly.loop_exit628.1
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %indvars.iv.next922 = add nsw i64 %indvars.iv921, -8
  %exitcond935.not = icmp eq i64 %polly.indvar_next580, 8
  br i1 %exitcond935.not, label %polly.exiting473, label %polly.loop_header576

polly.loop_header849.1:                           ; preds = %polly.loop_exit857, %polly.loop_exit857.1
  %polly.indvar852.1 = phi i64 [ %polly.indvar_next853.1, %polly.loop_exit857.1 ], [ 0, %polly.loop_exit857 ]
  %292 = mul nuw nsw i64 %polly.indvar852.1, 480
  %293 = trunc i64 %polly.indvar852.1 to i32
  %broadcast.splatinsert1251 = insertelement <4 x i32> poison, i32 %293, i32 0
  %broadcast.splat1252 = shufflevector <4 x i32> %broadcast.splatinsert1251, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %polly.loop_header849.1
  %index1245 = phi i64 [ 0, %polly.loop_header849.1 ], [ %index.next1246, %vector.body1243 ]
  %vec.ind1249 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header849.1 ], [ %vec.ind.next1250, %vector.body1243 ]
  %294 = add nuw nsw <4 x i64> %vec.ind1249, <i64 32, i64 32, i64 32, i64 32>
  %295 = trunc <4 x i64> %294 to <4 x i32>
  %296 = mul <4 x i32> %broadcast.splat1252, %295
  %297 = add <4 x i32> %296, <i32 1, i32 1, i32 1, i32 1>
  %298 = urem <4 x i32> %297, <i32 80, i32 80, i32 80, i32 80>
  %299 = sitofp <4 x i32> %298 to <4 x double>
  %300 = fmul fast <4 x double> %299, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %301 = extractelement <4 x i64> %294, i32 0
  %302 = shl i64 %301, 3
  %303 = add i64 %302, %292
  %304 = getelementptr i8, i8* %call1, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %300, <4 x double>* %305, align 8, !alias.scope !115, !noalias !120
  %index.next1246 = add i64 %index1245, 4
  %vec.ind.next1250 = add <4 x i64> %vec.ind1249, <i64 4, i64 4, i64 4, i64 4>
  %306 = icmp eq i64 %index.next1246, 28
  br i1 %306, label %polly.loop_exit857.1, label %vector.body1243, !llvm.loop !128

polly.loop_exit857.1:                             ; preds = %vector.body1243
  %polly.indvar_next853.1 = add nuw nsw i64 %polly.indvar852.1, 1
  %exitcond942.1.not = icmp eq i64 %polly.indvar_next853.1, 32
  br i1 %exitcond942.1.not, label %polly.loop_header849.1962, label %polly.loop_header849.1

polly.loop_header849.1962:                        ; preds = %polly.loop_exit857.1, %polly.loop_exit857.1973
  %polly.indvar852.1961 = phi i64 [ %polly.indvar_next853.1971, %polly.loop_exit857.1973 ], [ 0, %polly.loop_exit857.1 ]
  %307 = add nuw nsw i64 %polly.indvar852.1961, 32
  %308 = mul nuw nsw i64 %307, 480
  %309 = trunc i64 %307 to i32
  %broadcast.splatinsert1265 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1266 = shufflevector <4 x i32> %broadcast.splatinsert1265, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %polly.loop_header849.1962
  %index1257 = phi i64 [ 0, %polly.loop_header849.1962 ], [ %index.next1258, %vector.body1255 ]
  %vec.ind1263 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header849.1962 ], [ %vec.ind.next1264, %vector.body1255 ]
  %310 = mul <4 x i32> %vec.ind1263, %broadcast.splat1266
  %311 = add <4 x i32> %310, <i32 1, i32 1, i32 1, i32 1>
  %312 = urem <4 x i32> %311, <i32 80, i32 80, i32 80, i32 80>
  %313 = sitofp <4 x i32> %312 to <4 x double>
  %314 = fmul fast <4 x double> %313, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %315 = shl i64 %index1257, 3
  %316 = add i64 %315, %308
  %317 = getelementptr i8, i8* %call1, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %314, <4 x double>* %318, align 8, !alias.scope !115, !noalias !120
  %index.next1258 = add i64 %index1257, 4
  %vec.ind.next1264 = add <4 x i32> %vec.ind1263, <i32 4, i32 4, i32 4, i32 4>
  %319 = icmp eq i64 %index.next1258, 32
  br i1 %319, label %polly.loop_exit857.1973, label %vector.body1255, !llvm.loop !129

polly.loop_exit857.1973:                          ; preds = %vector.body1255
  %polly.indvar_next853.1971 = add nuw nsw i64 %polly.indvar852.1961, 1
  %exitcond942.1972.not = icmp eq i64 %polly.indvar_next853.1971, 32
  br i1 %exitcond942.1972.not, label %polly.loop_header849.1.1, label %polly.loop_header849.1962

polly.loop_header849.1.1:                         ; preds = %polly.loop_exit857.1973, %polly.loop_exit857.1.1
  %polly.indvar852.1.1 = phi i64 [ %polly.indvar_next853.1.1, %polly.loop_exit857.1.1 ], [ 0, %polly.loop_exit857.1973 ]
  %320 = add nuw nsw i64 %polly.indvar852.1.1, 32
  %321 = mul nuw nsw i64 %320, 480
  %322 = trunc i64 %320 to i32
  %broadcast.splatinsert1277 = insertelement <4 x i32> poison, i32 %322, i32 0
  %broadcast.splat1278 = shufflevector <4 x i32> %broadcast.splatinsert1277, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1269

vector.body1269:                                  ; preds = %vector.body1269, %polly.loop_header849.1.1
  %index1271 = phi i64 [ 0, %polly.loop_header849.1.1 ], [ %index.next1272, %vector.body1269 ]
  %vec.ind1275 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header849.1.1 ], [ %vec.ind.next1276, %vector.body1269 ]
  %323 = add nuw nsw <4 x i64> %vec.ind1275, <i64 32, i64 32, i64 32, i64 32>
  %324 = trunc <4 x i64> %323 to <4 x i32>
  %325 = mul <4 x i32> %broadcast.splat1278, %324
  %326 = add <4 x i32> %325, <i32 1, i32 1, i32 1, i32 1>
  %327 = urem <4 x i32> %326, <i32 80, i32 80, i32 80, i32 80>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %330 = extractelement <4 x i64> %323, i32 0
  %331 = shl i64 %330, 3
  %332 = add i64 %331, %321
  %333 = getelementptr i8, i8* %call1, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %329, <4 x double>* %334, align 8, !alias.scope !115, !noalias !120
  %index.next1272 = add i64 %index1271, 4
  %vec.ind.next1276 = add <4 x i64> %vec.ind1275, <i64 4, i64 4, i64 4, i64 4>
  %335 = icmp eq i64 %index.next1272, 28
  br i1 %335, label %polly.loop_exit857.1.1, label %vector.body1269, !llvm.loop !130

polly.loop_exit857.1.1:                           ; preds = %vector.body1269
  %polly.indvar_next853.1.1 = add nuw nsw i64 %polly.indvar852.1.1, 1
  %exitcond942.1.1.not = icmp eq i64 %polly.indvar_next853.1.1, 32
  br i1 %exitcond942.1.1.not, label %polly.loop_header849.2, label %polly.loop_header849.1.1

polly.loop_header849.2:                           ; preds = %polly.loop_exit857.1.1, %polly.loop_exit857.2
  %polly.indvar852.2 = phi i64 [ %polly.indvar_next853.2, %polly.loop_exit857.2 ], [ 0, %polly.loop_exit857.1.1 ]
  %336 = add nuw nsw i64 %polly.indvar852.2, 64
  %337 = mul nuw nsw i64 %336, 480
  %338 = trunc i64 %336 to i32
  %broadcast.splatinsert1291 = insertelement <4 x i32> poison, i32 %338, i32 0
  %broadcast.splat1292 = shufflevector <4 x i32> %broadcast.splatinsert1291, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %polly.loop_header849.2
  %index1283 = phi i64 [ 0, %polly.loop_header849.2 ], [ %index.next1284, %vector.body1281 ]
  %vec.ind1289 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header849.2 ], [ %vec.ind.next1290, %vector.body1281 ]
  %339 = mul <4 x i32> %vec.ind1289, %broadcast.splat1292
  %340 = add <4 x i32> %339, <i32 1, i32 1, i32 1, i32 1>
  %341 = urem <4 x i32> %340, <i32 80, i32 80, i32 80, i32 80>
  %342 = sitofp <4 x i32> %341 to <4 x double>
  %343 = fmul fast <4 x double> %342, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %344 = shl i64 %index1283, 3
  %345 = add i64 %344, %337
  %346 = getelementptr i8, i8* %call1, i64 %345
  %347 = bitcast i8* %346 to <4 x double>*
  store <4 x double> %343, <4 x double>* %347, align 8, !alias.scope !115, !noalias !120
  %index.next1284 = add i64 %index1283, 4
  %vec.ind.next1290 = add <4 x i32> %vec.ind1289, <i32 4, i32 4, i32 4, i32 4>
  %348 = icmp eq i64 %index.next1284, 32
  br i1 %348, label %polly.loop_exit857.2, label %vector.body1281, !llvm.loop !131

polly.loop_exit857.2:                             ; preds = %vector.body1281
  %polly.indvar_next853.2 = add nuw nsw i64 %polly.indvar852.2, 1
  %exitcond942.2.not = icmp eq i64 %polly.indvar_next853.2, 16
  br i1 %exitcond942.2.not, label %polly.loop_header849.1.2, label %polly.loop_header849.2

polly.loop_header849.1.2:                         ; preds = %polly.loop_exit857.2, %polly.loop_exit857.1.2
  %polly.indvar852.1.2 = phi i64 [ %polly.indvar_next853.1.2, %polly.loop_exit857.1.2 ], [ 0, %polly.loop_exit857.2 ]
  %349 = add nuw nsw i64 %polly.indvar852.1.2, 64
  %350 = mul nuw nsw i64 %349, 480
  %351 = trunc i64 %349 to i32
  %broadcast.splatinsert1303 = insertelement <4 x i32> poison, i32 %351, i32 0
  %broadcast.splat1304 = shufflevector <4 x i32> %broadcast.splatinsert1303, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %polly.loop_header849.1.2
  %index1297 = phi i64 [ 0, %polly.loop_header849.1.2 ], [ %index.next1298, %vector.body1295 ]
  %vec.ind1301 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header849.1.2 ], [ %vec.ind.next1302, %vector.body1295 ]
  %352 = add nuw nsw <4 x i64> %vec.ind1301, <i64 32, i64 32, i64 32, i64 32>
  %353 = trunc <4 x i64> %352 to <4 x i32>
  %354 = mul <4 x i32> %broadcast.splat1304, %353
  %355 = add <4 x i32> %354, <i32 1, i32 1, i32 1, i32 1>
  %356 = urem <4 x i32> %355, <i32 80, i32 80, i32 80, i32 80>
  %357 = sitofp <4 x i32> %356 to <4 x double>
  %358 = fmul fast <4 x double> %357, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %359 = extractelement <4 x i64> %352, i32 0
  %360 = shl i64 %359, 3
  %361 = add i64 %360, %350
  %362 = getelementptr i8, i8* %call1, i64 %361
  %363 = bitcast i8* %362 to <4 x double>*
  store <4 x double> %358, <4 x double>* %363, align 8, !alias.scope !115, !noalias !120
  %index.next1298 = add i64 %index1297, 4
  %vec.ind.next1302 = add <4 x i64> %vec.ind1301, <i64 4, i64 4, i64 4, i64 4>
  %364 = icmp eq i64 %index.next1298, 28
  br i1 %364, label %polly.loop_exit857.1.2, label %vector.body1295, !llvm.loop !132

polly.loop_exit857.1.2:                           ; preds = %vector.body1295
  %polly.indvar_next853.1.2 = add nuw nsw i64 %polly.indvar852.1.2, 1
  %exitcond942.1.2.not = icmp eq i64 %polly.indvar_next853.1.2, 16
  br i1 %exitcond942.1.2.not, label %init_array.exit, label %polly.loop_header849.1.2

polly.loop_header823.1:                           ; preds = %polly.loop_exit831, %polly.loop_exit831.1
  %polly.indvar826.1 = phi i64 [ %polly.indvar_next827.1, %polly.loop_exit831.1 ], [ 0, %polly.loop_exit831 ]
  %365 = mul nuw nsw i64 %polly.indvar826.1, 480
  %366 = trunc i64 %polly.indvar826.1 to i32
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %366, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %polly.loop_header823.1
  %index1167 = phi i64 [ 0, %polly.loop_header823.1 ], [ %index.next1168, %vector.body1165 ]
  %vec.ind1171 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1 ], [ %vec.ind.next1172, %vector.body1165 ]
  %367 = add nuw nsw <4 x i64> %vec.ind1171, <i64 32, i64 32, i64 32, i64 32>
  %368 = trunc <4 x i64> %367 to <4 x i32>
  %369 = mul <4 x i32> %broadcast.splat1174, %368
  %370 = add <4 x i32> %369, <i32 2, i32 2, i32 2, i32 2>
  %371 = urem <4 x i32> %370, <i32 60, i32 60, i32 60, i32 60>
  %372 = sitofp <4 x i32> %371 to <4 x double>
  %373 = fmul fast <4 x double> %372, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %374 = extractelement <4 x i64> %367, i32 0
  %375 = shl i64 %374, 3
  %376 = add i64 %375, %365
  %377 = getelementptr i8, i8* %call2, i64 %376
  %378 = bitcast i8* %377 to <4 x double>*
  store <4 x double> %373, <4 x double>* %378, align 8, !alias.scope !116, !noalias !118
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1172 = add <4 x i64> %vec.ind1171, <i64 4, i64 4, i64 4, i64 4>
  %379 = icmp eq i64 %index.next1168, 28
  br i1 %379, label %polly.loop_exit831.1, label %vector.body1165, !llvm.loop !133

polly.loop_exit831.1:                             ; preds = %vector.body1165
  %polly.indvar_next827.1 = add nuw nsw i64 %polly.indvar826.1, 1
  %exitcond948.1.not = icmp eq i64 %polly.indvar_next827.1, 32
  br i1 %exitcond948.1.not, label %polly.loop_header823.1976, label %polly.loop_header823.1

polly.loop_header823.1976:                        ; preds = %polly.loop_exit831.1, %polly.loop_exit831.1987
  %polly.indvar826.1975 = phi i64 [ %polly.indvar_next827.1985, %polly.loop_exit831.1987 ], [ 0, %polly.loop_exit831.1 ]
  %380 = add nuw nsw i64 %polly.indvar826.1975, 32
  %381 = mul nuw nsw i64 %380, 480
  %382 = trunc i64 %380 to i32
  %broadcast.splatinsert1187 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat1188 = shufflevector <4 x i32> %broadcast.splatinsert1187, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %polly.loop_header823.1976
  %index1179 = phi i64 [ 0, %polly.loop_header823.1976 ], [ %index.next1180, %vector.body1177 ]
  %vec.ind1185 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823.1976 ], [ %vec.ind.next1186, %vector.body1177 ]
  %383 = mul <4 x i32> %vec.ind1185, %broadcast.splat1188
  %384 = add <4 x i32> %383, <i32 2, i32 2, i32 2, i32 2>
  %385 = urem <4 x i32> %384, <i32 60, i32 60, i32 60, i32 60>
  %386 = sitofp <4 x i32> %385 to <4 x double>
  %387 = fmul fast <4 x double> %386, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %388 = shl i64 %index1179, 3
  %389 = add i64 %388, %381
  %390 = getelementptr i8, i8* %call2, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %387, <4 x double>* %391, align 8, !alias.scope !116, !noalias !118
  %index.next1180 = add i64 %index1179, 4
  %vec.ind.next1186 = add <4 x i32> %vec.ind1185, <i32 4, i32 4, i32 4, i32 4>
  %392 = icmp eq i64 %index.next1180, 32
  br i1 %392, label %polly.loop_exit831.1987, label %vector.body1177, !llvm.loop !134

polly.loop_exit831.1987:                          ; preds = %vector.body1177
  %polly.indvar_next827.1985 = add nuw nsw i64 %polly.indvar826.1975, 1
  %exitcond948.1986.not = icmp eq i64 %polly.indvar_next827.1985, 32
  br i1 %exitcond948.1986.not, label %polly.loop_header823.1.1, label %polly.loop_header823.1976

polly.loop_header823.1.1:                         ; preds = %polly.loop_exit831.1987, %polly.loop_exit831.1.1
  %polly.indvar826.1.1 = phi i64 [ %polly.indvar_next827.1.1, %polly.loop_exit831.1.1 ], [ 0, %polly.loop_exit831.1987 ]
  %393 = add nuw nsw i64 %polly.indvar826.1.1, 32
  %394 = mul nuw nsw i64 %393, 480
  %395 = trunc i64 %393 to i32
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %395, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %polly.loop_header823.1.1
  %index1193 = phi i64 [ 0, %polly.loop_header823.1.1 ], [ %index.next1194, %vector.body1191 ]
  %vec.ind1197 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1.1 ], [ %vec.ind.next1198, %vector.body1191 ]
  %396 = add nuw nsw <4 x i64> %vec.ind1197, <i64 32, i64 32, i64 32, i64 32>
  %397 = trunc <4 x i64> %396 to <4 x i32>
  %398 = mul <4 x i32> %broadcast.splat1200, %397
  %399 = add <4 x i32> %398, <i32 2, i32 2, i32 2, i32 2>
  %400 = urem <4 x i32> %399, <i32 60, i32 60, i32 60, i32 60>
  %401 = sitofp <4 x i32> %400 to <4 x double>
  %402 = fmul fast <4 x double> %401, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %403 = extractelement <4 x i64> %396, i32 0
  %404 = shl i64 %403, 3
  %405 = add i64 %404, %394
  %406 = getelementptr i8, i8* %call2, i64 %405
  %407 = bitcast i8* %406 to <4 x double>*
  store <4 x double> %402, <4 x double>* %407, align 8, !alias.scope !116, !noalias !118
  %index.next1194 = add i64 %index1193, 4
  %vec.ind.next1198 = add <4 x i64> %vec.ind1197, <i64 4, i64 4, i64 4, i64 4>
  %408 = icmp eq i64 %index.next1194, 28
  br i1 %408, label %polly.loop_exit831.1.1, label %vector.body1191, !llvm.loop !135

polly.loop_exit831.1.1:                           ; preds = %vector.body1191
  %polly.indvar_next827.1.1 = add nuw nsw i64 %polly.indvar826.1.1, 1
  %exitcond948.1.1.not = icmp eq i64 %polly.indvar_next827.1.1, 32
  br i1 %exitcond948.1.1.not, label %polly.loop_header823.2, label %polly.loop_header823.1.1

polly.loop_header823.2:                           ; preds = %polly.loop_exit831.1.1, %polly.loop_exit831.2
  %polly.indvar826.2 = phi i64 [ %polly.indvar_next827.2, %polly.loop_exit831.2 ], [ 0, %polly.loop_exit831.1.1 ]
  %409 = add nuw nsw i64 %polly.indvar826.2, 64
  %410 = mul nuw nsw i64 %409, 480
  %411 = trunc i64 %409 to i32
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %polly.loop_header823.2
  %index1205 = phi i64 [ 0, %polly.loop_header823.2 ], [ %index.next1206, %vector.body1203 ]
  %vec.ind1211 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header823.2 ], [ %vec.ind.next1212, %vector.body1203 ]
  %412 = mul <4 x i32> %vec.ind1211, %broadcast.splat1214
  %413 = add <4 x i32> %412, <i32 2, i32 2, i32 2, i32 2>
  %414 = urem <4 x i32> %413, <i32 60, i32 60, i32 60, i32 60>
  %415 = sitofp <4 x i32> %414 to <4 x double>
  %416 = fmul fast <4 x double> %415, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %417 = shl i64 %index1205, 3
  %418 = add i64 %417, %410
  %419 = getelementptr i8, i8* %call2, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %416, <4 x double>* %420, align 8, !alias.scope !116, !noalias !118
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1212 = add <4 x i32> %vec.ind1211, <i32 4, i32 4, i32 4, i32 4>
  %421 = icmp eq i64 %index.next1206, 32
  br i1 %421, label %polly.loop_exit831.2, label %vector.body1203, !llvm.loop !136

polly.loop_exit831.2:                             ; preds = %vector.body1203
  %polly.indvar_next827.2 = add nuw nsw i64 %polly.indvar826.2, 1
  %exitcond948.2.not = icmp eq i64 %polly.indvar_next827.2, 16
  br i1 %exitcond948.2.not, label %polly.loop_header823.1.2, label %polly.loop_header823.2

polly.loop_header823.1.2:                         ; preds = %polly.loop_exit831.2, %polly.loop_exit831.1.2
  %polly.indvar826.1.2 = phi i64 [ %polly.indvar_next827.1.2, %polly.loop_exit831.1.2 ], [ 0, %polly.loop_exit831.2 ]
  %422 = add nuw nsw i64 %polly.indvar826.1.2, 64
  %423 = mul nuw nsw i64 %422, 480
  %424 = trunc i64 %422 to i32
  %broadcast.splatinsert1225 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat1226 = shufflevector <4 x i32> %broadcast.splatinsert1225, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %polly.loop_header823.1.2
  %index1219 = phi i64 [ 0, %polly.loop_header823.1.2 ], [ %index.next1220, %vector.body1217 ]
  %vec.ind1223 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header823.1.2 ], [ %vec.ind.next1224, %vector.body1217 ]
  %425 = add nuw nsw <4 x i64> %vec.ind1223, <i64 32, i64 32, i64 32, i64 32>
  %426 = trunc <4 x i64> %425 to <4 x i32>
  %427 = mul <4 x i32> %broadcast.splat1226, %426
  %428 = add <4 x i32> %427, <i32 2, i32 2, i32 2, i32 2>
  %429 = urem <4 x i32> %428, <i32 60, i32 60, i32 60, i32 60>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %432 = extractelement <4 x i64> %425, i32 0
  %433 = shl i64 %432, 3
  %434 = add i64 %433, %423
  %435 = getelementptr i8, i8* %call2, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %431, <4 x double>* %436, align 8, !alias.scope !116, !noalias !118
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1224 = add <4 x i64> %vec.ind1223, <i64 4, i64 4, i64 4, i64 4>
  %437 = icmp eq i64 %index.next1220, 28
  br i1 %437, label %polly.loop_exit831.1.2, label %vector.body1217, !llvm.loop !137

polly.loop_exit831.1.2:                           ; preds = %vector.body1217
  %polly.indvar_next827.1.2 = add nuw nsw i64 %polly.indvar826.1.2, 1
  %exitcond948.1.2.not = icmp eq i64 %polly.indvar_next827.1.2, 16
  br i1 %exitcond948.1.2.not, label %polly.loop_header849, label %polly.loop_header823.1.2

polly.loop_header796.1:                           ; preds = %polly.loop_exit804, %polly.loop_exit804.1
  %polly.indvar799.1 = phi i64 [ %polly.indvar_next800.1, %polly.loop_exit804.1 ], [ 0, %polly.loop_exit804 ]
  %438 = mul nuw nsw i64 %polly.indvar799.1, 640
  %439 = trunc i64 %polly.indvar799.1 to i32
  %broadcast.splatinsert1059 = insertelement <4 x i32> poison, i32 %439, i32 0
  %broadcast.splat1060 = shufflevector <4 x i32> %broadcast.splatinsert1059, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %polly.loop_header796.1
  %index1053 = phi i64 [ 0, %polly.loop_header796.1 ], [ %index.next1054, %vector.body1051 ]
  %vec.ind1057 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.1 ], [ %vec.ind.next1058, %vector.body1051 ]
  %440 = add nuw nsw <4 x i64> %vec.ind1057, <i64 32, i64 32, i64 32, i64 32>
  %441 = trunc <4 x i64> %440 to <4 x i32>
  %442 = mul <4 x i32> %broadcast.splat1060, %441
  %443 = add <4 x i32> %442, <i32 3, i32 3, i32 3, i32 3>
  %444 = urem <4 x i32> %443, <i32 80, i32 80, i32 80, i32 80>
  %445 = sitofp <4 x i32> %444 to <4 x double>
  %446 = fmul fast <4 x double> %445, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %447 = extractelement <4 x i64> %440, i32 0
  %448 = shl i64 %447, 3
  %449 = add nuw nsw i64 %448, %438
  %450 = getelementptr i8, i8* %call, i64 %449
  %451 = bitcast i8* %450 to <4 x double>*
  store <4 x double> %446, <4 x double>* %451, align 8, !alias.scope !112, !noalias !114
  %index.next1054 = add i64 %index1053, 4
  %vec.ind.next1058 = add <4 x i64> %vec.ind1057, <i64 4, i64 4, i64 4, i64 4>
  %452 = icmp eq i64 %index.next1054, 32
  br i1 %452, label %polly.loop_exit804.1, label %vector.body1051, !llvm.loop !138

polly.loop_exit804.1:                             ; preds = %vector.body1051
  %polly.indvar_next800.1 = add nuw nsw i64 %polly.indvar799.1, 1
  %exitcond957.1.not = icmp eq i64 %polly.indvar_next800.1, 32
  br i1 %exitcond957.1.not, label %polly.loop_header796.2, label %polly.loop_header796.1

polly.loop_header796.2:                           ; preds = %polly.loop_exit804.1, %polly.loop_exit804.2
  %polly.indvar799.2 = phi i64 [ %polly.indvar_next800.2, %polly.loop_exit804.2 ], [ 0, %polly.loop_exit804.1 ]
  %453 = mul nuw nsw i64 %polly.indvar799.2, 640
  %454 = trunc i64 %polly.indvar799.2 to i32
  %broadcast.splatinsert1071 = insertelement <4 x i32> poison, i32 %454, i32 0
  %broadcast.splat1072 = shufflevector <4 x i32> %broadcast.splatinsert1071, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1063

vector.body1063:                                  ; preds = %vector.body1063, %polly.loop_header796.2
  %index1065 = phi i64 [ 0, %polly.loop_header796.2 ], [ %index.next1066, %vector.body1063 ]
  %vec.ind1069 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.2 ], [ %vec.ind.next1070, %vector.body1063 ]
  %455 = add nuw nsw <4 x i64> %vec.ind1069, <i64 64, i64 64, i64 64, i64 64>
  %456 = trunc <4 x i64> %455 to <4 x i32>
  %457 = mul <4 x i32> %broadcast.splat1072, %456
  %458 = add <4 x i32> %457, <i32 3, i32 3, i32 3, i32 3>
  %459 = urem <4 x i32> %458, <i32 80, i32 80, i32 80, i32 80>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %462 = extractelement <4 x i64> %455, i32 0
  %463 = shl i64 %462, 3
  %464 = add nuw nsw i64 %463, %453
  %465 = getelementptr i8, i8* %call, i64 %464
  %466 = bitcast i8* %465 to <4 x double>*
  store <4 x double> %461, <4 x double>* %466, align 8, !alias.scope !112, !noalias !114
  %index.next1066 = add i64 %index1065, 4
  %vec.ind.next1070 = add <4 x i64> %vec.ind1069, <i64 4, i64 4, i64 4, i64 4>
  %467 = icmp eq i64 %index.next1066, 16
  br i1 %467, label %polly.loop_exit804.2, label %vector.body1063, !llvm.loop !139

polly.loop_exit804.2:                             ; preds = %vector.body1063
  %polly.indvar_next800.2 = add nuw nsw i64 %polly.indvar799.2, 1
  %exitcond957.2.not = icmp eq i64 %polly.indvar_next800.2, 32
  br i1 %exitcond957.2.not, label %polly.loop_header796.1990, label %polly.loop_header796.2

polly.loop_header796.1990:                        ; preds = %polly.loop_exit804.2, %polly.loop_exit804.11001
  %polly.indvar799.1989 = phi i64 [ %polly.indvar_next800.1999, %polly.loop_exit804.11001 ], [ 0, %polly.loop_exit804.2 ]
  %468 = add nuw nsw i64 %polly.indvar799.1989, 32
  %469 = mul nuw nsw i64 %468, 640
  %470 = trunc i64 %468 to i32
  %broadcast.splatinsert1085 = insertelement <4 x i32> poison, i32 %470, i32 0
  %broadcast.splat1086 = shufflevector <4 x i32> %broadcast.splatinsert1085, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.body1075, %polly.loop_header796.1990
  %index1077 = phi i64 [ 0, %polly.loop_header796.1990 ], [ %index.next1078, %vector.body1075 ]
  %vec.ind1083 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header796.1990 ], [ %vec.ind.next1084, %vector.body1075 ]
  %471 = mul <4 x i32> %vec.ind1083, %broadcast.splat1086
  %472 = add <4 x i32> %471, <i32 3, i32 3, i32 3, i32 3>
  %473 = urem <4 x i32> %472, <i32 80, i32 80, i32 80, i32 80>
  %474 = sitofp <4 x i32> %473 to <4 x double>
  %475 = fmul fast <4 x double> %474, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %476 = shl i64 %index1077, 3
  %477 = add nuw nsw i64 %476, %469
  %478 = getelementptr i8, i8* %call, i64 %477
  %479 = bitcast i8* %478 to <4 x double>*
  store <4 x double> %475, <4 x double>* %479, align 8, !alias.scope !112, !noalias !114
  %index.next1078 = add i64 %index1077, 4
  %vec.ind.next1084 = add <4 x i32> %vec.ind1083, <i32 4, i32 4, i32 4, i32 4>
  %480 = icmp eq i64 %index.next1078, 32
  br i1 %480, label %polly.loop_exit804.11001, label %vector.body1075, !llvm.loop !140

polly.loop_exit804.11001:                         ; preds = %vector.body1075
  %polly.indvar_next800.1999 = add nuw nsw i64 %polly.indvar799.1989, 1
  %exitcond957.11000.not = icmp eq i64 %polly.indvar_next800.1999, 32
  br i1 %exitcond957.11000.not, label %polly.loop_header796.1.1, label %polly.loop_header796.1990

polly.loop_header796.1.1:                         ; preds = %polly.loop_exit804.11001, %polly.loop_exit804.1.1
  %polly.indvar799.1.1 = phi i64 [ %polly.indvar_next800.1.1, %polly.loop_exit804.1.1 ], [ 0, %polly.loop_exit804.11001 ]
  %481 = add nuw nsw i64 %polly.indvar799.1.1, 32
  %482 = mul nuw nsw i64 %481, 640
  %483 = trunc i64 %481 to i32
  %broadcast.splatinsert1097 = insertelement <4 x i32> poison, i32 %483, i32 0
  %broadcast.splat1098 = shufflevector <4 x i32> %broadcast.splatinsert1097, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %polly.loop_header796.1.1
  %index1091 = phi i64 [ 0, %polly.loop_header796.1.1 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1095 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.1.1 ], [ %vec.ind.next1096, %vector.body1089 ]
  %484 = add nuw nsw <4 x i64> %vec.ind1095, <i64 32, i64 32, i64 32, i64 32>
  %485 = trunc <4 x i64> %484 to <4 x i32>
  %486 = mul <4 x i32> %broadcast.splat1098, %485
  %487 = add <4 x i32> %486, <i32 3, i32 3, i32 3, i32 3>
  %488 = urem <4 x i32> %487, <i32 80, i32 80, i32 80, i32 80>
  %489 = sitofp <4 x i32> %488 to <4 x double>
  %490 = fmul fast <4 x double> %489, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %491 = extractelement <4 x i64> %484, i32 0
  %492 = shl i64 %491, 3
  %493 = add nuw nsw i64 %492, %482
  %494 = getelementptr i8, i8* %call, i64 %493
  %495 = bitcast i8* %494 to <4 x double>*
  store <4 x double> %490, <4 x double>* %495, align 8, !alias.scope !112, !noalias !114
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1096 = add <4 x i64> %vec.ind1095, <i64 4, i64 4, i64 4, i64 4>
  %496 = icmp eq i64 %index.next1092, 32
  br i1 %496, label %polly.loop_exit804.1.1, label %vector.body1089, !llvm.loop !141

polly.loop_exit804.1.1:                           ; preds = %vector.body1089
  %polly.indvar_next800.1.1 = add nuw nsw i64 %polly.indvar799.1.1, 1
  %exitcond957.1.1.not = icmp eq i64 %polly.indvar_next800.1.1, 32
  br i1 %exitcond957.1.1.not, label %polly.loop_header796.2.1, label %polly.loop_header796.1.1

polly.loop_header796.2.1:                         ; preds = %polly.loop_exit804.1.1, %polly.loop_exit804.2.1
  %polly.indvar799.2.1 = phi i64 [ %polly.indvar_next800.2.1, %polly.loop_exit804.2.1 ], [ 0, %polly.loop_exit804.1.1 ]
  %497 = add nuw nsw i64 %polly.indvar799.2.1, 32
  %498 = mul nuw nsw i64 %497, 640
  %499 = trunc i64 %497 to i32
  %broadcast.splatinsert1109 = insertelement <4 x i32> poison, i32 %499, i32 0
  %broadcast.splat1110 = shufflevector <4 x i32> %broadcast.splatinsert1109, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %polly.loop_header796.2.1
  %index1103 = phi i64 [ 0, %polly.loop_header796.2.1 ], [ %index.next1104, %vector.body1101 ]
  %vec.ind1107 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.2.1 ], [ %vec.ind.next1108, %vector.body1101 ]
  %500 = add nuw nsw <4 x i64> %vec.ind1107, <i64 64, i64 64, i64 64, i64 64>
  %501 = trunc <4 x i64> %500 to <4 x i32>
  %502 = mul <4 x i32> %broadcast.splat1110, %501
  %503 = add <4 x i32> %502, <i32 3, i32 3, i32 3, i32 3>
  %504 = urem <4 x i32> %503, <i32 80, i32 80, i32 80, i32 80>
  %505 = sitofp <4 x i32> %504 to <4 x double>
  %506 = fmul fast <4 x double> %505, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %507 = extractelement <4 x i64> %500, i32 0
  %508 = shl i64 %507, 3
  %509 = add nuw nsw i64 %508, %498
  %510 = getelementptr i8, i8* %call, i64 %509
  %511 = bitcast i8* %510 to <4 x double>*
  store <4 x double> %506, <4 x double>* %511, align 8, !alias.scope !112, !noalias !114
  %index.next1104 = add i64 %index1103, 4
  %vec.ind.next1108 = add <4 x i64> %vec.ind1107, <i64 4, i64 4, i64 4, i64 4>
  %512 = icmp eq i64 %index.next1104, 16
  br i1 %512, label %polly.loop_exit804.2.1, label %vector.body1101, !llvm.loop !142

polly.loop_exit804.2.1:                           ; preds = %vector.body1101
  %polly.indvar_next800.2.1 = add nuw nsw i64 %polly.indvar799.2.1, 1
  %exitcond957.2.1.not = icmp eq i64 %polly.indvar_next800.2.1, 32
  br i1 %exitcond957.2.1.not, label %polly.loop_header796.21004, label %polly.loop_header796.2.1

polly.loop_header796.21004:                       ; preds = %polly.loop_exit804.2.1, %polly.loop_exit804.21015
  %polly.indvar799.21003 = phi i64 [ %polly.indvar_next800.21013, %polly.loop_exit804.21015 ], [ 0, %polly.loop_exit804.2.1 ]
  %513 = add nuw nsw i64 %polly.indvar799.21003, 64
  %514 = mul nuw nsw i64 %513, 640
  %515 = trunc i64 %513 to i32
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %515, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1113

vector.body1113:                                  ; preds = %vector.body1113, %polly.loop_header796.21004
  %index1115 = phi i64 [ 0, %polly.loop_header796.21004 ], [ %index.next1116, %vector.body1113 ]
  %vec.ind1121 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header796.21004 ], [ %vec.ind.next1122, %vector.body1113 ]
  %516 = mul <4 x i32> %vec.ind1121, %broadcast.splat1124
  %517 = add <4 x i32> %516, <i32 3, i32 3, i32 3, i32 3>
  %518 = urem <4 x i32> %517, <i32 80, i32 80, i32 80, i32 80>
  %519 = sitofp <4 x i32> %518 to <4 x double>
  %520 = fmul fast <4 x double> %519, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %521 = shl i64 %index1115, 3
  %522 = add nuw nsw i64 %521, %514
  %523 = getelementptr i8, i8* %call, i64 %522
  %524 = bitcast i8* %523 to <4 x double>*
  store <4 x double> %520, <4 x double>* %524, align 8, !alias.scope !112, !noalias !114
  %index.next1116 = add i64 %index1115, 4
  %vec.ind.next1122 = add <4 x i32> %vec.ind1121, <i32 4, i32 4, i32 4, i32 4>
  %525 = icmp eq i64 %index.next1116, 32
  br i1 %525, label %polly.loop_exit804.21015, label %vector.body1113, !llvm.loop !143

polly.loop_exit804.21015:                         ; preds = %vector.body1113
  %polly.indvar_next800.21013 = add nuw nsw i64 %polly.indvar799.21003, 1
  %exitcond957.21014.not = icmp eq i64 %polly.indvar_next800.21013, 16
  br i1 %exitcond957.21014.not, label %polly.loop_header796.1.2, label %polly.loop_header796.21004

polly.loop_header796.1.2:                         ; preds = %polly.loop_exit804.21015, %polly.loop_exit804.1.2
  %polly.indvar799.1.2 = phi i64 [ %polly.indvar_next800.1.2, %polly.loop_exit804.1.2 ], [ 0, %polly.loop_exit804.21015 ]
  %526 = add nuw nsw i64 %polly.indvar799.1.2, 64
  %527 = mul nuw nsw i64 %526, 640
  %528 = trunc i64 %526 to i32
  %broadcast.splatinsert1135 = insertelement <4 x i32> poison, i32 %528, i32 0
  %broadcast.splat1136 = shufflevector <4 x i32> %broadcast.splatinsert1135, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %polly.loop_header796.1.2
  %index1129 = phi i64 [ 0, %polly.loop_header796.1.2 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1133 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.1.2 ], [ %vec.ind.next1134, %vector.body1127 ]
  %529 = add nuw nsw <4 x i64> %vec.ind1133, <i64 32, i64 32, i64 32, i64 32>
  %530 = trunc <4 x i64> %529 to <4 x i32>
  %531 = mul <4 x i32> %broadcast.splat1136, %530
  %532 = add <4 x i32> %531, <i32 3, i32 3, i32 3, i32 3>
  %533 = urem <4 x i32> %532, <i32 80, i32 80, i32 80, i32 80>
  %534 = sitofp <4 x i32> %533 to <4 x double>
  %535 = fmul fast <4 x double> %534, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %536 = extractelement <4 x i64> %529, i32 0
  %537 = shl i64 %536, 3
  %538 = add nuw nsw i64 %537, %527
  %539 = getelementptr i8, i8* %call, i64 %538
  %540 = bitcast i8* %539 to <4 x double>*
  store <4 x double> %535, <4 x double>* %540, align 8, !alias.scope !112, !noalias !114
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1134 = add <4 x i64> %vec.ind1133, <i64 4, i64 4, i64 4, i64 4>
  %541 = icmp eq i64 %index.next1130, 32
  br i1 %541, label %polly.loop_exit804.1.2, label %vector.body1127, !llvm.loop !144

polly.loop_exit804.1.2:                           ; preds = %vector.body1127
  %polly.indvar_next800.1.2 = add nuw nsw i64 %polly.indvar799.1.2, 1
  %exitcond957.1.2.not = icmp eq i64 %polly.indvar_next800.1.2, 16
  br i1 %exitcond957.1.2.not, label %polly.loop_header796.2.2, label %polly.loop_header796.1.2

polly.loop_header796.2.2:                         ; preds = %polly.loop_exit804.1.2, %polly.loop_exit804.2.2
  %polly.indvar799.2.2 = phi i64 [ %polly.indvar_next800.2.2, %polly.loop_exit804.2.2 ], [ 0, %polly.loop_exit804.1.2 ]
  %542 = add nuw nsw i64 %polly.indvar799.2.2, 64
  %543 = mul nuw nsw i64 %542, 640
  %544 = trunc i64 %542 to i32
  %broadcast.splatinsert1147 = insertelement <4 x i32> poison, i32 %544, i32 0
  %broadcast.splat1148 = shufflevector <4 x i32> %broadcast.splatinsert1147, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1139

vector.body1139:                                  ; preds = %vector.body1139, %polly.loop_header796.2.2
  %index1141 = phi i64 [ 0, %polly.loop_header796.2.2 ], [ %index.next1142, %vector.body1139 ]
  %vec.ind1145 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header796.2.2 ], [ %vec.ind.next1146, %vector.body1139 ]
  %545 = add nuw nsw <4 x i64> %vec.ind1145, <i64 64, i64 64, i64 64, i64 64>
  %546 = trunc <4 x i64> %545 to <4 x i32>
  %547 = mul <4 x i32> %broadcast.splat1148, %546
  %548 = add <4 x i32> %547, <i32 3, i32 3, i32 3, i32 3>
  %549 = urem <4 x i32> %548, <i32 80, i32 80, i32 80, i32 80>
  %550 = sitofp <4 x i32> %549 to <4 x double>
  %551 = fmul fast <4 x double> %550, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %552 = extractelement <4 x i64> %545, i32 0
  %553 = shl i64 %552, 3
  %554 = add nuw nsw i64 %553, %543
  %555 = getelementptr i8, i8* %call, i64 %554
  %556 = bitcast i8* %555 to <4 x double>*
  store <4 x double> %551, <4 x double>* %556, align 8, !alias.scope !112, !noalias !114
  %index.next1142 = add i64 %index1141, 4
  %vec.ind.next1146 = add <4 x i64> %vec.ind1145, <i64 4, i64 4, i64 4, i64 4>
  %557 = icmp eq i64 %index.next1142, 16
  br i1 %557, label %polly.loop_exit804.2.2, label %vector.body1139, !llvm.loop !145

polly.loop_exit804.2.2:                           ; preds = %vector.body1139
  %polly.indvar_next800.2.2 = add nuw nsw i64 %polly.indvar799.2.2, 1
  %exitcond957.2.2.not = icmp eq i64 %polly.indvar_next800.2.2, 16
  br i1 %exitcond957.2.2.not, label %polly.loop_header823, label %polly.loop_header796.2.2
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
!21 = distinct !{!"A"}
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 64}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 8}
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
!51 = !{!"llvm.loop.tile.size", i32 96}
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
!85 = distinct !{!85, !81, !13}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90, !91, !92}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !87, !"polly.alias.scope.Packed_MemRef_call1"}
!92 = distinct !{!92, !87, !"polly.alias.scope.Packed_MemRef_call2"}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !81, !13}
!95 = !{!86, !89, !91, !92}
!96 = !{!86, !90, !91, !92}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !81, !13}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103, !104, !105}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !100, !"polly.alias.scope.Packed_MemRef_call1"}
!105 = distinct !{!105, !100, !"polly.alias.scope.Packed_MemRef_call2"}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !81, !13}
!108 = !{!99, !102, !104, !105}
!109 = !{!99, !103, !104, !105}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !81, !13}
!112 = distinct !{!112, !113, !"polly.alias.scope.MemRef_call"}
!113 = distinct !{!113, !"polly.alias.scope.domain"}
!114 = !{!115, !116}
!115 = distinct !{!115, !113, !"polly.alias.scope.MemRef_call1"}
!116 = distinct !{!116, !113, !"polly.alias.scope.MemRef_call2"}
!117 = distinct !{!117, !13}
!118 = !{!115, !112}
!119 = distinct !{!119, !13}
!120 = !{!116, !112}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !81, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !81, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !81, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = distinct !{!137, !13}
!138 = distinct !{!138, !13}
!139 = distinct !{!139, !13}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
