; ModuleID = 'syr2k_exhaustive/mmp_all_XL_901.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_901.c"
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
  %call945 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1797 = bitcast i8* %call1 to double*
  %polly.access.call1806 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2807 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1806, %call2
  %polly.access.call2826 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2826, %call1
  %2 = or i1 %0, %1
  %polly.access.call846 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call846, %call2
  %4 = icmp ule i8* %polly.access.call2826, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call846, %call1
  %8 = icmp ule i8* %polly.access.call1806, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header919, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv7.i, i64 %index1220
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit980
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start560, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1281 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1281, label %for.body3.i46.preheader1439, label %vector.ph1282

vector.ph1282:                                    ; preds = %for.body3.i46.preheader
  %n.vec1284 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %vector.ph1282
  %index1285 = phi i64 [ 0, %vector.ph1282 ], [ %index.next1286, %vector.body1280 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv21.i, i64 %index1285
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1286 = add i64 %index1285, 4
  %46 = icmp eq i64 %index.next1286, %n.vec1284
  br i1 %46, label %middle.block1278, label %vector.body1280, !llvm.loop !18

middle.block1278:                                 ; preds = %vector.body1280
  %cmp.n1288 = icmp eq i64 %indvars.iv21.i, %n.vec1284
  br i1 %cmp.n1288, label %for.inc6.i, label %for.body3.i46.preheader1439

for.body3.i46.preheader1439:                      ; preds = %for.body3.i46.preheader, %middle.block1278
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1284, %middle.block1278 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1439, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1439 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1278, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting561
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start325, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1328 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1328, label %for.body3.i60.preheader1434, label %vector.ph1329

vector.ph1329:                                    ; preds = %for.body3.i60.preheader
  %n.vec1331 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.body1327, %vector.ph1329
  %index1332 = phi i64 [ 0, %vector.ph1329 ], [ %index.next1333, %vector.body1327 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv21.i52, i64 %index1332
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1336, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1333 = add i64 %index1332, 4
  %57 = icmp eq i64 %index.next1333, %n.vec1331
  br i1 %57, label %middle.block1325, label %vector.body1327, !llvm.loop !64

middle.block1325:                                 ; preds = %vector.body1327
  %cmp.n1335 = icmp eq i64 %indvars.iv21.i52, %n.vec1331
  br i1 %cmp.n1335, label %for.inc6.i63, label %for.body3.i60.preheader1434

for.body3.i60.preheader1434:                      ; preds = %for.body3.i60.preheader, %middle.block1325
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1331, %middle.block1325 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1434, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1434 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1325, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting326
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1378 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1378, label %for.body3.i99.preheader1429, label %vector.ph1379

vector.ph1379:                                    ; preds = %for.body3.i99.preheader
  %n.vec1381 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1377

vector.body1377:                                  ; preds = %vector.body1377, %vector.ph1379
  %index1382 = phi i64 [ 0, %vector.ph1379 ], [ %index.next1383, %vector.body1377 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv21.i91, i64 %index1382
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1386 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1386, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1383 = add i64 %index1382, 4
  %68 = icmp eq i64 %index.next1383, %n.vec1381
  br i1 %68, label %middle.block1375, label %vector.body1377, !llvm.loop !66

middle.block1375:                                 ; preds = %vector.body1377
  %cmp.n1385 = icmp eq i64 %indvars.iv21.i91, %n.vec1381
  br i1 %cmp.n1385, label %for.inc6.i102, label %for.body3.i99.preheader1429

for.body3.i99.preheader1429:                      ; preds = %for.body3.i99.preheader, %middle.block1375
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1381, %middle.block1375 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1429, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1429 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1375, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call945, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall136 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1390 = phi i64 [ %indvar.next1391, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1390, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1392 = icmp ult i64 %88, 4
  br i1 %min.iters.check1392, label %polly.loop_header192.preheader, label %vector.ph1393

vector.ph1393:                                    ; preds = %polly.loop_header
  %n.vec1395 = and i64 %88, -4
  br label %vector.body1389

vector.body1389:                                  ; preds = %vector.body1389, %vector.ph1393
  %index1396 = phi i64 [ 0, %vector.ph1393 ], [ %index.next1397, %vector.body1389 ]
  %90 = shl nuw nsw i64 %index1396, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1400 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1400, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1397 = add i64 %index1396, 4
  %95 = icmp eq i64 %index.next1397, %n.vec1395
  br i1 %95, label %middle.block1387, label %vector.body1389, !llvm.loop !79

middle.block1387:                                 ; preds = %vector.body1389
  %cmp.n1399 = icmp eq i64 %88, %n.vec1395
  br i1 %cmp.n1399, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1387
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1395, %middle.block1387 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1387
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1391 = add i64 %indvar1390, 1
  br i1 %exitcond1067.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1066.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1066.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1033 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1034, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1033, i64 -968)
  %97 = add nsw i64 %smin1061, 1000
  %98 = shl nsw i64 %polly.indvar203, 5
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1034 = add nsw i64 %indvars.iv1033, -32
  %exitcond1065.not = icmp eq i64 %polly.indvar_next204, 32
  br i1 %exitcond1065.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %polly.loop_exit230 ], [ 80, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = shl nuw nsw i64 %polly.indvar209, 4
  %100 = mul nsw i64 %polly.indvar209, -16
  %101 = shl nsw i64 %polly.indvar209, 8
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %102 = mul nsw i64 %polly.indvar209, -256
  %103 = mul nuw nsw i64 %polly.indvar209, 3
  %104 = shl nsw i64 %polly.indvar209, 4
  %105 = or i64 %104, 1
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit286
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next1040 = add nsw i64 %indvars.iv1039, -16
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 16
  %indvars.iv.next1054 = add nsw i64 %indvars.iv1053, -16
  %exitcond1064.not = icmp eq i64 %polly.indvar_next210, 5
  br i1 %exitcond1064.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %106 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1035.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %107 = add nuw nsw i64 %polly.indvar221, %101
  %polly.access.mul.call2225 = mul nuw nsw i64 %107, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %106, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2807, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit286, %polly.loop_exit214
  %indvar1404 = phi i64 [ %indvar.next1405, %polly.loop_exit286 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit286 ], [ %indvars.iv1053, %polly.loop_exit214 ]
  %indvars.iv1051 = phi i64 [ %indvars.iv.next1052, %polly.loop_exit286 ], [ %indvars.iv1049, %polly.loop_exit214 ]
  %indvars.iv1041 = phi i64 [ %indvars.iv.next1042, %polly.loop_exit286 ], [ %indvars.iv1039, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit286 ], [ %103, %polly.loop_exit214 ]
  %108 = mul nsw i64 %indvar1404, -80
  %109 = add i64 %99, %108
  %smax1406 = call i64 @llvm.smax.i64(i64 %109, i64 0)
  %110 = mul nuw nsw i64 %indvar1404, 80
  %111 = add i64 %100, %110
  %112 = add i64 %smax1406, %111
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1051, i64 0)
  %113 = add i64 %smax, %indvars.iv1055
  %114 = mul nuw nsw i64 %polly.indvar231, 5
  %.not = icmp ult i64 %114, %105
  br i1 %.not, label %polly.loop_header265, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %115 = mul nuw nsw i64 %polly.indvar231, 80
  %116 = add nsw i64 %115, %102
  %117 = add nsw i64 %116, -1
  %.inv = icmp sgt i64 %116, 255
  %118 = select i1 %.inv, i64 255, i64 %117
  %polly.loop_guard = icmp sgt i64 %118, -1
  %119 = add nsw i64 %116, 79
  br i1 %polly.loop_guard, label %polly.loop_header234.us, label %polly.loop_header234

polly.loop_header234.us:                          ; preds = %polly.loop_header234.preheader, %polly.loop_exit253.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit253.us ], [ 0, %polly.loop_header234.preheader ]
  %120 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %121 = add nuw nsw i64 %polly.indvar243.us, %101
  %polly.access.mul.call1247.us = mul nuw nsw i64 %121, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %120, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw i64 %polly.indvar243.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar243.us, %118
  br i1 %exitcond1038.not, label %polly.loop_header251.us, label %polly.loop_header240.us

polly.loop_header251.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header251.us
  %polly.indvar255.us = phi i64 [ %polly.indvar_next256.us, %polly.loop_header251.us ], [ %116, %polly.loop_header240.us ]
  %122 = add nsw i64 %polly.indvar255.us, %101
  %polly.access.mul.call1259.us = mul nuw nsw i64 %122, 1000
  %polly.access.add.call1260.us = add nuw nsw i64 %120, %polly.access.mul.call1259.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.indvar255.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %polly.indvar_next256.us = add nsw i64 %polly.indvar255.us, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next256.us, %indvars.iv1041
  br i1 %exitcond1043.not, label %polly.loop_exit253.us, label %polly.loop_header251.us

polly.loop_exit253.us:                            ; preds = %polly.loop_header251.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1045.not, label %polly.merge, label %polly.loop_header234.us

polly.merge.loopexit:                             ; preds = %polly.loop_exit273
  %.pre1190 = mul nuw nsw i64 %polly.indvar231, 80
  br label %polly.merge

polly.merge:                                      ; preds = %polly.loop_exit253, %polly.loop_exit253.us, %polly.merge.loopexit
  %.pre-phi1191 = phi i64 [ %.pre1190, %polly.merge.loopexit ], [ %115, %polly.loop_exit253.us ], [ %115, %polly.loop_exit253 ]
  %123 = sub nsw i64 %101, %.pre-phi1191
  %124 = icmp sgt i64 %123, 0
  %125 = select i1 %124, i64 %123, i64 0
  br label %polly.loop_header284

polly.loop_exit286:                               ; preds = %polly.loop_exit292
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1042 = add nuw nsw i64 %indvars.iv1041, 80
  %indvars.iv.next1052 = add nsw i64 %indvars.iv1051, -80
  %indvars.iv.next1056 = add nsw i64 %indvars.iv1055, 80
  %exitcond1063.not = icmp eq i64 %polly.indvar_next232, 15
  %indvar.next1405 = add i64 %indvar1404, 1
  br i1 %exitcond1063.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit253
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit253 ], [ 0, %polly.loop_header234.preheader ]
  %126 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header251

polly.loop_exit253:                               ; preds = %polly.loop_header251
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1037.not, label %polly.merge, label %polly.loop_header234

polly.loop_header251:                             ; preds = %polly.loop_header234, %polly.loop_header251
  %polly.indvar255 = phi i64 [ %polly.indvar_next256, %polly.loop_header251 ], [ %116, %polly.loop_header234 ]
  %127 = add nsw i64 %polly.indvar255, %101
  %polly.access.mul.call1259 = mul nuw nsw i64 %127, 1000
  %polly.access.add.call1260 = add nuw nsw i64 %126, %polly.access.mul.call1259
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1263 = add nsw i64 %polly.indvar255, %polly.access.mul.Packed_MemRef_call1262
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next256 = add nsw i64 %polly.indvar255, 1
  %polly.loop_cond257.not.not = icmp slt i64 %polly.indvar255, %119
  br i1 %polly.loop_cond257.not.not, label %polly.loop_header251, label %polly.loop_exit253

polly.loop_header265:                             ; preds = %polly.loop_header228, %polly.loop_exit273
  %polly.indvar268 = phi i64 [ %polly.indvar_next269, %polly.loop_exit273 ], [ 0, %polly.loop_header228 ]
  %128 = add nuw nsw i64 %polly.indvar268, %98
  %polly.access.mul.Packed_MemRef_call1281 = mul nuw nsw i64 %polly.indvar268, 1200
  br label %polly.loop_header271

polly.loop_exit273:                               ; preds = %polly.loop_header271
  %polly.indvar_next269 = add nuw nsw i64 %polly.indvar268, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next269, %97
  br i1 %exitcond1048.not, label %polly.merge.loopexit, label %polly.loop_header265

polly.loop_header271:                             ; preds = %polly.loop_header271, %polly.loop_header265
  %polly.indvar274 = phi i64 [ 0, %polly.loop_header265 ], [ %polly.indvar_next275, %polly.loop_header271 ]
  %129 = add nuw nsw i64 %polly.indvar274, %101
  %polly.access.mul.call1278 = mul nuw nsw i64 %129, 1000
  %polly.access.add.call1279 = add nuw nsw i64 %128, %polly.access.mul.call1278
  %polly.access.call1280 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1279
  %polly.access.call1280.load = load double, double* %polly.access.call1280, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1282 = add nuw nsw i64 %polly.indvar274, %polly.access.mul.Packed_MemRef_call1281
  %polly.access.Packed_MemRef_call1283 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282
  store double %polly.access.call1280.load, double* %polly.access.Packed_MemRef_call1283, align 8
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next275, %indvars.iv1039
  br i1 %exitcond1046.not, label %polly.loop_exit273, label %polly.loop_header271

polly.loop_header284:                             ; preds = %polly.loop_exit292, %polly.merge
  %polly.indvar287 = phi i64 [ 0, %polly.merge ], [ %polly.indvar_next288, %polly.loop_exit292 ]
  %polly.access.mul.Packed_MemRef_call1304 = mul nuw nsw i64 %polly.indvar287, 1200
  br label %polly.loop_header290

polly.loop_exit292:                               ; preds = %polly.loop_exit299
  %polly.indvar_next288 = add nuw nsw i64 %polly.indvar287, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next288, %97
  br i1 %exitcond1062.not, label %polly.loop_exit286, label %polly.loop_header284

polly.loop_header290:                             ; preds = %polly.loop_exit299, %polly.loop_header284
  %indvar1407 = phi i64 [ %indvar.next1408, %polly.loop_exit299 ], [ 0, %polly.loop_header284 ]
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit299 ], [ %113, %polly.loop_header284 ]
  %polly.indvar293 = phi i64 [ %polly.indvar_next294, %polly.loop_exit299 ], [ %125, %polly.loop_header284 ]
  %130 = add i64 %112, %indvar1407
  %smin1409 = call i64 @llvm.smin.i64(i64 %130, i64 255)
  %131 = add nsw i64 %smin1409, 1
  %smin1059 = call i64 @llvm.smin.i64(i64 %indvars.iv1057, i64 255)
  %132 = add nuw i64 %polly.indvar293, %.pre-phi1191
  %133 = add i64 %132, %102
  %polly.loop_guard3001192 = icmp sgt i64 %133, -1
  br i1 %polly.loop_guard3001192, label %polly.loop_header297.preheader, label %polly.loop_exit299

polly.loop_header297.preheader:                   ; preds = %polly.loop_header290
  %polly.access.add.Packed_MemRef_call2309 = add nsw i64 %polly.access.mul.Packed_MemRef_call1304, %133
  %polly.access.Packed_MemRef_call2310 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2309
  %_p_scalar_311 = load double, double* %polly.access.Packed_MemRef_call2310, align 8
  %polly.access.Packed_MemRef_call1318 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2309
  %_p_scalar_319 = load double, double* %polly.access.Packed_MemRef_call1318, align 8
  %134 = mul i64 %132, 9600
  %min.iters.check1410 = icmp ult i64 %131, 4
  br i1 %min.iters.check1410, label %polly.loop_header297.preheader1425, label %vector.ph1411

vector.ph1411:                                    ; preds = %polly.loop_header297.preheader
  %n.vec1413 = and i64 %131, -4
  %broadcast.splatinsert1419 = insertelement <4 x double> poison, double %_p_scalar_311, i32 0
  %broadcast.splat1420 = shufflevector <4 x double> %broadcast.splatinsert1419, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1422 = insertelement <4 x double> poison, double %_p_scalar_319, i32 0
  %broadcast.splat1423 = shufflevector <4 x double> %broadcast.splatinsert1422, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1403

vector.body1403:                                  ; preds = %vector.body1403, %vector.ph1411
  %index1414 = phi i64 [ 0, %vector.ph1411 ], [ %index.next1415, %vector.body1403 ]
  %135 = add nuw nsw i64 %index1414, %101
  %136 = add nuw nsw i64 %index1414, %polly.access.mul.Packed_MemRef_call1304
  %137 = getelementptr double, double* %Packed_MemRef_call1, i64 %136
  %138 = bitcast double* %137 to <4 x double>*
  %wide.load1418 = load <4 x double>, <4 x double>* %138, align 8
  %139 = fmul fast <4 x double> %broadcast.splat1420, %wide.load1418
  %140 = getelementptr double, double* %Packed_MemRef_call2, i64 %136
  %141 = bitcast double* %140 to <4 x double>*
  %wide.load1421 = load <4 x double>, <4 x double>* %141, align 8
  %142 = fmul fast <4 x double> %broadcast.splat1423, %wide.load1421
  %143 = shl i64 %135, 3
  %144 = add i64 %143, %134
  %145 = getelementptr i8, i8* %call, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  %wide.load1424 = load <4 x double>, <4 x double>* %146, align 8, !alias.scope !72, !noalias !74
  %147 = fadd fast <4 x double> %142, %139
  %148 = fmul fast <4 x double> %147, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %149 = fadd fast <4 x double> %148, %wide.load1424
  %150 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !72, !noalias !74
  %index.next1415 = add i64 %index1414, 4
  %151 = icmp eq i64 %index.next1415, %n.vec1413
  br i1 %151, label %middle.block1401, label %vector.body1403, !llvm.loop !84

middle.block1401:                                 ; preds = %vector.body1403
  %cmp.n1417 = icmp eq i64 %131, %n.vec1413
  br i1 %cmp.n1417, label %polly.loop_exit299, label %polly.loop_header297.preheader1425

polly.loop_header297.preheader1425:               ; preds = %polly.loop_header297.preheader, %middle.block1401
  %polly.indvar301.ph = phi i64 [ 0, %polly.loop_header297.preheader ], [ %n.vec1413, %middle.block1401 ]
  br label %polly.loop_header297

polly.loop_exit299:                               ; preds = %polly.loop_header297, %middle.block1401, %polly.loop_header290
  %polly.indvar_next294 = add nuw nsw i64 %polly.indvar293, 1
  %polly.loop_cond295 = icmp ult i64 %polly.indvar293, 79
  %indvars.iv.next1058 = add i64 %indvars.iv1057, 1
  %indvar.next1408 = add i64 %indvar1407, 1
  br i1 %polly.loop_cond295, label %polly.loop_header290, label %polly.loop_exit292

polly.loop_header297:                             ; preds = %polly.loop_header297.preheader1425, %polly.loop_header297
  %polly.indvar301 = phi i64 [ %polly.indvar_next302, %polly.loop_header297 ], [ %polly.indvar301.ph, %polly.loop_header297.preheader1425 ]
  %152 = add nuw nsw i64 %polly.indvar301, %101
  %polly.access.add.Packed_MemRef_call1305 = add nuw nsw i64 %polly.indvar301, %polly.access.mul.Packed_MemRef_call1304
  %polly.access.Packed_MemRef_call1306 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1305
  %_p_scalar_307 = load double, double* %polly.access.Packed_MemRef_call1306, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_311, %_p_scalar_307
  %polly.access.Packed_MemRef_call2314 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1305
  %_p_scalar_315 = load double, double* %polly.access.Packed_MemRef_call2314, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_319, %_p_scalar_315
  %153 = shl i64 %152, 3
  %154 = add i64 %153, %134
  %scevgep320 = getelementptr i8, i8* %call, i64 %154
  %scevgep320321 = bitcast i8* %scevgep320 to double*
  %_p_scalar_322 = load double, double* %scevgep320321, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_322
  store double %p_add42.i118, double* %scevgep320321, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next302 = add nuw nsw i64 %polly.indvar301, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar301, %smin1059
  br i1 %exitcond1060.not, label %polly.loop_exit299, label %polly.loop_header297, !llvm.loop !85

polly.start325:                                   ; preds = %kernel_syr2k.exit
  %malloccall327 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall329 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header413

polly.exiting326:                                 ; preds = %polly.loop_exit437
  tail call void @free(i8* %malloccall327)
  tail call void @free(i8* %malloccall329)
  br label %kernel_syr2k.exit90

polly.loop_header413:                             ; preds = %polly.loop_exit421, %polly.start325
  %indvar1340 = phi i64 [ %indvar.next1341, %polly.loop_exit421 ], [ 0, %polly.start325 ]
  %polly.indvar416 = phi i64 [ %polly.indvar_next417, %polly.loop_exit421 ], [ 1, %polly.start325 ]
  %155 = add i64 %indvar1340, 1
  %156 = mul nuw nsw i64 %polly.indvar416, 9600
  %scevgep425 = getelementptr i8, i8* %call, i64 %156
  %min.iters.check1342 = icmp ult i64 %155, 4
  br i1 %min.iters.check1342, label %polly.loop_header419.preheader, label %vector.ph1343

vector.ph1343:                                    ; preds = %polly.loop_header413
  %n.vec1345 = and i64 %155, -4
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %vector.ph1343
  %index1346 = phi i64 [ 0, %vector.ph1343 ], [ %index.next1347, %vector.body1339 ]
  %157 = shl nuw nsw i64 %index1346, 3
  %158 = getelementptr i8, i8* %scevgep425, i64 %157
  %159 = bitcast i8* %158 to <4 x double>*
  %wide.load1350 = load <4 x double>, <4 x double>* %159, align 8, !alias.scope !86, !noalias !88
  %160 = fmul fast <4 x double> %wide.load1350, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %161 = bitcast i8* %158 to <4 x double>*
  store <4 x double> %160, <4 x double>* %161, align 8, !alias.scope !86, !noalias !88
  %index.next1347 = add i64 %index1346, 4
  %162 = icmp eq i64 %index.next1347, %n.vec1345
  br i1 %162, label %middle.block1337, label %vector.body1339, !llvm.loop !93

middle.block1337:                                 ; preds = %vector.body1339
  %cmp.n1349 = icmp eq i64 %155, %n.vec1345
  br i1 %cmp.n1349, label %polly.loop_exit421, label %polly.loop_header419.preheader

polly.loop_header419.preheader:                   ; preds = %polly.loop_header413, %middle.block1337
  %polly.indvar422.ph = phi i64 [ 0, %polly.loop_header413 ], [ %n.vec1345, %middle.block1337 ]
  br label %polly.loop_header419

polly.loop_exit421:                               ; preds = %polly.loop_header419, %middle.block1337
  %polly.indvar_next417 = add nuw nsw i64 %polly.indvar416, 1
  %exitcond1107.not = icmp eq i64 %polly.indvar_next417, 1200
  %indvar.next1341 = add i64 %indvar1340, 1
  br i1 %exitcond1107.not, label %polly.loop_header429.preheader, label %polly.loop_header413

polly.loop_header429.preheader:                   ; preds = %polly.loop_exit421
  %Packed_MemRef_call1328 = bitcast i8* %malloccall327 to double*
  %Packed_MemRef_call2330 = bitcast i8* %malloccall329 to double*
  br label %polly.loop_header429

polly.loop_header419:                             ; preds = %polly.loop_header419.preheader, %polly.loop_header419
  %polly.indvar422 = phi i64 [ %polly.indvar_next423, %polly.loop_header419 ], [ %polly.indvar422.ph, %polly.loop_header419.preheader ]
  %163 = shl nuw nsw i64 %polly.indvar422, 3
  %scevgep426 = getelementptr i8, i8* %scevgep425, i64 %163
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %_p_scalar_428 = load double, double* %scevgep426427, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_428, 1.200000e+00
  store double %p_mul.i57, double* %scevgep426427, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next423 = add nuw nsw i64 %polly.indvar422, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next423, %polly.indvar416
  br i1 %exitcond1106.not, label %polly.loop_exit421, label %polly.loop_header419, !llvm.loop !94

polly.loop_header429:                             ; preds = %polly.loop_header429.preheader, %polly.loop_exit437
  %indvars.iv1071 = phi i64 [ 0, %polly.loop_header429.preheader ], [ %indvars.iv.next1072, %polly.loop_exit437 ]
  %polly.indvar432 = phi i64 [ 0, %polly.loop_header429.preheader ], [ %polly.indvar_next433, %polly.loop_exit437 ]
  %smin1101 = call i64 @llvm.smin.i64(i64 %indvars.iv1071, i64 -968)
  %164 = add nsw i64 %smin1101, 1000
  %165 = shl nsw i64 %polly.indvar432, 5
  br label %polly.loop_header435

polly.loop_exit437:                               ; preds = %polly.loop_exit459
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, -32
  %exitcond1105.not = icmp eq i64 %polly.indvar_next433, 32
  br i1 %exitcond1105.not, label %polly.exiting326, label %polly.loop_header429

polly.loop_header435:                             ; preds = %polly.loop_exit459, %polly.loop_header429
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit459 ], [ 0, %polly.loop_header429 ]
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit459 ], [ 0, %polly.loop_header429 ]
  %indvars.iv1078 = phi i64 [ %indvars.iv.next1079, %polly.loop_exit459 ], [ 80, %polly.loop_header429 ]
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %polly.loop_exit459 ], [ 1200, %polly.loop_header429 ]
  %polly.indvar438 = phi i64 [ %polly.indvar_next439, %polly.loop_exit459 ], [ 0, %polly.loop_header429 ]
  %166 = shl nuw nsw i64 %polly.indvar438, 4
  %167 = mul nsw i64 %polly.indvar438, -16
  %168 = shl nsw i64 %polly.indvar438, 8
  br label %polly.loop_header441

polly.loop_exit443:                               ; preds = %polly.loop_exit449
  %169 = mul nsw i64 %polly.indvar438, -256
  %170 = mul nuw nsw i64 %polly.indvar438, 3
  %171 = shl nsw i64 %polly.indvar438, 4
  %172 = or i64 %171, 1
  br label %polly.loop_header457

polly.loop_exit459:                               ; preds = %polly.loop_exit521
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, -256
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, -16
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 16
  %indvars.iv.next1094 = add nsw i64 %indvars.iv1093, -16
  %exitcond1104.not = icmp eq i64 %polly.indvar_next439, 5
  br i1 %exitcond1104.not, label %polly.loop_exit437, label %polly.loop_header435

polly.loop_header441:                             ; preds = %polly.loop_exit449, %polly.loop_header435
  %polly.indvar444 = phi i64 [ 0, %polly.loop_header435 ], [ %polly.indvar_next445, %polly.loop_exit449 ]
  %173 = add nuw nsw i64 %polly.indvar444, %165
  %polly.access.mul.Packed_MemRef_call2330 = mul nuw nsw i64 %polly.indvar444, 1200
  br label %polly.loop_header447

polly.loop_exit449:                               ; preds = %polly.loop_header447
  %polly.indvar_next445 = add nuw nsw i64 %polly.indvar444, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next445, %164
  br i1 %exitcond1074.not, label %polly.loop_exit443, label %polly.loop_header441

polly.loop_header447:                             ; preds = %polly.loop_header447, %polly.loop_header441
  %polly.indvar450 = phi i64 [ 0, %polly.loop_header441 ], [ %polly.indvar_next451, %polly.loop_header447 ]
  %174 = add nuw nsw i64 %polly.indvar450, %168
  %polly.access.mul.call2454 = mul nuw nsw i64 %174, 1000
  %polly.access.add.call2455 = add nuw nsw i64 %173, %polly.access.mul.call2454
  %polly.access.call2456 = getelementptr double, double* %polly.access.cast.call2807, i64 %polly.access.add.call2455
  %polly.access.call2456.load = load double, double* %polly.access.call2456, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2330 = add nuw nsw i64 %polly.indvar450, %polly.access.mul.Packed_MemRef_call2330
  %polly.access.Packed_MemRef_call2330 = getelementptr double, double* %Packed_MemRef_call2330, i64 %polly.access.add.Packed_MemRef_call2330
  store double %polly.access.call2456.load, double* %polly.access.Packed_MemRef_call2330, align 8
  %polly.indvar_next451 = add nuw nsw i64 %polly.indvar450, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next451, %indvars.iv1068
  br i1 %exitcond1070.not, label %polly.loop_exit449, label %polly.loop_header447

polly.loop_header457:                             ; preds = %polly.loop_exit521, %polly.loop_exit443
  %indvar1354 = phi i64 [ %indvar.next1355, %polly.loop_exit521 ], [ 0, %polly.loop_exit443 ]
  %indvars.iv1095 = phi i64 [ %indvars.iv.next1096, %polly.loop_exit521 ], [ %indvars.iv1093, %polly.loop_exit443 ]
  %indvars.iv1090 = phi i64 [ %indvars.iv.next1091, %polly.loop_exit521 ], [ %indvars.iv1088, %polly.loop_exit443 ]
  %indvars.iv1080 = phi i64 [ %indvars.iv.next1081, %polly.loop_exit521 ], [ %indvars.iv1078, %polly.loop_exit443 ]
  %polly.indvar460 = phi i64 [ %polly.indvar_next461, %polly.loop_exit521 ], [ %170, %polly.loop_exit443 ]
  %175 = mul nsw i64 %indvar1354, -80
  %176 = add i64 %166, %175
  %smax1356 = call i64 @llvm.smax.i64(i64 %176, i64 0)
  %177 = mul nuw nsw i64 %indvar1354, 80
  %178 = add i64 %167, %177
  %179 = add i64 %smax1356, %178
  %smax1092 = call i64 @llvm.smax.i64(i64 %indvars.iv1090, i64 0)
  %180 = add i64 %smax1092, %indvars.iv1095
  %181 = mul nuw nsw i64 %polly.indvar460, 5
  %.not999 = icmp ult i64 %181, %172
  br i1 %.not999, label %polly.loop_header500, label %polly.loop_header467.preheader

polly.loop_header467.preheader:                   ; preds = %polly.loop_header457
  %182 = mul nuw nsw i64 %polly.indvar460, 80
  %183 = add nsw i64 %182, %169
  %184 = add nsw i64 %183, -1
  %.inv1000 = icmp sgt i64 %183, 255
  %185 = select i1 %.inv1000, i64 255, i64 %184
  %polly.loop_guard477 = icmp sgt i64 %185, -1
  %186 = add nsw i64 %183, 79
  br i1 %polly.loop_guard477, label %polly.loop_header467.us, label %polly.loop_header467

polly.loop_header467.us:                          ; preds = %polly.loop_header467.preheader, %polly.loop_exit488.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_exit488.us ], [ 0, %polly.loop_header467.preheader ]
  %187 = add nuw nsw i64 %polly.indvar470.us, %165
  %polly.access.mul.Packed_MemRef_call1328.us = mul nuw nsw i64 %polly.indvar470.us, 1200
  br label %polly.loop_header474.us

polly.loop_header474.us:                          ; preds = %polly.loop_header467.us, %polly.loop_header474.us
  %polly.indvar478.us = phi i64 [ %polly.indvar_next479.us, %polly.loop_header474.us ], [ 0, %polly.loop_header467.us ]
  %188 = add nuw nsw i64 %polly.indvar478.us, %168
  %polly.access.mul.call1482.us = mul nuw nsw i64 %188, 1000
  %polly.access.add.call1483.us = add nuw nsw i64 %187, %polly.access.mul.call1482.us
  %polly.access.call1484.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1483.us
  %polly.access.call1484.load.us = load double, double* %polly.access.call1484.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1328.us = add nuw nsw i64 %polly.indvar478.us, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328.us = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328.us
  store double %polly.access.call1484.load.us, double* %polly.access.Packed_MemRef_call1328.us, align 8
  %polly.indvar_next479.us = add nuw i64 %polly.indvar478.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar478.us, %185
  br i1 %exitcond1077.not, label %polly.loop_header486.us, label %polly.loop_header474.us

polly.loop_header486.us:                          ; preds = %polly.loop_header474.us, %polly.loop_header486.us
  %polly.indvar490.us = phi i64 [ %polly.indvar_next491.us, %polly.loop_header486.us ], [ %183, %polly.loop_header474.us ]
  %189 = add nsw i64 %polly.indvar490.us, %168
  %polly.access.mul.call1494.us = mul nuw nsw i64 %189, 1000
  %polly.access.add.call1495.us = add nuw nsw i64 %187, %polly.access.mul.call1494.us
  %polly.access.call1496.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495.us
  %polly.access.call1496.load.us = load double, double* %polly.access.call1496.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1328498.us = add nsw i64 %polly.indvar490.us, %polly.access.mul.Packed_MemRef_call1328.us
  %polly.access.Packed_MemRef_call1328499.us = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498.us
  store double %polly.access.call1496.load.us, double* %polly.access.Packed_MemRef_call1328499.us, align 8
  %polly.indvar_next491.us = add nsw i64 %polly.indvar490.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next491.us, %indvars.iv1080
  br i1 %exitcond1082.not, label %polly.loop_exit488.us, label %polly.loop_header486.us

polly.loop_exit488.us:                            ; preds = %polly.loop_header486.us
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next471.us, %164
  br i1 %exitcond1084.not, label %polly.merge464, label %polly.loop_header467.us

polly.merge464.loopexit:                          ; preds = %polly.loop_exit508
  %.pre1188 = mul nuw nsw i64 %polly.indvar460, 80
  br label %polly.merge464

polly.merge464:                                   ; preds = %polly.loop_exit488, %polly.loop_exit488.us, %polly.merge464.loopexit
  %.pre-phi1189 = phi i64 [ %.pre1188, %polly.merge464.loopexit ], [ %182, %polly.loop_exit488.us ], [ %182, %polly.loop_exit488 ]
  %190 = sub nsw i64 %168, %.pre-phi1189
  %191 = icmp sgt i64 %190, 0
  %192 = select i1 %191, i64 %190, i64 0
  br label %polly.loop_header519

polly.loop_exit521:                               ; preds = %polly.loop_exit527
  %polly.indvar_next461 = add nuw nsw i64 %polly.indvar460, 1
  %indvars.iv.next1081 = add nuw nsw i64 %indvars.iv1080, 80
  %indvars.iv.next1091 = add nsw i64 %indvars.iv1090, -80
  %indvars.iv.next1096 = add nsw i64 %indvars.iv1095, 80
  %exitcond1103.not = icmp eq i64 %polly.indvar_next461, 15
  %indvar.next1355 = add i64 %indvar1354, 1
  br i1 %exitcond1103.not, label %polly.loop_exit459, label %polly.loop_header457

polly.loop_header467:                             ; preds = %polly.loop_header467.preheader, %polly.loop_exit488
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_exit488 ], [ 0, %polly.loop_header467.preheader ]
  %193 = add nuw nsw i64 %polly.indvar470, %165
  %polly.access.mul.Packed_MemRef_call1328497 = mul nuw nsw i64 %polly.indvar470, 1200
  br label %polly.loop_header486

polly.loop_exit488:                               ; preds = %polly.loop_header486
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar_next471, %164
  br i1 %exitcond1076.not, label %polly.merge464, label %polly.loop_header467

polly.loop_header486:                             ; preds = %polly.loop_header467, %polly.loop_header486
  %polly.indvar490 = phi i64 [ %polly.indvar_next491, %polly.loop_header486 ], [ %183, %polly.loop_header467 ]
  %194 = add nsw i64 %polly.indvar490, %168
  %polly.access.mul.call1494 = mul nuw nsw i64 %194, 1000
  %polly.access.add.call1495 = add nuw nsw i64 %193, %polly.access.mul.call1494
  %polly.access.call1496 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1495
  %polly.access.call1496.load = load double, double* %polly.access.call1496, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1328498 = add nsw i64 %polly.indvar490, %polly.access.mul.Packed_MemRef_call1328497
  %polly.access.Packed_MemRef_call1328499 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328498
  store double %polly.access.call1496.load, double* %polly.access.Packed_MemRef_call1328499, align 8
  %polly.indvar_next491 = add nsw i64 %polly.indvar490, 1
  %polly.loop_cond492.not.not = icmp slt i64 %polly.indvar490, %186
  br i1 %polly.loop_cond492.not.not, label %polly.loop_header486, label %polly.loop_exit488

polly.loop_header500:                             ; preds = %polly.loop_header457, %polly.loop_exit508
  %polly.indvar503 = phi i64 [ %polly.indvar_next504, %polly.loop_exit508 ], [ 0, %polly.loop_header457 ]
  %195 = add nuw nsw i64 %polly.indvar503, %165
  %polly.access.mul.Packed_MemRef_call1328516 = mul nuw nsw i64 %polly.indvar503, 1200
  br label %polly.loop_header506

polly.loop_exit508:                               ; preds = %polly.loop_header506
  %polly.indvar_next504 = add nuw nsw i64 %polly.indvar503, 1
  %exitcond1087.not = icmp eq i64 %polly.indvar_next504, %164
  br i1 %exitcond1087.not, label %polly.merge464.loopexit, label %polly.loop_header500

polly.loop_header506:                             ; preds = %polly.loop_header506, %polly.loop_header500
  %polly.indvar509 = phi i64 [ 0, %polly.loop_header500 ], [ %polly.indvar_next510, %polly.loop_header506 ]
  %196 = add nuw nsw i64 %polly.indvar509, %168
  %polly.access.mul.call1513 = mul nuw nsw i64 %196, 1000
  %polly.access.add.call1514 = add nuw nsw i64 %195, %polly.access.mul.call1513
  %polly.access.call1515 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1514
  %polly.access.call1515.load = load double, double* %polly.access.call1515, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1328517 = add nuw nsw i64 %polly.indvar509, %polly.access.mul.Packed_MemRef_call1328516
  %polly.access.Packed_MemRef_call1328518 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328517
  store double %polly.access.call1515.load, double* %polly.access.Packed_MemRef_call1328518, align 8
  %polly.indvar_next510 = add nuw nsw i64 %polly.indvar509, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next510, %indvars.iv1078
  br i1 %exitcond1085.not, label %polly.loop_exit508, label %polly.loop_header506

polly.loop_header519:                             ; preds = %polly.loop_exit527, %polly.merge464
  %polly.indvar522 = phi i64 [ 0, %polly.merge464 ], [ %polly.indvar_next523, %polly.loop_exit527 ]
  %polly.access.mul.Packed_MemRef_call1328539 = mul nuw nsw i64 %polly.indvar522, 1200
  br label %polly.loop_header525

polly.loop_exit527:                               ; preds = %polly.loop_exit534
  %polly.indvar_next523 = add nuw nsw i64 %polly.indvar522, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next523, %164
  br i1 %exitcond1102.not, label %polly.loop_exit521, label %polly.loop_header519

polly.loop_header525:                             ; preds = %polly.loop_exit534, %polly.loop_header519
  %indvar1357 = phi i64 [ %indvar.next1358, %polly.loop_exit534 ], [ 0, %polly.loop_header519 ]
  %indvars.iv1097 = phi i64 [ %indvars.iv.next1098, %polly.loop_exit534 ], [ %180, %polly.loop_header519 ]
  %polly.indvar528 = phi i64 [ %polly.indvar_next529, %polly.loop_exit534 ], [ %192, %polly.loop_header519 ]
  %197 = add i64 %179, %indvar1357
  %smin1359 = call i64 @llvm.smin.i64(i64 %197, i64 255)
  %198 = add nsw i64 %smin1359, 1
  %smin1099 = call i64 @llvm.smin.i64(i64 %indvars.iv1097, i64 255)
  %199 = add nuw i64 %polly.indvar528, %.pre-phi1189
  %200 = add i64 %199, %169
  %polly.loop_guard5351193 = icmp sgt i64 %200, -1
  br i1 %polly.loop_guard5351193, label %polly.loop_header532.preheader, label %polly.loop_exit534

polly.loop_header532.preheader:                   ; preds = %polly.loop_header525
  %polly.access.add.Packed_MemRef_call2330544 = add nsw i64 %polly.access.mul.Packed_MemRef_call1328539, %200
  %polly.access.Packed_MemRef_call2330545 = getelementptr double, double* %Packed_MemRef_call2330, i64 %polly.access.add.Packed_MemRef_call2330544
  %_p_scalar_546 = load double, double* %polly.access.Packed_MemRef_call2330545, align 8
  %polly.access.Packed_MemRef_call1328553 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call2330544
  %_p_scalar_554 = load double, double* %polly.access.Packed_MemRef_call1328553, align 8
  %201 = mul i64 %199, 9600
  %min.iters.check1360 = icmp ult i64 %198, 4
  br i1 %min.iters.check1360, label %polly.loop_header532.preheader1430, label %vector.ph1361

vector.ph1361:                                    ; preds = %polly.loop_header532.preheader
  %n.vec1363 = and i64 %198, -4
  %broadcast.splatinsert1369 = insertelement <4 x double> poison, double %_p_scalar_546, i32 0
  %broadcast.splat1370 = shufflevector <4 x double> %broadcast.splatinsert1369, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1372 = insertelement <4 x double> poison, double %_p_scalar_554, i32 0
  %broadcast.splat1373 = shufflevector <4 x double> %broadcast.splatinsert1372, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1353

vector.body1353:                                  ; preds = %vector.body1353, %vector.ph1361
  %index1364 = phi i64 [ 0, %vector.ph1361 ], [ %index.next1365, %vector.body1353 ]
  %202 = add nuw nsw i64 %index1364, %168
  %203 = add nuw nsw i64 %index1364, %polly.access.mul.Packed_MemRef_call1328539
  %204 = getelementptr double, double* %Packed_MemRef_call1328, i64 %203
  %205 = bitcast double* %204 to <4 x double>*
  %wide.load1368 = load <4 x double>, <4 x double>* %205, align 8
  %206 = fmul fast <4 x double> %broadcast.splat1370, %wide.load1368
  %207 = getelementptr double, double* %Packed_MemRef_call2330, i64 %203
  %208 = bitcast double* %207 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %208, align 8
  %209 = fmul fast <4 x double> %broadcast.splat1373, %wide.load1371
  %210 = shl i64 %202, 3
  %211 = add i64 %210, %201
  %212 = getelementptr i8, i8* %call, i64 %211
  %213 = bitcast i8* %212 to <4 x double>*
  %wide.load1374 = load <4 x double>, <4 x double>* %213, align 8, !alias.scope !86, !noalias !88
  %214 = fadd fast <4 x double> %209, %206
  %215 = fmul fast <4 x double> %214, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %216 = fadd fast <4 x double> %215, %wide.load1374
  %217 = bitcast i8* %212 to <4 x double>*
  store <4 x double> %216, <4 x double>* %217, align 8, !alias.scope !86, !noalias !88
  %index.next1365 = add i64 %index1364, 4
  %218 = icmp eq i64 %index.next1365, %n.vec1363
  br i1 %218, label %middle.block1351, label %vector.body1353, !llvm.loop !97

middle.block1351:                                 ; preds = %vector.body1353
  %cmp.n1367 = icmp eq i64 %198, %n.vec1363
  br i1 %cmp.n1367, label %polly.loop_exit534, label %polly.loop_header532.preheader1430

polly.loop_header532.preheader1430:               ; preds = %polly.loop_header532.preheader, %middle.block1351
  %polly.indvar536.ph = phi i64 [ 0, %polly.loop_header532.preheader ], [ %n.vec1363, %middle.block1351 ]
  br label %polly.loop_header532

polly.loop_exit534:                               ; preds = %polly.loop_header532, %middle.block1351, %polly.loop_header525
  %polly.indvar_next529 = add nuw nsw i64 %polly.indvar528, 1
  %polly.loop_cond530 = icmp ult i64 %polly.indvar528, 79
  %indvars.iv.next1098 = add i64 %indvars.iv1097, 1
  %indvar.next1358 = add i64 %indvar1357, 1
  br i1 %polly.loop_cond530, label %polly.loop_header525, label %polly.loop_exit527

polly.loop_header532:                             ; preds = %polly.loop_header532.preheader1430, %polly.loop_header532
  %polly.indvar536 = phi i64 [ %polly.indvar_next537, %polly.loop_header532 ], [ %polly.indvar536.ph, %polly.loop_header532.preheader1430 ]
  %219 = add nuw nsw i64 %polly.indvar536, %168
  %polly.access.add.Packed_MemRef_call1328540 = add nuw nsw i64 %polly.indvar536, %polly.access.mul.Packed_MemRef_call1328539
  %polly.access.Packed_MemRef_call1328541 = getelementptr double, double* %Packed_MemRef_call1328, i64 %polly.access.add.Packed_MemRef_call1328540
  %_p_scalar_542 = load double, double* %polly.access.Packed_MemRef_call1328541, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_546, %_p_scalar_542
  %polly.access.Packed_MemRef_call2330549 = getelementptr double, double* %Packed_MemRef_call2330, i64 %polly.access.add.Packed_MemRef_call1328540
  %_p_scalar_550 = load double, double* %polly.access.Packed_MemRef_call2330549, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_554, %_p_scalar_550
  %220 = shl i64 %219, 3
  %221 = add i64 %220, %201
  %scevgep555 = getelementptr i8, i8* %call, i64 %221
  %scevgep555556 = bitcast i8* %scevgep555 to double*
  %_p_scalar_557 = load double, double* %scevgep555556, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_557
  store double %p_add42.i79, double* %scevgep555556, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar536, %smin1099
  br i1 %exitcond1100.not, label %polly.loop_exit534, label %polly.loop_header532, !llvm.loop !98

polly.start560:                                   ; preds = %init_array.exit
  %malloccall562 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall564 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header648

polly.exiting561:                                 ; preds = %polly.loop_exit672
  tail call void @free(i8* %malloccall562)
  tail call void @free(i8* %malloccall564)
  br label %kernel_syr2k.exit

polly.loop_header648:                             ; preds = %polly.loop_exit656, %polly.start560
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit656 ], [ 0, %polly.start560 ]
  %polly.indvar651 = phi i64 [ %polly.indvar_next652, %polly.loop_exit656 ], [ 1, %polly.start560 ]
  %222 = add i64 %indvar, 1
  %223 = mul nuw nsw i64 %polly.indvar651, 9600
  %scevgep660 = getelementptr i8, i8* %call, i64 %223
  %min.iters.check1292 = icmp ult i64 %222, 4
  br i1 %min.iters.check1292, label %polly.loop_header654.preheader, label %vector.ph1293

vector.ph1293:                                    ; preds = %polly.loop_header648
  %n.vec1295 = and i64 %222, -4
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %vector.ph1293
  %index1296 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1297, %vector.body1291 ]
  %224 = shl nuw nsw i64 %index1296, 3
  %225 = getelementptr i8, i8* %scevgep660, i64 %224
  %226 = bitcast i8* %225 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %226, align 8, !alias.scope !99, !noalias !101
  %227 = fmul fast <4 x double> %wide.load1300, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %228 = bitcast i8* %225 to <4 x double>*
  store <4 x double> %227, <4 x double>* %228, align 8, !alias.scope !99, !noalias !101
  %index.next1297 = add i64 %index1296, 4
  %229 = icmp eq i64 %index.next1297, %n.vec1295
  br i1 %229, label %middle.block1289, label %vector.body1291, !llvm.loop !106

middle.block1289:                                 ; preds = %vector.body1291
  %cmp.n1299 = icmp eq i64 %222, %n.vec1295
  br i1 %cmp.n1299, label %polly.loop_exit656, label %polly.loop_header654.preheader

polly.loop_header654.preheader:                   ; preds = %polly.loop_header648, %middle.block1289
  %polly.indvar657.ph = phi i64 [ 0, %polly.loop_header648 ], [ %n.vec1295, %middle.block1289 ]
  br label %polly.loop_header654

polly.loop_exit656:                               ; preds = %polly.loop_header654, %middle.block1289
  %polly.indvar_next652 = add nuw nsw i64 %polly.indvar651, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next652, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1147.not, label %polly.loop_header664.preheader, label %polly.loop_header648

polly.loop_header664.preheader:                   ; preds = %polly.loop_exit656
  %Packed_MemRef_call1563 = bitcast i8* %malloccall562 to double*
  %Packed_MemRef_call2565 = bitcast i8* %malloccall564 to double*
  br label %polly.loop_header664

polly.loop_header654:                             ; preds = %polly.loop_header654.preheader, %polly.loop_header654
  %polly.indvar657 = phi i64 [ %polly.indvar_next658, %polly.loop_header654 ], [ %polly.indvar657.ph, %polly.loop_header654.preheader ]
  %230 = shl nuw nsw i64 %polly.indvar657, 3
  %scevgep661 = getelementptr i8, i8* %scevgep660, i64 %230
  %scevgep661662 = bitcast i8* %scevgep661 to double*
  %_p_scalar_663 = load double, double* %scevgep661662, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_663, 1.200000e+00
  store double %p_mul.i, double* %scevgep661662, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next658 = add nuw nsw i64 %polly.indvar657, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar_next658, %polly.indvar651
  br i1 %exitcond1146.not, label %polly.loop_exit656, label %polly.loop_header654, !llvm.loop !107

polly.loop_header664:                             ; preds = %polly.loop_header664.preheader, %polly.loop_exit672
  %indvars.iv1111 = phi i64 [ 0, %polly.loop_header664.preheader ], [ %indvars.iv.next1112, %polly.loop_exit672 ]
  %polly.indvar667 = phi i64 [ 0, %polly.loop_header664.preheader ], [ %polly.indvar_next668, %polly.loop_exit672 ]
  %smin1141 = call i64 @llvm.smin.i64(i64 %indvars.iv1111, i64 -968)
  %231 = add nsw i64 %smin1141, 1000
  %232 = shl nsw i64 %polly.indvar667, 5
  br label %polly.loop_header670

polly.loop_exit672:                               ; preds = %polly.loop_exit694
  %polly.indvar_next668 = add nuw nsw i64 %polly.indvar667, 1
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -32
  %exitcond1145.not = icmp eq i64 %polly.indvar_next668, 32
  br i1 %exitcond1145.not, label %polly.exiting561, label %polly.loop_header664

polly.loop_header670:                             ; preds = %polly.loop_exit694, %polly.loop_header664
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit694 ], [ 0, %polly.loop_header664 ]
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit694 ], [ 0, %polly.loop_header664 ]
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit694 ], [ 80, %polly.loop_header664 ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit694 ], [ 1200, %polly.loop_header664 ]
  %polly.indvar673 = phi i64 [ %polly.indvar_next674, %polly.loop_exit694 ], [ 0, %polly.loop_header664 ]
  %233 = shl nuw nsw i64 %polly.indvar673, 4
  %234 = mul nsw i64 %polly.indvar673, -16
  %235 = shl nsw i64 %polly.indvar673, 8
  br label %polly.loop_header676

polly.loop_exit678:                               ; preds = %polly.loop_exit684
  %236 = mul nsw i64 %polly.indvar673, -256
  %237 = mul nuw nsw i64 %polly.indvar673, 3
  %238 = shl nsw i64 %polly.indvar673, 4
  %239 = or i64 %238, 1
  br label %polly.loop_header692

polly.loop_exit694:                               ; preds = %polly.loop_exit756
  %polly.indvar_next674 = add nuw nsw i64 %polly.indvar673, 1
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -256
  %indvars.iv.next1119 = add nsw i64 %indvars.iv1118, -16
  %indvars.iv.next1129 = add nuw nsw i64 %indvars.iv1128, 16
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -16
  %exitcond1144.not = icmp eq i64 %polly.indvar_next674, 5
  br i1 %exitcond1144.not, label %polly.loop_exit672, label %polly.loop_header670

polly.loop_header676:                             ; preds = %polly.loop_exit684, %polly.loop_header670
  %polly.indvar679 = phi i64 [ 0, %polly.loop_header670 ], [ %polly.indvar_next680, %polly.loop_exit684 ]
  %240 = add nuw nsw i64 %polly.indvar679, %232
  %polly.access.mul.Packed_MemRef_call2565 = mul nuw nsw i64 %polly.indvar679, 1200
  br label %polly.loop_header682

polly.loop_exit684:                               ; preds = %polly.loop_header682
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next680, %231
  br i1 %exitcond1114.not, label %polly.loop_exit678, label %polly.loop_header676

polly.loop_header682:                             ; preds = %polly.loop_header682, %polly.loop_header676
  %polly.indvar685 = phi i64 [ 0, %polly.loop_header676 ], [ %polly.indvar_next686, %polly.loop_header682 ]
  %241 = add nuw nsw i64 %polly.indvar685, %235
  %polly.access.mul.call2689 = mul nuw nsw i64 %241, 1000
  %polly.access.add.call2690 = add nuw nsw i64 %240, %polly.access.mul.call2689
  %polly.access.call2691 = getelementptr double, double* %polly.access.cast.call2807, i64 %polly.access.add.call2690
  %polly.access.call2691.load = load double, double* %polly.access.call2691, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2565 = add nuw nsw i64 %polly.indvar685, %polly.access.mul.Packed_MemRef_call2565
  %polly.access.Packed_MemRef_call2565 = getelementptr double, double* %Packed_MemRef_call2565, i64 %polly.access.add.Packed_MemRef_call2565
  store double %polly.access.call2691.load, double* %polly.access.Packed_MemRef_call2565, align 8
  %polly.indvar_next686 = add nuw nsw i64 %polly.indvar685, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next686, %indvars.iv1108
  br i1 %exitcond1110.not, label %polly.loop_exit684, label %polly.loop_header682

polly.loop_header692:                             ; preds = %polly.loop_exit756, %polly.loop_exit678
  %indvar1304 = phi i64 [ %indvar.next1305, %polly.loop_exit756 ], [ 0, %polly.loop_exit678 ]
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit756 ], [ %indvars.iv1133, %polly.loop_exit678 ]
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit756 ], [ %indvars.iv1128, %polly.loop_exit678 ]
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit756 ], [ %indvars.iv1118, %polly.loop_exit678 ]
  %polly.indvar695 = phi i64 [ %polly.indvar_next696, %polly.loop_exit756 ], [ %237, %polly.loop_exit678 ]
  %242 = mul nsw i64 %indvar1304, -80
  %243 = add i64 %233, %242
  %smax1306 = call i64 @llvm.smax.i64(i64 %243, i64 0)
  %244 = mul nuw nsw i64 %indvar1304, 80
  %245 = add i64 %234, %244
  %246 = add i64 %smax1306, %245
  %smax1132 = call i64 @llvm.smax.i64(i64 %indvars.iv1130, i64 0)
  %247 = add i64 %smax1132, %indvars.iv1135
  %248 = mul nuw nsw i64 %polly.indvar695, 5
  %.not1001 = icmp ult i64 %248, %239
  br i1 %.not1001, label %polly.loop_header735, label %polly.loop_header702.preheader

polly.loop_header702.preheader:                   ; preds = %polly.loop_header692
  %249 = mul nuw nsw i64 %polly.indvar695, 80
  %250 = add nsw i64 %249, %236
  %251 = add nsw i64 %250, -1
  %.inv1002 = icmp sgt i64 %250, 255
  %252 = select i1 %.inv1002, i64 255, i64 %251
  %polly.loop_guard712 = icmp sgt i64 %252, -1
  %253 = add nsw i64 %250, 79
  br i1 %polly.loop_guard712, label %polly.loop_header702.us, label %polly.loop_header702

polly.loop_header702.us:                          ; preds = %polly.loop_header702.preheader, %polly.loop_exit723.us
  %polly.indvar705.us = phi i64 [ %polly.indvar_next706.us, %polly.loop_exit723.us ], [ 0, %polly.loop_header702.preheader ]
  %254 = add nuw nsw i64 %polly.indvar705.us, %232
  %polly.access.mul.Packed_MemRef_call1563.us = mul nuw nsw i64 %polly.indvar705.us, 1200
  br label %polly.loop_header709.us

polly.loop_header709.us:                          ; preds = %polly.loop_header702.us, %polly.loop_header709.us
  %polly.indvar713.us = phi i64 [ %polly.indvar_next714.us, %polly.loop_header709.us ], [ 0, %polly.loop_header702.us ]
  %255 = add nuw nsw i64 %polly.indvar713.us, %235
  %polly.access.mul.call1717.us = mul nuw nsw i64 %255, 1000
  %polly.access.add.call1718.us = add nuw nsw i64 %254, %polly.access.mul.call1717.us
  %polly.access.call1719.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1718.us
  %polly.access.call1719.load.us = load double, double* %polly.access.call1719.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1563.us = add nuw nsw i64 %polly.indvar713.us, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563.us = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563.us
  store double %polly.access.call1719.load.us, double* %polly.access.Packed_MemRef_call1563.us, align 8
  %polly.indvar_next714.us = add nuw i64 %polly.indvar713.us, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar713.us, %252
  br i1 %exitcond1117.not, label %polly.loop_header721.us, label %polly.loop_header709.us

polly.loop_header721.us:                          ; preds = %polly.loop_header709.us, %polly.loop_header721.us
  %polly.indvar725.us = phi i64 [ %polly.indvar_next726.us, %polly.loop_header721.us ], [ %250, %polly.loop_header709.us ]
  %256 = add nsw i64 %polly.indvar725.us, %235
  %polly.access.mul.call1729.us = mul nuw nsw i64 %256, 1000
  %polly.access.add.call1730.us = add nuw nsw i64 %254, %polly.access.mul.call1729.us
  %polly.access.call1731.us = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730.us
  %polly.access.call1731.load.us = load double, double* %polly.access.call1731.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1563733.us = add nsw i64 %polly.indvar725.us, %polly.access.mul.Packed_MemRef_call1563.us
  %polly.access.Packed_MemRef_call1563734.us = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733.us
  store double %polly.access.call1731.load.us, double* %polly.access.Packed_MemRef_call1563734.us, align 8
  %polly.indvar_next726.us = add nsw i64 %polly.indvar725.us, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next726.us, %indvars.iv1120
  br i1 %exitcond1122.not, label %polly.loop_exit723.us, label %polly.loop_header721.us

polly.loop_exit723.us:                            ; preds = %polly.loop_header721.us
  %polly.indvar_next706.us = add nuw nsw i64 %polly.indvar705.us, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next706.us, %231
  br i1 %exitcond1124.not, label %polly.merge699, label %polly.loop_header702.us

polly.merge699.loopexit:                          ; preds = %polly.loop_exit743
  %.pre = mul nuw nsw i64 %polly.indvar695, 80
  br label %polly.merge699

polly.merge699:                                   ; preds = %polly.loop_exit723, %polly.loop_exit723.us, %polly.merge699.loopexit
  %.pre-phi = phi i64 [ %.pre, %polly.merge699.loopexit ], [ %249, %polly.loop_exit723.us ], [ %249, %polly.loop_exit723 ]
  %257 = sub nsw i64 %235, %.pre-phi
  %258 = icmp sgt i64 %257, 0
  %259 = select i1 %258, i64 %257, i64 0
  br label %polly.loop_header754

polly.loop_exit756:                               ; preds = %polly.loop_exit762
  %polly.indvar_next696 = add nuw nsw i64 %polly.indvar695, 1
  %indvars.iv.next1121 = add nuw nsw i64 %indvars.iv1120, 80
  %indvars.iv.next1131 = add nsw i64 %indvars.iv1130, -80
  %indvars.iv.next1136 = add nsw i64 %indvars.iv1135, 80
  %exitcond1143.not = icmp eq i64 %polly.indvar_next696, 15
  %indvar.next1305 = add i64 %indvar1304, 1
  br i1 %exitcond1143.not, label %polly.loop_exit694, label %polly.loop_header692

polly.loop_header702:                             ; preds = %polly.loop_header702.preheader, %polly.loop_exit723
  %polly.indvar705 = phi i64 [ %polly.indvar_next706, %polly.loop_exit723 ], [ 0, %polly.loop_header702.preheader ]
  %260 = add nuw nsw i64 %polly.indvar705, %232
  %polly.access.mul.Packed_MemRef_call1563732 = mul nuw nsw i64 %polly.indvar705, 1200
  br label %polly.loop_header721

polly.loop_exit723:                               ; preds = %polly.loop_header721
  %polly.indvar_next706 = add nuw nsw i64 %polly.indvar705, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next706, %231
  br i1 %exitcond1116.not, label %polly.merge699, label %polly.loop_header702

polly.loop_header721:                             ; preds = %polly.loop_header702, %polly.loop_header721
  %polly.indvar725 = phi i64 [ %polly.indvar_next726, %polly.loop_header721 ], [ %250, %polly.loop_header702 ]
  %261 = add nsw i64 %polly.indvar725, %235
  %polly.access.mul.call1729 = mul nuw nsw i64 %261, 1000
  %polly.access.add.call1730 = add nuw nsw i64 %260, %polly.access.mul.call1729
  %polly.access.call1731 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1730
  %polly.access.call1731.load = load double, double* %polly.access.call1731, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1563733 = add nsw i64 %polly.indvar725, %polly.access.mul.Packed_MemRef_call1563732
  %polly.access.Packed_MemRef_call1563734 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563733
  store double %polly.access.call1731.load, double* %polly.access.Packed_MemRef_call1563734, align 8
  %polly.indvar_next726 = add nsw i64 %polly.indvar725, 1
  %polly.loop_cond727.not.not = icmp slt i64 %polly.indvar725, %253
  br i1 %polly.loop_cond727.not.not, label %polly.loop_header721, label %polly.loop_exit723

polly.loop_header735:                             ; preds = %polly.loop_header692, %polly.loop_exit743
  %polly.indvar738 = phi i64 [ %polly.indvar_next739, %polly.loop_exit743 ], [ 0, %polly.loop_header692 ]
  %262 = add nuw nsw i64 %polly.indvar738, %232
  %polly.access.mul.Packed_MemRef_call1563751 = mul nuw nsw i64 %polly.indvar738, 1200
  br label %polly.loop_header741

polly.loop_exit743:                               ; preds = %polly.loop_header741
  %polly.indvar_next739 = add nuw nsw i64 %polly.indvar738, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar_next739, %231
  br i1 %exitcond1127.not, label %polly.merge699.loopexit, label %polly.loop_header735

polly.loop_header741:                             ; preds = %polly.loop_header741, %polly.loop_header735
  %polly.indvar744 = phi i64 [ 0, %polly.loop_header735 ], [ %polly.indvar_next745, %polly.loop_header741 ]
  %263 = add nuw nsw i64 %polly.indvar744, %235
  %polly.access.mul.call1748 = mul nuw nsw i64 %263, 1000
  %polly.access.add.call1749 = add nuw nsw i64 %262, %polly.access.mul.call1748
  %polly.access.call1750 = getelementptr double, double* %polly.access.cast.call1797, i64 %polly.access.add.call1749
  %polly.access.call1750.load = load double, double* %polly.access.call1750, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1563752 = add nuw nsw i64 %polly.indvar744, %polly.access.mul.Packed_MemRef_call1563751
  %polly.access.Packed_MemRef_call1563753 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563752
  store double %polly.access.call1750.load, double* %polly.access.Packed_MemRef_call1563753, align 8
  %polly.indvar_next745 = add nuw nsw i64 %polly.indvar744, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next745, %indvars.iv1118
  br i1 %exitcond1125.not, label %polly.loop_exit743, label %polly.loop_header741

polly.loop_header754:                             ; preds = %polly.loop_exit762, %polly.merge699
  %polly.indvar757 = phi i64 [ 0, %polly.merge699 ], [ %polly.indvar_next758, %polly.loop_exit762 ]
  %polly.access.mul.Packed_MemRef_call1563774 = mul nuw nsw i64 %polly.indvar757, 1200
  br label %polly.loop_header760

polly.loop_exit762:                               ; preds = %polly.loop_exit769
  %polly.indvar_next758 = add nuw nsw i64 %polly.indvar757, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar_next758, %231
  br i1 %exitcond1142.not, label %polly.loop_exit756, label %polly.loop_header754

polly.loop_header760:                             ; preds = %polly.loop_exit769, %polly.loop_header754
  %indvar1307 = phi i64 [ %indvar.next1308, %polly.loop_exit769 ], [ 0, %polly.loop_header754 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit769 ], [ %247, %polly.loop_header754 ]
  %polly.indvar763 = phi i64 [ %polly.indvar_next764, %polly.loop_exit769 ], [ %259, %polly.loop_header754 ]
  %264 = add i64 %246, %indvar1307
  %smin1309 = call i64 @llvm.smin.i64(i64 %264, i64 255)
  %265 = add nsw i64 %smin1309, 1
  %smin1139 = call i64 @llvm.smin.i64(i64 %indvars.iv1137, i64 255)
  %266 = add nuw i64 %polly.indvar763, %.pre-phi
  %267 = add i64 %266, %236
  %polly.loop_guard7701194 = icmp sgt i64 %267, -1
  br i1 %polly.loop_guard7701194, label %polly.loop_header767.preheader, label %polly.loop_exit769

polly.loop_header767.preheader:                   ; preds = %polly.loop_header760
  %polly.access.add.Packed_MemRef_call2565779 = add nsw i64 %polly.access.mul.Packed_MemRef_call1563774, %267
  %polly.access.Packed_MemRef_call2565780 = getelementptr double, double* %Packed_MemRef_call2565, i64 %polly.access.add.Packed_MemRef_call2565779
  %_p_scalar_781 = load double, double* %polly.access.Packed_MemRef_call2565780, align 8
  %polly.access.Packed_MemRef_call1563788 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call2565779
  %_p_scalar_789 = load double, double* %polly.access.Packed_MemRef_call1563788, align 8
  %268 = mul i64 %266, 9600
  %min.iters.check1310 = icmp ult i64 %265, 4
  br i1 %min.iters.check1310, label %polly.loop_header767.preheader1435, label %vector.ph1311

vector.ph1311:                                    ; preds = %polly.loop_header767.preheader
  %n.vec1313 = and i64 %265, -4
  %broadcast.splatinsert1319 = insertelement <4 x double> poison, double %_p_scalar_781, i32 0
  %broadcast.splat1320 = shufflevector <4 x double> %broadcast.splatinsert1319, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1322 = insertelement <4 x double> poison, double %_p_scalar_789, i32 0
  %broadcast.splat1323 = shufflevector <4 x double> %broadcast.splatinsert1322, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1303

vector.body1303:                                  ; preds = %vector.body1303, %vector.ph1311
  %index1314 = phi i64 [ 0, %vector.ph1311 ], [ %index.next1315, %vector.body1303 ]
  %269 = add nuw nsw i64 %index1314, %235
  %270 = add nuw nsw i64 %index1314, %polly.access.mul.Packed_MemRef_call1563774
  %271 = getelementptr double, double* %Packed_MemRef_call1563, i64 %270
  %272 = bitcast double* %271 to <4 x double>*
  %wide.load1318 = load <4 x double>, <4 x double>* %272, align 8
  %273 = fmul fast <4 x double> %broadcast.splat1320, %wide.load1318
  %274 = getelementptr double, double* %Packed_MemRef_call2565, i64 %270
  %275 = bitcast double* %274 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %275, align 8
  %276 = fmul fast <4 x double> %broadcast.splat1323, %wide.load1321
  %277 = shl i64 %269, 3
  %278 = add i64 %277, %268
  %279 = getelementptr i8, i8* %call, i64 %278
  %280 = bitcast i8* %279 to <4 x double>*
  %wide.load1324 = load <4 x double>, <4 x double>* %280, align 8, !alias.scope !99, !noalias !101
  %281 = fadd fast <4 x double> %276, %273
  %282 = fmul fast <4 x double> %281, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %283 = fadd fast <4 x double> %282, %wide.load1324
  %284 = bitcast i8* %279 to <4 x double>*
  store <4 x double> %283, <4 x double>* %284, align 8, !alias.scope !99, !noalias !101
  %index.next1315 = add i64 %index1314, 4
  %285 = icmp eq i64 %index.next1315, %n.vec1313
  br i1 %285, label %middle.block1301, label %vector.body1303, !llvm.loop !110

middle.block1301:                                 ; preds = %vector.body1303
  %cmp.n1317 = icmp eq i64 %265, %n.vec1313
  br i1 %cmp.n1317, label %polly.loop_exit769, label %polly.loop_header767.preheader1435

polly.loop_header767.preheader1435:               ; preds = %polly.loop_header767.preheader, %middle.block1301
  %polly.indvar771.ph = phi i64 [ 0, %polly.loop_header767.preheader ], [ %n.vec1313, %middle.block1301 ]
  br label %polly.loop_header767

polly.loop_exit769:                               ; preds = %polly.loop_header767, %middle.block1301, %polly.loop_header760
  %polly.indvar_next764 = add nuw nsw i64 %polly.indvar763, 1
  %polly.loop_cond765 = icmp ult i64 %polly.indvar763, 79
  %indvars.iv.next1138 = add i64 %indvars.iv1137, 1
  %indvar.next1308 = add i64 %indvar1307, 1
  br i1 %polly.loop_cond765, label %polly.loop_header760, label %polly.loop_exit762

polly.loop_header767:                             ; preds = %polly.loop_header767.preheader1435, %polly.loop_header767
  %polly.indvar771 = phi i64 [ %polly.indvar_next772, %polly.loop_header767 ], [ %polly.indvar771.ph, %polly.loop_header767.preheader1435 ]
  %286 = add nuw nsw i64 %polly.indvar771, %235
  %polly.access.add.Packed_MemRef_call1563775 = add nuw nsw i64 %polly.indvar771, %polly.access.mul.Packed_MemRef_call1563774
  %polly.access.Packed_MemRef_call1563776 = getelementptr double, double* %Packed_MemRef_call1563, i64 %polly.access.add.Packed_MemRef_call1563775
  %_p_scalar_777 = load double, double* %polly.access.Packed_MemRef_call1563776, align 8
  %p_mul27.i = fmul fast double %_p_scalar_781, %_p_scalar_777
  %polly.access.Packed_MemRef_call2565784 = getelementptr double, double* %Packed_MemRef_call2565, i64 %polly.access.add.Packed_MemRef_call1563775
  %_p_scalar_785 = load double, double* %polly.access.Packed_MemRef_call2565784, align 8
  %p_mul37.i = fmul fast double %_p_scalar_789, %_p_scalar_785
  %287 = shl i64 %286, 3
  %288 = add i64 %287, %268
  %scevgep790 = getelementptr i8, i8* %call, i64 %288
  %scevgep790791 = bitcast i8* %scevgep790 to double*
  %_p_scalar_792 = load double, double* %scevgep790791, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_792
  store double %p_add42.i, double* %scevgep790791, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next772 = add nuw nsw i64 %polly.indvar771, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar771, %smin1139
  br i1 %exitcond1140.not, label %polly.loop_exit769, label %polly.loop_header767, !llvm.loop !111

polly.loop_header919:                             ; preds = %entry, %polly.loop_exit927
  %indvars.iv1172 = phi i64 [ %indvars.iv.next1173, %polly.loop_exit927 ], [ 0, %entry ]
  %polly.indvar922 = phi i64 [ %polly.indvar_next923, %polly.loop_exit927 ], [ 0, %entry ]
  %smin1174 = call i64 @llvm.smin.i64(i64 %indvars.iv1172, i64 -1168)
  %289 = shl nsw i64 %polly.indvar922, 5
  %290 = add nsw i64 %smin1174, 1199
  br label %polly.loop_header925

polly.loop_exit927:                               ; preds = %polly.loop_exit933
  %polly.indvar_next923 = add nuw nsw i64 %polly.indvar922, 1
  %indvars.iv.next1173 = add nsw i64 %indvars.iv1172, -32
  %exitcond1177.not = icmp eq i64 %polly.indvar_next923, 38
  br i1 %exitcond1177.not, label %polly.loop_header946, label %polly.loop_header919

polly.loop_header925:                             ; preds = %polly.loop_exit933, %polly.loop_header919
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit933 ], [ 0, %polly.loop_header919 ]
  %polly.indvar928 = phi i64 [ %polly.indvar_next929, %polly.loop_exit933 ], [ 0, %polly.loop_header919 ]
  %291 = mul nsw i64 %polly.indvar928, -32
  %smin = call i64 @llvm.smin.i64(i64 %291, i64 -1168)
  %292 = add nsw i64 %smin, 1200
  %smin1170 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 -1168)
  %293 = shl nsw i64 %polly.indvar928, 5
  %294 = add nsw i64 %smin1170, 1199
  br label %polly.loop_header931

polly.loop_exit933:                               ; preds = %polly.loop_exit939
  %polly.indvar_next929 = add nuw nsw i64 %polly.indvar928, 1
  %indvars.iv.next1169 = add nsw i64 %indvars.iv1168, -32
  %exitcond1176.not = icmp eq i64 %polly.indvar_next929, 38
  br i1 %exitcond1176.not, label %polly.loop_exit927, label %polly.loop_header925

polly.loop_header931:                             ; preds = %polly.loop_exit939, %polly.loop_header925
  %polly.indvar934 = phi i64 [ 0, %polly.loop_header925 ], [ %polly.indvar_next935, %polly.loop_exit939 ]
  %295 = add nuw nsw i64 %polly.indvar934, %289
  %296 = trunc i64 %295 to i32
  %297 = mul nuw nsw i64 %295, 9600
  %min.iters.check = icmp eq i64 %292, 0
  br i1 %min.iters.check, label %polly.loop_header937, label %vector.ph1231

vector.ph1231:                                    ; preds = %polly.loop_header931
  %broadcast.splatinsert1238 = insertelement <4 x i64> poison, i64 %293, i32 0
  %broadcast.splat1239 = shufflevector <4 x i64> %broadcast.splatinsert1238, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1240 = insertelement <4 x i32> poison, i32 %296, i32 0
  %broadcast.splat1241 = shufflevector <4 x i32> %broadcast.splatinsert1240, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1231
  %index1232 = phi i64 [ 0, %vector.ph1231 ], [ %index.next1233, %vector.body1230 ]
  %vec.ind1236 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1231 ], [ %vec.ind.next1237, %vector.body1230 ]
  %298 = add nuw nsw <4 x i64> %vec.ind1236, %broadcast.splat1239
  %299 = trunc <4 x i64> %298 to <4 x i32>
  %300 = mul <4 x i32> %broadcast.splat1241, %299
  %301 = add <4 x i32> %300, <i32 3, i32 3, i32 3, i32 3>
  %302 = urem <4 x i32> %301, <i32 1200, i32 1200, i32 1200, i32 1200>
  %303 = sitofp <4 x i32> %302 to <4 x double>
  %304 = fmul fast <4 x double> %303, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %305 = extractelement <4 x i64> %298, i32 0
  %306 = shl i64 %305, 3
  %307 = add nuw nsw i64 %306, %297
  %308 = getelementptr i8, i8* %call, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %304, <4 x double>* %309, align 8, !alias.scope !112, !noalias !114
  %index.next1233 = add i64 %index1232, 4
  %vec.ind.next1237 = add <4 x i64> %vec.ind1236, <i64 4, i64 4, i64 4, i64 4>
  %310 = icmp eq i64 %index.next1233, %292
  br i1 %310, label %polly.loop_exit939, label %vector.body1230, !llvm.loop !117

polly.loop_exit939:                               ; preds = %vector.body1230, %polly.loop_header937
  %polly.indvar_next935 = add nuw nsw i64 %polly.indvar934, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar934, %290
  br i1 %exitcond1175.not, label %polly.loop_exit933, label %polly.loop_header931

polly.loop_header937:                             ; preds = %polly.loop_header931, %polly.loop_header937
  %polly.indvar940 = phi i64 [ %polly.indvar_next941, %polly.loop_header937 ], [ 0, %polly.loop_header931 ]
  %311 = add nuw nsw i64 %polly.indvar940, %293
  %312 = trunc i64 %311 to i32
  %313 = mul i32 %312, %296
  %314 = add i32 %313, 3
  %315 = urem i32 %314, 1200
  %p_conv31.i = sitofp i32 %315 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %316 = shl i64 %311, 3
  %317 = add nuw nsw i64 %316, %297
  %scevgep943 = getelementptr i8, i8* %call, i64 %317
  %scevgep943944 = bitcast i8* %scevgep943 to double*
  store double %p_div33.i, double* %scevgep943944, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next941 = add nuw nsw i64 %polly.indvar940, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar940, %294
  br i1 %exitcond1171.not, label %polly.loop_exit939, label %polly.loop_header937, !llvm.loop !118

polly.loop_header946:                             ; preds = %polly.loop_exit927, %polly.loop_exit954
  %indvars.iv1162 = phi i64 [ %indvars.iv.next1163, %polly.loop_exit954 ], [ 0, %polly.loop_exit927 ]
  %polly.indvar949 = phi i64 [ %polly.indvar_next950, %polly.loop_exit954 ], [ 0, %polly.loop_exit927 ]
  %smin1164 = call i64 @llvm.smin.i64(i64 %indvars.iv1162, i64 -1168)
  %318 = shl nsw i64 %polly.indvar949, 5
  %319 = add nsw i64 %smin1164, 1199
  br label %polly.loop_header952

polly.loop_exit954:                               ; preds = %polly.loop_exit960
  %polly.indvar_next950 = add nuw nsw i64 %polly.indvar949, 1
  %indvars.iv.next1163 = add nsw i64 %indvars.iv1162, -32
  %exitcond1167.not = icmp eq i64 %polly.indvar_next950, 38
  br i1 %exitcond1167.not, label %polly.loop_header972, label %polly.loop_header946

polly.loop_header952:                             ; preds = %polly.loop_exit960, %polly.loop_header946
  %indvars.iv1158 = phi i64 [ %indvars.iv.next1159, %polly.loop_exit960 ], [ 0, %polly.loop_header946 ]
  %polly.indvar955 = phi i64 [ %polly.indvar_next956, %polly.loop_exit960 ], [ 0, %polly.loop_header946 ]
  %320 = mul nsw i64 %polly.indvar955, -32
  %smin1245 = call i64 @llvm.smin.i64(i64 %320, i64 -968)
  %321 = add nsw i64 %smin1245, 1000
  %smin1160 = call i64 @llvm.smin.i64(i64 %indvars.iv1158, i64 -968)
  %322 = shl nsw i64 %polly.indvar955, 5
  %323 = add nsw i64 %smin1160, 999
  br label %polly.loop_header958

polly.loop_exit960:                               ; preds = %polly.loop_exit966
  %polly.indvar_next956 = add nuw nsw i64 %polly.indvar955, 1
  %indvars.iv.next1159 = add nsw i64 %indvars.iv1158, -32
  %exitcond1166.not = icmp eq i64 %polly.indvar_next956, 32
  br i1 %exitcond1166.not, label %polly.loop_exit954, label %polly.loop_header952

polly.loop_header958:                             ; preds = %polly.loop_exit966, %polly.loop_header952
  %polly.indvar961 = phi i64 [ 0, %polly.loop_header952 ], [ %polly.indvar_next962, %polly.loop_exit966 ]
  %324 = add nuw nsw i64 %polly.indvar961, %318
  %325 = trunc i64 %324 to i32
  %326 = mul nuw nsw i64 %324, 8000
  %min.iters.check1246 = icmp eq i64 %321, 0
  br i1 %min.iters.check1246, label %polly.loop_header964, label %vector.ph1247

vector.ph1247:                                    ; preds = %polly.loop_header958
  %broadcast.splatinsert1256 = insertelement <4 x i64> poison, i64 %322, i32 0
  %broadcast.splat1257 = shufflevector <4 x i64> %broadcast.splatinsert1256, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1258 = insertelement <4 x i32> poison, i32 %325, i32 0
  %broadcast.splat1259 = shufflevector <4 x i32> %broadcast.splatinsert1258, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1247
  %index1250 = phi i64 [ 0, %vector.ph1247 ], [ %index.next1251, %vector.body1244 ]
  %vec.ind1254 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1247 ], [ %vec.ind.next1255, %vector.body1244 ]
  %327 = add nuw nsw <4 x i64> %vec.ind1254, %broadcast.splat1257
  %328 = trunc <4 x i64> %327 to <4 x i32>
  %329 = mul <4 x i32> %broadcast.splat1259, %328
  %330 = add <4 x i32> %329, <i32 2, i32 2, i32 2, i32 2>
  %331 = urem <4 x i32> %330, <i32 1000, i32 1000, i32 1000, i32 1000>
  %332 = sitofp <4 x i32> %331 to <4 x double>
  %333 = fmul fast <4 x double> %332, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %334 = extractelement <4 x i64> %327, i32 0
  %335 = shl i64 %334, 3
  %336 = add nuw nsw i64 %335, %326
  %337 = getelementptr i8, i8* %call2, i64 %336
  %338 = bitcast i8* %337 to <4 x double>*
  store <4 x double> %333, <4 x double>* %338, align 8, !alias.scope !116, !noalias !119
  %index.next1251 = add i64 %index1250, 4
  %vec.ind.next1255 = add <4 x i64> %vec.ind1254, <i64 4, i64 4, i64 4, i64 4>
  %339 = icmp eq i64 %index.next1251, %321
  br i1 %339, label %polly.loop_exit966, label %vector.body1244, !llvm.loop !120

polly.loop_exit966:                               ; preds = %vector.body1244, %polly.loop_header964
  %polly.indvar_next962 = add nuw nsw i64 %polly.indvar961, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar961, %319
  br i1 %exitcond1165.not, label %polly.loop_exit960, label %polly.loop_header958

polly.loop_header964:                             ; preds = %polly.loop_header958, %polly.loop_header964
  %polly.indvar967 = phi i64 [ %polly.indvar_next968, %polly.loop_header964 ], [ 0, %polly.loop_header958 ]
  %340 = add nuw nsw i64 %polly.indvar967, %322
  %341 = trunc i64 %340 to i32
  %342 = mul i32 %341, %325
  %343 = add i32 %342, 2
  %344 = urem i32 %343, 1000
  %p_conv10.i = sitofp i32 %344 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %345 = shl i64 %340, 3
  %346 = add nuw nsw i64 %345, %326
  %scevgep970 = getelementptr i8, i8* %call2, i64 %346
  %scevgep970971 = bitcast i8* %scevgep970 to double*
  store double %p_div12.i, double* %scevgep970971, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next968 = add nuw nsw i64 %polly.indvar967, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar967, %323
  br i1 %exitcond1161.not, label %polly.loop_exit966, label %polly.loop_header964, !llvm.loop !121

polly.loop_header972:                             ; preds = %polly.loop_exit954, %polly.loop_exit980
  %indvars.iv1152 = phi i64 [ %indvars.iv.next1153, %polly.loop_exit980 ], [ 0, %polly.loop_exit954 ]
  %polly.indvar975 = phi i64 [ %polly.indvar_next976, %polly.loop_exit980 ], [ 0, %polly.loop_exit954 ]
  %smin1154 = call i64 @llvm.smin.i64(i64 %indvars.iv1152, i64 -1168)
  %347 = shl nsw i64 %polly.indvar975, 5
  %348 = add nsw i64 %smin1154, 1199
  br label %polly.loop_header978

polly.loop_exit980:                               ; preds = %polly.loop_exit986
  %polly.indvar_next976 = add nuw nsw i64 %polly.indvar975, 1
  %indvars.iv.next1153 = add nsw i64 %indvars.iv1152, -32
  %exitcond1157.not = icmp eq i64 %polly.indvar_next976, 38
  br i1 %exitcond1157.not, label %init_array.exit, label %polly.loop_header972

polly.loop_header978:                             ; preds = %polly.loop_exit986, %polly.loop_header972
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %polly.loop_exit986 ], [ 0, %polly.loop_header972 ]
  %polly.indvar981 = phi i64 [ %polly.indvar_next982, %polly.loop_exit986 ], [ 0, %polly.loop_header972 ]
  %349 = mul nsw i64 %polly.indvar981, -32
  %smin1263 = call i64 @llvm.smin.i64(i64 %349, i64 -968)
  %350 = add nsw i64 %smin1263, 1000
  %smin1150 = call i64 @llvm.smin.i64(i64 %indvars.iv1148, i64 -968)
  %351 = shl nsw i64 %polly.indvar981, 5
  %352 = add nsw i64 %smin1150, 999
  br label %polly.loop_header984

polly.loop_exit986:                               ; preds = %polly.loop_exit992
  %polly.indvar_next982 = add nuw nsw i64 %polly.indvar981, 1
  %indvars.iv.next1149 = add nsw i64 %indvars.iv1148, -32
  %exitcond1156.not = icmp eq i64 %polly.indvar_next982, 32
  br i1 %exitcond1156.not, label %polly.loop_exit980, label %polly.loop_header978

polly.loop_header984:                             ; preds = %polly.loop_exit992, %polly.loop_header978
  %polly.indvar987 = phi i64 [ 0, %polly.loop_header978 ], [ %polly.indvar_next988, %polly.loop_exit992 ]
  %353 = add nuw nsw i64 %polly.indvar987, %347
  %354 = trunc i64 %353 to i32
  %355 = mul nuw nsw i64 %353, 8000
  %min.iters.check1264 = icmp eq i64 %350, 0
  br i1 %min.iters.check1264, label %polly.loop_header990, label %vector.ph1265

vector.ph1265:                                    ; preds = %polly.loop_header984
  %broadcast.splatinsert1274 = insertelement <4 x i64> poison, i64 %351, i32 0
  %broadcast.splat1275 = shufflevector <4 x i64> %broadcast.splatinsert1274, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1276 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1277 = shufflevector <4 x i32> %broadcast.splatinsert1276, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1265
  %index1268 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1269, %vector.body1262 ]
  %vec.ind1272 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1265 ], [ %vec.ind.next1273, %vector.body1262 ]
  %356 = add nuw nsw <4 x i64> %vec.ind1272, %broadcast.splat1275
  %357 = trunc <4 x i64> %356 to <4 x i32>
  %358 = mul <4 x i32> %broadcast.splat1277, %357
  %359 = add <4 x i32> %358, <i32 1, i32 1, i32 1, i32 1>
  %360 = urem <4 x i32> %359, <i32 1200, i32 1200, i32 1200, i32 1200>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %363 = extractelement <4 x i64> %356, i32 0
  %364 = shl i64 %363, 3
  %365 = add nuw nsw i64 %364, %355
  %366 = getelementptr i8, i8* %call1, i64 %365
  %367 = bitcast i8* %366 to <4 x double>*
  store <4 x double> %362, <4 x double>* %367, align 8, !alias.scope !115, !noalias !122
  %index.next1269 = add i64 %index1268, 4
  %vec.ind.next1273 = add <4 x i64> %vec.ind1272, <i64 4, i64 4, i64 4, i64 4>
  %368 = icmp eq i64 %index.next1269, %350
  br i1 %368, label %polly.loop_exit992, label %vector.body1262, !llvm.loop !123

polly.loop_exit992:                               ; preds = %vector.body1262, %polly.loop_header990
  %polly.indvar_next988 = add nuw nsw i64 %polly.indvar987, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar987, %348
  br i1 %exitcond1155.not, label %polly.loop_exit986, label %polly.loop_header984

polly.loop_header990:                             ; preds = %polly.loop_header984, %polly.loop_header990
  %polly.indvar993 = phi i64 [ %polly.indvar_next994, %polly.loop_header990 ], [ 0, %polly.loop_header984 ]
  %369 = add nuw nsw i64 %polly.indvar993, %351
  %370 = trunc i64 %369 to i32
  %371 = mul i32 %370, %354
  %372 = add i32 %371, 1
  %373 = urem i32 %372, 1200
  %p_conv.i = sitofp i32 %373 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %374 = shl i64 %369, 3
  %375 = add nuw nsw i64 %374, %355
  %scevgep997 = getelementptr i8, i8* %call1, i64 %375
  %scevgep997998 = bitcast i8* %scevgep997 to double*
  store double %p_div.i, double* %scevgep997998, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next994 = add nuw nsw i64 %polly.indvar993, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar993, %352
  br i1 %exitcond1151.not, label %polly.loop_exit992, label %polly.loop_header990, !llvm.loop !124
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
!47 = distinct !{!47, !12, !24, !48, !49, !50, !51, !52, !61}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.size", i32 80}
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
