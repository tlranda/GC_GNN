; ModuleID = 'syr2k_recreations//mmp_syr2k_S_31.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_31.c"
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
  %call699 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1560 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1560, %call2
  %polly.access.call2580 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2580, %call1
  %2 = or i1 %0, %1
  %polly.access.call600 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call600, %call2
  %4 = icmp ule i8* %polly.access.call2580, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call600, %call1
  %8 = icmp ule i8* %polly.access.call1560, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header685, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1006 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1005 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1004 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1003 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1003, %scevgep1006
  %bound1 = icmp ult i8* %scevgep1005, %scevgep1004
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
  br i1 %exitcond18.not.i, label %vector.ph1010, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1010:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1017 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1018 = shufflevector <4 x i64> %broadcast.splatinsert1017, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %vector.ph1010
  %index1011 = phi i64 [ 0, %vector.ph1010 ], [ %index.next1012, %vector.body1009 ]
  %vec.ind1015 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1010 ], [ %vec.ind.next1016, %vector.body1009 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1015, %broadcast.splat1018
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv7.i, i64 %index1011
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1012 = add i64 %index1011, 4
  %vec.ind.next1016 = add <4 x i64> %vec.ind1015, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1012, 80
  br i1 %40, label %for.inc41.i, label %vector.body1009, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1009
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1010, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit746.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header483, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1366, label %vector.ph1292

vector.ph1292:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %vector.ph1292
  %index1293 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1294, %vector.body1291 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i, i64 %index1293
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1294 = add i64 %index1293, 4
  %46 = icmp eq i64 %index.next1294, %n.vec
  br i1 %46, label %middle.block1289, label %vector.body1291, !llvm.loop !18

middle.block1289:                                 ; preds = %vector.body1291
  %cmp.n1296 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1296, label %for.inc6.i, label %for.body3.i46.preheader1366

for.body3.i46.preheader1366:                      ; preds = %for.body3.i46.preheader, %middle.block1289
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1289 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1366, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1366 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1289, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit519.3.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header333, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1312 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1312, label %for.body3.i60.preheader1364, label %vector.ph1313

vector.ph1313:                                    ; preds = %for.body3.i60.preheader
  %n.vec1315 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %vector.ph1313
  %index1316 = phi i64 [ 0, %vector.ph1313 ], [ %index.next1317, %vector.body1311 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i52, i64 %index1316
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1320 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1320, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1317 = add i64 %index1316, 4
  %57 = icmp eq i64 %index.next1317, %n.vec1315
  br i1 %57, label %middle.block1309, label %vector.body1311, !llvm.loop !54

middle.block1309:                                 ; preds = %vector.body1311
  %cmp.n1319 = icmp eq i64 %indvars.iv21.i52, %n.vec1315
  br i1 %cmp.n1319, label %for.inc6.i63, label %for.body3.i60.preheader1364

for.body3.i60.preheader1364:                      ; preds = %for.body3.i60.preheader, %middle.block1309
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1315, %middle.block1309 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1364, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1364 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1309, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit369.3.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1338 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1338, label %for.body3.i99.preheader1362, label %vector.ph1339

vector.ph1339:                                    ; preds = %for.body3.i99.preheader
  %n.vec1341 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1339
  %index1342 = phi i64 [ 0, %vector.ph1339 ], [ %index.next1343, %vector.body1337 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i91, i64 %index1342
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1346 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1346, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1343 = add i64 %index1342, 4
  %68 = icmp eq i64 %index.next1343, %n.vec1341
  br i1 %68, label %middle.block1335, label %vector.body1337, !llvm.loop !56

middle.block1335:                                 ; preds = %vector.body1337
  %cmp.n1345 = icmp eq i64 %indvars.iv21.i91, %n.vec1341
  br i1 %cmp.n1345, label %for.inc6.i102, label %for.body3.i99.preheader1362

for.body3.i99.preheader1362:                      ; preds = %for.body3.i99.preheader, %middle.block1335
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1341, %middle.block1335 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1362, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1362 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1335, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit219.3.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1350 = phi i64 [ %indvar.next1351, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1350, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1352 = icmp ult i64 %88, 4
  br i1 %min.iters.check1352, label %polly.loop_header191.preheader, label %vector.ph1353

vector.ph1353:                                    ; preds = %polly.loop_header
  %n.vec1355 = and i64 %88, -4
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1353
  %index1356 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1357, %vector.body1349 ]
  %90 = shl nuw nsw i64 %index1356, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1360, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1357 = add i64 %index1356, 4
  %95 = icmp eq i64 %index.next1357, %n.vec1355
  br i1 %95, label %middle.block1347, label %vector.body1349, !llvm.loop !67

middle.block1347:                                 ; preds = %vector.body1349
  %cmp.n1359 = icmp eq i64 %88, %n.vec1355
  br i1 %cmp.n1359, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1347
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1355, %middle.block1347 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1347
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1351 = add i64 %indvar1350, 1
  br i1 %exitcond767.not, label %polly.loop_header211, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond766.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond766.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header211:                             ; preds = %polly.loop_exit193, %polly.loop_exit219
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_exit193 ]
  %97 = shl i64 %polly.indvar214, 3
  %scevgep232 = getelementptr i8, i8* %call2, i64 %97
  %scevgep239 = getelementptr i8, i8* %call1, i64 %97
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond764.not = icmp eq i64 %polly.indvar_next215, 32
  br i1 %exitcond764.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit225 ], [ 0, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit225 ], [ 0, %polly.loop_header211 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 19)
  %98 = mul nuw nsw i64 %polly.indvar220, 480
  %99 = mul nuw nsw i64 %polly.indvar220, 640
  %scevgep243 = getelementptr i8, i8* %call, i64 %99
  %scevgep233 = getelementptr i8, i8* %scevgep232, i64 %98
  %scevgep233234 = bitcast i8* %scevgep233 to double*
  %_p_scalar_235 = load double, double* %scevgep233234, align 8, !alias.scope !66, !noalias !70
  %scevgep240 = getelementptr i8, i8* %scevgep239, i64 %98
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond763.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond763.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %100 = mul nuw nsw i64 %polly.indvar226, 480
  %101 = add nuw nsw i64 %100, %97
  %scevgep229 = getelementptr i8, i8* %call1, i64 %101
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_235, %_p_scalar_231
  %scevgep236 = getelementptr i8, i8* %call2, i64 %101
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_242, %_p_scalar_238
  %102 = shl i64 %polly.indvar226, 3
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %102
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_246
  store double %p_add42.i118, double* %scevgep244245, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar226, %smin
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header333:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit341
  %indvar1324 = phi i64 [ %indvar.next1325, %polly.loop_exit341 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar336 = phi i64 [ %polly.indvar_next337, %polly.loop_exit341 ], [ 1, %kernel_syr2k.exit ]
  %103 = add i64 %indvar1324, 1
  %104 = mul nuw nsw i64 %polly.indvar336, 640
  %scevgep345 = getelementptr i8, i8* %call, i64 %104
  %min.iters.check1326 = icmp ult i64 %103, 4
  br i1 %min.iters.check1326, label %polly.loop_header339.preheader, label %vector.ph1327

vector.ph1327:                                    ; preds = %polly.loop_header333
  %n.vec1329 = and i64 %103, -4
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %vector.ph1327
  %index1330 = phi i64 [ 0, %vector.ph1327 ], [ %index.next1331, %vector.body1323 ]
  %105 = shl nuw nsw i64 %index1330, 3
  %106 = getelementptr i8, i8* %scevgep345, i64 %105
  %107 = bitcast i8* %106 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %107, align 8, !alias.scope !72, !noalias !74
  %108 = fmul fast <4 x double> %wide.load1334, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %109 = bitcast i8* %106 to <4 x double>*
  store <4 x double> %108, <4 x double>* %109, align 8, !alias.scope !72, !noalias !74
  %index.next1331 = add i64 %index1330, 4
  %110 = icmp eq i64 %index.next1331, %n.vec1329
  br i1 %110, label %middle.block1321, label %vector.body1323, !llvm.loop !77

middle.block1321:                                 ; preds = %vector.body1323
  %cmp.n1333 = icmp eq i64 %103, %n.vec1329
  br i1 %cmp.n1333, label %polly.loop_exit341, label %polly.loop_header339.preheader

polly.loop_header339.preheader:                   ; preds = %polly.loop_header333, %middle.block1321
  %polly.indvar342.ph = phi i64 [ 0, %polly.loop_header333 ], [ %n.vec1329, %middle.block1321 ]
  br label %polly.loop_header339

polly.loop_exit341:                               ; preds = %polly.loop_header339, %middle.block1321
  %polly.indvar_next337 = add nuw nsw i64 %polly.indvar336, 1
  %exitcond778.not = icmp eq i64 %polly.indvar_next337, 80
  %indvar.next1325 = add i64 %indvar1324, 1
  br i1 %exitcond778.not, label %polly.loop_header361, label %polly.loop_header333

polly.loop_header339:                             ; preds = %polly.loop_header339.preheader, %polly.loop_header339
  %polly.indvar342 = phi i64 [ %polly.indvar_next343, %polly.loop_header339 ], [ %polly.indvar342.ph, %polly.loop_header339.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar342, 3
  %scevgep346 = getelementptr i8, i8* %scevgep345, i64 %111
  %scevgep346347 = bitcast i8* %scevgep346 to double*
  %_p_scalar_348 = load double, double* %scevgep346347, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_348, 1.200000e+00
  store double %p_mul.i57, double* %scevgep346347, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next343 = add nuw nsw i64 %polly.indvar342, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next343, %polly.indvar336
  br i1 %exitcond777.not, label %polly.loop_exit341, label %polly.loop_header339, !llvm.loop !78

polly.loop_header361:                             ; preds = %polly.loop_exit341, %polly.loop_exit369
  %polly.indvar364 = phi i64 [ %polly.indvar_next365, %polly.loop_exit369 ], [ 0, %polly.loop_exit341 ]
  %112 = shl i64 %polly.indvar364, 3
  %scevgep382 = getelementptr i8, i8* %call2, i64 %112
  %scevgep389 = getelementptr i8, i8* %call1, i64 %112
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit375
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %exitcond775.not = icmp eq i64 %polly.indvar_next365, 32
  br i1 %exitcond775.not, label %polly.loop_header361.1, label %polly.loop_header361

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.loop_header361
  %indvars.iv768 = phi i64 [ %indvars.iv.next769, %polly.loop_exit375 ], [ 0, %polly.loop_header361 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 0, %polly.loop_header361 ]
  %smin770 = call i64 @llvm.smin.i64(i64 %indvars.iv768, i64 19)
  %113 = mul nuw nsw i64 %polly.indvar370, 480
  %114 = mul nuw nsw i64 %polly.indvar370, 640
  %scevgep393 = getelementptr i8, i8* %call, i64 %114
  %scevgep383 = getelementptr i8, i8* %scevgep382, i64 %113
  %scevgep383384 = bitcast i8* %scevgep383 to double*
  %_p_scalar_385 = load double, double* %scevgep383384, align 8, !alias.scope !76, !noalias !79
  %scevgep390 = getelementptr i8, i8* %scevgep389, i64 %113
  %scevgep390391 = bitcast i8* %scevgep390 to double*
  %_p_scalar_392 = load double, double* %scevgep390391, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %indvars.iv.next769 = add nuw nsw i64 %indvars.iv768, 1
  %exitcond774.not = icmp eq i64 %indvars.iv.next769, 80
  br i1 %exitcond774.not, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header373:                             ; preds = %polly.loop_header373, %polly.loop_header367
  %polly.indvar376 = phi i64 [ 0, %polly.loop_header367 ], [ %polly.indvar_next377, %polly.loop_header373 ]
  %115 = mul nuw nsw i64 %polly.indvar376, 480
  %116 = add nuw nsw i64 %115, %112
  %scevgep379 = getelementptr i8, i8* %call1, i64 %116
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_385, %_p_scalar_381
  %scevgep386 = getelementptr i8, i8* %call2, i64 %116
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_392, %_p_scalar_388
  %117 = shl i64 %polly.indvar376, 3
  %scevgep394 = getelementptr i8, i8* %scevgep393, i64 %117
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_396
  store double %p_add42.i79, double* %scevgep394395, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond771.not = icmp eq i64 %polly.indvar376, %smin770
  br i1 %exitcond771.not, label %polly.loop_exit375, label %polly.loop_header373

polly.loop_header483:                             ; preds = %init_array.exit, %polly.loop_exit491
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit491 ], [ 0, %init_array.exit ]
  %polly.indvar486 = phi i64 [ %polly.indvar_next487, %polly.loop_exit491 ], [ 1, %init_array.exit ]
  %118 = add i64 %indvar, 1
  %119 = mul nuw nsw i64 %polly.indvar486, 640
  %scevgep495 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1300 = icmp ult i64 %118, 4
  br i1 %min.iters.check1300, label %polly.loop_header489.preheader, label %vector.ph1301

vector.ph1301:                                    ; preds = %polly.loop_header483
  %n.vec1303 = and i64 %118, -4
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %vector.ph1301
  %index1304 = phi i64 [ 0, %vector.ph1301 ], [ %index.next1305, %vector.body1299 ]
  %120 = shl nuw nsw i64 %index1304, 3
  %121 = getelementptr i8, i8* %scevgep495, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1308 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !81, !noalias !83
  %123 = fmul fast <4 x double> %wide.load1308, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !81, !noalias !83
  %index.next1305 = add i64 %index1304, 4
  %125 = icmp eq i64 %index.next1305, %n.vec1303
  br i1 %125, label %middle.block1297, label %vector.body1299, !llvm.loop !86

middle.block1297:                                 ; preds = %vector.body1299
  %cmp.n1307 = icmp eq i64 %118, %n.vec1303
  br i1 %cmp.n1307, label %polly.loop_exit491, label %polly.loop_header489.preheader

polly.loop_header489.preheader:                   ; preds = %polly.loop_header483, %middle.block1297
  %polly.indvar492.ph = phi i64 [ 0, %polly.loop_header483 ], [ %n.vec1303, %middle.block1297 ]
  br label %polly.loop_header489

polly.loop_exit491:                               ; preds = %polly.loop_header489, %middle.block1297
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond789.not = icmp eq i64 %polly.indvar_next487, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond789.not, label %polly.loop_header511, label %polly.loop_header483

polly.loop_header489:                             ; preds = %polly.loop_header489.preheader, %polly.loop_header489
  %polly.indvar492 = phi i64 [ %polly.indvar_next493, %polly.loop_header489 ], [ %polly.indvar492.ph, %polly.loop_header489.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar492, 3
  %scevgep496 = getelementptr i8, i8* %scevgep495, i64 %126
  %scevgep496497 = bitcast i8* %scevgep496 to double*
  %_p_scalar_498 = load double, double* %scevgep496497, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_498, 1.200000e+00
  store double %p_mul.i, double* %scevgep496497, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next493 = add nuw nsw i64 %polly.indvar492, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next493, %polly.indvar486
  br i1 %exitcond788.not, label %polly.loop_exit491, label %polly.loop_header489, !llvm.loop !87

polly.loop_header511:                             ; preds = %polly.loop_exit491, %polly.loop_exit519
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 0, %polly.loop_exit491 ]
  %127 = shl i64 %polly.indvar514, 3
  %scevgep532 = getelementptr i8, i8* %call2, i64 %127
  %scevgep539 = getelementptr i8, i8* %call1, i64 %127
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_exit525
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next515, 32
  br i1 %exitcond786.not, label %polly.loop_header511.1, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header511
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %polly.loop_exit525 ], [ 0, %polly.loop_header511 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 0, %polly.loop_header511 ]
  %smin781 = call i64 @llvm.smin.i64(i64 %indvars.iv779, i64 19)
  %128 = mul nuw nsw i64 %polly.indvar520, 480
  %129 = mul nuw nsw i64 %polly.indvar520, 640
  %scevgep543 = getelementptr i8, i8* %call, i64 %129
  %scevgep533 = getelementptr i8, i8* %scevgep532, i64 %128
  %scevgep533534 = bitcast i8* %scevgep533 to double*
  %_p_scalar_535 = load double, double* %scevgep533534, align 8, !alias.scope !85, !noalias !88
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %128
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %indvars.iv.next780 = add nuw nsw i64 %indvars.iv779, 1
  %exitcond785.not = icmp eq i64 %indvars.iv.next780, 80
  br i1 %exitcond785.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_header523, %polly.loop_header517
  %polly.indvar526 = phi i64 [ 0, %polly.loop_header517 ], [ %polly.indvar_next527, %polly.loop_header523 ]
  %130 = mul nuw nsw i64 %polly.indvar526, 480
  %131 = add nuw nsw i64 %130, %127
  %scevgep529 = getelementptr i8, i8* %call1, i64 %131
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_535, %_p_scalar_531
  %scevgep536 = getelementptr i8, i8* %call2, i64 %131
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_542, %_p_scalar_538
  %132 = shl i64 %polly.indvar526, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %132
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_546
  store double %p_add42.i, double* %scevgep544545, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond782.not = icmp eq i64 %polly.indvar526, %smin781
  br i1 %exitcond782.not, label %polly.loop_exit525, label %polly.loop_header523

polly.loop_header685:                             ; preds = %entry, %polly.loop_exit693
  %polly.indvar688 = phi i64 [ %polly.indvar_next689, %polly.loop_exit693 ], [ 0, %entry ]
  %133 = mul nuw nsw i64 %polly.indvar688, 640
  %134 = trunc i64 %polly.indvar688 to i32
  %broadcast.splatinsert1031 = insertelement <4 x i32> poison, i32 %134, i32 0
  %broadcast.splat1032 = shufflevector <4 x i32> %broadcast.splatinsert1031, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %polly.loop_header685
  %index1023 = phi i64 [ 0, %polly.loop_header685 ], [ %index.next1024, %vector.body1021 ]
  %vec.ind1029 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685 ], [ %vec.ind.next1030, %vector.body1021 ]
  %135 = mul <4 x i32> %vec.ind1029, %broadcast.splat1032
  %136 = add <4 x i32> %135, <i32 3, i32 3, i32 3, i32 3>
  %137 = urem <4 x i32> %136, <i32 80, i32 80, i32 80, i32 80>
  %138 = sitofp <4 x i32> %137 to <4 x double>
  %139 = fmul fast <4 x double> %138, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %140 = shl i64 %index1023, 3
  %141 = add nuw nsw i64 %140, %133
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %139, <4 x double>* %143, align 8, !alias.scope !90, !noalias !92
  %index.next1024 = add i64 %index1023, 4
  %vec.ind.next1030 = add <4 x i32> %vec.ind1029, <i32 4, i32 4, i32 4, i32 4>
  %144 = icmp eq i64 %index.next1024, 32
  br i1 %144, label %polly.loop_exit693, label %vector.body1021, !llvm.loop !95

polly.loop_exit693:                               ; preds = %vector.body1021
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next689, 32
  br i1 %exitcond809.not, label %polly.loop_header685.1, label %polly.loop_header685

polly.loop_header712:                             ; preds = %polly.loop_exit693.2.2, %polly.loop_exit720
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_exit720 ], [ 0, %polly.loop_exit693.2.2 ]
  %145 = mul nuw nsw i64 %polly.indvar715, 480
  %146 = trunc i64 %polly.indvar715 to i32
  %broadcast.splatinsert1145 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat1146 = shufflevector <4 x i32> %broadcast.splatinsert1145, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %polly.loop_header712
  %index1137 = phi i64 [ 0, %polly.loop_header712 ], [ %index.next1138, %vector.body1135 ]
  %vec.ind1143 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712 ], [ %vec.ind.next1144, %vector.body1135 ]
  %147 = mul <4 x i32> %vec.ind1143, %broadcast.splat1146
  %148 = add <4 x i32> %147, <i32 2, i32 2, i32 2, i32 2>
  %149 = urem <4 x i32> %148, <i32 60, i32 60, i32 60, i32 60>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index1137, 3
  %153 = add i64 %152, %145
  %154 = getelementptr i8, i8* %call2, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !94, !noalias !96
  %index.next1138 = add i64 %index1137, 4
  %vec.ind.next1144 = add <4 x i32> %vec.ind1143, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next1138, 32
  br i1 %156, label %polly.loop_exit720, label %vector.body1135, !llvm.loop !97

polly.loop_exit720:                               ; preds = %vector.body1135
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next716, 32
  br i1 %exitcond800.not, label %polly.loop_header712.1, label %polly.loop_header712

polly.loop_header738:                             ; preds = %polly.loop_exit720.1.2, %polly.loop_exit746
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %polly.loop_exit720.1.2 ]
  %157 = mul nuw nsw i64 %polly.indvar741, 480
  %158 = trunc i64 %polly.indvar741 to i32
  %broadcast.splatinsert1223 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1224 = shufflevector <4 x i32> %broadcast.splatinsert1223, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %polly.loop_header738
  %index1215 = phi i64 [ 0, %polly.loop_header738 ], [ %index.next1216, %vector.body1213 ]
  %vec.ind1221 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738 ], [ %vec.ind.next1222, %vector.body1213 ]
  %159 = mul <4 x i32> %vec.ind1221, %broadcast.splat1224
  %160 = add <4 x i32> %159, <i32 1, i32 1, i32 1, i32 1>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %164 = shl i64 %index1215, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call1, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !93, !noalias !98
  %index.next1216 = add i64 %index1215, 4
  %vec.ind.next1222 = add <4 x i32> %vec.ind1221, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1216, 32
  br i1 %168, label %polly.loop_exit746, label %vector.body1213, !llvm.loop !99

polly.loop_exit746:                               ; preds = %vector.body1213
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next742, 32
  br i1 %exitcond794.not, label %polly.loop_header738.1, label %polly.loop_header738

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %169 = shl i64 %polly.indvar214.1, 3
  %scevgep232.1 = getelementptr i8, i8* %call2, i64 %169
  %scevgep239.1 = getelementptr i8, i8* %call1, i64 %169
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit225.1 ], [ 0, %polly.loop_header211.1 ]
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_exit225.1 ], [ 20, %polly.loop_header211.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 19)
  %170 = mul nuw nsw i64 %polly.indvar220.1, 480
  %171 = mul nuw nsw i64 %polly.indvar220.1, 640
  %scevgep243.1 = getelementptr i8, i8* %call, i64 %171
  %scevgep233.1 = getelementptr i8, i8* %scevgep232.1, i64 %170
  %scevgep233234.1 = bitcast i8* %scevgep233.1 to double*
  %_p_scalar_235.1 = load double, double* %scevgep233234.1, align 8, !alias.scope !66, !noalias !70
  %scevgep240.1 = getelementptr i8, i8* %scevgep239.1, i64 %170
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_header217.1
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_header217.1 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %172 = add nuw nsw i64 %polly.indvar226.1, 20
  %173 = mul nuw nsw i64 %172, 480
  %174 = add nuw nsw i64 %173, %169
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %174
  %scevgep229230.1 = bitcast i8* %scevgep229.1 to double*
  %_p_scalar_231.1 = load double, double* %scevgep229230.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_235.1, %_p_scalar_231.1
  %scevgep236.1 = getelementptr i8, i8* %call2, i64 %174
  %scevgep236237.1 = bitcast i8* %scevgep236.1 to double*
  %_p_scalar_238.1 = load double, double* %scevgep236237.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_242.1, %_p_scalar_238.1
  %175 = shl i64 %172, 3
  %scevgep244.1 = getelementptr i8, i8* %scevgep243.1, i64 %175
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_246.1
  store double %p_add42.i118.1, double* %scevgep244245.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond763.1.not = icmp eq i64 %indvars.iv.next.1, 60
  br i1 %exitcond763.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond764.1.not = icmp eq i64 %polly.indvar_next215.1, 32
  br i1 %exitcond764.1.not, label %polly.loop_header211.2, label %polly.loop_header211.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.1, %polly.loop_exit219.2
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit219.1 ]
  %176 = shl i64 %polly.indvar214.2, 3
  %scevgep232.2 = getelementptr i8, i8* %call2, i64 %176
  %scevgep239.2 = getelementptr i8, i8* %call1, i64 %176
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.2, %polly.loop_header211.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit225.2 ], [ 0, %polly.loop_header211.2 ]
  %polly.indvar220.2 = phi i64 [ %polly.indvar_next221.2, %polly.loop_exit225.2 ], [ 40, %polly.loop_header211.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.2, i64 19)
  %177 = mul nuw nsw i64 %polly.indvar220.2, 480
  %178 = mul nuw nsw i64 %polly.indvar220.2, 640
  %scevgep243.2 = getelementptr i8, i8* %call, i64 %178
  %scevgep233.2 = getelementptr i8, i8* %scevgep232.2, i64 %177
  %scevgep233234.2 = bitcast i8* %scevgep233.2 to double*
  %_p_scalar_235.2 = load double, double* %scevgep233234.2, align 8, !alias.scope !66, !noalias !70
  %scevgep240.2 = getelementptr i8, i8* %scevgep239.2, i64 %177
  %scevgep240241.2 = bitcast i8* %scevgep240.2 to double*
  %_p_scalar_242.2 = load double, double* %scevgep240241.2, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_header217.2
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_header217.2 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %179 = add nuw nsw i64 %polly.indvar226.2, 40
  %180 = mul nuw nsw i64 %179, 480
  %181 = add nuw nsw i64 %180, %176
  %scevgep229.2 = getelementptr i8, i8* %call1, i64 %181
  %scevgep229230.2 = bitcast i8* %scevgep229.2 to double*
  %_p_scalar_231.2 = load double, double* %scevgep229230.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_235.2, %_p_scalar_231.2
  %scevgep236.2 = getelementptr i8, i8* %call2, i64 %181
  %scevgep236237.2 = bitcast i8* %scevgep236.2 to double*
  %_p_scalar_238.2 = load double, double* %scevgep236237.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_242.2, %_p_scalar_238.2
  %182 = shl i64 %179, 3
  %scevgep244.2 = getelementptr i8, i8* %scevgep243.2, i64 %182
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_246.2
  store double %p_add42.i118.2, double* %scevgep244245.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar226.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_header223.2
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond763.2.not = icmp eq i64 %indvars.iv.next.2, 40
  br i1 %exitcond763.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %exitcond764.2.not = icmp eq i64 %polly.indvar_next215.2, 32
  br i1 %exitcond764.2.not, label %polly.loop_header211.3, label %polly.loop_header211.2

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.2, %polly.loop_exit219.3
  %polly.indvar214.3 = phi i64 [ %polly.indvar_next215.3, %polly.loop_exit219.3 ], [ 0, %polly.loop_exit219.2 ]
  %183 = shl i64 %polly.indvar214.3, 3
  %scevgep232.3 = getelementptr i8, i8* %call2, i64 %183
  %scevgep239.3 = getelementptr i8, i8* %call1, i64 %183
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_exit225.3, %polly.loop_header211.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit225.3 ], [ 0, %polly.loop_header211.3 ]
  %polly.indvar220.3 = phi i64 [ %polly.indvar_next221.3, %polly.loop_exit225.3 ], [ 60, %polly.loop_header211.3 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.3, i64 19)
  %184 = mul nuw nsw i64 %polly.indvar220.3, 480
  %185 = mul nuw nsw i64 %polly.indvar220.3, 640
  %scevgep243.3 = getelementptr i8, i8* %call, i64 %185
  %scevgep233.3 = getelementptr i8, i8* %scevgep232.3, i64 %184
  %scevgep233234.3 = bitcast i8* %scevgep233.3 to double*
  %_p_scalar_235.3 = load double, double* %scevgep233234.3, align 8, !alias.scope !66, !noalias !70
  %scevgep240.3 = getelementptr i8, i8* %scevgep239.3, i64 %184
  %scevgep240241.3 = bitcast i8* %scevgep240.3 to double*
  %_p_scalar_242.3 = load double, double* %scevgep240241.3, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_header217.3
  %polly.indvar226.3 = phi i64 [ 0, %polly.loop_header217.3 ], [ %polly.indvar_next227.3, %polly.loop_header223.3 ]
  %186 = add nuw nsw i64 %polly.indvar226.3, 60
  %187 = mul nuw nsw i64 %186, 480
  %188 = add nuw nsw i64 %187, %183
  %scevgep229.3 = getelementptr i8, i8* %call1, i64 %188
  %scevgep229230.3 = bitcast i8* %scevgep229.3 to double*
  %_p_scalar_231.3 = load double, double* %scevgep229230.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_235.3, %_p_scalar_231.3
  %scevgep236.3 = getelementptr i8, i8* %call2, i64 %188
  %scevgep236237.3 = bitcast i8* %scevgep236.3 to double*
  %_p_scalar_238.3 = load double, double* %scevgep236237.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_242.3, %_p_scalar_238.3
  %189 = shl i64 %186, 3
  %scevgep244.3 = getelementptr i8, i8* %scevgep243.3, i64 %189
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_246.3
  store double %p_add42.i118.3, double* %scevgep244245.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar226.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_header223.3
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond763.3.not = icmp eq i64 %indvars.iv.next.3, 20
  br i1 %exitcond763.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %exitcond764.3.not = icmp eq i64 %polly.indvar_next215.3, 32
  br i1 %exitcond764.3.not, label %polly.loop_header211.1817, label %polly.loop_header211.3

polly.loop_header211.1817:                        ; preds = %polly.loop_exit219.3, %polly.loop_exit219.1855
  %polly.indvar214.1816 = phi i64 [ %polly.indvar_next215.1853, %polly.loop_exit219.1855 ], [ 0, %polly.loop_exit219.3 ]
  %190 = shl i64 %polly.indvar214.1816, 3
  %191 = add i64 %190, 256
  %scevgep232.1821 = getelementptr i8, i8* %call2, i64 %191
  %scevgep239.1822 = getelementptr i8, i8* %call1, i64 %191
  br label %polly.loop_header217.1830

polly.loop_header217.1830:                        ; preds = %polly.loop_exit225.1852, %polly.loop_header211.1817
  %indvars.iv.1818 = phi i64 [ %indvars.iv.next.1850, %polly.loop_exit225.1852 ], [ 0, %polly.loop_header211.1817 ]
  %polly.indvar220.1819 = phi i64 [ %polly.indvar_next221.1849, %polly.loop_exit225.1852 ], [ 0, %polly.loop_header211.1817 ]
  %smin.1820 = call i64 @llvm.smin.i64(i64 %indvars.iv.1818, i64 19)
  %192 = mul nuw nsw i64 %polly.indvar220.1819, 480
  %193 = mul nuw nsw i64 %polly.indvar220.1819, 640
  %scevgep243.1823 = getelementptr i8, i8* %call, i64 %193
  %scevgep233.1824 = getelementptr i8, i8* %scevgep232.1821, i64 %192
  %scevgep233234.1825 = bitcast i8* %scevgep233.1824 to double*
  %_p_scalar_235.1826 = load double, double* %scevgep233234.1825, align 8, !alias.scope !66, !noalias !70
  %scevgep240.1827 = getelementptr i8, i8* %scevgep239.1822, i64 %192
  %scevgep240241.1828 = bitcast i8* %scevgep240.1827 to double*
  %_p_scalar_242.1829 = load double, double* %scevgep240241.1828, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.1848

polly.loop_header223.1848:                        ; preds = %polly.loop_header223.1848, %polly.loop_header217.1830
  %polly.indvar226.1831 = phi i64 [ 0, %polly.loop_header217.1830 ], [ %polly.indvar_next227.1846, %polly.loop_header223.1848 ]
  %194 = mul nuw nsw i64 %polly.indvar226.1831, 480
  %195 = add nuw nsw i64 %194, %191
  %scevgep229.1832 = getelementptr i8, i8* %call1, i64 %195
  %scevgep229230.1833 = bitcast i8* %scevgep229.1832 to double*
  %_p_scalar_231.1834 = load double, double* %scevgep229230.1833, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1835 = fmul fast double %_p_scalar_235.1826, %_p_scalar_231.1834
  %scevgep236.1836 = getelementptr i8, i8* %call2, i64 %195
  %scevgep236237.1837 = bitcast i8* %scevgep236.1836 to double*
  %_p_scalar_238.1838 = load double, double* %scevgep236237.1837, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1839 = fmul fast double %_p_scalar_242.1829, %_p_scalar_238.1838
  %196 = shl i64 %polly.indvar226.1831, 3
  %scevgep244.1840 = getelementptr i8, i8* %scevgep243.1823, i64 %196
  %scevgep244245.1841 = bitcast i8* %scevgep244.1840 to double*
  %_p_scalar_246.1842 = load double, double* %scevgep244245.1841, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1843 = fadd fast double %p_mul37.i114.1839, %p_mul27.i112.1835
  %p_reass.mul.i117.1844 = fmul fast double %p_reass.add.i116.1843, 1.500000e+00
  %p_add42.i118.1845 = fadd fast double %p_reass.mul.i117.1844, %_p_scalar_246.1842
  store double %p_add42.i118.1845, double* %scevgep244245.1841, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.1846 = add nuw nsw i64 %polly.indvar226.1831, 1
  %exitcond.1847.not = icmp eq i64 %polly.indvar226.1831, %smin.1820
  br i1 %exitcond.1847.not, label %polly.loop_exit225.1852, label %polly.loop_header223.1848

polly.loop_exit225.1852:                          ; preds = %polly.loop_header223.1848
  %polly.indvar_next221.1849 = add nuw nsw i64 %polly.indvar220.1819, 1
  %indvars.iv.next.1850 = add nuw nsw i64 %indvars.iv.1818, 1
  %exitcond763.1851.not = icmp eq i64 %indvars.iv.next.1850, 80
  br i1 %exitcond763.1851.not, label %polly.loop_exit219.1855, label %polly.loop_header217.1830

polly.loop_exit219.1855:                          ; preds = %polly.loop_exit225.1852
  %polly.indvar_next215.1853 = add nuw nsw i64 %polly.indvar214.1816, 1
  %exitcond764.1854.not = icmp eq i64 %polly.indvar_next215.1853, 28
  br i1 %exitcond764.1854.not, label %polly.loop_header211.1.1, label %polly.loop_header211.1817

polly.loop_header211.1.1:                         ; preds = %polly.loop_exit219.1855, %polly.loop_exit219.1.1
  %polly.indvar214.1.1 = phi i64 [ %polly.indvar_next215.1.1, %polly.loop_exit219.1.1 ], [ 0, %polly.loop_exit219.1855 ]
  %197 = shl i64 %polly.indvar214.1.1, 3
  %198 = add i64 %197, 256
  %scevgep232.1.1 = getelementptr i8, i8* %call2, i64 %198
  %scevgep239.1.1 = getelementptr i8, i8* %call1, i64 %198
  br label %polly.loop_header217.1.1

polly.loop_header217.1.1:                         ; preds = %polly.loop_exit225.1.1, %polly.loop_header211.1.1
  %indvars.iv.1.1 = phi i64 [ %indvars.iv.next.1.1, %polly.loop_exit225.1.1 ], [ 0, %polly.loop_header211.1.1 ]
  %polly.indvar220.1.1 = phi i64 [ %polly.indvar_next221.1.1, %polly.loop_exit225.1.1 ], [ 20, %polly.loop_header211.1.1 ]
  %smin.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1.1, i64 19)
  %199 = mul nuw nsw i64 %polly.indvar220.1.1, 480
  %200 = mul nuw nsw i64 %polly.indvar220.1.1, 640
  %scevgep243.1.1 = getelementptr i8, i8* %call, i64 %200
  %scevgep233.1.1 = getelementptr i8, i8* %scevgep232.1.1, i64 %199
  %scevgep233234.1.1 = bitcast i8* %scevgep233.1.1 to double*
  %_p_scalar_235.1.1 = load double, double* %scevgep233234.1.1, align 8, !alias.scope !66, !noalias !70
  %scevgep240.1.1 = getelementptr i8, i8* %scevgep239.1.1, i64 %199
  %scevgep240241.1.1 = bitcast i8* %scevgep240.1.1 to double*
  %_p_scalar_242.1.1 = load double, double* %scevgep240241.1.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.1.1

polly.loop_header223.1.1:                         ; preds = %polly.loop_header223.1.1, %polly.loop_header217.1.1
  %polly.indvar226.1.1 = phi i64 [ 0, %polly.loop_header217.1.1 ], [ %polly.indvar_next227.1.1, %polly.loop_header223.1.1 ]
  %201 = add nuw nsw i64 %polly.indvar226.1.1, 20
  %202 = mul nuw nsw i64 %201, 480
  %203 = add nuw nsw i64 %202, %198
  %scevgep229.1.1 = getelementptr i8, i8* %call1, i64 %203
  %scevgep229230.1.1 = bitcast i8* %scevgep229.1.1 to double*
  %_p_scalar_231.1.1 = load double, double* %scevgep229230.1.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1.1 = fmul fast double %_p_scalar_235.1.1, %_p_scalar_231.1.1
  %scevgep236.1.1 = getelementptr i8, i8* %call2, i64 %203
  %scevgep236237.1.1 = bitcast i8* %scevgep236.1.1 to double*
  %_p_scalar_238.1.1 = load double, double* %scevgep236237.1.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1.1 = fmul fast double %_p_scalar_242.1.1, %_p_scalar_238.1.1
  %204 = shl i64 %201, 3
  %scevgep244.1.1 = getelementptr i8, i8* %scevgep243.1.1, i64 %204
  %scevgep244245.1.1 = bitcast i8* %scevgep244.1.1 to double*
  %_p_scalar_246.1.1 = load double, double* %scevgep244245.1.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1.1 = fadd fast double %p_mul37.i114.1.1, %p_mul27.i112.1.1
  %p_reass.mul.i117.1.1 = fmul fast double %p_reass.add.i116.1.1, 1.500000e+00
  %p_add42.i118.1.1 = fadd fast double %p_reass.mul.i117.1.1, %_p_scalar_246.1.1
  store double %p_add42.i118.1.1, double* %scevgep244245.1.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.1.1 = add nuw nsw i64 %polly.indvar226.1.1, 1
  %exitcond.1.1.not = icmp eq i64 %polly.indvar226.1.1, %smin.1.1
  br i1 %exitcond.1.1.not, label %polly.loop_exit225.1.1, label %polly.loop_header223.1.1

polly.loop_exit225.1.1:                           ; preds = %polly.loop_header223.1.1
  %polly.indvar_next221.1.1 = add nuw nsw i64 %polly.indvar220.1.1, 1
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1.1, 1
  %exitcond763.1.1.not = icmp eq i64 %indvars.iv.next.1.1, 60
  br i1 %exitcond763.1.1.not, label %polly.loop_exit219.1.1, label %polly.loop_header217.1.1

polly.loop_exit219.1.1:                           ; preds = %polly.loop_exit225.1.1
  %polly.indvar_next215.1.1 = add nuw nsw i64 %polly.indvar214.1.1, 1
  %exitcond764.1.1.not = icmp eq i64 %polly.indvar_next215.1.1, 28
  br i1 %exitcond764.1.1.not, label %polly.loop_header211.2.1, label %polly.loop_header211.1.1

polly.loop_header211.2.1:                         ; preds = %polly.loop_exit219.1.1, %polly.loop_exit219.2.1
  %polly.indvar214.2.1 = phi i64 [ %polly.indvar_next215.2.1, %polly.loop_exit219.2.1 ], [ 0, %polly.loop_exit219.1.1 ]
  %205 = shl i64 %polly.indvar214.2.1, 3
  %206 = add i64 %205, 256
  %scevgep232.2.1 = getelementptr i8, i8* %call2, i64 %206
  %scevgep239.2.1 = getelementptr i8, i8* %call1, i64 %206
  br label %polly.loop_header217.2.1

polly.loop_header217.2.1:                         ; preds = %polly.loop_exit225.2.1, %polly.loop_header211.2.1
  %indvars.iv.2.1 = phi i64 [ %indvars.iv.next.2.1, %polly.loop_exit225.2.1 ], [ 0, %polly.loop_header211.2.1 ]
  %polly.indvar220.2.1 = phi i64 [ %polly.indvar_next221.2.1, %polly.loop_exit225.2.1 ], [ 40, %polly.loop_header211.2.1 ]
  %smin.2.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.2.1, i64 19)
  %207 = mul nuw nsw i64 %polly.indvar220.2.1, 480
  %208 = mul nuw nsw i64 %polly.indvar220.2.1, 640
  %scevgep243.2.1 = getelementptr i8, i8* %call, i64 %208
  %scevgep233.2.1 = getelementptr i8, i8* %scevgep232.2.1, i64 %207
  %scevgep233234.2.1 = bitcast i8* %scevgep233.2.1 to double*
  %_p_scalar_235.2.1 = load double, double* %scevgep233234.2.1, align 8, !alias.scope !66, !noalias !70
  %scevgep240.2.1 = getelementptr i8, i8* %scevgep239.2.1, i64 %207
  %scevgep240241.2.1 = bitcast i8* %scevgep240.2.1 to double*
  %_p_scalar_242.2.1 = load double, double* %scevgep240241.2.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.2.1

polly.loop_header223.2.1:                         ; preds = %polly.loop_header223.2.1, %polly.loop_header217.2.1
  %polly.indvar226.2.1 = phi i64 [ 0, %polly.loop_header217.2.1 ], [ %polly.indvar_next227.2.1, %polly.loop_header223.2.1 ]
  %209 = add nuw nsw i64 %polly.indvar226.2.1, 40
  %210 = mul nuw nsw i64 %209, 480
  %211 = add nuw nsw i64 %210, %206
  %scevgep229.2.1 = getelementptr i8, i8* %call1, i64 %211
  %scevgep229230.2.1 = bitcast i8* %scevgep229.2.1 to double*
  %_p_scalar_231.2.1 = load double, double* %scevgep229230.2.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2.1 = fmul fast double %_p_scalar_235.2.1, %_p_scalar_231.2.1
  %scevgep236.2.1 = getelementptr i8, i8* %call2, i64 %211
  %scevgep236237.2.1 = bitcast i8* %scevgep236.2.1 to double*
  %_p_scalar_238.2.1 = load double, double* %scevgep236237.2.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2.1 = fmul fast double %_p_scalar_242.2.1, %_p_scalar_238.2.1
  %212 = shl i64 %209, 3
  %scevgep244.2.1 = getelementptr i8, i8* %scevgep243.2.1, i64 %212
  %scevgep244245.2.1 = bitcast i8* %scevgep244.2.1 to double*
  %_p_scalar_246.2.1 = load double, double* %scevgep244245.2.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2.1 = fadd fast double %p_mul37.i114.2.1, %p_mul27.i112.2.1
  %p_reass.mul.i117.2.1 = fmul fast double %p_reass.add.i116.2.1, 1.500000e+00
  %p_add42.i118.2.1 = fadd fast double %p_reass.mul.i117.2.1, %_p_scalar_246.2.1
  store double %p_add42.i118.2.1, double* %scevgep244245.2.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.2.1 = add nuw nsw i64 %polly.indvar226.2.1, 1
  %exitcond.2.1.not = icmp eq i64 %polly.indvar226.2.1, %smin.2.1
  br i1 %exitcond.2.1.not, label %polly.loop_exit225.2.1, label %polly.loop_header223.2.1

polly.loop_exit225.2.1:                           ; preds = %polly.loop_header223.2.1
  %polly.indvar_next221.2.1 = add nuw nsw i64 %polly.indvar220.2.1, 1
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2.1, 1
  %exitcond763.2.1.not = icmp eq i64 %indvars.iv.next.2.1, 40
  br i1 %exitcond763.2.1.not, label %polly.loop_exit219.2.1, label %polly.loop_header217.2.1

polly.loop_exit219.2.1:                           ; preds = %polly.loop_exit225.2.1
  %polly.indvar_next215.2.1 = add nuw nsw i64 %polly.indvar214.2.1, 1
  %exitcond764.2.1.not = icmp eq i64 %polly.indvar_next215.2.1, 28
  br i1 %exitcond764.2.1.not, label %polly.loop_header211.3.1, label %polly.loop_header211.2.1

polly.loop_header211.3.1:                         ; preds = %polly.loop_exit219.2.1, %polly.loop_exit219.3.1
  %polly.indvar214.3.1 = phi i64 [ %polly.indvar_next215.3.1, %polly.loop_exit219.3.1 ], [ 0, %polly.loop_exit219.2.1 ]
  %213 = shl i64 %polly.indvar214.3.1, 3
  %214 = add i64 %213, 256
  %scevgep232.3.1 = getelementptr i8, i8* %call2, i64 %214
  %scevgep239.3.1 = getelementptr i8, i8* %call1, i64 %214
  br label %polly.loop_header217.3.1

polly.loop_header217.3.1:                         ; preds = %polly.loop_exit225.3.1, %polly.loop_header211.3.1
  %indvars.iv.3.1 = phi i64 [ %indvars.iv.next.3.1, %polly.loop_exit225.3.1 ], [ 0, %polly.loop_header211.3.1 ]
  %polly.indvar220.3.1 = phi i64 [ %polly.indvar_next221.3.1, %polly.loop_exit225.3.1 ], [ 60, %polly.loop_header211.3.1 ]
  %smin.3.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.3.1, i64 19)
  %215 = mul nuw nsw i64 %polly.indvar220.3.1, 480
  %216 = mul nuw nsw i64 %polly.indvar220.3.1, 640
  %scevgep243.3.1 = getelementptr i8, i8* %call, i64 %216
  %scevgep233.3.1 = getelementptr i8, i8* %scevgep232.3.1, i64 %215
  %scevgep233234.3.1 = bitcast i8* %scevgep233.3.1 to double*
  %_p_scalar_235.3.1 = load double, double* %scevgep233234.3.1, align 8, !alias.scope !66, !noalias !70
  %scevgep240.3.1 = getelementptr i8, i8* %scevgep239.3.1, i64 %215
  %scevgep240241.3.1 = bitcast i8* %scevgep240.3.1 to double*
  %_p_scalar_242.3.1 = load double, double* %scevgep240241.3.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header223.3.1

polly.loop_header223.3.1:                         ; preds = %polly.loop_header223.3.1, %polly.loop_header217.3.1
  %polly.indvar226.3.1 = phi i64 [ 0, %polly.loop_header217.3.1 ], [ %polly.indvar_next227.3.1, %polly.loop_header223.3.1 ]
  %217 = add nuw nsw i64 %polly.indvar226.3.1, 60
  %218 = mul nuw nsw i64 %217, 480
  %219 = add nuw nsw i64 %218, %214
  %scevgep229.3.1 = getelementptr i8, i8* %call1, i64 %219
  %scevgep229230.3.1 = bitcast i8* %scevgep229.3.1 to double*
  %_p_scalar_231.3.1 = load double, double* %scevgep229230.3.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3.1 = fmul fast double %_p_scalar_235.3.1, %_p_scalar_231.3.1
  %scevgep236.3.1 = getelementptr i8, i8* %call2, i64 %219
  %scevgep236237.3.1 = bitcast i8* %scevgep236.3.1 to double*
  %_p_scalar_238.3.1 = load double, double* %scevgep236237.3.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3.1 = fmul fast double %_p_scalar_242.3.1, %_p_scalar_238.3.1
  %220 = shl i64 %217, 3
  %scevgep244.3.1 = getelementptr i8, i8* %scevgep243.3.1, i64 %220
  %scevgep244245.3.1 = bitcast i8* %scevgep244.3.1 to double*
  %_p_scalar_246.3.1 = load double, double* %scevgep244245.3.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3.1 = fadd fast double %p_mul37.i114.3.1, %p_mul27.i112.3.1
  %p_reass.mul.i117.3.1 = fmul fast double %p_reass.add.i116.3.1, 1.500000e+00
  %p_add42.i118.3.1 = fadd fast double %p_reass.mul.i117.3.1, %_p_scalar_246.3.1
  store double %p_add42.i118.3.1, double* %scevgep244245.3.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next227.3.1 = add nuw nsw i64 %polly.indvar226.3.1, 1
  %exitcond.3.1.not = icmp eq i64 %polly.indvar226.3.1, %smin.3.1
  br i1 %exitcond.3.1.not, label %polly.loop_exit225.3.1, label %polly.loop_header223.3.1

polly.loop_exit225.3.1:                           ; preds = %polly.loop_header223.3.1
  %polly.indvar_next221.3.1 = add nuw nsw i64 %polly.indvar220.3.1, 1
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.3.1, 1
  %exitcond763.3.1.not = icmp eq i64 %indvars.iv.next.3.1, 20
  br i1 %exitcond763.3.1.not, label %polly.loop_exit219.3.1, label %polly.loop_header217.3.1

polly.loop_exit219.3.1:                           ; preds = %polly.loop_exit225.3.1
  %polly.indvar_next215.3.1 = add nuw nsw i64 %polly.indvar214.3.1, 1
  %exitcond764.3.1.not = icmp eq i64 %polly.indvar_next215.3.1, 28
  br i1 %exitcond764.3.1.not, label %kernel_syr2k.exit129, label %polly.loop_header211.3.1

polly.loop_header361.1:                           ; preds = %polly.loop_exit369, %polly.loop_exit369.1
  %polly.indvar364.1 = phi i64 [ %polly.indvar_next365.1, %polly.loop_exit369.1 ], [ 0, %polly.loop_exit369 ]
  %221 = shl i64 %polly.indvar364.1, 3
  %scevgep382.1 = getelementptr i8, i8* %call2, i64 %221
  %scevgep389.1 = getelementptr i8, i8* %call1, i64 %221
  br label %polly.loop_header367.1

polly.loop_header367.1:                           ; preds = %polly.loop_exit375.1, %polly.loop_header361.1
  %indvars.iv768.1 = phi i64 [ %indvars.iv.next769.1, %polly.loop_exit375.1 ], [ 0, %polly.loop_header361.1 ]
  %polly.indvar370.1 = phi i64 [ %polly.indvar_next371.1, %polly.loop_exit375.1 ], [ 20, %polly.loop_header361.1 ]
  %smin770.1 = call i64 @llvm.smin.i64(i64 %indvars.iv768.1, i64 19)
  %222 = mul nuw nsw i64 %polly.indvar370.1, 480
  %223 = mul nuw nsw i64 %polly.indvar370.1, 640
  %scevgep393.1 = getelementptr i8, i8* %call, i64 %223
  %scevgep383.1 = getelementptr i8, i8* %scevgep382.1, i64 %222
  %scevgep383384.1 = bitcast i8* %scevgep383.1 to double*
  %_p_scalar_385.1 = load double, double* %scevgep383384.1, align 8, !alias.scope !76, !noalias !79
  %scevgep390.1 = getelementptr i8, i8* %scevgep389.1, i64 %222
  %scevgep390391.1 = bitcast i8* %scevgep390.1 to double*
  %_p_scalar_392.1 = load double, double* %scevgep390391.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header373.1

polly.loop_header373.1:                           ; preds = %polly.loop_header373.1, %polly.loop_header367.1
  %polly.indvar376.1 = phi i64 [ 0, %polly.loop_header367.1 ], [ %polly.indvar_next377.1, %polly.loop_header373.1 ]
  %224 = add nuw nsw i64 %polly.indvar376.1, 20
  %225 = mul nuw nsw i64 %224, 480
  %226 = add nuw nsw i64 %225, %221
  %scevgep379.1 = getelementptr i8, i8* %call1, i64 %226
  %scevgep379380.1 = bitcast i8* %scevgep379.1 to double*
  %_p_scalar_381.1 = load double, double* %scevgep379380.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_385.1, %_p_scalar_381.1
  %scevgep386.1 = getelementptr i8, i8* %call2, i64 %226
  %scevgep386387.1 = bitcast i8* %scevgep386.1 to double*
  %_p_scalar_388.1 = load double, double* %scevgep386387.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_392.1, %_p_scalar_388.1
  %227 = shl i64 %224, 3
  %scevgep394.1 = getelementptr i8, i8* %scevgep393.1, i64 %227
  %scevgep394395.1 = bitcast i8* %scevgep394.1 to double*
  %_p_scalar_396.1 = load double, double* %scevgep394395.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_396.1
  store double %p_add42.i79.1, double* %scevgep394395.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next377.1 = add nuw nsw i64 %polly.indvar376.1, 1
  %exitcond771.1.not = icmp eq i64 %polly.indvar376.1, %smin770.1
  br i1 %exitcond771.1.not, label %polly.loop_exit375.1, label %polly.loop_header373.1

polly.loop_exit375.1:                             ; preds = %polly.loop_header373.1
  %polly.indvar_next371.1 = add nuw nsw i64 %polly.indvar370.1, 1
  %indvars.iv.next769.1 = add nuw nsw i64 %indvars.iv768.1, 1
  %exitcond774.1.not = icmp eq i64 %indvars.iv.next769.1, 60
  br i1 %exitcond774.1.not, label %polly.loop_exit369.1, label %polly.loop_header367.1

polly.loop_exit369.1:                             ; preds = %polly.loop_exit375.1
  %polly.indvar_next365.1 = add nuw nsw i64 %polly.indvar364.1, 1
  %exitcond775.1.not = icmp eq i64 %polly.indvar_next365.1, 32
  br i1 %exitcond775.1.not, label %polly.loop_header361.2, label %polly.loop_header361.1

polly.loop_header361.2:                           ; preds = %polly.loop_exit369.1, %polly.loop_exit369.2
  %polly.indvar364.2 = phi i64 [ %polly.indvar_next365.2, %polly.loop_exit369.2 ], [ 0, %polly.loop_exit369.1 ]
  %228 = shl i64 %polly.indvar364.2, 3
  %scevgep382.2 = getelementptr i8, i8* %call2, i64 %228
  %scevgep389.2 = getelementptr i8, i8* %call1, i64 %228
  br label %polly.loop_header367.2

polly.loop_header367.2:                           ; preds = %polly.loop_exit375.2, %polly.loop_header361.2
  %indvars.iv768.2 = phi i64 [ %indvars.iv.next769.2, %polly.loop_exit375.2 ], [ 0, %polly.loop_header361.2 ]
  %polly.indvar370.2 = phi i64 [ %polly.indvar_next371.2, %polly.loop_exit375.2 ], [ 40, %polly.loop_header361.2 ]
  %smin770.2 = call i64 @llvm.smin.i64(i64 %indvars.iv768.2, i64 19)
  %229 = mul nuw nsw i64 %polly.indvar370.2, 480
  %230 = mul nuw nsw i64 %polly.indvar370.2, 640
  %scevgep393.2 = getelementptr i8, i8* %call, i64 %230
  %scevgep383.2 = getelementptr i8, i8* %scevgep382.2, i64 %229
  %scevgep383384.2 = bitcast i8* %scevgep383.2 to double*
  %_p_scalar_385.2 = load double, double* %scevgep383384.2, align 8, !alias.scope !76, !noalias !79
  %scevgep390.2 = getelementptr i8, i8* %scevgep389.2, i64 %229
  %scevgep390391.2 = bitcast i8* %scevgep390.2 to double*
  %_p_scalar_392.2 = load double, double* %scevgep390391.2, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header373.2

polly.loop_header373.2:                           ; preds = %polly.loop_header373.2, %polly.loop_header367.2
  %polly.indvar376.2 = phi i64 [ 0, %polly.loop_header367.2 ], [ %polly.indvar_next377.2, %polly.loop_header373.2 ]
  %231 = add nuw nsw i64 %polly.indvar376.2, 40
  %232 = mul nuw nsw i64 %231, 480
  %233 = add nuw nsw i64 %232, %228
  %scevgep379.2 = getelementptr i8, i8* %call1, i64 %233
  %scevgep379380.2 = bitcast i8* %scevgep379.2 to double*
  %_p_scalar_381.2 = load double, double* %scevgep379380.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_385.2, %_p_scalar_381.2
  %scevgep386.2 = getelementptr i8, i8* %call2, i64 %233
  %scevgep386387.2 = bitcast i8* %scevgep386.2 to double*
  %_p_scalar_388.2 = load double, double* %scevgep386387.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_392.2, %_p_scalar_388.2
  %234 = shl i64 %231, 3
  %scevgep394.2 = getelementptr i8, i8* %scevgep393.2, i64 %234
  %scevgep394395.2 = bitcast i8* %scevgep394.2 to double*
  %_p_scalar_396.2 = load double, double* %scevgep394395.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_396.2
  store double %p_add42.i79.2, double* %scevgep394395.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next377.2 = add nuw nsw i64 %polly.indvar376.2, 1
  %exitcond771.2.not = icmp eq i64 %polly.indvar376.2, %smin770.2
  br i1 %exitcond771.2.not, label %polly.loop_exit375.2, label %polly.loop_header373.2

polly.loop_exit375.2:                             ; preds = %polly.loop_header373.2
  %polly.indvar_next371.2 = add nuw nsw i64 %polly.indvar370.2, 1
  %indvars.iv.next769.2 = add nuw nsw i64 %indvars.iv768.2, 1
  %exitcond774.2.not = icmp eq i64 %indvars.iv.next769.2, 40
  br i1 %exitcond774.2.not, label %polly.loop_exit369.2, label %polly.loop_header367.2

polly.loop_exit369.2:                             ; preds = %polly.loop_exit375.2
  %polly.indvar_next365.2 = add nuw nsw i64 %polly.indvar364.2, 1
  %exitcond775.2.not = icmp eq i64 %polly.indvar_next365.2, 32
  br i1 %exitcond775.2.not, label %polly.loop_header361.3, label %polly.loop_header361.2

polly.loop_header361.3:                           ; preds = %polly.loop_exit369.2, %polly.loop_exit369.3
  %polly.indvar364.3 = phi i64 [ %polly.indvar_next365.3, %polly.loop_exit369.3 ], [ 0, %polly.loop_exit369.2 ]
  %235 = shl i64 %polly.indvar364.3, 3
  %scevgep382.3 = getelementptr i8, i8* %call2, i64 %235
  %scevgep389.3 = getelementptr i8, i8* %call1, i64 %235
  br label %polly.loop_header367.3

polly.loop_header367.3:                           ; preds = %polly.loop_exit375.3, %polly.loop_header361.3
  %indvars.iv768.3 = phi i64 [ %indvars.iv.next769.3, %polly.loop_exit375.3 ], [ 0, %polly.loop_header361.3 ]
  %polly.indvar370.3 = phi i64 [ %polly.indvar_next371.3, %polly.loop_exit375.3 ], [ 60, %polly.loop_header361.3 ]
  %smin770.3 = call i64 @llvm.smin.i64(i64 %indvars.iv768.3, i64 19)
  %236 = mul nuw nsw i64 %polly.indvar370.3, 480
  %237 = mul nuw nsw i64 %polly.indvar370.3, 640
  %scevgep393.3 = getelementptr i8, i8* %call, i64 %237
  %scevgep383.3 = getelementptr i8, i8* %scevgep382.3, i64 %236
  %scevgep383384.3 = bitcast i8* %scevgep383.3 to double*
  %_p_scalar_385.3 = load double, double* %scevgep383384.3, align 8, !alias.scope !76, !noalias !79
  %scevgep390.3 = getelementptr i8, i8* %scevgep389.3, i64 %236
  %scevgep390391.3 = bitcast i8* %scevgep390.3 to double*
  %_p_scalar_392.3 = load double, double* %scevgep390391.3, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header373.3

polly.loop_header373.3:                           ; preds = %polly.loop_header373.3, %polly.loop_header367.3
  %polly.indvar376.3 = phi i64 [ 0, %polly.loop_header367.3 ], [ %polly.indvar_next377.3, %polly.loop_header373.3 ]
  %238 = add nuw nsw i64 %polly.indvar376.3, 60
  %239 = mul nuw nsw i64 %238, 480
  %240 = add nuw nsw i64 %239, %235
  %scevgep379.3 = getelementptr i8, i8* %call1, i64 %240
  %scevgep379380.3 = bitcast i8* %scevgep379.3 to double*
  %_p_scalar_381.3 = load double, double* %scevgep379380.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_385.3, %_p_scalar_381.3
  %scevgep386.3 = getelementptr i8, i8* %call2, i64 %240
  %scevgep386387.3 = bitcast i8* %scevgep386.3 to double*
  %_p_scalar_388.3 = load double, double* %scevgep386387.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_392.3, %_p_scalar_388.3
  %241 = shl i64 %238, 3
  %scevgep394.3 = getelementptr i8, i8* %scevgep393.3, i64 %241
  %scevgep394395.3 = bitcast i8* %scevgep394.3 to double*
  %_p_scalar_396.3 = load double, double* %scevgep394395.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_396.3
  store double %p_add42.i79.3, double* %scevgep394395.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next377.3 = add nuw nsw i64 %polly.indvar376.3, 1
  %exitcond771.3.not = icmp eq i64 %polly.indvar376.3, %smin770.3
  br i1 %exitcond771.3.not, label %polly.loop_exit375.3, label %polly.loop_header373.3

polly.loop_exit375.3:                             ; preds = %polly.loop_header373.3
  %polly.indvar_next371.3 = add nuw nsw i64 %polly.indvar370.3, 1
  %indvars.iv.next769.3 = add nuw nsw i64 %indvars.iv768.3, 1
  %exitcond774.3.not = icmp eq i64 %indvars.iv.next769.3, 20
  br i1 %exitcond774.3.not, label %polly.loop_exit369.3, label %polly.loop_header367.3

polly.loop_exit369.3:                             ; preds = %polly.loop_exit375.3
  %polly.indvar_next365.3 = add nuw nsw i64 %polly.indvar364.3, 1
  %exitcond775.3.not = icmp eq i64 %polly.indvar_next365.3, 32
  br i1 %exitcond775.3.not, label %polly.loop_header361.1858, label %polly.loop_header361.3

polly.loop_header361.1858:                        ; preds = %polly.loop_exit369.3, %polly.loop_exit369.1896
  %polly.indvar364.1857 = phi i64 [ %polly.indvar_next365.1894, %polly.loop_exit369.1896 ], [ 0, %polly.loop_exit369.3 ]
  %242 = shl i64 %polly.indvar364.1857, 3
  %243 = add i64 %242, 256
  %scevgep382.1862 = getelementptr i8, i8* %call2, i64 %243
  %scevgep389.1863 = getelementptr i8, i8* %call1, i64 %243
  br label %polly.loop_header367.1871

polly.loop_header367.1871:                        ; preds = %polly.loop_exit375.1893, %polly.loop_header361.1858
  %indvars.iv768.1859 = phi i64 [ %indvars.iv.next769.1891, %polly.loop_exit375.1893 ], [ 0, %polly.loop_header361.1858 ]
  %polly.indvar370.1860 = phi i64 [ %polly.indvar_next371.1890, %polly.loop_exit375.1893 ], [ 0, %polly.loop_header361.1858 ]
  %smin770.1861 = call i64 @llvm.smin.i64(i64 %indvars.iv768.1859, i64 19)
  %244 = mul nuw nsw i64 %polly.indvar370.1860, 480
  %245 = mul nuw nsw i64 %polly.indvar370.1860, 640
  %scevgep393.1864 = getelementptr i8, i8* %call, i64 %245
  %scevgep383.1865 = getelementptr i8, i8* %scevgep382.1862, i64 %244
  %scevgep383384.1866 = bitcast i8* %scevgep383.1865 to double*
  %_p_scalar_385.1867 = load double, double* %scevgep383384.1866, align 8, !alias.scope !76, !noalias !79
  %scevgep390.1868 = getelementptr i8, i8* %scevgep389.1863, i64 %244
  %scevgep390391.1869 = bitcast i8* %scevgep390.1868 to double*
  %_p_scalar_392.1870 = load double, double* %scevgep390391.1869, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header373.1889

polly.loop_header373.1889:                        ; preds = %polly.loop_header373.1889, %polly.loop_header367.1871
  %polly.indvar376.1872 = phi i64 [ 0, %polly.loop_header367.1871 ], [ %polly.indvar_next377.1887, %polly.loop_header373.1889 ]
  %246 = mul nuw nsw i64 %polly.indvar376.1872, 480
  %247 = add nuw nsw i64 %246, %243
  %scevgep379.1873 = getelementptr i8, i8* %call1, i64 %247
  %scevgep379380.1874 = bitcast i8* %scevgep379.1873 to double*
  %_p_scalar_381.1875 = load double, double* %scevgep379380.1874, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1876 = fmul fast double %_p_scalar_385.1867, %_p_scalar_381.1875
  %scevgep386.1877 = getelementptr i8, i8* %call2, i64 %247
  %scevgep386387.1878 = bitcast i8* %scevgep386.1877 to double*
  %_p_scalar_388.1879 = load double, double* %scevgep386387.1878, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1880 = fmul fast double %_p_scalar_392.1870, %_p_scalar_388.1879
  %248 = shl i64 %polly.indvar376.1872, 3
  %scevgep394.1881 = getelementptr i8, i8* %scevgep393.1864, i64 %248
  %scevgep394395.1882 = bitcast i8* %scevgep394.1881 to double*
  %_p_scalar_396.1883 = load double, double* %scevgep394395.1882, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1884 = fadd fast double %p_mul37.i75.1880, %p_mul27.i73.1876
  %p_reass.mul.i78.1885 = fmul fast double %p_reass.add.i77.1884, 1.500000e+00
  %p_add42.i79.1886 = fadd fast double %p_reass.mul.i78.1885, %_p_scalar_396.1883
  store double %p_add42.i79.1886, double* %scevgep394395.1882, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next377.1887 = add nuw nsw i64 %polly.indvar376.1872, 1
  %exitcond771.1888.not = icmp eq i64 %polly.indvar376.1872, %smin770.1861
  br i1 %exitcond771.1888.not, label %polly.loop_exit375.1893, label %polly.loop_header373.1889

polly.loop_exit375.1893:                          ; preds = %polly.loop_header373.1889
  %polly.indvar_next371.1890 = add nuw nsw i64 %polly.indvar370.1860, 1
  %indvars.iv.next769.1891 = add nuw nsw i64 %indvars.iv768.1859, 1
  %exitcond774.1892.not = icmp eq i64 %indvars.iv.next769.1891, 80
  br i1 %exitcond774.1892.not, label %polly.loop_exit369.1896, label %polly.loop_header367.1871

polly.loop_exit369.1896:                          ; preds = %polly.loop_exit375.1893
  %polly.indvar_next365.1894 = add nuw nsw i64 %polly.indvar364.1857, 1
  %exitcond775.1895.not = icmp eq i64 %polly.indvar_next365.1894, 28
  br i1 %exitcond775.1895.not, label %polly.loop_header361.1.1, label %polly.loop_header361.1858

polly.loop_header361.1.1:                         ; preds = %polly.loop_exit369.1896, %polly.loop_exit369.1.1
  %polly.indvar364.1.1 = phi i64 [ %polly.indvar_next365.1.1, %polly.loop_exit369.1.1 ], [ 0, %polly.loop_exit369.1896 ]
  %249 = shl i64 %polly.indvar364.1.1, 3
  %250 = add i64 %249, 256
  %scevgep382.1.1 = getelementptr i8, i8* %call2, i64 %250
  %scevgep389.1.1 = getelementptr i8, i8* %call1, i64 %250
  br label %polly.loop_header367.1.1

polly.loop_header367.1.1:                         ; preds = %polly.loop_exit375.1.1, %polly.loop_header361.1.1
  %indvars.iv768.1.1 = phi i64 [ %indvars.iv.next769.1.1, %polly.loop_exit375.1.1 ], [ 0, %polly.loop_header361.1.1 ]
  %polly.indvar370.1.1 = phi i64 [ %polly.indvar_next371.1.1, %polly.loop_exit375.1.1 ], [ 20, %polly.loop_header361.1.1 ]
  %smin770.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv768.1.1, i64 19)
  %251 = mul nuw nsw i64 %polly.indvar370.1.1, 480
  %252 = mul nuw nsw i64 %polly.indvar370.1.1, 640
  %scevgep393.1.1 = getelementptr i8, i8* %call, i64 %252
  %scevgep383.1.1 = getelementptr i8, i8* %scevgep382.1.1, i64 %251
  %scevgep383384.1.1 = bitcast i8* %scevgep383.1.1 to double*
  %_p_scalar_385.1.1 = load double, double* %scevgep383384.1.1, align 8, !alias.scope !76, !noalias !79
  %scevgep390.1.1 = getelementptr i8, i8* %scevgep389.1.1, i64 %251
  %scevgep390391.1.1 = bitcast i8* %scevgep390.1.1 to double*
  %_p_scalar_392.1.1 = load double, double* %scevgep390391.1.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header373.1.1

polly.loop_header373.1.1:                         ; preds = %polly.loop_header373.1.1, %polly.loop_header367.1.1
  %polly.indvar376.1.1 = phi i64 [ 0, %polly.loop_header367.1.1 ], [ %polly.indvar_next377.1.1, %polly.loop_header373.1.1 ]
  %253 = add nuw nsw i64 %polly.indvar376.1.1, 20
  %254 = mul nuw nsw i64 %253, 480
  %255 = add nuw nsw i64 %254, %250
  %scevgep379.1.1 = getelementptr i8, i8* %call1, i64 %255
  %scevgep379380.1.1 = bitcast i8* %scevgep379.1.1 to double*
  %_p_scalar_381.1.1 = load double, double* %scevgep379380.1.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1.1 = fmul fast double %_p_scalar_385.1.1, %_p_scalar_381.1.1
  %scevgep386.1.1 = getelementptr i8, i8* %call2, i64 %255
  %scevgep386387.1.1 = bitcast i8* %scevgep386.1.1 to double*
  %_p_scalar_388.1.1 = load double, double* %scevgep386387.1.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1.1 = fmul fast double %_p_scalar_392.1.1, %_p_scalar_388.1.1
  %256 = shl i64 %253, 3
  %scevgep394.1.1 = getelementptr i8, i8* %scevgep393.1.1, i64 %256
  %scevgep394395.1.1 = bitcast i8* %scevgep394.1.1 to double*
  %_p_scalar_396.1.1 = load double, double* %scevgep394395.1.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1.1 = fadd fast double %p_mul37.i75.1.1, %p_mul27.i73.1.1
  %p_reass.mul.i78.1.1 = fmul fast double %p_reass.add.i77.1.1, 1.500000e+00
  %p_add42.i79.1.1 = fadd fast double %p_reass.mul.i78.1.1, %_p_scalar_396.1.1
  store double %p_add42.i79.1.1, double* %scevgep394395.1.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next377.1.1 = add nuw nsw i64 %polly.indvar376.1.1, 1
  %exitcond771.1.1.not = icmp eq i64 %polly.indvar376.1.1, %smin770.1.1
  br i1 %exitcond771.1.1.not, label %polly.loop_exit375.1.1, label %polly.loop_header373.1.1

polly.loop_exit375.1.1:                           ; preds = %polly.loop_header373.1.1
  %polly.indvar_next371.1.1 = add nuw nsw i64 %polly.indvar370.1.1, 1
  %indvars.iv.next769.1.1 = add nuw nsw i64 %indvars.iv768.1.1, 1
  %exitcond774.1.1.not = icmp eq i64 %indvars.iv.next769.1.1, 60
  br i1 %exitcond774.1.1.not, label %polly.loop_exit369.1.1, label %polly.loop_header367.1.1

polly.loop_exit369.1.1:                           ; preds = %polly.loop_exit375.1.1
  %polly.indvar_next365.1.1 = add nuw nsw i64 %polly.indvar364.1.1, 1
  %exitcond775.1.1.not = icmp eq i64 %polly.indvar_next365.1.1, 28
  br i1 %exitcond775.1.1.not, label %polly.loop_header361.2.1, label %polly.loop_header361.1.1

polly.loop_header361.2.1:                         ; preds = %polly.loop_exit369.1.1, %polly.loop_exit369.2.1
  %polly.indvar364.2.1 = phi i64 [ %polly.indvar_next365.2.1, %polly.loop_exit369.2.1 ], [ 0, %polly.loop_exit369.1.1 ]
  %257 = shl i64 %polly.indvar364.2.1, 3
  %258 = add i64 %257, 256
  %scevgep382.2.1 = getelementptr i8, i8* %call2, i64 %258
  %scevgep389.2.1 = getelementptr i8, i8* %call1, i64 %258
  br label %polly.loop_header367.2.1

polly.loop_header367.2.1:                         ; preds = %polly.loop_exit375.2.1, %polly.loop_header361.2.1
  %indvars.iv768.2.1 = phi i64 [ %indvars.iv.next769.2.1, %polly.loop_exit375.2.1 ], [ 0, %polly.loop_header361.2.1 ]
  %polly.indvar370.2.1 = phi i64 [ %polly.indvar_next371.2.1, %polly.loop_exit375.2.1 ], [ 40, %polly.loop_header361.2.1 ]
  %smin770.2.1 = call i64 @llvm.smin.i64(i64 %indvars.iv768.2.1, i64 19)
  %259 = mul nuw nsw i64 %polly.indvar370.2.1, 480
  %260 = mul nuw nsw i64 %polly.indvar370.2.1, 640
  %scevgep393.2.1 = getelementptr i8, i8* %call, i64 %260
  %scevgep383.2.1 = getelementptr i8, i8* %scevgep382.2.1, i64 %259
  %scevgep383384.2.1 = bitcast i8* %scevgep383.2.1 to double*
  %_p_scalar_385.2.1 = load double, double* %scevgep383384.2.1, align 8, !alias.scope !76, !noalias !79
  %scevgep390.2.1 = getelementptr i8, i8* %scevgep389.2.1, i64 %259
  %scevgep390391.2.1 = bitcast i8* %scevgep390.2.1 to double*
  %_p_scalar_392.2.1 = load double, double* %scevgep390391.2.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header373.2.1

polly.loop_header373.2.1:                         ; preds = %polly.loop_header373.2.1, %polly.loop_header367.2.1
  %polly.indvar376.2.1 = phi i64 [ 0, %polly.loop_header367.2.1 ], [ %polly.indvar_next377.2.1, %polly.loop_header373.2.1 ]
  %261 = add nuw nsw i64 %polly.indvar376.2.1, 40
  %262 = mul nuw nsw i64 %261, 480
  %263 = add nuw nsw i64 %262, %258
  %scevgep379.2.1 = getelementptr i8, i8* %call1, i64 %263
  %scevgep379380.2.1 = bitcast i8* %scevgep379.2.1 to double*
  %_p_scalar_381.2.1 = load double, double* %scevgep379380.2.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2.1 = fmul fast double %_p_scalar_385.2.1, %_p_scalar_381.2.1
  %scevgep386.2.1 = getelementptr i8, i8* %call2, i64 %263
  %scevgep386387.2.1 = bitcast i8* %scevgep386.2.1 to double*
  %_p_scalar_388.2.1 = load double, double* %scevgep386387.2.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2.1 = fmul fast double %_p_scalar_392.2.1, %_p_scalar_388.2.1
  %264 = shl i64 %261, 3
  %scevgep394.2.1 = getelementptr i8, i8* %scevgep393.2.1, i64 %264
  %scevgep394395.2.1 = bitcast i8* %scevgep394.2.1 to double*
  %_p_scalar_396.2.1 = load double, double* %scevgep394395.2.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2.1 = fadd fast double %p_mul37.i75.2.1, %p_mul27.i73.2.1
  %p_reass.mul.i78.2.1 = fmul fast double %p_reass.add.i77.2.1, 1.500000e+00
  %p_add42.i79.2.1 = fadd fast double %p_reass.mul.i78.2.1, %_p_scalar_396.2.1
  store double %p_add42.i79.2.1, double* %scevgep394395.2.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next377.2.1 = add nuw nsw i64 %polly.indvar376.2.1, 1
  %exitcond771.2.1.not = icmp eq i64 %polly.indvar376.2.1, %smin770.2.1
  br i1 %exitcond771.2.1.not, label %polly.loop_exit375.2.1, label %polly.loop_header373.2.1

polly.loop_exit375.2.1:                           ; preds = %polly.loop_header373.2.1
  %polly.indvar_next371.2.1 = add nuw nsw i64 %polly.indvar370.2.1, 1
  %indvars.iv.next769.2.1 = add nuw nsw i64 %indvars.iv768.2.1, 1
  %exitcond774.2.1.not = icmp eq i64 %indvars.iv.next769.2.1, 40
  br i1 %exitcond774.2.1.not, label %polly.loop_exit369.2.1, label %polly.loop_header367.2.1

polly.loop_exit369.2.1:                           ; preds = %polly.loop_exit375.2.1
  %polly.indvar_next365.2.1 = add nuw nsw i64 %polly.indvar364.2.1, 1
  %exitcond775.2.1.not = icmp eq i64 %polly.indvar_next365.2.1, 28
  br i1 %exitcond775.2.1.not, label %polly.loop_header361.3.1, label %polly.loop_header361.2.1

polly.loop_header361.3.1:                         ; preds = %polly.loop_exit369.2.1, %polly.loop_exit369.3.1
  %polly.indvar364.3.1 = phi i64 [ %polly.indvar_next365.3.1, %polly.loop_exit369.3.1 ], [ 0, %polly.loop_exit369.2.1 ]
  %265 = shl i64 %polly.indvar364.3.1, 3
  %266 = add i64 %265, 256
  %scevgep382.3.1 = getelementptr i8, i8* %call2, i64 %266
  %scevgep389.3.1 = getelementptr i8, i8* %call1, i64 %266
  br label %polly.loop_header367.3.1

polly.loop_header367.3.1:                         ; preds = %polly.loop_exit375.3.1, %polly.loop_header361.3.1
  %indvars.iv768.3.1 = phi i64 [ %indvars.iv.next769.3.1, %polly.loop_exit375.3.1 ], [ 0, %polly.loop_header361.3.1 ]
  %polly.indvar370.3.1 = phi i64 [ %polly.indvar_next371.3.1, %polly.loop_exit375.3.1 ], [ 60, %polly.loop_header361.3.1 ]
  %smin770.3.1 = call i64 @llvm.smin.i64(i64 %indvars.iv768.3.1, i64 19)
  %267 = mul nuw nsw i64 %polly.indvar370.3.1, 480
  %268 = mul nuw nsw i64 %polly.indvar370.3.1, 640
  %scevgep393.3.1 = getelementptr i8, i8* %call, i64 %268
  %scevgep383.3.1 = getelementptr i8, i8* %scevgep382.3.1, i64 %267
  %scevgep383384.3.1 = bitcast i8* %scevgep383.3.1 to double*
  %_p_scalar_385.3.1 = load double, double* %scevgep383384.3.1, align 8, !alias.scope !76, !noalias !79
  %scevgep390.3.1 = getelementptr i8, i8* %scevgep389.3.1, i64 %267
  %scevgep390391.3.1 = bitcast i8* %scevgep390.3.1 to double*
  %_p_scalar_392.3.1 = load double, double* %scevgep390391.3.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header373.3.1

polly.loop_header373.3.1:                         ; preds = %polly.loop_header373.3.1, %polly.loop_header367.3.1
  %polly.indvar376.3.1 = phi i64 [ 0, %polly.loop_header367.3.1 ], [ %polly.indvar_next377.3.1, %polly.loop_header373.3.1 ]
  %269 = add nuw nsw i64 %polly.indvar376.3.1, 60
  %270 = mul nuw nsw i64 %269, 480
  %271 = add nuw nsw i64 %270, %266
  %scevgep379.3.1 = getelementptr i8, i8* %call1, i64 %271
  %scevgep379380.3.1 = bitcast i8* %scevgep379.3.1 to double*
  %_p_scalar_381.3.1 = load double, double* %scevgep379380.3.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3.1 = fmul fast double %_p_scalar_385.3.1, %_p_scalar_381.3.1
  %scevgep386.3.1 = getelementptr i8, i8* %call2, i64 %271
  %scevgep386387.3.1 = bitcast i8* %scevgep386.3.1 to double*
  %_p_scalar_388.3.1 = load double, double* %scevgep386387.3.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3.1 = fmul fast double %_p_scalar_392.3.1, %_p_scalar_388.3.1
  %272 = shl i64 %269, 3
  %scevgep394.3.1 = getelementptr i8, i8* %scevgep393.3.1, i64 %272
  %scevgep394395.3.1 = bitcast i8* %scevgep394.3.1 to double*
  %_p_scalar_396.3.1 = load double, double* %scevgep394395.3.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3.1 = fadd fast double %p_mul37.i75.3.1, %p_mul27.i73.3.1
  %p_reass.mul.i78.3.1 = fmul fast double %p_reass.add.i77.3.1, 1.500000e+00
  %p_add42.i79.3.1 = fadd fast double %p_reass.mul.i78.3.1, %_p_scalar_396.3.1
  store double %p_add42.i79.3.1, double* %scevgep394395.3.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next377.3.1 = add nuw nsw i64 %polly.indvar376.3.1, 1
  %exitcond771.3.1.not = icmp eq i64 %polly.indvar376.3.1, %smin770.3.1
  br i1 %exitcond771.3.1.not, label %polly.loop_exit375.3.1, label %polly.loop_header373.3.1

polly.loop_exit375.3.1:                           ; preds = %polly.loop_header373.3.1
  %polly.indvar_next371.3.1 = add nuw nsw i64 %polly.indvar370.3.1, 1
  %indvars.iv.next769.3.1 = add nuw nsw i64 %indvars.iv768.3.1, 1
  %exitcond774.3.1.not = icmp eq i64 %indvars.iv.next769.3.1, 20
  br i1 %exitcond774.3.1.not, label %polly.loop_exit369.3.1, label %polly.loop_header367.3.1

polly.loop_exit369.3.1:                           ; preds = %polly.loop_exit375.3.1
  %polly.indvar_next365.3.1 = add nuw nsw i64 %polly.indvar364.3.1, 1
  %exitcond775.3.1.not = icmp eq i64 %polly.indvar_next365.3.1, 28
  br i1 %exitcond775.3.1.not, label %kernel_syr2k.exit90, label %polly.loop_header361.3.1

polly.loop_header511.1:                           ; preds = %polly.loop_exit519, %polly.loop_exit519.1
  %polly.indvar514.1 = phi i64 [ %polly.indvar_next515.1, %polly.loop_exit519.1 ], [ 0, %polly.loop_exit519 ]
  %273 = shl i64 %polly.indvar514.1, 3
  %scevgep532.1 = getelementptr i8, i8* %call2, i64 %273
  %scevgep539.1 = getelementptr i8, i8* %call1, i64 %273
  br label %polly.loop_header517.1

polly.loop_header517.1:                           ; preds = %polly.loop_exit525.1, %polly.loop_header511.1
  %indvars.iv779.1 = phi i64 [ %indvars.iv.next780.1, %polly.loop_exit525.1 ], [ 0, %polly.loop_header511.1 ]
  %polly.indvar520.1 = phi i64 [ %polly.indvar_next521.1, %polly.loop_exit525.1 ], [ 20, %polly.loop_header511.1 ]
  %smin781.1 = call i64 @llvm.smin.i64(i64 %indvars.iv779.1, i64 19)
  %274 = mul nuw nsw i64 %polly.indvar520.1, 480
  %275 = mul nuw nsw i64 %polly.indvar520.1, 640
  %scevgep543.1 = getelementptr i8, i8* %call, i64 %275
  %scevgep533.1 = getelementptr i8, i8* %scevgep532.1, i64 %274
  %scevgep533534.1 = bitcast i8* %scevgep533.1 to double*
  %_p_scalar_535.1 = load double, double* %scevgep533534.1, align 8, !alias.scope !85, !noalias !88
  %scevgep540.1 = getelementptr i8, i8* %scevgep539.1, i64 %274
  %scevgep540541.1 = bitcast i8* %scevgep540.1 to double*
  %_p_scalar_542.1 = load double, double* %scevgep540541.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header523.1

polly.loop_header523.1:                           ; preds = %polly.loop_header523.1, %polly.loop_header517.1
  %polly.indvar526.1 = phi i64 [ 0, %polly.loop_header517.1 ], [ %polly.indvar_next527.1, %polly.loop_header523.1 ]
  %276 = add nuw nsw i64 %polly.indvar526.1, 20
  %277 = mul nuw nsw i64 %276, 480
  %278 = add nuw nsw i64 %277, %273
  %scevgep529.1 = getelementptr i8, i8* %call1, i64 %278
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_535.1, %_p_scalar_531.1
  %scevgep536.1 = getelementptr i8, i8* %call2, i64 %278
  %scevgep536537.1 = bitcast i8* %scevgep536.1 to double*
  %_p_scalar_538.1 = load double, double* %scevgep536537.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_542.1, %_p_scalar_538.1
  %279 = shl i64 %276, 3
  %scevgep544.1 = getelementptr i8, i8* %scevgep543.1, i64 %279
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_546.1
  store double %p_add42.i.1, double* %scevgep544545.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527.1 = add nuw nsw i64 %polly.indvar526.1, 1
  %exitcond782.1.not = icmp eq i64 %polly.indvar526.1, %smin781.1
  br i1 %exitcond782.1.not, label %polly.loop_exit525.1, label %polly.loop_header523.1

polly.loop_exit525.1:                             ; preds = %polly.loop_header523.1
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %indvars.iv.next780.1 = add nuw nsw i64 %indvars.iv779.1, 1
  %exitcond785.1.not = icmp eq i64 %indvars.iv.next780.1, 60
  br i1 %exitcond785.1.not, label %polly.loop_exit519.1, label %polly.loop_header517.1

polly.loop_exit519.1:                             ; preds = %polly.loop_exit525.1
  %polly.indvar_next515.1 = add nuw nsw i64 %polly.indvar514.1, 1
  %exitcond786.1.not = icmp eq i64 %polly.indvar_next515.1, 32
  br i1 %exitcond786.1.not, label %polly.loop_header511.2, label %polly.loop_header511.1

polly.loop_header511.2:                           ; preds = %polly.loop_exit519.1, %polly.loop_exit519.2
  %polly.indvar514.2 = phi i64 [ %polly.indvar_next515.2, %polly.loop_exit519.2 ], [ 0, %polly.loop_exit519.1 ]
  %280 = shl i64 %polly.indvar514.2, 3
  %scevgep532.2 = getelementptr i8, i8* %call2, i64 %280
  %scevgep539.2 = getelementptr i8, i8* %call1, i64 %280
  br label %polly.loop_header517.2

polly.loop_header517.2:                           ; preds = %polly.loop_exit525.2, %polly.loop_header511.2
  %indvars.iv779.2 = phi i64 [ %indvars.iv.next780.2, %polly.loop_exit525.2 ], [ 0, %polly.loop_header511.2 ]
  %polly.indvar520.2 = phi i64 [ %polly.indvar_next521.2, %polly.loop_exit525.2 ], [ 40, %polly.loop_header511.2 ]
  %smin781.2 = call i64 @llvm.smin.i64(i64 %indvars.iv779.2, i64 19)
  %281 = mul nuw nsw i64 %polly.indvar520.2, 480
  %282 = mul nuw nsw i64 %polly.indvar520.2, 640
  %scevgep543.2 = getelementptr i8, i8* %call, i64 %282
  %scevgep533.2 = getelementptr i8, i8* %scevgep532.2, i64 %281
  %scevgep533534.2 = bitcast i8* %scevgep533.2 to double*
  %_p_scalar_535.2 = load double, double* %scevgep533534.2, align 8, !alias.scope !85, !noalias !88
  %scevgep540.2 = getelementptr i8, i8* %scevgep539.2, i64 %281
  %scevgep540541.2 = bitcast i8* %scevgep540.2 to double*
  %_p_scalar_542.2 = load double, double* %scevgep540541.2, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header523.2

polly.loop_header523.2:                           ; preds = %polly.loop_header523.2, %polly.loop_header517.2
  %polly.indvar526.2 = phi i64 [ 0, %polly.loop_header517.2 ], [ %polly.indvar_next527.2, %polly.loop_header523.2 ]
  %283 = add nuw nsw i64 %polly.indvar526.2, 40
  %284 = mul nuw nsw i64 %283, 480
  %285 = add nuw nsw i64 %284, %280
  %scevgep529.2 = getelementptr i8, i8* %call1, i64 %285
  %scevgep529530.2 = bitcast i8* %scevgep529.2 to double*
  %_p_scalar_531.2 = load double, double* %scevgep529530.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_535.2, %_p_scalar_531.2
  %scevgep536.2 = getelementptr i8, i8* %call2, i64 %285
  %scevgep536537.2 = bitcast i8* %scevgep536.2 to double*
  %_p_scalar_538.2 = load double, double* %scevgep536537.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_542.2, %_p_scalar_538.2
  %286 = shl i64 %283, 3
  %scevgep544.2 = getelementptr i8, i8* %scevgep543.2, i64 %286
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_546.2
  store double %p_add42.i.2, double* %scevgep544545.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527.2 = add nuw nsw i64 %polly.indvar526.2, 1
  %exitcond782.2.not = icmp eq i64 %polly.indvar526.2, %smin781.2
  br i1 %exitcond782.2.not, label %polly.loop_exit525.2, label %polly.loop_header523.2

polly.loop_exit525.2:                             ; preds = %polly.loop_header523.2
  %polly.indvar_next521.2 = add nuw nsw i64 %polly.indvar520.2, 1
  %indvars.iv.next780.2 = add nuw nsw i64 %indvars.iv779.2, 1
  %exitcond785.2.not = icmp eq i64 %indvars.iv.next780.2, 40
  br i1 %exitcond785.2.not, label %polly.loop_exit519.2, label %polly.loop_header517.2

polly.loop_exit519.2:                             ; preds = %polly.loop_exit525.2
  %polly.indvar_next515.2 = add nuw nsw i64 %polly.indvar514.2, 1
  %exitcond786.2.not = icmp eq i64 %polly.indvar_next515.2, 32
  br i1 %exitcond786.2.not, label %polly.loop_header511.3, label %polly.loop_header511.2

polly.loop_header511.3:                           ; preds = %polly.loop_exit519.2, %polly.loop_exit519.3
  %polly.indvar514.3 = phi i64 [ %polly.indvar_next515.3, %polly.loop_exit519.3 ], [ 0, %polly.loop_exit519.2 ]
  %287 = shl i64 %polly.indvar514.3, 3
  %scevgep532.3 = getelementptr i8, i8* %call2, i64 %287
  %scevgep539.3 = getelementptr i8, i8* %call1, i64 %287
  br label %polly.loop_header517.3

polly.loop_header517.3:                           ; preds = %polly.loop_exit525.3, %polly.loop_header511.3
  %indvars.iv779.3 = phi i64 [ %indvars.iv.next780.3, %polly.loop_exit525.3 ], [ 0, %polly.loop_header511.3 ]
  %polly.indvar520.3 = phi i64 [ %polly.indvar_next521.3, %polly.loop_exit525.3 ], [ 60, %polly.loop_header511.3 ]
  %smin781.3 = call i64 @llvm.smin.i64(i64 %indvars.iv779.3, i64 19)
  %288 = mul nuw nsw i64 %polly.indvar520.3, 480
  %289 = mul nuw nsw i64 %polly.indvar520.3, 640
  %scevgep543.3 = getelementptr i8, i8* %call, i64 %289
  %scevgep533.3 = getelementptr i8, i8* %scevgep532.3, i64 %288
  %scevgep533534.3 = bitcast i8* %scevgep533.3 to double*
  %_p_scalar_535.3 = load double, double* %scevgep533534.3, align 8, !alias.scope !85, !noalias !88
  %scevgep540.3 = getelementptr i8, i8* %scevgep539.3, i64 %288
  %scevgep540541.3 = bitcast i8* %scevgep540.3 to double*
  %_p_scalar_542.3 = load double, double* %scevgep540541.3, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header523.3

polly.loop_header523.3:                           ; preds = %polly.loop_header523.3, %polly.loop_header517.3
  %polly.indvar526.3 = phi i64 [ 0, %polly.loop_header517.3 ], [ %polly.indvar_next527.3, %polly.loop_header523.3 ]
  %290 = add nuw nsw i64 %polly.indvar526.3, 60
  %291 = mul nuw nsw i64 %290, 480
  %292 = add nuw nsw i64 %291, %287
  %scevgep529.3 = getelementptr i8, i8* %call1, i64 %292
  %scevgep529530.3 = bitcast i8* %scevgep529.3 to double*
  %_p_scalar_531.3 = load double, double* %scevgep529530.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_535.3, %_p_scalar_531.3
  %scevgep536.3 = getelementptr i8, i8* %call2, i64 %292
  %scevgep536537.3 = bitcast i8* %scevgep536.3 to double*
  %_p_scalar_538.3 = load double, double* %scevgep536537.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_542.3, %_p_scalar_538.3
  %293 = shl i64 %290, 3
  %scevgep544.3 = getelementptr i8, i8* %scevgep543.3, i64 %293
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_546.3
  store double %p_add42.i.3, double* %scevgep544545.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527.3 = add nuw nsw i64 %polly.indvar526.3, 1
  %exitcond782.3.not = icmp eq i64 %polly.indvar526.3, %smin781.3
  br i1 %exitcond782.3.not, label %polly.loop_exit525.3, label %polly.loop_header523.3

polly.loop_exit525.3:                             ; preds = %polly.loop_header523.3
  %polly.indvar_next521.3 = add nuw nsw i64 %polly.indvar520.3, 1
  %indvars.iv.next780.3 = add nuw nsw i64 %indvars.iv779.3, 1
  %exitcond785.3.not = icmp eq i64 %indvars.iv.next780.3, 20
  br i1 %exitcond785.3.not, label %polly.loop_exit519.3, label %polly.loop_header517.3

polly.loop_exit519.3:                             ; preds = %polly.loop_exit525.3
  %polly.indvar_next515.3 = add nuw nsw i64 %polly.indvar514.3, 1
  %exitcond786.3.not = icmp eq i64 %polly.indvar_next515.3, 32
  br i1 %exitcond786.3.not, label %polly.loop_header511.1899, label %polly.loop_header511.3

polly.loop_header511.1899:                        ; preds = %polly.loop_exit519.3, %polly.loop_exit519.1937
  %polly.indvar514.1898 = phi i64 [ %polly.indvar_next515.1935, %polly.loop_exit519.1937 ], [ 0, %polly.loop_exit519.3 ]
  %294 = shl i64 %polly.indvar514.1898, 3
  %295 = add i64 %294, 256
  %scevgep532.1903 = getelementptr i8, i8* %call2, i64 %295
  %scevgep539.1904 = getelementptr i8, i8* %call1, i64 %295
  br label %polly.loop_header517.1912

polly.loop_header517.1912:                        ; preds = %polly.loop_exit525.1934, %polly.loop_header511.1899
  %indvars.iv779.1900 = phi i64 [ %indvars.iv.next780.1932, %polly.loop_exit525.1934 ], [ 0, %polly.loop_header511.1899 ]
  %polly.indvar520.1901 = phi i64 [ %polly.indvar_next521.1931, %polly.loop_exit525.1934 ], [ 0, %polly.loop_header511.1899 ]
  %smin781.1902 = call i64 @llvm.smin.i64(i64 %indvars.iv779.1900, i64 19)
  %296 = mul nuw nsw i64 %polly.indvar520.1901, 480
  %297 = mul nuw nsw i64 %polly.indvar520.1901, 640
  %scevgep543.1905 = getelementptr i8, i8* %call, i64 %297
  %scevgep533.1906 = getelementptr i8, i8* %scevgep532.1903, i64 %296
  %scevgep533534.1907 = bitcast i8* %scevgep533.1906 to double*
  %_p_scalar_535.1908 = load double, double* %scevgep533534.1907, align 8, !alias.scope !85, !noalias !88
  %scevgep540.1909 = getelementptr i8, i8* %scevgep539.1904, i64 %296
  %scevgep540541.1910 = bitcast i8* %scevgep540.1909 to double*
  %_p_scalar_542.1911 = load double, double* %scevgep540541.1910, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header523.1930

polly.loop_header523.1930:                        ; preds = %polly.loop_header523.1930, %polly.loop_header517.1912
  %polly.indvar526.1913 = phi i64 [ 0, %polly.loop_header517.1912 ], [ %polly.indvar_next527.1928, %polly.loop_header523.1930 ]
  %298 = mul nuw nsw i64 %polly.indvar526.1913, 480
  %299 = add nuw nsw i64 %298, %295
  %scevgep529.1914 = getelementptr i8, i8* %call1, i64 %299
  %scevgep529530.1915 = bitcast i8* %scevgep529.1914 to double*
  %_p_scalar_531.1916 = load double, double* %scevgep529530.1915, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1917 = fmul fast double %_p_scalar_535.1908, %_p_scalar_531.1916
  %scevgep536.1918 = getelementptr i8, i8* %call2, i64 %299
  %scevgep536537.1919 = bitcast i8* %scevgep536.1918 to double*
  %_p_scalar_538.1920 = load double, double* %scevgep536537.1919, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1921 = fmul fast double %_p_scalar_542.1911, %_p_scalar_538.1920
  %300 = shl i64 %polly.indvar526.1913, 3
  %scevgep544.1922 = getelementptr i8, i8* %scevgep543.1905, i64 %300
  %scevgep544545.1923 = bitcast i8* %scevgep544.1922 to double*
  %_p_scalar_546.1924 = load double, double* %scevgep544545.1923, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1925 = fadd fast double %p_mul37.i.1921, %p_mul27.i.1917
  %p_reass.mul.i.1926 = fmul fast double %p_reass.add.i.1925, 1.500000e+00
  %p_add42.i.1927 = fadd fast double %p_reass.mul.i.1926, %_p_scalar_546.1924
  store double %p_add42.i.1927, double* %scevgep544545.1923, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527.1928 = add nuw nsw i64 %polly.indvar526.1913, 1
  %exitcond782.1929.not = icmp eq i64 %polly.indvar526.1913, %smin781.1902
  br i1 %exitcond782.1929.not, label %polly.loop_exit525.1934, label %polly.loop_header523.1930

polly.loop_exit525.1934:                          ; preds = %polly.loop_header523.1930
  %polly.indvar_next521.1931 = add nuw nsw i64 %polly.indvar520.1901, 1
  %indvars.iv.next780.1932 = add nuw nsw i64 %indvars.iv779.1900, 1
  %exitcond785.1933.not = icmp eq i64 %indvars.iv.next780.1932, 80
  br i1 %exitcond785.1933.not, label %polly.loop_exit519.1937, label %polly.loop_header517.1912

polly.loop_exit519.1937:                          ; preds = %polly.loop_exit525.1934
  %polly.indvar_next515.1935 = add nuw nsw i64 %polly.indvar514.1898, 1
  %exitcond786.1936.not = icmp eq i64 %polly.indvar_next515.1935, 28
  br i1 %exitcond786.1936.not, label %polly.loop_header511.1.1, label %polly.loop_header511.1899

polly.loop_header511.1.1:                         ; preds = %polly.loop_exit519.1937, %polly.loop_exit519.1.1
  %polly.indvar514.1.1 = phi i64 [ %polly.indvar_next515.1.1, %polly.loop_exit519.1.1 ], [ 0, %polly.loop_exit519.1937 ]
  %301 = shl i64 %polly.indvar514.1.1, 3
  %302 = add i64 %301, 256
  %scevgep532.1.1 = getelementptr i8, i8* %call2, i64 %302
  %scevgep539.1.1 = getelementptr i8, i8* %call1, i64 %302
  br label %polly.loop_header517.1.1

polly.loop_header517.1.1:                         ; preds = %polly.loop_exit525.1.1, %polly.loop_header511.1.1
  %indvars.iv779.1.1 = phi i64 [ %indvars.iv.next780.1.1, %polly.loop_exit525.1.1 ], [ 0, %polly.loop_header511.1.1 ]
  %polly.indvar520.1.1 = phi i64 [ %polly.indvar_next521.1.1, %polly.loop_exit525.1.1 ], [ 20, %polly.loop_header511.1.1 ]
  %smin781.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv779.1.1, i64 19)
  %303 = mul nuw nsw i64 %polly.indvar520.1.1, 480
  %304 = mul nuw nsw i64 %polly.indvar520.1.1, 640
  %scevgep543.1.1 = getelementptr i8, i8* %call, i64 %304
  %scevgep533.1.1 = getelementptr i8, i8* %scevgep532.1.1, i64 %303
  %scevgep533534.1.1 = bitcast i8* %scevgep533.1.1 to double*
  %_p_scalar_535.1.1 = load double, double* %scevgep533534.1.1, align 8, !alias.scope !85, !noalias !88
  %scevgep540.1.1 = getelementptr i8, i8* %scevgep539.1.1, i64 %303
  %scevgep540541.1.1 = bitcast i8* %scevgep540.1.1 to double*
  %_p_scalar_542.1.1 = load double, double* %scevgep540541.1.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header523.1.1

polly.loop_header523.1.1:                         ; preds = %polly.loop_header523.1.1, %polly.loop_header517.1.1
  %polly.indvar526.1.1 = phi i64 [ 0, %polly.loop_header517.1.1 ], [ %polly.indvar_next527.1.1, %polly.loop_header523.1.1 ]
  %305 = add nuw nsw i64 %polly.indvar526.1.1, 20
  %306 = mul nuw nsw i64 %305, 480
  %307 = add nuw nsw i64 %306, %302
  %scevgep529.1.1 = getelementptr i8, i8* %call1, i64 %307
  %scevgep529530.1.1 = bitcast i8* %scevgep529.1.1 to double*
  %_p_scalar_531.1.1 = load double, double* %scevgep529530.1.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1.1 = fmul fast double %_p_scalar_535.1.1, %_p_scalar_531.1.1
  %scevgep536.1.1 = getelementptr i8, i8* %call2, i64 %307
  %scevgep536537.1.1 = bitcast i8* %scevgep536.1.1 to double*
  %_p_scalar_538.1.1 = load double, double* %scevgep536537.1.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1.1 = fmul fast double %_p_scalar_542.1.1, %_p_scalar_538.1.1
  %308 = shl i64 %305, 3
  %scevgep544.1.1 = getelementptr i8, i8* %scevgep543.1.1, i64 %308
  %scevgep544545.1.1 = bitcast i8* %scevgep544.1.1 to double*
  %_p_scalar_546.1.1 = load double, double* %scevgep544545.1.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1.1 = fadd fast double %p_mul37.i.1.1, %p_mul27.i.1.1
  %p_reass.mul.i.1.1 = fmul fast double %p_reass.add.i.1.1, 1.500000e+00
  %p_add42.i.1.1 = fadd fast double %p_reass.mul.i.1.1, %_p_scalar_546.1.1
  store double %p_add42.i.1.1, double* %scevgep544545.1.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527.1.1 = add nuw nsw i64 %polly.indvar526.1.1, 1
  %exitcond782.1.1.not = icmp eq i64 %polly.indvar526.1.1, %smin781.1.1
  br i1 %exitcond782.1.1.not, label %polly.loop_exit525.1.1, label %polly.loop_header523.1.1

polly.loop_exit525.1.1:                           ; preds = %polly.loop_header523.1.1
  %polly.indvar_next521.1.1 = add nuw nsw i64 %polly.indvar520.1.1, 1
  %indvars.iv.next780.1.1 = add nuw nsw i64 %indvars.iv779.1.1, 1
  %exitcond785.1.1.not = icmp eq i64 %indvars.iv.next780.1.1, 60
  br i1 %exitcond785.1.1.not, label %polly.loop_exit519.1.1, label %polly.loop_header517.1.1

polly.loop_exit519.1.1:                           ; preds = %polly.loop_exit525.1.1
  %polly.indvar_next515.1.1 = add nuw nsw i64 %polly.indvar514.1.1, 1
  %exitcond786.1.1.not = icmp eq i64 %polly.indvar_next515.1.1, 28
  br i1 %exitcond786.1.1.not, label %polly.loop_header511.2.1, label %polly.loop_header511.1.1

polly.loop_header511.2.1:                         ; preds = %polly.loop_exit519.1.1, %polly.loop_exit519.2.1
  %polly.indvar514.2.1 = phi i64 [ %polly.indvar_next515.2.1, %polly.loop_exit519.2.1 ], [ 0, %polly.loop_exit519.1.1 ]
  %309 = shl i64 %polly.indvar514.2.1, 3
  %310 = add i64 %309, 256
  %scevgep532.2.1 = getelementptr i8, i8* %call2, i64 %310
  %scevgep539.2.1 = getelementptr i8, i8* %call1, i64 %310
  br label %polly.loop_header517.2.1

polly.loop_header517.2.1:                         ; preds = %polly.loop_exit525.2.1, %polly.loop_header511.2.1
  %indvars.iv779.2.1 = phi i64 [ %indvars.iv.next780.2.1, %polly.loop_exit525.2.1 ], [ 0, %polly.loop_header511.2.1 ]
  %polly.indvar520.2.1 = phi i64 [ %polly.indvar_next521.2.1, %polly.loop_exit525.2.1 ], [ 40, %polly.loop_header511.2.1 ]
  %smin781.2.1 = call i64 @llvm.smin.i64(i64 %indvars.iv779.2.1, i64 19)
  %311 = mul nuw nsw i64 %polly.indvar520.2.1, 480
  %312 = mul nuw nsw i64 %polly.indvar520.2.1, 640
  %scevgep543.2.1 = getelementptr i8, i8* %call, i64 %312
  %scevgep533.2.1 = getelementptr i8, i8* %scevgep532.2.1, i64 %311
  %scevgep533534.2.1 = bitcast i8* %scevgep533.2.1 to double*
  %_p_scalar_535.2.1 = load double, double* %scevgep533534.2.1, align 8, !alias.scope !85, !noalias !88
  %scevgep540.2.1 = getelementptr i8, i8* %scevgep539.2.1, i64 %311
  %scevgep540541.2.1 = bitcast i8* %scevgep540.2.1 to double*
  %_p_scalar_542.2.1 = load double, double* %scevgep540541.2.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header523.2.1

polly.loop_header523.2.1:                         ; preds = %polly.loop_header523.2.1, %polly.loop_header517.2.1
  %polly.indvar526.2.1 = phi i64 [ 0, %polly.loop_header517.2.1 ], [ %polly.indvar_next527.2.1, %polly.loop_header523.2.1 ]
  %313 = add nuw nsw i64 %polly.indvar526.2.1, 40
  %314 = mul nuw nsw i64 %313, 480
  %315 = add nuw nsw i64 %314, %310
  %scevgep529.2.1 = getelementptr i8, i8* %call1, i64 %315
  %scevgep529530.2.1 = bitcast i8* %scevgep529.2.1 to double*
  %_p_scalar_531.2.1 = load double, double* %scevgep529530.2.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2.1 = fmul fast double %_p_scalar_535.2.1, %_p_scalar_531.2.1
  %scevgep536.2.1 = getelementptr i8, i8* %call2, i64 %315
  %scevgep536537.2.1 = bitcast i8* %scevgep536.2.1 to double*
  %_p_scalar_538.2.1 = load double, double* %scevgep536537.2.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2.1 = fmul fast double %_p_scalar_542.2.1, %_p_scalar_538.2.1
  %316 = shl i64 %313, 3
  %scevgep544.2.1 = getelementptr i8, i8* %scevgep543.2.1, i64 %316
  %scevgep544545.2.1 = bitcast i8* %scevgep544.2.1 to double*
  %_p_scalar_546.2.1 = load double, double* %scevgep544545.2.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2.1 = fadd fast double %p_mul37.i.2.1, %p_mul27.i.2.1
  %p_reass.mul.i.2.1 = fmul fast double %p_reass.add.i.2.1, 1.500000e+00
  %p_add42.i.2.1 = fadd fast double %p_reass.mul.i.2.1, %_p_scalar_546.2.1
  store double %p_add42.i.2.1, double* %scevgep544545.2.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527.2.1 = add nuw nsw i64 %polly.indvar526.2.1, 1
  %exitcond782.2.1.not = icmp eq i64 %polly.indvar526.2.1, %smin781.2.1
  br i1 %exitcond782.2.1.not, label %polly.loop_exit525.2.1, label %polly.loop_header523.2.1

polly.loop_exit525.2.1:                           ; preds = %polly.loop_header523.2.1
  %polly.indvar_next521.2.1 = add nuw nsw i64 %polly.indvar520.2.1, 1
  %indvars.iv.next780.2.1 = add nuw nsw i64 %indvars.iv779.2.1, 1
  %exitcond785.2.1.not = icmp eq i64 %indvars.iv.next780.2.1, 40
  br i1 %exitcond785.2.1.not, label %polly.loop_exit519.2.1, label %polly.loop_header517.2.1

polly.loop_exit519.2.1:                           ; preds = %polly.loop_exit525.2.1
  %polly.indvar_next515.2.1 = add nuw nsw i64 %polly.indvar514.2.1, 1
  %exitcond786.2.1.not = icmp eq i64 %polly.indvar_next515.2.1, 28
  br i1 %exitcond786.2.1.not, label %polly.loop_header511.3.1, label %polly.loop_header511.2.1

polly.loop_header511.3.1:                         ; preds = %polly.loop_exit519.2.1, %polly.loop_exit519.3.1
  %polly.indvar514.3.1 = phi i64 [ %polly.indvar_next515.3.1, %polly.loop_exit519.3.1 ], [ 0, %polly.loop_exit519.2.1 ]
  %317 = shl i64 %polly.indvar514.3.1, 3
  %318 = add i64 %317, 256
  %scevgep532.3.1 = getelementptr i8, i8* %call2, i64 %318
  %scevgep539.3.1 = getelementptr i8, i8* %call1, i64 %318
  br label %polly.loop_header517.3.1

polly.loop_header517.3.1:                         ; preds = %polly.loop_exit525.3.1, %polly.loop_header511.3.1
  %indvars.iv779.3.1 = phi i64 [ %indvars.iv.next780.3.1, %polly.loop_exit525.3.1 ], [ 0, %polly.loop_header511.3.1 ]
  %polly.indvar520.3.1 = phi i64 [ %polly.indvar_next521.3.1, %polly.loop_exit525.3.1 ], [ 60, %polly.loop_header511.3.1 ]
  %smin781.3.1 = call i64 @llvm.smin.i64(i64 %indvars.iv779.3.1, i64 19)
  %319 = mul nuw nsw i64 %polly.indvar520.3.1, 480
  %320 = mul nuw nsw i64 %polly.indvar520.3.1, 640
  %scevgep543.3.1 = getelementptr i8, i8* %call, i64 %320
  %scevgep533.3.1 = getelementptr i8, i8* %scevgep532.3.1, i64 %319
  %scevgep533534.3.1 = bitcast i8* %scevgep533.3.1 to double*
  %_p_scalar_535.3.1 = load double, double* %scevgep533534.3.1, align 8, !alias.scope !85, !noalias !88
  %scevgep540.3.1 = getelementptr i8, i8* %scevgep539.3.1, i64 %319
  %scevgep540541.3.1 = bitcast i8* %scevgep540.3.1 to double*
  %_p_scalar_542.3.1 = load double, double* %scevgep540541.3.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header523.3.1

polly.loop_header523.3.1:                         ; preds = %polly.loop_header523.3.1, %polly.loop_header517.3.1
  %polly.indvar526.3.1 = phi i64 [ 0, %polly.loop_header517.3.1 ], [ %polly.indvar_next527.3.1, %polly.loop_header523.3.1 ]
  %321 = add nuw nsw i64 %polly.indvar526.3.1, 60
  %322 = mul nuw nsw i64 %321, 480
  %323 = add nuw nsw i64 %322, %318
  %scevgep529.3.1 = getelementptr i8, i8* %call1, i64 %323
  %scevgep529530.3.1 = bitcast i8* %scevgep529.3.1 to double*
  %_p_scalar_531.3.1 = load double, double* %scevgep529530.3.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3.1 = fmul fast double %_p_scalar_535.3.1, %_p_scalar_531.3.1
  %scevgep536.3.1 = getelementptr i8, i8* %call2, i64 %323
  %scevgep536537.3.1 = bitcast i8* %scevgep536.3.1 to double*
  %_p_scalar_538.3.1 = load double, double* %scevgep536537.3.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3.1 = fmul fast double %_p_scalar_542.3.1, %_p_scalar_538.3.1
  %324 = shl i64 %321, 3
  %scevgep544.3.1 = getelementptr i8, i8* %scevgep543.3.1, i64 %324
  %scevgep544545.3.1 = bitcast i8* %scevgep544.3.1 to double*
  %_p_scalar_546.3.1 = load double, double* %scevgep544545.3.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3.1 = fadd fast double %p_mul37.i.3.1, %p_mul27.i.3.1
  %p_reass.mul.i.3.1 = fmul fast double %p_reass.add.i.3.1, 1.500000e+00
  %p_add42.i.3.1 = fadd fast double %p_reass.mul.i.3.1, %_p_scalar_546.3.1
  store double %p_add42.i.3.1, double* %scevgep544545.3.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next527.3.1 = add nuw nsw i64 %polly.indvar526.3.1, 1
  %exitcond782.3.1.not = icmp eq i64 %polly.indvar526.3.1, %smin781.3.1
  br i1 %exitcond782.3.1.not, label %polly.loop_exit525.3.1, label %polly.loop_header523.3.1

polly.loop_exit525.3.1:                           ; preds = %polly.loop_header523.3.1
  %polly.indvar_next521.3.1 = add nuw nsw i64 %polly.indvar520.3.1, 1
  %indvars.iv.next780.3.1 = add nuw nsw i64 %indvars.iv779.3.1, 1
  %exitcond785.3.1.not = icmp eq i64 %indvars.iv.next780.3.1, 20
  br i1 %exitcond785.3.1.not, label %polly.loop_exit519.3.1, label %polly.loop_header517.3.1

polly.loop_exit519.3.1:                           ; preds = %polly.loop_exit525.3.1
  %polly.indvar_next515.3.1 = add nuw nsw i64 %polly.indvar514.3.1, 1
  %exitcond786.3.1.not = icmp eq i64 %polly.indvar_next515.3.1, 28
  br i1 %exitcond786.3.1.not, label %kernel_syr2k.exit, label %polly.loop_header511.3.1

polly.loop_header738.1:                           ; preds = %polly.loop_exit746, %polly.loop_exit746.1
  %polly.indvar741.1 = phi i64 [ %polly.indvar_next742.1, %polly.loop_exit746.1 ], [ 0, %polly.loop_exit746 ]
  %325 = mul nuw nsw i64 %polly.indvar741.1, 480
  %326 = trunc i64 %polly.indvar741.1 to i32
  %broadcast.splatinsert1235 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1236 = shufflevector <4 x i32> %broadcast.splatinsert1235, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %polly.loop_header738.1
  %index1229 = phi i64 [ 0, %polly.loop_header738.1 ], [ %index.next1230, %vector.body1227 ]
  %vec.ind1233 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1 ], [ %vec.ind.next1234, %vector.body1227 ]
  %327 = add nuw nsw <4 x i64> %vec.ind1233, <i64 32, i64 32, i64 32, i64 32>
  %328 = trunc <4 x i64> %327 to <4 x i32>
  %329 = mul <4 x i32> %broadcast.splat1236, %328
  %330 = add <4 x i32> %329, <i32 1, i32 1, i32 1, i32 1>
  %331 = urem <4 x i32> %330, <i32 80, i32 80, i32 80, i32 80>
  %332 = sitofp <4 x i32> %331 to <4 x double>
  %333 = fmul fast <4 x double> %332, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %334 = extractelement <4 x i64> %327, i32 0
  %335 = shl i64 %334, 3
  %336 = add i64 %335, %325
  %337 = getelementptr i8, i8* %call1, i64 %336
  %338 = bitcast i8* %337 to <4 x double>*
  store <4 x double> %333, <4 x double>* %338, align 8, !alias.scope !93, !noalias !98
  %index.next1230 = add i64 %index1229, 4
  %vec.ind.next1234 = add <4 x i64> %vec.ind1233, <i64 4, i64 4, i64 4, i64 4>
  %339 = icmp eq i64 %index.next1230, 28
  br i1 %339, label %polly.loop_exit746.1, label %vector.body1227, !llvm.loop !100

polly.loop_exit746.1:                             ; preds = %vector.body1227
  %polly.indvar_next742.1 = add nuw nsw i64 %polly.indvar741.1, 1
  %exitcond794.1.not = icmp eq i64 %polly.indvar_next742.1, 32
  br i1 %exitcond794.1.not, label %polly.loop_header738.1940, label %polly.loop_header738.1

polly.loop_header738.1940:                        ; preds = %polly.loop_exit746.1, %polly.loop_exit746.1951
  %polly.indvar741.1939 = phi i64 [ %polly.indvar_next742.1949, %polly.loop_exit746.1951 ], [ 0, %polly.loop_exit746.1 ]
  %340 = add nuw nsw i64 %polly.indvar741.1939, 32
  %341 = mul nuw nsw i64 %340, 480
  %342 = trunc i64 %340 to i32
  %broadcast.splatinsert1249 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1250 = shufflevector <4 x i32> %broadcast.splatinsert1249, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %polly.loop_header738.1940
  %index1241 = phi i64 [ 0, %polly.loop_header738.1940 ], [ %index.next1242, %vector.body1239 ]
  %vec.ind1247 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.1940 ], [ %vec.ind.next1248, %vector.body1239 ]
  %343 = mul <4 x i32> %vec.ind1247, %broadcast.splat1250
  %344 = add <4 x i32> %343, <i32 1, i32 1, i32 1, i32 1>
  %345 = urem <4 x i32> %344, <i32 80, i32 80, i32 80, i32 80>
  %346 = sitofp <4 x i32> %345 to <4 x double>
  %347 = fmul fast <4 x double> %346, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %348 = shl i64 %index1241, 3
  %349 = add i64 %348, %341
  %350 = getelementptr i8, i8* %call1, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %347, <4 x double>* %351, align 8, !alias.scope !93, !noalias !98
  %index.next1242 = add i64 %index1241, 4
  %vec.ind.next1248 = add <4 x i32> %vec.ind1247, <i32 4, i32 4, i32 4, i32 4>
  %352 = icmp eq i64 %index.next1242, 32
  br i1 %352, label %polly.loop_exit746.1951, label %vector.body1239, !llvm.loop !101

polly.loop_exit746.1951:                          ; preds = %vector.body1239
  %polly.indvar_next742.1949 = add nuw nsw i64 %polly.indvar741.1939, 1
  %exitcond794.1950.not = icmp eq i64 %polly.indvar_next742.1949, 32
  br i1 %exitcond794.1950.not, label %polly.loop_header738.1.1, label %polly.loop_header738.1940

polly.loop_header738.1.1:                         ; preds = %polly.loop_exit746.1951, %polly.loop_exit746.1.1
  %polly.indvar741.1.1 = phi i64 [ %polly.indvar_next742.1.1, %polly.loop_exit746.1.1 ], [ 0, %polly.loop_exit746.1951 ]
  %353 = add nuw nsw i64 %polly.indvar741.1.1, 32
  %354 = mul nuw nsw i64 %353, 480
  %355 = trunc i64 %353 to i32
  %broadcast.splatinsert1261 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1262 = shufflevector <4 x i32> %broadcast.splatinsert1261, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %polly.loop_header738.1.1
  %index1255 = phi i64 [ 0, %polly.loop_header738.1.1 ], [ %index.next1256, %vector.body1253 ]
  %vec.ind1259 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.1 ], [ %vec.ind.next1260, %vector.body1253 ]
  %356 = add nuw nsw <4 x i64> %vec.ind1259, <i64 32, i64 32, i64 32, i64 32>
  %357 = trunc <4 x i64> %356 to <4 x i32>
  %358 = mul <4 x i32> %broadcast.splat1262, %357
  %359 = add <4 x i32> %358, <i32 1, i32 1, i32 1, i32 1>
  %360 = urem <4 x i32> %359, <i32 80, i32 80, i32 80, i32 80>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %363 = extractelement <4 x i64> %356, i32 0
  %364 = shl i64 %363, 3
  %365 = add i64 %364, %354
  %366 = getelementptr i8, i8* %call1, i64 %365
  %367 = bitcast i8* %366 to <4 x double>*
  store <4 x double> %362, <4 x double>* %367, align 8, !alias.scope !93, !noalias !98
  %index.next1256 = add i64 %index1255, 4
  %vec.ind.next1260 = add <4 x i64> %vec.ind1259, <i64 4, i64 4, i64 4, i64 4>
  %368 = icmp eq i64 %index.next1256, 28
  br i1 %368, label %polly.loop_exit746.1.1, label %vector.body1253, !llvm.loop !102

polly.loop_exit746.1.1:                           ; preds = %vector.body1253
  %polly.indvar_next742.1.1 = add nuw nsw i64 %polly.indvar741.1.1, 1
  %exitcond794.1.1.not = icmp eq i64 %polly.indvar_next742.1.1, 32
  br i1 %exitcond794.1.1.not, label %polly.loop_header738.2, label %polly.loop_header738.1.1

polly.loop_header738.2:                           ; preds = %polly.loop_exit746.1.1, %polly.loop_exit746.2
  %polly.indvar741.2 = phi i64 [ %polly.indvar_next742.2, %polly.loop_exit746.2 ], [ 0, %polly.loop_exit746.1.1 ]
  %369 = add nuw nsw i64 %polly.indvar741.2, 64
  %370 = mul nuw nsw i64 %369, 480
  %371 = trunc i64 %369 to i32
  %broadcast.splatinsert1275 = insertelement <4 x i32> poison, i32 %371, i32 0
  %broadcast.splat1276 = shufflevector <4 x i32> %broadcast.splatinsert1275, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1265

vector.body1265:                                  ; preds = %vector.body1265, %polly.loop_header738.2
  %index1267 = phi i64 [ 0, %polly.loop_header738.2 ], [ %index.next1268, %vector.body1265 ]
  %vec.ind1273 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.2 ], [ %vec.ind.next1274, %vector.body1265 ]
  %372 = mul <4 x i32> %vec.ind1273, %broadcast.splat1276
  %373 = add <4 x i32> %372, <i32 1, i32 1, i32 1, i32 1>
  %374 = urem <4 x i32> %373, <i32 80, i32 80, i32 80, i32 80>
  %375 = sitofp <4 x i32> %374 to <4 x double>
  %376 = fmul fast <4 x double> %375, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %377 = shl i64 %index1267, 3
  %378 = add i64 %377, %370
  %379 = getelementptr i8, i8* %call1, i64 %378
  %380 = bitcast i8* %379 to <4 x double>*
  store <4 x double> %376, <4 x double>* %380, align 8, !alias.scope !93, !noalias !98
  %index.next1268 = add i64 %index1267, 4
  %vec.ind.next1274 = add <4 x i32> %vec.ind1273, <i32 4, i32 4, i32 4, i32 4>
  %381 = icmp eq i64 %index.next1268, 32
  br i1 %381, label %polly.loop_exit746.2, label %vector.body1265, !llvm.loop !103

polly.loop_exit746.2:                             ; preds = %vector.body1265
  %polly.indvar_next742.2 = add nuw nsw i64 %polly.indvar741.2, 1
  %exitcond794.2.not = icmp eq i64 %polly.indvar_next742.2, 16
  br i1 %exitcond794.2.not, label %polly.loop_header738.1.2, label %polly.loop_header738.2

polly.loop_header738.1.2:                         ; preds = %polly.loop_exit746.2, %polly.loop_exit746.1.2
  %polly.indvar741.1.2 = phi i64 [ %polly.indvar_next742.1.2, %polly.loop_exit746.1.2 ], [ 0, %polly.loop_exit746.2 ]
  %382 = add nuw nsw i64 %polly.indvar741.1.2, 64
  %383 = mul nuw nsw i64 %382, 480
  %384 = trunc i64 %382 to i32
  %broadcast.splatinsert1287 = insertelement <4 x i32> poison, i32 %384, i32 0
  %broadcast.splat1288 = shufflevector <4 x i32> %broadcast.splatinsert1287, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1279

vector.body1279:                                  ; preds = %vector.body1279, %polly.loop_header738.1.2
  %index1281 = phi i64 [ 0, %polly.loop_header738.1.2 ], [ %index.next1282, %vector.body1279 ]
  %vec.ind1285 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.2 ], [ %vec.ind.next1286, %vector.body1279 ]
  %385 = add nuw nsw <4 x i64> %vec.ind1285, <i64 32, i64 32, i64 32, i64 32>
  %386 = trunc <4 x i64> %385 to <4 x i32>
  %387 = mul <4 x i32> %broadcast.splat1288, %386
  %388 = add <4 x i32> %387, <i32 1, i32 1, i32 1, i32 1>
  %389 = urem <4 x i32> %388, <i32 80, i32 80, i32 80, i32 80>
  %390 = sitofp <4 x i32> %389 to <4 x double>
  %391 = fmul fast <4 x double> %390, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %392 = extractelement <4 x i64> %385, i32 0
  %393 = shl i64 %392, 3
  %394 = add i64 %393, %383
  %395 = getelementptr i8, i8* %call1, i64 %394
  %396 = bitcast i8* %395 to <4 x double>*
  store <4 x double> %391, <4 x double>* %396, align 8, !alias.scope !93, !noalias !98
  %index.next1282 = add i64 %index1281, 4
  %vec.ind.next1286 = add <4 x i64> %vec.ind1285, <i64 4, i64 4, i64 4, i64 4>
  %397 = icmp eq i64 %index.next1282, 28
  br i1 %397, label %polly.loop_exit746.1.2, label %vector.body1279, !llvm.loop !104

polly.loop_exit746.1.2:                           ; preds = %vector.body1279
  %polly.indvar_next742.1.2 = add nuw nsw i64 %polly.indvar741.1.2, 1
  %exitcond794.1.2.not = icmp eq i64 %polly.indvar_next742.1.2, 16
  br i1 %exitcond794.1.2.not, label %init_array.exit, label %polly.loop_header738.1.2

polly.loop_header712.1:                           ; preds = %polly.loop_exit720, %polly.loop_exit720.1
  %polly.indvar715.1 = phi i64 [ %polly.indvar_next716.1, %polly.loop_exit720.1 ], [ 0, %polly.loop_exit720 ]
  %398 = mul nuw nsw i64 %polly.indvar715.1, 480
  %399 = trunc i64 %polly.indvar715.1 to i32
  %broadcast.splatinsert1157 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1158 = shufflevector <4 x i32> %broadcast.splatinsert1157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1149

vector.body1149:                                  ; preds = %vector.body1149, %polly.loop_header712.1
  %index1151 = phi i64 [ 0, %polly.loop_header712.1 ], [ %index.next1152, %vector.body1149 ]
  %vec.ind1155 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1 ], [ %vec.ind.next1156, %vector.body1149 ]
  %400 = add nuw nsw <4 x i64> %vec.ind1155, <i64 32, i64 32, i64 32, i64 32>
  %401 = trunc <4 x i64> %400 to <4 x i32>
  %402 = mul <4 x i32> %broadcast.splat1158, %401
  %403 = add <4 x i32> %402, <i32 2, i32 2, i32 2, i32 2>
  %404 = urem <4 x i32> %403, <i32 60, i32 60, i32 60, i32 60>
  %405 = sitofp <4 x i32> %404 to <4 x double>
  %406 = fmul fast <4 x double> %405, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %407 = extractelement <4 x i64> %400, i32 0
  %408 = shl i64 %407, 3
  %409 = add i64 %408, %398
  %410 = getelementptr i8, i8* %call2, i64 %409
  %411 = bitcast i8* %410 to <4 x double>*
  store <4 x double> %406, <4 x double>* %411, align 8, !alias.scope !94, !noalias !96
  %index.next1152 = add i64 %index1151, 4
  %vec.ind.next1156 = add <4 x i64> %vec.ind1155, <i64 4, i64 4, i64 4, i64 4>
  %412 = icmp eq i64 %index.next1152, 28
  br i1 %412, label %polly.loop_exit720.1, label %vector.body1149, !llvm.loop !105

polly.loop_exit720.1:                             ; preds = %vector.body1149
  %polly.indvar_next716.1 = add nuw nsw i64 %polly.indvar715.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar_next716.1, 32
  br i1 %exitcond800.1.not, label %polly.loop_header712.1954, label %polly.loop_header712.1

polly.loop_header712.1954:                        ; preds = %polly.loop_exit720.1, %polly.loop_exit720.1965
  %polly.indvar715.1953 = phi i64 [ %polly.indvar_next716.1963, %polly.loop_exit720.1965 ], [ 0, %polly.loop_exit720.1 ]
  %413 = add nuw nsw i64 %polly.indvar715.1953, 32
  %414 = mul nuw nsw i64 %413, 480
  %415 = trunc i64 %413 to i32
  %broadcast.splatinsert1171 = insertelement <4 x i32> poison, i32 %415, i32 0
  %broadcast.splat1172 = shufflevector <4 x i32> %broadcast.splatinsert1171, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %polly.loop_header712.1954
  %index1163 = phi i64 [ 0, %polly.loop_header712.1954 ], [ %index.next1164, %vector.body1161 ]
  %vec.ind1169 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.1954 ], [ %vec.ind.next1170, %vector.body1161 ]
  %416 = mul <4 x i32> %vec.ind1169, %broadcast.splat1172
  %417 = add <4 x i32> %416, <i32 2, i32 2, i32 2, i32 2>
  %418 = urem <4 x i32> %417, <i32 60, i32 60, i32 60, i32 60>
  %419 = sitofp <4 x i32> %418 to <4 x double>
  %420 = fmul fast <4 x double> %419, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %421 = shl i64 %index1163, 3
  %422 = add i64 %421, %414
  %423 = getelementptr i8, i8* %call2, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %420, <4 x double>* %424, align 8, !alias.scope !94, !noalias !96
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1170 = add <4 x i32> %vec.ind1169, <i32 4, i32 4, i32 4, i32 4>
  %425 = icmp eq i64 %index.next1164, 32
  br i1 %425, label %polly.loop_exit720.1965, label %vector.body1161, !llvm.loop !106

polly.loop_exit720.1965:                          ; preds = %vector.body1161
  %polly.indvar_next716.1963 = add nuw nsw i64 %polly.indvar715.1953, 1
  %exitcond800.1964.not = icmp eq i64 %polly.indvar_next716.1963, 32
  br i1 %exitcond800.1964.not, label %polly.loop_header712.1.1, label %polly.loop_header712.1954

polly.loop_header712.1.1:                         ; preds = %polly.loop_exit720.1965, %polly.loop_exit720.1.1
  %polly.indvar715.1.1 = phi i64 [ %polly.indvar_next716.1.1, %polly.loop_exit720.1.1 ], [ 0, %polly.loop_exit720.1965 ]
  %426 = add nuw nsw i64 %polly.indvar715.1.1, 32
  %427 = mul nuw nsw i64 %426, 480
  %428 = trunc i64 %426 to i32
  %broadcast.splatinsert1183 = insertelement <4 x i32> poison, i32 %428, i32 0
  %broadcast.splat1184 = shufflevector <4 x i32> %broadcast.splatinsert1183, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %polly.loop_header712.1.1
  %index1177 = phi i64 [ 0, %polly.loop_header712.1.1 ], [ %index.next1178, %vector.body1175 ]
  %vec.ind1181 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.1 ], [ %vec.ind.next1182, %vector.body1175 ]
  %429 = add nuw nsw <4 x i64> %vec.ind1181, <i64 32, i64 32, i64 32, i64 32>
  %430 = trunc <4 x i64> %429 to <4 x i32>
  %431 = mul <4 x i32> %broadcast.splat1184, %430
  %432 = add <4 x i32> %431, <i32 2, i32 2, i32 2, i32 2>
  %433 = urem <4 x i32> %432, <i32 60, i32 60, i32 60, i32 60>
  %434 = sitofp <4 x i32> %433 to <4 x double>
  %435 = fmul fast <4 x double> %434, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %436 = extractelement <4 x i64> %429, i32 0
  %437 = shl i64 %436, 3
  %438 = add i64 %437, %427
  %439 = getelementptr i8, i8* %call2, i64 %438
  %440 = bitcast i8* %439 to <4 x double>*
  store <4 x double> %435, <4 x double>* %440, align 8, !alias.scope !94, !noalias !96
  %index.next1178 = add i64 %index1177, 4
  %vec.ind.next1182 = add <4 x i64> %vec.ind1181, <i64 4, i64 4, i64 4, i64 4>
  %441 = icmp eq i64 %index.next1178, 28
  br i1 %441, label %polly.loop_exit720.1.1, label %vector.body1175, !llvm.loop !107

polly.loop_exit720.1.1:                           ; preds = %vector.body1175
  %polly.indvar_next716.1.1 = add nuw nsw i64 %polly.indvar715.1.1, 1
  %exitcond800.1.1.not = icmp eq i64 %polly.indvar_next716.1.1, 32
  br i1 %exitcond800.1.1.not, label %polly.loop_header712.2, label %polly.loop_header712.1.1

polly.loop_header712.2:                           ; preds = %polly.loop_exit720.1.1, %polly.loop_exit720.2
  %polly.indvar715.2 = phi i64 [ %polly.indvar_next716.2, %polly.loop_exit720.2 ], [ 0, %polly.loop_exit720.1.1 ]
  %442 = add nuw nsw i64 %polly.indvar715.2, 64
  %443 = mul nuw nsw i64 %442, 480
  %444 = trunc i64 %442 to i32
  %broadcast.splatinsert1197 = insertelement <4 x i32> poison, i32 %444, i32 0
  %broadcast.splat1198 = shufflevector <4 x i32> %broadcast.splatinsert1197, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %polly.loop_header712.2
  %index1189 = phi i64 [ 0, %polly.loop_header712.2 ], [ %index.next1190, %vector.body1187 ]
  %vec.ind1195 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.2 ], [ %vec.ind.next1196, %vector.body1187 ]
  %445 = mul <4 x i32> %vec.ind1195, %broadcast.splat1198
  %446 = add <4 x i32> %445, <i32 2, i32 2, i32 2, i32 2>
  %447 = urem <4 x i32> %446, <i32 60, i32 60, i32 60, i32 60>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = shl i64 %index1189, 3
  %451 = add i64 %450, %443
  %452 = getelementptr i8, i8* %call2, i64 %451
  %453 = bitcast i8* %452 to <4 x double>*
  store <4 x double> %449, <4 x double>* %453, align 8, !alias.scope !94, !noalias !96
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1196 = add <4 x i32> %vec.ind1195, <i32 4, i32 4, i32 4, i32 4>
  %454 = icmp eq i64 %index.next1190, 32
  br i1 %454, label %polly.loop_exit720.2, label %vector.body1187, !llvm.loop !108

polly.loop_exit720.2:                             ; preds = %vector.body1187
  %polly.indvar_next716.2 = add nuw nsw i64 %polly.indvar715.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar_next716.2, 16
  br i1 %exitcond800.2.not, label %polly.loop_header712.1.2, label %polly.loop_header712.2

polly.loop_header712.1.2:                         ; preds = %polly.loop_exit720.2, %polly.loop_exit720.1.2
  %polly.indvar715.1.2 = phi i64 [ %polly.indvar_next716.1.2, %polly.loop_exit720.1.2 ], [ 0, %polly.loop_exit720.2 ]
  %455 = add nuw nsw i64 %polly.indvar715.1.2, 64
  %456 = mul nuw nsw i64 %455, 480
  %457 = trunc i64 %455 to i32
  %broadcast.splatinsert1209 = insertelement <4 x i32> poison, i32 %457, i32 0
  %broadcast.splat1210 = shufflevector <4 x i32> %broadcast.splatinsert1209, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %polly.loop_header712.1.2
  %index1203 = phi i64 [ 0, %polly.loop_header712.1.2 ], [ %index.next1204, %vector.body1201 ]
  %vec.ind1207 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.2 ], [ %vec.ind.next1208, %vector.body1201 ]
  %458 = add nuw nsw <4 x i64> %vec.ind1207, <i64 32, i64 32, i64 32, i64 32>
  %459 = trunc <4 x i64> %458 to <4 x i32>
  %460 = mul <4 x i32> %broadcast.splat1210, %459
  %461 = add <4 x i32> %460, <i32 2, i32 2, i32 2, i32 2>
  %462 = urem <4 x i32> %461, <i32 60, i32 60, i32 60, i32 60>
  %463 = sitofp <4 x i32> %462 to <4 x double>
  %464 = fmul fast <4 x double> %463, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %465 = extractelement <4 x i64> %458, i32 0
  %466 = shl i64 %465, 3
  %467 = add i64 %466, %456
  %468 = getelementptr i8, i8* %call2, i64 %467
  %469 = bitcast i8* %468 to <4 x double>*
  store <4 x double> %464, <4 x double>* %469, align 8, !alias.scope !94, !noalias !96
  %index.next1204 = add i64 %index1203, 4
  %vec.ind.next1208 = add <4 x i64> %vec.ind1207, <i64 4, i64 4, i64 4, i64 4>
  %470 = icmp eq i64 %index.next1204, 28
  br i1 %470, label %polly.loop_exit720.1.2, label %vector.body1201, !llvm.loop !109

polly.loop_exit720.1.2:                           ; preds = %vector.body1201
  %polly.indvar_next716.1.2 = add nuw nsw i64 %polly.indvar715.1.2, 1
  %exitcond800.1.2.not = icmp eq i64 %polly.indvar_next716.1.2, 16
  br i1 %exitcond800.1.2.not, label %polly.loop_header738, label %polly.loop_header712.1.2

polly.loop_header685.1:                           ; preds = %polly.loop_exit693, %polly.loop_exit693.1
  %polly.indvar688.1 = phi i64 [ %polly.indvar_next689.1, %polly.loop_exit693.1 ], [ 0, %polly.loop_exit693 ]
  %471 = mul nuw nsw i64 %polly.indvar688.1, 640
  %472 = trunc i64 %polly.indvar688.1 to i32
  %broadcast.splatinsert1043 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1044 = shufflevector <4 x i32> %broadcast.splatinsert1043, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %polly.loop_header685.1
  %index1037 = phi i64 [ 0, %polly.loop_header685.1 ], [ %index.next1038, %vector.body1035 ]
  %vec.ind1041 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1 ], [ %vec.ind.next1042, %vector.body1035 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1041, <i64 32, i64 32, i64 32, i64 32>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1044, %474
  %476 = add <4 x i32> %475, <i32 3, i32 3, i32 3, i32 3>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add nuw nsw i64 %481, %471
  %483 = getelementptr i8, i8* %call, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !90, !noalias !92
  %index.next1038 = add i64 %index1037, 4
  %vec.ind.next1042 = add <4 x i64> %vec.ind1041, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1038, 32
  br i1 %485, label %polly.loop_exit693.1, label %vector.body1035, !llvm.loop !110

polly.loop_exit693.1:                             ; preds = %vector.body1035
  %polly.indvar_next689.1 = add nuw nsw i64 %polly.indvar688.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next689.1, 32
  br i1 %exitcond809.1.not, label %polly.loop_header685.2, label %polly.loop_header685.1

polly.loop_header685.2:                           ; preds = %polly.loop_exit693.1, %polly.loop_exit693.2
  %polly.indvar688.2 = phi i64 [ %polly.indvar_next689.2, %polly.loop_exit693.2 ], [ 0, %polly.loop_exit693.1 ]
  %486 = mul nuw nsw i64 %polly.indvar688.2, 640
  %487 = trunc i64 %polly.indvar688.2 to i32
  %broadcast.splatinsert1055 = insertelement <4 x i32> poison, i32 %487, i32 0
  %broadcast.splat1056 = shufflevector <4 x i32> %broadcast.splatinsert1055, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1047

vector.body1047:                                  ; preds = %vector.body1047, %polly.loop_header685.2
  %index1049 = phi i64 [ 0, %polly.loop_header685.2 ], [ %index.next1050, %vector.body1047 ]
  %vec.ind1053 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2 ], [ %vec.ind.next1054, %vector.body1047 ]
  %488 = add nuw nsw <4 x i64> %vec.ind1053, <i64 64, i64 64, i64 64, i64 64>
  %489 = trunc <4 x i64> %488 to <4 x i32>
  %490 = mul <4 x i32> %broadcast.splat1056, %489
  %491 = add <4 x i32> %490, <i32 3, i32 3, i32 3, i32 3>
  %492 = urem <4 x i32> %491, <i32 80, i32 80, i32 80, i32 80>
  %493 = sitofp <4 x i32> %492 to <4 x double>
  %494 = fmul fast <4 x double> %493, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %495 = extractelement <4 x i64> %488, i32 0
  %496 = shl i64 %495, 3
  %497 = add nuw nsw i64 %496, %486
  %498 = getelementptr i8, i8* %call, i64 %497
  %499 = bitcast i8* %498 to <4 x double>*
  store <4 x double> %494, <4 x double>* %499, align 8, !alias.scope !90, !noalias !92
  %index.next1050 = add i64 %index1049, 4
  %vec.ind.next1054 = add <4 x i64> %vec.ind1053, <i64 4, i64 4, i64 4, i64 4>
  %500 = icmp eq i64 %index.next1050, 16
  br i1 %500, label %polly.loop_exit693.2, label %vector.body1047, !llvm.loop !111

polly.loop_exit693.2:                             ; preds = %vector.body1047
  %polly.indvar_next689.2 = add nuw nsw i64 %polly.indvar688.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next689.2, 32
  br i1 %exitcond809.2.not, label %polly.loop_header685.1968, label %polly.loop_header685.2

polly.loop_header685.1968:                        ; preds = %polly.loop_exit693.2, %polly.loop_exit693.1979
  %polly.indvar688.1967 = phi i64 [ %polly.indvar_next689.1977, %polly.loop_exit693.1979 ], [ 0, %polly.loop_exit693.2 ]
  %501 = add nuw nsw i64 %polly.indvar688.1967, 32
  %502 = mul nuw nsw i64 %501, 640
  %503 = trunc i64 %501 to i32
  %broadcast.splatinsert1069 = insertelement <4 x i32> poison, i32 %503, i32 0
  %broadcast.splat1070 = shufflevector <4 x i32> %broadcast.splatinsert1069, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1059

vector.body1059:                                  ; preds = %vector.body1059, %polly.loop_header685.1968
  %index1061 = phi i64 [ 0, %polly.loop_header685.1968 ], [ %index.next1062, %vector.body1059 ]
  %vec.ind1067 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.1968 ], [ %vec.ind.next1068, %vector.body1059 ]
  %504 = mul <4 x i32> %vec.ind1067, %broadcast.splat1070
  %505 = add <4 x i32> %504, <i32 3, i32 3, i32 3, i32 3>
  %506 = urem <4 x i32> %505, <i32 80, i32 80, i32 80, i32 80>
  %507 = sitofp <4 x i32> %506 to <4 x double>
  %508 = fmul fast <4 x double> %507, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %509 = shl i64 %index1061, 3
  %510 = add nuw nsw i64 %509, %502
  %511 = getelementptr i8, i8* %call, i64 %510
  %512 = bitcast i8* %511 to <4 x double>*
  store <4 x double> %508, <4 x double>* %512, align 8, !alias.scope !90, !noalias !92
  %index.next1062 = add i64 %index1061, 4
  %vec.ind.next1068 = add <4 x i32> %vec.ind1067, <i32 4, i32 4, i32 4, i32 4>
  %513 = icmp eq i64 %index.next1062, 32
  br i1 %513, label %polly.loop_exit693.1979, label %vector.body1059, !llvm.loop !112

polly.loop_exit693.1979:                          ; preds = %vector.body1059
  %polly.indvar_next689.1977 = add nuw nsw i64 %polly.indvar688.1967, 1
  %exitcond809.1978.not = icmp eq i64 %polly.indvar_next689.1977, 32
  br i1 %exitcond809.1978.not, label %polly.loop_header685.1.1, label %polly.loop_header685.1968

polly.loop_header685.1.1:                         ; preds = %polly.loop_exit693.1979, %polly.loop_exit693.1.1
  %polly.indvar688.1.1 = phi i64 [ %polly.indvar_next689.1.1, %polly.loop_exit693.1.1 ], [ 0, %polly.loop_exit693.1979 ]
  %514 = add nuw nsw i64 %polly.indvar688.1.1, 32
  %515 = mul nuw nsw i64 %514, 640
  %516 = trunc i64 %514 to i32
  %broadcast.splatinsert1081 = insertelement <4 x i32> poison, i32 %516, i32 0
  %broadcast.splat1082 = shufflevector <4 x i32> %broadcast.splatinsert1081, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %polly.loop_header685.1.1
  %index1075 = phi i64 [ 0, %polly.loop_header685.1.1 ], [ %index.next1076, %vector.body1073 ]
  %vec.ind1079 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.1 ], [ %vec.ind.next1080, %vector.body1073 ]
  %517 = add nuw nsw <4 x i64> %vec.ind1079, <i64 32, i64 32, i64 32, i64 32>
  %518 = trunc <4 x i64> %517 to <4 x i32>
  %519 = mul <4 x i32> %broadcast.splat1082, %518
  %520 = add <4 x i32> %519, <i32 3, i32 3, i32 3, i32 3>
  %521 = urem <4 x i32> %520, <i32 80, i32 80, i32 80, i32 80>
  %522 = sitofp <4 x i32> %521 to <4 x double>
  %523 = fmul fast <4 x double> %522, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %524 = extractelement <4 x i64> %517, i32 0
  %525 = shl i64 %524, 3
  %526 = add nuw nsw i64 %525, %515
  %527 = getelementptr i8, i8* %call, i64 %526
  %528 = bitcast i8* %527 to <4 x double>*
  store <4 x double> %523, <4 x double>* %528, align 8, !alias.scope !90, !noalias !92
  %index.next1076 = add i64 %index1075, 4
  %vec.ind.next1080 = add <4 x i64> %vec.ind1079, <i64 4, i64 4, i64 4, i64 4>
  %529 = icmp eq i64 %index.next1076, 32
  br i1 %529, label %polly.loop_exit693.1.1, label %vector.body1073, !llvm.loop !113

polly.loop_exit693.1.1:                           ; preds = %vector.body1073
  %polly.indvar_next689.1.1 = add nuw nsw i64 %polly.indvar688.1.1, 1
  %exitcond809.1.1.not = icmp eq i64 %polly.indvar_next689.1.1, 32
  br i1 %exitcond809.1.1.not, label %polly.loop_header685.2.1, label %polly.loop_header685.1.1

polly.loop_header685.2.1:                         ; preds = %polly.loop_exit693.1.1, %polly.loop_exit693.2.1
  %polly.indvar688.2.1 = phi i64 [ %polly.indvar_next689.2.1, %polly.loop_exit693.2.1 ], [ 0, %polly.loop_exit693.1.1 ]
  %530 = add nuw nsw i64 %polly.indvar688.2.1, 32
  %531 = mul nuw nsw i64 %530, 640
  %532 = trunc i64 %530 to i32
  %broadcast.splatinsert1093 = insertelement <4 x i32> poison, i32 %532, i32 0
  %broadcast.splat1094 = shufflevector <4 x i32> %broadcast.splatinsert1093, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %polly.loop_header685.2.1
  %index1087 = phi i64 [ 0, %polly.loop_header685.2.1 ], [ %index.next1088, %vector.body1085 ]
  %vec.ind1091 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.1 ], [ %vec.ind.next1092, %vector.body1085 ]
  %533 = add nuw nsw <4 x i64> %vec.ind1091, <i64 64, i64 64, i64 64, i64 64>
  %534 = trunc <4 x i64> %533 to <4 x i32>
  %535 = mul <4 x i32> %broadcast.splat1094, %534
  %536 = add <4 x i32> %535, <i32 3, i32 3, i32 3, i32 3>
  %537 = urem <4 x i32> %536, <i32 80, i32 80, i32 80, i32 80>
  %538 = sitofp <4 x i32> %537 to <4 x double>
  %539 = fmul fast <4 x double> %538, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %540 = extractelement <4 x i64> %533, i32 0
  %541 = shl i64 %540, 3
  %542 = add nuw nsw i64 %541, %531
  %543 = getelementptr i8, i8* %call, i64 %542
  %544 = bitcast i8* %543 to <4 x double>*
  store <4 x double> %539, <4 x double>* %544, align 8, !alias.scope !90, !noalias !92
  %index.next1088 = add i64 %index1087, 4
  %vec.ind.next1092 = add <4 x i64> %vec.ind1091, <i64 4, i64 4, i64 4, i64 4>
  %545 = icmp eq i64 %index.next1088, 16
  br i1 %545, label %polly.loop_exit693.2.1, label %vector.body1085, !llvm.loop !114

polly.loop_exit693.2.1:                           ; preds = %vector.body1085
  %polly.indvar_next689.2.1 = add nuw nsw i64 %polly.indvar688.2.1, 1
  %exitcond809.2.1.not = icmp eq i64 %polly.indvar_next689.2.1, 32
  br i1 %exitcond809.2.1.not, label %polly.loop_header685.2982, label %polly.loop_header685.2.1

polly.loop_header685.2982:                        ; preds = %polly.loop_exit693.2.1, %polly.loop_exit693.2993
  %polly.indvar688.2981 = phi i64 [ %polly.indvar_next689.2991, %polly.loop_exit693.2993 ], [ 0, %polly.loop_exit693.2.1 ]
  %546 = add nuw nsw i64 %polly.indvar688.2981, 64
  %547 = mul nuw nsw i64 %546, 640
  %548 = trunc i64 %546 to i32
  %broadcast.splatinsert1107 = insertelement <4 x i32> poison, i32 %548, i32 0
  %broadcast.splat1108 = shufflevector <4 x i32> %broadcast.splatinsert1107, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %polly.loop_header685.2982
  %index1099 = phi i64 [ 0, %polly.loop_header685.2982 ], [ %index.next1100, %vector.body1097 ]
  %vec.ind1105 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.2982 ], [ %vec.ind.next1106, %vector.body1097 ]
  %549 = mul <4 x i32> %vec.ind1105, %broadcast.splat1108
  %550 = add <4 x i32> %549, <i32 3, i32 3, i32 3, i32 3>
  %551 = urem <4 x i32> %550, <i32 80, i32 80, i32 80, i32 80>
  %552 = sitofp <4 x i32> %551 to <4 x double>
  %553 = fmul fast <4 x double> %552, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %554 = shl i64 %index1099, 3
  %555 = add nuw nsw i64 %554, %547
  %556 = getelementptr i8, i8* %call, i64 %555
  %557 = bitcast i8* %556 to <4 x double>*
  store <4 x double> %553, <4 x double>* %557, align 8, !alias.scope !90, !noalias !92
  %index.next1100 = add i64 %index1099, 4
  %vec.ind.next1106 = add <4 x i32> %vec.ind1105, <i32 4, i32 4, i32 4, i32 4>
  %558 = icmp eq i64 %index.next1100, 32
  br i1 %558, label %polly.loop_exit693.2993, label %vector.body1097, !llvm.loop !115

polly.loop_exit693.2993:                          ; preds = %vector.body1097
  %polly.indvar_next689.2991 = add nuw nsw i64 %polly.indvar688.2981, 1
  %exitcond809.2992.not = icmp eq i64 %polly.indvar_next689.2991, 16
  br i1 %exitcond809.2992.not, label %polly.loop_header685.1.2, label %polly.loop_header685.2982

polly.loop_header685.1.2:                         ; preds = %polly.loop_exit693.2993, %polly.loop_exit693.1.2
  %polly.indvar688.1.2 = phi i64 [ %polly.indvar_next689.1.2, %polly.loop_exit693.1.2 ], [ 0, %polly.loop_exit693.2993 ]
  %559 = add nuw nsw i64 %polly.indvar688.1.2, 64
  %560 = mul nuw nsw i64 %559, 640
  %561 = trunc i64 %559 to i32
  %broadcast.splatinsert1119 = insertelement <4 x i32> poison, i32 %561, i32 0
  %broadcast.splat1120 = shufflevector <4 x i32> %broadcast.splatinsert1119, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %polly.loop_header685.1.2
  %index1113 = phi i64 [ 0, %polly.loop_header685.1.2 ], [ %index.next1114, %vector.body1111 ]
  %vec.ind1117 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.2 ], [ %vec.ind.next1118, %vector.body1111 ]
  %562 = add nuw nsw <4 x i64> %vec.ind1117, <i64 32, i64 32, i64 32, i64 32>
  %563 = trunc <4 x i64> %562 to <4 x i32>
  %564 = mul <4 x i32> %broadcast.splat1120, %563
  %565 = add <4 x i32> %564, <i32 3, i32 3, i32 3, i32 3>
  %566 = urem <4 x i32> %565, <i32 80, i32 80, i32 80, i32 80>
  %567 = sitofp <4 x i32> %566 to <4 x double>
  %568 = fmul fast <4 x double> %567, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %569 = extractelement <4 x i64> %562, i32 0
  %570 = shl i64 %569, 3
  %571 = add nuw nsw i64 %570, %560
  %572 = getelementptr i8, i8* %call, i64 %571
  %573 = bitcast i8* %572 to <4 x double>*
  store <4 x double> %568, <4 x double>* %573, align 8, !alias.scope !90, !noalias !92
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1118 = add <4 x i64> %vec.ind1117, <i64 4, i64 4, i64 4, i64 4>
  %574 = icmp eq i64 %index.next1114, 32
  br i1 %574, label %polly.loop_exit693.1.2, label %vector.body1111, !llvm.loop !116

polly.loop_exit693.1.2:                           ; preds = %vector.body1111
  %polly.indvar_next689.1.2 = add nuw nsw i64 %polly.indvar688.1.2, 1
  %exitcond809.1.2.not = icmp eq i64 %polly.indvar_next689.1.2, 16
  br i1 %exitcond809.1.2.not, label %polly.loop_header685.2.2, label %polly.loop_header685.1.2

polly.loop_header685.2.2:                         ; preds = %polly.loop_exit693.1.2, %polly.loop_exit693.2.2
  %polly.indvar688.2.2 = phi i64 [ %polly.indvar_next689.2.2, %polly.loop_exit693.2.2 ], [ 0, %polly.loop_exit693.1.2 ]
  %575 = add nuw nsw i64 %polly.indvar688.2.2, 64
  %576 = mul nuw nsw i64 %575, 640
  %577 = trunc i64 %575 to i32
  %broadcast.splatinsert1131 = insertelement <4 x i32> poison, i32 %577, i32 0
  %broadcast.splat1132 = shufflevector <4 x i32> %broadcast.splatinsert1131, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1123

vector.body1123:                                  ; preds = %vector.body1123, %polly.loop_header685.2.2
  %index1125 = phi i64 [ 0, %polly.loop_header685.2.2 ], [ %index.next1126, %vector.body1123 ]
  %vec.ind1129 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.2 ], [ %vec.ind.next1130, %vector.body1123 ]
  %578 = add nuw nsw <4 x i64> %vec.ind1129, <i64 64, i64 64, i64 64, i64 64>
  %579 = trunc <4 x i64> %578 to <4 x i32>
  %580 = mul <4 x i32> %broadcast.splat1132, %579
  %581 = add <4 x i32> %580, <i32 3, i32 3, i32 3, i32 3>
  %582 = urem <4 x i32> %581, <i32 80, i32 80, i32 80, i32 80>
  %583 = sitofp <4 x i32> %582 to <4 x double>
  %584 = fmul fast <4 x double> %583, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %585 = extractelement <4 x i64> %578, i32 0
  %586 = shl i64 %585, 3
  %587 = add nuw nsw i64 %586, %576
  %588 = getelementptr i8, i8* %call, i64 %587
  %589 = bitcast i8* %588 to <4 x double>*
  store <4 x double> %584, <4 x double>* %589, align 8, !alias.scope !90, !noalias !92
  %index.next1126 = add i64 %index1125, 4
  %vec.ind.next1130 = add <4 x i64> %vec.ind1129, <i64 4, i64 4, i64 4, i64 4>
  %590 = icmp eq i64 %index.next1126, 16
  br i1 %590, label %polly.loop_exit693.2.2, label %vector.body1123, !llvm.loop !117

polly.loop_exit693.2.2:                           ; preds = %vector.body1123
  %polly.indvar_next689.2.2 = add nuw nsw i64 %polly.indvar688.2.2, 1
  %exitcond809.2.2.not = icmp eq i64 %polly.indvar_next689.2.2, 16
  br i1 %exitcond809.2.2.not, label %polly.loop_header712, label %polly.loop_header685.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 20}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 32}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !51}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 96}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !22, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !22, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!62, !65}
!71 = !{!62, !66}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !75}
!80 = !{!72, !76}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !84}
!89 = !{!81, !85}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = !{!93, !90}
!97 = distinct !{!97, !13}
!98 = !{!94, !90}
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
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
