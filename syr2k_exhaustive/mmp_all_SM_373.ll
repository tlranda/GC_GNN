; ModuleID = 'syr2k_exhaustive/mmp_all_SM_373.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_373.c"
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
  %scevgep1215 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1214 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1213 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1212 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1212, %scevgep1215
  %bound1 = icmp ult i8* %scevgep1214, %scevgep1213
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
  br i1 %exitcond18.not.i, label %vector.ph1219, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1219:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1226 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1227 = shufflevector <4 x i64> %broadcast.splatinsert1226, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1218

vector.body1218:                                  ; preds = %vector.body1218, %vector.ph1219
  %index1220 = phi i64 [ 0, %vector.ph1219 ], [ %index.next1221, %vector.body1218 ]
  %vec.ind1224 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1219 ], [ %vec.ind.next1225, %vector.body1218 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1224, %broadcast.splat1227
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv7.i, i64 %index1220
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1221 = add i64 %index1220, 4
  %vec.ind.next1225 = add <4 x i64> %vec.ind1224, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1221, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1218, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1218
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1219, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit923
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1282 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1282, label %for.body3.i46.preheader1743, label %vector.ph1283

vector.ph1283:                                    ; preds = %for.body3.i46.preheader
  %n.vec1285 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1281

vector.body1281:                                  ; preds = %vector.body1281, %vector.ph1283
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1287, %vector.body1281 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %index1286
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1287 = add i64 %index1286, 4
  %46 = icmp eq i64 %index.next1287, %n.vec1285
  br i1 %46, label %middle.block1279, label %vector.body1281, !llvm.loop !18

middle.block1279:                                 ; preds = %vector.body1281
  %cmp.n1289 = icmp eq i64 %indvars.iv21.i, %n.vec1285
  br i1 %cmp.n1289, label %for.inc6.i, label %for.body3.i46.preheader1743

for.body3.i46.preheader1743:                      ; preds = %for.body3.i46.preheader, %middle.block1279
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1285, %middle.block1279 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1743, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1743 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1279, %for.cond1.preheader.i45
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
  %min.iters.check1433 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1433, label %for.body3.i60.preheader1741, label %vector.ph1434

vector.ph1434:                                    ; preds = %for.body3.i60.preheader
  %n.vec1436 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1432

vector.body1432:                                  ; preds = %vector.body1432, %vector.ph1434
  %index1437 = phi i64 [ 0, %vector.ph1434 ], [ %index.next1438, %vector.body1432 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %index1437
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1441 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1441, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1438 = add i64 %index1437, 4
  %57 = icmp eq i64 %index.next1438, %n.vec1436
  br i1 %57, label %middle.block1430, label %vector.body1432, !llvm.loop !64

middle.block1430:                                 ; preds = %vector.body1432
  %cmp.n1440 = icmp eq i64 %indvars.iv21.i52, %n.vec1436
  br i1 %cmp.n1440, label %for.inc6.i63, label %for.body3.i60.preheader1741

for.body3.i60.preheader1741:                      ; preds = %for.body3.i60.preheader, %middle.block1430
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1436, %middle.block1430 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1741, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1741 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1430, %for.cond1.preheader.i54
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
  %min.iters.check1587 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1587, label %for.body3.i99.preheader1739, label %vector.ph1588

vector.ph1588:                                    ; preds = %for.body3.i99.preheader
  %n.vec1590 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1586

vector.body1586:                                  ; preds = %vector.body1586, %vector.ph1588
  %index1591 = phi i64 [ 0, %vector.ph1588 ], [ %index.next1592, %vector.body1586 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %index1591
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1595 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1595, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1592 = add i64 %index1591, 4
  %68 = icmp eq i64 %index.next1592, %n.vec1590
  br i1 %68, label %middle.block1584, label %vector.body1586, !llvm.loop !66

middle.block1584:                                 ; preds = %vector.body1586
  %cmp.n1594 = icmp eq i64 %indvars.iv21.i91, %n.vec1590
  br i1 %cmp.n1594, label %for.inc6.i102, label %for.body3.i99.preheader1739

for.body3.i99.preheader1739:                      ; preds = %for.body3.i99.preheader, %middle.block1584
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1590, %middle.block1584 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1739, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1739 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1584, %for.cond1.preheader.i93
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
  %indvar1599 = phi i64 [ %indvar.next1600, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1599, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1601 = icmp ult i64 %88, 4
  br i1 %min.iters.check1601, label %polly.loop_header192.preheader, label %vector.ph1602

vector.ph1602:                                    ; preds = %polly.loop_header
  %n.vec1604 = and i64 %88, -4
  br label %vector.body1598

vector.body1598:                                  ; preds = %vector.body1598, %vector.ph1602
  %index1605 = phi i64 [ 0, %vector.ph1602 ], [ %index.next1606, %vector.body1598 ]
  %90 = shl nuw nsw i64 %index1605, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1609 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1609, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1606 = add i64 %index1605, 4
  %95 = icmp eq i64 %index.next1606, %n.vec1604
  br i1 %95, label %middle.block1596, label %vector.body1598, !llvm.loop !79

middle.block1596:                                 ; preds = %vector.body1598
  %cmp.n1608 = icmp eq i64 %88, %n.vec1604
  br i1 %cmp.n1608, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1596
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1604, %middle.block1596 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1596
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1600 = add i64 %indvar1599, 1
  br i1 %exitcond1103.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  %scevgep1642 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1643 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1677 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1678 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1712 = getelementptr i8, i8* %malloccall, i64 8
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
  %exitcond1102.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1102.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = shl nsw i64 %polly.indvar203, 2
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1101.not = icmp eq i64 %polly.indvar_next204, 250
  br i1 %exitcond1101.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit230 ], [ 4, %polly.loop_header200 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %101 = mul nsw i64 %polly.indvar209, -4
  %102 = add nuw i64 %polly.indvar209, 4
  %103 = udiv i64 %102, 5
  %104 = mul nuw nsw i64 %103, 20
  %105 = add i64 %101, %104
  %106 = shl nuw nsw i64 %polly.indvar209, 2
  %107 = sub nsw i64 %106, %104
  %108 = shl nuw nsw i64 %polly.indvar209, 11
  %109 = mul nsw i64 %polly.indvar209, -4
  %110 = add nuw i64 %polly.indvar209, 4
  %111 = udiv i64 %110, 5
  %112 = mul nuw nsw i64 %111, 20
  %113 = add i64 %109, %112
  %114 = mul nuw nsw i64 %polly.indvar209, 260
  %115 = sub nsw i64 %114, %112
  %116 = or i64 %108, 8
  %117 = shl nuw nsw i64 %polly.indvar209, 2
  %118 = sub nsw i64 %117, %112
  %119 = mul nsw i64 %polly.indvar209, -4
  %120 = add nuw i64 %polly.indvar209, 4
  %121 = udiv i64 %120, 5
  %122 = mul nuw nsw i64 %121, 20
  %123 = add i64 %119, %122
  %124 = shl nuw nsw i64 %polly.indvar209, 2
  %125 = sub nsw i64 %124, %122
  %126 = shl nuw nsw i64 %polly.indvar209, 11
  %127 = mul nsw i64 %polly.indvar209, -4
  %128 = add nuw i64 %polly.indvar209, 4
  %129 = udiv i64 %128, 5
  %130 = mul nuw nsw i64 %129, 20
  %131 = add i64 %127, %130
  %132 = mul nuw nsw i64 %polly.indvar209, 260
  %133 = sub nsw i64 %132, %130
  %134 = or i64 %126, 8
  %135 = shl nuw nsw i64 %polly.indvar209, 2
  %136 = sub nsw i64 %135, %130
  %137 = mul nsw i64 %polly.indvar209, -4
  %138 = add nuw i64 %polly.indvar209, 4
  %139 = udiv i64 %138, 5
  %140 = mul nuw nsw i64 %139, 20
  %141 = add i64 %137, %140
  %142 = shl nuw nsw i64 %polly.indvar209, 2
  %143 = sub nsw i64 %142, %140
  %144 = shl nuw nsw i64 %polly.indvar209, 11
  %145 = mul nsw i64 %polly.indvar209, -4
  %146 = add nuw i64 %polly.indvar209, 4
  %147 = udiv i64 %146, 5
  %148 = mul nuw nsw i64 %147, 20
  %149 = add i64 %145, %148
  %150 = mul nuw nsw i64 %polly.indvar209, 260
  %151 = sub nsw i64 %150, %148
  %152 = or i64 %144, 8
  %153 = shl nuw nsw i64 %polly.indvar209, 2
  %154 = sub nsw i64 %153, %148
  %155 = mul nsw i64 %polly.indvar209, -4
  %156 = add nuw i64 %polly.indvar209, 4
  %157 = udiv i64 %156, 5
  %158 = mul nuw nsw i64 %157, 20
  %159 = add i64 %155, %158
  %160 = shl nuw nsw i64 %polly.indvar209, 2
  %161 = sub nsw i64 %160, %158
  %162 = udiv i64 %indvars.iv1088, 5
  %163 = mul nuw nsw i64 %162, 20
  %164 = add i64 %indvars.iv1086, %163
  %165 = sub nsw i64 %indvars.iv1092, %163
  %166 = shl nsw i64 %polly.indvar209, 8
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next1087 = add nsw i64 %indvars.iv1086, -4
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 1
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092, 4
  %exitcond1100.not = icmp eq i64 %polly.indvar_next210, 5
  br i1 %exitcond1100.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %167 = add nuw nsw i64 %polly.indvar221, %166
  %polly.access.mul.call2225 = mul nuw nsw i64 %167, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %97, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit220.3
  %indvar1613 = phi i64 [ %indvar.next1614, %polly.loop_exit267 ], [ 0, %polly.loop_exit220.3 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit267 ], [ %165, %polly.loop_exit220.3 ]
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit267 ], [ %164, %polly.loop_exit220.3 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %700, %polly.loop_exit220.3 ]
  %168 = mul nsw i64 %indvar1613, -20
  %169 = add i64 %105, %168
  %smax1721 = call i64 @llvm.smax.i64(i64 %169, i64 0)
  %170 = mul nuw nsw i64 %indvar1613, 20
  %171 = add i64 %107, %170
  %172 = add i64 %smax1721, %171
  %173 = mul nsw i64 %indvar1613, -20
  %174 = add i64 %113, %173
  %smax1705 = call i64 @llvm.smax.i64(i64 %174, i64 0)
  %175 = mul nuw nsw i64 %indvar1613, 20
  %176 = add i64 %115, %175
  %177 = add i64 %smax1705, %176
  %178 = mul nsw i64 %177, 9600
  %179 = add i64 %108, %178
  %180 = add i64 %116, %178
  %181 = add i64 %118, %175
  %182 = add i64 %smax1705, %181
  %183 = mul nsw i64 %indvar1613, -20
  %184 = add i64 %123, %183
  %smax1687 = call i64 @llvm.smax.i64(i64 %184, i64 0)
  %185 = mul nuw nsw i64 %indvar1613, 20
  %186 = add i64 %125, %185
  %187 = add i64 %smax1687, %186
  %188 = mul nsw i64 %indvar1613, -20
  %189 = add i64 %131, %188
  %smax1670 = call i64 @llvm.smax.i64(i64 %189, i64 0)
  %190 = mul nuw nsw i64 %indvar1613, 20
  %191 = add i64 %133, %190
  %192 = add i64 %smax1670, %191
  %193 = mul nsw i64 %192, 9600
  %194 = add i64 %126, %193
  %195 = add i64 %134, %193
  %196 = add i64 %136, %190
  %197 = add i64 %smax1670, %196
  %198 = mul nsw i64 %indvar1613, -20
  %199 = add i64 %141, %198
  %smax1652 = call i64 @llvm.smax.i64(i64 %199, i64 0)
  %200 = mul nuw nsw i64 %indvar1613, 20
  %201 = add i64 %143, %200
  %202 = add i64 %smax1652, %201
  %203 = mul nsw i64 %indvar1613, -20
  %204 = add i64 %149, %203
  %smax1635 = call i64 @llvm.smax.i64(i64 %204, i64 0)
  %205 = mul nuw nsw i64 %indvar1613, 20
  %206 = add i64 %151, %205
  %207 = add i64 %smax1635, %206
  %208 = mul nsw i64 %207, 9600
  %209 = add i64 %144, %208
  %210 = add i64 %152, %208
  %211 = add i64 %154, %205
  %212 = add i64 %smax1635, %211
  %213 = mul nsw i64 %indvar1613, -20
  %214 = add i64 %159, %213
  %smax1615 = call i64 @llvm.smax.i64(i64 %214, i64 0)
  %215 = mul nuw nsw i64 %indvar1613, 20
  %216 = add i64 %161, %215
  %217 = add i64 %smax1615, %216
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1090, i64 0)
  %218 = add i64 %smax, %indvars.iv1094
  %219 = mul nsw i64 %polly.indvar231, 20
  %220 = add nsw i64 %219, %697
  %221 = add nsw i64 %220, -1
  %.inv = icmp sgt i64 %220, 255
  %222 = select i1 %.inv, i64 255, i64 %221
  %polly.loop_guard = icmp sgt i64 %222, -1
  %223 = icmp sgt i64 %220, 0
  %224 = select i1 %223, i64 %220, i64 0
  %225 = add nsw i64 %220, 19
  %polly.loop_guard254.not = icmp sgt i64 %224, %225
  br i1 %polly.loop_guard, label %polly.loop_header240.us, label %polly.loop_header228.split

polly.loop_header240.us:                          ; preds = %polly.loop_header228, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header228 ]
  %226 = add nuw nsw i64 %polly.indvar243.us, %166
  %polly.access.mul.call1247.us = mul nuw nsw i64 %226, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %97, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar243.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar243.us, %222
  br i1 %exitcond1084.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %224, %polly.loop_exit242.loopexit.us ]
  %227 = add nuw nsw i64 %polly.indvar255.us, %166
  %polly.access.mul.call1259.us = mul nsw i64 %227, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %97, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %225
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_header240.us.1.preheader

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.1.preheader, label %polly.loop_header251.us

polly.loop_header240.us.1.preheader:              ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  br label %polly.loop_header240.us.1

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251

polly.loop_exit267:                               ; preds = %polly.loop_exit282.us.3, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp slt i64 %polly.indvar231, 59
  %indvars.iv.next1091 = add i64 %indvars.iv1090, -20
  %indvars.iv.next1095 = add i64 %indvars.iv1094, 20
  %indvar.next1614 = add i64 %indvar1613, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header265.preheader:                   ; preds = %polly.loop_header251.3, %polly.loop_header251.us.3, %polly.loop_exit242.loopexit.us.3, %polly.loop_header228.split
  %228 = sub nsw i64 %166, %219
  %229 = icmp sgt i64 %228, 0
  %230 = select i1 %229, i64 %228, i64 0
  %polly.loop_guard275 = icmp slt i64 %230, 20
  br i1 %polly.loop_guard275, label %polly.loop_header272.us, label %polly.loop_exit267

polly.loop_header272.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit282.us
  %indvar1706 = phi i64 [ %indvar.next1707, %polly.loop_exit282.us ], [ 0, %polly.loop_header265.preheader ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit282.us ], [ %218, %polly.loop_header265.preheader ]
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_exit282.us ], [ %230, %polly.loop_header265.preheader ]
  %231 = add i64 %172, %indvar1706
  %smin1722 = call i64 @llvm.smin.i64(i64 %231, i64 255)
  %232 = add nsw i64 %smin1722, 1
  %233 = mul nuw nsw i64 %indvar1706, 9600
  %234 = add i64 %179, %233
  %scevgep1708 = getelementptr i8, i8* %call, i64 %234
  %235 = add i64 %180, %233
  %scevgep1709 = getelementptr i8, i8* %call, i64 %235
  %236 = add i64 %182, %indvar1706
  %smin1710 = call i64 @llvm.smin.i64(i64 %236, i64 255)
  %237 = shl nsw i64 %smin1710, 3
  %scevgep1711 = getelementptr i8, i8* %scevgep1709, i64 %237
  %scevgep1713 = getelementptr i8, i8* %scevgep1712, i64 %237
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1096, i64 255)
  %238 = add nsw i64 %polly.indvar276.us, %220
  %polly.loop_guard283.us1192 = icmp sgt i64 %238, -1
  br i1 %polly.loop_guard283.us1192, label %polly.loop_header280.preheader.us, label %polly.loop_exit282.us

polly.loop_header280.us:                          ; preds = %polly.loop_header280.us.preheader, %polly.loop_header280.us
  %polly.indvar284.us = phi i64 [ %polly.indvar_next285.us, %polly.loop_header280.us ], [ %polly.indvar284.us.ph, %polly.loop_header280.us.preheader ]
  %239 = add nuw nsw i64 %polly.indvar284.us, %166
  %polly.access.Packed_MemRef_call1289.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar284.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call1289.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %polly.access.Packed_MemRef_call2297.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar284.us
  %_p_scalar_298.us = load double, double* %polly.access.Packed_MemRef_call2297.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_302.us, %_p_scalar_298.us
  %240 = shl i64 %239, 3
  %241 = add i64 %240, %243
  %scevgep303.us = getelementptr i8, i8* %call, i64 %241
  %scevgep303304.us = bitcast i8* %scevgep303.us to double*
  %_p_scalar_305.us = load double, double* %scevgep303304.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_305.us
  store double %p_add42.i118.us, double* %scevgep303304.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.us = add nuw nsw i64 %polly.indvar284.us, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar284.us, %smin
  br i1 %exitcond1098.not, label %polly.loop_exit282.us, label %polly.loop_header280.us, !llvm.loop !84

polly.loop_exit282.us:                            ; preds = %polly.loop_header280.us, %middle.block1718, %polly.loop_header272.us
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %polly.loop_cond278.us = icmp ult i64 %polly.indvar276.us, 19
  %indvars.iv.next1097 = add i64 %indvars.iv1096, 1
  %indvar.next1707 = add i64 %indvar1706, 1
  br i1 %polly.loop_cond278.us, label %polly.loop_header272.us, label %polly.loop_header272.us.1

polly.loop_header280.preheader.us:                ; preds = %polly.loop_header272.us
  %242 = add nsw i64 %polly.indvar276.us, %219
  %polly.access.Packed_MemRef_call2293.us = getelementptr double, double* %Packed_MemRef_call2, i64 %238
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call2293.us, align 8
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1, i64 %238
  %_p_scalar_302.us = load double, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %243 = mul i64 %242, 9600
  %min.iters.check1723 = icmp ult i64 %232, 4
  br i1 %min.iters.check1723, label %polly.loop_header280.us.preheader, label %vector.memcheck1704

vector.memcheck1704:                              ; preds = %polly.loop_header280.preheader.us
  %bound01714 = icmp ult i8* %scevgep1708, %scevgep1713
  %bound11715 = icmp ult i8* %malloccall, %scevgep1711
  %found.conflict1716 = and i1 %bound01714, %bound11715
  br i1 %found.conflict1716, label %polly.loop_header280.us.preheader, label %vector.ph1724

vector.ph1724:                                    ; preds = %vector.memcheck1704
  %n.vec1726 = and i64 %232, -4
  %broadcast.splatinsert1732 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1733 = shufflevector <4 x double> %broadcast.splatinsert1732, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1735 = insertelement <4 x double> poison, double %_p_scalar_302.us, i32 0
  %broadcast.splat1736 = shufflevector <4 x double> %broadcast.splatinsert1735, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1720

vector.body1720:                                  ; preds = %vector.body1720, %vector.ph1724
  %index1727 = phi i64 [ 0, %vector.ph1724 ], [ %index.next1728, %vector.body1720 ]
  %244 = add nuw nsw i64 %index1727, %166
  %245 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1727
  %246 = bitcast double* %245 to <4 x double>*
  %wide.load1731 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !85
  %247 = fmul fast <4 x double> %broadcast.splat1733, %wide.load1731
  %248 = getelementptr double, double* %Packed_MemRef_call2, i64 %index1727
  %249 = bitcast double* %248 to <4 x double>*
  %wide.load1734 = load <4 x double>, <4 x double>* %249, align 8
  %250 = fmul fast <4 x double> %broadcast.splat1736, %wide.load1734
  %251 = shl i64 %244, 3
  %252 = add i64 %251, %243
  %253 = getelementptr i8, i8* %call, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  %wide.load1737 = load <4 x double>, <4 x double>* %254, align 8, !alias.scope !88, !noalias !90
  %255 = fadd fast <4 x double> %250, %247
  %256 = fmul fast <4 x double> %255, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %257 = fadd fast <4 x double> %256, %wide.load1737
  %258 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %257, <4 x double>* %258, align 8, !alias.scope !88, !noalias !90
  %index.next1728 = add i64 %index1727, 4
  %259 = icmp eq i64 %index.next1728, %n.vec1726
  br i1 %259, label %middle.block1718, label %vector.body1720, !llvm.loop !91

middle.block1718:                                 ; preds = %vector.body1720
  %cmp.n1730 = icmp eq i64 %232, %n.vec1726
  br i1 %cmp.n1730, label %polly.loop_exit282.us, label %polly.loop_header280.us.preheader

polly.loop_header280.us.preheader:                ; preds = %vector.memcheck1704, %polly.loop_header280.preheader.us, %middle.block1718
  %polly.indvar284.us.ph = phi i64 [ 0, %vector.memcheck1704 ], [ 0, %polly.loop_header280.preheader.us ], [ %n.vec1726, %middle.block1718 ]
  br label %polly.loop_header280.us

polly.loop_header251:                             ; preds = %polly.loop_header228.split, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %224, %polly.loop_header228.split ]
  %260 = add nuw nsw i64 %polly.indvar255, %166
  %polly.access.mul.call1259 = mul nsw i64 %260, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %97, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %225
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
  %indvar1445 = phi i64 [ %indvar.next1446, %polly.loop_exit404 ], [ 0, %polly.start308 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 1, %polly.start308 ]
  %261 = add i64 %indvar1445, 1
  %262 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %262
  %min.iters.check1447 = icmp ult i64 %261, 4
  br i1 %min.iters.check1447, label %polly.loop_header402.preheader, label %vector.ph1448

vector.ph1448:                                    ; preds = %polly.loop_header396
  %n.vec1450 = and i64 %261, -4
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %vector.ph1448
  %index1451 = phi i64 [ 0, %vector.ph1448 ], [ %index.next1452, %vector.body1444 ]
  %263 = shl nuw nsw i64 %index1451, 3
  %264 = getelementptr i8, i8* %scevgep408, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  %wide.load1455 = load <4 x double>, <4 x double>* %265, align 8, !alias.scope !92, !noalias !94
  %266 = fmul fast <4 x double> %wide.load1455, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %267 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %266, <4 x double>* %267, align 8, !alias.scope !92, !noalias !94
  %index.next1452 = add i64 %index1451, 4
  %268 = icmp eq i64 %index.next1452, %n.vec1450
  br i1 %268, label %middle.block1442, label %vector.body1444, !llvm.loop !99

middle.block1442:                                 ; preds = %vector.body1444
  %cmp.n1454 = icmp eq i64 %261, %n.vec1450
  br i1 %cmp.n1454, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header396, %middle.block1442
  %polly.indvar405.ph = phi i64 [ 0, %polly.loop_header396 ], [ %n.vec1450, %middle.block1442 ]
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402, %middle.block1442
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next400, 1200
  %indvar.next1446 = add i64 %indvar1445, 1
  br i1 %exitcond1130.not, label %polly.loop_header412.preheader, label %polly.loop_header396

polly.loop_header412.preheader:                   ; preds = %polly.loop_exit404
  %Packed_MemRef_call1311 = bitcast i8* %malloccall310 to double*
  %Packed_MemRef_call2313 = bitcast i8* %malloccall312 to double*
  %scevgep1488 = getelementptr i8, i8* %malloccall310, i64 19200
  %scevgep1489 = getelementptr i8, i8* %malloccall310, i64 19208
  %scevgep1523 = getelementptr i8, i8* %malloccall310, i64 9600
  %scevgep1524 = getelementptr i8, i8* %malloccall310, i64 9608
  %scevgep1558 = getelementptr i8, i8* %malloccall310, i64 8
  br label %polly.loop_header412

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_header402
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_header402 ], [ %polly.indvar405.ph, %polly.loop_header402.preheader ]
  %269 = shl nuw nsw i64 %polly.indvar405, 3
  %scevgep409 = getelementptr i8, i8* %scevgep408, i64 %269
  %scevgep409410 = bitcast i8* %scevgep409 to double*
  %_p_scalar_411 = load double, double* %scevgep409410, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_411, 1.200000e+00
  store double %p_mul.i57, double* %scevgep409410, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1129.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !100

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit420 ], [ 0, %polly.loop_header412.preheader ]
  %270 = shl nsw i64 %polly.indvar415, 2
  %271 = or i64 %270, 1
  %272 = or i64 %270, 2
  %273 = or i64 %270, 3
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar_next416, 250
  br i1 %exitcond1128.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit443 ], [ 4, %polly.loop_header412 ]
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %274 = mul nsw i64 %polly.indvar421, -4
  %275 = add nuw i64 %polly.indvar421, 4
  %276 = udiv i64 %275, 5
  %277 = mul nuw nsw i64 %276, 20
  %278 = add i64 %274, %277
  %279 = shl nuw nsw i64 %polly.indvar421, 2
  %280 = sub nsw i64 %279, %277
  %281 = shl nuw nsw i64 %polly.indvar421, 11
  %282 = mul nsw i64 %polly.indvar421, -4
  %283 = add nuw i64 %polly.indvar421, 4
  %284 = udiv i64 %283, 5
  %285 = mul nuw nsw i64 %284, 20
  %286 = add i64 %282, %285
  %287 = mul nuw nsw i64 %polly.indvar421, 260
  %288 = sub nsw i64 %287, %285
  %289 = or i64 %281, 8
  %290 = shl nuw nsw i64 %polly.indvar421, 2
  %291 = sub nsw i64 %290, %285
  %292 = mul nsw i64 %polly.indvar421, -4
  %293 = add nuw i64 %polly.indvar421, 4
  %294 = udiv i64 %293, 5
  %295 = mul nuw nsw i64 %294, 20
  %296 = add i64 %292, %295
  %297 = shl nuw nsw i64 %polly.indvar421, 2
  %298 = sub nsw i64 %297, %295
  %299 = shl nuw nsw i64 %polly.indvar421, 11
  %300 = mul nsw i64 %polly.indvar421, -4
  %301 = add nuw i64 %polly.indvar421, 4
  %302 = udiv i64 %301, 5
  %303 = mul nuw nsw i64 %302, 20
  %304 = add i64 %300, %303
  %305 = mul nuw nsw i64 %polly.indvar421, 260
  %306 = sub nsw i64 %305, %303
  %307 = or i64 %299, 8
  %308 = shl nuw nsw i64 %polly.indvar421, 2
  %309 = sub nsw i64 %308, %303
  %310 = mul nsw i64 %polly.indvar421, -4
  %311 = add nuw i64 %polly.indvar421, 4
  %312 = udiv i64 %311, 5
  %313 = mul nuw nsw i64 %312, 20
  %314 = add i64 %310, %313
  %315 = shl nuw nsw i64 %polly.indvar421, 2
  %316 = sub nsw i64 %315, %313
  %317 = shl nuw nsw i64 %polly.indvar421, 11
  %318 = mul nsw i64 %polly.indvar421, -4
  %319 = add nuw i64 %polly.indvar421, 4
  %320 = udiv i64 %319, 5
  %321 = mul nuw nsw i64 %320, 20
  %322 = add i64 %318, %321
  %323 = mul nuw nsw i64 %polly.indvar421, 260
  %324 = sub nsw i64 %323, %321
  %325 = or i64 %317, 8
  %326 = shl nuw nsw i64 %polly.indvar421, 2
  %327 = sub nsw i64 %326, %321
  %328 = mul nsw i64 %polly.indvar421, -4
  %329 = add nuw i64 %polly.indvar421, 4
  %330 = udiv i64 %329, 5
  %331 = mul nuw nsw i64 %330, 20
  %332 = add i64 %328, %331
  %333 = shl nuw nsw i64 %polly.indvar421, 2
  %334 = sub nsw i64 %333, %331
  %335 = udiv i64 %indvars.iv1113, 5
  %336 = mul nuw nsw i64 %335, 20
  %337 = add i64 %indvars.iv1111, %336
  %338 = sub nsw i64 %indvars.iv1118, %336
  %339 = shl nsw i64 %polly.indvar421, 8
  br label %polly.loop_header430

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -256
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -4
  %indvars.iv.next1114 = add nuw nsw i64 %indvars.iv1113, 1
  %indvars.iv.next1119 = add nuw nsw i64 %indvars.iv1118, 4
  %exitcond1127.not = icmp eq i64 %polly.indvar_next422, 5
  br i1 %exitcond1127.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header430:                             ; preds = %polly.loop_header430, %polly.loop_header418
  %polly.indvar433 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next434, %polly.loop_header430 ]
  %340 = add nuw nsw i64 %polly.indvar433, %339
  %polly.access.mul.call2437 = mul nuw nsw i64 %340, 1000
  %polly.access.add.call2438 = add nuw nsw i64 %270, %polly.access.mul.call2437
  %polly.access.call2439 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438
  %polly.access.call2439.load = load double, double* %polly.access.call2439, align 8, !alias.scope !96, !noalias !101
  %polly.access.Packed_MemRef_call2313 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.indvar433
  store double %polly.access.call2439.load, double* %polly.access.Packed_MemRef_call2313, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1104
  br i1 %exitcond1106.not, label %polly.loop_header430.1, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit432.3
  %indvar1459 = phi i64 [ %indvar.next1460, %polly.loop_exit482 ], [ 0, %polly.loop_exit432.3 ]
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit482 ], [ %338, %polly.loop_exit432.3 ]
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit482 ], [ %337, %polly.loop_exit432.3 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %801, %polly.loop_exit432.3 ]
  %341 = mul nsw i64 %indvar1459, -20
  %342 = add i64 %278, %341
  %smax1567 = call i64 @llvm.smax.i64(i64 %342, i64 0)
  %343 = mul nuw nsw i64 %indvar1459, 20
  %344 = add i64 %280, %343
  %345 = add i64 %smax1567, %344
  %346 = mul nsw i64 %indvar1459, -20
  %347 = add i64 %286, %346
  %smax1551 = call i64 @llvm.smax.i64(i64 %347, i64 0)
  %348 = mul nuw nsw i64 %indvar1459, 20
  %349 = add i64 %288, %348
  %350 = add i64 %smax1551, %349
  %351 = mul nsw i64 %350, 9600
  %352 = add i64 %281, %351
  %353 = add i64 %289, %351
  %354 = add i64 %291, %348
  %355 = add i64 %smax1551, %354
  %356 = mul nsw i64 %indvar1459, -20
  %357 = add i64 %296, %356
  %smax1533 = call i64 @llvm.smax.i64(i64 %357, i64 0)
  %358 = mul nuw nsw i64 %indvar1459, 20
  %359 = add i64 %298, %358
  %360 = add i64 %smax1533, %359
  %361 = mul nsw i64 %indvar1459, -20
  %362 = add i64 %304, %361
  %smax1516 = call i64 @llvm.smax.i64(i64 %362, i64 0)
  %363 = mul nuw nsw i64 %indvar1459, 20
  %364 = add i64 %306, %363
  %365 = add i64 %smax1516, %364
  %366 = mul nsw i64 %365, 9600
  %367 = add i64 %299, %366
  %368 = add i64 %307, %366
  %369 = add i64 %309, %363
  %370 = add i64 %smax1516, %369
  %371 = mul nsw i64 %indvar1459, -20
  %372 = add i64 %314, %371
  %smax1498 = call i64 @llvm.smax.i64(i64 %372, i64 0)
  %373 = mul nuw nsw i64 %indvar1459, 20
  %374 = add i64 %316, %373
  %375 = add i64 %smax1498, %374
  %376 = mul nsw i64 %indvar1459, -20
  %377 = add i64 %322, %376
  %smax1481 = call i64 @llvm.smax.i64(i64 %377, i64 0)
  %378 = mul nuw nsw i64 %indvar1459, 20
  %379 = add i64 %324, %378
  %380 = add i64 %smax1481, %379
  %381 = mul nsw i64 %380, 9600
  %382 = add i64 %317, %381
  %383 = add i64 %325, %381
  %384 = add i64 %327, %378
  %385 = add i64 %smax1481, %384
  %386 = mul nsw i64 %indvar1459, -20
  %387 = add i64 %332, %386
  %smax1461 = call i64 @llvm.smax.i64(i64 %387, i64 0)
  %388 = mul nuw nsw i64 %indvar1459, 20
  %389 = add i64 %334, %388
  %390 = add i64 %smax1461, %389
  %smax1117 = call i64 @llvm.smax.i64(i64 %indvars.iv1115, i64 0)
  %391 = add i64 %smax1117, %indvars.iv1120
  %392 = mul nsw i64 %polly.indvar444, 20
  %393 = add nsw i64 %392, %798
  %394 = add nsw i64 %393, -1
  %.inv942 = icmp sgt i64 %393, 255
  %395 = select i1 %.inv942, i64 255, i64 %394
  %polly.loop_guard457 = icmp sgt i64 %395, -1
  %396 = icmp sgt i64 %393, 0
  %397 = select i1 %396, i64 %393, i64 0
  %398 = add nsw i64 %393, 19
  %polly.loop_guard469.not = icmp sgt i64 %397, %398
  br i1 %polly.loop_guard457, label %polly.loop_header454.us, label %polly.loop_header441.split

polly.loop_header454.us:                          ; preds = %polly.loop_header441, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header441 ]
  %399 = add nuw nsw i64 %polly.indvar458.us, %339
  %polly.access.mul.call1462.us = mul nuw nsw i64 %399, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %270, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar458.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar458.us, %395
  br i1 %exitcond1109.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %397, %polly.loop_exit456.loopexit.us ]
  %400 = add nuw nsw i64 %polly.indvar470.us, %339
  %polly.access.mul.call1474.us = mul nsw i64 %400, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %270, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311479.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar470.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1311479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %398
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_header454.us.1.preheader

polly.loop_exit456.loopexit.us:                   ; preds = %polly.loop_header454.us
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.1.preheader, label %polly.loop_header466.us

polly.loop_header454.us.1.preheader:              ; preds = %polly.loop_header466.us, %polly.loop_exit456.loopexit.us
  br label %polly.loop_header454.us.1

polly.loop_header441.split:                       ; preds = %polly.loop_header441
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466

polly.loop_exit482:                               ; preds = %polly.loop_exit497.us.3, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp slt i64 %polly.indvar444, 59
  %indvars.iv.next1116 = add i64 %indvars.iv1115, -20
  %indvars.iv.next1121 = add i64 %indvars.iv1120, 20
  %indvar.next1460 = add i64 %indvar1459, 1
  br i1 %polly.loop_cond446, label %polly.loop_header441, label %polly.loop_exit443

polly.loop_header480.preheader:                   ; preds = %polly.loop_header466.3, %polly.loop_header466.us.3, %polly.loop_exit456.loopexit.us.3, %polly.loop_header441.split
  %401 = sub nsw i64 %339, %392
  %402 = icmp sgt i64 %401, 0
  %403 = select i1 %402, i64 %401, i64 0
  %polly.loop_guard490 = icmp slt i64 %403, 20
  br i1 %polly.loop_guard490, label %polly.loop_header487.us, label %polly.loop_exit482

polly.loop_header487.us:                          ; preds = %polly.loop_header480.preheader, %polly.loop_exit497.us
  %indvar1552 = phi i64 [ %indvar.next1553, %polly.loop_exit497.us ], [ 0, %polly.loop_header480.preheader ]
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit497.us ], [ %391, %polly.loop_header480.preheader ]
  %polly.indvar491.us = phi i64 [ %polly.indvar_next492.us, %polly.loop_exit497.us ], [ %403, %polly.loop_header480.preheader ]
  %404 = add i64 %345, %indvar1552
  %smin1568 = call i64 @llvm.smin.i64(i64 %404, i64 255)
  %405 = add nsw i64 %smin1568, 1
  %406 = mul nuw nsw i64 %indvar1552, 9600
  %407 = add i64 %352, %406
  %scevgep1554 = getelementptr i8, i8* %call, i64 %407
  %408 = add i64 %353, %406
  %scevgep1555 = getelementptr i8, i8* %call, i64 %408
  %409 = add i64 %355, %indvar1552
  %smin1556 = call i64 @llvm.smin.i64(i64 %409, i64 255)
  %410 = shl nsw i64 %smin1556, 3
  %scevgep1557 = getelementptr i8, i8* %scevgep1555, i64 %410
  %scevgep1559 = getelementptr i8, i8* %scevgep1558, i64 %410
  %smin1124 = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 255)
  %411 = add nsw i64 %polly.indvar491.us, %393
  %polly.loop_guard498.us1196 = icmp sgt i64 %411, -1
  br i1 %polly.loop_guard498.us1196, label %polly.loop_header495.preheader.us, label %polly.loop_exit497.us

polly.loop_header495.us:                          ; preds = %polly.loop_header495.us.preheader, %polly.loop_header495.us
  %polly.indvar499.us = phi i64 [ %polly.indvar_next500.us, %polly.loop_header495.us ], [ %polly.indvar499.us.ph, %polly.loop_header495.us.preheader ]
  %412 = add nuw nsw i64 %polly.indvar499.us, %339
  %polly.access.Packed_MemRef_call1311504.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar499.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1311504.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %polly.access.Packed_MemRef_call2313512.us = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.indvar499.us
  %_p_scalar_513.us = load double, double* %polly.access.Packed_MemRef_call2313512.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_517.us, %_p_scalar_513.us
  %413 = shl i64 %412, 3
  %414 = add i64 %413, %416
  %scevgep518.us = getelementptr i8, i8* %call, i64 %414
  %scevgep518519.us = bitcast i8* %scevgep518.us to double*
  %_p_scalar_520.us = load double, double* %scevgep518519.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_520.us
  store double %p_add42.i79.us, double* %scevgep518519.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.us = add nuw nsw i64 %polly.indvar499.us, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar499.us, %smin1124
  br i1 %exitcond1125.not, label %polly.loop_exit497.us, label %polly.loop_header495.us, !llvm.loop !103

polly.loop_exit497.us:                            ; preds = %polly.loop_header495.us, %middle.block1564, %polly.loop_header487.us
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %polly.loop_cond493.us = icmp ult i64 %polly.indvar491.us, 19
  %indvars.iv.next1123 = add i64 %indvars.iv1122, 1
  %indvar.next1553 = add i64 %indvar1552, 1
  br i1 %polly.loop_cond493.us, label %polly.loop_header487.us, label %polly.loop_header487.us.1

polly.loop_header495.preheader.us:                ; preds = %polly.loop_header487.us
  %415 = add nsw i64 %polly.indvar491.us, %392
  %polly.access.Packed_MemRef_call2313508.us = getelementptr double, double* %Packed_MemRef_call2313, i64 %411
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call2313508.us, align 8
  %polly.access.Packed_MemRef_call1311516.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %411
  %_p_scalar_517.us = load double, double* %polly.access.Packed_MemRef_call1311516.us, align 8
  %416 = mul i64 %415, 9600
  %min.iters.check1569 = icmp ult i64 %405, 4
  br i1 %min.iters.check1569, label %polly.loop_header495.us.preheader, label %vector.memcheck1550

vector.memcheck1550:                              ; preds = %polly.loop_header495.preheader.us
  %bound01560 = icmp ult i8* %scevgep1554, %scevgep1559
  %bound11561 = icmp ult i8* %malloccall310, %scevgep1557
  %found.conflict1562 = and i1 %bound01560, %bound11561
  br i1 %found.conflict1562, label %polly.loop_header495.us.preheader, label %vector.ph1570

vector.ph1570:                                    ; preds = %vector.memcheck1550
  %n.vec1572 = and i64 %405, -4
  %broadcast.splatinsert1578 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1579 = shufflevector <4 x double> %broadcast.splatinsert1578, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1581 = insertelement <4 x double> poison, double %_p_scalar_517.us, i32 0
  %broadcast.splat1582 = shufflevector <4 x double> %broadcast.splatinsert1581, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1566

vector.body1566:                                  ; preds = %vector.body1566, %vector.ph1570
  %index1573 = phi i64 [ 0, %vector.ph1570 ], [ %index.next1574, %vector.body1566 ]
  %417 = add nuw nsw i64 %index1573, %339
  %418 = getelementptr double, double* %Packed_MemRef_call1311, i64 %index1573
  %419 = bitcast double* %418 to <4 x double>*
  %wide.load1577 = load <4 x double>, <4 x double>* %419, align 8, !alias.scope !104
  %420 = fmul fast <4 x double> %broadcast.splat1579, %wide.load1577
  %421 = getelementptr double, double* %Packed_MemRef_call2313, i64 %index1573
  %422 = bitcast double* %421 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %422, align 8
  %423 = fmul fast <4 x double> %broadcast.splat1582, %wide.load1580
  %424 = shl i64 %417, 3
  %425 = add i64 %424, %416
  %426 = getelementptr i8, i8* %call, i64 %425
  %427 = bitcast i8* %426 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %427, align 8, !alias.scope !107, !noalias !109
  %428 = fadd fast <4 x double> %423, %420
  %429 = fmul fast <4 x double> %428, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %430 = fadd fast <4 x double> %429, %wide.load1583
  %431 = bitcast i8* %426 to <4 x double>*
  store <4 x double> %430, <4 x double>* %431, align 8, !alias.scope !107, !noalias !109
  %index.next1574 = add i64 %index1573, 4
  %432 = icmp eq i64 %index.next1574, %n.vec1572
  br i1 %432, label %middle.block1564, label %vector.body1566, !llvm.loop !110

middle.block1564:                                 ; preds = %vector.body1566
  %cmp.n1576 = icmp eq i64 %405, %n.vec1572
  br i1 %cmp.n1576, label %polly.loop_exit497.us, label %polly.loop_header495.us.preheader

polly.loop_header495.us.preheader:                ; preds = %vector.memcheck1550, %polly.loop_header495.preheader.us, %middle.block1564
  %polly.indvar499.us.ph = phi i64 [ 0, %vector.memcheck1550 ], [ 0, %polly.loop_header495.preheader.us ], [ %n.vec1572, %middle.block1564 ]
  br label %polly.loop_header495.us

polly.loop_header466:                             ; preds = %polly.loop_header441.split, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %397, %polly.loop_header441.split ]
  %433 = add nuw nsw i64 %polly.indvar470, %339
  %polly.access.mul.call1474 = mul nsw i64 %433, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %270, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar470
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %398
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
  %434 = add i64 %indvar, 1
  %435 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %435
  %min.iters.check1293 = icmp ult i64 %434, 4
  br i1 %min.iters.check1293, label %polly.loop_header617.preheader, label %vector.ph1294

vector.ph1294:                                    ; preds = %polly.loop_header611
  %n.vec1296 = and i64 %434, -4
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %vector.ph1294
  %index1297 = phi i64 [ 0, %vector.ph1294 ], [ %index.next1298, %vector.body1292 ]
  %436 = shl nuw nsw i64 %index1297, 3
  %437 = getelementptr i8, i8* %scevgep623, i64 %436
  %438 = bitcast i8* %437 to <4 x double>*
  %wide.load1301 = load <4 x double>, <4 x double>* %438, align 8, !alias.scope !111, !noalias !113
  %439 = fmul fast <4 x double> %wide.load1301, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %440 = bitcast i8* %437 to <4 x double>*
  store <4 x double> %439, <4 x double>* %440, align 8, !alias.scope !111, !noalias !113
  %index.next1298 = add i64 %index1297, 4
  %441 = icmp eq i64 %index.next1298, %n.vec1296
  br i1 %441, label %middle.block1290, label %vector.body1292, !llvm.loop !118

middle.block1290:                                 ; preds = %vector.body1292
  %cmp.n1300 = icmp eq i64 %434, %n.vec1296
  br i1 %cmp.n1300, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1290
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1296, %middle.block1290 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1290
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1157.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  %scevgep1334 = getelementptr i8, i8* %malloccall525, i64 19200
  %scevgep1335 = getelementptr i8, i8* %malloccall525, i64 19208
  %scevgep1369 = getelementptr i8, i8* %malloccall525, i64 9600
  %scevgep1370 = getelementptr i8, i8* %malloccall525, i64 9608
  %scevgep1404 = getelementptr i8, i8* %malloccall525, i64 8
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %442 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %442
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !111, !noalias !113
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1156.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !119

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %443 = shl nsw i64 %polly.indvar630, 2
  %444 = or i64 %443, 1
  %445 = or i64 %443, 2
  %446 = or i64 %443, 3
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next631, 250
  br i1 %exitcond1155.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit658 ], [ 4, %polly.loop_header627 ]
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %447 = mul nsw i64 %polly.indvar636, -4
  %448 = add nuw i64 %polly.indvar636, 4
  %449 = udiv i64 %448, 5
  %450 = mul nuw nsw i64 %449, 20
  %451 = add i64 %447, %450
  %452 = shl nuw nsw i64 %polly.indvar636, 2
  %453 = sub nsw i64 %452, %450
  %454 = shl nuw nsw i64 %polly.indvar636, 11
  %455 = mul nsw i64 %polly.indvar636, -4
  %456 = add nuw i64 %polly.indvar636, 4
  %457 = udiv i64 %456, 5
  %458 = mul nuw nsw i64 %457, 20
  %459 = add i64 %455, %458
  %460 = mul nuw nsw i64 %polly.indvar636, 260
  %461 = sub nsw i64 %460, %458
  %462 = or i64 %454, 8
  %463 = shl nuw nsw i64 %polly.indvar636, 2
  %464 = sub nsw i64 %463, %458
  %465 = mul nsw i64 %polly.indvar636, -4
  %466 = add nuw i64 %polly.indvar636, 4
  %467 = udiv i64 %466, 5
  %468 = mul nuw nsw i64 %467, 20
  %469 = add i64 %465, %468
  %470 = shl nuw nsw i64 %polly.indvar636, 2
  %471 = sub nsw i64 %470, %468
  %472 = shl nuw nsw i64 %polly.indvar636, 11
  %473 = mul nsw i64 %polly.indvar636, -4
  %474 = add nuw i64 %polly.indvar636, 4
  %475 = udiv i64 %474, 5
  %476 = mul nuw nsw i64 %475, 20
  %477 = add i64 %473, %476
  %478 = mul nuw nsw i64 %polly.indvar636, 260
  %479 = sub nsw i64 %478, %476
  %480 = or i64 %472, 8
  %481 = shl nuw nsw i64 %polly.indvar636, 2
  %482 = sub nsw i64 %481, %476
  %483 = mul nsw i64 %polly.indvar636, -4
  %484 = add nuw i64 %polly.indvar636, 4
  %485 = udiv i64 %484, 5
  %486 = mul nuw nsw i64 %485, 20
  %487 = add i64 %483, %486
  %488 = shl nuw nsw i64 %polly.indvar636, 2
  %489 = sub nsw i64 %488, %486
  %490 = shl nuw nsw i64 %polly.indvar636, 11
  %491 = mul nsw i64 %polly.indvar636, -4
  %492 = add nuw i64 %polly.indvar636, 4
  %493 = udiv i64 %492, 5
  %494 = mul nuw nsw i64 %493, 20
  %495 = add i64 %491, %494
  %496 = mul nuw nsw i64 %polly.indvar636, 260
  %497 = sub nsw i64 %496, %494
  %498 = or i64 %490, 8
  %499 = shl nuw nsw i64 %polly.indvar636, 2
  %500 = sub nsw i64 %499, %494
  %501 = mul nsw i64 %polly.indvar636, -4
  %502 = add nuw i64 %polly.indvar636, 4
  %503 = udiv i64 %502, 5
  %504 = mul nuw nsw i64 %503, 20
  %505 = add i64 %501, %504
  %506 = shl nuw nsw i64 %polly.indvar636, 2
  %507 = sub nsw i64 %506, %504
  %508 = udiv i64 %indvars.iv1140, 5
  %509 = mul nuw nsw i64 %508, 20
  %510 = add i64 %indvars.iv1138, %509
  %511 = sub nsw i64 %indvars.iv1145, %509
  %512 = shl nsw i64 %polly.indvar636, 8
  br label %polly.loop_header645

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1132 = add nsw i64 %indvars.iv1131, -256
  %indvars.iv.next1139 = add nsw i64 %indvars.iv1138, -4
  %indvars.iv.next1141 = add nuw nsw i64 %indvars.iv1140, 1
  %indvars.iv.next1146 = add nuw nsw i64 %indvars.iv1145, 4
  %exitcond1154.not = icmp eq i64 %polly.indvar_next637, 5
  br i1 %exitcond1154.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header633
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %513 = add nuw nsw i64 %polly.indvar648, %512
  %polly.access.mul.call2652 = mul nuw nsw i64 %513, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %443, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !115, !noalias !120
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar648
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1131
  br i1 %exitcond1133.not, label %polly.loop_header645.1, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit647.3
  %indvar1305 = phi i64 [ %indvar.next1306, %polly.loop_exit697 ], [ 0, %polly.loop_exit647.3 ]
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit697 ], [ %511, %polly.loop_exit647.3 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit697 ], [ %510, %polly.loop_exit647.3 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %902, %polly.loop_exit647.3 ]
  %514 = mul nsw i64 %indvar1305, -20
  %515 = add i64 %451, %514
  %smax1413 = call i64 @llvm.smax.i64(i64 %515, i64 0)
  %516 = mul nuw nsw i64 %indvar1305, 20
  %517 = add i64 %453, %516
  %518 = add i64 %smax1413, %517
  %519 = mul nsw i64 %indvar1305, -20
  %520 = add i64 %459, %519
  %smax1397 = call i64 @llvm.smax.i64(i64 %520, i64 0)
  %521 = mul nuw nsw i64 %indvar1305, 20
  %522 = add i64 %461, %521
  %523 = add i64 %smax1397, %522
  %524 = mul nsw i64 %523, 9600
  %525 = add i64 %454, %524
  %526 = add i64 %462, %524
  %527 = add i64 %464, %521
  %528 = add i64 %smax1397, %527
  %529 = mul nsw i64 %indvar1305, -20
  %530 = add i64 %469, %529
  %smax1379 = call i64 @llvm.smax.i64(i64 %530, i64 0)
  %531 = mul nuw nsw i64 %indvar1305, 20
  %532 = add i64 %471, %531
  %533 = add i64 %smax1379, %532
  %534 = mul nsw i64 %indvar1305, -20
  %535 = add i64 %477, %534
  %smax1362 = call i64 @llvm.smax.i64(i64 %535, i64 0)
  %536 = mul nuw nsw i64 %indvar1305, 20
  %537 = add i64 %479, %536
  %538 = add i64 %smax1362, %537
  %539 = mul nsw i64 %538, 9600
  %540 = add i64 %472, %539
  %541 = add i64 %480, %539
  %542 = add i64 %482, %536
  %543 = add i64 %smax1362, %542
  %544 = mul nsw i64 %indvar1305, -20
  %545 = add i64 %487, %544
  %smax1344 = call i64 @llvm.smax.i64(i64 %545, i64 0)
  %546 = mul nuw nsw i64 %indvar1305, 20
  %547 = add i64 %489, %546
  %548 = add i64 %smax1344, %547
  %549 = mul nsw i64 %indvar1305, -20
  %550 = add i64 %495, %549
  %smax1327 = call i64 @llvm.smax.i64(i64 %550, i64 0)
  %551 = mul nuw nsw i64 %indvar1305, 20
  %552 = add i64 %497, %551
  %553 = add i64 %smax1327, %552
  %554 = mul nsw i64 %553, 9600
  %555 = add i64 %490, %554
  %556 = add i64 %498, %554
  %557 = add i64 %500, %551
  %558 = add i64 %smax1327, %557
  %559 = mul nsw i64 %indvar1305, -20
  %560 = add i64 %505, %559
  %smax1307 = call i64 @llvm.smax.i64(i64 %560, i64 0)
  %561 = mul nuw nsw i64 %indvar1305, 20
  %562 = add i64 %507, %561
  %563 = add i64 %smax1307, %562
  %smax1144 = call i64 @llvm.smax.i64(i64 %indvars.iv1142, i64 0)
  %564 = add i64 %smax1144, %indvars.iv1147
  %565 = mul nsw i64 %polly.indvar659, 20
  %566 = add nsw i64 %565, %899
  %567 = add nsw i64 %566, -1
  %.inv943 = icmp sgt i64 %566, 255
  %568 = select i1 %.inv943, i64 255, i64 %567
  %polly.loop_guard672 = icmp sgt i64 %568, -1
  %569 = icmp sgt i64 %566, 0
  %570 = select i1 %569, i64 %566, i64 0
  %571 = add nsw i64 %566, 19
  %polly.loop_guard684.not = icmp sgt i64 %570, %571
  br i1 %polly.loop_guard672, label %polly.loop_header669.us, label %polly.loop_header656.split

polly.loop_header669.us:                          ; preds = %polly.loop_header656, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header656 ]
  %572 = add nuw nsw i64 %polly.indvar673.us, %512
  %polly.access.mul.call1677.us = mul nuw nsw i64 %572, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %443, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar673.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar673.us, %568
  br i1 %exitcond1136.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %570, %polly.loop_exit671.loopexit.us ]
  %573 = add nuw nsw i64 %polly.indvar685.us, %512
  %polly.access.mul.call1689.us = mul nsw i64 %573, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %443, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar685.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %571
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_header669.us.1.preheader

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.1.preheader, label %polly.loop_header681.us

polly.loop_header669.us.1.preheader:              ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  br label %polly.loop_header669.us.1

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header681

polly.loop_exit697:                               ; preds = %polly.loop_exit712.us.3, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp slt i64 %polly.indvar659, 59
  %indvars.iv.next1143 = add i64 %indvars.iv1142, -20
  %indvars.iv.next1148 = add i64 %indvars.iv1147, 20
  %indvar.next1306 = add i64 %indvar1305, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header695.preheader:                   ; preds = %polly.loop_header681.3, %polly.loop_header681.us.3, %polly.loop_exit671.loopexit.us.3, %polly.loop_header656.split
  %574 = sub nsw i64 %512, %565
  %575 = icmp sgt i64 %574, 0
  %576 = select i1 %575, i64 %574, i64 0
  %polly.loop_guard705 = icmp slt i64 %576, 20
  br i1 %polly.loop_guard705, label %polly.loop_header702.us, label %polly.loop_exit697

polly.loop_header702.us:                          ; preds = %polly.loop_header695.preheader, %polly.loop_exit712.us
  %indvar1398 = phi i64 [ %indvar.next1399, %polly.loop_exit712.us ], [ 0, %polly.loop_header695.preheader ]
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit712.us ], [ %564, %polly.loop_header695.preheader ]
  %polly.indvar706.us = phi i64 [ %polly.indvar_next707.us, %polly.loop_exit712.us ], [ %576, %polly.loop_header695.preheader ]
  %577 = add i64 %518, %indvar1398
  %smin1414 = call i64 @llvm.smin.i64(i64 %577, i64 255)
  %578 = add nsw i64 %smin1414, 1
  %579 = mul nuw nsw i64 %indvar1398, 9600
  %580 = add i64 %525, %579
  %scevgep1400 = getelementptr i8, i8* %call, i64 %580
  %581 = add i64 %526, %579
  %scevgep1401 = getelementptr i8, i8* %call, i64 %581
  %582 = add i64 %528, %indvar1398
  %smin1402 = call i64 @llvm.smin.i64(i64 %582, i64 255)
  %583 = shl nsw i64 %smin1402, 3
  %scevgep1403 = getelementptr i8, i8* %scevgep1401, i64 %583
  %scevgep1405 = getelementptr i8, i8* %scevgep1404, i64 %583
  %smin1151 = call i64 @llvm.smin.i64(i64 %indvars.iv1149, i64 255)
  %584 = add nsw i64 %polly.indvar706.us, %566
  %polly.loop_guard713.us1200 = icmp sgt i64 %584, -1
  br i1 %polly.loop_guard713.us1200, label %polly.loop_header710.preheader.us, label %polly.loop_exit712.us

polly.loop_header710.us:                          ; preds = %polly.loop_header710.us.preheader, %polly.loop_header710.us
  %polly.indvar714.us = phi i64 [ %polly.indvar_next715.us, %polly.loop_header710.us ], [ %polly.indvar714.us.ph, %polly.loop_header710.us.preheader ]
  %585 = add nuw nsw i64 %polly.indvar714.us, %512
  %polly.access.Packed_MemRef_call1526719.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar714.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call1526719.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_724.us, %_p_scalar_720.us
  %polly.access.Packed_MemRef_call2528727.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar714.us
  %_p_scalar_728.us = load double, double* %polly.access.Packed_MemRef_call2528727.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_732.us, %_p_scalar_728.us
  %586 = shl i64 %585, 3
  %587 = add i64 %586, %589
  %scevgep733.us = getelementptr i8, i8* %call, i64 %587
  %scevgep733734.us = bitcast i8* %scevgep733.us to double*
  %_p_scalar_735.us = load double, double* %scevgep733734.us, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_735.us
  store double %p_add42.i.us, double* %scevgep733734.us, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.us = add nuw nsw i64 %polly.indvar714.us, 1
  %exitcond1152.not = icmp eq i64 %polly.indvar714.us, %smin1151
  br i1 %exitcond1152.not, label %polly.loop_exit712.us, label %polly.loop_header710.us, !llvm.loop !122

polly.loop_exit712.us:                            ; preds = %polly.loop_header710.us, %middle.block1410, %polly.loop_header702.us
  %polly.indvar_next707.us = add nuw nsw i64 %polly.indvar706.us, 1
  %polly.loop_cond708.us = icmp ult i64 %polly.indvar706.us, 19
  %indvars.iv.next1150 = add i64 %indvars.iv1149, 1
  %indvar.next1399 = add i64 %indvar1398, 1
  br i1 %polly.loop_cond708.us, label %polly.loop_header702.us, label %polly.loop_header702.us.1

polly.loop_header710.preheader.us:                ; preds = %polly.loop_header702.us
  %588 = add nsw i64 %polly.indvar706.us, %565
  %polly.access.Packed_MemRef_call2528723.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %584
  %_p_scalar_724.us = load double, double* %polly.access.Packed_MemRef_call2528723.us, align 8
  %polly.access.Packed_MemRef_call1526731.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %584
  %_p_scalar_732.us = load double, double* %polly.access.Packed_MemRef_call1526731.us, align 8
  %589 = mul i64 %588, 9600
  %min.iters.check1415 = icmp ult i64 %578, 4
  br i1 %min.iters.check1415, label %polly.loop_header710.us.preheader, label %vector.memcheck1396

vector.memcheck1396:                              ; preds = %polly.loop_header710.preheader.us
  %bound01406 = icmp ult i8* %scevgep1400, %scevgep1405
  %bound11407 = icmp ult i8* %malloccall525, %scevgep1403
  %found.conflict1408 = and i1 %bound01406, %bound11407
  br i1 %found.conflict1408, label %polly.loop_header710.us.preheader, label %vector.ph1416

vector.ph1416:                                    ; preds = %vector.memcheck1396
  %n.vec1418 = and i64 %578, -4
  %broadcast.splatinsert1424 = insertelement <4 x double> poison, double %_p_scalar_724.us, i32 0
  %broadcast.splat1425 = shufflevector <4 x double> %broadcast.splatinsert1424, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1427 = insertelement <4 x double> poison, double %_p_scalar_732.us, i32 0
  %broadcast.splat1428 = shufflevector <4 x double> %broadcast.splatinsert1427, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1412

vector.body1412:                                  ; preds = %vector.body1412, %vector.ph1416
  %index1419 = phi i64 [ 0, %vector.ph1416 ], [ %index.next1420, %vector.body1412 ]
  %590 = add nuw nsw i64 %index1419, %512
  %591 = getelementptr double, double* %Packed_MemRef_call1526, i64 %index1419
  %592 = bitcast double* %591 to <4 x double>*
  %wide.load1423 = load <4 x double>, <4 x double>* %592, align 8, !alias.scope !123
  %593 = fmul fast <4 x double> %broadcast.splat1425, %wide.load1423
  %594 = getelementptr double, double* %Packed_MemRef_call2528, i64 %index1419
  %595 = bitcast double* %594 to <4 x double>*
  %wide.load1426 = load <4 x double>, <4 x double>* %595, align 8
  %596 = fmul fast <4 x double> %broadcast.splat1428, %wide.load1426
  %597 = shl i64 %590, 3
  %598 = add i64 %597, %589
  %599 = getelementptr i8, i8* %call, i64 %598
  %600 = bitcast i8* %599 to <4 x double>*
  %wide.load1429 = load <4 x double>, <4 x double>* %600, align 8, !alias.scope !126, !noalias !128
  %601 = fadd fast <4 x double> %596, %593
  %602 = fmul fast <4 x double> %601, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %603 = fadd fast <4 x double> %602, %wide.load1429
  %604 = bitcast i8* %599 to <4 x double>*
  store <4 x double> %603, <4 x double>* %604, align 8, !alias.scope !126, !noalias !128
  %index.next1420 = add i64 %index1419, 4
  %605 = icmp eq i64 %index.next1420, %n.vec1418
  br i1 %605, label %middle.block1410, label %vector.body1412, !llvm.loop !129

middle.block1410:                                 ; preds = %vector.body1412
  %cmp.n1422 = icmp eq i64 %578, %n.vec1418
  br i1 %cmp.n1422, label %polly.loop_exit712.us, label %polly.loop_header710.us.preheader

polly.loop_header710.us.preheader:                ; preds = %vector.memcheck1396, %polly.loop_header710.preheader.us, %middle.block1410
  %polly.indvar714.us.ph = phi i64 [ 0, %vector.memcheck1396 ], [ 0, %polly.loop_header710.preheader.us ], [ %n.vec1418, %middle.block1410 ]
  br label %polly.loop_header710.us

polly.loop_header681:                             ; preds = %polly.loop_header656.split, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %570, %polly.loop_header656.split ]
  %606 = add nuw nsw i64 %polly.indvar685, %512
  %polly.access.mul.call1689 = mul nsw i64 %606, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %443, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar685
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %571
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_header681.1

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %indvars.iv1182 = phi i64 [ %indvars.iv.next1183, %polly.loop_exit870 ], [ 0, %entry ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 -1168)
  %607 = shl nsw i64 %polly.indvar865, 5
  %608 = add nsw i64 %smin1184, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1183 = add nsw i64 %indvars.iv1182, -32
  %exitcond1187.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1187.not, label %polly.loop_header889, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %609 = mul nsw i64 %polly.indvar871, -32
  %smin1231 = call i64 @llvm.smin.i64(i64 %609, i64 -1168)
  %610 = add nsw i64 %smin1231, 1200
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1178, i64 -1168)
  %611 = shl nsw i64 %polly.indvar871, 5
  %612 = add nsw i64 %smin1180, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -32
  %exitcond1186.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1186.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %613 = add nuw nsw i64 %polly.indvar877, %607
  %614 = trunc i64 %613 to i32
  %615 = mul nuw nsw i64 %613, 9600
  %min.iters.check = icmp eq i64 %610, 0
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1232

vector.ph1232:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1239 = insertelement <4 x i64> poison, i64 %611, i32 0
  %broadcast.splat1240 = shufflevector <4 x i64> %broadcast.splatinsert1239, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1241 = insertelement <4 x i32> poison, i32 %614, i32 0
  %broadcast.splat1242 = shufflevector <4 x i32> %broadcast.splatinsert1241, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1232
  %index1233 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1234, %vector.body1230 ]
  %vec.ind1237 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1232 ], [ %vec.ind.next1238, %vector.body1230 ]
  %616 = add nuw nsw <4 x i64> %vec.ind1237, %broadcast.splat1240
  %617 = trunc <4 x i64> %616 to <4 x i32>
  %618 = mul <4 x i32> %broadcast.splat1242, %617
  %619 = add <4 x i32> %618, <i32 3, i32 3, i32 3, i32 3>
  %620 = urem <4 x i32> %619, <i32 1200, i32 1200, i32 1200, i32 1200>
  %621 = sitofp <4 x i32> %620 to <4 x double>
  %622 = fmul fast <4 x double> %621, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %623 = extractelement <4 x i64> %616, i32 0
  %624 = shl i64 %623, 3
  %625 = add nuw nsw i64 %624, %615
  %626 = getelementptr i8, i8* %call, i64 %625
  %627 = bitcast i8* %626 to <4 x double>*
  store <4 x double> %622, <4 x double>* %627, align 8, !alias.scope !130, !noalias !132
  %index.next1234 = add i64 %index1233, 4
  %vec.ind.next1238 = add <4 x i64> %vec.ind1237, <i64 4, i64 4, i64 4, i64 4>
  %628 = icmp eq i64 %index.next1234, %610
  br i1 %628, label %polly.loop_exit882, label %vector.body1230, !llvm.loop !135

polly.loop_exit882:                               ; preds = %vector.body1230, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar877, %608
  br i1 %exitcond1185.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %629 = add nuw nsw i64 %polly.indvar883, %611
  %630 = trunc i64 %629 to i32
  %631 = mul i32 %630, %614
  %632 = add i32 %631, 3
  %633 = urem i32 %632, 1200
  %p_conv31.i = sitofp i32 %633 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %634 = shl i64 %629, 3
  %635 = add nuw nsw i64 %634, %615
  %scevgep886 = getelementptr i8, i8* %call, i64 %635
  %scevgep886887 = bitcast i8* %scevgep886 to double*
  store double %p_div33.i, double* %scevgep886887, align 8, !alias.scope !130, !noalias !132
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar883, %612
  br i1 %exitcond1181.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !136

polly.loop_header889:                             ; preds = %polly.loop_exit870, %polly.loop_exit897
  %indvars.iv1172 = phi i64 [ %indvars.iv.next1173, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %smin1174 = call i64 @llvm.smin.i64(i64 %indvars.iv1172, i64 -1168)
  %636 = shl nsw i64 %polly.indvar892, 5
  %637 = add nsw i64 %smin1174, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1173 = add nsw i64 %indvars.iv1172, -32
  %exitcond1177.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1177.not, label %polly.loop_header915, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %638 = mul nsw i64 %polly.indvar898, -32
  %smin1246 = call i64 @llvm.smin.i64(i64 %638, i64 -968)
  %639 = add nsw i64 %smin1246, 1000
  %smin1170 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -968)
  %640 = shl nsw i64 %polly.indvar898, 5
  %641 = add nsw i64 %smin1170, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -32
  %exitcond1176.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1176.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %642 = add nuw nsw i64 %polly.indvar904, %636
  %643 = trunc i64 %642 to i32
  %644 = mul nuw nsw i64 %642, 8000
  %min.iters.check1247 = icmp eq i64 %639, 0
  br i1 %min.iters.check1247, label %polly.loop_header907, label %vector.ph1248

vector.ph1248:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1257 = insertelement <4 x i64> poison, i64 %640, i32 0
  %broadcast.splat1258 = shufflevector <4 x i64> %broadcast.splatinsert1257, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1259 = insertelement <4 x i32> poison, i32 %643, i32 0
  %broadcast.splat1260 = shufflevector <4 x i32> %broadcast.splatinsert1259, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1245 ]
  %vec.ind1255 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1248 ], [ %vec.ind.next1256, %vector.body1245 ]
  %645 = add nuw nsw <4 x i64> %vec.ind1255, %broadcast.splat1258
  %646 = trunc <4 x i64> %645 to <4 x i32>
  %647 = mul <4 x i32> %broadcast.splat1260, %646
  %648 = add <4 x i32> %647, <i32 2, i32 2, i32 2, i32 2>
  %649 = urem <4 x i32> %648, <i32 1000, i32 1000, i32 1000, i32 1000>
  %650 = sitofp <4 x i32> %649 to <4 x double>
  %651 = fmul fast <4 x double> %650, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %652 = extractelement <4 x i64> %645, i32 0
  %653 = shl i64 %652, 3
  %654 = add nuw nsw i64 %653, %644
  %655 = getelementptr i8, i8* %call2, i64 %654
  %656 = bitcast i8* %655 to <4 x double>*
  store <4 x double> %651, <4 x double>* %656, align 8, !alias.scope !134, !noalias !137
  %index.next1252 = add i64 %index1251, 4
  %vec.ind.next1256 = add <4 x i64> %vec.ind1255, <i64 4, i64 4, i64 4, i64 4>
  %657 = icmp eq i64 %index.next1252, %639
  br i1 %657, label %polly.loop_exit909, label %vector.body1245, !llvm.loop !138

polly.loop_exit909:                               ; preds = %vector.body1245, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar904, %637
  br i1 %exitcond1175.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %658 = add nuw nsw i64 %polly.indvar910, %640
  %659 = trunc i64 %658 to i32
  %660 = mul i32 %659, %643
  %661 = add i32 %660, 2
  %662 = urem i32 %661, 1000
  %p_conv10.i = sitofp i32 %662 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %663 = shl i64 %658, 3
  %664 = add nuw nsw i64 %663, %644
  %scevgep913 = getelementptr i8, i8* %call2, i64 %664
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div12.i, double* %scevgep913914, align 8, !alias.scope !134, !noalias !137
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar910, %641
  br i1 %exitcond1171.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !139

polly.loop_header915:                             ; preds = %polly.loop_exit897, %polly.loop_exit923
  %indvars.iv1162 = phi i64 [ %indvars.iv.next1163, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %smin1164 = call i64 @llvm.smin.i64(i64 %indvars.iv1162, i64 -1168)
  %665 = shl nsw i64 %polly.indvar918, 5
  %666 = add nsw i64 %smin1164, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1163 = add nsw i64 %indvars.iv1162, -32
  %exitcond1167.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1167.not, label %init_array.exit, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1158 = phi i64 [ %indvars.iv.next1159, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %667 = mul nsw i64 %polly.indvar924, -32
  %smin1264 = call i64 @llvm.smin.i64(i64 %667, i64 -968)
  %668 = add nsw i64 %smin1264, 1000
  %smin1160 = call i64 @llvm.smin.i64(i64 %indvars.iv1158, i64 -968)
  %669 = shl nsw i64 %polly.indvar924, 5
  %670 = add nsw i64 %smin1160, 999
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1159 = add nsw i64 %indvars.iv1158, -32
  %exitcond1166.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1166.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %671 = add nuw nsw i64 %polly.indvar930, %665
  %672 = trunc i64 %671 to i32
  %673 = mul nuw nsw i64 %671, 8000
  %min.iters.check1265 = icmp eq i64 %668, 0
  br i1 %min.iters.check1265, label %polly.loop_header933, label %vector.ph1266

vector.ph1266:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1275 = insertelement <4 x i64> poison, i64 %669, i32 0
  %broadcast.splat1276 = shufflevector <4 x i64> %broadcast.splatinsert1275, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1277 = insertelement <4 x i32> poison, i32 %672, i32 0
  %broadcast.splat1278 = shufflevector <4 x i32> %broadcast.splatinsert1277, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1263 ]
  %vec.ind1273 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1266 ], [ %vec.ind.next1274, %vector.body1263 ]
  %674 = add nuw nsw <4 x i64> %vec.ind1273, %broadcast.splat1276
  %675 = trunc <4 x i64> %674 to <4 x i32>
  %676 = mul <4 x i32> %broadcast.splat1278, %675
  %677 = add <4 x i32> %676, <i32 1, i32 1, i32 1, i32 1>
  %678 = urem <4 x i32> %677, <i32 1200, i32 1200, i32 1200, i32 1200>
  %679 = sitofp <4 x i32> %678 to <4 x double>
  %680 = fmul fast <4 x double> %679, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %681 = extractelement <4 x i64> %674, i32 0
  %682 = shl i64 %681, 3
  %683 = add nuw nsw i64 %682, %673
  %684 = getelementptr i8, i8* %call1, i64 %683
  %685 = bitcast i8* %684 to <4 x double>*
  store <4 x double> %680, <4 x double>* %685, align 8, !alias.scope !133, !noalias !140
  %index.next1270 = add i64 %index1269, 4
  %vec.ind.next1274 = add <4 x i64> %vec.ind1273, <i64 4, i64 4, i64 4, i64 4>
  %686 = icmp eq i64 %index.next1270, %668
  br i1 %686, label %polly.loop_exit935, label %vector.body1263, !llvm.loop !141

polly.loop_exit935:                               ; preds = %vector.body1263, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar930, %666
  br i1 %exitcond1165.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %687 = add nuw nsw i64 %polly.indvar936, %669
  %688 = trunc i64 %687 to i32
  %689 = mul i32 %688, %672
  %690 = add i32 %689, 1
  %691 = urem i32 %690, 1200
  %p_conv.i = sitofp i32 %691 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %692 = shl i64 %687, 3
  %693 = add nuw nsw i64 %692, %673
  %scevgep940 = getelementptr i8, i8* %call1, i64 %693
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div.i, double* %scevgep940941, align 8, !alias.scope !133, !noalias !140
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar936, %670
  br i1 %exitcond1161.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !142

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %694 = add nuw nsw i64 %polly.indvar221.1, %166
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %694, 1000
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
  %695 = add nuw nsw i64 %polly.indvar221.2, %166
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %695, 1000
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
  %696 = add nuw nsw i64 %polly.indvar221.3, %166
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %696, 1000
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
  %697 = mul nsw i64 %polly.indvar209, -256
  %698 = mul nuw nsw i64 %polly.indvar209, 13
  %699 = add nuw nsw i64 %polly.indvar209, 4
  %pexp.p_div_q = udiv i64 %699, 5
  %700 = sub nsw i64 %698, %pexp.p_div_q
  br label %polly.loop_header228

polly.loop_header251.1:                           ; preds = %polly.loop_header251, %polly.loop_header251.1
  %polly.indvar255.1 = phi i64 [ %polly.indvar_next256.1, %polly.loop_header251.1 ], [ %224, %polly.loop_header251 ]
  %701 = add nuw nsw i64 %polly.indvar255.1, %166
  %polly.access.mul.call1259.1 = mul nsw i64 %701, 1000
  %polly.access.add.call1260.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar255.1, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.indvar_next256.1 = add nuw nsw i64 %polly.indvar255.1, 1
  %polly.loop_cond257.not.not.1 = icmp slt i64 %polly.indvar255.1, %225
  br i1 %polly.loop_cond257.not.not.1, label %polly.loop_header251.1, label %polly.loop_header251.2

polly.loop_header251.2:                           ; preds = %polly.loop_header251.1, %polly.loop_header251.2
  %polly.indvar255.2 = phi i64 [ %polly.indvar_next256.2, %polly.loop_header251.2 ], [ %224, %polly.loop_header251.1 ]
  %702 = add nuw nsw i64 %polly.indvar255.2, %166
  %polly.access.mul.call1259.2 = mul nsw i64 %702, 1000
  %polly.access.add.call1260.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.indvar255.2, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.indvar_next256.2 = add nuw nsw i64 %polly.indvar255.2, 1
  %polly.loop_cond257.not.not.2 = icmp slt i64 %polly.indvar255.2, %225
  br i1 %polly.loop_cond257.not.not.2, label %polly.loop_header251.2, label %polly.loop_header251.3

polly.loop_header251.3:                           ; preds = %polly.loop_header251.2, %polly.loop_header251.3
  %polly.indvar255.3 = phi i64 [ %polly.indvar_next256.3, %polly.loop_header251.3 ], [ %224, %polly.loop_header251.2 ]
  %703 = add nuw nsw i64 %polly.indvar255.3, %166
  %polly.access.mul.call1259.3 = mul nsw i64 %703, 1000
  %polly.access.add.call1260.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.3 = add nuw nsw i64 %polly.indvar255.3, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  %polly.indvar_next256.3 = add nuw nsw i64 %polly.indvar255.3, 1
  %polly.loop_cond257.not.not.3 = icmp slt i64 %polly.indvar255.3, %225
  br i1 %polly.loop_cond257.not.not.3, label %polly.loop_header251.3, label %polly.loop_header265.preheader

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1.preheader, %polly.loop_header240.us.1
  %polly.indvar243.us.1 = phi i64 [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ], [ 0, %polly.loop_header240.us.1.preheader ]
  %704 = add nuw nsw i64 %polly.indvar243.us.1, %166
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %704, 1000
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next244.us.1 = add nuw i64 %polly.indvar243.us.1, 1
  %exitcond1084.1.not = icmp eq i64 %polly.indvar243.us.1, %222
  br i1 %exitcond1084.1.not, label %polly.loop_exit242.loopexit.us.1, label %polly.loop_header240.us.1

polly.loop_exit242.loopexit.us.1:                 ; preds = %polly.loop_header240.us.1
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.2.preheader, label %polly.loop_header251.us.1

polly.loop_header251.us.1:                        ; preds = %polly.loop_exit242.loopexit.us.1, %polly.loop_header251.us.1
  %polly.indvar255.us.1 = phi i64 [ %polly.indvar_next256.us.1, %polly.loop_header251.us.1 ], [ %224, %polly.loop_exit242.loopexit.us.1 ]
  %705 = add nuw nsw i64 %polly.indvar255.us.1, %166
  %polly.access.mul.call1259.us.1 = mul nsw i64 %705, 1000
  %polly.access.add.call1260.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.us.1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %polly.indvar_next256.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1
  %polly.loop_cond257.not.not.us.1 = icmp slt i64 %polly.indvar255.us.1, %225
  br i1 %polly.loop_cond257.not.not.us.1, label %polly.loop_header251.us.1, label %polly.loop_header240.us.2.preheader

polly.loop_header240.us.2.preheader:              ; preds = %polly.loop_header251.us.1, %polly.loop_exit242.loopexit.us.1
  br label %polly.loop_header240.us.2

polly.loop_header240.us.2:                        ; preds = %polly.loop_header240.us.2.preheader, %polly.loop_header240.us.2
  %polly.indvar243.us.2 = phi i64 [ %polly.indvar_next244.us.2, %polly.loop_header240.us.2 ], [ 0, %polly.loop_header240.us.2.preheader ]
  %706 = add nuw nsw i64 %polly.indvar243.us.2, %166
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %706, 1000
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar243.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next244.us.2 = add nuw i64 %polly.indvar243.us.2, 1
  %exitcond1084.2.not = icmp eq i64 %polly.indvar243.us.2, %222
  br i1 %exitcond1084.2.not, label %polly.loop_exit242.loopexit.us.2, label %polly.loop_header240.us.2

polly.loop_exit242.loopexit.us.2:                 ; preds = %polly.loop_header240.us.2
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.3.preheader, label %polly.loop_header251.us.2

polly.loop_header251.us.2:                        ; preds = %polly.loop_exit242.loopexit.us.2, %polly.loop_header251.us.2
  %polly.indvar255.us.2 = phi i64 [ %polly.indvar_next256.us.2, %polly.loop_header251.us.2 ], [ %224, %polly.loop_exit242.loopexit.us.2 ]
  %707 = add nuw nsw i64 %polly.indvar255.us.2, %166
  %polly.access.mul.call1259.us.2 = mul nsw i64 %707, 1000
  %polly.access.add.call1260.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.us.2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %polly.indvar_next256.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 1
  %polly.loop_cond257.not.not.us.2 = icmp slt i64 %polly.indvar255.us.2, %225
  br i1 %polly.loop_cond257.not.not.us.2, label %polly.loop_header251.us.2, label %polly.loop_header240.us.3.preheader

polly.loop_header240.us.3.preheader:              ; preds = %polly.loop_header251.us.2, %polly.loop_exit242.loopexit.us.2
  br label %polly.loop_header240.us.3

polly.loop_header240.us.3:                        ; preds = %polly.loop_header240.us.3.preheader, %polly.loop_header240.us.3
  %polly.indvar243.us.3 = phi i64 [ %polly.indvar_next244.us.3, %polly.loop_header240.us.3 ], [ 0, %polly.loop_header240.us.3.preheader ]
  %708 = add nuw nsw i64 %polly.indvar243.us.3, %166
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %708, 1000
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar243.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next244.us.3 = add nuw i64 %polly.indvar243.us.3, 1
  %exitcond1084.3.not = icmp eq i64 %polly.indvar243.us.3, %222
  br i1 %exitcond1084.3.not, label %polly.loop_exit242.loopexit.us.3, label %polly.loop_header240.us.3

polly.loop_exit242.loopexit.us.3:                 ; preds = %polly.loop_header240.us.3
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251.us.3

polly.loop_header251.us.3:                        ; preds = %polly.loop_exit242.loopexit.us.3, %polly.loop_header251.us.3
  %polly.indvar255.us.3 = phi i64 [ %polly.indvar_next256.us.3, %polly.loop_header251.us.3 ], [ %224, %polly.loop_exit242.loopexit.us.3 ]
  %709 = add nuw nsw i64 %polly.indvar255.us.3, %166
  %polly.access.mul.call1259.us.3 = mul nsw i64 %709, 1000
  %polly.access.add.call1260.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.us.3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  %polly.indvar_next256.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 1
  %polly.loop_cond257.not.not.us.3 = icmp slt i64 %polly.indvar255.us.3, %225
  br i1 %polly.loop_cond257.not.not.us.3, label %polly.loop_header251.us.3, label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_exit282.us, %polly.loop_exit282.us.1
  %indvar1671 = phi i64 [ %indvar.next1672, %polly.loop_exit282.us.1 ], [ 0, %polly.loop_exit282.us ]
  %indvars.iv1096.1 = phi i64 [ %indvars.iv.next1097.1, %polly.loop_exit282.us.1 ], [ %218, %polly.loop_exit282.us ]
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_exit282.us.1 ], [ %230, %polly.loop_exit282.us ]
  %710 = add i64 %187, %indvar1671
  %smin1688 = call i64 @llvm.smin.i64(i64 %710, i64 255)
  %711 = add nsw i64 %smin1688, 1
  %712 = mul nuw nsw i64 %indvar1671, 9600
  %713 = add i64 %194, %712
  %scevgep1673 = getelementptr i8, i8* %call, i64 %713
  %714 = add i64 %195, %712
  %scevgep1674 = getelementptr i8, i8* %call, i64 %714
  %715 = add i64 %197, %indvar1671
  %smin1675 = call i64 @llvm.smin.i64(i64 %715, i64 255)
  %716 = shl nsw i64 %smin1675, 3
  %scevgep1676 = getelementptr i8, i8* %scevgep1674, i64 %716
  %scevgep1679 = getelementptr i8, i8* %scevgep1678, i64 %716
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1096.1, i64 255)
  %717 = add nsw i64 %polly.indvar276.us.1, %220
  %polly.loop_guard283.us.11193 = icmp sgt i64 %717, -1
  br i1 %polly.loop_guard283.us.11193, label %polly.loop_header280.preheader.us.1, label %polly.loop_exit282.us.1

polly.loop_header280.preheader.us.1:              ; preds = %polly.loop_header272.us.1
  %718 = add nsw i64 %polly.indvar276.us.1, %219
  %polly.access.add.Packed_MemRef_call2292.us.1 = add nuw nsw i64 %717, 1200
  %polly.access.Packed_MemRef_call2293.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.us.1
  %_p_scalar_294.us.1 = load double, double* %polly.access.Packed_MemRef_call2293.us.1, align 8
  %polly.access.Packed_MemRef_call1301.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.us.1
  %_p_scalar_302.us.1 = load double, double* %polly.access.Packed_MemRef_call1301.us.1, align 8
  %719 = mul i64 %718, 9600
  %min.iters.check1689 = icmp ult i64 %711, 4
  br i1 %min.iters.check1689, label %polly.loop_header280.us.1.preheader, label %vector.memcheck1669

vector.memcheck1669:                              ; preds = %polly.loop_header280.preheader.us.1
  %bound01680 = icmp ult i8* %scevgep1673, %scevgep1679
  %bound11681 = icmp ult i8* %scevgep1677, %scevgep1676
  %found.conflict1682 = and i1 %bound01680, %bound11681
  br i1 %found.conflict1682, label %polly.loop_header280.us.1.preheader, label %vector.ph1690

vector.ph1690:                                    ; preds = %vector.memcheck1669
  %n.vec1692 = and i64 %711, -4
  %broadcast.splatinsert1698 = insertelement <4 x double> poison, double %_p_scalar_294.us.1, i32 0
  %broadcast.splat1699 = shufflevector <4 x double> %broadcast.splatinsert1698, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1701 = insertelement <4 x double> poison, double %_p_scalar_302.us.1, i32 0
  %broadcast.splat1702 = shufflevector <4 x double> %broadcast.splatinsert1701, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1686

vector.body1686:                                  ; preds = %vector.body1686, %vector.ph1690
  %index1693 = phi i64 [ 0, %vector.ph1690 ], [ %index.next1694, %vector.body1686 ]
  %720 = add nuw nsw i64 %index1693, %166
  %721 = add nuw nsw i64 %index1693, 1200
  %722 = getelementptr double, double* %Packed_MemRef_call1, i64 %721
  %723 = bitcast double* %722 to <4 x double>*
  %wide.load1697 = load <4 x double>, <4 x double>* %723, align 8, !alias.scope !143
  %724 = fmul fast <4 x double> %broadcast.splat1699, %wide.load1697
  %725 = getelementptr double, double* %Packed_MemRef_call2, i64 %721
  %726 = bitcast double* %725 to <4 x double>*
  %wide.load1700 = load <4 x double>, <4 x double>* %726, align 8
  %727 = fmul fast <4 x double> %broadcast.splat1702, %wide.load1700
  %728 = shl i64 %720, 3
  %729 = add i64 %728, %719
  %730 = getelementptr i8, i8* %call, i64 %729
  %731 = bitcast i8* %730 to <4 x double>*
  %wide.load1703 = load <4 x double>, <4 x double>* %731, align 8, !alias.scope !146, !noalias !148
  %732 = fadd fast <4 x double> %727, %724
  %733 = fmul fast <4 x double> %732, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %734 = fadd fast <4 x double> %733, %wide.load1703
  %735 = bitcast i8* %730 to <4 x double>*
  store <4 x double> %734, <4 x double>* %735, align 8, !alias.scope !146, !noalias !148
  %index.next1694 = add i64 %index1693, 4
  %736 = icmp eq i64 %index.next1694, %n.vec1692
  br i1 %736, label %middle.block1684, label %vector.body1686, !llvm.loop !149

middle.block1684:                                 ; preds = %vector.body1686
  %cmp.n1696 = icmp eq i64 %711, %n.vec1692
  br i1 %cmp.n1696, label %polly.loop_exit282.us.1, label %polly.loop_header280.us.1.preheader

polly.loop_header280.us.1.preheader:              ; preds = %vector.memcheck1669, %polly.loop_header280.preheader.us.1, %middle.block1684
  %polly.indvar284.us.1.ph = phi i64 [ 0, %vector.memcheck1669 ], [ 0, %polly.loop_header280.preheader.us.1 ], [ %n.vec1692, %middle.block1684 ]
  br label %polly.loop_header280.us.1

polly.loop_header280.us.1:                        ; preds = %polly.loop_header280.us.1.preheader, %polly.loop_header280.us.1
  %polly.indvar284.us.1 = phi i64 [ %polly.indvar_next285.us.1, %polly.loop_header280.us.1 ], [ %polly.indvar284.us.1.ph, %polly.loop_header280.us.1.preheader ]
  %737 = add nuw nsw i64 %polly.indvar284.us.1, %166
  %polly.access.add.Packed_MemRef_call1288.us.1 = add nuw nsw i64 %polly.indvar284.us.1, 1200
  %polly.access.Packed_MemRef_call1289.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us.1
  %_p_scalar_290.us.1 = load double, double* %polly.access.Packed_MemRef_call1289.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_294.us.1, %_p_scalar_290.us.1
  %polly.access.Packed_MemRef_call2297.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.us.1
  %_p_scalar_298.us.1 = load double, double* %polly.access.Packed_MemRef_call2297.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_302.us.1, %_p_scalar_298.us.1
  %738 = shl i64 %737, 3
  %739 = add i64 %738, %719
  %scevgep303.us.1 = getelementptr i8, i8* %call, i64 %739
  %scevgep303304.us.1 = bitcast i8* %scevgep303.us.1 to double*
  %_p_scalar_305.us.1 = load double, double* %scevgep303304.us.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_305.us.1
  store double %p_add42.i118.us.1, double* %scevgep303304.us.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.us.1 = add nuw nsw i64 %polly.indvar284.us.1, 1
  %exitcond1098.1.not = icmp eq i64 %polly.indvar284.us.1, %smin.1
  br i1 %exitcond1098.1.not, label %polly.loop_exit282.us.1, label %polly.loop_header280.us.1, !llvm.loop !150

polly.loop_exit282.us.1:                          ; preds = %polly.loop_header280.us.1, %middle.block1684, %polly.loop_header272.us.1
  %polly.indvar_next277.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1
  %polly.loop_cond278.us.1 = icmp ult i64 %polly.indvar276.us.1, 19
  %indvars.iv.next1097.1 = add i64 %indvars.iv1096.1, 1
  %indvar.next1672 = add i64 %indvar1671, 1
  br i1 %polly.loop_cond278.us.1, label %polly.loop_header272.us.1, label %polly.loop_header272.us.2

polly.loop_header272.us.2:                        ; preds = %polly.loop_exit282.us.1, %polly.loop_exit282.us.2
  %indvar1636 = phi i64 [ %indvar.next1637, %polly.loop_exit282.us.2 ], [ 0, %polly.loop_exit282.us.1 ]
  %indvars.iv1096.2 = phi i64 [ %indvars.iv.next1097.2, %polly.loop_exit282.us.2 ], [ %218, %polly.loop_exit282.us.1 ]
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_exit282.us.2 ], [ %230, %polly.loop_exit282.us.1 ]
  %740 = add i64 %202, %indvar1636
  %smin1653 = call i64 @llvm.smin.i64(i64 %740, i64 255)
  %741 = add nsw i64 %smin1653, 1
  %742 = mul nuw nsw i64 %indvar1636, 9600
  %743 = add i64 %209, %742
  %scevgep1638 = getelementptr i8, i8* %call, i64 %743
  %744 = add i64 %210, %742
  %scevgep1639 = getelementptr i8, i8* %call, i64 %744
  %745 = add i64 %212, %indvar1636
  %smin1640 = call i64 @llvm.smin.i64(i64 %745, i64 255)
  %746 = shl nsw i64 %smin1640, 3
  %scevgep1641 = getelementptr i8, i8* %scevgep1639, i64 %746
  %scevgep1644 = getelementptr i8, i8* %scevgep1643, i64 %746
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1096.2, i64 255)
  %747 = add nsw i64 %polly.indvar276.us.2, %220
  %polly.loop_guard283.us.21194 = icmp sgt i64 %747, -1
  br i1 %polly.loop_guard283.us.21194, label %polly.loop_header280.preheader.us.2, label %polly.loop_exit282.us.2

polly.loop_header280.preheader.us.2:              ; preds = %polly.loop_header272.us.2
  %748 = add nsw i64 %polly.indvar276.us.2, %219
  %polly.access.add.Packed_MemRef_call2292.us.2 = add nuw nsw i64 %747, 2400
  %polly.access.Packed_MemRef_call2293.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.us.2
  %_p_scalar_294.us.2 = load double, double* %polly.access.Packed_MemRef_call2293.us.2, align 8
  %polly.access.Packed_MemRef_call1301.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.us.2
  %_p_scalar_302.us.2 = load double, double* %polly.access.Packed_MemRef_call1301.us.2, align 8
  %749 = mul i64 %748, 9600
  %min.iters.check1654 = icmp ult i64 %741, 4
  br i1 %min.iters.check1654, label %polly.loop_header280.us.2.preheader, label %vector.memcheck1634

vector.memcheck1634:                              ; preds = %polly.loop_header280.preheader.us.2
  %bound01645 = icmp ult i8* %scevgep1638, %scevgep1644
  %bound11646 = icmp ult i8* %scevgep1642, %scevgep1641
  %found.conflict1647 = and i1 %bound01645, %bound11646
  br i1 %found.conflict1647, label %polly.loop_header280.us.2.preheader, label %vector.ph1655

vector.ph1655:                                    ; preds = %vector.memcheck1634
  %n.vec1657 = and i64 %741, -4
  %broadcast.splatinsert1663 = insertelement <4 x double> poison, double %_p_scalar_294.us.2, i32 0
  %broadcast.splat1664 = shufflevector <4 x double> %broadcast.splatinsert1663, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1666 = insertelement <4 x double> poison, double %_p_scalar_302.us.2, i32 0
  %broadcast.splat1667 = shufflevector <4 x double> %broadcast.splatinsert1666, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1651

vector.body1651:                                  ; preds = %vector.body1651, %vector.ph1655
  %index1658 = phi i64 [ 0, %vector.ph1655 ], [ %index.next1659, %vector.body1651 ]
  %750 = add nuw nsw i64 %index1658, %166
  %751 = add nuw nsw i64 %index1658, 2400
  %752 = getelementptr double, double* %Packed_MemRef_call1, i64 %751
  %753 = bitcast double* %752 to <4 x double>*
  %wide.load1662 = load <4 x double>, <4 x double>* %753, align 8, !alias.scope !151
  %754 = fmul fast <4 x double> %broadcast.splat1664, %wide.load1662
  %755 = getelementptr double, double* %Packed_MemRef_call2, i64 %751
  %756 = bitcast double* %755 to <4 x double>*
  %wide.load1665 = load <4 x double>, <4 x double>* %756, align 8
  %757 = fmul fast <4 x double> %broadcast.splat1667, %wide.load1665
  %758 = shl i64 %750, 3
  %759 = add i64 %758, %749
  %760 = getelementptr i8, i8* %call, i64 %759
  %761 = bitcast i8* %760 to <4 x double>*
  %wide.load1668 = load <4 x double>, <4 x double>* %761, align 8, !alias.scope !154, !noalias !156
  %762 = fadd fast <4 x double> %757, %754
  %763 = fmul fast <4 x double> %762, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %764 = fadd fast <4 x double> %763, %wide.load1668
  %765 = bitcast i8* %760 to <4 x double>*
  store <4 x double> %764, <4 x double>* %765, align 8, !alias.scope !154, !noalias !156
  %index.next1659 = add i64 %index1658, 4
  %766 = icmp eq i64 %index.next1659, %n.vec1657
  br i1 %766, label %middle.block1649, label %vector.body1651, !llvm.loop !157

middle.block1649:                                 ; preds = %vector.body1651
  %cmp.n1661 = icmp eq i64 %741, %n.vec1657
  br i1 %cmp.n1661, label %polly.loop_exit282.us.2, label %polly.loop_header280.us.2.preheader

polly.loop_header280.us.2.preheader:              ; preds = %vector.memcheck1634, %polly.loop_header280.preheader.us.2, %middle.block1649
  %polly.indvar284.us.2.ph = phi i64 [ 0, %vector.memcheck1634 ], [ 0, %polly.loop_header280.preheader.us.2 ], [ %n.vec1657, %middle.block1649 ]
  br label %polly.loop_header280.us.2

polly.loop_header280.us.2:                        ; preds = %polly.loop_header280.us.2.preheader, %polly.loop_header280.us.2
  %polly.indvar284.us.2 = phi i64 [ %polly.indvar_next285.us.2, %polly.loop_header280.us.2 ], [ %polly.indvar284.us.2.ph, %polly.loop_header280.us.2.preheader ]
  %767 = add nuw nsw i64 %polly.indvar284.us.2, %166
  %polly.access.add.Packed_MemRef_call1288.us.2 = add nuw nsw i64 %polly.indvar284.us.2, 2400
  %polly.access.Packed_MemRef_call1289.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us.2
  %_p_scalar_290.us.2 = load double, double* %polly.access.Packed_MemRef_call1289.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_294.us.2, %_p_scalar_290.us.2
  %polly.access.Packed_MemRef_call2297.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.us.2
  %_p_scalar_298.us.2 = load double, double* %polly.access.Packed_MemRef_call2297.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_302.us.2, %_p_scalar_298.us.2
  %768 = shl i64 %767, 3
  %769 = add i64 %768, %749
  %scevgep303.us.2 = getelementptr i8, i8* %call, i64 %769
  %scevgep303304.us.2 = bitcast i8* %scevgep303.us.2 to double*
  %_p_scalar_305.us.2 = load double, double* %scevgep303304.us.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_305.us.2
  store double %p_add42.i118.us.2, double* %scevgep303304.us.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.us.2 = add nuw nsw i64 %polly.indvar284.us.2, 1
  %exitcond1098.2.not = icmp eq i64 %polly.indvar284.us.2, %smin.2
  br i1 %exitcond1098.2.not, label %polly.loop_exit282.us.2, label %polly.loop_header280.us.2, !llvm.loop !158

polly.loop_exit282.us.2:                          ; preds = %polly.loop_header280.us.2, %middle.block1649, %polly.loop_header272.us.2
  %polly.indvar_next277.us.2 = add nuw nsw i64 %polly.indvar276.us.2, 1
  %polly.loop_cond278.us.2 = icmp ult i64 %polly.indvar276.us.2, 19
  %indvars.iv.next1097.2 = add i64 %indvars.iv1096.2, 1
  %indvar.next1637 = add i64 %indvar1636, 1
  br i1 %polly.loop_cond278.us.2, label %polly.loop_header272.us.2, label %polly.loop_header272.us.3

polly.loop_header272.us.3:                        ; preds = %polly.loop_exit282.us.2, %polly.loop_exit282.us.3
  %indvar1616 = phi i64 [ %indvar.next1617, %polly.loop_exit282.us.3 ], [ 0, %polly.loop_exit282.us.2 ]
  %indvars.iv1096.3 = phi i64 [ %indvars.iv.next1097.3, %polly.loop_exit282.us.3 ], [ %218, %polly.loop_exit282.us.2 ]
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_exit282.us.3 ], [ %230, %polly.loop_exit282.us.2 ]
  %770 = add i64 %217, %indvar1616
  %smin1618 = call i64 @llvm.smin.i64(i64 %770, i64 255)
  %771 = add nsw i64 %smin1618, 1
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1096.3, i64 255)
  %772 = add nsw i64 %polly.indvar276.us.3, %220
  %polly.loop_guard283.us.31195 = icmp sgt i64 %772, -1
  br i1 %polly.loop_guard283.us.31195, label %polly.loop_header280.preheader.us.3, label %polly.loop_exit282.us.3

polly.loop_header280.preheader.us.3:              ; preds = %polly.loop_header272.us.3
  %773 = add nsw i64 %polly.indvar276.us.3, %219
  %polly.access.add.Packed_MemRef_call2292.us.3 = add nuw nsw i64 %772, 3600
  %polly.access.Packed_MemRef_call2293.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.us.3
  %_p_scalar_294.us.3 = load double, double* %polly.access.Packed_MemRef_call2293.us.3, align 8
  %polly.access.Packed_MemRef_call1301.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.us.3
  %_p_scalar_302.us.3 = load double, double* %polly.access.Packed_MemRef_call1301.us.3, align 8
  %774 = mul i64 %773, 9600
  %min.iters.check1619 = icmp ult i64 %771, 4
  br i1 %min.iters.check1619, label %polly.loop_header280.us.3.preheader, label %vector.ph1620

vector.ph1620:                                    ; preds = %polly.loop_header280.preheader.us.3
  %n.vec1622 = and i64 %771, -4
  %broadcast.splatinsert1628 = insertelement <4 x double> poison, double %_p_scalar_294.us.3, i32 0
  %broadcast.splat1629 = shufflevector <4 x double> %broadcast.splatinsert1628, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1631 = insertelement <4 x double> poison, double %_p_scalar_302.us.3, i32 0
  %broadcast.splat1632 = shufflevector <4 x double> %broadcast.splatinsert1631, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1612

vector.body1612:                                  ; preds = %vector.body1612, %vector.ph1620
  %index1623 = phi i64 [ 0, %vector.ph1620 ], [ %index.next1624, %vector.body1612 ]
  %775 = add nuw nsw i64 %index1623, %166
  %776 = add nuw nsw i64 %index1623, 3600
  %777 = getelementptr double, double* %Packed_MemRef_call1, i64 %776
  %778 = bitcast double* %777 to <4 x double>*
  %wide.load1627 = load <4 x double>, <4 x double>* %778, align 8
  %779 = fmul fast <4 x double> %broadcast.splat1629, %wide.load1627
  %780 = getelementptr double, double* %Packed_MemRef_call2, i64 %776
  %781 = bitcast double* %780 to <4 x double>*
  %wide.load1630 = load <4 x double>, <4 x double>* %781, align 8
  %782 = fmul fast <4 x double> %broadcast.splat1632, %wide.load1630
  %783 = shl i64 %775, 3
  %784 = add i64 %783, %774
  %785 = getelementptr i8, i8* %call, i64 %784
  %786 = bitcast i8* %785 to <4 x double>*
  %wide.load1633 = load <4 x double>, <4 x double>* %786, align 8, !alias.scope !72, !noalias !74
  %787 = fadd fast <4 x double> %782, %779
  %788 = fmul fast <4 x double> %787, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %789 = fadd fast <4 x double> %788, %wide.load1633
  %790 = bitcast i8* %785 to <4 x double>*
  store <4 x double> %789, <4 x double>* %790, align 8, !alias.scope !72, !noalias !74
  %index.next1624 = add i64 %index1623, 4
  %791 = icmp eq i64 %index.next1624, %n.vec1622
  br i1 %791, label %middle.block1610, label %vector.body1612, !llvm.loop !159

middle.block1610:                                 ; preds = %vector.body1612
  %cmp.n1626 = icmp eq i64 %771, %n.vec1622
  br i1 %cmp.n1626, label %polly.loop_exit282.us.3, label %polly.loop_header280.us.3.preheader

polly.loop_header280.us.3.preheader:              ; preds = %polly.loop_header280.preheader.us.3, %middle.block1610
  %polly.indvar284.us.3.ph = phi i64 [ 0, %polly.loop_header280.preheader.us.3 ], [ %n.vec1622, %middle.block1610 ]
  br label %polly.loop_header280.us.3

polly.loop_header280.us.3:                        ; preds = %polly.loop_header280.us.3.preheader, %polly.loop_header280.us.3
  %polly.indvar284.us.3 = phi i64 [ %polly.indvar_next285.us.3, %polly.loop_header280.us.3 ], [ %polly.indvar284.us.3.ph, %polly.loop_header280.us.3.preheader ]
  %792 = add nuw nsw i64 %polly.indvar284.us.3, %166
  %polly.access.add.Packed_MemRef_call1288.us.3 = add nuw nsw i64 %polly.indvar284.us.3, 3600
  %polly.access.Packed_MemRef_call1289.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us.3
  %_p_scalar_290.us.3 = load double, double* %polly.access.Packed_MemRef_call1289.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_294.us.3, %_p_scalar_290.us.3
  %polly.access.Packed_MemRef_call2297.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.us.3
  %_p_scalar_298.us.3 = load double, double* %polly.access.Packed_MemRef_call2297.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_302.us.3, %_p_scalar_298.us.3
  %793 = shl i64 %792, 3
  %794 = add i64 %793, %774
  %scevgep303.us.3 = getelementptr i8, i8* %call, i64 %794
  %scevgep303304.us.3 = bitcast i8* %scevgep303.us.3 to double*
  %_p_scalar_305.us.3 = load double, double* %scevgep303304.us.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_305.us.3
  store double %p_add42.i118.us.3, double* %scevgep303304.us.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.us.3 = add nuw nsw i64 %polly.indvar284.us.3, 1
  %exitcond1098.3.not = icmp eq i64 %polly.indvar284.us.3, %smin.3
  br i1 %exitcond1098.3.not, label %polly.loop_exit282.us.3, label %polly.loop_header280.us.3, !llvm.loop !160

polly.loop_exit282.us.3:                          ; preds = %polly.loop_header280.us.3, %middle.block1610, %polly.loop_header272.us.3
  %polly.indvar_next277.us.3 = add nuw nsw i64 %polly.indvar276.us.3, 1
  %polly.loop_cond278.us.3 = icmp ult i64 %polly.indvar276.us.3, 19
  %indvars.iv.next1097.3 = add i64 %indvars.iv1096.3, 1
  %indvar.next1617 = add i64 %indvar1616, 1
  br i1 %polly.loop_cond278.us.3, label %polly.loop_header272.us.3, label %polly.loop_exit267

polly.loop_header430.1:                           ; preds = %polly.loop_header430, %polly.loop_header430.1
  %polly.indvar433.1 = phi i64 [ %polly.indvar_next434.1, %polly.loop_header430.1 ], [ 0, %polly.loop_header430 ]
  %795 = add nuw nsw i64 %polly.indvar433.1, %339
  %polly.access.mul.call2437.1 = mul nuw nsw i64 %795, 1000
  %polly.access.add.call2438.1 = add nuw nsw i64 %271, %polly.access.mul.call2437.1
  %polly.access.call2439.1 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.1
  %polly.access.call2439.load.1 = load double, double* %polly.access.call2439.1, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.1 = add nuw nsw i64 %polly.indvar433.1, 1200
  %polly.access.Packed_MemRef_call2313.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.1
  store double %polly.access.call2439.load.1, double* %polly.access.Packed_MemRef_call2313.1, align 8
  %polly.indvar_next434.1 = add nuw nsw i64 %polly.indvar433.1, 1
  %exitcond1106.1.not = icmp eq i64 %polly.indvar_next434.1, %indvars.iv1104
  br i1 %exitcond1106.1.not, label %polly.loop_header430.2, label %polly.loop_header430.1

polly.loop_header430.2:                           ; preds = %polly.loop_header430.1, %polly.loop_header430.2
  %polly.indvar433.2 = phi i64 [ %polly.indvar_next434.2, %polly.loop_header430.2 ], [ 0, %polly.loop_header430.1 ]
  %796 = add nuw nsw i64 %polly.indvar433.2, %339
  %polly.access.mul.call2437.2 = mul nuw nsw i64 %796, 1000
  %polly.access.add.call2438.2 = add nuw nsw i64 %272, %polly.access.mul.call2437.2
  %polly.access.call2439.2 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.2
  %polly.access.call2439.load.2 = load double, double* %polly.access.call2439.2, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.2 = add nuw nsw i64 %polly.indvar433.2, 2400
  %polly.access.Packed_MemRef_call2313.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.2
  store double %polly.access.call2439.load.2, double* %polly.access.Packed_MemRef_call2313.2, align 8
  %polly.indvar_next434.2 = add nuw nsw i64 %polly.indvar433.2, 1
  %exitcond1106.2.not = icmp eq i64 %polly.indvar_next434.2, %indvars.iv1104
  br i1 %exitcond1106.2.not, label %polly.loop_header430.3, label %polly.loop_header430.2

polly.loop_header430.3:                           ; preds = %polly.loop_header430.2, %polly.loop_header430.3
  %polly.indvar433.3 = phi i64 [ %polly.indvar_next434.3, %polly.loop_header430.3 ], [ 0, %polly.loop_header430.2 ]
  %797 = add nuw nsw i64 %polly.indvar433.3, %339
  %polly.access.mul.call2437.3 = mul nuw nsw i64 %797, 1000
  %polly.access.add.call2438.3 = add nuw nsw i64 %273, %polly.access.mul.call2437.3
  %polly.access.call2439.3 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.3
  %polly.access.call2439.load.3 = load double, double* %polly.access.call2439.3, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.3 = add nuw nsw i64 %polly.indvar433.3, 3600
  %polly.access.Packed_MemRef_call2313.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.3
  store double %polly.access.call2439.load.3, double* %polly.access.Packed_MemRef_call2313.3, align 8
  %polly.indvar_next434.3 = add nuw nsw i64 %polly.indvar433.3, 1
  %exitcond1106.3.not = icmp eq i64 %polly.indvar_next434.3, %indvars.iv1104
  br i1 %exitcond1106.3.not, label %polly.loop_exit432.3, label %polly.loop_header430.3

polly.loop_exit432.3:                             ; preds = %polly.loop_header430.3
  %798 = mul nsw i64 %polly.indvar421, -256
  %799 = mul nuw nsw i64 %polly.indvar421, 13
  %800 = add nuw nsw i64 %polly.indvar421, 4
  %pexp.p_div_q440 = udiv i64 %800, 5
  %801 = sub nsw i64 %799, %pexp.p_div_q440
  br label %polly.loop_header441

polly.loop_header466.1:                           ; preds = %polly.loop_header466, %polly.loop_header466.1
  %polly.indvar470.1 = phi i64 [ %polly.indvar_next471.1, %polly.loop_header466.1 ], [ %397, %polly.loop_header466 ]
  %802 = add nuw nsw i64 %polly.indvar470.1, %339
  %polly.access.mul.call1474.1 = mul nsw i64 %802, 1000
  %polly.access.add.call1475.1 = add nuw nsw i64 %271, %polly.access.mul.call1474.1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.1 = add nuw nsw i64 %polly.indvar470.1, 1200
  %polly.access.Packed_MemRef_call1311479.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1311479.1, align 8
  %polly.indvar_next471.1 = add nuw nsw i64 %polly.indvar470.1, 1
  %polly.loop_cond472.not.not.1 = icmp slt i64 %polly.indvar470.1, %398
  br i1 %polly.loop_cond472.not.not.1, label %polly.loop_header466.1, label %polly.loop_header466.2

polly.loop_header466.2:                           ; preds = %polly.loop_header466.1, %polly.loop_header466.2
  %polly.indvar470.2 = phi i64 [ %polly.indvar_next471.2, %polly.loop_header466.2 ], [ %397, %polly.loop_header466.1 ]
  %803 = add nuw nsw i64 %polly.indvar470.2, %339
  %polly.access.mul.call1474.2 = mul nsw i64 %803, 1000
  %polly.access.add.call1475.2 = add nuw nsw i64 %272, %polly.access.mul.call1474.2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.2 = add nuw nsw i64 %polly.indvar470.2, 2400
  %polly.access.Packed_MemRef_call1311479.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1311479.2, align 8
  %polly.indvar_next471.2 = add nuw nsw i64 %polly.indvar470.2, 1
  %polly.loop_cond472.not.not.2 = icmp slt i64 %polly.indvar470.2, %398
  br i1 %polly.loop_cond472.not.not.2, label %polly.loop_header466.2, label %polly.loop_header466.3

polly.loop_header466.3:                           ; preds = %polly.loop_header466.2, %polly.loop_header466.3
  %polly.indvar470.3 = phi i64 [ %polly.indvar_next471.3, %polly.loop_header466.3 ], [ %397, %polly.loop_header466.2 ]
  %804 = add nuw nsw i64 %polly.indvar470.3, %339
  %polly.access.mul.call1474.3 = mul nsw i64 %804, 1000
  %polly.access.add.call1475.3 = add nuw nsw i64 %273, %polly.access.mul.call1474.3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.3 = add nuw nsw i64 %polly.indvar470.3, 3600
  %polly.access.Packed_MemRef_call1311479.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1311479.3, align 8
  %polly.indvar_next471.3 = add nuw nsw i64 %polly.indvar470.3, 1
  %polly.loop_cond472.not.not.3 = icmp slt i64 %polly.indvar470.3, %398
  br i1 %polly.loop_cond472.not.not.3, label %polly.loop_header466.3, label %polly.loop_header480.preheader

polly.loop_header454.us.1:                        ; preds = %polly.loop_header454.us.1.preheader, %polly.loop_header454.us.1
  %polly.indvar458.us.1 = phi i64 [ %polly.indvar_next459.us.1, %polly.loop_header454.us.1 ], [ 0, %polly.loop_header454.us.1.preheader ]
  %805 = add nuw nsw i64 %polly.indvar458.us.1, %339
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %805, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %271, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.1 = add nuw nsw i64 %polly.indvar458.us.1, 1200
  %polly.access.Packed_MemRef_call1311.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1311.us.1, align 8
  %polly.indvar_next459.us.1 = add nuw i64 %polly.indvar458.us.1, 1
  %exitcond1109.1.not = icmp eq i64 %polly.indvar458.us.1, %395
  br i1 %exitcond1109.1.not, label %polly.loop_exit456.loopexit.us.1, label %polly.loop_header454.us.1

polly.loop_exit456.loopexit.us.1:                 ; preds = %polly.loop_header454.us.1
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.2.preheader, label %polly.loop_header466.us.1

polly.loop_header466.us.1:                        ; preds = %polly.loop_exit456.loopexit.us.1, %polly.loop_header466.us.1
  %polly.indvar470.us.1 = phi i64 [ %polly.indvar_next471.us.1, %polly.loop_header466.us.1 ], [ %397, %polly.loop_exit456.loopexit.us.1 ]
  %806 = add nuw nsw i64 %polly.indvar470.us.1, %339
  %polly.access.mul.call1474.us.1 = mul nsw i64 %806, 1000
  %polly.access.add.call1475.us.1 = add nuw nsw i64 %271, %polly.access.mul.call1474.us.1
  %polly.access.call1476.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.1
  %polly.access.call1476.load.us.1 = load double, double* %polly.access.call1476.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1200
  %polly.access.Packed_MemRef_call1311479.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.1
  store double %polly.access.call1476.load.us.1, double* %polly.access.Packed_MemRef_call1311479.us.1, align 8
  %polly.indvar_next471.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1
  %polly.loop_cond472.not.not.us.1 = icmp slt i64 %polly.indvar470.us.1, %398
  br i1 %polly.loop_cond472.not.not.us.1, label %polly.loop_header466.us.1, label %polly.loop_header454.us.2.preheader

polly.loop_header454.us.2.preheader:              ; preds = %polly.loop_header466.us.1, %polly.loop_exit456.loopexit.us.1
  br label %polly.loop_header454.us.2

polly.loop_header454.us.2:                        ; preds = %polly.loop_header454.us.2.preheader, %polly.loop_header454.us.2
  %polly.indvar458.us.2 = phi i64 [ %polly.indvar_next459.us.2, %polly.loop_header454.us.2 ], [ 0, %polly.loop_header454.us.2.preheader ]
  %807 = add nuw nsw i64 %polly.indvar458.us.2, %339
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %807, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %272, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.2 = add nuw nsw i64 %polly.indvar458.us.2, 2400
  %polly.access.Packed_MemRef_call1311.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1311.us.2, align 8
  %polly.indvar_next459.us.2 = add nuw i64 %polly.indvar458.us.2, 1
  %exitcond1109.2.not = icmp eq i64 %polly.indvar458.us.2, %395
  br i1 %exitcond1109.2.not, label %polly.loop_exit456.loopexit.us.2, label %polly.loop_header454.us.2

polly.loop_exit456.loopexit.us.2:                 ; preds = %polly.loop_header454.us.2
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.3.preheader, label %polly.loop_header466.us.2

polly.loop_header466.us.2:                        ; preds = %polly.loop_exit456.loopexit.us.2, %polly.loop_header466.us.2
  %polly.indvar470.us.2 = phi i64 [ %polly.indvar_next471.us.2, %polly.loop_header466.us.2 ], [ %397, %polly.loop_exit456.loopexit.us.2 ]
  %808 = add nuw nsw i64 %polly.indvar470.us.2, %339
  %polly.access.mul.call1474.us.2 = mul nsw i64 %808, 1000
  %polly.access.add.call1475.us.2 = add nuw nsw i64 %272, %polly.access.mul.call1474.us.2
  %polly.access.call1476.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.2
  %polly.access.call1476.load.us.2 = load double, double* %polly.access.call1476.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 2400
  %polly.access.Packed_MemRef_call1311479.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.2
  store double %polly.access.call1476.load.us.2, double* %polly.access.Packed_MemRef_call1311479.us.2, align 8
  %polly.indvar_next471.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 1
  %polly.loop_cond472.not.not.us.2 = icmp slt i64 %polly.indvar470.us.2, %398
  br i1 %polly.loop_cond472.not.not.us.2, label %polly.loop_header466.us.2, label %polly.loop_header454.us.3.preheader

polly.loop_header454.us.3.preheader:              ; preds = %polly.loop_header466.us.2, %polly.loop_exit456.loopexit.us.2
  br label %polly.loop_header454.us.3

polly.loop_header454.us.3:                        ; preds = %polly.loop_header454.us.3.preheader, %polly.loop_header454.us.3
  %polly.indvar458.us.3 = phi i64 [ %polly.indvar_next459.us.3, %polly.loop_header454.us.3 ], [ 0, %polly.loop_header454.us.3.preheader ]
  %809 = add nuw nsw i64 %polly.indvar458.us.3, %339
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %809, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %273, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.3 = add nuw nsw i64 %polly.indvar458.us.3, 3600
  %polly.access.Packed_MemRef_call1311.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1311.us.3, align 8
  %polly.indvar_next459.us.3 = add nuw i64 %polly.indvar458.us.3, 1
  %exitcond1109.3.not = icmp eq i64 %polly.indvar458.us.3, %395
  br i1 %exitcond1109.3.not, label %polly.loop_exit456.loopexit.us.3, label %polly.loop_header454.us.3

polly.loop_exit456.loopexit.us.3:                 ; preds = %polly.loop_header454.us.3
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466.us.3

polly.loop_header466.us.3:                        ; preds = %polly.loop_exit456.loopexit.us.3, %polly.loop_header466.us.3
  %polly.indvar470.us.3 = phi i64 [ %polly.indvar_next471.us.3, %polly.loop_header466.us.3 ], [ %397, %polly.loop_exit456.loopexit.us.3 ]
  %810 = add nuw nsw i64 %polly.indvar470.us.3, %339
  %polly.access.mul.call1474.us.3 = mul nsw i64 %810, 1000
  %polly.access.add.call1475.us.3 = add nuw nsw i64 %273, %polly.access.mul.call1474.us.3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 3600
  %polly.access.Packed_MemRef_call1311479.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1311479.us.3, align 8
  %polly.indvar_next471.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 1
  %polly.loop_cond472.not.not.us.3 = icmp slt i64 %polly.indvar470.us.3, %398
  br i1 %polly.loop_cond472.not.not.us.3, label %polly.loop_header466.us.3, label %polly.loop_header480.preheader

polly.loop_header487.us.1:                        ; preds = %polly.loop_exit497.us, %polly.loop_exit497.us.1
  %indvar1517 = phi i64 [ %indvar.next1518, %polly.loop_exit497.us.1 ], [ 0, %polly.loop_exit497.us ]
  %indvars.iv1122.1 = phi i64 [ %indvars.iv.next1123.1, %polly.loop_exit497.us.1 ], [ %391, %polly.loop_exit497.us ]
  %polly.indvar491.us.1 = phi i64 [ %polly.indvar_next492.us.1, %polly.loop_exit497.us.1 ], [ %403, %polly.loop_exit497.us ]
  %811 = add i64 %360, %indvar1517
  %smin1534 = call i64 @llvm.smin.i64(i64 %811, i64 255)
  %812 = add nsw i64 %smin1534, 1
  %813 = mul nuw nsw i64 %indvar1517, 9600
  %814 = add i64 %367, %813
  %scevgep1519 = getelementptr i8, i8* %call, i64 %814
  %815 = add i64 %368, %813
  %scevgep1520 = getelementptr i8, i8* %call, i64 %815
  %816 = add i64 %370, %indvar1517
  %smin1521 = call i64 @llvm.smin.i64(i64 %816, i64 255)
  %817 = shl nsw i64 %smin1521, 3
  %scevgep1522 = getelementptr i8, i8* %scevgep1520, i64 %817
  %scevgep1525 = getelementptr i8, i8* %scevgep1524, i64 %817
  %smin1124.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1122.1, i64 255)
  %818 = add nsw i64 %polly.indvar491.us.1, %393
  %polly.loop_guard498.us.11197 = icmp sgt i64 %818, -1
  br i1 %polly.loop_guard498.us.11197, label %polly.loop_header495.preheader.us.1, label %polly.loop_exit497.us.1

polly.loop_header495.preheader.us.1:              ; preds = %polly.loop_header487.us.1
  %819 = add nsw i64 %polly.indvar491.us.1, %392
  %polly.access.add.Packed_MemRef_call2313507.us.1 = add nuw nsw i64 %818, 1200
  %polly.access.Packed_MemRef_call2313508.us.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.us.1
  %_p_scalar_509.us.1 = load double, double* %polly.access.Packed_MemRef_call2313508.us.1, align 8
  %polly.access.Packed_MemRef_call1311516.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.us.1
  %_p_scalar_517.us.1 = load double, double* %polly.access.Packed_MemRef_call1311516.us.1, align 8
  %820 = mul i64 %819, 9600
  %min.iters.check1535 = icmp ult i64 %812, 4
  br i1 %min.iters.check1535, label %polly.loop_header495.us.1.preheader, label %vector.memcheck1515

vector.memcheck1515:                              ; preds = %polly.loop_header495.preheader.us.1
  %bound01526 = icmp ult i8* %scevgep1519, %scevgep1525
  %bound11527 = icmp ult i8* %scevgep1523, %scevgep1522
  %found.conflict1528 = and i1 %bound01526, %bound11527
  br i1 %found.conflict1528, label %polly.loop_header495.us.1.preheader, label %vector.ph1536

vector.ph1536:                                    ; preds = %vector.memcheck1515
  %n.vec1538 = and i64 %812, -4
  %broadcast.splatinsert1544 = insertelement <4 x double> poison, double %_p_scalar_509.us.1, i32 0
  %broadcast.splat1545 = shufflevector <4 x double> %broadcast.splatinsert1544, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1547 = insertelement <4 x double> poison, double %_p_scalar_517.us.1, i32 0
  %broadcast.splat1548 = shufflevector <4 x double> %broadcast.splatinsert1547, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.body1532, %vector.ph1536
  %index1539 = phi i64 [ 0, %vector.ph1536 ], [ %index.next1540, %vector.body1532 ]
  %821 = add nuw nsw i64 %index1539, %339
  %822 = add nuw nsw i64 %index1539, 1200
  %823 = getelementptr double, double* %Packed_MemRef_call1311, i64 %822
  %824 = bitcast double* %823 to <4 x double>*
  %wide.load1543 = load <4 x double>, <4 x double>* %824, align 8, !alias.scope !161
  %825 = fmul fast <4 x double> %broadcast.splat1545, %wide.load1543
  %826 = getelementptr double, double* %Packed_MemRef_call2313, i64 %822
  %827 = bitcast double* %826 to <4 x double>*
  %wide.load1546 = load <4 x double>, <4 x double>* %827, align 8
  %828 = fmul fast <4 x double> %broadcast.splat1548, %wide.load1546
  %829 = shl i64 %821, 3
  %830 = add i64 %829, %820
  %831 = getelementptr i8, i8* %call, i64 %830
  %832 = bitcast i8* %831 to <4 x double>*
  %wide.load1549 = load <4 x double>, <4 x double>* %832, align 8, !alias.scope !164, !noalias !166
  %833 = fadd fast <4 x double> %828, %825
  %834 = fmul fast <4 x double> %833, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %835 = fadd fast <4 x double> %834, %wide.load1549
  %836 = bitcast i8* %831 to <4 x double>*
  store <4 x double> %835, <4 x double>* %836, align 8, !alias.scope !164, !noalias !166
  %index.next1540 = add i64 %index1539, 4
  %837 = icmp eq i64 %index.next1540, %n.vec1538
  br i1 %837, label %middle.block1530, label %vector.body1532, !llvm.loop !167

middle.block1530:                                 ; preds = %vector.body1532
  %cmp.n1542 = icmp eq i64 %812, %n.vec1538
  br i1 %cmp.n1542, label %polly.loop_exit497.us.1, label %polly.loop_header495.us.1.preheader

polly.loop_header495.us.1.preheader:              ; preds = %vector.memcheck1515, %polly.loop_header495.preheader.us.1, %middle.block1530
  %polly.indvar499.us.1.ph = phi i64 [ 0, %vector.memcheck1515 ], [ 0, %polly.loop_header495.preheader.us.1 ], [ %n.vec1538, %middle.block1530 ]
  br label %polly.loop_header495.us.1

polly.loop_header495.us.1:                        ; preds = %polly.loop_header495.us.1.preheader, %polly.loop_header495.us.1
  %polly.indvar499.us.1 = phi i64 [ %polly.indvar_next500.us.1, %polly.loop_header495.us.1 ], [ %polly.indvar499.us.1.ph, %polly.loop_header495.us.1.preheader ]
  %838 = add nuw nsw i64 %polly.indvar499.us.1, %339
  %polly.access.add.Packed_MemRef_call1311503.us.1 = add nuw nsw i64 %polly.indvar499.us.1, 1200
  %polly.access.Packed_MemRef_call1311504.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call1311504.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_509.us.1, %_p_scalar_505.us.1
  %polly.access.Packed_MemRef_call2313512.us.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.us.1
  %_p_scalar_513.us.1 = load double, double* %polly.access.Packed_MemRef_call2313512.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_517.us.1, %_p_scalar_513.us.1
  %839 = shl i64 %838, 3
  %840 = add i64 %839, %820
  %scevgep518.us.1 = getelementptr i8, i8* %call, i64 %840
  %scevgep518519.us.1 = bitcast i8* %scevgep518.us.1 to double*
  %_p_scalar_520.us.1 = load double, double* %scevgep518519.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_520.us.1
  store double %p_add42.i79.us.1, double* %scevgep518519.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.us.1 = add nuw nsw i64 %polly.indvar499.us.1, 1
  %exitcond1125.1.not = icmp eq i64 %polly.indvar499.us.1, %smin1124.1
  br i1 %exitcond1125.1.not, label %polly.loop_exit497.us.1, label %polly.loop_header495.us.1, !llvm.loop !168

polly.loop_exit497.us.1:                          ; preds = %polly.loop_header495.us.1, %middle.block1530, %polly.loop_header487.us.1
  %polly.indvar_next492.us.1 = add nuw nsw i64 %polly.indvar491.us.1, 1
  %polly.loop_cond493.us.1 = icmp ult i64 %polly.indvar491.us.1, 19
  %indvars.iv.next1123.1 = add i64 %indvars.iv1122.1, 1
  %indvar.next1518 = add i64 %indvar1517, 1
  br i1 %polly.loop_cond493.us.1, label %polly.loop_header487.us.1, label %polly.loop_header487.us.2

polly.loop_header487.us.2:                        ; preds = %polly.loop_exit497.us.1, %polly.loop_exit497.us.2
  %indvar1482 = phi i64 [ %indvar.next1483, %polly.loop_exit497.us.2 ], [ 0, %polly.loop_exit497.us.1 ]
  %indvars.iv1122.2 = phi i64 [ %indvars.iv.next1123.2, %polly.loop_exit497.us.2 ], [ %391, %polly.loop_exit497.us.1 ]
  %polly.indvar491.us.2 = phi i64 [ %polly.indvar_next492.us.2, %polly.loop_exit497.us.2 ], [ %403, %polly.loop_exit497.us.1 ]
  %841 = add i64 %375, %indvar1482
  %smin1499 = call i64 @llvm.smin.i64(i64 %841, i64 255)
  %842 = add nsw i64 %smin1499, 1
  %843 = mul nuw nsw i64 %indvar1482, 9600
  %844 = add i64 %382, %843
  %scevgep1484 = getelementptr i8, i8* %call, i64 %844
  %845 = add i64 %383, %843
  %scevgep1485 = getelementptr i8, i8* %call, i64 %845
  %846 = add i64 %385, %indvar1482
  %smin1486 = call i64 @llvm.smin.i64(i64 %846, i64 255)
  %847 = shl nsw i64 %smin1486, 3
  %scevgep1487 = getelementptr i8, i8* %scevgep1485, i64 %847
  %scevgep1490 = getelementptr i8, i8* %scevgep1489, i64 %847
  %smin1124.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1122.2, i64 255)
  %848 = add nsw i64 %polly.indvar491.us.2, %393
  %polly.loop_guard498.us.21198 = icmp sgt i64 %848, -1
  br i1 %polly.loop_guard498.us.21198, label %polly.loop_header495.preheader.us.2, label %polly.loop_exit497.us.2

polly.loop_header495.preheader.us.2:              ; preds = %polly.loop_header487.us.2
  %849 = add nsw i64 %polly.indvar491.us.2, %392
  %polly.access.add.Packed_MemRef_call2313507.us.2 = add nuw nsw i64 %848, 2400
  %polly.access.Packed_MemRef_call2313508.us.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.us.2
  %_p_scalar_509.us.2 = load double, double* %polly.access.Packed_MemRef_call2313508.us.2, align 8
  %polly.access.Packed_MemRef_call1311516.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.us.2
  %_p_scalar_517.us.2 = load double, double* %polly.access.Packed_MemRef_call1311516.us.2, align 8
  %850 = mul i64 %849, 9600
  %min.iters.check1500 = icmp ult i64 %842, 4
  br i1 %min.iters.check1500, label %polly.loop_header495.us.2.preheader, label %vector.memcheck1480

vector.memcheck1480:                              ; preds = %polly.loop_header495.preheader.us.2
  %bound01491 = icmp ult i8* %scevgep1484, %scevgep1490
  %bound11492 = icmp ult i8* %scevgep1488, %scevgep1487
  %found.conflict1493 = and i1 %bound01491, %bound11492
  br i1 %found.conflict1493, label %polly.loop_header495.us.2.preheader, label %vector.ph1501

vector.ph1501:                                    ; preds = %vector.memcheck1480
  %n.vec1503 = and i64 %842, -4
  %broadcast.splatinsert1509 = insertelement <4 x double> poison, double %_p_scalar_509.us.2, i32 0
  %broadcast.splat1510 = shufflevector <4 x double> %broadcast.splatinsert1509, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1512 = insertelement <4 x double> poison, double %_p_scalar_517.us.2, i32 0
  %broadcast.splat1513 = shufflevector <4 x double> %broadcast.splatinsert1512, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1497

vector.body1497:                                  ; preds = %vector.body1497, %vector.ph1501
  %index1504 = phi i64 [ 0, %vector.ph1501 ], [ %index.next1505, %vector.body1497 ]
  %851 = add nuw nsw i64 %index1504, %339
  %852 = add nuw nsw i64 %index1504, 2400
  %853 = getelementptr double, double* %Packed_MemRef_call1311, i64 %852
  %854 = bitcast double* %853 to <4 x double>*
  %wide.load1508 = load <4 x double>, <4 x double>* %854, align 8, !alias.scope !169
  %855 = fmul fast <4 x double> %broadcast.splat1510, %wide.load1508
  %856 = getelementptr double, double* %Packed_MemRef_call2313, i64 %852
  %857 = bitcast double* %856 to <4 x double>*
  %wide.load1511 = load <4 x double>, <4 x double>* %857, align 8
  %858 = fmul fast <4 x double> %broadcast.splat1513, %wide.load1511
  %859 = shl i64 %851, 3
  %860 = add i64 %859, %850
  %861 = getelementptr i8, i8* %call, i64 %860
  %862 = bitcast i8* %861 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %862, align 8, !alias.scope !172, !noalias !174
  %863 = fadd fast <4 x double> %858, %855
  %864 = fmul fast <4 x double> %863, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %865 = fadd fast <4 x double> %864, %wide.load1514
  %866 = bitcast i8* %861 to <4 x double>*
  store <4 x double> %865, <4 x double>* %866, align 8, !alias.scope !172, !noalias !174
  %index.next1505 = add i64 %index1504, 4
  %867 = icmp eq i64 %index.next1505, %n.vec1503
  br i1 %867, label %middle.block1495, label %vector.body1497, !llvm.loop !175

middle.block1495:                                 ; preds = %vector.body1497
  %cmp.n1507 = icmp eq i64 %842, %n.vec1503
  br i1 %cmp.n1507, label %polly.loop_exit497.us.2, label %polly.loop_header495.us.2.preheader

polly.loop_header495.us.2.preheader:              ; preds = %vector.memcheck1480, %polly.loop_header495.preheader.us.2, %middle.block1495
  %polly.indvar499.us.2.ph = phi i64 [ 0, %vector.memcheck1480 ], [ 0, %polly.loop_header495.preheader.us.2 ], [ %n.vec1503, %middle.block1495 ]
  br label %polly.loop_header495.us.2

polly.loop_header495.us.2:                        ; preds = %polly.loop_header495.us.2.preheader, %polly.loop_header495.us.2
  %polly.indvar499.us.2 = phi i64 [ %polly.indvar_next500.us.2, %polly.loop_header495.us.2 ], [ %polly.indvar499.us.2.ph, %polly.loop_header495.us.2.preheader ]
  %868 = add nuw nsw i64 %polly.indvar499.us.2, %339
  %polly.access.add.Packed_MemRef_call1311503.us.2 = add nuw nsw i64 %polly.indvar499.us.2, 2400
  %polly.access.Packed_MemRef_call1311504.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call1311504.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_509.us.2, %_p_scalar_505.us.2
  %polly.access.Packed_MemRef_call2313512.us.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.us.2
  %_p_scalar_513.us.2 = load double, double* %polly.access.Packed_MemRef_call2313512.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_517.us.2, %_p_scalar_513.us.2
  %869 = shl i64 %868, 3
  %870 = add i64 %869, %850
  %scevgep518.us.2 = getelementptr i8, i8* %call, i64 %870
  %scevgep518519.us.2 = bitcast i8* %scevgep518.us.2 to double*
  %_p_scalar_520.us.2 = load double, double* %scevgep518519.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_520.us.2
  store double %p_add42.i79.us.2, double* %scevgep518519.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.us.2 = add nuw nsw i64 %polly.indvar499.us.2, 1
  %exitcond1125.2.not = icmp eq i64 %polly.indvar499.us.2, %smin1124.2
  br i1 %exitcond1125.2.not, label %polly.loop_exit497.us.2, label %polly.loop_header495.us.2, !llvm.loop !176

polly.loop_exit497.us.2:                          ; preds = %polly.loop_header495.us.2, %middle.block1495, %polly.loop_header487.us.2
  %polly.indvar_next492.us.2 = add nuw nsw i64 %polly.indvar491.us.2, 1
  %polly.loop_cond493.us.2 = icmp ult i64 %polly.indvar491.us.2, 19
  %indvars.iv.next1123.2 = add i64 %indvars.iv1122.2, 1
  %indvar.next1483 = add i64 %indvar1482, 1
  br i1 %polly.loop_cond493.us.2, label %polly.loop_header487.us.2, label %polly.loop_header487.us.3

polly.loop_header487.us.3:                        ; preds = %polly.loop_exit497.us.2, %polly.loop_exit497.us.3
  %indvar1462 = phi i64 [ %indvar.next1463, %polly.loop_exit497.us.3 ], [ 0, %polly.loop_exit497.us.2 ]
  %indvars.iv1122.3 = phi i64 [ %indvars.iv.next1123.3, %polly.loop_exit497.us.3 ], [ %391, %polly.loop_exit497.us.2 ]
  %polly.indvar491.us.3 = phi i64 [ %polly.indvar_next492.us.3, %polly.loop_exit497.us.3 ], [ %403, %polly.loop_exit497.us.2 ]
  %871 = add i64 %390, %indvar1462
  %smin1464 = call i64 @llvm.smin.i64(i64 %871, i64 255)
  %872 = add nsw i64 %smin1464, 1
  %smin1124.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1122.3, i64 255)
  %873 = add nsw i64 %polly.indvar491.us.3, %393
  %polly.loop_guard498.us.31199 = icmp sgt i64 %873, -1
  br i1 %polly.loop_guard498.us.31199, label %polly.loop_header495.preheader.us.3, label %polly.loop_exit497.us.3

polly.loop_header495.preheader.us.3:              ; preds = %polly.loop_header487.us.3
  %874 = add nsw i64 %polly.indvar491.us.3, %392
  %polly.access.add.Packed_MemRef_call2313507.us.3 = add nuw nsw i64 %873, 3600
  %polly.access.Packed_MemRef_call2313508.us.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.us.3
  %_p_scalar_509.us.3 = load double, double* %polly.access.Packed_MemRef_call2313508.us.3, align 8
  %polly.access.Packed_MemRef_call1311516.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.us.3
  %_p_scalar_517.us.3 = load double, double* %polly.access.Packed_MemRef_call1311516.us.3, align 8
  %875 = mul i64 %874, 9600
  %min.iters.check1465 = icmp ult i64 %872, 4
  br i1 %min.iters.check1465, label %polly.loop_header495.us.3.preheader, label %vector.ph1466

vector.ph1466:                                    ; preds = %polly.loop_header495.preheader.us.3
  %n.vec1468 = and i64 %872, -4
  %broadcast.splatinsert1474 = insertelement <4 x double> poison, double %_p_scalar_509.us.3, i32 0
  %broadcast.splat1475 = shufflevector <4 x double> %broadcast.splatinsert1474, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1477 = insertelement <4 x double> poison, double %_p_scalar_517.us.3, i32 0
  %broadcast.splat1478 = shufflevector <4 x double> %broadcast.splatinsert1477, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1466
  %index1469 = phi i64 [ 0, %vector.ph1466 ], [ %index.next1470, %vector.body1458 ]
  %876 = add nuw nsw i64 %index1469, %339
  %877 = add nuw nsw i64 %index1469, 3600
  %878 = getelementptr double, double* %Packed_MemRef_call1311, i64 %877
  %879 = bitcast double* %878 to <4 x double>*
  %wide.load1473 = load <4 x double>, <4 x double>* %879, align 8
  %880 = fmul fast <4 x double> %broadcast.splat1475, %wide.load1473
  %881 = getelementptr double, double* %Packed_MemRef_call2313, i64 %877
  %882 = bitcast double* %881 to <4 x double>*
  %wide.load1476 = load <4 x double>, <4 x double>* %882, align 8
  %883 = fmul fast <4 x double> %broadcast.splat1478, %wide.load1476
  %884 = shl i64 %876, 3
  %885 = add i64 %884, %875
  %886 = getelementptr i8, i8* %call, i64 %885
  %887 = bitcast i8* %886 to <4 x double>*
  %wide.load1479 = load <4 x double>, <4 x double>* %887, align 8, !alias.scope !92, !noalias !94
  %888 = fadd fast <4 x double> %883, %880
  %889 = fmul fast <4 x double> %888, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %890 = fadd fast <4 x double> %889, %wide.load1479
  %891 = bitcast i8* %886 to <4 x double>*
  store <4 x double> %890, <4 x double>* %891, align 8, !alias.scope !92, !noalias !94
  %index.next1470 = add i64 %index1469, 4
  %892 = icmp eq i64 %index.next1470, %n.vec1468
  br i1 %892, label %middle.block1456, label %vector.body1458, !llvm.loop !177

middle.block1456:                                 ; preds = %vector.body1458
  %cmp.n1472 = icmp eq i64 %872, %n.vec1468
  br i1 %cmp.n1472, label %polly.loop_exit497.us.3, label %polly.loop_header495.us.3.preheader

polly.loop_header495.us.3.preheader:              ; preds = %polly.loop_header495.preheader.us.3, %middle.block1456
  %polly.indvar499.us.3.ph = phi i64 [ 0, %polly.loop_header495.preheader.us.3 ], [ %n.vec1468, %middle.block1456 ]
  br label %polly.loop_header495.us.3

polly.loop_header495.us.3:                        ; preds = %polly.loop_header495.us.3.preheader, %polly.loop_header495.us.3
  %polly.indvar499.us.3 = phi i64 [ %polly.indvar_next500.us.3, %polly.loop_header495.us.3 ], [ %polly.indvar499.us.3.ph, %polly.loop_header495.us.3.preheader ]
  %893 = add nuw nsw i64 %polly.indvar499.us.3, %339
  %polly.access.add.Packed_MemRef_call1311503.us.3 = add nuw nsw i64 %polly.indvar499.us.3, 3600
  %polly.access.Packed_MemRef_call1311504.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call1311504.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_509.us.3, %_p_scalar_505.us.3
  %polly.access.Packed_MemRef_call2313512.us.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.us.3
  %_p_scalar_513.us.3 = load double, double* %polly.access.Packed_MemRef_call2313512.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_517.us.3, %_p_scalar_513.us.3
  %894 = shl i64 %893, 3
  %895 = add i64 %894, %875
  %scevgep518.us.3 = getelementptr i8, i8* %call, i64 %895
  %scevgep518519.us.3 = bitcast i8* %scevgep518.us.3 to double*
  %_p_scalar_520.us.3 = load double, double* %scevgep518519.us.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_520.us.3
  store double %p_add42.i79.us.3, double* %scevgep518519.us.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.us.3 = add nuw nsw i64 %polly.indvar499.us.3, 1
  %exitcond1125.3.not = icmp eq i64 %polly.indvar499.us.3, %smin1124.3
  br i1 %exitcond1125.3.not, label %polly.loop_exit497.us.3, label %polly.loop_header495.us.3, !llvm.loop !178

polly.loop_exit497.us.3:                          ; preds = %polly.loop_header495.us.3, %middle.block1456, %polly.loop_header487.us.3
  %polly.indvar_next492.us.3 = add nuw nsw i64 %polly.indvar491.us.3, 1
  %polly.loop_cond493.us.3 = icmp ult i64 %polly.indvar491.us.3, 19
  %indvars.iv.next1123.3 = add i64 %indvars.iv1122.3, 1
  %indvar.next1463 = add i64 %indvar1462, 1
  br i1 %polly.loop_cond493.us.3, label %polly.loop_header487.us.3, label %polly.loop_exit482

polly.loop_header645.1:                           ; preds = %polly.loop_header645, %polly.loop_header645.1
  %polly.indvar648.1 = phi i64 [ %polly.indvar_next649.1, %polly.loop_header645.1 ], [ 0, %polly.loop_header645 ]
  %896 = add nuw nsw i64 %polly.indvar648.1, %512
  %polly.access.mul.call2652.1 = mul nuw nsw i64 %896, 1000
  %polly.access.add.call2653.1 = add nuw nsw i64 %444, %polly.access.mul.call2652.1
  %polly.access.call2654.1 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.1
  %polly.access.call2654.load.1 = load double, double* %polly.access.call2654.1, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.1 = add nuw nsw i64 %polly.indvar648.1, 1200
  %polly.access.Packed_MemRef_call2528.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.1
  store double %polly.access.call2654.load.1, double* %polly.access.Packed_MemRef_call2528.1, align 8
  %polly.indvar_next649.1 = add nuw nsw i64 %polly.indvar648.1, 1
  %exitcond1133.1.not = icmp eq i64 %polly.indvar_next649.1, %indvars.iv1131
  br i1 %exitcond1133.1.not, label %polly.loop_header645.2, label %polly.loop_header645.1

polly.loop_header645.2:                           ; preds = %polly.loop_header645.1, %polly.loop_header645.2
  %polly.indvar648.2 = phi i64 [ %polly.indvar_next649.2, %polly.loop_header645.2 ], [ 0, %polly.loop_header645.1 ]
  %897 = add nuw nsw i64 %polly.indvar648.2, %512
  %polly.access.mul.call2652.2 = mul nuw nsw i64 %897, 1000
  %polly.access.add.call2653.2 = add nuw nsw i64 %445, %polly.access.mul.call2652.2
  %polly.access.call2654.2 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.2
  %polly.access.call2654.load.2 = load double, double* %polly.access.call2654.2, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.2 = add nuw nsw i64 %polly.indvar648.2, 2400
  %polly.access.Packed_MemRef_call2528.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.2
  store double %polly.access.call2654.load.2, double* %polly.access.Packed_MemRef_call2528.2, align 8
  %polly.indvar_next649.2 = add nuw nsw i64 %polly.indvar648.2, 1
  %exitcond1133.2.not = icmp eq i64 %polly.indvar_next649.2, %indvars.iv1131
  br i1 %exitcond1133.2.not, label %polly.loop_header645.3, label %polly.loop_header645.2

polly.loop_header645.3:                           ; preds = %polly.loop_header645.2, %polly.loop_header645.3
  %polly.indvar648.3 = phi i64 [ %polly.indvar_next649.3, %polly.loop_header645.3 ], [ 0, %polly.loop_header645.2 ]
  %898 = add nuw nsw i64 %polly.indvar648.3, %512
  %polly.access.mul.call2652.3 = mul nuw nsw i64 %898, 1000
  %polly.access.add.call2653.3 = add nuw nsw i64 %446, %polly.access.mul.call2652.3
  %polly.access.call2654.3 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.3
  %polly.access.call2654.load.3 = load double, double* %polly.access.call2654.3, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.3 = add nuw nsw i64 %polly.indvar648.3, 3600
  %polly.access.Packed_MemRef_call2528.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.3
  store double %polly.access.call2654.load.3, double* %polly.access.Packed_MemRef_call2528.3, align 8
  %polly.indvar_next649.3 = add nuw nsw i64 %polly.indvar648.3, 1
  %exitcond1133.3.not = icmp eq i64 %polly.indvar_next649.3, %indvars.iv1131
  br i1 %exitcond1133.3.not, label %polly.loop_exit647.3, label %polly.loop_header645.3

polly.loop_exit647.3:                             ; preds = %polly.loop_header645.3
  %899 = mul nsw i64 %polly.indvar636, -256
  %900 = mul nuw nsw i64 %polly.indvar636, 13
  %901 = add nuw nsw i64 %polly.indvar636, 4
  %pexp.p_div_q655 = udiv i64 %901, 5
  %902 = sub nsw i64 %900, %pexp.p_div_q655
  br label %polly.loop_header656

polly.loop_header681.1:                           ; preds = %polly.loop_header681, %polly.loop_header681.1
  %polly.indvar685.1 = phi i64 [ %polly.indvar_next686.1, %polly.loop_header681.1 ], [ %570, %polly.loop_header681 ]
  %903 = add nuw nsw i64 %polly.indvar685.1, %512
  %polly.access.mul.call1689.1 = mul nsw i64 %903, 1000
  %polly.access.add.call1690.1 = add nuw nsw i64 %444, %polly.access.mul.call1689.1
  %polly.access.call1691.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.1
  %polly.access.call1691.load.1 = load double, double* %polly.access.call1691.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.1 = add nuw nsw i64 %polly.indvar685.1, 1200
  %polly.access.Packed_MemRef_call1526694.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.1
  store double %polly.access.call1691.load.1, double* %polly.access.Packed_MemRef_call1526694.1, align 8
  %polly.indvar_next686.1 = add nuw nsw i64 %polly.indvar685.1, 1
  %polly.loop_cond687.not.not.1 = icmp slt i64 %polly.indvar685.1, %571
  br i1 %polly.loop_cond687.not.not.1, label %polly.loop_header681.1, label %polly.loop_header681.2

polly.loop_header681.2:                           ; preds = %polly.loop_header681.1, %polly.loop_header681.2
  %polly.indvar685.2 = phi i64 [ %polly.indvar_next686.2, %polly.loop_header681.2 ], [ %570, %polly.loop_header681.1 ]
  %904 = add nuw nsw i64 %polly.indvar685.2, %512
  %polly.access.mul.call1689.2 = mul nsw i64 %904, 1000
  %polly.access.add.call1690.2 = add nuw nsw i64 %445, %polly.access.mul.call1689.2
  %polly.access.call1691.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.2
  %polly.access.call1691.load.2 = load double, double* %polly.access.call1691.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.2 = add nuw nsw i64 %polly.indvar685.2, 2400
  %polly.access.Packed_MemRef_call1526694.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.2
  store double %polly.access.call1691.load.2, double* %polly.access.Packed_MemRef_call1526694.2, align 8
  %polly.indvar_next686.2 = add nuw nsw i64 %polly.indvar685.2, 1
  %polly.loop_cond687.not.not.2 = icmp slt i64 %polly.indvar685.2, %571
  br i1 %polly.loop_cond687.not.not.2, label %polly.loop_header681.2, label %polly.loop_header681.3

polly.loop_header681.3:                           ; preds = %polly.loop_header681.2, %polly.loop_header681.3
  %polly.indvar685.3 = phi i64 [ %polly.indvar_next686.3, %polly.loop_header681.3 ], [ %570, %polly.loop_header681.2 ]
  %905 = add nuw nsw i64 %polly.indvar685.3, %512
  %polly.access.mul.call1689.3 = mul nsw i64 %905, 1000
  %polly.access.add.call1690.3 = add nuw nsw i64 %446, %polly.access.mul.call1689.3
  %polly.access.call1691.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.3
  %polly.access.call1691.load.3 = load double, double* %polly.access.call1691.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.3 = add nuw nsw i64 %polly.indvar685.3, 3600
  %polly.access.Packed_MemRef_call1526694.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.3
  store double %polly.access.call1691.load.3, double* %polly.access.Packed_MemRef_call1526694.3, align 8
  %polly.indvar_next686.3 = add nuw nsw i64 %polly.indvar685.3, 1
  %polly.loop_cond687.not.not.3 = icmp slt i64 %polly.indvar685.3, %571
  br i1 %polly.loop_cond687.not.not.3, label %polly.loop_header681.3, label %polly.loop_header695.preheader

polly.loop_header669.us.1:                        ; preds = %polly.loop_header669.us.1.preheader, %polly.loop_header669.us.1
  %polly.indvar673.us.1 = phi i64 [ %polly.indvar_next674.us.1, %polly.loop_header669.us.1 ], [ 0, %polly.loop_header669.us.1.preheader ]
  %906 = add nuw nsw i64 %polly.indvar673.us.1, %512
  %polly.access.mul.call1677.us.1 = mul nuw nsw i64 %906, 1000
  %polly.access.add.call1678.us.1 = add nuw nsw i64 %444, %polly.access.mul.call1677.us.1
  %polly.access.call1679.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.1
  %polly.access.call1679.load.us.1 = load double, double* %polly.access.call1679.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.1 = add nuw nsw i64 %polly.indvar673.us.1, 1200
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.1
  store double %polly.access.call1679.load.us.1, double* %polly.access.Packed_MemRef_call1526.us.1, align 8
  %polly.indvar_next674.us.1 = add nuw i64 %polly.indvar673.us.1, 1
  %exitcond1136.1.not = icmp eq i64 %polly.indvar673.us.1, %568
  br i1 %exitcond1136.1.not, label %polly.loop_exit671.loopexit.us.1, label %polly.loop_header669.us.1

polly.loop_exit671.loopexit.us.1:                 ; preds = %polly.loop_header669.us.1
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.2.preheader, label %polly.loop_header681.us.1

polly.loop_header681.us.1:                        ; preds = %polly.loop_exit671.loopexit.us.1, %polly.loop_header681.us.1
  %polly.indvar685.us.1 = phi i64 [ %polly.indvar_next686.us.1, %polly.loop_header681.us.1 ], [ %570, %polly.loop_exit671.loopexit.us.1 ]
  %907 = add nuw nsw i64 %polly.indvar685.us.1, %512
  %polly.access.mul.call1689.us.1 = mul nsw i64 %907, 1000
  %polly.access.add.call1690.us.1 = add nuw nsw i64 %444, %polly.access.mul.call1689.us.1
  %polly.access.call1691.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.1
  %polly.access.call1691.load.us.1 = load double, double* %polly.access.call1691.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.1 = add nuw nsw i64 %polly.indvar685.us.1, 1200
  %polly.access.Packed_MemRef_call1526694.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.1
  store double %polly.access.call1691.load.us.1, double* %polly.access.Packed_MemRef_call1526694.us.1, align 8
  %polly.indvar_next686.us.1 = add nuw nsw i64 %polly.indvar685.us.1, 1
  %polly.loop_cond687.not.not.us.1 = icmp slt i64 %polly.indvar685.us.1, %571
  br i1 %polly.loop_cond687.not.not.us.1, label %polly.loop_header681.us.1, label %polly.loop_header669.us.2.preheader

polly.loop_header669.us.2.preheader:              ; preds = %polly.loop_header681.us.1, %polly.loop_exit671.loopexit.us.1
  br label %polly.loop_header669.us.2

polly.loop_header669.us.2:                        ; preds = %polly.loop_header669.us.2.preheader, %polly.loop_header669.us.2
  %polly.indvar673.us.2 = phi i64 [ %polly.indvar_next674.us.2, %polly.loop_header669.us.2 ], [ 0, %polly.loop_header669.us.2.preheader ]
  %908 = add nuw nsw i64 %polly.indvar673.us.2, %512
  %polly.access.mul.call1677.us.2 = mul nuw nsw i64 %908, 1000
  %polly.access.add.call1678.us.2 = add nuw nsw i64 %445, %polly.access.mul.call1677.us.2
  %polly.access.call1679.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.2
  %polly.access.call1679.load.us.2 = load double, double* %polly.access.call1679.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.2 = add nuw nsw i64 %polly.indvar673.us.2, 2400
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.2
  store double %polly.access.call1679.load.us.2, double* %polly.access.Packed_MemRef_call1526.us.2, align 8
  %polly.indvar_next674.us.2 = add nuw i64 %polly.indvar673.us.2, 1
  %exitcond1136.2.not = icmp eq i64 %polly.indvar673.us.2, %568
  br i1 %exitcond1136.2.not, label %polly.loop_exit671.loopexit.us.2, label %polly.loop_header669.us.2

polly.loop_exit671.loopexit.us.2:                 ; preds = %polly.loop_header669.us.2
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.3.preheader, label %polly.loop_header681.us.2

polly.loop_header681.us.2:                        ; preds = %polly.loop_exit671.loopexit.us.2, %polly.loop_header681.us.2
  %polly.indvar685.us.2 = phi i64 [ %polly.indvar_next686.us.2, %polly.loop_header681.us.2 ], [ %570, %polly.loop_exit671.loopexit.us.2 ]
  %909 = add nuw nsw i64 %polly.indvar685.us.2, %512
  %polly.access.mul.call1689.us.2 = mul nsw i64 %909, 1000
  %polly.access.add.call1690.us.2 = add nuw nsw i64 %445, %polly.access.mul.call1689.us.2
  %polly.access.call1691.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.2
  %polly.access.call1691.load.us.2 = load double, double* %polly.access.call1691.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.2 = add nuw nsw i64 %polly.indvar685.us.2, 2400
  %polly.access.Packed_MemRef_call1526694.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.2
  store double %polly.access.call1691.load.us.2, double* %polly.access.Packed_MemRef_call1526694.us.2, align 8
  %polly.indvar_next686.us.2 = add nuw nsw i64 %polly.indvar685.us.2, 1
  %polly.loop_cond687.not.not.us.2 = icmp slt i64 %polly.indvar685.us.2, %571
  br i1 %polly.loop_cond687.not.not.us.2, label %polly.loop_header681.us.2, label %polly.loop_header669.us.3.preheader

polly.loop_header669.us.3.preheader:              ; preds = %polly.loop_header681.us.2, %polly.loop_exit671.loopexit.us.2
  br label %polly.loop_header669.us.3

polly.loop_header669.us.3:                        ; preds = %polly.loop_header669.us.3.preheader, %polly.loop_header669.us.3
  %polly.indvar673.us.3 = phi i64 [ %polly.indvar_next674.us.3, %polly.loop_header669.us.3 ], [ 0, %polly.loop_header669.us.3.preheader ]
  %910 = add nuw nsw i64 %polly.indvar673.us.3, %512
  %polly.access.mul.call1677.us.3 = mul nuw nsw i64 %910, 1000
  %polly.access.add.call1678.us.3 = add nuw nsw i64 %446, %polly.access.mul.call1677.us.3
  %polly.access.call1679.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.3
  %polly.access.call1679.load.us.3 = load double, double* %polly.access.call1679.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.3 = add nuw nsw i64 %polly.indvar673.us.3, 3600
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.3
  store double %polly.access.call1679.load.us.3, double* %polly.access.Packed_MemRef_call1526.us.3, align 8
  %polly.indvar_next674.us.3 = add nuw i64 %polly.indvar673.us.3, 1
  %exitcond1136.3.not = icmp eq i64 %polly.indvar673.us.3, %568
  br i1 %exitcond1136.3.not, label %polly.loop_exit671.loopexit.us.3, label %polly.loop_header669.us.3

polly.loop_exit671.loopexit.us.3:                 ; preds = %polly.loop_header669.us.3
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header681.us.3

polly.loop_header681.us.3:                        ; preds = %polly.loop_exit671.loopexit.us.3, %polly.loop_header681.us.3
  %polly.indvar685.us.3 = phi i64 [ %polly.indvar_next686.us.3, %polly.loop_header681.us.3 ], [ %570, %polly.loop_exit671.loopexit.us.3 ]
  %911 = add nuw nsw i64 %polly.indvar685.us.3, %512
  %polly.access.mul.call1689.us.3 = mul nsw i64 %911, 1000
  %polly.access.add.call1690.us.3 = add nuw nsw i64 %446, %polly.access.mul.call1689.us.3
  %polly.access.call1691.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.3
  %polly.access.call1691.load.us.3 = load double, double* %polly.access.call1691.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.3 = add nuw nsw i64 %polly.indvar685.us.3, 3600
  %polly.access.Packed_MemRef_call1526694.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.3
  store double %polly.access.call1691.load.us.3, double* %polly.access.Packed_MemRef_call1526694.us.3, align 8
  %polly.indvar_next686.us.3 = add nuw nsw i64 %polly.indvar685.us.3, 1
  %polly.loop_cond687.not.not.us.3 = icmp slt i64 %polly.indvar685.us.3, %571
  br i1 %polly.loop_cond687.not.not.us.3, label %polly.loop_header681.us.3, label %polly.loop_header695.preheader

polly.loop_header702.us.1:                        ; preds = %polly.loop_exit712.us, %polly.loop_exit712.us.1
  %indvar1363 = phi i64 [ %indvar.next1364, %polly.loop_exit712.us.1 ], [ 0, %polly.loop_exit712.us ]
  %indvars.iv1149.1 = phi i64 [ %indvars.iv.next1150.1, %polly.loop_exit712.us.1 ], [ %564, %polly.loop_exit712.us ]
  %polly.indvar706.us.1 = phi i64 [ %polly.indvar_next707.us.1, %polly.loop_exit712.us.1 ], [ %576, %polly.loop_exit712.us ]
  %912 = add i64 %533, %indvar1363
  %smin1380 = call i64 @llvm.smin.i64(i64 %912, i64 255)
  %913 = add nsw i64 %smin1380, 1
  %914 = mul nuw nsw i64 %indvar1363, 9600
  %915 = add i64 %540, %914
  %scevgep1365 = getelementptr i8, i8* %call, i64 %915
  %916 = add i64 %541, %914
  %scevgep1366 = getelementptr i8, i8* %call, i64 %916
  %917 = add i64 %543, %indvar1363
  %smin1367 = call i64 @llvm.smin.i64(i64 %917, i64 255)
  %918 = shl nsw i64 %smin1367, 3
  %scevgep1368 = getelementptr i8, i8* %scevgep1366, i64 %918
  %scevgep1371 = getelementptr i8, i8* %scevgep1370, i64 %918
  %smin1151.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1149.1, i64 255)
  %919 = add nsw i64 %polly.indvar706.us.1, %566
  %polly.loop_guard713.us.11201 = icmp sgt i64 %919, -1
  br i1 %polly.loop_guard713.us.11201, label %polly.loop_header710.preheader.us.1, label %polly.loop_exit712.us.1

polly.loop_header710.preheader.us.1:              ; preds = %polly.loop_header702.us.1
  %920 = add nsw i64 %polly.indvar706.us.1, %565
  %polly.access.add.Packed_MemRef_call2528722.us.1 = add nuw nsw i64 %919, 1200
  %polly.access.Packed_MemRef_call2528723.us.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.us.1
  %_p_scalar_724.us.1 = load double, double* %polly.access.Packed_MemRef_call2528723.us.1, align 8
  %polly.access.Packed_MemRef_call1526731.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.us.1
  %_p_scalar_732.us.1 = load double, double* %polly.access.Packed_MemRef_call1526731.us.1, align 8
  %921 = mul i64 %920, 9600
  %min.iters.check1381 = icmp ult i64 %913, 4
  br i1 %min.iters.check1381, label %polly.loop_header710.us.1.preheader, label %vector.memcheck1361

vector.memcheck1361:                              ; preds = %polly.loop_header710.preheader.us.1
  %bound01372 = icmp ult i8* %scevgep1365, %scevgep1371
  %bound11373 = icmp ult i8* %scevgep1369, %scevgep1368
  %found.conflict1374 = and i1 %bound01372, %bound11373
  br i1 %found.conflict1374, label %polly.loop_header710.us.1.preheader, label %vector.ph1382

vector.ph1382:                                    ; preds = %vector.memcheck1361
  %n.vec1384 = and i64 %913, -4
  %broadcast.splatinsert1390 = insertelement <4 x double> poison, double %_p_scalar_724.us.1, i32 0
  %broadcast.splat1391 = shufflevector <4 x double> %broadcast.splatinsert1390, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1393 = insertelement <4 x double> poison, double %_p_scalar_732.us.1, i32 0
  %broadcast.splat1394 = shufflevector <4 x double> %broadcast.splatinsert1393, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %vector.ph1382
  %index1385 = phi i64 [ 0, %vector.ph1382 ], [ %index.next1386, %vector.body1378 ]
  %922 = add nuw nsw i64 %index1385, %512
  %923 = add nuw nsw i64 %index1385, 1200
  %924 = getelementptr double, double* %Packed_MemRef_call1526, i64 %923
  %925 = bitcast double* %924 to <4 x double>*
  %wide.load1389 = load <4 x double>, <4 x double>* %925, align 8, !alias.scope !179
  %926 = fmul fast <4 x double> %broadcast.splat1391, %wide.load1389
  %927 = getelementptr double, double* %Packed_MemRef_call2528, i64 %923
  %928 = bitcast double* %927 to <4 x double>*
  %wide.load1392 = load <4 x double>, <4 x double>* %928, align 8
  %929 = fmul fast <4 x double> %broadcast.splat1394, %wide.load1392
  %930 = shl i64 %922, 3
  %931 = add i64 %930, %921
  %932 = getelementptr i8, i8* %call, i64 %931
  %933 = bitcast i8* %932 to <4 x double>*
  %wide.load1395 = load <4 x double>, <4 x double>* %933, align 8, !alias.scope !182, !noalias !184
  %934 = fadd fast <4 x double> %929, %926
  %935 = fmul fast <4 x double> %934, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %936 = fadd fast <4 x double> %935, %wide.load1395
  %937 = bitcast i8* %932 to <4 x double>*
  store <4 x double> %936, <4 x double>* %937, align 8, !alias.scope !182, !noalias !184
  %index.next1386 = add i64 %index1385, 4
  %938 = icmp eq i64 %index.next1386, %n.vec1384
  br i1 %938, label %middle.block1376, label %vector.body1378, !llvm.loop !185

middle.block1376:                                 ; preds = %vector.body1378
  %cmp.n1388 = icmp eq i64 %913, %n.vec1384
  br i1 %cmp.n1388, label %polly.loop_exit712.us.1, label %polly.loop_header710.us.1.preheader

polly.loop_header710.us.1.preheader:              ; preds = %vector.memcheck1361, %polly.loop_header710.preheader.us.1, %middle.block1376
  %polly.indvar714.us.1.ph = phi i64 [ 0, %vector.memcheck1361 ], [ 0, %polly.loop_header710.preheader.us.1 ], [ %n.vec1384, %middle.block1376 ]
  br label %polly.loop_header710.us.1

polly.loop_header710.us.1:                        ; preds = %polly.loop_header710.us.1.preheader, %polly.loop_header710.us.1
  %polly.indvar714.us.1 = phi i64 [ %polly.indvar_next715.us.1, %polly.loop_header710.us.1 ], [ %polly.indvar714.us.1.ph, %polly.loop_header710.us.1.preheader ]
  %939 = add nuw nsw i64 %polly.indvar714.us.1, %512
  %polly.access.add.Packed_MemRef_call1526718.us.1 = add nuw nsw i64 %polly.indvar714.us.1, 1200
  %polly.access.Packed_MemRef_call1526719.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.us.1
  %_p_scalar_720.us.1 = load double, double* %polly.access.Packed_MemRef_call1526719.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_724.us.1, %_p_scalar_720.us.1
  %polly.access.Packed_MemRef_call2528727.us.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.us.1
  %_p_scalar_728.us.1 = load double, double* %polly.access.Packed_MemRef_call2528727.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_732.us.1, %_p_scalar_728.us.1
  %940 = shl i64 %939, 3
  %941 = add i64 %940, %921
  %scevgep733.us.1 = getelementptr i8, i8* %call, i64 %941
  %scevgep733734.us.1 = bitcast i8* %scevgep733.us.1 to double*
  %_p_scalar_735.us.1 = load double, double* %scevgep733734.us.1, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_735.us.1
  store double %p_add42.i.us.1, double* %scevgep733734.us.1, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.us.1 = add nuw nsw i64 %polly.indvar714.us.1, 1
  %exitcond1152.1.not = icmp eq i64 %polly.indvar714.us.1, %smin1151.1
  br i1 %exitcond1152.1.not, label %polly.loop_exit712.us.1, label %polly.loop_header710.us.1, !llvm.loop !186

polly.loop_exit712.us.1:                          ; preds = %polly.loop_header710.us.1, %middle.block1376, %polly.loop_header702.us.1
  %polly.indvar_next707.us.1 = add nuw nsw i64 %polly.indvar706.us.1, 1
  %polly.loop_cond708.us.1 = icmp ult i64 %polly.indvar706.us.1, 19
  %indvars.iv.next1150.1 = add i64 %indvars.iv1149.1, 1
  %indvar.next1364 = add i64 %indvar1363, 1
  br i1 %polly.loop_cond708.us.1, label %polly.loop_header702.us.1, label %polly.loop_header702.us.2

polly.loop_header702.us.2:                        ; preds = %polly.loop_exit712.us.1, %polly.loop_exit712.us.2
  %indvar1328 = phi i64 [ %indvar.next1329, %polly.loop_exit712.us.2 ], [ 0, %polly.loop_exit712.us.1 ]
  %indvars.iv1149.2 = phi i64 [ %indvars.iv.next1150.2, %polly.loop_exit712.us.2 ], [ %564, %polly.loop_exit712.us.1 ]
  %polly.indvar706.us.2 = phi i64 [ %polly.indvar_next707.us.2, %polly.loop_exit712.us.2 ], [ %576, %polly.loop_exit712.us.1 ]
  %942 = add i64 %548, %indvar1328
  %smin1345 = call i64 @llvm.smin.i64(i64 %942, i64 255)
  %943 = add nsw i64 %smin1345, 1
  %944 = mul nuw nsw i64 %indvar1328, 9600
  %945 = add i64 %555, %944
  %scevgep1330 = getelementptr i8, i8* %call, i64 %945
  %946 = add i64 %556, %944
  %scevgep1331 = getelementptr i8, i8* %call, i64 %946
  %947 = add i64 %558, %indvar1328
  %smin1332 = call i64 @llvm.smin.i64(i64 %947, i64 255)
  %948 = shl nsw i64 %smin1332, 3
  %scevgep1333 = getelementptr i8, i8* %scevgep1331, i64 %948
  %scevgep1336 = getelementptr i8, i8* %scevgep1335, i64 %948
  %smin1151.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1149.2, i64 255)
  %949 = add nsw i64 %polly.indvar706.us.2, %566
  %polly.loop_guard713.us.21202 = icmp sgt i64 %949, -1
  br i1 %polly.loop_guard713.us.21202, label %polly.loop_header710.preheader.us.2, label %polly.loop_exit712.us.2

polly.loop_header710.preheader.us.2:              ; preds = %polly.loop_header702.us.2
  %950 = add nsw i64 %polly.indvar706.us.2, %565
  %polly.access.add.Packed_MemRef_call2528722.us.2 = add nuw nsw i64 %949, 2400
  %polly.access.Packed_MemRef_call2528723.us.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.us.2
  %_p_scalar_724.us.2 = load double, double* %polly.access.Packed_MemRef_call2528723.us.2, align 8
  %polly.access.Packed_MemRef_call1526731.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.us.2
  %_p_scalar_732.us.2 = load double, double* %polly.access.Packed_MemRef_call1526731.us.2, align 8
  %951 = mul i64 %950, 9600
  %min.iters.check1346 = icmp ult i64 %943, 4
  br i1 %min.iters.check1346, label %polly.loop_header710.us.2.preheader, label %vector.memcheck1326

vector.memcheck1326:                              ; preds = %polly.loop_header710.preheader.us.2
  %bound01337 = icmp ult i8* %scevgep1330, %scevgep1336
  %bound11338 = icmp ult i8* %scevgep1334, %scevgep1333
  %found.conflict1339 = and i1 %bound01337, %bound11338
  br i1 %found.conflict1339, label %polly.loop_header710.us.2.preheader, label %vector.ph1347

vector.ph1347:                                    ; preds = %vector.memcheck1326
  %n.vec1349 = and i64 %943, -4
  %broadcast.splatinsert1355 = insertelement <4 x double> poison, double %_p_scalar_724.us.2, i32 0
  %broadcast.splat1356 = shufflevector <4 x double> %broadcast.splatinsert1355, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1358 = insertelement <4 x double> poison, double %_p_scalar_732.us.2, i32 0
  %broadcast.splat1359 = shufflevector <4 x double> %broadcast.splatinsert1358, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1343

vector.body1343:                                  ; preds = %vector.body1343, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1351, %vector.body1343 ]
  %952 = add nuw nsw i64 %index1350, %512
  %953 = add nuw nsw i64 %index1350, 2400
  %954 = getelementptr double, double* %Packed_MemRef_call1526, i64 %953
  %955 = bitcast double* %954 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %955, align 8, !alias.scope !187
  %956 = fmul fast <4 x double> %broadcast.splat1356, %wide.load1354
  %957 = getelementptr double, double* %Packed_MemRef_call2528, i64 %953
  %958 = bitcast double* %957 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %958, align 8
  %959 = fmul fast <4 x double> %broadcast.splat1359, %wide.load1357
  %960 = shl i64 %952, 3
  %961 = add i64 %960, %951
  %962 = getelementptr i8, i8* %call, i64 %961
  %963 = bitcast i8* %962 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %963, align 8, !alias.scope !190, !noalias !192
  %964 = fadd fast <4 x double> %959, %956
  %965 = fmul fast <4 x double> %964, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %966 = fadd fast <4 x double> %965, %wide.load1360
  %967 = bitcast i8* %962 to <4 x double>*
  store <4 x double> %966, <4 x double>* %967, align 8, !alias.scope !190, !noalias !192
  %index.next1351 = add i64 %index1350, 4
  %968 = icmp eq i64 %index.next1351, %n.vec1349
  br i1 %968, label %middle.block1341, label %vector.body1343, !llvm.loop !193

middle.block1341:                                 ; preds = %vector.body1343
  %cmp.n1353 = icmp eq i64 %943, %n.vec1349
  br i1 %cmp.n1353, label %polly.loop_exit712.us.2, label %polly.loop_header710.us.2.preheader

polly.loop_header710.us.2.preheader:              ; preds = %vector.memcheck1326, %polly.loop_header710.preheader.us.2, %middle.block1341
  %polly.indvar714.us.2.ph = phi i64 [ 0, %vector.memcheck1326 ], [ 0, %polly.loop_header710.preheader.us.2 ], [ %n.vec1349, %middle.block1341 ]
  br label %polly.loop_header710.us.2

polly.loop_header710.us.2:                        ; preds = %polly.loop_header710.us.2.preheader, %polly.loop_header710.us.2
  %polly.indvar714.us.2 = phi i64 [ %polly.indvar_next715.us.2, %polly.loop_header710.us.2 ], [ %polly.indvar714.us.2.ph, %polly.loop_header710.us.2.preheader ]
  %969 = add nuw nsw i64 %polly.indvar714.us.2, %512
  %polly.access.add.Packed_MemRef_call1526718.us.2 = add nuw nsw i64 %polly.indvar714.us.2, 2400
  %polly.access.Packed_MemRef_call1526719.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.us.2
  %_p_scalar_720.us.2 = load double, double* %polly.access.Packed_MemRef_call1526719.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_724.us.2, %_p_scalar_720.us.2
  %polly.access.Packed_MemRef_call2528727.us.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.us.2
  %_p_scalar_728.us.2 = load double, double* %polly.access.Packed_MemRef_call2528727.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_732.us.2, %_p_scalar_728.us.2
  %970 = shl i64 %969, 3
  %971 = add i64 %970, %951
  %scevgep733.us.2 = getelementptr i8, i8* %call, i64 %971
  %scevgep733734.us.2 = bitcast i8* %scevgep733.us.2 to double*
  %_p_scalar_735.us.2 = load double, double* %scevgep733734.us.2, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_735.us.2
  store double %p_add42.i.us.2, double* %scevgep733734.us.2, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.us.2 = add nuw nsw i64 %polly.indvar714.us.2, 1
  %exitcond1152.2.not = icmp eq i64 %polly.indvar714.us.2, %smin1151.2
  br i1 %exitcond1152.2.not, label %polly.loop_exit712.us.2, label %polly.loop_header710.us.2, !llvm.loop !194

polly.loop_exit712.us.2:                          ; preds = %polly.loop_header710.us.2, %middle.block1341, %polly.loop_header702.us.2
  %polly.indvar_next707.us.2 = add nuw nsw i64 %polly.indvar706.us.2, 1
  %polly.loop_cond708.us.2 = icmp ult i64 %polly.indvar706.us.2, 19
  %indvars.iv.next1150.2 = add i64 %indvars.iv1149.2, 1
  %indvar.next1329 = add i64 %indvar1328, 1
  br i1 %polly.loop_cond708.us.2, label %polly.loop_header702.us.2, label %polly.loop_header702.us.3

polly.loop_header702.us.3:                        ; preds = %polly.loop_exit712.us.2, %polly.loop_exit712.us.3
  %indvar1308 = phi i64 [ %indvar.next1309, %polly.loop_exit712.us.3 ], [ 0, %polly.loop_exit712.us.2 ]
  %indvars.iv1149.3 = phi i64 [ %indvars.iv.next1150.3, %polly.loop_exit712.us.3 ], [ %564, %polly.loop_exit712.us.2 ]
  %polly.indvar706.us.3 = phi i64 [ %polly.indvar_next707.us.3, %polly.loop_exit712.us.3 ], [ %576, %polly.loop_exit712.us.2 ]
  %972 = add i64 %563, %indvar1308
  %smin1310 = call i64 @llvm.smin.i64(i64 %972, i64 255)
  %973 = add nsw i64 %smin1310, 1
  %smin1151.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1149.3, i64 255)
  %974 = add nsw i64 %polly.indvar706.us.3, %566
  %polly.loop_guard713.us.31203 = icmp sgt i64 %974, -1
  br i1 %polly.loop_guard713.us.31203, label %polly.loop_header710.preheader.us.3, label %polly.loop_exit712.us.3

polly.loop_header710.preheader.us.3:              ; preds = %polly.loop_header702.us.3
  %975 = add nsw i64 %polly.indvar706.us.3, %565
  %polly.access.add.Packed_MemRef_call2528722.us.3 = add nuw nsw i64 %974, 3600
  %polly.access.Packed_MemRef_call2528723.us.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.us.3
  %_p_scalar_724.us.3 = load double, double* %polly.access.Packed_MemRef_call2528723.us.3, align 8
  %polly.access.Packed_MemRef_call1526731.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.us.3
  %_p_scalar_732.us.3 = load double, double* %polly.access.Packed_MemRef_call1526731.us.3, align 8
  %976 = mul i64 %975, 9600
  %min.iters.check1311 = icmp ult i64 %973, 4
  br i1 %min.iters.check1311, label %polly.loop_header710.us.3.preheader, label %vector.ph1312

vector.ph1312:                                    ; preds = %polly.loop_header710.preheader.us.3
  %n.vec1314 = and i64 %973, -4
  %broadcast.splatinsert1320 = insertelement <4 x double> poison, double %_p_scalar_724.us.3, i32 0
  %broadcast.splat1321 = shufflevector <4 x double> %broadcast.splatinsert1320, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1323 = insertelement <4 x double> poison, double %_p_scalar_732.us.3, i32 0
  %broadcast.splat1324 = shufflevector <4 x double> %broadcast.splatinsert1323, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1312
  %index1315 = phi i64 [ 0, %vector.ph1312 ], [ %index.next1316, %vector.body1304 ]
  %977 = add nuw nsw i64 %index1315, %512
  %978 = add nuw nsw i64 %index1315, 3600
  %979 = getelementptr double, double* %Packed_MemRef_call1526, i64 %978
  %980 = bitcast double* %979 to <4 x double>*
  %wide.load1319 = load <4 x double>, <4 x double>* %980, align 8
  %981 = fmul fast <4 x double> %broadcast.splat1321, %wide.load1319
  %982 = getelementptr double, double* %Packed_MemRef_call2528, i64 %978
  %983 = bitcast double* %982 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %983, align 8
  %984 = fmul fast <4 x double> %broadcast.splat1324, %wide.load1322
  %985 = shl i64 %977, 3
  %986 = add i64 %985, %976
  %987 = getelementptr i8, i8* %call, i64 %986
  %988 = bitcast i8* %987 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %988, align 8, !alias.scope !111, !noalias !113
  %989 = fadd fast <4 x double> %984, %981
  %990 = fmul fast <4 x double> %989, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %991 = fadd fast <4 x double> %990, %wide.load1325
  %992 = bitcast i8* %987 to <4 x double>*
  store <4 x double> %991, <4 x double>* %992, align 8, !alias.scope !111, !noalias !113
  %index.next1316 = add i64 %index1315, 4
  %993 = icmp eq i64 %index.next1316, %n.vec1314
  br i1 %993, label %middle.block1302, label %vector.body1304, !llvm.loop !195

middle.block1302:                                 ; preds = %vector.body1304
  %cmp.n1318 = icmp eq i64 %973, %n.vec1314
  br i1 %cmp.n1318, label %polly.loop_exit712.us.3, label %polly.loop_header710.us.3.preheader

polly.loop_header710.us.3.preheader:              ; preds = %polly.loop_header710.preheader.us.3, %middle.block1302
  %polly.indvar714.us.3.ph = phi i64 [ 0, %polly.loop_header710.preheader.us.3 ], [ %n.vec1314, %middle.block1302 ]
  br label %polly.loop_header710.us.3

polly.loop_header710.us.3:                        ; preds = %polly.loop_header710.us.3.preheader, %polly.loop_header710.us.3
  %polly.indvar714.us.3 = phi i64 [ %polly.indvar_next715.us.3, %polly.loop_header710.us.3 ], [ %polly.indvar714.us.3.ph, %polly.loop_header710.us.3.preheader ]
  %994 = add nuw nsw i64 %polly.indvar714.us.3, %512
  %polly.access.add.Packed_MemRef_call1526718.us.3 = add nuw nsw i64 %polly.indvar714.us.3, 3600
  %polly.access.Packed_MemRef_call1526719.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.us.3
  %_p_scalar_720.us.3 = load double, double* %polly.access.Packed_MemRef_call1526719.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_724.us.3, %_p_scalar_720.us.3
  %polly.access.Packed_MemRef_call2528727.us.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.us.3
  %_p_scalar_728.us.3 = load double, double* %polly.access.Packed_MemRef_call2528727.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_732.us.3, %_p_scalar_728.us.3
  %995 = shl i64 %994, 3
  %996 = add i64 %995, %976
  %scevgep733.us.3 = getelementptr i8, i8* %call, i64 %996
  %scevgep733734.us.3 = bitcast i8* %scevgep733.us.3 to double*
  %_p_scalar_735.us.3 = load double, double* %scevgep733734.us.3, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_735.us.3
  store double %p_add42.i.us.3, double* %scevgep733734.us.3, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.us.3 = add nuw nsw i64 %polly.indvar714.us.3, 1
  %exitcond1152.3.not = icmp eq i64 %polly.indvar714.us.3, %smin1151.3
  br i1 %exitcond1152.3.not, label %polly.loop_exit712.us.3, label %polly.loop_header710.us.3, !llvm.loop !196

polly.loop_exit712.us.3:                          ; preds = %polly.loop_header710.us.3, %middle.block1302, %polly.loop_header702.us.3
  %polly.indvar_next707.us.3 = add nuw nsw i64 %polly.indvar706.us.3, 1
  %polly.loop_cond708.us.3 = icmp ult i64 %polly.indvar706.us.3, 19
  %indvars.iv.next1150.3 = add i64 %indvars.iv1149.3, 1
  %indvar.next1309 = add i64 %indvar1308, 1
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
!26 = !{!"llvm.loop.tile.size", i32 256}
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
