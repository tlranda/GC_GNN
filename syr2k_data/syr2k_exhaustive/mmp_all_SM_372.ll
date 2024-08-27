; ModuleID = 'syr2k_exhaustive/mmp_all_SM_372.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_372.c"
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
  %scevgep1221 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1220 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1219 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1218 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1218, %scevgep1221
  %bound1 = icmp ult i8* %scevgep1220, %scevgep1219
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
  br i1 %exitcond18.not.i, label %vector.ph1225, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1225:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1232 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1233 = shufflevector <4 x i64> %broadcast.splatinsert1232, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %vector.ph1225
  %index1226 = phi i64 [ 0, %vector.ph1225 ], [ %index.next1227, %vector.body1224 ]
  %vec.ind1230 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1225 ], [ %vec.ind.next1231, %vector.body1224 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1230, %broadcast.splat1233
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv7.i, i64 %index1226
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1227 = add i64 %index1226, 4
  %vec.ind.next1231 = add <4 x i64> %vec.ind1230, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1227, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1224, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1224
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1225, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit923
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1288 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1288, label %for.body3.i46.preheader1749, label %vector.ph1289

vector.ph1289:                                    ; preds = %for.body3.i46.preheader
  %n.vec1291 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %vector.ph1289
  %index1292 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1293, %vector.body1287 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %index1292
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1293 = add i64 %index1292, 4
  %46 = icmp eq i64 %index.next1293, %n.vec1291
  br i1 %46, label %middle.block1285, label %vector.body1287, !llvm.loop !18

middle.block1285:                                 ; preds = %vector.body1287
  %cmp.n1295 = icmp eq i64 %indvars.iv21.i, %n.vec1291
  br i1 %cmp.n1295, label %for.inc6.i, label %for.body3.i46.preheader1749

for.body3.i46.preheader1749:                      ; preds = %for.body3.i46.preheader, %middle.block1285
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1291, %middle.block1285 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1749, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1749 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1285, %for.cond1.preheader.i45
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
  %min.iters.check1439 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1439, label %for.body3.i60.preheader1747, label %vector.ph1440

vector.ph1440:                                    ; preds = %for.body3.i60.preheader
  %n.vec1442 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1438

vector.body1438:                                  ; preds = %vector.body1438, %vector.ph1440
  %index1443 = phi i64 [ 0, %vector.ph1440 ], [ %index.next1444, %vector.body1438 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %index1443
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1447 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1447, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1444 = add i64 %index1443, 4
  %57 = icmp eq i64 %index.next1444, %n.vec1442
  br i1 %57, label %middle.block1436, label %vector.body1438, !llvm.loop !64

middle.block1436:                                 ; preds = %vector.body1438
  %cmp.n1446 = icmp eq i64 %indvars.iv21.i52, %n.vec1442
  br i1 %cmp.n1446, label %for.inc6.i63, label %for.body3.i60.preheader1747

for.body3.i60.preheader1747:                      ; preds = %for.body3.i60.preheader, %middle.block1436
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1442, %middle.block1436 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1747, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1747 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1436, %for.cond1.preheader.i54
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
  %min.iters.check1593 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1593, label %for.body3.i99.preheader1745, label %vector.ph1594

vector.ph1594:                                    ; preds = %for.body3.i99.preheader
  %n.vec1596 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1592

vector.body1592:                                  ; preds = %vector.body1592, %vector.ph1594
  %index1597 = phi i64 [ 0, %vector.ph1594 ], [ %index.next1598, %vector.body1592 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %index1597
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1601 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1601, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1598 = add i64 %index1597, 4
  %68 = icmp eq i64 %index.next1598, %n.vec1596
  br i1 %68, label %middle.block1590, label %vector.body1592, !llvm.loop !66

middle.block1590:                                 ; preds = %vector.body1592
  %cmp.n1600 = icmp eq i64 %indvars.iv21.i91, %n.vec1596
  br i1 %cmp.n1600, label %for.inc6.i102, label %for.body3.i99.preheader1745

for.body3.i99.preheader1745:                      ; preds = %for.body3.i99.preheader, %middle.block1590
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1596, %middle.block1590 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1745, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1745 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1590, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1605 = phi i64 [ %indvar.next1606, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1605, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1607 = icmp ult i64 %88, 4
  br i1 %min.iters.check1607, label %polly.loop_header192.preheader, label %vector.ph1608

vector.ph1608:                                    ; preds = %polly.loop_header
  %n.vec1610 = and i64 %88, -4
  br label %vector.body1604

vector.body1604:                                  ; preds = %vector.body1604, %vector.ph1608
  %index1611 = phi i64 [ 0, %vector.ph1608 ], [ %index.next1612, %vector.body1604 ]
  %90 = shl nuw nsw i64 %index1611, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1615 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1615, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1612 = add i64 %index1611, 4
  %95 = icmp eq i64 %index.next1612, %n.vec1610
  br i1 %95, label %middle.block1602, label %vector.body1604, !llvm.loop !79

middle.block1602:                                 ; preds = %vector.body1604
  %cmp.n1614 = icmp eq i64 %88, %n.vec1610
  br i1 %cmp.n1614, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1602
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1610, %middle.block1602 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1602
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1606 = add i64 %indvar1605, 1
  br i1 %exitcond1105.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  %scevgep1648 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1649 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1683 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1684 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1718 = getelementptr i8, i8* %malloccall, i64 8
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
  %exitcond1104.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1104.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = shl nsw i64 %polly.indvar203, 2
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next204, 250
  br i1 %exitcond1103.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %101 = shl nuw nsw i64 %polly.indvar209, 7
  %102 = mul nuw nsw i64 %polly.indvar209, 6
  %103 = shl nuw nsw i64 %polly.indvar209, 1
  %104 = udiv i64 %103, 5
  %105 = add nuw i64 %102, %104
  %106 = mul nuw nsw i64 %105, 20
  %107 = sub i64 %101, %106
  %108 = mul nsw i64 %polly.indvar209, -128
  %109 = add i64 %108, %106
  %110 = shl nuw nsw i64 %polly.indvar209, 10
  %111 = shl nuw nsw i64 %polly.indvar209, 7
  %112 = mul nuw nsw i64 %polly.indvar209, 6
  %113 = shl nuw nsw i64 %polly.indvar209, 1
  %114 = udiv i64 %113, 5
  %115 = add nuw i64 %112, %114
  %116 = mul nuw nsw i64 %115, 20
  %117 = sub i64 %111, %116
  %118 = or i64 %110, 8
  %119 = mul nsw i64 %polly.indvar209, -128
  %120 = add i64 %119, %116
  %121 = shl nuw nsw i64 %polly.indvar209, 7
  %122 = mul nuw nsw i64 %polly.indvar209, 6
  %123 = shl nuw nsw i64 %polly.indvar209, 1
  %124 = udiv i64 %123, 5
  %125 = add nuw i64 %122, %124
  %126 = mul nuw nsw i64 %125, 20
  %127 = sub i64 %121, %126
  %128 = mul nsw i64 %polly.indvar209, -128
  %129 = add i64 %128, %126
  %130 = shl nuw nsw i64 %polly.indvar209, 10
  %131 = shl nuw nsw i64 %polly.indvar209, 7
  %132 = mul nuw nsw i64 %polly.indvar209, 6
  %133 = shl nuw nsw i64 %polly.indvar209, 1
  %134 = udiv i64 %133, 5
  %135 = add nuw i64 %132, %134
  %136 = mul nuw nsw i64 %135, 20
  %137 = sub i64 %131, %136
  %138 = or i64 %130, 8
  %139 = mul nsw i64 %polly.indvar209, -128
  %140 = add i64 %139, %136
  %141 = shl nuw nsw i64 %polly.indvar209, 7
  %142 = mul nuw nsw i64 %polly.indvar209, 6
  %143 = shl nuw nsw i64 %polly.indvar209, 1
  %144 = udiv i64 %143, 5
  %145 = add nuw i64 %142, %144
  %146 = mul nuw nsw i64 %145, 20
  %147 = sub i64 %141, %146
  %148 = mul nsw i64 %polly.indvar209, -128
  %149 = add i64 %148, %146
  %150 = shl nuw nsw i64 %polly.indvar209, 10
  %151 = shl nuw nsw i64 %polly.indvar209, 7
  %152 = mul nuw nsw i64 %polly.indvar209, 6
  %153 = shl nuw nsw i64 %polly.indvar209, 1
  %154 = udiv i64 %153, 5
  %155 = add nuw i64 %152, %154
  %156 = mul nuw nsw i64 %155, 20
  %157 = sub i64 %151, %156
  %158 = or i64 %150, 8
  %159 = mul nsw i64 %polly.indvar209, -128
  %160 = add i64 %159, %156
  %161 = shl nuw nsw i64 %polly.indvar209, 7
  %162 = mul nuw nsw i64 %polly.indvar209, 6
  %163 = shl nuw nsw i64 %polly.indvar209, 1
  %164 = udiv i64 %163, 5
  %165 = add nuw i64 %162, %164
  %166 = mul nuw nsw i64 %165, 20
  %167 = sub i64 %161, %166
  %168 = mul nsw i64 %polly.indvar209, -128
  %169 = add i64 %168, %166
  %170 = udiv i64 %indvars.iv1090, 5
  %171 = add nuw i64 %indvars.iv1088, %170
  %172 = mul nuw nsw i64 %171, 20
  %173 = sub i64 %indvars.iv1086, %172
  %174 = add i64 %indvars.iv1094, %172
  %175 = shl nsw i64 %polly.indvar209, 7
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next1087 = add nuw nsw i64 %indvars.iv1086, 128
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 6
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 2
  %indvars.iv.next1095 = add nsw i64 %indvars.iv1094, -128
  %exitcond1102.not = icmp eq i64 %polly.indvar_next210, 10
  br i1 %exitcond1102.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %176 = add nuw nsw i64 %polly.indvar221, %175
  %polly.access.mul.call2225 = mul nuw nsw i64 %176, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %97, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit220.3
  %indvar1619 = phi i64 [ %indvar.next1620, %polly.loop_exit267 ], [ 0, %polly.loop_exit220.3 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit267 ], [ %174, %polly.loop_exit220.3 ]
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit267 ], [ %173, %polly.loop_exit220.3 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %727, %polly.loop_exit220.3 ]
  %177 = mul nsw i64 %indvar1619, -20
  %178 = add i64 %107, %177
  %smax1727 = call i64 @llvm.smax.i64(i64 %178, i64 0)
  %179 = mul nuw nsw i64 %indvar1619, 20
  %180 = add i64 %109, %179
  %181 = add i64 %smax1727, %180
  %182 = mul nsw i64 %indvar1619, -20
  %183 = add i64 %117, %182
  %smax1711 = call i64 @llvm.smax.i64(i64 %183, i64 0)
  %184 = mul nuw nsw i64 %indvar1619, 20
  %185 = add i64 %116, %184
  %186 = add i64 %smax1711, %185
  %187 = mul nsw i64 %186, 9600
  %188 = add i64 %110, %187
  %189 = add i64 %118, %187
  %190 = add i64 %120, %184
  %191 = add i64 %smax1711, %190
  %192 = mul nsw i64 %indvar1619, -20
  %193 = add i64 %127, %192
  %smax1693 = call i64 @llvm.smax.i64(i64 %193, i64 0)
  %194 = mul nuw nsw i64 %indvar1619, 20
  %195 = add i64 %129, %194
  %196 = add i64 %smax1693, %195
  %197 = mul nsw i64 %indvar1619, -20
  %198 = add i64 %137, %197
  %smax1676 = call i64 @llvm.smax.i64(i64 %198, i64 0)
  %199 = mul nuw nsw i64 %indvar1619, 20
  %200 = add i64 %136, %199
  %201 = add i64 %smax1676, %200
  %202 = mul nsw i64 %201, 9600
  %203 = add i64 %130, %202
  %204 = add i64 %138, %202
  %205 = add i64 %140, %199
  %206 = add i64 %smax1676, %205
  %207 = mul nsw i64 %indvar1619, -20
  %208 = add i64 %147, %207
  %smax1658 = call i64 @llvm.smax.i64(i64 %208, i64 0)
  %209 = mul nuw nsw i64 %indvar1619, 20
  %210 = add i64 %149, %209
  %211 = add i64 %smax1658, %210
  %212 = mul nsw i64 %indvar1619, -20
  %213 = add i64 %157, %212
  %smax1641 = call i64 @llvm.smax.i64(i64 %213, i64 0)
  %214 = mul nuw nsw i64 %indvar1619, 20
  %215 = add i64 %156, %214
  %216 = add i64 %smax1641, %215
  %217 = mul nsw i64 %216, 9600
  %218 = add i64 %150, %217
  %219 = add i64 %158, %217
  %220 = add i64 %160, %214
  %221 = add i64 %smax1641, %220
  %222 = mul nsw i64 %indvar1619, -20
  %223 = add i64 %167, %222
  %smax1621 = call i64 @llvm.smax.i64(i64 %223, i64 0)
  %224 = mul nuw nsw i64 %indvar1619, 20
  %225 = add i64 %169, %224
  %226 = add i64 %smax1621, %225
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1092, i64 0)
  %227 = add i64 %smax, %indvars.iv1096
  %228 = mul nuw nsw i64 %polly.indvar231, 20
  %229 = add nsw i64 %228, %724
  %230 = add nsw i64 %229, -1
  %.inv = icmp sgt i64 %229, 127
  %231 = select i1 %.inv, i64 127, i64 %230
  %polly.loop_guard = icmp sgt i64 %231, -1
  %232 = icmp sgt i64 %229, 0
  %233 = select i1 %232, i64 %229, i64 0
  %234 = add nsw i64 %229, 19
  %polly.loop_guard254.not = icmp sgt i64 %233, %234
  br i1 %polly.loop_guard, label %polly.loop_header240.us, label %polly.loop_header228.split

polly.loop_header240.us:                          ; preds = %polly.loop_header228, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header228 ]
  %235 = add nuw nsw i64 %polly.indvar243.us, %175
  %polly.access.mul.call1247.us = mul nuw nsw i64 %235, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %97, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar243.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar243.us, %231
  br i1 %exitcond1084.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %233, %polly.loop_exit242.loopexit.us ]
  %236 = add nuw nsw i64 %polly.indvar255.us, %175
  %polly.access.mul.call1259.us = mul nsw i64 %236, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %97, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %234
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_header240.us.1.preheader

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.1.preheader, label %polly.loop_header251.us

polly.loop_header240.us.1.preheader:              ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  br label %polly.loop_header240.us.1

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251

polly.loop_exit267:                               ; preds = %polly.loop_exit282.us.3, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 59
  %indvars.iv.next1093 = add i64 %indvars.iv1092, -20
  %indvars.iv.next1097 = add i64 %indvars.iv1096, 20
  %indvar.next1620 = add i64 %indvar1619, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header265.preheader:                   ; preds = %polly.loop_header251.3, %polly.loop_header251.us.3, %polly.loop_exit242.loopexit.us.3, %polly.loop_header228.split
  %237 = sub nsw i64 %175, %228
  %238 = icmp sgt i64 %237, 0
  %239 = select i1 %238, i64 %237, i64 0
  %polly.loop_guard275 = icmp slt i64 %239, 20
  br i1 %polly.loop_guard275, label %polly.loop_header272.us, label %polly.loop_exit267

polly.loop_header272.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit282.us
  %indvar1712 = phi i64 [ %indvar.next1713, %polly.loop_exit282.us ], [ 0, %polly.loop_header265.preheader ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit282.us ], [ %227, %polly.loop_header265.preheader ]
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_exit282.us ], [ %239, %polly.loop_header265.preheader ]
  %240 = add i64 %181, %indvar1712
  %smin1728 = call i64 @llvm.smin.i64(i64 %240, i64 127)
  %241 = add nsw i64 %smin1728, 1
  %242 = mul nuw nsw i64 %indvar1712, 9600
  %243 = add i64 %188, %242
  %scevgep1714 = getelementptr i8, i8* %call, i64 %243
  %244 = add i64 %189, %242
  %scevgep1715 = getelementptr i8, i8* %call, i64 %244
  %245 = add i64 %191, %indvar1712
  %smin1716 = call i64 @llvm.smin.i64(i64 %245, i64 127)
  %246 = shl nsw i64 %smin1716, 3
  %scevgep1717 = getelementptr i8, i8* %scevgep1715, i64 %246
  %scevgep1719 = getelementptr i8, i8* %scevgep1718, i64 %246
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1098, i64 127)
  %247 = add nsw i64 %polly.indvar276.us, %229
  %polly.loop_guard283.us1198 = icmp sgt i64 %247, -1
  br i1 %polly.loop_guard283.us1198, label %polly.loop_header280.preheader.us, label %polly.loop_exit282.us

polly.loop_header280.us:                          ; preds = %polly.loop_header280.us.preheader, %polly.loop_header280.us
  %polly.indvar284.us = phi i64 [ %polly.indvar_next285.us, %polly.loop_header280.us ], [ %polly.indvar284.us.ph, %polly.loop_header280.us.preheader ]
  %248 = add nuw nsw i64 %polly.indvar284.us, %175
  %polly.access.Packed_MemRef_call1289.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar284.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call1289.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %polly.access.Packed_MemRef_call2297.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar284.us
  %_p_scalar_298.us = load double, double* %polly.access.Packed_MemRef_call2297.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_302.us, %_p_scalar_298.us
  %249 = shl i64 %248, 3
  %250 = add i64 %249, %252
  %scevgep303.us = getelementptr i8, i8* %call, i64 %250
  %scevgep303304.us = bitcast i8* %scevgep303.us to double*
  %_p_scalar_305.us = load double, double* %scevgep303304.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_305.us
  store double %p_add42.i118.us, double* %scevgep303304.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.us = add nuw nsw i64 %polly.indvar284.us, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar284.us, %smin
  br i1 %exitcond1100.not, label %polly.loop_exit282.us, label %polly.loop_header280.us, !llvm.loop !84

polly.loop_exit282.us:                            ; preds = %polly.loop_header280.us, %middle.block1724, %polly.loop_header272.us
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %polly.loop_cond278.us = icmp ult i64 %polly.indvar276.us, 19
  %indvars.iv.next1099 = add i64 %indvars.iv1098, 1
  %indvar.next1713 = add i64 %indvar1712, 1
  br i1 %polly.loop_cond278.us, label %polly.loop_header272.us, label %polly.loop_header272.us.1

polly.loop_header280.preheader.us:                ; preds = %polly.loop_header272.us
  %251 = add nuw nsw i64 %polly.indvar276.us, %228
  %polly.access.Packed_MemRef_call2293.us = getelementptr double, double* %Packed_MemRef_call2, i64 %247
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call2293.us, align 8
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1, i64 %247
  %_p_scalar_302.us = load double, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %252 = mul i64 %251, 9600
  %min.iters.check1729 = icmp ult i64 %241, 4
  br i1 %min.iters.check1729, label %polly.loop_header280.us.preheader, label %vector.memcheck1710

vector.memcheck1710:                              ; preds = %polly.loop_header280.preheader.us
  %bound01720 = icmp ult i8* %scevgep1714, %scevgep1719
  %bound11721 = icmp ult i8* %malloccall, %scevgep1717
  %found.conflict1722 = and i1 %bound01720, %bound11721
  br i1 %found.conflict1722, label %polly.loop_header280.us.preheader, label %vector.ph1730

vector.ph1730:                                    ; preds = %vector.memcheck1710
  %n.vec1732 = and i64 %241, -4
  %broadcast.splatinsert1738 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1739 = shufflevector <4 x double> %broadcast.splatinsert1738, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1741 = insertelement <4 x double> poison, double %_p_scalar_302.us, i32 0
  %broadcast.splat1742 = shufflevector <4 x double> %broadcast.splatinsert1741, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1726

vector.body1726:                                  ; preds = %vector.body1726, %vector.ph1730
  %index1733 = phi i64 [ 0, %vector.ph1730 ], [ %index.next1734, %vector.body1726 ]
  %253 = add nuw nsw i64 %index1733, %175
  %254 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1733
  %255 = bitcast double* %254 to <4 x double>*
  %wide.load1737 = load <4 x double>, <4 x double>* %255, align 8, !alias.scope !85
  %256 = fmul fast <4 x double> %broadcast.splat1739, %wide.load1737
  %257 = getelementptr double, double* %Packed_MemRef_call2, i64 %index1733
  %258 = bitcast double* %257 to <4 x double>*
  %wide.load1740 = load <4 x double>, <4 x double>* %258, align 8
  %259 = fmul fast <4 x double> %broadcast.splat1742, %wide.load1740
  %260 = shl i64 %253, 3
  %261 = add i64 %260, %252
  %262 = getelementptr i8, i8* %call, i64 %261
  %263 = bitcast i8* %262 to <4 x double>*
  %wide.load1743 = load <4 x double>, <4 x double>* %263, align 8, !alias.scope !88, !noalias !90
  %264 = fadd fast <4 x double> %259, %256
  %265 = fmul fast <4 x double> %264, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %266 = fadd fast <4 x double> %265, %wide.load1743
  %267 = bitcast i8* %262 to <4 x double>*
  store <4 x double> %266, <4 x double>* %267, align 8, !alias.scope !88, !noalias !90
  %index.next1734 = add i64 %index1733, 4
  %268 = icmp eq i64 %index.next1734, %n.vec1732
  br i1 %268, label %middle.block1724, label %vector.body1726, !llvm.loop !91

middle.block1724:                                 ; preds = %vector.body1726
  %cmp.n1736 = icmp eq i64 %241, %n.vec1732
  br i1 %cmp.n1736, label %polly.loop_exit282.us, label %polly.loop_header280.us.preheader

polly.loop_header280.us.preheader:                ; preds = %vector.memcheck1710, %polly.loop_header280.preheader.us, %middle.block1724
  %polly.indvar284.us.ph = phi i64 [ 0, %vector.memcheck1710 ], [ 0, %polly.loop_header280.preheader.us ], [ %n.vec1732, %middle.block1724 ]
  br label %polly.loop_header280.us

polly.loop_header251:                             ; preds = %polly.loop_header228.split, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %233, %polly.loop_header228.split ]
  %269 = add nuw nsw i64 %polly.indvar255, %175
  %polly.access.mul.call1259 = mul nsw i64 %269, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %97, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %234
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_header251.1

polly.start308:                                   ; preds = %kernel_syr2k.exit
  %malloccall310 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall312 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header396

polly.exiting309:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall310)
  tail call void @free(i8* %malloccall312)
  br label %kernel_syr2k.exit90

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.start308
  %indvar1451 = phi i64 [ %indvar.next1452, %polly.loop_exit404 ], [ 0, %polly.start308 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 1, %polly.start308 ]
  %270 = add i64 %indvar1451, 1
  %271 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %271
  %min.iters.check1453 = icmp ult i64 %270, 4
  br i1 %min.iters.check1453, label %polly.loop_header402.preheader, label %vector.ph1454

vector.ph1454:                                    ; preds = %polly.loop_header396
  %n.vec1456 = and i64 %270, -4
  br label %vector.body1450

vector.body1450:                                  ; preds = %vector.body1450, %vector.ph1454
  %index1457 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1458, %vector.body1450 ]
  %272 = shl nuw nsw i64 %index1457, 3
  %273 = getelementptr i8, i8* %scevgep408, i64 %272
  %274 = bitcast i8* %273 to <4 x double>*
  %wide.load1461 = load <4 x double>, <4 x double>* %274, align 8, !alias.scope !92, !noalias !94
  %275 = fmul fast <4 x double> %wide.load1461, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %276 = bitcast i8* %273 to <4 x double>*
  store <4 x double> %275, <4 x double>* %276, align 8, !alias.scope !92, !noalias !94
  %index.next1458 = add i64 %index1457, 4
  %277 = icmp eq i64 %index.next1458, %n.vec1456
  br i1 %277, label %middle.block1448, label %vector.body1450, !llvm.loop !99

middle.block1448:                                 ; preds = %vector.body1450
  %cmp.n1460 = icmp eq i64 %270, %n.vec1456
  br i1 %cmp.n1460, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header396, %middle.block1448
  %polly.indvar405.ph = phi i64 [ 0, %polly.loop_header396 ], [ %n.vec1456, %middle.block1448 ]
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402, %middle.block1448
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next400, 1200
  %indvar.next1452 = add i64 %indvar1451, 1
  br i1 %exitcond1134.not, label %polly.loop_header412.preheader, label %polly.loop_header396

polly.loop_header412.preheader:                   ; preds = %polly.loop_exit404
  %Packed_MemRef_call1311 = bitcast i8* %malloccall310 to double*
  %Packed_MemRef_call2313 = bitcast i8* %malloccall312 to double*
  %scevgep1494 = getelementptr i8, i8* %malloccall310, i64 19200
  %scevgep1495 = getelementptr i8, i8* %malloccall310, i64 19208
  %scevgep1529 = getelementptr i8, i8* %malloccall310, i64 9600
  %scevgep1530 = getelementptr i8, i8* %malloccall310, i64 9608
  %scevgep1564 = getelementptr i8, i8* %malloccall310, i64 8
  br label %polly.loop_header412

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_header402
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_header402 ], [ %polly.indvar405.ph, %polly.loop_header402.preheader ]
  %278 = shl nuw nsw i64 %polly.indvar405, 3
  %scevgep409 = getelementptr i8, i8* %scevgep408, i64 %278
  %scevgep409410 = bitcast i8* %scevgep409 to double*
  %_p_scalar_411 = load double, double* %scevgep409410, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_411, 1.200000e+00
  store double %p_mul.i57, double* %scevgep409410, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1133.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !100

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit420 ], [ 0, %polly.loop_header412.preheader ]
  %279 = shl nsw i64 %polly.indvar415, 2
  %280 = or i64 %279, 1
  %281 = or i64 %279, 2
  %282 = or i64 %279, 3
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next416, 250
  br i1 %exitcond1132.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %283 = shl nuw nsw i64 %polly.indvar421, 7
  %284 = mul nuw nsw i64 %polly.indvar421, 6
  %285 = shl nuw nsw i64 %polly.indvar421, 1
  %286 = udiv i64 %285, 5
  %287 = add nuw i64 %284, %286
  %288 = mul nuw nsw i64 %287, 20
  %289 = sub i64 %283, %288
  %290 = mul nsw i64 %polly.indvar421, -128
  %291 = add i64 %290, %288
  %292 = shl nuw nsw i64 %polly.indvar421, 10
  %293 = shl nuw nsw i64 %polly.indvar421, 7
  %294 = mul nuw nsw i64 %polly.indvar421, 6
  %295 = shl nuw nsw i64 %polly.indvar421, 1
  %296 = udiv i64 %295, 5
  %297 = add nuw i64 %294, %296
  %298 = mul nuw nsw i64 %297, 20
  %299 = sub i64 %293, %298
  %300 = or i64 %292, 8
  %301 = mul nsw i64 %polly.indvar421, -128
  %302 = add i64 %301, %298
  %303 = shl nuw nsw i64 %polly.indvar421, 7
  %304 = mul nuw nsw i64 %polly.indvar421, 6
  %305 = shl nuw nsw i64 %polly.indvar421, 1
  %306 = udiv i64 %305, 5
  %307 = add nuw i64 %304, %306
  %308 = mul nuw nsw i64 %307, 20
  %309 = sub i64 %303, %308
  %310 = mul nsw i64 %polly.indvar421, -128
  %311 = add i64 %310, %308
  %312 = shl nuw nsw i64 %polly.indvar421, 10
  %313 = shl nuw nsw i64 %polly.indvar421, 7
  %314 = mul nuw nsw i64 %polly.indvar421, 6
  %315 = shl nuw nsw i64 %polly.indvar421, 1
  %316 = udiv i64 %315, 5
  %317 = add nuw i64 %314, %316
  %318 = mul nuw nsw i64 %317, 20
  %319 = sub i64 %313, %318
  %320 = or i64 %312, 8
  %321 = mul nsw i64 %polly.indvar421, -128
  %322 = add i64 %321, %318
  %323 = shl nuw nsw i64 %polly.indvar421, 7
  %324 = mul nuw nsw i64 %polly.indvar421, 6
  %325 = shl nuw nsw i64 %polly.indvar421, 1
  %326 = udiv i64 %325, 5
  %327 = add nuw i64 %324, %326
  %328 = mul nuw nsw i64 %327, 20
  %329 = sub i64 %323, %328
  %330 = mul nsw i64 %polly.indvar421, -128
  %331 = add i64 %330, %328
  %332 = shl nuw nsw i64 %polly.indvar421, 10
  %333 = shl nuw nsw i64 %polly.indvar421, 7
  %334 = mul nuw nsw i64 %polly.indvar421, 6
  %335 = shl nuw nsw i64 %polly.indvar421, 1
  %336 = udiv i64 %335, 5
  %337 = add nuw i64 %334, %336
  %338 = mul nuw nsw i64 %337, 20
  %339 = sub i64 %333, %338
  %340 = or i64 %332, 8
  %341 = mul nsw i64 %polly.indvar421, -128
  %342 = add i64 %341, %338
  %343 = shl nuw nsw i64 %polly.indvar421, 7
  %344 = mul nuw nsw i64 %polly.indvar421, 6
  %345 = shl nuw nsw i64 %polly.indvar421, 1
  %346 = udiv i64 %345, 5
  %347 = add nuw i64 %344, %346
  %348 = mul nuw nsw i64 %347, 20
  %349 = sub i64 %343, %348
  %350 = mul nsw i64 %polly.indvar421, -128
  %351 = add i64 %350, %348
  %352 = udiv i64 %indvars.iv1117, 5
  %353 = add nuw i64 %indvars.iv1115, %352
  %354 = mul nuw nsw i64 %353, 20
  %355 = sub i64 %indvars.iv1113, %354
  %356 = add i64 %indvars.iv1122, %354
  %357 = shl nsw i64 %polly.indvar421, 7
  br label %polly.loop_header430

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1107 = add nsw i64 %indvars.iv1106, -128
  %indvars.iv.next1114 = add nuw nsw i64 %indvars.iv1113, 128
  %indvars.iv.next1116 = add nuw nsw i64 %indvars.iv1115, 6
  %indvars.iv.next1118 = add nuw nsw i64 %indvars.iv1117, 2
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, -128
  %exitcond1131.not = icmp eq i64 %polly.indvar_next422, 10
  br i1 %exitcond1131.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header430:                             ; preds = %polly.loop_header430, %polly.loop_header418
  %polly.indvar433 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next434, %polly.loop_header430 ]
  %358 = add nuw nsw i64 %polly.indvar433, %357
  %polly.access.mul.call2437 = mul nuw nsw i64 %358, 1000
  %polly.access.add.call2438 = add nuw nsw i64 %279, %polly.access.mul.call2437
  %polly.access.call2439 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438
  %polly.access.call2439.load = load double, double* %polly.access.call2439, align 8, !alias.scope !96, !noalias !101
  %polly.access.Packed_MemRef_call2313 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.indvar433
  store double %polly.access.call2439.load, double* %polly.access.Packed_MemRef_call2313, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1106
  br i1 %exitcond1108.not, label %polly.loop_header430.1, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit432.3
  %indvar1465 = phi i64 [ %indvar.next1466, %polly.loop_exit482 ], [ 0, %polly.loop_exit432.3 ]
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit482 ], [ %356, %polly.loop_exit432.3 ]
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit482 ], [ %355, %polly.loop_exit432.3 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %828, %polly.loop_exit432.3 ]
  %359 = mul nsw i64 %indvar1465, -20
  %360 = add i64 %289, %359
  %smax1573 = call i64 @llvm.smax.i64(i64 %360, i64 0)
  %361 = mul nuw nsw i64 %indvar1465, 20
  %362 = add i64 %291, %361
  %363 = add i64 %smax1573, %362
  %364 = mul nsw i64 %indvar1465, -20
  %365 = add i64 %299, %364
  %smax1557 = call i64 @llvm.smax.i64(i64 %365, i64 0)
  %366 = mul nuw nsw i64 %indvar1465, 20
  %367 = add i64 %298, %366
  %368 = add i64 %smax1557, %367
  %369 = mul nsw i64 %368, 9600
  %370 = add i64 %292, %369
  %371 = add i64 %300, %369
  %372 = add i64 %302, %366
  %373 = add i64 %smax1557, %372
  %374 = mul nsw i64 %indvar1465, -20
  %375 = add i64 %309, %374
  %smax1539 = call i64 @llvm.smax.i64(i64 %375, i64 0)
  %376 = mul nuw nsw i64 %indvar1465, 20
  %377 = add i64 %311, %376
  %378 = add i64 %smax1539, %377
  %379 = mul nsw i64 %indvar1465, -20
  %380 = add i64 %319, %379
  %smax1522 = call i64 @llvm.smax.i64(i64 %380, i64 0)
  %381 = mul nuw nsw i64 %indvar1465, 20
  %382 = add i64 %318, %381
  %383 = add i64 %smax1522, %382
  %384 = mul nsw i64 %383, 9600
  %385 = add i64 %312, %384
  %386 = add i64 %320, %384
  %387 = add i64 %322, %381
  %388 = add i64 %smax1522, %387
  %389 = mul nsw i64 %indvar1465, -20
  %390 = add i64 %329, %389
  %smax1504 = call i64 @llvm.smax.i64(i64 %390, i64 0)
  %391 = mul nuw nsw i64 %indvar1465, 20
  %392 = add i64 %331, %391
  %393 = add i64 %smax1504, %392
  %394 = mul nsw i64 %indvar1465, -20
  %395 = add i64 %339, %394
  %smax1487 = call i64 @llvm.smax.i64(i64 %395, i64 0)
  %396 = mul nuw nsw i64 %indvar1465, 20
  %397 = add i64 %338, %396
  %398 = add i64 %smax1487, %397
  %399 = mul nsw i64 %398, 9600
  %400 = add i64 %332, %399
  %401 = add i64 %340, %399
  %402 = add i64 %342, %396
  %403 = add i64 %smax1487, %402
  %404 = mul nsw i64 %indvar1465, -20
  %405 = add i64 %349, %404
  %smax1467 = call i64 @llvm.smax.i64(i64 %405, i64 0)
  %406 = mul nuw nsw i64 %indvar1465, 20
  %407 = add i64 %351, %406
  %408 = add i64 %smax1467, %407
  %smax1121 = call i64 @llvm.smax.i64(i64 %indvars.iv1119, i64 0)
  %409 = add i64 %smax1121, %indvars.iv1124
  %410 = mul nuw nsw i64 %polly.indvar444, 20
  %411 = add nsw i64 %410, %825
  %412 = add nsw i64 %411, -1
  %.inv942 = icmp sgt i64 %411, 127
  %413 = select i1 %.inv942, i64 127, i64 %412
  %polly.loop_guard457 = icmp sgt i64 %413, -1
  %414 = icmp sgt i64 %411, 0
  %415 = select i1 %414, i64 %411, i64 0
  %416 = add nsw i64 %411, 19
  %polly.loop_guard469.not = icmp sgt i64 %415, %416
  br i1 %polly.loop_guard457, label %polly.loop_header454.us, label %polly.loop_header441.split

polly.loop_header454.us:                          ; preds = %polly.loop_header441, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header441 ]
  %417 = add nuw nsw i64 %polly.indvar458.us, %357
  %polly.access.mul.call1462.us = mul nuw nsw i64 %417, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %279, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar458.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar458.us, %413
  br i1 %exitcond1111.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %415, %polly.loop_exit456.loopexit.us ]
  %418 = add nuw nsw i64 %polly.indvar470.us, %357
  %polly.access.mul.call1474.us = mul nsw i64 %418, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %279, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311479.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar470.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1311479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %416
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_header454.us.1.preheader

polly.loop_exit456.loopexit.us:                   ; preds = %polly.loop_header454.us
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.1.preheader, label %polly.loop_header466.us

polly.loop_header454.us.1.preheader:              ; preds = %polly.loop_header466.us, %polly.loop_exit456.loopexit.us
  br label %polly.loop_header454.us.1

polly.loop_header441.split:                       ; preds = %polly.loop_header441
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466

polly.loop_exit482:                               ; preds = %polly.loop_exit497.us.3, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp ult i64 %polly.indvar444, 59
  %indvars.iv.next1120 = add i64 %indvars.iv1119, -20
  %indvars.iv.next1125 = add i64 %indvars.iv1124, 20
  %indvar.next1466 = add i64 %indvar1465, 1
  br i1 %polly.loop_cond446, label %polly.loop_header441, label %polly.loop_exit443

polly.loop_header480.preheader:                   ; preds = %polly.loop_header466.3, %polly.loop_header466.us.3, %polly.loop_exit456.loopexit.us.3, %polly.loop_header441.split
  %419 = sub nsw i64 %357, %410
  %420 = icmp sgt i64 %419, 0
  %421 = select i1 %420, i64 %419, i64 0
  %polly.loop_guard490 = icmp slt i64 %421, 20
  br i1 %polly.loop_guard490, label %polly.loop_header487.us, label %polly.loop_exit482

polly.loop_header487.us:                          ; preds = %polly.loop_header480.preheader, %polly.loop_exit497.us
  %indvar1558 = phi i64 [ %indvar.next1559, %polly.loop_exit497.us ], [ 0, %polly.loop_header480.preheader ]
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit497.us ], [ %409, %polly.loop_header480.preheader ]
  %polly.indvar491.us = phi i64 [ %polly.indvar_next492.us, %polly.loop_exit497.us ], [ %421, %polly.loop_header480.preheader ]
  %422 = add i64 %363, %indvar1558
  %smin1574 = call i64 @llvm.smin.i64(i64 %422, i64 127)
  %423 = add nsw i64 %smin1574, 1
  %424 = mul nuw nsw i64 %indvar1558, 9600
  %425 = add i64 %370, %424
  %scevgep1560 = getelementptr i8, i8* %call, i64 %425
  %426 = add i64 %371, %424
  %scevgep1561 = getelementptr i8, i8* %call, i64 %426
  %427 = add i64 %373, %indvar1558
  %smin1562 = call i64 @llvm.smin.i64(i64 %427, i64 127)
  %428 = shl nsw i64 %smin1562, 3
  %scevgep1563 = getelementptr i8, i8* %scevgep1561, i64 %428
  %scevgep1565 = getelementptr i8, i8* %scevgep1564, i64 %428
  %smin1128 = call i64 @llvm.smin.i64(i64 %indvars.iv1126, i64 127)
  %429 = add nsw i64 %polly.indvar491.us, %411
  %polly.loop_guard498.us1202 = icmp sgt i64 %429, -1
  br i1 %polly.loop_guard498.us1202, label %polly.loop_header495.preheader.us, label %polly.loop_exit497.us

polly.loop_header495.us:                          ; preds = %polly.loop_header495.us.preheader, %polly.loop_header495.us
  %polly.indvar499.us = phi i64 [ %polly.indvar_next500.us, %polly.loop_header495.us ], [ %polly.indvar499.us.ph, %polly.loop_header495.us.preheader ]
  %430 = add nuw nsw i64 %polly.indvar499.us, %357
  %polly.access.Packed_MemRef_call1311504.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar499.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1311504.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %polly.access.Packed_MemRef_call2313512.us = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.indvar499.us
  %_p_scalar_513.us = load double, double* %polly.access.Packed_MemRef_call2313512.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_517.us, %_p_scalar_513.us
  %431 = shl i64 %430, 3
  %432 = add i64 %431, %434
  %scevgep518.us = getelementptr i8, i8* %call, i64 %432
  %scevgep518519.us = bitcast i8* %scevgep518.us to double*
  %_p_scalar_520.us = load double, double* %scevgep518519.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_520.us
  store double %p_add42.i79.us, double* %scevgep518519.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.us = add nuw nsw i64 %polly.indvar499.us, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar499.us, %smin1128
  br i1 %exitcond1129.not, label %polly.loop_exit497.us, label %polly.loop_header495.us, !llvm.loop !103

polly.loop_exit497.us:                            ; preds = %polly.loop_header495.us, %middle.block1570, %polly.loop_header487.us
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %polly.loop_cond493.us = icmp ult i64 %polly.indvar491.us, 19
  %indvars.iv.next1127 = add i64 %indvars.iv1126, 1
  %indvar.next1559 = add i64 %indvar1558, 1
  br i1 %polly.loop_cond493.us, label %polly.loop_header487.us, label %polly.loop_header487.us.1

polly.loop_header495.preheader.us:                ; preds = %polly.loop_header487.us
  %433 = add nuw nsw i64 %polly.indvar491.us, %410
  %polly.access.Packed_MemRef_call2313508.us = getelementptr double, double* %Packed_MemRef_call2313, i64 %429
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call2313508.us, align 8
  %polly.access.Packed_MemRef_call1311516.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %429
  %_p_scalar_517.us = load double, double* %polly.access.Packed_MemRef_call1311516.us, align 8
  %434 = mul i64 %433, 9600
  %min.iters.check1575 = icmp ult i64 %423, 4
  br i1 %min.iters.check1575, label %polly.loop_header495.us.preheader, label %vector.memcheck1556

vector.memcheck1556:                              ; preds = %polly.loop_header495.preheader.us
  %bound01566 = icmp ult i8* %scevgep1560, %scevgep1565
  %bound11567 = icmp ult i8* %malloccall310, %scevgep1563
  %found.conflict1568 = and i1 %bound01566, %bound11567
  br i1 %found.conflict1568, label %polly.loop_header495.us.preheader, label %vector.ph1576

vector.ph1576:                                    ; preds = %vector.memcheck1556
  %n.vec1578 = and i64 %423, -4
  %broadcast.splatinsert1584 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1585 = shufflevector <4 x double> %broadcast.splatinsert1584, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1587 = insertelement <4 x double> poison, double %_p_scalar_517.us, i32 0
  %broadcast.splat1588 = shufflevector <4 x double> %broadcast.splatinsert1587, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1572

vector.body1572:                                  ; preds = %vector.body1572, %vector.ph1576
  %index1579 = phi i64 [ 0, %vector.ph1576 ], [ %index.next1580, %vector.body1572 ]
  %435 = add nuw nsw i64 %index1579, %357
  %436 = getelementptr double, double* %Packed_MemRef_call1311, i64 %index1579
  %437 = bitcast double* %436 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %437, align 8, !alias.scope !104
  %438 = fmul fast <4 x double> %broadcast.splat1585, %wide.load1583
  %439 = getelementptr double, double* %Packed_MemRef_call2313, i64 %index1579
  %440 = bitcast double* %439 to <4 x double>*
  %wide.load1586 = load <4 x double>, <4 x double>* %440, align 8
  %441 = fmul fast <4 x double> %broadcast.splat1588, %wide.load1586
  %442 = shl i64 %435, 3
  %443 = add i64 %442, %434
  %444 = getelementptr i8, i8* %call, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  %wide.load1589 = load <4 x double>, <4 x double>* %445, align 8, !alias.scope !107, !noalias !109
  %446 = fadd fast <4 x double> %441, %438
  %447 = fmul fast <4 x double> %446, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %448 = fadd fast <4 x double> %447, %wide.load1589
  %449 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %448, <4 x double>* %449, align 8, !alias.scope !107, !noalias !109
  %index.next1580 = add i64 %index1579, 4
  %450 = icmp eq i64 %index.next1580, %n.vec1578
  br i1 %450, label %middle.block1570, label %vector.body1572, !llvm.loop !110

middle.block1570:                                 ; preds = %vector.body1572
  %cmp.n1582 = icmp eq i64 %423, %n.vec1578
  br i1 %cmp.n1582, label %polly.loop_exit497.us, label %polly.loop_header495.us.preheader

polly.loop_header495.us.preheader:                ; preds = %vector.memcheck1556, %polly.loop_header495.preheader.us, %middle.block1570
  %polly.indvar499.us.ph = phi i64 [ 0, %vector.memcheck1556 ], [ 0, %polly.loop_header495.preheader.us ], [ %n.vec1578, %middle.block1570 ]
  br label %polly.loop_header495.us

polly.loop_header466:                             ; preds = %polly.loop_header441.split, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %415, %polly.loop_header441.split ]
  %451 = add nuw nsw i64 %polly.indvar470, %357
  %polly.access.mul.call1474 = mul nsw i64 %451, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %279, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar470
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %416
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_header466.1

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall527 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %452 = add i64 %indvar, 1
  %453 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %453
  %min.iters.check1299 = icmp ult i64 %452, 4
  br i1 %min.iters.check1299, label %polly.loop_header617.preheader, label %vector.ph1300

vector.ph1300:                                    ; preds = %polly.loop_header611
  %n.vec1302 = and i64 %452, -4
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %vector.ph1300
  %index1303 = phi i64 [ 0, %vector.ph1300 ], [ %index.next1304, %vector.body1298 ]
  %454 = shl nuw nsw i64 %index1303, 3
  %455 = getelementptr i8, i8* %scevgep623, i64 %454
  %456 = bitcast i8* %455 to <4 x double>*
  %wide.load1307 = load <4 x double>, <4 x double>* %456, align 8, !alias.scope !111, !noalias !113
  %457 = fmul fast <4 x double> %wide.load1307, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %458 = bitcast i8* %455 to <4 x double>*
  store <4 x double> %457, <4 x double>* %458, align 8, !alias.scope !111, !noalias !113
  %index.next1304 = add i64 %index1303, 4
  %459 = icmp eq i64 %index.next1304, %n.vec1302
  br i1 %459, label %middle.block1296, label %vector.body1298, !llvm.loop !118

middle.block1296:                                 ; preds = %vector.body1298
  %cmp.n1306 = icmp eq i64 %452, %n.vec1302
  br i1 %cmp.n1306, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1296
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1302, %middle.block1296 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1296
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1163.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  %scevgep1340 = getelementptr i8, i8* %malloccall525, i64 19200
  %scevgep1341 = getelementptr i8, i8* %malloccall525, i64 19208
  %scevgep1375 = getelementptr i8, i8* %malloccall525, i64 9600
  %scevgep1376 = getelementptr i8, i8* %malloccall525, i64 9608
  %scevgep1410 = getelementptr i8, i8* %malloccall525, i64 8
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %460 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %460
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !111, !noalias !113
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1162.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !119

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %461 = shl nsw i64 %polly.indvar630, 2
  %462 = or i64 %461, 1
  %463 = or i64 %461, 2
  %464 = or i64 %461, 3
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar_next631, 250
  br i1 %exitcond1161.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %465 = shl nuw nsw i64 %polly.indvar636, 7
  %466 = mul nuw nsw i64 %polly.indvar636, 6
  %467 = shl nuw nsw i64 %polly.indvar636, 1
  %468 = udiv i64 %467, 5
  %469 = add nuw i64 %466, %468
  %470 = mul nuw nsw i64 %469, 20
  %471 = sub i64 %465, %470
  %472 = mul nsw i64 %polly.indvar636, -128
  %473 = add i64 %472, %470
  %474 = shl nuw nsw i64 %polly.indvar636, 10
  %475 = shl nuw nsw i64 %polly.indvar636, 7
  %476 = mul nuw nsw i64 %polly.indvar636, 6
  %477 = shl nuw nsw i64 %polly.indvar636, 1
  %478 = udiv i64 %477, 5
  %479 = add nuw i64 %476, %478
  %480 = mul nuw nsw i64 %479, 20
  %481 = sub i64 %475, %480
  %482 = or i64 %474, 8
  %483 = mul nsw i64 %polly.indvar636, -128
  %484 = add i64 %483, %480
  %485 = shl nuw nsw i64 %polly.indvar636, 7
  %486 = mul nuw nsw i64 %polly.indvar636, 6
  %487 = shl nuw nsw i64 %polly.indvar636, 1
  %488 = udiv i64 %487, 5
  %489 = add nuw i64 %486, %488
  %490 = mul nuw nsw i64 %489, 20
  %491 = sub i64 %485, %490
  %492 = mul nsw i64 %polly.indvar636, -128
  %493 = add i64 %492, %490
  %494 = shl nuw nsw i64 %polly.indvar636, 10
  %495 = shl nuw nsw i64 %polly.indvar636, 7
  %496 = mul nuw nsw i64 %polly.indvar636, 6
  %497 = shl nuw nsw i64 %polly.indvar636, 1
  %498 = udiv i64 %497, 5
  %499 = add nuw i64 %496, %498
  %500 = mul nuw nsw i64 %499, 20
  %501 = sub i64 %495, %500
  %502 = or i64 %494, 8
  %503 = mul nsw i64 %polly.indvar636, -128
  %504 = add i64 %503, %500
  %505 = shl nuw nsw i64 %polly.indvar636, 7
  %506 = mul nuw nsw i64 %polly.indvar636, 6
  %507 = shl nuw nsw i64 %polly.indvar636, 1
  %508 = udiv i64 %507, 5
  %509 = add nuw i64 %506, %508
  %510 = mul nuw nsw i64 %509, 20
  %511 = sub i64 %505, %510
  %512 = mul nsw i64 %polly.indvar636, -128
  %513 = add i64 %512, %510
  %514 = shl nuw nsw i64 %polly.indvar636, 10
  %515 = shl nuw nsw i64 %polly.indvar636, 7
  %516 = mul nuw nsw i64 %polly.indvar636, 6
  %517 = shl nuw nsw i64 %polly.indvar636, 1
  %518 = udiv i64 %517, 5
  %519 = add nuw i64 %516, %518
  %520 = mul nuw nsw i64 %519, 20
  %521 = sub i64 %515, %520
  %522 = or i64 %514, 8
  %523 = mul nsw i64 %polly.indvar636, -128
  %524 = add i64 %523, %520
  %525 = shl nuw nsw i64 %polly.indvar636, 7
  %526 = mul nuw nsw i64 %polly.indvar636, 6
  %527 = shl nuw nsw i64 %polly.indvar636, 1
  %528 = udiv i64 %527, 5
  %529 = add nuw i64 %526, %528
  %530 = mul nuw nsw i64 %529, 20
  %531 = sub i64 %525, %530
  %532 = mul nsw i64 %polly.indvar636, -128
  %533 = add i64 %532, %530
  %534 = udiv i64 %indvars.iv1146, 5
  %535 = add nuw i64 %indvars.iv1144, %534
  %536 = mul nuw nsw i64 %535, 20
  %537 = sub i64 %indvars.iv1142, %536
  %538 = add i64 %indvars.iv1151, %536
  %539 = shl nsw i64 %polly.indvar636, 7
  br label %polly.loop_header645

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1136 = add nsw i64 %indvars.iv1135, -128
  %indvars.iv.next1143 = add nuw nsw i64 %indvars.iv1142, 128
  %indvars.iv.next1145 = add nuw nsw i64 %indvars.iv1144, 6
  %indvars.iv.next1147 = add nuw nsw i64 %indvars.iv1146, 2
  %indvars.iv.next1152 = add nsw i64 %indvars.iv1151, -128
  %exitcond1160.not = icmp eq i64 %polly.indvar_next637, 10
  br i1 %exitcond1160.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header633
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %540 = add nuw nsw i64 %polly.indvar648, %539
  %polly.access.mul.call2652 = mul nuw nsw i64 %540, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %461, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !115, !noalias !120
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar648
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1135
  br i1 %exitcond1137.not, label %polly.loop_header645.1, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit647.3
  %indvar1311 = phi i64 [ %indvar.next1312, %polly.loop_exit697 ], [ 0, %polly.loop_exit647.3 ]
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit697 ], [ %538, %polly.loop_exit647.3 ]
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %polly.loop_exit697 ], [ %537, %polly.loop_exit647.3 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %929, %polly.loop_exit647.3 ]
  %541 = mul nsw i64 %indvar1311, -20
  %542 = add i64 %471, %541
  %smax1419 = call i64 @llvm.smax.i64(i64 %542, i64 0)
  %543 = mul nuw nsw i64 %indvar1311, 20
  %544 = add i64 %473, %543
  %545 = add i64 %smax1419, %544
  %546 = mul nsw i64 %indvar1311, -20
  %547 = add i64 %481, %546
  %smax1403 = call i64 @llvm.smax.i64(i64 %547, i64 0)
  %548 = mul nuw nsw i64 %indvar1311, 20
  %549 = add i64 %480, %548
  %550 = add i64 %smax1403, %549
  %551 = mul nsw i64 %550, 9600
  %552 = add i64 %474, %551
  %553 = add i64 %482, %551
  %554 = add i64 %484, %548
  %555 = add i64 %smax1403, %554
  %556 = mul nsw i64 %indvar1311, -20
  %557 = add i64 %491, %556
  %smax1385 = call i64 @llvm.smax.i64(i64 %557, i64 0)
  %558 = mul nuw nsw i64 %indvar1311, 20
  %559 = add i64 %493, %558
  %560 = add i64 %smax1385, %559
  %561 = mul nsw i64 %indvar1311, -20
  %562 = add i64 %501, %561
  %smax1368 = call i64 @llvm.smax.i64(i64 %562, i64 0)
  %563 = mul nuw nsw i64 %indvar1311, 20
  %564 = add i64 %500, %563
  %565 = add i64 %smax1368, %564
  %566 = mul nsw i64 %565, 9600
  %567 = add i64 %494, %566
  %568 = add i64 %502, %566
  %569 = add i64 %504, %563
  %570 = add i64 %smax1368, %569
  %571 = mul nsw i64 %indvar1311, -20
  %572 = add i64 %511, %571
  %smax1350 = call i64 @llvm.smax.i64(i64 %572, i64 0)
  %573 = mul nuw nsw i64 %indvar1311, 20
  %574 = add i64 %513, %573
  %575 = add i64 %smax1350, %574
  %576 = mul nsw i64 %indvar1311, -20
  %577 = add i64 %521, %576
  %smax1333 = call i64 @llvm.smax.i64(i64 %577, i64 0)
  %578 = mul nuw nsw i64 %indvar1311, 20
  %579 = add i64 %520, %578
  %580 = add i64 %smax1333, %579
  %581 = mul nsw i64 %580, 9600
  %582 = add i64 %514, %581
  %583 = add i64 %522, %581
  %584 = add i64 %524, %578
  %585 = add i64 %smax1333, %584
  %586 = mul nsw i64 %indvar1311, -20
  %587 = add i64 %531, %586
  %smax1313 = call i64 @llvm.smax.i64(i64 %587, i64 0)
  %588 = mul nuw nsw i64 %indvar1311, 20
  %589 = add i64 %533, %588
  %590 = add i64 %smax1313, %589
  %smax1150 = call i64 @llvm.smax.i64(i64 %indvars.iv1148, i64 0)
  %591 = add i64 %smax1150, %indvars.iv1153
  %592 = mul nuw nsw i64 %polly.indvar659, 20
  %593 = add nsw i64 %592, %926
  %594 = add nsw i64 %593, -1
  %.inv943 = icmp sgt i64 %593, 127
  %595 = select i1 %.inv943, i64 127, i64 %594
  %polly.loop_guard672 = icmp sgt i64 %595, -1
  %596 = icmp sgt i64 %593, 0
  %597 = select i1 %596, i64 %593, i64 0
  %598 = add nsw i64 %593, 19
  %polly.loop_guard684.not = icmp sgt i64 %597, %598
  br i1 %polly.loop_guard672, label %polly.loop_header669.us, label %polly.loop_header656.split

polly.loop_header669.us:                          ; preds = %polly.loop_header656, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header656 ]
  %599 = add nuw nsw i64 %polly.indvar673.us, %539
  %polly.access.mul.call1677.us = mul nuw nsw i64 %599, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %461, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar673.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar673.us, %595
  br i1 %exitcond1140.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %597, %polly.loop_exit671.loopexit.us ]
  %600 = add nuw nsw i64 %polly.indvar685.us, %539
  %polly.access.mul.call1689.us = mul nsw i64 %600, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %461, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar685.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %598
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_header669.us.1.preheader

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.1.preheader, label %polly.loop_header681.us

polly.loop_header669.us.1.preheader:              ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  br label %polly.loop_header669.us.1

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header681

polly.loop_exit697:                               ; preds = %polly.loop_exit712.us.3, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp ult i64 %polly.indvar659, 59
  %indvars.iv.next1149 = add i64 %indvars.iv1148, -20
  %indvars.iv.next1154 = add i64 %indvars.iv1153, 20
  %indvar.next1312 = add i64 %indvar1311, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header695.preheader:                   ; preds = %polly.loop_header681.3, %polly.loop_header681.us.3, %polly.loop_exit671.loopexit.us.3, %polly.loop_header656.split
  %601 = sub nsw i64 %539, %592
  %602 = icmp sgt i64 %601, 0
  %603 = select i1 %602, i64 %601, i64 0
  %polly.loop_guard705 = icmp slt i64 %603, 20
  br i1 %polly.loop_guard705, label %polly.loop_header702.us, label %polly.loop_exit697

polly.loop_header702.us:                          ; preds = %polly.loop_header695.preheader, %polly.loop_exit712.us
  %indvar1404 = phi i64 [ %indvar.next1405, %polly.loop_exit712.us ], [ 0, %polly.loop_header695.preheader ]
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit712.us ], [ %591, %polly.loop_header695.preheader ]
  %polly.indvar706.us = phi i64 [ %polly.indvar_next707.us, %polly.loop_exit712.us ], [ %603, %polly.loop_header695.preheader ]
  %604 = add i64 %545, %indvar1404
  %smin1420 = call i64 @llvm.smin.i64(i64 %604, i64 127)
  %605 = add nsw i64 %smin1420, 1
  %606 = mul nuw nsw i64 %indvar1404, 9600
  %607 = add i64 %552, %606
  %scevgep1406 = getelementptr i8, i8* %call, i64 %607
  %608 = add i64 %553, %606
  %scevgep1407 = getelementptr i8, i8* %call, i64 %608
  %609 = add i64 %555, %indvar1404
  %smin1408 = call i64 @llvm.smin.i64(i64 %609, i64 127)
  %610 = shl nsw i64 %smin1408, 3
  %scevgep1409 = getelementptr i8, i8* %scevgep1407, i64 %610
  %scevgep1411 = getelementptr i8, i8* %scevgep1410, i64 %610
  %smin1157 = call i64 @llvm.smin.i64(i64 %indvars.iv1155, i64 127)
  %611 = add nsw i64 %polly.indvar706.us, %593
  %polly.loop_guard713.us1206 = icmp sgt i64 %611, -1
  br i1 %polly.loop_guard713.us1206, label %polly.loop_header710.preheader.us, label %polly.loop_exit712.us

polly.loop_header710.us:                          ; preds = %polly.loop_header710.us.preheader, %polly.loop_header710.us
  %polly.indvar714.us = phi i64 [ %polly.indvar_next715.us, %polly.loop_header710.us ], [ %polly.indvar714.us.ph, %polly.loop_header710.us.preheader ]
  %612 = add nuw nsw i64 %polly.indvar714.us, %539
  %polly.access.Packed_MemRef_call1526719.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar714.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call1526719.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_724.us, %_p_scalar_720.us
  %polly.access.Packed_MemRef_call2528727.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar714.us
  %_p_scalar_728.us = load double, double* %polly.access.Packed_MemRef_call2528727.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_732.us, %_p_scalar_728.us
  %613 = shl i64 %612, 3
  %614 = add i64 %613, %616
  %scevgep733.us = getelementptr i8, i8* %call, i64 %614
  %scevgep733734.us = bitcast i8* %scevgep733.us to double*
  %_p_scalar_735.us = load double, double* %scevgep733734.us, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_735.us
  store double %p_add42.i.us, double* %scevgep733734.us, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.us = add nuw nsw i64 %polly.indvar714.us, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar714.us, %smin1157
  br i1 %exitcond1158.not, label %polly.loop_exit712.us, label %polly.loop_header710.us, !llvm.loop !122

polly.loop_exit712.us:                            ; preds = %polly.loop_header710.us, %middle.block1416, %polly.loop_header702.us
  %polly.indvar_next707.us = add nuw nsw i64 %polly.indvar706.us, 1
  %polly.loop_cond708.us = icmp ult i64 %polly.indvar706.us, 19
  %indvars.iv.next1156 = add i64 %indvars.iv1155, 1
  %indvar.next1405 = add i64 %indvar1404, 1
  br i1 %polly.loop_cond708.us, label %polly.loop_header702.us, label %polly.loop_header702.us.1

polly.loop_header710.preheader.us:                ; preds = %polly.loop_header702.us
  %615 = add nuw nsw i64 %polly.indvar706.us, %592
  %polly.access.Packed_MemRef_call2528723.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %611
  %_p_scalar_724.us = load double, double* %polly.access.Packed_MemRef_call2528723.us, align 8
  %polly.access.Packed_MemRef_call1526731.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %611
  %_p_scalar_732.us = load double, double* %polly.access.Packed_MemRef_call1526731.us, align 8
  %616 = mul i64 %615, 9600
  %min.iters.check1421 = icmp ult i64 %605, 4
  br i1 %min.iters.check1421, label %polly.loop_header710.us.preheader, label %vector.memcheck1402

vector.memcheck1402:                              ; preds = %polly.loop_header710.preheader.us
  %bound01412 = icmp ult i8* %scevgep1406, %scevgep1411
  %bound11413 = icmp ult i8* %malloccall525, %scevgep1409
  %found.conflict1414 = and i1 %bound01412, %bound11413
  br i1 %found.conflict1414, label %polly.loop_header710.us.preheader, label %vector.ph1422

vector.ph1422:                                    ; preds = %vector.memcheck1402
  %n.vec1424 = and i64 %605, -4
  %broadcast.splatinsert1430 = insertelement <4 x double> poison, double %_p_scalar_724.us, i32 0
  %broadcast.splat1431 = shufflevector <4 x double> %broadcast.splatinsert1430, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1433 = insertelement <4 x double> poison, double %_p_scalar_732.us, i32 0
  %broadcast.splat1434 = shufflevector <4 x double> %broadcast.splatinsert1433, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1418

vector.body1418:                                  ; preds = %vector.body1418, %vector.ph1422
  %index1425 = phi i64 [ 0, %vector.ph1422 ], [ %index.next1426, %vector.body1418 ]
  %617 = add nuw nsw i64 %index1425, %539
  %618 = getelementptr double, double* %Packed_MemRef_call1526, i64 %index1425
  %619 = bitcast double* %618 to <4 x double>*
  %wide.load1429 = load <4 x double>, <4 x double>* %619, align 8, !alias.scope !123
  %620 = fmul fast <4 x double> %broadcast.splat1431, %wide.load1429
  %621 = getelementptr double, double* %Packed_MemRef_call2528, i64 %index1425
  %622 = bitcast double* %621 to <4 x double>*
  %wide.load1432 = load <4 x double>, <4 x double>* %622, align 8
  %623 = fmul fast <4 x double> %broadcast.splat1434, %wide.load1432
  %624 = shl i64 %617, 3
  %625 = add i64 %624, %616
  %626 = getelementptr i8, i8* %call, i64 %625
  %627 = bitcast i8* %626 to <4 x double>*
  %wide.load1435 = load <4 x double>, <4 x double>* %627, align 8, !alias.scope !126, !noalias !128
  %628 = fadd fast <4 x double> %623, %620
  %629 = fmul fast <4 x double> %628, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %630 = fadd fast <4 x double> %629, %wide.load1435
  %631 = bitcast i8* %626 to <4 x double>*
  store <4 x double> %630, <4 x double>* %631, align 8, !alias.scope !126, !noalias !128
  %index.next1426 = add i64 %index1425, 4
  %632 = icmp eq i64 %index.next1426, %n.vec1424
  br i1 %632, label %middle.block1416, label %vector.body1418, !llvm.loop !129

middle.block1416:                                 ; preds = %vector.body1418
  %cmp.n1428 = icmp eq i64 %605, %n.vec1424
  br i1 %cmp.n1428, label %polly.loop_exit712.us, label %polly.loop_header710.us.preheader

polly.loop_header710.us.preheader:                ; preds = %vector.memcheck1402, %polly.loop_header710.preheader.us, %middle.block1416
  %polly.indvar714.us.ph = phi i64 [ 0, %vector.memcheck1402 ], [ 0, %polly.loop_header710.preheader.us ], [ %n.vec1424, %middle.block1416 ]
  br label %polly.loop_header710.us

polly.loop_header681:                             ; preds = %polly.loop_header656.split, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %597, %polly.loop_header656.split ]
  %633 = add nuw nsw i64 %polly.indvar685, %539
  %polly.access.mul.call1689 = mul nsw i64 %633, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %461, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar685
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %598
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_header681.1

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %indvars.iv1188 = phi i64 [ %indvars.iv.next1189, %polly.loop_exit870 ], [ 0, %entry ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %smin1190 = call i64 @llvm.smin.i64(i64 %indvars.iv1188, i64 -1168)
  %634 = shl nsw i64 %polly.indvar865, 5
  %635 = add nsw i64 %smin1190, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1189 = add nsw i64 %indvars.iv1188, -32
  %exitcond1193.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1193.not, label %polly.loop_header889, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1184 = phi i64 [ %indvars.iv.next1185, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %636 = mul nsw i64 %polly.indvar871, -32
  %smin1237 = call i64 @llvm.smin.i64(i64 %636, i64 -1168)
  %637 = add nsw i64 %smin1237, 1200
  %smin1186 = call i64 @llvm.smin.i64(i64 %indvars.iv1184, i64 -1168)
  %638 = shl nsw i64 %polly.indvar871, 5
  %639 = add nsw i64 %smin1186, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1185 = add nsw i64 %indvars.iv1184, -32
  %exitcond1192.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1192.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %640 = add nuw nsw i64 %polly.indvar877, %634
  %641 = trunc i64 %640 to i32
  %642 = mul nuw nsw i64 %640, 9600
  %min.iters.check = icmp eq i64 %637, 0
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1238

vector.ph1238:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1245 = insertelement <4 x i64> poison, i64 %638, i32 0
  %broadcast.splat1246 = shufflevector <4 x i64> %broadcast.splatinsert1245, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1247 = insertelement <4 x i32> poison, i32 %641, i32 0
  %broadcast.splat1248 = shufflevector <4 x i32> %broadcast.splatinsert1247, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %vector.ph1238
  %index1239 = phi i64 [ 0, %vector.ph1238 ], [ %index.next1240, %vector.body1236 ]
  %vec.ind1243 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1238 ], [ %vec.ind.next1244, %vector.body1236 ]
  %643 = add nuw nsw <4 x i64> %vec.ind1243, %broadcast.splat1246
  %644 = trunc <4 x i64> %643 to <4 x i32>
  %645 = mul <4 x i32> %broadcast.splat1248, %644
  %646 = add <4 x i32> %645, <i32 3, i32 3, i32 3, i32 3>
  %647 = urem <4 x i32> %646, <i32 1200, i32 1200, i32 1200, i32 1200>
  %648 = sitofp <4 x i32> %647 to <4 x double>
  %649 = fmul fast <4 x double> %648, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %650 = extractelement <4 x i64> %643, i32 0
  %651 = shl i64 %650, 3
  %652 = add nuw nsw i64 %651, %642
  %653 = getelementptr i8, i8* %call, i64 %652
  %654 = bitcast i8* %653 to <4 x double>*
  store <4 x double> %649, <4 x double>* %654, align 8, !alias.scope !130, !noalias !132
  %index.next1240 = add i64 %index1239, 4
  %vec.ind.next1244 = add <4 x i64> %vec.ind1243, <i64 4, i64 4, i64 4, i64 4>
  %655 = icmp eq i64 %index.next1240, %637
  br i1 %655, label %polly.loop_exit882, label %vector.body1236, !llvm.loop !135

polly.loop_exit882:                               ; preds = %vector.body1236, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1191.not = icmp eq i64 %polly.indvar877, %635
  br i1 %exitcond1191.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %656 = add nuw nsw i64 %polly.indvar883, %638
  %657 = trunc i64 %656 to i32
  %658 = mul i32 %657, %641
  %659 = add i32 %658, 3
  %660 = urem i32 %659, 1200
  %p_conv31.i = sitofp i32 %660 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %661 = shl i64 %656, 3
  %662 = add nuw nsw i64 %661, %642
  %scevgep886 = getelementptr i8, i8* %call, i64 %662
  %scevgep886887 = bitcast i8* %scevgep886 to double*
  store double %p_div33.i, double* %scevgep886887, align 8, !alias.scope !130, !noalias !132
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1187.not = icmp eq i64 %polly.indvar883, %639
  br i1 %exitcond1187.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !136

polly.loop_header889:                             ; preds = %polly.loop_exit870, %polly.loop_exit897
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1178, i64 -1168)
  %663 = shl nsw i64 %polly.indvar892, 5
  %664 = add nsw i64 %smin1180, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -32
  %exitcond1183.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1183.not, label %polly.loop_header915, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1174 = phi i64 [ %indvars.iv.next1175, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %665 = mul nsw i64 %polly.indvar898, -32
  %smin1252 = call i64 @llvm.smin.i64(i64 %665, i64 -968)
  %666 = add nsw i64 %smin1252, 1000
  %smin1176 = call i64 @llvm.smin.i64(i64 %indvars.iv1174, i64 -968)
  %667 = shl nsw i64 %polly.indvar898, 5
  %668 = add nsw i64 %smin1176, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1175 = add nsw i64 %indvars.iv1174, -32
  %exitcond1182.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1182.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %669 = add nuw nsw i64 %polly.indvar904, %663
  %670 = trunc i64 %669 to i32
  %671 = mul nuw nsw i64 %669, 8000
  %min.iters.check1253 = icmp eq i64 %666, 0
  br i1 %min.iters.check1253, label %polly.loop_header907, label %vector.ph1254

vector.ph1254:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1263 = insertelement <4 x i64> poison, i64 %667, i32 0
  %broadcast.splat1264 = shufflevector <4 x i64> %broadcast.splatinsert1263, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1265 = insertelement <4 x i32> poison, i32 %670, i32 0
  %broadcast.splat1266 = shufflevector <4 x i32> %broadcast.splatinsert1265, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1254
  %index1257 = phi i64 [ 0, %vector.ph1254 ], [ %index.next1258, %vector.body1251 ]
  %vec.ind1261 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1254 ], [ %vec.ind.next1262, %vector.body1251 ]
  %672 = add nuw nsw <4 x i64> %vec.ind1261, %broadcast.splat1264
  %673 = trunc <4 x i64> %672 to <4 x i32>
  %674 = mul <4 x i32> %broadcast.splat1266, %673
  %675 = add <4 x i32> %674, <i32 2, i32 2, i32 2, i32 2>
  %676 = urem <4 x i32> %675, <i32 1000, i32 1000, i32 1000, i32 1000>
  %677 = sitofp <4 x i32> %676 to <4 x double>
  %678 = fmul fast <4 x double> %677, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %679 = extractelement <4 x i64> %672, i32 0
  %680 = shl i64 %679, 3
  %681 = add nuw nsw i64 %680, %671
  %682 = getelementptr i8, i8* %call2, i64 %681
  %683 = bitcast i8* %682 to <4 x double>*
  store <4 x double> %678, <4 x double>* %683, align 8, !alias.scope !134, !noalias !137
  %index.next1258 = add i64 %index1257, 4
  %vec.ind.next1262 = add <4 x i64> %vec.ind1261, <i64 4, i64 4, i64 4, i64 4>
  %684 = icmp eq i64 %index.next1258, %666
  br i1 %684, label %polly.loop_exit909, label %vector.body1251, !llvm.loop !138

polly.loop_exit909:                               ; preds = %vector.body1251, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar904, %664
  br i1 %exitcond1181.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %685 = add nuw nsw i64 %polly.indvar910, %667
  %686 = trunc i64 %685 to i32
  %687 = mul i32 %686, %670
  %688 = add i32 %687, 2
  %689 = urem i32 %688, 1000
  %p_conv10.i = sitofp i32 %689 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %690 = shl i64 %685, 3
  %691 = add nuw nsw i64 %690, %671
  %scevgep913 = getelementptr i8, i8* %call2, i64 %691
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div12.i, double* %scevgep913914, align 8, !alias.scope !134, !noalias !137
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar910, %668
  br i1 %exitcond1177.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !139

polly.loop_header915:                             ; preds = %polly.loop_exit897, %polly.loop_exit923
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %smin1170 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -1168)
  %692 = shl nsw i64 %polly.indvar918, 5
  %693 = add nsw i64 %smin1170, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -32
  %exitcond1173.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1173.not, label %init_array.exit, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1164 = phi i64 [ %indvars.iv.next1165, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %694 = mul nsw i64 %polly.indvar924, -32
  %smin1270 = call i64 @llvm.smin.i64(i64 %694, i64 -968)
  %695 = add nsw i64 %smin1270, 1000
  %smin1166 = call i64 @llvm.smin.i64(i64 %indvars.iv1164, i64 -968)
  %696 = shl nsw i64 %polly.indvar924, 5
  %697 = add nsw i64 %smin1166, 999
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1165 = add nsw i64 %indvars.iv1164, -32
  %exitcond1172.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1172.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %698 = add nuw nsw i64 %polly.indvar930, %692
  %699 = trunc i64 %698 to i32
  %700 = mul nuw nsw i64 %698, 8000
  %min.iters.check1271 = icmp eq i64 %695, 0
  br i1 %min.iters.check1271, label %polly.loop_header933, label %vector.ph1272

vector.ph1272:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1281 = insertelement <4 x i64> poison, i64 %696, i32 0
  %broadcast.splat1282 = shufflevector <4 x i64> %broadcast.splatinsert1281, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1283 = insertelement <4 x i32> poison, i32 %699, i32 0
  %broadcast.splat1284 = shufflevector <4 x i32> %broadcast.splatinsert1283, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1269

vector.body1269:                                  ; preds = %vector.body1269, %vector.ph1272
  %index1275 = phi i64 [ 0, %vector.ph1272 ], [ %index.next1276, %vector.body1269 ]
  %vec.ind1279 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1272 ], [ %vec.ind.next1280, %vector.body1269 ]
  %701 = add nuw nsw <4 x i64> %vec.ind1279, %broadcast.splat1282
  %702 = trunc <4 x i64> %701 to <4 x i32>
  %703 = mul <4 x i32> %broadcast.splat1284, %702
  %704 = add <4 x i32> %703, <i32 1, i32 1, i32 1, i32 1>
  %705 = urem <4 x i32> %704, <i32 1200, i32 1200, i32 1200, i32 1200>
  %706 = sitofp <4 x i32> %705 to <4 x double>
  %707 = fmul fast <4 x double> %706, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %708 = extractelement <4 x i64> %701, i32 0
  %709 = shl i64 %708, 3
  %710 = add nuw nsw i64 %709, %700
  %711 = getelementptr i8, i8* %call1, i64 %710
  %712 = bitcast i8* %711 to <4 x double>*
  store <4 x double> %707, <4 x double>* %712, align 8, !alias.scope !133, !noalias !140
  %index.next1276 = add i64 %index1275, 4
  %vec.ind.next1280 = add <4 x i64> %vec.ind1279, <i64 4, i64 4, i64 4, i64 4>
  %713 = icmp eq i64 %index.next1276, %695
  br i1 %713, label %polly.loop_exit935, label %vector.body1269, !llvm.loop !141

polly.loop_exit935:                               ; preds = %vector.body1269, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar930, %693
  br i1 %exitcond1171.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %714 = add nuw nsw i64 %polly.indvar936, %696
  %715 = trunc i64 %714 to i32
  %716 = mul i32 %715, %699
  %717 = add i32 %716, 1
  %718 = urem i32 %717, 1200
  %p_conv.i = sitofp i32 %718 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %719 = shl i64 %714, 3
  %720 = add nuw nsw i64 %719, %700
  %scevgep940 = getelementptr i8, i8* %call1, i64 %720
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div.i, double* %scevgep940941, align 8, !alias.scope !133, !noalias !140
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar936, %697
  br i1 %exitcond1167.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !142

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %721 = add nuw nsw i64 %polly.indvar221.1, %175
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %721, 1000
  %polly.access.add.call2226.1 = add nuw nsw i64 %98, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, 1200
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header218.2, label %polly.loop_header218.1

polly.loop_header218.2:                           ; preds = %polly.loop_header218.1, %polly.loop_header218.2
  %polly.indvar221.2 = phi i64 [ %polly.indvar_next222.2, %polly.loop_header218.2 ], [ 0, %polly.loop_header218.1 ]
  %722 = add nuw nsw i64 %polly.indvar221.2, %175
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %722, 1000
  %polly.access.add.call2226.2 = add nuw nsw i64 %99, %polly.access.mul.call2225.2
  %polly.access.call2227.2 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226.2
  %polly.access.call2227.load.2 = load double, double* %polly.access.call2227.2, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar221.2, 2400
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2227.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next222.2 = add nuw nsw i64 %polly.indvar221.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next222.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header218.3, label %polly.loop_header218.2

polly.loop_header218.3:                           ; preds = %polly.loop_header218.2, %polly.loop_header218.3
  %polly.indvar221.3 = phi i64 [ %polly.indvar_next222.3, %polly.loop_header218.3 ], [ 0, %polly.loop_header218.2 ]
  %723 = add nuw nsw i64 %polly.indvar221.3, %175
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %723, 1000
  %polly.access.add.call2226.3 = add nuw nsw i64 %100, %polly.access.mul.call2225.3
  %polly.access.call2227.3 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226.3
  %polly.access.call2227.load.3 = load double, double* %polly.access.call2227.3, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar221.3, 3600
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2227.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next222.3 = add nuw nsw i64 %polly.indvar221.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next222.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit220.3, label %polly.loop_header218.3

polly.loop_exit220.3:                             ; preds = %polly.loop_header218.3
  %724 = mul nsw i64 %polly.indvar209, -128
  %725 = mul nuw nsw i64 %polly.indvar209, 6
  %726 = shl nuw nsw i64 %polly.indvar209, 1
  %pexp.p_div_q = udiv i64 %726, 5
  %727 = add nuw nsw i64 %pexp.p_div_q, %725
  br label %polly.loop_header228

polly.loop_header251.1:                           ; preds = %polly.loop_header251, %polly.loop_header251.1
  %polly.indvar255.1 = phi i64 [ %polly.indvar_next256.1, %polly.loop_header251.1 ], [ %233, %polly.loop_header251 ]
  %728 = add nuw nsw i64 %polly.indvar255.1, %175
  %polly.access.mul.call1259.1 = mul nsw i64 %728, 1000
  %polly.access.add.call1260.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar255.1, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.indvar_next256.1 = add nuw nsw i64 %polly.indvar255.1, 1
  %polly.loop_cond257.not.not.1 = icmp slt i64 %polly.indvar255.1, %234
  br i1 %polly.loop_cond257.not.not.1, label %polly.loop_header251.1, label %polly.loop_header251.2

polly.loop_header251.2:                           ; preds = %polly.loop_header251.1, %polly.loop_header251.2
  %polly.indvar255.2 = phi i64 [ %polly.indvar_next256.2, %polly.loop_header251.2 ], [ %233, %polly.loop_header251.1 ]
  %729 = add nuw nsw i64 %polly.indvar255.2, %175
  %polly.access.mul.call1259.2 = mul nsw i64 %729, 1000
  %polly.access.add.call1260.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.indvar255.2, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.indvar_next256.2 = add nuw nsw i64 %polly.indvar255.2, 1
  %polly.loop_cond257.not.not.2 = icmp slt i64 %polly.indvar255.2, %234
  br i1 %polly.loop_cond257.not.not.2, label %polly.loop_header251.2, label %polly.loop_header251.3

polly.loop_header251.3:                           ; preds = %polly.loop_header251.2, %polly.loop_header251.3
  %polly.indvar255.3 = phi i64 [ %polly.indvar_next256.3, %polly.loop_header251.3 ], [ %233, %polly.loop_header251.2 ]
  %730 = add nuw nsw i64 %polly.indvar255.3, %175
  %polly.access.mul.call1259.3 = mul nsw i64 %730, 1000
  %polly.access.add.call1260.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.3 = add nuw nsw i64 %polly.indvar255.3, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  %polly.indvar_next256.3 = add nuw nsw i64 %polly.indvar255.3, 1
  %polly.loop_cond257.not.not.3 = icmp slt i64 %polly.indvar255.3, %234
  br i1 %polly.loop_cond257.not.not.3, label %polly.loop_header251.3, label %polly.loop_header265.preheader

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1.preheader, %polly.loop_header240.us.1
  %polly.indvar243.us.1 = phi i64 [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ], [ 0, %polly.loop_header240.us.1.preheader ]
  %731 = add nuw nsw i64 %polly.indvar243.us.1, %175
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %731, 1000
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next244.us.1 = add nuw i64 %polly.indvar243.us.1, 1
  %exitcond1084.1.not = icmp eq i64 %polly.indvar243.us.1, %231
  br i1 %exitcond1084.1.not, label %polly.loop_exit242.loopexit.us.1, label %polly.loop_header240.us.1

polly.loop_exit242.loopexit.us.1:                 ; preds = %polly.loop_header240.us.1
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.2.preheader, label %polly.loop_header251.us.1

polly.loop_header251.us.1:                        ; preds = %polly.loop_exit242.loopexit.us.1, %polly.loop_header251.us.1
  %polly.indvar255.us.1 = phi i64 [ %polly.indvar_next256.us.1, %polly.loop_header251.us.1 ], [ %233, %polly.loop_exit242.loopexit.us.1 ]
  %732 = add nuw nsw i64 %polly.indvar255.us.1, %175
  %polly.access.mul.call1259.us.1 = mul nsw i64 %732, 1000
  %polly.access.add.call1260.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.us.1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %polly.indvar_next256.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1
  %polly.loop_cond257.not.not.us.1 = icmp slt i64 %polly.indvar255.us.1, %234
  br i1 %polly.loop_cond257.not.not.us.1, label %polly.loop_header251.us.1, label %polly.loop_header240.us.2.preheader

polly.loop_header240.us.2.preheader:              ; preds = %polly.loop_header251.us.1, %polly.loop_exit242.loopexit.us.1
  br label %polly.loop_header240.us.2

polly.loop_header240.us.2:                        ; preds = %polly.loop_header240.us.2.preheader, %polly.loop_header240.us.2
  %polly.indvar243.us.2 = phi i64 [ %polly.indvar_next244.us.2, %polly.loop_header240.us.2 ], [ 0, %polly.loop_header240.us.2.preheader ]
  %733 = add nuw nsw i64 %polly.indvar243.us.2, %175
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %733, 1000
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar243.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next244.us.2 = add nuw i64 %polly.indvar243.us.2, 1
  %exitcond1084.2.not = icmp eq i64 %polly.indvar243.us.2, %231
  br i1 %exitcond1084.2.not, label %polly.loop_exit242.loopexit.us.2, label %polly.loop_header240.us.2

polly.loop_exit242.loopexit.us.2:                 ; preds = %polly.loop_header240.us.2
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.3.preheader, label %polly.loop_header251.us.2

polly.loop_header251.us.2:                        ; preds = %polly.loop_exit242.loopexit.us.2, %polly.loop_header251.us.2
  %polly.indvar255.us.2 = phi i64 [ %polly.indvar_next256.us.2, %polly.loop_header251.us.2 ], [ %233, %polly.loop_exit242.loopexit.us.2 ]
  %734 = add nuw nsw i64 %polly.indvar255.us.2, %175
  %polly.access.mul.call1259.us.2 = mul nsw i64 %734, 1000
  %polly.access.add.call1260.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.us.2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %polly.indvar_next256.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 1
  %polly.loop_cond257.not.not.us.2 = icmp slt i64 %polly.indvar255.us.2, %234
  br i1 %polly.loop_cond257.not.not.us.2, label %polly.loop_header251.us.2, label %polly.loop_header240.us.3.preheader

polly.loop_header240.us.3.preheader:              ; preds = %polly.loop_header251.us.2, %polly.loop_exit242.loopexit.us.2
  br label %polly.loop_header240.us.3

polly.loop_header240.us.3:                        ; preds = %polly.loop_header240.us.3.preheader, %polly.loop_header240.us.3
  %polly.indvar243.us.3 = phi i64 [ %polly.indvar_next244.us.3, %polly.loop_header240.us.3 ], [ 0, %polly.loop_header240.us.3.preheader ]
  %735 = add nuw nsw i64 %polly.indvar243.us.3, %175
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %735, 1000
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar243.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next244.us.3 = add nuw i64 %polly.indvar243.us.3, 1
  %exitcond1084.3.not = icmp eq i64 %polly.indvar243.us.3, %231
  br i1 %exitcond1084.3.not, label %polly.loop_exit242.loopexit.us.3, label %polly.loop_header240.us.3

polly.loop_exit242.loopexit.us.3:                 ; preds = %polly.loop_header240.us.3
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251.us.3

polly.loop_header251.us.3:                        ; preds = %polly.loop_exit242.loopexit.us.3, %polly.loop_header251.us.3
  %polly.indvar255.us.3 = phi i64 [ %polly.indvar_next256.us.3, %polly.loop_header251.us.3 ], [ %233, %polly.loop_exit242.loopexit.us.3 ]
  %736 = add nuw nsw i64 %polly.indvar255.us.3, %175
  %polly.access.mul.call1259.us.3 = mul nsw i64 %736, 1000
  %polly.access.add.call1260.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.us.3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  %polly.indvar_next256.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 1
  %polly.loop_cond257.not.not.us.3 = icmp slt i64 %polly.indvar255.us.3, %234
  br i1 %polly.loop_cond257.not.not.us.3, label %polly.loop_header251.us.3, label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_exit282.us, %polly.loop_exit282.us.1
  %indvar1677 = phi i64 [ %indvar.next1678, %polly.loop_exit282.us.1 ], [ 0, %polly.loop_exit282.us ]
  %indvars.iv1098.1 = phi i64 [ %indvars.iv.next1099.1, %polly.loop_exit282.us.1 ], [ %227, %polly.loop_exit282.us ]
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_exit282.us.1 ], [ %239, %polly.loop_exit282.us ]
  %737 = add i64 %196, %indvar1677
  %smin1694 = call i64 @llvm.smin.i64(i64 %737, i64 127)
  %738 = add nsw i64 %smin1694, 1
  %739 = mul nuw nsw i64 %indvar1677, 9600
  %740 = add i64 %203, %739
  %scevgep1679 = getelementptr i8, i8* %call, i64 %740
  %741 = add i64 %204, %739
  %scevgep1680 = getelementptr i8, i8* %call, i64 %741
  %742 = add i64 %206, %indvar1677
  %smin1681 = call i64 @llvm.smin.i64(i64 %742, i64 127)
  %743 = shl nsw i64 %smin1681, 3
  %scevgep1682 = getelementptr i8, i8* %scevgep1680, i64 %743
  %scevgep1685 = getelementptr i8, i8* %scevgep1684, i64 %743
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1098.1, i64 127)
  %744 = add nsw i64 %polly.indvar276.us.1, %229
  %polly.loop_guard283.us.11199 = icmp sgt i64 %744, -1
  br i1 %polly.loop_guard283.us.11199, label %polly.loop_header280.preheader.us.1, label %polly.loop_exit282.us.1

polly.loop_header280.preheader.us.1:              ; preds = %polly.loop_header272.us.1
  %745 = add nuw nsw i64 %polly.indvar276.us.1, %228
  %polly.access.add.Packed_MemRef_call2292.us.1 = add nuw nsw i64 %744, 1200
  %polly.access.Packed_MemRef_call2293.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.us.1
  %_p_scalar_294.us.1 = load double, double* %polly.access.Packed_MemRef_call2293.us.1, align 8
  %polly.access.Packed_MemRef_call1301.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.us.1
  %_p_scalar_302.us.1 = load double, double* %polly.access.Packed_MemRef_call1301.us.1, align 8
  %746 = mul i64 %745, 9600
  %min.iters.check1695 = icmp ult i64 %738, 4
  br i1 %min.iters.check1695, label %polly.loop_header280.us.1.preheader, label %vector.memcheck1675

vector.memcheck1675:                              ; preds = %polly.loop_header280.preheader.us.1
  %bound01686 = icmp ult i8* %scevgep1679, %scevgep1685
  %bound11687 = icmp ult i8* %scevgep1683, %scevgep1682
  %found.conflict1688 = and i1 %bound01686, %bound11687
  br i1 %found.conflict1688, label %polly.loop_header280.us.1.preheader, label %vector.ph1696

vector.ph1696:                                    ; preds = %vector.memcheck1675
  %n.vec1698 = and i64 %738, -4
  %broadcast.splatinsert1704 = insertelement <4 x double> poison, double %_p_scalar_294.us.1, i32 0
  %broadcast.splat1705 = shufflevector <4 x double> %broadcast.splatinsert1704, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1707 = insertelement <4 x double> poison, double %_p_scalar_302.us.1, i32 0
  %broadcast.splat1708 = shufflevector <4 x double> %broadcast.splatinsert1707, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1692

vector.body1692:                                  ; preds = %vector.body1692, %vector.ph1696
  %index1699 = phi i64 [ 0, %vector.ph1696 ], [ %index.next1700, %vector.body1692 ]
  %747 = add nuw nsw i64 %index1699, %175
  %748 = add nuw nsw i64 %index1699, 1200
  %749 = getelementptr double, double* %Packed_MemRef_call1, i64 %748
  %750 = bitcast double* %749 to <4 x double>*
  %wide.load1703 = load <4 x double>, <4 x double>* %750, align 8, !alias.scope !143
  %751 = fmul fast <4 x double> %broadcast.splat1705, %wide.load1703
  %752 = getelementptr double, double* %Packed_MemRef_call2, i64 %748
  %753 = bitcast double* %752 to <4 x double>*
  %wide.load1706 = load <4 x double>, <4 x double>* %753, align 8
  %754 = fmul fast <4 x double> %broadcast.splat1708, %wide.load1706
  %755 = shl i64 %747, 3
  %756 = add i64 %755, %746
  %757 = getelementptr i8, i8* %call, i64 %756
  %758 = bitcast i8* %757 to <4 x double>*
  %wide.load1709 = load <4 x double>, <4 x double>* %758, align 8, !alias.scope !146, !noalias !148
  %759 = fadd fast <4 x double> %754, %751
  %760 = fmul fast <4 x double> %759, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %761 = fadd fast <4 x double> %760, %wide.load1709
  %762 = bitcast i8* %757 to <4 x double>*
  store <4 x double> %761, <4 x double>* %762, align 8, !alias.scope !146, !noalias !148
  %index.next1700 = add i64 %index1699, 4
  %763 = icmp eq i64 %index.next1700, %n.vec1698
  br i1 %763, label %middle.block1690, label %vector.body1692, !llvm.loop !149

middle.block1690:                                 ; preds = %vector.body1692
  %cmp.n1702 = icmp eq i64 %738, %n.vec1698
  br i1 %cmp.n1702, label %polly.loop_exit282.us.1, label %polly.loop_header280.us.1.preheader

polly.loop_header280.us.1.preheader:              ; preds = %vector.memcheck1675, %polly.loop_header280.preheader.us.1, %middle.block1690
  %polly.indvar284.us.1.ph = phi i64 [ 0, %vector.memcheck1675 ], [ 0, %polly.loop_header280.preheader.us.1 ], [ %n.vec1698, %middle.block1690 ]
  br label %polly.loop_header280.us.1

polly.loop_header280.us.1:                        ; preds = %polly.loop_header280.us.1.preheader, %polly.loop_header280.us.1
  %polly.indvar284.us.1 = phi i64 [ %polly.indvar_next285.us.1, %polly.loop_header280.us.1 ], [ %polly.indvar284.us.1.ph, %polly.loop_header280.us.1.preheader ]
  %764 = add nuw nsw i64 %polly.indvar284.us.1, %175
  %polly.access.add.Packed_MemRef_call1288.us.1 = add nuw nsw i64 %polly.indvar284.us.1, 1200
  %polly.access.Packed_MemRef_call1289.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us.1
  %_p_scalar_290.us.1 = load double, double* %polly.access.Packed_MemRef_call1289.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_294.us.1, %_p_scalar_290.us.1
  %polly.access.Packed_MemRef_call2297.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.us.1
  %_p_scalar_298.us.1 = load double, double* %polly.access.Packed_MemRef_call2297.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_302.us.1, %_p_scalar_298.us.1
  %765 = shl i64 %764, 3
  %766 = add i64 %765, %746
  %scevgep303.us.1 = getelementptr i8, i8* %call, i64 %766
  %scevgep303304.us.1 = bitcast i8* %scevgep303.us.1 to double*
  %_p_scalar_305.us.1 = load double, double* %scevgep303304.us.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_305.us.1
  store double %p_add42.i118.us.1, double* %scevgep303304.us.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.us.1 = add nuw nsw i64 %polly.indvar284.us.1, 1
  %exitcond1100.1.not = icmp eq i64 %polly.indvar284.us.1, %smin.1
  br i1 %exitcond1100.1.not, label %polly.loop_exit282.us.1, label %polly.loop_header280.us.1, !llvm.loop !150

polly.loop_exit282.us.1:                          ; preds = %polly.loop_header280.us.1, %middle.block1690, %polly.loop_header272.us.1
  %polly.indvar_next277.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1
  %polly.loop_cond278.us.1 = icmp ult i64 %polly.indvar276.us.1, 19
  %indvars.iv.next1099.1 = add i64 %indvars.iv1098.1, 1
  %indvar.next1678 = add i64 %indvar1677, 1
  br i1 %polly.loop_cond278.us.1, label %polly.loop_header272.us.1, label %polly.loop_header272.us.2

polly.loop_header272.us.2:                        ; preds = %polly.loop_exit282.us.1, %polly.loop_exit282.us.2
  %indvar1642 = phi i64 [ %indvar.next1643, %polly.loop_exit282.us.2 ], [ 0, %polly.loop_exit282.us.1 ]
  %indvars.iv1098.2 = phi i64 [ %indvars.iv.next1099.2, %polly.loop_exit282.us.2 ], [ %227, %polly.loop_exit282.us.1 ]
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_exit282.us.2 ], [ %239, %polly.loop_exit282.us.1 ]
  %767 = add i64 %211, %indvar1642
  %smin1659 = call i64 @llvm.smin.i64(i64 %767, i64 127)
  %768 = add nsw i64 %smin1659, 1
  %769 = mul nuw nsw i64 %indvar1642, 9600
  %770 = add i64 %218, %769
  %scevgep1644 = getelementptr i8, i8* %call, i64 %770
  %771 = add i64 %219, %769
  %scevgep1645 = getelementptr i8, i8* %call, i64 %771
  %772 = add i64 %221, %indvar1642
  %smin1646 = call i64 @llvm.smin.i64(i64 %772, i64 127)
  %773 = shl nsw i64 %smin1646, 3
  %scevgep1647 = getelementptr i8, i8* %scevgep1645, i64 %773
  %scevgep1650 = getelementptr i8, i8* %scevgep1649, i64 %773
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1098.2, i64 127)
  %774 = add nsw i64 %polly.indvar276.us.2, %229
  %polly.loop_guard283.us.21200 = icmp sgt i64 %774, -1
  br i1 %polly.loop_guard283.us.21200, label %polly.loop_header280.preheader.us.2, label %polly.loop_exit282.us.2

polly.loop_header280.preheader.us.2:              ; preds = %polly.loop_header272.us.2
  %775 = add nuw nsw i64 %polly.indvar276.us.2, %228
  %polly.access.add.Packed_MemRef_call2292.us.2 = add nuw nsw i64 %774, 2400
  %polly.access.Packed_MemRef_call2293.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.us.2
  %_p_scalar_294.us.2 = load double, double* %polly.access.Packed_MemRef_call2293.us.2, align 8
  %polly.access.Packed_MemRef_call1301.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.us.2
  %_p_scalar_302.us.2 = load double, double* %polly.access.Packed_MemRef_call1301.us.2, align 8
  %776 = mul i64 %775, 9600
  %min.iters.check1660 = icmp ult i64 %768, 4
  br i1 %min.iters.check1660, label %polly.loop_header280.us.2.preheader, label %vector.memcheck1640

vector.memcheck1640:                              ; preds = %polly.loop_header280.preheader.us.2
  %bound01651 = icmp ult i8* %scevgep1644, %scevgep1650
  %bound11652 = icmp ult i8* %scevgep1648, %scevgep1647
  %found.conflict1653 = and i1 %bound01651, %bound11652
  br i1 %found.conflict1653, label %polly.loop_header280.us.2.preheader, label %vector.ph1661

vector.ph1661:                                    ; preds = %vector.memcheck1640
  %n.vec1663 = and i64 %768, -4
  %broadcast.splatinsert1669 = insertelement <4 x double> poison, double %_p_scalar_294.us.2, i32 0
  %broadcast.splat1670 = shufflevector <4 x double> %broadcast.splatinsert1669, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1672 = insertelement <4 x double> poison, double %_p_scalar_302.us.2, i32 0
  %broadcast.splat1673 = shufflevector <4 x double> %broadcast.splatinsert1672, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1657

vector.body1657:                                  ; preds = %vector.body1657, %vector.ph1661
  %index1664 = phi i64 [ 0, %vector.ph1661 ], [ %index.next1665, %vector.body1657 ]
  %777 = add nuw nsw i64 %index1664, %175
  %778 = add nuw nsw i64 %index1664, 2400
  %779 = getelementptr double, double* %Packed_MemRef_call1, i64 %778
  %780 = bitcast double* %779 to <4 x double>*
  %wide.load1668 = load <4 x double>, <4 x double>* %780, align 8, !alias.scope !151
  %781 = fmul fast <4 x double> %broadcast.splat1670, %wide.load1668
  %782 = getelementptr double, double* %Packed_MemRef_call2, i64 %778
  %783 = bitcast double* %782 to <4 x double>*
  %wide.load1671 = load <4 x double>, <4 x double>* %783, align 8
  %784 = fmul fast <4 x double> %broadcast.splat1673, %wide.load1671
  %785 = shl i64 %777, 3
  %786 = add i64 %785, %776
  %787 = getelementptr i8, i8* %call, i64 %786
  %788 = bitcast i8* %787 to <4 x double>*
  %wide.load1674 = load <4 x double>, <4 x double>* %788, align 8, !alias.scope !154, !noalias !156
  %789 = fadd fast <4 x double> %784, %781
  %790 = fmul fast <4 x double> %789, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %791 = fadd fast <4 x double> %790, %wide.load1674
  %792 = bitcast i8* %787 to <4 x double>*
  store <4 x double> %791, <4 x double>* %792, align 8, !alias.scope !154, !noalias !156
  %index.next1665 = add i64 %index1664, 4
  %793 = icmp eq i64 %index.next1665, %n.vec1663
  br i1 %793, label %middle.block1655, label %vector.body1657, !llvm.loop !157

middle.block1655:                                 ; preds = %vector.body1657
  %cmp.n1667 = icmp eq i64 %768, %n.vec1663
  br i1 %cmp.n1667, label %polly.loop_exit282.us.2, label %polly.loop_header280.us.2.preheader

polly.loop_header280.us.2.preheader:              ; preds = %vector.memcheck1640, %polly.loop_header280.preheader.us.2, %middle.block1655
  %polly.indvar284.us.2.ph = phi i64 [ 0, %vector.memcheck1640 ], [ 0, %polly.loop_header280.preheader.us.2 ], [ %n.vec1663, %middle.block1655 ]
  br label %polly.loop_header280.us.2

polly.loop_header280.us.2:                        ; preds = %polly.loop_header280.us.2.preheader, %polly.loop_header280.us.2
  %polly.indvar284.us.2 = phi i64 [ %polly.indvar_next285.us.2, %polly.loop_header280.us.2 ], [ %polly.indvar284.us.2.ph, %polly.loop_header280.us.2.preheader ]
  %794 = add nuw nsw i64 %polly.indvar284.us.2, %175
  %polly.access.add.Packed_MemRef_call1288.us.2 = add nuw nsw i64 %polly.indvar284.us.2, 2400
  %polly.access.Packed_MemRef_call1289.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us.2
  %_p_scalar_290.us.2 = load double, double* %polly.access.Packed_MemRef_call1289.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_294.us.2, %_p_scalar_290.us.2
  %polly.access.Packed_MemRef_call2297.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.us.2
  %_p_scalar_298.us.2 = load double, double* %polly.access.Packed_MemRef_call2297.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_302.us.2, %_p_scalar_298.us.2
  %795 = shl i64 %794, 3
  %796 = add i64 %795, %776
  %scevgep303.us.2 = getelementptr i8, i8* %call, i64 %796
  %scevgep303304.us.2 = bitcast i8* %scevgep303.us.2 to double*
  %_p_scalar_305.us.2 = load double, double* %scevgep303304.us.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_305.us.2
  store double %p_add42.i118.us.2, double* %scevgep303304.us.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.us.2 = add nuw nsw i64 %polly.indvar284.us.2, 1
  %exitcond1100.2.not = icmp eq i64 %polly.indvar284.us.2, %smin.2
  br i1 %exitcond1100.2.not, label %polly.loop_exit282.us.2, label %polly.loop_header280.us.2, !llvm.loop !158

polly.loop_exit282.us.2:                          ; preds = %polly.loop_header280.us.2, %middle.block1655, %polly.loop_header272.us.2
  %polly.indvar_next277.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 1
  %polly.loop_cond278.us.2 = icmp ult i64 %polly.indvar276.us.2, 19
  %indvars.iv.next1099.2 = add i64 %indvars.iv1098.2, 1
  %indvar.next1643 = add i64 %indvar1642, 1
  br i1 %polly.loop_cond278.us.2, label %polly.loop_header272.us.2, label %polly.loop_header272.us.3

polly.loop_header272.us.3:                        ; preds = %polly.loop_exit282.us.2, %polly.loop_exit282.us.3
  %indvar1622 = phi i64 [ %indvar.next1623, %polly.loop_exit282.us.3 ], [ 0, %polly.loop_exit282.us.2 ]
  %indvars.iv1098.3 = phi i64 [ %indvars.iv.next1099.3, %polly.loop_exit282.us.3 ], [ %227, %polly.loop_exit282.us.2 ]
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_exit282.us.3 ], [ %239, %polly.loop_exit282.us.2 ]
  %797 = add i64 %226, %indvar1622
  %smin1624 = call i64 @llvm.smin.i64(i64 %797, i64 127)
  %798 = add nsw i64 %smin1624, 1
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1098.3, i64 127)
  %799 = add nsw i64 %polly.indvar276.us.3, %229
  %polly.loop_guard283.us.31201 = icmp sgt i64 %799, -1
  br i1 %polly.loop_guard283.us.31201, label %polly.loop_header280.preheader.us.3, label %polly.loop_exit282.us.3

polly.loop_header280.preheader.us.3:              ; preds = %polly.loop_header272.us.3
  %800 = add nuw nsw i64 %polly.indvar276.us.3, %228
  %polly.access.add.Packed_MemRef_call2292.us.3 = add nuw nsw i64 %799, 3600
  %polly.access.Packed_MemRef_call2293.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.us.3
  %_p_scalar_294.us.3 = load double, double* %polly.access.Packed_MemRef_call2293.us.3, align 8
  %polly.access.Packed_MemRef_call1301.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.us.3
  %_p_scalar_302.us.3 = load double, double* %polly.access.Packed_MemRef_call1301.us.3, align 8
  %801 = mul i64 %800, 9600
  %min.iters.check1625 = icmp ult i64 %798, 4
  br i1 %min.iters.check1625, label %polly.loop_header280.us.3.preheader, label %vector.ph1626

vector.ph1626:                                    ; preds = %polly.loop_header280.preheader.us.3
  %n.vec1628 = and i64 %798, -4
  %broadcast.splatinsert1634 = insertelement <4 x double> poison, double %_p_scalar_294.us.3, i32 0
  %broadcast.splat1635 = shufflevector <4 x double> %broadcast.splatinsert1634, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1637 = insertelement <4 x double> poison, double %_p_scalar_302.us.3, i32 0
  %broadcast.splat1638 = shufflevector <4 x double> %broadcast.splatinsert1637, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1618

vector.body1618:                                  ; preds = %vector.body1618, %vector.ph1626
  %index1629 = phi i64 [ 0, %vector.ph1626 ], [ %index.next1630, %vector.body1618 ]
  %802 = add nuw nsw i64 %index1629, %175
  %803 = add nuw nsw i64 %index1629, 3600
  %804 = getelementptr double, double* %Packed_MemRef_call1, i64 %803
  %805 = bitcast double* %804 to <4 x double>*
  %wide.load1633 = load <4 x double>, <4 x double>* %805, align 8
  %806 = fmul fast <4 x double> %broadcast.splat1635, %wide.load1633
  %807 = getelementptr double, double* %Packed_MemRef_call2, i64 %803
  %808 = bitcast double* %807 to <4 x double>*
  %wide.load1636 = load <4 x double>, <4 x double>* %808, align 8
  %809 = fmul fast <4 x double> %broadcast.splat1638, %wide.load1636
  %810 = shl i64 %802, 3
  %811 = add i64 %810, %801
  %812 = getelementptr i8, i8* %call, i64 %811
  %813 = bitcast i8* %812 to <4 x double>*
  %wide.load1639 = load <4 x double>, <4 x double>* %813, align 8, !alias.scope !72, !noalias !74
  %814 = fadd fast <4 x double> %809, %806
  %815 = fmul fast <4 x double> %814, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %816 = fadd fast <4 x double> %815, %wide.load1639
  %817 = bitcast i8* %812 to <4 x double>*
  store <4 x double> %816, <4 x double>* %817, align 8, !alias.scope !72, !noalias !74
  %index.next1630 = add i64 %index1629, 4
  %818 = icmp eq i64 %index.next1630, %n.vec1628
  br i1 %818, label %middle.block1616, label %vector.body1618, !llvm.loop !159

middle.block1616:                                 ; preds = %vector.body1618
  %cmp.n1632 = icmp eq i64 %798, %n.vec1628
  br i1 %cmp.n1632, label %polly.loop_exit282.us.3, label %polly.loop_header280.us.3.preheader

polly.loop_header280.us.3.preheader:              ; preds = %polly.loop_header280.preheader.us.3, %middle.block1616
  %polly.indvar284.us.3.ph = phi i64 [ 0, %polly.loop_header280.preheader.us.3 ], [ %n.vec1628, %middle.block1616 ]
  br label %polly.loop_header280.us.3

polly.loop_header280.us.3:                        ; preds = %polly.loop_header280.us.3.preheader, %polly.loop_header280.us.3
  %polly.indvar284.us.3 = phi i64 [ %polly.indvar_next285.us.3, %polly.loop_header280.us.3 ], [ %polly.indvar284.us.3.ph, %polly.loop_header280.us.3.preheader ]
  %819 = add nuw nsw i64 %polly.indvar284.us.3, %175
  %polly.access.add.Packed_MemRef_call1288.us.3 = add nuw nsw i64 %polly.indvar284.us.3, 3600
  %polly.access.Packed_MemRef_call1289.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us.3
  %_p_scalar_290.us.3 = load double, double* %polly.access.Packed_MemRef_call1289.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_294.us.3, %_p_scalar_290.us.3
  %polly.access.Packed_MemRef_call2297.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.us.3
  %_p_scalar_298.us.3 = load double, double* %polly.access.Packed_MemRef_call2297.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_302.us.3, %_p_scalar_298.us.3
  %820 = shl i64 %819, 3
  %821 = add i64 %820, %801
  %scevgep303.us.3 = getelementptr i8, i8* %call, i64 %821
  %scevgep303304.us.3 = bitcast i8* %scevgep303.us.3 to double*
  %_p_scalar_305.us.3 = load double, double* %scevgep303304.us.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_305.us.3
  store double %p_add42.i118.us.3, double* %scevgep303304.us.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.us.3 = add nuw nsw i64 %polly.indvar284.us.3, 1
  %exitcond1100.3.not = icmp eq i64 %polly.indvar284.us.3, %smin.3
  br i1 %exitcond1100.3.not, label %polly.loop_exit282.us.3, label %polly.loop_header280.us.3, !llvm.loop !160

polly.loop_exit282.us.3:                          ; preds = %polly.loop_header280.us.3, %middle.block1616, %polly.loop_header272.us.3
  %polly.indvar_next277.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 1
  %polly.loop_cond278.us.3 = icmp ult i64 %polly.indvar276.us.3, 19
  %indvars.iv.next1099.3 = add i64 %indvars.iv1098.3, 1
  %indvar.next1623 = add i64 %indvar1622, 1
  br i1 %polly.loop_cond278.us.3, label %polly.loop_header272.us.3, label %polly.loop_exit267

polly.loop_header430.1:                           ; preds = %polly.loop_header430, %polly.loop_header430.1
  %polly.indvar433.1 = phi i64 [ %polly.indvar_next434.1, %polly.loop_header430.1 ], [ 0, %polly.loop_header430 ]
  %822 = add nuw nsw i64 %polly.indvar433.1, %357
  %polly.access.mul.call2437.1 = mul nuw nsw i64 %822, 1000
  %polly.access.add.call2438.1 = add nuw nsw i64 %280, %polly.access.mul.call2437.1
  %polly.access.call2439.1 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.1
  %polly.access.call2439.load.1 = load double, double* %polly.access.call2439.1, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.1 = add nuw nsw i64 %polly.indvar433.1, 1200
  %polly.access.Packed_MemRef_call2313.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.1
  store double %polly.access.call2439.load.1, double* %polly.access.Packed_MemRef_call2313.1, align 8
  %polly.indvar_next434.1 = add nuw nsw i64 %polly.indvar433.1, 1
  %exitcond1108.1.not = icmp eq i64 %polly.indvar_next434.1, %indvars.iv1106
  br i1 %exitcond1108.1.not, label %polly.loop_header430.2, label %polly.loop_header430.1

polly.loop_header430.2:                           ; preds = %polly.loop_header430.1, %polly.loop_header430.2
  %polly.indvar433.2 = phi i64 [ %polly.indvar_next434.2, %polly.loop_header430.2 ], [ 0, %polly.loop_header430.1 ]
  %823 = add nuw nsw i64 %polly.indvar433.2, %357
  %polly.access.mul.call2437.2 = mul nuw nsw i64 %823, 1000
  %polly.access.add.call2438.2 = add nuw nsw i64 %281, %polly.access.mul.call2437.2
  %polly.access.call2439.2 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.2
  %polly.access.call2439.load.2 = load double, double* %polly.access.call2439.2, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.2 = add nuw nsw i64 %polly.indvar433.2, 2400
  %polly.access.Packed_MemRef_call2313.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.2
  store double %polly.access.call2439.load.2, double* %polly.access.Packed_MemRef_call2313.2, align 8
  %polly.indvar_next434.2 = add nuw nsw i64 %polly.indvar433.2, 1
  %exitcond1108.2.not = icmp eq i64 %polly.indvar_next434.2, %indvars.iv1106
  br i1 %exitcond1108.2.not, label %polly.loop_header430.3, label %polly.loop_header430.2

polly.loop_header430.3:                           ; preds = %polly.loop_header430.2, %polly.loop_header430.3
  %polly.indvar433.3 = phi i64 [ %polly.indvar_next434.3, %polly.loop_header430.3 ], [ 0, %polly.loop_header430.2 ]
  %824 = add nuw nsw i64 %polly.indvar433.3, %357
  %polly.access.mul.call2437.3 = mul nuw nsw i64 %824, 1000
  %polly.access.add.call2438.3 = add nuw nsw i64 %282, %polly.access.mul.call2437.3
  %polly.access.call2439.3 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.3
  %polly.access.call2439.load.3 = load double, double* %polly.access.call2439.3, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.3 = add nuw nsw i64 %polly.indvar433.3, 3600
  %polly.access.Packed_MemRef_call2313.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.3
  store double %polly.access.call2439.load.3, double* %polly.access.Packed_MemRef_call2313.3, align 8
  %polly.indvar_next434.3 = add nuw nsw i64 %polly.indvar433.3, 1
  %exitcond1108.3.not = icmp eq i64 %polly.indvar_next434.3, %indvars.iv1106
  br i1 %exitcond1108.3.not, label %polly.loop_exit432.3, label %polly.loop_header430.3

polly.loop_exit432.3:                             ; preds = %polly.loop_header430.3
  %825 = mul nsw i64 %polly.indvar421, -128
  %826 = mul nuw nsw i64 %polly.indvar421, 6
  %827 = shl nuw nsw i64 %polly.indvar421, 1
  %pexp.p_div_q440 = udiv i64 %827, 5
  %828 = add nuw nsw i64 %pexp.p_div_q440, %826
  br label %polly.loop_header441

polly.loop_header466.1:                           ; preds = %polly.loop_header466, %polly.loop_header466.1
  %polly.indvar470.1 = phi i64 [ %polly.indvar_next471.1, %polly.loop_header466.1 ], [ %415, %polly.loop_header466 ]
  %829 = add nuw nsw i64 %polly.indvar470.1, %357
  %polly.access.mul.call1474.1 = mul nsw i64 %829, 1000
  %polly.access.add.call1475.1 = add nuw nsw i64 %280, %polly.access.mul.call1474.1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.1 = add nuw nsw i64 %polly.indvar470.1, 1200
  %polly.access.Packed_MemRef_call1311479.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1311479.1, align 8
  %polly.indvar_next471.1 = add nuw nsw i64 %polly.indvar470.1, 1
  %polly.loop_cond472.not.not.1 = icmp slt i64 %polly.indvar470.1, %416
  br i1 %polly.loop_cond472.not.not.1, label %polly.loop_header466.1, label %polly.loop_header466.2

polly.loop_header466.2:                           ; preds = %polly.loop_header466.1, %polly.loop_header466.2
  %polly.indvar470.2 = phi i64 [ %polly.indvar_next471.2, %polly.loop_header466.2 ], [ %415, %polly.loop_header466.1 ]
  %830 = add nuw nsw i64 %polly.indvar470.2, %357
  %polly.access.mul.call1474.2 = mul nsw i64 %830, 1000
  %polly.access.add.call1475.2 = add nuw nsw i64 %281, %polly.access.mul.call1474.2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.2 = add nuw nsw i64 %polly.indvar470.2, 2400
  %polly.access.Packed_MemRef_call1311479.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1311479.2, align 8
  %polly.indvar_next471.2 = add nuw nsw i64 %polly.indvar470.2, 1
  %polly.loop_cond472.not.not.2 = icmp slt i64 %polly.indvar470.2, %416
  br i1 %polly.loop_cond472.not.not.2, label %polly.loop_header466.2, label %polly.loop_header466.3

polly.loop_header466.3:                           ; preds = %polly.loop_header466.2, %polly.loop_header466.3
  %polly.indvar470.3 = phi i64 [ %polly.indvar_next471.3, %polly.loop_header466.3 ], [ %415, %polly.loop_header466.2 ]
  %831 = add nuw nsw i64 %polly.indvar470.3, %357
  %polly.access.mul.call1474.3 = mul nsw i64 %831, 1000
  %polly.access.add.call1475.3 = add nuw nsw i64 %282, %polly.access.mul.call1474.3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.3 = add nuw nsw i64 %polly.indvar470.3, 3600
  %polly.access.Packed_MemRef_call1311479.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1311479.3, align 8
  %polly.indvar_next471.3 = add nuw nsw i64 %polly.indvar470.3, 1
  %polly.loop_cond472.not.not.3 = icmp slt i64 %polly.indvar470.3, %416
  br i1 %polly.loop_cond472.not.not.3, label %polly.loop_header466.3, label %polly.loop_header480.preheader

polly.loop_header454.us.1:                        ; preds = %polly.loop_header454.us.1.preheader, %polly.loop_header454.us.1
  %polly.indvar458.us.1 = phi i64 [ %polly.indvar_next459.us.1, %polly.loop_header454.us.1 ], [ 0, %polly.loop_header454.us.1.preheader ]
  %832 = add nuw nsw i64 %polly.indvar458.us.1, %357
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %832, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %280, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.1 = add nuw nsw i64 %polly.indvar458.us.1, 1200
  %polly.access.Packed_MemRef_call1311.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1311.us.1, align 8
  %polly.indvar_next459.us.1 = add nuw i64 %polly.indvar458.us.1, 1
  %exitcond1111.1.not = icmp eq i64 %polly.indvar458.us.1, %413
  br i1 %exitcond1111.1.not, label %polly.loop_exit456.loopexit.us.1, label %polly.loop_header454.us.1

polly.loop_exit456.loopexit.us.1:                 ; preds = %polly.loop_header454.us.1
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.2.preheader, label %polly.loop_header466.us.1

polly.loop_header466.us.1:                        ; preds = %polly.loop_exit456.loopexit.us.1, %polly.loop_header466.us.1
  %polly.indvar470.us.1 = phi i64 [ %polly.indvar_next471.us.1, %polly.loop_header466.us.1 ], [ %415, %polly.loop_exit456.loopexit.us.1 ]
  %833 = add nuw nsw i64 %polly.indvar470.us.1, %357
  %polly.access.mul.call1474.us.1 = mul nsw i64 %833, 1000
  %polly.access.add.call1475.us.1 = add nuw nsw i64 %280, %polly.access.mul.call1474.us.1
  %polly.access.call1476.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.1
  %polly.access.call1476.load.us.1 = load double, double* %polly.access.call1476.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1200
  %polly.access.Packed_MemRef_call1311479.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.1
  store double %polly.access.call1476.load.us.1, double* %polly.access.Packed_MemRef_call1311479.us.1, align 8
  %polly.indvar_next471.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1
  %polly.loop_cond472.not.not.us.1 = icmp slt i64 %polly.indvar470.us.1, %416
  br i1 %polly.loop_cond472.not.not.us.1, label %polly.loop_header466.us.1, label %polly.loop_header454.us.2.preheader

polly.loop_header454.us.2.preheader:              ; preds = %polly.loop_header466.us.1, %polly.loop_exit456.loopexit.us.1
  br label %polly.loop_header454.us.2

polly.loop_header454.us.2:                        ; preds = %polly.loop_header454.us.2.preheader, %polly.loop_header454.us.2
  %polly.indvar458.us.2 = phi i64 [ %polly.indvar_next459.us.2, %polly.loop_header454.us.2 ], [ 0, %polly.loop_header454.us.2.preheader ]
  %834 = add nuw nsw i64 %polly.indvar458.us.2, %357
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %834, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %281, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.2 = add nuw nsw i64 %polly.indvar458.us.2, 2400
  %polly.access.Packed_MemRef_call1311.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1311.us.2, align 8
  %polly.indvar_next459.us.2 = add nuw i64 %polly.indvar458.us.2, 1
  %exitcond1111.2.not = icmp eq i64 %polly.indvar458.us.2, %413
  br i1 %exitcond1111.2.not, label %polly.loop_exit456.loopexit.us.2, label %polly.loop_header454.us.2

polly.loop_exit456.loopexit.us.2:                 ; preds = %polly.loop_header454.us.2
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.3.preheader, label %polly.loop_header466.us.2

polly.loop_header466.us.2:                        ; preds = %polly.loop_exit456.loopexit.us.2, %polly.loop_header466.us.2
  %polly.indvar470.us.2 = phi i64 [ %polly.indvar_next471.us.2, %polly.loop_header466.us.2 ], [ %415, %polly.loop_exit456.loopexit.us.2 ]
  %835 = add nuw nsw i64 %polly.indvar470.us.2, %357
  %polly.access.mul.call1474.us.2 = mul nsw i64 %835, 1000
  %polly.access.add.call1475.us.2 = add nuw nsw i64 %281, %polly.access.mul.call1474.us.2
  %polly.access.call1476.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.2
  %polly.access.call1476.load.us.2 = load double, double* %polly.access.call1476.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 2400
  %polly.access.Packed_MemRef_call1311479.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.2
  store double %polly.access.call1476.load.us.2, double* %polly.access.Packed_MemRef_call1311479.us.2, align 8
  %polly.indvar_next471.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 1
  %polly.loop_cond472.not.not.us.2 = icmp slt i64 %polly.indvar470.us.2, %416
  br i1 %polly.loop_cond472.not.not.us.2, label %polly.loop_header466.us.2, label %polly.loop_header454.us.3.preheader

polly.loop_header454.us.3.preheader:              ; preds = %polly.loop_header466.us.2, %polly.loop_exit456.loopexit.us.2
  br label %polly.loop_header454.us.3

polly.loop_header454.us.3:                        ; preds = %polly.loop_header454.us.3.preheader, %polly.loop_header454.us.3
  %polly.indvar458.us.3 = phi i64 [ %polly.indvar_next459.us.3, %polly.loop_header454.us.3 ], [ 0, %polly.loop_header454.us.3.preheader ]
  %836 = add nuw nsw i64 %polly.indvar458.us.3, %357
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %836, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %282, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.3 = add nuw nsw i64 %polly.indvar458.us.3, 3600
  %polly.access.Packed_MemRef_call1311.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1311.us.3, align 8
  %polly.indvar_next459.us.3 = add nuw i64 %polly.indvar458.us.3, 1
  %exitcond1111.3.not = icmp eq i64 %polly.indvar458.us.3, %413
  br i1 %exitcond1111.3.not, label %polly.loop_exit456.loopexit.us.3, label %polly.loop_header454.us.3

polly.loop_exit456.loopexit.us.3:                 ; preds = %polly.loop_header454.us.3
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466.us.3

polly.loop_header466.us.3:                        ; preds = %polly.loop_exit456.loopexit.us.3, %polly.loop_header466.us.3
  %polly.indvar470.us.3 = phi i64 [ %polly.indvar_next471.us.3, %polly.loop_header466.us.3 ], [ %415, %polly.loop_exit456.loopexit.us.3 ]
  %837 = add nuw nsw i64 %polly.indvar470.us.3, %357
  %polly.access.mul.call1474.us.3 = mul nsw i64 %837, 1000
  %polly.access.add.call1475.us.3 = add nuw nsw i64 %282, %polly.access.mul.call1474.us.3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 3600
  %polly.access.Packed_MemRef_call1311479.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1311479.us.3, align 8
  %polly.indvar_next471.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 1
  %polly.loop_cond472.not.not.us.3 = icmp slt i64 %polly.indvar470.us.3, %416
  br i1 %polly.loop_cond472.not.not.us.3, label %polly.loop_header466.us.3, label %polly.loop_header480.preheader

polly.loop_header487.us.1:                        ; preds = %polly.loop_exit497.us, %polly.loop_exit497.us.1
  %indvar1523 = phi i64 [ %indvar.next1524, %polly.loop_exit497.us.1 ], [ 0, %polly.loop_exit497.us ]
  %indvars.iv1126.1 = phi i64 [ %indvars.iv.next1127.1, %polly.loop_exit497.us.1 ], [ %409, %polly.loop_exit497.us ]
  %polly.indvar491.us.1 = phi i64 [ %polly.indvar_next492.us.1, %polly.loop_exit497.us.1 ], [ %421, %polly.loop_exit497.us ]
  %838 = add i64 %378, %indvar1523
  %smin1540 = call i64 @llvm.smin.i64(i64 %838, i64 127)
  %839 = add nsw i64 %smin1540, 1
  %840 = mul nuw nsw i64 %indvar1523, 9600
  %841 = add i64 %385, %840
  %scevgep1525 = getelementptr i8, i8* %call, i64 %841
  %842 = add i64 %386, %840
  %scevgep1526 = getelementptr i8, i8* %call, i64 %842
  %843 = add i64 %388, %indvar1523
  %smin1527 = call i64 @llvm.smin.i64(i64 %843, i64 127)
  %844 = shl nsw i64 %smin1527, 3
  %scevgep1528 = getelementptr i8, i8* %scevgep1526, i64 %844
  %scevgep1531 = getelementptr i8, i8* %scevgep1530, i64 %844
  %smin1128.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1126.1, i64 127)
  %845 = add nsw i64 %polly.indvar491.us.1, %411
  %polly.loop_guard498.us.11203 = icmp sgt i64 %845, -1
  br i1 %polly.loop_guard498.us.11203, label %polly.loop_header495.preheader.us.1, label %polly.loop_exit497.us.1

polly.loop_header495.preheader.us.1:              ; preds = %polly.loop_header487.us.1
  %846 = add nuw nsw i64 %polly.indvar491.us.1, %410
  %polly.access.add.Packed_MemRef_call2313507.us.1 = add nuw nsw i64 %845, 1200
  %polly.access.Packed_MemRef_call2313508.us.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.us.1
  %_p_scalar_509.us.1 = load double, double* %polly.access.Packed_MemRef_call2313508.us.1, align 8
  %polly.access.Packed_MemRef_call1311516.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.us.1
  %_p_scalar_517.us.1 = load double, double* %polly.access.Packed_MemRef_call1311516.us.1, align 8
  %847 = mul i64 %846, 9600
  %min.iters.check1541 = icmp ult i64 %839, 4
  br i1 %min.iters.check1541, label %polly.loop_header495.us.1.preheader, label %vector.memcheck1521

vector.memcheck1521:                              ; preds = %polly.loop_header495.preheader.us.1
  %bound01532 = icmp ult i8* %scevgep1525, %scevgep1531
  %bound11533 = icmp ult i8* %scevgep1529, %scevgep1528
  %found.conflict1534 = and i1 %bound01532, %bound11533
  br i1 %found.conflict1534, label %polly.loop_header495.us.1.preheader, label %vector.ph1542

vector.ph1542:                                    ; preds = %vector.memcheck1521
  %n.vec1544 = and i64 %839, -4
  %broadcast.splatinsert1550 = insertelement <4 x double> poison, double %_p_scalar_509.us.1, i32 0
  %broadcast.splat1551 = shufflevector <4 x double> %broadcast.splatinsert1550, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1553 = insertelement <4 x double> poison, double %_p_scalar_517.us.1, i32 0
  %broadcast.splat1554 = shufflevector <4 x double> %broadcast.splatinsert1553, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1538

vector.body1538:                                  ; preds = %vector.body1538, %vector.ph1542
  %index1545 = phi i64 [ 0, %vector.ph1542 ], [ %index.next1546, %vector.body1538 ]
  %848 = add nuw nsw i64 %index1545, %357
  %849 = add nuw nsw i64 %index1545, 1200
  %850 = getelementptr double, double* %Packed_MemRef_call1311, i64 %849
  %851 = bitcast double* %850 to <4 x double>*
  %wide.load1549 = load <4 x double>, <4 x double>* %851, align 8, !alias.scope !161
  %852 = fmul fast <4 x double> %broadcast.splat1551, %wide.load1549
  %853 = getelementptr double, double* %Packed_MemRef_call2313, i64 %849
  %854 = bitcast double* %853 to <4 x double>*
  %wide.load1552 = load <4 x double>, <4 x double>* %854, align 8
  %855 = fmul fast <4 x double> %broadcast.splat1554, %wide.load1552
  %856 = shl i64 %848, 3
  %857 = add i64 %856, %847
  %858 = getelementptr i8, i8* %call, i64 %857
  %859 = bitcast i8* %858 to <4 x double>*
  %wide.load1555 = load <4 x double>, <4 x double>* %859, align 8, !alias.scope !164, !noalias !166
  %860 = fadd fast <4 x double> %855, %852
  %861 = fmul fast <4 x double> %860, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %862 = fadd fast <4 x double> %861, %wide.load1555
  %863 = bitcast i8* %858 to <4 x double>*
  store <4 x double> %862, <4 x double>* %863, align 8, !alias.scope !164, !noalias !166
  %index.next1546 = add i64 %index1545, 4
  %864 = icmp eq i64 %index.next1546, %n.vec1544
  br i1 %864, label %middle.block1536, label %vector.body1538, !llvm.loop !167

middle.block1536:                                 ; preds = %vector.body1538
  %cmp.n1548 = icmp eq i64 %839, %n.vec1544
  br i1 %cmp.n1548, label %polly.loop_exit497.us.1, label %polly.loop_header495.us.1.preheader

polly.loop_header495.us.1.preheader:              ; preds = %vector.memcheck1521, %polly.loop_header495.preheader.us.1, %middle.block1536
  %polly.indvar499.us.1.ph = phi i64 [ 0, %vector.memcheck1521 ], [ 0, %polly.loop_header495.preheader.us.1 ], [ %n.vec1544, %middle.block1536 ]
  br label %polly.loop_header495.us.1

polly.loop_header495.us.1:                        ; preds = %polly.loop_header495.us.1.preheader, %polly.loop_header495.us.1
  %polly.indvar499.us.1 = phi i64 [ %polly.indvar_next500.us.1, %polly.loop_header495.us.1 ], [ %polly.indvar499.us.1.ph, %polly.loop_header495.us.1.preheader ]
  %865 = add nuw nsw i64 %polly.indvar499.us.1, %357
  %polly.access.add.Packed_MemRef_call1311503.us.1 = add nuw nsw i64 %polly.indvar499.us.1, 1200
  %polly.access.Packed_MemRef_call1311504.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call1311504.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_509.us.1, %_p_scalar_505.us.1
  %polly.access.Packed_MemRef_call2313512.us.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.us.1
  %_p_scalar_513.us.1 = load double, double* %polly.access.Packed_MemRef_call2313512.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_517.us.1, %_p_scalar_513.us.1
  %866 = shl i64 %865, 3
  %867 = add i64 %866, %847
  %scevgep518.us.1 = getelementptr i8, i8* %call, i64 %867
  %scevgep518519.us.1 = bitcast i8* %scevgep518.us.1 to double*
  %_p_scalar_520.us.1 = load double, double* %scevgep518519.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_520.us.1
  store double %p_add42.i79.us.1, double* %scevgep518519.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.us.1 = add nuw nsw i64 %polly.indvar499.us.1, 1
  %exitcond1129.1.not = icmp eq i64 %polly.indvar499.us.1, %smin1128.1
  br i1 %exitcond1129.1.not, label %polly.loop_exit497.us.1, label %polly.loop_header495.us.1, !llvm.loop !168

polly.loop_exit497.us.1:                          ; preds = %polly.loop_header495.us.1, %middle.block1536, %polly.loop_header487.us.1
  %polly.indvar_next492.us.1 = add nuw nsw i64 %polly.indvar491.us.1, 1
  %polly.loop_cond493.us.1 = icmp ult i64 %polly.indvar491.us.1, 19
  %indvars.iv.next1127.1 = add i64 %indvars.iv1126.1, 1
  %indvar.next1524 = add i64 %indvar1523, 1
  br i1 %polly.loop_cond493.us.1, label %polly.loop_header487.us.1, label %polly.loop_header487.us.2

polly.loop_header487.us.2:                        ; preds = %polly.loop_exit497.us.1, %polly.loop_exit497.us.2
  %indvar1488 = phi i64 [ %indvar.next1489, %polly.loop_exit497.us.2 ], [ 0, %polly.loop_exit497.us.1 ]
  %indvars.iv1126.2 = phi i64 [ %indvars.iv.next1127.2, %polly.loop_exit497.us.2 ], [ %409, %polly.loop_exit497.us.1 ]
  %polly.indvar491.us.2 = phi i64 [ %polly.indvar_next492.us.2, %polly.loop_exit497.us.2 ], [ %421, %polly.loop_exit497.us.1 ]
  %868 = add i64 %393, %indvar1488
  %smin1505 = call i64 @llvm.smin.i64(i64 %868, i64 127)
  %869 = add nsw i64 %smin1505, 1
  %870 = mul nuw nsw i64 %indvar1488, 9600
  %871 = add i64 %400, %870
  %scevgep1490 = getelementptr i8, i8* %call, i64 %871
  %872 = add i64 %401, %870
  %scevgep1491 = getelementptr i8, i8* %call, i64 %872
  %873 = add i64 %403, %indvar1488
  %smin1492 = call i64 @llvm.smin.i64(i64 %873, i64 127)
  %874 = shl nsw i64 %smin1492, 3
  %scevgep1493 = getelementptr i8, i8* %scevgep1491, i64 %874
  %scevgep1496 = getelementptr i8, i8* %scevgep1495, i64 %874
  %smin1128.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1126.2, i64 127)
  %875 = add nsw i64 %polly.indvar491.us.2, %411
  %polly.loop_guard498.us.21204 = icmp sgt i64 %875, -1
  br i1 %polly.loop_guard498.us.21204, label %polly.loop_header495.preheader.us.2, label %polly.loop_exit497.us.2

polly.loop_header495.preheader.us.2:              ; preds = %polly.loop_header487.us.2
  %876 = add nuw nsw i64 %polly.indvar491.us.2, %410
  %polly.access.add.Packed_MemRef_call2313507.us.2 = add nuw nsw i64 %875, 2400
  %polly.access.Packed_MemRef_call2313508.us.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.us.2
  %_p_scalar_509.us.2 = load double, double* %polly.access.Packed_MemRef_call2313508.us.2, align 8
  %polly.access.Packed_MemRef_call1311516.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.us.2
  %_p_scalar_517.us.2 = load double, double* %polly.access.Packed_MemRef_call1311516.us.2, align 8
  %877 = mul i64 %876, 9600
  %min.iters.check1506 = icmp ult i64 %869, 4
  br i1 %min.iters.check1506, label %polly.loop_header495.us.2.preheader, label %vector.memcheck1486

vector.memcheck1486:                              ; preds = %polly.loop_header495.preheader.us.2
  %bound01497 = icmp ult i8* %scevgep1490, %scevgep1496
  %bound11498 = icmp ult i8* %scevgep1494, %scevgep1493
  %found.conflict1499 = and i1 %bound01497, %bound11498
  br i1 %found.conflict1499, label %polly.loop_header495.us.2.preheader, label %vector.ph1507

vector.ph1507:                                    ; preds = %vector.memcheck1486
  %n.vec1509 = and i64 %869, -4
  %broadcast.splatinsert1515 = insertelement <4 x double> poison, double %_p_scalar_509.us.2, i32 0
  %broadcast.splat1516 = shufflevector <4 x double> %broadcast.splatinsert1515, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1518 = insertelement <4 x double> poison, double %_p_scalar_517.us.2, i32 0
  %broadcast.splat1519 = shufflevector <4 x double> %broadcast.splatinsert1518, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1503

vector.body1503:                                  ; preds = %vector.body1503, %vector.ph1507
  %index1510 = phi i64 [ 0, %vector.ph1507 ], [ %index.next1511, %vector.body1503 ]
  %878 = add nuw nsw i64 %index1510, %357
  %879 = add nuw nsw i64 %index1510, 2400
  %880 = getelementptr double, double* %Packed_MemRef_call1311, i64 %879
  %881 = bitcast double* %880 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %881, align 8, !alias.scope !169
  %882 = fmul fast <4 x double> %broadcast.splat1516, %wide.load1514
  %883 = getelementptr double, double* %Packed_MemRef_call2313, i64 %879
  %884 = bitcast double* %883 to <4 x double>*
  %wide.load1517 = load <4 x double>, <4 x double>* %884, align 8
  %885 = fmul fast <4 x double> %broadcast.splat1519, %wide.load1517
  %886 = shl i64 %878, 3
  %887 = add i64 %886, %877
  %888 = getelementptr i8, i8* %call, i64 %887
  %889 = bitcast i8* %888 to <4 x double>*
  %wide.load1520 = load <4 x double>, <4 x double>* %889, align 8, !alias.scope !172, !noalias !174
  %890 = fadd fast <4 x double> %885, %882
  %891 = fmul fast <4 x double> %890, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %892 = fadd fast <4 x double> %891, %wide.load1520
  %893 = bitcast i8* %888 to <4 x double>*
  store <4 x double> %892, <4 x double>* %893, align 8, !alias.scope !172, !noalias !174
  %index.next1511 = add i64 %index1510, 4
  %894 = icmp eq i64 %index.next1511, %n.vec1509
  br i1 %894, label %middle.block1501, label %vector.body1503, !llvm.loop !175

middle.block1501:                                 ; preds = %vector.body1503
  %cmp.n1513 = icmp eq i64 %869, %n.vec1509
  br i1 %cmp.n1513, label %polly.loop_exit497.us.2, label %polly.loop_header495.us.2.preheader

polly.loop_header495.us.2.preheader:              ; preds = %vector.memcheck1486, %polly.loop_header495.preheader.us.2, %middle.block1501
  %polly.indvar499.us.2.ph = phi i64 [ 0, %vector.memcheck1486 ], [ 0, %polly.loop_header495.preheader.us.2 ], [ %n.vec1509, %middle.block1501 ]
  br label %polly.loop_header495.us.2

polly.loop_header495.us.2:                        ; preds = %polly.loop_header495.us.2.preheader, %polly.loop_header495.us.2
  %polly.indvar499.us.2 = phi i64 [ %polly.indvar_next500.us.2, %polly.loop_header495.us.2 ], [ %polly.indvar499.us.2.ph, %polly.loop_header495.us.2.preheader ]
  %895 = add nuw nsw i64 %polly.indvar499.us.2, %357
  %polly.access.add.Packed_MemRef_call1311503.us.2 = add nuw nsw i64 %polly.indvar499.us.2, 2400
  %polly.access.Packed_MemRef_call1311504.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call1311504.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_509.us.2, %_p_scalar_505.us.2
  %polly.access.Packed_MemRef_call2313512.us.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.us.2
  %_p_scalar_513.us.2 = load double, double* %polly.access.Packed_MemRef_call2313512.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_517.us.2, %_p_scalar_513.us.2
  %896 = shl i64 %895, 3
  %897 = add i64 %896, %877
  %scevgep518.us.2 = getelementptr i8, i8* %call, i64 %897
  %scevgep518519.us.2 = bitcast i8* %scevgep518.us.2 to double*
  %_p_scalar_520.us.2 = load double, double* %scevgep518519.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_520.us.2
  store double %p_add42.i79.us.2, double* %scevgep518519.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.us.2 = add nuw nsw i64 %polly.indvar499.us.2, 1
  %exitcond1129.2.not = icmp eq i64 %polly.indvar499.us.2, %smin1128.2
  br i1 %exitcond1129.2.not, label %polly.loop_exit497.us.2, label %polly.loop_header495.us.2, !llvm.loop !176

polly.loop_exit497.us.2:                          ; preds = %polly.loop_header495.us.2, %middle.block1501, %polly.loop_header487.us.2
  %polly.indvar_next492.us.2 = add nuw nsw i64 %polly.indvar491.us.2, 1
  %polly.loop_cond493.us.2 = icmp ult i64 %polly.indvar491.us.2, 19
  %indvars.iv.next1127.2 = add i64 %indvars.iv1126.2, 1
  %indvar.next1489 = add i64 %indvar1488, 1
  br i1 %polly.loop_cond493.us.2, label %polly.loop_header487.us.2, label %polly.loop_header487.us.3

polly.loop_header487.us.3:                        ; preds = %polly.loop_exit497.us.2, %polly.loop_exit497.us.3
  %indvar1468 = phi i64 [ %indvar.next1469, %polly.loop_exit497.us.3 ], [ 0, %polly.loop_exit497.us.2 ]
  %indvars.iv1126.3 = phi i64 [ %indvars.iv.next1127.3, %polly.loop_exit497.us.3 ], [ %409, %polly.loop_exit497.us.2 ]
  %polly.indvar491.us.3 = phi i64 [ %polly.indvar_next492.us.3, %polly.loop_exit497.us.3 ], [ %421, %polly.loop_exit497.us.2 ]
  %898 = add i64 %408, %indvar1468
  %smin1470 = call i64 @llvm.smin.i64(i64 %898, i64 127)
  %899 = add nsw i64 %smin1470, 1
  %smin1128.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1126.3, i64 127)
  %900 = add nsw i64 %polly.indvar491.us.3, %411
  %polly.loop_guard498.us.31205 = icmp sgt i64 %900, -1
  br i1 %polly.loop_guard498.us.31205, label %polly.loop_header495.preheader.us.3, label %polly.loop_exit497.us.3

polly.loop_header495.preheader.us.3:              ; preds = %polly.loop_header487.us.3
  %901 = add nuw nsw i64 %polly.indvar491.us.3, %410
  %polly.access.add.Packed_MemRef_call2313507.us.3 = add nuw nsw i64 %900, 3600
  %polly.access.Packed_MemRef_call2313508.us.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.us.3
  %_p_scalar_509.us.3 = load double, double* %polly.access.Packed_MemRef_call2313508.us.3, align 8
  %polly.access.Packed_MemRef_call1311516.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.us.3
  %_p_scalar_517.us.3 = load double, double* %polly.access.Packed_MemRef_call1311516.us.3, align 8
  %902 = mul i64 %901, 9600
  %min.iters.check1471 = icmp ult i64 %899, 4
  br i1 %min.iters.check1471, label %polly.loop_header495.us.3.preheader, label %vector.ph1472

vector.ph1472:                                    ; preds = %polly.loop_header495.preheader.us.3
  %n.vec1474 = and i64 %899, -4
  %broadcast.splatinsert1480 = insertelement <4 x double> poison, double %_p_scalar_509.us.3, i32 0
  %broadcast.splat1481 = shufflevector <4 x double> %broadcast.splatinsert1480, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1483 = insertelement <4 x double> poison, double %_p_scalar_517.us.3, i32 0
  %broadcast.splat1484 = shufflevector <4 x double> %broadcast.splatinsert1483, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1464

vector.body1464:                                  ; preds = %vector.body1464, %vector.ph1472
  %index1475 = phi i64 [ 0, %vector.ph1472 ], [ %index.next1476, %vector.body1464 ]
  %903 = add nuw nsw i64 %index1475, %357
  %904 = add nuw nsw i64 %index1475, 3600
  %905 = getelementptr double, double* %Packed_MemRef_call1311, i64 %904
  %906 = bitcast double* %905 to <4 x double>*
  %wide.load1479 = load <4 x double>, <4 x double>* %906, align 8
  %907 = fmul fast <4 x double> %broadcast.splat1481, %wide.load1479
  %908 = getelementptr double, double* %Packed_MemRef_call2313, i64 %904
  %909 = bitcast double* %908 to <4 x double>*
  %wide.load1482 = load <4 x double>, <4 x double>* %909, align 8
  %910 = fmul fast <4 x double> %broadcast.splat1484, %wide.load1482
  %911 = shl i64 %903, 3
  %912 = add i64 %911, %902
  %913 = getelementptr i8, i8* %call, i64 %912
  %914 = bitcast i8* %913 to <4 x double>*
  %wide.load1485 = load <4 x double>, <4 x double>* %914, align 8, !alias.scope !92, !noalias !94
  %915 = fadd fast <4 x double> %910, %907
  %916 = fmul fast <4 x double> %915, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %917 = fadd fast <4 x double> %916, %wide.load1485
  %918 = bitcast i8* %913 to <4 x double>*
  store <4 x double> %917, <4 x double>* %918, align 8, !alias.scope !92, !noalias !94
  %index.next1476 = add i64 %index1475, 4
  %919 = icmp eq i64 %index.next1476, %n.vec1474
  br i1 %919, label %middle.block1462, label %vector.body1464, !llvm.loop !177

middle.block1462:                                 ; preds = %vector.body1464
  %cmp.n1478 = icmp eq i64 %899, %n.vec1474
  br i1 %cmp.n1478, label %polly.loop_exit497.us.3, label %polly.loop_header495.us.3.preheader

polly.loop_header495.us.3.preheader:              ; preds = %polly.loop_header495.preheader.us.3, %middle.block1462
  %polly.indvar499.us.3.ph = phi i64 [ 0, %polly.loop_header495.preheader.us.3 ], [ %n.vec1474, %middle.block1462 ]
  br label %polly.loop_header495.us.3

polly.loop_header495.us.3:                        ; preds = %polly.loop_header495.us.3.preheader, %polly.loop_header495.us.3
  %polly.indvar499.us.3 = phi i64 [ %polly.indvar_next500.us.3, %polly.loop_header495.us.3 ], [ %polly.indvar499.us.3.ph, %polly.loop_header495.us.3.preheader ]
  %920 = add nuw nsw i64 %polly.indvar499.us.3, %357
  %polly.access.add.Packed_MemRef_call1311503.us.3 = add nuw nsw i64 %polly.indvar499.us.3, 3600
  %polly.access.Packed_MemRef_call1311504.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call1311504.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_509.us.3, %_p_scalar_505.us.3
  %polly.access.Packed_MemRef_call2313512.us.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.us.3
  %_p_scalar_513.us.3 = load double, double* %polly.access.Packed_MemRef_call2313512.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_517.us.3, %_p_scalar_513.us.3
  %921 = shl i64 %920, 3
  %922 = add i64 %921, %902
  %scevgep518.us.3 = getelementptr i8, i8* %call, i64 %922
  %scevgep518519.us.3 = bitcast i8* %scevgep518.us.3 to double*
  %_p_scalar_520.us.3 = load double, double* %scevgep518519.us.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_520.us.3
  store double %p_add42.i79.us.3, double* %scevgep518519.us.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.us.3 = add nuw nsw i64 %polly.indvar499.us.3, 1
  %exitcond1129.3.not = icmp eq i64 %polly.indvar499.us.3, %smin1128.3
  br i1 %exitcond1129.3.not, label %polly.loop_exit497.us.3, label %polly.loop_header495.us.3, !llvm.loop !178

polly.loop_exit497.us.3:                          ; preds = %polly.loop_header495.us.3, %middle.block1462, %polly.loop_header487.us.3
  %polly.indvar_next492.us.3 = add nuw nsw i64 %polly.indvar491.us.3, 1
  %polly.loop_cond493.us.3 = icmp ult i64 %polly.indvar491.us.3, 19
  %indvars.iv.next1127.3 = add i64 %indvars.iv1126.3, 1
  %indvar.next1469 = add i64 %indvar1468, 1
  br i1 %polly.loop_cond493.us.3, label %polly.loop_header487.us.3, label %polly.loop_exit482

polly.loop_header645.1:                           ; preds = %polly.loop_header645, %polly.loop_header645.1
  %polly.indvar648.1 = phi i64 [ %polly.indvar_next649.1, %polly.loop_header645.1 ], [ 0, %polly.loop_header645 ]
  %923 = add nuw nsw i64 %polly.indvar648.1, %539
  %polly.access.mul.call2652.1 = mul nuw nsw i64 %923, 1000
  %polly.access.add.call2653.1 = add nuw nsw i64 %462, %polly.access.mul.call2652.1
  %polly.access.call2654.1 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.1
  %polly.access.call2654.load.1 = load double, double* %polly.access.call2654.1, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.1 = add nuw nsw i64 %polly.indvar648.1, 1200
  %polly.access.Packed_MemRef_call2528.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.1
  store double %polly.access.call2654.load.1, double* %polly.access.Packed_MemRef_call2528.1, align 8
  %polly.indvar_next649.1 = add nuw nsw i64 %polly.indvar648.1, 1
  %exitcond1137.1.not = icmp eq i64 %polly.indvar_next649.1, %indvars.iv1135
  br i1 %exitcond1137.1.not, label %polly.loop_header645.2, label %polly.loop_header645.1

polly.loop_header645.2:                           ; preds = %polly.loop_header645.1, %polly.loop_header645.2
  %polly.indvar648.2 = phi i64 [ %polly.indvar_next649.2, %polly.loop_header645.2 ], [ 0, %polly.loop_header645.1 ]
  %924 = add nuw nsw i64 %polly.indvar648.2, %539
  %polly.access.mul.call2652.2 = mul nuw nsw i64 %924, 1000
  %polly.access.add.call2653.2 = add nuw nsw i64 %463, %polly.access.mul.call2652.2
  %polly.access.call2654.2 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.2
  %polly.access.call2654.load.2 = load double, double* %polly.access.call2654.2, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.2 = add nuw nsw i64 %polly.indvar648.2, 2400
  %polly.access.Packed_MemRef_call2528.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.2
  store double %polly.access.call2654.load.2, double* %polly.access.Packed_MemRef_call2528.2, align 8
  %polly.indvar_next649.2 = add nuw nsw i64 %polly.indvar648.2, 1
  %exitcond1137.2.not = icmp eq i64 %polly.indvar_next649.2, %indvars.iv1135
  br i1 %exitcond1137.2.not, label %polly.loop_header645.3, label %polly.loop_header645.2

polly.loop_header645.3:                           ; preds = %polly.loop_header645.2, %polly.loop_header645.3
  %polly.indvar648.3 = phi i64 [ %polly.indvar_next649.3, %polly.loop_header645.3 ], [ 0, %polly.loop_header645.2 ]
  %925 = add nuw nsw i64 %polly.indvar648.3, %539
  %polly.access.mul.call2652.3 = mul nuw nsw i64 %925, 1000
  %polly.access.add.call2653.3 = add nuw nsw i64 %464, %polly.access.mul.call2652.3
  %polly.access.call2654.3 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.3
  %polly.access.call2654.load.3 = load double, double* %polly.access.call2654.3, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.3 = add nuw nsw i64 %polly.indvar648.3, 3600
  %polly.access.Packed_MemRef_call2528.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.3
  store double %polly.access.call2654.load.3, double* %polly.access.Packed_MemRef_call2528.3, align 8
  %polly.indvar_next649.3 = add nuw nsw i64 %polly.indvar648.3, 1
  %exitcond1137.3.not = icmp eq i64 %polly.indvar_next649.3, %indvars.iv1135
  br i1 %exitcond1137.3.not, label %polly.loop_exit647.3, label %polly.loop_header645.3

polly.loop_exit647.3:                             ; preds = %polly.loop_header645.3
  %926 = mul nsw i64 %polly.indvar636, -128
  %927 = mul nuw nsw i64 %polly.indvar636, 6
  %928 = shl nuw nsw i64 %polly.indvar636, 1
  %pexp.p_div_q655 = udiv i64 %928, 5
  %929 = add nuw nsw i64 %pexp.p_div_q655, %927
  br label %polly.loop_header656

polly.loop_header681.1:                           ; preds = %polly.loop_header681, %polly.loop_header681.1
  %polly.indvar685.1 = phi i64 [ %polly.indvar_next686.1, %polly.loop_header681.1 ], [ %597, %polly.loop_header681 ]
  %930 = add nuw nsw i64 %polly.indvar685.1, %539
  %polly.access.mul.call1689.1 = mul nsw i64 %930, 1000
  %polly.access.add.call1690.1 = add nuw nsw i64 %462, %polly.access.mul.call1689.1
  %polly.access.call1691.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.1
  %polly.access.call1691.load.1 = load double, double* %polly.access.call1691.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.1 = add nuw nsw i64 %polly.indvar685.1, 1200
  %polly.access.Packed_MemRef_call1526694.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.1
  store double %polly.access.call1691.load.1, double* %polly.access.Packed_MemRef_call1526694.1, align 8
  %polly.indvar_next686.1 = add nuw nsw i64 %polly.indvar685.1, 1
  %polly.loop_cond687.not.not.1 = icmp slt i64 %polly.indvar685.1, %598
  br i1 %polly.loop_cond687.not.not.1, label %polly.loop_header681.1, label %polly.loop_header681.2

polly.loop_header681.2:                           ; preds = %polly.loop_header681.1, %polly.loop_header681.2
  %polly.indvar685.2 = phi i64 [ %polly.indvar_next686.2, %polly.loop_header681.2 ], [ %597, %polly.loop_header681.1 ]
  %931 = add nuw nsw i64 %polly.indvar685.2, %539
  %polly.access.mul.call1689.2 = mul nsw i64 %931, 1000
  %polly.access.add.call1690.2 = add nuw nsw i64 %463, %polly.access.mul.call1689.2
  %polly.access.call1691.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.2
  %polly.access.call1691.load.2 = load double, double* %polly.access.call1691.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.2 = add nuw nsw i64 %polly.indvar685.2, 2400
  %polly.access.Packed_MemRef_call1526694.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.2
  store double %polly.access.call1691.load.2, double* %polly.access.Packed_MemRef_call1526694.2, align 8
  %polly.indvar_next686.2 = add nuw nsw i64 %polly.indvar685.2, 1
  %polly.loop_cond687.not.not.2 = icmp slt i64 %polly.indvar685.2, %598
  br i1 %polly.loop_cond687.not.not.2, label %polly.loop_header681.2, label %polly.loop_header681.3

polly.loop_header681.3:                           ; preds = %polly.loop_header681.2, %polly.loop_header681.3
  %polly.indvar685.3 = phi i64 [ %polly.indvar_next686.3, %polly.loop_header681.3 ], [ %597, %polly.loop_header681.2 ]
  %932 = add nuw nsw i64 %polly.indvar685.3, %539
  %polly.access.mul.call1689.3 = mul nsw i64 %932, 1000
  %polly.access.add.call1690.3 = add nuw nsw i64 %464, %polly.access.mul.call1689.3
  %polly.access.call1691.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.3
  %polly.access.call1691.load.3 = load double, double* %polly.access.call1691.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.3 = add nuw nsw i64 %polly.indvar685.3, 3600
  %polly.access.Packed_MemRef_call1526694.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.3
  store double %polly.access.call1691.load.3, double* %polly.access.Packed_MemRef_call1526694.3, align 8
  %polly.indvar_next686.3 = add nuw nsw i64 %polly.indvar685.3, 1
  %polly.loop_cond687.not.not.3 = icmp slt i64 %polly.indvar685.3, %598
  br i1 %polly.loop_cond687.not.not.3, label %polly.loop_header681.3, label %polly.loop_header695.preheader

polly.loop_header669.us.1:                        ; preds = %polly.loop_header669.us.1.preheader, %polly.loop_header669.us.1
  %polly.indvar673.us.1 = phi i64 [ %polly.indvar_next674.us.1, %polly.loop_header669.us.1 ], [ 0, %polly.loop_header669.us.1.preheader ]
  %933 = add nuw nsw i64 %polly.indvar673.us.1, %539
  %polly.access.mul.call1677.us.1 = mul nuw nsw i64 %933, 1000
  %polly.access.add.call1678.us.1 = add nuw nsw i64 %462, %polly.access.mul.call1677.us.1
  %polly.access.call1679.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.1
  %polly.access.call1679.load.us.1 = load double, double* %polly.access.call1679.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.1 = add nuw nsw i64 %polly.indvar673.us.1, 1200
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.1
  store double %polly.access.call1679.load.us.1, double* %polly.access.Packed_MemRef_call1526.us.1, align 8
  %polly.indvar_next674.us.1 = add nuw i64 %polly.indvar673.us.1, 1
  %exitcond1140.1.not = icmp eq i64 %polly.indvar673.us.1, %595
  br i1 %exitcond1140.1.not, label %polly.loop_exit671.loopexit.us.1, label %polly.loop_header669.us.1

polly.loop_exit671.loopexit.us.1:                 ; preds = %polly.loop_header669.us.1
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.2.preheader, label %polly.loop_header681.us.1

polly.loop_header681.us.1:                        ; preds = %polly.loop_exit671.loopexit.us.1, %polly.loop_header681.us.1
  %polly.indvar685.us.1 = phi i64 [ %polly.indvar_next686.us.1, %polly.loop_header681.us.1 ], [ %597, %polly.loop_exit671.loopexit.us.1 ]
  %934 = add nuw nsw i64 %polly.indvar685.us.1, %539
  %polly.access.mul.call1689.us.1 = mul nsw i64 %934, 1000
  %polly.access.add.call1690.us.1 = add nuw nsw i64 %462, %polly.access.mul.call1689.us.1
  %polly.access.call1691.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.1
  %polly.access.call1691.load.us.1 = load double, double* %polly.access.call1691.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.1 = add nuw nsw i64 %polly.indvar685.us.1, 1200
  %polly.access.Packed_MemRef_call1526694.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.1
  store double %polly.access.call1691.load.us.1, double* %polly.access.Packed_MemRef_call1526694.us.1, align 8
  %polly.indvar_next686.us.1 = add nuw nsw i64 %polly.indvar685.us.1, 1
  %polly.loop_cond687.not.not.us.1 = icmp slt i64 %polly.indvar685.us.1, %598
  br i1 %polly.loop_cond687.not.not.us.1, label %polly.loop_header681.us.1, label %polly.loop_header669.us.2.preheader

polly.loop_header669.us.2.preheader:              ; preds = %polly.loop_header681.us.1, %polly.loop_exit671.loopexit.us.1
  br label %polly.loop_header669.us.2

polly.loop_header669.us.2:                        ; preds = %polly.loop_header669.us.2.preheader, %polly.loop_header669.us.2
  %polly.indvar673.us.2 = phi i64 [ %polly.indvar_next674.us.2, %polly.loop_header669.us.2 ], [ 0, %polly.loop_header669.us.2.preheader ]
  %935 = add nuw nsw i64 %polly.indvar673.us.2, %539
  %polly.access.mul.call1677.us.2 = mul nuw nsw i64 %935, 1000
  %polly.access.add.call1678.us.2 = add nuw nsw i64 %463, %polly.access.mul.call1677.us.2
  %polly.access.call1679.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.2
  %polly.access.call1679.load.us.2 = load double, double* %polly.access.call1679.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.2 = add nuw nsw i64 %polly.indvar673.us.2, 2400
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.2
  store double %polly.access.call1679.load.us.2, double* %polly.access.Packed_MemRef_call1526.us.2, align 8
  %polly.indvar_next674.us.2 = add nuw i64 %polly.indvar673.us.2, 1
  %exitcond1140.2.not = icmp eq i64 %polly.indvar673.us.2, %595
  br i1 %exitcond1140.2.not, label %polly.loop_exit671.loopexit.us.2, label %polly.loop_header669.us.2

polly.loop_exit671.loopexit.us.2:                 ; preds = %polly.loop_header669.us.2
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.3.preheader, label %polly.loop_header681.us.2

polly.loop_header681.us.2:                        ; preds = %polly.loop_exit671.loopexit.us.2, %polly.loop_header681.us.2
  %polly.indvar685.us.2 = phi i64 [ %polly.indvar_next686.us.2, %polly.loop_header681.us.2 ], [ %597, %polly.loop_exit671.loopexit.us.2 ]
  %936 = add nuw nsw i64 %polly.indvar685.us.2, %539
  %polly.access.mul.call1689.us.2 = mul nsw i64 %936, 1000
  %polly.access.add.call1690.us.2 = add nuw nsw i64 %463, %polly.access.mul.call1689.us.2
  %polly.access.call1691.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.2
  %polly.access.call1691.load.us.2 = load double, double* %polly.access.call1691.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.2 = add nuw nsw i64 %polly.indvar685.us.2, 2400
  %polly.access.Packed_MemRef_call1526694.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.2
  store double %polly.access.call1691.load.us.2, double* %polly.access.Packed_MemRef_call1526694.us.2, align 8
  %polly.indvar_next686.us.2 = add nuw nsw i64 %polly.indvar685.us.2, 1
  %polly.loop_cond687.not.not.us.2 = icmp slt i64 %polly.indvar685.us.2, %598
  br i1 %polly.loop_cond687.not.not.us.2, label %polly.loop_header681.us.2, label %polly.loop_header669.us.3.preheader

polly.loop_header669.us.3.preheader:              ; preds = %polly.loop_header681.us.2, %polly.loop_exit671.loopexit.us.2
  br label %polly.loop_header669.us.3

polly.loop_header669.us.3:                        ; preds = %polly.loop_header669.us.3.preheader, %polly.loop_header669.us.3
  %polly.indvar673.us.3 = phi i64 [ %polly.indvar_next674.us.3, %polly.loop_header669.us.3 ], [ 0, %polly.loop_header669.us.3.preheader ]
  %937 = add nuw nsw i64 %polly.indvar673.us.3, %539
  %polly.access.mul.call1677.us.3 = mul nuw nsw i64 %937, 1000
  %polly.access.add.call1678.us.3 = add nuw nsw i64 %464, %polly.access.mul.call1677.us.3
  %polly.access.call1679.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.3
  %polly.access.call1679.load.us.3 = load double, double* %polly.access.call1679.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.3 = add nuw nsw i64 %polly.indvar673.us.3, 3600
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.3
  store double %polly.access.call1679.load.us.3, double* %polly.access.Packed_MemRef_call1526.us.3, align 8
  %polly.indvar_next674.us.3 = add nuw i64 %polly.indvar673.us.3, 1
  %exitcond1140.3.not = icmp eq i64 %polly.indvar673.us.3, %595
  br i1 %exitcond1140.3.not, label %polly.loop_exit671.loopexit.us.3, label %polly.loop_header669.us.3

polly.loop_exit671.loopexit.us.3:                 ; preds = %polly.loop_header669.us.3
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header681.us.3

polly.loop_header681.us.3:                        ; preds = %polly.loop_exit671.loopexit.us.3, %polly.loop_header681.us.3
  %polly.indvar685.us.3 = phi i64 [ %polly.indvar_next686.us.3, %polly.loop_header681.us.3 ], [ %597, %polly.loop_exit671.loopexit.us.3 ]
  %938 = add nuw nsw i64 %polly.indvar685.us.3, %539
  %polly.access.mul.call1689.us.3 = mul nsw i64 %938, 1000
  %polly.access.add.call1690.us.3 = add nuw nsw i64 %464, %polly.access.mul.call1689.us.3
  %polly.access.call1691.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.3
  %polly.access.call1691.load.us.3 = load double, double* %polly.access.call1691.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.3 = add nuw nsw i64 %polly.indvar685.us.3, 3600
  %polly.access.Packed_MemRef_call1526694.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.3
  store double %polly.access.call1691.load.us.3, double* %polly.access.Packed_MemRef_call1526694.us.3, align 8
  %polly.indvar_next686.us.3 = add nuw nsw i64 %polly.indvar685.us.3, 1
  %polly.loop_cond687.not.not.us.3 = icmp slt i64 %polly.indvar685.us.3, %598
  br i1 %polly.loop_cond687.not.not.us.3, label %polly.loop_header681.us.3, label %polly.loop_header695.preheader

polly.loop_header702.us.1:                        ; preds = %polly.loop_exit712.us, %polly.loop_exit712.us.1
  %indvar1369 = phi i64 [ %indvar.next1370, %polly.loop_exit712.us.1 ], [ 0, %polly.loop_exit712.us ]
  %indvars.iv1155.1 = phi i64 [ %indvars.iv.next1156.1, %polly.loop_exit712.us.1 ], [ %591, %polly.loop_exit712.us ]
  %polly.indvar706.us.1 = phi i64 [ %polly.indvar_next707.us.1, %polly.loop_exit712.us.1 ], [ %603, %polly.loop_exit712.us ]
  %939 = add i64 %560, %indvar1369
  %smin1386 = call i64 @llvm.smin.i64(i64 %939, i64 127)
  %940 = add nsw i64 %smin1386, 1
  %941 = mul nuw nsw i64 %indvar1369, 9600
  %942 = add i64 %567, %941
  %scevgep1371 = getelementptr i8, i8* %call, i64 %942
  %943 = add i64 %568, %941
  %scevgep1372 = getelementptr i8, i8* %call, i64 %943
  %944 = add i64 %570, %indvar1369
  %smin1373 = call i64 @llvm.smin.i64(i64 %944, i64 127)
  %945 = shl nsw i64 %smin1373, 3
  %scevgep1374 = getelementptr i8, i8* %scevgep1372, i64 %945
  %scevgep1377 = getelementptr i8, i8* %scevgep1376, i64 %945
  %smin1157.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1155.1, i64 127)
  %946 = add nsw i64 %polly.indvar706.us.1, %593
  %polly.loop_guard713.us.11207 = icmp sgt i64 %946, -1
  br i1 %polly.loop_guard713.us.11207, label %polly.loop_header710.preheader.us.1, label %polly.loop_exit712.us.1

polly.loop_header710.preheader.us.1:              ; preds = %polly.loop_header702.us.1
  %947 = add nuw nsw i64 %polly.indvar706.us.1, %592
  %polly.access.add.Packed_MemRef_call2528722.us.1 = add nuw nsw i64 %946, 1200
  %polly.access.Packed_MemRef_call2528723.us.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.us.1
  %_p_scalar_724.us.1 = load double, double* %polly.access.Packed_MemRef_call2528723.us.1, align 8
  %polly.access.Packed_MemRef_call1526731.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.us.1
  %_p_scalar_732.us.1 = load double, double* %polly.access.Packed_MemRef_call1526731.us.1, align 8
  %948 = mul i64 %947, 9600
  %min.iters.check1387 = icmp ult i64 %940, 4
  br i1 %min.iters.check1387, label %polly.loop_header710.us.1.preheader, label %vector.memcheck1367

vector.memcheck1367:                              ; preds = %polly.loop_header710.preheader.us.1
  %bound01378 = icmp ult i8* %scevgep1371, %scevgep1377
  %bound11379 = icmp ult i8* %scevgep1375, %scevgep1374
  %found.conflict1380 = and i1 %bound01378, %bound11379
  br i1 %found.conflict1380, label %polly.loop_header710.us.1.preheader, label %vector.ph1388

vector.ph1388:                                    ; preds = %vector.memcheck1367
  %n.vec1390 = and i64 %940, -4
  %broadcast.splatinsert1396 = insertelement <4 x double> poison, double %_p_scalar_724.us.1, i32 0
  %broadcast.splat1397 = shufflevector <4 x double> %broadcast.splatinsert1396, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1399 = insertelement <4 x double> poison, double %_p_scalar_732.us.1, i32 0
  %broadcast.splat1400 = shufflevector <4 x double> %broadcast.splatinsert1399, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %vector.ph1388
  %index1391 = phi i64 [ 0, %vector.ph1388 ], [ %index.next1392, %vector.body1384 ]
  %949 = add nuw nsw i64 %index1391, %539
  %950 = add nuw nsw i64 %index1391, 1200
  %951 = getelementptr double, double* %Packed_MemRef_call1526, i64 %950
  %952 = bitcast double* %951 to <4 x double>*
  %wide.load1395 = load <4 x double>, <4 x double>* %952, align 8, !alias.scope !179
  %953 = fmul fast <4 x double> %broadcast.splat1397, %wide.load1395
  %954 = getelementptr double, double* %Packed_MemRef_call2528, i64 %950
  %955 = bitcast double* %954 to <4 x double>*
  %wide.load1398 = load <4 x double>, <4 x double>* %955, align 8
  %956 = fmul fast <4 x double> %broadcast.splat1400, %wide.load1398
  %957 = shl i64 %949, 3
  %958 = add i64 %957, %948
  %959 = getelementptr i8, i8* %call, i64 %958
  %960 = bitcast i8* %959 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %960, align 8, !alias.scope !182, !noalias !184
  %961 = fadd fast <4 x double> %956, %953
  %962 = fmul fast <4 x double> %961, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %963 = fadd fast <4 x double> %962, %wide.load1401
  %964 = bitcast i8* %959 to <4 x double>*
  store <4 x double> %963, <4 x double>* %964, align 8, !alias.scope !182, !noalias !184
  %index.next1392 = add i64 %index1391, 4
  %965 = icmp eq i64 %index.next1392, %n.vec1390
  br i1 %965, label %middle.block1382, label %vector.body1384, !llvm.loop !185

middle.block1382:                                 ; preds = %vector.body1384
  %cmp.n1394 = icmp eq i64 %940, %n.vec1390
  br i1 %cmp.n1394, label %polly.loop_exit712.us.1, label %polly.loop_header710.us.1.preheader

polly.loop_header710.us.1.preheader:              ; preds = %vector.memcheck1367, %polly.loop_header710.preheader.us.1, %middle.block1382
  %polly.indvar714.us.1.ph = phi i64 [ 0, %vector.memcheck1367 ], [ 0, %polly.loop_header710.preheader.us.1 ], [ %n.vec1390, %middle.block1382 ]
  br label %polly.loop_header710.us.1

polly.loop_header710.us.1:                        ; preds = %polly.loop_header710.us.1.preheader, %polly.loop_header710.us.1
  %polly.indvar714.us.1 = phi i64 [ %polly.indvar_next715.us.1, %polly.loop_header710.us.1 ], [ %polly.indvar714.us.1.ph, %polly.loop_header710.us.1.preheader ]
  %966 = add nuw nsw i64 %polly.indvar714.us.1, %539
  %polly.access.add.Packed_MemRef_call1526718.us.1 = add nuw nsw i64 %polly.indvar714.us.1, 1200
  %polly.access.Packed_MemRef_call1526719.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.us.1
  %_p_scalar_720.us.1 = load double, double* %polly.access.Packed_MemRef_call1526719.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_724.us.1, %_p_scalar_720.us.1
  %polly.access.Packed_MemRef_call2528727.us.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.us.1
  %_p_scalar_728.us.1 = load double, double* %polly.access.Packed_MemRef_call2528727.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_732.us.1, %_p_scalar_728.us.1
  %967 = shl i64 %966, 3
  %968 = add i64 %967, %948
  %scevgep733.us.1 = getelementptr i8, i8* %call, i64 %968
  %scevgep733734.us.1 = bitcast i8* %scevgep733.us.1 to double*
  %_p_scalar_735.us.1 = load double, double* %scevgep733734.us.1, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_735.us.1
  store double %p_add42.i.us.1, double* %scevgep733734.us.1, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.us.1 = add nuw nsw i64 %polly.indvar714.us.1, 1
  %exitcond1158.1.not = icmp eq i64 %polly.indvar714.us.1, %smin1157.1
  br i1 %exitcond1158.1.not, label %polly.loop_exit712.us.1, label %polly.loop_header710.us.1, !llvm.loop !186

polly.loop_exit712.us.1:                          ; preds = %polly.loop_header710.us.1, %middle.block1382, %polly.loop_header702.us.1
  %polly.indvar_next707.us.1 = add nuw nsw i64 %polly.indvar706.us.1, 1
  %polly.loop_cond708.us.1 = icmp ult i64 %polly.indvar706.us.1, 19
  %indvars.iv.next1156.1 = add i64 %indvars.iv1155.1, 1
  %indvar.next1370 = add i64 %indvar1369, 1
  br i1 %polly.loop_cond708.us.1, label %polly.loop_header702.us.1, label %polly.loop_header702.us.2

polly.loop_header702.us.2:                        ; preds = %polly.loop_exit712.us.1, %polly.loop_exit712.us.2
  %indvar1334 = phi i64 [ %indvar.next1335, %polly.loop_exit712.us.2 ], [ 0, %polly.loop_exit712.us.1 ]
  %indvars.iv1155.2 = phi i64 [ %indvars.iv.next1156.2, %polly.loop_exit712.us.2 ], [ %591, %polly.loop_exit712.us.1 ]
  %polly.indvar706.us.2 = phi i64 [ %polly.indvar_next707.us.2, %polly.loop_exit712.us.2 ], [ %603, %polly.loop_exit712.us.1 ]
  %969 = add i64 %575, %indvar1334
  %smin1351 = call i64 @llvm.smin.i64(i64 %969, i64 127)
  %970 = add nsw i64 %smin1351, 1
  %971 = mul nuw nsw i64 %indvar1334, 9600
  %972 = add i64 %582, %971
  %scevgep1336 = getelementptr i8, i8* %call, i64 %972
  %973 = add i64 %583, %971
  %scevgep1337 = getelementptr i8, i8* %call, i64 %973
  %974 = add i64 %585, %indvar1334
  %smin1338 = call i64 @llvm.smin.i64(i64 %974, i64 127)
  %975 = shl nsw i64 %smin1338, 3
  %scevgep1339 = getelementptr i8, i8* %scevgep1337, i64 %975
  %scevgep1342 = getelementptr i8, i8* %scevgep1341, i64 %975
  %smin1157.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1155.2, i64 127)
  %976 = add nsw i64 %polly.indvar706.us.2, %593
  %polly.loop_guard713.us.21208 = icmp sgt i64 %976, -1
  br i1 %polly.loop_guard713.us.21208, label %polly.loop_header710.preheader.us.2, label %polly.loop_exit712.us.2

polly.loop_header710.preheader.us.2:              ; preds = %polly.loop_header702.us.2
  %977 = add nuw nsw i64 %polly.indvar706.us.2, %592
  %polly.access.add.Packed_MemRef_call2528722.us.2 = add nuw nsw i64 %976, 2400
  %polly.access.Packed_MemRef_call2528723.us.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.us.2
  %_p_scalar_724.us.2 = load double, double* %polly.access.Packed_MemRef_call2528723.us.2, align 8
  %polly.access.Packed_MemRef_call1526731.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.us.2
  %_p_scalar_732.us.2 = load double, double* %polly.access.Packed_MemRef_call1526731.us.2, align 8
  %978 = mul i64 %977, 9600
  %min.iters.check1352 = icmp ult i64 %970, 4
  br i1 %min.iters.check1352, label %polly.loop_header710.us.2.preheader, label %vector.memcheck1332

vector.memcheck1332:                              ; preds = %polly.loop_header710.preheader.us.2
  %bound01343 = icmp ult i8* %scevgep1336, %scevgep1342
  %bound11344 = icmp ult i8* %scevgep1340, %scevgep1339
  %found.conflict1345 = and i1 %bound01343, %bound11344
  br i1 %found.conflict1345, label %polly.loop_header710.us.2.preheader, label %vector.ph1353

vector.ph1353:                                    ; preds = %vector.memcheck1332
  %n.vec1355 = and i64 %970, -4
  %broadcast.splatinsert1361 = insertelement <4 x double> poison, double %_p_scalar_724.us.2, i32 0
  %broadcast.splat1362 = shufflevector <4 x double> %broadcast.splatinsert1361, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1364 = insertelement <4 x double> poison, double %_p_scalar_732.us.2, i32 0
  %broadcast.splat1365 = shufflevector <4 x double> %broadcast.splatinsert1364, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1353
  %index1356 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1357, %vector.body1349 ]
  %979 = add nuw nsw i64 %index1356, %539
  %980 = add nuw nsw i64 %index1356, 2400
  %981 = getelementptr double, double* %Packed_MemRef_call1526, i64 %980
  %982 = bitcast double* %981 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %982, align 8, !alias.scope !187
  %983 = fmul fast <4 x double> %broadcast.splat1362, %wide.load1360
  %984 = getelementptr double, double* %Packed_MemRef_call2528, i64 %980
  %985 = bitcast double* %984 to <4 x double>*
  %wide.load1363 = load <4 x double>, <4 x double>* %985, align 8
  %986 = fmul fast <4 x double> %broadcast.splat1365, %wide.load1363
  %987 = shl i64 %979, 3
  %988 = add i64 %987, %978
  %989 = getelementptr i8, i8* %call, i64 %988
  %990 = bitcast i8* %989 to <4 x double>*
  %wide.load1366 = load <4 x double>, <4 x double>* %990, align 8, !alias.scope !190, !noalias !192
  %991 = fadd fast <4 x double> %986, %983
  %992 = fmul fast <4 x double> %991, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %993 = fadd fast <4 x double> %992, %wide.load1366
  %994 = bitcast i8* %989 to <4 x double>*
  store <4 x double> %993, <4 x double>* %994, align 8, !alias.scope !190, !noalias !192
  %index.next1357 = add i64 %index1356, 4
  %995 = icmp eq i64 %index.next1357, %n.vec1355
  br i1 %995, label %middle.block1347, label %vector.body1349, !llvm.loop !193

middle.block1347:                                 ; preds = %vector.body1349
  %cmp.n1359 = icmp eq i64 %970, %n.vec1355
  br i1 %cmp.n1359, label %polly.loop_exit712.us.2, label %polly.loop_header710.us.2.preheader

polly.loop_header710.us.2.preheader:              ; preds = %vector.memcheck1332, %polly.loop_header710.preheader.us.2, %middle.block1347
  %polly.indvar714.us.2.ph = phi i64 [ 0, %vector.memcheck1332 ], [ 0, %polly.loop_header710.preheader.us.2 ], [ %n.vec1355, %middle.block1347 ]
  br label %polly.loop_header710.us.2

polly.loop_header710.us.2:                        ; preds = %polly.loop_header710.us.2.preheader, %polly.loop_header710.us.2
  %polly.indvar714.us.2 = phi i64 [ %polly.indvar_next715.us.2, %polly.loop_header710.us.2 ], [ %polly.indvar714.us.2.ph, %polly.loop_header710.us.2.preheader ]
  %996 = add nuw nsw i64 %polly.indvar714.us.2, %539
  %polly.access.add.Packed_MemRef_call1526718.us.2 = add nuw nsw i64 %polly.indvar714.us.2, 2400
  %polly.access.Packed_MemRef_call1526719.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.us.2
  %_p_scalar_720.us.2 = load double, double* %polly.access.Packed_MemRef_call1526719.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_724.us.2, %_p_scalar_720.us.2
  %polly.access.Packed_MemRef_call2528727.us.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.us.2
  %_p_scalar_728.us.2 = load double, double* %polly.access.Packed_MemRef_call2528727.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_732.us.2, %_p_scalar_728.us.2
  %997 = shl i64 %996, 3
  %998 = add i64 %997, %978
  %scevgep733.us.2 = getelementptr i8, i8* %call, i64 %998
  %scevgep733734.us.2 = bitcast i8* %scevgep733.us.2 to double*
  %_p_scalar_735.us.2 = load double, double* %scevgep733734.us.2, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_735.us.2
  store double %p_add42.i.us.2, double* %scevgep733734.us.2, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.us.2 = add nuw nsw i64 %polly.indvar714.us.2, 1
  %exitcond1158.2.not = icmp eq i64 %polly.indvar714.us.2, %smin1157.2
  br i1 %exitcond1158.2.not, label %polly.loop_exit712.us.2, label %polly.loop_header710.us.2, !llvm.loop !194

polly.loop_exit712.us.2:                          ; preds = %polly.loop_header710.us.2, %middle.block1347, %polly.loop_header702.us.2
  %polly.indvar_next707.us.2 = add nuw nsw i64 %polly.indvar706.us.2, 1
  %polly.loop_cond708.us.2 = icmp ult i64 %polly.indvar706.us.2, 19
  %indvars.iv.next1156.2 = add i64 %indvars.iv1155.2, 1
  %indvar.next1335 = add i64 %indvar1334, 1
  br i1 %polly.loop_cond708.us.2, label %polly.loop_header702.us.2, label %polly.loop_header702.us.3

polly.loop_header702.us.3:                        ; preds = %polly.loop_exit712.us.2, %polly.loop_exit712.us.3
  %indvar1314 = phi i64 [ %indvar.next1315, %polly.loop_exit712.us.3 ], [ 0, %polly.loop_exit712.us.2 ]
  %indvars.iv1155.3 = phi i64 [ %indvars.iv.next1156.3, %polly.loop_exit712.us.3 ], [ %591, %polly.loop_exit712.us.2 ]
  %polly.indvar706.us.3 = phi i64 [ %polly.indvar_next707.us.3, %polly.loop_exit712.us.3 ], [ %603, %polly.loop_exit712.us.2 ]
  %999 = add i64 %590, %indvar1314
  %smin1316 = call i64 @llvm.smin.i64(i64 %999, i64 127)
  %1000 = add nsw i64 %smin1316, 1
  %smin1157.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1155.3, i64 127)
  %1001 = add nsw i64 %polly.indvar706.us.3, %593
  %polly.loop_guard713.us.31209 = icmp sgt i64 %1001, -1
  br i1 %polly.loop_guard713.us.31209, label %polly.loop_header710.preheader.us.3, label %polly.loop_exit712.us.3

polly.loop_header710.preheader.us.3:              ; preds = %polly.loop_header702.us.3
  %1002 = add nuw nsw i64 %polly.indvar706.us.3, %592
  %polly.access.add.Packed_MemRef_call2528722.us.3 = add nuw nsw i64 %1001, 3600
  %polly.access.Packed_MemRef_call2528723.us.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.us.3
  %_p_scalar_724.us.3 = load double, double* %polly.access.Packed_MemRef_call2528723.us.3, align 8
  %polly.access.Packed_MemRef_call1526731.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.us.3
  %_p_scalar_732.us.3 = load double, double* %polly.access.Packed_MemRef_call1526731.us.3, align 8
  %1003 = mul i64 %1002, 9600
  %min.iters.check1317 = icmp ult i64 %1000, 4
  br i1 %min.iters.check1317, label %polly.loop_header710.us.3.preheader, label %vector.ph1318

vector.ph1318:                                    ; preds = %polly.loop_header710.preheader.us.3
  %n.vec1320 = and i64 %1000, -4
  %broadcast.splatinsert1326 = insertelement <4 x double> poison, double %_p_scalar_724.us.3, i32 0
  %broadcast.splat1327 = shufflevector <4 x double> %broadcast.splatinsert1326, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1329 = insertelement <4 x double> poison, double %_p_scalar_732.us.3, i32 0
  %broadcast.splat1330 = shufflevector <4 x double> %broadcast.splatinsert1329, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1318
  %index1321 = phi i64 [ 0, %vector.ph1318 ], [ %index.next1322, %vector.body1310 ]
  %1004 = add nuw nsw i64 %index1321, %539
  %1005 = add nuw nsw i64 %index1321, 3600
  %1006 = getelementptr double, double* %Packed_MemRef_call1526, i64 %1005
  %1007 = bitcast double* %1006 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %1007, align 8
  %1008 = fmul fast <4 x double> %broadcast.splat1327, %wide.load1325
  %1009 = getelementptr double, double* %Packed_MemRef_call2528, i64 %1005
  %1010 = bitcast double* %1009 to <4 x double>*
  %wide.load1328 = load <4 x double>, <4 x double>* %1010, align 8
  %1011 = fmul fast <4 x double> %broadcast.splat1330, %wide.load1328
  %1012 = shl i64 %1004, 3
  %1013 = add i64 %1012, %1003
  %1014 = getelementptr i8, i8* %call, i64 %1013
  %1015 = bitcast i8* %1014 to <4 x double>*
  %wide.load1331 = load <4 x double>, <4 x double>* %1015, align 8, !alias.scope !111, !noalias !113
  %1016 = fadd fast <4 x double> %1011, %1008
  %1017 = fmul fast <4 x double> %1016, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %1018 = fadd fast <4 x double> %1017, %wide.load1331
  %1019 = bitcast i8* %1014 to <4 x double>*
  store <4 x double> %1018, <4 x double>* %1019, align 8, !alias.scope !111, !noalias !113
  %index.next1322 = add i64 %index1321, 4
  %1020 = icmp eq i64 %index.next1322, %n.vec1320
  br i1 %1020, label %middle.block1308, label %vector.body1310, !llvm.loop !195

middle.block1308:                                 ; preds = %vector.body1310
  %cmp.n1324 = icmp eq i64 %1000, %n.vec1320
  br i1 %cmp.n1324, label %polly.loop_exit712.us.3, label %polly.loop_header710.us.3.preheader

polly.loop_header710.us.3.preheader:              ; preds = %polly.loop_header710.preheader.us.3, %middle.block1308
  %polly.indvar714.us.3.ph = phi i64 [ 0, %polly.loop_header710.preheader.us.3 ], [ %n.vec1320, %middle.block1308 ]
  br label %polly.loop_header710.us.3

polly.loop_header710.us.3:                        ; preds = %polly.loop_header710.us.3.preheader, %polly.loop_header710.us.3
  %polly.indvar714.us.3 = phi i64 [ %polly.indvar_next715.us.3, %polly.loop_header710.us.3 ], [ %polly.indvar714.us.3.ph, %polly.loop_header710.us.3.preheader ]
  %1021 = add nuw nsw i64 %polly.indvar714.us.3, %539
  %polly.access.add.Packed_MemRef_call1526718.us.3 = add nuw nsw i64 %polly.indvar714.us.3, 3600
  %polly.access.Packed_MemRef_call1526719.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.us.3
  %_p_scalar_720.us.3 = load double, double* %polly.access.Packed_MemRef_call1526719.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_724.us.3, %_p_scalar_720.us.3
  %polly.access.Packed_MemRef_call2528727.us.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.us.3
  %_p_scalar_728.us.3 = load double, double* %polly.access.Packed_MemRef_call2528727.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_732.us.3, %_p_scalar_728.us.3
  %1022 = shl i64 %1021, 3
  %1023 = add i64 %1022, %1003
  %scevgep733.us.3 = getelementptr i8, i8* %call, i64 %1023
  %scevgep733734.us.3 = bitcast i8* %scevgep733.us.3 to double*
  %_p_scalar_735.us.3 = load double, double* %scevgep733734.us.3, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_735.us.3
  store double %p_add42.i.us.3, double* %scevgep733734.us.3, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.us.3 = add nuw nsw i64 %polly.indvar714.us.3, 1
  %exitcond1158.3.not = icmp eq i64 %polly.indvar714.us.3, %smin1157.3
  br i1 %exitcond1158.3.not, label %polly.loop_exit712.us.3, label %polly.loop_header710.us.3, !llvm.loop !196

polly.loop_exit712.us.3:                          ; preds = %polly.loop_header710.us.3, %middle.block1308, %polly.loop_header702.us.3
  %polly.indvar_next707.us.3 = add nuw nsw i64 %polly.indvar706.us.3, 1
  %polly.loop_cond708.us.3 = icmp ult i64 %polly.indvar706.us.3, 19
  %indvars.iv.next1156.3 = add i64 %indvars.iv1155.3, 1
  %indvar.next1315 = add i64 %indvar1314, 1
  br i1 %polly.loop_cond708.us.3, label %polly.loop_header702.us.3, label %polly.loop_exit697
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
!21 = distinct !{!"A"}
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 128}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 4}
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
!51 = !{!"llvm.loop.tile.size", i32 20}
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
!85 = !{!86}
!86 = distinct !{!86, !87}
!87 = distinct !{!87, !"LVerDomain"}
!88 = !{!72, !73, !"polly.alias.scope.MemRef_call", !89}
!89 = distinct !{!89, !87}
!90 = !{!75, !76, !77, !78, !86}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !81, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = distinct !{!103, !13}
!104 = !{!105}
!105 = distinct !{!105, !106}
!106 = distinct !{!106, !"LVerDomain"}
!107 = !{!92, !93, !"polly.alias.scope.MemRef_call", !108}
!108 = distinct !{!108, !106}
!109 = !{!95, !96, !97, !98, !105}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !112, !"polly.alias.scope.MemRef_call"}
!112 = distinct !{!112, !"polly.alias.scope.domain"}
!113 = !{!114, !115, !116, !117}
!114 = distinct !{!114, !112, !"polly.alias.scope.MemRef_call1"}
!115 = distinct !{!115, !112, !"polly.alias.scope.MemRef_call2"}
!116 = distinct !{!116, !112, !"polly.alias.scope.Packed_MemRef_call1"}
!117 = distinct !{!117, !112, !"polly.alias.scope.Packed_MemRef_call2"}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !81, !13}
!120 = !{!111, !114, !116, !117}
!121 = !{!111, !115, !116, !117}
!122 = distinct !{!122, !13}
!123 = !{!124}
!124 = distinct !{!124, !125}
!125 = distinct !{!125, !"LVerDomain"}
!126 = !{!111, !112, !"polly.alias.scope.MemRef_call", !127}
!127 = distinct !{!127, !125}
!128 = !{!114, !115, !116, !117, !124}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !131, !"polly.alias.scope.MemRef_call"}
!131 = distinct !{!131, !"polly.alias.scope.domain"}
!132 = !{!133, !134}
!133 = distinct !{!133, !131, !"polly.alias.scope.MemRef_call1"}
!134 = distinct !{!134, !131, !"polly.alias.scope.MemRef_call2"}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !81, !13}
!137 = !{!133, !130}
!138 = distinct !{!138, !13}
!139 = distinct !{!139, !81, !13}
!140 = !{!134, !130}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !81, !13}
!143 = !{!144}
!144 = distinct !{!144, !145}
!145 = distinct !{!145, !"LVerDomain"}
!146 = !{!72, !73, !"polly.alias.scope.MemRef_call", !147}
!147 = distinct !{!147, !145}
!148 = !{!75, !76, !77, !78, !144}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !13}
!151 = !{!152}
!152 = distinct !{!152, !153}
!153 = distinct !{!153, !"LVerDomain"}
!154 = !{!72, !73, !"polly.alias.scope.MemRef_call", !155}
!155 = distinct !{!155, !153}
!156 = !{!75, !76, !77, !78, !152}
!157 = distinct !{!157, !13}
!158 = distinct !{!158, !13}
!159 = distinct !{!159, !13}
!160 = distinct !{!160, !81, !13}
!161 = !{!162}
!162 = distinct !{!162, !163}
!163 = distinct !{!163, !"LVerDomain"}
!164 = !{!92, !93, !"polly.alias.scope.MemRef_call", !165}
!165 = distinct !{!165, !163}
!166 = !{!95, !96, !97, !98, !162}
!167 = distinct !{!167, !13}
!168 = distinct !{!168, !13}
!169 = !{!170}
!170 = distinct !{!170, !171}
!171 = distinct !{!171, !"LVerDomain"}
!172 = !{!92, !93, !"polly.alias.scope.MemRef_call", !173}
!173 = distinct !{!173, !171}
!174 = !{!95, !96, !97, !98, !170}
!175 = distinct !{!175, !13}
!176 = distinct !{!176, !13}
!177 = distinct !{!177, !13}
!178 = distinct !{!178, !81, !13}
!179 = !{!180}
!180 = distinct !{!180, !181}
!181 = distinct !{!181, !"LVerDomain"}
!182 = !{!111, !112, !"polly.alias.scope.MemRef_call", !183}
!183 = distinct !{!183, !181}
!184 = !{!114, !115, !116, !117, !180}
!185 = distinct !{!185, !13}
!186 = distinct !{!186, !13}
!187 = !{!188}
!188 = distinct !{!188, !189}
!189 = distinct !{!189, !"LVerDomain"}
!190 = !{!111, !112, !"polly.alias.scope.MemRef_call", !191}
!191 = distinct !{!191, !189}
!192 = !{!114, !115, !116, !117, !188}
!193 = distinct !{!193, !13}
!194 = distinct !{!194, !13}
!195 = distinct !{!195, !13}
!196 = distinct !{!196, !81, !13}
