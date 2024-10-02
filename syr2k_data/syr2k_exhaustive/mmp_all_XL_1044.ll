; ModuleID = 'syr2k_exhaustive/mmp_all_XL_1044.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_1044.c"
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
  br i1 %57, label %middle.block1346, label %vector.body1348, !llvm.loop !64

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
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

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
  br i1 %68, label %middle.block1396, label %vector.body1398, !llvm.loop !66

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
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
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
  %malloccall = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  %malloccall136 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
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
  %wide.load1421 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1421, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1418 = add i64 %index1417, 4
  %95 = icmp eq i64 %index.next1418, %n.vec1416
  br i1 %95, label %middle.block1408, label %vector.body1410, !llvm.loop !79

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
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1114.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1088 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1089, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1088, i64 -936)
  %97 = add nsw i64 %smin1110, 1000
  %98 = shl nsw i64 %polly.indvar203, 6
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, -64
  %exitcond1113.not = icmp eq i64 %polly.indvar_next204, 16
  br i1 %exitcond1113.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 2, %polly.loop_header200 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = mul nsw i64 %polly.indvar209, -32
  %100 = add nuw i64 %polly.indvar209, 2
  %101 = udiv i64 %100, 3
  %102 = mul nuw nsw i64 %101, 96
  %103 = add i64 %99, %102
  %104 = shl nuw nsw i64 %polly.indvar209, 5
  %105 = sub nsw i64 %104, %102
  %106 = udiv i64 %indvars.iv1098, 3
  %107 = mul nuw nsw i64 %106, 96
  %108 = add i64 %indvars.iv1096, %107
  %109 = sub nsw i64 %indvars.iv1102, %107
  %110 = mul nsw i64 %polly.indvar209, -256
  %111 = shl nsw i64 %polly.indvar209, 8
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %112 = add nsw i64 %110, 1199
  %113 = mul nuw nsw i64 %polly.indvar209, 3
  %114 = add nuw nsw i64 %polly.indvar209, 2
  %pexp.p_div_q = udiv i64 %114, 3
  %115 = sub nsw i64 %113, %pexp.p_div_q
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, -32
  %indvars.iv.next1099 = add nuw nsw i64 %indvars.iv1098, 1
  %indvars.iv.next1103 = add nuw nsw i64 %indvars.iv1102, 32
  %exitcond1112.not = icmp eq i64 %polly.indvar_next210, 5
  br i1 %exitcond1112.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %116 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1090.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %117 = add nuw nsw i64 %polly.indvar221, %111
  %polly.access.mul.call2225 = mul nuw nsw i64 %117, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %116, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit214
  %indvar1425 = phi i64 [ %indvar.next1426, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit267 ], [ %109, %polly.loop_exit214 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit267 ], [ %108, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %115, %polly.loop_exit214 ]
  %118 = mul nsw i64 %indvar1425, -96
  %119 = add i64 %103, %118
  %smax1427 = call i64 @llvm.smax.i64(i64 %119, i64 0)
  %120 = mul nuw nsw i64 %indvar1425, 96
  %121 = add i64 %105, %120
  %122 = add i64 %smax1427, %121
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1100, i64 0)
  %123 = add i64 %smax, %indvars.iv1104
  %124 = mul nsw i64 %polly.indvar231, 96
  %125 = add nsw i64 %124, %110
  %126 = add nsw i64 %125, -1
  %.inv = icmp sgt i64 %125, 255
  %127 = select i1 %.inv, i64 255, i64 %126
  %polly.loop_guard = icmp sgt i64 %127, -1
  %128 = icmp sgt i64 %125, 0
  %129 = select i1 %128, i64 %125, i64 0
  %130 = add nsw i64 %125, 95
  %131 = icmp slt i64 %112, %130
  %132 = select i1 %131, i64 %112, i64 %130
  %polly.loop_guard254.not = icmp sgt i64 %129, %132
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %133 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %134 = add nuw nsw i64 %polly.indvar243.us, %111
  %polly.access.mul.call1247.us = mul nuw nsw i64 %134, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %133, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar243.us, %127
  br i1 %exitcond1093.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %129, %polly.loop_exit242.loopexit.us ]
  %135 = add nuw nsw i64 %polly.indvar255.us, %111
  %polly.access.mul.call1259.us = mul nsw i64 %135, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %133, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %132
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
  %polly.indvar_next232 = add nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp slt i64 %polly.indvar231, 12
  %indvars.iv.next1101 = add i64 %indvars.iv1100, -96
  %indvars.iv.next1105 = add i64 %indvars.iv1104, 96
  %indvar.next1426 = add i64 %indvar1425, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228.split ]
  %136 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1092.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253, %polly.loop_exit253.us, %polly.loop_header228.split
  %137 = sub nsw i64 %111, %124
  %138 = icmp sgt i64 %137, 0
  %139 = select i1 %138, i64 %137, i64 0
  %140 = mul nsw i64 %polly.indvar231, -96
  %141 = icmp slt i64 %140, -1104
  %142 = select i1 %141, i64 %140, i64 -1104
  %143 = add nsw i64 %142, 1199
  %polly.loop_guard275.not = icmp sgt i64 %139, %143
  br i1 %polly.loop_guard275.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %129, %polly.loop_header234 ]
  %144 = add nuw nsw i64 %polly.indvar255, %111
  %polly.access.mul.call1259 = mul nsw i64 %144, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %136, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %132
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
  %indvars.iv1106 = phi i64 [ %123, %polly.loop_header265 ], [ %indvars.iv.next1107, %polly.loop_exit282 ]
  %polly.indvar276 = phi i64 [ %139, %polly.loop_header265 ], [ %polly.indvar_next277, %polly.loop_exit282 ]
  %145 = add i64 %122, %indvar1428
  %smin1430 = call i64 @llvm.smin.i64(i64 %145, i64 255)
  %146 = add nsw i64 %smin1430, 1
  %smin1108 = call i64 @llvm.smin.i64(i64 %indvars.iv1106, i64 255)
  %147 = add nsw i64 %polly.indvar276, %125
  %polly.loop_guard2831219 = icmp sgt i64 %147, -1
  br i1 %polly.loop_guard2831219, label %polly.loop_header280.preheader, label %polly.loop_exit282

polly.loop_header280.preheader:                   ; preds = %polly.loop_header272
  %148 = add nsw i64 %polly.indvar276, %124
  %polly.access.add.Packed_MemRef_call2292 = add nsw i64 %147, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call2293 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call2293, align 8
  %polly.access.Packed_MemRef_call1301 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292
  %_p_scalar_302 = load double, double* %polly.access.Packed_MemRef_call1301, align 8
  %149 = mul i64 %148, 9600
  %min.iters.check1431 = icmp ult i64 %146, 4
  br i1 %min.iters.check1431, label %polly.loop_header280.preheader1446, label %vector.ph1432

vector.ph1432:                                    ; preds = %polly.loop_header280.preheader
  %n.vec1434 = and i64 %146, -4
  %broadcast.splatinsert1440 = insertelement <4 x double> poison, double %_p_scalar_294, i32 0
  %broadcast.splat1441 = shufflevector <4 x double> %broadcast.splatinsert1440, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1443 = insertelement <4 x double> poison, double %_p_scalar_302, i32 0
  %broadcast.splat1444 = shufflevector <4 x double> %broadcast.splatinsert1443, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1424

vector.body1424:                                  ; preds = %vector.body1424, %vector.ph1432
  %index1435 = phi i64 [ 0, %vector.ph1432 ], [ %index.next1436, %vector.body1424 ]
  %150 = add nuw nsw i64 %index1435, %111
  %151 = add nuw nsw i64 %index1435, %polly.access.mul.Packed_MemRef_call1287
  %152 = getelementptr double, double* %Packed_MemRef_call1, i64 %151
  %153 = bitcast double* %152 to <4 x double>*
  %wide.load1439 = load <4 x double>, <4 x double>* %153, align 8
  %154 = fmul fast <4 x double> %broadcast.splat1441, %wide.load1439
  %155 = getelementptr double, double* %Packed_MemRef_call2, i64 %151
  %156 = bitcast double* %155 to <4 x double>*
  %wide.load1442 = load <4 x double>, <4 x double>* %156, align 8
  %157 = fmul fast <4 x double> %broadcast.splat1444, %wide.load1442
  %158 = shl i64 %150, 3
  %159 = add i64 %158, %149
  %160 = getelementptr i8, i8* %call, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  %wide.load1445 = load <4 x double>, <4 x double>* %161, align 8, !alias.scope !72, !noalias !74
  %162 = fadd fast <4 x double> %157, %154
  %163 = fmul fast <4 x double> %162, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %164 = fadd fast <4 x double> %163, %wide.load1445
  %165 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %164, <4 x double>* %165, align 8, !alias.scope !72, !noalias !74
  %index.next1436 = add i64 %index1435, 4
  %166 = icmp eq i64 %index.next1436, %n.vec1434
  br i1 %166, label %middle.block1422, label %vector.body1424, !llvm.loop !84

middle.block1422:                                 ; preds = %vector.body1424
  %cmp.n1438 = icmp eq i64 %146, %n.vec1434
  br i1 %cmp.n1438, label %polly.loop_exit282, label %polly.loop_header280.preheader1446

polly.loop_header280.preheader1446:               ; preds = %polly.loop_header280.preheader, %middle.block1422
  %polly.indvar284.ph = phi i64 [ 0, %polly.loop_header280.preheader ], [ %n.vec1434, %middle.block1422 ]
  br label %polly.loop_header280

polly.loop_exit282:                               ; preds = %polly.loop_header280, %middle.block1422, %polly.loop_header272
  %polly.indvar_next277 = add nuw nsw i64 %polly.indvar276, 1
  %polly.loop_cond278.not.not = icmp slt i64 %polly.indvar276, %143
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 1
  %indvar.next1429 = add i64 %indvar1428, 1
  br i1 %polly.loop_cond278.not.not, label %polly.loop_header272, label %polly.loop_exit274

polly.loop_header280:                             ; preds = %polly.loop_header280.preheader1446, %polly.loop_header280
  %polly.indvar284 = phi i64 [ %polly.indvar_next285, %polly.loop_header280 ], [ %polly.indvar284.ph, %polly.loop_header280.preheader1446 ]
  %167 = add nuw nsw i64 %polly.indvar284, %111
  %polly.access.add.Packed_MemRef_call1288 = add nuw nsw i64 %polly.indvar284, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call1289 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call1289, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_294, %_p_scalar_290
  %polly.access.Packed_MemRef_call2297 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288
  %_p_scalar_298 = load double, double* %polly.access.Packed_MemRef_call2297, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_302, %_p_scalar_298
  %168 = shl i64 %167, 3
  %169 = add i64 %168, %149
  %scevgep303 = getelementptr i8, i8* %call, i64 %169
  %scevgep303304 = bitcast i8* %scevgep303 to double*
  %_p_scalar_305 = load double, double* %scevgep303304, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_305
  store double %p_add42.i118, double* %scevgep303304, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285 = add nuw nsw i64 %polly.indvar284, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar284, %smin1108
  br i1 %exitcond1109.not, label %polly.loop_exit282, label %polly.loop_header280, !llvm.loop !85

polly.start308:                                   ; preds = %kernel_syr2k.exit
  %malloccall310 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  %malloccall312 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header396

polly.exiting309:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall310)
  tail call void @free(i8* %malloccall312)
  br label %kernel_syr2k.exit90

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.start308
  %indvar1361 = phi i64 [ %indvar.next1362, %polly.loop_exit404 ], [ 0, %polly.start308 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 1, %polly.start308 ]
  %170 = add i64 %indvar1361, 1
  %171 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %171
  %min.iters.check1363 = icmp ult i64 %170, 4
  br i1 %min.iters.check1363, label %polly.loop_header402.preheader, label %vector.ph1364

vector.ph1364:                                    ; preds = %polly.loop_header396
  %n.vec1366 = and i64 %170, -4
  br label %vector.body1360

vector.body1360:                                  ; preds = %vector.body1360, %vector.ph1364
  %index1367 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1368, %vector.body1360 ]
  %172 = shl nuw nsw i64 %index1367, 3
  %173 = getelementptr i8, i8* %scevgep408, i64 %172
  %174 = bitcast i8* %173 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %174, align 8, !alias.scope !86, !noalias !88
  %175 = fmul fast <4 x double> %wide.load1371, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %176 = bitcast i8* %173 to <4 x double>*
  store <4 x double> %175, <4 x double>* %176, align 8, !alias.scope !86, !noalias !88
  %index.next1368 = add i64 %index1367, 4
  %177 = icmp eq i64 %index.next1368, %n.vec1366
  br i1 %177, label %middle.block1358, label %vector.body1360, !llvm.loop !93

middle.block1358:                                 ; preds = %vector.body1360
  %cmp.n1370 = icmp eq i64 %170, %n.vec1366
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
  %178 = shl nuw nsw i64 %polly.indvar405, 3
  %scevgep409 = getelementptr i8, i8* %scevgep408, i64 %178
  %scevgep409410 = bitcast i8* %scevgep409 to double*
  %_p_scalar_411 = load double, double* %scevgep409410, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_411, 1.200000e+00
  store double %p_mul.i57, double* %scevgep409410, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1147.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !94

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %indvars.iv1119 = phi i64 [ 0, %polly.loop_header412.preheader ], [ %indvars.iv.next1120, %polly.loop_exit420 ]
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header412.preheader ], [ %polly.indvar_next416, %polly.loop_exit420 ]
  %smin1143 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -936)
  %179 = add nsw i64 %smin1143, 1000
  %180 = shl nsw i64 %polly.indvar415, 6
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -64
  %exitcond1146.not = icmp eq i64 %polly.indvar_next416, 16
  br i1 %exitcond1146.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit443 ], [ 2, %polly.loop_header412 ]
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %181 = mul nsw i64 %polly.indvar421, -32
  %182 = add nuw i64 %polly.indvar421, 2
  %183 = udiv i64 %182, 3
  %184 = mul nuw nsw i64 %183, 96
  %185 = add i64 %181, %184
  %186 = shl nuw nsw i64 %polly.indvar421, 5
  %187 = sub nsw i64 %186, %184
  %188 = udiv i64 %indvars.iv1130, 3
  %189 = mul nuw nsw i64 %188, 96
  %190 = add i64 %indvars.iv1128, %189
  %191 = sub nsw i64 %indvars.iv1135, %189
  %192 = mul nsw i64 %polly.indvar421, -256
  %193 = shl nsw i64 %polly.indvar421, 8
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %194 = add nsw i64 %192, 1199
  %195 = mul nuw nsw i64 %polly.indvar421, 3
  %196 = add nuw nsw i64 %polly.indvar421, 2
  %pexp.p_div_q440 = udiv i64 %196, 3
  %197 = sub nsw i64 %195, %pexp.p_div_q440
  br label %polly.loop_header441

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -256
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %indvars.iv.next1131 = add nuw nsw i64 %indvars.iv1130, 1
  %indvars.iv.next1136 = add nuw nsw i64 %indvars.iv1135, 32
  %exitcond1145.not = icmp eq i64 %polly.indvar_next422, 5
  br i1 %exitcond1145.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %198 = add nuw nsw i64 %polly.indvar427, %180
  %polly.access.mul.Packed_MemRef_call2313 = mul nuw nsw i64 %polly.indvar427, 1200
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_header430
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next428, %179
  br i1 %exitcond1122.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_header430, %polly.loop_header424
  %polly.indvar433 = phi i64 [ 0, %polly.loop_header424 ], [ %polly.indvar_next434, %polly.loop_header430 ]
  %199 = add nuw nsw i64 %polly.indvar433, %193
  %polly.access.mul.call2437 = mul nuw nsw i64 %199, 1000
  %polly.access.add.call2438 = add nuw nsw i64 %198, %polly.access.mul.call2437
  %polly.access.call2439 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438
  %polly.access.call2439.load = load double, double* %polly.access.call2439, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2313 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call2313
  %polly.access.Packed_MemRef_call2313 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313
  store double %polly.access.call2439.load, double* %polly.access.Packed_MemRef_call2313, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1116
  br i1 %exitcond1118.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit426
  %indvar1375 = phi i64 [ %indvar.next1376, %polly.loop_exit482 ], [ 0, %polly.loop_exit426 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit482 ], [ %191, %polly.loop_exit426 ]
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit482 ], [ %190, %polly.loop_exit426 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %197, %polly.loop_exit426 ]
  %200 = mul nsw i64 %indvar1375, -96
  %201 = add i64 %185, %200
  %smax1377 = call i64 @llvm.smax.i64(i64 %201, i64 0)
  %202 = mul nuw nsw i64 %indvar1375, 96
  %203 = add i64 %187, %202
  %204 = add i64 %smax1377, %203
  %smax1134 = call i64 @llvm.smax.i64(i64 %indvars.iv1132, i64 0)
  %205 = add i64 %smax1134, %indvars.iv1137
  %206 = mul nsw i64 %polly.indvar444, 96
  %207 = add nsw i64 %206, %192
  %208 = add nsw i64 %207, -1
  %.inv942 = icmp sgt i64 %207, 255
  %209 = select i1 %.inv942, i64 255, i64 %208
  %polly.loop_guard457 = icmp sgt i64 %209, -1
  %210 = icmp sgt i64 %207, 0
  %211 = select i1 %210, i64 %207, i64 0
  %212 = add nsw i64 %207, 95
  %213 = icmp slt i64 %194, %212
  %214 = select i1 %213, i64 %194, i64 %212
  %polly.loop_guard469.not = icmp sgt i64 %211, %214
  br i1 %polly.loop_guard457, label %polly.loop_header447.us, label %polly.loop_header441.split

polly.loop_header447.us:                          ; preds = %polly.loop_header441, %polly.loop_exit468.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header441 ]
  %215 = add nuw nsw i64 %polly.indvar450.us, %180
  %polly.access.mul.Packed_MemRef_call1311.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %216 = add nuw nsw i64 %polly.indvar458.us, %193
  %polly.access.mul.call1462.us = mul nuw nsw i64 %216, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %215, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar458.us, %209
  br i1 %exitcond1125.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %211, %polly.loop_exit456.loopexit.us ]
  %217 = add nuw nsw i64 %polly.indvar470.us, %193
  %polly.access.mul.call1474.us = mul nsw i64 %217, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %215, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311479.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1311479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %214
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_exit456.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar_next451.us, %179
  br i1 %exitcond1127.not, label %polly.loop_header480.preheader, label %polly.loop_header447.us

polly.loop_exit456.loopexit.us:                   ; preds = %polly.loop_header454.us
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header441.split:                       ; preds = %polly.loop_header441
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_exit482:                               ; preds = %polly.loop_exit489, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp slt i64 %polly.indvar444, 12
  %indvars.iv.next1133 = add i64 %indvars.iv1132, -96
  %indvars.iv.next1138 = add i64 %indvars.iv1137, 96
  %indvar.next1376 = add i64 %indvar1375, 1
  br i1 %polly.loop_cond446, label %polly.loop_header441, label %polly.loop_exit443

polly.loop_header447:                             ; preds = %polly.loop_header441.split, %polly.loop_exit468
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_exit468 ], [ 0, %polly.loop_header441.split ]
  %218 = add nuw nsw i64 %polly.indvar450, %180
  %polly.access.mul.Packed_MemRef_call1311477 = mul nuw nsw i64 %polly.indvar450, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next451, %179
  br i1 %exitcond1124.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header441.split
  %219 = sub nsw i64 %193, %206
  %220 = icmp sgt i64 %219, 0
  %221 = select i1 %220, i64 %219, i64 0
  %222 = mul nsw i64 %polly.indvar444, -96
  %223 = icmp slt i64 %222, -1104
  %224 = select i1 %223, i64 %222, i64 -1104
  %225 = add nsw i64 %224, 1199
  %polly.loop_guard490.not = icmp sgt i64 %221, %225
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header466:                             ; preds = %polly.loop_header447, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %211, %polly.loop_header447 ]
  %226 = add nuw nsw i64 %polly.indvar470, %193
  %polly.access.mul.call1474 = mul nsw i64 %226, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %218, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1311477
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %214
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.loop_header480:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit489
  %polly.indvar483 = phi i64 [ %polly.indvar_next484, %polly.loop_exit489 ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1311502 = mul nuw nsw i64 %polly.indvar483, 1200
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_exit497
  %polly.indvar_next484 = add nuw nsw i64 %polly.indvar483, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar_next484, %179
  br i1 %exitcond1144.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header487:                             ; preds = %polly.loop_header480, %polly.loop_exit497
  %indvar1378 = phi i64 [ 0, %polly.loop_header480 ], [ %indvar.next1379, %polly.loop_exit497 ]
  %indvars.iv1139 = phi i64 [ %205, %polly.loop_header480 ], [ %indvars.iv.next1140, %polly.loop_exit497 ]
  %polly.indvar491 = phi i64 [ %221, %polly.loop_header480 ], [ %polly.indvar_next492, %polly.loop_exit497 ]
  %227 = add i64 %204, %indvar1378
  %smin1380 = call i64 @llvm.smin.i64(i64 %227, i64 255)
  %228 = add nsw i64 %smin1380, 1
  %smin1141 = call i64 @llvm.smin.i64(i64 %indvars.iv1139, i64 255)
  %229 = add nsw i64 %polly.indvar491, %207
  %polly.loop_guard4981220 = icmp sgt i64 %229, -1
  br i1 %polly.loop_guard4981220, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %230 = add nsw i64 %polly.indvar491, %206
  %polly.access.add.Packed_MemRef_call2313507 = add nsw i64 %229, %polly.access.mul.Packed_MemRef_call1311502
  %polly.access.Packed_MemRef_call2313508 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2313508, align 8
  %polly.access.Packed_MemRef_call1311516 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1311516, align 8
  %231 = mul i64 %230, 9600
  %min.iters.check1381 = icmp ult i64 %228, 4
  br i1 %min.iters.check1381, label %polly.loop_header495.preheader1450, label %vector.ph1382

vector.ph1382:                                    ; preds = %polly.loop_header495.preheader
  %n.vec1384 = and i64 %228, -4
  %broadcast.splatinsert1390 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1391 = shufflevector <4 x double> %broadcast.splatinsert1390, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1393 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1394 = shufflevector <4 x double> %broadcast.splatinsert1393, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %vector.ph1382
  %index1385 = phi i64 [ 0, %vector.ph1382 ], [ %index.next1386, %vector.body1374 ]
  %232 = add nuw nsw i64 %index1385, %193
  %233 = add nuw nsw i64 %index1385, %polly.access.mul.Packed_MemRef_call1311502
  %234 = getelementptr double, double* %Packed_MemRef_call1311, i64 %233
  %235 = bitcast double* %234 to <4 x double>*
  %wide.load1389 = load <4 x double>, <4 x double>* %235, align 8
  %236 = fmul fast <4 x double> %broadcast.splat1391, %wide.load1389
  %237 = getelementptr double, double* %Packed_MemRef_call2313, i64 %233
  %238 = bitcast double* %237 to <4 x double>*
  %wide.load1392 = load <4 x double>, <4 x double>* %238, align 8
  %239 = fmul fast <4 x double> %broadcast.splat1394, %wide.load1392
  %240 = shl i64 %232, 3
  %241 = add i64 %240, %231
  %242 = getelementptr i8, i8* %call, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  %wide.load1395 = load <4 x double>, <4 x double>* %243, align 8, !alias.scope !86, !noalias !88
  %244 = fadd fast <4 x double> %239, %236
  %245 = fmul fast <4 x double> %244, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %246 = fadd fast <4 x double> %245, %wide.load1395
  %247 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %246, <4 x double>* %247, align 8, !alias.scope !86, !noalias !88
  %index.next1386 = add i64 %index1385, 4
  %248 = icmp eq i64 %index.next1386, %n.vec1384
  br i1 %248, label %middle.block1372, label %vector.body1374, !llvm.loop !97

middle.block1372:                                 ; preds = %vector.body1374
  %cmp.n1388 = icmp eq i64 %228, %n.vec1384
  br i1 %cmp.n1388, label %polly.loop_exit497, label %polly.loop_header495.preheader1450

polly.loop_header495.preheader1450:               ; preds = %polly.loop_header495.preheader, %middle.block1372
  %polly.indvar499.ph = phi i64 [ 0, %polly.loop_header495.preheader ], [ %n.vec1384, %middle.block1372 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1372, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %225
  %indvars.iv.next1140 = add i64 %indvars.iv1139, 1
  %indvar.next1379 = add i64 %indvar1378, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_exit489

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1450, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1450 ]
  %249 = add nuw nsw i64 %polly.indvar499, %193
  %polly.access.add.Packed_MemRef_call1311503 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1311502
  %polly.access.Packed_MemRef_call1311504 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1311504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2313512 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2313512, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_517, %_p_scalar_513
  %250 = shl i64 %249, 3
  %251 = add i64 %250, %231
  %scevgep518 = getelementptr i8, i8* %call, i64 %251
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_520
  store double %p_add42.i79, double* %scevgep518519, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar499, %smin1141
  br i1 %exitcond1142.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !98

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  %malloccall527 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %252 = add i64 %indvar, 1
  %253 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %253
  %min.iters.check1313 = icmp ult i64 %252, 4
  br i1 %min.iters.check1313, label %polly.loop_header617.preheader, label %vector.ph1314

vector.ph1314:                                    ; preds = %polly.loop_header611
  %n.vec1316 = and i64 %252, -4
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1312 ]
  %254 = shl nuw nsw i64 %index1317, 3
  %255 = getelementptr i8, i8* %scevgep623, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %256, align 8, !alias.scope !99, !noalias !101
  %257 = fmul fast <4 x double> %wide.load1321, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %258 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %257, <4 x double>* %258, align 8, !alias.scope !99, !noalias !101
  %index.next1318 = add i64 %index1317, 4
  %259 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %259, label %middle.block1310, label %vector.body1312, !llvm.loop !106

middle.block1310:                                 ; preds = %vector.body1312
  %cmp.n1320 = icmp eq i64 %252, %n.vec1316
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
  %260 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %260
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1180.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !107

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %indvars.iv1152 = phi i64 [ 0, %polly.loop_header627.preheader ], [ %indvars.iv.next1153, %polly.loop_exit635 ]
  %polly.indvar630 = phi i64 [ 0, %polly.loop_header627.preheader ], [ %polly.indvar_next631, %polly.loop_exit635 ]
  %smin1176 = call i64 @llvm.smin.i64(i64 %indvars.iv1152, i64 -936)
  %261 = add nsw i64 %smin1176, 1000
  %262 = shl nsw i64 %polly.indvar630, 6
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1153 = add nsw i64 %indvars.iv1152, -64
  %exitcond1179.not = icmp eq i64 %polly.indvar_next631, 16
  br i1 %exitcond1179.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit658 ], [ 2, %polly.loop_header627 ]
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %263 = mul nsw i64 %polly.indvar636, -32
  %264 = add nuw i64 %polly.indvar636, 2
  %265 = udiv i64 %264, 3
  %266 = mul nuw nsw i64 %265, 96
  %267 = add i64 %263, %266
  %268 = shl nuw nsw i64 %polly.indvar636, 5
  %269 = sub nsw i64 %268, %266
  %270 = udiv i64 %indvars.iv1163, 3
  %271 = mul nuw nsw i64 %270, 96
  %272 = add i64 %indvars.iv1161, %271
  %273 = sub nsw i64 %indvars.iv1168, %271
  %274 = mul nsw i64 %polly.indvar636, -256
  %275 = shl nsw i64 %polly.indvar636, 8
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %276 = add nsw i64 %274, 1199
  %277 = mul nuw nsw i64 %polly.indvar636, 3
  %278 = add nuw nsw i64 %polly.indvar636, 2
  %pexp.p_div_q655 = udiv i64 %278, 3
  %279 = sub nsw i64 %277, %pexp.p_div_q655
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, -256
  %indvars.iv.next1162 = add nsw i64 %indvars.iv1161, -32
  %indvars.iv.next1164 = add nuw nsw i64 %indvars.iv1163, 1
  %indvars.iv.next1169 = add nuw nsw i64 %indvars.iv1168, 32
  %exitcond1178.not = icmp eq i64 %polly.indvar_next637, 5
  br i1 %exitcond1178.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %280 = add nuw nsw i64 %polly.indvar642, %262
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next643, %261
  br i1 %exitcond1155.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %281 = add nuw nsw i64 %polly.indvar648, %275
  %polly.access.mul.call2652 = mul nuw nsw i64 %281, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %280, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1149
  br i1 %exitcond1151.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit641
  %indvar1325 = phi i64 [ %indvar.next1326, %polly.loop_exit697 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1170 = phi i64 [ %indvars.iv.next1171, %polly.loop_exit697 ], [ %273, %polly.loop_exit641 ]
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166, %polly.loop_exit697 ], [ %272, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %279, %polly.loop_exit641 ]
  %282 = mul nsw i64 %indvar1325, -96
  %283 = add i64 %267, %282
  %smax1327 = call i64 @llvm.smax.i64(i64 %283, i64 0)
  %284 = mul nuw nsw i64 %indvar1325, 96
  %285 = add i64 %269, %284
  %286 = add i64 %smax1327, %285
  %smax1167 = call i64 @llvm.smax.i64(i64 %indvars.iv1165, i64 0)
  %287 = add i64 %smax1167, %indvars.iv1170
  %288 = mul nsw i64 %polly.indvar659, 96
  %289 = add nsw i64 %288, %274
  %290 = add nsw i64 %289, -1
  %.inv943 = icmp sgt i64 %289, 255
  %291 = select i1 %.inv943, i64 255, i64 %290
  %polly.loop_guard672 = icmp sgt i64 %291, -1
  %292 = icmp sgt i64 %289, 0
  %293 = select i1 %292, i64 %289, i64 0
  %294 = add nsw i64 %289, 95
  %295 = icmp slt i64 %276, %294
  %296 = select i1 %295, i64 %276, i64 %294
  %polly.loop_guard684.not = icmp sgt i64 %293, %296
  br i1 %polly.loop_guard672, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit683.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit683.us ], [ 0, %polly.loop_header656 ]
  %297 = add nuw nsw i64 %polly.indvar665.us, %262
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  br label %polly.loop_header669.us

polly.loop_header669.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header662.us ]
  %298 = add nuw nsw i64 %polly.indvar673.us, %275
  %polly.access.mul.call1677.us = mul nuw nsw i64 %298, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %297, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us = add nuw nsw i64 %polly.indvar673.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar673.us, %291
  br i1 %exitcond1158.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %293, %polly.loop_exit671.loopexit.us ]
  %299 = add nuw nsw i64 %polly.indvar685.us, %275
  %polly.access.mul.call1689.us = mul nsw i64 %299, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %297, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526693.us = add nuw nsw i64 %polly.indvar685.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %296
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_exit683.us

polly.loop_exit683.us:                            ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar_next666.us, %261
  br i1 %exitcond1160.not, label %polly.loop_header695.preheader, label %polly.loop_header662.us

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_exit683.us, label %polly.loop_header681.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_exit697:                               ; preds = %polly.loop_exit704, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp slt i64 %polly.indvar659, 12
  %indvars.iv.next1166 = add i64 %indvars.iv1165, -96
  %indvars.iv.next1171 = add i64 %indvars.iv1170, 96
  %indvar.next1326 = add i64 %indvar1325, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit683
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit683 ], [ 0, %polly.loop_header656.split ]
  %300 = add nuw nsw i64 %polly.indvar665, %262
  %polly.access.mul.Packed_MemRef_call1526692 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header681

polly.loop_exit683:                               ; preds = %polly.loop_header681
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next666, %261
  br i1 %exitcond1157.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_header695.preheader:                   ; preds = %polly.loop_exit683, %polly.loop_exit683.us, %polly.loop_header656.split
  %301 = sub nsw i64 %275, %288
  %302 = icmp sgt i64 %301, 0
  %303 = select i1 %302, i64 %301, i64 0
  %304 = mul nsw i64 %polly.indvar659, -96
  %305 = icmp slt i64 %304, -1104
  %306 = select i1 %305, i64 %304, i64 -1104
  %307 = add nsw i64 %306, 1199
  %polly.loop_guard705.not = icmp sgt i64 %303, %307
  br i1 %polly.loop_guard705.not, label %polly.loop_exit697, label %polly.loop_header695

polly.loop_header681:                             ; preds = %polly.loop_header662, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %293, %polly.loop_header662 ]
  %308 = add nuw nsw i64 %polly.indvar685, %275
  %polly.access.mul.call1689 = mul nsw i64 %308, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %300, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526693 = add nuw nsw i64 %polly.indvar685, %polly.access.mul.Packed_MemRef_call1526692
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %296
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_exit683

polly.loop_header695:                             ; preds = %polly.loop_header695.preheader, %polly.loop_exit704
  %polly.indvar698 = phi i64 [ %polly.indvar_next699, %polly.loop_exit704 ], [ 0, %polly.loop_header695.preheader ]
  %polly.access.mul.Packed_MemRef_call1526717 = mul nuw nsw i64 %polly.indvar698, 1200
  br label %polly.loop_header702

polly.loop_exit704:                               ; preds = %polly.loop_exit712
  %polly.indvar_next699 = add nuw nsw i64 %polly.indvar698, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar_next699, %261
  br i1 %exitcond1177.not, label %polly.loop_exit697, label %polly.loop_header695

polly.loop_header702:                             ; preds = %polly.loop_header695, %polly.loop_exit712
  %indvar1328 = phi i64 [ 0, %polly.loop_header695 ], [ %indvar.next1329, %polly.loop_exit712 ]
  %indvars.iv1172 = phi i64 [ %287, %polly.loop_header695 ], [ %indvars.iv.next1173, %polly.loop_exit712 ]
  %polly.indvar706 = phi i64 [ %303, %polly.loop_header695 ], [ %polly.indvar_next707, %polly.loop_exit712 ]
  %309 = add i64 %286, %indvar1328
  %smin1330 = call i64 @llvm.smin.i64(i64 %309, i64 255)
  %310 = add nsw i64 %smin1330, 1
  %smin1174 = call i64 @llvm.smin.i64(i64 %indvars.iv1172, i64 255)
  %311 = add nsw i64 %polly.indvar706, %289
  %polly.loop_guard7131221 = icmp sgt i64 %311, -1
  br i1 %polly.loop_guard7131221, label %polly.loop_header710.preheader, label %polly.loop_exit712

polly.loop_header710.preheader:                   ; preds = %polly.loop_header702
  %312 = add nsw i64 %polly.indvar706, %288
  %polly.access.add.Packed_MemRef_call2528722 = add nsw i64 %311, %polly.access.mul.Packed_MemRef_call1526717
  %polly.access.Packed_MemRef_call2528723 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722
  %_p_scalar_724 = load double, double* %polly.access.Packed_MemRef_call2528723, align 8
  %polly.access.Packed_MemRef_call1526731 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722
  %_p_scalar_732 = load double, double* %polly.access.Packed_MemRef_call1526731, align 8
  %313 = mul i64 %312, 9600
  %min.iters.check1331 = icmp ult i64 %310, 4
  br i1 %min.iters.check1331, label %polly.loop_header710.preheader1454, label %vector.ph1332

vector.ph1332:                                    ; preds = %polly.loop_header710.preheader
  %n.vec1334 = and i64 %310, -4
  %broadcast.splatinsert1340 = insertelement <4 x double> poison, double %_p_scalar_724, i32 0
  %broadcast.splat1341 = shufflevector <4 x double> %broadcast.splatinsert1340, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1343 = insertelement <4 x double> poison, double %_p_scalar_732, i32 0
  %broadcast.splat1344 = shufflevector <4 x double> %broadcast.splatinsert1343, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1332
  %index1335 = phi i64 [ 0, %vector.ph1332 ], [ %index.next1336, %vector.body1324 ]
  %314 = add nuw nsw i64 %index1335, %275
  %315 = add nuw nsw i64 %index1335, %polly.access.mul.Packed_MemRef_call1526717
  %316 = getelementptr double, double* %Packed_MemRef_call1526, i64 %315
  %317 = bitcast double* %316 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %317, align 8
  %318 = fmul fast <4 x double> %broadcast.splat1341, %wide.load1339
  %319 = getelementptr double, double* %Packed_MemRef_call2528, i64 %315
  %320 = bitcast double* %319 to <4 x double>*
  %wide.load1342 = load <4 x double>, <4 x double>* %320, align 8
  %321 = fmul fast <4 x double> %broadcast.splat1344, %wide.load1342
  %322 = shl i64 %314, 3
  %323 = add i64 %322, %313
  %324 = getelementptr i8, i8* %call, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  %wide.load1345 = load <4 x double>, <4 x double>* %325, align 8, !alias.scope !99, !noalias !101
  %326 = fadd fast <4 x double> %321, %318
  %327 = fmul fast <4 x double> %326, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %328 = fadd fast <4 x double> %327, %wide.load1345
  %329 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %328, <4 x double>* %329, align 8, !alias.scope !99, !noalias !101
  %index.next1336 = add i64 %index1335, 4
  %330 = icmp eq i64 %index.next1336, %n.vec1334
  br i1 %330, label %middle.block1322, label %vector.body1324, !llvm.loop !110

middle.block1322:                                 ; preds = %vector.body1324
  %cmp.n1338 = icmp eq i64 %310, %n.vec1334
  br i1 %cmp.n1338, label %polly.loop_exit712, label %polly.loop_header710.preheader1454

polly.loop_header710.preheader1454:               ; preds = %polly.loop_header710.preheader, %middle.block1322
  %polly.indvar714.ph = phi i64 [ 0, %polly.loop_header710.preheader ], [ %n.vec1334, %middle.block1322 ]
  br label %polly.loop_header710

polly.loop_exit712:                               ; preds = %polly.loop_header710, %middle.block1322, %polly.loop_header702
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %polly.loop_cond708.not.not = icmp slt i64 %polly.indvar706, %307
  %indvars.iv.next1173 = add i64 %indvars.iv1172, 1
  %indvar.next1329 = add i64 %indvar1328, 1
  br i1 %polly.loop_cond708.not.not, label %polly.loop_header702, label %polly.loop_exit704

polly.loop_header710:                             ; preds = %polly.loop_header710.preheader1454, %polly.loop_header710
  %polly.indvar714 = phi i64 [ %polly.indvar_next715, %polly.loop_header710 ], [ %polly.indvar714.ph, %polly.loop_header710.preheader1454 ]
  %331 = add nuw nsw i64 %polly.indvar714, %275
  %polly.access.add.Packed_MemRef_call1526718 = add nuw nsw i64 %polly.indvar714, %polly.access.mul.Packed_MemRef_call1526717
  %polly.access.Packed_MemRef_call1526719 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718
  %_p_scalar_720 = load double, double* %polly.access.Packed_MemRef_call1526719, align 8
  %p_mul27.i = fmul fast double %_p_scalar_724, %_p_scalar_720
  %polly.access.Packed_MemRef_call2528727 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718
  %_p_scalar_728 = load double, double* %polly.access.Packed_MemRef_call2528727, align 8
  %p_mul37.i = fmul fast double %_p_scalar_732, %_p_scalar_728
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %313
  %scevgep733 = getelementptr i8, i8* %call, i64 %333
  %scevgep733734 = bitcast i8* %scevgep733 to double*
  %_p_scalar_735 = load double, double* %scevgep733734, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_735
  store double %p_add42.i, double* %scevgep733734, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next715 = add nuw nsw i64 %polly.indvar714, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar714, %smin1174
  br i1 %exitcond1175.not, label %polly.loop_exit712, label %polly.loop_header710, !llvm.loop !111

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %indvars.iv1206 = phi i64 [ %indvars.iv.next1207, %polly.loop_exit870 ], [ 0, %entry ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %smin1208 = call i64 @llvm.smin.i64(i64 %indvars.iv1206, i64 -1168)
  %334 = shl nsw i64 %polly.indvar865, 5
  %335 = add nsw i64 %smin1208, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1207 = add nsw i64 %indvars.iv1206, -32
  %exitcond1211.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1211.not, label %polly.loop_header889, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1202 = phi i64 [ %indvars.iv.next1203, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %336 = mul nsw i64 %polly.indvar871, -32
  %smin = call i64 @llvm.smin.i64(i64 %336, i64 -1168)
  %337 = add nsw i64 %smin, 1200
  %smin1204 = call i64 @llvm.smin.i64(i64 %indvars.iv1202, i64 -1168)
  %338 = shl nsw i64 %polly.indvar871, 5
  %339 = add nsw i64 %smin1204, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1203 = add nsw i64 %indvars.iv1202, -32
  %exitcond1210.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1210.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %340 = add nuw nsw i64 %polly.indvar877, %334
  %341 = trunc i64 %340 to i32
  %342 = mul nuw nsw i64 %340, 9600
  %min.iters.check = icmp eq i64 %337, 0
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1252

vector.ph1252:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1259 = insertelement <4 x i64> poison, i64 %338, i32 0
  %broadcast.splat1260 = shufflevector <4 x i64> %broadcast.splatinsert1259, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1261 = insertelement <4 x i32> poison, i32 %341, i32 0
  %broadcast.splat1262 = shufflevector <4 x i32> %broadcast.splatinsert1261, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1252
  %index1253 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1254, %vector.body1251 ]
  %vec.ind1257 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1252 ], [ %vec.ind.next1258, %vector.body1251 ]
  %343 = add nuw nsw <4 x i64> %vec.ind1257, %broadcast.splat1260
  %344 = trunc <4 x i64> %343 to <4 x i32>
  %345 = mul <4 x i32> %broadcast.splat1262, %344
  %346 = add <4 x i32> %345, <i32 3, i32 3, i32 3, i32 3>
  %347 = urem <4 x i32> %346, <i32 1200, i32 1200, i32 1200, i32 1200>
  %348 = sitofp <4 x i32> %347 to <4 x double>
  %349 = fmul fast <4 x double> %348, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %350 = extractelement <4 x i64> %343, i32 0
  %351 = shl i64 %350, 3
  %352 = add nuw nsw i64 %351, %342
  %353 = getelementptr i8, i8* %call, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %349, <4 x double>* %354, align 8, !alias.scope !112, !noalias !114
  %index.next1254 = add i64 %index1253, 4
  %vec.ind.next1258 = add <4 x i64> %vec.ind1257, <i64 4, i64 4, i64 4, i64 4>
  %355 = icmp eq i64 %index.next1254, %337
  br i1 %355, label %polly.loop_exit882, label %vector.body1251, !llvm.loop !117

polly.loop_exit882:                               ; preds = %vector.body1251, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1209.not = icmp eq i64 %polly.indvar877, %335
  br i1 %exitcond1209.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %356 = add nuw nsw i64 %polly.indvar883, %338
  %357 = trunc i64 %356 to i32
  %358 = mul i32 %357, %341
  %359 = add i32 %358, 3
  %360 = urem i32 %359, 1200
  %p_conv31.i = sitofp i32 %360 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %361 = shl i64 %356, 3
  %362 = add nuw nsw i64 %361, %342
  %scevgep886 = getelementptr i8, i8* %call, i64 %362
  %scevgep886887 = bitcast i8* %scevgep886 to double*
  store double %p_div33.i, double* %scevgep886887, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1205.not = icmp eq i64 %polly.indvar883, %339
  br i1 %exitcond1205.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !118

polly.loop_header889:                             ; preds = %polly.loop_exit870, %polly.loop_exit897
  %indvars.iv1196 = phi i64 [ %indvars.iv.next1197, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %smin1198 = call i64 @llvm.smin.i64(i64 %indvars.iv1196, i64 -1168)
  %363 = shl nsw i64 %polly.indvar892, 5
  %364 = add nsw i64 %smin1198, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1197 = add nsw i64 %indvars.iv1196, -32
  %exitcond1201.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1201.not, label %polly.loop_header915, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1192 = phi i64 [ %indvars.iv.next1193, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %365 = mul nsw i64 %polly.indvar898, -32
  %smin1266 = call i64 @llvm.smin.i64(i64 %365, i64 -968)
  %366 = add nsw i64 %smin1266, 1000
  %smin1194 = call i64 @llvm.smin.i64(i64 %indvars.iv1192, i64 -968)
  %367 = shl nsw i64 %polly.indvar898, 5
  %368 = add nsw i64 %smin1194, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1193 = add nsw i64 %indvars.iv1192, -32
  %exitcond1200.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1200.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %369 = add nuw nsw i64 %polly.indvar904, %363
  %370 = trunc i64 %369 to i32
  %371 = mul nuw nsw i64 %369, 8000
  %min.iters.check1267 = icmp eq i64 %366, 0
  br i1 %min.iters.check1267, label %polly.loop_header907, label %vector.ph1268

vector.ph1268:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1277 = insertelement <4 x i64> poison, i64 %367, i32 0
  %broadcast.splat1278 = shufflevector <4 x i64> %broadcast.splatinsert1277, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1279 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1280 = shufflevector <4 x i32> %broadcast.splatinsert1279, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1265

vector.body1265:                                  ; preds = %vector.body1265, %vector.ph1268
  %index1271 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1272, %vector.body1265 ]
  %vec.ind1275 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1268 ], [ %vec.ind.next1276, %vector.body1265 ]
  %372 = add nuw nsw <4 x i64> %vec.ind1275, %broadcast.splat1278
  %373 = trunc <4 x i64> %372 to <4 x i32>
  %374 = mul <4 x i32> %broadcast.splat1280, %373
  %375 = add <4 x i32> %374, <i32 2, i32 2, i32 2, i32 2>
  %376 = urem <4 x i32> %375, <i32 1000, i32 1000, i32 1000, i32 1000>
  %377 = sitofp <4 x i32> %376 to <4 x double>
  %378 = fmul fast <4 x double> %377, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %379 = extractelement <4 x i64> %372, i32 0
  %380 = shl i64 %379, 3
  %381 = add nuw nsw i64 %380, %371
  %382 = getelementptr i8, i8* %call2, i64 %381
  %383 = bitcast i8* %382 to <4 x double>*
  store <4 x double> %378, <4 x double>* %383, align 8, !alias.scope !116, !noalias !119
  %index.next1272 = add i64 %index1271, 4
  %vec.ind.next1276 = add <4 x i64> %vec.ind1275, <i64 4, i64 4, i64 4, i64 4>
  %384 = icmp eq i64 %index.next1272, %366
  br i1 %384, label %polly.loop_exit909, label %vector.body1265, !llvm.loop !120

polly.loop_exit909:                               ; preds = %vector.body1265, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1199.not = icmp eq i64 %polly.indvar904, %364
  br i1 %exitcond1199.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %385 = add nuw nsw i64 %polly.indvar910, %367
  %386 = trunc i64 %385 to i32
  %387 = mul i32 %386, %370
  %388 = add i32 %387, 2
  %389 = urem i32 %388, 1000
  %p_conv10.i = sitofp i32 %389 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %390 = shl i64 %385, 3
  %391 = add nuw nsw i64 %390, %371
  %scevgep913 = getelementptr i8, i8* %call2, i64 %391
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div12.i, double* %scevgep913914, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1195.not = icmp eq i64 %polly.indvar910, %368
  br i1 %exitcond1195.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !121

polly.loop_header915:                             ; preds = %polly.loop_exit897, %polly.loop_exit923
  %indvars.iv1186 = phi i64 [ %indvars.iv.next1187, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %smin1188 = call i64 @llvm.smin.i64(i64 %indvars.iv1186, i64 -1168)
  %392 = shl nsw i64 %polly.indvar918, 5
  %393 = add nsw i64 %smin1188, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1187 = add nsw i64 %indvars.iv1186, -32
  %exitcond1191.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1191.not, label %init_array.exit, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1182 = phi i64 [ %indvars.iv.next1183, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %394 = mul nsw i64 %polly.indvar924, -32
  %smin1284 = call i64 @llvm.smin.i64(i64 %394, i64 -968)
  %395 = add nsw i64 %smin1284, 1000
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 -968)
  %396 = shl nsw i64 %polly.indvar924, 5
  %397 = add nsw i64 %smin1184, 999
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1183 = add nsw i64 %indvars.iv1182, -32
  %exitcond1190.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1190.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %398 = add nuw nsw i64 %polly.indvar930, %392
  %399 = trunc i64 %398 to i32
  %400 = mul nuw nsw i64 %398, 8000
  %min.iters.check1285 = icmp eq i64 %395, 0
  br i1 %min.iters.check1285, label %polly.loop_header933, label %vector.ph1286

vector.ph1286:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1295 = insertelement <4 x i64> poison, i64 %396, i32 0
  %broadcast.splat1296 = shufflevector <4 x i64> %broadcast.splatinsert1295, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1297 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1298 = shufflevector <4 x i32> %broadcast.splatinsert1297, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %vector.ph1286
  %index1289 = phi i64 [ 0, %vector.ph1286 ], [ %index.next1290, %vector.body1283 ]
  %vec.ind1293 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1286 ], [ %vec.ind.next1294, %vector.body1283 ]
  %401 = add nuw nsw <4 x i64> %vec.ind1293, %broadcast.splat1296
  %402 = trunc <4 x i64> %401 to <4 x i32>
  %403 = mul <4 x i32> %broadcast.splat1298, %402
  %404 = add <4 x i32> %403, <i32 1, i32 1, i32 1, i32 1>
  %405 = urem <4 x i32> %404, <i32 1200, i32 1200, i32 1200, i32 1200>
  %406 = sitofp <4 x i32> %405 to <4 x double>
  %407 = fmul fast <4 x double> %406, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %408 = extractelement <4 x i64> %401, i32 0
  %409 = shl i64 %408, 3
  %410 = add nuw nsw i64 %409, %400
  %411 = getelementptr i8, i8* %call1, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %407, <4 x double>* %412, align 8, !alias.scope !115, !noalias !122
  %index.next1290 = add i64 %index1289, 4
  %vec.ind.next1294 = add <4 x i64> %vec.ind1293, <i64 4, i64 4, i64 4, i64 4>
  %413 = icmp eq i64 %index.next1290, %395
  br i1 %413, label %polly.loop_exit935, label %vector.body1283, !llvm.loop !123

polly.loop_exit935:                               ; preds = %vector.body1283, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1189.not = icmp eq i64 %polly.indvar930, %393
  br i1 %exitcond1189.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %414 = add nuw nsw i64 %polly.indvar936, %396
  %415 = trunc i64 %414 to i32
  %416 = mul i32 %415, %399
  %417 = add i32 %416, 1
  %418 = urem i32 %417, 1200
  %p_conv.i = sitofp i32 %418 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %419 = shl i64 %414, 3
  %420 = add nuw nsw i64 %419, %400
  %scevgep940 = getelementptr i8, i8* %call1, i64 %420
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div.i, double* %scevgep940941, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar936, %397
  br i1 %exitcond1185.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 256}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 64}
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
!118 = distinct !{!118, !81, !13}
!119 = !{!115, !112}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !81, !13}
!122 = !{!116, !112}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !81, !13}
