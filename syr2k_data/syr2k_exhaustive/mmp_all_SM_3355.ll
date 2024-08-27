; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3355.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3355.c"
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
  %call876 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1728 = bitcast i8* %call1 to double*
  %polly.access.call1737 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1737, %call2
  %polly.access.call2757 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2757, %call1
  %2 = or i1 %0, %1
  %polly.access.call777 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call777, %call2
  %4 = icmp ule i8* %polly.access.call2757, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call777, %call1
  %8 = icmp ule i8* %polly.access.call1737, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header850, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1248 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1247 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1246 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1245 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1245, %scevgep1248
  %bound1 = icmp ult i8* %scevgep1247, %scevgep1246
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
  br i1 %exitcond18.not.i, label %vector.ph1252, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1252:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1259 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1260 = shufflevector <4 x i64> %broadcast.splatinsert1259, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1252
  %index1253 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1254, %vector.body1251 ]
  %vec.ind1257 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1252 ], [ %vec.ind.next1258, %vector.body1251 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1257, %broadcast.splat1260
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv7.i, i64 %index1253
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1254 = add i64 %index1253, 4
  %vec.ind.next1258 = add <4 x i64> %vec.ind1257, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1254, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1251, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1251
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1252, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit911
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start514, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1315 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1315, label %for.body3.i46.preheader1395, label %vector.ph1316

vector.ph1316:                                    ; preds = %for.body3.i46.preheader
  %n.vec1318 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1320, %vector.body1314 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i, i64 %index1319
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1320 = add i64 %index1319, 4
  %46 = icmp eq i64 %index.next1320, %n.vec1318
  br i1 %46, label %middle.block1312, label %vector.body1314, !llvm.loop !18

middle.block1312:                                 ; preds = %vector.body1314
  %cmp.n1322 = icmp eq i64 %indvars.iv21.i, %n.vec1318
  br i1 %cmp.n1322, label %for.inc6.i, label %for.body3.i46.preheader1395

for.body3.i46.preheader1395:                      ; preds = %for.body3.i46.preheader, %middle.block1312
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1318, %middle.block1312 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1395, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1395 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1312, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !22

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting515
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1338 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1338, label %for.body3.i60.preheader1392, label %vector.ph1339

vector.ph1339:                                    ; preds = %for.body3.i60.preheader
  %n.vec1341 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1339
  %index1342 = phi i64 [ 0, %vector.ph1339 ], [ %index.next1343, %vector.body1337 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i52, i64 %index1342
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1346 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1346, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1343 = add i64 %index1342, 4
  %57 = icmp eq i64 %index.next1343, %n.vec1341
  br i1 %57, label %middle.block1335, label %vector.body1337, !llvm.loop !60

middle.block1335:                                 ; preds = %vector.body1337
  %cmp.n1345 = icmp eq i64 %indvars.iv21.i52, %n.vec1341
  br i1 %cmp.n1345, label %for.inc6.i63, label %for.body3.i60.preheader1392

for.body3.i60.preheader1392:                      ; preds = %for.body3.i60.preheader, %middle.block1335
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1341, %middle.block1335 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1392, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1392 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1335, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !22

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting303
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1364 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1364, label %for.body3.i99.preheader1389, label %vector.ph1365

vector.ph1365:                                    ; preds = %for.body3.i99.preheader
  %n.vec1367 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1363

vector.body1363:                                  ; preds = %vector.body1363, %vector.ph1365
  %index1368 = phi i64 [ 0, %vector.ph1365 ], [ %index.next1369, %vector.body1363 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i91, i64 %index1368
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1372, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1369 = add i64 %index1368, 4
  %68 = icmp eq i64 %index.next1369, %n.vec1367
  br i1 %68, label %middle.block1361, label %vector.body1363, !llvm.loop !62

middle.block1361:                                 ; preds = %vector.body1363
  %cmp.n1371 = icmp eq i64 %indvars.iv21.i91, %n.vec1367
  br i1 %cmp.n1371, label %for.inc6.i102, label %for.body3.i99.preheader1389

for.body3.i99.preheader1389:                      ; preds = %for.body3.i99.preheader, %middle.block1361
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1367, %middle.block1361 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1389, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1389 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1361, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !22

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !64
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !67

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !64
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1376 = phi i64 [ %indvar.next1377, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1376, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1378 = icmp ult i64 %88, 4
  br i1 %min.iters.check1378, label %polly.loop_header191.preheader, label %vector.ph1379

vector.ph1379:                                    ; preds = %polly.loop_header
  %n.vec1381 = and i64 %88, -4
  br label %vector.body1375

vector.body1375:                                  ; preds = %vector.body1375, %vector.ph1379
  %index1382 = phi i64 [ 0, %vector.ph1379 ], [ %index.next1383, %vector.body1375 ]
  %90 = shl nuw nsw i64 %index1382, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1386 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1386, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1383 = add i64 %index1382, 4
  %95 = icmp eq i64 %index.next1383, %n.vec1381
  br i1 %95, label %middle.block1373, label %vector.body1375, !llvm.loop !74

middle.block1373:                                 ; preds = %vector.body1375
  %cmp.n1385 = icmp eq i64 %88, %n.vec1381
  br i1 %cmp.n1385, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1373
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1381, %middle.block1373 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1373
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1377 = add i64 %indvar1376, 1
  br i1 %exitcond1128.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1127.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond1126.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 49, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = udiv i64 %indvars.iv1106, 25
  %99 = mul nuw nsw i64 %98, 50
  %100 = sub nsw i64 %indvars.iv1112, %99
  %101 = add i64 %indvars.iv1117, %99
  %102 = add i64 %indvars.iv, %99
  %103 = shl nuw nsw i64 %polly.indvar208, 1
  %pexp.p_div_q.lhs.trunc = trunc i64 %103 to i16
  %pexp.p_div_q934 = udiv i16 %pexp.p_div_q.lhs.trunc, 25
  %pexp.p_div_q.zext = zext i16 %pexp.p_div_q934 to i64
  %104 = or i64 %103, 1
  %105 = shl nsw i64 %polly.indvar208, 2
  %106 = mul nsw i64 %polly.indvar208, -4
  %polly.access.mul.call1230 = mul nsw i64 %polly.indvar208, 4000
  %107 = or i64 %105, 1
  %polly.access.mul.call1230.1 = mul nuw nsw i64 %107, 1000
  %108 = or i64 %105, 2
  %polly.access.mul.call1230.2 = mul nuw nsw i64 %108, 1000
  %109 = or i64 %105, 3
  %polly.access.mul.call1230.3 = mul nuw nsw i64 %109, 1000
  %polly.access.mul.call1230.us953 = mul nsw i64 %polly.indvar208, 4000
  %110 = or i64 %105, 1
  %polly.access.mul.call1230.us953.1 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %105, 2
  %polly.access.mul.call1230.us953.2 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %105, 3
  %polly.access.mul.call1230.us953.3 = mul nuw nsw i64 %112, 1000
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit263
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next1107 = add nuw nsw i64 %indvars.iv1106, 2
  %indvars.iv.next1113 = add nuw nsw i64 %indvars.iv1112, 4
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -4
  %exitcond1125.not = icmp eq i64 %polly.indvar_next209, 300
  br i1 %exitcond1125.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit263, %polly.loop_header205
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit263 ], [ %101, %polly.loop_header205 ]
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit263 ], [ %100, %polly.loop_header205 ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit263 ], [ %102, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit263 ], [ %pexp.p_div_q.zext, %polly.loop_header205 ]
  %smax1116 = call i64 @llvm.smax.i64(i64 %indvars.iv1114, i64 0)
  %113 = add i64 %smax1116, %indvars.iv1119
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1108, i64 0)
  %114 = mul nuw nsw i64 %polly.indvar214, 25
  %.not = icmp ult i64 %114, %104
  %115 = mul nuw nsw i64 %polly.indvar214, 50
  %116 = add nsw i64 %115, %106
  %117 = icmp sgt i64 %116, 4
  %118 = select i1 %117, i64 %116, i64 4
  %119 = add nsw i64 %116, 49
  %polly.loop_guard250 = icmp sgt i64 %116, -50
  br i1 %.not, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  br i1 %polly.loop_guard250, label %polly.loop_header247.preheader.us, label %polly.merge.us

polly.loop_header247.us:                          ; preds = %polly.loop_header247.preheader.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header247.preheader.us ]
  %120 = add nuw nsw i64 %polly.indvar251.us, %105
  %polly.access.mul.call1255.us = mul nuw nsw i64 %120, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %121, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1259.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1258.us
  %polly.access.Packed_MemRef_call1260.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1260.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar251.us, %smax
  br i1 %exitcond1110.not, label %polly.merge.us, label %polly.loop_header247.us

polly.merge.us:                                   ; preds = %polly.loop_header247.us, %polly.loop_header217.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next221.us, 100
  br i1 %exitcond1111.not, label %polly.loop_header261.preheader, label %polly.loop_header217.us

polly.loop_header247.preheader.us:                ; preds = %polly.loop_header217.us
  %121 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1258.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header247.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  %polly.loop_guard.not = icmp sgt i64 %118, %119
  br i1 %polly.loop_guard.not, label %polly.loop_header217.us949, label %polly.loop_header217

polly.loop_header217.us949:                       ; preds = %polly.loop_header211.split, %polly.loop_header217.us949
  %polly.indvar220.us950 = phi i64 [ %polly.indvar_next221.us987, %polly.loop_header217.us949 ], [ 0, %polly.loop_header211.split ]
  %122 = add nuw nsw i64 %polly.indvar220.us950, %97
  %polly.access.mul.Packed_MemRef_call1.us995 = mul nuw nsw i64 %polly.indvar220.us950, 1200
  %polly.access.add.call1231.us954 = add nuw nsw i64 %polly.access.mul.call1230.us953, %122
  %polly.access.call1232.us955 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us954
  %polly.access.call1232.load.us956 = load double, double* %polly.access.call1232.us955, align 8, !alias.scope !71, !noalias !77
  %polly.access.Packed_MemRef_call1.us958 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us995
  store double %polly.access.call1232.load.us956, double* %polly.access.Packed_MemRef_call1.us958, align 8
  %polly.access.add.call1231.us954.1 = add nuw nsw i64 %polly.access.mul.call1230.us953.1, %122
  %polly.access.call1232.us955.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us954.1
  %polly.access.call1232.load.us956.1 = load double, double* %polly.access.call1232.us955.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us957.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us995, 1
  %polly.access.Packed_MemRef_call1.us958.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us957.1
  store double %polly.access.call1232.load.us956.1, double* %polly.access.Packed_MemRef_call1.us958.1, align 8
  %polly.access.add.call1231.us954.2 = add nuw nsw i64 %polly.access.mul.call1230.us953.2, %122
  %polly.access.call1232.us955.2 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us954.2
  %polly.access.call1232.load.us956.2 = load double, double* %polly.access.call1232.us955.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us957.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us995, 2
  %polly.access.Packed_MemRef_call1.us958.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us957.2
  store double %polly.access.call1232.load.us956.2, double* %polly.access.Packed_MemRef_call1.us958.2, align 8
  %polly.access.add.call1231.us954.3 = add nuw nsw i64 %polly.access.mul.call1230.us953.3, %122
  %polly.access.call1232.us955.3 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us954.3
  %polly.access.call1232.load.us956.3 = load double, double* %polly.access.call1232.us955.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us957.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us995, 3
  %polly.access.Packed_MemRef_call1.us958.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us957.3
  store double %polly.access.call1232.load.us956.3, double* %polly.access.Packed_MemRef_call1.us958.3, align 8
  %polly.indvar_next221.us987 = add nuw nsw i64 %polly.indvar220.us950, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next221.us987, 100
  br i1 %exitcond1105.not, label %polly.loop_header261.preheader, label %polly.loop_header217.us949

polly.loop_exit263:                               ; preds = %polly.loop_exit270.loopexit.us, %polly.loop_header261.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 23
  %indvars.iv.next1109 = add i64 %indvars.iv1108, 50
  %indvars.iv.next1115 = add i64 %indvars.iv1114, -50
  %indvars.iv.next1120 = add i64 %indvars.iv1119, 50
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.merge
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.merge ], [ 0, %polly.loop_header211.split ]
  %123 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar220, 1200
  %polly.access.add.call1231 = add nuw nsw i64 %polly.access.mul.call1230, %123
  %polly.access.call1232 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231
  %polly.access.call1232.load = load double, double* %polly.access.call1232, align 8, !alias.scope !71, !noalias !77
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1232.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1231.1 = add nuw nsw i64 %polly.access.mul.call1230.1, %123
  %polly.access.call1232.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.1
  %polly.access.call1232.load.1 = load double, double* %polly.access.call1232.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1232.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1231.2 = add nuw nsw i64 %polly.access.mul.call1230.2, %123
  %polly.access.call1232.2 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.2
  %polly.access.call1232.load.2 = load double, double* %polly.access.call1232.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1232.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1231.3 = add nuw nsw i64 %polly.access.mul.call1230.3, %123
  %polly.access.call1232.3 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.3
  %polly.access.call1232.load.3 = load double, double* %polly.access.call1232.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1232.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  br label %polly.loop_header233

polly.merge:                                      ; preds = %polly.loop_header233
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next221, 100
  br i1 %exitcond1103.not, label %polly.loop_header261.preheader, label %polly.loop_header217

polly.loop_header261.preheader:                   ; preds = %polly.merge, %polly.loop_header217.us949, %polly.merge.us
  %124 = sub nsw i64 %105, %115
  %125 = icmp sgt i64 %124, 0
  %126 = select i1 %125, i64 %124, i64 0
  %polly.loop_guard271 = icmp slt i64 %126, 50
  br i1 %polly.loop_guard271, label %polly.loop_header261.us, label %polly.loop_exit263

polly.loop_header261.us:                          ; preds = %polly.loop_header261.preheader, %polly.loop_exit270.loopexit.us
  %polly.indvar264.us = phi i64 [ %polly.indvar_next265.us, %polly.loop_exit270.loopexit.us ], [ 0, %polly.loop_header261.preheader ]
  %127 = add nuw nsw i64 %polly.indvar264.us, %97
  %polly.access.mul.Packed_MemRef_call1283.us = mul nuw nsw i64 %polly.indvar264.us, 1200
  %128 = shl i64 %127, 3
  br label %polly.loop_header268.us

polly.loop_header268.us:                          ; preds = %polly.loop_header261.us, %polly.loop_exit278.us
  %indvars.iv1121 = phi i64 [ %113, %polly.loop_header261.us ], [ %indvars.iv.next1122, %polly.loop_exit278.us ]
  %polly.indvar272.us = phi i64 [ %126, %polly.loop_header261.us ], [ %polly.indvar_next273.us, %polly.loop_exit278.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1121, i64 3)
  %129 = add nuw i64 %polly.indvar272.us, %115
  %130 = add i64 %129, %106
  %polly.loop_guard279.us1228 = icmp sgt i64 %130, -1
  br i1 %polly.loop_guard279.us1228, label %polly.loop_header276.preheader.us, label %polly.loop_exit278.us

polly.loop_header276.us:                          ; preds = %polly.loop_header276.preheader.us, %polly.loop_header276.us
  %polly.indvar280.us = phi i64 [ %polly.indvar_next281.us, %polly.loop_header276.us ], [ 0, %polly.loop_header276.preheader.us ]
  %131 = add nuw nsw i64 %polly.indvar280.us, %105
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar280.us, %polly.access.mul.Packed_MemRef_call1283.us
  %polly.access.Packed_MemRef_call1285.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call1285.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_289.us, %_p_scalar_286.us
  %132 = mul nuw nsw i64 %131, 8000
  %133 = add nuw nsw i64 %132, %128
  %scevgep290.us = getelementptr i8, i8* %call2, i64 %133
  %scevgep290291.us = bitcast i8* %scevgep290.us to double*
  %_p_scalar_292.us = load double, double* %scevgep290291.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %134 = shl i64 %131, 3
  %135 = add i64 %134, %138
  %scevgep297.us = getelementptr i8, i8* %call, i64 %135
  %scevgep297298.us = bitcast i8* %scevgep297.us to double*
  %_p_scalar_299.us = load double, double* %scevgep297298.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_299.us
  store double %p_add42.i118.us, double* %scevgep297298.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next281.us = add nuw nsw i64 %polly.indvar280.us, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar280.us, %smin
  br i1 %exitcond1123.not, label %polly.loop_exit278.us, label %polly.loop_header276.us

polly.loop_exit278.us:                            ; preds = %polly.loop_header276.us, %polly.loop_header268.us
  %polly.indvar_next273.us = add nuw nsw i64 %polly.indvar272.us, 1
  %polly.loop_cond274.us = icmp ult i64 %polly.indvar272.us, 49
  %indvars.iv.next1122 = add i64 %indvars.iv1121, 1
  br i1 %polly.loop_cond274.us, label %polly.loop_header268.us, label %polly.loop_exit270.loopexit.us

polly.loop_header276.preheader.us:                ; preds = %polly.loop_header268.us
  %136 = mul i64 %129, 8000
  %137 = add i64 %136, %128
  %scevgep287.us = getelementptr i8, i8* %call2, i64 %137
  %scevgep287288.us = bitcast i8* %scevgep287.us to double*
  %_p_scalar_289.us = load double, double* %scevgep287288.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1294.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1283.us, %130
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %138 = mul i64 %129, 9600
  br label %polly.loop_header276.us

polly.loop_exit270.loopexit.us:                   ; preds = %polly.loop_exit278.us
  %polly.indvar_next265.us = add nuw nsw i64 %polly.indvar264.us, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next265.us, 100
  br i1 %exitcond1124.not, label %polly.loop_exit263, label %polly.loop_header261.us

polly.loop_header233:                             ; preds = %polly.loop_header217, %polly.loop_header233
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_header233 ], [ %118, %polly.loop_header217 ]
  %139 = add nuw nsw i64 %polly.indvar236, %105
  %polly.access.mul.call1240 = mul nsw i64 %139, 1000
  %polly.access.add.call1241 = add nuw nsw i64 %polly.access.mul.call1240, %123
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1244 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp slt i64 %polly.indvar236, %119
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.merge

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header388

polly.exiting303:                                 ; preds = %polly.loop_exit412
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start302
  %indvar1350 = phi i64 [ %indvar.next1351, %polly.loop_exit396 ], [ 0, %polly.start302 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start302 ]
  %140 = add i64 %indvar1350, 1
  %141 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %141
  %min.iters.check1352 = icmp ult i64 %140, 4
  br i1 %min.iters.check1352, label %polly.loop_header394.preheader, label %vector.ph1353

vector.ph1353:                                    ; preds = %polly.loop_header388
  %n.vec1355 = and i64 %140, -4
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1353
  %index1356 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1357, %vector.body1349 ]
  %142 = shl nuw nsw i64 %index1356, 3
  %143 = getelementptr i8, i8* %scevgep400, i64 %142
  %144 = bitcast i8* %143 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %144, align 8, !alias.scope !79, !noalias !81
  %145 = fmul fast <4 x double> %wide.load1360, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %146 = bitcast i8* %143 to <4 x double>*
  store <4 x double> %145, <4 x double>* %146, align 8, !alias.scope !79, !noalias !81
  %index.next1357 = add i64 %index1356, 4
  %147 = icmp eq i64 %index.next1357, %n.vec1355
  br i1 %147, label %middle.block1347, label %vector.body1349, !llvm.loop !85

middle.block1347:                                 ; preds = %vector.body1349
  %cmp.n1359 = icmp eq i64 %140, %n.vec1355
  br i1 %cmp.n1359, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1347
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1355, %middle.block1347 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1347
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1159.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1351 = add i64 %indvar1350, 1
  br i1 %exitcond1159.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %148 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %148
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1158.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !86

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %149 = mul nuw nsw i64 %polly.indvar407, 100
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit419
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next408, 10
  br i1 %exitcond1157.not, label %polly.exiting303, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_exit419, %polly.loop_header404
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit419 ], [ 49, %polly.loop_header404 ]
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %150 = udiv i64 %indvars.iv1135, 25
  %151 = mul nuw nsw i64 %150, 50
  %152 = sub nsw i64 %indvars.iv1142, %151
  %153 = add i64 %indvars.iv1147, %151
  %154 = add i64 %indvars.iv1133, %151
  %155 = shl nuw nsw i64 %polly.indvar413, 1
  %pexp.p_div_q416.lhs.trunc = trunc i64 %155 to i16
  %pexp.p_div_q416933 = udiv i16 %pexp.p_div_q416.lhs.trunc, 25
  %pexp.p_div_q416.zext = zext i16 %pexp.p_div_q416933 to i64
  %156 = or i64 %155, 1
  %157 = shl nsw i64 %polly.indvar413, 2
  %158 = mul nsw i64 %polly.indvar413, -4
  %polly.access.mul.call1440 = mul nsw i64 %polly.indvar413, 4000
  %159 = or i64 %157, 1
  %polly.access.mul.call1440.1 = mul nuw nsw i64 %159, 1000
  %160 = or i64 %157, 2
  %polly.access.mul.call1440.2 = mul nuw nsw i64 %160, 1000
  %161 = or i64 %157, 3
  %polly.access.mul.call1440.3 = mul nuw nsw i64 %161, 1000
  %polly.access.mul.call1440.us1000 = mul nsw i64 %polly.indvar413, 4000
  %162 = or i64 %157, 1
  %polly.access.mul.call1440.us1000.1 = mul nuw nsw i64 %162, 1000
  %163 = or i64 %157, 2
  %polly.access.mul.call1440.us1000.2 = mul nuw nsw i64 %163, 1000
  %164 = or i64 %157, 3
  %polly.access.mul.call1440.us1000.3 = mul nuw nsw i64 %164, 1000
  br label %polly.loop_header417

polly.loop_exit419:                               ; preds = %polly.loop_exit475
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -4
  %indvars.iv.next1136 = add nuw nsw i64 %indvars.iv1135, 2
  %indvars.iv.next1143 = add nuw nsw i64 %indvars.iv1142, 4
  %indvars.iv.next1148 = add nsw i64 %indvars.iv1147, -4
  %exitcond1156.not = icmp eq i64 %polly.indvar_next414, 300
  br i1 %exitcond1156.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header417:                             ; preds = %polly.loop_exit475, %polly.loop_header410
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit475 ], [ %153, %polly.loop_header410 ]
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit475 ], [ %152, %polly.loop_header410 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit475 ], [ %154, %polly.loop_header410 ]
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_exit475 ], [ %pexp.p_div_q416.zext, %polly.loop_header410 ]
  %smax1146 = call i64 @llvm.smax.i64(i64 %indvars.iv1144, i64 0)
  %165 = add i64 %smax1146, %indvars.iv1149
  %smax1139 = call i64 @llvm.smax.i64(i64 %indvars.iv1137, i64 0)
  %166 = mul nuw nsw i64 %polly.indvar420, 25
  %.not930 = icmp ult i64 %166, %156
  %167 = mul nuw nsw i64 %polly.indvar420, 50
  %168 = add nsw i64 %167, %158
  %169 = icmp sgt i64 %168, 4
  %170 = select i1 %169, i64 %168, i64 4
  %171 = add nsw i64 %168, 49
  %polly.loop_guard462 = icmp sgt i64 %168, -50
  br i1 %.not930, label %polly.loop_header423.us, label %polly.loop_header417.split

polly.loop_header423.us:                          ; preds = %polly.loop_header417, %polly.merge430.us
  %polly.indvar426.us = phi i64 [ %polly.indvar_next427.us, %polly.merge430.us ], [ 0, %polly.loop_header417 ]
  br i1 %polly.loop_guard462, label %polly.loop_header459.preheader.us, label %polly.merge430.us

polly.loop_header459.us:                          ; preds = %polly.loop_header459.preheader.us, %polly.loop_header459.us
  %polly.indvar463.us = phi i64 [ %polly.indvar_next464.us, %polly.loop_header459.us ], [ 0, %polly.loop_header459.preheader.us ]
  %172 = add nuw nsw i64 %polly.indvar463.us, %157
  %polly.access.mul.call1467.us = mul nuw nsw i64 %172, 1000
  %polly.access.add.call1468.us = add nuw nsw i64 %173, %polly.access.mul.call1467.us
  %polly.access.call1469.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1468.us
  %polly.access.call1469.load.us = load double, double* %polly.access.call1469.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305471.us = add nuw nsw i64 %polly.indvar463.us, %polly.access.mul.Packed_MemRef_call1305470.us
  %polly.access.Packed_MemRef_call1305472.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305471.us
  store double %polly.access.call1469.load.us, double* %polly.access.Packed_MemRef_call1305472.us, align 8
  %polly.indvar_next464.us = add nuw nsw i64 %polly.indvar463.us, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar463.us, %smax1139
  br i1 %exitcond1140.not, label %polly.merge430.us, label %polly.loop_header459.us

polly.merge430.us:                                ; preds = %polly.loop_header459.us, %polly.loop_header423.us
  %polly.indvar_next427.us = add nuw nsw i64 %polly.indvar426.us, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar_next427.us, 100
  br i1 %exitcond1141.not, label %polly.loop_header473.preheader, label %polly.loop_header423.us

polly.loop_header459.preheader.us:                ; preds = %polly.loop_header423.us
  %173 = add nuw nsw i64 %polly.indvar426.us, %149
  %polly.access.mul.Packed_MemRef_call1305470.us = mul nuw nsw i64 %polly.indvar426.us, 1200
  br label %polly.loop_header459.us

polly.loop_header417.split:                       ; preds = %polly.loop_header417
  %polly.loop_guard447.not = icmp sgt i64 %170, %171
  br i1 %polly.loop_guard447.not, label %polly.loop_header423.us996, label %polly.loop_header423

polly.loop_header423.us996:                       ; preds = %polly.loop_header417.split, %polly.loop_header423.us996
  %polly.indvar426.us997 = phi i64 [ %polly.indvar_next427.us1034, %polly.loop_header423.us996 ], [ 0, %polly.loop_header417.split ]
  %174 = add nuw nsw i64 %polly.indvar426.us997, %149
  %polly.access.mul.Packed_MemRef_call1305.us1042 = mul nuw nsw i64 %polly.indvar426.us997, 1200
  %polly.access.add.call1441.us1001 = add nuw nsw i64 %polly.access.mul.call1440.us1000, %174
  %polly.access.call1442.us1002 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us1001
  %polly.access.call1442.load.us1003 = load double, double* %polly.access.call1442.us1002, align 8, !alias.scope !82, !noalias !87
  %polly.access.Packed_MemRef_call1305.us1005 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.mul.Packed_MemRef_call1305.us1042
  store double %polly.access.call1442.load.us1003, double* %polly.access.Packed_MemRef_call1305.us1005, align 8
  %polly.access.add.call1441.us1001.1 = add nuw nsw i64 %polly.access.mul.call1440.us1000.1, %174
  %polly.access.call1442.us1002.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us1001.1
  %polly.access.call1442.load.us1003.1 = load double, double* %polly.access.call1442.us1002.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us1004.1 = or i64 %polly.access.mul.Packed_MemRef_call1305.us1042, 1
  %polly.access.Packed_MemRef_call1305.us1005.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us1004.1
  store double %polly.access.call1442.load.us1003.1, double* %polly.access.Packed_MemRef_call1305.us1005.1, align 8
  %polly.access.add.call1441.us1001.2 = add nuw nsw i64 %polly.access.mul.call1440.us1000.2, %174
  %polly.access.call1442.us1002.2 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us1001.2
  %polly.access.call1442.load.us1003.2 = load double, double* %polly.access.call1442.us1002.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us1004.2 = or i64 %polly.access.mul.Packed_MemRef_call1305.us1042, 2
  %polly.access.Packed_MemRef_call1305.us1005.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us1004.2
  store double %polly.access.call1442.load.us1003.2, double* %polly.access.Packed_MemRef_call1305.us1005.2, align 8
  %polly.access.add.call1441.us1001.3 = add nuw nsw i64 %polly.access.mul.call1440.us1000.3, %174
  %polly.access.call1442.us1002.3 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us1001.3
  %polly.access.call1442.load.us1003.3 = load double, double* %polly.access.call1442.us1002.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us1004.3 = or i64 %polly.access.mul.Packed_MemRef_call1305.us1042, 3
  %polly.access.Packed_MemRef_call1305.us1005.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us1004.3
  store double %polly.access.call1442.load.us1003.3, double* %polly.access.Packed_MemRef_call1305.us1005.3, align 8
  %polly.indvar_next427.us1034 = add nuw nsw i64 %polly.indvar426.us997, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next427.us1034, 100
  br i1 %exitcond1132.not, label %polly.loop_header473.preheader, label %polly.loop_header423.us996

polly.loop_exit475:                               ; preds = %polly.loop_exit482.loopexit.us, %polly.loop_header473.preheader
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %polly.loop_cond422 = icmp ult i64 %polly.indvar420, 23
  %indvars.iv.next1138 = add i64 %indvars.iv1137, 50
  %indvars.iv.next1145 = add i64 %indvars.iv1144, -50
  %indvars.iv.next1150 = add i64 %indvars.iv1149, 50
  br i1 %polly.loop_cond422, label %polly.loop_header417, label %polly.loop_exit419

polly.loop_header423:                             ; preds = %polly.loop_header417.split, %polly.merge430
  %polly.indvar426 = phi i64 [ %polly.indvar_next427, %polly.merge430 ], [ 0, %polly.loop_header417.split ]
  %175 = add nuw nsw i64 %polly.indvar426, %149
  %polly.access.mul.Packed_MemRef_call1305 = mul nuw nsw i64 %polly.indvar426, 1200
  %polly.access.add.call1441 = add nuw nsw i64 %polly.access.mul.call1440, %175
  %polly.access.call1442 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441
  %polly.access.call1442.load = load double, double* %polly.access.call1442, align 8, !alias.scope !82, !noalias !87
  %polly.access.Packed_MemRef_call1305 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.mul.Packed_MemRef_call1305
  store double %polly.access.call1442.load, double* %polly.access.Packed_MemRef_call1305, align 8
  %polly.access.add.call1441.1 = add nuw nsw i64 %polly.access.mul.call1440.1, %175
  %polly.access.call1442.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.1
  %polly.access.call1442.load.1 = load double, double* %polly.access.call1442.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.1 = or i64 %polly.access.mul.Packed_MemRef_call1305, 1
  %polly.access.Packed_MemRef_call1305.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.1
  store double %polly.access.call1442.load.1, double* %polly.access.Packed_MemRef_call1305.1, align 8
  %polly.access.add.call1441.2 = add nuw nsw i64 %polly.access.mul.call1440.2, %175
  %polly.access.call1442.2 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.2
  %polly.access.call1442.load.2 = load double, double* %polly.access.call1442.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.2 = or i64 %polly.access.mul.Packed_MemRef_call1305, 2
  %polly.access.Packed_MemRef_call1305.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.2
  store double %polly.access.call1442.load.2, double* %polly.access.Packed_MemRef_call1305.2, align 8
  %polly.access.add.call1441.3 = add nuw nsw i64 %polly.access.mul.call1440.3, %175
  %polly.access.call1442.3 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.3
  %polly.access.call1442.load.3 = load double, double* %polly.access.call1442.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.3 = or i64 %polly.access.mul.Packed_MemRef_call1305, 3
  %polly.access.Packed_MemRef_call1305.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.3
  store double %polly.access.call1442.load.3, double* %polly.access.Packed_MemRef_call1305.3, align 8
  br label %polly.loop_header444

polly.merge430:                                   ; preds = %polly.loop_header444
  %polly.indvar_next427 = add nuw nsw i64 %polly.indvar426, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next427, 100
  br i1 %exitcond1130.not, label %polly.loop_header473.preheader, label %polly.loop_header423

polly.loop_header473.preheader:                   ; preds = %polly.merge430, %polly.loop_header423.us996, %polly.merge430.us
  %176 = sub nsw i64 %157, %167
  %177 = icmp sgt i64 %176, 0
  %178 = select i1 %177, i64 %176, i64 0
  %polly.loop_guard483 = icmp slt i64 %178, 50
  br i1 %polly.loop_guard483, label %polly.loop_header473.us, label %polly.loop_exit475

polly.loop_header473.us:                          ; preds = %polly.loop_header473.preheader, %polly.loop_exit482.loopexit.us
  %polly.indvar476.us = phi i64 [ %polly.indvar_next477.us, %polly.loop_exit482.loopexit.us ], [ 0, %polly.loop_header473.preheader ]
  %179 = add nuw nsw i64 %polly.indvar476.us, %149
  %polly.access.mul.Packed_MemRef_call1305495.us = mul nuw nsw i64 %polly.indvar476.us, 1200
  %180 = shl i64 %179, 3
  br label %polly.loop_header480.us

polly.loop_header480.us:                          ; preds = %polly.loop_header473.us, %polly.loop_exit490.us
  %indvars.iv1151 = phi i64 [ %165, %polly.loop_header473.us ], [ %indvars.iv.next1152, %polly.loop_exit490.us ]
  %polly.indvar484.us = phi i64 [ %178, %polly.loop_header473.us ], [ %polly.indvar_next485.us, %polly.loop_exit490.us ]
  %smin1153 = call i64 @llvm.smin.i64(i64 %indvars.iv1151, i64 3)
  %181 = add nuw i64 %polly.indvar484.us, %167
  %182 = add i64 %181, %158
  %polly.loop_guard491.us1229 = icmp sgt i64 %182, -1
  br i1 %polly.loop_guard491.us1229, label %polly.loop_header488.preheader.us, label %polly.loop_exit490.us

polly.loop_header488.us:                          ; preds = %polly.loop_header488.preheader.us, %polly.loop_header488.us
  %polly.indvar492.us = phi i64 [ %polly.indvar_next493.us, %polly.loop_header488.us ], [ 0, %polly.loop_header488.preheader.us ]
  %183 = add nuw nsw i64 %polly.indvar492.us, %157
  %polly.access.add.Packed_MemRef_call1305496.us = add nuw nsw i64 %polly.indvar492.us, %polly.access.mul.Packed_MemRef_call1305495.us
  %polly.access.Packed_MemRef_call1305497.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305496.us
  %_p_scalar_498.us = load double, double* %polly.access.Packed_MemRef_call1305497.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_501.us, %_p_scalar_498.us
  %184 = mul nuw nsw i64 %183, 8000
  %185 = add nuw nsw i64 %184, %180
  %scevgep502.us = getelementptr i8, i8* %call2, i64 %185
  %scevgep502503.us = bitcast i8* %scevgep502.us to double*
  %_p_scalar_504.us = load double, double* %scevgep502503.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_508.us, %_p_scalar_504.us
  %186 = shl i64 %183, 3
  %187 = add i64 %186, %190
  %scevgep509.us = getelementptr i8, i8* %call, i64 %187
  %scevgep509510.us = bitcast i8* %scevgep509.us to double*
  %_p_scalar_511.us = load double, double* %scevgep509510.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_511.us
  store double %p_add42.i79.us, double* %scevgep509510.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next493.us = add nuw nsw i64 %polly.indvar492.us, 1
  %exitcond1154.not = icmp eq i64 %polly.indvar492.us, %smin1153
  br i1 %exitcond1154.not, label %polly.loop_exit490.us, label %polly.loop_header488.us

polly.loop_exit490.us:                            ; preds = %polly.loop_header488.us, %polly.loop_header480.us
  %polly.indvar_next485.us = add nuw nsw i64 %polly.indvar484.us, 1
  %polly.loop_cond486.us = icmp ult i64 %polly.indvar484.us, 49
  %indvars.iv.next1152 = add i64 %indvars.iv1151, 1
  br i1 %polly.loop_cond486.us, label %polly.loop_header480.us, label %polly.loop_exit482.loopexit.us

polly.loop_header488.preheader.us:                ; preds = %polly.loop_header480.us
  %188 = mul i64 %181, 8000
  %189 = add i64 %188, %180
  %scevgep499.us = getelementptr i8, i8* %call2, i64 %189
  %scevgep499500.us = bitcast i8* %scevgep499.us to double*
  %_p_scalar_501.us = load double, double* %scevgep499500.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1305506.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1305495.us, %182
  %polly.access.Packed_MemRef_call1305507.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305506.us
  %_p_scalar_508.us = load double, double* %polly.access.Packed_MemRef_call1305507.us, align 8
  %190 = mul i64 %181, 9600
  br label %polly.loop_header488.us

polly.loop_exit482.loopexit.us:                   ; preds = %polly.loop_exit490.us
  %polly.indvar_next477.us = add nuw nsw i64 %polly.indvar476.us, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next477.us, 100
  br i1 %exitcond1155.not, label %polly.loop_exit475, label %polly.loop_header473.us

polly.loop_header444:                             ; preds = %polly.loop_header423, %polly.loop_header444
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_header444 ], [ %170, %polly.loop_header423 ]
  %191 = add nuw nsw i64 %polly.indvar448, %157
  %polly.access.mul.call1452 = mul nsw i64 %191, 1000
  %polly.access.add.call1453 = add nuw nsw i64 %polly.access.mul.call1452, %175
  %polly.access.call1454 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1453
  %polly.access.call1454.load = load double, double* %polly.access.call1454, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305456 = add nuw nsw i64 %polly.indvar448, %polly.access.mul.Packed_MemRef_call1305
  %polly.access.Packed_MemRef_call1305457 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305456
  store double %polly.access.call1454.load, double* %polly.access.Packed_MemRef_call1305457, align 8
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %polly.loop_cond450.not.not = icmp slt i64 %polly.indvar448, %171
  br i1 %polly.loop_cond450.not.not, label %polly.loop_header444, label %polly.merge430

polly.start514:                                   ; preds = %init_array.exit
  %malloccall516 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header600

polly.exiting515:                                 ; preds = %polly.loop_exit624
  tail call void @free(i8* %malloccall516)
  br label %kernel_syr2k.exit

polly.loop_header600:                             ; preds = %polly.loop_exit608, %polly.start514
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit608 ], [ 0, %polly.start514 ]
  %polly.indvar603 = phi i64 [ %polly.indvar_next604, %polly.loop_exit608 ], [ 1, %polly.start514 ]
  %192 = add i64 %indvar, 1
  %193 = mul nuw nsw i64 %polly.indvar603, 9600
  %scevgep612 = getelementptr i8, i8* %call, i64 %193
  %min.iters.check1326 = icmp ult i64 %192, 4
  br i1 %min.iters.check1326, label %polly.loop_header606.preheader, label %vector.ph1327

vector.ph1327:                                    ; preds = %polly.loop_header600
  %n.vec1329 = and i64 %192, -4
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1327
  %index1330 = phi i64 [ 0, %vector.ph1327 ], [ %index.next1331, %vector.body1325 ]
  %194 = shl nuw nsw i64 %index1330, 3
  %195 = getelementptr i8, i8* %scevgep612, i64 %194
  %196 = bitcast i8* %195 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %196, align 8, !alias.scope !89, !noalias !91
  %197 = fmul fast <4 x double> %wide.load1334, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %198 = bitcast i8* %195 to <4 x double>*
  store <4 x double> %197, <4 x double>* %198, align 8, !alias.scope !89, !noalias !91
  %index.next1331 = add i64 %index1330, 4
  %199 = icmp eq i64 %index.next1331, %n.vec1329
  br i1 %199, label %middle.block1323, label %vector.body1325, !llvm.loop !95

middle.block1323:                                 ; preds = %vector.body1325
  %cmp.n1333 = icmp eq i64 %192, %n.vec1329
  br i1 %cmp.n1333, label %polly.loop_exit608, label %polly.loop_header606.preheader

polly.loop_header606.preheader:                   ; preds = %polly.loop_header600, %middle.block1323
  %polly.indvar609.ph = phi i64 [ 0, %polly.loop_header600 ], [ %n.vec1329, %middle.block1323 ]
  br label %polly.loop_header606

polly.loop_exit608:                               ; preds = %polly.loop_header606, %middle.block1323
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond1190.not = icmp eq i64 %polly.indvar_next604, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1190.not, label %polly.loop_header616.preheader, label %polly.loop_header600

polly.loop_header616.preheader:                   ; preds = %polly.loop_exit608
  %Packed_MemRef_call1517 = bitcast i8* %malloccall516 to double*
  br label %polly.loop_header616

polly.loop_header606:                             ; preds = %polly.loop_header606.preheader, %polly.loop_header606
  %polly.indvar609 = phi i64 [ %polly.indvar_next610, %polly.loop_header606 ], [ %polly.indvar609.ph, %polly.loop_header606.preheader ]
  %200 = shl nuw nsw i64 %polly.indvar609, 3
  %scevgep613 = getelementptr i8, i8* %scevgep612, i64 %200
  %scevgep613614 = bitcast i8* %scevgep613 to double*
  %_p_scalar_615 = load double, double* %scevgep613614, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_615, 1.200000e+00
  store double %p_mul.i, double* %scevgep613614, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next610 = add nuw nsw i64 %polly.indvar609, 1
  %exitcond1189.not = icmp eq i64 %polly.indvar_next610, %polly.indvar603
  br i1 %exitcond1189.not, label %polly.loop_exit608, label %polly.loop_header606, !llvm.loop !96

polly.loop_header616:                             ; preds = %polly.loop_header616.preheader, %polly.loop_exit624
  %polly.indvar619 = phi i64 [ %polly.indvar_next620, %polly.loop_exit624 ], [ 0, %polly.loop_header616.preheader ]
  %201 = mul nuw nsw i64 %polly.indvar619, 100
  br label %polly.loop_header622

polly.loop_exit624:                               ; preds = %polly.loop_exit631
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %exitcond1188.not = icmp eq i64 %polly.indvar_next620, 10
  br i1 %exitcond1188.not, label %polly.exiting515, label %polly.loop_header616

polly.loop_header622:                             ; preds = %polly.loop_exit631, %polly.loop_header616
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %indvars.iv1166 = phi i64 [ %indvars.iv.next1167, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %indvars.iv1164 = phi i64 [ %indvars.iv.next1165, %polly.loop_exit631 ], [ 49, %polly.loop_header616 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %202 = udiv i64 %indvars.iv1166, 25
  %203 = mul nuw nsw i64 %202, 50
  %204 = sub nsw i64 %indvars.iv1173, %203
  %205 = add i64 %indvars.iv1178, %203
  %206 = add i64 %indvars.iv1164, %203
  %207 = shl nuw nsw i64 %polly.indvar625, 1
  %pexp.p_div_q628.lhs.trunc = trunc i64 %207 to i16
  %pexp.p_div_q628932 = udiv i16 %pexp.p_div_q628.lhs.trunc, 25
  %pexp.p_div_q628.zext = zext i16 %pexp.p_div_q628932 to i64
  %208 = or i64 %207, 1
  %209 = shl nsw i64 %polly.indvar625, 2
  %210 = mul nsw i64 %polly.indvar625, -4
  %polly.access.mul.call1652 = mul nsw i64 %polly.indvar625, 4000
  %211 = or i64 %209, 1
  %polly.access.mul.call1652.1 = mul nuw nsw i64 %211, 1000
  %212 = or i64 %209, 2
  %polly.access.mul.call1652.2 = mul nuw nsw i64 %212, 1000
  %213 = or i64 %209, 3
  %polly.access.mul.call1652.3 = mul nuw nsw i64 %213, 1000
  %polly.access.mul.call1652.us1047 = mul nsw i64 %polly.indvar625, 4000
  %214 = or i64 %209, 1
  %polly.access.mul.call1652.us1047.1 = mul nuw nsw i64 %214, 1000
  %215 = or i64 %209, 2
  %polly.access.mul.call1652.us1047.2 = mul nuw nsw i64 %215, 1000
  %216 = or i64 %209, 3
  %polly.access.mul.call1652.us1047.3 = mul nuw nsw i64 %216, 1000
  br label %polly.loop_header629

polly.loop_exit631:                               ; preds = %polly.loop_exit687
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next1165 = add nsw i64 %indvars.iv1164, -4
  %indvars.iv.next1167 = add nuw nsw i64 %indvars.iv1166, 2
  %indvars.iv.next1174 = add nuw nsw i64 %indvars.iv1173, 4
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -4
  %exitcond1187.not = icmp eq i64 %polly.indvar_next626, 300
  br i1 %exitcond1187.not, label %polly.loop_exit624, label %polly.loop_header622

polly.loop_header629:                             ; preds = %polly.loop_exit687, %polly.loop_header622
  %indvars.iv1180 = phi i64 [ %indvars.iv.next1181, %polly.loop_exit687 ], [ %205, %polly.loop_header622 ]
  %indvars.iv1175 = phi i64 [ %indvars.iv.next1176, %polly.loop_exit687 ], [ %204, %polly.loop_header622 ]
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit687 ], [ %206, %polly.loop_header622 ]
  %polly.indvar632 = phi i64 [ %polly.indvar_next633, %polly.loop_exit687 ], [ %pexp.p_div_q628.zext, %polly.loop_header622 ]
  %smax1177 = call i64 @llvm.smax.i64(i64 %indvars.iv1175, i64 0)
  %217 = add i64 %smax1177, %indvars.iv1180
  %smax1170 = call i64 @llvm.smax.i64(i64 %indvars.iv1168, i64 0)
  %218 = mul nuw nsw i64 %polly.indvar632, 25
  %.not931 = icmp ult i64 %218, %208
  %219 = mul nuw nsw i64 %polly.indvar632, 50
  %220 = add nsw i64 %219, %210
  %221 = icmp sgt i64 %220, 4
  %222 = select i1 %221, i64 %220, i64 4
  %223 = add nsw i64 %220, 49
  %polly.loop_guard674 = icmp sgt i64 %220, -50
  br i1 %.not931, label %polly.loop_header635.us, label %polly.loop_header629.split

polly.loop_header635.us:                          ; preds = %polly.loop_header629, %polly.merge642.us
  %polly.indvar638.us = phi i64 [ %polly.indvar_next639.us, %polly.merge642.us ], [ 0, %polly.loop_header629 ]
  br i1 %polly.loop_guard674, label %polly.loop_header671.preheader.us, label %polly.merge642.us

polly.loop_header671.us:                          ; preds = %polly.loop_header671.preheader.us, %polly.loop_header671.us
  %polly.indvar675.us = phi i64 [ %polly.indvar_next676.us, %polly.loop_header671.us ], [ 0, %polly.loop_header671.preheader.us ]
  %224 = add nuw nsw i64 %polly.indvar675.us, %209
  %polly.access.mul.call1679.us = mul nuw nsw i64 %224, 1000
  %polly.access.add.call1680.us = add nuw nsw i64 %225, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517683.us = add nuw nsw i64 %polly.indvar675.us, %polly.access.mul.Packed_MemRef_call1517682.us
  %polly.access.Packed_MemRef_call1517684.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1517684.us, align 8
  %polly.indvar_next676.us = add nuw nsw i64 %polly.indvar675.us, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar675.us, %smax1170
  br i1 %exitcond1171.not, label %polly.merge642.us, label %polly.loop_header671.us

polly.merge642.us:                                ; preds = %polly.loop_header671.us, %polly.loop_header635.us
  %polly.indvar_next639.us = add nuw nsw i64 %polly.indvar638.us, 1
  %exitcond1172.not = icmp eq i64 %polly.indvar_next639.us, 100
  br i1 %exitcond1172.not, label %polly.loop_header685.preheader, label %polly.loop_header635.us

polly.loop_header671.preheader.us:                ; preds = %polly.loop_header635.us
  %225 = add nuw nsw i64 %polly.indvar638.us, %201
  %polly.access.mul.Packed_MemRef_call1517682.us = mul nuw nsw i64 %polly.indvar638.us, 1200
  br label %polly.loop_header671.us

polly.loop_header629.split:                       ; preds = %polly.loop_header629
  %polly.loop_guard659.not = icmp sgt i64 %222, %223
  br i1 %polly.loop_guard659.not, label %polly.loop_header635.us1043, label %polly.loop_header635

polly.loop_header635.us1043:                      ; preds = %polly.loop_header629.split, %polly.loop_header635.us1043
  %polly.indvar638.us1044 = phi i64 [ %polly.indvar_next639.us1081, %polly.loop_header635.us1043 ], [ 0, %polly.loop_header629.split ]
  %226 = add nuw nsw i64 %polly.indvar638.us1044, %201
  %polly.access.mul.Packed_MemRef_call1517.us1089 = mul nuw nsw i64 %polly.indvar638.us1044, 1200
  %polly.access.add.call1653.us1048 = add nuw nsw i64 %polly.access.mul.call1652.us1047, %226
  %polly.access.call1654.us1049 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us1048
  %polly.access.call1654.load.us1050 = load double, double* %polly.access.call1654.us1049, align 8, !alias.scope !92, !noalias !97
  %polly.access.Packed_MemRef_call1517.us1052 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.mul.Packed_MemRef_call1517.us1089
  store double %polly.access.call1654.load.us1050, double* %polly.access.Packed_MemRef_call1517.us1052, align 8
  %polly.access.add.call1653.us1048.1 = add nuw nsw i64 %polly.access.mul.call1652.us1047.1, %226
  %polly.access.call1654.us1049.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us1048.1
  %polly.access.call1654.load.us1050.1 = load double, double* %polly.access.call1654.us1049.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.us1051.1 = or i64 %polly.access.mul.Packed_MemRef_call1517.us1089, 1
  %polly.access.Packed_MemRef_call1517.us1052.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us1051.1
  store double %polly.access.call1654.load.us1050.1, double* %polly.access.Packed_MemRef_call1517.us1052.1, align 8
  %polly.access.add.call1653.us1048.2 = add nuw nsw i64 %polly.access.mul.call1652.us1047.2, %226
  %polly.access.call1654.us1049.2 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us1048.2
  %polly.access.call1654.load.us1050.2 = load double, double* %polly.access.call1654.us1049.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.us1051.2 = or i64 %polly.access.mul.Packed_MemRef_call1517.us1089, 2
  %polly.access.Packed_MemRef_call1517.us1052.2 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us1051.2
  store double %polly.access.call1654.load.us1050.2, double* %polly.access.Packed_MemRef_call1517.us1052.2, align 8
  %polly.access.add.call1653.us1048.3 = add nuw nsw i64 %polly.access.mul.call1652.us1047.3, %226
  %polly.access.call1654.us1049.3 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us1048.3
  %polly.access.call1654.load.us1050.3 = load double, double* %polly.access.call1654.us1049.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.us1051.3 = or i64 %polly.access.mul.Packed_MemRef_call1517.us1089, 3
  %polly.access.Packed_MemRef_call1517.us1052.3 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us1051.3
  store double %polly.access.call1654.load.us1050.3, double* %polly.access.Packed_MemRef_call1517.us1052.3, align 8
  %polly.indvar_next639.us1081 = add nuw nsw i64 %polly.indvar638.us1044, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next639.us1081, 100
  br i1 %exitcond1163.not, label %polly.loop_header685.preheader, label %polly.loop_header635.us1043

polly.loop_exit687:                               ; preds = %polly.loop_exit694.loopexit.us, %polly.loop_header685.preheader
  %polly.indvar_next633 = add nuw nsw i64 %polly.indvar632, 1
  %polly.loop_cond634 = icmp ult i64 %polly.indvar632, 23
  %indvars.iv.next1169 = add i64 %indvars.iv1168, 50
  %indvars.iv.next1176 = add i64 %indvars.iv1175, -50
  %indvars.iv.next1181 = add i64 %indvars.iv1180, 50
  br i1 %polly.loop_cond634, label %polly.loop_header629, label %polly.loop_exit631

polly.loop_header635:                             ; preds = %polly.loop_header629.split, %polly.merge642
  %polly.indvar638 = phi i64 [ %polly.indvar_next639, %polly.merge642 ], [ 0, %polly.loop_header629.split ]
  %227 = add nuw nsw i64 %polly.indvar638, %201
  %polly.access.mul.Packed_MemRef_call1517 = mul nuw nsw i64 %polly.indvar638, 1200
  %polly.access.add.call1653 = add nuw nsw i64 %polly.access.mul.call1652, %227
  %polly.access.call1654 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653
  %polly.access.call1654.load = load double, double* %polly.access.call1654, align 8, !alias.scope !92, !noalias !97
  %polly.access.Packed_MemRef_call1517 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.mul.Packed_MemRef_call1517
  store double %polly.access.call1654.load, double* %polly.access.Packed_MemRef_call1517, align 8
  %polly.access.add.call1653.1 = add nuw nsw i64 %polly.access.mul.call1652.1, %227
  %polly.access.call1654.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.1
  %polly.access.call1654.load.1 = load double, double* %polly.access.call1654.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.1 = or i64 %polly.access.mul.Packed_MemRef_call1517, 1
  %polly.access.Packed_MemRef_call1517.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.1
  store double %polly.access.call1654.load.1, double* %polly.access.Packed_MemRef_call1517.1, align 8
  %polly.access.add.call1653.2 = add nuw nsw i64 %polly.access.mul.call1652.2, %227
  %polly.access.call1654.2 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.2
  %polly.access.call1654.load.2 = load double, double* %polly.access.call1654.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.2 = or i64 %polly.access.mul.Packed_MemRef_call1517, 2
  %polly.access.Packed_MemRef_call1517.2 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.2
  store double %polly.access.call1654.load.2, double* %polly.access.Packed_MemRef_call1517.2, align 8
  %polly.access.add.call1653.3 = add nuw nsw i64 %polly.access.mul.call1652.3, %227
  %polly.access.call1654.3 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.3
  %polly.access.call1654.load.3 = load double, double* %polly.access.call1654.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.3 = or i64 %polly.access.mul.Packed_MemRef_call1517, 3
  %polly.access.Packed_MemRef_call1517.3 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.3
  store double %polly.access.call1654.load.3, double* %polly.access.Packed_MemRef_call1517.3, align 8
  br label %polly.loop_header656

polly.merge642:                                   ; preds = %polly.loop_header656
  %polly.indvar_next639 = add nuw nsw i64 %polly.indvar638, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar_next639, 100
  br i1 %exitcond1161.not, label %polly.loop_header685.preheader, label %polly.loop_header635

polly.loop_header685.preheader:                   ; preds = %polly.merge642, %polly.loop_header635.us1043, %polly.merge642.us
  %228 = sub nsw i64 %209, %219
  %229 = icmp sgt i64 %228, 0
  %230 = select i1 %229, i64 %228, i64 0
  %polly.loop_guard695 = icmp slt i64 %230, 50
  br i1 %polly.loop_guard695, label %polly.loop_header685.us, label %polly.loop_exit687

polly.loop_header685.us:                          ; preds = %polly.loop_header685.preheader, %polly.loop_exit694.loopexit.us
  %polly.indvar688.us = phi i64 [ %polly.indvar_next689.us, %polly.loop_exit694.loopexit.us ], [ 0, %polly.loop_header685.preheader ]
  %231 = add nuw nsw i64 %polly.indvar688.us, %201
  %polly.access.mul.Packed_MemRef_call1517707.us = mul nuw nsw i64 %polly.indvar688.us, 1200
  %232 = shl i64 %231, 3
  br label %polly.loop_header692.us

polly.loop_header692.us:                          ; preds = %polly.loop_header685.us, %polly.loop_exit702.us
  %indvars.iv1182 = phi i64 [ %217, %polly.loop_header685.us ], [ %indvars.iv.next1183, %polly.loop_exit702.us ]
  %polly.indvar696.us = phi i64 [ %230, %polly.loop_header685.us ], [ %polly.indvar_next697.us, %polly.loop_exit702.us ]
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 3)
  %233 = add nuw i64 %polly.indvar696.us, %219
  %234 = add i64 %233, %210
  %polly.loop_guard703.us1230 = icmp sgt i64 %234, -1
  br i1 %polly.loop_guard703.us1230, label %polly.loop_header700.preheader.us, label %polly.loop_exit702.us

polly.loop_header700.us:                          ; preds = %polly.loop_header700.preheader.us, %polly.loop_header700.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_header700.us ], [ 0, %polly.loop_header700.preheader.us ]
  %235 = add nuw nsw i64 %polly.indvar704.us, %209
  %polly.access.add.Packed_MemRef_call1517708.us = add nuw nsw i64 %polly.indvar704.us, %polly.access.mul.Packed_MemRef_call1517707.us
  %polly.access.Packed_MemRef_call1517709.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1517709.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_713.us, %_p_scalar_710.us
  %236 = mul nuw nsw i64 %235, 8000
  %237 = add nuw nsw i64 %236, %232
  %scevgep714.us = getelementptr i8, i8* %call2, i64 %237
  %scevgep714715.us = bitcast i8* %scevgep714.us to double*
  %_p_scalar_716.us = load double, double* %scevgep714715.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_720.us, %_p_scalar_716.us
  %238 = shl i64 %235, 3
  %239 = add i64 %238, %242
  %scevgep721.us = getelementptr i8, i8* %call, i64 %239
  %scevgep721722.us = bitcast i8* %scevgep721.us to double*
  %_p_scalar_723.us = load double, double* %scevgep721722.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_723.us
  store double %p_add42.i.us, double* %scevgep721722.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next705.us = add nuw nsw i64 %polly.indvar704.us, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar704.us, %smin1184
  br i1 %exitcond1185.not, label %polly.loop_exit702.us, label %polly.loop_header700.us

polly.loop_exit702.us:                            ; preds = %polly.loop_header700.us, %polly.loop_header692.us
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %polly.loop_cond698.us = icmp ult i64 %polly.indvar696.us, 49
  %indvars.iv.next1183 = add i64 %indvars.iv1182, 1
  br i1 %polly.loop_cond698.us, label %polly.loop_header692.us, label %polly.loop_exit694.loopexit.us

polly.loop_header700.preheader.us:                ; preds = %polly.loop_header692.us
  %240 = mul i64 %233, 8000
  %241 = add i64 %240, %232
  %scevgep711.us = getelementptr i8, i8* %call2, i64 %241
  %scevgep711712.us = bitcast i8* %scevgep711.us to double*
  %_p_scalar_713.us = load double, double* %scevgep711712.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1517718.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1517707.us, %234
  %polly.access.Packed_MemRef_call1517719.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517718.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call1517719.us, align 8
  %242 = mul i64 %233, 9600
  br label %polly.loop_header700.us

polly.loop_exit694.loopexit.us:                   ; preds = %polly.loop_exit702.us
  %polly.indvar_next689.us = add nuw nsw i64 %polly.indvar688.us, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar_next689.us, 100
  br i1 %exitcond1186.not, label %polly.loop_exit687, label %polly.loop_header685.us

polly.loop_header656:                             ; preds = %polly.loop_header635, %polly.loop_header656
  %polly.indvar660 = phi i64 [ %polly.indvar_next661, %polly.loop_header656 ], [ %222, %polly.loop_header635 ]
  %243 = add nuw nsw i64 %polly.indvar660, %209
  %polly.access.mul.call1664 = mul nsw i64 %243, 1000
  %polly.access.add.call1665 = add nuw nsw i64 %polly.access.mul.call1664, %227
  %polly.access.call1666 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1665
  %polly.access.call1666.load = load double, double* %polly.access.call1666, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517668 = add nuw nsw i64 %polly.indvar660, %polly.access.mul.Packed_MemRef_call1517
  %polly.access.Packed_MemRef_call1517669 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517668
  store double %polly.access.call1666.load, double* %polly.access.Packed_MemRef_call1517669, align 8
  %polly.indvar_next661 = add nuw nsw i64 %polly.indvar660, 1
  %polly.loop_cond662.not.not = icmp slt i64 %polly.indvar660, %223
  br i1 %polly.loop_cond662.not.not, label %polly.loop_header656, label %polly.merge642

polly.loop_header850:                             ; preds = %entry, %polly.loop_exit858
  %indvars.iv1215 = phi i64 [ %indvars.iv.next1216, %polly.loop_exit858 ], [ 0, %entry ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %entry ]
  %smin1217 = call i64 @llvm.smin.i64(i64 %indvars.iv1215, i64 -1168)
  %244 = shl nsw i64 %polly.indvar853, 5
  %245 = add nsw i64 %smin1217, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1216 = add nsw i64 %indvars.iv1215, -32
  %exitcond1220.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1220.not, label %polly.loop_header877, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %indvars.iv1211 = phi i64 [ %indvars.iv.next1212, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %246 = mul nsw i64 %polly.indvar859, -32
  %smin1264 = call i64 @llvm.smin.i64(i64 %246, i64 -1168)
  %247 = add nsw i64 %smin1264, 1200
  %smin1213 = call i64 @llvm.smin.i64(i64 %indvars.iv1211, i64 -1168)
  %248 = shl nsw i64 %polly.indvar859, 5
  %249 = add nsw i64 %smin1213, 1199
  br label %polly.loop_header862

polly.loop_exit864:                               ; preds = %polly.loop_exit870
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %indvars.iv.next1212 = add nsw i64 %indvars.iv1211, -32
  %exitcond1219.not = icmp eq i64 %polly.indvar_next860, 38
  br i1 %exitcond1219.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_exit870, %polly.loop_header856
  %polly.indvar865 = phi i64 [ 0, %polly.loop_header856 ], [ %polly.indvar_next866, %polly.loop_exit870 ]
  %250 = add nuw nsw i64 %polly.indvar865, %244
  %251 = trunc i64 %250 to i32
  %252 = mul nuw nsw i64 %250, 9600
  %min.iters.check = icmp eq i64 %247, 0
  br i1 %min.iters.check, label %polly.loop_header868, label %vector.ph1265

vector.ph1265:                                    ; preds = %polly.loop_header862
  %broadcast.splatinsert1272 = insertelement <4 x i64> poison, i64 %248, i32 0
  %broadcast.splat1273 = shufflevector <4 x i64> %broadcast.splatinsert1272, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %251, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1265
  %index1266 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1267, %vector.body1263 ]
  %vec.ind1270 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1265 ], [ %vec.ind.next1271, %vector.body1263 ]
  %253 = add nuw nsw <4 x i64> %vec.ind1270, %broadcast.splat1273
  %254 = trunc <4 x i64> %253 to <4 x i32>
  %255 = mul <4 x i32> %broadcast.splat1275, %254
  %256 = add <4 x i32> %255, <i32 3, i32 3, i32 3, i32 3>
  %257 = urem <4 x i32> %256, <i32 1200, i32 1200, i32 1200, i32 1200>
  %258 = sitofp <4 x i32> %257 to <4 x double>
  %259 = fmul fast <4 x double> %258, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %260 = extractelement <4 x i64> %253, i32 0
  %261 = shl i64 %260, 3
  %262 = add nuw nsw i64 %261, %252
  %263 = getelementptr i8, i8* %call, i64 %262
  %264 = bitcast i8* %263 to <4 x double>*
  store <4 x double> %259, <4 x double>* %264, align 8, !alias.scope !99, !noalias !101
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1271 = add <4 x i64> %vec.ind1270, <i64 4, i64 4, i64 4, i64 4>
  %265 = icmp eq i64 %index.next1267, %247
  br i1 %265, label %polly.loop_exit870, label %vector.body1263, !llvm.loop !104

polly.loop_exit870:                               ; preds = %vector.body1263, %polly.loop_header868
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1218.not = icmp eq i64 %polly.indvar865, %245
  br i1 %exitcond1218.not, label %polly.loop_exit864, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_header862, %polly.loop_header868
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_header868 ], [ 0, %polly.loop_header862 ]
  %266 = add nuw nsw i64 %polly.indvar871, %248
  %267 = trunc i64 %266 to i32
  %268 = mul i32 %267, %251
  %269 = add i32 %268, 3
  %270 = urem i32 %269, 1200
  %p_conv31.i = sitofp i32 %270 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %271 = shl i64 %266, 3
  %272 = add nuw nsw i64 %271, %252
  %scevgep874 = getelementptr i8, i8* %call, i64 %272
  %scevgep874875 = bitcast i8* %scevgep874 to double*
  store double %p_div33.i, double* %scevgep874875, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1214.not = icmp eq i64 %polly.indvar871, %249
  br i1 %exitcond1214.not, label %polly.loop_exit870, label %polly.loop_header868, !llvm.loop !105

polly.loop_header877:                             ; preds = %polly.loop_exit858, %polly.loop_exit885
  %indvars.iv1205 = phi i64 [ %indvars.iv.next1206, %polly.loop_exit885 ], [ 0, %polly.loop_exit858 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_exit858 ]
  %smin1207 = call i64 @llvm.smin.i64(i64 %indvars.iv1205, i64 -1168)
  %273 = shl nsw i64 %polly.indvar880, 5
  %274 = add nsw i64 %smin1207, 1199
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1206 = add nsw i64 %indvars.iv1205, -32
  %exitcond1210.not = icmp eq i64 %polly.indvar_next881, 38
  br i1 %exitcond1210.not, label %polly.loop_header903, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %indvars.iv1201 = phi i64 [ %indvars.iv.next1202, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %275 = mul nsw i64 %polly.indvar886, -32
  %smin1279 = call i64 @llvm.smin.i64(i64 %275, i64 -968)
  %276 = add nsw i64 %smin1279, 1000
  %smin1203 = call i64 @llvm.smin.i64(i64 %indvars.iv1201, i64 -968)
  %277 = shl nsw i64 %polly.indvar886, 5
  %278 = add nsw i64 %smin1203, 999
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next1202 = add nsw i64 %indvars.iv1201, -32
  %exitcond1209.not = icmp eq i64 %polly.indvar_next887, 32
  br i1 %exitcond1209.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %polly.indvar892 = phi i64 [ 0, %polly.loop_header883 ], [ %polly.indvar_next893, %polly.loop_exit897 ]
  %279 = add nuw nsw i64 %polly.indvar892, %273
  %280 = trunc i64 %279 to i32
  %281 = mul nuw nsw i64 %279, 8000
  %min.iters.check1280 = icmp eq i64 %276, 0
  br i1 %min.iters.check1280, label %polly.loop_header895, label %vector.ph1281

vector.ph1281:                                    ; preds = %polly.loop_header889
  %broadcast.splatinsert1290 = insertelement <4 x i64> poison, i64 %277, i32 0
  %broadcast.splat1291 = shufflevector <4 x i64> %broadcast.splatinsert1290, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1292 = insertelement <4 x i32> poison, i32 %280, i32 0
  %broadcast.splat1293 = shufflevector <4 x i32> %broadcast.splatinsert1292, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1281
  %index1284 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1285, %vector.body1278 ]
  %vec.ind1288 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1281 ], [ %vec.ind.next1289, %vector.body1278 ]
  %282 = add nuw nsw <4 x i64> %vec.ind1288, %broadcast.splat1291
  %283 = trunc <4 x i64> %282 to <4 x i32>
  %284 = mul <4 x i32> %broadcast.splat1293, %283
  %285 = add <4 x i32> %284, <i32 2, i32 2, i32 2, i32 2>
  %286 = urem <4 x i32> %285, <i32 1000, i32 1000, i32 1000, i32 1000>
  %287 = sitofp <4 x i32> %286 to <4 x double>
  %288 = fmul fast <4 x double> %287, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %289 = extractelement <4 x i64> %282, i32 0
  %290 = shl i64 %289, 3
  %291 = add nuw nsw i64 %290, %281
  %292 = getelementptr i8, i8* %call2, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %288, <4 x double>* %293, align 8, !alias.scope !103, !noalias !106
  %index.next1285 = add i64 %index1284, 4
  %vec.ind.next1289 = add <4 x i64> %vec.ind1288, <i64 4, i64 4, i64 4, i64 4>
  %294 = icmp eq i64 %index.next1285, %276
  br i1 %294, label %polly.loop_exit897, label %vector.body1278, !llvm.loop !107

polly.loop_exit897:                               ; preds = %vector.body1278, %polly.loop_header895
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1208.not = icmp eq i64 %polly.indvar892, %274
  br i1 %exitcond1208.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_header889, %polly.loop_header895
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_header895 ], [ 0, %polly.loop_header889 ]
  %295 = add nuw nsw i64 %polly.indvar898, %277
  %296 = trunc i64 %295 to i32
  %297 = mul i32 %296, %280
  %298 = add i32 %297, 2
  %299 = urem i32 %298, 1000
  %p_conv10.i = sitofp i32 %299 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %300 = shl i64 %295, 3
  %301 = add nuw nsw i64 %300, %281
  %scevgep901 = getelementptr i8, i8* %call2, i64 %301
  %scevgep901902 = bitcast i8* %scevgep901 to double*
  store double %p_div12.i, double* %scevgep901902, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond1204.not = icmp eq i64 %polly.indvar898, %278
  br i1 %exitcond1204.not, label %polly.loop_exit897, label %polly.loop_header895, !llvm.loop !108

polly.loop_header903:                             ; preds = %polly.loop_exit885, %polly.loop_exit911
  %indvars.iv1195 = phi i64 [ %indvars.iv.next1196, %polly.loop_exit911 ], [ 0, %polly.loop_exit885 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_exit885 ]
  %smin1197 = call i64 @llvm.smin.i64(i64 %indvars.iv1195, i64 -1168)
  %302 = shl nsw i64 %polly.indvar906, 5
  %303 = add nsw i64 %smin1197, 1199
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1196 = add nsw i64 %indvars.iv1195, -32
  %exitcond1200.not = icmp eq i64 %polly.indvar_next907, 38
  br i1 %exitcond1200.not, label %init_array.exit, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %indvars.iv1191 = phi i64 [ %indvars.iv.next1192, %polly.loop_exit917 ], [ 0, %polly.loop_header903 ]
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %polly.loop_header903 ]
  %304 = mul nsw i64 %polly.indvar912, -32
  %smin1297 = call i64 @llvm.smin.i64(i64 %304, i64 -968)
  %305 = add nsw i64 %smin1297, 1000
  %smin1193 = call i64 @llvm.smin.i64(i64 %indvars.iv1191, i64 -968)
  %306 = shl nsw i64 %polly.indvar912, 5
  %307 = add nsw i64 %smin1193, 999
  br label %polly.loop_header915

polly.loop_exit917:                               ; preds = %polly.loop_exit923
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %indvars.iv.next1192 = add nsw i64 %indvars.iv1191, -32
  %exitcond1199.not = icmp eq i64 %polly.indvar_next913, 32
  br i1 %exitcond1199.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_exit923, %polly.loop_header909
  %polly.indvar918 = phi i64 [ 0, %polly.loop_header909 ], [ %polly.indvar_next919, %polly.loop_exit923 ]
  %308 = add nuw nsw i64 %polly.indvar918, %302
  %309 = trunc i64 %308 to i32
  %310 = mul nuw nsw i64 %308, 8000
  %min.iters.check1298 = icmp eq i64 %305, 0
  br i1 %min.iters.check1298, label %polly.loop_header921, label %vector.ph1299

vector.ph1299:                                    ; preds = %polly.loop_header915
  %broadcast.splatinsert1308 = insertelement <4 x i64> poison, i64 %306, i32 0
  %broadcast.splat1309 = shufflevector <4 x i64> %broadcast.splatinsert1308, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1310 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1311 = shufflevector <4 x i32> %broadcast.splatinsert1310, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1296

vector.body1296:                                  ; preds = %vector.body1296, %vector.ph1299
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1303, %vector.body1296 ]
  %vec.ind1306 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1299 ], [ %vec.ind.next1307, %vector.body1296 ]
  %311 = add nuw nsw <4 x i64> %vec.ind1306, %broadcast.splat1309
  %312 = trunc <4 x i64> %311 to <4 x i32>
  %313 = mul <4 x i32> %broadcast.splat1311, %312
  %314 = add <4 x i32> %313, <i32 1, i32 1, i32 1, i32 1>
  %315 = urem <4 x i32> %314, <i32 1200, i32 1200, i32 1200, i32 1200>
  %316 = sitofp <4 x i32> %315 to <4 x double>
  %317 = fmul fast <4 x double> %316, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %318 = extractelement <4 x i64> %311, i32 0
  %319 = shl i64 %318, 3
  %320 = add nuw nsw i64 %319, %310
  %321 = getelementptr i8, i8* %call1, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %317, <4 x double>* %322, align 8, !alias.scope !102, !noalias !109
  %index.next1303 = add i64 %index1302, 4
  %vec.ind.next1307 = add <4 x i64> %vec.ind1306, <i64 4, i64 4, i64 4, i64 4>
  %323 = icmp eq i64 %index.next1303, %305
  br i1 %323, label %polly.loop_exit923, label %vector.body1296, !llvm.loop !110

polly.loop_exit923:                               ; preds = %vector.body1296, %polly.loop_header921
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1198.not = icmp eq i64 %polly.indvar918, %303
  br i1 %exitcond1198.not, label %polly.loop_exit917, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_header915, %polly.loop_header921
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_header921 ], [ 0, %polly.loop_header915 ]
  %324 = add nuw nsw i64 %polly.indvar924, %306
  %325 = trunc i64 %324 to i32
  %326 = mul i32 %325, %309
  %327 = add i32 %326, 1
  %328 = urem i32 %327, 1200
  %p_conv.i = sitofp i32 %328 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %329 = shl i64 %324, 3
  %330 = add nuw nsw i64 %329, %310
  %scevgep928 = getelementptr i8, i8* %call1, i64 %330
  %scevgep928929 = bitcast i8* %scevgep928 to double*
  store double %p_div.i, double* %scevgep928929, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %exitcond1194.not = icmp eq i64 %polly.indvar924, %307
  br i1 %exitcond1194.not, label %polly.loop_exit923, label %polly.loop_header921, !llvm.loop !111
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 4}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 100}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !23, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51, !57}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 50}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !23, !53, !54, !55, !56}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.tile.followup_tile", !58}
!58 = distinct !{!58, !12, !23, !59}
!59 = !{!"llvm.loop.id", !"i2"}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = distinct !{!63, !12, !13}
!64 = !{!65, !65, i64 0}
!65 = !{!"any pointer", !4, i64 0}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72, !73}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call1"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !72, !73}
!78 = !{!68, !71, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call1"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !83, !84}
!88 = !{!79, !82, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call1"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !93, !94}
!98 = !{!89, !92, !94}
!99 = distinct !{!99, !100, !"polly.alias.scope.MemRef_call"}
!100 = distinct !{!100, !"polly.alias.scope.domain"}
!101 = !{!102, !103}
!102 = distinct !{!102, !100, !"polly.alias.scope.MemRef_call1"}
!103 = distinct !{!103, !100, !"polly.alias.scope.MemRef_call2"}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !76, !13}
!106 = !{!102, !99}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !76, !13}
!109 = !{!103, !99}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !76, !13}
