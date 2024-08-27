; ModuleID = 'syr2k_exhaustive/mmp_all_SM_535.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_535.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 1440000, i32 8) #6
  %call888 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1740 = bitcast i8* %call1 to double*
  %polly.access.call1749 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2750 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1749, %call2
  %polly.access.call2769 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2769, %call1
  %2 = or i1 %0, %1
  %polly.access.call789 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call789, %call2
  %4 = icmp ule i8* %polly.access.call2769, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call789, %call1
  %8 = icmp ule i8* %polly.access.call1749, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header862, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1236 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1235 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1234 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1233 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1233, %scevgep1236
  %bound1 = icmp ult i8* %scevgep1235, %scevgep1234
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
  %16 = urem <4 x i32> %15, <i32 1200, i32 1200, i32 1200, i32 1200>
  %17 = sitofp <4 x i32> %16 to <4 x double>
  %18 = fmul fast <4 x double> %17, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %19 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %index
  %20 = bitcast double* %19 to <4 x double>*
  store <4 x double> %18, <4 x double>* %20, align 8, !tbaa !2, !alias.scope !6, !noalias !9
  %21 = add <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %22 = urem <4 x i32> %21, <i32 1000, i32 1000, i32 1000, i32 1000>
  %23 = sitofp <4 x i32> %22 to <4 x double>
  %24 = fmul fast <4 x double> %23, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %25 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %index
  %26 = bitcast double* %25 to <4 x double>*
  store <4 x double> %24, <4 x double>* %26, align 8, !tbaa !2, !alias.scope !9
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %index.next, 1000
  br i1 %27, label %for.inc17.i, label %vector.body, !llvm.loop !11

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %28 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv16.i
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %rem.i = urem i32 %30, 1200
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fmul fast double %conv.i, 0x3F4B4E81B4E81B4F
  %arrayidx6.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %31 = add i32 %29, 2
  %rem9.i = urem i32 %31, 1000
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fmul fast double %conv10.i, 1.000000e-03
  %arrayidx16.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 1000
  br i1 %exitcond15.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !14

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 1200
  br i1 %exitcond18.not.i, label %vector.ph1240, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1240:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1247 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1248 = shufflevector <4 x i64> %broadcast.splatinsert1247, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1240
  %index1241 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1242, %vector.body1239 ]
  %vec.ind1245 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1240 ], [ %vec.ind.next1246, %vector.body1239 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1245, %broadcast.splat1248
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv7.i, i64 %index1241
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1242 = add i64 %index1241, 4
  %vec.ind.next1246 = add <4 x i64> %vec.ind1245, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1242, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1239, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1239
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1240, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit923
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1302 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1302, label %for.body3.i46.preheader1457, label %vector.ph1303

vector.ph1303:                                    ; preds = %for.body3.i46.preheader
  %n.vec1305 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1301 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %index1306
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1307 = add i64 %index1306, 4
  %46 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %46, label %middle.block1299, label %vector.body1301, !llvm.loop !18

middle.block1299:                                 ; preds = %vector.body1301
  %cmp.n1309 = icmp eq i64 %indvars.iv21.i, %n.vec1305
  br i1 %cmp.n1309, label %for.inc6.i, label %for.body3.i46.preheader1457

for.body3.i46.preheader1457:                      ; preds = %for.body3.i46.preheader, %middle.block1299
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1305, %middle.block1299 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1457, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1457 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1299, %for.cond1.preheader.i45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 1200
  br i1 %exitcond23.not.i, label %for.cond12.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !20

for.cond12.preheader.i:                           ; preds = %for.inc6.i, %for.inc49.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc49.i ], [ 0, %for.inc6.i ]
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.inc49.i ], [ 1, %for.inc6.i ]
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc46.i, %for.cond12.preheader.i
  %indvars.iv10.i47 = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next11.i51, %for.inc46.i ]
  %arrayidx26.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  %arrayidx36.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond15.preheader.i
  %indvars.iv.i48 = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next.i49, %for.body17.i ]
  %arrayidx21.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting524
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start308, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1349 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1349, label %for.body3.i60.preheader1453, label %vector.ph1350

vector.ph1350:                                    ; preds = %for.body3.i60.preheader
  %n.vec1352 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1348

vector.body1348:                                  ; preds = %vector.body1348, %vector.ph1350
  %index1353 = phi i64 [ 0, %vector.ph1350 ], [ %index.next1354, %vector.body1348 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %index1353
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1357, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1354 = add i64 %index1353, 4
  %57 = icmp eq i64 %index.next1354, %n.vec1352
  br i1 %57, label %middle.block1346, label %vector.body1348, !llvm.loop !63

middle.block1346:                                 ; preds = %vector.body1348
  %cmp.n1356 = icmp eq i64 %indvars.iv21.i52, %n.vec1352
  br i1 %cmp.n1356, label %for.inc6.i63, label %for.body3.i60.preheader1453

for.body3.i60.preheader1453:                      ; preds = %for.body3.i60.preheader, %middle.block1346
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1352, %middle.block1346 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1453, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1453 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1346, %for.cond1.preheader.i54
  %indvars.iv.next22.i61 = add nuw nsw i64 %indvars.iv21.i52, 1
  %exitcond23.not.i62 = icmp eq i64 %indvars.iv.next22.i61, 1200
  br i1 %exitcond23.not.i62, label %for.cond12.preheader.i66, label %for.cond1.preheader.i54, !llvm.loop !20

for.cond12.preheader.i66:                         ; preds = %for.inc6.i63, %for.inc49.i89
  %indvars.iv15.i64 = phi i64 [ %indvars.iv.next16.i86, %for.inc49.i89 ], [ 0, %for.inc6.i63 ]
  %indvars.iv13.i65 = phi i64 [ %indvars.iv.next14.i87, %for.inc49.i89 ], [ 1, %for.inc6.i63 ]
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.inc46.i85, %for.cond12.preheader.i66
  %indvars.iv10.i67 = phi i64 [ 0, %for.cond12.preheader.i66 ], [ %indvars.iv.next11.i83, %for.inc46.i85 ]
  %arrayidx26.i68 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  %arrayidx36.i69 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  br label %for.body17.i82

for.body17.i82:                                   ; preds = %for.body17.i82, %for.cond15.preheader.i70
  %indvars.iv.i71 = phi i64 [ 0, %for.cond15.preheader.i70 ], [ %indvars.iv.next.i80, %for.body17.i82 ]
  %arrayidx21.i72 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting309
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1399 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1399, label %for.body3.i99.preheader1449, label %vector.ph1400

vector.ph1400:                                    ; preds = %for.body3.i99.preheader
  %n.vec1402 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1398

vector.body1398:                                  ; preds = %vector.body1398, %vector.ph1400
  %index1403 = phi i64 [ 0, %vector.ph1400 ], [ %index.next1404, %vector.body1398 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %index1403
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1407 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1407, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1404 = add i64 %index1403, 4
  %68 = icmp eq i64 %index.next1404, %n.vec1402
  br i1 %68, label %middle.block1396, label %vector.body1398, !llvm.loop !65

middle.block1396:                                 ; preds = %vector.body1398
  %cmp.n1406 = icmp eq i64 %indvars.iv21.i91, %n.vec1402
  br i1 %cmp.n1406, label %for.inc6.i102, label %for.body3.i99.preheader1449

for.body3.i99.preheader1449:                      ; preds = %for.body3.i99.preheader, %middle.block1396
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1402, %middle.block1396 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1449, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1449 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1396, %for.cond1.preheader.i93
  %indvars.iv.next22.i100 = add nuw nsw i64 %indvars.iv21.i91, 1
  %exitcond23.not.i101 = icmp eq i64 %indvars.iv.next22.i100, 1200
  br i1 %exitcond23.not.i101, label %for.cond12.preheader.i105, label %for.cond1.preheader.i93, !llvm.loop !20

for.cond12.preheader.i105:                        ; preds = %for.inc6.i102, %for.inc49.i128
  %indvars.iv15.i103 = phi i64 [ %indvars.iv.next16.i125, %for.inc49.i128 ], [ 0, %for.inc6.i102 ]
  %indvars.iv13.i104 = phi i64 [ %indvars.iv.next14.i126, %for.inc49.i128 ], [ 1, %for.inc6.i102 ]
  br label %for.cond15.preheader.i109

for.cond15.preheader.i109:                        ; preds = %for.inc46.i124, %for.cond12.preheader.i105
  %indvars.iv10.i106 = phi i64 [ 0, %for.cond12.preheader.i105 ], [ %indvars.iv.next11.i122, %for.inc46.i124 ]
  %arrayidx26.i107 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  %arrayidx36.i108 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  br label %for.body17.i121

for.body17.i121:                                  ; preds = %for.body17.i121, %for.cond15.preheader.i109
  %indvars.iv.i110 = phi i64 [ 0, %for.cond15.preheader.i109 ], [ %indvars.iv.next.i119, %for.body17.i121 ]
  %arrayidx21.i111 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !47

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !67
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %79 = mul nuw nsw i64 %indvars.iv4.i, 1200
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i41 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i43, %if.end.i ]
  %80 = add nuw nsw i64 %indvars.iv.i41, %79
  %81 = trunc i64 %80 to i32
  %rem.i42 = urem i32 %81, 20
  %cmp5.i = icmp eq i32 %rem.i42, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !69

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !70

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall136 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1411 = phi i64 [ %indvar.next1412, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1411, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1413 = icmp ult i64 %88, 4
  br i1 %min.iters.check1413, label %polly.loop_header192.preheader, label %vector.ph1414

vector.ph1414:                                    ; preds = %polly.loop_header
  %n.vec1416 = and i64 %88, -4
  br label %vector.body1410

vector.body1410:                                  ; preds = %vector.body1410, %vector.ph1414
  %index1417 = phi i64 [ 0, %vector.ph1414 ], [ %index.next1418, %vector.body1410 ]
  %90 = shl nuw nsw i64 %index1417, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1421 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1421, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1418 = add i64 %index1417, 4
  %95 = icmp eq i64 %index.next1418, %n.vec1416
  br i1 %95, label %middle.block1408, label %vector.body1410, !llvm.loop !78

middle.block1408:                                 ; preds = %vector.body1410
  %cmp.n1420 = icmp eq i64 %88, %n.vec1416
  br i1 %cmp.n1420, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1408
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1416, %middle.block1408 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1408
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1412 = add i64 %indvar1411, 1
  br i1 %exitcond1115.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1114.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1088 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1089, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1088, i64 -968)
  %97 = add nsw i64 %smin1110, 1000
  %98 = shl nsw i64 %polly.indvar203, 5
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, -32
  %exitcond1113.not = icmp eq i64 %polly.indvar_next204, 32
  br i1 %exitcond1113.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = mul nuw nsw i64 %polly.indvar209, 80
  %100 = shl nuw nsw i64 %polly.indvar209, 1
  %101 = lshr i64 %polly.indvar209, 1
  %102 = add nuw i64 %100, %101
  %103 = shl nuw nsw i64 %102, 5
  %104 = sub i64 %99, %103
  %105 = mul nsw i64 %polly.indvar209, -80
  %106 = add i64 %105, %103
  %107 = lshr i64 %polly.indvar209, 1
  %108 = add nuw i64 %indvars.iv1098, %107
  %109 = shl nuw nsw i64 %108, 5
  %110 = sub i64 %indvars.iv1096, %109
  %111 = add i64 %indvars.iv1102, %109
  %112 = mul nsw i64 %polly.indvar209, -80
  %113 = mul nuw nsw i64 %polly.indvar209, 80
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %114 = add nsw i64 %112, 1199
  %115 = shl nuw nsw i64 %polly.indvar209, 1
  %116 = add nuw nsw i64 %115, %107
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -80
  %indvars.iv.next1097 = add nuw nsw i64 %indvars.iv1096, 80
  %indvars.iv.next1099 = add nuw nsw i64 %indvars.iv1098, 2
  %indvars.iv.next1103 = add nsw i64 %indvars.iv1102, -80
  %exitcond1112.not = icmp eq i64 %polly.indvar_next210, 15
  br i1 %exitcond1112.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %117 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1090.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %118 = add nuw nsw i64 %polly.indvar221, %113
  %polly.access.mul.call2225 = mul nuw nsw i64 %118, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %117, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit214
  %indvar1425 = phi i64 [ %indvar.next1426, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit267 ], [ %111, %polly.loop_exit214 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit267 ], [ %110, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %116, %polly.loop_exit214 ]
  %119 = mul nsw i64 %indvar1425, -32
  %120 = add i64 %104, %119
  %smax1427 = call i64 @llvm.smax.i64(i64 %120, i64 0)
  %121 = shl nuw nsw i64 %indvar1425, 5
  %122 = add i64 %106, %121
  %123 = add i64 %smax1427, %122
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1100, i64 0)
  %124 = add i64 %smax, %indvars.iv1104
  %125 = shl nsw i64 %polly.indvar231, 5
  %126 = add nsw i64 %125, %112
  %127 = add nsw i64 %126, -1
  %.inv = icmp sgt i64 %126, 79
  %128 = select i1 %.inv, i64 79, i64 %127
  %polly.loop_guard = icmp sgt i64 %128, -1
  %129 = icmp sgt i64 %126, 0
  %130 = select i1 %129, i64 %126, i64 0
  %131 = add nsw i64 %126, 31
  %132 = icmp slt i64 %114, %131
  %133 = select i1 %132, i64 %114, i64 %131
  %polly.loop_guard254.not = icmp sgt i64 %130, %133
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %134 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %135 = add nuw nsw i64 %polly.indvar243.us, %113
  %polly.access.mul.call1247.us = mul nuw nsw i64 %135, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %134, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar243.us, %128
  br i1 %exitcond1093.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %130, %polly.loop_exit242.loopexit.us ]
  %136 = add nuw nsw i64 %polly.indvar255.us, %113
  %polly.access.mul.call1259.us = mul nsw i64 %136, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %134, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %133
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_exit253.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1095.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_exit253.us, label %polly.loop_header251.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_exit267:                               ; preds = %polly.loop_exit274, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 37
  %indvars.iv.next1101 = add i64 %indvars.iv1100, -32
  %indvars.iv.next1105 = add i64 %indvars.iv1104, 32
  %indvar.next1426 = add i64 %indvar1425, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228.split ]
  %137 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1092.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253, %polly.loop_exit253.us, %polly.loop_header228.split
  %138 = sub nsw i64 %113, %125
  %139 = icmp sgt i64 %138, 0
  %140 = select i1 %139, i64 %138, i64 0
  %141 = mul nsw i64 %polly.indvar231, -32
  %142 = icmp slt i64 %141, -1168
  %143 = select i1 %142, i64 %141, i64 -1168
  %144 = add nsw i64 %143, 1199
  %polly.loop_guard275.not = icmp sgt i64 %140, %144
  br i1 %polly.loop_guard275.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %130, %polly.loop_header234 ]
  %145 = add nuw nsw i64 %polly.indvar255, %113
  %polly.access.mul.call1259 = mul nsw i64 %145, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %137, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %133
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.loop_header265:                             ; preds = %polly.loop_header265.preheader, %polly.loop_exit274
  %polly.indvar268 = phi i64 [ %polly.indvar_next269, %polly.loop_exit274 ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1287 = mul nuw nsw i64 %polly.indvar268, 1200
  br label %polly.loop_header272

polly.loop_exit274:                               ; preds = %polly.loop_exit282
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next269, %97
  br i1 %exitcond1111.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header272:                             ; preds = %polly.loop_header265, %polly.loop_exit282
  %indvar1428 = phi i64 [ 0, %polly.loop_header265 ], [ %indvar.next1429, %polly.loop_exit282 ]
  %indvars.iv1106 = phi i64 [ %124, %polly.loop_header265 ], [ %indvars.iv.next1107, %polly.loop_exit282 ]
  %polly.indvar276 = phi i64 [ %140, %polly.loop_header265 ], [ %polly.indvar_next277, %polly.loop_exit282 ]
  %146 = add i64 %123, %indvar1428
  %smin1430 = call i64 @llvm.smin.i64(i64 %146, i64 79)
  %147 = add nsw i64 %smin1430, 1
  %smin1108 = call i64 @llvm.smin.i64(i64 %indvars.iv1106, i64 79)
  %148 = add nsw i64 %polly.indvar276, %126
  %polly.loop_guard2831219 = icmp sgt i64 %148, -1
  br i1 %polly.loop_guard2831219, label %polly.loop_header280.preheader, label %polly.loop_exit282

polly.loop_header280.preheader:                   ; preds = %polly.loop_header272
  %149 = add nuw nsw i64 %polly.indvar276, %125
  %polly.access.add.Packed_MemRef_call2292 = add nsw i64 %148, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call2293 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call2293, align 8
  %polly.access.Packed_MemRef_call1301 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292
  %_p_scalar_302 = load double, double* %polly.access.Packed_MemRef_call1301, align 8
  %150 = mul i64 %149, 9600
  %min.iters.check1431 = icmp ult i64 %147, 4
  br i1 %min.iters.check1431, label %polly.loop_header280.preheader1446, label %vector.ph1432

vector.ph1432:                                    ; preds = %polly.loop_header280.preheader
  %n.vec1434 = and i64 %147, -4
  %broadcast.splatinsert1440 = insertelement <4 x double> poison, double %_p_scalar_294, i32 0
  %broadcast.splat1441 = shufflevector <4 x double> %broadcast.splatinsert1440, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1443 = insertelement <4 x double> poison, double %_p_scalar_302, i32 0
  %broadcast.splat1444 = shufflevector <4 x double> %broadcast.splatinsert1443, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1424

vector.body1424:                                  ; preds = %vector.body1424, %vector.ph1432
  %index1435 = phi i64 [ 0, %vector.ph1432 ], [ %index.next1436, %vector.body1424 ]
  %151 = add nuw nsw i64 %index1435, %113
  %152 = add nuw nsw i64 %index1435, %polly.access.mul.Packed_MemRef_call1287
  %153 = getelementptr double, double* %Packed_MemRef_call1, i64 %152
  %154 = bitcast double* %153 to <4 x double>*
  %wide.load1439 = load <4 x double>, <4 x double>* %154, align 8
  %155 = fmul fast <4 x double> %broadcast.splat1441, %wide.load1439
  %156 = getelementptr double, double* %Packed_MemRef_call2, i64 %152
  %157 = bitcast double* %156 to <4 x double>*
  %wide.load1442 = load <4 x double>, <4 x double>* %157, align 8
  %158 = fmul fast <4 x double> %broadcast.splat1444, %wide.load1442
  %159 = shl i64 %151, 3
  %160 = add i64 %159, %150
  %161 = getelementptr i8, i8* %call, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  %wide.load1445 = load <4 x double>, <4 x double>* %162, align 8, !alias.scope !71, !noalias !73
  %163 = fadd fast <4 x double> %158, %155
  %164 = fmul fast <4 x double> %163, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %165 = fadd fast <4 x double> %164, %wide.load1445
  %166 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !71, !noalias !73
  %index.next1436 = add i64 %index1435, 4
  %167 = icmp eq i64 %index.next1436, %n.vec1434
  br i1 %167, label %middle.block1422, label %vector.body1424, !llvm.loop !83

middle.block1422:                                 ; preds = %vector.body1424
  %cmp.n1438 = icmp eq i64 %147, %n.vec1434
  br i1 %cmp.n1438, label %polly.loop_exit282, label %polly.loop_header280.preheader1446

polly.loop_header280.preheader1446:               ; preds = %polly.loop_header280.preheader, %middle.block1422
  %polly.indvar284.ph = phi i64 [ 0, %polly.loop_header280.preheader ], [ %n.vec1434, %middle.block1422 ]
  br label %polly.loop_header280

polly.loop_exit282:                               ; preds = %polly.loop_header280, %middle.block1422, %polly.loop_header272
  %polly.indvar_next277 = add nuw nsw i64 %polly.indvar276, 1
  %polly.loop_cond278.not.not = icmp slt i64 %polly.indvar276, %144
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 1
  %indvar.next1429 = add i64 %indvar1428, 1
  br i1 %polly.loop_cond278.not.not, label %polly.loop_header272, label %polly.loop_exit274

polly.loop_header280:                             ; preds = %polly.loop_header280.preheader1446, %polly.loop_header280
  %polly.indvar284 = phi i64 [ %polly.indvar_next285, %polly.loop_header280 ], [ %polly.indvar284.ph, %polly.loop_header280.preheader1446 ]
  %168 = add nuw nsw i64 %polly.indvar284, %113
  %polly.access.add.Packed_MemRef_call1288 = add nuw nsw i64 %polly.indvar284, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call1289 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call1289, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_294, %_p_scalar_290
  %polly.access.Packed_MemRef_call2297 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288
  %_p_scalar_298 = load double, double* %polly.access.Packed_MemRef_call2297, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_302, %_p_scalar_298
  %169 = shl i64 %168, 3
  %170 = add i64 %169, %150
  %scevgep303 = getelementptr i8, i8* %call, i64 %170
  %scevgep303304 = bitcast i8* %scevgep303 to double*
  %_p_scalar_305 = load double, double* %scevgep303304, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_305
  store double %p_add42.i118, double* %scevgep303304, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next285 = add nuw nsw i64 %polly.indvar284, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar284, %smin1108
  br i1 %exitcond1109.not, label %polly.loop_exit282, label %polly.loop_header280, !llvm.loop !84

polly.start308:                                   ; preds = %kernel_syr2k.exit
  %malloccall310 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall312 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header396

polly.exiting309:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall310)
  tail call void @free(i8* %malloccall312)
  br label %kernel_syr2k.exit90

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.start308
  %indvar1361 = phi i64 [ %indvar.next1362, %polly.loop_exit404 ], [ 0, %polly.start308 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 1, %polly.start308 ]
  %171 = add i64 %indvar1361, 1
  %172 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %172
  %min.iters.check1363 = icmp ult i64 %171, 4
  br i1 %min.iters.check1363, label %polly.loop_header402.preheader, label %vector.ph1364

vector.ph1364:                                    ; preds = %polly.loop_header396
  %n.vec1366 = and i64 %171, -4
  br label %vector.body1360

vector.body1360:                                  ; preds = %vector.body1360, %vector.ph1364
  %index1367 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1368, %vector.body1360 ]
  %173 = shl nuw nsw i64 %index1367, 3
  %174 = getelementptr i8, i8* %scevgep408, i64 %173
  %175 = bitcast i8* %174 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %175, align 8, !alias.scope !85, !noalias !87
  %176 = fmul fast <4 x double> %wide.load1371, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %177 = bitcast i8* %174 to <4 x double>*
  store <4 x double> %176, <4 x double>* %177, align 8, !alias.scope !85, !noalias !87
  %index.next1368 = add i64 %index1367, 4
  %178 = icmp eq i64 %index.next1368, %n.vec1366
  br i1 %178, label %middle.block1358, label %vector.body1360, !llvm.loop !92

middle.block1358:                                 ; preds = %vector.body1360
  %cmp.n1370 = icmp eq i64 %171, %n.vec1366
  br i1 %cmp.n1370, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header396, %middle.block1358
  %polly.indvar405.ph = phi i64 [ 0, %polly.loop_header396 ], [ %n.vec1366, %middle.block1358 ]
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402, %middle.block1358
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar_next400, 1200
  %indvar.next1362 = add i64 %indvar1361, 1
  br i1 %exitcond1148.not, label %polly.loop_header412.preheader, label %polly.loop_header396

polly.loop_header412.preheader:                   ; preds = %polly.loop_exit404
  %Packed_MemRef_call1311 = bitcast i8* %malloccall310 to double*
  %Packed_MemRef_call2313 = bitcast i8* %malloccall312 to double*
  br label %polly.loop_header412

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_header402
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_header402 ], [ %polly.indvar405.ph, %polly.loop_header402.preheader ]
  %179 = shl nuw nsw i64 %polly.indvar405, 3
  %scevgep409 = getelementptr i8, i8* %scevgep408, i64 %179
  %scevgep409410 = bitcast i8* %scevgep409 to double*
  %_p_scalar_411 = load double, double* %scevgep409410, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_411, 1.200000e+00
  store double %p_mul.i57, double* %scevgep409410, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1147.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !93

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %indvars.iv1119 = phi i64 [ 0, %polly.loop_header412.preheader ], [ %indvars.iv.next1120, %polly.loop_exit420 ]
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header412.preheader ], [ %polly.indvar_next416, %polly.loop_exit420 ]
  %smin1143 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -968)
  %180 = add nsw i64 %smin1143, 1000
  %181 = shl nsw i64 %polly.indvar415, 5
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -32
  %exitcond1146.not = icmp eq i64 %polly.indvar_next416, 32
  br i1 %exitcond1146.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %182 = mul nuw nsw i64 %polly.indvar421, 80
  %183 = shl nuw nsw i64 %polly.indvar421, 1
  %184 = lshr i64 %polly.indvar421, 1
  %185 = add nuw i64 %183, %184
  %186 = shl nuw nsw i64 %185, 5
  %187 = sub i64 %182, %186
  %188 = mul nsw i64 %polly.indvar421, -80
  %189 = add i64 %188, %186
  %190 = lshr i64 %polly.indvar421, 1
  %191 = add nuw i64 %indvars.iv1130, %190
  %192 = shl nuw nsw i64 %191, 5
  %193 = sub i64 %indvars.iv1128, %192
  %194 = add i64 %indvars.iv1135, %192
  %195 = mul nsw i64 %polly.indvar421, -80
  %196 = mul nuw nsw i64 %polly.indvar421, 80
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %197 = add nsw i64 %195, 1199
  %198 = shl nuw nsw i64 %polly.indvar421, 1
  %199 = add nuw nsw i64 %198, %190
  br label %polly.loop_header441

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -80
  %indvars.iv.next1129 = add nuw nsw i64 %indvars.iv1128, 80
  %indvars.iv.next1131 = add nuw nsw i64 %indvars.iv1130, 2
  %indvars.iv.next1136 = add nsw i64 %indvars.iv1135, -80
  %exitcond1145.not = icmp eq i64 %polly.indvar_next422, 15
  br i1 %exitcond1145.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %200 = add nuw nsw i64 %polly.indvar427, %181
  %polly.access.mul.Packed_MemRef_call2313 = mul nuw nsw i64 %polly.indvar427, 1200
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_header430
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next428, %180
  br i1 %exitcond1122.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_header430, %polly.loop_header424
  %polly.indvar433 = phi i64 [ 0, %polly.loop_header424 ], [ %polly.indvar_next434, %polly.loop_header430 ]
  %201 = add nuw nsw i64 %polly.indvar433, %196
  %polly.access.mul.call2437 = mul nuw nsw i64 %201, 1000
  %polly.access.add.call2438 = add nuw nsw i64 %200, %polly.access.mul.call2437
  %polly.access.call2439 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438
  %polly.access.call2439.load = load double, double* %polly.access.call2439, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2313 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call2313
  %polly.access.Packed_MemRef_call2313 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313
  store double %polly.access.call2439.load, double* %polly.access.Packed_MemRef_call2313, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1116
  br i1 %exitcond1118.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit426
  %indvar1375 = phi i64 [ %indvar.next1376, %polly.loop_exit482 ], [ 0, %polly.loop_exit426 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit482 ], [ %194, %polly.loop_exit426 ]
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit482 ], [ %193, %polly.loop_exit426 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %199, %polly.loop_exit426 ]
  %202 = mul nsw i64 %indvar1375, -32
  %203 = add i64 %187, %202
  %smax1377 = call i64 @llvm.smax.i64(i64 %203, i64 0)
  %204 = shl nuw nsw i64 %indvar1375, 5
  %205 = add i64 %189, %204
  %206 = add i64 %smax1377, %205
  %smax1134 = call i64 @llvm.smax.i64(i64 %indvars.iv1132, i64 0)
  %207 = add i64 %smax1134, %indvars.iv1137
  %208 = shl nsw i64 %polly.indvar444, 5
  %209 = add nsw i64 %208, %195
  %210 = add nsw i64 %209, -1
  %.inv942 = icmp sgt i64 %209, 79
  %211 = select i1 %.inv942, i64 79, i64 %210
  %polly.loop_guard457 = icmp sgt i64 %211, -1
  %212 = icmp sgt i64 %209, 0
  %213 = select i1 %212, i64 %209, i64 0
  %214 = add nsw i64 %209, 31
  %215 = icmp slt i64 %197, %214
  %216 = select i1 %215, i64 %197, i64 %214
  %polly.loop_guard469.not = icmp sgt i64 %213, %216
  br i1 %polly.loop_guard457, label %polly.loop_header447.us, label %polly.loop_header441.split

polly.loop_header447.us:                          ; preds = %polly.loop_header441, %polly.loop_exit468.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header441 ]
  %217 = add nuw nsw i64 %polly.indvar450.us, %181
  %polly.access.mul.Packed_MemRef_call1311.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %218 = add nuw nsw i64 %polly.indvar458.us, %196
  %polly.access.mul.call1462.us = mul nuw nsw i64 %218, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %217, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1311.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar458.us, %211
  br i1 %exitcond1125.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %213, %polly.loop_exit456.loopexit.us ]
  %219 = add nuw nsw i64 %polly.indvar470.us, %196
  %polly.access.mul.call1474.us = mul nsw i64 %219, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %217, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1311478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311479.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1311479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %216
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_exit456.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar_next451.us, %180
  br i1 %exitcond1127.not, label %polly.loop_header480.preheader, label %polly.loop_header447.us

polly.loop_exit456.loopexit.us:                   ; preds = %polly.loop_header454.us
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header441.split:                       ; preds = %polly.loop_header441
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_exit482:                               ; preds = %polly.loop_exit489, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp ult i64 %polly.indvar444, 37
  %indvars.iv.next1133 = add i64 %indvars.iv1132, -32
  %indvars.iv.next1138 = add i64 %indvars.iv1137, 32
  %indvar.next1376 = add i64 %indvar1375, 1
  br i1 %polly.loop_cond446, label %polly.loop_header441, label %polly.loop_exit443

polly.loop_header447:                             ; preds = %polly.loop_header441.split, %polly.loop_exit468
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_exit468 ], [ 0, %polly.loop_header441.split ]
  %220 = add nuw nsw i64 %polly.indvar450, %181
  %polly.access.mul.Packed_MemRef_call1311477 = mul nuw nsw i64 %polly.indvar450, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next451, %180
  br i1 %exitcond1124.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header441.split
  %221 = sub nsw i64 %196, %208
  %222 = icmp sgt i64 %221, 0
  %223 = select i1 %222, i64 %221, i64 0
  %224 = mul nsw i64 %polly.indvar444, -32
  %225 = icmp slt i64 %224, -1168
  %226 = select i1 %225, i64 %224, i64 -1168
  %227 = add nsw i64 %226, 1199
  %polly.loop_guard490.not = icmp sgt i64 %223, %227
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header466:                             ; preds = %polly.loop_header447, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %213, %polly.loop_header447 ]
  %228 = add nuw nsw i64 %polly.indvar470, %196
  %polly.access.mul.call1474 = mul nsw i64 %228, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %220, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1311478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1311477
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %216
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.loop_header480:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit489
  %polly.indvar483 = phi i64 [ %polly.indvar_next484, %polly.loop_exit489 ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1311502 = mul nuw nsw i64 %polly.indvar483, 1200
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_exit497
  %polly.indvar_next484 = add nuw nsw i64 %polly.indvar483, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar_next484, %180
  br i1 %exitcond1144.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header487:                             ; preds = %polly.loop_header480, %polly.loop_exit497
  %indvar1378 = phi i64 [ 0, %polly.loop_header480 ], [ %indvar.next1379, %polly.loop_exit497 ]
  %indvars.iv1139 = phi i64 [ %207, %polly.loop_header480 ], [ %indvars.iv.next1140, %polly.loop_exit497 ]
  %polly.indvar491 = phi i64 [ %223, %polly.loop_header480 ], [ %polly.indvar_next492, %polly.loop_exit497 ]
  %229 = add i64 %206, %indvar1378
  %smin1380 = call i64 @llvm.smin.i64(i64 %229, i64 79)
  %230 = add nsw i64 %smin1380, 1
  %smin1141 = call i64 @llvm.smin.i64(i64 %indvars.iv1139, i64 79)
  %231 = add nsw i64 %polly.indvar491, %209
  %polly.loop_guard4981220 = icmp sgt i64 %231, -1
  br i1 %polly.loop_guard4981220, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %232 = add nuw nsw i64 %polly.indvar491, %208
  %polly.access.add.Packed_MemRef_call2313507 = add nsw i64 %231, %polly.access.mul.Packed_MemRef_call1311502
  %polly.access.Packed_MemRef_call2313508 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2313508, align 8
  %polly.access.Packed_MemRef_call1311516 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1311516, align 8
  %233 = mul i64 %232, 9600
  %min.iters.check1381 = icmp ult i64 %230, 4
  br i1 %min.iters.check1381, label %polly.loop_header495.preheader1450, label %vector.ph1382

vector.ph1382:                                    ; preds = %polly.loop_header495.preheader
  %n.vec1384 = and i64 %230, -4
  %broadcast.splatinsert1390 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1391 = shufflevector <4 x double> %broadcast.splatinsert1390, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1393 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1394 = shufflevector <4 x double> %broadcast.splatinsert1393, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %vector.ph1382
  %index1385 = phi i64 [ 0, %vector.ph1382 ], [ %index.next1386, %vector.body1374 ]
  %234 = add nuw nsw i64 %index1385, %196
  %235 = add nuw nsw i64 %index1385, %polly.access.mul.Packed_MemRef_call1311502
  %236 = getelementptr double, double* %Packed_MemRef_call1311, i64 %235
  %237 = bitcast double* %236 to <4 x double>*
  %wide.load1389 = load <4 x double>, <4 x double>* %237, align 8
  %238 = fmul fast <4 x double> %broadcast.splat1391, %wide.load1389
  %239 = getelementptr double, double* %Packed_MemRef_call2313, i64 %235
  %240 = bitcast double* %239 to <4 x double>*
  %wide.load1392 = load <4 x double>, <4 x double>* %240, align 8
  %241 = fmul fast <4 x double> %broadcast.splat1394, %wide.load1392
  %242 = shl i64 %234, 3
  %243 = add i64 %242, %233
  %244 = getelementptr i8, i8* %call, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  %wide.load1395 = load <4 x double>, <4 x double>* %245, align 8, !alias.scope !85, !noalias !87
  %246 = fadd fast <4 x double> %241, %238
  %247 = fmul fast <4 x double> %246, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %248 = fadd fast <4 x double> %247, %wide.load1395
  %249 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %248, <4 x double>* %249, align 8, !alias.scope !85, !noalias !87
  %index.next1386 = add i64 %index1385, 4
  %250 = icmp eq i64 %index.next1386, %n.vec1384
  br i1 %250, label %middle.block1372, label %vector.body1374, !llvm.loop !96

middle.block1372:                                 ; preds = %vector.body1374
  %cmp.n1388 = icmp eq i64 %230, %n.vec1384
  br i1 %cmp.n1388, label %polly.loop_exit497, label %polly.loop_header495.preheader1450

polly.loop_header495.preheader1450:               ; preds = %polly.loop_header495.preheader, %middle.block1372
  %polly.indvar499.ph = phi i64 [ 0, %polly.loop_header495.preheader ], [ %n.vec1384, %middle.block1372 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1372, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %227
  %indvars.iv.next1140 = add i64 %indvars.iv1139, 1
  %indvar.next1379 = add i64 %indvar1378, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_exit489

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1450, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1450 ]
  %251 = add nuw nsw i64 %polly.indvar499, %196
  %polly.access.add.Packed_MemRef_call1311503 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1311502
  %polly.access.Packed_MemRef_call1311504 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1311504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2313512 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2313512, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_517, %_p_scalar_513
  %252 = shl i64 %251, 3
  %253 = add i64 %252, %233
  %scevgep518 = getelementptr i8, i8* %call, i64 %253
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_520
  store double %p_add42.i79, double* %scevgep518519, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar499, %smin1141
  br i1 %exitcond1142.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !97

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall527 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %254 = add i64 %indvar, 1
  %255 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %255
  %min.iters.check1313 = icmp ult i64 %254, 4
  br i1 %min.iters.check1313, label %polly.loop_header617.preheader, label %vector.ph1314

vector.ph1314:                                    ; preds = %polly.loop_header611
  %n.vec1316 = and i64 %254, -4
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1312 ]
  %256 = shl nuw nsw i64 %index1317, 3
  %257 = getelementptr i8, i8* %scevgep623, i64 %256
  %258 = bitcast i8* %257 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %258, align 8, !alias.scope !98, !noalias !100
  %259 = fmul fast <4 x double> %wide.load1321, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %260 = bitcast i8* %257 to <4 x double>*
  store <4 x double> %259, <4 x double>* %260, align 8, !alias.scope !98, !noalias !100
  %index.next1318 = add i64 %index1317, 4
  %261 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %261, label %middle.block1310, label %vector.body1312, !llvm.loop !105

middle.block1310:                                 ; preds = %vector.body1312
  %cmp.n1320 = icmp eq i64 %254, %n.vec1316
  br i1 %cmp.n1320, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1310
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1316, %middle.block1310 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1310
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1181.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %262 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %262
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !98, !noalias !100
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1180.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !106

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %indvars.iv1152 = phi i64 [ 0, %polly.loop_header627.preheader ], [ %indvars.iv.next1153, %polly.loop_exit635 ]
  %polly.indvar630 = phi i64 [ 0, %polly.loop_header627.preheader ], [ %polly.indvar_next631, %polly.loop_exit635 ]
  %smin1176 = call i64 @llvm.smin.i64(i64 %indvars.iv1152, i64 -968)
  %263 = add nsw i64 %smin1176, 1000
  %264 = shl nsw i64 %polly.indvar630, 5
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1153 = add nsw i64 %indvars.iv1152, -32
  %exitcond1179.not = icmp eq i64 %polly.indvar_next631, 32
  br i1 %exitcond1179.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %265 = mul nuw nsw i64 %polly.indvar636, 80
  %266 = shl nuw nsw i64 %polly.indvar636, 1
  %267 = lshr i64 %polly.indvar636, 1
  %268 = add nuw i64 %266, %267
  %269 = shl nuw nsw i64 %268, 5
  %270 = sub i64 %265, %269
  %271 = mul nsw i64 %polly.indvar636, -80
  %272 = add i64 %271, %269
  %273 = lshr i64 %polly.indvar636, 1
  %274 = add nuw i64 %indvars.iv1163, %273
  %275 = shl nuw nsw i64 %274, 5
  %276 = sub i64 %indvars.iv1161, %275
  %277 = add i64 %indvars.iv1168, %275
  %278 = mul nsw i64 %polly.indvar636, -80
  %279 = mul nuw nsw i64 %polly.indvar636, 80
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %280 = add nsw i64 %278, 1199
  %281 = shl nuw nsw i64 %polly.indvar636, 1
  %282 = add nuw nsw i64 %281, %273
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, -80
  %indvars.iv.next1162 = add nuw nsw i64 %indvars.iv1161, 80
  %indvars.iv.next1164 = add nuw nsw i64 %indvars.iv1163, 2
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -80
  %exitcond1178.not = icmp eq i64 %polly.indvar_next637, 15
  br i1 %exitcond1178.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %283 = add nuw nsw i64 %polly.indvar642, %264
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next643, %263
  br i1 %exitcond1155.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %284 = add nuw nsw i64 %polly.indvar648, %279
  %polly.access.mul.call2652 = mul nuw nsw i64 %284, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %283, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1149
  br i1 %exitcond1151.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit641
  %indvar1325 = phi i64 [ %indvar.next1326, %polly.loop_exit697 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1170 = phi i64 [ %indvars.iv.next1171, %polly.loop_exit697 ], [ %277, %polly.loop_exit641 ]
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166, %polly.loop_exit697 ], [ %276, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %282, %polly.loop_exit641 ]
  %285 = mul nsw i64 %indvar1325, -32
  %286 = add i64 %270, %285
  %smax1327 = call i64 @llvm.smax.i64(i64 %286, i64 0)
  %287 = shl nuw nsw i64 %indvar1325, 5
  %288 = add i64 %272, %287
  %289 = add i64 %smax1327, %288
  %smax1167 = call i64 @llvm.smax.i64(i64 %indvars.iv1165, i64 0)
  %290 = add i64 %smax1167, %indvars.iv1170
  %291 = shl nsw i64 %polly.indvar659, 5
  %292 = add nsw i64 %291, %278
  %293 = add nsw i64 %292, -1
  %.inv943 = icmp sgt i64 %292, 79
  %294 = select i1 %.inv943, i64 79, i64 %293
  %polly.loop_guard672 = icmp sgt i64 %294, -1
  %295 = icmp sgt i64 %292, 0
  %296 = select i1 %295, i64 %292, i64 0
  %297 = add nsw i64 %292, 31
  %298 = icmp slt i64 %280, %297
  %299 = select i1 %298, i64 %280, i64 %297
  %polly.loop_guard684.not = icmp sgt i64 %296, %299
  br i1 %polly.loop_guard672, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit683.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit683.us ], [ 0, %polly.loop_header656 ]
  %300 = add nuw nsw i64 %polly.indvar665.us, %264
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  br label %polly.loop_header669.us

polly.loop_header669.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header662.us ]
  %301 = add nuw nsw i64 %polly.indvar673.us, %279
  %polly.access.mul.call1677.us = mul nuw nsw i64 %301, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %300, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526.us = add nuw nsw i64 %polly.indvar673.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar673.us, %294
  br i1 %exitcond1158.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %296, %polly.loop_exit671.loopexit.us ]
  %302 = add nuw nsw i64 %polly.indvar685.us, %279
  %polly.access.mul.call1689.us = mul nsw i64 %302, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %300, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526693.us = add nuw nsw i64 %polly.indvar685.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %299
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_exit683.us

polly.loop_exit683.us:                            ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar_next666.us, %263
  br i1 %exitcond1160.not, label %polly.loop_header695.preheader, label %polly.loop_header662.us

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_exit683.us, label %polly.loop_header681.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_exit697:                               ; preds = %polly.loop_exit704, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp ult i64 %polly.indvar659, 37
  %indvars.iv.next1166 = add i64 %indvars.iv1165, -32
  %indvars.iv.next1171 = add i64 %indvars.iv1170, 32
  %indvar.next1326 = add i64 %indvar1325, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit683
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit683 ], [ 0, %polly.loop_header656.split ]
  %303 = add nuw nsw i64 %polly.indvar665, %264
  %polly.access.mul.Packed_MemRef_call1526692 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header681

polly.loop_exit683:                               ; preds = %polly.loop_header681
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next666, %263
  br i1 %exitcond1157.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_header695.preheader:                   ; preds = %polly.loop_exit683, %polly.loop_exit683.us, %polly.loop_header656.split
  %304 = sub nsw i64 %279, %291
  %305 = icmp sgt i64 %304, 0
  %306 = select i1 %305, i64 %304, i64 0
  %307 = mul nsw i64 %polly.indvar659, -32
  %308 = icmp slt i64 %307, -1168
  %309 = select i1 %308, i64 %307, i64 -1168
  %310 = add nsw i64 %309, 1199
  %polly.loop_guard705.not = icmp sgt i64 %306, %310
  br i1 %polly.loop_guard705.not, label %polly.loop_exit697, label %polly.loop_header695

polly.loop_header681:                             ; preds = %polly.loop_header662, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %296, %polly.loop_header662 ]
  %311 = add nuw nsw i64 %polly.indvar685, %279
  %polly.access.mul.call1689 = mul nsw i64 %311, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %303, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526693 = add nuw nsw i64 %polly.indvar685, %polly.access.mul.Packed_MemRef_call1526692
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %299
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_exit683

polly.loop_header695:                             ; preds = %polly.loop_header695.preheader, %polly.loop_exit704
  %polly.indvar698 = phi i64 [ %polly.indvar_next699, %polly.loop_exit704 ], [ 0, %polly.loop_header695.preheader ]
  %polly.access.mul.Packed_MemRef_call1526717 = mul nuw nsw i64 %polly.indvar698, 1200
  br label %polly.loop_header702

polly.loop_exit704:                               ; preds = %polly.loop_exit712
  %polly.indvar_next699 = add nuw nsw i64 %polly.indvar698, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar_next699, %263
  br i1 %exitcond1177.not, label %polly.loop_exit697, label %polly.loop_header695

polly.loop_header702:                             ; preds = %polly.loop_header695, %polly.loop_exit712
  %indvar1328 = phi i64 [ 0, %polly.loop_header695 ], [ %indvar.next1329, %polly.loop_exit712 ]
  %indvars.iv1172 = phi i64 [ %290, %polly.loop_header695 ], [ %indvars.iv.next1173, %polly.loop_exit712 ]
  %polly.indvar706 = phi i64 [ %306, %polly.loop_header695 ], [ %polly.indvar_next707, %polly.loop_exit712 ]
  %312 = add i64 %289, %indvar1328
  %smin1330 = call i64 @llvm.smin.i64(i64 %312, i64 79)
  %313 = add nsw i64 %smin1330, 1
  %smin1174 = call i64 @llvm.smin.i64(i64 %indvars.iv1172, i64 79)
  %314 = add nsw i64 %polly.indvar706, %292
  %polly.loop_guard7131221 = icmp sgt i64 %314, -1
  br i1 %polly.loop_guard7131221, label %polly.loop_header710.preheader, label %polly.loop_exit712

polly.loop_header710.preheader:                   ; preds = %polly.loop_header702
  %315 = add nuw nsw i64 %polly.indvar706, %291
  %polly.access.add.Packed_MemRef_call2528722 = add nsw i64 %314, %polly.access.mul.Packed_MemRef_call1526717
  %polly.access.Packed_MemRef_call2528723 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722
  %_p_scalar_724 = load double, double* %polly.access.Packed_MemRef_call2528723, align 8
  %polly.access.Packed_MemRef_call1526731 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722
  %_p_scalar_732 = load double, double* %polly.access.Packed_MemRef_call1526731, align 8
  %316 = mul i64 %315, 9600
  %min.iters.check1331 = icmp ult i64 %313, 4
  br i1 %min.iters.check1331, label %polly.loop_header710.preheader1454, label %vector.ph1332

vector.ph1332:                                    ; preds = %polly.loop_header710.preheader
  %n.vec1334 = and i64 %313, -4
  %broadcast.splatinsert1340 = insertelement <4 x double> poison, double %_p_scalar_724, i32 0
  %broadcast.splat1341 = shufflevector <4 x double> %broadcast.splatinsert1340, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1343 = insertelement <4 x double> poison, double %_p_scalar_732, i32 0
  %broadcast.splat1344 = shufflevector <4 x double> %broadcast.splatinsert1343, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1332
  %index1335 = phi i64 [ 0, %vector.ph1332 ], [ %index.next1336, %vector.body1324 ]
  %317 = add nuw nsw i64 %index1335, %279
  %318 = add nuw nsw i64 %index1335, %polly.access.mul.Packed_MemRef_call1526717
  %319 = getelementptr double, double* %Packed_MemRef_call1526, i64 %318
  %320 = bitcast double* %319 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %320, align 8
  %321 = fmul fast <4 x double> %broadcast.splat1341, %wide.load1339
  %322 = getelementptr double, double* %Packed_MemRef_call2528, i64 %318
  %323 = bitcast double* %322 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %323, align 8
  %324 = fmul fast <4 x double> %broadcast.splat1344, %wide.load1342
  %325 = shl i64 %317, 3
  %326 = add i64 %325, %316
  %327 = getelementptr i8, i8* %call, i64 %326
  %328 = bitcast i8* %327 to <4 x double>*
  %wide.load1345 = load <4 x double>, <4 x double>* %328, align 8, !alias.scope !98, !noalias !100
  %329 = fadd fast <4 x double> %324, %321
  %330 = fmul fast <4 x double> %329, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %331 = fadd fast <4 x double> %330, %wide.load1345
  %332 = bitcast i8* %327 to <4 x double>*
  store <4 x double> %331, <4 x double>* %332, align 8, !alias.scope !98, !noalias !100
  %index.next1336 = add i64 %index1335, 4
  %333 = icmp eq i64 %index.next1336, %n.vec1334
  br i1 %333, label %middle.block1322, label %vector.body1324, !llvm.loop !109

middle.block1322:                                 ; preds = %vector.body1324
  %cmp.n1338 = icmp eq i64 %313, %n.vec1334
  br i1 %cmp.n1338, label %polly.loop_exit712, label %polly.loop_header710.preheader1454

polly.loop_header710.preheader1454:               ; preds = %polly.loop_header710.preheader, %middle.block1322
  %polly.indvar714.ph = phi i64 [ 0, %polly.loop_header710.preheader ], [ %n.vec1334, %middle.block1322 ]
  br label %polly.loop_header710

polly.loop_exit712:                               ; preds = %polly.loop_header710, %middle.block1322, %polly.loop_header702
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %polly.loop_cond708.not.not = icmp slt i64 %polly.indvar706, %310
  %indvars.iv.next1173 = add i64 %indvars.iv1172, 1
  %indvar.next1329 = add i64 %indvar1328, 1
  br i1 %polly.loop_cond708.not.not, label %polly.loop_header702, label %polly.loop_exit704

polly.loop_header710:                             ; preds = %polly.loop_header710.preheader1454, %polly.loop_header710
  %polly.indvar714 = phi i64 [ %polly.indvar_next715, %polly.loop_header710 ], [ %polly.indvar714.ph, %polly.loop_header710.preheader1454 ]
  %334 = add nuw nsw i64 %polly.indvar714, %279
  %polly.access.add.Packed_MemRef_call1526718 = add nuw nsw i64 %polly.indvar714, %polly.access.mul.Packed_MemRef_call1526717
  %polly.access.Packed_MemRef_call1526719 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718
  %_p_scalar_720 = load double, double* %polly.access.Packed_MemRef_call1526719, align 8
  %p_mul27.i = fmul fast double %_p_scalar_724, %_p_scalar_720
  %polly.access.Packed_MemRef_call2528727 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718
  %_p_scalar_728 = load double, double* %polly.access.Packed_MemRef_call2528727, align 8
  %p_mul37.i = fmul fast double %_p_scalar_732, %_p_scalar_728
  %335 = shl i64 %334, 3
  %336 = add i64 %335, %316
  %scevgep733 = getelementptr i8, i8* %call, i64 %336
  %scevgep733734 = bitcast i8* %scevgep733 to double*
  %_p_scalar_735 = load double, double* %scevgep733734, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_735
  store double %p_add42.i, double* %scevgep733734, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next715 = add nuw nsw i64 %polly.indvar714, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar714, %smin1174
  br i1 %exitcond1175.not, label %polly.loop_exit712, label %polly.loop_header710, !llvm.loop !110

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %indvars.iv1206 = phi i64 [ %indvars.iv.next1207, %polly.loop_exit870 ], [ 0, %entry ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %smin1208 = call i64 @llvm.smin.i64(i64 %indvars.iv1206, i64 -1168)
  %337 = shl nsw i64 %polly.indvar865, 5
  %338 = add nsw i64 %smin1208, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1207 = add nsw i64 %indvars.iv1206, -32
  %exitcond1211.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1211.not, label %polly.loop_header889, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1202 = phi i64 [ %indvars.iv.next1203, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %339 = mul nsw i64 %polly.indvar871, -32
  %smin = call i64 @llvm.smin.i64(i64 %339, i64 -1168)
  %340 = add nsw i64 %smin, 1200
  %smin1204 = call i64 @llvm.smin.i64(i64 %indvars.iv1202, i64 -1168)
  %341 = shl nsw i64 %polly.indvar871, 5
  %342 = add nsw i64 %smin1204, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1203 = add nsw i64 %indvars.iv1202, -32
  %exitcond1210.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1210.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %343 = add nuw nsw i64 %polly.indvar877, %337
  %344 = trunc i64 %343 to i32
  %345 = mul nuw nsw i64 %343, 9600
  %min.iters.check = icmp eq i64 %340, 0
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1252

vector.ph1252:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1259 = insertelement <4 x i64> poison, i64 %341, i32 0
  %broadcast.splat1260 = shufflevector <4 x i64> %broadcast.splatinsert1259, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1261 = insertelement <4 x i32> poison, i32 %344, i32 0
  %broadcast.splat1262 = shufflevector <4 x i32> %broadcast.splatinsert1261, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1252
  %index1253 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1254, %vector.body1251 ]
  %vec.ind1257 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1252 ], [ %vec.ind.next1258, %vector.body1251 ]
  %346 = add nuw nsw <4 x i64> %vec.ind1257, %broadcast.splat1260
  %347 = trunc <4 x i64> %346 to <4 x i32>
  %348 = mul <4 x i32> %broadcast.splat1262, %347
  %349 = add <4 x i32> %348, <i32 3, i32 3, i32 3, i32 3>
  %350 = urem <4 x i32> %349, <i32 1200, i32 1200, i32 1200, i32 1200>
  %351 = sitofp <4 x i32> %350 to <4 x double>
  %352 = fmul fast <4 x double> %351, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %353 = extractelement <4 x i64> %346, i32 0
  %354 = shl i64 %353, 3
  %355 = add nuw nsw i64 %354, %345
  %356 = getelementptr i8, i8* %call, i64 %355
  %357 = bitcast i8* %356 to <4 x double>*
  store <4 x double> %352, <4 x double>* %357, align 8, !alias.scope !111, !noalias !113
  %index.next1254 = add i64 %index1253, 4
  %vec.ind.next1258 = add <4 x i64> %vec.ind1257, <i64 4, i64 4, i64 4, i64 4>
  %358 = icmp eq i64 %index.next1254, %340
  br i1 %358, label %polly.loop_exit882, label %vector.body1251, !llvm.loop !116

polly.loop_exit882:                               ; preds = %vector.body1251, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1209.not = icmp eq i64 %polly.indvar877, %338
  br i1 %exitcond1209.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %359 = add nuw nsw i64 %polly.indvar883, %341
  %360 = trunc i64 %359 to i32
  %361 = mul i32 %360, %344
  %362 = add i32 %361, 3
  %363 = urem i32 %362, 1200
  %p_conv31.i = sitofp i32 %363 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %364 = shl i64 %359, 3
  %365 = add nuw nsw i64 %364, %345
  %scevgep886 = getelementptr i8, i8* %call, i64 %365
  %scevgep886887 = bitcast i8* %scevgep886 to double*
  store double %p_div33.i, double* %scevgep886887, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1205.not = icmp eq i64 %polly.indvar883, %342
  br i1 %exitcond1205.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !117

polly.loop_header889:                             ; preds = %polly.loop_exit870, %polly.loop_exit897
  %indvars.iv1196 = phi i64 [ %indvars.iv.next1197, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %smin1198 = call i64 @llvm.smin.i64(i64 %indvars.iv1196, i64 -1168)
  %366 = shl nsw i64 %polly.indvar892, 5
  %367 = add nsw i64 %smin1198, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1197 = add nsw i64 %indvars.iv1196, -32
  %exitcond1201.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1201.not, label %polly.loop_header915, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1192 = phi i64 [ %indvars.iv.next1193, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %368 = mul nsw i64 %polly.indvar898, -32
  %smin1266 = call i64 @llvm.smin.i64(i64 %368, i64 -968)
  %369 = add nsw i64 %smin1266, 1000
  %smin1194 = call i64 @llvm.smin.i64(i64 %indvars.iv1192, i64 -968)
  %370 = shl nsw i64 %polly.indvar898, 5
  %371 = add nsw i64 %smin1194, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1193 = add nsw i64 %indvars.iv1192, -32
  %exitcond1200.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1200.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %372 = add nuw nsw i64 %polly.indvar904, %366
  %373 = trunc i64 %372 to i32
  %374 = mul nuw nsw i64 %372, 8000
  %min.iters.check1267 = icmp eq i64 %369, 0
  br i1 %min.iters.check1267, label %polly.loop_header907, label %vector.ph1268

vector.ph1268:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1277 = insertelement <4 x i64> poison, i64 %370, i32 0
  %broadcast.splat1278 = shufflevector <4 x i64> %broadcast.splatinsert1277, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1279 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat1280 = shufflevector <4 x i32> %broadcast.splatinsert1279, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1265

vector.body1265:                                  ; preds = %vector.body1265, %vector.ph1268
  %index1271 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1272, %vector.body1265 ]
  %vec.ind1275 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1268 ], [ %vec.ind.next1276, %vector.body1265 ]
  %375 = add nuw nsw <4 x i64> %vec.ind1275, %broadcast.splat1278
  %376 = trunc <4 x i64> %375 to <4 x i32>
  %377 = mul <4 x i32> %broadcast.splat1280, %376
  %378 = add <4 x i32> %377, <i32 2, i32 2, i32 2, i32 2>
  %379 = urem <4 x i32> %378, <i32 1000, i32 1000, i32 1000, i32 1000>
  %380 = sitofp <4 x i32> %379 to <4 x double>
  %381 = fmul fast <4 x double> %380, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %382 = extractelement <4 x i64> %375, i32 0
  %383 = shl i64 %382, 3
  %384 = add nuw nsw i64 %383, %374
  %385 = getelementptr i8, i8* %call2, i64 %384
  %386 = bitcast i8* %385 to <4 x double>*
  store <4 x double> %381, <4 x double>* %386, align 8, !alias.scope !115, !noalias !118
  %index.next1272 = add i64 %index1271, 4
  %vec.ind.next1276 = add <4 x i64> %vec.ind1275, <i64 4, i64 4, i64 4, i64 4>
  %387 = icmp eq i64 %index.next1272, %369
  br i1 %387, label %polly.loop_exit909, label %vector.body1265, !llvm.loop !119

polly.loop_exit909:                               ; preds = %vector.body1265, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1199.not = icmp eq i64 %polly.indvar904, %367
  br i1 %exitcond1199.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %388 = add nuw nsw i64 %polly.indvar910, %370
  %389 = trunc i64 %388 to i32
  %390 = mul i32 %389, %373
  %391 = add i32 %390, 2
  %392 = urem i32 %391, 1000
  %p_conv10.i = sitofp i32 %392 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %393 = shl i64 %388, 3
  %394 = add nuw nsw i64 %393, %374
  %scevgep913 = getelementptr i8, i8* %call2, i64 %394
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div12.i, double* %scevgep913914, align 8, !alias.scope !115, !noalias !118
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1195.not = icmp eq i64 %polly.indvar910, %371
  br i1 %exitcond1195.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !120

polly.loop_header915:                             ; preds = %polly.loop_exit897, %polly.loop_exit923
  %indvars.iv1186 = phi i64 [ %indvars.iv.next1187, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %smin1188 = call i64 @llvm.smin.i64(i64 %indvars.iv1186, i64 -1168)
  %395 = shl nsw i64 %polly.indvar918, 5
  %396 = add nsw i64 %smin1188, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1187 = add nsw i64 %indvars.iv1186, -32
  %exitcond1191.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1191.not, label %init_array.exit, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1182 = phi i64 [ %indvars.iv.next1183, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %397 = mul nsw i64 %polly.indvar924, -32
  %smin1284 = call i64 @llvm.smin.i64(i64 %397, i64 -968)
  %398 = add nsw i64 %smin1284, 1000
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 -968)
  %399 = shl nsw i64 %polly.indvar924, 5
  %400 = add nsw i64 %smin1184, 999
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1183 = add nsw i64 %indvars.iv1182, -32
  %exitcond1190.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1190.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %401 = add nuw nsw i64 %polly.indvar930, %395
  %402 = trunc i64 %401 to i32
  %403 = mul nuw nsw i64 %401, 8000
  %min.iters.check1285 = icmp eq i64 %398, 0
  br i1 %min.iters.check1285, label %polly.loop_header933, label %vector.ph1286

vector.ph1286:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1295 = insertelement <4 x i64> poison, i64 %399, i32 0
  %broadcast.splat1296 = shufflevector <4 x i64> %broadcast.splatinsert1295, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1297 = insertelement <4 x i32> poison, i32 %402, i32 0
  %broadcast.splat1298 = shufflevector <4 x i32> %broadcast.splatinsert1297, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %vector.ph1286
  %index1289 = phi i64 [ 0, %vector.ph1286 ], [ %index.next1290, %vector.body1283 ]
  %vec.ind1293 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1286 ], [ %vec.ind.next1294, %vector.body1283 ]
  %404 = add nuw nsw <4 x i64> %vec.ind1293, %broadcast.splat1296
  %405 = trunc <4 x i64> %404 to <4 x i32>
  %406 = mul <4 x i32> %broadcast.splat1298, %405
  %407 = add <4 x i32> %406, <i32 1, i32 1, i32 1, i32 1>
  %408 = urem <4 x i32> %407, <i32 1200, i32 1200, i32 1200, i32 1200>
  %409 = sitofp <4 x i32> %408 to <4 x double>
  %410 = fmul fast <4 x double> %409, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %411 = extractelement <4 x i64> %404, i32 0
  %412 = shl i64 %411, 3
  %413 = add nuw nsw i64 %412, %403
  %414 = getelementptr i8, i8* %call1, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %410, <4 x double>* %415, align 8, !alias.scope !114, !noalias !121
  %index.next1290 = add i64 %index1289, 4
  %vec.ind.next1294 = add <4 x i64> %vec.ind1293, <i64 4, i64 4, i64 4, i64 4>
  %416 = icmp eq i64 %index.next1290, %398
  br i1 %416, label %polly.loop_exit935, label %vector.body1283, !llvm.loop !122

polly.loop_exit935:                               ; preds = %vector.body1283, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1189.not = icmp eq i64 %polly.indvar930, %396
  br i1 %exitcond1189.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %417 = add nuw nsw i64 %polly.indvar936, %399
  %418 = trunc i64 %417 to i32
  %419 = mul i32 %418, %402
  %420 = add i32 %419, 1
  %421 = urem i32 %420, 1200
  %p_conv.i = sitofp i32 %421 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %422 = shl i64 %417, 3
  %423 = add nuw nsw i64 %422, %403
  %scevgep940 = getelementptr i8, i8* %call1, i64 %423
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div.i, double* %scevgep940941, align 8, !alias.scope !114, !noalias !121
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar936, %400
  br i1 %exitcond1185.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !123
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

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
!26 = !{!"llvm.loop.tile.size", i32 80}
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
!47 = distinct !{!47, !12, !24, !48, !49, !50, !35, !51, !60}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !24, !53, !54, !55, !56, !57}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.interchange.followup_interchanged", !58}
!58 = distinct !{!58, !12, !24, !53, !44, !59, !46}
!59 = !{!"llvm.data.pack.array", !22}
!60 = !{!"llvm.loop.tile.followup_tile", !61}
!61 = distinct !{!61, !12, !24, !62}
!62 = !{!"llvm.loop.id", !"i2"}
!63 = distinct !{!63, !12, !13}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !4, i64 0}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75, !76, !77}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !72, !"polly.alias.scope.Packed_MemRef_call1"}
!77 = distinct !{!77, !72, !"polly.alias.scope.Packed_MemRef_call2"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !80, !13}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!71, !74, !76, !77}
!82 = !{!71, !75, !76, !77}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !80, !13}
!85 = distinct !{!85, !86, !"polly.alias.scope.MemRef_call"}
!86 = distinct !{!86, !"polly.alias.scope.domain"}
!87 = !{!88, !89, !90, !91}
!88 = distinct !{!88, !86, !"polly.alias.scope.MemRef_call1"}
!89 = distinct !{!89, !86, !"polly.alias.scope.MemRef_call2"}
!90 = distinct !{!90, !86, !"polly.alias.scope.Packed_MemRef_call1"}
!91 = distinct !{!91, !86, !"polly.alias.scope.Packed_MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !80, !13}
!94 = !{!85, !88, !90, !91}
!95 = !{!85, !89, !90, !91}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !80, !13}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102, !103, !104}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !99, !"polly.alias.scope.Packed_MemRef_call1"}
!104 = distinct !{!104, !99, !"polly.alias.scope.Packed_MemRef_call2"}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !80, !13}
!107 = !{!98, !101, !103, !104}
!108 = !{!98, !102, !103, !104}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !80, !13}
!111 = distinct !{!111, !112, !"polly.alias.scope.MemRef_call"}
!112 = distinct !{!112, !"polly.alias.scope.domain"}
!113 = !{!114, !115}
!114 = distinct !{!114, !112, !"polly.alias.scope.MemRef_call1"}
!115 = distinct !{!115, !112, !"polly.alias.scope.MemRef_call2"}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !80, !13}
!118 = !{!114, !111}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !80, !13}
!121 = !{!115, !111}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !80, !13}
