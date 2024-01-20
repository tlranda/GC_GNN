; ModuleID = 'syr2k_exhaustive/mmp_all_XL_394.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_394.c"
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
  %scevgep1230 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1229 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1228 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1227 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1227, %scevgep1230
  %bound1 = icmp ult i8* %scevgep1229, %scevgep1228
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
  br i1 %exitcond18.not.i, label %vector.ph1234, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1234:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1241 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1242 = shufflevector <4 x i64> %broadcast.splatinsert1241, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1234
  %index1235 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1236, %vector.body1233 ]
  %vec.ind1239 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1234 ], [ %vec.ind.next1240, %vector.body1233 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1239, %broadcast.splat1242
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv7.i, i64 %index1235
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1236 = add i64 %index1235, 4
  %vec.ind.next1240 = add <4 x i64> %vec.ind1239, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1236, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1233, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1233
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1234, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit923
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1296 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1296, label %for.body3.i46.preheader1445, label %vector.ph1297

vector.ph1297:                                    ; preds = %for.body3.i46.preheader
  %n.vec1299 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1297
  %index1300 = phi i64 [ 0, %vector.ph1297 ], [ %index.next1301, %vector.body1295 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %index1300
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1301 = add i64 %index1300, 4
  %46 = icmp eq i64 %index.next1301, %n.vec1299
  br i1 %46, label %middle.block1293, label %vector.body1295, !llvm.loop !18

middle.block1293:                                 ; preds = %vector.body1295
  %cmp.n1303 = icmp eq i64 %indvars.iv21.i, %n.vec1299
  br i1 %cmp.n1303, label %for.inc6.i, label %for.body3.i46.preheader1445

for.body3.i46.preheader1445:                      ; preds = %for.body3.i46.preheader, %middle.block1293
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1299, %middle.block1293 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1445, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1445 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1293, %for.cond1.preheader.i45
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
  %min.iters.check1343 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1343, label %for.body3.i60.preheader1443, label %vector.ph1344

vector.ph1344:                                    ; preds = %for.body3.i60.preheader
  %n.vec1346 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1342 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %index1347
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1351, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1348 = add i64 %index1347, 4
  %57 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %57, label %middle.block1340, label %vector.body1342, !llvm.loop !64

middle.block1340:                                 ; preds = %vector.body1342
  %cmp.n1350 = icmp eq i64 %indvars.iv21.i52, %n.vec1346
  br i1 %cmp.n1350, label %for.inc6.i63, label %for.body3.i60.preheader1443

for.body3.i60.preheader1443:                      ; preds = %for.body3.i60.preheader, %middle.block1340
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1346, %middle.block1340 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1443, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1443 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1340, %for.cond1.preheader.i54
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
  %min.iters.check1393 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1393, label %for.body3.i99.preheader1441, label %vector.ph1394

vector.ph1394:                                    ; preds = %for.body3.i99.preheader
  %n.vec1396 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1392

vector.body1392:                                  ; preds = %vector.body1392, %vector.ph1394
  %index1397 = phi i64 [ 0, %vector.ph1394 ], [ %index.next1398, %vector.body1392 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %index1397
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1401, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1398 = add i64 %index1397, 4
  %68 = icmp eq i64 %index.next1398, %n.vec1396
  br i1 %68, label %middle.block1390, label %vector.body1392, !llvm.loop !66

middle.block1390:                                 ; preds = %vector.body1392
  %cmp.n1400 = icmp eq i64 %indvars.iv21.i91, %n.vec1396
  br i1 %cmp.n1400, label %for.inc6.i102, label %for.body3.i99.preheader1441

for.body3.i99.preheader1441:                      ; preds = %for.body3.i99.preheader, %middle.block1390
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1396, %middle.block1390 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1441, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1441 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1390, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  %malloccall136 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1405 = phi i64 [ %indvar.next1406, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1405, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1407 = icmp ult i64 %88, 4
  br i1 %min.iters.check1407, label %polly.loop_header192.preheader, label %vector.ph1408

vector.ph1408:                                    ; preds = %polly.loop_header
  %n.vec1410 = and i64 %88, -4
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %vector.ph1408
  %index1411 = phi i64 [ 0, %vector.ph1408 ], [ %index.next1412, %vector.body1404 ]
  %90 = shl nuw nsw i64 %index1411, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1415 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1415, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1412 = add i64 %index1411, 4
  %95 = icmp eq i64 %index.next1412, %n.vec1410
  br i1 %95, label %middle.block1402, label %vector.body1404, !llvm.loop !79

middle.block1402:                                 ; preds = %vector.body1404
  %cmp.n1414 = icmp eq i64 %88, %n.vec1410
  br i1 %cmp.n1414, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1402
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1410, %middle.block1402 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1402
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1406 = add i64 %indvar1405, 1
  br i1 %exitcond1111.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1110.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1110.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1082 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1083, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1106 = call i64 @llvm.smin.i64(i64 %indvars.iv1082, i64 -984)
  %97 = add nsw i64 %smin1106, 1000
  %98 = shl nsw i64 %polly.indvar203, 4
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1083 = add nsw i64 %indvars.iv1082, -16
  %exitcond1109.not = icmp eq i64 %polly.indvar_next204, 63
  br i1 %exitcond1109.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = shl nuw nsw i64 %polly.indvar209, 7
  %100 = mul nuw nsw i64 %polly.indvar209, 6
  %101 = shl nuw nsw i64 %polly.indvar209, 1
  %102 = udiv i64 %101, 5
  %103 = add nuw i64 %100, %102
  %104 = mul nuw nsw i64 %103, 20
  %105 = sub i64 %99, %104
  %106 = mul nsw i64 %polly.indvar209, -128
  %107 = add i64 %106, %104
  %108 = udiv i64 %indvars.iv1094, 5
  %109 = add nuw i64 %indvars.iv1092, %108
  %110 = mul nuw nsw i64 %109, 20
  %111 = sub i64 %indvars.iv1090, %110
  %112 = add i64 %indvars.iv1098, %110
  %113 = shl nsw i64 %polly.indvar209, 7
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %114 = mul nsw i64 %polly.indvar209, -128
  %115 = mul nuw nsw i64 %polly.indvar209, 6
  %116 = shl nuw nsw i64 %polly.indvar209, 1
  %pexp.p_div_q = udiv i64 %116, 5
  %117 = add nuw nsw i64 %pexp.p_div_q, %115
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next1091 = add nuw nsw i64 %indvars.iv1090, 128
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092, 6
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 2
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -128
  %exitcond1108.not = icmp eq i64 %polly.indvar_next210, 10
  br i1 %exitcond1108.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %118 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1084.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %119 = add nuw nsw i64 %polly.indvar221, %113
  %polly.access.mul.call2225 = mul nuw nsw i64 %119, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %118, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit214
  %indvar1419 = phi i64 [ %indvar.next1420, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit267 ], [ %112, %polly.loop_exit214 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit267 ], [ %111, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %117, %polly.loop_exit214 ]
  %120 = mul nsw i64 %indvar1419, -20
  %121 = add i64 %105, %120
  %smax1421 = call i64 @llvm.smax.i64(i64 %121, i64 0)
  %122 = mul nuw nsw i64 %indvar1419, 20
  %123 = add i64 %107, %122
  %124 = add i64 %smax1421, %123
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1096, i64 0)
  %125 = add i64 %smax, %indvars.iv1100
  %126 = mul nuw nsw i64 %polly.indvar231, 20
  %127 = add nsw i64 %126, %114
  %128 = add nsw i64 %127, -1
  %.inv = icmp sgt i64 %127, 127
  %129 = select i1 %.inv, i64 127, i64 %128
  %polly.loop_guard = icmp sgt i64 %129, -1
  %130 = icmp sgt i64 %127, 0
  %131 = select i1 %130, i64 %127, i64 0
  %132 = add nsw i64 %127, 19
  %polly.loop_guard254.not = icmp sgt i64 %131, %132
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %133 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %134 = add nuw nsw i64 %polly.indvar243.us, %113
  %polly.access.mul.call1247.us = mul nuw nsw i64 %134, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %133, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar243.us, %129
  br i1 %exitcond1087.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %131, %polly.loop_exit242.loopexit.us ]
  %135 = add nuw nsw i64 %polly.indvar255.us, %113
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
  %exitcond1089.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1089.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_exit253.us, label %polly.loop_header251.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 59
  %indvars.iv.next1097 = add i64 %indvars.iv1096, -20
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 20
  %indvar.next1420 = add i64 %indvar1419, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228.split ]
  %136 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1086.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253, %polly.loop_exit253.us, %polly.loop_header228.split
  %137 = sub nsw i64 %113, %126
  %138 = icmp sgt i64 %137, 0
  %139 = select i1 %138, i64 %137, i64 0
  %polly.loop_guard275 = icmp slt i64 %139, 20
  br i1 %polly.loop_guard275, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1287.us = mul nuw nsw i64 %polly.indvar268.us, 1200
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header265.us, %polly.loop_exit282.us
  %indvar1422 = phi i64 [ 0, %polly.loop_header265.us ], [ %indvar.next1423, %polly.loop_exit282.us ]
  %indvars.iv1102 = phi i64 [ %125, %polly.loop_header265.us ], [ %indvars.iv.next1103, %polly.loop_exit282.us ]
  %polly.indvar276.us = phi i64 [ %139, %polly.loop_header265.us ], [ %polly.indvar_next277.us, %polly.loop_exit282.us ]
  %140 = add i64 %124, %indvar1422
  %smin1424 = call i64 @llvm.smin.i64(i64 %140, i64 127)
  %141 = add nsw i64 %smin1424, 1
  %smin1104 = call i64 @llvm.smin.i64(i64 %indvars.iv1102, i64 127)
  %142 = add nsw i64 %polly.indvar276.us, %127
  %polly.loop_guard283.us1216 = icmp sgt i64 %142, -1
  br i1 %polly.loop_guard283.us1216, label %polly.loop_header280.preheader.us, label %polly.loop_exit282.us

polly.loop_header280.us:                          ; preds = %polly.loop_header280.us.preheader, %polly.loop_header280.us
  %polly.indvar284.us = phi i64 [ %polly.indvar_next285.us, %polly.loop_header280.us ], [ %polly.indvar284.us.ph, %polly.loop_header280.us.preheader ]
  %143 = add nuw nsw i64 %polly.indvar284.us, %113
  %polly.access.add.Packed_MemRef_call1288.us = add nuw nsw i64 %polly.indvar284.us, %polly.access.mul.Packed_MemRef_call1287.us
  %polly.access.Packed_MemRef_call1289.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call1289.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %polly.access.Packed_MemRef_call2297.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.us
  %_p_scalar_298.us = load double, double* %polly.access.Packed_MemRef_call2297.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_302.us, %_p_scalar_298.us
  %144 = shl i64 %143, 3
  %145 = add i64 %144, %147
  %scevgep303.us = getelementptr i8, i8* %call, i64 %145
  %scevgep303304.us = bitcast i8* %scevgep303.us to double*
  %_p_scalar_305.us = load double, double* %scevgep303304.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_305.us
  store double %p_add42.i118.us, double* %scevgep303304.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.us = add nuw nsw i64 %polly.indvar284.us, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar284.us, %smin1104
  br i1 %exitcond1105.not, label %polly.loop_exit282.us, label %polly.loop_header280.us, !llvm.loop !84

polly.loop_exit282.us:                            ; preds = %polly.loop_header280.us, %middle.block1416, %polly.loop_header272.us
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %polly.loop_cond278.us = icmp ult i64 %polly.indvar276.us, 19
  %indvars.iv.next1103 = add i64 %indvars.iv1102, 1
  %indvar.next1423 = add i64 %indvar1422, 1
  br i1 %polly.loop_cond278.us, label %polly.loop_header272.us, label %polly.loop_exit274.loopexit.us

polly.loop_header280.preheader.us:                ; preds = %polly.loop_header272.us
  %146 = add nuw nsw i64 %polly.indvar276.us, %126
  %polly.access.add.Packed_MemRef_call2292.us = add nsw i64 %142, %polly.access.mul.Packed_MemRef_call1287.us
  %polly.access.Packed_MemRef_call2293.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call2293.us, align 8
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.us
  %_p_scalar_302.us = load double, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %147 = mul i64 %146, 9600
  %min.iters.check1425 = icmp ult i64 %141, 4
  br i1 %min.iters.check1425, label %polly.loop_header280.us.preheader, label %vector.ph1426

vector.ph1426:                                    ; preds = %polly.loop_header280.preheader.us
  %n.vec1428 = and i64 %141, -4
  %broadcast.splatinsert1434 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1435 = shufflevector <4 x double> %broadcast.splatinsert1434, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1437 = insertelement <4 x double> poison, double %_p_scalar_302.us, i32 0
  %broadcast.splat1438 = shufflevector <4 x double> %broadcast.splatinsert1437, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1418

vector.body1418:                                  ; preds = %vector.body1418, %vector.ph1426
  %index1429 = phi i64 [ 0, %vector.ph1426 ], [ %index.next1430, %vector.body1418 ]
  %148 = add nuw nsw i64 %index1429, %113
  %149 = add nuw nsw i64 %index1429, %polly.access.mul.Packed_MemRef_call1287.us
  %150 = getelementptr double, double* %Packed_MemRef_call1, i64 %149
  %151 = bitcast double* %150 to <4 x double>*
  %wide.load1433 = load <4 x double>, <4 x double>* %151, align 8
  %152 = fmul fast <4 x double> %broadcast.splat1435, %wide.load1433
  %153 = getelementptr double, double* %Packed_MemRef_call2, i64 %149
  %154 = bitcast double* %153 to <4 x double>*
  %wide.load1436 = load <4 x double>, <4 x double>* %154, align 8
  %155 = fmul fast <4 x double> %broadcast.splat1438, %wide.load1436
  %156 = shl i64 %148, 3
  %157 = add i64 %156, %147
  %158 = getelementptr i8, i8* %call, i64 %157
  %159 = bitcast i8* %158 to <4 x double>*
  %wide.load1439 = load <4 x double>, <4 x double>* %159, align 8, !alias.scope !72, !noalias !74
  %160 = fadd fast <4 x double> %155, %152
  %161 = fmul fast <4 x double> %160, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %162 = fadd fast <4 x double> %161, %wide.load1439
  %163 = bitcast i8* %158 to <4 x double>*
  store <4 x double> %162, <4 x double>* %163, align 8, !alias.scope !72, !noalias !74
  %index.next1430 = add i64 %index1429, 4
  %164 = icmp eq i64 %index.next1430, %n.vec1428
  br i1 %164, label %middle.block1416, label %vector.body1418, !llvm.loop !85

middle.block1416:                                 ; preds = %vector.body1418
  %cmp.n1432 = icmp eq i64 %141, %n.vec1428
  br i1 %cmp.n1432, label %polly.loop_exit282.us, label %polly.loop_header280.us.preheader

polly.loop_header280.us.preheader:                ; preds = %polly.loop_header280.preheader.us, %middle.block1416
  %polly.indvar284.us.ph = phi i64 [ 0, %polly.loop_header280.preheader.us ], [ %n.vec1428, %middle.block1416 ]
  br label %polly.loop_header280.us

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_exit282.us
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next269.us, %97
  br i1 %exitcond1107.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %131, %polly.loop_header234 ]
  %165 = add nuw nsw i64 %polly.indvar255, %113
  %polly.access.mul.call1259 = mul nsw i64 %165, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %136, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %132
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.start308:                                   ; preds = %kernel_syr2k.exit
  %malloccall310 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  %malloccall312 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header396

polly.exiting309:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall310)
  tail call void @free(i8* %malloccall312)
  br label %kernel_syr2k.exit90

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.start308
  %indvar1355 = phi i64 [ %indvar.next1356, %polly.loop_exit404 ], [ 0, %polly.start308 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 1, %polly.start308 ]
  %166 = add i64 %indvar1355, 1
  %167 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %167
  %min.iters.check1357 = icmp ult i64 %166, 4
  br i1 %min.iters.check1357, label %polly.loop_header402.preheader, label %vector.ph1358

vector.ph1358:                                    ; preds = %polly.loop_header396
  %n.vec1360 = and i64 %166, -4
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %vector.ph1358
  %index1361 = phi i64 [ 0, %vector.ph1358 ], [ %index.next1362, %vector.body1354 ]
  %168 = shl nuw nsw i64 %index1361, 3
  %169 = getelementptr i8, i8* %scevgep408, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  %wide.load1365 = load <4 x double>, <4 x double>* %170, align 8, !alias.scope !86, !noalias !88
  %171 = fmul fast <4 x double> %wide.load1365, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %172 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %171, <4 x double>* %172, align 8, !alias.scope !86, !noalias !88
  %index.next1362 = add i64 %index1361, 4
  %173 = icmp eq i64 %index.next1362, %n.vec1360
  br i1 %173, label %middle.block1352, label %vector.body1354, !llvm.loop !93

middle.block1352:                                 ; preds = %vector.body1354
  %cmp.n1364 = icmp eq i64 %166, %n.vec1360
  br i1 %cmp.n1364, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header396, %middle.block1352
  %polly.indvar405.ph = phi i64 [ 0, %polly.loop_header396 ], [ %n.vec1360, %middle.block1352 ]
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402, %middle.block1352
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar_next400, 1200
  %indvar.next1356 = add i64 %indvar1355, 1
  br i1 %exitcond1146.not, label %polly.loop_header412.preheader, label %polly.loop_header396

polly.loop_header412.preheader:                   ; preds = %polly.loop_exit404
  %Packed_MemRef_call1311 = bitcast i8* %malloccall310 to double*
  %Packed_MemRef_call2313 = bitcast i8* %malloccall312 to double*
  br label %polly.loop_header412

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_header402
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_header402 ], [ %polly.indvar405.ph, %polly.loop_header402.preheader ]
  %174 = shl nuw nsw i64 %polly.indvar405, 3
  %scevgep409 = getelementptr i8, i8* %scevgep408, i64 %174
  %scevgep409410 = bitcast i8* %scevgep409 to double*
  %_p_scalar_411 = load double, double* %scevgep409410, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_411, 1.200000e+00
  store double %p_mul.i57, double* %scevgep409410, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1145.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1145.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !94

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %indvars.iv1115 = phi i64 [ 0, %polly.loop_header412.preheader ], [ %indvars.iv.next1116, %polly.loop_exit420 ]
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header412.preheader ], [ %polly.indvar_next416, %polly.loop_exit420 ]
  %smin1141 = call i64 @llvm.smin.i64(i64 %indvars.iv1115, i64 -984)
  %175 = add nsw i64 %smin1141, 1000
  %176 = shl nsw i64 %polly.indvar415, 4
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next1116 = add nsw i64 %indvars.iv1115, -16
  %exitcond1144.not = icmp eq i64 %polly.indvar_next416, 63
  br i1 %exitcond1144.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %177 = shl nuw nsw i64 %polly.indvar421, 7
  %178 = mul nuw nsw i64 %polly.indvar421, 6
  %179 = shl nuw nsw i64 %polly.indvar421, 1
  %180 = udiv i64 %179, 5
  %181 = add nuw i64 %178, %180
  %182 = mul nuw nsw i64 %181, 20
  %183 = sub i64 %177, %182
  %184 = mul nsw i64 %polly.indvar421, -128
  %185 = add i64 %184, %182
  %186 = udiv i64 %indvars.iv1128, 5
  %187 = add nuw i64 %indvars.iv1126, %186
  %188 = mul nuw nsw i64 %187, 20
  %189 = sub i64 %indvars.iv1124, %188
  %190 = add i64 %indvars.iv1133, %188
  %191 = shl nsw i64 %polly.indvar421, 7
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %192 = mul nsw i64 %polly.indvar421, -128
  %193 = mul nuw nsw i64 %polly.indvar421, 6
  %194 = shl nuw nsw i64 %polly.indvar421, 1
  %pexp.p_div_q440 = udiv i64 %194, 5
  %195 = add nuw nsw i64 %pexp.p_div_q440, %193
  br label %polly.loop_header441

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1113 = add nsw i64 %indvars.iv1112, -128
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 128
  %indvars.iv.next1127 = add nuw nsw i64 %indvars.iv1126, 6
  %indvars.iv.next1129 = add nuw nsw i64 %indvars.iv1128, 2
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -128
  %exitcond1143.not = icmp eq i64 %polly.indvar_next422, 10
  br i1 %exitcond1143.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %196 = add nuw nsw i64 %polly.indvar427, %176
  %polly.access.mul.Packed_MemRef_call2313 = mul nuw nsw i64 %polly.indvar427, 1200
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_header430
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next428, %175
  br i1 %exitcond1118.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_header430, %polly.loop_header424
  %polly.indvar433 = phi i64 [ 0, %polly.loop_header424 ], [ %polly.indvar_next434, %polly.loop_header430 ]
  %197 = add nuw nsw i64 %polly.indvar433, %191
  %polly.access.mul.call2437 = mul nuw nsw i64 %197, 1000
  %polly.access.add.call2438 = add nuw nsw i64 %196, %polly.access.mul.call2437
  %polly.access.call2439 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438
  %polly.access.call2439.load = load double, double* %polly.access.call2439, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2313 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call2313
  %polly.access.Packed_MemRef_call2313 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313
  store double %polly.access.call2439.load, double* %polly.access.Packed_MemRef_call2313, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1112
  br i1 %exitcond1114.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit426
  %indvar1369 = phi i64 [ %indvar.next1370, %polly.loop_exit482 ], [ 0, %polly.loop_exit426 ]
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit482 ], [ %190, %polly.loop_exit426 ]
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit482 ], [ %189, %polly.loop_exit426 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %195, %polly.loop_exit426 ]
  %198 = mul nsw i64 %indvar1369, -20
  %199 = add i64 %183, %198
  %smax1371 = call i64 @llvm.smax.i64(i64 %199, i64 0)
  %200 = mul nuw nsw i64 %indvar1369, 20
  %201 = add i64 %185, %200
  %202 = add i64 %smax1371, %201
  %smax1132 = call i64 @llvm.smax.i64(i64 %indvars.iv1130, i64 0)
  %203 = add i64 %smax1132, %indvars.iv1135
  %204 = mul nuw nsw i64 %polly.indvar444, 20
  %205 = add nsw i64 %204, %192
  %206 = add nsw i64 %205, -1
  %.inv942 = icmp sgt i64 %205, 127
  %207 = select i1 %.inv942, i64 127, i64 %206
  %polly.loop_guard457 = icmp sgt i64 %207, -1
  %208 = icmp sgt i64 %205, 0
  %209 = select i1 %208, i64 %205, i64 0
  %210 = add nsw i64 %205, 19
  %polly.loop_guard469.not = icmp sgt i64 %209, %210
  br i1 %polly.loop_guard457, label %polly.loop_header447.us, label %polly.loop_header441.split

polly.loop_header447.us:                          ; preds = %polly.loop_header441, %polly.loop_exit468.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header441 ]
  %211 = add nuw nsw i64 %polly.indvar450.us, %176
  %polly.access.mul.Packed_MemRef_call1311.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %212 = add nuw nsw i64 %polly.indvar458.us, %191
  %polly.access.mul.call1462.us = mul nuw nsw i64 %212, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %211, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar458.us, %207
  br i1 %exitcond1121.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %209, %polly.loop_exit456.loopexit.us ]
  %213 = add nuw nsw i64 %polly.indvar470.us, %191
  %polly.access.mul.call1474.us = mul nsw i64 %213, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %211, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311479.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1311479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %210
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_exit456.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar_next451.us, %175
  br i1 %exitcond1123.not, label %polly.loop_header480.preheader, label %polly.loop_header447.us

polly.loop_exit456.loopexit.us:                   ; preds = %polly.loop_header454.us
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header441.split:                       ; preds = %polly.loop_header441
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_exit482:                               ; preds = %polly.loop_exit489.loopexit.us, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp ult i64 %polly.indvar444, 59
  %indvars.iv.next1131 = add i64 %indvars.iv1130, -20
  %indvars.iv.next1136 = add i64 %indvars.iv1135, 20
  %indvar.next1370 = add i64 %indvar1369, 1
  br i1 %polly.loop_cond446, label %polly.loop_header441, label %polly.loop_exit443

polly.loop_header447:                             ; preds = %polly.loop_header441.split, %polly.loop_exit468
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_exit468 ], [ 0, %polly.loop_header441.split ]
  %214 = add nuw nsw i64 %polly.indvar450, %176
  %polly.access.mul.Packed_MemRef_call1311477 = mul nuw nsw i64 %polly.indvar450, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar_next451, %175
  br i1 %exitcond1120.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header441.split
  %215 = sub nsw i64 %191, %204
  %216 = icmp sgt i64 %215, 0
  %217 = select i1 %216, i64 %215, i64 0
  %polly.loop_guard490 = icmp slt i64 %217, 20
  br i1 %polly.loop_guard490, label %polly.loop_header480.us, label %polly.loop_exit482

polly.loop_header480.us:                          ; preds = %polly.loop_header480.preheader, %polly.loop_exit489.loopexit.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_exit489.loopexit.us ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1311502.us = mul nuw nsw i64 %polly.indvar483.us, 1200
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header480.us, %polly.loop_exit497.us
  %indvar1372 = phi i64 [ 0, %polly.loop_header480.us ], [ %indvar.next1373, %polly.loop_exit497.us ]
  %indvars.iv1137 = phi i64 [ %203, %polly.loop_header480.us ], [ %indvars.iv.next1138, %polly.loop_exit497.us ]
  %polly.indvar491.us = phi i64 [ %217, %polly.loop_header480.us ], [ %polly.indvar_next492.us, %polly.loop_exit497.us ]
  %218 = add i64 %202, %indvar1372
  %smin1374 = call i64 @llvm.smin.i64(i64 %218, i64 127)
  %219 = add nsw i64 %smin1374, 1
  %smin1139 = call i64 @llvm.smin.i64(i64 %indvars.iv1137, i64 127)
  %220 = add nsw i64 %polly.indvar491.us, %205
  %polly.loop_guard498.us1217 = icmp sgt i64 %220, -1
  br i1 %polly.loop_guard498.us1217, label %polly.loop_header495.preheader.us, label %polly.loop_exit497.us

polly.loop_header495.us:                          ; preds = %polly.loop_header495.us.preheader, %polly.loop_header495.us
  %polly.indvar499.us = phi i64 [ %polly.indvar_next500.us, %polly.loop_header495.us ], [ %polly.indvar499.us.ph, %polly.loop_header495.us.preheader ]
  %221 = add nuw nsw i64 %polly.indvar499.us, %191
  %polly.access.add.Packed_MemRef_call1311503.us = add nuw nsw i64 %polly.indvar499.us, %polly.access.mul.Packed_MemRef_call1311502.us
  %polly.access.Packed_MemRef_call1311504.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1311504.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %polly.access.Packed_MemRef_call2313512.us = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.us
  %_p_scalar_513.us = load double, double* %polly.access.Packed_MemRef_call2313512.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_517.us, %_p_scalar_513.us
  %222 = shl i64 %221, 3
  %223 = add i64 %222, %225
  %scevgep518.us = getelementptr i8, i8* %call, i64 %223
  %scevgep518519.us = bitcast i8* %scevgep518.us to double*
  %_p_scalar_520.us = load double, double* %scevgep518519.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_520.us
  store double %p_add42.i79.us, double* %scevgep518519.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next500.us = add nuw nsw i64 %polly.indvar499.us, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar499.us, %smin1139
  br i1 %exitcond1140.not, label %polly.loop_exit497.us, label %polly.loop_header495.us, !llvm.loop !97

polly.loop_exit497.us:                            ; preds = %polly.loop_header495.us, %middle.block1366, %polly.loop_header487.us
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %polly.loop_cond493.us = icmp ult i64 %polly.indvar491.us, 19
  %indvars.iv.next1138 = add i64 %indvars.iv1137, 1
  %indvar.next1373 = add i64 %indvar1372, 1
  br i1 %polly.loop_cond493.us, label %polly.loop_header487.us, label %polly.loop_exit489.loopexit.us

polly.loop_header495.preheader.us:                ; preds = %polly.loop_header487.us
  %224 = add nuw nsw i64 %polly.indvar491.us, %204
  %polly.access.add.Packed_MemRef_call2313507.us = add nsw i64 %220, %polly.access.mul.Packed_MemRef_call1311502.us
  %polly.access.Packed_MemRef_call2313508.us = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.us
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call2313508.us, align 8
  %polly.access.Packed_MemRef_call1311516.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.us
  %_p_scalar_517.us = load double, double* %polly.access.Packed_MemRef_call1311516.us, align 8
  %225 = mul i64 %224, 9600
  %min.iters.check1375 = icmp ult i64 %219, 4
  br i1 %min.iters.check1375, label %polly.loop_header495.us.preheader, label %vector.ph1376

vector.ph1376:                                    ; preds = %polly.loop_header495.preheader.us
  %n.vec1378 = and i64 %219, -4
  %broadcast.splatinsert1384 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1385 = shufflevector <4 x double> %broadcast.splatinsert1384, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1387 = insertelement <4 x double> poison, double %_p_scalar_517.us, i32 0
  %broadcast.splat1388 = shufflevector <4 x double> %broadcast.splatinsert1387, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1368

vector.body1368:                                  ; preds = %vector.body1368, %vector.ph1376
  %index1379 = phi i64 [ 0, %vector.ph1376 ], [ %index.next1380, %vector.body1368 ]
  %226 = add nuw nsw i64 %index1379, %191
  %227 = add nuw nsw i64 %index1379, %polly.access.mul.Packed_MemRef_call1311502.us
  %228 = getelementptr double, double* %Packed_MemRef_call1311, i64 %227
  %229 = bitcast double* %228 to <4 x double>*
  %wide.load1383 = load <4 x double>, <4 x double>* %229, align 8
  %230 = fmul fast <4 x double> %broadcast.splat1385, %wide.load1383
  %231 = getelementptr double, double* %Packed_MemRef_call2313, i64 %227
  %232 = bitcast double* %231 to <4 x double>*
  %wide.load1386 = load <4 x double>, <4 x double>* %232, align 8
  %233 = fmul fast <4 x double> %broadcast.splat1388, %wide.load1386
  %234 = shl i64 %226, 3
  %235 = add i64 %234, %225
  %236 = getelementptr i8, i8* %call, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  %wide.load1389 = load <4 x double>, <4 x double>* %237, align 8, !alias.scope !86, !noalias !88
  %238 = fadd fast <4 x double> %233, %230
  %239 = fmul fast <4 x double> %238, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %240 = fadd fast <4 x double> %239, %wide.load1389
  %241 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %240, <4 x double>* %241, align 8, !alias.scope !86, !noalias !88
  %index.next1380 = add i64 %index1379, 4
  %242 = icmp eq i64 %index.next1380, %n.vec1378
  br i1 %242, label %middle.block1366, label %vector.body1368, !llvm.loop !98

middle.block1366:                                 ; preds = %vector.body1368
  %cmp.n1382 = icmp eq i64 %219, %n.vec1378
  br i1 %cmp.n1382, label %polly.loop_exit497.us, label %polly.loop_header495.us.preheader

polly.loop_header495.us.preheader:                ; preds = %polly.loop_header495.preheader.us, %middle.block1366
  %polly.indvar499.us.ph = phi i64 [ 0, %polly.loop_header495.preheader.us ], [ %n.vec1378, %middle.block1366 ]
  br label %polly.loop_header495.us

polly.loop_exit489.loopexit.us:                   ; preds = %polly.loop_exit497.us
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar_next484.us, %175
  br i1 %exitcond1142.not, label %polly.loop_exit482, label %polly.loop_header480.us

polly.loop_header466:                             ; preds = %polly.loop_header447, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %209, %polly.loop_header447 ]
  %243 = add nuw nsw i64 %polly.indvar470, %191
  %polly.access.mul.call1474 = mul nsw i64 %243, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %214, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1311477
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %210
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  %malloccall527 = tail call dereferenceable_or_null(153600) i8* @malloc(i64 153600) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %244 = add i64 %indvar, 1
  %245 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %245
  %min.iters.check1307 = icmp ult i64 %244, 4
  br i1 %min.iters.check1307, label %polly.loop_header617.preheader, label %vector.ph1308

vector.ph1308:                                    ; preds = %polly.loop_header611
  %n.vec1310 = and i64 %244, -4
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1312, %vector.body1306 ]
  %246 = shl nuw nsw i64 %index1311, 3
  %247 = getelementptr i8, i8* %scevgep623, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  %wide.load1315 = load <4 x double>, <4 x double>* %248, align 8, !alias.scope !99, !noalias !101
  %249 = fmul fast <4 x double> %wide.load1315, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %250 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %249, <4 x double>* %250, align 8, !alias.scope !99, !noalias !101
  %index.next1312 = add i64 %index1311, 4
  %251 = icmp eq i64 %index.next1312, %n.vec1310
  br i1 %251, label %middle.block1304, label %vector.body1306, !llvm.loop !106

middle.block1304:                                 ; preds = %vector.body1306
  %cmp.n1314 = icmp eq i64 %244, %n.vec1310
  br i1 %cmp.n1314, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1304
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1310, %middle.block1304 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1304
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
  %252 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %252
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1180.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !107

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %indvars.iv1150 = phi i64 [ 0, %polly.loop_header627.preheader ], [ %indvars.iv.next1151, %polly.loop_exit635 ]
  %polly.indvar630 = phi i64 [ 0, %polly.loop_header627.preheader ], [ %polly.indvar_next631, %polly.loop_exit635 ]
  %smin1176 = call i64 @llvm.smin.i64(i64 %indvars.iv1150, i64 -984)
  %253 = add nsw i64 %smin1176, 1000
  %254 = shl nsw i64 %polly.indvar630, 4
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1151 = add nsw i64 %indvars.iv1150, -16
  %exitcond1179.not = icmp eq i64 %polly.indvar_next631, 63
  br i1 %exitcond1179.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %255 = shl nuw nsw i64 %polly.indvar636, 7
  %256 = mul nuw nsw i64 %polly.indvar636, 6
  %257 = shl nuw nsw i64 %polly.indvar636, 1
  %258 = udiv i64 %257, 5
  %259 = add nuw i64 %256, %258
  %260 = mul nuw nsw i64 %259, 20
  %261 = sub i64 %255, %260
  %262 = mul nsw i64 %polly.indvar636, -128
  %263 = add i64 %262, %260
  %264 = udiv i64 %indvars.iv1163, 5
  %265 = add nuw i64 %indvars.iv1161, %264
  %266 = mul nuw nsw i64 %265, 20
  %267 = sub i64 %indvars.iv1159, %266
  %268 = add i64 %indvars.iv1168, %266
  %269 = shl nsw i64 %polly.indvar636, 7
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %270 = mul nsw i64 %polly.indvar636, -128
  %271 = mul nuw nsw i64 %polly.indvar636, 6
  %272 = shl nuw nsw i64 %polly.indvar636, 1
  %pexp.p_div_q655 = udiv i64 %272, 5
  %273 = add nuw nsw i64 %pexp.p_div_q655, %271
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1148 = add nsw i64 %indvars.iv1147, -128
  %indvars.iv.next1160 = add nuw nsw i64 %indvars.iv1159, 128
  %indvars.iv.next1162 = add nuw nsw i64 %indvars.iv1161, 6
  %indvars.iv.next1164 = add nuw nsw i64 %indvars.iv1163, 2
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -128
  %exitcond1178.not = icmp eq i64 %polly.indvar_next637, 10
  br i1 %exitcond1178.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %274 = add nuw nsw i64 %polly.indvar642, %254
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar_next643, %253
  br i1 %exitcond1153.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %275 = add nuw nsw i64 %polly.indvar648, %269
  %polly.access.mul.call2652 = mul nuw nsw i64 %275, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %274, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1147
  br i1 %exitcond1149.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit641
  %indvar1319 = phi i64 [ %indvar.next1320, %polly.loop_exit697 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1170 = phi i64 [ %indvars.iv.next1171, %polly.loop_exit697 ], [ %268, %polly.loop_exit641 ]
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166, %polly.loop_exit697 ], [ %267, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %273, %polly.loop_exit641 ]
  %276 = mul nsw i64 %indvar1319, -20
  %277 = add i64 %261, %276
  %smax1321 = call i64 @llvm.smax.i64(i64 %277, i64 0)
  %278 = mul nuw nsw i64 %indvar1319, 20
  %279 = add i64 %263, %278
  %280 = add i64 %smax1321, %279
  %smax1167 = call i64 @llvm.smax.i64(i64 %indvars.iv1165, i64 0)
  %281 = add i64 %smax1167, %indvars.iv1170
  %282 = mul nuw nsw i64 %polly.indvar659, 20
  %283 = add nsw i64 %282, %270
  %284 = add nsw i64 %283, -1
  %.inv943 = icmp sgt i64 %283, 127
  %285 = select i1 %.inv943, i64 127, i64 %284
  %polly.loop_guard672 = icmp sgt i64 %285, -1
  %286 = icmp sgt i64 %283, 0
  %287 = select i1 %286, i64 %283, i64 0
  %288 = add nsw i64 %283, 19
  %polly.loop_guard684.not = icmp sgt i64 %287, %288
  br i1 %polly.loop_guard672, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit683.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit683.us ], [ 0, %polly.loop_header656 ]
  %289 = add nuw nsw i64 %polly.indvar665.us, %254
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  br label %polly.loop_header669.us

polly.loop_header669.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header662.us ]
  %290 = add nuw nsw i64 %polly.indvar673.us, %269
  %polly.access.mul.call1677.us = mul nuw nsw i64 %290, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %289, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us = add nuw nsw i64 %polly.indvar673.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar673.us, %285
  br i1 %exitcond1156.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %287, %polly.loop_exit671.loopexit.us ]
  %291 = add nuw nsw i64 %polly.indvar685.us, %269
  %polly.access.mul.call1689.us = mul nsw i64 %291, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %289, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526693.us = add nuw nsw i64 %polly.indvar685.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %288
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_exit683.us

polly.loop_exit683.us:                            ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar_next666.us, %253
  br i1 %exitcond1158.not, label %polly.loop_header695.preheader, label %polly.loop_header662.us

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_exit683.us, label %polly.loop_header681.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_exit697:                               ; preds = %polly.loop_exit704.loopexit.us, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp ult i64 %polly.indvar659, 59
  %indvars.iv.next1166 = add i64 %indvars.iv1165, -20
  %indvars.iv.next1171 = add i64 %indvars.iv1170, 20
  %indvar.next1320 = add i64 %indvar1319, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit683
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit683 ], [ 0, %polly.loop_header656.split ]
  %292 = add nuw nsw i64 %polly.indvar665, %254
  %polly.access.mul.Packed_MemRef_call1526692 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header681

polly.loop_exit683:                               ; preds = %polly.loop_header681
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next666, %253
  br i1 %exitcond1155.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_header695.preheader:                   ; preds = %polly.loop_exit683, %polly.loop_exit683.us, %polly.loop_header656.split
  %293 = sub nsw i64 %269, %282
  %294 = icmp sgt i64 %293, 0
  %295 = select i1 %294, i64 %293, i64 0
  %polly.loop_guard705 = icmp slt i64 %295, 20
  br i1 %polly.loop_guard705, label %polly.loop_header695.us, label %polly.loop_exit697

polly.loop_header695.us:                          ; preds = %polly.loop_header695.preheader, %polly.loop_exit704.loopexit.us
  %polly.indvar698.us = phi i64 [ %polly.indvar_next699.us, %polly.loop_exit704.loopexit.us ], [ 0, %polly.loop_header695.preheader ]
  %polly.access.mul.Packed_MemRef_call1526717.us = mul nuw nsw i64 %polly.indvar698.us, 1200
  br label %polly.loop_header702.us

polly.loop_header702.us:                          ; preds = %polly.loop_header695.us, %polly.loop_exit712.us
  %indvar1322 = phi i64 [ 0, %polly.loop_header695.us ], [ %indvar.next1323, %polly.loop_exit712.us ]
  %indvars.iv1172 = phi i64 [ %281, %polly.loop_header695.us ], [ %indvars.iv.next1173, %polly.loop_exit712.us ]
  %polly.indvar706.us = phi i64 [ %295, %polly.loop_header695.us ], [ %polly.indvar_next707.us, %polly.loop_exit712.us ]
  %296 = add i64 %280, %indvar1322
  %smin1324 = call i64 @llvm.smin.i64(i64 %296, i64 127)
  %297 = add nsw i64 %smin1324, 1
  %smin1174 = call i64 @llvm.smin.i64(i64 %indvars.iv1172, i64 127)
  %298 = add nsw i64 %polly.indvar706.us, %283
  %polly.loop_guard713.us1218 = icmp sgt i64 %298, -1
  br i1 %polly.loop_guard713.us1218, label %polly.loop_header710.preheader.us, label %polly.loop_exit712.us

polly.loop_header710.us:                          ; preds = %polly.loop_header710.us.preheader, %polly.loop_header710.us
  %polly.indvar714.us = phi i64 [ %polly.indvar_next715.us, %polly.loop_header710.us ], [ %polly.indvar714.us.ph, %polly.loop_header710.us.preheader ]
  %299 = add nuw nsw i64 %polly.indvar714.us, %269
  %polly.access.add.Packed_MemRef_call1526718.us = add nuw nsw i64 %polly.indvar714.us, %polly.access.mul.Packed_MemRef_call1526717.us
  %polly.access.Packed_MemRef_call1526719.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call1526719.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_724.us, %_p_scalar_720.us
  %polly.access.Packed_MemRef_call2528727.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.us
  %_p_scalar_728.us = load double, double* %polly.access.Packed_MemRef_call2528727.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_732.us, %_p_scalar_728.us
  %300 = shl i64 %299, 3
  %301 = add i64 %300, %303
  %scevgep733.us = getelementptr i8, i8* %call, i64 %301
  %scevgep733734.us = bitcast i8* %scevgep733.us to double*
  %_p_scalar_735.us = load double, double* %scevgep733734.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_735.us
  store double %p_add42.i.us, double* %scevgep733734.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next715.us = add nuw nsw i64 %polly.indvar714.us, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar714.us, %smin1174
  br i1 %exitcond1175.not, label %polly.loop_exit712.us, label %polly.loop_header710.us, !llvm.loop !110

polly.loop_exit712.us:                            ; preds = %polly.loop_header710.us, %middle.block1316, %polly.loop_header702.us
  %polly.indvar_next707.us = add nuw nsw i64 %polly.indvar706.us, 1
  %polly.loop_cond708.us = icmp ult i64 %polly.indvar706.us, 19
  %indvars.iv.next1173 = add i64 %indvars.iv1172, 1
  %indvar.next1323 = add i64 %indvar1322, 1
  br i1 %polly.loop_cond708.us, label %polly.loop_header702.us, label %polly.loop_exit704.loopexit.us

polly.loop_header710.preheader.us:                ; preds = %polly.loop_header702.us
  %302 = add nuw nsw i64 %polly.indvar706.us, %282
  %polly.access.add.Packed_MemRef_call2528722.us = add nsw i64 %298, %polly.access.mul.Packed_MemRef_call1526717.us
  %polly.access.Packed_MemRef_call2528723.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.us
  %_p_scalar_724.us = load double, double* %polly.access.Packed_MemRef_call2528723.us, align 8
  %polly.access.Packed_MemRef_call1526731.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.us
  %_p_scalar_732.us = load double, double* %polly.access.Packed_MemRef_call1526731.us, align 8
  %303 = mul i64 %302, 9600
  %min.iters.check1325 = icmp ult i64 %297, 4
  br i1 %min.iters.check1325, label %polly.loop_header710.us.preheader, label %vector.ph1326

vector.ph1326:                                    ; preds = %polly.loop_header710.preheader.us
  %n.vec1328 = and i64 %297, -4
  %broadcast.splatinsert1334 = insertelement <4 x double> poison, double %_p_scalar_724.us, i32 0
  %broadcast.splat1335 = shufflevector <4 x double> %broadcast.splatinsert1334, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_732.us, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1318 ]
  %304 = add nuw nsw i64 %index1329, %269
  %305 = add nuw nsw i64 %index1329, %polly.access.mul.Packed_MemRef_call1526717.us
  %306 = getelementptr double, double* %Packed_MemRef_call1526, i64 %305
  %307 = bitcast double* %306 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %307, align 8
  %308 = fmul fast <4 x double> %broadcast.splat1335, %wide.load1333
  %309 = getelementptr double, double* %Packed_MemRef_call2528, i64 %305
  %310 = bitcast double* %309 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %310, align 8
  %311 = fmul fast <4 x double> %broadcast.splat1338, %wide.load1336
  %312 = shl i64 %304, 3
  %313 = add i64 %312, %303
  %314 = getelementptr i8, i8* %call, i64 %313
  %315 = bitcast i8* %314 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %315, align 8, !alias.scope !99, !noalias !101
  %316 = fadd fast <4 x double> %311, %308
  %317 = fmul fast <4 x double> %316, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %318 = fadd fast <4 x double> %317, %wide.load1339
  %319 = bitcast i8* %314 to <4 x double>*
  store <4 x double> %318, <4 x double>* %319, align 8, !alias.scope !99, !noalias !101
  %index.next1330 = add i64 %index1329, 4
  %320 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %320, label %middle.block1316, label %vector.body1318, !llvm.loop !111

middle.block1316:                                 ; preds = %vector.body1318
  %cmp.n1332 = icmp eq i64 %297, %n.vec1328
  br i1 %cmp.n1332, label %polly.loop_exit712.us, label %polly.loop_header710.us.preheader

polly.loop_header710.us.preheader:                ; preds = %polly.loop_header710.preheader.us, %middle.block1316
  %polly.indvar714.us.ph = phi i64 [ 0, %polly.loop_header710.preheader.us ], [ %n.vec1328, %middle.block1316 ]
  br label %polly.loop_header710.us

polly.loop_exit704.loopexit.us:                   ; preds = %polly.loop_exit712.us
  %polly.indvar_next699.us = add nuw nsw i64 %polly.indvar698.us, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar_next699.us, %253
  br i1 %exitcond1177.not, label %polly.loop_exit697, label %polly.loop_header695.us

polly.loop_header681:                             ; preds = %polly.loop_header662, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %287, %polly.loop_header662 ]
  %321 = add nuw nsw i64 %polly.indvar685, %269
  %polly.access.mul.call1689 = mul nsw i64 %321, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %292, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526693 = add nuw nsw i64 %polly.indvar685, %polly.access.mul.Packed_MemRef_call1526692
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %288
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_exit683

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %indvars.iv1206 = phi i64 [ %indvars.iv.next1207, %polly.loop_exit870 ], [ 0, %entry ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %smin1208 = call i64 @llvm.smin.i64(i64 %indvars.iv1206, i64 -1168)
  %322 = shl nsw i64 %polly.indvar865, 5
  %323 = add nsw i64 %smin1208, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1207 = add nsw i64 %indvars.iv1206, -32
  %exitcond1211.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1211.not, label %polly.loop_header889, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1202 = phi i64 [ %indvars.iv.next1203, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %324 = mul nsw i64 %polly.indvar871, -32
  %smin = call i64 @llvm.smin.i64(i64 %324, i64 -1168)
  %325 = add nsw i64 %smin, 1200
  %smin1204 = call i64 @llvm.smin.i64(i64 %indvars.iv1202, i64 -1168)
  %326 = shl nsw i64 %polly.indvar871, 5
  %327 = add nsw i64 %smin1204, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1203 = add nsw i64 %indvars.iv1202, -32
  %exitcond1210.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1210.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %328 = add nuw nsw i64 %polly.indvar877, %322
  %329 = trunc i64 %328 to i32
  %330 = mul nuw nsw i64 %328, 9600
  %min.iters.check = icmp eq i64 %325, 0
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1246

vector.ph1246:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1253 = insertelement <4 x i64> poison, i64 %326, i32 0
  %broadcast.splat1254 = shufflevector <4 x i64> %broadcast.splatinsert1253, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1255 = insertelement <4 x i32> poison, i32 %329, i32 0
  %broadcast.splat1256 = shufflevector <4 x i32> %broadcast.splatinsert1255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1246
  %index1247 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1248, %vector.body1245 ]
  %vec.ind1251 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1246 ], [ %vec.ind.next1252, %vector.body1245 ]
  %331 = add nuw nsw <4 x i64> %vec.ind1251, %broadcast.splat1254
  %332 = trunc <4 x i64> %331 to <4 x i32>
  %333 = mul <4 x i32> %broadcast.splat1256, %332
  %334 = add <4 x i32> %333, <i32 3, i32 3, i32 3, i32 3>
  %335 = urem <4 x i32> %334, <i32 1200, i32 1200, i32 1200, i32 1200>
  %336 = sitofp <4 x i32> %335 to <4 x double>
  %337 = fmul fast <4 x double> %336, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %338 = extractelement <4 x i64> %331, i32 0
  %339 = shl i64 %338, 3
  %340 = add nuw nsw i64 %339, %330
  %341 = getelementptr i8, i8* %call, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %337, <4 x double>* %342, align 8, !alias.scope !112, !noalias !114
  %index.next1248 = add i64 %index1247, 4
  %vec.ind.next1252 = add <4 x i64> %vec.ind1251, <i64 4, i64 4, i64 4, i64 4>
  %343 = icmp eq i64 %index.next1248, %325
  br i1 %343, label %polly.loop_exit882, label %vector.body1245, !llvm.loop !117

polly.loop_exit882:                               ; preds = %vector.body1245, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1209.not = icmp eq i64 %polly.indvar877, %323
  br i1 %exitcond1209.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %344 = add nuw nsw i64 %polly.indvar883, %326
  %345 = trunc i64 %344 to i32
  %346 = mul i32 %345, %329
  %347 = add i32 %346, 3
  %348 = urem i32 %347, 1200
  %p_conv31.i = sitofp i32 %348 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %349 = shl i64 %344, 3
  %350 = add nuw nsw i64 %349, %330
  %scevgep886 = getelementptr i8, i8* %call, i64 %350
  %scevgep886887 = bitcast i8* %scevgep886 to double*
  store double %p_div33.i, double* %scevgep886887, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1205.not = icmp eq i64 %polly.indvar883, %327
  br i1 %exitcond1205.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !118

polly.loop_header889:                             ; preds = %polly.loop_exit870, %polly.loop_exit897
  %indvars.iv1196 = phi i64 [ %indvars.iv.next1197, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %smin1198 = call i64 @llvm.smin.i64(i64 %indvars.iv1196, i64 -1168)
  %351 = shl nsw i64 %polly.indvar892, 5
  %352 = add nsw i64 %smin1198, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1197 = add nsw i64 %indvars.iv1196, -32
  %exitcond1201.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1201.not, label %polly.loop_header915, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1192 = phi i64 [ %indvars.iv.next1193, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %353 = mul nsw i64 %polly.indvar898, -32
  %smin1260 = call i64 @llvm.smin.i64(i64 %353, i64 -968)
  %354 = add nsw i64 %smin1260, 1000
  %smin1194 = call i64 @llvm.smin.i64(i64 %indvars.iv1192, i64 -968)
  %355 = shl nsw i64 %polly.indvar898, 5
  %356 = add nsw i64 %smin1194, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1193 = add nsw i64 %indvars.iv1192, -32
  %exitcond1200.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1200.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %357 = add nuw nsw i64 %polly.indvar904, %351
  %358 = trunc i64 %357 to i32
  %359 = mul nuw nsw i64 %357, 8000
  %min.iters.check1261 = icmp eq i64 %354, 0
  br i1 %min.iters.check1261, label %polly.loop_header907, label %vector.ph1262

vector.ph1262:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1271 = insertelement <4 x i64> poison, i64 %355, i32 0
  %broadcast.splat1272 = shufflevector <4 x i64> %broadcast.splatinsert1271, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1273 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat1274 = shufflevector <4 x i32> %broadcast.splatinsert1273, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1262
  %index1265 = phi i64 [ 0, %vector.ph1262 ], [ %index.next1266, %vector.body1259 ]
  %vec.ind1269 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1262 ], [ %vec.ind.next1270, %vector.body1259 ]
  %360 = add nuw nsw <4 x i64> %vec.ind1269, %broadcast.splat1272
  %361 = trunc <4 x i64> %360 to <4 x i32>
  %362 = mul <4 x i32> %broadcast.splat1274, %361
  %363 = add <4 x i32> %362, <i32 2, i32 2, i32 2, i32 2>
  %364 = urem <4 x i32> %363, <i32 1000, i32 1000, i32 1000, i32 1000>
  %365 = sitofp <4 x i32> %364 to <4 x double>
  %366 = fmul fast <4 x double> %365, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %367 = extractelement <4 x i64> %360, i32 0
  %368 = shl i64 %367, 3
  %369 = add nuw nsw i64 %368, %359
  %370 = getelementptr i8, i8* %call2, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %366, <4 x double>* %371, align 8, !alias.scope !116, !noalias !119
  %index.next1266 = add i64 %index1265, 4
  %vec.ind.next1270 = add <4 x i64> %vec.ind1269, <i64 4, i64 4, i64 4, i64 4>
  %372 = icmp eq i64 %index.next1266, %354
  br i1 %372, label %polly.loop_exit909, label %vector.body1259, !llvm.loop !120

polly.loop_exit909:                               ; preds = %vector.body1259, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1199.not = icmp eq i64 %polly.indvar904, %352
  br i1 %exitcond1199.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %373 = add nuw nsw i64 %polly.indvar910, %355
  %374 = trunc i64 %373 to i32
  %375 = mul i32 %374, %358
  %376 = add i32 %375, 2
  %377 = urem i32 %376, 1000
  %p_conv10.i = sitofp i32 %377 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %378 = shl i64 %373, 3
  %379 = add nuw nsw i64 %378, %359
  %scevgep913 = getelementptr i8, i8* %call2, i64 %379
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div12.i, double* %scevgep913914, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1195.not = icmp eq i64 %polly.indvar910, %356
  br i1 %exitcond1195.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !121

polly.loop_header915:                             ; preds = %polly.loop_exit897, %polly.loop_exit923
  %indvars.iv1186 = phi i64 [ %indvars.iv.next1187, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %smin1188 = call i64 @llvm.smin.i64(i64 %indvars.iv1186, i64 -1168)
  %380 = shl nsw i64 %polly.indvar918, 5
  %381 = add nsw i64 %smin1188, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1187 = add nsw i64 %indvars.iv1186, -32
  %exitcond1191.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1191.not, label %init_array.exit, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1182 = phi i64 [ %indvars.iv.next1183, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %382 = mul nsw i64 %polly.indvar924, -32
  %smin1278 = call i64 @llvm.smin.i64(i64 %382, i64 -968)
  %383 = add nsw i64 %smin1278, 1000
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 -968)
  %384 = shl nsw i64 %polly.indvar924, 5
  %385 = add nsw i64 %smin1184, 999
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1183 = add nsw i64 %indvars.iv1182, -32
  %exitcond1190.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1190.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %386 = add nuw nsw i64 %polly.indvar930, %380
  %387 = trunc i64 %386 to i32
  %388 = mul nuw nsw i64 %386, 8000
  %min.iters.check1279 = icmp eq i64 %383, 0
  br i1 %min.iters.check1279, label %polly.loop_header933, label %vector.ph1280

vector.ph1280:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1289 = insertelement <4 x i64> poison, i64 %384, i32 0
  %broadcast.splat1290 = shufflevector <4 x i64> %broadcast.splatinsert1289, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1291 = insertelement <4 x i32> poison, i32 %387, i32 0
  %broadcast.splat1292 = shufflevector <4 x i32> %broadcast.splatinsert1291, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1277 ]
  %vec.ind1287 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1280 ], [ %vec.ind.next1288, %vector.body1277 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1287, %broadcast.splat1290
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1292, %390
  %392 = add <4 x i32> %391, <i32 1, i32 1, i32 1, i32 1>
  %393 = urem <4 x i32> %392, <i32 1200, i32 1200, i32 1200, i32 1200>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add nuw nsw i64 %397, %388
  %399 = getelementptr i8, i8* %call1, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !115, !noalias !122
  %index.next1284 = add i64 %index1283, 4
  %vec.ind.next1288 = add <4 x i64> %vec.ind1287, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1284, %383
  br i1 %401, label %polly.loop_exit935, label %vector.body1277, !llvm.loop !123

polly.loop_exit935:                               ; preds = %vector.body1277, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1189.not = icmp eq i64 %polly.indvar930, %381
  br i1 %exitcond1189.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %402 = add nuw nsw i64 %polly.indvar936, %384
  %403 = trunc i64 %402 to i32
  %404 = mul i32 %403, %387
  %405 = add i32 %404, 1
  %406 = urem i32 %405, 1200
  %p_conv.i = sitofp i32 %406 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %407 = shl i64 %402, 3
  %408 = add nuw nsw i64 %407, %388
  %scevgep940 = getelementptr i8, i8* %call1, i64 %408
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div.i, double* %scevgep940941, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar936, %385
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
!26 = !{!"llvm.loop.tile.size", i32 128}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 16}
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
!84 = distinct !{!84, !81, !13}
!85 = distinct !{!85, !13}
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
!97 = distinct !{!97, !81, !13}
!98 = distinct !{!98, !13}
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
!110 = distinct !{!110, !81, !13}
!111 = distinct !{!111, !13}
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
