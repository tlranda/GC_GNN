; ModuleID = 'syr2k_exhaustive/mmp_all_XL_129.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_129.c"
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
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %101 = mul nuw nsw i64 %polly.indvar209, 100
  %102 = mul nuw nsw i64 %polly.indvar209, 12
  %103 = lshr i64 %polly.indvar209, 1
  %104 = add nuw i64 %102, %103
  %105 = shl nuw nsw i64 %104, 3
  %106 = sub i64 %101, %105
  %107 = mul nsw i64 %polly.indvar209, -100
  %108 = add i64 %107, %105
  %109 = mul nuw nsw i64 %polly.indvar209, 800
  %110 = mul nuw nsw i64 %polly.indvar209, 100
  %111 = mul nuw nsw i64 %polly.indvar209, 12
  %112 = lshr i64 %polly.indvar209, 1
  %113 = add nuw i64 %111, %112
  %114 = shl nuw nsw i64 %113, 3
  %115 = sub i64 %110, %114
  %116 = or i64 %109, 8
  %117 = mul nsw i64 %polly.indvar209, -100
  %118 = add i64 %117, %114
  %119 = mul nuw nsw i64 %polly.indvar209, 100
  %120 = mul nuw nsw i64 %polly.indvar209, 12
  %121 = lshr i64 %polly.indvar209, 1
  %122 = add nuw i64 %120, %121
  %123 = shl nuw nsw i64 %122, 3
  %124 = sub i64 %119, %123
  %125 = mul nsw i64 %polly.indvar209, -100
  %126 = add i64 %125, %123
  %127 = mul nuw nsw i64 %polly.indvar209, 800
  %128 = mul nuw nsw i64 %polly.indvar209, 100
  %129 = mul nuw nsw i64 %polly.indvar209, 12
  %130 = lshr i64 %polly.indvar209, 1
  %131 = add nuw i64 %129, %130
  %132 = shl nuw nsw i64 %131, 3
  %133 = sub i64 %128, %132
  %134 = or i64 %127, 8
  %135 = mul nsw i64 %polly.indvar209, -100
  %136 = add i64 %135, %132
  %137 = mul nuw nsw i64 %polly.indvar209, 100
  %138 = mul nuw nsw i64 %polly.indvar209, 12
  %139 = lshr i64 %polly.indvar209, 1
  %140 = add nuw i64 %138, %139
  %141 = shl nuw nsw i64 %140, 3
  %142 = sub i64 %137, %141
  %143 = mul nsw i64 %polly.indvar209, -100
  %144 = add i64 %143, %141
  %145 = mul nuw nsw i64 %polly.indvar209, 800
  %146 = mul nuw nsw i64 %polly.indvar209, 100
  %147 = mul nuw nsw i64 %polly.indvar209, 12
  %148 = lshr i64 %polly.indvar209, 1
  %149 = add nuw i64 %147, %148
  %150 = shl nuw nsw i64 %149, 3
  %151 = sub i64 %146, %150
  %152 = or i64 %145, 8
  %153 = mul nsw i64 %polly.indvar209, -100
  %154 = add i64 %153, %150
  %155 = mul nuw nsw i64 %polly.indvar209, 100
  %156 = mul nuw nsw i64 %polly.indvar209, 12
  %157 = lshr i64 %polly.indvar209, 1
  %158 = add nuw i64 %156, %157
  %159 = shl nuw nsw i64 %158, 3
  %160 = sub i64 %155, %159
  %161 = mul nsw i64 %polly.indvar209, -100
  %162 = add i64 %161, %159
  %163 = lshr i64 %polly.indvar209, 1
  %164 = add nuw i64 %indvars.iv1088, %163
  %165 = shl nuw nsw i64 %164, 3
  %166 = sub i64 %indvars.iv1086, %165
  %167 = add i64 %indvars.iv1092, %165
  %168 = mul nuw nsw i64 %polly.indvar209, 100
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next1087 = add nuw nsw i64 %indvars.iv1086, 100
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 12
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, -100
  %exitcond1100.not = icmp eq i64 %polly.indvar_next210, 12
  br i1 %exitcond1100.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %169 = add nuw nsw i64 %polly.indvar221, %168
  %polly.access.mul.call2225 = mul nuw nsw i64 %169, 1000
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
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit267 ], [ %167, %polly.loop_exit220.3 ]
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit267 ], [ %166, %polly.loop_exit220.3 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %705, %polly.loop_exit220.3 ]
  %170 = mul nsw i64 %indvar1613, -8
  %171 = add i64 %106, %170
  %smax1721 = call i64 @llvm.smax.i64(i64 %171, i64 0)
  %172 = shl nuw nsw i64 %indvar1613, 3
  %173 = add i64 %108, %172
  %174 = add i64 %smax1721, %173
  %175 = mul nsw i64 %indvar1613, -8
  %176 = add i64 %115, %175
  %smax1705 = call i64 @llvm.smax.i64(i64 %176, i64 0)
  %177 = shl nuw nsw i64 %indvar1613, 3
  %178 = add i64 %114, %177
  %179 = add i64 %smax1705, %178
  %180 = mul nsw i64 %179, 9600
  %181 = add i64 %109, %180
  %182 = add i64 %116, %180
  %183 = add i64 %118, %177
  %184 = add i64 %smax1705, %183
  %185 = mul nsw i64 %indvar1613, -8
  %186 = add i64 %124, %185
  %smax1687 = call i64 @llvm.smax.i64(i64 %186, i64 0)
  %187 = shl nuw nsw i64 %indvar1613, 3
  %188 = add i64 %126, %187
  %189 = add i64 %smax1687, %188
  %190 = mul nsw i64 %indvar1613, -8
  %191 = add i64 %133, %190
  %smax1670 = call i64 @llvm.smax.i64(i64 %191, i64 0)
  %192 = shl nuw nsw i64 %indvar1613, 3
  %193 = add i64 %132, %192
  %194 = add i64 %smax1670, %193
  %195 = mul nsw i64 %194, 9600
  %196 = add i64 %127, %195
  %197 = add i64 %134, %195
  %198 = add i64 %136, %192
  %199 = add i64 %smax1670, %198
  %200 = mul nsw i64 %indvar1613, -8
  %201 = add i64 %142, %200
  %smax1652 = call i64 @llvm.smax.i64(i64 %201, i64 0)
  %202 = shl nuw nsw i64 %indvar1613, 3
  %203 = add i64 %144, %202
  %204 = add i64 %smax1652, %203
  %205 = mul nsw i64 %indvar1613, -8
  %206 = add i64 %151, %205
  %smax1635 = call i64 @llvm.smax.i64(i64 %206, i64 0)
  %207 = shl nuw nsw i64 %indvar1613, 3
  %208 = add i64 %150, %207
  %209 = add i64 %smax1635, %208
  %210 = mul nsw i64 %209, 9600
  %211 = add i64 %145, %210
  %212 = add i64 %152, %210
  %213 = add i64 %154, %207
  %214 = add i64 %smax1635, %213
  %215 = mul nsw i64 %indvar1613, -8
  %216 = add i64 %160, %215
  %smax1615 = call i64 @llvm.smax.i64(i64 %216, i64 0)
  %217 = shl nuw nsw i64 %indvar1613, 3
  %218 = add i64 %162, %217
  %219 = add i64 %smax1615, %218
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1090, i64 0)
  %220 = add i64 %smax, %indvars.iv1094
  %221 = shl nsw i64 %polly.indvar231, 3
  %222 = add nsw i64 %221, %703
  %223 = add nsw i64 %222, -1
  %.inv = icmp sgt i64 %222, 99
  %224 = select i1 %.inv, i64 99, i64 %223
  %polly.loop_guard = icmp sgt i64 %224, -1
  %225 = icmp sgt i64 %222, 0
  %226 = select i1 %225, i64 %222, i64 0
  %227 = add nsw i64 %222, 7
  %polly.loop_guard254.not = icmp sgt i64 %226, %227
  br i1 %polly.loop_guard, label %polly.loop_header240.us, label %polly.loop_header228.split

polly.loop_header240.us:                          ; preds = %polly.loop_header228, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header228 ]
  %228 = add nuw nsw i64 %polly.indvar243.us, %168
  %polly.access.mul.call1247.us = mul nuw nsw i64 %228, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %97, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar243.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar243.us, %224
  br i1 %exitcond1084.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %226, %polly.loop_exit242.loopexit.us ]
  %229 = add nuw nsw i64 %polly.indvar255.us, %168
  %polly.access.mul.call1259.us = mul nsw i64 %229, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %97, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %227
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_header240.us.1.preheader

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.1.preheader, label %polly.loop_header251.us

polly.loop_header240.us.1.preheader:              ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  br label %polly.loop_header240.us.1

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251

polly.loop_exit267:                               ; preds = %polly.loop_exit282.us.3, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 149
  %indvars.iv.next1091 = add i64 %indvars.iv1090, -8
  %indvars.iv.next1095 = add i64 %indvars.iv1094, 8
  %indvar.next1614 = add i64 %indvar1613, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header265.preheader:                   ; preds = %polly.loop_header251.3, %polly.loop_header251.us.3, %polly.loop_exit242.loopexit.us.3, %polly.loop_header228.split
  %230 = sub nsw i64 %168, %221
  %231 = icmp sgt i64 %230, 0
  %232 = select i1 %231, i64 %230, i64 0
  %polly.loop_guard275 = icmp slt i64 %232, 8
  br i1 %polly.loop_guard275, label %polly.loop_header272.us, label %polly.loop_exit267

polly.loop_header272.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit282.us
  %indvar1706 = phi i64 [ %indvar.next1707, %polly.loop_exit282.us ], [ 0, %polly.loop_header265.preheader ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit282.us ], [ %220, %polly.loop_header265.preheader ]
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_exit282.us ], [ %232, %polly.loop_header265.preheader ]
  %233 = add i64 %174, %indvar1706
  %smin1722 = call i64 @llvm.smin.i64(i64 %233, i64 99)
  %234 = add nsw i64 %smin1722, 1
  %235 = mul nuw nsw i64 %indvar1706, 9600
  %236 = add i64 %181, %235
  %scevgep1708 = getelementptr i8, i8* %call, i64 %236
  %237 = add i64 %182, %235
  %scevgep1709 = getelementptr i8, i8* %call, i64 %237
  %238 = add i64 %184, %indvar1706
  %smin1710 = call i64 @llvm.smin.i64(i64 %238, i64 99)
  %239 = shl nsw i64 %smin1710, 3
  %scevgep1711 = getelementptr i8, i8* %scevgep1709, i64 %239
  %scevgep1713 = getelementptr i8, i8* %scevgep1712, i64 %239
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1096, i64 99)
  %240 = add nsw i64 %polly.indvar276.us, %222
  %polly.loop_guard283.us1192 = icmp sgt i64 %240, -1
  br i1 %polly.loop_guard283.us1192, label %polly.loop_header280.preheader.us, label %polly.loop_exit282.us

polly.loop_header280.us:                          ; preds = %polly.loop_header280.us.preheader, %polly.loop_header280.us
  %polly.indvar284.us = phi i64 [ %polly.indvar_next285.us, %polly.loop_header280.us ], [ %polly.indvar284.us.ph, %polly.loop_header280.us.preheader ]
  %241 = add nuw nsw i64 %polly.indvar284.us, %168
  %polly.access.Packed_MemRef_call1289.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar284.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call1289.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %polly.access.Packed_MemRef_call2297.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar284.us
  %_p_scalar_298.us = load double, double* %polly.access.Packed_MemRef_call2297.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_302.us, %_p_scalar_298.us
  %242 = shl i64 %241, 3
  %243 = add i64 %242, %245
  %scevgep303.us = getelementptr i8, i8* %call, i64 %243
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
  %polly.loop_cond278.us = icmp ult i64 %polly.indvar276.us, 7
  %indvars.iv.next1097 = add i64 %indvars.iv1096, 1
  %indvar.next1707 = add i64 %indvar1706, 1
  br i1 %polly.loop_cond278.us, label %polly.loop_header272.us, label %polly.loop_header272.us.1

polly.loop_header280.preheader.us:                ; preds = %polly.loop_header272.us
  %244 = add nuw nsw i64 %polly.indvar276.us, %221
  %polly.access.Packed_MemRef_call2293.us = getelementptr double, double* %Packed_MemRef_call2, i64 %240
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call2293.us, align 8
  %polly.access.Packed_MemRef_call1301.us = getelementptr double, double* %Packed_MemRef_call1, i64 %240
  %_p_scalar_302.us = load double, double* %polly.access.Packed_MemRef_call1301.us, align 8
  %245 = mul i64 %244, 9600
  %min.iters.check1723 = icmp ult i64 %234, 4
  br i1 %min.iters.check1723, label %polly.loop_header280.us.preheader, label %vector.memcheck1704

vector.memcheck1704:                              ; preds = %polly.loop_header280.preheader.us
  %bound01714 = icmp ult i8* %scevgep1708, %scevgep1713
  %bound11715 = icmp ult i8* %malloccall, %scevgep1711
  %found.conflict1716 = and i1 %bound01714, %bound11715
  br i1 %found.conflict1716, label %polly.loop_header280.us.preheader, label %vector.ph1724

vector.ph1724:                                    ; preds = %vector.memcheck1704
  %n.vec1726 = and i64 %234, -4
  %broadcast.splatinsert1732 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1733 = shufflevector <4 x double> %broadcast.splatinsert1732, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1735 = insertelement <4 x double> poison, double %_p_scalar_302.us, i32 0
  %broadcast.splat1736 = shufflevector <4 x double> %broadcast.splatinsert1735, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1720

vector.body1720:                                  ; preds = %vector.body1720, %vector.ph1724
  %index1727 = phi i64 [ 0, %vector.ph1724 ], [ %index.next1728, %vector.body1720 ]
  %246 = add nuw nsw i64 %index1727, %168
  %247 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1727
  %248 = bitcast double* %247 to <4 x double>*
  %wide.load1731 = load <4 x double>, <4 x double>* %248, align 8, !alias.scope !85
  %249 = fmul fast <4 x double> %broadcast.splat1733, %wide.load1731
  %250 = getelementptr double, double* %Packed_MemRef_call2, i64 %index1727
  %251 = bitcast double* %250 to <4 x double>*
  %wide.load1734 = load <4 x double>, <4 x double>* %251, align 8
  %252 = fmul fast <4 x double> %broadcast.splat1736, %wide.load1734
  %253 = shl i64 %246, 3
  %254 = add i64 %253, %245
  %255 = getelementptr i8, i8* %call, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  %wide.load1737 = load <4 x double>, <4 x double>* %256, align 8, !alias.scope !88, !noalias !90
  %257 = fadd fast <4 x double> %252, %249
  %258 = fmul fast <4 x double> %257, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %259 = fadd fast <4 x double> %258, %wide.load1737
  %260 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %259, <4 x double>* %260, align 8, !alias.scope !88, !noalias !90
  %index.next1728 = add i64 %index1727, 4
  %261 = icmp eq i64 %index.next1728, %n.vec1726
  br i1 %261, label %middle.block1718, label %vector.body1720, !llvm.loop !91

middle.block1718:                                 ; preds = %vector.body1720
  %cmp.n1730 = icmp eq i64 %234, %n.vec1726
  br i1 %cmp.n1730, label %polly.loop_exit282.us, label %polly.loop_header280.us.preheader

polly.loop_header280.us.preheader:                ; preds = %vector.memcheck1704, %polly.loop_header280.preheader.us, %middle.block1718
  %polly.indvar284.us.ph = phi i64 [ 0, %vector.memcheck1704 ], [ 0, %polly.loop_header280.preheader.us ], [ %n.vec1726, %middle.block1718 ]
  br label %polly.loop_header280.us

polly.loop_header251:                             ; preds = %polly.loop_header228.split, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %226, %polly.loop_header228.split ]
  %262 = add nuw nsw i64 %polly.indvar255, %168
  %polly.access.mul.call1259 = mul nsw i64 %262, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %97, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %227
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
  %263 = add i64 %indvar1445, 1
  %264 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %264
  %min.iters.check1447 = icmp ult i64 %263, 4
  br i1 %min.iters.check1447, label %polly.loop_header402.preheader, label %vector.ph1448

vector.ph1448:                                    ; preds = %polly.loop_header396
  %n.vec1450 = and i64 %263, -4
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %vector.ph1448
  %index1451 = phi i64 [ 0, %vector.ph1448 ], [ %index.next1452, %vector.body1444 ]
  %265 = shl nuw nsw i64 %index1451, 3
  %266 = getelementptr i8, i8* %scevgep408, i64 %265
  %267 = bitcast i8* %266 to <4 x double>*
  %wide.load1455 = load <4 x double>, <4 x double>* %267, align 8, !alias.scope !92, !noalias !94
  %268 = fmul fast <4 x double> %wide.load1455, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %269 = bitcast i8* %266 to <4 x double>*
  store <4 x double> %268, <4 x double>* %269, align 8, !alias.scope !92, !noalias !94
  %index.next1452 = add i64 %index1451, 4
  %270 = icmp eq i64 %index.next1452, %n.vec1450
  br i1 %270, label %middle.block1442, label %vector.body1444, !llvm.loop !99

middle.block1442:                                 ; preds = %vector.body1444
  %cmp.n1454 = icmp eq i64 %263, %n.vec1450
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
  %271 = shl nuw nsw i64 %polly.indvar405, 3
  %scevgep409 = getelementptr i8, i8* %scevgep408, i64 %271
  %scevgep409410 = bitcast i8* %scevgep409 to double*
  %_p_scalar_411 = load double, double* %scevgep409410, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_411, 1.200000e+00
  store double %p_mul.i57, double* %scevgep409410, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1129.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !100

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit420 ], [ 0, %polly.loop_header412.preheader ]
  %272 = shl nsw i64 %polly.indvar415, 2
  %273 = or i64 %272, 1
  %274 = or i64 %272, 2
  %275 = or i64 %272, 3
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar_next416, 250
  br i1 %exitcond1128.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %276 = mul nuw nsw i64 %polly.indvar421, 100
  %277 = mul nuw nsw i64 %polly.indvar421, 12
  %278 = lshr i64 %polly.indvar421, 1
  %279 = add nuw i64 %277, %278
  %280 = shl nuw nsw i64 %279, 3
  %281 = sub i64 %276, %280
  %282 = mul nsw i64 %polly.indvar421, -100
  %283 = add i64 %282, %280
  %284 = mul nuw nsw i64 %polly.indvar421, 800
  %285 = mul nuw nsw i64 %polly.indvar421, 100
  %286 = mul nuw nsw i64 %polly.indvar421, 12
  %287 = lshr i64 %polly.indvar421, 1
  %288 = add nuw i64 %286, %287
  %289 = shl nuw nsw i64 %288, 3
  %290 = sub i64 %285, %289
  %291 = or i64 %284, 8
  %292 = mul nsw i64 %polly.indvar421, -100
  %293 = add i64 %292, %289
  %294 = mul nuw nsw i64 %polly.indvar421, 100
  %295 = mul nuw nsw i64 %polly.indvar421, 12
  %296 = lshr i64 %polly.indvar421, 1
  %297 = add nuw i64 %295, %296
  %298 = shl nuw nsw i64 %297, 3
  %299 = sub i64 %294, %298
  %300 = mul nsw i64 %polly.indvar421, -100
  %301 = add i64 %300, %298
  %302 = mul nuw nsw i64 %polly.indvar421, 800
  %303 = mul nuw nsw i64 %polly.indvar421, 100
  %304 = mul nuw nsw i64 %polly.indvar421, 12
  %305 = lshr i64 %polly.indvar421, 1
  %306 = add nuw i64 %304, %305
  %307 = shl nuw nsw i64 %306, 3
  %308 = sub i64 %303, %307
  %309 = or i64 %302, 8
  %310 = mul nsw i64 %polly.indvar421, -100
  %311 = add i64 %310, %307
  %312 = mul nuw nsw i64 %polly.indvar421, 100
  %313 = mul nuw nsw i64 %polly.indvar421, 12
  %314 = lshr i64 %polly.indvar421, 1
  %315 = add nuw i64 %313, %314
  %316 = shl nuw nsw i64 %315, 3
  %317 = sub i64 %312, %316
  %318 = mul nsw i64 %polly.indvar421, -100
  %319 = add i64 %318, %316
  %320 = mul nuw nsw i64 %polly.indvar421, 800
  %321 = mul nuw nsw i64 %polly.indvar421, 100
  %322 = mul nuw nsw i64 %polly.indvar421, 12
  %323 = lshr i64 %polly.indvar421, 1
  %324 = add nuw i64 %322, %323
  %325 = shl nuw nsw i64 %324, 3
  %326 = sub i64 %321, %325
  %327 = or i64 %320, 8
  %328 = mul nsw i64 %polly.indvar421, -100
  %329 = add i64 %328, %325
  %330 = mul nuw nsw i64 %polly.indvar421, 100
  %331 = mul nuw nsw i64 %polly.indvar421, 12
  %332 = lshr i64 %polly.indvar421, 1
  %333 = add nuw i64 %331, %332
  %334 = shl nuw nsw i64 %333, 3
  %335 = sub i64 %330, %334
  %336 = mul nsw i64 %polly.indvar421, -100
  %337 = add i64 %336, %334
  %338 = lshr i64 %polly.indvar421, 1
  %339 = add nuw i64 %indvars.iv1113, %338
  %340 = shl nuw nsw i64 %339, 3
  %341 = sub i64 %indvars.iv1111, %340
  %342 = add i64 %indvars.iv1118, %340
  %343 = mul nuw nsw i64 %polly.indvar421, 100
  br label %polly.loop_header430

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -100
  %indvars.iv.next1112 = add nuw nsw i64 %indvars.iv1111, 100
  %indvars.iv.next1114 = add nuw nsw i64 %indvars.iv1113, 12
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -100
  %exitcond1127.not = icmp eq i64 %polly.indvar_next422, 12
  br i1 %exitcond1127.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header430:                             ; preds = %polly.loop_header430, %polly.loop_header418
  %polly.indvar433 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next434, %polly.loop_header430 ]
  %344 = add nuw nsw i64 %polly.indvar433, %343
  %polly.access.mul.call2437 = mul nuw nsw i64 %344, 1000
  %polly.access.add.call2438 = add nuw nsw i64 %272, %polly.access.mul.call2437
  %polly.access.call2439 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438
  %polly.access.call2439.load = load double, double* %polly.access.call2439, align 8, !alias.scope !96, !noalias !101
  %polly.access.Packed_MemRef_call2313 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.indvar433
  store double %polly.access.call2439.load, double* %polly.access.Packed_MemRef_call2313, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1104
  br i1 %exitcond1106.not, label %polly.loop_header430.1, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit432.3
  %indvar1459 = phi i64 [ %indvar.next1460, %polly.loop_exit482 ], [ 0, %polly.loop_exit432.3 ]
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit482 ], [ %342, %polly.loop_exit432.3 ]
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit482 ], [ %341, %polly.loop_exit432.3 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %805, %polly.loop_exit432.3 ]
  %345 = mul nsw i64 %indvar1459, -8
  %346 = add i64 %281, %345
  %smax1567 = call i64 @llvm.smax.i64(i64 %346, i64 0)
  %347 = shl nuw nsw i64 %indvar1459, 3
  %348 = add i64 %283, %347
  %349 = add i64 %smax1567, %348
  %350 = mul nsw i64 %indvar1459, -8
  %351 = add i64 %290, %350
  %smax1551 = call i64 @llvm.smax.i64(i64 %351, i64 0)
  %352 = shl nuw nsw i64 %indvar1459, 3
  %353 = add i64 %289, %352
  %354 = add i64 %smax1551, %353
  %355 = mul nsw i64 %354, 9600
  %356 = add i64 %284, %355
  %357 = add i64 %291, %355
  %358 = add i64 %293, %352
  %359 = add i64 %smax1551, %358
  %360 = mul nsw i64 %indvar1459, -8
  %361 = add i64 %299, %360
  %smax1533 = call i64 @llvm.smax.i64(i64 %361, i64 0)
  %362 = shl nuw nsw i64 %indvar1459, 3
  %363 = add i64 %301, %362
  %364 = add i64 %smax1533, %363
  %365 = mul nsw i64 %indvar1459, -8
  %366 = add i64 %308, %365
  %smax1516 = call i64 @llvm.smax.i64(i64 %366, i64 0)
  %367 = shl nuw nsw i64 %indvar1459, 3
  %368 = add i64 %307, %367
  %369 = add i64 %smax1516, %368
  %370 = mul nsw i64 %369, 9600
  %371 = add i64 %302, %370
  %372 = add i64 %309, %370
  %373 = add i64 %311, %367
  %374 = add i64 %smax1516, %373
  %375 = mul nsw i64 %indvar1459, -8
  %376 = add i64 %317, %375
  %smax1498 = call i64 @llvm.smax.i64(i64 %376, i64 0)
  %377 = shl nuw nsw i64 %indvar1459, 3
  %378 = add i64 %319, %377
  %379 = add i64 %smax1498, %378
  %380 = mul nsw i64 %indvar1459, -8
  %381 = add i64 %326, %380
  %smax1481 = call i64 @llvm.smax.i64(i64 %381, i64 0)
  %382 = shl nuw nsw i64 %indvar1459, 3
  %383 = add i64 %325, %382
  %384 = add i64 %smax1481, %383
  %385 = mul nsw i64 %384, 9600
  %386 = add i64 %320, %385
  %387 = add i64 %327, %385
  %388 = add i64 %329, %382
  %389 = add i64 %smax1481, %388
  %390 = mul nsw i64 %indvar1459, -8
  %391 = add i64 %335, %390
  %smax1461 = call i64 @llvm.smax.i64(i64 %391, i64 0)
  %392 = shl nuw nsw i64 %indvar1459, 3
  %393 = add i64 %337, %392
  %394 = add i64 %smax1461, %393
  %smax1117 = call i64 @llvm.smax.i64(i64 %indvars.iv1115, i64 0)
  %395 = add i64 %smax1117, %indvars.iv1120
  %396 = shl nsw i64 %polly.indvar444, 3
  %397 = add nsw i64 %396, %803
  %398 = add nsw i64 %397, -1
  %.inv942 = icmp sgt i64 %397, 99
  %399 = select i1 %.inv942, i64 99, i64 %398
  %polly.loop_guard457 = icmp sgt i64 %399, -1
  %400 = icmp sgt i64 %397, 0
  %401 = select i1 %400, i64 %397, i64 0
  %402 = add nsw i64 %397, 7
  %polly.loop_guard469.not = icmp sgt i64 %401, %402
  br i1 %polly.loop_guard457, label %polly.loop_header454.us, label %polly.loop_header441.split

polly.loop_header454.us:                          ; preds = %polly.loop_header441, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header441 ]
  %403 = add nuw nsw i64 %polly.indvar458.us, %343
  %polly.access.mul.call1462.us = mul nuw nsw i64 %403, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %272, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar458.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar458.us, %399
  br i1 %exitcond1109.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %401, %polly.loop_exit456.loopexit.us ]
  %404 = add nuw nsw i64 %polly.indvar470.us, %343
  %polly.access.mul.call1474.us = mul nsw i64 %404, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %272, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311479.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar470.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1311479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %402
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_header454.us.1.preheader

polly.loop_exit456.loopexit.us:                   ; preds = %polly.loop_header454.us
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.1.preheader, label %polly.loop_header466.us

polly.loop_header454.us.1.preheader:              ; preds = %polly.loop_header466.us, %polly.loop_exit456.loopexit.us
  br label %polly.loop_header454.us.1

polly.loop_header441.split:                       ; preds = %polly.loop_header441
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466

polly.loop_exit482:                               ; preds = %polly.loop_exit497.us.3, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp ult i64 %polly.indvar444, 149
  %indvars.iv.next1116 = add i64 %indvars.iv1115, -8
  %indvars.iv.next1121 = add i64 %indvars.iv1120, 8
  %indvar.next1460 = add i64 %indvar1459, 1
  br i1 %polly.loop_cond446, label %polly.loop_header441, label %polly.loop_exit443

polly.loop_header480.preheader:                   ; preds = %polly.loop_header466.3, %polly.loop_header466.us.3, %polly.loop_exit456.loopexit.us.3, %polly.loop_header441.split
  %405 = sub nsw i64 %343, %396
  %406 = icmp sgt i64 %405, 0
  %407 = select i1 %406, i64 %405, i64 0
  %polly.loop_guard490 = icmp slt i64 %407, 8
  br i1 %polly.loop_guard490, label %polly.loop_header487.us, label %polly.loop_exit482

polly.loop_header487.us:                          ; preds = %polly.loop_header480.preheader, %polly.loop_exit497.us
  %indvar1552 = phi i64 [ %indvar.next1553, %polly.loop_exit497.us ], [ 0, %polly.loop_header480.preheader ]
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit497.us ], [ %395, %polly.loop_header480.preheader ]
  %polly.indvar491.us = phi i64 [ %polly.indvar_next492.us, %polly.loop_exit497.us ], [ %407, %polly.loop_header480.preheader ]
  %408 = add i64 %349, %indvar1552
  %smin1568 = call i64 @llvm.smin.i64(i64 %408, i64 99)
  %409 = add nsw i64 %smin1568, 1
  %410 = mul nuw nsw i64 %indvar1552, 9600
  %411 = add i64 %356, %410
  %scevgep1554 = getelementptr i8, i8* %call, i64 %411
  %412 = add i64 %357, %410
  %scevgep1555 = getelementptr i8, i8* %call, i64 %412
  %413 = add i64 %359, %indvar1552
  %smin1556 = call i64 @llvm.smin.i64(i64 %413, i64 99)
  %414 = shl nsw i64 %smin1556, 3
  %scevgep1557 = getelementptr i8, i8* %scevgep1555, i64 %414
  %scevgep1559 = getelementptr i8, i8* %scevgep1558, i64 %414
  %smin1124 = call i64 @llvm.smin.i64(i64 %indvars.iv1122, i64 99)
  %415 = add nsw i64 %polly.indvar491.us, %397
  %polly.loop_guard498.us1196 = icmp sgt i64 %415, -1
  br i1 %polly.loop_guard498.us1196, label %polly.loop_header495.preheader.us, label %polly.loop_exit497.us

polly.loop_header495.us:                          ; preds = %polly.loop_header495.us.preheader, %polly.loop_header495.us
  %polly.indvar499.us = phi i64 [ %polly.indvar_next500.us, %polly.loop_header495.us ], [ %polly.indvar499.us.ph, %polly.loop_header495.us.preheader ]
  %416 = add nuw nsw i64 %polly.indvar499.us, %343
  %polly.access.Packed_MemRef_call1311504.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar499.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1311504.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %polly.access.Packed_MemRef_call2313512.us = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.indvar499.us
  %_p_scalar_513.us = load double, double* %polly.access.Packed_MemRef_call2313512.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_517.us, %_p_scalar_513.us
  %417 = shl i64 %416, 3
  %418 = add i64 %417, %420
  %scevgep518.us = getelementptr i8, i8* %call, i64 %418
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
  %polly.loop_cond493.us = icmp ult i64 %polly.indvar491.us, 7
  %indvars.iv.next1123 = add i64 %indvars.iv1122, 1
  %indvar.next1553 = add i64 %indvar1552, 1
  br i1 %polly.loop_cond493.us, label %polly.loop_header487.us, label %polly.loop_header487.us.1

polly.loop_header495.preheader.us:                ; preds = %polly.loop_header487.us
  %419 = add nuw nsw i64 %polly.indvar491.us, %396
  %polly.access.Packed_MemRef_call2313508.us = getelementptr double, double* %Packed_MemRef_call2313, i64 %415
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call2313508.us, align 8
  %polly.access.Packed_MemRef_call1311516.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %415
  %_p_scalar_517.us = load double, double* %polly.access.Packed_MemRef_call1311516.us, align 8
  %420 = mul i64 %419, 9600
  %min.iters.check1569 = icmp ult i64 %409, 4
  br i1 %min.iters.check1569, label %polly.loop_header495.us.preheader, label %vector.memcheck1550

vector.memcheck1550:                              ; preds = %polly.loop_header495.preheader.us
  %bound01560 = icmp ult i8* %scevgep1554, %scevgep1559
  %bound11561 = icmp ult i8* %malloccall310, %scevgep1557
  %found.conflict1562 = and i1 %bound01560, %bound11561
  br i1 %found.conflict1562, label %polly.loop_header495.us.preheader, label %vector.ph1570

vector.ph1570:                                    ; preds = %vector.memcheck1550
  %n.vec1572 = and i64 %409, -4
  %broadcast.splatinsert1578 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1579 = shufflevector <4 x double> %broadcast.splatinsert1578, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1581 = insertelement <4 x double> poison, double %_p_scalar_517.us, i32 0
  %broadcast.splat1582 = shufflevector <4 x double> %broadcast.splatinsert1581, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1566

vector.body1566:                                  ; preds = %vector.body1566, %vector.ph1570
  %index1573 = phi i64 [ 0, %vector.ph1570 ], [ %index.next1574, %vector.body1566 ]
  %421 = add nuw nsw i64 %index1573, %343
  %422 = getelementptr double, double* %Packed_MemRef_call1311, i64 %index1573
  %423 = bitcast double* %422 to <4 x double>*
  %wide.load1577 = load <4 x double>, <4 x double>* %423, align 8, !alias.scope !104
  %424 = fmul fast <4 x double> %broadcast.splat1579, %wide.load1577
  %425 = getelementptr double, double* %Packed_MemRef_call2313, i64 %index1573
  %426 = bitcast double* %425 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %426, align 8
  %427 = fmul fast <4 x double> %broadcast.splat1582, %wide.load1580
  %428 = shl i64 %421, 3
  %429 = add i64 %428, %420
  %430 = getelementptr i8, i8* %call, i64 %429
  %431 = bitcast i8* %430 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %431, align 8, !alias.scope !107, !noalias !109
  %432 = fadd fast <4 x double> %427, %424
  %433 = fmul fast <4 x double> %432, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %434 = fadd fast <4 x double> %433, %wide.load1583
  %435 = bitcast i8* %430 to <4 x double>*
  store <4 x double> %434, <4 x double>* %435, align 8, !alias.scope !107, !noalias !109
  %index.next1574 = add i64 %index1573, 4
  %436 = icmp eq i64 %index.next1574, %n.vec1572
  br i1 %436, label %middle.block1564, label %vector.body1566, !llvm.loop !110

middle.block1564:                                 ; preds = %vector.body1566
  %cmp.n1576 = icmp eq i64 %409, %n.vec1572
  br i1 %cmp.n1576, label %polly.loop_exit497.us, label %polly.loop_header495.us.preheader

polly.loop_header495.us.preheader:                ; preds = %vector.memcheck1550, %polly.loop_header495.preheader.us, %middle.block1564
  %polly.indvar499.us.ph = phi i64 [ 0, %vector.memcheck1550 ], [ 0, %polly.loop_header495.preheader.us ], [ %n.vec1572, %middle.block1564 ]
  br label %polly.loop_header495.us

polly.loop_header466:                             ; preds = %polly.loop_header441.split, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %401, %polly.loop_header441.split ]
  %437 = add nuw nsw i64 %polly.indvar470, %343
  %polly.access.mul.call1474 = mul nsw i64 %437, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %272, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar470
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %402
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
  %438 = add i64 %indvar, 1
  %439 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %439
  %min.iters.check1293 = icmp ult i64 %438, 4
  br i1 %min.iters.check1293, label %polly.loop_header617.preheader, label %vector.ph1294

vector.ph1294:                                    ; preds = %polly.loop_header611
  %n.vec1296 = and i64 %438, -4
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %vector.ph1294
  %index1297 = phi i64 [ 0, %vector.ph1294 ], [ %index.next1298, %vector.body1292 ]
  %440 = shl nuw nsw i64 %index1297, 3
  %441 = getelementptr i8, i8* %scevgep623, i64 %440
  %442 = bitcast i8* %441 to <4 x double>*
  %wide.load1301 = load <4 x double>, <4 x double>* %442, align 8, !alias.scope !111, !noalias !113
  %443 = fmul fast <4 x double> %wide.load1301, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %444 = bitcast i8* %441 to <4 x double>*
  store <4 x double> %443, <4 x double>* %444, align 8, !alias.scope !111, !noalias !113
  %index.next1298 = add i64 %index1297, 4
  %445 = icmp eq i64 %index.next1298, %n.vec1296
  br i1 %445, label %middle.block1290, label %vector.body1292, !llvm.loop !118

middle.block1290:                                 ; preds = %vector.body1292
  %cmp.n1300 = icmp eq i64 %438, %n.vec1296
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
  %446 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %446
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !111, !noalias !113
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1156.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !119

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %447 = shl nsw i64 %polly.indvar630, 2
  %448 = or i64 %447, 1
  %449 = or i64 %447, 2
  %450 = or i64 %447, 3
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next631, 250
  br i1 %exitcond1155.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %451 = mul nuw nsw i64 %polly.indvar636, 100
  %452 = mul nuw nsw i64 %polly.indvar636, 12
  %453 = lshr i64 %polly.indvar636, 1
  %454 = add nuw i64 %452, %453
  %455 = shl nuw nsw i64 %454, 3
  %456 = sub i64 %451, %455
  %457 = mul nsw i64 %polly.indvar636, -100
  %458 = add i64 %457, %455
  %459 = mul nuw nsw i64 %polly.indvar636, 800
  %460 = mul nuw nsw i64 %polly.indvar636, 100
  %461 = mul nuw nsw i64 %polly.indvar636, 12
  %462 = lshr i64 %polly.indvar636, 1
  %463 = add nuw i64 %461, %462
  %464 = shl nuw nsw i64 %463, 3
  %465 = sub i64 %460, %464
  %466 = or i64 %459, 8
  %467 = mul nsw i64 %polly.indvar636, -100
  %468 = add i64 %467, %464
  %469 = mul nuw nsw i64 %polly.indvar636, 100
  %470 = mul nuw nsw i64 %polly.indvar636, 12
  %471 = lshr i64 %polly.indvar636, 1
  %472 = add nuw i64 %470, %471
  %473 = shl nuw nsw i64 %472, 3
  %474 = sub i64 %469, %473
  %475 = mul nsw i64 %polly.indvar636, -100
  %476 = add i64 %475, %473
  %477 = mul nuw nsw i64 %polly.indvar636, 800
  %478 = mul nuw nsw i64 %polly.indvar636, 100
  %479 = mul nuw nsw i64 %polly.indvar636, 12
  %480 = lshr i64 %polly.indvar636, 1
  %481 = add nuw i64 %479, %480
  %482 = shl nuw nsw i64 %481, 3
  %483 = sub i64 %478, %482
  %484 = or i64 %477, 8
  %485 = mul nsw i64 %polly.indvar636, -100
  %486 = add i64 %485, %482
  %487 = mul nuw nsw i64 %polly.indvar636, 100
  %488 = mul nuw nsw i64 %polly.indvar636, 12
  %489 = lshr i64 %polly.indvar636, 1
  %490 = add nuw i64 %488, %489
  %491 = shl nuw nsw i64 %490, 3
  %492 = sub i64 %487, %491
  %493 = mul nsw i64 %polly.indvar636, -100
  %494 = add i64 %493, %491
  %495 = mul nuw nsw i64 %polly.indvar636, 800
  %496 = mul nuw nsw i64 %polly.indvar636, 100
  %497 = mul nuw nsw i64 %polly.indvar636, 12
  %498 = lshr i64 %polly.indvar636, 1
  %499 = add nuw i64 %497, %498
  %500 = shl nuw nsw i64 %499, 3
  %501 = sub i64 %496, %500
  %502 = or i64 %495, 8
  %503 = mul nsw i64 %polly.indvar636, -100
  %504 = add i64 %503, %500
  %505 = mul nuw nsw i64 %polly.indvar636, 100
  %506 = mul nuw nsw i64 %polly.indvar636, 12
  %507 = lshr i64 %polly.indvar636, 1
  %508 = add nuw i64 %506, %507
  %509 = shl nuw nsw i64 %508, 3
  %510 = sub i64 %505, %509
  %511 = mul nsw i64 %polly.indvar636, -100
  %512 = add i64 %511, %509
  %513 = lshr i64 %polly.indvar636, 1
  %514 = add nuw i64 %indvars.iv1140, %513
  %515 = shl nuw nsw i64 %514, 3
  %516 = sub i64 %indvars.iv1138, %515
  %517 = add i64 %indvars.iv1145, %515
  %518 = mul nuw nsw i64 %polly.indvar636, 100
  br label %polly.loop_header645

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1132 = add nsw i64 %indvars.iv1131, -100
  %indvars.iv.next1139 = add nuw nsw i64 %indvars.iv1138, 100
  %indvars.iv.next1141 = add nuw nsw i64 %indvars.iv1140, 12
  %indvars.iv.next1146 = add nsw i64 %indvars.iv1145, -100
  %exitcond1154.not = icmp eq i64 %polly.indvar_next637, 12
  br i1 %exitcond1154.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header633
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %519 = add nuw nsw i64 %polly.indvar648, %518
  %polly.access.mul.call2652 = mul nuw nsw i64 %519, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %447, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !115, !noalias !120
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar648
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1131
  br i1 %exitcond1133.not, label %polly.loop_header645.1, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit647.3
  %indvar1305 = phi i64 [ %indvar.next1306, %polly.loop_exit697 ], [ 0, %polly.loop_exit647.3 ]
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit697 ], [ %517, %polly.loop_exit647.3 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit697 ], [ %516, %polly.loop_exit647.3 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %905, %polly.loop_exit647.3 ]
  %520 = mul nsw i64 %indvar1305, -8
  %521 = add i64 %456, %520
  %smax1413 = call i64 @llvm.smax.i64(i64 %521, i64 0)
  %522 = shl nuw nsw i64 %indvar1305, 3
  %523 = add i64 %458, %522
  %524 = add i64 %smax1413, %523
  %525 = mul nsw i64 %indvar1305, -8
  %526 = add i64 %465, %525
  %smax1397 = call i64 @llvm.smax.i64(i64 %526, i64 0)
  %527 = shl nuw nsw i64 %indvar1305, 3
  %528 = add i64 %464, %527
  %529 = add i64 %smax1397, %528
  %530 = mul nsw i64 %529, 9600
  %531 = add i64 %459, %530
  %532 = add i64 %466, %530
  %533 = add i64 %468, %527
  %534 = add i64 %smax1397, %533
  %535 = mul nsw i64 %indvar1305, -8
  %536 = add i64 %474, %535
  %smax1379 = call i64 @llvm.smax.i64(i64 %536, i64 0)
  %537 = shl nuw nsw i64 %indvar1305, 3
  %538 = add i64 %476, %537
  %539 = add i64 %smax1379, %538
  %540 = mul nsw i64 %indvar1305, -8
  %541 = add i64 %483, %540
  %smax1362 = call i64 @llvm.smax.i64(i64 %541, i64 0)
  %542 = shl nuw nsw i64 %indvar1305, 3
  %543 = add i64 %482, %542
  %544 = add i64 %smax1362, %543
  %545 = mul nsw i64 %544, 9600
  %546 = add i64 %477, %545
  %547 = add i64 %484, %545
  %548 = add i64 %486, %542
  %549 = add i64 %smax1362, %548
  %550 = mul nsw i64 %indvar1305, -8
  %551 = add i64 %492, %550
  %smax1344 = call i64 @llvm.smax.i64(i64 %551, i64 0)
  %552 = shl nuw nsw i64 %indvar1305, 3
  %553 = add i64 %494, %552
  %554 = add i64 %smax1344, %553
  %555 = mul nsw i64 %indvar1305, -8
  %556 = add i64 %501, %555
  %smax1327 = call i64 @llvm.smax.i64(i64 %556, i64 0)
  %557 = shl nuw nsw i64 %indvar1305, 3
  %558 = add i64 %500, %557
  %559 = add i64 %smax1327, %558
  %560 = mul nsw i64 %559, 9600
  %561 = add i64 %495, %560
  %562 = add i64 %502, %560
  %563 = add i64 %504, %557
  %564 = add i64 %smax1327, %563
  %565 = mul nsw i64 %indvar1305, -8
  %566 = add i64 %510, %565
  %smax1307 = call i64 @llvm.smax.i64(i64 %566, i64 0)
  %567 = shl nuw nsw i64 %indvar1305, 3
  %568 = add i64 %512, %567
  %569 = add i64 %smax1307, %568
  %smax1144 = call i64 @llvm.smax.i64(i64 %indvars.iv1142, i64 0)
  %570 = add i64 %smax1144, %indvars.iv1147
  %571 = shl nsw i64 %polly.indvar659, 3
  %572 = add nsw i64 %571, %903
  %573 = add nsw i64 %572, -1
  %.inv943 = icmp sgt i64 %572, 99
  %574 = select i1 %.inv943, i64 99, i64 %573
  %polly.loop_guard672 = icmp sgt i64 %574, -1
  %575 = icmp sgt i64 %572, 0
  %576 = select i1 %575, i64 %572, i64 0
  %577 = add nsw i64 %572, 7
  %polly.loop_guard684.not = icmp sgt i64 %576, %577
  br i1 %polly.loop_guard672, label %polly.loop_header669.us, label %polly.loop_header656.split

polly.loop_header669.us:                          ; preds = %polly.loop_header656, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header656 ]
  %578 = add nuw nsw i64 %polly.indvar673.us, %518
  %polly.access.mul.call1677.us = mul nuw nsw i64 %578, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %447, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar673.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar673.us, %574
  br i1 %exitcond1136.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %576, %polly.loop_exit671.loopexit.us ]
  %579 = add nuw nsw i64 %polly.indvar685.us, %518
  %polly.access.mul.call1689.us = mul nsw i64 %579, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %447, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar685.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %577
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_header669.us.1.preheader

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.1.preheader, label %polly.loop_header681.us

polly.loop_header669.us.1.preheader:              ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  br label %polly.loop_header669.us.1

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header681

polly.loop_exit697:                               ; preds = %polly.loop_exit712.us.3, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp ult i64 %polly.indvar659, 149
  %indvars.iv.next1143 = add i64 %indvars.iv1142, -8
  %indvars.iv.next1148 = add i64 %indvars.iv1147, 8
  %indvar.next1306 = add i64 %indvar1305, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header695.preheader:                   ; preds = %polly.loop_header681.3, %polly.loop_header681.us.3, %polly.loop_exit671.loopexit.us.3, %polly.loop_header656.split
  %580 = sub nsw i64 %518, %571
  %581 = icmp sgt i64 %580, 0
  %582 = select i1 %581, i64 %580, i64 0
  %polly.loop_guard705 = icmp slt i64 %582, 8
  br i1 %polly.loop_guard705, label %polly.loop_header702.us, label %polly.loop_exit697

polly.loop_header702.us:                          ; preds = %polly.loop_header695.preheader, %polly.loop_exit712.us
  %indvar1398 = phi i64 [ %indvar.next1399, %polly.loop_exit712.us ], [ 0, %polly.loop_header695.preheader ]
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit712.us ], [ %570, %polly.loop_header695.preheader ]
  %polly.indvar706.us = phi i64 [ %polly.indvar_next707.us, %polly.loop_exit712.us ], [ %582, %polly.loop_header695.preheader ]
  %583 = add i64 %524, %indvar1398
  %smin1414 = call i64 @llvm.smin.i64(i64 %583, i64 99)
  %584 = add nsw i64 %smin1414, 1
  %585 = mul nuw nsw i64 %indvar1398, 9600
  %586 = add i64 %531, %585
  %scevgep1400 = getelementptr i8, i8* %call, i64 %586
  %587 = add i64 %532, %585
  %scevgep1401 = getelementptr i8, i8* %call, i64 %587
  %588 = add i64 %534, %indvar1398
  %smin1402 = call i64 @llvm.smin.i64(i64 %588, i64 99)
  %589 = shl nsw i64 %smin1402, 3
  %scevgep1403 = getelementptr i8, i8* %scevgep1401, i64 %589
  %scevgep1405 = getelementptr i8, i8* %scevgep1404, i64 %589
  %smin1151 = call i64 @llvm.smin.i64(i64 %indvars.iv1149, i64 99)
  %590 = add nsw i64 %polly.indvar706.us, %572
  %polly.loop_guard713.us1200 = icmp sgt i64 %590, -1
  br i1 %polly.loop_guard713.us1200, label %polly.loop_header710.preheader.us, label %polly.loop_exit712.us

polly.loop_header710.us:                          ; preds = %polly.loop_header710.us.preheader, %polly.loop_header710.us
  %polly.indvar714.us = phi i64 [ %polly.indvar_next715.us, %polly.loop_header710.us ], [ %polly.indvar714.us.ph, %polly.loop_header710.us.preheader ]
  %591 = add nuw nsw i64 %polly.indvar714.us, %518
  %polly.access.Packed_MemRef_call1526719.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar714.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call1526719.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_724.us, %_p_scalar_720.us
  %polly.access.Packed_MemRef_call2528727.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar714.us
  %_p_scalar_728.us = load double, double* %polly.access.Packed_MemRef_call2528727.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_732.us, %_p_scalar_728.us
  %592 = shl i64 %591, 3
  %593 = add i64 %592, %595
  %scevgep733.us = getelementptr i8, i8* %call, i64 %593
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
  %polly.loop_cond708.us = icmp ult i64 %polly.indvar706.us, 7
  %indvars.iv.next1150 = add i64 %indvars.iv1149, 1
  %indvar.next1399 = add i64 %indvar1398, 1
  br i1 %polly.loop_cond708.us, label %polly.loop_header702.us, label %polly.loop_header702.us.1

polly.loop_header710.preheader.us:                ; preds = %polly.loop_header702.us
  %594 = add nuw nsw i64 %polly.indvar706.us, %571
  %polly.access.Packed_MemRef_call2528723.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %590
  %_p_scalar_724.us = load double, double* %polly.access.Packed_MemRef_call2528723.us, align 8
  %polly.access.Packed_MemRef_call1526731.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %590
  %_p_scalar_732.us = load double, double* %polly.access.Packed_MemRef_call1526731.us, align 8
  %595 = mul i64 %594, 9600
  %min.iters.check1415 = icmp ult i64 %584, 4
  br i1 %min.iters.check1415, label %polly.loop_header710.us.preheader, label %vector.memcheck1396

vector.memcheck1396:                              ; preds = %polly.loop_header710.preheader.us
  %bound01406 = icmp ult i8* %scevgep1400, %scevgep1405
  %bound11407 = icmp ult i8* %malloccall525, %scevgep1403
  %found.conflict1408 = and i1 %bound01406, %bound11407
  br i1 %found.conflict1408, label %polly.loop_header710.us.preheader, label %vector.ph1416

vector.ph1416:                                    ; preds = %vector.memcheck1396
  %n.vec1418 = and i64 %584, -4
  %broadcast.splatinsert1424 = insertelement <4 x double> poison, double %_p_scalar_724.us, i32 0
  %broadcast.splat1425 = shufflevector <4 x double> %broadcast.splatinsert1424, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1427 = insertelement <4 x double> poison, double %_p_scalar_732.us, i32 0
  %broadcast.splat1428 = shufflevector <4 x double> %broadcast.splatinsert1427, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1412

vector.body1412:                                  ; preds = %vector.body1412, %vector.ph1416
  %index1419 = phi i64 [ 0, %vector.ph1416 ], [ %index.next1420, %vector.body1412 ]
  %596 = add nuw nsw i64 %index1419, %518
  %597 = getelementptr double, double* %Packed_MemRef_call1526, i64 %index1419
  %598 = bitcast double* %597 to <4 x double>*
  %wide.load1423 = load <4 x double>, <4 x double>* %598, align 8, !alias.scope !123
  %599 = fmul fast <4 x double> %broadcast.splat1425, %wide.load1423
  %600 = getelementptr double, double* %Packed_MemRef_call2528, i64 %index1419
  %601 = bitcast double* %600 to <4 x double>*
  %wide.load1426 = load <4 x double>, <4 x double>* %601, align 8
  %602 = fmul fast <4 x double> %broadcast.splat1428, %wide.load1426
  %603 = shl i64 %596, 3
  %604 = add i64 %603, %595
  %605 = getelementptr i8, i8* %call, i64 %604
  %606 = bitcast i8* %605 to <4 x double>*
  %wide.load1429 = load <4 x double>, <4 x double>* %606, align 8, !alias.scope !126, !noalias !128
  %607 = fadd fast <4 x double> %602, %599
  %608 = fmul fast <4 x double> %607, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %609 = fadd fast <4 x double> %608, %wide.load1429
  %610 = bitcast i8* %605 to <4 x double>*
  store <4 x double> %609, <4 x double>* %610, align 8, !alias.scope !126, !noalias !128
  %index.next1420 = add i64 %index1419, 4
  %611 = icmp eq i64 %index.next1420, %n.vec1418
  br i1 %611, label %middle.block1410, label %vector.body1412, !llvm.loop !129

middle.block1410:                                 ; preds = %vector.body1412
  %cmp.n1422 = icmp eq i64 %584, %n.vec1418
  br i1 %cmp.n1422, label %polly.loop_exit712.us, label %polly.loop_header710.us.preheader

polly.loop_header710.us.preheader:                ; preds = %vector.memcheck1396, %polly.loop_header710.preheader.us, %middle.block1410
  %polly.indvar714.us.ph = phi i64 [ 0, %vector.memcheck1396 ], [ 0, %polly.loop_header710.preheader.us ], [ %n.vec1418, %middle.block1410 ]
  br label %polly.loop_header710.us

polly.loop_header681:                             ; preds = %polly.loop_header656.split, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %576, %polly.loop_header656.split ]
  %612 = add nuw nsw i64 %polly.indvar685, %518
  %polly.access.mul.call1689 = mul nsw i64 %612, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %447, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar685
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %577
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_header681.1

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %indvars.iv1182 = phi i64 [ %indvars.iv.next1183, %polly.loop_exit870 ], [ 0, %entry ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 -1168)
  %613 = shl nsw i64 %polly.indvar865, 5
  %614 = add nsw i64 %smin1184, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1183 = add nsw i64 %indvars.iv1182, -32
  %exitcond1187.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1187.not, label %polly.loop_header889, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %615 = mul nsw i64 %polly.indvar871, -32
  %smin1231 = call i64 @llvm.smin.i64(i64 %615, i64 -1168)
  %616 = add nsw i64 %smin1231, 1200
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1178, i64 -1168)
  %617 = shl nsw i64 %polly.indvar871, 5
  %618 = add nsw i64 %smin1180, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -32
  %exitcond1186.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1186.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %619 = add nuw nsw i64 %polly.indvar877, %613
  %620 = trunc i64 %619 to i32
  %621 = mul nuw nsw i64 %619, 9600
  %min.iters.check = icmp eq i64 %616, 0
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1232

vector.ph1232:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1239 = insertelement <4 x i64> poison, i64 %617, i32 0
  %broadcast.splat1240 = shufflevector <4 x i64> %broadcast.splatinsert1239, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1241 = insertelement <4 x i32> poison, i32 %620, i32 0
  %broadcast.splat1242 = shufflevector <4 x i32> %broadcast.splatinsert1241, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1232
  %index1233 = phi i64 [ 0, %vector.ph1232 ], [ %index.next1234, %vector.body1230 ]
  %vec.ind1237 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1232 ], [ %vec.ind.next1238, %vector.body1230 ]
  %622 = add nuw nsw <4 x i64> %vec.ind1237, %broadcast.splat1240
  %623 = trunc <4 x i64> %622 to <4 x i32>
  %624 = mul <4 x i32> %broadcast.splat1242, %623
  %625 = add <4 x i32> %624, <i32 3, i32 3, i32 3, i32 3>
  %626 = urem <4 x i32> %625, <i32 1200, i32 1200, i32 1200, i32 1200>
  %627 = sitofp <4 x i32> %626 to <4 x double>
  %628 = fmul fast <4 x double> %627, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %629 = extractelement <4 x i64> %622, i32 0
  %630 = shl i64 %629, 3
  %631 = add nuw nsw i64 %630, %621
  %632 = getelementptr i8, i8* %call, i64 %631
  %633 = bitcast i8* %632 to <4 x double>*
  store <4 x double> %628, <4 x double>* %633, align 8, !alias.scope !130, !noalias !132
  %index.next1234 = add i64 %index1233, 4
  %vec.ind.next1238 = add <4 x i64> %vec.ind1237, <i64 4, i64 4, i64 4, i64 4>
  %634 = icmp eq i64 %index.next1234, %616
  br i1 %634, label %polly.loop_exit882, label %vector.body1230, !llvm.loop !135

polly.loop_exit882:                               ; preds = %vector.body1230, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar877, %614
  br i1 %exitcond1185.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %635 = add nuw nsw i64 %polly.indvar883, %617
  %636 = trunc i64 %635 to i32
  %637 = mul i32 %636, %620
  %638 = add i32 %637, 3
  %639 = urem i32 %638, 1200
  %p_conv31.i = sitofp i32 %639 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %640 = shl i64 %635, 3
  %641 = add nuw nsw i64 %640, %621
  %scevgep886 = getelementptr i8, i8* %call, i64 %641
  %scevgep886887 = bitcast i8* %scevgep886 to double*
  store double %p_div33.i, double* %scevgep886887, align 8, !alias.scope !130, !noalias !132
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar883, %618
  br i1 %exitcond1181.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !136

polly.loop_header889:                             ; preds = %polly.loop_exit870, %polly.loop_exit897
  %indvars.iv1172 = phi i64 [ %indvars.iv.next1173, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %smin1174 = call i64 @llvm.smin.i64(i64 %indvars.iv1172, i64 -1168)
  %642 = shl nsw i64 %polly.indvar892, 5
  %643 = add nsw i64 %smin1174, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1173 = add nsw i64 %indvars.iv1172, -32
  %exitcond1177.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1177.not, label %polly.loop_header915, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %644 = mul nsw i64 %polly.indvar898, -32
  %smin1246 = call i64 @llvm.smin.i64(i64 %644, i64 -968)
  %645 = add nsw i64 %smin1246, 1000
  %smin1170 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -968)
  %646 = shl nsw i64 %polly.indvar898, 5
  %647 = add nsw i64 %smin1170, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -32
  %exitcond1176.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1176.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %648 = add nuw nsw i64 %polly.indvar904, %642
  %649 = trunc i64 %648 to i32
  %650 = mul nuw nsw i64 %648, 8000
  %min.iters.check1247 = icmp eq i64 %645, 0
  br i1 %min.iters.check1247, label %polly.loop_header907, label %vector.ph1248

vector.ph1248:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1257 = insertelement <4 x i64> poison, i64 %646, i32 0
  %broadcast.splat1258 = shufflevector <4 x i64> %broadcast.splatinsert1257, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1259 = insertelement <4 x i32> poison, i32 %649, i32 0
  %broadcast.splat1260 = shufflevector <4 x i32> %broadcast.splatinsert1259, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1245 ]
  %vec.ind1255 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1248 ], [ %vec.ind.next1256, %vector.body1245 ]
  %651 = add nuw nsw <4 x i64> %vec.ind1255, %broadcast.splat1258
  %652 = trunc <4 x i64> %651 to <4 x i32>
  %653 = mul <4 x i32> %broadcast.splat1260, %652
  %654 = add <4 x i32> %653, <i32 2, i32 2, i32 2, i32 2>
  %655 = urem <4 x i32> %654, <i32 1000, i32 1000, i32 1000, i32 1000>
  %656 = sitofp <4 x i32> %655 to <4 x double>
  %657 = fmul fast <4 x double> %656, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %658 = extractelement <4 x i64> %651, i32 0
  %659 = shl i64 %658, 3
  %660 = add nuw nsw i64 %659, %650
  %661 = getelementptr i8, i8* %call2, i64 %660
  %662 = bitcast i8* %661 to <4 x double>*
  store <4 x double> %657, <4 x double>* %662, align 8, !alias.scope !134, !noalias !137
  %index.next1252 = add i64 %index1251, 4
  %vec.ind.next1256 = add <4 x i64> %vec.ind1255, <i64 4, i64 4, i64 4, i64 4>
  %663 = icmp eq i64 %index.next1252, %645
  br i1 %663, label %polly.loop_exit909, label %vector.body1245, !llvm.loop !138

polly.loop_exit909:                               ; preds = %vector.body1245, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar904, %643
  br i1 %exitcond1175.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %664 = add nuw nsw i64 %polly.indvar910, %646
  %665 = trunc i64 %664 to i32
  %666 = mul i32 %665, %649
  %667 = add i32 %666, 2
  %668 = urem i32 %667, 1000
  %p_conv10.i = sitofp i32 %668 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %669 = shl i64 %664, 3
  %670 = add nuw nsw i64 %669, %650
  %scevgep913 = getelementptr i8, i8* %call2, i64 %670
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div12.i, double* %scevgep913914, align 8, !alias.scope !134, !noalias !137
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar910, %647
  br i1 %exitcond1171.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !139

polly.loop_header915:                             ; preds = %polly.loop_exit897, %polly.loop_exit923
  %indvars.iv1162 = phi i64 [ %indvars.iv.next1163, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %smin1164 = call i64 @llvm.smin.i64(i64 %indvars.iv1162, i64 -1168)
  %671 = shl nsw i64 %polly.indvar918, 5
  %672 = add nsw i64 %smin1164, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1163 = add nsw i64 %indvars.iv1162, -32
  %exitcond1167.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1167.not, label %init_array.exit, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1158 = phi i64 [ %indvars.iv.next1159, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %673 = mul nsw i64 %polly.indvar924, -32
  %smin1264 = call i64 @llvm.smin.i64(i64 %673, i64 -968)
  %674 = add nsw i64 %smin1264, 1000
  %smin1160 = call i64 @llvm.smin.i64(i64 %indvars.iv1158, i64 -968)
  %675 = shl nsw i64 %polly.indvar924, 5
  %676 = add nsw i64 %smin1160, 999
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1159 = add nsw i64 %indvars.iv1158, -32
  %exitcond1166.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1166.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %677 = add nuw nsw i64 %polly.indvar930, %671
  %678 = trunc i64 %677 to i32
  %679 = mul nuw nsw i64 %677, 8000
  %min.iters.check1265 = icmp eq i64 %674, 0
  br i1 %min.iters.check1265, label %polly.loop_header933, label %vector.ph1266

vector.ph1266:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1275 = insertelement <4 x i64> poison, i64 %675, i32 0
  %broadcast.splat1276 = shufflevector <4 x i64> %broadcast.splatinsert1275, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1277 = insertelement <4 x i32> poison, i32 %678, i32 0
  %broadcast.splat1278 = shufflevector <4 x i32> %broadcast.splatinsert1277, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1266
  %index1269 = phi i64 [ 0, %vector.ph1266 ], [ %index.next1270, %vector.body1263 ]
  %vec.ind1273 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1266 ], [ %vec.ind.next1274, %vector.body1263 ]
  %680 = add nuw nsw <4 x i64> %vec.ind1273, %broadcast.splat1276
  %681 = trunc <4 x i64> %680 to <4 x i32>
  %682 = mul <4 x i32> %broadcast.splat1278, %681
  %683 = add <4 x i32> %682, <i32 1, i32 1, i32 1, i32 1>
  %684 = urem <4 x i32> %683, <i32 1200, i32 1200, i32 1200, i32 1200>
  %685 = sitofp <4 x i32> %684 to <4 x double>
  %686 = fmul fast <4 x double> %685, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %687 = extractelement <4 x i64> %680, i32 0
  %688 = shl i64 %687, 3
  %689 = add nuw nsw i64 %688, %679
  %690 = getelementptr i8, i8* %call1, i64 %689
  %691 = bitcast i8* %690 to <4 x double>*
  store <4 x double> %686, <4 x double>* %691, align 8, !alias.scope !133, !noalias !140
  %index.next1270 = add i64 %index1269, 4
  %vec.ind.next1274 = add <4 x i64> %vec.ind1273, <i64 4, i64 4, i64 4, i64 4>
  %692 = icmp eq i64 %index.next1270, %674
  br i1 %692, label %polly.loop_exit935, label %vector.body1263, !llvm.loop !141

polly.loop_exit935:                               ; preds = %vector.body1263, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar930, %672
  br i1 %exitcond1165.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %693 = add nuw nsw i64 %polly.indvar936, %675
  %694 = trunc i64 %693 to i32
  %695 = mul i32 %694, %678
  %696 = add i32 %695, 1
  %697 = urem i32 %696, 1200
  %p_conv.i = sitofp i32 %697 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %698 = shl i64 %693, 3
  %699 = add nuw nsw i64 %698, %679
  %scevgep940 = getelementptr i8, i8* %call1, i64 %699
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div.i, double* %scevgep940941, align 8, !alias.scope !133, !noalias !140
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar936, %676
  br i1 %exitcond1161.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !142

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %700 = add nuw nsw i64 %polly.indvar221.1, %168
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %700, 1000
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
  %701 = add nuw nsw i64 %polly.indvar221.2, %168
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %701, 1000
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
  %702 = add nuw nsw i64 %polly.indvar221.3, %168
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %702, 1000
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
  %703 = mul nsw i64 %polly.indvar209, -100
  %704 = mul nuw nsw i64 %polly.indvar209, 12
  %705 = add nuw nsw i64 %704, %163
  br label %polly.loop_header228

polly.loop_header251.1:                           ; preds = %polly.loop_header251, %polly.loop_header251.1
  %polly.indvar255.1 = phi i64 [ %polly.indvar_next256.1, %polly.loop_header251.1 ], [ %226, %polly.loop_header251 ]
  %706 = add nuw nsw i64 %polly.indvar255.1, %168
  %polly.access.mul.call1259.1 = mul nsw i64 %706, 1000
  %polly.access.add.call1260.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar255.1, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.indvar_next256.1 = add nuw nsw i64 %polly.indvar255.1, 1
  %polly.loop_cond257.not.not.1 = icmp slt i64 %polly.indvar255.1, %227
  br i1 %polly.loop_cond257.not.not.1, label %polly.loop_header251.1, label %polly.loop_header251.2

polly.loop_header251.2:                           ; preds = %polly.loop_header251.1, %polly.loop_header251.2
  %polly.indvar255.2 = phi i64 [ %polly.indvar_next256.2, %polly.loop_header251.2 ], [ %226, %polly.loop_header251.1 ]
  %707 = add nuw nsw i64 %polly.indvar255.2, %168
  %polly.access.mul.call1259.2 = mul nsw i64 %707, 1000
  %polly.access.add.call1260.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.indvar255.2, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.indvar_next256.2 = add nuw nsw i64 %polly.indvar255.2, 1
  %polly.loop_cond257.not.not.2 = icmp slt i64 %polly.indvar255.2, %227
  br i1 %polly.loop_cond257.not.not.2, label %polly.loop_header251.2, label %polly.loop_header251.3

polly.loop_header251.3:                           ; preds = %polly.loop_header251.2, %polly.loop_header251.3
  %polly.indvar255.3 = phi i64 [ %polly.indvar_next256.3, %polly.loop_header251.3 ], [ %226, %polly.loop_header251.2 ]
  %708 = add nuw nsw i64 %polly.indvar255.3, %168
  %polly.access.mul.call1259.3 = mul nsw i64 %708, 1000
  %polly.access.add.call1260.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.3 = add nuw nsw i64 %polly.indvar255.3, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  %polly.indvar_next256.3 = add nuw nsw i64 %polly.indvar255.3, 1
  %polly.loop_cond257.not.not.3 = icmp slt i64 %polly.indvar255.3, %227
  br i1 %polly.loop_cond257.not.not.3, label %polly.loop_header251.3, label %polly.loop_header265.preheader

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1.preheader, %polly.loop_header240.us.1
  %polly.indvar243.us.1 = phi i64 [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ], [ 0, %polly.loop_header240.us.1.preheader ]
  %709 = add nuw nsw i64 %polly.indvar243.us.1, %168
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %709, 1000
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next244.us.1 = add nuw i64 %polly.indvar243.us.1, 1
  %exitcond1084.1.not = icmp eq i64 %polly.indvar243.us.1, %224
  br i1 %exitcond1084.1.not, label %polly.loop_exit242.loopexit.us.1, label %polly.loop_header240.us.1

polly.loop_exit242.loopexit.us.1:                 ; preds = %polly.loop_header240.us.1
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.2.preheader, label %polly.loop_header251.us.1

polly.loop_header251.us.1:                        ; preds = %polly.loop_exit242.loopexit.us.1, %polly.loop_header251.us.1
  %polly.indvar255.us.1 = phi i64 [ %polly.indvar_next256.us.1, %polly.loop_header251.us.1 ], [ %226, %polly.loop_exit242.loopexit.us.1 ]
  %710 = add nuw nsw i64 %polly.indvar255.us.1, %168
  %polly.access.mul.call1259.us.1 = mul nsw i64 %710, 1000
  %polly.access.add.call1260.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.us.1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %polly.indvar_next256.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1
  %polly.loop_cond257.not.not.us.1 = icmp slt i64 %polly.indvar255.us.1, %227
  br i1 %polly.loop_cond257.not.not.us.1, label %polly.loop_header251.us.1, label %polly.loop_header240.us.2.preheader

polly.loop_header240.us.2.preheader:              ; preds = %polly.loop_header251.us.1, %polly.loop_exit242.loopexit.us.1
  br label %polly.loop_header240.us.2

polly.loop_header240.us.2:                        ; preds = %polly.loop_header240.us.2.preheader, %polly.loop_header240.us.2
  %polly.indvar243.us.2 = phi i64 [ %polly.indvar_next244.us.2, %polly.loop_header240.us.2 ], [ 0, %polly.loop_header240.us.2.preheader ]
  %711 = add nuw nsw i64 %polly.indvar243.us.2, %168
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %711, 1000
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar243.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next244.us.2 = add nuw i64 %polly.indvar243.us.2, 1
  %exitcond1084.2.not = icmp eq i64 %polly.indvar243.us.2, %224
  br i1 %exitcond1084.2.not, label %polly.loop_exit242.loopexit.us.2, label %polly.loop_header240.us.2

polly.loop_exit242.loopexit.us.2:                 ; preds = %polly.loop_header240.us.2
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.3.preheader, label %polly.loop_header251.us.2

polly.loop_header251.us.2:                        ; preds = %polly.loop_exit242.loopexit.us.2, %polly.loop_header251.us.2
  %polly.indvar255.us.2 = phi i64 [ %polly.indvar_next256.us.2, %polly.loop_header251.us.2 ], [ %226, %polly.loop_exit242.loopexit.us.2 ]
  %712 = add nuw nsw i64 %polly.indvar255.us.2, %168
  %polly.access.mul.call1259.us.2 = mul nsw i64 %712, 1000
  %polly.access.add.call1260.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.us.2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %polly.indvar_next256.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 1
  %polly.loop_cond257.not.not.us.2 = icmp slt i64 %polly.indvar255.us.2, %227
  br i1 %polly.loop_cond257.not.not.us.2, label %polly.loop_header251.us.2, label %polly.loop_header240.us.3.preheader

polly.loop_header240.us.3.preheader:              ; preds = %polly.loop_header251.us.2, %polly.loop_exit242.loopexit.us.2
  br label %polly.loop_header240.us.3

polly.loop_header240.us.3:                        ; preds = %polly.loop_header240.us.3.preheader, %polly.loop_header240.us.3
  %polly.indvar243.us.3 = phi i64 [ %polly.indvar_next244.us.3, %polly.loop_header240.us.3 ], [ 0, %polly.loop_header240.us.3.preheader ]
  %713 = add nuw nsw i64 %polly.indvar243.us.3, %168
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %713, 1000
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar243.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next244.us.3 = add nuw i64 %polly.indvar243.us.3, 1
  %exitcond1084.3.not = icmp eq i64 %polly.indvar243.us.3, %224
  br i1 %exitcond1084.3.not, label %polly.loop_exit242.loopexit.us.3, label %polly.loop_header240.us.3

polly.loop_exit242.loopexit.us.3:                 ; preds = %polly.loop_header240.us.3
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251.us.3

polly.loop_header251.us.3:                        ; preds = %polly.loop_exit242.loopexit.us.3, %polly.loop_header251.us.3
  %polly.indvar255.us.3 = phi i64 [ %polly.indvar_next256.us.3, %polly.loop_header251.us.3 ], [ %226, %polly.loop_exit242.loopexit.us.3 ]
  %714 = add nuw nsw i64 %polly.indvar255.us.3, %168
  %polly.access.mul.call1259.us.3 = mul nsw i64 %714, 1000
  %polly.access.add.call1260.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.us.3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  %polly.indvar_next256.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 1
  %polly.loop_cond257.not.not.us.3 = icmp slt i64 %polly.indvar255.us.3, %227
  br i1 %polly.loop_cond257.not.not.us.3, label %polly.loop_header251.us.3, label %polly.loop_header265.preheader

polly.loop_header272.us.1:                        ; preds = %polly.loop_exit282.us, %polly.loop_exit282.us.1
  %indvar1671 = phi i64 [ %indvar.next1672, %polly.loop_exit282.us.1 ], [ 0, %polly.loop_exit282.us ]
  %indvars.iv1096.1 = phi i64 [ %indvars.iv.next1097.1, %polly.loop_exit282.us.1 ], [ %220, %polly.loop_exit282.us ]
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_exit282.us.1 ], [ %232, %polly.loop_exit282.us ]
  %715 = add i64 %189, %indvar1671
  %smin1688 = call i64 @llvm.smin.i64(i64 %715, i64 99)
  %716 = add nsw i64 %smin1688, 1
  %717 = mul nuw nsw i64 %indvar1671, 9600
  %718 = add i64 %196, %717
  %scevgep1673 = getelementptr i8, i8* %call, i64 %718
  %719 = add i64 %197, %717
  %scevgep1674 = getelementptr i8, i8* %call, i64 %719
  %720 = add i64 %199, %indvar1671
  %smin1675 = call i64 @llvm.smin.i64(i64 %720, i64 99)
  %721 = shl nsw i64 %smin1675, 3
  %scevgep1676 = getelementptr i8, i8* %scevgep1674, i64 %721
  %scevgep1679 = getelementptr i8, i8* %scevgep1678, i64 %721
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1096.1, i64 99)
  %722 = add nsw i64 %polly.indvar276.us.1, %222
  %polly.loop_guard283.us.11193 = icmp sgt i64 %722, -1
  br i1 %polly.loop_guard283.us.11193, label %polly.loop_header280.preheader.us.1, label %polly.loop_exit282.us.1

polly.loop_header280.preheader.us.1:              ; preds = %polly.loop_header272.us.1
  %723 = add nuw nsw i64 %polly.indvar276.us.1, %221
  %polly.access.add.Packed_MemRef_call2292.us.1 = add nuw nsw i64 %722, 1200
  %polly.access.Packed_MemRef_call2293.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.us.1
  %_p_scalar_294.us.1 = load double, double* %polly.access.Packed_MemRef_call2293.us.1, align 8
  %polly.access.Packed_MemRef_call1301.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.us.1
  %_p_scalar_302.us.1 = load double, double* %polly.access.Packed_MemRef_call1301.us.1, align 8
  %724 = mul i64 %723, 9600
  %min.iters.check1689 = icmp ult i64 %716, 4
  br i1 %min.iters.check1689, label %polly.loop_header280.us.1.preheader, label %vector.memcheck1669

vector.memcheck1669:                              ; preds = %polly.loop_header280.preheader.us.1
  %bound01680 = icmp ult i8* %scevgep1673, %scevgep1679
  %bound11681 = icmp ult i8* %scevgep1677, %scevgep1676
  %found.conflict1682 = and i1 %bound01680, %bound11681
  br i1 %found.conflict1682, label %polly.loop_header280.us.1.preheader, label %vector.ph1690

vector.ph1690:                                    ; preds = %vector.memcheck1669
  %n.vec1692 = and i64 %716, -4
  %broadcast.splatinsert1698 = insertelement <4 x double> poison, double %_p_scalar_294.us.1, i32 0
  %broadcast.splat1699 = shufflevector <4 x double> %broadcast.splatinsert1698, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1701 = insertelement <4 x double> poison, double %_p_scalar_302.us.1, i32 0
  %broadcast.splat1702 = shufflevector <4 x double> %broadcast.splatinsert1701, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1686

vector.body1686:                                  ; preds = %vector.body1686, %vector.ph1690
  %index1693 = phi i64 [ 0, %vector.ph1690 ], [ %index.next1694, %vector.body1686 ]
  %725 = add nuw nsw i64 %index1693, %168
  %726 = add nuw nsw i64 %index1693, 1200
  %727 = getelementptr double, double* %Packed_MemRef_call1, i64 %726
  %728 = bitcast double* %727 to <4 x double>*
  %wide.load1697 = load <4 x double>, <4 x double>* %728, align 8, !alias.scope !143
  %729 = fmul fast <4 x double> %broadcast.splat1699, %wide.load1697
  %730 = getelementptr double, double* %Packed_MemRef_call2, i64 %726
  %731 = bitcast double* %730 to <4 x double>*
  %wide.load1700 = load <4 x double>, <4 x double>* %731, align 8
  %732 = fmul fast <4 x double> %broadcast.splat1702, %wide.load1700
  %733 = shl i64 %725, 3
  %734 = add i64 %733, %724
  %735 = getelementptr i8, i8* %call, i64 %734
  %736 = bitcast i8* %735 to <4 x double>*
  %wide.load1703 = load <4 x double>, <4 x double>* %736, align 8, !alias.scope !146, !noalias !148
  %737 = fadd fast <4 x double> %732, %729
  %738 = fmul fast <4 x double> %737, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %739 = fadd fast <4 x double> %738, %wide.load1703
  %740 = bitcast i8* %735 to <4 x double>*
  store <4 x double> %739, <4 x double>* %740, align 8, !alias.scope !146, !noalias !148
  %index.next1694 = add i64 %index1693, 4
  %741 = icmp eq i64 %index.next1694, %n.vec1692
  br i1 %741, label %middle.block1684, label %vector.body1686, !llvm.loop !149

middle.block1684:                                 ; preds = %vector.body1686
  %cmp.n1696 = icmp eq i64 %716, %n.vec1692
  br i1 %cmp.n1696, label %polly.loop_exit282.us.1, label %polly.loop_header280.us.1.preheader

polly.loop_header280.us.1.preheader:              ; preds = %vector.memcheck1669, %polly.loop_header280.preheader.us.1, %middle.block1684
  %polly.indvar284.us.1.ph = phi i64 [ 0, %vector.memcheck1669 ], [ 0, %polly.loop_header280.preheader.us.1 ], [ %n.vec1692, %middle.block1684 ]
  br label %polly.loop_header280.us.1

polly.loop_header280.us.1:                        ; preds = %polly.loop_header280.us.1.preheader, %polly.loop_header280.us.1
  %polly.indvar284.us.1 = phi i64 [ %polly.indvar_next285.us.1, %polly.loop_header280.us.1 ], [ %polly.indvar284.us.1.ph, %polly.loop_header280.us.1.preheader ]
  %742 = add nuw nsw i64 %polly.indvar284.us.1, %168
  %polly.access.add.Packed_MemRef_call1288.us.1 = add nuw nsw i64 %polly.indvar284.us.1, 1200
  %polly.access.Packed_MemRef_call1289.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us.1
  %_p_scalar_290.us.1 = load double, double* %polly.access.Packed_MemRef_call1289.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_294.us.1, %_p_scalar_290.us.1
  %polly.access.Packed_MemRef_call2297.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.us.1
  %_p_scalar_298.us.1 = load double, double* %polly.access.Packed_MemRef_call2297.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_302.us.1, %_p_scalar_298.us.1
  %743 = shl i64 %742, 3
  %744 = add i64 %743, %724
  %scevgep303.us.1 = getelementptr i8, i8* %call, i64 %744
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
  %polly.loop_cond278.us.1 = icmp ult i64 %polly.indvar276.us.1, 7
  %indvars.iv.next1097.1 = add i64 %indvars.iv1096.1, 1
  %indvar.next1672 = add i64 %indvar1671, 1
  br i1 %polly.loop_cond278.us.1, label %polly.loop_header272.us.1, label %polly.loop_header272.us.2

polly.loop_header272.us.2:                        ; preds = %polly.loop_exit282.us.1, %polly.loop_exit282.us.2
  %indvar1636 = phi i64 [ %indvar.next1637, %polly.loop_exit282.us.2 ], [ 0, %polly.loop_exit282.us.1 ]
  %indvars.iv1096.2 = phi i64 [ %indvars.iv.next1097.2, %polly.loop_exit282.us.2 ], [ %220, %polly.loop_exit282.us.1 ]
  %polly.indvar276.us.2 = phi i64 [ %polly.indvar_next277.us.2, %polly.loop_exit282.us.2 ], [ %232, %polly.loop_exit282.us.1 ]
  %745 = add i64 %204, %indvar1636
  %smin1653 = call i64 @llvm.smin.i64(i64 %745, i64 99)
  %746 = add nsw i64 %smin1653, 1
  %747 = mul nuw nsw i64 %indvar1636, 9600
  %748 = add i64 %211, %747
  %scevgep1638 = getelementptr i8, i8* %call, i64 %748
  %749 = add i64 %212, %747
  %scevgep1639 = getelementptr i8, i8* %call, i64 %749
  %750 = add i64 %214, %indvar1636
  %smin1640 = call i64 @llvm.smin.i64(i64 %750, i64 99)
  %751 = shl nsw i64 %smin1640, 3
  %scevgep1641 = getelementptr i8, i8* %scevgep1639, i64 %751
  %scevgep1644 = getelementptr i8, i8* %scevgep1643, i64 %751
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1096.2, i64 99)
  %752 = add nsw i64 %polly.indvar276.us.2, %222
  %polly.loop_guard283.us.21194 = icmp sgt i64 %752, -1
  br i1 %polly.loop_guard283.us.21194, label %polly.loop_header280.preheader.us.2, label %polly.loop_exit282.us.2

polly.loop_header280.preheader.us.2:              ; preds = %polly.loop_header272.us.2
  %753 = add nuw nsw i64 %polly.indvar276.us.2, %221
  %polly.access.add.Packed_MemRef_call2292.us.2 = add nuw nsw i64 %752, 2400
  %polly.access.Packed_MemRef_call2293.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.us.2
  %_p_scalar_294.us.2 = load double, double* %polly.access.Packed_MemRef_call2293.us.2, align 8
  %polly.access.Packed_MemRef_call1301.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.us.2
  %_p_scalar_302.us.2 = load double, double* %polly.access.Packed_MemRef_call1301.us.2, align 8
  %754 = mul i64 %753, 9600
  %min.iters.check1654 = icmp ult i64 %746, 4
  br i1 %min.iters.check1654, label %polly.loop_header280.us.2.preheader, label %vector.memcheck1634

vector.memcheck1634:                              ; preds = %polly.loop_header280.preheader.us.2
  %bound01645 = icmp ult i8* %scevgep1638, %scevgep1644
  %bound11646 = icmp ult i8* %scevgep1642, %scevgep1641
  %found.conflict1647 = and i1 %bound01645, %bound11646
  br i1 %found.conflict1647, label %polly.loop_header280.us.2.preheader, label %vector.ph1655

vector.ph1655:                                    ; preds = %vector.memcheck1634
  %n.vec1657 = and i64 %746, -4
  %broadcast.splatinsert1663 = insertelement <4 x double> poison, double %_p_scalar_294.us.2, i32 0
  %broadcast.splat1664 = shufflevector <4 x double> %broadcast.splatinsert1663, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1666 = insertelement <4 x double> poison, double %_p_scalar_302.us.2, i32 0
  %broadcast.splat1667 = shufflevector <4 x double> %broadcast.splatinsert1666, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1651

vector.body1651:                                  ; preds = %vector.body1651, %vector.ph1655
  %index1658 = phi i64 [ 0, %vector.ph1655 ], [ %index.next1659, %vector.body1651 ]
  %755 = add nuw nsw i64 %index1658, %168
  %756 = add nuw nsw i64 %index1658, 2400
  %757 = getelementptr double, double* %Packed_MemRef_call1, i64 %756
  %758 = bitcast double* %757 to <4 x double>*
  %wide.load1662 = load <4 x double>, <4 x double>* %758, align 8, !alias.scope !151
  %759 = fmul fast <4 x double> %broadcast.splat1664, %wide.load1662
  %760 = getelementptr double, double* %Packed_MemRef_call2, i64 %756
  %761 = bitcast double* %760 to <4 x double>*
  %wide.load1665 = load <4 x double>, <4 x double>* %761, align 8
  %762 = fmul fast <4 x double> %broadcast.splat1667, %wide.load1665
  %763 = shl i64 %755, 3
  %764 = add i64 %763, %754
  %765 = getelementptr i8, i8* %call, i64 %764
  %766 = bitcast i8* %765 to <4 x double>*
  %wide.load1668 = load <4 x double>, <4 x double>* %766, align 8, !alias.scope !154, !noalias !156
  %767 = fadd fast <4 x double> %762, %759
  %768 = fmul fast <4 x double> %767, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %769 = fadd fast <4 x double> %768, %wide.load1668
  %770 = bitcast i8* %765 to <4 x double>*
  store <4 x double> %769, <4 x double>* %770, align 8, !alias.scope !154, !noalias !156
  %index.next1659 = add i64 %index1658, 4
  %771 = icmp eq i64 %index.next1659, %n.vec1657
  br i1 %771, label %middle.block1649, label %vector.body1651, !llvm.loop !157

middle.block1649:                                 ; preds = %vector.body1651
  %cmp.n1661 = icmp eq i64 %746, %n.vec1657
  br i1 %cmp.n1661, label %polly.loop_exit282.us.2, label %polly.loop_header280.us.2.preheader

polly.loop_header280.us.2.preheader:              ; preds = %vector.memcheck1634, %polly.loop_header280.preheader.us.2, %middle.block1649
  %polly.indvar284.us.2.ph = phi i64 [ 0, %vector.memcheck1634 ], [ 0, %polly.loop_header280.preheader.us.2 ], [ %n.vec1657, %middle.block1649 ]
  br label %polly.loop_header280.us.2

polly.loop_header280.us.2:                        ; preds = %polly.loop_header280.us.2.preheader, %polly.loop_header280.us.2
  %polly.indvar284.us.2 = phi i64 [ %polly.indvar_next285.us.2, %polly.loop_header280.us.2 ], [ %polly.indvar284.us.2.ph, %polly.loop_header280.us.2.preheader ]
  %772 = add nuw nsw i64 %polly.indvar284.us.2, %168
  %polly.access.add.Packed_MemRef_call1288.us.2 = add nuw nsw i64 %polly.indvar284.us.2, 2400
  %polly.access.Packed_MemRef_call1289.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us.2
  %_p_scalar_290.us.2 = load double, double* %polly.access.Packed_MemRef_call1289.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_294.us.2, %_p_scalar_290.us.2
  %polly.access.Packed_MemRef_call2297.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.us.2
  %_p_scalar_298.us.2 = load double, double* %polly.access.Packed_MemRef_call2297.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_302.us.2, %_p_scalar_298.us.2
  %773 = shl i64 %772, 3
  %774 = add i64 %773, %754
  %scevgep303.us.2 = getelementptr i8, i8* %call, i64 %774
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
  %polly.loop_cond278.us.2 = icmp ult i64 %polly.indvar276.us.2, 7
  %indvars.iv.next1097.2 = add i64 %indvars.iv1096.2, 1
  %indvar.next1637 = add i64 %indvar1636, 1
  br i1 %polly.loop_cond278.us.2, label %polly.loop_header272.us.2, label %polly.loop_header272.us.3

polly.loop_header272.us.3:                        ; preds = %polly.loop_exit282.us.2, %polly.loop_exit282.us.3
  %indvar1616 = phi i64 [ %indvar.next1617, %polly.loop_exit282.us.3 ], [ 0, %polly.loop_exit282.us.2 ]
  %indvars.iv1096.3 = phi i64 [ %indvars.iv.next1097.3, %polly.loop_exit282.us.3 ], [ %220, %polly.loop_exit282.us.2 ]
  %polly.indvar276.us.3 = phi i64 [ %polly.indvar_next277.us.3, %polly.loop_exit282.us.3 ], [ %232, %polly.loop_exit282.us.2 ]
  %775 = add i64 %219, %indvar1616
  %smin1618 = call i64 @llvm.smin.i64(i64 %775, i64 99)
  %776 = add nsw i64 %smin1618, 1
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1096.3, i64 99)
  %777 = add nsw i64 %polly.indvar276.us.3, %222
  %polly.loop_guard283.us.31195 = icmp sgt i64 %777, -1
  br i1 %polly.loop_guard283.us.31195, label %polly.loop_header280.preheader.us.3, label %polly.loop_exit282.us.3

polly.loop_header280.preheader.us.3:              ; preds = %polly.loop_header272.us.3
  %778 = add nuw nsw i64 %polly.indvar276.us.3, %221
  %polly.access.add.Packed_MemRef_call2292.us.3 = add nuw nsw i64 %777, 3600
  %polly.access.Packed_MemRef_call2293.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.us.3
  %_p_scalar_294.us.3 = load double, double* %polly.access.Packed_MemRef_call2293.us.3, align 8
  %polly.access.Packed_MemRef_call1301.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.us.3
  %_p_scalar_302.us.3 = load double, double* %polly.access.Packed_MemRef_call1301.us.3, align 8
  %779 = mul i64 %778, 9600
  %min.iters.check1619 = icmp ult i64 %776, 4
  br i1 %min.iters.check1619, label %polly.loop_header280.us.3.preheader, label %vector.ph1620

vector.ph1620:                                    ; preds = %polly.loop_header280.preheader.us.3
  %n.vec1622 = and i64 %776, -4
  %broadcast.splatinsert1628 = insertelement <4 x double> poison, double %_p_scalar_294.us.3, i32 0
  %broadcast.splat1629 = shufflevector <4 x double> %broadcast.splatinsert1628, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1631 = insertelement <4 x double> poison, double %_p_scalar_302.us.3, i32 0
  %broadcast.splat1632 = shufflevector <4 x double> %broadcast.splatinsert1631, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1612

vector.body1612:                                  ; preds = %vector.body1612, %vector.ph1620
  %index1623 = phi i64 [ 0, %vector.ph1620 ], [ %index.next1624, %vector.body1612 ]
  %780 = add nuw nsw i64 %index1623, %168
  %781 = add nuw nsw i64 %index1623, 3600
  %782 = getelementptr double, double* %Packed_MemRef_call1, i64 %781
  %783 = bitcast double* %782 to <4 x double>*
  %wide.load1627 = load <4 x double>, <4 x double>* %783, align 8
  %784 = fmul fast <4 x double> %broadcast.splat1629, %wide.load1627
  %785 = getelementptr double, double* %Packed_MemRef_call2, i64 %781
  %786 = bitcast double* %785 to <4 x double>*
  %wide.load1630 = load <4 x double>, <4 x double>* %786, align 8
  %787 = fmul fast <4 x double> %broadcast.splat1632, %wide.load1630
  %788 = shl i64 %780, 3
  %789 = add i64 %788, %779
  %790 = getelementptr i8, i8* %call, i64 %789
  %791 = bitcast i8* %790 to <4 x double>*
  %wide.load1633 = load <4 x double>, <4 x double>* %791, align 8, !alias.scope !72, !noalias !74
  %792 = fadd fast <4 x double> %787, %784
  %793 = fmul fast <4 x double> %792, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %794 = fadd fast <4 x double> %793, %wide.load1633
  %795 = bitcast i8* %790 to <4 x double>*
  store <4 x double> %794, <4 x double>* %795, align 8, !alias.scope !72, !noalias !74
  %index.next1624 = add i64 %index1623, 4
  %796 = icmp eq i64 %index.next1624, %n.vec1622
  br i1 %796, label %middle.block1610, label %vector.body1612, !llvm.loop !159

middle.block1610:                                 ; preds = %vector.body1612
  %cmp.n1626 = icmp eq i64 %776, %n.vec1622
  br i1 %cmp.n1626, label %polly.loop_exit282.us.3, label %polly.loop_header280.us.3.preheader

polly.loop_header280.us.3.preheader:              ; preds = %polly.loop_header280.preheader.us.3, %middle.block1610
  %polly.indvar284.us.3.ph = phi i64 [ 0, %polly.loop_header280.preheader.us.3 ], [ %n.vec1622, %middle.block1610 ]
  br label %polly.loop_header280.us.3

polly.loop_header280.us.3:                        ; preds = %polly.loop_header280.us.3.preheader, %polly.loop_header280.us.3
  %polly.indvar284.us.3 = phi i64 [ %polly.indvar_next285.us.3, %polly.loop_header280.us.3 ], [ %polly.indvar284.us.3.ph, %polly.loop_header280.us.3.preheader ]
  %797 = add nuw nsw i64 %polly.indvar284.us.3, %168
  %polly.access.add.Packed_MemRef_call1288.us.3 = add nuw nsw i64 %polly.indvar284.us.3, 3600
  %polly.access.Packed_MemRef_call1289.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.us.3
  %_p_scalar_290.us.3 = load double, double* %polly.access.Packed_MemRef_call1289.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_294.us.3, %_p_scalar_290.us.3
  %polly.access.Packed_MemRef_call2297.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.us.3
  %_p_scalar_298.us.3 = load double, double* %polly.access.Packed_MemRef_call2297.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_302.us.3, %_p_scalar_298.us.3
  %798 = shl i64 %797, 3
  %799 = add i64 %798, %779
  %scevgep303.us.3 = getelementptr i8, i8* %call, i64 %799
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
  %polly.loop_cond278.us.3 = icmp ult i64 %polly.indvar276.us.3, 7
  %indvars.iv.next1097.3 = add i64 %indvars.iv1096.3, 1
  %indvar.next1617 = add i64 %indvar1616, 1
  br i1 %polly.loop_cond278.us.3, label %polly.loop_header272.us.3, label %polly.loop_exit267

polly.loop_header430.1:                           ; preds = %polly.loop_header430, %polly.loop_header430.1
  %polly.indvar433.1 = phi i64 [ %polly.indvar_next434.1, %polly.loop_header430.1 ], [ 0, %polly.loop_header430 ]
  %800 = add nuw nsw i64 %polly.indvar433.1, %343
  %polly.access.mul.call2437.1 = mul nuw nsw i64 %800, 1000
  %polly.access.add.call2438.1 = add nuw nsw i64 %273, %polly.access.mul.call2437.1
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
  %801 = add nuw nsw i64 %polly.indvar433.2, %343
  %polly.access.mul.call2437.2 = mul nuw nsw i64 %801, 1000
  %polly.access.add.call2438.2 = add nuw nsw i64 %274, %polly.access.mul.call2437.2
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
  %802 = add nuw nsw i64 %polly.indvar433.3, %343
  %polly.access.mul.call2437.3 = mul nuw nsw i64 %802, 1000
  %polly.access.add.call2438.3 = add nuw nsw i64 %275, %polly.access.mul.call2437.3
  %polly.access.call2439.3 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.3
  %polly.access.call2439.load.3 = load double, double* %polly.access.call2439.3, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.3 = add nuw nsw i64 %polly.indvar433.3, 3600
  %polly.access.Packed_MemRef_call2313.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.3
  store double %polly.access.call2439.load.3, double* %polly.access.Packed_MemRef_call2313.3, align 8
  %polly.indvar_next434.3 = add nuw nsw i64 %polly.indvar433.3, 1
  %exitcond1106.3.not = icmp eq i64 %polly.indvar_next434.3, %indvars.iv1104
  br i1 %exitcond1106.3.not, label %polly.loop_exit432.3, label %polly.loop_header430.3

polly.loop_exit432.3:                             ; preds = %polly.loop_header430.3
  %803 = mul nsw i64 %polly.indvar421, -100
  %804 = mul nuw nsw i64 %polly.indvar421, 12
  %805 = add nuw nsw i64 %804, %338
  br label %polly.loop_header441

polly.loop_header466.1:                           ; preds = %polly.loop_header466, %polly.loop_header466.1
  %polly.indvar470.1 = phi i64 [ %polly.indvar_next471.1, %polly.loop_header466.1 ], [ %401, %polly.loop_header466 ]
  %806 = add nuw nsw i64 %polly.indvar470.1, %343
  %polly.access.mul.call1474.1 = mul nsw i64 %806, 1000
  %polly.access.add.call1475.1 = add nuw nsw i64 %273, %polly.access.mul.call1474.1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.1 = add nuw nsw i64 %polly.indvar470.1, 1200
  %polly.access.Packed_MemRef_call1311479.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1311479.1, align 8
  %polly.indvar_next471.1 = add nuw nsw i64 %polly.indvar470.1, 1
  %polly.loop_cond472.not.not.1 = icmp slt i64 %polly.indvar470.1, %402
  br i1 %polly.loop_cond472.not.not.1, label %polly.loop_header466.1, label %polly.loop_header466.2

polly.loop_header466.2:                           ; preds = %polly.loop_header466.1, %polly.loop_header466.2
  %polly.indvar470.2 = phi i64 [ %polly.indvar_next471.2, %polly.loop_header466.2 ], [ %401, %polly.loop_header466.1 ]
  %807 = add nuw nsw i64 %polly.indvar470.2, %343
  %polly.access.mul.call1474.2 = mul nsw i64 %807, 1000
  %polly.access.add.call1475.2 = add nuw nsw i64 %274, %polly.access.mul.call1474.2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.2 = add nuw nsw i64 %polly.indvar470.2, 2400
  %polly.access.Packed_MemRef_call1311479.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1311479.2, align 8
  %polly.indvar_next471.2 = add nuw nsw i64 %polly.indvar470.2, 1
  %polly.loop_cond472.not.not.2 = icmp slt i64 %polly.indvar470.2, %402
  br i1 %polly.loop_cond472.not.not.2, label %polly.loop_header466.2, label %polly.loop_header466.3

polly.loop_header466.3:                           ; preds = %polly.loop_header466.2, %polly.loop_header466.3
  %polly.indvar470.3 = phi i64 [ %polly.indvar_next471.3, %polly.loop_header466.3 ], [ %401, %polly.loop_header466.2 ]
  %808 = add nuw nsw i64 %polly.indvar470.3, %343
  %polly.access.mul.call1474.3 = mul nsw i64 %808, 1000
  %polly.access.add.call1475.3 = add nuw nsw i64 %275, %polly.access.mul.call1474.3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.3 = add nuw nsw i64 %polly.indvar470.3, 3600
  %polly.access.Packed_MemRef_call1311479.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1311479.3, align 8
  %polly.indvar_next471.3 = add nuw nsw i64 %polly.indvar470.3, 1
  %polly.loop_cond472.not.not.3 = icmp slt i64 %polly.indvar470.3, %402
  br i1 %polly.loop_cond472.not.not.3, label %polly.loop_header466.3, label %polly.loop_header480.preheader

polly.loop_header454.us.1:                        ; preds = %polly.loop_header454.us.1.preheader, %polly.loop_header454.us.1
  %polly.indvar458.us.1 = phi i64 [ %polly.indvar_next459.us.1, %polly.loop_header454.us.1 ], [ 0, %polly.loop_header454.us.1.preheader ]
  %809 = add nuw nsw i64 %polly.indvar458.us.1, %343
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %809, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %273, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.1 = add nuw nsw i64 %polly.indvar458.us.1, 1200
  %polly.access.Packed_MemRef_call1311.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1311.us.1, align 8
  %polly.indvar_next459.us.1 = add nuw i64 %polly.indvar458.us.1, 1
  %exitcond1109.1.not = icmp eq i64 %polly.indvar458.us.1, %399
  br i1 %exitcond1109.1.not, label %polly.loop_exit456.loopexit.us.1, label %polly.loop_header454.us.1

polly.loop_exit456.loopexit.us.1:                 ; preds = %polly.loop_header454.us.1
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.2.preheader, label %polly.loop_header466.us.1

polly.loop_header466.us.1:                        ; preds = %polly.loop_exit456.loopexit.us.1, %polly.loop_header466.us.1
  %polly.indvar470.us.1 = phi i64 [ %polly.indvar_next471.us.1, %polly.loop_header466.us.1 ], [ %401, %polly.loop_exit456.loopexit.us.1 ]
  %810 = add nuw nsw i64 %polly.indvar470.us.1, %343
  %polly.access.mul.call1474.us.1 = mul nsw i64 %810, 1000
  %polly.access.add.call1475.us.1 = add nuw nsw i64 %273, %polly.access.mul.call1474.us.1
  %polly.access.call1476.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.1
  %polly.access.call1476.load.us.1 = load double, double* %polly.access.call1476.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1200
  %polly.access.Packed_MemRef_call1311479.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.1
  store double %polly.access.call1476.load.us.1, double* %polly.access.Packed_MemRef_call1311479.us.1, align 8
  %polly.indvar_next471.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1
  %polly.loop_cond472.not.not.us.1 = icmp slt i64 %polly.indvar470.us.1, %402
  br i1 %polly.loop_cond472.not.not.us.1, label %polly.loop_header466.us.1, label %polly.loop_header454.us.2.preheader

polly.loop_header454.us.2.preheader:              ; preds = %polly.loop_header466.us.1, %polly.loop_exit456.loopexit.us.1
  br label %polly.loop_header454.us.2

polly.loop_header454.us.2:                        ; preds = %polly.loop_header454.us.2.preheader, %polly.loop_header454.us.2
  %polly.indvar458.us.2 = phi i64 [ %polly.indvar_next459.us.2, %polly.loop_header454.us.2 ], [ 0, %polly.loop_header454.us.2.preheader ]
  %811 = add nuw nsw i64 %polly.indvar458.us.2, %343
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %811, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %274, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.2 = add nuw nsw i64 %polly.indvar458.us.2, 2400
  %polly.access.Packed_MemRef_call1311.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1311.us.2, align 8
  %polly.indvar_next459.us.2 = add nuw i64 %polly.indvar458.us.2, 1
  %exitcond1109.2.not = icmp eq i64 %polly.indvar458.us.2, %399
  br i1 %exitcond1109.2.not, label %polly.loop_exit456.loopexit.us.2, label %polly.loop_header454.us.2

polly.loop_exit456.loopexit.us.2:                 ; preds = %polly.loop_header454.us.2
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.3.preheader, label %polly.loop_header466.us.2

polly.loop_header466.us.2:                        ; preds = %polly.loop_exit456.loopexit.us.2, %polly.loop_header466.us.2
  %polly.indvar470.us.2 = phi i64 [ %polly.indvar_next471.us.2, %polly.loop_header466.us.2 ], [ %401, %polly.loop_exit456.loopexit.us.2 ]
  %812 = add nuw nsw i64 %polly.indvar470.us.2, %343
  %polly.access.mul.call1474.us.2 = mul nsw i64 %812, 1000
  %polly.access.add.call1475.us.2 = add nuw nsw i64 %274, %polly.access.mul.call1474.us.2
  %polly.access.call1476.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.2
  %polly.access.call1476.load.us.2 = load double, double* %polly.access.call1476.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 2400
  %polly.access.Packed_MemRef_call1311479.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.2
  store double %polly.access.call1476.load.us.2, double* %polly.access.Packed_MemRef_call1311479.us.2, align 8
  %polly.indvar_next471.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 1
  %polly.loop_cond472.not.not.us.2 = icmp slt i64 %polly.indvar470.us.2, %402
  br i1 %polly.loop_cond472.not.not.us.2, label %polly.loop_header466.us.2, label %polly.loop_header454.us.3.preheader

polly.loop_header454.us.3.preheader:              ; preds = %polly.loop_header466.us.2, %polly.loop_exit456.loopexit.us.2
  br label %polly.loop_header454.us.3

polly.loop_header454.us.3:                        ; preds = %polly.loop_header454.us.3.preheader, %polly.loop_header454.us.3
  %polly.indvar458.us.3 = phi i64 [ %polly.indvar_next459.us.3, %polly.loop_header454.us.3 ], [ 0, %polly.loop_header454.us.3.preheader ]
  %813 = add nuw nsw i64 %polly.indvar458.us.3, %343
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %813, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %275, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.3 = add nuw nsw i64 %polly.indvar458.us.3, 3600
  %polly.access.Packed_MemRef_call1311.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1311.us.3, align 8
  %polly.indvar_next459.us.3 = add nuw i64 %polly.indvar458.us.3, 1
  %exitcond1109.3.not = icmp eq i64 %polly.indvar458.us.3, %399
  br i1 %exitcond1109.3.not, label %polly.loop_exit456.loopexit.us.3, label %polly.loop_header454.us.3

polly.loop_exit456.loopexit.us.3:                 ; preds = %polly.loop_header454.us.3
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466.us.3

polly.loop_header466.us.3:                        ; preds = %polly.loop_exit456.loopexit.us.3, %polly.loop_header466.us.3
  %polly.indvar470.us.3 = phi i64 [ %polly.indvar_next471.us.3, %polly.loop_header466.us.3 ], [ %401, %polly.loop_exit456.loopexit.us.3 ]
  %814 = add nuw nsw i64 %polly.indvar470.us.3, %343
  %polly.access.mul.call1474.us.3 = mul nsw i64 %814, 1000
  %polly.access.add.call1475.us.3 = add nuw nsw i64 %275, %polly.access.mul.call1474.us.3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 3600
  %polly.access.Packed_MemRef_call1311479.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1311479.us.3, align 8
  %polly.indvar_next471.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 1
  %polly.loop_cond472.not.not.us.3 = icmp slt i64 %polly.indvar470.us.3, %402
  br i1 %polly.loop_cond472.not.not.us.3, label %polly.loop_header466.us.3, label %polly.loop_header480.preheader

polly.loop_header487.us.1:                        ; preds = %polly.loop_exit497.us, %polly.loop_exit497.us.1
  %indvar1517 = phi i64 [ %indvar.next1518, %polly.loop_exit497.us.1 ], [ 0, %polly.loop_exit497.us ]
  %indvars.iv1122.1 = phi i64 [ %indvars.iv.next1123.1, %polly.loop_exit497.us.1 ], [ %395, %polly.loop_exit497.us ]
  %polly.indvar491.us.1 = phi i64 [ %polly.indvar_next492.us.1, %polly.loop_exit497.us.1 ], [ %407, %polly.loop_exit497.us ]
  %815 = add i64 %364, %indvar1517
  %smin1534 = call i64 @llvm.smin.i64(i64 %815, i64 99)
  %816 = add nsw i64 %smin1534, 1
  %817 = mul nuw nsw i64 %indvar1517, 9600
  %818 = add i64 %371, %817
  %scevgep1519 = getelementptr i8, i8* %call, i64 %818
  %819 = add i64 %372, %817
  %scevgep1520 = getelementptr i8, i8* %call, i64 %819
  %820 = add i64 %374, %indvar1517
  %smin1521 = call i64 @llvm.smin.i64(i64 %820, i64 99)
  %821 = shl nsw i64 %smin1521, 3
  %scevgep1522 = getelementptr i8, i8* %scevgep1520, i64 %821
  %scevgep1525 = getelementptr i8, i8* %scevgep1524, i64 %821
  %smin1124.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1122.1, i64 99)
  %822 = add nsw i64 %polly.indvar491.us.1, %397
  %polly.loop_guard498.us.11197 = icmp sgt i64 %822, -1
  br i1 %polly.loop_guard498.us.11197, label %polly.loop_header495.preheader.us.1, label %polly.loop_exit497.us.1

polly.loop_header495.preheader.us.1:              ; preds = %polly.loop_header487.us.1
  %823 = add nuw nsw i64 %polly.indvar491.us.1, %396
  %polly.access.add.Packed_MemRef_call2313507.us.1 = add nuw nsw i64 %822, 1200
  %polly.access.Packed_MemRef_call2313508.us.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.us.1
  %_p_scalar_509.us.1 = load double, double* %polly.access.Packed_MemRef_call2313508.us.1, align 8
  %polly.access.Packed_MemRef_call1311516.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.us.1
  %_p_scalar_517.us.1 = load double, double* %polly.access.Packed_MemRef_call1311516.us.1, align 8
  %824 = mul i64 %823, 9600
  %min.iters.check1535 = icmp ult i64 %816, 4
  br i1 %min.iters.check1535, label %polly.loop_header495.us.1.preheader, label %vector.memcheck1515

vector.memcheck1515:                              ; preds = %polly.loop_header495.preheader.us.1
  %bound01526 = icmp ult i8* %scevgep1519, %scevgep1525
  %bound11527 = icmp ult i8* %scevgep1523, %scevgep1522
  %found.conflict1528 = and i1 %bound01526, %bound11527
  br i1 %found.conflict1528, label %polly.loop_header495.us.1.preheader, label %vector.ph1536

vector.ph1536:                                    ; preds = %vector.memcheck1515
  %n.vec1538 = and i64 %816, -4
  %broadcast.splatinsert1544 = insertelement <4 x double> poison, double %_p_scalar_509.us.1, i32 0
  %broadcast.splat1545 = shufflevector <4 x double> %broadcast.splatinsert1544, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1547 = insertelement <4 x double> poison, double %_p_scalar_517.us.1, i32 0
  %broadcast.splat1548 = shufflevector <4 x double> %broadcast.splatinsert1547, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.body1532, %vector.ph1536
  %index1539 = phi i64 [ 0, %vector.ph1536 ], [ %index.next1540, %vector.body1532 ]
  %825 = add nuw nsw i64 %index1539, %343
  %826 = add nuw nsw i64 %index1539, 1200
  %827 = getelementptr double, double* %Packed_MemRef_call1311, i64 %826
  %828 = bitcast double* %827 to <4 x double>*
  %wide.load1543 = load <4 x double>, <4 x double>* %828, align 8, !alias.scope !161
  %829 = fmul fast <4 x double> %broadcast.splat1545, %wide.load1543
  %830 = getelementptr double, double* %Packed_MemRef_call2313, i64 %826
  %831 = bitcast double* %830 to <4 x double>*
  %wide.load1546 = load <4 x double>, <4 x double>* %831, align 8
  %832 = fmul fast <4 x double> %broadcast.splat1548, %wide.load1546
  %833 = shl i64 %825, 3
  %834 = add i64 %833, %824
  %835 = getelementptr i8, i8* %call, i64 %834
  %836 = bitcast i8* %835 to <4 x double>*
  %wide.load1549 = load <4 x double>, <4 x double>* %836, align 8, !alias.scope !164, !noalias !166
  %837 = fadd fast <4 x double> %832, %829
  %838 = fmul fast <4 x double> %837, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %839 = fadd fast <4 x double> %838, %wide.load1549
  %840 = bitcast i8* %835 to <4 x double>*
  store <4 x double> %839, <4 x double>* %840, align 8, !alias.scope !164, !noalias !166
  %index.next1540 = add i64 %index1539, 4
  %841 = icmp eq i64 %index.next1540, %n.vec1538
  br i1 %841, label %middle.block1530, label %vector.body1532, !llvm.loop !167

middle.block1530:                                 ; preds = %vector.body1532
  %cmp.n1542 = icmp eq i64 %816, %n.vec1538
  br i1 %cmp.n1542, label %polly.loop_exit497.us.1, label %polly.loop_header495.us.1.preheader

polly.loop_header495.us.1.preheader:              ; preds = %vector.memcheck1515, %polly.loop_header495.preheader.us.1, %middle.block1530
  %polly.indvar499.us.1.ph = phi i64 [ 0, %vector.memcheck1515 ], [ 0, %polly.loop_header495.preheader.us.1 ], [ %n.vec1538, %middle.block1530 ]
  br label %polly.loop_header495.us.1

polly.loop_header495.us.1:                        ; preds = %polly.loop_header495.us.1.preheader, %polly.loop_header495.us.1
  %polly.indvar499.us.1 = phi i64 [ %polly.indvar_next500.us.1, %polly.loop_header495.us.1 ], [ %polly.indvar499.us.1.ph, %polly.loop_header495.us.1.preheader ]
  %842 = add nuw nsw i64 %polly.indvar499.us.1, %343
  %polly.access.add.Packed_MemRef_call1311503.us.1 = add nuw nsw i64 %polly.indvar499.us.1, 1200
  %polly.access.Packed_MemRef_call1311504.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call1311504.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_509.us.1, %_p_scalar_505.us.1
  %polly.access.Packed_MemRef_call2313512.us.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.us.1
  %_p_scalar_513.us.1 = load double, double* %polly.access.Packed_MemRef_call2313512.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_517.us.1, %_p_scalar_513.us.1
  %843 = shl i64 %842, 3
  %844 = add i64 %843, %824
  %scevgep518.us.1 = getelementptr i8, i8* %call, i64 %844
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
  %polly.loop_cond493.us.1 = icmp ult i64 %polly.indvar491.us.1, 7
  %indvars.iv.next1123.1 = add i64 %indvars.iv1122.1, 1
  %indvar.next1518 = add i64 %indvar1517, 1
  br i1 %polly.loop_cond493.us.1, label %polly.loop_header487.us.1, label %polly.loop_header487.us.2

polly.loop_header487.us.2:                        ; preds = %polly.loop_exit497.us.1, %polly.loop_exit497.us.2
  %indvar1482 = phi i64 [ %indvar.next1483, %polly.loop_exit497.us.2 ], [ 0, %polly.loop_exit497.us.1 ]
  %indvars.iv1122.2 = phi i64 [ %indvars.iv.next1123.2, %polly.loop_exit497.us.2 ], [ %395, %polly.loop_exit497.us.1 ]
  %polly.indvar491.us.2 = phi i64 [ %polly.indvar_next492.us.2, %polly.loop_exit497.us.2 ], [ %407, %polly.loop_exit497.us.1 ]
  %845 = add i64 %379, %indvar1482
  %smin1499 = call i64 @llvm.smin.i64(i64 %845, i64 99)
  %846 = add nsw i64 %smin1499, 1
  %847 = mul nuw nsw i64 %indvar1482, 9600
  %848 = add i64 %386, %847
  %scevgep1484 = getelementptr i8, i8* %call, i64 %848
  %849 = add i64 %387, %847
  %scevgep1485 = getelementptr i8, i8* %call, i64 %849
  %850 = add i64 %389, %indvar1482
  %smin1486 = call i64 @llvm.smin.i64(i64 %850, i64 99)
  %851 = shl nsw i64 %smin1486, 3
  %scevgep1487 = getelementptr i8, i8* %scevgep1485, i64 %851
  %scevgep1490 = getelementptr i8, i8* %scevgep1489, i64 %851
  %smin1124.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1122.2, i64 99)
  %852 = add nsw i64 %polly.indvar491.us.2, %397
  %polly.loop_guard498.us.21198 = icmp sgt i64 %852, -1
  br i1 %polly.loop_guard498.us.21198, label %polly.loop_header495.preheader.us.2, label %polly.loop_exit497.us.2

polly.loop_header495.preheader.us.2:              ; preds = %polly.loop_header487.us.2
  %853 = add nuw nsw i64 %polly.indvar491.us.2, %396
  %polly.access.add.Packed_MemRef_call2313507.us.2 = add nuw nsw i64 %852, 2400
  %polly.access.Packed_MemRef_call2313508.us.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.us.2
  %_p_scalar_509.us.2 = load double, double* %polly.access.Packed_MemRef_call2313508.us.2, align 8
  %polly.access.Packed_MemRef_call1311516.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.us.2
  %_p_scalar_517.us.2 = load double, double* %polly.access.Packed_MemRef_call1311516.us.2, align 8
  %854 = mul i64 %853, 9600
  %min.iters.check1500 = icmp ult i64 %846, 4
  br i1 %min.iters.check1500, label %polly.loop_header495.us.2.preheader, label %vector.memcheck1480

vector.memcheck1480:                              ; preds = %polly.loop_header495.preheader.us.2
  %bound01491 = icmp ult i8* %scevgep1484, %scevgep1490
  %bound11492 = icmp ult i8* %scevgep1488, %scevgep1487
  %found.conflict1493 = and i1 %bound01491, %bound11492
  br i1 %found.conflict1493, label %polly.loop_header495.us.2.preheader, label %vector.ph1501

vector.ph1501:                                    ; preds = %vector.memcheck1480
  %n.vec1503 = and i64 %846, -4
  %broadcast.splatinsert1509 = insertelement <4 x double> poison, double %_p_scalar_509.us.2, i32 0
  %broadcast.splat1510 = shufflevector <4 x double> %broadcast.splatinsert1509, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1512 = insertelement <4 x double> poison, double %_p_scalar_517.us.2, i32 0
  %broadcast.splat1513 = shufflevector <4 x double> %broadcast.splatinsert1512, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1497

vector.body1497:                                  ; preds = %vector.body1497, %vector.ph1501
  %index1504 = phi i64 [ 0, %vector.ph1501 ], [ %index.next1505, %vector.body1497 ]
  %855 = add nuw nsw i64 %index1504, %343
  %856 = add nuw nsw i64 %index1504, 2400
  %857 = getelementptr double, double* %Packed_MemRef_call1311, i64 %856
  %858 = bitcast double* %857 to <4 x double>*
  %wide.load1508 = load <4 x double>, <4 x double>* %858, align 8, !alias.scope !169
  %859 = fmul fast <4 x double> %broadcast.splat1510, %wide.load1508
  %860 = getelementptr double, double* %Packed_MemRef_call2313, i64 %856
  %861 = bitcast double* %860 to <4 x double>*
  %wide.load1511 = load <4 x double>, <4 x double>* %861, align 8
  %862 = fmul fast <4 x double> %broadcast.splat1513, %wide.load1511
  %863 = shl i64 %855, 3
  %864 = add i64 %863, %854
  %865 = getelementptr i8, i8* %call, i64 %864
  %866 = bitcast i8* %865 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %866, align 8, !alias.scope !172, !noalias !174
  %867 = fadd fast <4 x double> %862, %859
  %868 = fmul fast <4 x double> %867, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %869 = fadd fast <4 x double> %868, %wide.load1514
  %870 = bitcast i8* %865 to <4 x double>*
  store <4 x double> %869, <4 x double>* %870, align 8, !alias.scope !172, !noalias !174
  %index.next1505 = add i64 %index1504, 4
  %871 = icmp eq i64 %index.next1505, %n.vec1503
  br i1 %871, label %middle.block1495, label %vector.body1497, !llvm.loop !175

middle.block1495:                                 ; preds = %vector.body1497
  %cmp.n1507 = icmp eq i64 %846, %n.vec1503
  br i1 %cmp.n1507, label %polly.loop_exit497.us.2, label %polly.loop_header495.us.2.preheader

polly.loop_header495.us.2.preheader:              ; preds = %vector.memcheck1480, %polly.loop_header495.preheader.us.2, %middle.block1495
  %polly.indvar499.us.2.ph = phi i64 [ 0, %vector.memcheck1480 ], [ 0, %polly.loop_header495.preheader.us.2 ], [ %n.vec1503, %middle.block1495 ]
  br label %polly.loop_header495.us.2

polly.loop_header495.us.2:                        ; preds = %polly.loop_header495.us.2.preheader, %polly.loop_header495.us.2
  %polly.indvar499.us.2 = phi i64 [ %polly.indvar_next500.us.2, %polly.loop_header495.us.2 ], [ %polly.indvar499.us.2.ph, %polly.loop_header495.us.2.preheader ]
  %872 = add nuw nsw i64 %polly.indvar499.us.2, %343
  %polly.access.add.Packed_MemRef_call1311503.us.2 = add nuw nsw i64 %polly.indvar499.us.2, 2400
  %polly.access.Packed_MemRef_call1311504.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call1311504.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_509.us.2, %_p_scalar_505.us.2
  %polly.access.Packed_MemRef_call2313512.us.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.us.2
  %_p_scalar_513.us.2 = load double, double* %polly.access.Packed_MemRef_call2313512.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_517.us.2, %_p_scalar_513.us.2
  %873 = shl i64 %872, 3
  %874 = add i64 %873, %854
  %scevgep518.us.2 = getelementptr i8, i8* %call, i64 %874
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
  %polly.loop_cond493.us.2 = icmp ult i64 %polly.indvar491.us.2, 7
  %indvars.iv.next1123.2 = add i64 %indvars.iv1122.2, 1
  %indvar.next1483 = add i64 %indvar1482, 1
  br i1 %polly.loop_cond493.us.2, label %polly.loop_header487.us.2, label %polly.loop_header487.us.3

polly.loop_header487.us.3:                        ; preds = %polly.loop_exit497.us.2, %polly.loop_exit497.us.3
  %indvar1462 = phi i64 [ %indvar.next1463, %polly.loop_exit497.us.3 ], [ 0, %polly.loop_exit497.us.2 ]
  %indvars.iv1122.3 = phi i64 [ %indvars.iv.next1123.3, %polly.loop_exit497.us.3 ], [ %395, %polly.loop_exit497.us.2 ]
  %polly.indvar491.us.3 = phi i64 [ %polly.indvar_next492.us.3, %polly.loop_exit497.us.3 ], [ %407, %polly.loop_exit497.us.2 ]
  %875 = add i64 %394, %indvar1462
  %smin1464 = call i64 @llvm.smin.i64(i64 %875, i64 99)
  %876 = add nsw i64 %smin1464, 1
  %smin1124.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1122.3, i64 99)
  %877 = add nsw i64 %polly.indvar491.us.3, %397
  %polly.loop_guard498.us.31199 = icmp sgt i64 %877, -1
  br i1 %polly.loop_guard498.us.31199, label %polly.loop_header495.preheader.us.3, label %polly.loop_exit497.us.3

polly.loop_header495.preheader.us.3:              ; preds = %polly.loop_header487.us.3
  %878 = add nuw nsw i64 %polly.indvar491.us.3, %396
  %polly.access.add.Packed_MemRef_call2313507.us.3 = add nuw nsw i64 %877, 3600
  %polly.access.Packed_MemRef_call2313508.us.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.us.3
  %_p_scalar_509.us.3 = load double, double* %polly.access.Packed_MemRef_call2313508.us.3, align 8
  %polly.access.Packed_MemRef_call1311516.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.us.3
  %_p_scalar_517.us.3 = load double, double* %polly.access.Packed_MemRef_call1311516.us.3, align 8
  %879 = mul i64 %878, 9600
  %min.iters.check1465 = icmp ult i64 %876, 4
  br i1 %min.iters.check1465, label %polly.loop_header495.us.3.preheader, label %vector.ph1466

vector.ph1466:                                    ; preds = %polly.loop_header495.preheader.us.3
  %n.vec1468 = and i64 %876, -4
  %broadcast.splatinsert1474 = insertelement <4 x double> poison, double %_p_scalar_509.us.3, i32 0
  %broadcast.splat1475 = shufflevector <4 x double> %broadcast.splatinsert1474, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1477 = insertelement <4 x double> poison, double %_p_scalar_517.us.3, i32 0
  %broadcast.splat1478 = shufflevector <4 x double> %broadcast.splatinsert1477, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1466
  %index1469 = phi i64 [ 0, %vector.ph1466 ], [ %index.next1470, %vector.body1458 ]
  %880 = add nuw nsw i64 %index1469, %343
  %881 = add nuw nsw i64 %index1469, 3600
  %882 = getelementptr double, double* %Packed_MemRef_call1311, i64 %881
  %883 = bitcast double* %882 to <4 x double>*
  %wide.load1473 = load <4 x double>, <4 x double>* %883, align 8
  %884 = fmul fast <4 x double> %broadcast.splat1475, %wide.load1473
  %885 = getelementptr double, double* %Packed_MemRef_call2313, i64 %881
  %886 = bitcast double* %885 to <4 x double>*
  %wide.load1476 = load <4 x double>, <4 x double>* %886, align 8
  %887 = fmul fast <4 x double> %broadcast.splat1478, %wide.load1476
  %888 = shl i64 %880, 3
  %889 = add i64 %888, %879
  %890 = getelementptr i8, i8* %call, i64 %889
  %891 = bitcast i8* %890 to <4 x double>*
  %wide.load1479 = load <4 x double>, <4 x double>* %891, align 8, !alias.scope !92, !noalias !94
  %892 = fadd fast <4 x double> %887, %884
  %893 = fmul fast <4 x double> %892, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %894 = fadd fast <4 x double> %893, %wide.load1479
  %895 = bitcast i8* %890 to <4 x double>*
  store <4 x double> %894, <4 x double>* %895, align 8, !alias.scope !92, !noalias !94
  %index.next1470 = add i64 %index1469, 4
  %896 = icmp eq i64 %index.next1470, %n.vec1468
  br i1 %896, label %middle.block1456, label %vector.body1458, !llvm.loop !177

middle.block1456:                                 ; preds = %vector.body1458
  %cmp.n1472 = icmp eq i64 %876, %n.vec1468
  br i1 %cmp.n1472, label %polly.loop_exit497.us.3, label %polly.loop_header495.us.3.preheader

polly.loop_header495.us.3.preheader:              ; preds = %polly.loop_header495.preheader.us.3, %middle.block1456
  %polly.indvar499.us.3.ph = phi i64 [ 0, %polly.loop_header495.preheader.us.3 ], [ %n.vec1468, %middle.block1456 ]
  br label %polly.loop_header495.us.3

polly.loop_header495.us.3:                        ; preds = %polly.loop_header495.us.3.preheader, %polly.loop_header495.us.3
  %polly.indvar499.us.3 = phi i64 [ %polly.indvar_next500.us.3, %polly.loop_header495.us.3 ], [ %polly.indvar499.us.3.ph, %polly.loop_header495.us.3.preheader ]
  %897 = add nuw nsw i64 %polly.indvar499.us.3, %343
  %polly.access.add.Packed_MemRef_call1311503.us.3 = add nuw nsw i64 %polly.indvar499.us.3, 3600
  %polly.access.Packed_MemRef_call1311504.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call1311504.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_509.us.3, %_p_scalar_505.us.3
  %polly.access.Packed_MemRef_call2313512.us.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.us.3
  %_p_scalar_513.us.3 = load double, double* %polly.access.Packed_MemRef_call2313512.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_517.us.3, %_p_scalar_513.us.3
  %898 = shl i64 %897, 3
  %899 = add i64 %898, %879
  %scevgep518.us.3 = getelementptr i8, i8* %call, i64 %899
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
  %polly.loop_cond493.us.3 = icmp ult i64 %polly.indvar491.us.3, 7
  %indvars.iv.next1123.3 = add i64 %indvars.iv1122.3, 1
  %indvar.next1463 = add i64 %indvar1462, 1
  br i1 %polly.loop_cond493.us.3, label %polly.loop_header487.us.3, label %polly.loop_exit482

polly.loop_header645.1:                           ; preds = %polly.loop_header645, %polly.loop_header645.1
  %polly.indvar648.1 = phi i64 [ %polly.indvar_next649.1, %polly.loop_header645.1 ], [ 0, %polly.loop_header645 ]
  %900 = add nuw nsw i64 %polly.indvar648.1, %518
  %polly.access.mul.call2652.1 = mul nuw nsw i64 %900, 1000
  %polly.access.add.call2653.1 = add nuw nsw i64 %448, %polly.access.mul.call2652.1
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
  %901 = add nuw nsw i64 %polly.indvar648.2, %518
  %polly.access.mul.call2652.2 = mul nuw nsw i64 %901, 1000
  %polly.access.add.call2653.2 = add nuw nsw i64 %449, %polly.access.mul.call2652.2
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
  %902 = add nuw nsw i64 %polly.indvar648.3, %518
  %polly.access.mul.call2652.3 = mul nuw nsw i64 %902, 1000
  %polly.access.add.call2653.3 = add nuw nsw i64 %450, %polly.access.mul.call2652.3
  %polly.access.call2654.3 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.3
  %polly.access.call2654.load.3 = load double, double* %polly.access.call2654.3, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.3 = add nuw nsw i64 %polly.indvar648.3, 3600
  %polly.access.Packed_MemRef_call2528.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.3
  store double %polly.access.call2654.load.3, double* %polly.access.Packed_MemRef_call2528.3, align 8
  %polly.indvar_next649.3 = add nuw nsw i64 %polly.indvar648.3, 1
  %exitcond1133.3.not = icmp eq i64 %polly.indvar_next649.3, %indvars.iv1131
  br i1 %exitcond1133.3.not, label %polly.loop_exit647.3, label %polly.loop_header645.3

polly.loop_exit647.3:                             ; preds = %polly.loop_header645.3
  %903 = mul nsw i64 %polly.indvar636, -100
  %904 = mul nuw nsw i64 %polly.indvar636, 12
  %905 = add nuw nsw i64 %904, %513
  br label %polly.loop_header656

polly.loop_header681.1:                           ; preds = %polly.loop_header681, %polly.loop_header681.1
  %polly.indvar685.1 = phi i64 [ %polly.indvar_next686.1, %polly.loop_header681.1 ], [ %576, %polly.loop_header681 ]
  %906 = add nuw nsw i64 %polly.indvar685.1, %518
  %polly.access.mul.call1689.1 = mul nsw i64 %906, 1000
  %polly.access.add.call1690.1 = add nuw nsw i64 %448, %polly.access.mul.call1689.1
  %polly.access.call1691.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.1
  %polly.access.call1691.load.1 = load double, double* %polly.access.call1691.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.1 = add nuw nsw i64 %polly.indvar685.1, 1200
  %polly.access.Packed_MemRef_call1526694.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.1
  store double %polly.access.call1691.load.1, double* %polly.access.Packed_MemRef_call1526694.1, align 8
  %polly.indvar_next686.1 = add nuw nsw i64 %polly.indvar685.1, 1
  %polly.loop_cond687.not.not.1 = icmp slt i64 %polly.indvar685.1, %577
  br i1 %polly.loop_cond687.not.not.1, label %polly.loop_header681.1, label %polly.loop_header681.2

polly.loop_header681.2:                           ; preds = %polly.loop_header681.1, %polly.loop_header681.2
  %polly.indvar685.2 = phi i64 [ %polly.indvar_next686.2, %polly.loop_header681.2 ], [ %576, %polly.loop_header681.1 ]
  %907 = add nuw nsw i64 %polly.indvar685.2, %518
  %polly.access.mul.call1689.2 = mul nsw i64 %907, 1000
  %polly.access.add.call1690.2 = add nuw nsw i64 %449, %polly.access.mul.call1689.2
  %polly.access.call1691.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.2
  %polly.access.call1691.load.2 = load double, double* %polly.access.call1691.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.2 = add nuw nsw i64 %polly.indvar685.2, 2400
  %polly.access.Packed_MemRef_call1526694.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.2
  store double %polly.access.call1691.load.2, double* %polly.access.Packed_MemRef_call1526694.2, align 8
  %polly.indvar_next686.2 = add nuw nsw i64 %polly.indvar685.2, 1
  %polly.loop_cond687.not.not.2 = icmp slt i64 %polly.indvar685.2, %577
  br i1 %polly.loop_cond687.not.not.2, label %polly.loop_header681.2, label %polly.loop_header681.3

polly.loop_header681.3:                           ; preds = %polly.loop_header681.2, %polly.loop_header681.3
  %polly.indvar685.3 = phi i64 [ %polly.indvar_next686.3, %polly.loop_header681.3 ], [ %576, %polly.loop_header681.2 ]
  %908 = add nuw nsw i64 %polly.indvar685.3, %518
  %polly.access.mul.call1689.3 = mul nsw i64 %908, 1000
  %polly.access.add.call1690.3 = add nuw nsw i64 %450, %polly.access.mul.call1689.3
  %polly.access.call1691.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.3
  %polly.access.call1691.load.3 = load double, double* %polly.access.call1691.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.3 = add nuw nsw i64 %polly.indvar685.3, 3600
  %polly.access.Packed_MemRef_call1526694.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.3
  store double %polly.access.call1691.load.3, double* %polly.access.Packed_MemRef_call1526694.3, align 8
  %polly.indvar_next686.3 = add nuw nsw i64 %polly.indvar685.3, 1
  %polly.loop_cond687.not.not.3 = icmp slt i64 %polly.indvar685.3, %577
  br i1 %polly.loop_cond687.not.not.3, label %polly.loop_header681.3, label %polly.loop_header695.preheader

polly.loop_header669.us.1:                        ; preds = %polly.loop_header669.us.1.preheader, %polly.loop_header669.us.1
  %polly.indvar673.us.1 = phi i64 [ %polly.indvar_next674.us.1, %polly.loop_header669.us.1 ], [ 0, %polly.loop_header669.us.1.preheader ]
  %909 = add nuw nsw i64 %polly.indvar673.us.1, %518
  %polly.access.mul.call1677.us.1 = mul nuw nsw i64 %909, 1000
  %polly.access.add.call1678.us.1 = add nuw nsw i64 %448, %polly.access.mul.call1677.us.1
  %polly.access.call1679.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.1
  %polly.access.call1679.load.us.1 = load double, double* %polly.access.call1679.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.1 = add nuw nsw i64 %polly.indvar673.us.1, 1200
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.1
  store double %polly.access.call1679.load.us.1, double* %polly.access.Packed_MemRef_call1526.us.1, align 8
  %polly.indvar_next674.us.1 = add nuw i64 %polly.indvar673.us.1, 1
  %exitcond1136.1.not = icmp eq i64 %polly.indvar673.us.1, %574
  br i1 %exitcond1136.1.not, label %polly.loop_exit671.loopexit.us.1, label %polly.loop_header669.us.1

polly.loop_exit671.loopexit.us.1:                 ; preds = %polly.loop_header669.us.1
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.2.preheader, label %polly.loop_header681.us.1

polly.loop_header681.us.1:                        ; preds = %polly.loop_exit671.loopexit.us.1, %polly.loop_header681.us.1
  %polly.indvar685.us.1 = phi i64 [ %polly.indvar_next686.us.1, %polly.loop_header681.us.1 ], [ %576, %polly.loop_exit671.loopexit.us.1 ]
  %910 = add nuw nsw i64 %polly.indvar685.us.1, %518
  %polly.access.mul.call1689.us.1 = mul nsw i64 %910, 1000
  %polly.access.add.call1690.us.1 = add nuw nsw i64 %448, %polly.access.mul.call1689.us.1
  %polly.access.call1691.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.1
  %polly.access.call1691.load.us.1 = load double, double* %polly.access.call1691.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.1 = add nuw nsw i64 %polly.indvar685.us.1, 1200
  %polly.access.Packed_MemRef_call1526694.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.1
  store double %polly.access.call1691.load.us.1, double* %polly.access.Packed_MemRef_call1526694.us.1, align 8
  %polly.indvar_next686.us.1 = add nuw nsw i64 %polly.indvar685.us.1, 1
  %polly.loop_cond687.not.not.us.1 = icmp slt i64 %polly.indvar685.us.1, %577
  br i1 %polly.loop_cond687.not.not.us.1, label %polly.loop_header681.us.1, label %polly.loop_header669.us.2.preheader

polly.loop_header669.us.2.preheader:              ; preds = %polly.loop_header681.us.1, %polly.loop_exit671.loopexit.us.1
  br label %polly.loop_header669.us.2

polly.loop_header669.us.2:                        ; preds = %polly.loop_header669.us.2.preheader, %polly.loop_header669.us.2
  %polly.indvar673.us.2 = phi i64 [ %polly.indvar_next674.us.2, %polly.loop_header669.us.2 ], [ 0, %polly.loop_header669.us.2.preheader ]
  %911 = add nuw nsw i64 %polly.indvar673.us.2, %518
  %polly.access.mul.call1677.us.2 = mul nuw nsw i64 %911, 1000
  %polly.access.add.call1678.us.2 = add nuw nsw i64 %449, %polly.access.mul.call1677.us.2
  %polly.access.call1679.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.2
  %polly.access.call1679.load.us.2 = load double, double* %polly.access.call1679.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.2 = add nuw nsw i64 %polly.indvar673.us.2, 2400
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.2
  store double %polly.access.call1679.load.us.2, double* %polly.access.Packed_MemRef_call1526.us.2, align 8
  %polly.indvar_next674.us.2 = add nuw i64 %polly.indvar673.us.2, 1
  %exitcond1136.2.not = icmp eq i64 %polly.indvar673.us.2, %574
  br i1 %exitcond1136.2.not, label %polly.loop_exit671.loopexit.us.2, label %polly.loop_header669.us.2

polly.loop_exit671.loopexit.us.2:                 ; preds = %polly.loop_header669.us.2
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.3.preheader, label %polly.loop_header681.us.2

polly.loop_header681.us.2:                        ; preds = %polly.loop_exit671.loopexit.us.2, %polly.loop_header681.us.2
  %polly.indvar685.us.2 = phi i64 [ %polly.indvar_next686.us.2, %polly.loop_header681.us.2 ], [ %576, %polly.loop_exit671.loopexit.us.2 ]
  %912 = add nuw nsw i64 %polly.indvar685.us.2, %518
  %polly.access.mul.call1689.us.2 = mul nsw i64 %912, 1000
  %polly.access.add.call1690.us.2 = add nuw nsw i64 %449, %polly.access.mul.call1689.us.2
  %polly.access.call1691.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.2
  %polly.access.call1691.load.us.2 = load double, double* %polly.access.call1691.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.2 = add nuw nsw i64 %polly.indvar685.us.2, 2400
  %polly.access.Packed_MemRef_call1526694.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.2
  store double %polly.access.call1691.load.us.2, double* %polly.access.Packed_MemRef_call1526694.us.2, align 8
  %polly.indvar_next686.us.2 = add nuw nsw i64 %polly.indvar685.us.2, 1
  %polly.loop_cond687.not.not.us.2 = icmp slt i64 %polly.indvar685.us.2, %577
  br i1 %polly.loop_cond687.not.not.us.2, label %polly.loop_header681.us.2, label %polly.loop_header669.us.3.preheader

polly.loop_header669.us.3.preheader:              ; preds = %polly.loop_header681.us.2, %polly.loop_exit671.loopexit.us.2
  br label %polly.loop_header669.us.3

polly.loop_header669.us.3:                        ; preds = %polly.loop_header669.us.3.preheader, %polly.loop_header669.us.3
  %polly.indvar673.us.3 = phi i64 [ %polly.indvar_next674.us.3, %polly.loop_header669.us.3 ], [ 0, %polly.loop_header669.us.3.preheader ]
  %913 = add nuw nsw i64 %polly.indvar673.us.3, %518
  %polly.access.mul.call1677.us.3 = mul nuw nsw i64 %913, 1000
  %polly.access.add.call1678.us.3 = add nuw nsw i64 %450, %polly.access.mul.call1677.us.3
  %polly.access.call1679.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.3
  %polly.access.call1679.load.us.3 = load double, double* %polly.access.call1679.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.3 = add nuw nsw i64 %polly.indvar673.us.3, 3600
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.3
  store double %polly.access.call1679.load.us.3, double* %polly.access.Packed_MemRef_call1526.us.3, align 8
  %polly.indvar_next674.us.3 = add nuw i64 %polly.indvar673.us.3, 1
  %exitcond1136.3.not = icmp eq i64 %polly.indvar673.us.3, %574
  br i1 %exitcond1136.3.not, label %polly.loop_exit671.loopexit.us.3, label %polly.loop_header669.us.3

polly.loop_exit671.loopexit.us.3:                 ; preds = %polly.loop_header669.us.3
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header681.us.3

polly.loop_header681.us.3:                        ; preds = %polly.loop_exit671.loopexit.us.3, %polly.loop_header681.us.3
  %polly.indvar685.us.3 = phi i64 [ %polly.indvar_next686.us.3, %polly.loop_header681.us.3 ], [ %576, %polly.loop_exit671.loopexit.us.3 ]
  %914 = add nuw nsw i64 %polly.indvar685.us.3, %518
  %polly.access.mul.call1689.us.3 = mul nsw i64 %914, 1000
  %polly.access.add.call1690.us.3 = add nuw nsw i64 %450, %polly.access.mul.call1689.us.3
  %polly.access.call1691.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.3
  %polly.access.call1691.load.us.3 = load double, double* %polly.access.call1691.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.3 = add nuw nsw i64 %polly.indvar685.us.3, 3600
  %polly.access.Packed_MemRef_call1526694.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.3
  store double %polly.access.call1691.load.us.3, double* %polly.access.Packed_MemRef_call1526694.us.3, align 8
  %polly.indvar_next686.us.3 = add nuw nsw i64 %polly.indvar685.us.3, 1
  %polly.loop_cond687.not.not.us.3 = icmp slt i64 %polly.indvar685.us.3, %577
  br i1 %polly.loop_cond687.not.not.us.3, label %polly.loop_header681.us.3, label %polly.loop_header695.preheader

polly.loop_header702.us.1:                        ; preds = %polly.loop_exit712.us, %polly.loop_exit712.us.1
  %indvar1363 = phi i64 [ %indvar.next1364, %polly.loop_exit712.us.1 ], [ 0, %polly.loop_exit712.us ]
  %indvars.iv1149.1 = phi i64 [ %indvars.iv.next1150.1, %polly.loop_exit712.us.1 ], [ %570, %polly.loop_exit712.us ]
  %polly.indvar706.us.1 = phi i64 [ %polly.indvar_next707.us.1, %polly.loop_exit712.us.1 ], [ %582, %polly.loop_exit712.us ]
  %915 = add i64 %539, %indvar1363
  %smin1380 = call i64 @llvm.smin.i64(i64 %915, i64 99)
  %916 = add nsw i64 %smin1380, 1
  %917 = mul nuw nsw i64 %indvar1363, 9600
  %918 = add i64 %546, %917
  %scevgep1365 = getelementptr i8, i8* %call, i64 %918
  %919 = add i64 %547, %917
  %scevgep1366 = getelementptr i8, i8* %call, i64 %919
  %920 = add i64 %549, %indvar1363
  %smin1367 = call i64 @llvm.smin.i64(i64 %920, i64 99)
  %921 = shl nsw i64 %smin1367, 3
  %scevgep1368 = getelementptr i8, i8* %scevgep1366, i64 %921
  %scevgep1371 = getelementptr i8, i8* %scevgep1370, i64 %921
  %smin1151.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1149.1, i64 99)
  %922 = add nsw i64 %polly.indvar706.us.1, %572
  %polly.loop_guard713.us.11201 = icmp sgt i64 %922, -1
  br i1 %polly.loop_guard713.us.11201, label %polly.loop_header710.preheader.us.1, label %polly.loop_exit712.us.1

polly.loop_header710.preheader.us.1:              ; preds = %polly.loop_header702.us.1
  %923 = add nuw nsw i64 %polly.indvar706.us.1, %571
  %polly.access.add.Packed_MemRef_call2528722.us.1 = add nuw nsw i64 %922, 1200
  %polly.access.Packed_MemRef_call2528723.us.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.us.1
  %_p_scalar_724.us.1 = load double, double* %polly.access.Packed_MemRef_call2528723.us.1, align 8
  %polly.access.Packed_MemRef_call1526731.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.us.1
  %_p_scalar_732.us.1 = load double, double* %polly.access.Packed_MemRef_call1526731.us.1, align 8
  %924 = mul i64 %923, 9600
  %min.iters.check1381 = icmp ult i64 %916, 4
  br i1 %min.iters.check1381, label %polly.loop_header710.us.1.preheader, label %vector.memcheck1361

vector.memcheck1361:                              ; preds = %polly.loop_header710.preheader.us.1
  %bound01372 = icmp ult i8* %scevgep1365, %scevgep1371
  %bound11373 = icmp ult i8* %scevgep1369, %scevgep1368
  %found.conflict1374 = and i1 %bound01372, %bound11373
  br i1 %found.conflict1374, label %polly.loop_header710.us.1.preheader, label %vector.ph1382

vector.ph1382:                                    ; preds = %vector.memcheck1361
  %n.vec1384 = and i64 %916, -4
  %broadcast.splatinsert1390 = insertelement <4 x double> poison, double %_p_scalar_724.us.1, i32 0
  %broadcast.splat1391 = shufflevector <4 x double> %broadcast.splatinsert1390, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1393 = insertelement <4 x double> poison, double %_p_scalar_732.us.1, i32 0
  %broadcast.splat1394 = shufflevector <4 x double> %broadcast.splatinsert1393, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %vector.ph1382
  %index1385 = phi i64 [ 0, %vector.ph1382 ], [ %index.next1386, %vector.body1378 ]
  %925 = add nuw nsw i64 %index1385, %518
  %926 = add nuw nsw i64 %index1385, 1200
  %927 = getelementptr double, double* %Packed_MemRef_call1526, i64 %926
  %928 = bitcast double* %927 to <4 x double>*
  %wide.load1389 = load <4 x double>, <4 x double>* %928, align 8, !alias.scope !179
  %929 = fmul fast <4 x double> %broadcast.splat1391, %wide.load1389
  %930 = getelementptr double, double* %Packed_MemRef_call2528, i64 %926
  %931 = bitcast double* %930 to <4 x double>*
  %wide.load1392 = load <4 x double>, <4 x double>* %931, align 8
  %932 = fmul fast <4 x double> %broadcast.splat1394, %wide.load1392
  %933 = shl i64 %925, 3
  %934 = add i64 %933, %924
  %935 = getelementptr i8, i8* %call, i64 %934
  %936 = bitcast i8* %935 to <4 x double>*
  %wide.load1395 = load <4 x double>, <4 x double>* %936, align 8, !alias.scope !182, !noalias !184
  %937 = fadd fast <4 x double> %932, %929
  %938 = fmul fast <4 x double> %937, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %939 = fadd fast <4 x double> %938, %wide.load1395
  %940 = bitcast i8* %935 to <4 x double>*
  store <4 x double> %939, <4 x double>* %940, align 8, !alias.scope !182, !noalias !184
  %index.next1386 = add i64 %index1385, 4
  %941 = icmp eq i64 %index.next1386, %n.vec1384
  br i1 %941, label %middle.block1376, label %vector.body1378, !llvm.loop !185

middle.block1376:                                 ; preds = %vector.body1378
  %cmp.n1388 = icmp eq i64 %916, %n.vec1384
  br i1 %cmp.n1388, label %polly.loop_exit712.us.1, label %polly.loop_header710.us.1.preheader

polly.loop_header710.us.1.preheader:              ; preds = %vector.memcheck1361, %polly.loop_header710.preheader.us.1, %middle.block1376
  %polly.indvar714.us.1.ph = phi i64 [ 0, %vector.memcheck1361 ], [ 0, %polly.loop_header710.preheader.us.1 ], [ %n.vec1384, %middle.block1376 ]
  br label %polly.loop_header710.us.1

polly.loop_header710.us.1:                        ; preds = %polly.loop_header710.us.1.preheader, %polly.loop_header710.us.1
  %polly.indvar714.us.1 = phi i64 [ %polly.indvar_next715.us.1, %polly.loop_header710.us.1 ], [ %polly.indvar714.us.1.ph, %polly.loop_header710.us.1.preheader ]
  %942 = add nuw nsw i64 %polly.indvar714.us.1, %518
  %polly.access.add.Packed_MemRef_call1526718.us.1 = add nuw nsw i64 %polly.indvar714.us.1, 1200
  %polly.access.Packed_MemRef_call1526719.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.us.1
  %_p_scalar_720.us.1 = load double, double* %polly.access.Packed_MemRef_call1526719.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_724.us.1, %_p_scalar_720.us.1
  %polly.access.Packed_MemRef_call2528727.us.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.us.1
  %_p_scalar_728.us.1 = load double, double* %polly.access.Packed_MemRef_call2528727.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_732.us.1, %_p_scalar_728.us.1
  %943 = shl i64 %942, 3
  %944 = add i64 %943, %924
  %scevgep733.us.1 = getelementptr i8, i8* %call, i64 %944
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
  %polly.loop_cond708.us.1 = icmp ult i64 %polly.indvar706.us.1, 7
  %indvars.iv.next1150.1 = add i64 %indvars.iv1149.1, 1
  %indvar.next1364 = add i64 %indvar1363, 1
  br i1 %polly.loop_cond708.us.1, label %polly.loop_header702.us.1, label %polly.loop_header702.us.2

polly.loop_header702.us.2:                        ; preds = %polly.loop_exit712.us.1, %polly.loop_exit712.us.2
  %indvar1328 = phi i64 [ %indvar.next1329, %polly.loop_exit712.us.2 ], [ 0, %polly.loop_exit712.us.1 ]
  %indvars.iv1149.2 = phi i64 [ %indvars.iv.next1150.2, %polly.loop_exit712.us.2 ], [ %570, %polly.loop_exit712.us.1 ]
  %polly.indvar706.us.2 = phi i64 [ %polly.indvar_next707.us.2, %polly.loop_exit712.us.2 ], [ %582, %polly.loop_exit712.us.1 ]
  %945 = add i64 %554, %indvar1328
  %smin1345 = call i64 @llvm.smin.i64(i64 %945, i64 99)
  %946 = add nsw i64 %smin1345, 1
  %947 = mul nuw nsw i64 %indvar1328, 9600
  %948 = add i64 %561, %947
  %scevgep1330 = getelementptr i8, i8* %call, i64 %948
  %949 = add i64 %562, %947
  %scevgep1331 = getelementptr i8, i8* %call, i64 %949
  %950 = add i64 %564, %indvar1328
  %smin1332 = call i64 @llvm.smin.i64(i64 %950, i64 99)
  %951 = shl nsw i64 %smin1332, 3
  %scevgep1333 = getelementptr i8, i8* %scevgep1331, i64 %951
  %scevgep1336 = getelementptr i8, i8* %scevgep1335, i64 %951
  %smin1151.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1149.2, i64 99)
  %952 = add nsw i64 %polly.indvar706.us.2, %572
  %polly.loop_guard713.us.21202 = icmp sgt i64 %952, -1
  br i1 %polly.loop_guard713.us.21202, label %polly.loop_header710.preheader.us.2, label %polly.loop_exit712.us.2

polly.loop_header710.preheader.us.2:              ; preds = %polly.loop_header702.us.2
  %953 = add nuw nsw i64 %polly.indvar706.us.2, %571
  %polly.access.add.Packed_MemRef_call2528722.us.2 = add nuw nsw i64 %952, 2400
  %polly.access.Packed_MemRef_call2528723.us.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.us.2
  %_p_scalar_724.us.2 = load double, double* %polly.access.Packed_MemRef_call2528723.us.2, align 8
  %polly.access.Packed_MemRef_call1526731.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.us.2
  %_p_scalar_732.us.2 = load double, double* %polly.access.Packed_MemRef_call1526731.us.2, align 8
  %954 = mul i64 %953, 9600
  %min.iters.check1346 = icmp ult i64 %946, 4
  br i1 %min.iters.check1346, label %polly.loop_header710.us.2.preheader, label %vector.memcheck1326

vector.memcheck1326:                              ; preds = %polly.loop_header710.preheader.us.2
  %bound01337 = icmp ult i8* %scevgep1330, %scevgep1336
  %bound11338 = icmp ult i8* %scevgep1334, %scevgep1333
  %found.conflict1339 = and i1 %bound01337, %bound11338
  br i1 %found.conflict1339, label %polly.loop_header710.us.2.preheader, label %vector.ph1347

vector.ph1347:                                    ; preds = %vector.memcheck1326
  %n.vec1349 = and i64 %946, -4
  %broadcast.splatinsert1355 = insertelement <4 x double> poison, double %_p_scalar_724.us.2, i32 0
  %broadcast.splat1356 = shufflevector <4 x double> %broadcast.splatinsert1355, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1358 = insertelement <4 x double> poison, double %_p_scalar_732.us.2, i32 0
  %broadcast.splat1359 = shufflevector <4 x double> %broadcast.splatinsert1358, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1343

vector.body1343:                                  ; preds = %vector.body1343, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1351, %vector.body1343 ]
  %955 = add nuw nsw i64 %index1350, %518
  %956 = add nuw nsw i64 %index1350, 2400
  %957 = getelementptr double, double* %Packed_MemRef_call1526, i64 %956
  %958 = bitcast double* %957 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %958, align 8, !alias.scope !187
  %959 = fmul fast <4 x double> %broadcast.splat1356, %wide.load1354
  %960 = getelementptr double, double* %Packed_MemRef_call2528, i64 %956
  %961 = bitcast double* %960 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %961, align 8
  %962 = fmul fast <4 x double> %broadcast.splat1359, %wide.load1357
  %963 = shl i64 %955, 3
  %964 = add i64 %963, %954
  %965 = getelementptr i8, i8* %call, i64 %964
  %966 = bitcast i8* %965 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %966, align 8, !alias.scope !190, !noalias !192
  %967 = fadd fast <4 x double> %962, %959
  %968 = fmul fast <4 x double> %967, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %969 = fadd fast <4 x double> %968, %wide.load1360
  %970 = bitcast i8* %965 to <4 x double>*
  store <4 x double> %969, <4 x double>* %970, align 8, !alias.scope !190, !noalias !192
  %index.next1351 = add i64 %index1350, 4
  %971 = icmp eq i64 %index.next1351, %n.vec1349
  br i1 %971, label %middle.block1341, label %vector.body1343, !llvm.loop !193

middle.block1341:                                 ; preds = %vector.body1343
  %cmp.n1353 = icmp eq i64 %946, %n.vec1349
  br i1 %cmp.n1353, label %polly.loop_exit712.us.2, label %polly.loop_header710.us.2.preheader

polly.loop_header710.us.2.preheader:              ; preds = %vector.memcheck1326, %polly.loop_header710.preheader.us.2, %middle.block1341
  %polly.indvar714.us.2.ph = phi i64 [ 0, %vector.memcheck1326 ], [ 0, %polly.loop_header710.preheader.us.2 ], [ %n.vec1349, %middle.block1341 ]
  br label %polly.loop_header710.us.2

polly.loop_header710.us.2:                        ; preds = %polly.loop_header710.us.2.preheader, %polly.loop_header710.us.2
  %polly.indvar714.us.2 = phi i64 [ %polly.indvar_next715.us.2, %polly.loop_header710.us.2 ], [ %polly.indvar714.us.2.ph, %polly.loop_header710.us.2.preheader ]
  %972 = add nuw nsw i64 %polly.indvar714.us.2, %518
  %polly.access.add.Packed_MemRef_call1526718.us.2 = add nuw nsw i64 %polly.indvar714.us.2, 2400
  %polly.access.Packed_MemRef_call1526719.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.us.2
  %_p_scalar_720.us.2 = load double, double* %polly.access.Packed_MemRef_call1526719.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_724.us.2, %_p_scalar_720.us.2
  %polly.access.Packed_MemRef_call2528727.us.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.us.2
  %_p_scalar_728.us.2 = load double, double* %polly.access.Packed_MemRef_call2528727.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_732.us.2, %_p_scalar_728.us.2
  %973 = shl i64 %972, 3
  %974 = add i64 %973, %954
  %scevgep733.us.2 = getelementptr i8, i8* %call, i64 %974
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
  %polly.loop_cond708.us.2 = icmp ult i64 %polly.indvar706.us.2, 7
  %indvars.iv.next1150.2 = add i64 %indvars.iv1149.2, 1
  %indvar.next1329 = add i64 %indvar1328, 1
  br i1 %polly.loop_cond708.us.2, label %polly.loop_header702.us.2, label %polly.loop_header702.us.3

polly.loop_header702.us.3:                        ; preds = %polly.loop_exit712.us.2, %polly.loop_exit712.us.3
  %indvar1308 = phi i64 [ %indvar.next1309, %polly.loop_exit712.us.3 ], [ 0, %polly.loop_exit712.us.2 ]
  %indvars.iv1149.3 = phi i64 [ %indvars.iv.next1150.3, %polly.loop_exit712.us.3 ], [ %570, %polly.loop_exit712.us.2 ]
  %polly.indvar706.us.3 = phi i64 [ %polly.indvar_next707.us.3, %polly.loop_exit712.us.3 ], [ %582, %polly.loop_exit712.us.2 ]
  %975 = add i64 %569, %indvar1308
  %smin1310 = call i64 @llvm.smin.i64(i64 %975, i64 99)
  %976 = add nsw i64 %smin1310, 1
  %smin1151.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1149.3, i64 99)
  %977 = add nsw i64 %polly.indvar706.us.3, %572
  %polly.loop_guard713.us.31203 = icmp sgt i64 %977, -1
  br i1 %polly.loop_guard713.us.31203, label %polly.loop_header710.preheader.us.3, label %polly.loop_exit712.us.3

polly.loop_header710.preheader.us.3:              ; preds = %polly.loop_header702.us.3
  %978 = add nuw nsw i64 %polly.indvar706.us.3, %571
  %polly.access.add.Packed_MemRef_call2528722.us.3 = add nuw nsw i64 %977, 3600
  %polly.access.Packed_MemRef_call2528723.us.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.us.3
  %_p_scalar_724.us.3 = load double, double* %polly.access.Packed_MemRef_call2528723.us.3, align 8
  %polly.access.Packed_MemRef_call1526731.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.us.3
  %_p_scalar_732.us.3 = load double, double* %polly.access.Packed_MemRef_call1526731.us.3, align 8
  %979 = mul i64 %978, 9600
  %min.iters.check1311 = icmp ult i64 %976, 4
  br i1 %min.iters.check1311, label %polly.loop_header710.us.3.preheader, label %vector.ph1312

vector.ph1312:                                    ; preds = %polly.loop_header710.preheader.us.3
  %n.vec1314 = and i64 %976, -4
  %broadcast.splatinsert1320 = insertelement <4 x double> poison, double %_p_scalar_724.us.3, i32 0
  %broadcast.splat1321 = shufflevector <4 x double> %broadcast.splatinsert1320, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1323 = insertelement <4 x double> poison, double %_p_scalar_732.us.3, i32 0
  %broadcast.splat1324 = shufflevector <4 x double> %broadcast.splatinsert1323, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1312
  %index1315 = phi i64 [ 0, %vector.ph1312 ], [ %index.next1316, %vector.body1304 ]
  %980 = add nuw nsw i64 %index1315, %518
  %981 = add nuw nsw i64 %index1315, 3600
  %982 = getelementptr double, double* %Packed_MemRef_call1526, i64 %981
  %983 = bitcast double* %982 to <4 x double>*
  %wide.load1319 = load <4 x double>, <4 x double>* %983, align 8
  %984 = fmul fast <4 x double> %broadcast.splat1321, %wide.load1319
  %985 = getelementptr double, double* %Packed_MemRef_call2528, i64 %981
  %986 = bitcast double* %985 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %986, align 8
  %987 = fmul fast <4 x double> %broadcast.splat1324, %wide.load1322
  %988 = shl i64 %980, 3
  %989 = add i64 %988, %979
  %990 = getelementptr i8, i8* %call, i64 %989
  %991 = bitcast i8* %990 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %991, align 8, !alias.scope !111, !noalias !113
  %992 = fadd fast <4 x double> %987, %984
  %993 = fmul fast <4 x double> %992, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %994 = fadd fast <4 x double> %993, %wide.load1325
  %995 = bitcast i8* %990 to <4 x double>*
  store <4 x double> %994, <4 x double>* %995, align 8, !alias.scope !111, !noalias !113
  %index.next1316 = add i64 %index1315, 4
  %996 = icmp eq i64 %index.next1316, %n.vec1314
  br i1 %996, label %middle.block1302, label %vector.body1304, !llvm.loop !195

middle.block1302:                                 ; preds = %vector.body1304
  %cmp.n1318 = icmp eq i64 %976, %n.vec1314
  br i1 %cmp.n1318, label %polly.loop_exit712.us.3, label %polly.loop_header710.us.3.preheader

polly.loop_header710.us.3.preheader:              ; preds = %polly.loop_header710.preheader.us.3, %middle.block1302
  %polly.indvar714.us.3.ph = phi i64 [ 0, %polly.loop_header710.preheader.us.3 ], [ %n.vec1314, %middle.block1302 ]
  br label %polly.loop_header710.us.3

polly.loop_header710.us.3:                        ; preds = %polly.loop_header710.us.3.preheader, %polly.loop_header710.us.3
  %polly.indvar714.us.3 = phi i64 [ %polly.indvar_next715.us.3, %polly.loop_header710.us.3 ], [ %polly.indvar714.us.3.ph, %polly.loop_header710.us.3.preheader ]
  %997 = add nuw nsw i64 %polly.indvar714.us.3, %518
  %polly.access.add.Packed_MemRef_call1526718.us.3 = add nuw nsw i64 %polly.indvar714.us.3, 3600
  %polly.access.Packed_MemRef_call1526719.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.us.3
  %_p_scalar_720.us.3 = load double, double* %polly.access.Packed_MemRef_call1526719.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_724.us.3, %_p_scalar_720.us.3
  %polly.access.Packed_MemRef_call2528727.us.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.us.3
  %_p_scalar_728.us.3 = load double, double* %polly.access.Packed_MemRef_call2528727.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_732.us.3, %_p_scalar_728.us.3
  %998 = shl i64 %997, 3
  %999 = add i64 %998, %979
  %scevgep733.us.3 = getelementptr i8, i8* %call, i64 %999
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
  %polly.loop_cond708.us.3 = icmp ult i64 %polly.indvar706.us.3, 7
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
!26 = !{!"llvm.loop.tile.size", i32 100}
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
!51 = !{!"llvm.loop.tile.size", i32 8}
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
