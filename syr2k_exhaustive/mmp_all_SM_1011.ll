; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1011.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1011.c"
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
  br i1 %min.iters.check1285, label %for.body3.i46.preheader1440, label %vector.ph1286

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
  br i1 %cmp.n1292, label %for.inc6.i, label %for.body3.i46.preheader1440

for.body3.i46.preheader1440:                      ; preds = %for.body3.i46.preheader, %middle.block1282
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1288, %middle.block1282 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1440, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1440 ]
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
  %min.iters.check1332 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1332, label %for.body3.i60.preheader1436, label %vector.ph1333

vector.ph1333:                                    ; preds = %for.body3.i60.preheader
  %n.vec1335 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %vector.ph1333
  %index1336 = phi i64 [ 0, %vector.ph1333 ], [ %index.next1337, %vector.body1331 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %index1336
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1340 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1340, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1337 = add i64 %index1336, 4
  %57 = icmp eq i64 %index.next1337, %n.vec1335
  br i1 %57, label %middle.block1329, label %vector.body1331, !llvm.loop !64

middle.block1329:                                 ; preds = %vector.body1331
  %cmp.n1339 = icmp eq i64 %indvars.iv21.i52, %n.vec1335
  br i1 %cmp.n1339, label %for.inc6.i63, label %for.body3.i60.preheader1436

for.body3.i60.preheader1436:                      ; preds = %for.body3.i60.preheader, %middle.block1329
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1335, %middle.block1329 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1436, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1436 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1329, %for.cond1.preheader.i54
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
  %min.iters.check1382 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1382, label %for.body3.i99.preheader1432, label %vector.ph1383

vector.ph1383:                                    ; preds = %for.body3.i99.preheader
  %n.vec1385 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1381

vector.body1381:                                  ; preds = %vector.body1381, %vector.ph1383
  %index1386 = phi i64 [ 0, %vector.ph1383 ], [ %index.next1387, %vector.body1381 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %index1386
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1390 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1390, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1387 = add i64 %index1386, 4
  %68 = icmp eq i64 %index.next1387, %n.vec1385
  br i1 %68, label %middle.block1379, label %vector.body1381, !llvm.loop !66

middle.block1379:                                 ; preds = %vector.body1381
  %cmp.n1389 = icmp eq i64 %indvars.iv21.i91, %n.vec1385
  br i1 %cmp.n1389, label %for.inc6.i102, label %for.body3.i99.preheader1432

for.body3.i99.preheader1432:                      ; preds = %for.body3.i99.preheader, %middle.block1379
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1385, %middle.block1379 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1432, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1432 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call888, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1379, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall136 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1394 = phi i64 [ %indvar.next1395, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1394, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1396 = icmp ult i64 %88, 4
  br i1 %min.iters.check1396, label %polly.loop_header192.preheader, label %vector.ph1397

vector.ph1397:                                    ; preds = %polly.loop_header
  %n.vec1399 = and i64 %88, -4
  br label %vector.body1393

vector.body1393:                                  ; preds = %vector.body1393, %vector.ph1397
  %index1400 = phi i64 [ 0, %vector.ph1397 ], [ %index.next1401, %vector.body1393 ]
  %90 = shl nuw nsw i64 %index1400, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1404 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1404, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1401 = add i64 %index1400, 4
  %95 = icmp eq i64 %index.next1401, %n.vec1399
  br i1 %95, label %middle.block1391, label %vector.body1393, !llvm.loop !79

middle.block1391:                                 ; preds = %vector.body1393
  %cmp.n1403 = icmp eq i64 %88, %n.vec1399
  br i1 %cmp.n1403, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1391
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1399, %middle.block1391 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1391
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1395 = add i64 %indvar1394, 1
  br i1 %exitcond1109.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1108.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1108.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 20
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next204, 50
  br i1 %exitcond1107.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit230 ], [ 2, %polly.loop_header200 ]
  %indvars.iv1092 = phi i64 [ %indvars.iv.next1093, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = mul nsw i64 %polly.indvar209, -32
  %99 = add nuw i64 %polly.indvar209, 2
  %100 = udiv i64 %99, 3
  %101 = mul nuw nsw i64 %100, 96
  %102 = add i64 %98, %101
  %103 = shl nuw nsw i64 %polly.indvar209, 5
  %104 = sub nsw i64 %103, %101
  %105 = udiv i64 %indvars.iv1094, 3
  %106 = mul nuw nsw i64 %105, 96
  %107 = add i64 %indvars.iv1092, %106
  %108 = sub nsw i64 %indvars.iv1098, %106
  %109 = mul nsw i64 %polly.indvar209, -256
  %110 = shl nsw i64 %polly.indvar209, 8
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %111 = add nsw i64 %109, 1199
  %112 = mul nuw nsw i64 %polly.indvar209, 3
  %113 = add nuw nsw i64 %polly.indvar209, 2
  %pexp.p_div_q = udiv i64 %113, 3
  %114 = sub nsw i64 %112, %pexp.p_div_q
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit267
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next1093 = add nsw i64 %indvars.iv1092, -32
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 1
  %indvars.iv.next1099 = add nuw nsw i64 %indvars.iv1098, 32
  %exitcond1106.not = icmp eq i64 %polly.indvar_next210, 5
  br i1 %exitcond1106.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %115 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1088.not = icmp eq i64 %polly.indvar_next216, 20
  br i1 %exitcond1088.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %116 = add nuw nsw i64 %polly.indvar221, %110
  %polly.access.mul.call2225 = mul nuw nsw i64 %116, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %115, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit267, %polly.loop_exit214
  %indvar1408 = phi i64 [ %indvar.next1409, %polly.loop_exit267 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit267 ], [ %108, %polly.loop_exit214 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit267 ], [ %107, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit267 ], [ %114, %polly.loop_exit214 ]
  %117 = mul nsw i64 %indvar1408, -96
  %118 = add i64 %102, %117
  %smax1410 = call i64 @llvm.smax.i64(i64 %118, i64 0)
  %119 = mul nuw nsw i64 %indvar1408, 96
  %120 = add i64 %104, %119
  %121 = add i64 %smax1410, %120
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1096, i64 0)
  %122 = add i64 %smax, %indvars.iv1100
  %123 = mul nsw i64 %polly.indvar231, 96
  %124 = add nsw i64 %123, %109
  %125 = add nsw i64 %124, -1
  %.inv = icmp sgt i64 %124, 255
  %126 = select i1 %.inv, i64 255, i64 %125
  %polly.loop_guard = icmp sgt i64 %126, -1
  %127 = icmp sgt i64 %124, 0
  %128 = select i1 %127, i64 %124, i64 0
  %129 = add nsw i64 %124, 95
  %130 = icmp slt i64 %111, %129
  %131 = select i1 %130, i64 %111, i64 %129
  %polly.loop_guard254.not = icmp sgt i64 %128, %131
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header228 ]
  %132 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %133 = add nuw nsw i64 %polly.indvar243.us, %110
  %polly.access.mul.call1247.us = mul nuw nsw i64 %133, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %132, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar243.us, %126
  br i1 %exitcond1090.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %128, %polly.loop_exit242.loopexit.us ]
  %134 = add nuw nsw i64 %polly.indvar255.us, %110
  %polly.access.mul.call1259.us = mul nsw i64 %134, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %132, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nuw nsw i64 %polly.indvar255.us, 1
  %polly.loop_cond257.not.not.us = icmp slt i64 %polly.indvar255.us, %131
  br i1 %polly.loop_cond257.not.not.us, label %polly.loop_header251.us, label %polly.loop_exit253.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us, %polly.loop_exit242.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next238.us, 20
  br i1 %exitcond1091.not, label %polly.loop_header265.preheader, label %polly.loop_header234.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard254.not, label %polly.loop_exit253.us, label %polly.loop_header251.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard254.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_exit267:                               ; preds = %polly.loop_exit274, %polly.loop_header265.preheader
  %polly.indvar_next232 = add nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp slt i64 %polly.indvar231, 12
  %indvars.iv.next1097 = add i64 %indvars.iv1096, -96
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 96
  %indvar.next1409 = add i64 %indvar1408, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header228.split ]
  %135 = add nuw nsw i64 %polly.indvar237, %97
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next238, 20
  br i1 %exitcond1089.not, label %polly.loop_header265.preheader, label %polly.loop_header234

polly.loop_header265.preheader:                   ; preds = %polly.loop_exit253, %polly.loop_exit253.us, %polly.loop_header228.split
  %136 = sub nsw i64 %110, %123
  %137 = icmp sgt i64 %136, 0
  %138 = select i1 %137, i64 %136, i64 0
  %139 = mul nsw i64 %polly.indvar231, -96
  %140 = icmp slt i64 %139, -1104
  %141 = select i1 %140, i64 %139, i64 -1104
  %142 = add nsw i64 %141, 1199
  %polly.loop_guard275.not = icmp sgt i64 %138, %142
  br i1 %polly.loop_guard275.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %128, %polly.loop_header234 ]
  %143 = add nuw nsw i64 %polly.indvar255, %110
  %polly.access.mul.call1259 = mul nsw i64 %143, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %135, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263 = add nuw nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nuw nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %131
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.loop_header265:                             ; preds = %polly.loop_header265.preheader, %polly.loop_exit274
  %polly.indvar268 = phi i64 [ %polly.indvar_next269, %polly.loop_exit274 ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1287 = mul nuw nsw i64 %polly.indvar268, 1200
  br label %polly.loop_header272

polly.loop_exit274:                               ; preds = %polly.loop_exit282
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next269, 20
  br i1 %exitcond1105.not, label %polly.loop_exit267, label %polly.loop_header265

polly.loop_header272:                             ; preds = %polly.loop_header265, %polly.loop_exit282
  %indvar1411 = phi i64 [ 0, %polly.loop_header265 ], [ %indvar.next1412, %polly.loop_exit282 ]
  %indvars.iv1102 = phi i64 [ %122, %polly.loop_header265 ], [ %indvars.iv.next1103, %polly.loop_exit282 ]
  %polly.indvar276 = phi i64 [ %138, %polly.loop_header265 ], [ %polly.indvar_next277, %polly.loop_exit282 ]
  %144 = add i64 %121, %indvar1411
  %smin1413 = call i64 @llvm.smin.i64(i64 %144, i64 255)
  %145 = add nsw i64 %smin1413, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1102, i64 255)
  %146 = add nsw i64 %polly.indvar276, %124
  %polly.loop_guard2831201 = icmp sgt i64 %146, -1
  br i1 %polly.loop_guard2831201, label %polly.loop_header280.preheader, label %polly.loop_exit282

polly.loop_header280.preheader:                   ; preds = %polly.loop_header272
  %147 = add nsw i64 %polly.indvar276, %123
  %polly.access.add.Packed_MemRef_call2292 = add nsw i64 %146, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call2293 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2292
  %_p_scalar_294 = load double, double* %polly.access.Packed_MemRef_call2293, align 8
  %polly.access.Packed_MemRef_call1301 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2292
  %_p_scalar_302 = load double, double* %polly.access.Packed_MemRef_call1301, align 8
  %148 = mul i64 %147, 9600
  %min.iters.check1414 = icmp ult i64 %145, 4
  br i1 %min.iters.check1414, label %polly.loop_header280.preheader1429, label %vector.ph1415

vector.ph1415:                                    ; preds = %polly.loop_header280.preheader
  %n.vec1417 = and i64 %145, -4
  %broadcast.splatinsert1423 = insertelement <4 x double> poison, double %_p_scalar_294, i32 0
  %broadcast.splat1424 = shufflevector <4 x double> %broadcast.splatinsert1423, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1426 = insertelement <4 x double> poison, double %_p_scalar_302, i32 0
  %broadcast.splat1427 = shufflevector <4 x double> %broadcast.splatinsert1426, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1407

vector.body1407:                                  ; preds = %vector.body1407, %vector.ph1415
  %index1418 = phi i64 [ 0, %vector.ph1415 ], [ %index.next1419, %vector.body1407 ]
  %149 = add nuw nsw i64 %index1418, %110
  %150 = add nuw nsw i64 %index1418, %polly.access.mul.Packed_MemRef_call1287
  %151 = getelementptr double, double* %Packed_MemRef_call1, i64 %150
  %152 = bitcast double* %151 to <4 x double>*
  %wide.load1422 = load <4 x double>, <4 x double>* %152, align 8
  %153 = fmul fast <4 x double> %broadcast.splat1424, %wide.load1422
  %154 = getelementptr double, double* %Packed_MemRef_call2, i64 %150
  %155 = bitcast double* %154 to <4 x double>*
  %wide.load1425 = load <4 x double>, <4 x double>* %155, align 8
  %156 = fmul fast <4 x double> %broadcast.splat1427, %wide.load1425
  %157 = shl i64 %149, 3
  %158 = add i64 %157, %148
  %159 = getelementptr i8, i8* %call, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1428 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !72, !noalias !74
  %161 = fadd fast <4 x double> %156, %153
  %162 = fmul fast <4 x double> %161, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %163 = fadd fast <4 x double> %162, %wide.load1428
  %164 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %163, <4 x double>* %164, align 8, !alias.scope !72, !noalias !74
  %index.next1419 = add i64 %index1418, 4
  %165 = icmp eq i64 %index.next1419, %n.vec1417
  br i1 %165, label %middle.block1405, label %vector.body1407, !llvm.loop !84

middle.block1405:                                 ; preds = %vector.body1407
  %cmp.n1421 = icmp eq i64 %145, %n.vec1417
  br i1 %cmp.n1421, label %polly.loop_exit282, label %polly.loop_header280.preheader1429

polly.loop_header280.preheader1429:               ; preds = %polly.loop_header280.preheader, %middle.block1405
  %polly.indvar284.ph = phi i64 [ 0, %polly.loop_header280.preheader ], [ %n.vec1417, %middle.block1405 ]
  br label %polly.loop_header280

polly.loop_exit282:                               ; preds = %polly.loop_header280, %middle.block1405, %polly.loop_header272
  %polly.indvar_next277 = add nuw nsw i64 %polly.indvar276, 1
  %polly.loop_cond278.not.not = icmp slt i64 %polly.indvar276, %142
  %indvars.iv.next1103 = add i64 %indvars.iv1102, 1
  %indvar.next1412 = add i64 %indvar1411, 1
  br i1 %polly.loop_cond278.not.not, label %polly.loop_header272, label %polly.loop_exit274

polly.loop_header280:                             ; preds = %polly.loop_header280.preheader1429, %polly.loop_header280
  %polly.indvar284 = phi i64 [ %polly.indvar_next285, %polly.loop_header280 ], [ %polly.indvar284.ph, %polly.loop_header280.preheader1429 ]
  %166 = add nuw nsw i64 %polly.indvar284, %110
  %polly.access.add.Packed_MemRef_call1288 = add nuw nsw i64 %polly.indvar284, %polly.access.mul.Packed_MemRef_call1287
  %polly.access.Packed_MemRef_call1289 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1288
  %_p_scalar_290 = load double, double* %polly.access.Packed_MemRef_call1289, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_294, %_p_scalar_290
  %polly.access.Packed_MemRef_call2297 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1288
  %_p_scalar_298 = load double, double* %polly.access.Packed_MemRef_call2297, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_302, %_p_scalar_298
  %167 = shl i64 %166, 3
  %168 = add i64 %167, %148
  %scevgep303 = getelementptr i8, i8* %call, i64 %168
  %scevgep303304 = bitcast i8* %scevgep303 to double*
  %_p_scalar_305 = load double, double* %scevgep303304, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_305
  store double %p_add42.i118, double* %scevgep303304, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next285 = add nuw nsw i64 %polly.indvar284, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar284, %smin
  br i1 %exitcond1104.not, label %polly.loop_exit282, label %polly.loop_header280, !llvm.loop !85

polly.start308:                                   ; preds = %kernel_syr2k.exit
  %malloccall310 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall312 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header396

polly.exiting309:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall310)
  tail call void @free(i8* %malloccall312)
  br label %kernel_syr2k.exit90

polly.loop_header396:                             ; preds = %polly.loop_exit404, %polly.start308
  %indvar1344 = phi i64 [ %indvar.next1345, %polly.loop_exit404 ], [ 0, %polly.start308 ]
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 1, %polly.start308 ]
  %169 = add i64 %indvar1344, 1
  %170 = mul nuw nsw i64 %polly.indvar399, 9600
  %scevgep408 = getelementptr i8, i8* %call, i64 %170
  %min.iters.check1346 = icmp ult i64 %169, 4
  br i1 %min.iters.check1346, label %polly.loop_header402.preheader, label %vector.ph1347

vector.ph1347:                                    ; preds = %polly.loop_header396
  %n.vec1349 = and i64 %169, -4
  br label %vector.body1343

vector.body1343:                                  ; preds = %vector.body1343, %vector.ph1347
  %index1350 = phi i64 [ 0, %vector.ph1347 ], [ %index.next1351, %vector.body1343 ]
  %171 = shl nuw nsw i64 %index1350, 3
  %172 = getelementptr i8, i8* %scevgep408, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  %wide.load1354 = load <4 x double>, <4 x double>* %173, align 8, !alias.scope !86, !noalias !88
  %174 = fmul fast <4 x double> %wide.load1354, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %175 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %174, <4 x double>* %175, align 8, !alias.scope !86, !noalias !88
  %index.next1351 = add i64 %index1350, 4
  %176 = icmp eq i64 %index.next1351, %n.vec1349
  br i1 %176, label %middle.block1341, label %vector.body1343, !llvm.loop !93

middle.block1341:                                 ; preds = %vector.body1343
  %cmp.n1353 = icmp eq i64 %169, %n.vec1349
  br i1 %cmp.n1353, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header396, %middle.block1341
  %polly.indvar405.ph = phi i64 [ 0, %polly.loop_header396 ], [ %n.vec1349, %middle.block1341 ]
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402, %middle.block1341
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar_next400, 1200
  %indvar.next1345 = add i64 %indvar1344, 1
  br i1 %exitcond1136.not, label %polly.loop_header412.preheader, label %polly.loop_header396

polly.loop_header412.preheader:                   ; preds = %polly.loop_exit404
  %Packed_MemRef_call1311 = bitcast i8* %malloccall310 to double*
  %Packed_MemRef_call2313 = bitcast i8* %malloccall312 to double*
  br label %polly.loop_header412

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_header402
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_header402 ], [ %polly.indvar405.ph, %polly.loop_header402.preheader ]
  %177 = shl nuw nsw i64 %polly.indvar405, 3
  %scevgep409 = getelementptr i8, i8* %scevgep408, i64 %177
  %scevgep409410 = bitcast i8* %scevgep409 to double*
  %_p_scalar_411 = load double, double* %scevgep409410, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_411, 1.200000e+00
  store double %p_mul.i57, double* %scevgep409410, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next406, %polly.indvar399
  br i1 %exitcond1135.not, label %polly.loop_exit404, label %polly.loop_header402, !llvm.loop !94

polly.loop_header412:                             ; preds = %polly.loop_header412.preheader, %polly.loop_exit420
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit420 ], [ 0, %polly.loop_header412.preheader ]
  %178 = mul nuw nsw i64 %polly.indvar415, 20
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit443
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next416, 50
  br i1 %exitcond1134.not, label %polly.exiting309, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit443, %polly.loop_header412
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit443 ], [ 2, %polly.loop_header412 ]
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit443 ], [ 1200, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit443 ], [ 0, %polly.loop_header412 ]
  %179 = mul nsw i64 %polly.indvar421, -32
  %180 = add nuw i64 %polly.indvar421, 2
  %181 = udiv i64 %180, 3
  %182 = mul nuw nsw i64 %181, 96
  %183 = add i64 %179, %182
  %184 = shl nuw nsw i64 %polly.indvar421, 5
  %185 = sub nsw i64 %184, %182
  %186 = udiv i64 %indvars.iv1119, 3
  %187 = mul nuw nsw i64 %186, 96
  %188 = add i64 %indvars.iv1117, %187
  %189 = sub nsw i64 %indvars.iv1124, %187
  %190 = mul nsw i64 %polly.indvar421, -256
  %191 = shl nsw i64 %polly.indvar421, 8
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit432
  %192 = add nsw i64 %190, 1199
  %193 = mul nuw nsw i64 %polly.indvar421, 3
  %194 = add nuw nsw i64 %polly.indvar421, 2
  %pexp.p_div_q440 = udiv i64 %194, 3
  %195 = sub nsw i64 %193, %pexp.p_div_q440
  br label %polly.loop_header441

polly.loop_exit443:                               ; preds = %polly.loop_exit482
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -256
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -32
  %indvars.iv.next1120 = add nuw nsw i64 %indvars.iv1119, 1
  %indvars.iv.next1125 = add nuw nsw i64 %indvars.iv1124, 32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next422, 5
  br i1 %exitcond1133.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit432, %polly.loop_header418
  %polly.indvar427 = phi i64 [ 0, %polly.loop_header418 ], [ %polly.indvar_next428, %polly.loop_exit432 ]
  %196 = add nuw nsw i64 %polly.indvar427, %178
  %polly.access.mul.Packed_MemRef_call2313 = mul nuw nsw i64 %polly.indvar427, 1200
  br label %polly.loop_header430

polly.loop_exit432:                               ; preds = %polly.loop_header430
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next428, 20
  br i1 %exitcond1113.not, label %polly.loop_exit426, label %polly.loop_header424

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
  %exitcond1112.not = icmp eq i64 %polly.indvar_next434, %indvars.iv1110
  br i1 %exitcond1112.not, label %polly.loop_exit432, label %polly.loop_header430

polly.loop_header441:                             ; preds = %polly.loop_exit482, %polly.loop_exit426
  %indvar1358 = phi i64 [ %indvar.next1359, %polly.loop_exit482 ], [ 0, %polly.loop_exit426 ]
  %indvars.iv1126 = phi i64 [ %indvars.iv.next1127, %polly.loop_exit482 ], [ %189, %polly.loop_exit426 ]
  %indvars.iv1121 = phi i64 [ %indvars.iv.next1122, %polly.loop_exit482 ], [ %188, %polly.loop_exit426 ]
  %polly.indvar444 = phi i64 [ %polly.indvar_next445, %polly.loop_exit482 ], [ %195, %polly.loop_exit426 ]
  %198 = mul nsw i64 %indvar1358, -96
  %199 = add i64 %183, %198
  %smax1360 = call i64 @llvm.smax.i64(i64 %199, i64 0)
  %200 = mul nuw nsw i64 %indvar1358, 96
  %201 = add i64 %185, %200
  %202 = add i64 %smax1360, %201
  %smax1123 = call i64 @llvm.smax.i64(i64 %indvars.iv1121, i64 0)
  %203 = add i64 %smax1123, %indvars.iv1126
  %204 = mul nsw i64 %polly.indvar444, 96
  %205 = add nsw i64 %204, %190
  %206 = add nsw i64 %205, -1
  %.inv942 = icmp sgt i64 %205, 255
  %207 = select i1 %.inv942, i64 255, i64 %206
  %polly.loop_guard457 = icmp sgt i64 %207, -1
  %208 = icmp sgt i64 %205, 0
  %209 = select i1 %208, i64 %205, i64 0
  %210 = add nsw i64 %205, 95
  %211 = icmp slt i64 %192, %210
  %212 = select i1 %211, i64 %192, i64 %210
  %polly.loop_guard469.not = icmp sgt i64 %209, %212
  br i1 %polly.loop_guard457, label %polly.loop_header447.us, label %polly.loop_header441.split

polly.loop_header447.us:                          ; preds = %polly.loop_header441, %polly.loop_exit468.us
  %polly.indvar450.us = phi i64 [ %polly.indvar_next451.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header441 ]
  %213 = add nuw nsw i64 %polly.indvar450.us, %178
  %polly.access.mul.Packed_MemRef_call1311.us = mul nuw nsw i64 %polly.indvar450.us, 1200
  br label %polly.loop_header454.us

polly.loop_header454.us:                          ; preds = %polly.loop_header447.us, %polly.loop_header454.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header454.us ], [ 0, %polly.loop_header447.us ]
  %214 = add nuw nsw i64 %polly.indvar458.us, %191
  %polly.access.mul.call1462.us = mul nuw nsw i64 %214, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %213, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1311.us, align 8
  %polly.indvar_next459.us = add nuw i64 %polly.indvar458.us, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar458.us, %207
  br i1 %exitcond1115.not, label %polly.loop_exit456.loopexit.us, label %polly.loop_header454.us

polly.loop_header466.us:                          ; preds = %polly.loop_exit456.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %209, %polly.loop_exit456.loopexit.us ]
  %215 = add nuw nsw i64 %polly.indvar470.us, %191
  %polly.access.mul.call1474.us = mul nsw i64 %215, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %213, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1311.us
  %polly.access.Packed_MemRef_call1311479.us = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1311479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %212
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_exit456.loopexit.us
  %polly.indvar_next451.us = add nuw nsw i64 %polly.indvar450.us, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next451.us, 20
  br i1 %exitcond1116.not, label %polly.loop_header480.preheader, label %polly.loop_header447.us

polly.loop_exit456.loopexit.us:                   ; preds = %polly.loop_header454.us
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header441.split:                       ; preds = %polly.loop_header441
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_exit482:                               ; preds = %polly.loop_exit489, %polly.loop_header480.preheader
  %polly.indvar_next445 = add nsw i64 %polly.indvar444, 1
  %polly.loop_cond446 = icmp slt i64 %polly.indvar444, 12
  %indvars.iv.next1122 = add i64 %indvars.iv1121, -96
  %indvars.iv.next1127 = add i64 %indvars.iv1126, 96
  %indvar.next1359 = add i64 %indvar1358, 1
  br i1 %polly.loop_cond446, label %polly.loop_header441, label %polly.loop_exit443

polly.loop_header447:                             ; preds = %polly.loop_header441.split, %polly.loop_exit468
  %polly.indvar450 = phi i64 [ %polly.indvar_next451, %polly.loop_exit468 ], [ 0, %polly.loop_header441.split ]
  %216 = add nuw nsw i64 %polly.indvar450, %178
  %polly.access.mul.Packed_MemRef_call1311477 = mul nuw nsw i64 %polly.indvar450, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next451, 20
  br i1 %exitcond1114.not, label %polly.loop_header480.preheader, label %polly.loop_header447

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header441.split
  %217 = sub nsw i64 %191, %204
  %218 = icmp sgt i64 %217, 0
  %219 = select i1 %218, i64 %217, i64 0
  %220 = mul nsw i64 %polly.indvar444, -96
  %221 = icmp slt i64 %220, -1104
  %222 = select i1 %221, i64 %220, i64 -1104
  %223 = add nsw i64 %222, 1199
  %polly.loop_guard490.not = icmp sgt i64 %219, %223
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header466:                             ; preds = %polly.loop_header447, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %209, %polly.loop_header447 ]
  %224 = add nuw nsw i64 %polly.indvar470, %191
  %polly.access.mul.call1474 = mul nsw i64 %224, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %216, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1311478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1311477
  %polly.access.Packed_MemRef_call1311479 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1311479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %212
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.loop_header480:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit489
  %polly.indvar483 = phi i64 [ %polly.indvar_next484, %polly.loop_exit489 ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1311502 = mul nuw nsw i64 %polly.indvar483, 1200
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_exit497
  %polly.indvar_next484 = add nuw nsw i64 %polly.indvar483, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next484, 20
  br i1 %exitcond1132.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header487:                             ; preds = %polly.loop_header480, %polly.loop_exit497
  %indvar1361 = phi i64 [ 0, %polly.loop_header480 ], [ %indvar.next1362, %polly.loop_exit497 ]
  %indvars.iv1128 = phi i64 [ %203, %polly.loop_header480 ], [ %indvars.iv.next1129, %polly.loop_exit497 ]
  %polly.indvar491 = phi i64 [ %219, %polly.loop_header480 ], [ %polly.indvar_next492, %polly.loop_exit497 ]
  %225 = add i64 %202, %indvar1361
  %smin1363 = call i64 @llvm.smin.i64(i64 %225, i64 255)
  %226 = add nsw i64 %smin1363, 1
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 255)
  %227 = add nsw i64 %polly.indvar491, %205
  %polly.loop_guard4981202 = icmp sgt i64 %227, -1
  br i1 %polly.loop_guard4981202, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %228 = add nsw i64 %polly.indvar491, %204
  %polly.access.add.Packed_MemRef_call2313507 = add nsw i64 %227, %polly.access.mul.Packed_MemRef_call1311502
  %polly.access.Packed_MemRef_call2313508 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call2313507
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2313508, align 8
  %polly.access.Packed_MemRef_call1311516 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call2313507
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1311516, align 8
  %229 = mul i64 %228, 9600
  %min.iters.check1364 = icmp ult i64 %226, 4
  br i1 %min.iters.check1364, label %polly.loop_header495.preheader1433, label %vector.ph1365

vector.ph1365:                                    ; preds = %polly.loop_header495.preheader
  %n.vec1367 = and i64 %226, -4
  %broadcast.splatinsert1373 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1374 = shufflevector <4 x double> %broadcast.splatinsert1373, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1376 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1377 = shufflevector <4 x double> %broadcast.splatinsert1376, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1365
  %index1368 = phi i64 [ 0, %vector.ph1365 ], [ %index.next1369, %vector.body1357 ]
  %230 = add nuw nsw i64 %index1368, %191
  %231 = add nuw nsw i64 %index1368, %polly.access.mul.Packed_MemRef_call1311502
  %232 = getelementptr double, double* %Packed_MemRef_call1311, i64 %231
  %233 = bitcast double* %232 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %233, align 8
  %234 = fmul fast <4 x double> %broadcast.splat1374, %wide.load1372
  %235 = getelementptr double, double* %Packed_MemRef_call2313, i64 %231
  %236 = bitcast double* %235 to <4 x double>*
  %wide.load1375 = load <4 x double>, <4 x double>* %236, align 8
  %237 = fmul fast <4 x double> %broadcast.splat1377, %wide.load1375
  %238 = shl i64 %230, 3
  %239 = add i64 %238, %229
  %240 = getelementptr i8, i8* %call, i64 %239
  %241 = bitcast i8* %240 to <4 x double>*
  %wide.load1378 = load <4 x double>, <4 x double>* %241, align 8, !alias.scope !86, !noalias !88
  %242 = fadd fast <4 x double> %237, %234
  %243 = fmul fast <4 x double> %242, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %244 = fadd fast <4 x double> %243, %wide.load1378
  %245 = bitcast i8* %240 to <4 x double>*
  store <4 x double> %244, <4 x double>* %245, align 8, !alias.scope !86, !noalias !88
  %index.next1369 = add i64 %index1368, 4
  %246 = icmp eq i64 %index.next1369, %n.vec1367
  br i1 %246, label %middle.block1355, label %vector.body1357, !llvm.loop !97

middle.block1355:                                 ; preds = %vector.body1357
  %cmp.n1371 = icmp eq i64 %226, %n.vec1367
  br i1 %cmp.n1371, label %polly.loop_exit497, label %polly.loop_header495.preheader1433

polly.loop_header495.preheader1433:               ; preds = %polly.loop_header495.preheader, %middle.block1355
  %polly.indvar499.ph = phi i64 [ 0, %polly.loop_header495.preheader ], [ %n.vec1367, %middle.block1355 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1355, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %223
  %indvars.iv.next1129 = add i64 %indvars.iv1128, 1
  %indvar.next1362 = add i64 %indvar1361, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_exit489

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1433, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1433 ]
  %247 = add nuw nsw i64 %polly.indvar499, %191
  %polly.access.add.Packed_MemRef_call1311503 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1311502
  %polly.access.Packed_MemRef_call1311504 = getelementptr double, double* %Packed_MemRef_call1311, i64 %polly.access.add.Packed_MemRef_call1311503
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1311504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2313512 = getelementptr double, double* %Packed_MemRef_call2313, i64 %polly.access.add.Packed_MemRef_call1311503
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2313512, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_517, %_p_scalar_513
  %248 = shl i64 %247, 3
  %249 = add i64 %248, %229
  %scevgep518 = getelementptr i8, i8* %call, i64 %249
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_520
  store double %p_add42.i79, double* %scevgep518519, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar499, %smin1130
  br i1 %exitcond1131.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !98

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  %malloccall527 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %250 = add i64 %indvar, 1
  %251 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %251
  %min.iters.check1296 = icmp ult i64 %250, 4
  br i1 %min.iters.check1296, label %polly.loop_header617.preheader, label %vector.ph1297

vector.ph1297:                                    ; preds = %polly.loop_header611
  %n.vec1299 = and i64 %250, -4
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1297
  %index1300 = phi i64 [ 0, %vector.ph1297 ], [ %index.next1301, %vector.body1295 ]
  %252 = shl nuw nsw i64 %index1300, 3
  %253 = getelementptr i8, i8* %scevgep623, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  %wide.load1304 = load <4 x double>, <4 x double>* %254, align 8, !alias.scope !99, !noalias !101
  %255 = fmul fast <4 x double> %wide.load1304, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %256 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %255, <4 x double>* %256, align 8, !alias.scope !99, !noalias !101
  %index.next1301 = add i64 %index1300, 4
  %257 = icmp eq i64 %index.next1301, %n.vec1299
  br i1 %257, label %middle.block1293, label %vector.body1295, !llvm.loop !106

middle.block1293:                                 ; preds = %vector.body1295
  %cmp.n1303 = icmp eq i64 %250, %n.vec1299
  br i1 %cmp.n1303, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1293
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1299, %middle.block1293 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1293
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1163.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %258 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %258
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1162.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !107

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %259 = mul nuw nsw i64 %polly.indvar630, 20
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar_next631, 50
  br i1 %exitcond1161.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit658 ], [ 2, %polly.loop_header627 ]
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %polly.indvar_next637, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %260 = mul nsw i64 %polly.indvar636, -32
  %261 = add nuw i64 %polly.indvar636, 2
  %262 = udiv i64 %261, 3
  %263 = mul nuw nsw i64 %262, 96
  %264 = add i64 %260, %263
  %265 = shl nuw nsw i64 %polly.indvar636, 5
  %266 = sub nsw i64 %265, %263
  %267 = udiv i64 %indvars.iv1146, 3
  %268 = mul nuw nsw i64 %267, 96
  %269 = add i64 %indvars.iv1144, %268
  %270 = sub nsw i64 %indvars.iv1151, %268
  %271 = mul nsw i64 %polly.indvar636, -256
  %272 = shl nsw i64 %polly.indvar636, 8
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %273 = add nsw i64 %271, 1199
  %274 = mul nuw nsw i64 %polly.indvar636, 3
  %275 = add nuw nsw i64 %polly.indvar636, 2
  %pexp.p_div_q655 = udiv i64 %275, 3
  %276 = sub nsw i64 %274, %pexp.p_div_q655
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit697
  %polly.indvar_next637 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, -256
  %indvars.iv.next1145 = add nsw i64 %indvars.iv1144, -32
  %indvars.iv.next1147 = add nuw nsw i64 %indvars.iv1146, 1
  %indvars.iv.next1152 = add nuw nsw i64 %indvars.iv1151, 32
  %exitcond1160.not = icmp eq i64 %polly.indvar_next637, 5
  br i1 %exitcond1160.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %277 = add nuw nsw i64 %polly.indvar642, %259
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next643, 20
  br i1 %exitcond1140.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %278 = add nuw nsw i64 %polly.indvar648, %272
  %polly.access.mul.call2652 = mul nuw nsw i64 %278, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %277, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2750, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1137
  br i1 %exitcond1139.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit697, %polly.loop_exit641
  %indvar1308 = phi i64 [ %indvar.next1309, %polly.loop_exit697 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit697 ], [ %270, %polly.loop_exit641 ]
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %polly.loop_exit697 ], [ %269, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit697 ], [ %276, %polly.loop_exit641 ]
  %279 = mul nsw i64 %indvar1308, -96
  %280 = add i64 %264, %279
  %smax1310 = call i64 @llvm.smax.i64(i64 %280, i64 0)
  %281 = mul nuw nsw i64 %indvar1308, 96
  %282 = add i64 %266, %281
  %283 = add i64 %smax1310, %282
  %smax1150 = call i64 @llvm.smax.i64(i64 %indvars.iv1148, i64 0)
  %284 = add i64 %smax1150, %indvars.iv1153
  %285 = mul nsw i64 %polly.indvar659, 96
  %286 = add nsw i64 %285, %271
  %287 = add nsw i64 %286, -1
  %.inv943 = icmp sgt i64 %286, 255
  %288 = select i1 %.inv943, i64 255, i64 %287
  %polly.loop_guard672 = icmp sgt i64 %288, -1
  %289 = icmp sgt i64 %286, 0
  %290 = select i1 %289, i64 %286, i64 0
  %291 = add nsw i64 %286, 95
  %292 = icmp slt i64 %273, %291
  %293 = select i1 %292, i64 %273, i64 %291
  %polly.loop_guard684.not = icmp sgt i64 %290, %293
  br i1 %polly.loop_guard672, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit683.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit683.us ], [ 0, %polly.loop_header656 ]
  %294 = add nuw nsw i64 %polly.indvar665.us, %259
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  br label %polly.loop_header669.us

polly.loop_header669.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header669.us
  %polly.indvar673.us = phi i64 [ %polly.indvar_next674.us, %polly.loop_header669.us ], [ 0, %polly.loop_header662.us ]
  %295 = add nuw nsw i64 %polly.indvar673.us, %272
  %polly.access.mul.call1677.us = mul nuw nsw i64 %295, 1000
  %polly.access.add.call1678.us = add nuw nsw i64 %294, %polly.access.mul.call1677.us
  %polly.access.call1679.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1678.us
  %polly.access.call1679.load.us = load double, double* %polly.access.call1679.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us = add nuw nsw i64 %polly.indvar673.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us
  store double %polly.access.call1679.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next674.us = add nuw i64 %polly.indvar673.us, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar673.us, %288
  br i1 %exitcond1142.not, label %polly.loop_exit671.loopexit.us, label %polly.loop_header669.us

polly.loop_header681.us:                          ; preds = %polly.loop_exit671.loopexit.us, %polly.loop_header681.us
  %polly.indvar685.us = phi i64 [ %polly.indvar_next686.us, %polly.loop_header681.us ], [ %290, %polly.loop_exit671.loopexit.us ]
  %296 = add nuw nsw i64 %polly.indvar685.us, %272
  %polly.access.mul.call1689.us = mul nsw i64 %296, 1000
  %polly.access.add.call1690.us = add nuw nsw i64 %294, %polly.access.mul.call1689.us
  %polly.access.call1691.us = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690.us
  %polly.access.call1691.load.us = load double, double* %polly.access.call1691.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526693.us = add nuw nsw i64 %polly.indvar685.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526694.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693.us
  store double %polly.access.call1691.load.us, double* %polly.access.Packed_MemRef_call1526694.us, align 8
  %polly.indvar_next686.us = add nuw nsw i64 %polly.indvar685.us, 1
  %polly.loop_cond687.not.not.us = icmp slt i64 %polly.indvar685.us, %293
  br i1 %polly.loop_cond687.not.not.us, label %polly.loop_header681.us, label %polly.loop_exit683.us

polly.loop_exit683.us:                            ; preds = %polly.loop_header681.us, %polly.loop_exit671.loopexit.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar_next666.us, 20
  br i1 %exitcond1143.not, label %polly.loop_header695.preheader, label %polly.loop_header662.us

polly.loop_exit671.loopexit.us:                   ; preds = %polly.loop_header669.us
  br i1 %polly.loop_guard684.not, label %polly.loop_exit683.us, label %polly.loop_header681.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard684.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_exit697:                               ; preds = %polly.loop_exit704, %polly.loop_header695.preheader
  %polly.indvar_next660 = add nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp slt i64 %polly.indvar659, 12
  %indvars.iv.next1149 = add i64 %indvars.iv1148, -96
  %indvars.iv.next1154 = add i64 %indvars.iv1153, 96
  %indvar.next1309 = add i64 %indvar1308, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit683
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit683 ], [ 0, %polly.loop_header656.split ]
  %297 = add nuw nsw i64 %polly.indvar665, %259
  %polly.access.mul.Packed_MemRef_call1526692 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header681

polly.loop_exit683:                               ; preds = %polly.loop_header681
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next666, 20
  br i1 %exitcond1141.not, label %polly.loop_header695.preheader, label %polly.loop_header662

polly.loop_header695.preheader:                   ; preds = %polly.loop_exit683, %polly.loop_exit683.us, %polly.loop_header656.split
  %298 = sub nsw i64 %272, %285
  %299 = icmp sgt i64 %298, 0
  %300 = select i1 %299, i64 %298, i64 0
  %301 = mul nsw i64 %polly.indvar659, -96
  %302 = icmp slt i64 %301, -1104
  %303 = select i1 %302, i64 %301, i64 -1104
  %304 = add nsw i64 %303, 1199
  %polly.loop_guard705.not = icmp sgt i64 %300, %304
  br i1 %polly.loop_guard705.not, label %polly.loop_exit697, label %polly.loop_header695

polly.loop_header681:                             ; preds = %polly.loop_header662, %polly.loop_header681
  %polly.indvar685 = phi i64 [ %polly.indvar_next686, %polly.loop_header681 ], [ %290, %polly.loop_header662 ]
  %305 = add nuw nsw i64 %polly.indvar685, %272
  %polly.access.mul.call1689 = mul nsw i64 %305, 1000
  %polly.access.add.call1690 = add nuw nsw i64 %297, %polly.access.mul.call1689
  %polly.access.call1691 = getelementptr double, double* %polly.access.cast.call1740, i64 %polly.access.add.call1690
  %polly.access.call1691.load = load double, double* %polly.access.call1691, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526693 = add nuw nsw i64 %polly.indvar685, %polly.access.mul.Packed_MemRef_call1526692
  %polly.access.Packed_MemRef_call1526694 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526693
  store double %polly.access.call1691.load, double* %polly.access.Packed_MemRef_call1526694, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %polly.loop_cond687.not.not = icmp slt i64 %polly.indvar685, %293
  br i1 %polly.loop_cond687.not.not, label %polly.loop_header681, label %polly.loop_exit683

polly.loop_header695:                             ; preds = %polly.loop_header695.preheader, %polly.loop_exit704
  %polly.indvar698 = phi i64 [ %polly.indvar_next699, %polly.loop_exit704 ], [ 0, %polly.loop_header695.preheader ]
  %polly.access.mul.Packed_MemRef_call1526717 = mul nuw nsw i64 %polly.indvar698, 1200
  br label %polly.loop_header702

polly.loop_exit704:                               ; preds = %polly.loop_exit712
  %polly.indvar_next699 = add nuw nsw i64 %polly.indvar698, 1
  %exitcond1159.not = icmp eq i64 %polly.indvar_next699, 20
  br i1 %exitcond1159.not, label %polly.loop_exit697, label %polly.loop_header695

polly.loop_header702:                             ; preds = %polly.loop_header695, %polly.loop_exit712
  %indvar1311 = phi i64 [ 0, %polly.loop_header695 ], [ %indvar.next1312, %polly.loop_exit712 ]
  %indvars.iv1155 = phi i64 [ %284, %polly.loop_header695 ], [ %indvars.iv.next1156, %polly.loop_exit712 ]
  %polly.indvar706 = phi i64 [ %300, %polly.loop_header695 ], [ %polly.indvar_next707, %polly.loop_exit712 ]
  %306 = add i64 %283, %indvar1311
  %smin1313 = call i64 @llvm.smin.i64(i64 %306, i64 255)
  %307 = add nsw i64 %smin1313, 1
  %smin1157 = call i64 @llvm.smin.i64(i64 %indvars.iv1155, i64 255)
  %308 = add nsw i64 %polly.indvar706, %286
  %polly.loop_guard7131203 = icmp sgt i64 %308, -1
  br i1 %polly.loop_guard7131203, label %polly.loop_header710.preheader, label %polly.loop_exit712

polly.loop_header710.preheader:                   ; preds = %polly.loop_header702
  %309 = add nsw i64 %polly.indvar706, %285
  %polly.access.add.Packed_MemRef_call2528722 = add nsw i64 %308, %polly.access.mul.Packed_MemRef_call1526717
  %polly.access.Packed_MemRef_call2528723 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528722
  %_p_scalar_724 = load double, double* %polly.access.Packed_MemRef_call2528723, align 8
  %polly.access.Packed_MemRef_call1526731 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528722
  %_p_scalar_732 = load double, double* %polly.access.Packed_MemRef_call1526731, align 8
  %310 = mul i64 %309, 9600
  %min.iters.check1314 = icmp ult i64 %307, 4
  br i1 %min.iters.check1314, label %polly.loop_header710.preheader1437, label %vector.ph1315

vector.ph1315:                                    ; preds = %polly.loop_header710.preheader
  %n.vec1317 = and i64 %307, -4
  %broadcast.splatinsert1323 = insertelement <4 x double> poison, double %_p_scalar_724, i32 0
  %broadcast.splat1324 = shufflevector <4 x double> %broadcast.splatinsert1323, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1326 = insertelement <4 x double> poison, double %_p_scalar_732, i32 0
  %broadcast.splat1327 = shufflevector <4 x double> %broadcast.splatinsert1326, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1315
  %index1318 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1319, %vector.body1307 ]
  %311 = add nuw nsw i64 %index1318, %272
  %312 = add nuw nsw i64 %index1318, %polly.access.mul.Packed_MemRef_call1526717
  %313 = getelementptr double, double* %Packed_MemRef_call1526, i64 %312
  %314 = bitcast double* %313 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %314, align 8
  %315 = fmul fast <4 x double> %broadcast.splat1324, %wide.load1322
  %316 = getelementptr double, double* %Packed_MemRef_call2528, i64 %312
  %317 = bitcast double* %316 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %317, align 8
  %318 = fmul fast <4 x double> %broadcast.splat1327, %wide.load1325
  %319 = shl i64 %311, 3
  %320 = add i64 %319, %310
  %321 = getelementptr i8, i8* %call, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  %wide.load1328 = load <4 x double>, <4 x double>* %322, align 8, !alias.scope !99, !noalias !101
  %323 = fadd fast <4 x double> %318, %315
  %324 = fmul fast <4 x double> %323, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %325 = fadd fast <4 x double> %324, %wide.load1328
  %326 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %325, <4 x double>* %326, align 8, !alias.scope !99, !noalias !101
  %index.next1319 = add i64 %index1318, 4
  %327 = icmp eq i64 %index.next1319, %n.vec1317
  br i1 %327, label %middle.block1305, label %vector.body1307, !llvm.loop !110

middle.block1305:                                 ; preds = %vector.body1307
  %cmp.n1321 = icmp eq i64 %307, %n.vec1317
  br i1 %cmp.n1321, label %polly.loop_exit712, label %polly.loop_header710.preheader1437

polly.loop_header710.preheader1437:               ; preds = %polly.loop_header710.preheader, %middle.block1305
  %polly.indvar714.ph = phi i64 [ 0, %polly.loop_header710.preheader ], [ %n.vec1317, %middle.block1305 ]
  br label %polly.loop_header710

polly.loop_exit712:                               ; preds = %polly.loop_header710, %middle.block1305, %polly.loop_header702
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %polly.loop_cond708.not.not = icmp slt i64 %polly.indvar706, %304
  %indvars.iv.next1156 = add i64 %indvars.iv1155, 1
  %indvar.next1312 = add i64 %indvar1311, 1
  br i1 %polly.loop_cond708.not.not, label %polly.loop_header702, label %polly.loop_exit704

polly.loop_header710:                             ; preds = %polly.loop_header710.preheader1437, %polly.loop_header710
  %polly.indvar714 = phi i64 [ %polly.indvar_next715, %polly.loop_header710 ], [ %polly.indvar714.ph, %polly.loop_header710.preheader1437 ]
  %328 = add nuw nsw i64 %polly.indvar714, %272
  %polly.access.add.Packed_MemRef_call1526718 = add nuw nsw i64 %polly.indvar714, %polly.access.mul.Packed_MemRef_call1526717
  %polly.access.Packed_MemRef_call1526719 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526718
  %_p_scalar_720 = load double, double* %polly.access.Packed_MemRef_call1526719, align 8
  %p_mul27.i = fmul fast double %_p_scalar_724, %_p_scalar_720
  %polly.access.Packed_MemRef_call2528727 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526718
  %_p_scalar_728 = load double, double* %polly.access.Packed_MemRef_call2528727, align 8
  %p_mul37.i = fmul fast double %_p_scalar_732, %_p_scalar_728
  %329 = shl i64 %328, 3
  %330 = add i64 %329, %310
  %scevgep733 = getelementptr i8, i8* %call, i64 %330
  %scevgep733734 = bitcast i8* %scevgep733 to double*
  %_p_scalar_735 = load double, double* %scevgep733734, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_735
  store double %p_add42.i, double* %scevgep733734, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next715 = add nuw nsw i64 %polly.indvar714, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar714, %smin1157
  br i1 %exitcond1158.not, label %polly.loop_exit712, label %polly.loop_header710, !llvm.loop !111

polly.loop_header862:                             ; preds = %entry, %polly.loop_exit870
  %indvars.iv1188 = phi i64 [ %indvars.iv.next1189, %polly.loop_exit870 ], [ 0, %entry ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %entry ]
  %smin1190 = call i64 @llvm.smin.i64(i64 %indvars.iv1188, i64 -1168)
  %331 = shl nsw i64 %polly.indvar865, 5
  %332 = add nsw i64 %smin1190, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1189 = add nsw i64 %indvars.iv1188, -32
  %exitcond1193.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1193.not, label %polly.loop_header889, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %indvars.iv1184 = phi i64 [ %indvars.iv.next1185, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %polly.loop_header862 ]
  %333 = mul nsw i64 %polly.indvar871, -32
  %smin1234 = call i64 @llvm.smin.i64(i64 %333, i64 -1168)
  %334 = add nsw i64 %smin1234, 1200
  %smin1186 = call i64 @llvm.smin.i64(i64 %indvars.iv1184, i64 -1168)
  %335 = shl nsw i64 %polly.indvar871, 5
  %336 = add nsw i64 %smin1186, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1185 = add nsw i64 %indvars.iv1184, -32
  %exitcond1192.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1192.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %polly.indvar877 = phi i64 [ 0, %polly.loop_header868 ], [ %polly.indvar_next878, %polly.loop_exit882 ]
  %337 = add nuw nsw i64 %polly.indvar877, %331
  %338 = trunc i64 %337 to i32
  %339 = mul nuw nsw i64 %337, 9600
  %min.iters.check = icmp eq i64 %334, 0
  br i1 %min.iters.check, label %polly.loop_header880, label %vector.ph1235

vector.ph1235:                                    ; preds = %polly.loop_header874
  %broadcast.splatinsert1242 = insertelement <4 x i64> poison, i64 %335, i32 0
  %broadcast.splat1243 = shufflevector <4 x i64> %broadcast.splatinsert1242, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1244 = insertelement <4 x i32> poison, i32 %338, i32 0
  %broadcast.splat1245 = shufflevector <4 x i32> %broadcast.splatinsert1244, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1235
  %index1236 = phi i64 [ 0, %vector.ph1235 ], [ %index.next1237, %vector.body1233 ]
  %vec.ind1240 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1235 ], [ %vec.ind.next1241, %vector.body1233 ]
  %340 = add nuw nsw <4 x i64> %vec.ind1240, %broadcast.splat1243
  %341 = trunc <4 x i64> %340 to <4 x i32>
  %342 = mul <4 x i32> %broadcast.splat1245, %341
  %343 = add <4 x i32> %342, <i32 3, i32 3, i32 3, i32 3>
  %344 = urem <4 x i32> %343, <i32 1200, i32 1200, i32 1200, i32 1200>
  %345 = sitofp <4 x i32> %344 to <4 x double>
  %346 = fmul fast <4 x double> %345, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %347 = extractelement <4 x i64> %340, i32 0
  %348 = shl i64 %347, 3
  %349 = add nuw nsw i64 %348, %339
  %350 = getelementptr i8, i8* %call, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %346, <4 x double>* %351, align 8, !alias.scope !112, !noalias !114
  %index.next1237 = add i64 %index1236, 4
  %vec.ind.next1241 = add <4 x i64> %vec.ind1240, <i64 4, i64 4, i64 4, i64 4>
  %352 = icmp eq i64 %index.next1237, %334
  br i1 %352, label %polly.loop_exit882, label %vector.body1233, !llvm.loop !117

polly.loop_exit882:                               ; preds = %vector.body1233, %polly.loop_header880
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1191.not = icmp eq i64 %polly.indvar877, %332
  br i1 %exitcond1191.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_header874, %polly.loop_header880
  %polly.indvar883 = phi i64 [ %polly.indvar_next884, %polly.loop_header880 ], [ 0, %polly.loop_header874 ]
  %353 = add nuw nsw i64 %polly.indvar883, %335
  %354 = trunc i64 %353 to i32
  %355 = mul i32 %354, %338
  %356 = add i32 %355, 3
  %357 = urem i32 %356, 1200
  %p_conv31.i = sitofp i32 %357 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %358 = shl i64 %353, 3
  %359 = add nuw nsw i64 %358, %339
  %scevgep886 = getelementptr i8, i8* %call, i64 %359
  %scevgep886887 = bitcast i8* %scevgep886 to double*
  store double %p_div33.i, double* %scevgep886887, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1187.not = icmp eq i64 %polly.indvar883, %336
  br i1 %exitcond1187.not, label %polly.loop_exit882, label %polly.loop_header880, !llvm.loop !118

polly.loop_header889:                             ; preds = %polly.loop_exit870, %polly.loop_exit897
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_exit870 ]
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1178, i64 -1168)
  %360 = shl nsw i64 %polly.indvar892, 5
  %361 = add nsw i64 %smin1180, 1199
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -32
  %exitcond1183.not = icmp eq i64 %polly.indvar_next893, 38
  br i1 %exitcond1183.not, label %polly.loop_header915, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %indvars.iv1174 = phi i64 [ %indvars.iv.next1175, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_header889 ]
  %362 = mul nsw i64 %polly.indvar898, -32
  %smin1249 = call i64 @llvm.smin.i64(i64 %362, i64 -968)
  %363 = add nsw i64 %smin1249, 1000
  %smin1176 = call i64 @llvm.smin.i64(i64 %indvars.iv1174, i64 -968)
  %364 = shl nsw i64 %polly.indvar898, 5
  %365 = add nsw i64 %smin1176, 999
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1175 = add nsw i64 %indvars.iv1174, -32
  %exitcond1182.not = icmp eq i64 %polly.indvar_next899, 32
  br i1 %exitcond1182.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %polly.indvar904 = phi i64 [ 0, %polly.loop_header895 ], [ %polly.indvar_next905, %polly.loop_exit909 ]
  %366 = add nuw nsw i64 %polly.indvar904, %360
  %367 = trunc i64 %366 to i32
  %368 = mul nuw nsw i64 %366, 8000
  %min.iters.check1250 = icmp eq i64 %363, 0
  br i1 %min.iters.check1250, label %polly.loop_header907, label %vector.ph1251

vector.ph1251:                                    ; preds = %polly.loop_header901
  %broadcast.splatinsert1260 = insertelement <4 x i64> poison, i64 %364, i32 0
  %broadcast.splat1261 = shufflevector <4 x i64> %broadcast.splatinsert1260, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1255, %vector.body1248 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1251 ], [ %vec.ind.next1259, %vector.body1248 ]
  %369 = add nuw nsw <4 x i64> %vec.ind1258, %broadcast.splat1261
  %370 = trunc <4 x i64> %369 to <4 x i32>
  %371 = mul <4 x i32> %broadcast.splat1263, %370
  %372 = add <4 x i32> %371, <i32 2, i32 2, i32 2, i32 2>
  %373 = urem <4 x i32> %372, <i32 1000, i32 1000, i32 1000, i32 1000>
  %374 = sitofp <4 x i32> %373 to <4 x double>
  %375 = fmul fast <4 x double> %374, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %376 = extractelement <4 x i64> %369, i32 0
  %377 = shl i64 %376, 3
  %378 = add nuw nsw i64 %377, %368
  %379 = getelementptr i8, i8* %call2, i64 %378
  %380 = bitcast i8* %379 to <4 x double>*
  store <4 x double> %375, <4 x double>* %380, align 8, !alias.scope !116, !noalias !119
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %381 = icmp eq i64 %index.next1255, %363
  br i1 %381, label %polly.loop_exit909, label %vector.body1248, !llvm.loop !120

polly.loop_exit909:                               ; preds = %vector.body1248, %polly.loop_header907
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar904, %361
  br i1 %exitcond1181.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_header901, %polly.loop_header907
  %polly.indvar910 = phi i64 [ %polly.indvar_next911, %polly.loop_header907 ], [ 0, %polly.loop_header901 ]
  %382 = add nuw nsw i64 %polly.indvar910, %364
  %383 = trunc i64 %382 to i32
  %384 = mul i32 %383, %367
  %385 = add i32 %384, 2
  %386 = urem i32 %385, 1000
  %p_conv10.i = sitofp i32 %386 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %387 = shl i64 %382, 3
  %388 = add nuw nsw i64 %387, %368
  %scevgep913 = getelementptr i8, i8* %call2, i64 %388
  %scevgep913914 = bitcast i8* %scevgep913 to double*
  store double %p_div12.i, double* %scevgep913914, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar910, %365
  br i1 %exitcond1177.not, label %polly.loop_exit909, label %polly.loop_header907, !llvm.loop !121

polly.loop_header915:                             ; preds = %polly.loop_exit897, %polly.loop_exit923
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_exit897 ]
  %smin1170 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -1168)
  %389 = shl nsw i64 %polly.indvar918, 5
  %390 = add nsw i64 %smin1170, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -32
  %exitcond1173.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1173.not, label %init_array.exit, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %indvars.iv1164 = phi i64 [ %indvars.iv.next1165, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_header915 ]
  %391 = mul nsw i64 %polly.indvar924, -32
  %smin1267 = call i64 @llvm.smin.i64(i64 %391, i64 -968)
  %392 = add nsw i64 %smin1267, 1000
  %smin1166 = call i64 @llvm.smin.i64(i64 %indvars.iv1164, i64 -968)
  %393 = shl nsw i64 %polly.indvar924, 5
  %394 = add nsw i64 %smin1166, 999
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1165 = add nsw i64 %indvars.iv1164, -32
  %exitcond1172.not = icmp eq i64 %polly.indvar_next925, 32
  br i1 %exitcond1172.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %polly.indvar930 = phi i64 [ 0, %polly.loop_header921 ], [ %polly.indvar_next931, %polly.loop_exit935 ]
  %395 = add nuw nsw i64 %polly.indvar930, %389
  %396 = trunc i64 %395 to i32
  %397 = mul nuw nsw i64 %395, 8000
  %min.iters.check1268 = icmp eq i64 %392, 0
  br i1 %min.iters.check1268, label %polly.loop_header933, label %vector.ph1269

vector.ph1269:                                    ; preds = %polly.loop_header927
  %broadcast.splatinsert1278 = insertelement <4 x i64> poison, i64 %393, i32 0
  %broadcast.splat1279 = shufflevector <4 x i64> %broadcast.splatinsert1278, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1280 = insertelement <4 x i32> poison, i32 %396, i32 0
  %broadcast.splat1281 = shufflevector <4 x i32> %broadcast.splatinsert1280, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %vector.ph1269
  %index1272 = phi i64 [ 0, %vector.ph1269 ], [ %index.next1273, %vector.body1266 ]
  %vec.ind1276 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1269 ], [ %vec.ind.next1277, %vector.body1266 ]
  %398 = add nuw nsw <4 x i64> %vec.ind1276, %broadcast.splat1279
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat1281, %399
  %401 = add <4 x i32> %400, <i32 1, i32 1, i32 1, i32 1>
  %402 = urem <4 x i32> %401, <i32 1200, i32 1200, i32 1200, i32 1200>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %405 = extractelement <4 x i64> %398, i32 0
  %406 = shl i64 %405, 3
  %407 = add nuw nsw i64 %406, %397
  %408 = getelementptr i8, i8* %call1, i64 %407
  %409 = bitcast i8* %408 to <4 x double>*
  store <4 x double> %404, <4 x double>* %409, align 8, !alias.scope !115, !noalias !122
  %index.next1273 = add i64 %index1272, 4
  %vec.ind.next1277 = add <4 x i64> %vec.ind1276, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next1273, %392
  br i1 %410, label %polly.loop_exit935, label %vector.body1266, !llvm.loop !123

polly.loop_exit935:                               ; preds = %vector.body1266, %polly.loop_header933
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar930, %390
  br i1 %exitcond1171.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_header927, %polly.loop_header933
  %polly.indvar936 = phi i64 [ %polly.indvar_next937, %polly.loop_header933 ], [ 0, %polly.loop_header927 ]
  %411 = add nuw nsw i64 %polly.indvar936, %393
  %412 = trunc i64 %411 to i32
  %413 = mul i32 %412, %396
  %414 = add i32 %413, 1
  %415 = urem i32 %414, 1200
  %p_conv.i = sitofp i32 %415 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %416 = shl i64 %411, 3
  %417 = add nuw nsw i64 %416, %397
  %scevgep940 = getelementptr i8, i8* %call1, i64 %417
  %scevgep940941 = bitcast i8* %scevgep940 to double*
  store double %p_div.i, double* %scevgep940941, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar936, %394
  br i1 %exitcond1167.not, label %polly.loop_exit935, label %polly.loop_header933, !llvm.loop !124
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
!35 = !{!"llvm.loop.tile.size", i32 20}
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
