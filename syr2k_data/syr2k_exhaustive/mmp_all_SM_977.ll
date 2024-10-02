; ModuleID = 'syr2k_exhaustive/mmp_all_SM_977.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_977.c"
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
  %scevgep1218 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1217 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1216 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1215 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1215, %scevgep1218
  %bound1 = icmp ult i8* %scevgep1217, %scevgep1216
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
  br i1 %exitcond18.not.i, label %vector.ph1222, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1222:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1229 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1230 = shufflevector <4 x i64> %broadcast.splatinsert1229, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1221

vector.body1221:                                  ; preds = %vector.body1221, %vector.ph1222
  %index1223 = phi i64 [ 0, %vector.ph1222 ], [ %index.next1224, %vector.body1221 ]
  %vec.ind1227 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1222 ], [ %vec.ind.next1228, %vector.body1221 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1227, %broadcast.splat1230
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv7.i, i64 %index1223
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1224 = add i64 %index1223, 4
  %vec.ind.next1228 = add <4 x i64> %vec.ind1227, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1224, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1221, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1221
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1222, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit923
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1285 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1285, label %for.body3.i46.preheader1749, label %vector.ph1286

vector.ph1286:                                    ; preds = %for.body3.i46.preheader
  %n.vec1288 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1284

vector.body1284:                                  ; preds = %vector.body1284, %vector.ph1286
  %index1289 = phi i64 [ 0, %vector.ph1286 ], [ %index.next1290, %vector.body1284 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i, i64 %index1289
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1290 = add i64 %index1289, 4
  %46 = icmp eq i64 %index.next1290, %n.vec1288
  br i1 %46, label %middle.block1282, label %vector.body1284, !llvm.loop !18

middle.block1282:                                 ; preds = %vector.body1284
  %cmp.n1292 = icmp eq i64 %indvars.iv21.i, %n.vec1288
  br i1 %cmp.n1292, label %for.inc6.i, label %for.body3.i46.preheader1749

for.body3.i46.preheader1749:                      ; preds = %for.body3.i46.preheader, %middle.block1282
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1288, %middle.block1282 ]
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

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1282, %for.cond1.preheader.i45
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
  %min.iters.check1436 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1436, label %for.body3.i60.preheader1746, label %vector.ph1437

vector.ph1437:                                    ; preds = %for.body3.i60.preheader
  %n.vec1439 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1435

vector.body1435:                                  ; preds = %vector.body1435, %vector.ph1437
  %index1440 = phi i64 [ 0, %vector.ph1437 ], [ %index.next1441, %vector.body1435 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %index1440
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1444 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1444, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1441 = add i64 %index1440, 4
  %57 = icmp eq i64 %index.next1441, %n.vec1439
  br i1 %57, label %middle.block1433, label %vector.body1435, !llvm.loop !64

middle.block1433:                                 ; preds = %vector.body1435
  %cmp.n1443 = icmp eq i64 %indvars.iv21.i52, %n.vec1439
  br i1 %cmp.n1443, label %for.inc6.i63, label %for.body3.i60.preheader1746

for.body3.i60.preheader1746:                      ; preds = %for.body3.i60.preheader, %middle.block1433
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1439, %middle.block1433 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1746, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1746 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1433, %for.cond1.preheader.i54
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
  %min.iters.check1590 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1590, label %for.body3.i99.preheader1743, label %vector.ph1591

vector.ph1591:                                    ; preds = %for.body3.i99.preheader
  %n.vec1593 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1589

vector.body1589:                                  ; preds = %vector.body1589, %vector.ph1591
  %index1594 = phi i64 [ 0, %vector.ph1591 ], [ %index.next1595, %vector.body1589 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %index1594
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1598 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1598, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1595 = add i64 %index1594, 4
  %68 = icmp eq i64 %index.next1595, %n.vec1593
  br i1 %68, label %middle.block1587, label %vector.body1589, !llvm.loop !66

middle.block1587:                                 ; preds = %vector.body1589
  %cmp.n1597 = icmp eq i64 %indvars.iv21.i91, %n.vec1593
  br i1 %cmp.n1597, label %for.inc6.i102, label %for.body3.i99.preheader1743

for.body3.i99.preheader1743:                      ; preds = %for.body3.i99.preheader, %middle.block1587
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1593, %middle.block1587 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1743, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1743 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1587, %for.cond1.preheader.i93
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
  %indvar1602 = phi i64 [ %indvar.next1603, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1602, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1604 = icmp ult i64 %88, 4
  br i1 %min.iters.check1604, label %polly.loop_header192.preheader, label %vector.ph1605

vector.ph1605:                                    ; preds = %polly.loop_header
  %n.vec1607 = and i64 %88, -4
  br label %vector.body1601

vector.body1601:                                  ; preds = %vector.body1601, %vector.ph1605
  %index1608 = phi i64 [ 0, %vector.ph1605 ], [ %index.next1609, %vector.body1601 ]
  %90 = shl nuw nsw i64 %index1608, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1612 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1612, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1609 = add i64 %index1608, 4
  %95 = icmp eq i64 %index.next1609, %n.vec1607
  br i1 %95, label %middle.block1599, label %vector.body1601, !llvm.loop !79

middle.block1599:                                 ; preds = %vector.body1601
  %cmp.n1611 = icmp eq i64 %88, %n.vec1607
  br i1 %cmp.n1611, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1599
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1607, %middle.block1599 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1599
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1603 = add i64 %indvar1602, 1
  br i1 %exitcond1107.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  %scevgep1645 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1646 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1680 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1681 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1715 = getelementptr i8, i8* %malloccall, i64 8
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
  %exitcond1106.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1106.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = shl nsw i64 %polly.indvar203, 2
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next204, 250
  br i1 %exitcond1105.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %101 = shl nuw nsw i64 %polly.indvar209, 7
  %102 = udiv i64 %polly.indvar209, 3
  %103 = add nuw i64 %polly.indvar209, %102
  %104 = mul nuw nsw i64 %103, 96
  %105 = sub i64 %101, %104
  %106 = mul nsw i64 %polly.indvar209, -128
  %107 = add i64 %106, %104
  %108 = shl nuw nsw i64 %polly.indvar209, 10
  %109 = shl nuw nsw i64 %polly.indvar209, 7
  %110 = udiv i64 %polly.indvar209, 3
  %111 = add nuw i64 %polly.indvar209, %110
  %112 = mul nuw nsw i64 %111, 96
  %113 = sub i64 %109, %112
  %114 = or i64 %108, 8
  %115 = mul nsw i64 %polly.indvar209, -128
  %116 = add i64 %115, %112
  %117 = shl nuw nsw i64 %polly.indvar209, 7
  %118 = udiv i64 %polly.indvar209, 3
  %119 = add nuw i64 %polly.indvar209, %118
  %120 = mul nuw nsw i64 %119, 96
  %121 = sub i64 %117, %120
  %122 = mul nsw i64 %polly.indvar209, -128
  %123 = add i64 %122, %120
  %124 = shl nuw nsw i64 %polly.indvar209, 10
  %125 = shl nuw nsw i64 %polly.indvar209, 7
  %126 = udiv i64 %polly.indvar209, 3
  %127 = add nuw i64 %polly.indvar209, %126
  %128 = mul nuw nsw i64 %127, 96
  %129 = sub i64 %125, %128
  %130 = or i64 %124, 8
  %131 = mul nsw i64 %polly.indvar209, -128
  %132 = add i64 %131, %128
  %133 = shl nuw nsw i64 %polly.indvar209, 7
  %134 = udiv i64 %polly.indvar209, 3
  %135 = add nuw i64 %polly.indvar209, %134
  %136 = mul nuw nsw i64 %135, 96
  %137 = sub i64 %133, %136
  %138 = mul nsw i64 %polly.indvar209, -128
  %139 = add i64 %138, %136
  %140 = shl nuw nsw i64 %polly.indvar209, 10
  %141 = shl nuw nsw i64 %polly.indvar209, 7
  %142 = udiv i64 %polly.indvar209, 3
  %143 = add nuw i64 %polly.indvar209, %142
  %144 = mul nuw nsw i64 %143, 96
  %145 = sub i64 %141, %144
  %146 = or i64 %140, 8
  %147 = mul nsw i64 %polly.indvar209, -128
  %148 = add i64 %147, %144
  %149 = shl nuw nsw i64 %polly.indvar209, 7
  %150 = udiv i64 %polly.indvar209, 3
  %151 = add nuw i64 %polly.indvar209, %150
  %152 = mul nuw nsw i64 %151, 96
  %153 = sub i64 %149, %152
  %154 = mul nsw i64 %polly.indvar209, -128
  %155 = add i64 %154, %152
  %156 = udiv i64 %polly.indvar209, 3
  %157 = add nuw i64 %polly.indvar209, %156
  %158 = mul nuw nsw i64 %157, 96
  %159 = sub i64 %indvars.iv1092, %158
  %160 = add i64 %indvars.iv1096, %158
  %161 = mul nsw i64 %polly.indvar209, -128
  %162 = shl nsw i64 %polly.indvar209, 7
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -128
  %indvars.iv.next1093 = add nuw nsw i64 %indvars.iv1092, 128
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, -128
  %exitcond1104.not = icmp eq i64 %polly.indvar_next210, 10
  br i1 %exitcond1104.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %163 = add nuw nsw i64 %polly.indvar221, %162
  %polly.access.mul.call2225 = mul nuw nsw i64 %163, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %97, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit220.3
  %indvar1616 = phi i64 [ %indvar.next1617, %polly.loop_exit267 ], [ 0, %polly.loop_exit220.3 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit267 ], [ %160, %polly.loop_exit220.3 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit267 ], [ %159, %polly.loop_exit220.3 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %157, %polly.loop_exit220.3 ]
  %164 = mul nsw i64 %indvar1616, -96
  %165 = add i64 %105, %164
  %smax1724 = call i64 @llvm.smax.i64(i64 %165, i64 0)
  %166 = mul nuw nsw i64 %indvar1616, 96
  %167 = add i64 %107, %166
  %168 = add i64 %smax1724, %167
  %169 = mul nsw i64 %indvar1616, -96
  %170 = add i64 %113, %169
  %smax1708 = call i64 @llvm.smax.i64(i64 %170, i64 0)
  %171 = mul nuw nsw i64 %indvar1616, 96
  %172 = add i64 %112, %171
  %173 = add i64 %smax1708, %172
  %174 = mul nsw i64 %173, 9600
  %175 = add i64 %108, %174
  %176 = add i64 %114, %174
  %177 = add i64 %116, %171
  %178 = add i64 %smax1708, %177
  %179 = mul nsw i64 %indvar1616, -96
  %180 = add i64 %121, %179
  %smax1690 = call i64 @llvm.smax.i64(i64 %180, i64 0)
  %181 = mul nuw nsw i64 %indvar1616, 96
  %182 = add i64 %123, %181
  %183 = add i64 %smax1690, %182
  %184 = mul nsw i64 %indvar1616, -96
  %185 = add i64 %129, %184
  %smax1673 = call i64 @llvm.smax.i64(i64 %185, i64 0)
  %186 = mul nuw nsw i64 %indvar1616, 96
  %187 = add i64 %128, %186
  %188 = add i64 %smax1673, %187
  %189 = mul nsw i64 %188, 9600
  %190 = add i64 %124, %189
  %191 = add i64 %130, %189
  %192 = add i64 %132, %186
  %193 = add i64 %smax1673, %192
  %194 = mul nsw i64 %indvar1616, -96
  %195 = add i64 %137, %194
  %smax1655 = call i64 @llvm.smax.i64(i64 %195, i64 0)
  %196 = mul nuw nsw i64 %indvar1616, 96
  %197 = add i64 %139, %196
  %198 = add i64 %smax1655, %197
  %199 = mul nsw i64 %indvar1616, -96
  %200 = add i64 %145, %199
  %smax1638 = call i64 @llvm.smax.i64(i64 %200, i64 0)
  %201 = mul nuw nsw i64 %indvar1616, 96
  %202 = add i64 %144, %201
  %203 = add i64 %smax1638, %202
  %204 = mul nsw i64 %203, 9600
  %205 = add i64 %140, %204
  %206 = add i64 %146, %204
  %207 = add i64 %148, %201
  %208 = add i64 %smax1638, %207
  %209 = mul nsw i64 %indvar1616, -96
  %210 = add i64 %153, %209
  %smax1618 = call i64 @llvm.smax.i64(i64 %210, i64 0)
  %211 = mul nuw nsw i64 %indvar1616, 96
  %212 = add i64 %155, %211
  %213 = add i64 %smax1618, %212
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1094, i64 0)
  %214 = add i64 %smax, %indvars.iv1098
  %215 = mul nuw nsw i64 %polly.indvar231, 96
  %216 = add nsw i64 %215, %161
  %217 = add nsw i64 %216, -1
  %.inv = icmp sgt i64 %216, 127
  %218 = select i1 %.inv, i64 127, i64 %217
  %polly.loop_guard = icmp sgt i64 %218, -1
  %219 = icmp sgt i64 %216, 0
  %220 = select i1 %219, i64 %216, i64 0
  %221 = add nsw i64 %216, 95
  %222 = icmp slt i64 %703, %221
  %223 = select i1 %222, i64 %703, i64 %221
  %polly.loop_guard254.not = icmp sgt i64 %220, %223
  br i1 %polly.loop_guard, label %polly.loop_header240.us, label %polly.loop_header228.split

polly.loop_header240.us:                          ; preds = %polly.loop_header228, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header228 ]
  %224 = add nuw nsw i64 %polly.indvar243.us, %162
  %polly.access.mul.call1247.us = mul nuw nsw i64 %224, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %97, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar243.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar243.us, %218
  br i1 %exitcond1090.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %220, %polly.loop_exit242.loopexit.us ]
  %225 = add nuw nsw i64 %polly.indvar255.us, %162
  %polly.access.mul.call1259.us = mul nsw i64 %225, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %97, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %223
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_header240.us.1.preheader

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.1.preheader, label %polly.loop_header251.us

polly.loop_header240.us.1.preheader:              ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  br label %polly.loop_header240.us.1

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251

polly.loop_exit267:                               ; preds = %polly.loop_exit282.3, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 12
  %indvars.iv.next1095 = add i64 %indvars.iv1094, -96
  %indvars.iv.next1099 = add i64 %indvars.iv1098, 96
  %indvar.next1617 = add i64 %indvar1616, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header265.preheader:                   ; preds = %polly.loop_header251.3, %polly.loop_header251.us.3, %polly.loop_exit242.loopexit.us.3, %polly.loop_header228.split
  %226 = sub nsw i64 %162, %215
  %227 = icmp sgt i64 %226, 0
  %228 = select i1 %227, i64 %226, i64 0
  %229 = mul nsw i64 %polly.indvar231, -96
  %230 = icmp slt i64 %229, -1104
  %231 = select i1 %230, i64 %229, i64 -1104
  %232 = add nsw i64 %231, 1199
  %polly.loop_guard275.not = icmp sgt i64 %228, %232
  br i1 %polly.loop_guard275.not, label %polly.loop_exit267, label %polly.loop_header272

polly.loop_header251:                             ; preds = %polly.loop_header228.split, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %220, %polly.loop_header228.split ]
  %233 = add nuw nsw i64 %polly.indvar255, %162
  %polly.access.mul.call1259 = mul nsw i64 %233, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %97, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar255
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %223
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_header251.1

polly.loop_header272:                             ; preds = %polly.loop_header265.preheader, %polly.loop_exit282
  %indvar1709 = phi i64 [ %indvar.next1710, %polly.loop_exit282 ], [ 0, %polly.loop_header265.preheader ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit282 ], [ %214, %polly.loop_header265.preheader ]
  %polly.indvar276 = phi i64 [ %polly.indvar_next277, %polly.loop_exit282 ], [ %228, %polly.loop_header265.preheader ]
  %234 = add i64 %168, %indvar1709
  %smin1725 = call i64 @llvm.smin.i64(i64 %234, i64 127)
  %235 = add nsw i64 %smin1725, 1
  %236 = mul nuw nsw i64 %indvar1709, 9600
  %237 = add i64 %175, %236
  %scevgep1711 = getelementptr i8, i8* %call, i64 %237
  %238 = add i64 %176, %236
  %scevgep1712 = getelementptr i8, i8* %call, i64 %238
  %239 = add i64 %178, %indvar1709
  %smin1713 = call i64 @llvm.smin.i64(i64 %239, i64 127)
  %240 = shl nsw i64 %smin1713, 3
  %scevgep1714 = getelementptr i8, i8* %scevgep1712, i64 %240
  %scevgep1716 = getelementptr i8, i8* %scevgep1715, i64 %240
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1100, i64 127)
  %241 = add nsw i64 %polly.indvar276, %216
  %polly.loop_guard2831195 = icmp sgt i64 %241, -1
  br i1 %polly.loop_guard2831195, label %polly.loop_header280.preheader, label %polly.loop_exit282

polly.loop_header280.preheader:                   ; preds = %polly.loop_header272
  %242 = add nuw nsw i64 %polly.indvar276, %215
  %polly.access.Packed_MemRef_call2293 = getelementptr double, double* %Packed_MemRef_call2, i64 %241
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call2293, align 8
  %polly.access.Packed_MemRef_call1301 = getelementptr double, double* %Packed_MemRef_call1, i64 %241
  %_p_scalar_302 = load double, double* %polly.access.Packed_MemRef_call1301, align 8
  %243 = mul i64 %242, 9600
  %min.iters.check1726 = icmp ult i64 %235, 4
  br i1 %min.iters.check1726, label %polly.loop_header280.preheader1741, label %vector.memcheck1707

vector.memcheck1707:                              ; preds = %polly.loop_header280.preheader
  %bound01717 = icmp ult i8* %scevgep1711, %scevgep1716
  %bound11718 = icmp ult i8* %malloccall, %scevgep1714
  %found.conflict1719 = and i1 %bound01717, %bound11718
  br i1 %found.conflict1719, label %polly.loop_header280.preheader1741, label %vector.ph1727

vector.ph1727:                                    ; preds = %vector.memcheck1707
  %n.vec1729 = and i64 %235, -4
  %broadcast.splatinsert1735 = insertelement <4 x double> poison, double %_p_scalar_294, i32 0
  %broadcast.splat1736 = shufflevector <4 x double> %broadcast.splatinsert1735, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1738 = insertelement <4 x double> poison, double %_p_scalar_302, i32 0
  %broadcast.splat1739 = shufflevector <4 x double> %broadcast.splatinsert1738, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1723

vector.body1723:                                  ; preds = %vector.body1723, %vector.ph1727
  %index1730 = phi i64 [ 0, %vector.ph1727 ], [ %index.next1731, %vector.body1723 ]
  %244 = add nuw nsw i64 %index1730, %162
  %245 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1730
  %246 = bitcast double* %245 to <4 x double>*
  %wide.load1734 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !84
  %247 = fmul fast <4 x double> %broadcast.splat1736, %wide.load1734
  %248 = getelementptr double, double* %Packed_MemRef_call2, i64 %index1730
  %249 = bitcast double* %248 to <4 x double>*
  %wide.load1737 = load <4 x double>, <4 x double>* %249, align 8
  %250 = fmul fast <4 x double> %broadcast.splat1739, %wide.load1737
  %251 = shl i64 %244, 3
  %252 = add i64 %251, %243
  %253 = getelementptr i8, i8* %call, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  %wide.load1740 = load <4 x double>, <4 x double>* %254, align 8, !alias.scope !87, !noalias !89
  %255 = fadd fast <4 x double> %250, %247
  %256 = fmul fast <4 x double> %255, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %257 = fadd fast <4 x double> %256, %wide.load1740
  %258 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %257, <4 x double>* %258, align 8, !alias.scope !87, !noalias !89
  %index.next1731 = add i64 %index1730, 4
  %259 = icmp eq i64 %index.next1731, %n.vec1729
  br i1 %259, label %middle.block1721, label %vector.body1723, !llvm.loop !90

middle.block1721:                                 ; preds = %vector.body1723
  %cmp.n1733 = icmp eq i64 %235, %n.vec1729
  br i1 %cmp.n1733, label %polly.loop_exit282, label %polly.loop_header280.preheader1741

polly.loop_header280.preheader1741:               ; preds = %vector.memcheck1707, %polly.loop_header280.preheader, %middle.block1721
  %polly.indvar284.ph = phi i64 [ 0, %vector.memcheck1707 ], [ 0, %polly.loop_header280.preheader ], [ %n.vec1729, %middle.block1721 ]
  br label %polly.loop_header280

polly.loop_exit282:                               ; preds = %polly.loop_header280, %middle.block1721, %polly.loop_header272
  %polly.indvar_next277 = add nuw nsw i64 %polly.indvar276, 1
  %polly.loop_cond278.not.not = icmp slt i64 %polly.indvar276, %232
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 1
  %indvar.next1710 = add i64 %indvar1709, 1
  br i1 %polly.loop_cond278.not.not, label %polly.loop_header272, label %polly.loop_header272.1

polly.loop_header280:                             ; preds = %polly.loop_header280.preheader1741, %polly.loop_header280
  %polly.indvar284 = phi i64 [ %polly.indvar_next285, %polly.loop_header280 ], [ %polly.indvar284.ph, %polly.loop_header280.preheader1741 ]
  %260 = add nuw nsw i64 %polly.indvar284, %162
  %polly.access.Packed_MemRef_call1289 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar284
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call1289, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_294, %_p_scalar_290
  %polly.access.Packed_MemRef_call2297 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar284
  %_p_scalar_298 = load double, double* %polly.access.Packed_MemRef_call2297, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_302, %_p_scalar_298
  %261 = shl i64 %260, 3
  %262 = add i64 %261, %243
  %scevgep303 = getelementptr i8, i8* %call, i64 %262
  %scevgep303304 = bitcast i8* %scevgep303 to double*
  %_p_scalar_305 = load double, double* %scevgep303304, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_305
  store double %p_add42.i118, double* %scevgep303304, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285 = add nuw nsw i64 %polly.indvar284, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar284, %smin
  br i1 %exitcond1102.not, label %polly.loop_exit282, label %polly.loop_header280, !llvm.loop !91

polly.start308:                                   ; preds = %kernel_syr2k.exit
  %malloccall310 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall312 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header396

polly.exiting309:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall310)
  tail call void @free(i8* %malloccall312)
  br label %kernel_syr2k.exit90

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.start308
  %indvar1448 = phi i64 [ %indvar.next1449, %polly.loop_exit404 ], [ 0, %polly.start308 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 1, %polly.start308 ]
  %263 = add i64 %indvar1448, 1
  %264 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %264
  %min.iters.check1450 = icmp ult i64 %263, 4
  br i1 %min.iters.check1450, label %polly.loop_header402.preheader, label %vector.ph1451

vector.ph1451:                                    ; preds = %polly.loop_header396
  %n.vec1453 = and i64 %263, -4
  br label %vector.body1447

vector.body1447:                                  ; preds = %vector.body1447, %vector.ph1451
  %index1454 = phi i64 [ 0, %vector.ph1451 ], [ %index.next1455, %vector.body1447 ]
  %265 = shl nuw nsw i64 %index1454, 3
  %266 = getelementptr i8, i8* %scevgep408, i64 %265
  %267 = bitcast i8* %266 to <4 x double>*
  %wide.load1458 = load <4 x double>, <4 x double>* %267, align 8, !alias.scope !92, !noalias !94
  %268 = fmul fast <4 x double> %wide.load1458, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %269 = bitcast i8* %266 to <4 x double>*
  store <4 x double> %268, <4 x double>* %269, align 8, !alias.scope !92, !noalias !94
  %index.next1455 = add i64 %index1454, 4
  %270 = icmp eq i64 %index.next1455, %n.vec1453
  br i1 %270, label %middle.block1445, label %vector.body1447, !llvm.loop !99

middle.block1445:                                 ; preds = %vector.body1447
  %cmp.n1457 = icmp eq i64 %263, %n.vec1453
  br i1 %cmp.n1457, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header396, %middle.block1445
  %polly.indvar405.ph = phi i64 [ 0, %polly.loop_header396 ], [ %n.vec1453, %middle.block1445 ]
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402, %middle.block1445
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next400, 1200
  %indvar.next1449 = add i64 %indvar1448, 1
  br i1 %exitcond1132.not, label %polly.loop_header412.preheader, label %polly.loop_header396

polly.loop_header412.preheader:                   ; preds = %polly.loop_exit404
  %Packed_MemRef_call1311 = bitcast i8* %malloccall310 to double*
  %Packed_MemRef_call2313 = bitcast i8* %malloccall312 to double*
  %scevgep1491 = getelementptr i8, i8* %malloccall310, i64 19200
  %scevgep1492 = getelementptr i8, i8* %malloccall310, i64 19208
  %scevgep1526 = getelementptr i8, i8* %malloccall310, i64 9600
  %scevgep1527 = getelementptr i8, i8* %malloccall310, i64 9608
  %scevgep1561 = getelementptr i8, i8* %malloccall310, i64 8
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
  %exitcond1131.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1131.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !100

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit420 ], [ 0, %polly.loop_header412.preheader ]
  %272 = shl nsw i64 %polly.indvar415, 2
  %273 = or i64 %272, 1
  %274 = or i64 %272, 2
  %275 = or i64 %272, 3
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next416, 250
  br i1 %exitcond1130.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %276 = shl nuw nsw i64 %polly.indvar421, 7
  %277 = udiv i64 %polly.indvar421, 3
  %278 = add nuw i64 %polly.indvar421, %277
  %279 = mul nuw nsw i64 %278, 96
  %280 = sub i64 %276, %279
  %281 = mul nsw i64 %polly.indvar421, -128
  %282 = add i64 %281, %279
  %283 = shl nuw nsw i64 %polly.indvar421, 10
  %284 = shl nuw nsw i64 %polly.indvar421, 7
  %285 = udiv i64 %polly.indvar421, 3
  %286 = add nuw i64 %polly.indvar421, %285
  %287 = mul nuw nsw i64 %286, 96
  %288 = sub i64 %284, %287
  %289 = or i64 %283, 8
  %290 = mul nsw i64 %polly.indvar421, -128
  %291 = add i64 %290, %287
  %292 = shl nuw nsw i64 %polly.indvar421, 7
  %293 = udiv i64 %polly.indvar421, 3
  %294 = add nuw i64 %polly.indvar421, %293
  %295 = mul nuw nsw i64 %294, 96
  %296 = sub i64 %292, %295
  %297 = mul nsw i64 %polly.indvar421, -128
  %298 = add i64 %297, %295
  %299 = shl nuw nsw i64 %polly.indvar421, 10
  %300 = shl nuw nsw i64 %polly.indvar421, 7
  %301 = udiv i64 %polly.indvar421, 3
  %302 = add nuw i64 %polly.indvar421, %301
  %303 = mul nuw nsw i64 %302, 96
  %304 = sub i64 %300, %303
  %305 = or i64 %299, 8
  %306 = mul nsw i64 %polly.indvar421, -128
  %307 = add i64 %306, %303
  %308 = shl nuw nsw i64 %polly.indvar421, 7
  %309 = udiv i64 %polly.indvar421, 3
  %310 = add nuw i64 %polly.indvar421, %309
  %311 = mul nuw nsw i64 %310, 96
  %312 = sub i64 %308, %311
  %313 = mul nsw i64 %polly.indvar421, -128
  %314 = add i64 %313, %311
  %315 = shl nuw nsw i64 %polly.indvar421, 10
  %316 = shl nuw nsw i64 %polly.indvar421, 7
  %317 = udiv i64 %polly.indvar421, 3
  %318 = add nuw i64 %polly.indvar421, %317
  %319 = mul nuw nsw i64 %318, 96
  %320 = sub i64 %316, %319
  %321 = or i64 %315, 8
  %322 = mul nsw i64 %polly.indvar421, -128
  %323 = add i64 %322, %319
  %324 = shl nuw nsw i64 %polly.indvar421, 7
  %325 = udiv i64 %polly.indvar421, 3
  %326 = add nuw i64 %polly.indvar421, %325
  %327 = mul nuw nsw i64 %326, 96
  %328 = sub i64 %324, %327
  %329 = mul nsw i64 %polly.indvar421, -128
  %330 = add i64 %329, %327
  %331 = udiv i64 %polly.indvar421, 3
  %332 = add nuw i64 %polly.indvar421, %331
  %333 = mul nuw nsw i64 %332, 96
  %334 = sub i64 %indvars.iv1115, %333
  %335 = add i64 %indvars.iv1120, %333
  %336 = mul nsw i64 %polly.indvar421, -128
  %337 = shl nsw i64 %polly.indvar421, 7
  br label %polly.loop_header430

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -128
  %indvars.iv.next1116 = add nuw nsw i64 %indvars.iv1115, 128
  %indvars.iv.next1121 = add nsw i64 %indvars.iv1120, -128
  %exitcond1129.not = icmp eq i64 %polly.indvar_next422, 10
  br i1 %exitcond1129.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header430:                             ; preds = %polly.loop_header430, %polly.loop_header418
  %polly.indvar433 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next434, %polly.loop_header430 ]
  %338 = add nuw nsw i64 %polly.indvar433, %337
  %polly.access.mul.call2437 = mul nuw nsw i64 %338, 1000
  %polly.access.add.call2438 = add nuw nsw i64 %272, %polly.access.mul.call2437
  %polly.access.call2439 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438
  %polly.access.call2439.load = load double, double* %polly.access.call2439, align 8, !alias.scope !96, !noalias !101
  %polly.access.Packed_MemRef_call2313 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.indvar433
  store double %polly.access.call2439.load, double* %polly.access.Packed_MemRef_call2313, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1108
  br i1 %exitcond1110.not, label %polly.loop_header430.1, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit432.3
  %indvar1462 = phi i64 [ %indvar.next1463, %polly.loop_exit482 ], [ 0, %polly.loop_exit432.3 ]
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit482 ], [ %335, %polly.loop_exit432.3 ]
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit482 ], [ %334, %polly.loop_exit432.3 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %332, %polly.loop_exit432.3 ]
  %339 = mul nsw i64 %indvar1462, -96
  %340 = add i64 %280, %339
  %smax1570 = call i64 @llvm.smax.i64(i64 %340, i64 0)
  %341 = mul nuw nsw i64 %indvar1462, 96
  %342 = add i64 %282, %341
  %343 = add i64 %smax1570, %342
  %344 = mul nsw i64 %indvar1462, -96
  %345 = add i64 %288, %344
  %smax1554 = call i64 @llvm.smax.i64(i64 %345, i64 0)
  %346 = mul nuw nsw i64 %indvar1462, 96
  %347 = add i64 %287, %346
  %348 = add i64 %smax1554, %347
  %349 = mul nsw i64 %348, 9600
  %350 = add i64 %283, %349
  %351 = add i64 %289, %349
  %352 = add i64 %291, %346
  %353 = add i64 %smax1554, %352
  %354 = mul nsw i64 %indvar1462, -96
  %355 = add i64 %296, %354
  %smax1536 = call i64 @llvm.smax.i64(i64 %355, i64 0)
  %356 = mul nuw nsw i64 %indvar1462, 96
  %357 = add i64 %298, %356
  %358 = add i64 %smax1536, %357
  %359 = mul nsw i64 %indvar1462, -96
  %360 = add i64 %304, %359
  %smax1519 = call i64 @llvm.smax.i64(i64 %360, i64 0)
  %361 = mul nuw nsw i64 %indvar1462, 96
  %362 = add i64 %303, %361
  %363 = add i64 %smax1519, %362
  %364 = mul nsw i64 %363, 9600
  %365 = add i64 %299, %364
  %366 = add i64 %305, %364
  %367 = add i64 %307, %361
  %368 = add i64 %smax1519, %367
  %369 = mul nsw i64 %indvar1462, -96
  %370 = add i64 %312, %369
  %smax1501 = call i64 @llvm.smax.i64(i64 %370, i64 0)
  %371 = mul nuw nsw i64 %indvar1462, 96
  %372 = add i64 %314, %371
  %373 = add i64 %smax1501, %372
  %374 = mul nsw i64 %indvar1462, -96
  %375 = add i64 %320, %374
  %smax1484 = call i64 @llvm.smax.i64(i64 %375, i64 0)
  %376 = mul nuw nsw i64 %indvar1462, 96
  %377 = add i64 %319, %376
  %378 = add i64 %smax1484, %377
  %379 = mul nsw i64 %378, 9600
  %380 = add i64 %315, %379
  %381 = add i64 %321, %379
  %382 = add i64 %323, %376
  %383 = add i64 %smax1484, %382
  %384 = mul nsw i64 %indvar1462, -96
  %385 = add i64 %328, %384
  %smax1464 = call i64 @llvm.smax.i64(i64 %385, i64 0)
  %386 = mul nuw nsw i64 %indvar1462, 96
  %387 = add i64 %330, %386
  %388 = add i64 %smax1464, %387
  %smax1119 = call i64 @llvm.smax.i64(i64 %indvars.iv1117, i64 0)
  %389 = add i64 %smax1119, %indvars.iv1122
  %390 = mul nuw nsw i64 %polly.indvar444, 96
  %391 = add nsw i64 %390, %336
  %392 = add nsw i64 %391, -1
  %.inv942 = icmp sgt i64 %391, 127
  %393 = select i1 %.inv942, i64 127, i64 %392
  %polly.loop_guard457 = icmp sgt i64 %393, -1
  %394 = icmp sgt i64 %391, 0
  %395 = select i1 %394, i64 %391, i64 0
  %396 = add nsw i64 %391, 95
  %397 = icmp slt i64 %801, %396
  %398 = select i1 %397, i64 %801, i64 %396
  %polly.loop_guard469.not = icmp sgt i64 %395, %398
  br i1 %polly.loop_guard457, label %polly.loop_header454.us, label %polly.loop_header441.split

polly.loop_header454.us:                          ; preds = %polly.loop_header441, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header441 ]
  %399 = add nuw nsw i64 %polly.indvar458.us, %337
  %polly.access.mul.call1462.us = mul nuw nsw i64 %399, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %272, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar458.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar458.us, %393
  br i1 %exitcond1113.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %395, %polly.loop_exit456.loopexit.us ]
  %400 = add nuw nsw i64 %polly.indvar470.us, %337
  %polly.access.mul.call1474.us = mul nsw i64 %400, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %272, %polly.access.mul.call1474.us
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

polly.loop_exit482:                               ; preds = %polly.loop_exit497.3, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp ult i64 %polly.indvar444, 12
  %indvars.iv.next1118 = add i64 %indvars.iv1117, -96
  %indvars.iv.next1123 = add i64 %indvars.iv1122, 96
  %indvar.next1463 = add i64 %indvar1462, 1
  br i1 %polly.loop_cond446, label %polly.loop_header441, label %polly.loop_exit443

polly.loop_header480.preheader:                   ; preds = %polly.loop_header466.3, %polly.loop_header466.us.3, %polly.loop_exit456.loopexit.us.3, %polly.loop_header441.split
  %401 = sub nsw i64 %337, %390
  %402 = icmp sgt i64 %401, 0
  %403 = select i1 %402, i64 %401, i64 0
  %404 = mul nsw i64 %polly.indvar444, -96
  %405 = icmp slt i64 %404, -1104
  %406 = select i1 %405, i64 %404, i64 -1104
  %407 = add nsw i64 %406, 1199
  %polly.loop_guard490.not = icmp sgt i64 %403, %407
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header487

polly.loop_header466:                             ; preds = %polly.loop_header441.split, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %395, %polly.loop_header441.split ]
  %408 = add nuw nsw i64 %polly.indvar470, %337
  %polly.access.mul.call1474 = mul nsw i64 %408, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %272, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar470
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %398
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_header466.1

polly.loop_header487:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit497
  %indvar1555 = phi i64 [ %indvar.next1556, %polly.loop_exit497 ], [ 0, %polly.loop_header480.preheader ]
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit497 ], [ %389, %polly.loop_header480.preheader ]
  %polly.indvar491 = phi i64 [ %polly.indvar_next492, %polly.loop_exit497 ], [ %403, %polly.loop_header480.preheader ]
  %409 = add i64 %343, %indvar1555
  %smin1571 = call i64 @llvm.smin.i64(i64 %409, i64 127)
  %410 = add nsw i64 %smin1571, 1
  %411 = mul nuw nsw i64 %indvar1555, 9600
  %412 = add i64 %350, %411
  %scevgep1557 = getelementptr i8, i8* %call, i64 %412
  %413 = add i64 %351, %411
  %scevgep1558 = getelementptr i8, i8* %call, i64 %413
  %414 = add i64 %353, %indvar1555
  %smin1559 = call i64 @llvm.smin.i64(i64 %414, i64 127)
  %415 = shl nsw i64 %smin1559, 3
  %scevgep1560 = getelementptr i8, i8* %scevgep1558, i64 %415
  %scevgep1562 = getelementptr i8, i8* %scevgep1561, i64 %415
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 127)
  %416 = add nsw i64 %polly.indvar491, %391
  %polly.loop_guard4981199 = icmp sgt i64 %416, -1
  br i1 %polly.loop_guard4981199, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %417 = add nuw nsw i64 %polly.indvar491, %390
  %polly.access.Packed_MemRef_call2313508 = getelementptr double, double* %Packed_MemRef_call2313, i64 %416
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2313508, align 8
  %polly.access.Packed_MemRef_call1311516 = getelementptr double, double* %Packed_MemRef_call1311, i64 %416
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1311516, align 8
  %418 = mul i64 %417, 9600
  %min.iters.check1572 = icmp ult i64 %410, 4
  br i1 %min.iters.check1572, label %polly.loop_header495.preheader1744, label %vector.memcheck1553

vector.memcheck1553:                              ; preds = %polly.loop_header495.preheader
  %bound01563 = icmp ult i8* %scevgep1557, %scevgep1562
  %bound11564 = icmp ult i8* %malloccall310, %scevgep1560
  %found.conflict1565 = and i1 %bound01563, %bound11564
  br i1 %found.conflict1565, label %polly.loop_header495.preheader1744, label %vector.ph1573

vector.ph1573:                                    ; preds = %vector.memcheck1553
  %n.vec1575 = and i64 %410, -4
  %broadcast.splatinsert1581 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1582 = shufflevector <4 x double> %broadcast.splatinsert1581, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1584 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1585 = shufflevector <4 x double> %broadcast.splatinsert1584, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1569

vector.body1569:                                  ; preds = %vector.body1569, %vector.ph1573
  %index1576 = phi i64 [ 0, %vector.ph1573 ], [ %index.next1577, %vector.body1569 ]
  %419 = add nuw nsw i64 %index1576, %337
  %420 = getelementptr double, double* %Packed_MemRef_call1311, i64 %index1576
  %421 = bitcast double* %420 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %421, align 8, !alias.scope !103
  %422 = fmul fast <4 x double> %broadcast.splat1582, %wide.load1580
  %423 = getelementptr double, double* %Packed_MemRef_call2313, i64 %index1576
  %424 = bitcast double* %423 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %424, align 8
  %425 = fmul fast <4 x double> %broadcast.splat1585, %wide.load1583
  %426 = shl i64 %419, 3
  %427 = add i64 %426, %418
  %428 = getelementptr i8, i8* %call, i64 %427
  %429 = bitcast i8* %428 to <4 x double>*
  %wide.load1586 = load <4 x double>, <4 x double>* %429, align 8, !alias.scope !106, !noalias !108
  %430 = fadd fast <4 x double> %425, %422
  %431 = fmul fast <4 x double> %430, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %432 = fadd fast <4 x double> %431, %wide.load1586
  %433 = bitcast i8* %428 to <4 x double>*
  store <4 x double> %432, <4 x double>* %433, align 8, !alias.scope !106, !noalias !108
  %index.next1577 = add i64 %index1576, 4
  %434 = icmp eq i64 %index.next1577, %n.vec1575
  br i1 %434, label %middle.block1567, label %vector.body1569, !llvm.loop !109

middle.block1567:                                 ; preds = %vector.body1569
  %cmp.n1579 = icmp eq i64 %410, %n.vec1575
  br i1 %cmp.n1579, label %polly.loop_exit497, label %polly.loop_header495.preheader1744

polly.loop_header495.preheader1744:               ; preds = %vector.memcheck1553, %polly.loop_header495.preheader, %middle.block1567
  %polly.indvar499.ph = phi i64 [ 0, %vector.memcheck1553 ], [ 0, %polly.loop_header495.preheader ], [ %n.vec1575, %middle.block1567 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1567, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %407
  %indvars.iv.next1125 = add i64 %indvars.iv1124, 1
  %indvar.next1556 = add i64 %indvar1555, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_header487.1

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1744, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1744 ]
  %435 = add nuw nsw i64 %polly.indvar499, %337
  %polly.access.Packed_MemRef_call1311504 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.indvar499
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1311504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2313512 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.indvar499
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2313512, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_517, %_p_scalar_513
  %436 = shl i64 %435, 3
  %437 = add i64 %436, %418
  %scevgep518 = getelementptr i8, i8* %call, i64 %437
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_520
  store double %p_add42.i79, double* %scevgep518519, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar499, %smin1126
  br i1 %exitcond1127.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !110

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
  %min.iters.check1296 = icmp ult i64 %438, 4
  br i1 %min.iters.check1296, label %polly.loop_header617.preheader, label %vector.ph1297

vector.ph1297:                                    ; preds = %polly.loop_header611
  %n.vec1299 = and i64 %438, -4
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1297
  %index1300 = phi i64 [ 0, %vector.ph1297 ], [ %index.next1301, %vector.body1295 ]
  %440 = shl nuw nsw i64 %index1300, 3
  %441 = getelementptr i8, i8* %scevgep623, i64 %440
  %442 = bitcast i8* %441 to <4 x double>*
  %wide.load1304 = load <4 x double>, <4 x double>* %442, align 8, !alias.scope !111, !noalias !113
  %443 = fmul fast <4 x double> %wide.load1304, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %444 = bitcast i8* %441 to <4 x double>*
  store <4 x double> %443, <4 x double>* %444, align 8, !alias.scope !111, !noalias !113
  %index.next1301 = add i64 %index1300, 4
  %445 = icmp eq i64 %index.next1301, %n.vec1299
  br i1 %445, label %middle.block1293, label %vector.body1295, !llvm.loop !118

middle.block1293:                                 ; preds = %vector.body1295
  %cmp.n1303 = icmp eq i64 %438, %n.vec1299
  br i1 %cmp.n1303, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1293
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1299, %middle.block1293 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1293
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1157.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  %scevgep1337 = getelementptr i8, i8* %malloccall525, i64 19200
  %scevgep1338 = getelementptr i8, i8* %malloccall525, i64 19208
  %scevgep1372 = getelementptr i8, i8* %malloccall525, i64 9600
  %scevgep1373 = getelementptr i8, i8* %malloccall525, i64 9608
  %scevgep1407 = getelementptr i8, i8* %malloccall525, i64 8
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
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %451 = shl nuw nsw i64 %polly.indvar636, 7
  %452 = udiv i64 %polly.indvar636, 3
  %453 = add nuw i64 %polly.indvar636, %452
  %454 = mul nuw nsw i64 %453, 96
  %455 = sub i64 %451, %454
  %456 = mul nsw i64 %polly.indvar636, -128
  %457 = add i64 %456, %454
  %458 = shl nuw nsw i64 %polly.indvar636, 10
  %459 = shl nuw nsw i64 %polly.indvar636, 7
  %460 = udiv i64 %polly.indvar636, 3
  %461 = add nuw i64 %polly.indvar636, %460
  %462 = mul nuw nsw i64 %461, 96
  %463 = sub i64 %459, %462
  %464 = or i64 %458, 8
  %465 = mul nsw i64 %polly.indvar636, -128
  %466 = add i64 %465, %462
  %467 = shl nuw nsw i64 %polly.indvar636, 7
  %468 = udiv i64 %polly.indvar636, 3
  %469 = add nuw i64 %polly.indvar636, %468
  %470 = mul nuw nsw i64 %469, 96
  %471 = sub i64 %467, %470
  %472 = mul nsw i64 %polly.indvar636, -128
  %473 = add i64 %472, %470
  %474 = shl nuw nsw i64 %polly.indvar636, 10
  %475 = shl nuw nsw i64 %polly.indvar636, 7
  %476 = udiv i64 %polly.indvar636, 3
  %477 = add nuw i64 %polly.indvar636, %476
  %478 = mul nuw nsw i64 %477, 96
  %479 = sub i64 %475, %478
  %480 = or i64 %474, 8
  %481 = mul nsw i64 %polly.indvar636, -128
  %482 = add i64 %481, %478
  %483 = shl nuw nsw i64 %polly.indvar636, 7
  %484 = udiv i64 %polly.indvar636, 3
  %485 = add nuw i64 %polly.indvar636, %484
  %486 = mul nuw nsw i64 %485, 96
  %487 = sub i64 %483, %486
  %488 = mul nsw i64 %polly.indvar636, -128
  %489 = add i64 %488, %486
  %490 = shl nuw nsw i64 %polly.indvar636, 10
  %491 = shl nuw nsw i64 %polly.indvar636, 7
  %492 = udiv i64 %polly.indvar636, 3
  %493 = add nuw i64 %polly.indvar636, %492
  %494 = mul nuw nsw i64 %493, 96
  %495 = sub i64 %491, %494
  %496 = or i64 %490, 8
  %497 = mul nsw i64 %polly.indvar636, -128
  %498 = add i64 %497, %494
  %499 = shl nuw nsw i64 %polly.indvar636, 7
  %500 = udiv i64 %polly.indvar636, 3
  %501 = add nuw i64 %polly.indvar636, %500
  %502 = mul nuw nsw i64 %501, 96
  %503 = sub i64 %499, %502
  %504 = mul nsw i64 %polly.indvar636, -128
  %505 = add i64 %504, %502
  %506 = udiv i64 %polly.indvar636, 3
  %507 = add nuw i64 %polly.indvar636, %506
  %508 = mul nuw nsw i64 %507, 96
  %509 = sub i64 %indvars.iv1140, %508
  %510 = add i64 %indvars.iv1145, %508
  %511 = mul nsw i64 %polly.indvar636, -128
  %512 = shl nsw i64 %polly.indvar636, 7
  br label %polly.loop_header645

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -128
  %indvars.iv.next1141 = add nuw nsw i64 %indvars.iv1140, 128
  %indvars.iv.next1146 = add nsw i64 %indvars.iv1145, -128
  %exitcond1154.not = icmp eq i64 %polly.indvar_next637, 10
  br i1 %exitcond1154.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header633
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %513 = add nuw nsw i64 %polly.indvar648, %512
  %polly.access.mul.call2652 = mul nuw nsw i64 %513, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %447, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !115, !noalias !120
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar648
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1133
  br i1 %exitcond1135.not, label %polly.loop_header645.1, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit647.3
  %indvar1308 = phi i64 [ %indvar.next1309, %polly.loop_exit697 ], [ 0, %polly.loop_exit647.3 ]
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit697 ], [ %510, %polly.loop_exit647.3 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit697 ], [ %509, %polly.loop_exit647.3 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %507, %polly.loop_exit647.3 ]
  %514 = mul nsw i64 %indvar1308, -96
  %515 = add i64 %455, %514
  %smax1416 = call i64 @llvm.smax.i64(i64 %515, i64 0)
  %516 = mul nuw nsw i64 %indvar1308, 96
  %517 = add i64 %457, %516
  %518 = add i64 %smax1416, %517
  %519 = mul nsw i64 %indvar1308, -96
  %520 = add i64 %463, %519
  %smax1400 = call i64 @llvm.smax.i64(i64 %520, i64 0)
  %521 = mul nuw nsw i64 %indvar1308, 96
  %522 = add i64 %462, %521
  %523 = add i64 %smax1400, %522
  %524 = mul nsw i64 %523, 9600
  %525 = add i64 %458, %524
  %526 = add i64 %464, %524
  %527 = add i64 %466, %521
  %528 = add i64 %smax1400, %527
  %529 = mul nsw i64 %indvar1308, -96
  %530 = add i64 %471, %529
  %smax1382 = call i64 @llvm.smax.i64(i64 %530, i64 0)
  %531 = mul nuw nsw i64 %indvar1308, 96
  %532 = add i64 %473, %531
  %533 = add i64 %smax1382, %532
  %534 = mul nsw i64 %indvar1308, -96
  %535 = add i64 %479, %534
  %smax1365 = call i64 @llvm.smax.i64(i64 %535, i64 0)
  %536 = mul nuw nsw i64 %indvar1308, 96
  %537 = add i64 %478, %536
  %538 = add i64 %smax1365, %537
  %539 = mul nsw i64 %538, 9600
  %540 = add i64 %474, %539
  %541 = add i64 %480, %539
  %542 = add i64 %482, %536
  %543 = add i64 %smax1365, %542
  %544 = mul nsw i64 %indvar1308, -96
  %545 = add i64 %487, %544
  %smax1347 = call i64 @llvm.smax.i64(i64 %545, i64 0)
  %546 = mul nuw nsw i64 %indvar1308, 96
  %547 = add i64 %489, %546
  %548 = add i64 %smax1347, %547
  %549 = mul nsw i64 %indvar1308, -96
  %550 = add i64 %495, %549
  %smax1330 = call i64 @llvm.smax.i64(i64 %550, i64 0)
  %551 = mul nuw nsw i64 %indvar1308, 96
  %552 = add i64 %494, %551
  %553 = add i64 %smax1330, %552
  %554 = mul nsw i64 %553, 9600
  %555 = add i64 %490, %554
  %556 = add i64 %496, %554
  %557 = add i64 %498, %551
  %558 = add i64 %smax1330, %557
  %559 = mul nsw i64 %indvar1308, -96
  %560 = add i64 %503, %559
  %smax1310 = call i64 @llvm.smax.i64(i64 %560, i64 0)
  %561 = mul nuw nsw i64 %indvar1308, 96
  %562 = add i64 %505, %561
  %563 = add i64 %smax1310, %562
  %smax1144 = call i64 @llvm.smax.i64(i64 %indvars.iv1142, i64 0)
  %564 = add i64 %smax1144, %indvars.iv1147
  %565 = mul nuw nsw i64 %polly.indvar659, 96
  %566 = add nsw i64 %565, %511
  %567 = add nsw i64 %566, -1
  %.inv943 = icmp sgt i64 %566, 127
  %568 = select i1 %.inv943, i64 127, i64 %567
  %polly.loop_guard672 = icmp sgt i64 %568, -1
  %569 = icmp sgt i64 %566, 0
  %570 = select i1 %569, i64 %566, i64 0
  %571 = add nsw i64 %566, 95
  %572 = icmp slt i64 %899, %571
  %573 = select i1 %572, i64 %899, i64 %571
  %polly.loop_guard684.not = icmp sgt i64 %570, %573
  br i1 %polly.loop_guard672, label %polly.loop_header669.us, label %polly.loop_header656.split

polly.loop_header669.us:                          ; preds = %polly.loop_header656, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header656 ]
  %574 = add nuw nsw i64 %polly.indvar673.us, %512
  %polly.access.mul.call1677.us = mul nuw nsw i64 %574, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %447, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar673.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar673.us, %568
  br i1 %exitcond1138.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %570, %polly.loop_exit671.loopexit.us ]
  %575 = add nuw nsw i64 %polly.indvar685.us, %512
  %polly.access.mul.call1689.us = mul nsw i64 %575, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %447, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar685.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %573
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_header669.us.1.preheader

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.1.preheader, label %polly.loop_header681.us

polly.loop_header669.us.1.preheader:              ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  br label %polly.loop_header669.us.1

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header681

polly.loop_exit697:                               ; preds = %polly.loop_exit712.3, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp ult i64 %polly.indvar659, 12
  %indvars.iv.next1143 = add i64 %indvars.iv1142, -96
  %indvars.iv.next1148 = add i64 %indvars.iv1147, 96
  %indvar.next1309 = add i64 %indvar1308, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header695.preheader:                   ; preds = %polly.loop_header681.3, %polly.loop_header681.us.3, %polly.loop_exit671.loopexit.us.3, %polly.loop_header656.split
  %576 = sub nsw i64 %512, %565
  %577 = icmp sgt i64 %576, 0
  %578 = select i1 %577, i64 %576, i64 0
  %579 = mul nsw i64 %polly.indvar659, -96
  %580 = icmp slt i64 %579, -1104
  %581 = select i1 %580, i64 %579, i64 -1104
  %582 = add nsw i64 %581, 1199
  %polly.loop_guard705.not = icmp sgt i64 %578, %582
  br i1 %polly.loop_guard705.not, label %polly.loop_exit697, label %polly.loop_header702

polly.loop_header681:                             ; preds = %polly.loop_header656.split, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %570, %polly.loop_header656.split ]
  %583 = add nuw nsw i64 %polly.indvar685, %512
  %polly.access.mul.call1689 = mul nsw i64 %583, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %447, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar685
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %573
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_header681.1

polly.loop_header702:                             ; preds = %polly.loop_header695.preheader, %polly.loop_exit712
  %indvar1401 = phi i64 [ %indvar.next1402, %polly.loop_exit712 ], [ 0, %polly.loop_header695.preheader ]
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit712 ], [ %564, %polly.loop_header695.preheader ]
  %polly.indvar706 = phi i64 [ %polly.indvar_next707, %polly.loop_exit712 ], [ %578, %polly.loop_header695.preheader ]
  %584 = add i64 %518, %indvar1401
  %smin1417 = call i64 @llvm.smin.i64(i64 %584, i64 127)
  %585 = add nsw i64 %smin1417, 1
  %586 = mul nuw nsw i64 %indvar1401, 9600
  %587 = add i64 %525, %586
  %scevgep1403 = getelementptr i8, i8* %call, i64 %587
  %588 = add i64 %526, %586
  %scevgep1404 = getelementptr i8, i8* %call, i64 %588
  %589 = add i64 %528, %indvar1401
  %smin1405 = call i64 @llvm.smin.i64(i64 %589, i64 127)
  %590 = shl nsw i64 %smin1405, 3
  %scevgep1406 = getelementptr i8, i8* %scevgep1404, i64 %590
  %scevgep1408 = getelementptr i8, i8* %scevgep1407, i64 %590
  %smin1151 = call i64 @llvm.smin.i64(i64 %indvars.iv1149, i64 127)
  %591 = add nsw i64 %polly.indvar706, %566
  %polly.loop_guard7131203 = icmp sgt i64 %591, -1
  br i1 %polly.loop_guard7131203, label %polly.loop_header710.preheader, label %polly.loop_exit712

polly.loop_header710.preheader:                   ; preds = %polly.loop_header702
  %592 = add nuw nsw i64 %polly.indvar706, %565
  %polly.access.Packed_MemRef_call2528723 = getelementptr double, double* %Packed_MemRef_call2528, i64 %591
  %_p_scalar_724 = load double, double* %polly.access.Packed_MemRef_call2528723, align 8
  %polly.access.Packed_MemRef_call1526731 = getelementptr double, double* %Packed_MemRef_call1526, i64 %591
  %_p_scalar_732 = load double, double* %polly.access.Packed_MemRef_call1526731, align 8
  %593 = mul i64 %592, 9600
  %min.iters.check1418 = icmp ult i64 %585, 4
  br i1 %min.iters.check1418, label %polly.loop_header710.preheader1747, label %vector.memcheck1399

vector.memcheck1399:                              ; preds = %polly.loop_header710.preheader
  %bound01409 = icmp ult i8* %scevgep1403, %scevgep1408
  %bound11410 = icmp ult i8* %malloccall525, %scevgep1406
  %found.conflict1411 = and i1 %bound01409, %bound11410
  br i1 %found.conflict1411, label %polly.loop_header710.preheader1747, label %vector.ph1419

vector.ph1419:                                    ; preds = %vector.memcheck1399
  %n.vec1421 = and i64 %585, -4
  %broadcast.splatinsert1427 = insertelement <4 x double> poison, double %_p_scalar_724, i32 0
  %broadcast.splat1428 = shufflevector <4 x double> %broadcast.splatinsert1427, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1430 = insertelement <4 x double> poison, double %_p_scalar_732, i32 0
  %broadcast.splat1431 = shufflevector <4 x double> %broadcast.splatinsert1430, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.body1415, %vector.ph1419
  %index1422 = phi i64 [ 0, %vector.ph1419 ], [ %index.next1423, %vector.body1415 ]
  %594 = add nuw nsw i64 %index1422, %512
  %595 = getelementptr double, double* %Packed_MemRef_call1526, i64 %index1422
  %596 = bitcast double* %595 to <4 x double>*
  %wide.load1426 = load <4 x double>, <4 x double>* %596, align 8, !alias.scope !122
  %597 = fmul fast <4 x double> %broadcast.splat1428, %wide.load1426
  %598 = getelementptr double, double* %Packed_MemRef_call2528, i64 %index1422
  %599 = bitcast double* %598 to <4 x double>*
  %wide.load1429 = load <4 x double>, <4 x double>* %599, align 8
  %600 = fmul fast <4 x double> %broadcast.splat1431, %wide.load1429
  %601 = shl i64 %594, 3
  %602 = add i64 %601, %593
  %603 = getelementptr i8, i8* %call, i64 %602
  %604 = bitcast i8* %603 to <4 x double>*
  %wide.load1432 = load <4 x double>, <4 x double>* %604, align 8, !alias.scope !125, !noalias !127
  %605 = fadd fast <4 x double> %600, %597
  %606 = fmul fast <4 x double> %605, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %607 = fadd fast <4 x double> %606, %wide.load1432
  %608 = bitcast i8* %603 to <4 x double>*
  store <4 x double> %607, <4 x double>* %608, align 8, !alias.scope !125, !noalias !127
  %index.next1423 = add i64 %index1422, 4
  %609 = icmp eq i64 %index.next1423, %n.vec1421
  br i1 %609, label %middle.block1413, label %vector.body1415, !llvm.loop !128

middle.block1413:                                 ; preds = %vector.body1415
  %cmp.n1425 = icmp eq i64 %585, %n.vec1421
  br i1 %cmp.n1425, label %polly.loop_exit712, label %polly.loop_header710.preheader1747

polly.loop_header710.preheader1747:               ; preds = %vector.memcheck1399, %polly.loop_header710.preheader, %middle.block1413
  %polly.indvar714.ph = phi i64 [ 0, %vector.memcheck1399 ], [ 0, %polly.loop_header710.preheader ], [ %n.vec1421, %middle.block1413 ]
  br label %polly.loop_header710

polly.loop_exit712:                               ; preds = %polly.loop_header710, %middle.block1413, %polly.loop_header702
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %polly.loop_cond708.not.not = icmp slt i64 %polly.indvar706, %582
  %indvars.iv.next1150 = add i64 %indvars.iv1149, 1
  %indvar.next1402 = add i64 %indvar1401, 1
  br i1 %polly.loop_cond708.not.not, label %polly.loop_header702, label %polly.loop_header702.1

polly.loop_header710:                             ; preds = %polly.loop_header710.preheader1747, %polly.loop_header710
  %polly.indvar714 = phi i64 [ %polly.indvar_next715, %polly.loop_header710 ], [ %polly.indvar714.ph, %polly.loop_header710.preheader1747 ]
  %610 = add nuw nsw i64 %polly.indvar714, %512
  %polly.access.Packed_MemRef_call1526719 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar714
  %_p_scalar_720 = load double, double* %polly.access.Packed_MemRef_call1526719, align 8
  %p_mul27.i = fmul fast double %_p_scalar_724, %_p_scalar_720
  %polly.access.Packed_MemRef_call2528727 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar714
  %_p_scalar_728 = load double, double* %polly.access.Packed_MemRef_call2528727, align 8
  %p_mul37.i = fmul fast double %_p_scalar_732, %_p_scalar_728
  %611 = shl i64 %610, 3
  %612 = add i64 %611, %593
  %scevgep733 = getelementptr i8, i8* %call, i64 %612
  %scevgep733734 = bitcast i8* %scevgep733 to double*
  %_p_scalar_735 = load double, double* %scevgep733734, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_735
  store double %p_add42.i, double* %scevgep733734, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715 = add nuw nsw i64 %polly.indvar714, 1
  %exitcond1152.not = icmp eq i64 %polly.indvar714, %smin1151
  br i1 %exitcond1152.not, label %polly.loop_exit712, label %polly.loop_header710, !llvm.loop !129

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
  %smin1234 = call i64 @llvm.smin.i64(i64 %615, i64 -1168)
  %616 = add nsw i64 %smin1234, 1200
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
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1235

vector.ph1235:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1242 = insertelement <4 x i64> poison, i64 %617, i32 0
  %broadcast.splat1243 = shufflevector <4 x i64> %broadcast.splatinsert1242, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1244 = insertelement <4 x i32> poison, i32 %620, i32 0
  %broadcast.splat1245 = shufflevector <4 x i32> %broadcast.splatinsert1244, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1235
  %index1236 = phi i64 [ 0, %vector.ph1235 ], [ %index.next1237, %vector.body1233 ]
  %vec.ind1240 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1235 ], [ %vec.ind.next1241, %vector.body1233 ]
  %622 = add nuw nsw <4 x i64> %vec.ind1240, %broadcast.splat1243
  %623 = trunc <4 x i64> %622 to <4 x i32>
  %624 = mul <4 x i32> %broadcast.splat1245, %623
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
  %index.next1237 = add i64 %index1236, 4
  %vec.ind.next1241 = add <4 x i64> %vec.ind1240, <i64 4, i64 4, i64 4, i64 4>
  %634 = icmp eq i64 %index.next1237, %616
  br i1 %634, label %polly.loop_exit882, label %vector.body1233, !llvm.loop !135

polly.loop_exit882:                               ; preds = %vector.body1233, %polly.loop_header880
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
  %smin1249 = call i64 @llvm.smin.i64(i64 %644, i64 -968)
  %645 = add nsw i64 %smin1249, 1000
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
  %min.iters.check1250 = icmp eq i64 %645, 0
  br i1 %min.iters.check1250, label %polly.loop_header907, label %vector.ph1251

vector.ph1251:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1260 = insertelement <4 x i64> poison, i64 %646, i32 0
  %broadcast.splat1261 = shufflevector <4 x i64> %broadcast.splatinsert1260, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %649, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1255, %vector.body1248 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1251 ], [ %vec.ind.next1259, %vector.body1248 ]
  %651 = add nuw nsw <4 x i64> %vec.ind1258, %broadcast.splat1261
  %652 = trunc <4 x i64> %651 to <4 x i32>
  %653 = mul <4 x i32> %broadcast.splat1263, %652
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
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %663 = icmp eq i64 %index.next1255, %645
  br i1 %663, label %polly.loop_exit909, label %vector.body1248, !llvm.loop !138

polly.loop_exit909:                               ; preds = %vector.body1248, %polly.loop_header907
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
  %smin1267 = call i64 @llvm.smin.i64(i64 %673, i64 -968)
  %674 = add nsw i64 %smin1267, 1000
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
  %min.iters.check1268 = icmp eq i64 %674, 0
  br i1 %min.iters.check1268, label %polly.loop_header933, label %vector.ph1269

vector.ph1269:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1278 = insertelement <4 x i64> poison, i64 %675, i32 0
  %broadcast.splat1279 = shufflevector <4 x i64> %broadcast.splatinsert1278, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1280 = insertelement <4 x i32> poison, i32 %678, i32 0
  %broadcast.splat1281 = shufflevector <4 x i32> %broadcast.splatinsert1280, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %vector.ph1269
  %index1272 = phi i64 [ 0, %vector.ph1269 ], [ %index.next1273, %vector.body1266 ]
  %vec.ind1276 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1269 ], [ %vec.ind.next1277, %vector.body1266 ]
  %680 = add nuw nsw <4 x i64> %vec.ind1276, %broadcast.splat1279
  %681 = trunc <4 x i64> %680 to <4 x i32>
  %682 = mul <4 x i32> %broadcast.splat1281, %681
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
  %index.next1273 = add i64 %index1272, 4
  %vec.ind.next1277 = add <4 x i64> %vec.ind1276, <i64 4, i64 4, i64 4, i64 4>
  %692 = icmp eq i64 %index.next1273, %674
  br i1 %692, label %polly.loop_exit935, label %vector.body1266, !llvm.loop !141

polly.loop_exit935:                               ; preds = %vector.body1266, %polly.loop_header933
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
  %700 = add nuw nsw i64 %polly.indvar221.1, %162
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
  %701 = add nuw nsw i64 %polly.indvar221.2, %162
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
  %702 = add nuw nsw i64 %polly.indvar221.3, %162
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
  %703 = add nsw i64 %161, 1199
  br label %polly.loop_header228

polly.loop_header251.1:                           ; preds = %polly.loop_header251, %polly.loop_header251.1
  %polly.indvar255.1 = phi i64 [ %polly.indvar_next256.1, %polly.loop_header251.1 ], [ %220, %polly.loop_header251 ]
  %704 = add nuw nsw i64 %polly.indvar255.1, %162
  %polly.access.mul.call1259.1 = mul nsw i64 %704, 1000
  %polly.access.add.call1260.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.1 = add nuw nsw i64 %polly.indvar255.1, 1200
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.indvar_next256.1 = add nuw nsw i64 %polly.indvar255.1, 1
  %polly.loop_cond257.not.not.1 = icmp slt i64 %polly.indvar255.1, %223
  br i1 %polly.loop_cond257.not.not.1, label %polly.loop_header251.1, label %polly.loop_header251.2

polly.loop_header251.2:                           ; preds = %polly.loop_header251.1, %polly.loop_header251.2
  %polly.indvar255.2 = phi i64 [ %polly.indvar_next256.2, %polly.loop_header251.2 ], [ %220, %polly.loop_header251.1 ]
  %705 = add nuw nsw i64 %polly.indvar255.2, %162
  %polly.access.mul.call1259.2 = mul nsw i64 %705, 1000
  %polly.access.add.call1260.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.2
  %polly.access.call1261.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.2
  %polly.access.call1261.load.2 = load double, double* %polly.access.call1261.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.2 = add nuw nsw i64 %polly.indvar255.2, 2400
  %polly.access.Packed_MemRef_call1264.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.2
  store double %polly.access.call1261.load.2, double* %polly.access.Packed_MemRef_call1264.2, align 8
  %polly.indvar_next256.2 = add nuw nsw i64 %polly.indvar255.2, 1
  %polly.loop_cond257.not.not.2 = icmp slt i64 %polly.indvar255.2, %223
  br i1 %polly.loop_cond257.not.not.2, label %polly.loop_header251.2, label %polly.loop_header251.3

polly.loop_header251.3:                           ; preds = %polly.loop_header251.2, %polly.loop_header251.3
  %polly.indvar255.3 = phi i64 [ %polly.indvar_next256.3, %polly.loop_header251.3 ], [ %220, %polly.loop_header251.2 ]
  %706 = add nuw nsw i64 %polly.indvar255.3, %162
  %polly.access.mul.call1259.3 = mul nsw i64 %706, 1000
  %polly.access.add.call1260.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.3
  %polly.access.call1261.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.3
  %polly.access.call1261.load.3 = load double, double* %polly.access.call1261.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.3 = add nuw nsw i64 %polly.indvar255.3, 3600
  %polly.access.Packed_MemRef_call1264.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.3
  store double %polly.access.call1261.load.3, double* %polly.access.Packed_MemRef_call1264.3, align 8
  %polly.indvar_next256.3 = add nuw nsw i64 %polly.indvar255.3, 1
  %polly.loop_cond257.not.not.3 = icmp slt i64 %polly.indvar255.3, %223
  br i1 %polly.loop_cond257.not.not.3, label %polly.loop_header251.3, label %polly.loop_header265.preheader

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1.preheader, %polly.loop_header240.us.1
  %polly.indvar243.us.1 = phi i64 [ %polly.indvar_next244.us.1, %polly.loop_header240.us.1 ], [ 0, %polly.loop_header240.us.1.preheader ]
  %707 = add nuw nsw i64 %polly.indvar243.us.1, %162
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %707, 1000
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next244.us.1 = add nuw i64 %polly.indvar243.us.1, 1
  %exitcond1090.1.not = icmp eq i64 %polly.indvar243.us.1, %218
  br i1 %exitcond1090.1.not, label %polly.loop_exit242.loopexit.us.1, label %polly.loop_header240.us.1

polly.loop_exit242.loopexit.us.1:                 ; preds = %polly.loop_header240.us.1
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.2.preheader, label %polly.loop_header251.us.1

polly.loop_header251.us.1:                        ; preds = %polly.loop_exit242.loopexit.us.1, %polly.loop_header251.us.1
  %polly.indvar255.us.1 = phi i64 [ %polly.indvar_next256.us.1, %polly.loop_header251.us.1 ], [ %220, %polly.loop_exit242.loopexit.us.1 ]
  %708 = add nuw nsw i64 %polly.indvar255.us.1, %162
  %polly.access.mul.call1259.us.1 = mul nsw i64 %708, 1000
  %polly.access.add.call1260.us.1 = add nuw nsw i64 %98, %polly.access.mul.call1259.us.1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1200
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %polly.indvar_next256.us.1 = add nuw nsw i64 %polly.indvar255.us.1, 1
  %polly.loop_cond257.not.not.us.1 = icmp slt i64 %polly.indvar255.us.1, %223
  br i1 %polly.loop_cond257.not.not.us.1, label %polly.loop_header251.us.1, label %polly.loop_header240.us.2.preheader

polly.loop_header240.us.2.preheader:              ; preds = %polly.loop_header251.us.1, %polly.loop_exit242.loopexit.us.1
  br label %polly.loop_header240.us.2

polly.loop_header240.us.2:                        ; preds = %polly.loop_header240.us.2.preheader, %polly.loop_header240.us.2
  %polly.indvar243.us.2 = phi i64 [ %polly.indvar_next244.us.2, %polly.loop_header240.us.2 ], [ 0, %polly.loop_header240.us.2.preheader ]
  %709 = add nuw nsw i64 %polly.indvar243.us.2, %162
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %709, 1000
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar243.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next244.us.2 = add nuw i64 %polly.indvar243.us.2, 1
  %exitcond1090.2.not = icmp eq i64 %polly.indvar243.us.2, %218
  br i1 %exitcond1090.2.not, label %polly.loop_exit242.loopexit.us.2, label %polly.loop_header240.us.2

polly.loop_exit242.loopexit.us.2:                 ; preds = %polly.loop_header240.us.2
  br i1 %polly.loop_guard254.not, label %polly.loop_header240.us.3.preheader, label %polly.loop_header251.us.2

polly.loop_header251.us.2:                        ; preds = %polly.loop_exit242.loopexit.us.2, %polly.loop_header251.us.2
  %polly.indvar255.us.2 = phi i64 [ %polly.indvar_next256.us.2, %polly.loop_header251.us.2 ], [ %220, %polly.loop_exit242.loopexit.us.2 ]
  %710 = add nuw nsw i64 %polly.indvar255.us.2, %162
  %polly.access.mul.call1259.us.2 = mul nsw i64 %710, 1000
  %polly.access.add.call1260.us.2 = add nuw nsw i64 %99, %polly.access.mul.call1259.us.2
  %polly.access.call1261.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.2
  %polly.access.call1261.load.us.2 = load double, double* %polly.access.call1261.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 2400
  %polly.access.Packed_MemRef_call1264.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.2
  store double %polly.access.call1261.load.us.2, double* %polly.access.Packed_MemRef_call1264.us.2, align 8
  %polly.indvar_next256.us.2 = add nuw nsw i64 %polly.indvar255.us.2, 1
  %polly.loop_cond257.not.not.us.2 = icmp slt i64 %polly.indvar255.us.2, %223
  br i1 %polly.loop_cond257.not.not.us.2, label %polly.loop_header251.us.2, label %polly.loop_header240.us.3.preheader

polly.loop_header240.us.3.preheader:              ; preds = %polly.loop_header251.us.2, %polly.loop_exit242.loopexit.us.2
  br label %polly.loop_header240.us.3

polly.loop_header240.us.3:                        ; preds = %polly.loop_header240.us.3.preheader, %polly.loop_header240.us.3
  %polly.indvar243.us.3 = phi i64 [ %polly.indvar_next244.us.3, %polly.loop_header240.us.3 ], [ 0, %polly.loop_header240.us.3.preheader ]
  %711 = add nuw nsw i64 %polly.indvar243.us.3, %162
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %711, 1000
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar243.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next244.us.3 = add nuw i64 %polly.indvar243.us.3, 1
  %exitcond1090.3.not = icmp eq i64 %polly.indvar243.us.3, %218
  br i1 %exitcond1090.3.not, label %polly.loop_exit242.loopexit.us.3, label %polly.loop_header240.us.3

polly.loop_exit242.loopexit.us.3:                 ; preds = %polly.loop_header240.us.3
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header251.us.3

polly.loop_header251.us.3:                        ; preds = %polly.loop_exit242.loopexit.us.3, %polly.loop_header251.us.3
  %polly.indvar255.us.3 = phi i64 [ %polly.indvar_next256.us.3, %polly.loop_header251.us.3 ], [ %220, %polly.loop_exit242.loopexit.us.3 ]
  %712 = add nuw nsw i64 %polly.indvar255.us.3, %162
  %polly.access.mul.call1259.us.3 = mul nsw i64 %712, 1000
  %polly.access.add.call1260.us.3 = add nuw nsw i64 %100, %polly.access.mul.call1259.us.3
  %polly.access.call1261.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us.3
  %polly.access.call1261.load.us.3 = load double, double* %polly.access.call1261.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 3600
  %polly.access.Packed_MemRef_call1264.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.3
  store double %polly.access.call1261.load.us.3, double* %polly.access.Packed_MemRef_call1264.us.3, align 8
  %polly.indvar_next256.us.3 = add nuw nsw i64 %polly.indvar255.us.3, 1
  %polly.loop_cond257.not.not.us.3 = icmp slt i64 %polly.indvar255.us.3, %223
  br i1 %polly.loop_cond257.not.not.us.3, label %polly.loop_header251.us.3, label %polly.loop_header265.preheader

polly.loop_header272.1:                           ; preds = %polly.loop_exit282, %polly.loop_exit282.1
  %indvar1674 = phi i64 [ %indvar.next1675, %polly.loop_exit282.1 ], [ 0, %polly.loop_exit282 ]
  %indvars.iv1100.1 = phi i64 [ %indvars.iv.next1101.1, %polly.loop_exit282.1 ], [ %214, %polly.loop_exit282 ]
  %polly.indvar276.1 = phi i64 [ %polly.indvar_next277.1, %polly.loop_exit282.1 ], [ %228, %polly.loop_exit282 ]
  %713 = add i64 %183, %indvar1674
  %smin1691 = call i64 @llvm.smin.i64(i64 %713, i64 127)
  %714 = add nsw i64 %smin1691, 1
  %715 = mul nuw nsw i64 %indvar1674, 9600
  %716 = add i64 %190, %715
  %scevgep1676 = getelementptr i8, i8* %call, i64 %716
  %717 = add i64 %191, %715
  %scevgep1677 = getelementptr i8, i8* %call, i64 %717
  %718 = add i64 %193, %indvar1674
  %smin1678 = call i64 @llvm.smin.i64(i64 %718, i64 127)
  %719 = shl nsw i64 %smin1678, 3
  %scevgep1679 = getelementptr i8, i8* %scevgep1677, i64 %719
  %scevgep1682 = getelementptr i8, i8* %scevgep1681, i64 %719
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1100.1, i64 127)
  %720 = add nsw i64 %polly.indvar276.1, %216
  %polly.loop_guard283.11196 = icmp sgt i64 %720, -1
  br i1 %polly.loop_guard283.11196, label %polly.loop_header280.preheader.1, label %polly.loop_exit282.1

polly.loop_header280.preheader.1:                 ; preds = %polly.loop_header272.1
  %721 = add nuw nsw i64 %polly.indvar276.1, %215
  %polly.access.add.Packed_MemRef_call2292.1 = add nuw nsw i64 %720, 1200
  %polly.access.Packed_MemRef_call2293.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.1
  %_p_scalar_294.1 = load double, double* %polly.access.Packed_MemRef_call2293.1, align 8
  %polly.access.Packed_MemRef_call1301.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.1
  %_p_scalar_302.1 = load double, double* %polly.access.Packed_MemRef_call1301.1, align 8
  %722 = mul i64 %721, 9600
  %min.iters.check1692 = icmp ult i64 %714, 4
  br i1 %min.iters.check1692, label %polly.loop_header280.1.preheader, label %vector.memcheck1672

vector.memcheck1672:                              ; preds = %polly.loop_header280.preheader.1
  %bound01683 = icmp ult i8* %scevgep1676, %scevgep1682
  %bound11684 = icmp ult i8* %scevgep1680, %scevgep1679
  %found.conflict1685 = and i1 %bound01683, %bound11684
  br i1 %found.conflict1685, label %polly.loop_header280.1.preheader, label %vector.ph1693

vector.ph1693:                                    ; preds = %vector.memcheck1672
  %n.vec1695 = and i64 %714, -4
  %broadcast.splatinsert1701 = insertelement <4 x double> poison, double %_p_scalar_294.1, i32 0
  %broadcast.splat1702 = shufflevector <4 x double> %broadcast.splatinsert1701, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1704 = insertelement <4 x double> poison, double %_p_scalar_302.1, i32 0
  %broadcast.splat1705 = shufflevector <4 x double> %broadcast.splatinsert1704, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1689

vector.body1689:                                  ; preds = %vector.body1689, %vector.ph1693
  %index1696 = phi i64 [ 0, %vector.ph1693 ], [ %index.next1697, %vector.body1689 ]
  %723 = add nuw nsw i64 %index1696, %162
  %724 = add nuw nsw i64 %index1696, 1200
  %725 = getelementptr double, double* %Packed_MemRef_call1, i64 %724
  %726 = bitcast double* %725 to <4 x double>*
  %wide.load1700 = load <4 x double>, <4 x double>* %726, align 8, !alias.scope !143
  %727 = fmul fast <4 x double> %broadcast.splat1702, %wide.load1700
  %728 = getelementptr double, double* %Packed_MemRef_call2, i64 %724
  %729 = bitcast double* %728 to <4 x double>*
  %wide.load1703 = load <4 x double>, <4 x double>* %729, align 8
  %730 = fmul fast <4 x double> %broadcast.splat1705, %wide.load1703
  %731 = shl i64 %723, 3
  %732 = add i64 %731, %722
  %733 = getelementptr i8, i8* %call, i64 %732
  %734 = bitcast i8* %733 to <4 x double>*
  %wide.load1706 = load <4 x double>, <4 x double>* %734, align 8, !alias.scope !146, !noalias !148
  %735 = fadd fast <4 x double> %730, %727
  %736 = fmul fast <4 x double> %735, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %737 = fadd fast <4 x double> %736, %wide.load1706
  %738 = bitcast i8* %733 to <4 x double>*
  store <4 x double> %737, <4 x double>* %738, align 8, !alias.scope !146, !noalias !148
  %index.next1697 = add i64 %index1696, 4
  %739 = icmp eq i64 %index.next1697, %n.vec1695
  br i1 %739, label %middle.block1687, label %vector.body1689, !llvm.loop !149

middle.block1687:                                 ; preds = %vector.body1689
  %cmp.n1699 = icmp eq i64 %714, %n.vec1695
  br i1 %cmp.n1699, label %polly.loop_exit282.1, label %polly.loop_header280.1.preheader

polly.loop_header280.1.preheader:                 ; preds = %vector.memcheck1672, %polly.loop_header280.preheader.1, %middle.block1687
  %polly.indvar284.1.ph = phi i64 [ 0, %vector.memcheck1672 ], [ 0, %polly.loop_header280.preheader.1 ], [ %n.vec1695, %middle.block1687 ]
  br label %polly.loop_header280.1

polly.loop_header280.1:                           ; preds = %polly.loop_header280.1.preheader, %polly.loop_header280.1
  %polly.indvar284.1 = phi i64 [ %polly.indvar_next285.1, %polly.loop_header280.1 ], [ %polly.indvar284.1.ph, %polly.loop_header280.1.preheader ]
  %740 = add nuw nsw i64 %polly.indvar284.1, %162
  %polly.access.add.Packed_MemRef_call1288.1 = add nuw nsw i64 %polly.indvar284.1, 1200
  %polly.access.Packed_MemRef_call1289.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.1
  %_p_scalar_290.1 = load double, double* %polly.access.Packed_MemRef_call1289.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_294.1, %_p_scalar_290.1
  %polly.access.Packed_MemRef_call2297.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.1
  %_p_scalar_298.1 = load double, double* %polly.access.Packed_MemRef_call2297.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_302.1, %_p_scalar_298.1
  %741 = shl i64 %740, 3
  %742 = add i64 %741, %722
  %scevgep303.1 = getelementptr i8, i8* %call, i64 %742
  %scevgep303304.1 = bitcast i8* %scevgep303.1 to double*
  %_p_scalar_305.1 = load double, double* %scevgep303304.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_305.1
  store double %p_add42.i118.1, double* %scevgep303304.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.1 = add nuw nsw i64 %polly.indvar284.1, 1
  %exitcond1102.1.not = icmp eq i64 %polly.indvar284.1, %smin.1
  br i1 %exitcond1102.1.not, label %polly.loop_exit282.1, label %polly.loop_header280.1, !llvm.loop !150

polly.loop_exit282.1:                             ; preds = %polly.loop_header280.1, %middle.block1687, %polly.loop_header272.1
  %polly.indvar_next277.1 = add nuw nsw i64 %polly.indvar276.1, 1
  %polly.loop_cond278.not.not.1 = icmp slt i64 %polly.indvar276.1, %232
  %indvars.iv.next1101.1 = add i64 %indvars.iv1100.1, 1
  %indvar.next1675 = add i64 %indvar1674, 1
  br i1 %polly.loop_cond278.not.not.1, label %polly.loop_header272.1, label %polly.loop_header272.2

polly.loop_header272.2:                           ; preds = %polly.loop_exit282.1, %polly.loop_exit282.2
  %indvar1639 = phi i64 [ %indvar.next1640, %polly.loop_exit282.2 ], [ 0, %polly.loop_exit282.1 ]
  %indvars.iv1100.2 = phi i64 [ %indvars.iv.next1101.2, %polly.loop_exit282.2 ], [ %214, %polly.loop_exit282.1 ]
  %polly.indvar276.2 = phi i64 [ %polly.indvar_next277.2, %polly.loop_exit282.2 ], [ %228, %polly.loop_exit282.1 ]
  %743 = add i64 %198, %indvar1639
  %smin1656 = call i64 @llvm.smin.i64(i64 %743, i64 127)
  %744 = add nsw i64 %smin1656, 1
  %745 = mul nuw nsw i64 %indvar1639, 9600
  %746 = add i64 %205, %745
  %scevgep1641 = getelementptr i8, i8* %call, i64 %746
  %747 = add i64 %206, %745
  %scevgep1642 = getelementptr i8, i8* %call, i64 %747
  %748 = add i64 %208, %indvar1639
  %smin1643 = call i64 @llvm.smin.i64(i64 %748, i64 127)
  %749 = shl nsw i64 %smin1643, 3
  %scevgep1644 = getelementptr i8, i8* %scevgep1642, i64 %749
  %scevgep1647 = getelementptr i8, i8* %scevgep1646, i64 %749
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1100.2, i64 127)
  %750 = add nsw i64 %polly.indvar276.2, %216
  %polly.loop_guard283.21197 = icmp sgt i64 %750, -1
  br i1 %polly.loop_guard283.21197, label %polly.loop_header280.preheader.2, label %polly.loop_exit282.2

polly.loop_header280.preheader.2:                 ; preds = %polly.loop_header272.2
  %751 = add nuw nsw i64 %polly.indvar276.2, %215
  %polly.access.add.Packed_MemRef_call2292.2 = add nuw nsw i64 %750, 2400
  %polly.access.Packed_MemRef_call2293.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.2
  %_p_scalar_294.2 = load double, double* %polly.access.Packed_MemRef_call2293.2, align 8
  %polly.access.Packed_MemRef_call1301.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.2
  %_p_scalar_302.2 = load double, double* %polly.access.Packed_MemRef_call1301.2, align 8
  %752 = mul i64 %751, 9600
  %min.iters.check1657 = icmp ult i64 %744, 4
  br i1 %min.iters.check1657, label %polly.loop_header280.2.preheader, label %vector.memcheck1637

vector.memcheck1637:                              ; preds = %polly.loop_header280.preheader.2
  %bound01648 = icmp ult i8* %scevgep1641, %scevgep1647
  %bound11649 = icmp ult i8* %scevgep1645, %scevgep1644
  %found.conflict1650 = and i1 %bound01648, %bound11649
  br i1 %found.conflict1650, label %polly.loop_header280.2.preheader, label %vector.ph1658

vector.ph1658:                                    ; preds = %vector.memcheck1637
  %n.vec1660 = and i64 %744, -4
  %broadcast.splatinsert1666 = insertelement <4 x double> poison, double %_p_scalar_294.2, i32 0
  %broadcast.splat1667 = shufflevector <4 x double> %broadcast.splatinsert1666, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1669 = insertelement <4 x double> poison, double %_p_scalar_302.2, i32 0
  %broadcast.splat1670 = shufflevector <4 x double> %broadcast.splatinsert1669, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1654

vector.body1654:                                  ; preds = %vector.body1654, %vector.ph1658
  %index1661 = phi i64 [ 0, %vector.ph1658 ], [ %index.next1662, %vector.body1654 ]
  %753 = add nuw nsw i64 %index1661, %162
  %754 = add nuw nsw i64 %index1661, 2400
  %755 = getelementptr double, double* %Packed_MemRef_call1, i64 %754
  %756 = bitcast double* %755 to <4 x double>*
  %wide.load1665 = load <4 x double>, <4 x double>* %756, align 8, !alias.scope !151
  %757 = fmul fast <4 x double> %broadcast.splat1667, %wide.load1665
  %758 = getelementptr double, double* %Packed_MemRef_call2, i64 %754
  %759 = bitcast double* %758 to <4 x double>*
  %wide.load1668 = load <4 x double>, <4 x double>* %759, align 8
  %760 = fmul fast <4 x double> %broadcast.splat1670, %wide.load1668
  %761 = shl i64 %753, 3
  %762 = add i64 %761, %752
  %763 = getelementptr i8, i8* %call, i64 %762
  %764 = bitcast i8* %763 to <4 x double>*
  %wide.load1671 = load <4 x double>, <4 x double>* %764, align 8, !alias.scope !154, !noalias !156
  %765 = fadd fast <4 x double> %760, %757
  %766 = fmul fast <4 x double> %765, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %767 = fadd fast <4 x double> %766, %wide.load1671
  %768 = bitcast i8* %763 to <4 x double>*
  store <4 x double> %767, <4 x double>* %768, align 8, !alias.scope !154, !noalias !156
  %index.next1662 = add i64 %index1661, 4
  %769 = icmp eq i64 %index.next1662, %n.vec1660
  br i1 %769, label %middle.block1652, label %vector.body1654, !llvm.loop !157

middle.block1652:                                 ; preds = %vector.body1654
  %cmp.n1664 = icmp eq i64 %744, %n.vec1660
  br i1 %cmp.n1664, label %polly.loop_exit282.2, label %polly.loop_header280.2.preheader

polly.loop_header280.2.preheader:                 ; preds = %vector.memcheck1637, %polly.loop_header280.preheader.2, %middle.block1652
  %polly.indvar284.2.ph = phi i64 [ 0, %vector.memcheck1637 ], [ 0, %polly.loop_header280.preheader.2 ], [ %n.vec1660, %middle.block1652 ]
  br label %polly.loop_header280.2

polly.loop_header280.2:                           ; preds = %polly.loop_header280.2.preheader, %polly.loop_header280.2
  %polly.indvar284.2 = phi i64 [ %polly.indvar_next285.2, %polly.loop_header280.2 ], [ %polly.indvar284.2.ph, %polly.loop_header280.2.preheader ]
  %770 = add nuw nsw i64 %polly.indvar284.2, %162
  %polly.access.add.Packed_MemRef_call1288.2 = add nuw nsw i64 %polly.indvar284.2, 2400
  %polly.access.Packed_MemRef_call1289.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.2
  %_p_scalar_290.2 = load double, double* %polly.access.Packed_MemRef_call1289.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_294.2, %_p_scalar_290.2
  %polly.access.Packed_MemRef_call2297.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.2
  %_p_scalar_298.2 = load double, double* %polly.access.Packed_MemRef_call2297.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_302.2, %_p_scalar_298.2
  %771 = shl i64 %770, 3
  %772 = add i64 %771, %752
  %scevgep303.2 = getelementptr i8, i8* %call, i64 %772
  %scevgep303304.2 = bitcast i8* %scevgep303.2 to double*
  %_p_scalar_305.2 = load double, double* %scevgep303304.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_305.2
  store double %p_add42.i118.2, double* %scevgep303304.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.2 = add nuw nsw i64 %polly.indvar284.2, 1
  %exitcond1102.2.not = icmp eq i64 %polly.indvar284.2, %smin.2
  br i1 %exitcond1102.2.not, label %polly.loop_exit282.2, label %polly.loop_header280.2, !llvm.loop !158

polly.loop_exit282.2:                             ; preds = %polly.loop_header280.2, %middle.block1652, %polly.loop_header272.2
  %polly.indvar_next277.2 = add nuw nsw i64 %polly.indvar276.2, 1
  %polly.loop_cond278.not.not.2 = icmp slt i64 %polly.indvar276.2, %232
  %indvars.iv.next1101.2 = add i64 %indvars.iv1100.2, 1
  %indvar.next1640 = add i64 %indvar1639, 1
  br i1 %polly.loop_cond278.not.not.2, label %polly.loop_header272.2, label %polly.loop_header272.3

polly.loop_header272.3:                           ; preds = %polly.loop_exit282.2, %polly.loop_exit282.3
  %indvar1619 = phi i64 [ %indvar.next1620, %polly.loop_exit282.3 ], [ 0, %polly.loop_exit282.2 ]
  %indvars.iv1100.3 = phi i64 [ %indvars.iv.next1101.3, %polly.loop_exit282.3 ], [ %214, %polly.loop_exit282.2 ]
  %polly.indvar276.3 = phi i64 [ %polly.indvar_next277.3, %polly.loop_exit282.3 ], [ %228, %polly.loop_exit282.2 ]
  %773 = add i64 %213, %indvar1619
  %smin1621 = call i64 @llvm.smin.i64(i64 %773, i64 127)
  %774 = add nsw i64 %smin1621, 1
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1100.3, i64 127)
  %775 = add nsw i64 %polly.indvar276.3, %216
  %polly.loop_guard283.31198 = icmp sgt i64 %775, -1
  br i1 %polly.loop_guard283.31198, label %polly.loop_header280.preheader.3, label %polly.loop_exit282.3

polly.loop_header280.preheader.3:                 ; preds = %polly.loop_header272.3
  %776 = add nuw nsw i64 %polly.indvar276.3, %215
  %polly.access.add.Packed_MemRef_call2292.3 = add nuw nsw i64 %775, 3600
  %polly.access.Packed_MemRef_call2293.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292.3
  %_p_scalar_294.3 = load double, double* %polly.access.Packed_MemRef_call2293.3, align 8
  %polly.access.Packed_MemRef_call1301.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292.3
  %_p_scalar_302.3 = load double, double* %polly.access.Packed_MemRef_call1301.3, align 8
  %777 = mul i64 %776, 9600
  %min.iters.check1622 = icmp ult i64 %774, 4
  br i1 %min.iters.check1622, label %polly.loop_header280.3.preheader, label %vector.ph1623

vector.ph1623:                                    ; preds = %polly.loop_header280.preheader.3
  %n.vec1625 = and i64 %774, -4
  %broadcast.splatinsert1631 = insertelement <4 x double> poison, double %_p_scalar_294.3, i32 0
  %broadcast.splat1632 = shufflevector <4 x double> %broadcast.splatinsert1631, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1634 = insertelement <4 x double> poison, double %_p_scalar_302.3, i32 0
  %broadcast.splat1635 = shufflevector <4 x double> %broadcast.splatinsert1634, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1615

vector.body1615:                                  ; preds = %vector.body1615, %vector.ph1623
  %index1626 = phi i64 [ 0, %vector.ph1623 ], [ %index.next1627, %vector.body1615 ]
  %778 = add nuw nsw i64 %index1626, %162
  %779 = add nuw nsw i64 %index1626, 3600
  %780 = getelementptr double, double* %Packed_MemRef_call1, i64 %779
  %781 = bitcast double* %780 to <4 x double>*
  %wide.load1630 = load <4 x double>, <4 x double>* %781, align 8
  %782 = fmul fast <4 x double> %broadcast.splat1632, %wide.load1630
  %783 = getelementptr double, double* %Packed_MemRef_call2, i64 %779
  %784 = bitcast double* %783 to <4 x double>*
  %wide.load1633 = load <4 x double>, <4 x double>* %784, align 8
  %785 = fmul fast <4 x double> %broadcast.splat1635, %wide.load1633
  %786 = shl i64 %778, 3
  %787 = add i64 %786, %777
  %788 = getelementptr i8, i8* %call, i64 %787
  %789 = bitcast i8* %788 to <4 x double>*
  %wide.load1636 = load <4 x double>, <4 x double>* %789, align 8, !alias.scope !72, !noalias !74
  %790 = fadd fast <4 x double> %785, %782
  %791 = fmul fast <4 x double> %790, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %792 = fadd fast <4 x double> %791, %wide.load1636
  %793 = bitcast i8* %788 to <4 x double>*
  store <4 x double> %792, <4 x double>* %793, align 8, !alias.scope !72, !noalias !74
  %index.next1627 = add i64 %index1626, 4
  %794 = icmp eq i64 %index.next1627, %n.vec1625
  br i1 %794, label %middle.block1613, label %vector.body1615, !llvm.loop !159

middle.block1613:                                 ; preds = %vector.body1615
  %cmp.n1629 = icmp eq i64 %774, %n.vec1625
  br i1 %cmp.n1629, label %polly.loop_exit282.3, label %polly.loop_header280.3.preheader

polly.loop_header280.3.preheader:                 ; preds = %polly.loop_header280.preheader.3, %middle.block1613
  %polly.indvar284.3.ph = phi i64 [ 0, %polly.loop_header280.preheader.3 ], [ %n.vec1625, %middle.block1613 ]
  br label %polly.loop_header280.3

polly.loop_header280.3:                           ; preds = %polly.loop_header280.3.preheader, %polly.loop_header280.3
  %polly.indvar284.3 = phi i64 [ %polly.indvar_next285.3, %polly.loop_header280.3 ], [ %polly.indvar284.3.ph, %polly.loop_header280.3.preheader ]
  %795 = add nuw nsw i64 %polly.indvar284.3, %162
  %polly.access.add.Packed_MemRef_call1288.3 = add nuw nsw i64 %polly.indvar284.3, 3600
  %polly.access.Packed_MemRef_call1289.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288.3
  %_p_scalar_290.3 = load double, double* %polly.access.Packed_MemRef_call1289.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_294.3, %_p_scalar_290.3
  %polly.access.Packed_MemRef_call2297.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288.3
  %_p_scalar_298.3 = load double, double* %polly.access.Packed_MemRef_call2297.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_302.3, %_p_scalar_298.3
  %796 = shl i64 %795, 3
  %797 = add i64 %796, %777
  %scevgep303.3 = getelementptr i8, i8* %call, i64 %797
  %scevgep303304.3 = bitcast i8* %scevgep303.3 to double*
  %_p_scalar_305.3 = load double, double* %scevgep303304.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_305.3
  store double %p_add42.i118.3, double* %scevgep303304.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285.3 = add nuw nsw i64 %polly.indvar284.3, 1
  %exitcond1102.3.not = icmp eq i64 %polly.indvar284.3, %smin.3
  br i1 %exitcond1102.3.not, label %polly.loop_exit282.3, label %polly.loop_header280.3, !llvm.loop !160

polly.loop_exit282.3:                             ; preds = %polly.loop_header280.3, %middle.block1613, %polly.loop_header272.3
  %polly.indvar_next277.3 = add nuw nsw i64 %polly.indvar276.3, 1
  %polly.loop_cond278.not.not.3 = icmp slt i64 %polly.indvar276.3, %232
  %indvars.iv.next1101.3 = add i64 %indvars.iv1100.3, 1
  %indvar.next1620 = add i64 %indvar1619, 1
  br i1 %polly.loop_cond278.not.not.3, label %polly.loop_header272.3, label %polly.loop_exit267

polly.loop_header430.1:                           ; preds = %polly.loop_header430, %polly.loop_header430.1
  %polly.indvar433.1 = phi i64 [ %polly.indvar_next434.1, %polly.loop_header430.1 ], [ 0, %polly.loop_header430 ]
  %798 = add nuw nsw i64 %polly.indvar433.1, %337
  %polly.access.mul.call2437.1 = mul nuw nsw i64 %798, 1000
  %polly.access.add.call2438.1 = add nuw nsw i64 %273, %polly.access.mul.call2437.1
  %polly.access.call2439.1 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.1
  %polly.access.call2439.load.1 = load double, double* %polly.access.call2439.1, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.1 = add nuw nsw i64 %polly.indvar433.1, 1200
  %polly.access.Packed_MemRef_call2313.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.1
  store double %polly.access.call2439.load.1, double* %polly.access.Packed_MemRef_call2313.1, align 8
  %polly.indvar_next434.1 = add nuw nsw i64 %polly.indvar433.1, 1
  %exitcond1110.1.not = icmp eq i64 %polly.indvar_next434.1, %indvars.iv1108
  br i1 %exitcond1110.1.not, label %polly.loop_header430.2, label %polly.loop_header430.1

polly.loop_header430.2:                           ; preds = %polly.loop_header430.1, %polly.loop_header430.2
  %polly.indvar433.2 = phi i64 [ %polly.indvar_next434.2, %polly.loop_header430.2 ], [ 0, %polly.loop_header430.1 ]
  %799 = add nuw nsw i64 %polly.indvar433.2, %337
  %polly.access.mul.call2437.2 = mul nuw nsw i64 %799, 1000
  %polly.access.add.call2438.2 = add nuw nsw i64 %274, %polly.access.mul.call2437.2
  %polly.access.call2439.2 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.2
  %polly.access.call2439.load.2 = load double, double* %polly.access.call2439.2, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.2 = add nuw nsw i64 %polly.indvar433.2, 2400
  %polly.access.Packed_MemRef_call2313.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.2
  store double %polly.access.call2439.load.2, double* %polly.access.Packed_MemRef_call2313.2, align 8
  %polly.indvar_next434.2 = add nuw nsw i64 %polly.indvar433.2, 1
  %exitcond1110.2.not = icmp eq i64 %polly.indvar_next434.2, %indvars.iv1108
  br i1 %exitcond1110.2.not, label %polly.loop_header430.3, label %polly.loop_header430.2

polly.loop_header430.3:                           ; preds = %polly.loop_header430.2, %polly.loop_header430.3
  %polly.indvar433.3 = phi i64 [ %polly.indvar_next434.3, %polly.loop_header430.3 ], [ 0, %polly.loop_header430.2 ]
  %800 = add nuw nsw i64 %polly.indvar433.3, %337
  %polly.access.mul.call2437.3 = mul nuw nsw i64 %800, 1000
  %polly.access.add.call2438.3 = add nuw nsw i64 %275, %polly.access.mul.call2437.3
  %polly.access.call2439.3 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2438.3
  %polly.access.call2439.load.3 = load double, double* %polly.access.call2439.3, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2313.3 = add nuw nsw i64 %polly.indvar433.3, 3600
  %polly.access.Packed_MemRef_call2313.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313.3
  store double %polly.access.call2439.load.3, double* %polly.access.Packed_MemRef_call2313.3, align 8
  %polly.indvar_next434.3 = add nuw nsw i64 %polly.indvar433.3, 1
  %exitcond1110.3.not = icmp eq i64 %polly.indvar_next434.3, %indvars.iv1108
  br i1 %exitcond1110.3.not, label %polly.loop_exit432.3, label %polly.loop_header430.3

polly.loop_exit432.3:                             ; preds = %polly.loop_header430.3
  %801 = add nsw i64 %336, 1199
  br label %polly.loop_header441

polly.loop_header466.1:                           ; preds = %polly.loop_header466, %polly.loop_header466.1
  %polly.indvar470.1 = phi i64 [ %polly.indvar_next471.1, %polly.loop_header466.1 ], [ %395, %polly.loop_header466 ]
  %802 = add nuw nsw i64 %polly.indvar470.1, %337
  %polly.access.mul.call1474.1 = mul nsw i64 %802, 1000
  %polly.access.add.call1475.1 = add nuw nsw i64 %273, %polly.access.mul.call1474.1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.1 = add nuw nsw i64 %polly.indvar470.1, 1200
  %polly.access.Packed_MemRef_call1311479.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1311479.1, align 8
  %polly.indvar_next471.1 = add nuw nsw i64 %polly.indvar470.1, 1
  %polly.loop_cond472.not.not.1 = icmp slt i64 %polly.indvar470.1, %398
  br i1 %polly.loop_cond472.not.not.1, label %polly.loop_header466.1, label %polly.loop_header466.2

polly.loop_header466.2:                           ; preds = %polly.loop_header466.1, %polly.loop_header466.2
  %polly.indvar470.2 = phi i64 [ %polly.indvar_next471.2, %polly.loop_header466.2 ], [ %395, %polly.loop_header466.1 ]
  %803 = add nuw nsw i64 %polly.indvar470.2, %337
  %polly.access.mul.call1474.2 = mul nsw i64 %803, 1000
  %polly.access.add.call1475.2 = add nuw nsw i64 %274, %polly.access.mul.call1474.2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.2 = add nuw nsw i64 %polly.indvar470.2, 2400
  %polly.access.Packed_MemRef_call1311479.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1311479.2, align 8
  %polly.indvar_next471.2 = add nuw nsw i64 %polly.indvar470.2, 1
  %polly.loop_cond472.not.not.2 = icmp slt i64 %polly.indvar470.2, %398
  br i1 %polly.loop_cond472.not.not.2, label %polly.loop_header466.2, label %polly.loop_header466.3

polly.loop_header466.3:                           ; preds = %polly.loop_header466.2, %polly.loop_header466.3
  %polly.indvar470.3 = phi i64 [ %polly.indvar_next471.3, %polly.loop_header466.3 ], [ %395, %polly.loop_header466.2 ]
  %804 = add nuw nsw i64 %polly.indvar470.3, %337
  %polly.access.mul.call1474.3 = mul nsw i64 %804, 1000
  %polly.access.add.call1475.3 = add nuw nsw i64 %275, %polly.access.mul.call1474.3
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
  %805 = add nuw nsw i64 %polly.indvar458.us.1, %337
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %805, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %273, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.1 = add nuw nsw i64 %polly.indvar458.us.1, 1200
  %polly.access.Packed_MemRef_call1311.us.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1311.us.1, align 8
  %polly.indvar_next459.us.1 = add nuw i64 %polly.indvar458.us.1, 1
  %exitcond1113.1.not = icmp eq i64 %polly.indvar458.us.1, %393
  br i1 %exitcond1113.1.not, label %polly.loop_exit456.loopexit.us.1, label %polly.loop_header454.us.1

polly.loop_exit456.loopexit.us.1:                 ; preds = %polly.loop_header454.us.1
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.2.preheader, label %polly.loop_header466.us.1

polly.loop_header466.us.1:                        ; preds = %polly.loop_exit456.loopexit.us.1, %polly.loop_header466.us.1
  %polly.indvar470.us.1 = phi i64 [ %polly.indvar_next471.us.1, %polly.loop_header466.us.1 ], [ %395, %polly.loop_exit456.loopexit.us.1 ]
  %806 = add nuw nsw i64 %polly.indvar470.us.1, %337
  %polly.access.mul.call1474.us.1 = mul nsw i64 %806, 1000
  %polly.access.add.call1475.us.1 = add nuw nsw i64 %273, %polly.access.mul.call1474.us.1
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
  %807 = add nuw nsw i64 %polly.indvar458.us.2, %337
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %807, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %274, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.2 = add nuw nsw i64 %polly.indvar458.us.2, 2400
  %polly.access.Packed_MemRef_call1311.us.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1311.us.2, align 8
  %polly.indvar_next459.us.2 = add nuw i64 %polly.indvar458.us.2, 1
  %exitcond1113.2.not = icmp eq i64 %polly.indvar458.us.2, %393
  br i1 %exitcond1113.2.not, label %polly.loop_exit456.loopexit.us.2, label %polly.loop_header454.us.2

polly.loop_exit456.loopexit.us.2:                 ; preds = %polly.loop_header454.us.2
  br i1 %polly.loop_guard469.not, label %polly.loop_header454.us.3.preheader, label %polly.loop_header466.us.2

polly.loop_header466.us.2:                        ; preds = %polly.loop_exit456.loopexit.us.2, %polly.loop_header466.us.2
  %polly.indvar470.us.2 = phi i64 [ %polly.indvar_next471.us.2, %polly.loop_header466.us.2 ], [ %395, %polly.loop_exit456.loopexit.us.2 ]
  %808 = add nuw nsw i64 %polly.indvar470.us.2, %337
  %polly.access.mul.call1474.us.2 = mul nsw i64 %808, 1000
  %polly.access.add.call1475.us.2 = add nuw nsw i64 %274, %polly.access.mul.call1474.us.2
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
  %809 = add nuw nsw i64 %polly.indvar458.us.3, %337
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %809, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %275, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311.us.3 = add nuw nsw i64 %polly.indvar458.us.3, 3600
  %polly.access.Packed_MemRef_call1311.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1311.us.3, align 8
  %polly.indvar_next459.us.3 = add nuw i64 %polly.indvar458.us.3, 1
  %exitcond1113.3.not = icmp eq i64 %polly.indvar458.us.3, %393
  br i1 %exitcond1113.3.not, label %polly.loop_exit456.loopexit.us.3, label %polly.loop_header454.us.3

polly.loop_exit456.loopexit.us.3:                 ; preds = %polly.loop_header454.us.3
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466.us.3

polly.loop_header466.us.3:                        ; preds = %polly.loop_exit456.loopexit.us.3, %polly.loop_header466.us.3
  %polly.indvar470.us.3 = phi i64 [ %polly.indvar_next471.us.3, %polly.loop_header466.us.3 ], [ %395, %polly.loop_exit456.loopexit.us.3 ]
  %810 = add nuw nsw i64 %polly.indvar470.us.3, %337
  %polly.access.mul.call1474.us.3 = mul nsw i64 %810, 1000
  %polly.access.add.call1475.us.3 = add nuw nsw i64 %275, %polly.access.mul.call1474.us.3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1311478.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 3600
  %polly.access.Packed_MemRef_call1311479.us.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1311479.us.3, align 8
  %polly.indvar_next471.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 1
  %polly.loop_cond472.not.not.us.3 = icmp slt i64 %polly.indvar470.us.3, %398
  br i1 %polly.loop_cond472.not.not.us.3, label %polly.loop_header466.us.3, label %polly.loop_header480.preheader

polly.loop_header487.1:                           ; preds = %polly.loop_exit497, %polly.loop_exit497.1
  %indvar1520 = phi i64 [ %indvar.next1521, %polly.loop_exit497.1 ], [ 0, %polly.loop_exit497 ]
  %indvars.iv1124.1 = phi i64 [ %indvars.iv.next1125.1, %polly.loop_exit497.1 ], [ %389, %polly.loop_exit497 ]
  %polly.indvar491.1 = phi i64 [ %polly.indvar_next492.1, %polly.loop_exit497.1 ], [ %403, %polly.loop_exit497 ]
  %811 = add i64 %358, %indvar1520
  %smin1537 = call i64 @llvm.smin.i64(i64 %811, i64 127)
  %812 = add nsw i64 %smin1537, 1
  %813 = mul nuw nsw i64 %indvar1520, 9600
  %814 = add i64 %365, %813
  %scevgep1522 = getelementptr i8, i8* %call, i64 %814
  %815 = add i64 %366, %813
  %scevgep1523 = getelementptr i8, i8* %call, i64 %815
  %816 = add i64 %368, %indvar1520
  %smin1524 = call i64 @llvm.smin.i64(i64 %816, i64 127)
  %817 = shl nsw i64 %smin1524, 3
  %scevgep1525 = getelementptr i8, i8* %scevgep1523, i64 %817
  %scevgep1528 = getelementptr i8, i8* %scevgep1527, i64 %817
  %smin1126.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1124.1, i64 127)
  %818 = add nsw i64 %polly.indvar491.1, %391
  %polly.loop_guard498.11200 = icmp sgt i64 %818, -1
  br i1 %polly.loop_guard498.11200, label %polly.loop_header495.preheader.1, label %polly.loop_exit497.1

polly.loop_header495.preheader.1:                 ; preds = %polly.loop_header487.1
  %819 = add nuw nsw i64 %polly.indvar491.1, %390
  %polly.access.add.Packed_MemRef_call2313507.1 = add nuw nsw i64 %818, 1200
  %polly.access.Packed_MemRef_call2313508.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.1
  %_p_scalar_509.1 = load double, double* %polly.access.Packed_MemRef_call2313508.1, align 8
  %polly.access.Packed_MemRef_call1311516.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.1
  %_p_scalar_517.1 = load double, double* %polly.access.Packed_MemRef_call1311516.1, align 8
  %820 = mul i64 %819, 9600
  %min.iters.check1538 = icmp ult i64 %812, 4
  br i1 %min.iters.check1538, label %polly.loop_header495.1.preheader, label %vector.memcheck1518

vector.memcheck1518:                              ; preds = %polly.loop_header495.preheader.1
  %bound01529 = icmp ult i8* %scevgep1522, %scevgep1528
  %bound11530 = icmp ult i8* %scevgep1526, %scevgep1525
  %found.conflict1531 = and i1 %bound01529, %bound11530
  br i1 %found.conflict1531, label %polly.loop_header495.1.preheader, label %vector.ph1539

vector.ph1539:                                    ; preds = %vector.memcheck1518
  %n.vec1541 = and i64 %812, -4
  %broadcast.splatinsert1547 = insertelement <4 x double> poison, double %_p_scalar_509.1, i32 0
  %broadcast.splat1548 = shufflevector <4 x double> %broadcast.splatinsert1547, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1550 = insertelement <4 x double> poison, double %_p_scalar_517.1, i32 0
  %broadcast.splat1551 = shufflevector <4 x double> %broadcast.splatinsert1550, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1535

vector.body1535:                                  ; preds = %vector.body1535, %vector.ph1539
  %index1542 = phi i64 [ 0, %vector.ph1539 ], [ %index.next1543, %vector.body1535 ]
  %821 = add nuw nsw i64 %index1542, %337
  %822 = add nuw nsw i64 %index1542, 1200
  %823 = getelementptr double, double* %Packed_MemRef_call1311, i64 %822
  %824 = bitcast double* %823 to <4 x double>*
  %wide.load1546 = load <4 x double>, <4 x double>* %824, align 8, !alias.scope !161
  %825 = fmul fast <4 x double> %broadcast.splat1548, %wide.load1546
  %826 = getelementptr double, double* %Packed_MemRef_call2313, i64 %822
  %827 = bitcast double* %826 to <4 x double>*
  %wide.load1549 = load <4 x double>, <4 x double>* %827, align 8
  %828 = fmul fast <4 x double> %broadcast.splat1551, %wide.load1549
  %829 = shl i64 %821, 3
  %830 = add i64 %829, %820
  %831 = getelementptr i8, i8* %call, i64 %830
  %832 = bitcast i8* %831 to <4 x double>*
  %wide.load1552 = load <4 x double>, <4 x double>* %832, align 8, !alias.scope !164, !noalias !166
  %833 = fadd fast <4 x double> %828, %825
  %834 = fmul fast <4 x double> %833, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %835 = fadd fast <4 x double> %834, %wide.load1552
  %836 = bitcast i8* %831 to <4 x double>*
  store <4 x double> %835, <4 x double>* %836, align 8, !alias.scope !164, !noalias !166
  %index.next1543 = add i64 %index1542, 4
  %837 = icmp eq i64 %index.next1543, %n.vec1541
  br i1 %837, label %middle.block1533, label %vector.body1535, !llvm.loop !167

middle.block1533:                                 ; preds = %vector.body1535
  %cmp.n1545 = icmp eq i64 %812, %n.vec1541
  br i1 %cmp.n1545, label %polly.loop_exit497.1, label %polly.loop_header495.1.preheader

polly.loop_header495.1.preheader:                 ; preds = %vector.memcheck1518, %polly.loop_header495.preheader.1, %middle.block1533
  %polly.indvar499.1.ph = phi i64 [ 0, %vector.memcheck1518 ], [ 0, %polly.loop_header495.preheader.1 ], [ %n.vec1541, %middle.block1533 ]
  br label %polly.loop_header495.1

polly.loop_header495.1:                           ; preds = %polly.loop_header495.1.preheader, %polly.loop_header495.1
  %polly.indvar499.1 = phi i64 [ %polly.indvar_next500.1, %polly.loop_header495.1 ], [ %polly.indvar499.1.ph, %polly.loop_header495.1.preheader ]
  %838 = add nuw nsw i64 %polly.indvar499.1, %337
  %polly.access.add.Packed_MemRef_call1311503.1 = add nuw nsw i64 %polly.indvar499.1, 1200
  %polly.access.Packed_MemRef_call1311504.1 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.1
  %_p_scalar_505.1 = load double, double* %polly.access.Packed_MemRef_call1311504.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_509.1, %_p_scalar_505.1
  %polly.access.Packed_MemRef_call2313512.1 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.1
  %_p_scalar_513.1 = load double, double* %polly.access.Packed_MemRef_call2313512.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_517.1, %_p_scalar_513.1
  %839 = shl i64 %838, 3
  %840 = add i64 %839, %820
  %scevgep518.1 = getelementptr i8, i8* %call, i64 %840
  %scevgep518519.1 = bitcast i8* %scevgep518.1 to double*
  %_p_scalar_520.1 = load double, double* %scevgep518519.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_520.1
  store double %p_add42.i79.1, double* %scevgep518519.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.1 = add nuw nsw i64 %polly.indvar499.1, 1
  %exitcond1127.1.not = icmp eq i64 %polly.indvar499.1, %smin1126.1
  br i1 %exitcond1127.1.not, label %polly.loop_exit497.1, label %polly.loop_header495.1, !llvm.loop !168

polly.loop_exit497.1:                             ; preds = %polly.loop_header495.1, %middle.block1533, %polly.loop_header487.1
  %polly.indvar_next492.1 = add nuw nsw i64 %polly.indvar491.1, 1
  %polly.loop_cond493.not.not.1 = icmp slt i64 %polly.indvar491.1, %407
  %indvars.iv.next1125.1 = add i64 %indvars.iv1124.1, 1
  %indvar.next1521 = add i64 %indvar1520, 1
  br i1 %polly.loop_cond493.not.not.1, label %polly.loop_header487.1, label %polly.loop_header487.2

polly.loop_header487.2:                           ; preds = %polly.loop_exit497.1, %polly.loop_exit497.2
  %indvar1485 = phi i64 [ %indvar.next1486, %polly.loop_exit497.2 ], [ 0, %polly.loop_exit497.1 ]
  %indvars.iv1124.2 = phi i64 [ %indvars.iv.next1125.2, %polly.loop_exit497.2 ], [ %389, %polly.loop_exit497.1 ]
  %polly.indvar491.2 = phi i64 [ %polly.indvar_next492.2, %polly.loop_exit497.2 ], [ %403, %polly.loop_exit497.1 ]
  %841 = add i64 %373, %indvar1485
  %smin1502 = call i64 @llvm.smin.i64(i64 %841, i64 127)
  %842 = add nsw i64 %smin1502, 1
  %843 = mul nuw nsw i64 %indvar1485, 9600
  %844 = add i64 %380, %843
  %scevgep1487 = getelementptr i8, i8* %call, i64 %844
  %845 = add i64 %381, %843
  %scevgep1488 = getelementptr i8, i8* %call, i64 %845
  %846 = add i64 %383, %indvar1485
  %smin1489 = call i64 @llvm.smin.i64(i64 %846, i64 127)
  %847 = shl nsw i64 %smin1489, 3
  %scevgep1490 = getelementptr i8, i8* %scevgep1488, i64 %847
  %scevgep1493 = getelementptr i8, i8* %scevgep1492, i64 %847
  %smin1126.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1124.2, i64 127)
  %848 = add nsw i64 %polly.indvar491.2, %391
  %polly.loop_guard498.21201 = icmp sgt i64 %848, -1
  br i1 %polly.loop_guard498.21201, label %polly.loop_header495.preheader.2, label %polly.loop_exit497.2

polly.loop_header495.preheader.2:                 ; preds = %polly.loop_header487.2
  %849 = add nuw nsw i64 %polly.indvar491.2, %390
  %polly.access.add.Packed_MemRef_call2313507.2 = add nuw nsw i64 %848, 2400
  %polly.access.Packed_MemRef_call2313508.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.2
  %_p_scalar_509.2 = load double, double* %polly.access.Packed_MemRef_call2313508.2, align 8
  %polly.access.Packed_MemRef_call1311516.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.2
  %_p_scalar_517.2 = load double, double* %polly.access.Packed_MemRef_call1311516.2, align 8
  %850 = mul i64 %849, 9600
  %min.iters.check1503 = icmp ult i64 %842, 4
  br i1 %min.iters.check1503, label %polly.loop_header495.2.preheader, label %vector.memcheck1483

vector.memcheck1483:                              ; preds = %polly.loop_header495.preheader.2
  %bound01494 = icmp ult i8* %scevgep1487, %scevgep1493
  %bound11495 = icmp ult i8* %scevgep1491, %scevgep1490
  %found.conflict1496 = and i1 %bound01494, %bound11495
  br i1 %found.conflict1496, label %polly.loop_header495.2.preheader, label %vector.ph1504

vector.ph1504:                                    ; preds = %vector.memcheck1483
  %n.vec1506 = and i64 %842, -4
  %broadcast.splatinsert1512 = insertelement <4 x double> poison, double %_p_scalar_509.2, i32 0
  %broadcast.splat1513 = shufflevector <4 x double> %broadcast.splatinsert1512, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1515 = insertelement <4 x double> poison, double %_p_scalar_517.2, i32 0
  %broadcast.splat1516 = shufflevector <4 x double> %broadcast.splatinsert1515, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1500

vector.body1500:                                  ; preds = %vector.body1500, %vector.ph1504
  %index1507 = phi i64 [ 0, %vector.ph1504 ], [ %index.next1508, %vector.body1500 ]
  %851 = add nuw nsw i64 %index1507, %337
  %852 = add nuw nsw i64 %index1507, 2400
  %853 = getelementptr double, double* %Packed_MemRef_call1311, i64 %852
  %854 = bitcast double* %853 to <4 x double>*
  %wide.load1511 = load <4 x double>, <4 x double>* %854, align 8, !alias.scope !169
  %855 = fmul fast <4 x double> %broadcast.splat1513, %wide.load1511
  %856 = getelementptr double, double* %Packed_MemRef_call2313, i64 %852
  %857 = bitcast double* %856 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %857, align 8
  %858 = fmul fast <4 x double> %broadcast.splat1516, %wide.load1514
  %859 = shl i64 %851, 3
  %860 = add i64 %859, %850
  %861 = getelementptr i8, i8* %call, i64 %860
  %862 = bitcast i8* %861 to <4 x double>*
  %wide.load1517 = load <4 x double>, <4 x double>* %862, align 8, !alias.scope !172, !noalias !174
  %863 = fadd fast <4 x double> %858, %855
  %864 = fmul fast <4 x double> %863, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %865 = fadd fast <4 x double> %864, %wide.load1517
  %866 = bitcast i8* %861 to <4 x double>*
  store <4 x double> %865, <4 x double>* %866, align 8, !alias.scope !172, !noalias !174
  %index.next1508 = add i64 %index1507, 4
  %867 = icmp eq i64 %index.next1508, %n.vec1506
  br i1 %867, label %middle.block1498, label %vector.body1500, !llvm.loop !175

middle.block1498:                                 ; preds = %vector.body1500
  %cmp.n1510 = icmp eq i64 %842, %n.vec1506
  br i1 %cmp.n1510, label %polly.loop_exit497.2, label %polly.loop_header495.2.preheader

polly.loop_header495.2.preheader:                 ; preds = %vector.memcheck1483, %polly.loop_header495.preheader.2, %middle.block1498
  %polly.indvar499.2.ph = phi i64 [ 0, %vector.memcheck1483 ], [ 0, %polly.loop_header495.preheader.2 ], [ %n.vec1506, %middle.block1498 ]
  br label %polly.loop_header495.2

polly.loop_header495.2:                           ; preds = %polly.loop_header495.2.preheader, %polly.loop_header495.2
  %polly.indvar499.2 = phi i64 [ %polly.indvar_next500.2, %polly.loop_header495.2 ], [ %polly.indvar499.2.ph, %polly.loop_header495.2.preheader ]
  %868 = add nuw nsw i64 %polly.indvar499.2, %337
  %polly.access.add.Packed_MemRef_call1311503.2 = add nuw nsw i64 %polly.indvar499.2, 2400
  %polly.access.Packed_MemRef_call1311504.2 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.2
  %_p_scalar_505.2 = load double, double* %polly.access.Packed_MemRef_call1311504.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_509.2, %_p_scalar_505.2
  %polly.access.Packed_MemRef_call2313512.2 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.2
  %_p_scalar_513.2 = load double, double* %polly.access.Packed_MemRef_call2313512.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_517.2, %_p_scalar_513.2
  %869 = shl i64 %868, 3
  %870 = add i64 %869, %850
  %scevgep518.2 = getelementptr i8, i8* %call, i64 %870
  %scevgep518519.2 = bitcast i8* %scevgep518.2 to double*
  %_p_scalar_520.2 = load double, double* %scevgep518519.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_520.2
  store double %p_add42.i79.2, double* %scevgep518519.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.2 = add nuw nsw i64 %polly.indvar499.2, 1
  %exitcond1127.2.not = icmp eq i64 %polly.indvar499.2, %smin1126.2
  br i1 %exitcond1127.2.not, label %polly.loop_exit497.2, label %polly.loop_header495.2, !llvm.loop !176

polly.loop_exit497.2:                             ; preds = %polly.loop_header495.2, %middle.block1498, %polly.loop_header487.2
  %polly.indvar_next492.2 = add nuw nsw i64 %polly.indvar491.2, 1
  %polly.loop_cond493.not.not.2 = icmp slt i64 %polly.indvar491.2, %407
  %indvars.iv.next1125.2 = add i64 %indvars.iv1124.2, 1
  %indvar.next1486 = add i64 %indvar1485, 1
  br i1 %polly.loop_cond493.not.not.2, label %polly.loop_header487.2, label %polly.loop_header487.3

polly.loop_header487.3:                           ; preds = %polly.loop_exit497.2, %polly.loop_exit497.3
  %indvar1465 = phi i64 [ %indvar.next1466, %polly.loop_exit497.3 ], [ 0, %polly.loop_exit497.2 ]
  %indvars.iv1124.3 = phi i64 [ %indvars.iv.next1125.3, %polly.loop_exit497.3 ], [ %389, %polly.loop_exit497.2 ]
  %polly.indvar491.3 = phi i64 [ %polly.indvar_next492.3, %polly.loop_exit497.3 ], [ %403, %polly.loop_exit497.2 ]
  %871 = add i64 %388, %indvar1465
  %smin1467 = call i64 @llvm.smin.i64(i64 %871, i64 127)
  %872 = add nsw i64 %smin1467, 1
  %smin1126.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1124.3, i64 127)
  %873 = add nsw i64 %polly.indvar491.3, %391
  %polly.loop_guard498.31202 = icmp sgt i64 %873, -1
  br i1 %polly.loop_guard498.31202, label %polly.loop_header495.preheader.3, label %polly.loop_exit497.3

polly.loop_header495.preheader.3:                 ; preds = %polly.loop_header487.3
  %874 = add nuw nsw i64 %polly.indvar491.3, %390
  %polly.access.add.Packed_MemRef_call2313507.3 = add nuw nsw i64 %873, 3600
  %polly.access.Packed_MemRef_call2313508.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507.3
  %_p_scalar_509.3 = load double, double* %polly.access.Packed_MemRef_call2313508.3, align 8
  %polly.access.Packed_MemRef_call1311516.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507.3
  %_p_scalar_517.3 = load double, double* %polly.access.Packed_MemRef_call1311516.3, align 8
  %875 = mul i64 %874, 9600
  %min.iters.check1468 = icmp ult i64 %872, 4
  br i1 %min.iters.check1468, label %polly.loop_header495.3.preheader, label %vector.ph1469

vector.ph1469:                                    ; preds = %polly.loop_header495.preheader.3
  %n.vec1471 = and i64 %872, -4
  %broadcast.splatinsert1477 = insertelement <4 x double> poison, double %_p_scalar_509.3, i32 0
  %broadcast.splat1478 = shufflevector <4 x double> %broadcast.splatinsert1477, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1480 = insertelement <4 x double> poison, double %_p_scalar_517.3, i32 0
  %broadcast.splat1481 = shufflevector <4 x double> %broadcast.splatinsert1480, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1461

vector.body1461:                                  ; preds = %vector.body1461, %vector.ph1469
  %index1472 = phi i64 [ 0, %vector.ph1469 ], [ %index.next1473, %vector.body1461 ]
  %876 = add nuw nsw i64 %index1472, %337
  %877 = add nuw nsw i64 %index1472, 3600
  %878 = getelementptr double, double* %Packed_MemRef_call1311, i64 %877
  %879 = bitcast double* %878 to <4 x double>*
  %wide.load1476 = load <4 x double>, <4 x double>* %879, align 8
  %880 = fmul fast <4 x double> %broadcast.splat1478, %wide.load1476
  %881 = getelementptr double, double* %Packed_MemRef_call2313, i64 %877
  %882 = bitcast double* %881 to <4 x double>*
  %wide.load1479 = load <4 x double>, <4 x double>* %882, align 8
  %883 = fmul fast <4 x double> %broadcast.splat1481, %wide.load1479
  %884 = shl i64 %876, 3
  %885 = add i64 %884, %875
  %886 = getelementptr i8, i8* %call, i64 %885
  %887 = bitcast i8* %886 to <4 x double>*
  %wide.load1482 = load <4 x double>, <4 x double>* %887, align 8, !alias.scope !92, !noalias !94
  %888 = fadd fast <4 x double> %883, %880
  %889 = fmul fast <4 x double> %888, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %890 = fadd fast <4 x double> %889, %wide.load1482
  %891 = bitcast i8* %886 to <4 x double>*
  store <4 x double> %890, <4 x double>* %891, align 8, !alias.scope !92, !noalias !94
  %index.next1473 = add i64 %index1472, 4
  %892 = icmp eq i64 %index.next1473, %n.vec1471
  br i1 %892, label %middle.block1459, label %vector.body1461, !llvm.loop !177

middle.block1459:                                 ; preds = %vector.body1461
  %cmp.n1475 = icmp eq i64 %872, %n.vec1471
  br i1 %cmp.n1475, label %polly.loop_exit497.3, label %polly.loop_header495.3.preheader

polly.loop_header495.3.preheader:                 ; preds = %polly.loop_header495.preheader.3, %middle.block1459
  %polly.indvar499.3.ph = phi i64 [ 0, %polly.loop_header495.preheader.3 ], [ %n.vec1471, %middle.block1459 ]
  br label %polly.loop_header495.3

polly.loop_header495.3:                           ; preds = %polly.loop_header495.3.preheader, %polly.loop_header495.3
  %polly.indvar499.3 = phi i64 [ %polly.indvar_next500.3, %polly.loop_header495.3 ], [ %polly.indvar499.3.ph, %polly.loop_header495.3.preheader ]
  %893 = add nuw nsw i64 %polly.indvar499.3, %337
  %polly.access.add.Packed_MemRef_call1311503.3 = add nuw nsw i64 %polly.indvar499.3, 3600
  %polly.access.Packed_MemRef_call1311504.3 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503.3
  %_p_scalar_505.3 = load double, double* %polly.access.Packed_MemRef_call1311504.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_509.3, %_p_scalar_505.3
  %polly.access.Packed_MemRef_call2313512.3 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503.3
  %_p_scalar_513.3 = load double, double* %polly.access.Packed_MemRef_call2313512.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_517.3, %_p_scalar_513.3
  %894 = shl i64 %893, 3
  %895 = add i64 %894, %875
  %scevgep518.3 = getelementptr i8, i8* %call, i64 %895
  %scevgep518519.3 = bitcast i8* %scevgep518.3 to double*
  %_p_scalar_520.3 = load double, double* %scevgep518519.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_520.3
  store double %p_add42.i79.3, double* %scevgep518519.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next500.3 = add nuw nsw i64 %polly.indvar499.3, 1
  %exitcond1127.3.not = icmp eq i64 %polly.indvar499.3, %smin1126.3
  br i1 %exitcond1127.3.not, label %polly.loop_exit497.3, label %polly.loop_header495.3, !llvm.loop !178

polly.loop_exit497.3:                             ; preds = %polly.loop_header495.3, %middle.block1459, %polly.loop_header487.3
  %polly.indvar_next492.3 = add nuw nsw i64 %polly.indvar491.3, 1
  %polly.loop_cond493.not.not.3 = icmp slt i64 %polly.indvar491.3, %407
  %indvars.iv.next1125.3 = add i64 %indvars.iv1124.3, 1
  %indvar.next1466 = add i64 %indvar1465, 1
  br i1 %polly.loop_cond493.not.not.3, label %polly.loop_header487.3, label %polly.loop_exit482

polly.loop_header645.1:                           ; preds = %polly.loop_header645, %polly.loop_header645.1
  %polly.indvar648.1 = phi i64 [ %polly.indvar_next649.1, %polly.loop_header645.1 ], [ 0, %polly.loop_header645 ]
  %896 = add nuw nsw i64 %polly.indvar648.1, %512
  %polly.access.mul.call2652.1 = mul nuw nsw i64 %896, 1000
  %polly.access.add.call2653.1 = add nuw nsw i64 %448, %polly.access.mul.call2652.1
  %polly.access.call2654.1 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.1
  %polly.access.call2654.load.1 = load double, double* %polly.access.call2654.1, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.1 = add nuw nsw i64 %polly.indvar648.1, 1200
  %polly.access.Packed_MemRef_call2528.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.1
  store double %polly.access.call2654.load.1, double* %polly.access.Packed_MemRef_call2528.1, align 8
  %polly.indvar_next649.1 = add nuw nsw i64 %polly.indvar648.1, 1
  %exitcond1135.1.not = icmp eq i64 %polly.indvar_next649.1, %indvars.iv1133
  br i1 %exitcond1135.1.not, label %polly.loop_header645.2, label %polly.loop_header645.1

polly.loop_header645.2:                           ; preds = %polly.loop_header645.1, %polly.loop_header645.2
  %polly.indvar648.2 = phi i64 [ %polly.indvar_next649.2, %polly.loop_header645.2 ], [ 0, %polly.loop_header645.1 ]
  %897 = add nuw nsw i64 %polly.indvar648.2, %512
  %polly.access.mul.call2652.2 = mul nuw nsw i64 %897, 1000
  %polly.access.add.call2653.2 = add nuw nsw i64 %449, %polly.access.mul.call2652.2
  %polly.access.call2654.2 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.2
  %polly.access.call2654.load.2 = load double, double* %polly.access.call2654.2, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.2 = add nuw nsw i64 %polly.indvar648.2, 2400
  %polly.access.Packed_MemRef_call2528.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.2
  store double %polly.access.call2654.load.2, double* %polly.access.Packed_MemRef_call2528.2, align 8
  %polly.indvar_next649.2 = add nuw nsw i64 %polly.indvar648.2, 1
  %exitcond1135.2.not = icmp eq i64 %polly.indvar_next649.2, %indvars.iv1133
  br i1 %exitcond1135.2.not, label %polly.loop_header645.3, label %polly.loop_header645.2

polly.loop_header645.3:                           ; preds = %polly.loop_header645.2, %polly.loop_header645.3
  %polly.indvar648.3 = phi i64 [ %polly.indvar_next649.3, %polly.loop_header645.3 ], [ 0, %polly.loop_header645.2 ]
  %898 = add nuw nsw i64 %polly.indvar648.3, %512
  %polly.access.mul.call2652.3 = mul nuw nsw i64 %898, 1000
  %polly.access.add.call2653.3 = add nuw nsw i64 %450, %polly.access.mul.call2652.3
  %polly.access.call2654.3 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653.3
  %polly.access.call2654.load.3 = load double, double* %polly.access.call2654.3, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2528.3 = add nuw nsw i64 %polly.indvar648.3, 3600
  %polly.access.Packed_MemRef_call2528.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.3
  store double %polly.access.call2654.load.3, double* %polly.access.Packed_MemRef_call2528.3, align 8
  %polly.indvar_next649.3 = add nuw nsw i64 %polly.indvar648.3, 1
  %exitcond1135.3.not = icmp eq i64 %polly.indvar_next649.3, %indvars.iv1133
  br i1 %exitcond1135.3.not, label %polly.loop_exit647.3, label %polly.loop_header645.3

polly.loop_exit647.3:                             ; preds = %polly.loop_header645.3
  %899 = add nsw i64 %511, 1199
  br label %polly.loop_header656

polly.loop_header681.1:                           ; preds = %polly.loop_header681, %polly.loop_header681.1
  %polly.indvar685.1 = phi i64 [ %polly.indvar_next686.1, %polly.loop_header681.1 ], [ %570, %polly.loop_header681 ]
  %900 = add nuw nsw i64 %polly.indvar685.1, %512
  %polly.access.mul.call1689.1 = mul nsw i64 %900, 1000
  %polly.access.add.call1690.1 = add nuw nsw i64 %448, %polly.access.mul.call1689.1
  %polly.access.call1691.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.1
  %polly.access.call1691.load.1 = load double, double* %polly.access.call1691.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.1 = add nuw nsw i64 %polly.indvar685.1, 1200
  %polly.access.Packed_MemRef_call1526694.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.1
  store double %polly.access.call1691.load.1, double* %polly.access.Packed_MemRef_call1526694.1, align 8
  %polly.indvar_next686.1 = add nuw nsw i64 %polly.indvar685.1, 1
  %polly.loop_cond687.not.not.1 = icmp slt i64 %polly.indvar685.1, %573
  br i1 %polly.loop_cond687.not.not.1, label %polly.loop_header681.1, label %polly.loop_header681.2

polly.loop_header681.2:                           ; preds = %polly.loop_header681.1, %polly.loop_header681.2
  %polly.indvar685.2 = phi i64 [ %polly.indvar_next686.2, %polly.loop_header681.2 ], [ %570, %polly.loop_header681.1 ]
  %901 = add nuw nsw i64 %polly.indvar685.2, %512
  %polly.access.mul.call1689.2 = mul nsw i64 %901, 1000
  %polly.access.add.call1690.2 = add nuw nsw i64 %449, %polly.access.mul.call1689.2
  %polly.access.call1691.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.2
  %polly.access.call1691.load.2 = load double, double* %polly.access.call1691.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.2 = add nuw nsw i64 %polly.indvar685.2, 2400
  %polly.access.Packed_MemRef_call1526694.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.2
  store double %polly.access.call1691.load.2, double* %polly.access.Packed_MemRef_call1526694.2, align 8
  %polly.indvar_next686.2 = add nuw nsw i64 %polly.indvar685.2, 1
  %polly.loop_cond687.not.not.2 = icmp slt i64 %polly.indvar685.2, %573
  br i1 %polly.loop_cond687.not.not.2, label %polly.loop_header681.2, label %polly.loop_header681.3

polly.loop_header681.3:                           ; preds = %polly.loop_header681.2, %polly.loop_header681.3
  %polly.indvar685.3 = phi i64 [ %polly.indvar_next686.3, %polly.loop_header681.3 ], [ %570, %polly.loop_header681.2 ]
  %902 = add nuw nsw i64 %polly.indvar685.3, %512
  %polly.access.mul.call1689.3 = mul nsw i64 %902, 1000
  %polly.access.add.call1690.3 = add nuw nsw i64 %450, %polly.access.mul.call1689.3
  %polly.access.call1691.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.3
  %polly.access.call1691.load.3 = load double, double* %polly.access.call1691.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.3 = add nuw nsw i64 %polly.indvar685.3, 3600
  %polly.access.Packed_MemRef_call1526694.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.3
  store double %polly.access.call1691.load.3, double* %polly.access.Packed_MemRef_call1526694.3, align 8
  %polly.indvar_next686.3 = add nuw nsw i64 %polly.indvar685.3, 1
  %polly.loop_cond687.not.not.3 = icmp slt i64 %polly.indvar685.3, %573
  br i1 %polly.loop_cond687.not.not.3, label %polly.loop_header681.3, label %polly.loop_header695.preheader

polly.loop_header669.us.1:                        ; preds = %polly.loop_header669.us.1.preheader, %polly.loop_header669.us.1
  %polly.indvar673.us.1 = phi i64 [ %polly.indvar_next674.us.1, %polly.loop_header669.us.1 ], [ 0, %polly.loop_header669.us.1.preheader ]
  %903 = add nuw nsw i64 %polly.indvar673.us.1, %512
  %polly.access.mul.call1677.us.1 = mul nuw nsw i64 %903, 1000
  %polly.access.add.call1678.us.1 = add nuw nsw i64 %448, %polly.access.mul.call1677.us.1
  %polly.access.call1679.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.1
  %polly.access.call1679.load.us.1 = load double, double* %polly.access.call1679.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.1 = add nuw nsw i64 %polly.indvar673.us.1, 1200
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.1
  store double %polly.access.call1679.load.us.1, double* %polly.access.Packed_MemRef_call1526.us.1, align 8
  %polly.indvar_next674.us.1 = add nuw i64 %polly.indvar673.us.1, 1
  %exitcond1138.1.not = icmp eq i64 %polly.indvar673.us.1, %568
  br i1 %exitcond1138.1.not, label %polly.loop_exit671.loopexit.us.1, label %polly.loop_header669.us.1

polly.loop_exit671.loopexit.us.1:                 ; preds = %polly.loop_header669.us.1
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.2.preheader, label %polly.loop_header681.us.1

polly.loop_header681.us.1:                        ; preds = %polly.loop_exit671.loopexit.us.1, %polly.loop_header681.us.1
  %polly.indvar685.us.1 = phi i64 [ %polly.indvar_next686.us.1, %polly.loop_header681.us.1 ], [ %570, %polly.loop_exit671.loopexit.us.1 ]
  %904 = add nuw nsw i64 %polly.indvar685.us.1, %512
  %polly.access.mul.call1689.us.1 = mul nsw i64 %904, 1000
  %polly.access.add.call1690.us.1 = add nuw nsw i64 %448, %polly.access.mul.call1689.us.1
  %polly.access.call1691.us.1 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.1
  %polly.access.call1691.load.us.1 = load double, double* %polly.access.call1691.us.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.1 = add nuw nsw i64 %polly.indvar685.us.1, 1200
  %polly.access.Packed_MemRef_call1526694.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.1
  store double %polly.access.call1691.load.us.1, double* %polly.access.Packed_MemRef_call1526694.us.1, align 8
  %polly.indvar_next686.us.1 = add nuw nsw i64 %polly.indvar685.us.1, 1
  %polly.loop_cond687.not.not.us.1 = icmp slt i64 %polly.indvar685.us.1, %573
  br i1 %polly.loop_cond687.not.not.us.1, label %polly.loop_header681.us.1, label %polly.loop_header669.us.2.preheader

polly.loop_header669.us.2.preheader:              ; preds = %polly.loop_header681.us.1, %polly.loop_exit671.loopexit.us.1
  br label %polly.loop_header669.us.2

polly.loop_header669.us.2:                        ; preds = %polly.loop_header669.us.2.preheader, %polly.loop_header669.us.2
  %polly.indvar673.us.2 = phi i64 [ %polly.indvar_next674.us.2, %polly.loop_header669.us.2 ], [ 0, %polly.loop_header669.us.2.preheader ]
  %905 = add nuw nsw i64 %polly.indvar673.us.2, %512
  %polly.access.mul.call1677.us.2 = mul nuw nsw i64 %905, 1000
  %polly.access.add.call1678.us.2 = add nuw nsw i64 %449, %polly.access.mul.call1677.us.2
  %polly.access.call1679.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.2
  %polly.access.call1679.load.us.2 = load double, double* %polly.access.call1679.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.2 = add nuw nsw i64 %polly.indvar673.us.2, 2400
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.2
  store double %polly.access.call1679.load.us.2, double* %polly.access.Packed_MemRef_call1526.us.2, align 8
  %polly.indvar_next674.us.2 = add nuw i64 %polly.indvar673.us.2, 1
  %exitcond1138.2.not = icmp eq i64 %polly.indvar673.us.2, %568
  br i1 %exitcond1138.2.not, label %polly.loop_exit671.loopexit.us.2, label %polly.loop_header669.us.2

polly.loop_exit671.loopexit.us.2:                 ; preds = %polly.loop_header669.us.2
  br i1 %polly.loop_guard684.not, label %polly.loop_header669.us.3.preheader, label %polly.loop_header681.us.2

polly.loop_header681.us.2:                        ; preds = %polly.loop_exit671.loopexit.us.2, %polly.loop_header681.us.2
  %polly.indvar685.us.2 = phi i64 [ %polly.indvar_next686.us.2, %polly.loop_header681.us.2 ], [ %570, %polly.loop_exit671.loopexit.us.2 ]
  %906 = add nuw nsw i64 %polly.indvar685.us.2, %512
  %polly.access.mul.call1689.us.2 = mul nsw i64 %906, 1000
  %polly.access.add.call1690.us.2 = add nuw nsw i64 %449, %polly.access.mul.call1689.us.2
  %polly.access.call1691.us.2 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.2
  %polly.access.call1691.load.us.2 = load double, double* %polly.access.call1691.us.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.2 = add nuw nsw i64 %polly.indvar685.us.2, 2400
  %polly.access.Packed_MemRef_call1526694.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.2
  store double %polly.access.call1691.load.us.2, double* %polly.access.Packed_MemRef_call1526694.us.2, align 8
  %polly.indvar_next686.us.2 = add nuw nsw i64 %polly.indvar685.us.2, 1
  %polly.loop_cond687.not.not.us.2 = icmp slt i64 %polly.indvar685.us.2, %573
  br i1 %polly.loop_cond687.not.not.us.2, label %polly.loop_header681.us.2, label %polly.loop_header669.us.3.preheader

polly.loop_header669.us.3.preheader:              ; preds = %polly.loop_header681.us.2, %polly.loop_exit671.loopexit.us.2
  br label %polly.loop_header669.us.3

polly.loop_header669.us.3:                        ; preds = %polly.loop_header669.us.3.preheader, %polly.loop_header669.us.3
  %polly.indvar673.us.3 = phi i64 [ %polly.indvar_next674.us.3, %polly.loop_header669.us.3 ], [ 0, %polly.loop_header669.us.3.preheader ]
  %907 = add nuw nsw i64 %polly.indvar673.us.3, %512
  %polly.access.mul.call1677.us.3 = mul nuw nsw i64 %907, 1000
  %polly.access.add.call1678.us.3 = add nuw nsw i64 %450, %polly.access.mul.call1677.us.3
  %polly.access.call1679.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us.3
  %polly.access.call1679.load.us.3 = load double, double* %polly.access.call1679.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526.us.3 = add nuw nsw i64 %polly.indvar673.us.3, 3600
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.3
  store double %polly.access.call1679.load.us.3, double* %polly.access.Packed_MemRef_call1526.us.3, align 8
  %polly.indvar_next674.us.3 = add nuw i64 %polly.indvar673.us.3, 1
  %exitcond1138.3.not = icmp eq i64 %polly.indvar673.us.3, %568
  br i1 %exitcond1138.3.not, label %polly.loop_exit671.loopexit.us.3, label %polly.loop_header669.us.3

polly.loop_exit671.loopexit.us.3:                 ; preds = %polly.loop_header669.us.3
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header681.us.3

polly.loop_header681.us.3:                        ; preds = %polly.loop_exit671.loopexit.us.3, %polly.loop_header681.us.3
  %polly.indvar685.us.3 = phi i64 [ %polly.indvar_next686.us.3, %polly.loop_header681.us.3 ], [ %570, %polly.loop_exit671.loopexit.us.3 ]
  %908 = add nuw nsw i64 %polly.indvar685.us.3, %512
  %polly.access.mul.call1689.us.3 = mul nsw i64 %908, 1000
  %polly.access.add.call1690.us.3 = add nuw nsw i64 %450, %polly.access.mul.call1689.us.3
  %polly.access.call1691.us.3 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us.3
  %polly.access.call1691.load.us.3 = load double, double* %polly.access.call1691.us.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1526693.us.3 = add nuw nsw i64 %polly.indvar685.us.3, 3600
  %polly.access.Packed_MemRef_call1526694.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us.3
  store double %polly.access.call1691.load.us.3, double* %polly.access.Packed_MemRef_call1526694.us.3, align 8
  %polly.indvar_next686.us.3 = add nuw nsw i64 %polly.indvar685.us.3, 1
  %polly.loop_cond687.not.not.us.3 = icmp slt i64 %polly.indvar685.us.3, %573
  br i1 %polly.loop_cond687.not.not.us.3, label %polly.loop_header681.us.3, label %polly.loop_header695.preheader

polly.loop_header702.1:                           ; preds = %polly.loop_exit712, %polly.loop_exit712.1
  %indvar1366 = phi i64 [ %indvar.next1367, %polly.loop_exit712.1 ], [ 0, %polly.loop_exit712 ]
  %indvars.iv1149.1 = phi i64 [ %indvars.iv.next1150.1, %polly.loop_exit712.1 ], [ %564, %polly.loop_exit712 ]
  %polly.indvar706.1 = phi i64 [ %polly.indvar_next707.1, %polly.loop_exit712.1 ], [ %578, %polly.loop_exit712 ]
  %909 = add i64 %533, %indvar1366
  %smin1383 = call i64 @llvm.smin.i64(i64 %909, i64 127)
  %910 = add nsw i64 %smin1383, 1
  %911 = mul nuw nsw i64 %indvar1366, 9600
  %912 = add i64 %540, %911
  %scevgep1368 = getelementptr i8, i8* %call, i64 %912
  %913 = add i64 %541, %911
  %scevgep1369 = getelementptr i8, i8* %call, i64 %913
  %914 = add i64 %543, %indvar1366
  %smin1370 = call i64 @llvm.smin.i64(i64 %914, i64 127)
  %915 = shl nsw i64 %smin1370, 3
  %scevgep1371 = getelementptr i8, i8* %scevgep1369, i64 %915
  %scevgep1374 = getelementptr i8, i8* %scevgep1373, i64 %915
  %smin1151.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1149.1, i64 127)
  %916 = add nsw i64 %polly.indvar706.1, %566
  %polly.loop_guard713.11204 = icmp sgt i64 %916, -1
  br i1 %polly.loop_guard713.11204, label %polly.loop_header710.preheader.1, label %polly.loop_exit712.1

polly.loop_header710.preheader.1:                 ; preds = %polly.loop_header702.1
  %917 = add nuw nsw i64 %polly.indvar706.1, %565
  %polly.access.add.Packed_MemRef_call2528722.1 = add nuw nsw i64 %916, 1200
  %polly.access.Packed_MemRef_call2528723.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.1
  %_p_scalar_724.1 = load double, double* %polly.access.Packed_MemRef_call2528723.1, align 8
  %polly.access.Packed_MemRef_call1526731.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.1
  %_p_scalar_732.1 = load double, double* %polly.access.Packed_MemRef_call1526731.1, align 8
  %918 = mul i64 %917, 9600
  %min.iters.check1384 = icmp ult i64 %910, 4
  br i1 %min.iters.check1384, label %polly.loop_header710.1.preheader, label %vector.memcheck1364

vector.memcheck1364:                              ; preds = %polly.loop_header710.preheader.1
  %bound01375 = icmp ult i8* %scevgep1368, %scevgep1374
  %bound11376 = icmp ult i8* %scevgep1372, %scevgep1371
  %found.conflict1377 = and i1 %bound01375, %bound11376
  br i1 %found.conflict1377, label %polly.loop_header710.1.preheader, label %vector.ph1385

vector.ph1385:                                    ; preds = %vector.memcheck1364
  %n.vec1387 = and i64 %910, -4
  %broadcast.splatinsert1393 = insertelement <4 x double> poison, double %_p_scalar_724.1, i32 0
  %broadcast.splat1394 = shufflevector <4 x double> %broadcast.splatinsert1393, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1396 = insertelement <4 x double> poison, double %_p_scalar_732.1, i32 0
  %broadcast.splat1397 = shufflevector <4 x double> %broadcast.splatinsert1396, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1381

vector.body1381:                                  ; preds = %vector.body1381, %vector.ph1385
  %index1388 = phi i64 [ 0, %vector.ph1385 ], [ %index.next1389, %vector.body1381 ]
  %919 = add nuw nsw i64 %index1388, %512
  %920 = add nuw nsw i64 %index1388, 1200
  %921 = getelementptr double, double* %Packed_MemRef_call1526, i64 %920
  %922 = bitcast double* %921 to <4 x double>*
  %wide.load1392 = load <4 x double>, <4 x double>* %922, align 8, !alias.scope !179
  %923 = fmul fast <4 x double> %broadcast.splat1394, %wide.load1392
  %924 = getelementptr double, double* %Packed_MemRef_call2528, i64 %920
  %925 = bitcast double* %924 to <4 x double>*
  %wide.load1395 = load <4 x double>, <4 x double>* %925, align 8
  %926 = fmul fast <4 x double> %broadcast.splat1397, %wide.load1395
  %927 = shl i64 %919, 3
  %928 = add i64 %927, %918
  %929 = getelementptr i8, i8* %call, i64 %928
  %930 = bitcast i8* %929 to <4 x double>*
  %wide.load1398 = load <4 x double>, <4 x double>* %930, align 8, !alias.scope !182, !noalias !184
  %931 = fadd fast <4 x double> %926, %923
  %932 = fmul fast <4 x double> %931, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %933 = fadd fast <4 x double> %932, %wide.load1398
  %934 = bitcast i8* %929 to <4 x double>*
  store <4 x double> %933, <4 x double>* %934, align 8, !alias.scope !182, !noalias !184
  %index.next1389 = add i64 %index1388, 4
  %935 = icmp eq i64 %index.next1389, %n.vec1387
  br i1 %935, label %middle.block1379, label %vector.body1381, !llvm.loop !185

middle.block1379:                                 ; preds = %vector.body1381
  %cmp.n1391 = icmp eq i64 %910, %n.vec1387
  br i1 %cmp.n1391, label %polly.loop_exit712.1, label %polly.loop_header710.1.preheader

polly.loop_header710.1.preheader:                 ; preds = %vector.memcheck1364, %polly.loop_header710.preheader.1, %middle.block1379
  %polly.indvar714.1.ph = phi i64 [ 0, %vector.memcheck1364 ], [ 0, %polly.loop_header710.preheader.1 ], [ %n.vec1387, %middle.block1379 ]
  br label %polly.loop_header710.1

polly.loop_header710.1:                           ; preds = %polly.loop_header710.1.preheader, %polly.loop_header710.1
  %polly.indvar714.1 = phi i64 [ %polly.indvar_next715.1, %polly.loop_header710.1 ], [ %polly.indvar714.1.ph, %polly.loop_header710.1.preheader ]
  %936 = add nuw nsw i64 %polly.indvar714.1, %512
  %polly.access.add.Packed_MemRef_call1526718.1 = add nuw nsw i64 %polly.indvar714.1, 1200
  %polly.access.Packed_MemRef_call1526719.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.1
  %_p_scalar_720.1 = load double, double* %polly.access.Packed_MemRef_call1526719.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_724.1, %_p_scalar_720.1
  %polly.access.Packed_MemRef_call2528727.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.1
  %_p_scalar_728.1 = load double, double* %polly.access.Packed_MemRef_call2528727.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_732.1, %_p_scalar_728.1
  %937 = shl i64 %936, 3
  %938 = add i64 %937, %918
  %scevgep733.1 = getelementptr i8, i8* %call, i64 %938
  %scevgep733734.1 = bitcast i8* %scevgep733.1 to double*
  %_p_scalar_735.1 = load double, double* %scevgep733734.1, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_735.1
  store double %p_add42.i.1, double* %scevgep733734.1, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.1 = add nuw nsw i64 %polly.indvar714.1, 1
  %exitcond1152.1.not = icmp eq i64 %polly.indvar714.1, %smin1151.1
  br i1 %exitcond1152.1.not, label %polly.loop_exit712.1, label %polly.loop_header710.1, !llvm.loop !186

polly.loop_exit712.1:                             ; preds = %polly.loop_header710.1, %middle.block1379, %polly.loop_header702.1
  %polly.indvar_next707.1 = add nuw nsw i64 %polly.indvar706.1, 1
  %polly.loop_cond708.not.not.1 = icmp slt i64 %polly.indvar706.1, %582
  %indvars.iv.next1150.1 = add i64 %indvars.iv1149.1, 1
  %indvar.next1367 = add i64 %indvar1366, 1
  br i1 %polly.loop_cond708.not.not.1, label %polly.loop_header702.1, label %polly.loop_header702.2

polly.loop_header702.2:                           ; preds = %polly.loop_exit712.1, %polly.loop_exit712.2
  %indvar1331 = phi i64 [ %indvar.next1332, %polly.loop_exit712.2 ], [ 0, %polly.loop_exit712.1 ]
  %indvars.iv1149.2 = phi i64 [ %indvars.iv.next1150.2, %polly.loop_exit712.2 ], [ %564, %polly.loop_exit712.1 ]
  %polly.indvar706.2 = phi i64 [ %polly.indvar_next707.2, %polly.loop_exit712.2 ], [ %578, %polly.loop_exit712.1 ]
  %939 = add i64 %548, %indvar1331
  %smin1348 = call i64 @llvm.smin.i64(i64 %939, i64 127)
  %940 = add nsw i64 %smin1348, 1
  %941 = mul nuw nsw i64 %indvar1331, 9600
  %942 = add i64 %555, %941
  %scevgep1333 = getelementptr i8, i8* %call, i64 %942
  %943 = add i64 %556, %941
  %scevgep1334 = getelementptr i8, i8* %call, i64 %943
  %944 = add i64 %558, %indvar1331
  %smin1335 = call i64 @llvm.smin.i64(i64 %944, i64 127)
  %945 = shl nsw i64 %smin1335, 3
  %scevgep1336 = getelementptr i8, i8* %scevgep1334, i64 %945
  %scevgep1339 = getelementptr i8, i8* %scevgep1338, i64 %945
  %smin1151.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1149.2, i64 127)
  %946 = add nsw i64 %polly.indvar706.2, %566
  %polly.loop_guard713.21205 = icmp sgt i64 %946, -1
  br i1 %polly.loop_guard713.21205, label %polly.loop_header710.preheader.2, label %polly.loop_exit712.2

polly.loop_header710.preheader.2:                 ; preds = %polly.loop_header702.2
  %947 = add nuw nsw i64 %polly.indvar706.2, %565
  %polly.access.add.Packed_MemRef_call2528722.2 = add nuw nsw i64 %946, 2400
  %polly.access.Packed_MemRef_call2528723.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.2
  %_p_scalar_724.2 = load double, double* %polly.access.Packed_MemRef_call2528723.2, align 8
  %polly.access.Packed_MemRef_call1526731.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.2
  %_p_scalar_732.2 = load double, double* %polly.access.Packed_MemRef_call1526731.2, align 8
  %948 = mul i64 %947, 9600
  %min.iters.check1349 = icmp ult i64 %940, 4
  br i1 %min.iters.check1349, label %polly.loop_header710.2.preheader, label %vector.memcheck1329

vector.memcheck1329:                              ; preds = %polly.loop_header710.preheader.2
  %bound01340 = icmp ult i8* %scevgep1333, %scevgep1339
  %bound11341 = icmp ult i8* %scevgep1337, %scevgep1336
  %found.conflict1342 = and i1 %bound01340, %bound11341
  br i1 %found.conflict1342, label %polly.loop_header710.2.preheader, label %vector.ph1350

vector.ph1350:                                    ; preds = %vector.memcheck1329
  %n.vec1352 = and i64 %940, -4
  %broadcast.splatinsert1358 = insertelement <4 x double> poison, double %_p_scalar_724.2, i32 0
  %broadcast.splat1359 = shufflevector <4 x double> %broadcast.splatinsert1358, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1361 = insertelement <4 x double> poison, double %_p_scalar_732.2, i32 0
  %broadcast.splat1362 = shufflevector <4 x double> %broadcast.splatinsert1361, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1346

vector.body1346:                                  ; preds = %vector.body1346, %vector.ph1350
  %index1353 = phi i64 [ 0, %vector.ph1350 ], [ %index.next1354, %vector.body1346 ]
  %949 = add nuw nsw i64 %index1353, %512
  %950 = add nuw nsw i64 %index1353, 2400
  %951 = getelementptr double, double* %Packed_MemRef_call1526, i64 %950
  %952 = bitcast double* %951 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %952, align 8, !alias.scope !187
  %953 = fmul fast <4 x double> %broadcast.splat1359, %wide.load1357
  %954 = getelementptr double, double* %Packed_MemRef_call2528, i64 %950
  %955 = bitcast double* %954 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %955, align 8
  %956 = fmul fast <4 x double> %broadcast.splat1362, %wide.load1360
  %957 = shl i64 %949, 3
  %958 = add i64 %957, %948
  %959 = getelementptr i8, i8* %call, i64 %958
  %960 = bitcast i8* %959 to <4 x double>*
  %wide.load1363 = load <4 x double>, <4 x double>* %960, align 8, !alias.scope !190, !noalias !192
  %961 = fadd fast <4 x double> %956, %953
  %962 = fmul fast <4 x double> %961, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %963 = fadd fast <4 x double> %962, %wide.load1363
  %964 = bitcast i8* %959 to <4 x double>*
  store <4 x double> %963, <4 x double>* %964, align 8, !alias.scope !190, !noalias !192
  %index.next1354 = add i64 %index1353, 4
  %965 = icmp eq i64 %index.next1354, %n.vec1352
  br i1 %965, label %middle.block1344, label %vector.body1346, !llvm.loop !193

middle.block1344:                                 ; preds = %vector.body1346
  %cmp.n1356 = icmp eq i64 %940, %n.vec1352
  br i1 %cmp.n1356, label %polly.loop_exit712.2, label %polly.loop_header710.2.preheader

polly.loop_header710.2.preheader:                 ; preds = %vector.memcheck1329, %polly.loop_header710.preheader.2, %middle.block1344
  %polly.indvar714.2.ph = phi i64 [ 0, %vector.memcheck1329 ], [ 0, %polly.loop_header710.preheader.2 ], [ %n.vec1352, %middle.block1344 ]
  br label %polly.loop_header710.2

polly.loop_header710.2:                           ; preds = %polly.loop_header710.2.preheader, %polly.loop_header710.2
  %polly.indvar714.2 = phi i64 [ %polly.indvar_next715.2, %polly.loop_header710.2 ], [ %polly.indvar714.2.ph, %polly.loop_header710.2.preheader ]
  %966 = add nuw nsw i64 %polly.indvar714.2, %512
  %polly.access.add.Packed_MemRef_call1526718.2 = add nuw nsw i64 %polly.indvar714.2, 2400
  %polly.access.Packed_MemRef_call1526719.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.2
  %_p_scalar_720.2 = load double, double* %polly.access.Packed_MemRef_call1526719.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_724.2, %_p_scalar_720.2
  %polly.access.Packed_MemRef_call2528727.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.2
  %_p_scalar_728.2 = load double, double* %polly.access.Packed_MemRef_call2528727.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_732.2, %_p_scalar_728.2
  %967 = shl i64 %966, 3
  %968 = add i64 %967, %948
  %scevgep733.2 = getelementptr i8, i8* %call, i64 %968
  %scevgep733734.2 = bitcast i8* %scevgep733.2 to double*
  %_p_scalar_735.2 = load double, double* %scevgep733734.2, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_735.2
  store double %p_add42.i.2, double* %scevgep733734.2, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.2 = add nuw nsw i64 %polly.indvar714.2, 1
  %exitcond1152.2.not = icmp eq i64 %polly.indvar714.2, %smin1151.2
  br i1 %exitcond1152.2.not, label %polly.loop_exit712.2, label %polly.loop_header710.2, !llvm.loop !194

polly.loop_exit712.2:                             ; preds = %polly.loop_header710.2, %middle.block1344, %polly.loop_header702.2
  %polly.indvar_next707.2 = add nuw nsw i64 %polly.indvar706.2, 1
  %polly.loop_cond708.not.not.2 = icmp slt i64 %polly.indvar706.2, %582
  %indvars.iv.next1150.2 = add i64 %indvars.iv1149.2, 1
  %indvar.next1332 = add i64 %indvar1331, 1
  br i1 %polly.loop_cond708.not.not.2, label %polly.loop_header702.2, label %polly.loop_header702.3

polly.loop_header702.3:                           ; preds = %polly.loop_exit712.2, %polly.loop_exit712.3
  %indvar1311 = phi i64 [ %indvar.next1312, %polly.loop_exit712.3 ], [ 0, %polly.loop_exit712.2 ]
  %indvars.iv1149.3 = phi i64 [ %indvars.iv.next1150.3, %polly.loop_exit712.3 ], [ %564, %polly.loop_exit712.2 ]
  %polly.indvar706.3 = phi i64 [ %polly.indvar_next707.3, %polly.loop_exit712.3 ], [ %578, %polly.loop_exit712.2 ]
  %969 = add i64 %563, %indvar1311
  %smin1313 = call i64 @llvm.smin.i64(i64 %969, i64 127)
  %970 = add nsw i64 %smin1313, 1
  %smin1151.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1149.3, i64 127)
  %971 = add nsw i64 %polly.indvar706.3, %566
  %polly.loop_guard713.31206 = icmp sgt i64 %971, -1
  br i1 %polly.loop_guard713.31206, label %polly.loop_header710.preheader.3, label %polly.loop_exit712.3

polly.loop_header710.preheader.3:                 ; preds = %polly.loop_header702.3
  %972 = add nuw nsw i64 %polly.indvar706.3, %565
  %polly.access.add.Packed_MemRef_call2528722.3 = add nuw nsw i64 %971, 3600
  %polly.access.Packed_MemRef_call2528723.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722.3
  %_p_scalar_724.3 = load double, double* %polly.access.Packed_MemRef_call2528723.3, align 8
  %polly.access.Packed_MemRef_call1526731.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722.3
  %_p_scalar_732.3 = load double, double* %polly.access.Packed_MemRef_call1526731.3, align 8
  %973 = mul i64 %972, 9600
  %min.iters.check1314 = icmp ult i64 %970, 4
  br i1 %min.iters.check1314, label %polly.loop_header710.3.preheader, label %vector.ph1315

vector.ph1315:                                    ; preds = %polly.loop_header710.preheader.3
  %n.vec1317 = and i64 %970, -4
  %broadcast.splatinsert1323 = insertelement <4 x double> poison, double %_p_scalar_724.3, i32 0
  %broadcast.splat1324 = shufflevector <4 x double> %broadcast.splatinsert1323, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1326 = insertelement <4 x double> poison, double %_p_scalar_732.3, i32 0
  %broadcast.splat1327 = shufflevector <4 x double> %broadcast.splatinsert1326, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1315
  %index1318 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1319, %vector.body1307 ]
  %974 = add nuw nsw i64 %index1318, %512
  %975 = add nuw nsw i64 %index1318, 3600
  %976 = getelementptr double, double* %Packed_MemRef_call1526, i64 %975
  %977 = bitcast double* %976 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %977, align 8
  %978 = fmul fast <4 x double> %broadcast.splat1324, %wide.load1322
  %979 = getelementptr double, double* %Packed_MemRef_call2528, i64 %975
  %980 = bitcast double* %979 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %980, align 8
  %981 = fmul fast <4 x double> %broadcast.splat1327, %wide.load1325
  %982 = shl i64 %974, 3
  %983 = add i64 %982, %973
  %984 = getelementptr i8, i8* %call, i64 %983
  %985 = bitcast i8* %984 to <4 x double>*
  %wide.load1328 = load <4 x double>, <4 x double>* %985, align 8, !alias.scope !111, !noalias !113
  %986 = fadd fast <4 x double> %981, %978
  %987 = fmul fast <4 x double> %986, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %988 = fadd fast <4 x double> %987, %wide.load1328
  %989 = bitcast i8* %984 to <4 x double>*
  store <4 x double> %988, <4 x double>* %989, align 8, !alias.scope !111, !noalias !113
  %index.next1319 = add i64 %index1318, 4
  %990 = icmp eq i64 %index.next1319, %n.vec1317
  br i1 %990, label %middle.block1305, label %vector.body1307, !llvm.loop !195

middle.block1305:                                 ; preds = %vector.body1307
  %cmp.n1321 = icmp eq i64 %970, %n.vec1317
  br i1 %cmp.n1321, label %polly.loop_exit712.3, label %polly.loop_header710.3.preheader

polly.loop_header710.3.preheader:                 ; preds = %polly.loop_header710.preheader.3, %middle.block1305
  %polly.indvar714.3.ph = phi i64 [ 0, %polly.loop_header710.preheader.3 ], [ %n.vec1317, %middle.block1305 ]
  br label %polly.loop_header710.3

polly.loop_header710.3:                           ; preds = %polly.loop_header710.3.preheader, %polly.loop_header710.3
  %polly.indvar714.3 = phi i64 [ %polly.indvar_next715.3, %polly.loop_header710.3 ], [ %polly.indvar714.3.ph, %polly.loop_header710.3.preheader ]
  %991 = add nuw nsw i64 %polly.indvar714.3, %512
  %polly.access.add.Packed_MemRef_call1526718.3 = add nuw nsw i64 %polly.indvar714.3, 3600
  %polly.access.Packed_MemRef_call1526719.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718.3
  %_p_scalar_720.3 = load double, double* %polly.access.Packed_MemRef_call1526719.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_724.3, %_p_scalar_720.3
  %polly.access.Packed_MemRef_call2528727.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718.3
  %_p_scalar_728.3 = load double, double* %polly.access.Packed_MemRef_call2528727.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_732.3, %_p_scalar_728.3
  %992 = shl i64 %991, 3
  %993 = add i64 %992, %973
  %scevgep733.3 = getelementptr i8, i8* %call, i64 %993
  %scevgep733734.3 = bitcast i8* %scevgep733.3 to double*
  %_p_scalar_735.3 = load double, double* %scevgep733734.3, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_735.3
  store double %p_add42.i.3, double* %scevgep733734.3, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next715.3 = add nuw nsw i64 %polly.indvar714.3, 1
  %exitcond1152.3.not = icmp eq i64 %polly.indvar714.3, %smin1151.3
  br i1 %exitcond1152.3.not, label %polly.loop_exit712.3, label %polly.loop_header710.3, !llvm.loop !196

polly.loop_exit712.3:                             ; preds = %polly.loop_header710.3, %middle.block1305, %polly.loop_header702.3
  %polly.indvar_next707.3 = add nuw nsw i64 %polly.indvar706.3, 1
  %polly.loop_cond708.not.not.3 = icmp slt i64 %polly.indvar706.3, %582
  %indvars.iv.next1150.3 = add i64 %indvars.iv1149.3, 1
  %indvar.next1312 = add i64 %indvar1311, 1
  br i1 %polly.loop_cond708.not.not.3, label %polly.loop_header702.3, label %polly.loop_exit697
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
!84 = !{!85}
!85 = distinct !{!85, !86}
!86 = distinct !{!86, !"LVerDomain"}
!87 = !{!72, !73, !"polly.alias.scope.MemRef_call", !88}
!88 = distinct !{!88, !86}
!89 = !{!75, !76, !77, !78, !85}
!90 = distinct !{!90, !13}
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
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!92, !93, !"polly.alias.scope.MemRef_call", !107}
!107 = distinct !{!107, !105}
!108 = !{!95, !96, !97, !98, !104}
!109 = distinct !{!109, !13}
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
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!111, !112, !"polly.alias.scope.MemRef_call", !126}
!126 = distinct !{!126, !124}
!127 = !{!114, !115, !116, !117, !123}
!128 = distinct !{!128, !13}
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
