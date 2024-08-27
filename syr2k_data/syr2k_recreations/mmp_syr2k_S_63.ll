; ModuleID = 'syr2k_recreations//mmp_syr2k_S_63.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_63.c"
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
  %call712 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1573 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1573, %call2
  %polly.access.call2593 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2593, %call1
  %2 = or i1 %0, %1
  %polly.access.call613 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call613, %call2
  %4 = icmp ule i8* %polly.access.call2593, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call613, %call1
  %8 = icmp ule i8* %polly.access.call1573, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header698, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1036 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1035 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1034 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1033 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1033, %scevgep1036
  %bound1 = icmp ult i8* %scevgep1035, %scevgep1034
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
  br i1 %exitcond18.not.i, label %vector.ph1040, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1040:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1047 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1048 = shufflevector <4 x i64> %broadcast.splatinsert1047, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1039

vector.body1039:                                  ; preds = %vector.body1039, %vector.ph1040
  %index1041 = phi i64 [ 0, %vector.ph1040 ], [ %index.next1042, %vector.body1039 ]
  %vec.ind1045 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1040 ], [ %vec.ind.next1046, %vector.body1039 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1045, %broadcast.splat1048
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv7.i, i64 %index1041
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1042 = add i64 %index1041, 4
  %vec.ind.next1046 = add <4 x i64> %vec.ind1045, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1042, 80
  br i1 %40, label %for.inc41.i, label %vector.body1039, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1039
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1040, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit759.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header491, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1396, label %vector.ph1322

vector.ph1322:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %vector.ph1322
  %index1323 = phi i64 [ 0, %vector.ph1322 ], [ %index.next1324, %vector.body1321 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i, i64 %index1323
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1324 = add i64 %index1323, 4
  %46 = icmp eq i64 %index.next1324, %n.vec
  br i1 %46, label %middle.block1319, label %vector.body1321, !llvm.loop !18

middle.block1319:                                 ; preds = %vector.body1321
  %cmp.n1326 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1326, label %for.inc6.i, label %for.body3.i46.preheader1396

for.body3.i46.preheader1396:                      ; preds = %for.body3.i46.preheader, %middle.block1319
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1319 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1396, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1396 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1319, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !21

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !31

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit529.1.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1342 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1342, label %for.body3.i60.preheader1394, label %vector.ph1343

vector.ph1343:                                    ; preds = %for.body3.i60.preheader
  %n.vec1345 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1341

vector.body1341:                                  ; preds = %vector.body1341, %vector.ph1343
  %index1346 = phi i64 [ 0, %vector.ph1343 ], [ %index.next1347, %vector.body1341 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i52, i64 %index1346
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1350 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1350, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1347 = add i64 %index1346, 4
  %57 = icmp eq i64 %index.next1347, %n.vec1345
  br i1 %57, label %middle.block1339, label %vector.body1341, !llvm.loop !50

middle.block1339:                                 ; preds = %vector.body1341
  %cmp.n1349 = icmp eq i64 %indvars.iv21.i52, %n.vec1345
  br i1 %cmp.n1349, label %for.inc6.i63, label %for.body3.i60.preheader1394

for.body3.i60.preheader1394:                      ; preds = %for.body3.i60.preheader, %middle.block1339
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1345, %middle.block1339 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1394, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1394 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !51

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1339, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !21

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !31

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit374.1.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1368 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1368, label %for.body3.i99.preheader1392, label %vector.ph1369

vector.ph1369:                                    ; preds = %for.body3.i99.preheader
  %n.vec1371 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %vector.ph1369
  %index1372 = phi i64 [ 0, %vector.ph1369 ], [ %index.next1373, %vector.body1367 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i91, i64 %index1372
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1376 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1376, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1373 = add i64 %index1372, 4
  %68 = icmp eq i64 %index.next1373, %n.vec1371
  br i1 %68, label %middle.block1365, label %vector.body1367, !llvm.loop !52

middle.block1365:                                 ; preds = %vector.body1367
  %cmp.n1375 = icmp eq i64 %indvars.iv21.i91, %n.vec1371
  br i1 %cmp.n1375, label %for.inc6.i102, label %for.body3.i99.preheader1392

for.body3.i99.preheader1392:                      ; preds = %for.body3.i99.preheader, %middle.block1365
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1371, %middle.block1365 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1392, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1392 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !53

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1365, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !21

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !31

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit219.1.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !54
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call712, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !56

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !57

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1380 = phi i64 [ %indvar.next1381, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1380, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1382 = icmp ult i64 %88, 4
  br i1 %min.iters.check1382, label %polly.loop_header191.preheader, label %vector.ph1383

vector.ph1383:                                    ; preds = %polly.loop_header
  %n.vec1385 = and i64 %88, -4
  br label %vector.body1379

vector.body1379:                                  ; preds = %vector.body1379, %vector.ph1383
  %index1386 = phi i64 [ 0, %vector.ph1383 ], [ %index.next1387, %vector.body1379 ]
  %90 = shl nuw nsw i64 %index1386, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1390 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !58, !noalias !60
  %93 = fmul fast <4 x double> %wide.load1390, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !58, !noalias !60
  %index.next1387 = add i64 %index1386, 4
  %95 = icmp eq i64 %index.next1387, %n.vec1385
  br i1 %95, label %middle.block1377, label %vector.body1379, !llvm.loop !63

middle.block1377:                                 ; preds = %vector.body1379
  %cmp.n1389 = icmp eq i64 %88, %n.vec1385
  br i1 %cmp.n1389, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1377
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1385, %middle.block1377 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1377
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond780.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1381 = add i64 %indvar1380, 1
  br i1 %exitcond780.not, label %polly.loop_header217.us.preheader, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond779.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

polly.loop_header217.us.preheader:                ; preds = %polly.loop_exit193, %polly.loop_exit219
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_exit193 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 49)
  %97 = mul i64 %polly.indvar214, 480
  %98 = mul i64 %polly.indvar214, 640
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header217.us.preheader, %polly.loop_exit226.loopexit.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit226.loopexit.us ], [ 0, %polly.loop_header217.us.preheader ]
  %99 = shl nuw nsw i64 %polly.indvar220.us, 3
  %scevgep231.us = getelementptr i8, i8* %call1, i64 %99
  %scevgep235.us = getelementptr i8, i8* %call2, i64 %99
  %scevgep236.us = getelementptr i8, i8* %scevgep235.us, i64 %97
  %scevgep236237.us = bitcast i8* %scevgep236.us to double*
  %_p_scalar_238.us = load double, double* %scevgep236237.us, align 8, !alias.scope !62, !noalias !66
  %scevgep244.us = getelementptr i8, i8* %scevgep231.us, i64 %97
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header224.us

polly.loop_header224.us:                          ; preds = %polly.loop_header224.us, %polly.loop_header217.us
  %polly.indvar228.us = phi i64 [ 0, %polly.loop_header217.us ], [ %polly.indvar_next229.us, %polly.loop_header224.us ]
  %100 = mul nuw nsw i64 %polly.indvar228.us, 480
  %scevgep232.us = getelementptr i8, i8* %scevgep231.us, i64 %100
  %scevgep232233.us = bitcast i8* %scevgep232.us to double*
  %_p_scalar_234.us = load double, double* %scevgep232233.us, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us = fmul fast double %_p_scalar_238.us, %_p_scalar_234.us
  %scevgep240.us = getelementptr i8, i8* %scevgep235.us, i64 %100
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_242.us
  %101 = shl i64 %polly.indvar228.us, 3
  %102 = add i64 %101, %98
  %scevgep247.us = getelementptr i8, i8* %call, i64 %102
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar228.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit226.loopexit.us, label %polly.loop_header224.us

polly.loop_exit226.loopexit.us:                   ; preds = %polly.loop_header224.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next221.us, 60
  br i1 %exitcond777.not, label %polly.loop_exit219, label %polly.loop_header217.us

polly.loop_exit219:                               ; preds = %polly.loop_exit226.loopexit.us
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond778.not = icmp eq i64 %polly.indvar_next215, 64
  br i1 %exitcond778.not, label %polly.loop_header211.1, label %polly.loop_header217.us.preheader

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar1354 = phi i64 [ %indvar.next1355, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %103 = add i64 %indvar1354, 1
  %104 = mul nuw nsw i64 %polly.indvar339, 640
  %scevgep348 = getelementptr i8, i8* %call, i64 %104
  %min.iters.check1356 = icmp ult i64 %103, 4
  br i1 %min.iters.check1356, label %polly.loop_header342.preheader, label %vector.ph1357

vector.ph1357:                                    ; preds = %polly.loop_header336
  %n.vec1359 = and i64 %103, -4
  br label %vector.body1353

vector.body1353:                                  ; preds = %vector.body1353, %vector.ph1357
  %index1360 = phi i64 [ 0, %vector.ph1357 ], [ %index.next1361, %vector.body1353 ]
  %105 = shl nuw nsw i64 %index1360, 3
  %106 = getelementptr i8, i8* %scevgep348, i64 %105
  %107 = bitcast i8* %106 to <4 x double>*
  %wide.load1364 = load <4 x double>, <4 x double>* %107, align 8, !alias.scope !68, !noalias !70
  %108 = fmul fast <4 x double> %wide.load1364, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %109 = bitcast i8* %106 to <4 x double>*
  store <4 x double> %108, <4 x double>* %109, align 8, !alias.scope !68, !noalias !70
  %index.next1361 = add i64 %index1360, 4
  %110 = icmp eq i64 %index.next1361, %n.vec1359
  br i1 %110, label %middle.block1351, label %vector.body1353, !llvm.loop !73

middle.block1351:                                 ; preds = %vector.body1353
  %cmp.n1363 = icmp eq i64 %103, %n.vec1359
  br i1 %cmp.n1363, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block1351
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec1359, %middle.block1351 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block1351
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond789.not = icmp eq i64 %polly.indvar_next340, 80
  %indvar.next1355 = add i64 %indvar1354, 1
  br i1 %exitcond789.not, label %polly.loop_header372.us.preheader, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %111
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond788.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !74

polly.loop_header372.us.preheader:                ; preds = %polly.loop_exit344, %polly.loop_exit374
  %indvars.iv781 = phi i64 [ %indvars.iv.next782, %polly.loop_exit374 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_exit374 ], [ 0, %polly.loop_exit344 ]
  %smin783 = call i64 @llvm.smin.i64(i64 %indvars.iv781, i64 49)
  %112 = mul i64 %polly.indvar369, 480
  %113 = mul i64 %polly.indvar369, 640
  br label %polly.loop_header372.us

polly.loop_header372.us:                          ; preds = %polly.loop_header372.us.preheader, %polly.loop_exit381.loopexit.us
  %polly.indvar375.us = phi i64 [ %polly.indvar_next376.us, %polly.loop_exit381.loopexit.us ], [ 0, %polly.loop_header372.us.preheader ]
  %114 = shl nuw nsw i64 %polly.indvar375.us, 3
  %scevgep386.us = getelementptr i8, i8* %call1, i64 %114
  %scevgep390.us = getelementptr i8, i8* %call2, i64 %114
  %scevgep391.us = getelementptr i8, i8* %scevgep390.us, i64 %112
  %scevgep391392.us = bitcast i8* %scevgep391.us to double*
  %_p_scalar_393.us = load double, double* %scevgep391392.us, align 8, !alias.scope !72, !noalias !75
  %scevgep399.us = getelementptr i8, i8* %scevgep386.us, i64 %112
  %scevgep399400.us = bitcast i8* %scevgep399.us to double*
  %_p_scalar_401.us = load double, double* %scevgep399400.us, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header379.us

polly.loop_header379.us:                          ; preds = %polly.loop_header379.us, %polly.loop_header372.us
  %polly.indvar383.us = phi i64 [ 0, %polly.loop_header372.us ], [ %polly.indvar_next384.us, %polly.loop_header379.us ]
  %115 = mul nuw nsw i64 %polly.indvar383.us, 480
  %scevgep387.us = getelementptr i8, i8* %scevgep386.us, i64 %115
  %scevgep387388.us = bitcast i8* %scevgep387.us to double*
  %_p_scalar_389.us = load double, double* %scevgep387388.us, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us = fmul fast double %_p_scalar_393.us, %_p_scalar_389.us
  %scevgep395.us = getelementptr i8, i8* %scevgep390.us, i64 %115
  %scevgep395396.us = bitcast i8* %scevgep395.us to double*
  %_p_scalar_397.us = load double, double* %scevgep395396.us, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us = fmul fast double %_p_scalar_401.us, %_p_scalar_397.us
  %116 = shl i64 %polly.indvar383.us, 3
  %117 = add i64 %116, %113
  %scevgep402.us = getelementptr i8, i8* %call, i64 %117
  %scevgep402403.us = bitcast i8* %scevgep402.us to double*
  %_p_scalar_404.us = load double, double* %scevgep402403.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_404.us
  store double %p_add42.i79.us, double* %scevgep402403.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next384.us = add nuw nsw i64 %polly.indvar383.us, 1
  %exitcond784.not = icmp eq i64 %polly.indvar383.us, %smin783
  br i1 %exitcond784.not, label %polly.loop_exit381.loopexit.us, label %polly.loop_header379.us

polly.loop_exit381.loopexit.us:                   ; preds = %polly.loop_header379.us
  %polly.indvar_next376.us = add nuw nsw i64 %polly.indvar375.us, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next376.us, 60
  br i1 %exitcond785.not, label %polly.loop_exit374, label %polly.loop_header372.us

polly.loop_exit374:                               ; preds = %polly.loop_exit381.loopexit.us
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1
  %exitcond787.not = icmp eq i64 %polly.indvar_next370, 64
  br i1 %exitcond787.not, label %polly.loop_header365.1, label %polly.loop_header372.us.preheader

polly.loop_header491:                             ; preds = %init_array.exit, %polly.loop_exit499
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit499 ], [ 0, %init_array.exit ]
  %polly.indvar494 = phi i64 [ %polly.indvar_next495, %polly.loop_exit499 ], [ 1, %init_array.exit ]
  %118 = add i64 %indvar, 1
  %119 = mul nuw nsw i64 %polly.indvar494, 640
  %scevgep503 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1330 = icmp ult i64 %118, 4
  br i1 %min.iters.check1330, label %polly.loop_header497.preheader, label %vector.ph1331

vector.ph1331:                                    ; preds = %polly.loop_header491
  %n.vec1333 = and i64 %118, -4
  br label %vector.body1329

vector.body1329:                                  ; preds = %vector.body1329, %vector.ph1331
  %index1334 = phi i64 [ 0, %vector.ph1331 ], [ %index.next1335, %vector.body1329 ]
  %120 = shl nuw nsw i64 %index1334, 3
  %121 = getelementptr i8, i8* %scevgep503, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1338 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !77, !noalias !79
  %123 = fmul fast <4 x double> %wide.load1338, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !77, !noalias !79
  %index.next1335 = add i64 %index1334, 4
  %125 = icmp eq i64 %index.next1335, %n.vec1333
  br i1 %125, label %middle.block1327, label %vector.body1329, !llvm.loop !82

middle.block1327:                                 ; preds = %vector.body1329
  %cmp.n1337 = icmp eq i64 %118, %n.vec1333
  br i1 %cmp.n1337, label %polly.loop_exit499, label %polly.loop_header497.preheader

polly.loop_header497.preheader:                   ; preds = %polly.loop_header491, %middle.block1327
  %polly.indvar500.ph = phi i64 [ 0, %polly.loop_header491 ], [ %n.vec1333, %middle.block1327 ]
  br label %polly.loop_header497

polly.loop_exit499:                               ; preds = %polly.loop_header497, %middle.block1327
  %polly.indvar_next495 = add nuw nsw i64 %polly.indvar494, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next495, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond798.not, label %polly.loop_header527.us.preheader, label %polly.loop_header491

polly.loop_header497:                             ; preds = %polly.loop_header497.preheader, %polly.loop_header497
  %polly.indvar500 = phi i64 [ %polly.indvar_next501, %polly.loop_header497 ], [ %polly.indvar500.ph, %polly.loop_header497.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar500, 3
  %scevgep504 = getelementptr i8, i8* %scevgep503, i64 %126
  %scevgep504505 = bitcast i8* %scevgep504 to double*
  %_p_scalar_506 = load double, double* %scevgep504505, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_506, 1.200000e+00
  store double %p_mul.i, double* %scevgep504505, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next501 = add nuw nsw i64 %polly.indvar500, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next501, %polly.indvar494
  br i1 %exitcond797.not, label %polly.loop_exit499, label %polly.loop_header497, !llvm.loop !83

polly.loop_header527.us.preheader:                ; preds = %polly.loop_exit499, %polly.loop_exit529
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %polly.loop_exit529 ], [ 0, %polly.loop_exit499 ]
  %polly.indvar524 = phi i64 [ %polly.indvar_next525, %polly.loop_exit529 ], [ 0, %polly.loop_exit499 ]
  %smin792 = call i64 @llvm.smin.i64(i64 %indvars.iv790, i64 49)
  %127 = mul i64 %polly.indvar524, 480
  %128 = mul i64 %polly.indvar524, 640
  br label %polly.loop_header527.us

polly.loop_header527.us:                          ; preds = %polly.loop_header527.us.preheader, %polly.loop_exit536.loopexit.us
  %polly.indvar530.us = phi i64 [ %polly.indvar_next531.us, %polly.loop_exit536.loopexit.us ], [ 0, %polly.loop_header527.us.preheader ]
  %129 = shl nuw nsw i64 %polly.indvar530.us, 3
  %scevgep541.us = getelementptr i8, i8* %call1, i64 %129
  %scevgep545.us = getelementptr i8, i8* %call2, i64 %129
  %scevgep546.us = getelementptr i8, i8* %scevgep545.us, i64 %127
  %scevgep546547.us = bitcast i8* %scevgep546.us to double*
  %_p_scalar_548.us = load double, double* %scevgep546547.us, align 8, !alias.scope !81, !noalias !84
  %scevgep554.us = getelementptr i8, i8* %scevgep541.us, i64 %127
  %scevgep554555.us = bitcast i8* %scevgep554.us to double*
  %_p_scalar_556.us = load double, double* %scevgep554555.us, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header534.us

polly.loop_header534.us:                          ; preds = %polly.loop_header534.us, %polly.loop_header527.us
  %polly.indvar538.us = phi i64 [ 0, %polly.loop_header527.us ], [ %polly.indvar_next539.us, %polly.loop_header534.us ]
  %130 = mul nuw nsw i64 %polly.indvar538.us, 480
  %scevgep542.us = getelementptr i8, i8* %scevgep541.us, i64 %130
  %scevgep542543.us = bitcast i8* %scevgep542.us to double*
  %_p_scalar_544.us = load double, double* %scevgep542543.us, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us = fmul fast double %_p_scalar_548.us, %_p_scalar_544.us
  %scevgep550.us = getelementptr i8, i8* %scevgep545.us, i64 %130
  %scevgep550551.us = bitcast i8* %scevgep550.us to double*
  %_p_scalar_552.us = load double, double* %scevgep550551.us, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us = fmul fast double %_p_scalar_556.us, %_p_scalar_552.us
  %131 = shl i64 %polly.indvar538.us, 3
  %132 = add i64 %131, %128
  %scevgep557.us = getelementptr i8, i8* %call, i64 %132
  %scevgep557558.us = bitcast i8* %scevgep557.us to double*
  %_p_scalar_559.us = load double, double* %scevgep557558.us, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_559.us
  store double %p_add42.i.us, double* %scevgep557558.us, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next539.us = add nuw nsw i64 %polly.indvar538.us, 1
  %exitcond793.not = icmp eq i64 %polly.indvar538.us, %smin792
  br i1 %exitcond793.not, label %polly.loop_exit536.loopexit.us, label %polly.loop_header534.us

polly.loop_exit536.loopexit.us:                   ; preds = %polly.loop_header534.us
  %polly.indvar_next531.us = add nuw nsw i64 %polly.indvar530.us, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next531.us, 60
  br i1 %exitcond794.not, label %polly.loop_exit529, label %polly.loop_header527.us

polly.loop_exit529:                               ; preds = %polly.loop_exit536.loopexit.us
  %polly.indvar_next525 = add nuw nsw i64 %polly.indvar524, 1
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 1
  %exitcond796.not = icmp eq i64 %polly.indvar_next525, 64
  br i1 %exitcond796.not, label %polly.loop_header520.1, label %polly.loop_header527.us.preheader

polly.loop_header698:                             ; preds = %entry, %polly.loop_exit706
  %polly.indvar701 = phi i64 [ %polly.indvar_next702, %polly.loop_exit706 ], [ 0, %entry ]
  %133 = mul nuw nsw i64 %polly.indvar701, 640
  %134 = trunc i64 %polly.indvar701 to i32
  %broadcast.splatinsert1061 = insertelement <4 x i32> poison, i32 %134, i32 0
  %broadcast.splat1062 = shufflevector <4 x i32> %broadcast.splatinsert1061, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %polly.loop_header698
  %index1053 = phi i64 [ 0, %polly.loop_header698 ], [ %index.next1054, %vector.body1051 ]
  %vec.ind1059 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header698 ], [ %vec.ind.next1060, %vector.body1051 ]
  %135 = mul <4 x i32> %vec.ind1059, %broadcast.splat1062
  %136 = add <4 x i32> %135, <i32 3, i32 3, i32 3, i32 3>
  %137 = urem <4 x i32> %136, <i32 80, i32 80, i32 80, i32 80>
  %138 = sitofp <4 x i32> %137 to <4 x double>
  %139 = fmul fast <4 x double> %138, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %140 = shl i64 %index1053, 3
  %141 = add nuw nsw i64 %140, %133
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %139, <4 x double>* %143, align 8, !alias.scope !86, !noalias !88
  %index.next1054 = add i64 %index1053, 4
  %vec.ind.next1060 = add <4 x i32> %vec.ind1059, <i32 4, i32 4, i32 4, i32 4>
  %144 = icmp eq i64 %index.next1054, 32
  br i1 %144, label %polly.loop_exit706, label %vector.body1051, !llvm.loop !91

polly.loop_exit706:                               ; preds = %vector.body1051
  %polly.indvar_next702 = add nuw nsw i64 %polly.indvar701, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next702, 32
  br i1 %exitcond818.not, label %polly.loop_header698.1, label %polly.loop_header698

polly.loop_header725:                             ; preds = %polly.loop_exit706.2.2, %polly.loop_exit733
  %polly.indvar728 = phi i64 [ %polly.indvar_next729, %polly.loop_exit733 ], [ 0, %polly.loop_exit706.2.2 ]
  %145 = mul nuw nsw i64 %polly.indvar728, 480
  %146 = trunc i64 %polly.indvar728 to i32
  %broadcast.splatinsert1175 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat1176 = shufflevector <4 x i32> %broadcast.splatinsert1175, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1165

vector.body1165:                                  ; preds = %vector.body1165, %polly.loop_header725
  %index1167 = phi i64 [ 0, %polly.loop_header725 ], [ %index.next1168, %vector.body1165 ]
  %vec.ind1173 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725 ], [ %vec.ind.next1174, %vector.body1165 ]
  %147 = mul <4 x i32> %vec.ind1173, %broadcast.splat1176
  %148 = add <4 x i32> %147, <i32 2, i32 2, i32 2, i32 2>
  %149 = urem <4 x i32> %148, <i32 60, i32 60, i32 60, i32 60>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index1167, 3
  %153 = add i64 %152, %145
  %154 = getelementptr i8, i8* %call2, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !90, !noalias !92
  %index.next1168 = add i64 %index1167, 4
  %vec.ind.next1174 = add <4 x i32> %vec.ind1173, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next1168, 32
  br i1 %156, label %polly.loop_exit733, label %vector.body1165, !llvm.loop !93

polly.loop_exit733:                               ; preds = %vector.body1165
  %polly.indvar_next729 = add nuw nsw i64 %polly.indvar728, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next729, 32
  br i1 %exitcond809.not, label %polly.loop_header725.1, label %polly.loop_header725

polly.loop_header751:                             ; preds = %polly.loop_exit733.1.2, %polly.loop_exit759
  %polly.indvar754 = phi i64 [ %polly.indvar_next755, %polly.loop_exit759 ], [ 0, %polly.loop_exit733.1.2 ]
  %157 = mul nuw nsw i64 %polly.indvar754, 480
  %158 = trunc i64 %polly.indvar754 to i32
  %broadcast.splatinsert1253 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1254 = shufflevector <4 x i32> %broadcast.splatinsert1253, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1243

vector.body1243:                                  ; preds = %vector.body1243, %polly.loop_header751
  %index1245 = phi i64 [ 0, %polly.loop_header751 ], [ %index.next1246, %vector.body1243 ]
  %vec.ind1251 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header751 ], [ %vec.ind.next1252, %vector.body1243 ]
  %159 = mul <4 x i32> %vec.ind1251, %broadcast.splat1254
  %160 = add <4 x i32> %159, <i32 1, i32 1, i32 1, i32 1>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %164 = shl i64 %index1245, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call1, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !89, !noalias !94
  %index.next1246 = add i64 %index1245, 4
  %vec.ind.next1252 = add <4 x i32> %vec.ind1251, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1246, 32
  br i1 %168, label %polly.loop_exit759, label %vector.body1243, !llvm.loop !95

polly.loop_exit759:                               ; preds = %vector.body1243
  %polly.indvar_next755 = add nuw nsw i64 %polly.indvar754, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next755, 32
  br i1 %exitcond803.not, label %polly.loop_header751.1, label %polly.loop_header751

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 50, %polly.loop_exit219 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 49)
  %polly.loop_guard227.11022 = icmp ugt i64 %polly.indvar214.1, 49
  %169 = mul i64 %polly.indvar214.1, 480
  %170 = mul i64 %polly.indvar214.1, 640
  br i1 %polly.loop_guard227.11022, label %polly.loop_header217.us.1, label %polly.loop_exit219.1

polly.loop_header217.us.1:                        ; preds = %polly.loop_header211.1, %polly.loop_exit226.loopexit.us.1
  %polly.indvar220.us.1 = phi i64 [ %polly.indvar_next221.us.1, %polly.loop_exit226.loopexit.us.1 ], [ 0, %polly.loop_header211.1 ]
  %171 = shl nuw nsw i64 %polly.indvar220.us.1, 3
  %scevgep231.us.1 = getelementptr i8, i8* %call1, i64 %171
  %scevgep235.us.1 = getelementptr i8, i8* %call2, i64 %171
  %scevgep236.us.1 = getelementptr i8, i8* %scevgep235.us.1, i64 %169
  %scevgep236237.us.1 = bitcast i8* %scevgep236.us.1 to double*
  %_p_scalar_238.us.1 = load double, double* %scevgep236237.us.1, align 8, !alias.scope !62, !noalias !66
  %scevgep244.us.1 = getelementptr i8, i8* %scevgep231.us.1, i64 %169
  %scevgep244245.us.1 = bitcast i8* %scevgep244.us.1 to double*
  %_p_scalar_246.us.1 = load double, double* %scevgep244245.us.1, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header224.us.1

polly.loop_header224.us.1:                        ; preds = %polly.loop_header224.us.1, %polly.loop_header217.us.1
  %polly.indvar228.us.1 = phi i64 [ 0, %polly.loop_header217.us.1 ], [ %polly.indvar_next229.us.1, %polly.loop_header224.us.1 ]
  %172 = add nuw nsw i64 %polly.indvar228.us.1, 50
  %173 = mul nuw nsw i64 %172, 480
  %scevgep232.us.1 = getelementptr i8, i8* %scevgep231.us.1, i64 %173
  %scevgep232233.us.1 = bitcast i8* %scevgep232.us.1 to double*
  %_p_scalar_234.us.1 = load double, double* %scevgep232233.us.1, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_238.us.1, %_p_scalar_234.us.1
  %scevgep240.us.1 = getelementptr i8, i8* %scevgep235.us.1, i64 %173
  %scevgep240241.us.1 = bitcast i8* %scevgep240.us.1 to double*
  %_p_scalar_242.us.1 = load double, double* %scevgep240241.us.1, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_246.us.1, %_p_scalar_242.us.1
  %174 = shl i64 %172, 3
  %175 = add i64 %174, %170
  %scevgep247.us.1 = getelementptr i8, i8* %call, i64 %175
  %scevgep247248.us.1 = bitcast i8* %scevgep247.us.1 to double*
  %_p_scalar_249.us.1 = load double, double* %scevgep247248.us.1, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_249.us.1
  store double %p_add42.i118.us.1, double* %scevgep247248.us.1, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next229.us.1 = add nuw nsw i64 %polly.indvar228.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar228.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit226.loopexit.us.1, label %polly.loop_header224.us.1

polly.loop_exit226.loopexit.us.1:                 ; preds = %polly.loop_header224.us.1
  %polly.indvar_next221.us.1 = add nuw nsw i64 %polly.indvar220.us.1, 1
  %exitcond777.1.not = icmp eq i64 %polly.indvar_next221.us.1, 60
  br i1 %exitcond777.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.us.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit226.loopexit.us.1, %polly.loop_header211.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond778.1.not = icmp eq i64 %polly.indvar_next215.1, 64
  br i1 %exitcond778.1.not, label %polly.loop_header217.us.preheader.1833, label %polly.loop_header211.1

polly.loop_header217.us.preheader.1833:           ; preds = %polly.loop_exit219.1, %polly.loop_exit219.1869
  %indvars.iv.1828 = phi i64 [ %indvars.iv.next.1867, %polly.loop_exit219.1869 ], [ 64, %polly.loop_exit219.1 ]
  %polly.indvar214.1829 = phi i64 [ %polly.indvar_next215.1866, %polly.loop_exit219.1869 ], [ 0, %polly.loop_exit219.1 ]
  %smin.1830 = call i64 @llvm.smin.i64(i64 %indvars.iv.1828, i64 49)
  %176 = add nuw nsw i64 %polly.indvar214.1829, 64
  %177 = mul i64 %176, 480
  %178 = mul i64 %176, 640
  br label %polly.loop_header217.us.1843

polly.loop_header217.us.1843:                     ; preds = %polly.loop_exit226.loopexit.us.1864, %polly.loop_header217.us.preheader.1833
  %polly.indvar220.us.1834 = phi i64 [ %polly.indvar_next221.us.1862, %polly.loop_exit226.loopexit.us.1864 ], [ 0, %polly.loop_header217.us.preheader.1833 ]
  %179 = shl nuw nsw i64 %polly.indvar220.us.1834, 3
  %scevgep231.us.1835 = getelementptr i8, i8* %call1, i64 %179
  %scevgep235.us.1836 = getelementptr i8, i8* %call2, i64 %179
  %scevgep236.us.1837 = getelementptr i8, i8* %scevgep235.us.1836, i64 %177
  %scevgep236237.us.1838 = bitcast i8* %scevgep236.us.1837 to double*
  %_p_scalar_238.us.1839 = load double, double* %scevgep236237.us.1838, align 8, !alias.scope !62, !noalias !66
  %scevgep244.us.1840 = getelementptr i8, i8* %scevgep231.us.1835, i64 %177
  %scevgep244245.us.1841 = bitcast i8* %scevgep244.us.1840 to double*
  %_p_scalar_246.us.1842 = load double, double* %scevgep244245.us.1841, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header224.us.1861

polly.loop_header224.us.1861:                     ; preds = %polly.loop_header224.us.1861, %polly.loop_header217.us.1843
  %polly.indvar228.us.1844 = phi i64 [ 0, %polly.loop_header217.us.1843 ], [ %polly.indvar_next229.us.1859, %polly.loop_header224.us.1861 ]
  %180 = mul nuw nsw i64 %polly.indvar228.us.1844, 480
  %scevgep232.us.1845 = getelementptr i8, i8* %scevgep231.us.1835, i64 %180
  %scevgep232233.us.1846 = bitcast i8* %scevgep232.us.1845 to double*
  %_p_scalar_234.us.1847 = load double, double* %scevgep232233.us.1846, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.1848 = fmul fast double %_p_scalar_238.us.1839, %_p_scalar_234.us.1847
  %scevgep240.us.1849 = getelementptr i8, i8* %scevgep235.us.1836, i64 %180
  %scevgep240241.us.1850 = bitcast i8* %scevgep240.us.1849 to double*
  %_p_scalar_242.us.1851 = load double, double* %scevgep240241.us.1850, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.1852 = fmul fast double %_p_scalar_246.us.1842, %_p_scalar_242.us.1851
  %181 = shl i64 %polly.indvar228.us.1844, 3
  %182 = add i64 %181, %178
  %scevgep247.us.1853 = getelementptr i8, i8* %call, i64 %182
  %scevgep247248.us.1854 = bitcast i8* %scevgep247.us.1853 to double*
  %_p_scalar_249.us.1855 = load double, double* %scevgep247248.us.1854, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.1856 = fadd fast double %p_mul37.i114.us.1852, %p_mul27.i112.us.1848
  %p_reass.mul.i117.us.1857 = fmul fast double %p_reass.add.i116.us.1856, 1.500000e+00
  %p_add42.i118.us.1858 = fadd fast double %p_reass.mul.i117.us.1857, %_p_scalar_249.us.1855
  store double %p_add42.i118.us.1858, double* %scevgep247248.us.1854, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next229.us.1859 = add nuw nsw i64 %polly.indvar228.us.1844, 1
  %exitcond.1860.not = icmp eq i64 %polly.indvar228.us.1844, %smin.1830
  br i1 %exitcond.1860.not, label %polly.loop_exit226.loopexit.us.1864, label %polly.loop_header224.us.1861

polly.loop_exit226.loopexit.us.1864:              ; preds = %polly.loop_header224.us.1861
  %polly.indvar_next221.us.1862 = add nuw nsw i64 %polly.indvar220.us.1834, 1
  %exitcond777.1863.not = icmp eq i64 %polly.indvar_next221.us.1862, 60
  br i1 %exitcond777.1863.not, label %polly.loop_exit219.1869, label %polly.loop_header217.us.1843

polly.loop_exit219.1869:                          ; preds = %polly.loop_exit226.loopexit.us.1864
  %polly.indvar_next215.1866 = add nuw nsw i64 %polly.indvar214.1829, 1
  %indvars.iv.next.1867 = add nuw nsw i64 %indvars.iv.1828, 1
  %exitcond778.1868.not = icmp eq i64 %polly.indvar_next215.1866, 16
  br i1 %exitcond778.1868.not, label %polly.loop_header217.us.preheader.1.1, label %polly.loop_header217.us.preheader.1833

polly.loop_header217.us.preheader.1.1:            ; preds = %polly.loop_exit219.1869, %polly.loop_exit219.1.1
  %indvars.iv.1.1 = phi i64 [ %indvars.iv.next.1.1, %polly.loop_exit219.1.1 ], [ 14, %polly.loop_exit219.1869 ]
  %polly.indvar214.1.1 = phi i64 [ %polly.indvar_next215.1.1, %polly.loop_exit219.1.1 ], [ 0, %polly.loop_exit219.1869 ]
  %smin.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1.1, i64 49)
  %183 = add nuw nsw i64 %polly.indvar214.1.1, 64
  %184 = mul i64 %183, 480
  %185 = mul i64 %183, 640
  br label %polly.loop_header217.us.1.1

polly.loop_header217.us.1.1:                      ; preds = %polly.loop_exit226.loopexit.us.1.1, %polly.loop_header217.us.preheader.1.1
  %polly.indvar220.us.1.1 = phi i64 [ %polly.indvar_next221.us.1.1, %polly.loop_exit226.loopexit.us.1.1 ], [ 0, %polly.loop_header217.us.preheader.1.1 ]
  %186 = shl nuw nsw i64 %polly.indvar220.us.1.1, 3
  %scevgep231.us.1.1 = getelementptr i8, i8* %call1, i64 %186
  %scevgep235.us.1.1 = getelementptr i8, i8* %call2, i64 %186
  %scevgep236.us.1.1 = getelementptr i8, i8* %scevgep235.us.1.1, i64 %184
  %scevgep236237.us.1.1 = bitcast i8* %scevgep236.us.1.1 to double*
  %_p_scalar_238.us.1.1 = load double, double* %scevgep236237.us.1.1, align 8, !alias.scope !62, !noalias !66
  %scevgep244.us.1.1 = getelementptr i8, i8* %scevgep231.us.1.1, i64 %184
  %scevgep244245.us.1.1 = bitcast i8* %scevgep244.us.1.1 to double*
  %_p_scalar_246.us.1.1 = load double, double* %scevgep244245.us.1.1, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header224.us.1.1

polly.loop_header224.us.1.1:                      ; preds = %polly.loop_header224.us.1.1, %polly.loop_header217.us.1.1
  %polly.indvar228.us.1.1 = phi i64 [ 0, %polly.loop_header217.us.1.1 ], [ %polly.indvar_next229.us.1.1, %polly.loop_header224.us.1.1 ]
  %187 = add nuw nsw i64 %polly.indvar228.us.1.1, 50
  %188 = mul nuw nsw i64 %187, 480
  %scevgep232.us.1.1 = getelementptr i8, i8* %scevgep231.us.1.1, i64 %188
  %scevgep232233.us.1.1 = bitcast i8* %scevgep232.us.1.1 to double*
  %_p_scalar_234.us.1.1 = load double, double* %scevgep232233.us.1.1, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.us.1.1 = fmul fast double %_p_scalar_238.us.1.1, %_p_scalar_234.us.1.1
  %scevgep240.us.1.1 = getelementptr i8, i8* %scevgep235.us.1.1, i64 %188
  %scevgep240241.us.1.1 = bitcast i8* %scevgep240.us.1.1 to double*
  %_p_scalar_242.us.1.1 = load double, double* %scevgep240241.us.1.1, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.us.1.1 = fmul fast double %_p_scalar_246.us.1.1, %_p_scalar_242.us.1.1
  %189 = shl i64 %187, 3
  %190 = add i64 %189, %185
  %scevgep247.us.1.1 = getelementptr i8, i8* %call, i64 %190
  %scevgep247248.us.1.1 = bitcast i8* %scevgep247.us.1.1 to double*
  %_p_scalar_249.us.1.1 = load double, double* %scevgep247248.us.1.1, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.us.1.1 = fadd fast double %p_mul37.i114.us.1.1, %p_mul27.i112.us.1.1
  %p_reass.mul.i117.us.1.1 = fmul fast double %p_reass.add.i116.us.1.1, 1.500000e+00
  %p_add42.i118.us.1.1 = fadd fast double %p_reass.mul.i117.us.1.1, %_p_scalar_249.us.1.1
  store double %p_add42.i118.us.1.1, double* %scevgep247248.us.1.1, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next229.us.1.1 = add nuw nsw i64 %polly.indvar228.us.1.1, 1
  %exitcond.1.1.not = icmp eq i64 %polly.indvar228.us.1.1, %smin.1.1
  br i1 %exitcond.1.1.not, label %polly.loop_exit226.loopexit.us.1.1, label %polly.loop_header224.us.1.1

polly.loop_exit226.loopexit.us.1.1:               ; preds = %polly.loop_header224.us.1.1
  %polly.indvar_next221.us.1.1 = add nuw nsw i64 %polly.indvar220.us.1.1, 1
  %exitcond777.1.1.not = icmp eq i64 %polly.indvar_next221.us.1.1, 60
  br i1 %exitcond777.1.1.not, label %polly.loop_exit219.1.1, label %polly.loop_header217.us.1.1

polly.loop_exit219.1.1:                           ; preds = %polly.loop_exit226.loopexit.us.1.1
  %polly.indvar_next215.1.1 = add nuw nsw i64 %polly.indvar214.1.1, 1
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1.1, 1
  %exitcond778.1.1.not = icmp eq i64 %polly.indvar_next215.1.1, 16
  br i1 %exitcond778.1.1.not, label %kernel_syr2k.exit129, label %polly.loop_header217.us.preheader.1.1

polly.loop_header365.1:                           ; preds = %polly.loop_exit374, %polly.loop_exit374.1
  %indvars.iv781.1 = phi i64 [ %indvars.iv.next782.1, %polly.loop_exit374.1 ], [ 0, %polly.loop_exit374 ]
  %polly.indvar369.1 = phi i64 [ %polly.indvar_next370.1, %polly.loop_exit374.1 ], [ 50, %polly.loop_exit374 ]
  %smin783.1 = call i64 @llvm.smin.i64(i64 %indvars.iv781.1, i64 49)
  %polly.loop_guard382.11023 = icmp ugt i64 %polly.indvar369.1, 49
  %191 = mul i64 %polly.indvar369.1, 480
  %192 = mul i64 %polly.indvar369.1, 640
  br i1 %polly.loop_guard382.11023, label %polly.loop_header372.us.1, label %polly.loop_exit374.1

polly.loop_header372.us.1:                        ; preds = %polly.loop_header365.1, %polly.loop_exit381.loopexit.us.1
  %polly.indvar375.us.1 = phi i64 [ %polly.indvar_next376.us.1, %polly.loop_exit381.loopexit.us.1 ], [ 0, %polly.loop_header365.1 ]
  %193 = shl nuw nsw i64 %polly.indvar375.us.1, 3
  %scevgep386.us.1 = getelementptr i8, i8* %call1, i64 %193
  %scevgep390.us.1 = getelementptr i8, i8* %call2, i64 %193
  %scevgep391.us.1 = getelementptr i8, i8* %scevgep390.us.1, i64 %191
  %scevgep391392.us.1 = bitcast i8* %scevgep391.us.1 to double*
  %_p_scalar_393.us.1 = load double, double* %scevgep391392.us.1, align 8, !alias.scope !72, !noalias !75
  %scevgep399.us.1 = getelementptr i8, i8* %scevgep386.us.1, i64 %191
  %scevgep399400.us.1 = bitcast i8* %scevgep399.us.1 to double*
  %_p_scalar_401.us.1 = load double, double* %scevgep399400.us.1, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header379.us.1

polly.loop_header379.us.1:                        ; preds = %polly.loop_header379.us.1, %polly.loop_header372.us.1
  %polly.indvar383.us.1 = phi i64 [ 0, %polly.loop_header372.us.1 ], [ %polly.indvar_next384.us.1, %polly.loop_header379.us.1 ]
  %194 = add nuw nsw i64 %polly.indvar383.us.1, 50
  %195 = mul nuw nsw i64 %194, 480
  %scevgep387.us.1 = getelementptr i8, i8* %scevgep386.us.1, i64 %195
  %scevgep387388.us.1 = bitcast i8* %scevgep387.us.1 to double*
  %_p_scalar_389.us.1 = load double, double* %scevgep387388.us.1, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_393.us.1, %_p_scalar_389.us.1
  %scevgep395.us.1 = getelementptr i8, i8* %scevgep390.us.1, i64 %195
  %scevgep395396.us.1 = bitcast i8* %scevgep395.us.1 to double*
  %_p_scalar_397.us.1 = load double, double* %scevgep395396.us.1, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_401.us.1, %_p_scalar_397.us.1
  %196 = shl i64 %194, 3
  %197 = add i64 %196, %192
  %scevgep402.us.1 = getelementptr i8, i8* %call, i64 %197
  %scevgep402403.us.1 = bitcast i8* %scevgep402.us.1 to double*
  %_p_scalar_404.us.1 = load double, double* %scevgep402403.us.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_404.us.1
  store double %p_add42.i79.us.1, double* %scevgep402403.us.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next384.us.1 = add nuw nsw i64 %polly.indvar383.us.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar383.us.1, %smin783.1
  br i1 %exitcond784.1.not, label %polly.loop_exit381.loopexit.us.1, label %polly.loop_header379.us.1

polly.loop_exit381.loopexit.us.1:                 ; preds = %polly.loop_header379.us.1
  %polly.indvar_next376.us.1 = add nuw nsw i64 %polly.indvar375.us.1, 1
  %exitcond785.1.not = icmp eq i64 %polly.indvar_next376.us.1, 60
  br i1 %exitcond785.1.not, label %polly.loop_exit374.1, label %polly.loop_header372.us.1

polly.loop_exit374.1:                             ; preds = %polly.loop_exit381.loopexit.us.1, %polly.loop_header365.1
  %polly.indvar_next370.1 = add nuw nsw i64 %polly.indvar369.1, 1
  %indvars.iv.next782.1 = add nuw nsw i64 %indvars.iv781.1, 1
  %exitcond787.1.not = icmp eq i64 %polly.indvar_next370.1, 64
  br i1 %exitcond787.1.not, label %polly.loop_header372.us.preheader.1880, label %polly.loop_header365.1

polly.loop_header372.us.preheader.1880:           ; preds = %polly.loop_exit374.1, %polly.loop_exit374.1916
  %indvars.iv781.1875 = phi i64 [ %indvars.iv.next782.1914, %polly.loop_exit374.1916 ], [ 64, %polly.loop_exit374.1 ]
  %polly.indvar369.1876 = phi i64 [ %polly.indvar_next370.1913, %polly.loop_exit374.1916 ], [ 0, %polly.loop_exit374.1 ]
  %smin783.1877 = call i64 @llvm.smin.i64(i64 %indvars.iv781.1875, i64 49)
  %198 = add nuw nsw i64 %polly.indvar369.1876, 64
  %199 = mul i64 %198, 480
  %200 = mul i64 %198, 640
  br label %polly.loop_header372.us.1890

polly.loop_header372.us.1890:                     ; preds = %polly.loop_exit381.loopexit.us.1911, %polly.loop_header372.us.preheader.1880
  %polly.indvar375.us.1881 = phi i64 [ %polly.indvar_next376.us.1909, %polly.loop_exit381.loopexit.us.1911 ], [ 0, %polly.loop_header372.us.preheader.1880 ]
  %201 = shl nuw nsw i64 %polly.indvar375.us.1881, 3
  %scevgep386.us.1882 = getelementptr i8, i8* %call1, i64 %201
  %scevgep390.us.1883 = getelementptr i8, i8* %call2, i64 %201
  %scevgep391.us.1884 = getelementptr i8, i8* %scevgep390.us.1883, i64 %199
  %scevgep391392.us.1885 = bitcast i8* %scevgep391.us.1884 to double*
  %_p_scalar_393.us.1886 = load double, double* %scevgep391392.us.1885, align 8, !alias.scope !72, !noalias !75
  %scevgep399.us.1887 = getelementptr i8, i8* %scevgep386.us.1882, i64 %199
  %scevgep399400.us.1888 = bitcast i8* %scevgep399.us.1887 to double*
  %_p_scalar_401.us.1889 = load double, double* %scevgep399400.us.1888, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header379.us.1908

polly.loop_header379.us.1908:                     ; preds = %polly.loop_header379.us.1908, %polly.loop_header372.us.1890
  %polly.indvar383.us.1891 = phi i64 [ 0, %polly.loop_header372.us.1890 ], [ %polly.indvar_next384.us.1906, %polly.loop_header379.us.1908 ]
  %202 = mul nuw nsw i64 %polly.indvar383.us.1891, 480
  %scevgep387.us.1892 = getelementptr i8, i8* %scevgep386.us.1882, i64 %202
  %scevgep387388.us.1893 = bitcast i8* %scevgep387.us.1892 to double*
  %_p_scalar_389.us.1894 = load double, double* %scevgep387388.us.1893, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.1895 = fmul fast double %_p_scalar_393.us.1886, %_p_scalar_389.us.1894
  %scevgep395.us.1896 = getelementptr i8, i8* %scevgep390.us.1883, i64 %202
  %scevgep395396.us.1897 = bitcast i8* %scevgep395.us.1896 to double*
  %_p_scalar_397.us.1898 = load double, double* %scevgep395396.us.1897, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.1899 = fmul fast double %_p_scalar_401.us.1889, %_p_scalar_397.us.1898
  %203 = shl i64 %polly.indvar383.us.1891, 3
  %204 = add i64 %203, %200
  %scevgep402.us.1900 = getelementptr i8, i8* %call, i64 %204
  %scevgep402403.us.1901 = bitcast i8* %scevgep402.us.1900 to double*
  %_p_scalar_404.us.1902 = load double, double* %scevgep402403.us.1901, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.1903 = fadd fast double %p_mul37.i75.us.1899, %p_mul27.i73.us.1895
  %p_reass.mul.i78.us.1904 = fmul fast double %p_reass.add.i77.us.1903, 1.500000e+00
  %p_add42.i79.us.1905 = fadd fast double %p_reass.mul.i78.us.1904, %_p_scalar_404.us.1902
  store double %p_add42.i79.us.1905, double* %scevgep402403.us.1901, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next384.us.1906 = add nuw nsw i64 %polly.indvar383.us.1891, 1
  %exitcond784.1907.not = icmp eq i64 %polly.indvar383.us.1891, %smin783.1877
  br i1 %exitcond784.1907.not, label %polly.loop_exit381.loopexit.us.1911, label %polly.loop_header379.us.1908

polly.loop_exit381.loopexit.us.1911:              ; preds = %polly.loop_header379.us.1908
  %polly.indvar_next376.us.1909 = add nuw nsw i64 %polly.indvar375.us.1881, 1
  %exitcond785.1910.not = icmp eq i64 %polly.indvar_next376.us.1909, 60
  br i1 %exitcond785.1910.not, label %polly.loop_exit374.1916, label %polly.loop_header372.us.1890

polly.loop_exit374.1916:                          ; preds = %polly.loop_exit381.loopexit.us.1911
  %polly.indvar_next370.1913 = add nuw nsw i64 %polly.indvar369.1876, 1
  %indvars.iv.next782.1914 = add nuw nsw i64 %indvars.iv781.1875, 1
  %exitcond787.1915.not = icmp eq i64 %polly.indvar_next370.1913, 16
  br i1 %exitcond787.1915.not, label %polly.loop_header372.us.preheader.1.1, label %polly.loop_header372.us.preheader.1880

polly.loop_header372.us.preheader.1.1:            ; preds = %polly.loop_exit374.1916, %polly.loop_exit374.1.1
  %indvars.iv781.1.1 = phi i64 [ %indvars.iv.next782.1.1, %polly.loop_exit374.1.1 ], [ 14, %polly.loop_exit374.1916 ]
  %polly.indvar369.1.1 = phi i64 [ %polly.indvar_next370.1.1, %polly.loop_exit374.1.1 ], [ 0, %polly.loop_exit374.1916 ]
  %smin783.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv781.1.1, i64 49)
  %205 = add nuw nsw i64 %polly.indvar369.1.1, 64
  %206 = mul i64 %205, 480
  %207 = mul i64 %205, 640
  br label %polly.loop_header372.us.1.1

polly.loop_header372.us.1.1:                      ; preds = %polly.loop_exit381.loopexit.us.1.1, %polly.loop_header372.us.preheader.1.1
  %polly.indvar375.us.1.1 = phi i64 [ %polly.indvar_next376.us.1.1, %polly.loop_exit381.loopexit.us.1.1 ], [ 0, %polly.loop_header372.us.preheader.1.1 ]
  %208 = shl nuw nsw i64 %polly.indvar375.us.1.1, 3
  %scevgep386.us.1.1 = getelementptr i8, i8* %call1, i64 %208
  %scevgep390.us.1.1 = getelementptr i8, i8* %call2, i64 %208
  %scevgep391.us.1.1 = getelementptr i8, i8* %scevgep390.us.1.1, i64 %206
  %scevgep391392.us.1.1 = bitcast i8* %scevgep391.us.1.1 to double*
  %_p_scalar_393.us.1.1 = load double, double* %scevgep391392.us.1.1, align 8, !alias.scope !72, !noalias !75
  %scevgep399.us.1.1 = getelementptr i8, i8* %scevgep386.us.1.1, i64 %206
  %scevgep399400.us.1.1 = bitcast i8* %scevgep399.us.1.1 to double*
  %_p_scalar_401.us.1.1 = load double, double* %scevgep399400.us.1.1, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header379.us.1.1

polly.loop_header379.us.1.1:                      ; preds = %polly.loop_header379.us.1.1, %polly.loop_header372.us.1.1
  %polly.indvar383.us.1.1 = phi i64 [ 0, %polly.loop_header372.us.1.1 ], [ %polly.indvar_next384.us.1.1, %polly.loop_header379.us.1.1 ]
  %209 = add nuw nsw i64 %polly.indvar383.us.1.1, 50
  %210 = mul nuw nsw i64 %209, 480
  %scevgep387.us.1.1 = getelementptr i8, i8* %scevgep386.us.1.1, i64 %210
  %scevgep387388.us.1.1 = bitcast i8* %scevgep387.us.1.1 to double*
  %_p_scalar_389.us.1.1 = load double, double* %scevgep387388.us.1.1, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.us.1.1 = fmul fast double %_p_scalar_393.us.1.1, %_p_scalar_389.us.1.1
  %scevgep395.us.1.1 = getelementptr i8, i8* %scevgep390.us.1.1, i64 %210
  %scevgep395396.us.1.1 = bitcast i8* %scevgep395.us.1.1 to double*
  %_p_scalar_397.us.1.1 = load double, double* %scevgep395396.us.1.1, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.us.1.1 = fmul fast double %_p_scalar_401.us.1.1, %_p_scalar_397.us.1.1
  %211 = shl i64 %209, 3
  %212 = add i64 %211, %207
  %scevgep402.us.1.1 = getelementptr i8, i8* %call, i64 %212
  %scevgep402403.us.1.1 = bitcast i8* %scevgep402.us.1.1 to double*
  %_p_scalar_404.us.1.1 = load double, double* %scevgep402403.us.1.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.us.1.1 = fadd fast double %p_mul37.i75.us.1.1, %p_mul27.i73.us.1.1
  %p_reass.mul.i78.us.1.1 = fmul fast double %p_reass.add.i77.us.1.1, 1.500000e+00
  %p_add42.i79.us.1.1 = fadd fast double %p_reass.mul.i78.us.1.1, %_p_scalar_404.us.1.1
  store double %p_add42.i79.us.1.1, double* %scevgep402403.us.1.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next384.us.1.1 = add nuw nsw i64 %polly.indvar383.us.1.1, 1
  %exitcond784.1.1.not = icmp eq i64 %polly.indvar383.us.1.1, %smin783.1.1
  br i1 %exitcond784.1.1.not, label %polly.loop_exit381.loopexit.us.1.1, label %polly.loop_header379.us.1.1

polly.loop_exit381.loopexit.us.1.1:               ; preds = %polly.loop_header379.us.1.1
  %polly.indvar_next376.us.1.1 = add nuw nsw i64 %polly.indvar375.us.1.1, 1
  %exitcond785.1.1.not = icmp eq i64 %polly.indvar_next376.us.1.1, 60
  br i1 %exitcond785.1.1.not, label %polly.loop_exit374.1.1, label %polly.loop_header372.us.1.1

polly.loop_exit374.1.1:                           ; preds = %polly.loop_exit381.loopexit.us.1.1
  %polly.indvar_next370.1.1 = add nuw nsw i64 %polly.indvar369.1.1, 1
  %indvars.iv.next782.1.1 = add nuw nsw i64 %indvars.iv781.1.1, 1
  %exitcond787.1.1.not = icmp eq i64 %polly.indvar_next370.1.1, 16
  br i1 %exitcond787.1.1.not, label %kernel_syr2k.exit90, label %polly.loop_header372.us.preheader.1.1

polly.loop_header520.1:                           ; preds = %polly.loop_exit529, %polly.loop_exit529.1
  %indvars.iv790.1 = phi i64 [ %indvars.iv.next791.1, %polly.loop_exit529.1 ], [ 0, %polly.loop_exit529 ]
  %polly.indvar524.1 = phi i64 [ %polly.indvar_next525.1, %polly.loop_exit529.1 ], [ 50, %polly.loop_exit529 ]
  %smin792.1 = call i64 @llvm.smin.i64(i64 %indvars.iv790.1, i64 49)
  %polly.loop_guard537.11024 = icmp ugt i64 %polly.indvar524.1, 49
  %213 = mul i64 %polly.indvar524.1, 480
  %214 = mul i64 %polly.indvar524.1, 640
  br i1 %polly.loop_guard537.11024, label %polly.loop_header527.us.1, label %polly.loop_exit529.1

polly.loop_header527.us.1:                        ; preds = %polly.loop_header520.1, %polly.loop_exit536.loopexit.us.1
  %polly.indvar530.us.1 = phi i64 [ %polly.indvar_next531.us.1, %polly.loop_exit536.loopexit.us.1 ], [ 0, %polly.loop_header520.1 ]
  %215 = shl nuw nsw i64 %polly.indvar530.us.1, 3
  %scevgep541.us.1 = getelementptr i8, i8* %call1, i64 %215
  %scevgep545.us.1 = getelementptr i8, i8* %call2, i64 %215
  %scevgep546.us.1 = getelementptr i8, i8* %scevgep545.us.1, i64 %213
  %scevgep546547.us.1 = bitcast i8* %scevgep546.us.1 to double*
  %_p_scalar_548.us.1 = load double, double* %scevgep546547.us.1, align 8, !alias.scope !81, !noalias !84
  %scevgep554.us.1 = getelementptr i8, i8* %scevgep541.us.1, i64 %213
  %scevgep554555.us.1 = bitcast i8* %scevgep554.us.1 to double*
  %_p_scalar_556.us.1 = load double, double* %scevgep554555.us.1, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header534.us.1

polly.loop_header534.us.1:                        ; preds = %polly.loop_header534.us.1, %polly.loop_header527.us.1
  %polly.indvar538.us.1 = phi i64 [ 0, %polly.loop_header527.us.1 ], [ %polly.indvar_next539.us.1, %polly.loop_header534.us.1 ]
  %216 = add nuw nsw i64 %polly.indvar538.us.1, 50
  %217 = mul nuw nsw i64 %216, 480
  %scevgep542.us.1 = getelementptr i8, i8* %scevgep541.us.1, i64 %217
  %scevgep542543.us.1 = bitcast i8* %scevgep542.us.1 to double*
  %_p_scalar_544.us.1 = load double, double* %scevgep542543.us.1, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_548.us.1, %_p_scalar_544.us.1
  %scevgep550.us.1 = getelementptr i8, i8* %scevgep545.us.1, i64 %217
  %scevgep550551.us.1 = bitcast i8* %scevgep550.us.1 to double*
  %_p_scalar_552.us.1 = load double, double* %scevgep550551.us.1, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_556.us.1, %_p_scalar_552.us.1
  %218 = shl i64 %216, 3
  %219 = add i64 %218, %214
  %scevgep557.us.1 = getelementptr i8, i8* %call, i64 %219
  %scevgep557558.us.1 = bitcast i8* %scevgep557.us.1 to double*
  %_p_scalar_559.us.1 = load double, double* %scevgep557558.us.1, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_559.us.1
  store double %p_add42.i.us.1, double* %scevgep557558.us.1, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next539.us.1 = add nuw nsw i64 %polly.indvar538.us.1, 1
  %exitcond793.1.not = icmp eq i64 %polly.indvar538.us.1, %smin792.1
  br i1 %exitcond793.1.not, label %polly.loop_exit536.loopexit.us.1, label %polly.loop_header534.us.1

polly.loop_exit536.loopexit.us.1:                 ; preds = %polly.loop_header534.us.1
  %polly.indvar_next531.us.1 = add nuw nsw i64 %polly.indvar530.us.1, 1
  %exitcond794.1.not = icmp eq i64 %polly.indvar_next531.us.1, 60
  br i1 %exitcond794.1.not, label %polly.loop_exit529.1, label %polly.loop_header527.us.1

polly.loop_exit529.1:                             ; preds = %polly.loop_exit536.loopexit.us.1, %polly.loop_header520.1
  %polly.indvar_next525.1 = add nuw nsw i64 %polly.indvar524.1, 1
  %indvars.iv.next791.1 = add nuw nsw i64 %indvars.iv790.1, 1
  %exitcond796.1.not = icmp eq i64 %polly.indvar_next525.1, 64
  br i1 %exitcond796.1.not, label %polly.loop_header527.us.preheader.1927, label %polly.loop_header520.1

polly.loop_header527.us.preheader.1927:           ; preds = %polly.loop_exit529.1, %polly.loop_exit529.1963
  %indvars.iv790.1922 = phi i64 [ %indvars.iv.next791.1961, %polly.loop_exit529.1963 ], [ 64, %polly.loop_exit529.1 ]
  %polly.indvar524.1923 = phi i64 [ %polly.indvar_next525.1960, %polly.loop_exit529.1963 ], [ 0, %polly.loop_exit529.1 ]
  %smin792.1924 = call i64 @llvm.smin.i64(i64 %indvars.iv790.1922, i64 49)
  %220 = add nuw nsw i64 %polly.indvar524.1923, 64
  %221 = mul i64 %220, 480
  %222 = mul i64 %220, 640
  br label %polly.loop_header527.us.1937

polly.loop_header527.us.1937:                     ; preds = %polly.loop_exit536.loopexit.us.1958, %polly.loop_header527.us.preheader.1927
  %polly.indvar530.us.1928 = phi i64 [ %polly.indvar_next531.us.1956, %polly.loop_exit536.loopexit.us.1958 ], [ 0, %polly.loop_header527.us.preheader.1927 ]
  %223 = shl nuw nsw i64 %polly.indvar530.us.1928, 3
  %scevgep541.us.1929 = getelementptr i8, i8* %call1, i64 %223
  %scevgep545.us.1930 = getelementptr i8, i8* %call2, i64 %223
  %scevgep546.us.1931 = getelementptr i8, i8* %scevgep545.us.1930, i64 %221
  %scevgep546547.us.1932 = bitcast i8* %scevgep546.us.1931 to double*
  %_p_scalar_548.us.1933 = load double, double* %scevgep546547.us.1932, align 8, !alias.scope !81, !noalias !84
  %scevgep554.us.1934 = getelementptr i8, i8* %scevgep541.us.1929, i64 %221
  %scevgep554555.us.1935 = bitcast i8* %scevgep554.us.1934 to double*
  %_p_scalar_556.us.1936 = load double, double* %scevgep554555.us.1935, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header534.us.1955

polly.loop_header534.us.1955:                     ; preds = %polly.loop_header534.us.1955, %polly.loop_header527.us.1937
  %polly.indvar538.us.1938 = phi i64 [ 0, %polly.loop_header527.us.1937 ], [ %polly.indvar_next539.us.1953, %polly.loop_header534.us.1955 ]
  %224 = mul nuw nsw i64 %polly.indvar538.us.1938, 480
  %scevgep542.us.1939 = getelementptr i8, i8* %scevgep541.us.1929, i64 %224
  %scevgep542543.us.1940 = bitcast i8* %scevgep542.us.1939 to double*
  %_p_scalar_544.us.1941 = load double, double* %scevgep542543.us.1940, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.1942 = fmul fast double %_p_scalar_548.us.1933, %_p_scalar_544.us.1941
  %scevgep550.us.1943 = getelementptr i8, i8* %scevgep545.us.1930, i64 %224
  %scevgep550551.us.1944 = bitcast i8* %scevgep550.us.1943 to double*
  %_p_scalar_552.us.1945 = load double, double* %scevgep550551.us.1944, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.1946 = fmul fast double %_p_scalar_556.us.1936, %_p_scalar_552.us.1945
  %225 = shl i64 %polly.indvar538.us.1938, 3
  %226 = add i64 %225, %222
  %scevgep557.us.1947 = getelementptr i8, i8* %call, i64 %226
  %scevgep557558.us.1948 = bitcast i8* %scevgep557.us.1947 to double*
  %_p_scalar_559.us.1949 = load double, double* %scevgep557558.us.1948, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.1950 = fadd fast double %p_mul37.i.us.1946, %p_mul27.i.us.1942
  %p_reass.mul.i.us.1951 = fmul fast double %p_reass.add.i.us.1950, 1.500000e+00
  %p_add42.i.us.1952 = fadd fast double %p_reass.mul.i.us.1951, %_p_scalar_559.us.1949
  store double %p_add42.i.us.1952, double* %scevgep557558.us.1948, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next539.us.1953 = add nuw nsw i64 %polly.indvar538.us.1938, 1
  %exitcond793.1954.not = icmp eq i64 %polly.indvar538.us.1938, %smin792.1924
  br i1 %exitcond793.1954.not, label %polly.loop_exit536.loopexit.us.1958, label %polly.loop_header534.us.1955

polly.loop_exit536.loopexit.us.1958:              ; preds = %polly.loop_header534.us.1955
  %polly.indvar_next531.us.1956 = add nuw nsw i64 %polly.indvar530.us.1928, 1
  %exitcond794.1957.not = icmp eq i64 %polly.indvar_next531.us.1956, 60
  br i1 %exitcond794.1957.not, label %polly.loop_exit529.1963, label %polly.loop_header527.us.1937

polly.loop_exit529.1963:                          ; preds = %polly.loop_exit536.loopexit.us.1958
  %polly.indvar_next525.1960 = add nuw nsw i64 %polly.indvar524.1923, 1
  %indvars.iv.next791.1961 = add nuw nsw i64 %indvars.iv790.1922, 1
  %exitcond796.1962.not = icmp eq i64 %polly.indvar_next525.1960, 16
  br i1 %exitcond796.1962.not, label %polly.loop_header527.us.preheader.1.1, label %polly.loop_header527.us.preheader.1927

polly.loop_header527.us.preheader.1.1:            ; preds = %polly.loop_exit529.1963, %polly.loop_exit529.1.1
  %indvars.iv790.1.1 = phi i64 [ %indvars.iv.next791.1.1, %polly.loop_exit529.1.1 ], [ 14, %polly.loop_exit529.1963 ]
  %polly.indvar524.1.1 = phi i64 [ %polly.indvar_next525.1.1, %polly.loop_exit529.1.1 ], [ 0, %polly.loop_exit529.1963 ]
  %smin792.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv790.1.1, i64 49)
  %227 = add nuw nsw i64 %polly.indvar524.1.1, 64
  %228 = mul i64 %227, 480
  %229 = mul i64 %227, 640
  br label %polly.loop_header527.us.1.1

polly.loop_header527.us.1.1:                      ; preds = %polly.loop_exit536.loopexit.us.1.1, %polly.loop_header527.us.preheader.1.1
  %polly.indvar530.us.1.1 = phi i64 [ %polly.indvar_next531.us.1.1, %polly.loop_exit536.loopexit.us.1.1 ], [ 0, %polly.loop_header527.us.preheader.1.1 ]
  %230 = shl nuw nsw i64 %polly.indvar530.us.1.1, 3
  %scevgep541.us.1.1 = getelementptr i8, i8* %call1, i64 %230
  %scevgep545.us.1.1 = getelementptr i8, i8* %call2, i64 %230
  %scevgep546.us.1.1 = getelementptr i8, i8* %scevgep545.us.1.1, i64 %228
  %scevgep546547.us.1.1 = bitcast i8* %scevgep546.us.1.1 to double*
  %_p_scalar_548.us.1.1 = load double, double* %scevgep546547.us.1.1, align 8, !alias.scope !81, !noalias !84
  %scevgep554.us.1.1 = getelementptr i8, i8* %scevgep541.us.1.1, i64 %228
  %scevgep554555.us.1.1 = bitcast i8* %scevgep554.us.1.1 to double*
  %_p_scalar_556.us.1.1 = load double, double* %scevgep554555.us.1.1, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header534.us.1.1

polly.loop_header534.us.1.1:                      ; preds = %polly.loop_header534.us.1.1, %polly.loop_header527.us.1.1
  %polly.indvar538.us.1.1 = phi i64 [ 0, %polly.loop_header527.us.1.1 ], [ %polly.indvar_next539.us.1.1, %polly.loop_header534.us.1.1 ]
  %231 = add nuw nsw i64 %polly.indvar538.us.1.1, 50
  %232 = mul nuw nsw i64 %231, 480
  %scevgep542.us.1.1 = getelementptr i8, i8* %scevgep541.us.1.1, i64 %232
  %scevgep542543.us.1.1 = bitcast i8* %scevgep542.us.1.1 to double*
  %_p_scalar_544.us.1.1 = load double, double* %scevgep542543.us.1.1, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.us.1.1 = fmul fast double %_p_scalar_548.us.1.1, %_p_scalar_544.us.1.1
  %scevgep550.us.1.1 = getelementptr i8, i8* %scevgep545.us.1.1, i64 %232
  %scevgep550551.us.1.1 = bitcast i8* %scevgep550.us.1.1 to double*
  %_p_scalar_552.us.1.1 = load double, double* %scevgep550551.us.1.1, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.us.1.1 = fmul fast double %_p_scalar_556.us.1.1, %_p_scalar_552.us.1.1
  %233 = shl i64 %231, 3
  %234 = add i64 %233, %229
  %scevgep557.us.1.1 = getelementptr i8, i8* %call, i64 %234
  %scevgep557558.us.1.1 = bitcast i8* %scevgep557.us.1.1 to double*
  %_p_scalar_559.us.1.1 = load double, double* %scevgep557558.us.1.1, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.us.1.1 = fadd fast double %p_mul37.i.us.1.1, %p_mul27.i.us.1.1
  %p_reass.mul.i.us.1.1 = fmul fast double %p_reass.add.i.us.1.1, 1.500000e+00
  %p_add42.i.us.1.1 = fadd fast double %p_reass.mul.i.us.1.1, %_p_scalar_559.us.1.1
  store double %p_add42.i.us.1.1, double* %scevgep557558.us.1.1, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next539.us.1.1 = add nuw nsw i64 %polly.indvar538.us.1.1, 1
  %exitcond793.1.1.not = icmp eq i64 %polly.indvar538.us.1.1, %smin792.1.1
  br i1 %exitcond793.1.1.not, label %polly.loop_exit536.loopexit.us.1.1, label %polly.loop_header534.us.1.1

polly.loop_exit536.loopexit.us.1.1:               ; preds = %polly.loop_header534.us.1.1
  %polly.indvar_next531.us.1.1 = add nuw nsw i64 %polly.indvar530.us.1.1, 1
  %exitcond794.1.1.not = icmp eq i64 %polly.indvar_next531.us.1.1, 60
  br i1 %exitcond794.1.1.not, label %polly.loop_exit529.1.1, label %polly.loop_header527.us.1.1

polly.loop_exit529.1.1:                           ; preds = %polly.loop_exit536.loopexit.us.1.1
  %polly.indvar_next525.1.1 = add nuw nsw i64 %polly.indvar524.1.1, 1
  %indvars.iv.next791.1.1 = add nuw nsw i64 %indvars.iv790.1.1, 1
  %exitcond796.1.1.not = icmp eq i64 %polly.indvar_next525.1.1, 16
  br i1 %exitcond796.1.1.not, label %kernel_syr2k.exit, label %polly.loop_header527.us.preheader.1.1

polly.loop_header751.1:                           ; preds = %polly.loop_exit759, %polly.loop_exit759.1
  %polly.indvar754.1 = phi i64 [ %polly.indvar_next755.1, %polly.loop_exit759.1 ], [ 0, %polly.loop_exit759 ]
  %235 = mul nuw nsw i64 %polly.indvar754.1, 480
  %236 = trunc i64 %polly.indvar754.1 to i32
  %broadcast.splatinsert1265 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1266 = shufflevector <4 x i32> %broadcast.splatinsert1265, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1257

vector.body1257:                                  ; preds = %vector.body1257, %polly.loop_header751.1
  %index1259 = phi i64 [ 0, %polly.loop_header751.1 ], [ %index.next1260, %vector.body1257 ]
  %vec.ind1263 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header751.1 ], [ %vec.ind.next1264, %vector.body1257 ]
  %237 = add nuw nsw <4 x i64> %vec.ind1263, <i64 32, i64 32, i64 32, i64 32>
  %238 = trunc <4 x i64> %237 to <4 x i32>
  %239 = mul <4 x i32> %broadcast.splat1266, %238
  %240 = add <4 x i32> %239, <i32 1, i32 1, i32 1, i32 1>
  %241 = urem <4 x i32> %240, <i32 80, i32 80, i32 80, i32 80>
  %242 = sitofp <4 x i32> %241 to <4 x double>
  %243 = fmul fast <4 x double> %242, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %244 = extractelement <4 x i64> %237, i32 0
  %245 = shl i64 %244, 3
  %246 = add i64 %245, %235
  %247 = getelementptr i8, i8* %call1, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %243, <4 x double>* %248, align 8, !alias.scope !89, !noalias !94
  %index.next1260 = add i64 %index1259, 4
  %vec.ind.next1264 = add <4 x i64> %vec.ind1263, <i64 4, i64 4, i64 4, i64 4>
  %249 = icmp eq i64 %index.next1260, 28
  br i1 %249, label %polly.loop_exit759.1, label %vector.body1257, !llvm.loop !96

polly.loop_exit759.1:                             ; preds = %vector.body1257
  %polly.indvar_next755.1 = add nuw nsw i64 %polly.indvar754.1, 1
  %exitcond803.1.not = icmp eq i64 %polly.indvar_next755.1, 32
  br i1 %exitcond803.1.not, label %polly.loop_header751.1967, label %polly.loop_header751.1

polly.loop_header751.1967:                        ; preds = %polly.loop_exit759.1, %polly.loop_exit759.1978
  %polly.indvar754.1966 = phi i64 [ %polly.indvar_next755.1976, %polly.loop_exit759.1978 ], [ 0, %polly.loop_exit759.1 ]
  %250 = add nuw nsw i64 %polly.indvar754.1966, 32
  %251 = mul nuw nsw i64 %250, 480
  %252 = trunc i64 %250 to i32
  %broadcast.splatinsert1279 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat1280 = shufflevector <4 x i32> %broadcast.splatinsert1279, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1269

vector.body1269:                                  ; preds = %vector.body1269, %polly.loop_header751.1967
  %index1271 = phi i64 [ 0, %polly.loop_header751.1967 ], [ %index.next1272, %vector.body1269 ]
  %vec.ind1277 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header751.1967 ], [ %vec.ind.next1278, %vector.body1269 ]
  %253 = mul <4 x i32> %vec.ind1277, %broadcast.splat1280
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 80, i32 80, i32 80, i32 80>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %258 = shl i64 %index1271, 3
  %259 = add i64 %258, %251
  %260 = getelementptr i8, i8* %call1, i64 %259
  %261 = bitcast i8* %260 to <4 x double>*
  store <4 x double> %257, <4 x double>* %261, align 8, !alias.scope !89, !noalias !94
  %index.next1272 = add i64 %index1271, 4
  %vec.ind.next1278 = add <4 x i32> %vec.ind1277, <i32 4, i32 4, i32 4, i32 4>
  %262 = icmp eq i64 %index.next1272, 32
  br i1 %262, label %polly.loop_exit759.1978, label %vector.body1269, !llvm.loop !97

polly.loop_exit759.1978:                          ; preds = %vector.body1269
  %polly.indvar_next755.1976 = add nuw nsw i64 %polly.indvar754.1966, 1
  %exitcond803.1977.not = icmp eq i64 %polly.indvar_next755.1976, 32
  br i1 %exitcond803.1977.not, label %polly.loop_header751.1.1, label %polly.loop_header751.1967

polly.loop_header751.1.1:                         ; preds = %polly.loop_exit759.1978, %polly.loop_exit759.1.1
  %polly.indvar754.1.1 = phi i64 [ %polly.indvar_next755.1.1, %polly.loop_exit759.1.1 ], [ 0, %polly.loop_exit759.1978 ]
  %263 = add nuw nsw i64 %polly.indvar754.1.1, 32
  %264 = mul nuw nsw i64 %263, 480
  %265 = trunc i64 %263 to i32
  %broadcast.splatinsert1291 = insertelement <4 x i32> poison, i32 %265, i32 0
  %broadcast.splat1292 = shufflevector <4 x i32> %broadcast.splatinsert1291, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %polly.loop_header751.1.1
  %index1285 = phi i64 [ 0, %polly.loop_header751.1.1 ], [ %index.next1286, %vector.body1283 ]
  %vec.ind1289 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header751.1.1 ], [ %vec.ind.next1290, %vector.body1283 ]
  %266 = add nuw nsw <4 x i64> %vec.ind1289, <i64 32, i64 32, i64 32, i64 32>
  %267 = trunc <4 x i64> %266 to <4 x i32>
  %268 = mul <4 x i32> %broadcast.splat1292, %267
  %269 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  %270 = urem <4 x i32> %269, <i32 80, i32 80, i32 80, i32 80>
  %271 = sitofp <4 x i32> %270 to <4 x double>
  %272 = fmul fast <4 x double> %271, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %273 = extractelement <4 x i64> %266, i32 0
  %274 = shl i64 %273, 3
  %275 = add i64 %274, %264
  %276 = getelementptr i8, i8* %call1, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %272, <4 x double>* %277, align 8, !alias.scope !89, !noalias !94
  %index.next1286 = add i64 %index1285, 4
  %vec.ind.next1290 = add <4 x i64> %vec.ind1289, <i64 4, i64 4, i64 4, i64 4>
  %278 = icmp eq i64 %index.next1286, 28
  br i1 %278, label %polly.loop_exit759.1.1, label %vector.body1283, !llvm.loop !98

polly.loop_exit759.1.1:                           ; preds = %vector.body1283
  %polly.indvar_next755.1.1 = add nuw nsw i64 %polly.indvar754.1.1, 1
  %exitcond803.1.1.not = icmp eq i64 %polly.indvar_next755.1.1, 32
  br i1 %exitcond803.1.1.not, label %polly.loop_header751.2, label %polly.loop_header751.1.1

polly.loop_header751.2:                           ; preds = %polly.loop_exit759.1.1, %polly.loop_exit759.2
  %polly.indvar754.2 = phi i64 [ %polly.indvar_next755.2, %polly.loop_exit759.2 ], [ 0, %polly.loop_exit759.1.1 ]
  %279 = add nuw nsw i64 %polly.indvar754.2, 64
  %280 = mul nuw nsw i64 %279, 480
  %281 = trunc i64 %279 to i32
  %broadcast.splatinsert1305 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1306 = shufflevector <4 x i32> %broadcast.splatinsert1305, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %polly.loop_header751.2
  %index1297 = phi i64 [ 0, %polly.loop_header751.2 ], [ %index.next1298, %vector.body1295 ]
  %vec.ind1303 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header751.2 ], [ %vec.ind.next1304, %vector.body1295 ]
  %282 = mul <4 x i32> %vec.ind1303, %broadcast.splat1306
  %283 = add <4 x i32> %282, <i32 1, i32 1, i32 1, i32 1>
  %284 = urem <4 x i32> %283, <i32 80, i32 80, i32 80, i32 80>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %287 = shl i64 %index1297, 3
  %288 = add i64 %287, %280
  %289 = getelementptr i8, i8* %call1, i64 %288
  %290 = bitcast i8* %289 to <4 x double>*
  store <4 x double> %286, <4 x double>* %290, align 8, !alias.scope !89, !noalias !94
  %index.next1298 = add i64 %index1297, 4
  %vec.ind.next1304 = add <4 x i32> %vec.ind1303, <i32 4, i32 4, i32 4, i32 4>
  %291 = icmp eq i64 %index.next1298, 32
  br i1 %291, label %polly.loop_exit759.2, label %vector.body1295, !llvm.loop !99

polly.loop_exit759.2:                             ; preds = %vector.body1295
  %polly.indvar_next755.2 = add nuw nsw i64 %polly.indvar754.2, 1
  %exitcond803.2.not = icmp eq i64 %polly.indvar_next755.2, 16
  br i1 %exitcond803.2.not, label %polly.loop_header751.1.2, label %polly.loop_header751.2

polly.loop_header751.1.2:                         ; preds = %polly.loop_exit759.2, %polly.loop_exit759.1.2
  %polly.indvar754.1.2 = phi i64 [ %polly.indvar_next755.1.2, %polly.loop_exit759.1.2 ], [ 0, %polly.loop_exit759.2 ]
  %292 = add nuw nsw i64 %polly.indvar754.1.2, 64
  %293 = mul nuw nsw i64 %292, 480
  %294 = trunc i64 %292 to i32
  %broadcast.splatinsert1317 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1318 = shufflevector <4 x i32> %broadcast.splatinsert1317, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1309

vector.body1309:                                  ; preds = %vector.body1309, %polly.loop_header751.1.2
  %index1311 = phi i64 [ 0, %polly.loop_header751.1.2 ], [ %index.next1312, %vector.body1309 ]
  %vec.ind1315 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header751.1.2 ], [ %vec.ind.next1316, %vector.body1309 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1315, <i64 32, i64 32, i64 32, i64 32>
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1318, %296
  %298 = add <4 x i32> %297, <i32 1, i32 1, i32 1, i32 1>
  %299 = urem <4 x i32> %298, <i32 80, i32 80, i32 80, i32 80>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add i64 %303, %293
  %305 = getelementptr i8, i8* %call1, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !89, !noalias !94
  %index.next1312 = add i64 %index1311, 4
  %vec.ind.next1316 = add <4 x i64> %vec.ind1315, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1312, 28
  br i1 %307, label %polly.loop_exit759.1.2, label %vector.body1309, !llvm.loop !100

polly.loop_exit759.1.2:                           ; preds = %vector.body1309
  %polly.indvar_next755.1.2 = add nuw nsw i64 %polly.indvar754.1.2, 1
  %exitcond803.1.2.not = icmp eq i64 %polly.indvar_next755.1.2, 16
  br i1 %exitcond803.1.2.not, label %init_array.exit, label %polly.loop_header751.1.2

polly.loop_header725.1:                           ; preds = %polly.loop_exit733, %polly.loop_exit733.1
  %polly.indvar728.1 = phi i64 [ %polly.indvar_next729.1, %polly.loop_exit733.1 ], [ 0, %polly.loop_exit733 ]
  %308 = mul nuw nsw i64 %polly.indvar728.1, 480
  %309 = trunc i64 %polly.indvar728.1 to i32
  %broadcast.splatinsert1187 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1188 = shufflevector <4 x i32> %broadcast.splatinsert1187, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1179

vector.body1179:                                  ; preds = %vector.body1179, %polly.loop_header725.1
  %index1181 = phi i64 [ 0, %polly.loop_header725.1 ], [ %index.next1182, %vector.body1179 ]
  %vec.ind1185 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1 ], [ %vec.ind.next1186, %vector.body1179 ]
  %310 = add nuw nsw <4 x i64> %vec.ind1185, <i64 32, i64 32, i64 32, i64 32>
  %311 = trunc <4 x i64> %310 to <4 x i32>
  %312 = mul <4 x i32> %broadcast.splat1188, %311
  %313 = add <4 x i32> %312, <i32 2, i32 2, i32 2, i32 2>
  %314 = urem <4 x i32> %313, <i32 60, i32 60, i32 60, i32 60>
  %315 = sitofp <4 x i32> %314 to <4 x double>
  %316 = fmul fast <4 x double> %315, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %317 = extractelement <4 x i64> %310, i32 0
  %318 = shl i64 %317, 3
  %319 = add i64 %318, %308
  %320 = getelementptr i8, i8* %call2, i64 %319
  %321 = bitcast i8* %320 to <4 x double>*
  store <4 x double> %316, <4 x double>* %321, align 8, !alias.scope !90, !noalias !92
  %index.next1182 = add i64 %index1181, 4
  %vec.ind.next1186 = add <4 x i64> %vec.ind1185, <i64 4, i64 4, i64 4, i64 4>
  %322 = icmp eq i64 %index.next1182, 28
  br i1 %322, label %polly.loop_exit733.1, label %vector.body1179, !llvm.loop !101

polly.loop_exit733.1:                             ; preds = %vector.body1179
  %polly.indvar_next729.1 = add nuw nsw i64 %polly.indvar728.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next729.1, 32
  br i1 %exitcond809.1.not, label %polly.loop_header725.1981, label %polly.loop_header725.1

polly.loop_header725.1981:                        ; preds = %polly.loop_exit733.1, %polly.loop_exit733.1992
  %polly.indvar728.1980 = phi i64 [ %polly.indvar_next729.1990, %polly.loop_exit733.1992 ], [ 0, %polly.loop_exit733.1 ]
  %323 = add nuw nsw i64 %polly.indvar728.1980, 32
  %324 = mul nuw nsw i64 %323, 480
  %325 = trunc i64 %323 to i32
  %broadcast.splatinsert1201 = insertelement <4 x i32> poison, i32 %325, i32 0
  %broadcast.splat1202 = shufflevector <4 x i32> %broadcast.splatinsert1201, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %polly.loop_header725.1981
  %index1193 = phi i64 [ 0, %polly.loop_header725.1981 ], [ %index.next1194, %vector.body1191 ]
  %vec.ind1199 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.1981 ], [ %vec.ind.next1200, %vector.body1191 ]
  %326 = mul <4 x i32> %vec.ind1199, %broadcast.splat1202
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 60, i32 60, i32 60, i32 60>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %331 = shl i64 %index1193, 3
  %332 = add i64 %331, %324
  %333 = getelementptr i8, i8* %call2, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %330, <4 x double>* %334, align 8, !alias.scope !90, !noalias !92
  %index.next1194 = add i64 %index1193, 4
  %vec.ind.next1200 = add <4 x i32> %vec.ind1199, <i32 4, i32 4, i32 4, i32 4>
  %335 = icmp eq i64 %index.next1194, 32
  br i1 %335, label %polly.loop_exit733.1992, label %vector.body1191, !llvm.loop !102

polly.loop_exit733.1992:                          ; preds = %vector.body1191
  %polly.indvar_next729.1990 = add nuw nsw i64 %polly.indvar728.1980, 1
  %exitcond809.1991.not = icmp eq i64 %polly.indvar_next729.1990, 32
  br i1 %exitcond809.1991.not, label %polly.loop_header725.1.1, label %polly.loop_header725.1981

polly.loop_header725.1.1:                         ; preds = %polly.loop_exit733.1992, %polly.loop_exit733.1.1
  %polly.indvar728.1.1 = phi i64 [ %polly.indvar_next729.1.1, %polly.loop_exit733.1.1 ], [ 0, %polly.loop_exit733.1992 ]
  %336 = add nuw nsw i64 %polly.indvar728.1.1, 32
  %337 = mul nuw nsw i64 %336, 480
  %338 = trunc i64 %336 to i32
  %broadcast.splatinsert1213 = insertelement <4 x i32> poison, i32 %338, i32 0
  %broadcast.splat1214 = shufflevector <4 x i32> %broadcast.splatinsert1213, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1205

vector.body1205:                                  ; preds = %vector.body1205, %polly.loop_header725.1.1
  %index1207 = phi i64 [ 0, %polly.loop_header725.1.1 ], [ %index.next1208, %vector.body1205 ]
  %vec.ind1211 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.1 ], [ %vec.ind.next1212, %vector.body1205 ]
  %339 = add nuw nsw <4 x i64> %vec.ind1211, <i64 32, i64 32, i64 32, i64 32>
  %340 = trunc <4 x i64> %339 to <4 x i32>
  %341 = mul <4 x i32> %broadcast.splat1214, %340
  %342 = add <4 x i32> %341, <i32 2, i32 2, i32 2, i32 2>
  %343 = urem <4 x i32> %342, <i32 60, i32 60, i32 60, i32 60>
  %344 = sitofp <4 x i32> %343 to <4 x double>
  %345 = fmul fast <4 x double> %344, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %346 = extractelement <4 x i64> %339, i32 0
  %347 = shl i64 %346, 3
  %348 = add i64 %347, %337
  %349 = getelementptr i8, i8* %call2, i64 %348
  %350 = bitcast i8* %349 to <4 x double>*
  store <4 x double> %345, <4 x double>* %350, align 8, !alias.scope !90, !noalias !92
  %index.next1208 = add i64 %index1207, 4
  %vec.ind.next1212 = add <4 x i64> %vec.ind1211, <i64 4, i64 4, i64 4, i64 4>
  %351 = icmp eq i64 %index.next1208, 28
  br i1 %351, label %polly.loop_exit733.1.1, label %vector.body1205, !llvm.loop !103

polly.loop_exit733.1.1:                           ; preds = %vector.body1205
  %polly.indvar_next729.1.1 = add nuw nsw i64 %polly.indvar728.1.1, 1
  %exitcond809.1.1.not = icmp eq i64 %polly.indvar_next729.1.1, 32
  br i1 %exitcond809.1.1.not, label %polly.loop_header725.2, label %polly.loop_header725.1.1

polly.loop_header725.2:                           ; preds = %polly.loop_exit733.1.1, %polly.loop_exit733.2
  %polly.indvar728.2 = phi i64 [ %polly.indvar_next729.2, %polly.loop_exit733.2 ], [ 0, %polly.loop_exit733.1.1 ]
  %352 = add nuw nsw i64 %polly.indvar728.2, 64
  %353 = mul nuw nsw i64 %352, 480
  %354 = trunc i64 %352 to i32
  %broadcast.splatinsert1227 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1228 = shufflevector <4 x i32> %broadcast.splatinsert1227, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1217

vector.body1217:                                  ; preds = %vector.body1217, %polly.loop_header725.2
  %index1219 = phi i64 [ 0, %polly.loop_header725.2 ], [ %index.next1220, %vector.body1217 ]
  %vec.ind1225 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header725.2 ], [ %vec.ind.next1226, %vector.body1217 ]
  %355 = mul <4 x i32> %vec.ind1225, %broadcast.splat1228
  %356 = add <4 x i32> %355, <i32 2, i32 2, i32 2, i32 2>
  %357 = urem <4 x i32> %356, <i32 60, i32 60, i32 60, i32 60>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = shl i64 %index1219, 3
  %361 = add i64 %360, %353
  %362 = getelementptr i8, i8* %call2, i64 %361
  %363 = bitcast i8* %362 to <4 x double>*
  store <4 x double> %359, <4 x double>* %363, align 8, !alias.scope !90, !noalias !92
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1226 = add <4 x i32> %vec.ind1225, <i32 4, i32 4, i32 4, i32 4>
  %364 = icmp eq i64 %index.next1220, 32
  br i1 %364, label %polly.loop_exit733.2, label %vector.body1217, !llvm.loop !104

polly.loop_exit733.2:                             ; preds = %vector.body1217
  %polly.indvar_next729.2 = add nuw nsw i64 %polly.indvar728.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next729.2, 16
  br i1 %exitcond809.2.not, label %polly.loop_header725.1.2, label %polly.loop_header725.2

polly.loop_header725.1.2:                         ; preds = %polly.loop_exit733.2, %polly.loop_exit733.1.2
  %polly.indvar728.1.2 = phi i64 [ %polly.indvar_next729.1.2, %polly.loop_exit733.1.2 ], [ 0, %polly.loop_exit733.2 ]
  %365 = add nuw nsw i64 %polly.indvar728.1.2, 64
  %366 = mul nuw nsw i64 %365, 480
  %367 = trunc i64 %365 to i32
  %broadcast.splatinsert1239 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1240 = shufflevector <4 x i32> %broadcast.splatinsert1239, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %polly.loop_header725.1.2
  %index1233 = phi i64 [ 0, %polly.loop_header725.1.2 ], [ %index.next1234, %vector.body1231 ]
  %vec.ind1237 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header725.1.2 ], [ %vec.ind.next1238, %vector.body1231 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1237, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1240, %369
  %371 = add <4 x i32> %370, <i32 2, i32 2, i32 2, i32 2>
  %372 = urem <4 x i32> %371, <i32 60, i32 60, i32 60, i32 60>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add i64 %376, %366
  %378 = getelementptr i8, i8* %call2, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !90, !noalias !92
  %index.next1234 = add i64 %index1233, 4
  %vec.ind.next1238 = add <4 x i64> %vec.ind1237, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1234, 28
  br i1 %380, label %polly.loop_exit733.1.2, label %vector.body1231, !llvm.loop !105

polly.loop_exit733.1.2:                           ; preds = %vector.body1231
  %polly.indvar_next729.1.2 = add nuw nsw i64 %polly.indvar728.1.2, 1
  %exitcond809.1.2.not = icmp eq i64 %polly.indvar_next729.1.2, 16
  br i1 %exitcond809.1.2.not, label %polly.loop_header751, label %polly.loop_header725.1.2

polly.loop_header698.1:                           ; preds = %polly.loop_exit706, %polly.loop_exit706.1
  %polly.indvar701.1 = phi i64 [ %polly.indvar_next702.1, %polly.loop_exit706.1 ], [ 0, %polly.loop_exit706 ]
  %381 = mul nuw nsw i64 %polly.indvar701.1, 640
  %382 = trunc i64 %polly.indvar701.1 to i32
  %broadcast.splatinsert1073 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat1074 = shufflevector <4 x i32> %broadcast.splatinsert1073, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1065

vector.body1065:                                  ; preds = %vector.body1065, %polly.loop_header698.1
  %index1067 = phi i64 [ 0, %polly.loop_header698.1 ], [ %index.next1068, %vector.body1065 ]
  %vec.ind1071 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.1 ], [ %vec.ind.next1072, %vector.body1065 ]
  %383 = add nuw nsw <4 x i64> %vec.ind1071, <i64 32, i64 32, i64 32, i64 32>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat1074, %384
  %386 = add <4 x i32> %385, <i32 3, i32 3, i32 3, i32 3>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %381
  %393 = getelementptr i8, i8* %call, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !86, !noalias !88
  %index.next1068 = add i64 %index1067, 4
  %vec.ind.next1072 = add <4 x i64> %vec.ind1071, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next1068, 32
  br i1 %395, label %polly.loop_exit706.1, label %vector.body1065, !llvm.loop !106

polly.loop_exit706.1:                             ; preds = %vector.body1065
  %polly.indvar_next702.1 = add nuw nsw i64 %polly.indvar701.1, 1
  %exitcond818.1.not = icmp eq i64 %polly.indvar_next702.1, 32
  br i1 %exitcond818.1.not, label %polly.loop_header698.2, label %polly.loop_header698.1

polly.loop_header698.2:                           ; preds = %polly.loop_exit706.1, %polly.loop_exit706.2
  %polly.indvar701.2 = phi i64 [ %polly.indvar_next702.2, %polly.loop_exit706.2 ], [ 0, %polly.loop_exit706.1 ]
  %396 = mul nuw nsw i64 %polly.indvar701.2, 640
  %397 = trunc i64 %polly.indvar701.2 to i32
  %broadcast.splatinsert1085 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat1086 = shufflevector <4 x i32> %broadcast.splatinsert1085, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %polly.loop_header698.2
  %index1079 = phi i64 [ 0, %polly.loop_header698.2 ], [ %index.next1080, %vector.body1077 ]
  %vec.ind1083 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.2 ], [ %vec.ind.next1084, %vector.body1077 ]
  %398 = add nuw nsw <4 x i64> %vec.ind1083, <i64 64, i64 64, i64 64, i64 64>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat1086, %399
  %401 = add <4 x i32> %400, <i32 3, i32 3, i32 3, i32 3>
  %402 = urem <4 x i32> %401, <i32 80, i32 80, i32 80, i32 80>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = extractelement <4 x i64> %398, i32 0
  %406 = shl i64 %405, 3
  %407 = add nuw nsw i64 %406, %396
  %408 = getelementptr i8, i8* %call, i64 %407
  %409 = bitcast i8* %408 to <4 x double>*
  store <4 x double> %404, <4 x double>* %409, align 8, !alias.scope !86, !noalias !88
  %index.next1080 = add i64 %index1079, 4
  %vec.ind.next1084 = add <4 x i64> %vec.ind1083, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next1080, 16
  br i1 %410, label %polly.loop_exit706.2, label %vector.body1077, !llvm.loop !107

polly.loop_exit706.2:                             ; preds = %vector.body1077
  %polly.indvar_next702.2 = add nuw nsw i64 %polly.indvar701.2, 1
  %exitcond818.2.not = icmp eq i64 %polly.indvar_next702.2, 32
  br i1 %exitcond818.2.not, label %polly.loop_header698.1995, label %polly.loop_header698.2

polly.loop_header698.1995:                        ; preds = %polly.loop_exit706.2, %polly.loop_exit706.11006
  %polly.indvar701.1994 = phi i64 [ %polly.indvar_next702.11004, %polly.loop_exit706.11006 ], [ 0, %polly.loop_exit706.2 ]
  %411 = add nuw nsw i64 %polly.indvar701.1994, 32
  %412 = mul nuw nsw i64 %411, 640
  %413 = trunc i64 %411 to i32
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %413, i32 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1089

vector.body1089:                                  ; preds = %vector.body1089, %polly.loop_header698.1995
  %index1091 = phi i64 [ 0, %polly.loop_header698.1995 ], [ %index.next1092, %vector.body1089 ]
  %vec.ind1097 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header698.1995 ], [ %vec.ind.next1098, %vector.body1089 ]
  %414 = mul <4 x i32> %vec.ind1097, %broadcast.splat1100
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = shl i64 %index1091, 3
  %420 = add nuw nsw i64 %419, %412
  %421 = getelementptr i8, i8* %call, i64 %420
  %422 = bitcast i8* %421 to <4 x double>*
  store <4 x double> %418, <4 x double>* %422, align 8, !alias.scope !86, !noalias !88
  %index.next1092 = add i64 %index1091, 4
  %vec.ind.next1098 = add <4 x i32> %vec.ind1097, <i32 4, i32 4, i32 4, i32 4>
  %423 = icmp eq i64 %index.next1092, 32
  br i1 %423, label %polly.loop_exit706.11006, label %vector.body1089, !llvm.loop !108

polly.loop_exit706.11006:                         ; preds = %vector.body1089
  %polly.indvar_next702.11004 = add nuw nsw i64 %polly.indvar701.1994, 1
  %exitcond818.11005.not = icmp eq i64 %polly.indvar_next702.11004, 32
  br i1 %exitcond818.11005.not, label %polly.loop_header698.1.1, label %polly.loop_header698.1995

polly.loop_header698.1.1:                         ; preds = %polly.loop_exit706.11006, %polly.loop_exit706.1.1
  %polly.indvar701.1.1 = phi i64 [ %polly.indvar_next702.1.1, %polly.loop_exit706.1.1 ], [ 0, %polly.loop_exit706.11006 ]
  %424 = add nuw nsw i64 %polly.indvar701.1.1, 32
  %425 = mul nuw nsw i64 %424, 640
  %426 = trunc i64 %424 to i32
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %polly.loop_header698.1.1
  %index1105 = phi i64 [ 0, %polly.loop_header698.1.1 ], [ %index.next1106, %vector.body1103 ]
  %vec.ind1109 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.1.1 ], [ %vec.ind.next1110, %vector.body1103 ]
  %427 = add nuw nsw <4 x i64> %vec.ind1109, <i64 32, i64 32, i64 32, i64 32>
  %428 = trunc <4 x i64> %427 to <4 x i32>
  %429 = mul <4 x i32> %broadcast.splat1112, %428
  %430 = add <4 x i32> %429, <i32 3, i32 3, i32 3, i32 3>
  %431 = urem <4 x i32> %430, <i32 80, i32 80, i32 80, i32 80>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %434 = extractelement <4 x i64> %427, i32 0
  %435 = shl i64 %434, 3
  %436 = add nuw nsw i64 %435, %425
  %437 = getelementptr i8, i8* %call, i64 %436
  %438 = bitcast i8* %437 to <4 x double>*
  store <4 x double> %433, <4 x double>* %438, align 8, !alias.scope !86, !noalias !88
  %index.next1106 = add i64 %index1105, 4
  %vec.ind.next1110 = add <4 x i64> %vec.ind1109, <i64 4, i64 4, i64 4, i64 4>
  %439 = icmp eq i64 %index.next1106, 32
  br i1 %439, label %polly.loop_exit706.1.1, label %vector.body1103, !llvm.loop !109

polly.loop_exit706.1.1:                           ; preds = %vector.body1103
  %polly.indvar_next702.1.1 = add nuw nsw i64 %polly.indvar701.1.1, 1
  %exitcond818.1.1.not = icmp eq i64 %polly.indvar_next702.1.1, 32
  br i1 %exitcond818.1.1.not, label %polly.loop_header698.2.1, label %polly.loop_header698.1.1

polly.loop_header698.2.1:                         ; preds = %polly.loop_exit706.1.1, %polly.loop_exit706.2.1
  %polly.indvar701.2.1 = phi i64 [ %polly.indvar_next702.2.1, %polly.loop_exit706.2.1 ], [ 0, %polly.loop_exit706.1.1 ]
  %440 = add nuw nsw i64 %polly.indvar701.2.1, 32
  %441 = mul nuw nsw i64 %440, 640
  %442 = trunc i64 %440 to i32
  %broadcast.splatinsert1123 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1124 = shufflevector <4 x i32> %broadcast.splatinsert1123, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %polly.loop_header698.2.1
  %index1117 = phi i64 [ 0, %polly.loop_header698.2.1 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1121 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.2.1 ], [ %vec.ind.next1122, %vector.body1115 ]
  %443 = add nuw nsw <4 x i64> %vec.ind1121, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat1124, %444
  %446 = add <4 x i32> %445, <i32 3, i32 3, i32 3, i32 3>
  %447 = urem <4 x i32> %446, <i32 80, i32 80, i32 80, i32 80>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = extractelement <4 x i64> %443, i32 0
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %441
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %449, <4 x double>* %454, align 8, !alias.scope !86, !noalias !88
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1122 = add <4 x i64> %vec.ind1121, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next1118, 16
  br i1 %455, label %polly.loop_exit706.2.1, label %vector.body1115, !llvm.loop !110

polly.loop_exit706.2.1:                           ; preds = %vector.body1115
  %polly.indvar_next702.2.1 = add nuw nsw i64 %polly.indvar701.2.1, 1
  %exitcond818.2.1.not = icmp eq i64 %polly.indvar_next702.2.1, 32
  br i1 %exitcond818.2.1.not, label %polly.loop_header698.21009, label %polly.loop_header698.2.1

polly.loop_header698.21009:                       ; preds = %polly.loop_exit706.2.1, %polly.loop_exit706.21020
  %polly.indvar701.21008 = phi i64 [ %polly.indvar_next702.21018, %polly.loop_exit706.21020 ], [ 0, %polly.loop_exit706.2.1 ]
  %456 = add nuw nsw i64 %polly.indvar701.21008, 64
  %457 = mul nuw nsw i64 %456, 640
  %458 = trunc i64 %456 to i32
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %458, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1127

vector.body1127:                                  ; preds = %vector.body1127, %polly.loop_header698.21009
  %index1129 = phi i64 [ 0, %polly.loop_header698.21009 ], [ %index.next1130, %vector.body1127 ]
  %vec.ind1135 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header698.21009 ], [ %vec.ind.next1136, %vector.body1127 ]
  %459 = mul <4 x i32> %vec.ind1135, %broadcast.splat1138
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = shl i64 %index1129, 3
  %465 = add nuw nsw i64 %464, %457
  %466 = getelementptr i8, i8* %call, i64 %465
  %467 = bitcast i8* %466 to <4 x double>*
  store <4 x double> %463, <4 x double>* %467, align 8, !alias.scope !86, !noalias !88
  %index.next1130 = add i64 %index1129, 4
  %vec.ind.next1136 = add <4 x i32> %vec.ind1135, <i32 4, i32 4, i32 4, i32 4>
  %468 = icmp eq i64 %index.next1130, 32
  br i1 %468, label %polly.loop_exit706.21020, label %vector.body1127, !llvm.loop !111

polly.loop_exit706.21020:                         ; preds = %vector.body1127
  %polly.indvar_next702.21018 = add nuw nsw i64 %polly.indvar701.21008, 1
  %exitcond818.21019.not = icmp eq i64 %polly.indvar_next702.21018, 16
  br i1 %exitcond818.21019.not, label %polly.loop_header698.1.2, label %polly.loop_header698.21009

polly.loop_header698.1.2:                         ; preds = %polly.loop_exit706.21020, %polly.loop_exit706.1.2
  %polly.indvar701.1.2 = phi i64 [ %polly.indvar_next702.1.2, %polly.loop_exit706.1.2 ], [ 0, %polly.loop_exit706.21020 ]
  %469 = add nuw nsw i64 %polly.indvar701.1.2, 64
  %470 = mul nuw nsw i64 %469, 640
  %471 = trunc i64 %469 to i32
  %broadcast.splatinsert1149 = insertelement <4 x i32> poison, i32 %471, i32 0
  %broadcast.splat1150 = shufflevector <4 x i32> %broadcast.splatinsert1149, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %polly.loop_header698.1.2
  %index1143 = phi i64 [ 0, %polly.loop_header698.1.2 ], [ %index.next1144, %vector.body1141 ]
  %vec.ind1147 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.1.2 ], [ %vec.ind.next1148, %vector.body1141 ]
  %472 = add nuw nsw <4 x i64> %vec.ind1147, <i64 32, i64 32, i64 32, i64 32>
  %473 = trunc <4 x i64> %472 to <4 x i32>
  %474 = mul <4 x i32> %broadcast.splat1150, %473
  %475 = add <4 x i32> %474, <i32 3, i32 3, i32 3, i32 3>
  %476 = urem <4 x i32> %475, <i32 80, i32 80, i32 80, i32 80>
  %477 = sitofp <4 x i32> %476 to <4 x double>
  %478 = fmul fast <4 x double> %477, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %479 = extractelement <4 x i64> %472, i32 0
  %480 = shl i64 %479, 3
  %481 = add nuw nsw i64 %480, %470
  %482 = getelementptr i8, i8* %call, i64 %481
  %483 = bitcast i8* %482 to <4 x double>*
  store <4 x double> %478, <4 x double>* %483, align 8, !alias.scope !86, !noalias !88
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1148 = add <4 x i64> %vec.ind1147, <i64 4, i64 4, i64 4, i64 4>
  %484 = icmp eq i64 %index.next1144, 32
  br i1 %484, label %polly.loop_exit706.1.2, label %vector.body1141, !llvm.loop !112

polly.loop_exit706.1.2:                           ; preds = %vector.body1141
  %polly.indvar_next702.1.2 = add nuw nsw i64 %polly.indvar701.1.2, 1
  %exitcond818.1.2.not = icmp eq i64 %polly.indvar_next702.1.2, 16
  br i1 %exitcond818.1.2.not, label %polly.loop_header698.2.2, label %polly.loop_header698.1.2

polly.loop_header698.2.2:                         ; preds = %polly.loop_exit706.1.2, %polly.loop_exit706.2.2
  %polly.indvar701.2.2 = phi i64 [ %polly.indvar_next702.2.2, %polly.loop_exit706.2.2 ], [ 0, %polly.loop_exit706.1.2 ]
  %485 = add nuw nsw i64 %polly.indvar701.2.2, 64
  %486 = mul nuw nsw i64 %485, 640
  %487 = trunc i64 %485 to i32
  %broadcast.splatinsert1161 = insertelement <4 x i32> poison, i32 %487, i32 0
  %broadcast.splat1162 = shufflevector <4 x i32> %broadcast.splatinsert1161, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1153

vector.body1153:                                  ; preds = %vector.body1153, %polly.loop_header698.2.2
  %index1155 = phi i64 [ 0, %polly.loop_header698.2.2 ], [ %index.next1156, %vector.body1153 ]
  %vec.ind1159 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header698.2.2 ], [ %vec.ind.next1160, %vector.body1153 ]
  %488 = add nuw nsw <4 x i64> %vec.ind1159, <i64 64, i64 64, i64 64, i64 64>
  %489 = trunc <4 x i64> %488 to <4 x i32>
  %490 = mul <4 x i32> %broadcast.splat1162, %489
  %491 = add <4 x i32> %490, <i32 3, i32 3, i32 3, i32 3>
  %492 = urem <4 x i32> %491, <i32 80, i32 80, i32 80, i32 80>
  %493 = sitofp <4 x i32> %492 to <4 x double>
  %494 = fmul fast <4 x double> %493, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %495 = extractelement <4 x i64> %488, i32 0
  %496 = shl i64 %495, 3
  %497 = add nuw nsw i64 %496, %486
  %498 = getelementptr i8, i8* %call, i64 %497
  %499 = bitcast i8* %498 to <4 x double>*
  store <4 x double> %494, <4 x double>* %499, align 8, !alias.scope !86, !noalias !88
  %index.next1156 = add i64 %index1155, 4
  %vec.ind.next1160 = add <4 x i64> %vec.ind1159, <i64 4, i64 4, i64 4, i64 4>
  %500 = icmp eq i64 %index.next1156, 16
  br i1 %500, label %polly.loop_exit706.2.2, label %vector.body1153, !llvm.loop !113

polly.loop_exit706.2.2:                           ; preds = %vector.body1153
  %polly.indvar_next702.2.2 = add nuw nsw i64 %polly.indvar701.2.2, 1
  %exitcond818.2.2.not = icmp eq i64 %polly.indvar_next702.2.2, 16
  br i1 %exitcond818.2.2.not, label %polly.loop_header725, label %polly.loop_header698.2.2
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
!21 = distinct !{!21, !12, !22, !23, !24, !25, !28}
!22 = !{!"llvm.loop.disable_nonforced"}
!23 = !{!"llvm.loop.id", !"k"}
!24 = !{!"llvm.loop.tile.size", i32 50}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 64}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !33, !44, !47}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !46}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.tile.followup_tile", !48}
!48 = distinct !{!48, !12, !49}
!49 = !{!"llvm.loop.id", !"i2"}
!50 = distinct !{!50, !12, !13}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !4, i64 0}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !59, !"polly.alias.scope.MemRef_call"}
!59 = distinct !{!59, !"polly.alias.scope.domain"}
!60 = !{!61, !62}
!61 = distinct !{!61, !59, !"polly.alias.scope.MemRef_call1"}
!62 = distinct !{!62, !59, !"polly.alias.scope.MemRef_call2"}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !65, !13}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!58, !61}
!67 = !{!58, !62}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !65, !13}
!75 = !{!68, !71}
!76 = !{!68, !72}
!77 = distinct !{!77, !78, !"polly.alias.scope.MemRef_call"}
!78 = distinct !{!78, !"polly.alias.scope.domain"}
!79 = !{!80, !81}
!80 = distinct !{!80, !78, !"polly.alias.scope.MemRef_call1"}
!81 = distinct !{!81, !78, !"polly.alias.scope.MemRef_call2"}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !65, !13}
!84 = !{!77, !80}
!85 = !{!77, !81}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = !{!89, !86}
!93 = distinct !{!93, !13}
!94 = !{!90, !86}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
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
