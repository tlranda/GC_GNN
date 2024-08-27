; ModuleID = 'syr2k_recreations//mmp_syr2k_S_8.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_8.c"
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
  %call821 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #8
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #8
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1673 = bitcast i8* %call1 to double*
  %polly.access.call1682 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2683 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1682, %call2
  %polly.access.call2702 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2702, %call1
  %2 = or i1 %0, %1
  %polly.access.call722 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call722, %call2
  %4 = icmp ule i8* %polly.access.call2702, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call722, %call1
  %8 = icmp ule i8* %polly.access.call1682, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header807, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1038 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1037 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1036 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1035 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1035, %scevgep1038
  %bound1 = icmp ult i8* %scevgep1037, %scevgep1036
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
  br i1 %exitcond18.not.i, label %vector.ph1042, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1042:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1049 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1050 = shufflevector <4 x i64> %broadcast.splatinsert1049, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1041

vector.body1041:                                  ; preds = %vector.body1041, %vector.ph1042
  %index1043 = phi i64 [ 0, %vector.ph1042 ], [ %index.next1044, %vector.body1041 ]
  %vec.ind1047 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1042 ], [ %vec.ind.next1048, %vector.body1041 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1047, %broadcast.splat1050
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv7.i, i64 %index1043
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1044 = add i64 %index1043, 4
  %vec.ind.next1048 = add <4 x i64> %vec.ind1047, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1044, 80
  br i1 %40, label %for.inc41.i, label %vector.body1041, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1041
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1042, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit868.1.2
  tail call void (...) @polybench_timer_start() #8
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start478, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1465, label %vector.ph1324

vector.ph1324:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %vector.ph1324
  %index1325 = phi i64 [ 0, %vector.ph1324 ], [ %index.next1326, %vector.body1323 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv21.i, i64 %index1325
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1326 = add i64 %index1325, 4
  %46 = icmp eq i64 %index.next1326, %n.vec
  br i1 %46, label %middle.block1321, label %vector.body1323, !llvm.loop !18

middle.block1321:                                 ; preds = %vector.body1323
  %cmp.n1328 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1328, label %for.inc6.i, label %for.body3.i46.preheader1465

for.body3.i46.preheader1465:                      ; preds = %for.body3.i46.preheader, %middle.block1321
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1321 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1465, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1465 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1321, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting479
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start285, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1363 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1363, label %for.body3.i60.preheader1463, label %vector.ph1364

vector.ph1364:                                    ; preds = %for.body3.i60.preheader
  %n.vec1366 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1362

vector.body1362:                                  ; preds = %vector.body1362, %vector.ph1364
  %index1367 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1368, %vector.body1362 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv21.i52, i64 %index1367
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1371, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1368 = add i64 %index1367, 4
  %57 = icmp eq i64 %index.next1368, %n.vec1366
  br i1 %57, label %middle.block1360, label %vector.body1362, !llvm.loop !57

middle.block1360:                                 ; preds = %vector.body1362
  %cmp.n1370 = icmp eq i64 %indvars.iv21.i52, %n.vec1366
  br i1 %cmp.n1370, label %for.inc6.i63, label %for.body3.i60.preheader1463

for.body3.i60.preheader1463:                      ; preds = %for.body3.i60.preheader, %middle.block1360
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1366, %middle.block1360 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1463, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1463 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1360, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting286
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  tail call void (...) @polybench_timer_start() #8
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1413 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1413, label %for.body3.i99.preheader1461, label %vector.ph1414

vector.ph1414:                                    ; preds = %for.body3.i99.preheader
  %n.vec1416 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1412

vector.body1412:                                  ; preds = %vector.body1412, %vector.ph1414
  %index1417 = phi i64 [ 0, %vector.ph1414 ], [ %index.next1418, %vector.body1412 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv21.i91, i64 %index1417
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1421 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1421, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1418 = add i64 %index1417, 4
  %68 = icmp eq i64 %index.next1418, %n.vec1416
  br i1 %68, label %middle.block1410, label %vector.body1412, !llvm.loop !59

middle.block1410:                                 ; preds = %vector.body1412
  %cmp.n1420 = icmp eq i64 %indvars.iv21.i91, %n.vec1416
  br i1 %cmp.n1420, label %for.inc6.i102, label %for.body3.i99.preheader1461

for.body3.i99.preheader1461:                      ; preds = %for.body3.i99.preheader, %middle.block1410
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1416, %middle.block1410 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1461, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1461 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1410, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !61
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #9
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call821, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #9
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !64

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #8
  tail call void @free(i8* %call1) #8
  tail call void @free(i8* %call2) #8
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1425 = phi i64 [ %indvar.next1426, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1425, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1427 = icmp ult i64 %88, 4
  br i1 %min.iters.check1427, label %polly.loop_header192.preheader, label %vector.ph1428

vector.ph1428:                                    ; preds = %polly.loop_header
  %n.vec1430 = and i64 %88, -4
  br label %vector.body1424

vector.body1424:                                  ; preds = %vector.body1424, %vector.ph1428
  %index1431 = phi i64 [ 0, %vector.ph1428 ], [ %index.next1432, %vector.body1424 ]
  %90 = shl nuw nsw i64 %index1431, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1435 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1435, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1432 = add i64 %index1431, 4
  %95 = icmp eq i64 %index.next1432, %n.vec1430
  br i1 %95, label %middle.block1422, label %vector.body1424, !llvm.loop !72

middle.block1422:                                 ; preds = %vector.body1424
  %cmp.n1434 = icmp eq i64 %88, %n.vec1430
  br i1 %cmp.n1434, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1422
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1430, %middle.block1422 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1422
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond906.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1426 = add i64 %indvar1425, 1
  br i1 %exitcond906.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond905.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond904.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 60
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2683, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond903.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv899 = phi i64 [ %indvars.iv.next900, %polly.loop_exit224 ], [ 80, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = shl nuw nsw i64 %polly.indvar219, 3
  %98 = mul nsw i64 %polly.indvar219, -8
  %99 = add nuw nsw i64 %97, 8
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit253
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next900 = add nsw i64 %indvars.iv899, -8
  %exitcond902.not = icmp eq i64 %polly.indvar_next220, 10
  br i1 %exitcond902.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit253, %polly.loop_header216
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit253 ], [ 0, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit253 ], [ %97, %polly.loop_header216 ]
  %smin1439 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 7)
  %smin896 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 7)
  %100 = add nsw i64 %polly.indvar225, %98
  %.not = icmp ult i64 %polly.indvar225, %99
  %polly.access.mul.call1245 = mul nuw nsw i64 %polly.indvar225, 60
  br i1 %.not, label %polly.loop_header228.us, label %polly.loop_header228

polly.loop_header228.us:                          ; preds = %polly.loop_header222, %polly.merge.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.merge.us ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 80
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header228.us
  %polly.indvar237.us = phi i64 [ 0, %polly.loop_header228.us ], [ %polly.indvar_next238.us, %polly.loop_header234.us ]
  %101 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.call1241.us = mul nuw nsw i64 %101, 60
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond894.not = icmp eq i64 %polly.indvar237.us, %smin896
  br i1 %exitcond894.not, label %polly.merge.us, label %polly.loop_header234.us

polly.merge.us:                                   ; preds = %polly.loop_header234.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next232.us, 60
  br i1 %exitcond895.not, label %polly.loop_preheader252, label %polly.loop_header228.us

polly.loop_exit253:                               ; preds = %polly.loop_exit259
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond901.not = icmp eq i64 %indvars.iv.next, %indvars.iv899
  br i1 %exitcond901.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header222, %polly.then
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.then ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar231, 80
  br label %polly.loop_header234

polly.loop_header234:                             ; preds = %polly.loop_header234, %polly.loop_header228
  %polly.indvar237 = phi i64 [ 0, %polly.loop_header228 ], [ %polly.indvar_next238, %polly.loop_header234 ]
  %102 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.call1241 = mul nuw nsw i64 %102, 60
  %polly.access.add.call1242 = add nuw nsw i64 %polly.access.mul.call1241, %polly.indvar231
  %polly.access.call1243 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1242
  %polly.access.call1243.load = load double, double* %polly.access.call1243, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1243.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar237, %smin896
  br i1 %exitcond.not, label %polly.then, label %polly.loop_header234

polly.then:                                       ; preds = %polly.loop_header234
  %polly.access.add.call1246 = add nuw nsw i64 %polly.indvar231, %polly.access.mul.call1245
  %polly.access.call1247 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1246
  %polly.access.call1247.load = load double, double* %polly.access.call1247, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1249 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1, %100
  %polly.access.Packed_MemRef_call1250 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1249
  store double %polly.access.call1247.load, double* %polly.access.Packed_MemRef_call1250, align 8
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next232, 60
  br i1 %exitcond892.not, label %polly.loop_preheader252, label %polly.loop_header228

polly.loop_header251:                             ; preds = %polly.loop_exit259, %polly.loop_preheader252
  %polly.indvar254 = phi i64 [ 0, %polly.loop_preheader252 ], [ %polly.indvar_next255, %polly.loop_exit259 ]
  %polly.access.mul.Packed_MemRef_call1263 = mul nuw nsw i64 %polly.indvar254, 80
  %polly.access.add.Packed_MemRef_call1276 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263, %100
  %polly.access.Packed_MemRef_call1277 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276
  %_p_scalar_278 = load double, double* %polly.access.Packed_MemRef_call1277, align 8
  %polly.access.add.Packed_MemRef_call2268 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1263, %polly.indvar225
  %polly.access.Packed_MemRef_call2269 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2268
  %_p_scalar_270 = load double, double* %polly.access.Packed_MemRef_call2269, align 8
  %n.rnd.up1441 = add nuw nsw i64 %smin1439, 4
  %n.vec1443 = and i64 %n.rnd.up1441, 12
  %broadcast.splatinsert1448 = insertelement <4 x i64> poison, i64 %smin1439, i32 0
  %broadcast.splat1449 = shufflevector <4 x i64> %broadcast.splatinsert1448, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1454 = insertelement <4 x double> poison, double %_p_scalar_270, i32 0
  %broadcast.splat1455 = shufflevector <4 x double> %broadcast.splatinsert1454, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1457 = insertelement <4 x double> poison, double %_p_scalar_278, i32 0
  %broadcast.splat1458 = shufflevector <4 x double> %broadcast.splatinsert1457, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1438

vector.body1438:                                  ; preds = %vector.body1438, %polly.loop_header251
  %index1444 = phi i64 [ 0, %polly.loop_header251 ], [ %index.next1445, %vector.body1438 ]
  %broadcast.splatinsert1450 = insertelement <4 x i64> poison, i64 %index1444, i32 0
  %broadcast.splat1451 = shufflevector <4 x i64> %broadcast.splatinsert1450, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1452 = or <4 x i64> %broadcast.splat1451, <i64 0, i64 1, i64 2, i64 3>
  %103 = icmp ule <4 x i64> %induction1452, %broadcast.splat1449
  %104 = add nuw nsw i64 %index1444, %97
  %105 = add nuw nsw i64 %index1444, %polly.access.mul.Packed_MemRef_call1263
  %106 = getelementptr double, double* %Packed_MemRef_call1, i64 %105
  %107 = bitcast double* %106 to <4 x double>*
  %wide.masked.load1453 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %107, i32 8, <4 x i1> %103, <4 x double> poison)
  %108 = fmul fast <4 x double> %broadcast.splat1455, %wide.masked.load1453
  %109 = add nuw nsw i64 %104, %polly.access.mul.Packed_MemRef_call1263
  %110 = getelementptr double, double* %Packed_MemRef_call2, i64 %109
  %111 = bitcast double* %110 to <4 x double>*
  %wide.masked.load1456 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %111, i32 8, <4 x i1> %103, <4 x double> poison)
  %112 = fmul fast <4 x double> %broadcast.splat1458, %wide.masked.load1456
  %113 = shl i64 %104, 3
  %114 = getelementptr i8, i8* %scevgep279, i64 %113
  %115 = bitcast i8* %114 to <4 x double>*
  %wide.masked.load1459 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %115, i32 8, <4 x i1> %103, <4 x double> poison), !alias.scope !65, !noalias !67
  %116 = fadd fast <4 x double> %112, %108
  %117 = fmul fast <4 x double> %116, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %118 = fadd fast <4 x double> %117, %wide.masked.load1459
  %119 = bitcast i8* %114 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %118, <4 x double>* %119, i32 8, <4 x i1> %103), !alias.scope !65, !noalias !67
  %index.next1445 = add i64 %index1444, 4
  %120 = icmp eq i64 %index.next1445, %n.vec1443
  br i1 %120, label %polly.loop_exit259, label %vector.body1438, !llvm.loop !77

polly.loop_exit259:                               ; preds = %vector.body1438
  %polly.indvar_next255 = add nuw nsw i64 %polly.indvar254, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next255, 60
  br i1 %exitcond898.not, label %polly.loop_exit253, label %polly.loop_header251

polly.loop_preheader252:                          ; preds = %polly.then, %polly.merge.us
  %121 = mul nuw nsw i64 %polly.indvar225, 640
  %scevgep279 = getelementptr i8, i8* %call, i64 %121
  br label %polly.loop_header251

polly.start285:                                   ; preds = %kernel_syr2k.exit
  %malloccall287 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  %malloccall289 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header373

polly.exiting286:                                 ; preds = %polly.loop_exit413
  tail call void @free(i8* nonnull %malloccall287)
  tail call void @free(i8* nonnull %malloccall289)
  br label %kernel_syr2k.exit90

polly.loop_header373:                             ; preds = %polly.loop_exit381, %polly.start285
  %indvar1375 = phi i64 [ %indvar.next1376, %polly.loop_exit381 ], [ 0, %polly.start285 ]
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit381 ], [ 1, %polly.start285 ]
  %122 = add i64 %indvar1375, 1
  %123 = mul nuw nsw i64 %polly.indvar376, 640
  %scevgep385 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1377 = icmp ult i64 %122, 4
  br i1 %min.iters.check1377, label %polly.loop_header379.preheader, label %vector.ph1378

vector.ph1378:                                    ; preds = %polly.loop_header373
  %n.vec1380 = and i64 %122, -4
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %vector.ph1378
  %index1381 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1382, %vector.body1374 ]
  %124 = shl nuw nsw i64 %index1381, 3
  %125 = getelementptr i8, i8* %scevgep385, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1385 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !78, !noalias !80
  %127 = fmul fast <4 x double> %wide.load1385, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !78, !noalias !80
  %index.next1382 = add i64 %index1381, 4
  %129 = icmp eq i64 %index.next1382, %n.vec1380
  br i1 %129, label %middle.block1372, label %vector.body1374, !llvm.loop !85

middle.block1372:                                 ; preds = %vector.body1374
  %cmp.n1384 = icmp eq i64 %122, %n.vec1380
  br i1 %cmp.n1384, label %polly.loop_exit381, label %polly.loop_header379.preheader

polly.loop_header379.preheader:                   ; preds = %polly.loop_header373, %middle.block1372
  %polly.indvar382.ph = phi i64 [ 0, %polly.loop_header373 ], [ %n.vec1380, %middle.block1372 ]
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_header379, %middle.block1372
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond925.not = icmp eq i64 %polly.indvar_next377, 80
  %indvar.next1376 = add i64 %indvar1375, 1
  br i1 %exitcond925.not, label %polly.loop_header389.preheader, label %polly.loop_header373

polly.loop_header389.preheader:                   ; preds = %polly.loop_exit381
  %Packed_MemRef_call1288 = bitcast i8* %malloccall287 to double*
  %Packed_MemRef_call2290 = bitcast i8* %malloccall289 to double*
  br label %polly.loop_header389

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_header379
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_header379 ], [ %polly.indvar382.ph, %polly.loop_header379.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar382, 3
  %scevgep386 = getelementptr i8, i8* %scevgep385, i64 %130
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_388, 1.200000e+00
  store double %p_mul.i57, double* %scevgep386387, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next383, %polly.indvar376
  br i1 %exitcond924.not, label %polly.loop_exit381, label %polly.loop_header379, !llvm.loop !86

polly.loop_header389:                             ; preds = %polly.loop_header389.preheader, %polly.loop_exit397
  %polly.indvar392 = phi i64 [ %polly.indvar_next393, %polly.loop_exit397 ], [ 0, %polly.loop_header389.preheader ]
  %polly.access.mul.Packed_MemRef_call2290 = mul nuw nsw i64 %polly.indvar392, 80
  br label %polly.loop_header395

polly.loop_exit397:                               ; preds = %polly.loop_header395
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %exitcond923.not = icmp eq i64 %polly.indvar_next393, 60
  br i1 %exitcond923.not, label %polly.loop_header405, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_header395, %polly.loop_header389
  %polly.indvar398 = phi i64 [ 0, %polly.loop_header389 ], [ %polly.indvar_next399, %polly.loop_header395 ]
  %polly.access.mul.call2402 = mul nuw nsw i64 %polly.indvar398, 60
  %polly.access.add.call2403 = add nuw nsw i64 %polly.access.mul.call2402, %polly.indvar392
  %polly.access.call2404 = getelementptr double, double* %polly.access.cast.call2683, i64 %polly.access.add.call2403
  %polly.access.call2404.load = load double, double* %polly.access.call2404, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call2290 = add nuw nsw i64 %polly.indvar398, %polly.access.mul.Packed_MemRef_call2290
  %polly.access.Packed_MemRef_call2290 = getelementptr double, double* %Packed_MemRef_call2290, i64 %polly.access.add.Packed_MemRef_call2290
  store double %polly.access.call2404.load, double* %polly.access.Packed_MemRef_call2290, align 8
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %exitcond922.not = icmp eq i64 %polly.indvar_next399, 80
  br i1 %exitcond922.not, label %polly.loop_exit397, label %polly.loop_header395

polly.loop_header405:                             ; preds = %polly.loop_exit397, %polly.loop_exit413
  %indvars.iv918 = phi i64 [ %indvars.iv.next919, %polly.loop_exit413 ], [ 80, %polly.loop_exit397 ]
  %polly.indvar408 = phi i64 [ %polly.indvar_next409, %polly.loop_exit413 ], [ 0, %polly.loop_exit397 ]
  %131 = shl nuw nsw i64 %polly.indvar408, 3
  %132 = mul nsw i64 %polly.indvar408, -8
  %133 = add nuw nsw i64 %131, 8
  br label %polly.loop_header411

polly.loop_exit413:                               ; preds = %polly.loop_exit446
  %polly.indvar_next409 = add nuw nsw i64 %polly.indvar408, 1
  %indvars.iv.next919 = add nsw i64 %indvars.iv918, -8
  %exitcond921.not = icmp eq i64 %polly.indvar_next409, 10
  br i1 %exitcond921.not, label %polly.exiting286, label %polly.loop_header405

polly.loop_header411:                             ; preds = %polly.loop_exit446, %polly.loop_header405
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %polly.loop_exit446 ], [ 0, %polly.loop_header405 ]
  %polly.indvar414 = phi i64 [ %polly.indvar_next415, %polly.loop_exit446 ], [ %131, %polly.loop_header405 ]
  %smin1389 = call i64 @llvm.smin.i64(i64 %indvars.iv907, i64 7)
  %smin915 = call i64 @llvm.smin.i64(i64 %indvars.iv907, i64 7)
  %134 = add nsw i64 %polly.indvar414, %132
  %.not875 = icmp ult i64 %polly.indvar414, %133
  %polly.access.mul.call1438 = mul nuw nsw i64 %polly.indvar414, 60
  br i1 %.not875, label %polly.loop_header417.us, label %polly.loop_header417

polly.loop_header417.us:                          ; preds = %polly.loop_header411, %polly.merge434.us
  %polly.indvar420.us = phi i64 [ %polly.indvar_next421.us, %polly.merge434.us ], [ 0, %polly.loop_header411 ]
  %polly.access.mul.Packed_MemRef_call1288.us = mul nuw nsw i64 %polly.indvar420.us, 80
  br label %polly.loop_header423.us

polly.loop_header423.us:                          ; preds = %polly.loop_header423.us, %polly.loop_header417.us
  %polly.indvar426.us = phi i64 [ 0, %polly.loop_header417.us ], [ %polly.indvar_next427.us, %polly.loop_header423.us ]
  %135 = add nuw nsw i64 %polly.indvar426.us, %131
  %polly.access.mul.call1430.us = mul nuw nsw i64 %135, 60
  %polly.access.add.call1431.us = add nuw nsw i64 %polly.access.mul.call1430.us, %polly.indvar420.us
  %polly.access.call1432.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1431.us
  %polly.access.call1432.load.us = load double, double* %polly.access.call1432.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1288.us = add nuw nsw i64 %polly.indvar426.us, %polly.access.mul.Packed_MemRef_call1288.us
  %polly.access.Packed_MemRef_call1288.us = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288.us
  store double %polly.access.call1432.load.us, double* %polly.access.Packed_MemRef_call1288.us, align 8
  %polly.indvar_next427.us = add nuw nsw i64 %polly.indvar426.us, 1
  %exitcond913.not = icmp eq i64 %polly.indvar426.us, %smin915
  br i1 %exitcond913.not, label %polly.merge434.us, label %polly.loop_header423.us

polly.merge434.us:                                ; preds = %polly.loop_header423.us
  %polly.indvar_next421.us = add nuw nsw i64 %polly.indvar420.us, 1
  %exitcond914.not = icmp eq i64 %polly.indvar_next421.us, 60
  br i1 %exitcond914.not, label %polly.loop_preheader445, label %polly.loop_header417.us

polly.loop_exit446:                               ; preds = %polly.loop_exit452
  %polly.indvar_next415 = add nuw nsw i64 %polly.indvar414, 1
  %indvars.iv.next908 = add nuw nsw i64 %indvars.iv907, 1
  %exitcond920.not = icmp eq i64 %indvars.iv.next908, %indvars.iv918
  br i1 %exitcond920.not, label %polly.loop_exit413, label %polly.loop_header411

polly.loop_header417:                             ; preds = %polly.loop_header411, %polly.then435
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.then435 ], [ 0, %polly.loop_header411 ]
  %polly.access.mul.Packed_MemRef_call1288 = mul nuw nsw i64 %polly.indvar420, 80
  br label %polly.loop_header423

polly.loop_header423:                             ; preds = %polly.loop_header423, %polly.loop_header417
  %polly.indvar426 = phi i64 [ 0, %polly.loop_header417 ], [ %polly.indvar_next427, %polly.loop_header423 ]
  %136 = add nuw nsw i64 %polly.indvar426, %131
  %polly.access.mul.call1430 = mul nuw nsw i64 %136, 60
  %polly.access.add.call1431 = add nuw nsw i64 %polly.access.mul.call1430, %polly.indvar420
  %polly.access.call1432 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1431
  %polly.access.call1432.load = load double, double* %polly.access.call1432, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1288 = add nuw nsw i64 %polly.indvar426, %polly.access.mul.Packed_MemRef_call1288
  %polly.access.Packed_MemRef_call1288 = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288
  store double %polly.access.call1432.load, double* %polly.access.Packed_MemRef_call1288, align 8
  %polly.indvar_next427 = add nuw nsw i64 %polly.indvar426, 1
  %exitcond910.not = icmp eq i64 %polly.indvar426, %smin915
  br i1 %exitcond910.not, label %polly.then435, label %polly.loop_header423

polly.then435:                                    ; preds = %polly.loop_header423
  %polly.access.add.call1439 = add nuw nsw i64 %polly.indvar420, %polly.access.mul.call1438
  %polly.access.call1440 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1439
  %polly.access.call1440.load = load double, double* %polly.access.call1440, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1288442 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1288, %134
  %polly.access.Packed_MemRef_call1288443 = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288442
  store double %polly.access.call1440.load, double* %polly.access.Packed_MemRef_call1288443, align 8
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %exitcond911.not = icmp eq i64 %polly.indvar_next421, 60
  br i1 %exitcond911.not, label %polly.loop_preheader445, label %polly.loop_header417

polly.loop_header444:                             ; preds = %polly.loop_exit452, %polly.loop_preheader445
  %polly.indvar447 = phi i64 [ 0, %polly.loop_preheader445 ], [ %polly.indvar_next448, %polly.loop_exit452 ]
  %polly.access.mul.Packed_MemRef_call1288456 = mul nuw nsw i64 %polly.indvar447, 80
  %polly.access.add.Packed_MemRef_call1288469 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1288456, %134
  %polly.access.Packed_MemRef_call1288470 = getelementptr double, double* %Packed_MemRef_call1288, i64 %polly.access.add.Packed_MemRef_call1288469
  %_p_scalar_471 = load double, double* %polly.access.Packed_MemRef_call1288470, align 8
  %polly.access.add.Packed_MemRef_call2290461 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1288456, %polly.indvar414
  %polly.access.Packed_MemRef_call2290462 = getelementptr double, double* %Packed_MemRef_call2290, i64 %polly.access.add.Packed_MemRef_call2290461
  %_p_scalar_463 = load double, double* %polly.access.Packed_MemRef_call2290462, align 8
  %n.rnd.up1391 = add nuw nsw i64 %smin1389, 4
  %n.vec1393 = and i64 %n.rnd.up1391, 12
  %broadcast.splatinsert1398 = insertelement <4 x i64> poison, i64 %smin1389, i32 0
  %broadcast.splat1399 = shufflevector <4 x i64> %broadcast.splatinsert1398, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1404 = insertelement <4 x double> poison, double %_p_scalar_463, i32 0
  %broadcast.splat1405 = shufflevector <4 x double> %broadcast.splatinsert1404, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1407 = insertelement <4 x double> poison, double %_p_scalar_471, i32 0
  %broadcast.splat1408 = shufflevector <4 x double> %broadcast.splatinsert1407, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1388

vector.body1388:                                  ; preds = %vector.body1388, %polly.loop_header444
  %index1394 = phi i64 [ 0, %polly.loop_header444 ], [ %index.next1395, %vector.body1388 ]
  %broadcast.splatinsert1400 = insertelement <4 x i64> poison, i64 %index1394, i32 0
  %broadcast.splat1401 = shufflevector <4 x i64> %broadcast.splatinsert1400, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1402 = or <4 x i64> %broadcast.splat1401, <i64 0, i64 1, i64 2, i64 3>
  %137 = icmp ule <4 x i64> %induction1402, %broadcast.splat1399
  %138 = add nuw nsw i64 %index1394, %131
  %139 = add nuw nsw i64 %index1394, %polly.access.mul.Packed_MemRef_call1288456
  %140 = getelementptr double, double* %Packed_MemRef_call1288, i64 %139
  %141 = bitcast double* %140 to <4 x double>*
  %wide.masked.load1403 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %141, i32 8, <4 x i1> %137, <4 x double> poison)
  %142 = fmul fast <4 x double> %broadcast.splat1405, %wide.masked.load1403
  %143 = add nuw nsw i64 %138, %polly.access.mul.Packed_MemRef_call1288456
  %144 = getelementptr double, double* %Packed_MemRef_call2290, i64 %143
  %145 = bitcast double* %144 to <4 x double>*
  %wide.masked.load1406 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %145, i32 8, <4 x i1> %137, <4 x double> poison)
  %146 = fmul fast <4 x double> %broadcast.splat1408, %wide.masked.load1406
  %147 = shl i64 %138, 3
  %148 = getelementptr i8, i8* %scevgep472, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  %wide.masked.load1409 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %149, i32 8, <4 x i1> %137, <4 x double> poison), !alias.scope !78, !noalias !80
  %150 = fadd fast <4 x double> %146, %142
  %151 = fmul fast <4 x double> %150, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %152 = fadd fast <4 x double> %151, %wide.masked.load1409
  %153 = bitcast i8* %148 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %152, <4 x double>* %153, i32 8, <4 x i1> %137), !alias.scope !78, !noalias !80
  %index.next1395 = add i64 %index1394, 4
  %154 = icmp eq i64 %index.next1395, %n.vec1393
  br i1 %154, label %polly.loop_exit452, label %vector.body1388, !llvm.loop !89

polly.loop_exit452:                               ; preds = %vector.body1388
  %polly.indvar_next448 = add nuw nsw i64 %polly.indvar447, 1
  %exitcond917.not = icmp eq i64 %polly.indvar_next448, 60
  br i1 %exitcond917.not, label %polly.loop_exit446, label %polly.loop_header444

polly.loop_preheader445:                          ; preds = %polly.then435, %polly.merge434.us
  %155 = mul nuw nsw i64 %polly.indvar414, 640
  %scevgep472 = getelementptr i8, i8* %call, i64 %155
  br label %polly.loop_header444

polly.start478:                                   ; preds = %init_array.exit
  %malloccall480 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  %malloccall482 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #8
  br label %polly.loop_header566

polly.exiting479:                                 ; preds = %polly.loop_exit606
  tail call void @free(i8* nonnull %malloccall480)
  tail call void @free(i8* nonnull %malloccall482)
  br label %kernel_syr2k.exit

polly.loop_header566:                             ; preds = %polly.loop_exit574, %polly.start478
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit574 ], [ 0, %polly.start478 ]
  %polly.indvar569 = phi i64 [ %polly.indvar_next570, %polly.loop_exit574 ], [ 1, %polly.start478 ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar569, 640
  %scevgep578 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check1332 = icmp ult i64 %156, 4
  br i1 %min.iters.check1332, label %polly.loop_header572.preheader, label %vector.ph1333

vector.ph1333:                                    ; preds = %polly.loop_header566
  %n.vec1335 = and i64 %156, -4
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %vector.ph1333
  %index1336 = phi i64 [ 0, %vector.ph1333 ], [ %index.next1337, %vector.body1331 ]
  %158 = shl nuw nsw i64 %index1336, 3
  %159 = getelementptr i8, i8* %scevgep578, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1340 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !90, !noalias !92
  %161 = fmul fast <4 x double> %wide.load1340, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !90, !noalias !92
  %index.next1337 = add i64 %index1336, 4
  %163 = icmp eq i64 %index.next1337, %n.vec1335
  br i1 %163, label %middle.block1329, label %vector.body1331, !llvm.loop !97

middle.block1329:                                 ; preds = %vector.body1331
  %cmp.n1339 = icmp eq i64 %156, %n.vec1335
  br i1 %cmp.n1339, label %polly.loop_exit574, label %polly.loop_header572.preheader

polly.loop_header572.preheader:                   ; preds = %polly.loop_header566, %middle.block1329
  %polly.indvar575.ph = phi i64 [ 0, %polly.loop_header566 ], [ %n.vec1335, %middle.block1329 ]
  br label %polly.loop_header572

polly.loop_exit574:                               ; preds = %polly.loop_header572, %middle.block1329
  %polly.indvar_next570 = add nuw nsw i64 %polly.indvar569, 1
  %exitcond944.not = icmp eq i64 %polly.indvar_next570, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond944.not, label %polly.loop_header582.preheader, label %polly.loop_header566

polly.loop_header582.preheader:                   ; preds = %polly.loop_exit574
  %Packed_MemRef_call1481 = bitcast i8* %malloccall480 to double*
  %Packed_MemRef_call2483 = bitcast i8* %malloccall482 to double*
  br label %polly.loop_header582

polly.loop_header572:                             ; preds = %polly.loop_header572.preheader, %polly.loop_header572
  %polly.indvar575 = phi i64 [ %polly.indvar_next576, %polly.loop_header572 ], [ %polly.indvar575.ph, %polly.loop_header572.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar575, 3
  %scevgep579 = getelementptr i8, i8* %scevgep578, i64 %164
  %scevgep579580 = bitcast i8* %scevgep579 to double*
  %_p_scalar_581 = load double, double* %scevgep579580, align 8, !alias.scope !90, !noalias !92
  %p_mul.i = fmul fast double %_p_scalar_581, 1.200000e+00
  store double %p_mul.i, double* %scevgep579580, align 8, !alias.scope !90, !noalias !92
  %polly.indvar_next576 = add nuw nsw i64 %polly.indvar575, 1
  %exitcond943.not = icmp eq i64 %polly.indvar_next576, %polly.indvar569
  br i1 %exitcond943.not, label %polly.loop_exit574, label %polly.loop_header572, !llvm.loop !98

polly.loop_header582:                             ; preds = %polly.loop_header582.preheader, %polly.loop_exit590
  %polly.indvar585 = phi i64 [ %polly.indvar_next586, %polly.loop_exit590 ], [ 0, %polly.loop_header582.preheader ]
  %polly.access.mul.Packed_MemRef_call2483 = mul nuw nsw i64 %polly.indvar585, 80
  br label %polly.loop_header588

polly.loop_exit590:                               ; preds = %polly.loop_header588
  %polly.indvar_next586 = add nuw nsw i64 %polly.indvar585, 1
  %exitcond942.not = icmp eq i64 %polly.indvar_next586, 60
  br i1 %exitcond942.not, label %polly.loop_header598, label %polly.loop_header582

polly.loop_header588:                             ; preds = %polly.loop_header588, %polly.loop_header582
  %polly.indvar591 = phi i64 [ 0, %polly.loop_header582 ], [ %polly.indvar_next592, %polly.loop_header588 ]
  %polly.access.mul.call2595 = mul nuw nsw i64 %polly.indvar591, 60
  %polly.access.add.call2596 = add nuw nsw i64 %polly.access.mul.call2595, %polly.indvar585
  %polly.access.call2597 = getelementptr double, double* %polly.access.cast.call2683, i64 %polly.access.add.call2596
  %polly.access.call2597.load = load double, double* %polly.access.call2597, align 8, !alias.scope !94, !noalias !99
  %polly.access.add.Packed_MemRef_call2483 = add nuw nsw i64 %polly.indvar591, %polly.access.mul.Packed_MemRef_call2483
  %polly.access.Packed_MemRef_call2483 = getelementptr double, double* %Packed_MemRef_call2483, i64 %polly.access.add.Packed_MemRef_call2483
  store double %polly.access.call2597.load, double* %polly.access.Packed_MemRef_call2483, align 8
  %polly.indvar_next592 = add nuw nsw i64 %polly.indvar591, 1
  %exitcond941.not = icmp eq i64 %polly.indvar_next592, 80
  br i1 %exitcond941.not, label %polly.loop_exit590, label %polly.loop_header588

polly.loop_header598:                             ; preds = %polly.loop_exit590, %polly.loop_exit606
  %indvars.iv937 = phi i64 [ %indvars.iv.next938, %polly.loop_exit606 ], [ 80, %polly.loop_exit590 ]
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_exit606 ], [ 0, %polly.loop_exit590 ]
  %165 = shl nuw nsw i64 %polly.indvar601, 3
  %166 = mul nsw i64 %polly.indvar601, -8
  %167 = add nuw nsw i64 %165, 8
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_exit639
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %indvars.iv.next938 = add nsw i64 %indvars.iv937, -8
  %exitcond940.not = icmp eq i64 %polly.indvar_next602, 10
  br i1 %exitcond940.not, label %polly.exiting479, label %polly.loop_header598

polly.loop_header604:                             ; preds = %polly.loop_exit639, %polly.loop_header598
  %indvars.iv926 = phi i64 [ %indvars.iv.next927, %polly.loop_exit639 ], [ 0, %polly.loop_header598 ]
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_exit639 ], [ %165, %polly.loop_header598 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv926, i64 7)
  %smin934 = call i64 @llvm.smin.i64(i64 %indvars.iv926, i64 7)
  %168 = add nsw i64 %polly.indvar607, %166
  %.not876 = icmp ult i64 %polly.indvar607, %167
  %polly.access.mul.call1631 = mul nuw nsw i64 %polly.indvar607, 60
  br i1 %.not876, label %polly.loop_header610.us, label %polly.loop_header610

polly.loop_header610.us:                          ; preds = %polly.loop_header604, %polly.merge627.us
  %polly.indvar613.us = phi i64 [ %polly.indvar_next614.us, %polly.merge627.us ], [ 0, %polly.loop_header604 ]
  %polly.access.mul.Packed_MemRef_call1481.us = mul nuw nsw i64 %polly.indvar613.us, 80
  br label %polly.loop_header616.us

polly.loop_header616.us:                          ; preds = %polly.loop_header616.us, %polly.loop_header610.us
  %polly.indvar619.us = phi i64 [ 0, %polly.loop_header610.us ], [ %polly.indvar_next620.us, %polly.loop_header616.us ]
  %169 = add nuw nsw i64 %polly.indvar619.us, %165
  %polly.access.mul.call1623.us = mul nuw nsw i64 %169, 60
  %polly.access.add.call1624.us = add nuw nsw i64 %polly.access.mul.call1623.us, %polly.indvar613.us
  %polly.access.call1625.us = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1624.us
  %polly.access.call1625.load.us = load double, double* %polly.access.call1625.us, align 8, !alias.scope !93, !noalias !100
  %polly.access.add.Packed_MemRef_call1481.us = add nuw nsw i64 %polly.indvar619.us, %polly.access.mul.Packed_MemRef_call1481.us
  %polly.access.Packed_MemRef_call1481.us = getelementptr double, double* %Packed_MemRef_call1481, i64 %polly.access.add.Packed_MemRef_call1481.us
  store double %polly.access.call1625.load.us, double* %polly.access.Packed_MemRef_call1481.us, align 8
  %polly.indvar_next620.us = add nuw nsw i64 %polly.indvar619.us, 1
  %exitcond932.not = icmp eq i64 %polly.indvar619.us, %smin934
  br i1 %exitcond932.not, label %polly.merge627.us, label %polly.loop_header616.us

polly.merge627.us:                                ; preds = %polly.loop_header616.us
  %polly.indvar_next614.us = add nuw nsw i64 %polly.indvar613.us, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next614.us, 60
  br i1 %exitcond933.not, label %polly.loop_preheader638, label %polly.loop_header610.us

polly.loop_exit639:                               ; preds = %polly.loop_exit645
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %indvars.iv.next927 = add nuw nsw i64 %indvars.iv926, 1
  %exitcond939.not = icmp eq i64 %indvars.iv.next927, %indvars.iv937
  br i1 %exitcond939.not, label %polly.loop_exit606, label %polly.loop_header604

polly.loop_header610:                             ; preds = %polly.loop_header604, %polly.then628
  %polly.indvar613 = phi i64 [ %polly.indvar_next614, %polly.then628 ], [ 0, %polly.loop_header604 ]
  %polly.access.mul.Packed_MemRef_call1481 = mul nuw nsw i64 %polly.indvar613, 80
  br label %polly.loop_header616

polly.loop_header616:                             ; preds = %polly.loop_header616, %polly.loop_header610
  %polly.indvar619 = phi i64 [ 0, %polly.loop_header610 ], [ %polly.indvar_next620, %polly.loop_header616 ]
  %170 = add nuw nsw i64 %polly.indvar619, %165
  %polly.access.mul.call1623 = mul nuw nsw i64 %170, 60
  %polly.access.add.call1624 = add nuw nsw i64 %polly.access.mul.call1623, %polly.indvar613
  %polly.access.call1625 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1624
  %polly.access.call1625.load = load double, double* %polly.access.call1625, align 8, !alias.scope !93, !noalias !100
  %polly.access.add.Packed_MemRef_call1481 = add nuw nsw i64 %polly.indvar619, %polly.access.mul.Packed_MemRef_call1481
  %polly.access.Packed_MemRef_call1481 = getelementptr double, double* %Packed_MemRef_call1481, i64 %polly.access.add.Packed_MemRef_call1481
  store double %polly.access.call1625.load, double* %polly.access.Packed_MemRef_call1481, align 8
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %exitcond929.not = icmp eq i64 %polly.indvar619, %smin934
  br i1 %exitcond929.not, label %polly.then628, label %polly.loop_header616

polly.then628:                                    ; preds = %polly.loop_header616
  %polly.access.add.call1632 = add nuw nsw i64 %polly.indvar613, %polly.access.mul.call1631
  %polly.access.call1633 = getelementptr double, double* %polly.access.cast.call1673, i64 %polly.access.add.call1632
  %polly.access.call1633.load = load double, double* %polly.access.call1633, align 8, !alias.scope !93, !noalias !100
  %polly.access.add.Packed_MemRef_call1481635 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1481, %168
  %polly.access.Packed_MemRef_call1481636 = getelementptr double, double* %Packed_MemRef_call1481, i64 %polly.access.add.Packed_MemRef_call1481635
  store double %polly.access.call1633.load, double* %polly.access.Packed_MemRef_call1481636, align 8
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond930.not = icmp eq i64 %polly.indvar_next614, 60
  br i1 %exitcond930.not, label %polly.loop_preheader638, label %polly.loop_header610

polly.loop_header637:                             ; preds = %polly.loop_exit645, %polly.loop_preheader638
  %polly.indvar640 = phi i64 [ 0, %polly.loop_preheader638 ], [ %polly.indvar_next641, %polly.loop_exit645 ]
  %polly.access.mul.Packed_MemRef_call1481649 = mul nuw nsw i64 %polly.indvar640, 80
  %polly.access.add.Packed_MemRef_call1481662 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1481649, %168
  %polly.access.Packed_MemRef_call1481663 = getelementptr double, double* %Packed_MemRef_call1481, i64 %polly.access.add.Packed_MemRef_call1481662
  %_p_scalar_664 = load double, double* %polly.access.Packed_MemRef_call1481663, align 8
  %polly.access.add.Packed_MemRef_call2483654 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1481649, %polly.indvar607
  %polly.access.Packed_MemRef_call2483655 = getelementptr double, double* %Packed_MemRef_call2483, i64 %polly.access.add.Packed_MemRef_call2483654
  %_p_scalar_656 = load double, double* %polly.access.Packed_MemRef_call2483655, align 8
  %n.rnd.up = add nuw nsw i64 %smin, 4
  %n.vec1346 = and i64 %n.rnd.up, 12
  %broadcast.splatinsert1350 = insertelement <4 x i64> poison, i64 %smin, i32 0
  %broadcast.splat1351 = shufflevector <4 x i64> %broadcast.splatinsert1350, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1354 = insertelement <4 x double> poison, double %_p_scalar_656, i32 0
  %broadcast.splat1355 = shufflevector <4 x double> %broadcast.splatinsert1354, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1357 = insertelement <4 x double> poison, double %_p_scalar_664, i32 0
  %broadcast.splat1358 = shufflevector <4 x double> %broadcast.splatinsert1357, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1343

vector.body1343:                                  ; preds = %vector.body1343, %polly.loop_header637
  %index1347 = phi i64 [ 0, %polly.loop_header637 ], [ %index.next1348, %vector.body1343 ]
  %broadcast.splatinsert1352 = insertelement <4 x i64> poison, i64 %index1347, i32 0
  %broadcast.splat1353 = shufflevector <4 x i64> %broadcast.splatinsert1352, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or <4 x i64> %broadcast.splat1353, <i64 0, i64 1, i64 2, i64 3>
  %171 = icmp ule <4 x i64> %induction, %broadcast.splat1351
  %172 = add nuw nsw i64 %index1347, %165
  %173 = add nuw nsw i64 %index1347, %polly.access.mul.Packed_MemRef_call1481649
  %174 = getelementptr double, double* %Packed_MemRef_call1481, i64 %173
  %175 = bitcast double* %174 to <4 x double>*
  %wide.masked.load = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %175, i32 8, <4 x i1> %171, <4 x double> poison)
  %176 = fmul fast <4 x double> %broadcast.splat1355, %wide.masked.load
  %177 = add nuw nsw i64 %172, %polly.access.mul.Packed_MemRef_call1481649
  %178 = getelementptr double, double* %Packed_MemRef_call2483, i64 %177
  %179 = bitcast double* %178 to <4 x double>*
  %wide.masked.load1356 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %179, i32 8, <4 x i1> %171, <4 x double> poison)
  %180 = fmul fast <4 x double> %broadcast.splat1358, %wide.masked.load1356
  %181 = shl i64 %172, 3
  %182 = getelementptr i8, i8* %scevgep665, i64 %181
  %183 = bitcast i8* %182 to <4 x double>*
  %wide.masked.load1359 = call <4 x double> @llvm.masked.load.v4f64.p0v4f64(<4 x double>* %183, i32 8, <4 x i1> %171, <4 x double> poison), !alias.scope !90, !noalias !92
  %184 = fadd fast <4 x double> %180, %176
  %185 = fmul fast <4 x double> %184, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %186 = fadd fast <4 x double> %185, %wide.masked.load1359
  %187 = bitcast i8* %182 to <4 x double>*
  call void @llvm.masked.store.v4f64.p0v4f64(<4 x double> %186, <4 x double>* %187, i32 8, <4 x i1> %171), !alias.scope !90, !noalias !92
  %index.next1348 = add i64 %index1347, 4
  %188 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %188, label %polly.loop_exit645, label %vector.body1343, !llvm.loop !101

polly.loop_exit645:                               ; preds = %vector.body1343
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %exitcond936.not = icmp eq i64 %polly.indvar_next641, 60
  br i1 %exitcond936.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_preheader638:                          ; preds = %polly.then628, %polly.merge627.us
  %189 = mul nuw nsw i64 %polly.indvar607, 640
  %scevgep665 = getelementptr i8, i8* %call, i64 %189
  br label %polly.loop_header637

polly.loop_header807:                             ; preds = %entry, %polly.loop_exit815
  %polly.indvar810 = phi i64 [ %polly.indvar_next811, %polly.loop_exit815 ], [ 0, %entry ]
  %190 = mul nuw nsw i64 %polly.indvar810, 640
  %191 = trunc i64 %polly.indvar810 to i32
  %broadcast.splatinsert1063 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat1064 = shufflevector <4 x i32> %broadcast.splatinsert1063, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %polly.loop_header807
  %index1055 = phi i64 [ 0, %polly.loop_header807 ], [ %index.next1056, %vector.body1053 ]
  %vec.ind1061 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header807 ], [ %vec.ind.next1062, %vector.body1053 ]
  %192 = mul <4 x i32> %vec.ind1061, %broadcast.splat1064
  %193 = add <4 x i32> %192, <i32 3, i32 3, i32 3, i32 3>
  %194 = urem <4 x i32> %193, <i32 80, i32 80, i32 80, i32 80>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %197 = shl i64 %index1055, 3
  %198 = add nuw nsw i64 %197, %190
  %199 = getelementptr i8, i8* %call, i64 %198
  %200 = bitcast i8* %199 to <4 x double>*
  store <4 x double> %196, <4 x double>* %200, align 8, !alias.scope !102, !noalias !104
  %index.next1056 = add i64 %index1055, 4
  %vec.ind.next1062 = add <4 x i32> %vec.ind1061, <i32 4, i32 4, i32 4, i32 4>
  %201 = icmp eq i64 %index.next1056, 32
  br i1 %201, label %polly.loop_exit815, label %vector.body1053, !llvm.loop !107

polly.loop_exit815:                               ; preds = %vector.body1053
  %polly.indvar_next811 = add nuw nsw i64 %polly.indvar810, 1
  %exitcond964.not = icmp eq i64 %polly.indvar_next811, 32
  br i1 %exitcond964.not, label %polly.loop_header807.1, label %polly.loop_header807

polly.loop_header834:                             ; preds = %polly.loop_exit815.2.2, %polly.loop_exit842
  %polly.indvar837 = phi i64 [ %polly.indvar_next838, %polly.loop_exit842 ], [ 0, %polly.loop_exit815.2.2 ]
  %202 = mul nuw nsw i64 %polly.indvar837, 480
  %203 = trunc i64 %polly.indvar837 to i32
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %polly.loop_header834
  %index1169 = phi i64 [ 0, %polly.loop_header834 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1175 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834 ], [ %vec.ind.next1176, %vector.body1167 ]
  %204 = mul <4 x i32> %vec.ind1175, %broadcast.splat1178
  %205 = add <4 x i32> %204, <i32 2, i32 2, i32 2, i32 2>
  %206 = urem <4 x i32> %205, <i32 60, i32 60, i32 60, i32 60>
  %207 = sitofp <4 x i32> %206 to <4 x double>
  %208 = fmul fast <4 x double> %207, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %209 = shl i64 %index1169, 3
  %210 = add i64 %209, %202
  %211 = getelementptr i8, i8* %call2, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %208, <4 x double>* %212, align 8, !alias.scope !106, !noalias !108
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1176 = add <4 x i32> %vec.ind1175, <i32 4, i32 4, i32 4, i32 4>
  %213 = icmp eq i64 %index.next1170, 32
  br i1 %213, label %polly.loop_exit842, label %vector.body1167, !llvm.loop !109

polly.loop_exit842:                               ; preds = %vector.body1167
  %polly.indvar_next838 = add nuw nsw i64 %polly.indvar837, 1
  %exitcond955.not = icmp eq i64 %polly.indvar_next838, 32
  br i1 %exitcond955.not, label %polly.loop_header834.1, label %polly.loop_header834

polly.loop_header860:                             ; preds = %polly.loop_exit842.1.2, %polly.loop_exit868
  %polly.indvar863 = phi i64 [ %polly.indvar_next864, %polly.loop_exit868 ], [ 0, %polly.loop_exit842.1.2 ]
  %214 = mul nuw nsw i64 %polly.indvar863, 480
  %215 = trunc i64 %polly.indvar863 to i32
  %broadcast.splatinsert1255 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat1256 = shufflevector <4 x i32> %broadcast.splatinsert1255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %polly.loop_header860
  %index1247 = phi i64 [ 0, %polly.loop_header860 ], [ %index.next1248, %vector.body1245 ]
  %vec.ind1253 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header860 ], [ %vec.ind.next1254, %vector.body1245 ]
  %216 = mul <4 x i32> %vec.ind1253, %broadcast.splat1256
  %217 = add <4 x i32> %216, <i32 1, i32 1, i32 1, i32 1>
  %218 = urem <4 x i32> %217, <i32 80, i32 80, i32 80, i32 80>
  %219 = sitofp <4 x i32> %218 to <4 x double>
  %220 = fmul fast <4 x double> %219, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %221 = shl i64 %index1247, 3
  %222 = add i64 %221, %214
  %223 = getelementptr i8, i8* %call1, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %220, <4 x double>* %224, align 8, !alias.scope !105, !noalias !110
  %index.next1248 = add i64 %index1247, 4
  %vec.ind.next1254 = add <4 x i32> %vec.ind1253, <i32 4, i32 4, i32 4, i32 4>
  %225 = icmp eq i64 %index.next1248, 32
  br i1 %225, label %polly.loop_exit868, label %vector.body1245, !llvm.loop !111

polly.loop_exit868:                               ; preds = %vector.body1245
  %polly.indvar_next864 = add nuw nsw i64 %polly.indvar863, 1
  %exitcond949.not = icmp eq i64 %polly.indvar_next864, 32
  br i1 %exitcond949.not, label %polly.loop_header860.1, label %polly.loop_header860

polly.loop_header860.1:                           ; preds = %polly.loop_exit868, %polly.loop_exit868.1
  %polly.indvar863.1 = phi i64 [ %polly.indvar_next864.1, %polly.loop_exit868.1 ], [ 0, %polly.loop_exit868 ]
  %226 = mul nuw nsw i64 %polly.indvar863.1, 480
  %227 = trunc i64 %polly.indvar863.1 to i32
  %broadcast.splatinsert1267 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1268 = shufflevector <4 x i32> %broadcast.splatinsert1267, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %polly.loop_header860.1
  %index1261 = phi i64 [ 0, %polly.loop_header860.1 ], [ %index.next1262, %vector.body1259 ]
  %vec.ind1265 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header860.1 ], [ %vec.ind.next1266, %vector.body1259 ]
  %228 = add nuw nsw <4 x i64> %vec.ind1265, <i64 32, i64 32, i64 32, i64 32>
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat1268, %229
  %231 = add <4 x i32> %230, <i32 1, i32 1, i32 1, i32 1>
  %232 = urem <4 x i32> %231, <i32 80, i32 80, i32 80, i32 80>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add i64 %236, %226
  %238 = getelementptr i8, i8* %call1, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !105, !noalias !110
  %index.next1262 = add i64 %index1261, 4
  %vec.ind.next1266 = add <4 x i64> %vec.ind1265, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next1262, 28
  br i1 %240, label %polly.loop_exit868.1, label %vector.body1259, !llvm.loop !112

polly.loop_exit868.1:                             ; preds = %vector.body1259
  %polly.indvar_next864.1 = add nuw nsw i64 %polly.indvar863.1, 1
  %exitcond949.1.not = icmp eq i64 %polly.indvar_next864.1, 32
  br i1 %exitcond949.1.not, label %polly.loop_header860.1972, label %polly.loop_header860.1

polly.loop_header860.1972:                        ; preds = %polly.loop_exit868.1, %polly.loop_exit868.1983
  %polly.indvar863.1971 = phi i64 [ %polly.indvar_next864.1981, %polly.loop_exit868.1983 ], [ 0, %polly.loop_exit868.1 ]
  %241 = add nuw nsw i64 %polly.indvar863.1971, 32
  %242 = mul nuw nsw i64 %241, 480
  %243 = trunc i64 %241 to i32
  %broadcast.splatinsert1281 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat1282 = shufflevector <4 x i32> %broadcast.splatinsert1281, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %polly.loop_header860.1972
  %index1273 = phi i64 [ 0, %polly.loop_header860.1972 ], [ %index.next1274, %vector.body1271 ]
  %vec.ind1279 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header860.1972 ], [ %vec.ind.next1280, %vector.body1271 ]
  %244 = mul <4 x i32> %vec.ind1279, %broadcast.splat1282
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 80, i32 80, i32 80, i32 80>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %249 = shl i64 %index1273, 3
  %250 = add i64 %249, %242
  %251 = getelementptr i8, i8* %call1, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %248, <4 x double>* %252, align 8, !alias.scope !105, !noalias !110
  %index.next1274 = add i64 %index1273, 4
  %vec.ind.next1280 = add <4 x i32> %vec.ind1279, <i32 4, i32 4, i32 4, i32 4>
  %253 = icmp eq i64 %index.next1274, 32
  br i1 %253, label %polly.loop_exit868.1983, label %vector.body1271, !llvm.loop !113

polly.loop_exit868.1983:                          ; preds = %vector.body1271
  %polly.indvar_next864.1981 = add nuw nsw i64 %polly.indvar863.1971, 1
  %exitcond949.1982.not = icmp eq i64 %polly.indvar_next864.1981, 32
  br i1 %exitcond949.1982.not, label %polly.loop_header860.1.1, label %polly.loop_header860.1972

polly.loop_header860.1.1:                         ; preds = %polly.loop_exit868.1983, %polly.loop_exit868.1.1
  %polly.indvar863.1.1 = phi i64 [ %polly.indvar_next864.1.1, %polly.loop_exit868.1.1 ], [ 0, %polly.loop_exit868.1983 ]
  %254 = add nuw nsw i64 %polly.indvar863.1.1, 32
  %255 = mul nuw nsw i64 %254, 480
  %256 = trunc i64 %254 to i32
  %broadcast.splatinsert1293 = insertelement <4 x i32> poison, i32 %256, i32 0
  %broadcast.splat1294 = shufflevector <4 x i32> %broadcast.splatinsert1293, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.body1285, %polly.loop_header860.1.1
  %index1287 = phi i64 [ 0, %polly.loop_header860.1.1 ], [ %index.next1288, %vector.body1285 ]
  %vec.ind1291 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header860.1.1 ], [ %vec.ind.next1292, %vector.body1285 ]
  %257 = add nuw nsw <4 x i64> %vec.ind1291, <i64 32, i64 32, i64 32, i64 32>
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat1294, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 80, i32 80, i32 80, i32 80>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add i64 %265, %255
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !105, !noalias !110
  %index.next1288 = add i64 %index1287, 4
  %vec.ind.next1292 = add <4 x i64> %vec.ind1291, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next1288, 28
  br i1 %269, label %polly.loop_exit868.1.1, label %vector.body1285, !llvm.loop !114

polly.loop_exit868.1.1:                           ; preds = %vector.body1285
  %polly.indvar_next864.1.1 = add nuw nsw i64 %polly.indvar863.1.1, 1
  %exitcond949.1.1.not = icmp eq i64 %polly.indvar_next864.1.1, 32
  br i1 %exitcond949.1.1.not, label %polly.loop_header860.2, label %polly.loop_header860.1.1

polly.loop_header860.2:                           ; preds = %polly.loop_exit868.1.1, %polly.loop_exit868.2
  %polly.indvar863.2 = phi i64 [ %polly.indvar_next864.2, %polly.loop_exit868.2 ], [ 0, %polly.loop_exit868.1.1 ]
  %270 = add nuw nsw i64 %polly.indvar863.2, 64
  %271 = mul nuw nsw i64 %270, 480
  %272 = trunc i64 %270 to i32
  %broadcast.splatinsert1307 = insertelement <4 x i32> poison, i32 %272, i32 0
  %broadcast.splat1308 = shufflevector <4 x i32> %broadcast.splatinsert1307, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1297

vector.body1297:                                  ; preds = %vector.body1297, %polly.loop_header860.2
  %index1299 = phi i64 [ 0, %polly.loop_header860.2 ], [ %index.next1300, %vector.body1297 ]
  %vec.ind1305 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header860.2 ], [ %vec.ind.next1306, %vector.body1297 ]
  %273 = mul <4 x i32> %vec.ind1305, %broadcast.splat1308
  %274 = add <4 x i32> %273, <i32 1, i32 1, i32 1, i32 1>
  %275 = urem <4 x i32> %274, <i32 80, i32 80, i32 80, i32 80>
  %276 = sitofp <4 x i32> %275 to <4 x double>
  %277 = fmul fast <4 x double> %276, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %278 = shl i64 %index1299, 3
  %279 = add i64 %278, %271
  %280 = getelementptr i8, i8* %call1, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %277, <4 x double>* %281, align 8, !alias.scope !105, !noalias !110
  %index.next1300 = add i64 %index1299, 4
  %vec.ind.next1306 = add <4 x i32> %vec.ind1305, <i32 4, i32 4, i32 4, i32 4>
  %282 = icmp eq i64 %index.next1300, 32
  br i1 %282, label %polly.loop_exit868.2, label %vector.body1297, !llvm.loop !115

polly.loop_exit868.2:                             ; preds = %vector.body1297
  %polly.indvar_next864.2 = add nuw nsw i64 %polly.indvar863.2, 1
  %exitcond949.2.not = icmp eq i64 %polly.indvar_next864.2, 16
  br i1 %exitcond949.2.not, label %polly.loop_header860.1.2, label %polly.loop_header860.2

polly.loop_header860.1.2:                         ; preds = %polly.loop_exit868.2, %polly.loop_exit868.1.2
  %polly.indvar863.1.2 = phi i64 [ %polly.indvar_next864.1.2, %polly.loop_exit868.1.2 ], [ 0, %polly.loop_exit868.2 ]
  %283 = add nuw nsw i64 %polly.indvar863.1.2, 64
  %284 = mul nuw nsw i64 %283, 480
  %285 = trunc i64 %283 to i32
  %broadcast.splatinsert1319 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1320 = shufflevector <4 x i32> %broadcast.splatinsert1319, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %polly.loop_header860.1.2
  %index1313 = phi i64 [ 0, %polly.loop_header860.1.2 ], [ %index.next1314, %vector.body1311 ]
  %vec.ind1317 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header860.1.2 ], [ %vec.ind.next1318, %vector.body1311 ]
  %286 = add nuw nsw <4 x i64> %vec.ind1317, <i64 32, i64 32, i64 32, i64 32>
  %287 = trunc <4 x i64> %286 to <4 x i32>
  %288 = mul <4 x i32> %broadcast.splat1320, %287
  %289 = add <4 x i32> %288, <i32 1, i32 1, i32 1, i32 1>
  %290 = urem <4 x i32> %289, <i32 80, i32 80, i32 80, i32 80>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %293 = extractelement <4 x i64> %286, i32 0
  %294 = shl i64 %293, 3
  %295 = add i64 %294, %284
  %296 = getelementptr i8, i8* %call1, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %292, <4 x double>* %297, align 8, !alias.scope !105, !noalias !110
  %index.next1314 = add i64 %index1313, 4
  %vec.ind.next1318 = add <4 x i64> %vec.ind1317, <i64 4, i64 4, i64 4, i64 4>
  %298 = icmp eq i64 %index.next1314, 28
  br i1 %298, label %polly.loop_exit868.1.2, label %vector.body1311, !llvm.loop !116

polly.loop_exit868.1.2:                           ; preds = %vector.body1311
  %polly.indvar_next864.1.2 = add nuw nsw i64 %polly.indvar863.1.2, 1
  %exitcond949.1.2.not = icmp eq i64 %polly.indvar_next864.1.2, 16
  br i1 %exitcond949.1.2.not, label %init_array.exit, label %polly.loop_header860.1.2

polly.loop_header834.1:                           ; preds = %polly.loop_exit842, %polly.loop_exit842.1
  %polly.indvar837.1 = phi i64 [ %polly.indvar_next838.1, %polly.loop_exit842.1 ], [ 0, %polly.loop_exit842 ]
  %299 = mul nuw nsw i64 %polly.indvar837.1, 480
  %300 = trunc i64 %polly.indvar837.1 to i32
  %broadcast.splatinsert1189 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1190 = shufflevector <4 x i32> %broadcast.splatinsert1189, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %polly.loop_header834.1
  %index1183 = phi i64 [ 0, %polly.loop_header834.1 ], [ %index.next1184, %vector.body1181 ]
  %vec.ind1187 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1 ], [ %vec.ind.next1188, %vector.body1181 ]
  %301 = add nuw nsw <4 x i64> %vec.ind1187, <i64 32, i64 32, i64 32, i64 32>
  %302 = trunc <4 x i64> %301 to <4 x i32>
  %303 = mul <4 x i32> %broadcast.splat1190, %302
  %304 = add <4 x i32> %303, <i32 2, i32 2, i32 2, i32 2>
  %305 = urem <4 x i32> %304, <i32 60, i32 60, i32 60, i32 60>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %308 = extractelement <4 x i64> %301, i32 0
  %309 = shl i64 %308, 3
  %310 = add i64 %309, %299
  %311 = getelementptr i8, i8* %call2, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %307, <4 x double>* %312, align 8, !alias.scope !106, !noalias !108
  %index.next1184 = add i64 %index1183, 4
  %vec.ind.next1188 = add <4 x i64> %vec.ind1187, <i64 4, i64 4, i64 4, i64 4>
  %313 = icmp eq i64 %index.next1184, 28
  br i1 %313, label %polly.loop_exit842.1, label %vector.body1181, !llvm.loop !117

polly.loop_exit842.1:                             ; preds = %vector.body1181
  %polly.indvar_next838.1 = add nuw nsw i64 %polly.indvar837.1, 1
  %exitcond955.1.not = icmp eq i64 %polly.indvar_next838.1, 32
  br i1 %exitcond955.1.not, label %polly.loop_header834.1986, label %polly.loop_header834.1

polly.loop_header834.1986:                        ; preds = %polly.loop_exit842.1, %polly.loop_exit842.1997
  %polly.indvar837.1985 = phi i64 [ %polly.indvar_next838.1995, %polly.loop_exit842.1997 ], [ 0, %polly.loop_exit842.1 ]
  %314 = add nuw nsw i64 %polly.indvar837.1985, 32
  %315 = mul nuw nsw i64 %314, 480
  %316 = trunc i64 %314 to i32
  %broadcast.splatinsert1203 = insertelement <4 x i32> poison, i32 %316, i32 0
  %broadcast.splat1204 = shufflevector <4 x i32> %broadcast.splatinsert1203, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %polly.loop_header834.1986
  %index1195 = phi i64 [ 0, %polly.loop_header834.1986 ], [ %index.next1196, %vector.body1193 ]
  %vec.ind1201 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834.1986 ], [ %vec.ind.next1202, %vector.body1193 ]
  %317 = mul <4 x i32> %vec.ind1201, %broadcast.splat1204
  %318 = add <4 x i32> %317, <i32 2, i32 2, i32 2, i32 2>
  %319 = urem <4 x i32> %318, <i32 60, i32 60, i32 60, i32 60>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %322 = shl i64 %index1195, 3
  %323 = add i64 %322, %315
  %324 = getelementptr i8, i8* %call2, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %321, <4 x double>* %325, align 8, !alias.scope !106, !noalias !108
  %index.next1196 = add i64 %index1195, 4
  %vec.ind.next1202 = add <4 x i32> %vec.ind1201, <i32 4, i32 4, i32 4, i32 4>
  %326 = icmp eq i64 %index.next1196, 32
  br i1 %326, label %polly.loop_exit842.1997, label %vector.body1193, !llvm.loop !118

polly.loop_exit842.1997:                          ; preds = %vector.body1193
  %polly.indvar_next838.1995 = add nuw nsw i64 %polly.indvar837.1985, 1
  %exitcond955.1996.not = icmp eq i64 %polly.indvar_next838.1995, 32
  br i1 %exitcond955.1996.not, label %polly.loop_header834.1.1, label %polly.loop_header834.1986

polly.loop_header834.1.1:                         ; preds = %polly.loop_exit842.1997, %polly.loop_exit842.1.1
  %polly.indvar837.1.1 = phi i64 [ %polly.indvar_next838.1.1, %polly.loop_exit842.1.1 ], [ 0, %polly.loop_exit842.1997 ]
  %327 = add nuw nsw i64 %polly.indvar837.1.1, 32
  %328 = mul nuw nsw i64 %327, 480
  %329 = trunc i64 %327 to i32
  %broadcast.splatinsert1215 = insertelement <4 x i32> poison, i32 %329, i32 0
  %broadcast.splat1216 = shufflevector <4 x i32> %broadcast.splatinsert1215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %polly.loop_header834.1.1
  %index1209 = phi i64 [ 0, %polly.loop_header834.1.1 ], [ %index.next1210, %vector.body1207 ]
  %vec.ind1213 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1.1 ], [ %vec.ind.next1214, %vector.body1207 ]
  %330 = add nuw nsw <4 x i64> %vec.ind1213, <i64 32, i64 32, i64 32, i64 32>
  %331 = trunc <4 x i64> %330 to <4 x i32>
  %332 = mul <4 x i32> %broadcast.splat1216, %331
  %333 = add <4 x i32> %332, <i32 2, i32 2, i32 2, i32 2>
  %334 = urem <4 x i32> %333, <i32 60, i32 60, i32 60, i32 60>
  %335 = sitofp <4 x i32> %334 to <4 x double>
  %336 = fmul fast <4 x double> %335, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %337 = extractelement <4 x i64> %330, i32 0
  %338 = shl i64 %337, 3
  %339 = add i64 %338, %328
  %340 = getelementptr i8, i8* %call2, i64 %339
  %341 = bitcast i8* %340 to <4 x double>*
  store <4 x double> %336, <4 x double>* %341, align 8, !alias.scope !106, !noalias !108
  %index.next1210 = add i64 %index1209, 4
  %vec.ind.next1214 = add <4 x i64> %vec.ind1213, <i64 4, i64 4, i64 4, i64 4>
  %342 = icmp eq i64 %index.next1210, 28
  br i1 %342, label %polly.loop_exit842.1.1, label %vector.body1207, !llvm.loop !119

polly.loop_exit842.1.1:                           ; preds = %vector.body1207
  %polly.indvar_next838.1.1 = add nuw nsw i64 %polly.indvar837.1.1, 1
  %exitcond955.1.1.not = icmp eq i64 %polly.indvar_next838.1.1, 32
  br i1 %exitcond955.1.1.not, label %polly.loop_header834.2, label %polly.loop_header834.1.1

polly.loop_header834.2:                           ; preds = %polly.loop_exit842.1.1, %polly.loop_exit842.2
  %polly.indvar837.2 = phi i64 [ %polly.indvar_next838.2, %polly.loop_exit842.2 ], [ 0, %polly.loop_exit842.1.1 ]
  %343 = add nuw nsw i64 %polly.indvar837.2, 64
  %344 = mul nuw nsw i64 %343, 480
  %345 = trunc i64 %343 to i32
  %broadcast.splatinsert1229 = insertelement <4 x i32> poison, i32 %345, i32 0
  %broadcast.splat1230 = shufflevector <4 x i32> %broadcast.splatinsert1229, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %polly.loop_header834.2
  %index1221 = phi i64 [ 0, %polly.loop_header834.2 ], [ %index.next1222, %vector.body1219 ]
  %vec.ind1227 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header834.2 ], [ %vec.ind.next1228, %vector.body1219 ]
  %346 = mul <4 x i32> %vec.ind1227, %broadcast.splat1230
  %347 = add <4 x i32> %346, <i32 2, i32 2, i32 2, i32 2>
  %348 = urem <4 x i32> %347, <i32 60, i32 60, i32 60, i32 60>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %351 = shl i64 %index1221, 3
  %352 = add i64 %351, %344
  %353 = getelementptr i8, i8* %call2, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %350, <4 x double>* %354, align 8, !alias.scope !106, !noalias !108
  %index.next1222 = add i64 %index1221, 4
  %vec.ind.next1228 = add <4 x i32> %vec.ind1227, <i32 4, i32 4, i32 4, i32 4>
  %355 = icmp eq i64 %index.next1222, 32
  br i1 %355, label %polly.loop_exit842.2, label %vector.body1219, !llvm.loop !120

polly.loop_exit842.2:                             ; preds = %vector.body1219
  %polly.indvar_next838.2 = add nuw nsw i64 %polly.indvar837.2, 1
  %exitcond955.2.not = icmp eq i64 %polly.indvar_next838.2, 16
  br i1 %exitcond955.2.not, label %polly.loop_header834.1.2, label %polly.loop_header834.2

polly.loop_header834.1.2:                         ; preds = %polly.loop_exit842.2, %polly.loop_exit842.1.2
  %polly.indvar837.1.2 = phi i64 [ %polly.indvar_next838.1.2, %polly.loop_exit842.1.2 ], [ 0, %polly.loop_exit842.2 ]
  %356 = add nuw nsw i64 %polly.indvar837.1.2, 64
  %357 = mul nuw nsw i64 %356, 480
  %358 = trunc i64 %356 to i32
  %broadcast.splatinsert1241 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat1242 = shufflevector <4 x i32> %broadcast.splatinsert1241, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %polly.loop_header834.1.2
  %index1235 = phi i64 [ 0, %polly.loop_header834.1.2 ], [ %index.next1236, %vector.body1233 ]
  %vec.ind1239 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header834.1.2 ], [ %vec.ind.next1240, %vector.body1233 ]
  %359 = add nuw nsw <4 x i64> %vec.ind1239, <i64 32, i64 32, i64 32, i64 32>
  %360 = trunc <4 x i64> %359 to <4 x i32>
  %361 = mul <4 x i32> %broadcast.splat1242, %360
  %362 = add <4 x i32> %361, <i32 2, i32 2, i32 2, i32 2>
  %363 = urem <4 x i32> %362, <i32 60, i32 60, i32 60, i32 60>
  %364 = sitofp <4 x i32> %363 to <4 x double>
  %365 = fmul fast <4 x double> %364, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %366 = extractelement <4 x i64> %359, i32 0
  %367 = shl i64 %366, 3
  %368 = add i64 %367, %357
  %369 = getelementptr i8, i8* %call2, i64 %368
  %370 = bitcast i8* %369 to <4 x double>*
  store <4 x double> %365, <4 x double>* %370, align 8, !alias.scope !106, !noalias !108
  %index.next1236 = add i64 %index1235, 4
  %vec.ind.next1240 = add <4 x i64> %vec.ind1239, <i64 4, i64 4, i64 4, i64 4>
  %371 = icmp eq i64 %index.next1236, 28
  br i1 %371, label %polly.loop_exit842.1.2, label %vector.body1233, !llvm.loop !121

polly.loop_exit842.1.2:                           ; preds = %vector.body1233
  %polly.indvar_next838.1.2 = add nuw nsw i64 %polly.indvar837.1.2, 1
  %exitcond955.1.2.not = icmp eq i64 %polly.indvar_next838.1.2, 16
  br i1 %exitcond955.1.2.not, label %polly.loop_header860, label %polly.loop_header834.1.2

polly.loop_header807.1:                           ; preds = %polly.loop_exit815, %polly.loop_exit815.1
  %polly.indvar810.1 = phi i64 [ %polly.indvar_next811.1, %polly.loop_exit815.1 ], [ 0, %polly.loop_exit815 ]
  %372 = mul nuw nsw i64 %polly.indvar810.1, 640
  %373 = trunc i64 %polly.indvar810.1 to i32
  %broadcast.splatinsert1075 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat1076 = shufflevector <4 x i32> %broadcast.splatinsert1075, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %polly.loop_header807.1
  %index1069 = phi i64 [ 0, %polly.loop_header807.1 ], [ %index.next1070, %vector.body1067 ]
  %vec.ind1073 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.1 ], [ %vec.ind.next1074, %vector.body1067 ]
  %374 = add nuw nsw <4 x i64> %vec.ind1073, <i64 32, i64 32, i64 32, i64 32>
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat1076, %375
  %377 = add <4 x i32> %376, <i32 3, i32 3, i32 3, i32 3>
  %378 = urem <4 x i32> %377, <i32 80, i32 80, i32 80, i32 80>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add nuw nsw i64 %382, %372
  %384 = getelementptr i8, i8* %call, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !102, !noalias !104
  %index.next1070 = add i64 %index1069, 4
  %vec.ind.next1074 = add <4 x i64> %vec.ind1073, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next1070, 32
  br i1 %386, label %polly.loop_exit815.1, label %vector.body1067, !llvm.loop !122

polly.loop_exit815.1:                             ; preds = %vector.body1067
  %polly.indvar_next811.1 = add nuw nsw i64 %polly.indvar810.1, 1
  %exitcond964.1.not = icmp eq i64 %polly.indvar_next811.1, 32
  br i1 %exitcond964.1.not, label %polly.loop_header807.2, label %polly.loop_header807.1

polly.loop_header807.2:                           ; preds = %polly.loop_exit815.1, %polly.loop_exit815.2
  %polly.indvar810.2 = phi i64 [ %polly.indvar_next811.2, %polly.loop_exit815.2 ], [ 0, %polly.loop_exit815.1 ]
  %387 = mul nuw nsw i64 %polly.indvar810.2, 640
  %388 = trunc i64 %polly.indvar810.2 to i32
  %broadcast.splatinsert1087 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1088 = shufflevector <4 x i32> %broadcast.splatinsert1087, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1079

vector.body1079:                                  ; preds = %vector.body1079, %polly.loop_header807.2
  %index1081 = phi i64 [ 0, %polly.loop_header807.2 ], [ %index.next1082, %vector.body1079 ]
  %vec.ind1085 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.2 ], [ %vec.ind.next1086, %vector.body1079 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1085, <i64 64, i64 64, i64 64, i64 64>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1088, %390
  %392 = add <4 x i32> %391, <i32 3, i32 3, i32 3, i32 3>
  %393 = urem <4 x i32> %392, <i32 80, i32 80, i32 80, i32 80>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add nuw nsw i64 %397, %387
  %399 = getelementptr i8, i8* %call, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !102, !noalias !104
  %index.next1082 = add i64 %index1081, 4
  %vec.ind.next1086 = add <4 x i64> %vec.ind1085, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1082, 16
  br i1 %401, label %polly.loop_exit815.2, label %vector.body1079, !llvm.loop !123

polly.loop_exit815.2:                             ; preds = %vector.body1079
  %polly.indvar_next811.2 = add nuw nsw i64 %polly.indvar810.2, 1
  %exitcond964.2.not = icmp eq i64 %polly.indvar_next811.2, 32
  br i1 %exitcond964.2.not, label %polly.loop_header807.11000, label %polly.loop_header807.2

polly.loop_header807.11000:                       ; preds = %polly.loop_exit815.2, %polly.loop_exit815.11011
  %polly.indvar810.1999 = phi i64 [ %polly.indvar_next811.11009, %polly.loop_exit815.11011 ], [ 0, %polly.loop_exit815.2 ]
  %402 = add nuw nsw i64 %polly.indvar810.1999, 32
  %403 = mul nuw nsw i64 %402, 640
  %404 = trunc i64 %402 to i32
  %broadcast.splatinsert1101 = insertelement <4 x i32> poison, i32 %404, i32 0
  %broadcast.splat1102 = shufflevector <4 x i32> %broadcast.splatinsert1101, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1091

vector.body1091:                                  ; preds = %vector.body1091, %polly.loop_header807.11000
  %index1093 = phi i64 [ 0, %polly.loop_header807.11000 ], [ %index.next1094, %vector.body1091 ]
  %vec.ind1099 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header807.11000 ], [ %vec.ind.next1100, %vector.body1091 ]
  %405 = mul <4 x i32> %vec.ind1099, %broadcast.splat1102
  %406 = add <4 x i32> %405, <i32 3, i32 3, i32 3, i32 3>
  %407 = urem <4 x i32> %406, <i32 80, i32 80, i32 80, i32 80>
  %408 = sitofp <4 x i32> %407 to <4 x double>
  %409 = fmul fast <4 x double> %408, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %410 = shl i64 %index1093, 3
  %411 = add nuw nsw i64 %410, %403
  %412 = getelementptr i8, i8* %call, i64 %411
  %413 = bitcast i8* %412 to <4 x double>*
  store <4 x double> %409, <4 x double>* %413, align 8, !alias.scope !102, !noalias !104
  %index.next1094 = add i64 %index1093, 4
  %vec.ind.next1100 = add <4 x i32> %vec.ind1099, <i32 4, i32 4, i32 4, i32 4>
  %414 = icmp eq i64 %index.next1094, 32
  br i1 %414, label %polly.loop_exit815.11011, label %vector.body1091, !llvm.loop !124

polly.loop_exit815.11011:                         ; preds = %vector.body1091
  %polly.indvar_next811.11009 = add nuw nsw i64 %polly.indvar810.1999, 1
  %exitcond964.11010.not = icmp eq i64 %polly.indvar_next811.11009, 32
  br i1 %exitcond964.11010.not, label %polly.loop_header807.1.1, label %polly.loop_header807.11000

polly.loop_header807.1.1:                         ; preds = %polly.loop_exit815.11011, %polly.loop_exit815.1.1
  %polly.indvar810.1.1 = phi i64 [ %polly.indvar_next811.1.1, %polly.loop_exit815.1.1 ], [ 0, %polly.loop_exit815.11011 ]
  %415 = add nuw nsw i64 %polly.indvar810.1.1, 32
  %416 = mul nuw nsw i64 %415, 640
  %417 = trunc i64 %415 to i32
  %broadcast.splatinsert1113 = insertelement <4 x i32> poison, i32 %417, i32 0
  %broadcast.splat1114 = shufflevector <4 x i32> %broadcast.splatinsert1113, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1105

vector.body1105:                                  ; preds = %vector.body1105, %polly.loop_header807.1.1
  %index1107 = phi i64 [ 0, %polly.loop_header807.1.1 ], [ %index.next1108, %vector.body1105 ]
  %vec.ind1111 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.1.1 ], [ %vec.ind.next1112, %vector.body1105 ]
  %418 = add nuw nsw <4 x i64> %vec.ind1111, <i64 32, i64 32, i64 32, i64 32>
  %419 = trunc <4 x i64> %418 to <4 x i32>
  %420 = mul <4 x i32> %broadcast.splat1114, %419
  %421 = add <4 x i32> %420, <i32 3, i32 3, i32 3, i32 3>
  %422 = urem <4 x i32> %421, <i32 80, i32 80, i32 80, i32 80>
  %423 = sitofp <4 x i32> %422 to <4 x double>
  %424 = fmul fast <4 x double> %423, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %425 = extractelement <4 x i64> %418, i32 0
  %426 = shl i64 %425, 3
  %427 = add nuw nsw i64 %426, %416
  %428 = getelementptr i8, i8* %call, i64 %427
  %429 = bitcast i8* %428 to <4 x double>*
  store <4 x double> %424, <4 x double>* %429, align 8, !alias.scope !102, !noalias !104
  %index.next1108 = add i64 %index1107, 4
  %vec.ind.next1112 = add <4 x i64> %vec.ind1111, <i64 4, i64 4, i64 4, i64 4>
  %430 = icmp eq i64 %index.next1108, 32
  br i1 %430, label %polly.loop_exit815.1.1, label %vector.body1105, !llvm.loop !125

polly.loop_exit815.1.1:                           ; preds = %vector.body1105
  %polly.indvar_next811.1.1 = add nuw nsw i64 %polly.indvar810.1.1, 1
  %exitcond964.1.1.not = icmp eq i64 %polly.indvar_next811.1.1, 32
  br i1 %exitcond964.1.1.not, label %polly.loop_header807.2.1, label %polly.loop_header807.1.1

polly.loop_header807.2.1:                         ; preds = %polly.loop_exit815.1.1, %polly.loop_exit815.2.1
  %polly.indvar810.2.1 = phi i64 [ %polly.indvar_next811.2.1, %polly.loop_exit815.2.1 ], [ 0, %polly.loop_exit815.1.1 ]
  %431 = add nuw nsw i64 %polly.indvar810.2.1, 32
  %432 = mul nuw nsw i64 %431, 640
  %433 = trunc i64 %431 to i32
  %broadcast.splatinsert1125 = insertelement <4 x i32> poison, i32 %433, i32 0
  %broadcast.splat1126 = shufflevector <4 x i32> %broadcast.splatinsert1125, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1117

vector.body1117:                                  ; preds = %vector.body1117, %polly.loop_header807.2.1
  %index1119 = phi i64 [ 0, %polly.loop_header807.2.1 ], [ %index.next1120, %vector.body1117 ]
  %vec.ind1123 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.2.1 ], [ %vec.ind.next1124, %vector.body1117 ]
  %434 = add nuw nsw <4 x i64> %vec.ind1123, <i64 64, i64 64, i64 64, i64 64>
  %435 = trunc <4 x i64> %434 to <4 x i32>
  %436 = mul <4 x i32> %broadcast.splat1126, %435
  %437 = add <4 x i32> %436, <i32 3, i32 3, i32 3, i32 3>
  %438 = urem <4 x i32> %437, <i32 80, i32 80, i32 80, i32 80>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = extractelement <4 x i64> %434, i32 0
  %442 = shl i64 %441, 3
  %443 = add nuw nsw i64 %442, %432
  %444 = getelementptr i8, i8* %call, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %440, <4 x double>* %445, align 8, !alias.scope !102, !noalias !104
  %index.next1120 = add i64 %index1119, 4
  %vec.ind.next1124 = add <4 x i64> %vec.ind1123, <i64 4, i64 4, i64 4, i64 4>
  %446 = icmp eq i64 %index.next1120, 16
  br i1 %446, label %polly.loop_exit815.2.1, label %vector.body1117, !llvm.loop !126

polly.loop_exit815.2.1:                           ; preds = %vector.body1117
  %polly.indvar_next811.2.1 = add nuw nsw i64 %polly.indvar810.2.1, 1
  %exitcond964.2.1.not = icmp eq i64 %polly.indvar_next811.2.1, 32
  br i1 %exitcond964.2.1.not, label %polly.loop_header807.21014, label %polly.loop_header807.2.1

polly.loop_header807.21014:                       ; preds = %polly.loop_exit815.2.1, %polly.loop_exit815.21025
  %polly.indvar810.21013 = phi i64 [ %polly.indvar_next811.21023, %polly.loop_exit815.21025 ], [ 0, %polly.loop_exit815.2.1 ]
  %447 = add nuw nsw i64 %polly.indvar810.21013, 64
  %448 = mul nuw nsw i64 %447, 640
  %449 = trunc i64 %447 to i32
  %broadcast.splatinsert1139 = insertelement <4 x i32> poison, i32 %449, i32 0
  %broadcast.splat1140 = shufflevector <4 x i32> %broadcast.splatinsert1139, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %polly.loop_header807.21014
  %index1131 = phi i64 [ 0, %polly.loop_header807.21014 ], [ %index.next1132, %vector.body1129 ]
  %vec.ind1137 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header807.21014 ], [ %vec.ind.next1138, %vector.body1129 ]
  %450 = mul <4 x i32> %vec.ind1137, %broadcast.splat1140
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = shl i64 %index1131, 3
  %456 = add nuw nsw i64 %455, %448
  %457 = getelementptr i8, i8* %call, i64 %456
  %458 = bitcast i8* %457 to <4 x double>*
  store <4 x double> %454, <4 x double>* %458, align 8, !alias.scope !102, !noalias !104
  %index.next1132 = add i64 %index1131, 4
  %vec.ind.next1138 = add <4 x i32> %vec.ind1137, <i32 4, i32 4, i32 4, i32 4>
  %459 = icmp eq i64 %index.next1132, 32
  br i1 %459, label %polly.loop_exit815.21025, label %vector.body1129, !llvm.loop !127

polly.loop_exit815.21025:                         ; preds = %vector.body1129
  %polly.indvar_next811.21023 = add nuw nsw i64 %polly.indvar810.21013, 1
  %exitcond964.21024.not = icmp eq i64 %polly.indvar_next811.21023, 16
  br i1 %exitcond964.21024.not, label %polly.loop_header807.1.2, label %polly.loop_header807.21014

polly.loop_header807.1.2:                         ; preds = %polly.loop_exit815.21025, %polly.loop_exit815.1.2
  %polly.indvar810.1.2 = phi i64 [ %polly.indvar_next811.1.2, %polly.loop_exit815.1.2 ], [ 0, %polly.loop_exit815.21025 ]
  %460 = add nuw nsw i64 %polly.indvar810.1.2, 64
  %461 = mul nuw nsw i64 %460, 640
  %462 = trunc i64 %460 to i32
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %462, i32 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1143

vector.body1143:                                  ; preds = %vector.body1143, %polly.loop_header807.1.2
  %index1145 = phi i64 [ 0, %polly.loop_header807.1.2 ], [ %index.next1146, %vector.body1143 ]
  %vec.ind1149 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.1.2 ], [ %vec.ind.next1150, %vector.body1143 ]
  %463 = add nuw nsw <4 x i64> %vec.ind1149, <i64 32, i64 32, i64 32, i64 32>
  %464 = trunc <4 x i64> %463 to <4 x i32>
  %465 = mul <4 x i32> %broadcast.splat1152, %464
  %466 = add <4 x i32> %465, <i32 3, i32 3, i32 3, i32 3>
  %467 = urem <4 x i32> %466, <i32 80, i32 80, i32 80, i32 80>
  %468 = sitofp <4 x i32> %467 to <4 x double>
  %469 = fmul fast <4 x double> %468, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %470 = extractelement <4 x i64> %463, i32 0
  %471 = shl i64 %470, 3
  %472 = add nuw nsw i64 %471, %461
  %473 = getelementptr i8, i8* %call, i64 %472
  %474 = bitcast i8* %473 to <4 x double>*
  store <4 x double> %469, <4 x double>* %474, align 8, !alias.scope !102, !noalias !104
  %index.next1146 = add i64 %index1145, 4
  %vec.ind.next1150 = add <4 x i64> %vec.ind1149, <i64 4, i64 4, i64 4, i64 4>
  %475 = icmp eq i64 %index.next1146, 32
  br i1 %475, label %polly.loop_exit815.1.2, label %vector.body1143, !llvm.loop !128

polly.loop_exit815.1.2:                           ; preds = %vector.body1143
  %polly.indvar_next811.1.2 = add nuw nsw i64 %polly.indvar810.1.2, 1
  %exitcond964.1.2.not = icmp eq i64 %polly.indvar_next811.1.2, 16
  br i1 %exitcond964.1.2.not, label %polly.loop_header807.2.2, label %polly.loop_header807.1.2

polly.loop_header807.2.2:                         ; preds = %polly.loop_exit815.1.2, %polly.loop_exit815.2.2
  %polly.indvar810.2.2 = phi i64 [ %polly.indvar_next811.2.2, %polly.loop_exit815.2.2 ], [ 0, %polly.loop_exit815.1.2 ]
  %476 = add nuw nsw i64 %polly.indvar810.2.2, 64
  %477 = mul nuw nsw i64 %476, 640
  %478 = trunc i64 %476 to i32
  %broadcast.splatinsert1163 = insertelement <4 x i32> poison, i32 %478, i32 0
  %broadcast.splat1164 = shufflevector <4 x i32> %broadcast.splatinsert1163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %polly.loop_header807.2.2
  %index1157 = phi i64 [ 0, %polly.loop_header807.2.2 ], [ %index.next1158, %vector.body1155 ]
  %vec.ind1161 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.2.2 ], [ %vec.ind.next1162, %vector.body1155 ]
  %479 = add nuw nsw <4 x i64> %vec.ind1161, <i64 64, i64 64, i64 64, i64 64>
  %480 = trunc <4 x i64> %479 to <4 x i32>
  %481 = mul <4 x i32> %broadcast.splat1164, %480
  %482 = add <4 x i32> %481, <i32 3, i32 3, i32 3, i32 3>
  %483 = urem <4 x i32> %482, <i32 80, i32 80, i32 80, i32 80>
  %484 = sitofp <4 x i32> %483 to <4 x double>
  %485 = fmul fast <4 x double> %484, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %486 = extractelement <4 x i64> %479, i32 0
  %487 = shl i64 %486, 3
  %488 = add nuw nsw i64 %487, %477
  %489 = getelementptr i8, i8* %call, i64 %488
  %490 = bitcast i8* %489 to <4 x double>*
  store <4 x double> %485, <4 x double>* %490, align 8, !alias.scope !102, !noalias !104
  %index.next1158 = add i64 %index1157, 4
  %vec.ind.next1162 = add <4 x i64> %vec.ind1161, <i64 4, i64 4, i64 4, i64 4>
  %491 = icmp eq i64 %index.next1158, 16
  br i1 %491, label %polly.loop_exit815.2.2, label %vector.body1155, !llvm.loop !129

polly.loop_exit815.2.2:                           ; preds = %vector.body1155
  %polly.indvar_next811.2.2 = add nuw nsw i64 %polly.indvar810.2.2, 1
  %exitcond964.2.2.not = icmp eq i64 %polly.indvar_next811.2.2, 16
  br i1 %exitcond964.2.2.not, label %polly.loop_header834, label %polly.loop_header807.2.2
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
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 100}
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
!49 = !{!"llvm.loop.tile.size", i32 96}
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
!75 = !{!65, !68, !70, !71}
!76 = !{!65, !69, !70, !71}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83, !84}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !74, !13}
!87 = !{!78, !81, !83, !84}
!88 = !{!78, !82, !83, !84}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94, !95, !96}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !91, !"polly.alias.scope.Packed_MemRef_call1"}
!96 = distinct !{!96, !91, !"polly.alias.scope.Packed_MemRef_call2"}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !74, !13}
!99 = !{!90, !93, !95, !96}
!100 = !{!90, !94, !95, !96}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !103, !"polly.alias.scope.MemRef_call"}
!103 = distinct !{!103, !"polly.alias.scope.domain"}
!104 = !{!105, !106}
!105 = distinct !{!105, !103, !"polly.alias.scope.MemRef_call1"}
!106 = distinct !{!106, !103, !"polly.alias.scope.MemRef_call2"}
!107 = distinct !{!107, !13}
!108 = !{!105, !102}
!109 = distinct !{!109, !13}
!110 = !{!106, !102}
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
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
