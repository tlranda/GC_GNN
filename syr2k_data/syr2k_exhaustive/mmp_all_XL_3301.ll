; ModuleID = 'syr2k_exhaustive/mmp_all_XL_3301.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_3301.c"
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
  %malloccall = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
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
  %97 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar_next203, 50
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
  %103 = shl nuw nsw i64 %polly.indvar208, 2
  %pexp.p_div_q.lhs.trunc = trunc i64 %103 to i16
  %pexp.p_div_q934 = udiv i16 %pexp.p_div_q.lhs.trunc, 25
  %pexp.p_div_q.zext = zext i16 %pexp.p_div_q934 to i64
  %104 = or i64 %103, 1
  %105 = shl nsw i64 %polly.indvar208, 3
  %106 = mul nsw i64 %polly.indvar208, -8
  %polly.access.mul.call1230 = mul nsw i64 %polly.indvar208, 8000
  %107 = or i64 %105, 1
  %polly.access.mul.call1230.1 = mul nuw nsw i64 %107, 1000
  %108 = or i64 %105, 2
  %polly.access.mul.call1230.2 = mul nuw nsw i64 %108, 1000
  %109 = or i64 %105, 3
  %polly.access.mul.call1230.3 = mul nuw nsw i64 %109, 1000
  %110 = or i64 %105, 4
  %polly.access.mul.call1230.4 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %105, 5
  %polly.access.mul.call1230.5 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %105, 6
  %polly.access.mul.call1230.6 = mul nuw nsw i64 %112, 1000
  %113 = or i64 %105, 7
  %polly.access.mul.call1230.7 = mul nuw nsw i64 %113, 1000
  %polly.access.mul.call1230.us953 = mul nsw i64 %polly.indvar208, 8000
  %114 = or i64 %105, 1
  %polly.access.mul.call1230.us953.1 = mul nuw nsw i64 %114, 1000
  %115 = or i64 %105, 2
  %polly.access.mul.call1230.us953.2 = mul nuw nsw i64 %115, 1000
  %116 = or i64 %105, 3
  %polly.access.mul.call1230.us953.3 = mul nuw nsw i64 %116, 1000
  %117 = or i64 %105, 4
  %polly.access.mul.call1230.us953.4 = mul nuw nsw i64 %117, 1000
  %118 = or i64 %105, 5
  %polly.access.mul.call1230.us953.5 = mul nuw nsw i64 %118, 1000
  %119 = or i64 %105, 6
  %polly.access.mul.call1230.us953.6 = mul nuw nsw i64 %119, 1000
  %120 = or i64 %105, 7
  %polly.access.mul.call1230.us953.7 = mul nuw nsw i64 %120, 1000
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit263
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next1107 = add nuw nsw i64 %indvars.iv1106, 4
  %indvars.iv.next1113 = add nuw nsw i64 %indvars.iv1112, 8
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -8
  %exitcond1125.not = icmp eq i64 %polly.indvar_next209, 150
  br i1 %exitcond1125.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit263, %polly.loop_header205
  %indvars.iv1119 = phi i64 [ %indvars.iv.next1120, %polly.loop_exit263 ], [ %101, %polly.loop_header205 ]
  %indvars.iv1114 = phi i64 [ %indvars.iv.next1115, %polly.loop_exit263 ], [ %100, %polly.loop_header205 ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit263 ], [ %102, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit263 ], [ %pexp.p_div_q.zext, %polly.loop_header205 ]
  %smax1116 = call i64 @llvm.smax.i64(i64 %indvars.iv1114, i64 0)
  %121 = add i64 %smax1116, %indvars.iv1119
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1108, i64 0)
  %122 = mul nuw nsw i64 %polly.indvar214, 25
  %.not = icmp ult i64 %122, %104
  %123 = mul nuw nsw i64 %polly.indvar214, 50
  %124 = add nsw i64 %123, %106
  %125 = icmp sgt i64 %124, 8
  %126 = select i1 %125, i64 %124, i64 8
  %127 = add nsw i64 %124, 49
  %polly.loop_guard250 = icmp sgt i64 %124, -50
  br i1 %.not, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  br i1 %polly.loop_guard250, label %polly.loop_header247.preheader.us, label %polly.merge.us

polly.loop_header247.us:                          ; preds = %polly.loop_header247.preheader.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header247.preheader.us ]
  %128 = add nuw nsw i64 %polly.indvar251.us, %105
  %polly.access.mul.call1255.us = mul nuw nsw i64 %128, 1000
  %polly.access.add.call1256.us = add nuw nsw i64 %129, %polly.access.mul.call1255.us
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
  %exitcond1111.not = icmp eq i64 %polly.indvar_next221.us, 20
  br i1 %exitcond1111.not, label %polly.loop_header261.preheader, label %polly.loop_header217.us

polly.loop_header247.preheader.us:                ; preds = %polly.loop_header217.us
  %129 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1258.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header247.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  %polly.loop_guard.not = icmp sgt i64 %126, %127
  br i1 %polly.loop_guard.not, label %polly.loop_header217.us949, label %polly.loop_header217

polly.loop_header217.us949:                       ; preds = %polly.loop_header211.split, %polly.loop_header217.us949
  %polly.indvar220.us950 = phi i64 [ %polly.indvar_next221.us987, %polly.loop_header217.us949 ], [ 0, %polly.loop_header211.split ]
  %130 = add nuw nsw i64 %polly.indvar220.us950, %97
  %polly.access.mul.Packed_MemRef_call1.us995 = mul nuw nsw i64 %polly.indvar220.us950, 1200
  %polly.access.add.call1231.us954 = add nuw nsw i64 %polly.access.mul.call1230.us953, %130
  %polly.access.call1232.us955 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us954
  %polly.access.call1232.load.us956 = load double, double* %polly.access.call1232.us955, align 8, !alias.scope !71, !noalias !77
  %polly.access.Packed_MemRef_call1.us958 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us995
  store double %polly.access.call1232.load.us956, double* %polly.access.Packed_MemRef_call1.us958, align 8
  %polly.access.add.call1231.us954.1 = add nuw nsw i64 %polly.access.mul.call1230.us953.1, %130
  %polly.access.call1232.us955.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us954.1
  %polly.access.call1232.load.us956.1 = load double, double* %polly.access.call1232.us955.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us957.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us995, 1
  %polly.access.Packed_MemRef_call1.us958.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us957.1
  store double %polly.access.call1232.load.us956.1, double* %polly.access.Packed_MemRef_call1.us958.1, align 8
  %polly.access.add.call1231.us954.2 = add nuw nsw i64 %polly.access.mul.call1230.us953.2, %130
  %polly.access.call1232.us955.2 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us954.2
  %polly.access.call1232.load.us956.2 = load double, double* %polly.access.call1232.us955.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us957.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us995, 2
  %polly.access.Packed_MemRef_call1.us958.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us957.2
  store double %polly.access.call1232.load.us956.2, double* %polly.access.Packed_MemRef_call1.us958.2, align 8
  %polly.access.add.call1231.us954.3 = add nuw nsw i64 %polly.access.mul.call1230.us953.3, %130
  %polly.access.call1232.us955.3 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us954.3
  %polly.access.call1232.load.us956.3 = load double, double* %polly.access.call1232.us955.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us957.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us995, 3
  %polly.access.Packed_MemRef_call1.us958.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us957.3
  store double %polly.access.call1232.load.us956.3, double* %polly.access.Packed_MemRef_call1.us958.3, align 8
  %polly.access.add.call1231.us954.4 = add nuw nsw i64 %polly.access.mul.call1230.us953.4, %130
  %polly.access.call1232.us955.4 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us954.4
  %polly.access.call1232.load.us956.4 = load double, double* %polly.access.call1232.us955.4, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us957.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us995, 4
  %polly.access.Packed_MemRef_call1.us958.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us957.4
  store double %polly.access.call1232.load.us956.4, double* %polly.access.Packed_MemRef_call1.us958.4, align 8
  %polly.access.add.call1231.us954.5 = add nuw nsw i64 %polly.access.mul.call1230.us953.5, %130
  %polly.access.call1232.us955.5 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us954.5
  %polly.access.call1232.load.us956.5 = load double, double* %polly.access.call1232.us955.5, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us957.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us995, 5
  %polly.access.Packed_MemRef_call1.us958.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us957.5
  store double %polly.access.call1232.load.us956.5, double* %polly.access.Packed_MemRef_call1.us958.5, align 8
  %polly.access.add.call1231.us954.6 = add nuw nsw i64 %polly.access.mul.call1230.us953.6, %130
  %polly.access.call1232.us955.6 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us954.6
  %polly.access.call1232.load.us956.6 = load double, double* %polly.access.call1232.us955.6, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us957.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us995, 6
  %polly.access.Packed_MemRef_call1.us958.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us957.6
  store double %polly.access.call1232.load.us956.6, double* %polly.access.Packed_MemRef_call1.us958.6, align 8
  %polly.access.add.call1231.us954.7 = add nuw nsw i64 %polly.access.mul.call1230.us953.7, %130
  %polly.access.call1232.us955.7 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us954.7
  %polly.access.call1232.load.us956.7 = load double, double* %polly.access.call1232.us955.7, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us957.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us995, 7
  %polly.access.Packed_MemRef_call1.us958.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us957.7
  store double %polly.access.call1232.load.us956.7, double* %polly.access.Packed_MemRef_call1.us958.7, align 8
  %polly.indvar_next221.us987 = add nuw nsw i64 %polly.indvar220.us950, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next221.us987, 20
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
  %131 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar220, 1200
  %polly.access.add.call1231 = add nuw nsw i64 %polly.access.mul.call1230, %131
  %polly.access.call1232 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231
  %polly.access.call1232.load = load double, double* %polly.access.call1232, align 8, !alias.scope !71, !noalias !77
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1232.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1231.1 = add nuw nsw i64 %polly.access.mul.call1230.1, %131
  %polly.access.call1232.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.1
  %polly.access.call1232.load.1 = load double, double* %polly.access.call1232.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1232.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1231.2 = add nuw nsw i64 %polly.access.mul.call1230.2, %131
  %polly.access.call1232.2 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.2
  %polly.access.call1232.load.2 = load double, double* %polly.access.call1232.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1232.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1231.3 = add nuw nsw i64 %polly.access.mul.call1230.3, %131
  %polly.access.call1232.3 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.3
  %polly.access.call1232.load.3 = load double, double* %polly.access.call1232.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1232.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  %polly.access.add.call1231.4 = add nuw nsw i64 %polly.access.mul.call1230.4, %131
  %polly.access.call1232.4 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.4
  %polly.access.call1232.load.4 = load double, double* %polly.access.call1232.4, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.4 = or i64 %polly.access.mul.Packed_MemRef_call1, 4
  %polly.access.Packed_MemRef_call1.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.4
  store double %polly.access.call1232.load.4, double* %polly.access.Packed_MemRef_call1.4, align 8
  %polly.access.add.call1231.5 = add nuw nsw i64 %polly.access.mul.call1230.5, %131
  %polly.access.call1232.5 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.5
  %polly.access.call1232.load.5 = load double, double* %polly.access.call1232.5, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.5 = or i64 %polly.access.mul.Packed_MemRef_call1, 5
  %polly.access.Packed_MemRef_call1.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.5
  store double %polly.access.call1232.load.5, double* %polly.access.Packed_MemRef_call1.5, align 8
  %polly.access.add.call1231.6 = add nuw nsw i64 %polly.access.mul.call1230.6, %131
  %polly.access.call1232.6 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.6
  %polly.access.call1232.load.6 = load double, double* %polly.access.call1232.6, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.6 = or i64 %polly.access.mul.Packed_MemRef_call1, 6
  %polly.access.Packed_MemRef_call1.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.6
  store double %polly.access.call1232.load.6, double* %polly.access.Packed_MemRef_call1.6, align 8
  %polly.access.add.call1231.7 = add nuw nsw i64 %polly.access.mul.call1230.7, %131
  %polly.access.call1232.7 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.7
  %polly.access.call1232.load.7 = load double, double* %polly.access.call1232.7, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.7 = or i64 %polly.access.mul.Packed_MemRef_call1, 7
  %polly.access.Packed_MemRef_call1.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.7
  store double %polly.access.call1232.load.7, double* %polly.access.Packed_MemRef_call1.7, align 8
  br label %polly.loop_header233

polly.merge:                                      ; preds = %polly.loop_header233
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next221, 20
  br i1 %exitcond1103.not, label %polly.loop_header261.preheader, label %polly.loop_header217

polly.loop_header261.preheader:                   ; preds = %polly.merge, %polly.loop_header217.us949, %polly.merge.us
  %132 = sub nsw i64 %105, %123
  %133 = icmp sgt i64 %132, 0
  %134 = select i1 %133, i64 %132, i64 0
  %polly.loop_guard271 = icmp slt i64 %134, 50
  br i1 %polly.loop_guard271, label %polly.loop_header261.us, label %polly.loop_exit263

polly.loop_header261.us:                          ; preds = %polly.loop_header261.preheader, %polly.loop_exit270.loopexit.us
  %polly.indvar264.us = phi i64 [ %polly.indvar_next265.us, %polly.loop_exit270.loopexit.us ], [ 0, %polly.loop_header261.preheader ]
  %135 = add nuw nsw i64 %polly.indvar264.us, %97
  %polly.access.mul.Packed_MemRef_call1283.us = mul nuw nsw i64 %polly.indvar264.us, 1200
  %136 = shl i64 %135, 3
  br label %polly.loop_header268.us

polly.loop_header268.us:                          ; preds = %polly.loop_header261.us, %polly.loop_exit278.us
  %indvars.iv1121 = phi i64 [ %121, %polly.loop_header261.us ], [ %indvars.iv.next1122, %polly.loop_exit278.us ]
  %polly.indvar272.us = phi i64 [ %134, %polly.loop_header261.us ], [ %polly.indvar_next273.us, %polly.loop_exit278.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1121, i64 7)
  %137 = add nuw i64 %polly.indvar272.us, %123
  %138 = add i64 %137, %106
  %polly.loop_guard279.us1228 = icmp sgt i64 %138, -1
  br i1 %polly.loop_guard279.us1228, label %polly.loop_header276.preheader.us, label %polly.loop_exit278.us

polly.loop_header276.us:                          ; preds = %polly.loop_header276.preheader.us, %polly.loop_header276.us
  %polly.indvar280.us = phi i64 [ %polly.indvar_next281.us, %polly.loop_header276.us ], [ 0, %polly.loop_header276.preheader.us ]
  %139 = add nuw nsw i64 %polly.indvar280.us, %105
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar280.us, %polly.access.mul.Packed_MemRef_call1283.us
  %polly.access.Packed_MemRef_call1285.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call1285.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_289.us, %_p_scalar_286.us
  %140 = mul nuw nsw i64 %139, 8000
  %141 = add nuw nsw i64 %140, %136
  %scevgep290.us = getelementptr i8, i8* %call2, i64 %141
  %scevgep290291.us = bitcast i8* %scevgep290.us to double*
  %_p_scalar_292.us = load double, double* %scevgep290291.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %142 = shl i64 %139, 3
  %143 = add i64 %142, %146
  %scevgep297.us = getelementptr i8, i8* %call, i64 %143
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
  %144 = mul i64 %137, 8000
  %145 = add i64 %144, %136
  %scevgep287.us = getelementptr i8, i8* %call2, i64 %145
  %scevgep287288.us = bitcast i8* %scevgep287.us to double*
  %_p_scalar_289.us = load double, double* %scevgep287288.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1294.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1283.us, %138
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %146 = mul i64 %137, 9600
  br label %polly.loop_header276.us

polly.loop_exit270.loopexit.us:                   ; preds = %polly.loop_exit278.us
  %polly.indvar_next265.us = add nuw nsw i64 %polly.indvar264.us, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next265.us, 20
  br i1 %exitcond1124.not, label %polly.loop_exit263, label %polly.loop_header261.us

polly.loop_header233:                             ; preds = %polly.loop_header217, %polly.loop_header233
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_header233 ], [ %126, %polly.loop_header217 ]
  %147 = add nuw nsw i64 %polly.indvar236, %105
  %polly.access.mul.call1240 = mul nsw i64 %147, 1000
  %polly.access.add.call1241 = add nuw nsw i64 %polly.access.mul.call1240, %131
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1244 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp slt i64 %polly.indvar236, %127
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.merge

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header388

polly.exiting303:                                 ; preds = %polly.loop_exit412
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start302
  %indvar1350 = phi i64 [ %indvar.next1351, %polly.loop_exit396 ], [ 0, %polly.start302 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start302 ]
  %148 = add i64 %indvar1350, 1
  %149 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %149
  %min.iters.check1352 = icmp ult i64 %148, 4
  br i1 %min.iters.check1352, label %polly.loop_header394.preheader, label %vector.ph1353

vector.ph1353:                                    ; preds = %polly.loop_header388
  %n.vec1355 = and i64 %148, -4
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %vector.ph1353
  %index1356 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1357, %vector.body1349 ]
  %150 = shl nuw nsw i64 %index1356, 3
  %151 = getelementptr i8, i8* %scevgep400, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1360 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !79, !noalias !81
  %153 = fmul fast <4 x double> %wide.load1360, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %154 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %153, <4 x double>* %154, align 8, !alias.scope !79, !noalias !81
  %index.next1357 = add i64 %index1356, 4
  %155 = icmp eq i64 %index.next1357, %n.vec1355
  br i1 %155, label %middle.block1347, label %vector.body1349, !llvm.loop !85

middle.block1347:                                 ; preds = %vector.body1349
  %cmp.n1359 = icmp eq i64 %148, %n.vec1355
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
  %156 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %156
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1158.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !86

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %157 = mul nuw nsw i64 %polly.indvar407, 20
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit419
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next408, 50
  br i1 %exitcond1157.not, label %polly.exiting303, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_exit419, %polly.loop_header404
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit419 ], [ 49, %polly.loop_header404 ]
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %158 = udiv i64 %indvars.iv1135, 25
  %159 = mul nuw nsw i64 %158, 50
  %160 = sub nsw i64 %indvars.iv1142, %159
  %161 = add i64 %indvars.iv1147, %159
  %162 = add i64 %indvars.iv1133, %159
  %163 = shl nuw nsw i64 %polly.indvar413, 2
  %pexp.p_div_q416.lhs.trunc = trunc i64 %163 to i16
  %pexp.p_div_q416933 = udiv i16 %pexp.p_div_q416.lhs.trunc, 25
  %pexp.p_div_q416.zext = zext i16 %pexp.p_div_q416933 to i64
  %164 = or i64 %163, 1
  %165 = shl nsw i64 %polly.indvar413, 3
  %166 = mul nsw i64 %polly.indvar413, -8
  %polly.access.mul.call1440 = mul nsw i64 %polly.indvar413, 8000
  %167 = or i64 %165, 1
  %polly.access.mul.call1440.1 = mul nuw nsw i64 %167, 1000
  %168 = or i64 %165, 2
  %polly.access.mul.call1440.2 = mul nuw nsw i64 %168, 1000
  %169 = or i64 %165, 3
  %polly.access.mul.call1440.3 = mul nuw nsw i64 %169, 1000
  %170 = or i64 %165, 4
  %polly.access.mul.call1440.4 = mul nuw nsw i64 %170, 1000
  %171 = or i64 %165, 5
  %polly.access.mul.call1440.5 = mul nuw nsw i64 %171, 1000
  %172 = or i64 %165, 6
  %polly.access.mul.call1440.6 = mul nuw nsw i64 %172, 1000
  %173 = or i64 %165, 7
  %polly.access.mul.call1440.7 = mul nuw nsw i64 %173, 1000
  %polly.access.mul.call1440.us1000 = mul nsw i64 %polly.indvar413, 8000
  %174 = or i64 %165, 1
  %polly.access.mul.call1440.us1000.1 = mul nuw nsw i64 %174, 1000
  %175 = or i64 %165, 2
  %polly.access.mul.call1440.us1000.2 = mul nuw nsw i64 %175, 1000
  %176 = or i64 %165, 3
  %polly.access.mul.call1440.us1000.3 = mul nuw nsw i64 %176, 1000
  %177 = or i64 %165, 4
  %polly.access.mul.call1440.us1000.4 = mul nuw nsw i64 %177, 1000
  %178 = or i64 %165, 5
  %polly.access.mul.call1440.us1000.5 = mul nuw nsw i64 %178, 1000
  %179 = or i64 %165, 6
  %polly.access.mul.call1440.us1000.6 = mul nuw nsw i64 %179, 1000
  %180 = or i64 %165, 7
  %polly.access.mul.call1440.us1000.7 = mul nuw nsw i64 %180, 1000
  br label %polly.loop_header417

polly.loop_exit419:                               ; preds = %polly.loop_exit475
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -8
  %indvars.iv.next1136 = add nuw nsw i64 %indvars.iv1135, 4
  %indvars.iv.next1143 = add nuw nsw i64 %indvars.iv1142, 8
  %indvars.iv.next1148 = add nsw i64 %indvars.iv1147, -8
  %exitcond1156.not = icmp eq i64 %polly.indvar_next414, 150
  br i1 %exitcond1156.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header417:                             ; preds = %polly.loop_exit475, %polly.loop_header410
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit475 ], [ %161, %polly.loop_header410 ]
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit475 ], [ %160, %polly.loop_header410 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit475 ], [ %162, %polly.loop_header410 ]
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_exit475 ], [ %pexp.p_div_q416.zext, %polly.loop_header410 ]
  %smax1146 = call i64 @llvm.smax.i64(i64 %indvars.iv1144, i64 0)
  %181 = add i64 %smax1146, %indvars.iv1149
  %smax1139 = call i64 @llvm.smax.i64(i64 %indvars.iv1137, i64 0)
  %182 = mul nuw nsw i64 %polly.indvar420, 25
  %.not930 = icmp ult i64 %182, %164
  %183 = mul nuw nsw i64 %polly.indvar420, 50
  %184 = add nsw i64 %183, %166
  %185 = icmp sgt i64 %184, 8
  %186 = select i1 %185, i64 %184, i64 8
  %187 = add nsw i64 %184, 49
  %polly.loop_guard462 = icmp sgt i64 %184, -50
  br i1 %.not930, label %polly.loop_header423.us, label %polly.loop_header417.split

polly.loop_header423.us:                          ; preds = %polly.loop_header417, %polly.merge430.us
  %polly.indvar426.us = phi i64 [ %polly.indvar_next427.us, %polly.merge430.us ], [ 0, %polly.loop_header417 ]
  br i1 %polly.loop_guard462, label %polly.loop_header459.preheader.us, label %polly.merge430.us

polly.loop_header459.us:                          ; preds = %polly.loop_header459.preheader.us, %polly.loop_header459.us
  %polly.indvar463.us = phi i64 [ %polly.indvar_next464.us, %polly.loop_header459.us ], [ 0, %polly.loop_header459.preheader.us ]
  %188 = add nuw nsw i64 %polly.indvar463.us, %165
  %polly.access.mul.call1467.us = mul nuw nsw i64 %188, 1000
  %polly.access.add.call1468.us = add nuw nsw i64 %189, %polly.access.mul.call1467.us
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
  %exitcond1141.not = icmp eq i64 %polly.indvar_next427.us, 20
  br i1 %exitcond1141.not, label %polly.loop_header473.preheader, label %polly.loop_header423.us

polly.loop_header459.preheader.us:                ; preds = %polly.loop_header423.us
  %189 = add nuw nsw i64 %polly.indvar426.us, %157
  %polly.access.mul.Packed_MemRef_call1305470.us = mul nuw nsw i64 %polly.indvar426.us, 1200
  br label %polly.loop_header459.us

polly.loop_header417.split:                       ; preds = %polly.loop_header417
  %polly.loop_guard447.not = icmp sgt i64 %186, %187
  br i1 %polly.loop_guard447.not, label %polly.loop_header423.us996, label %polly.loop_header423

polly.loop_header423.us996:                       ; preds = %polly.loop_header417.split, %polly.loop_header423.us996
  %polly.indvar426.us997 = phi i64 [ %polly.indvar_next427.us1034, %polly.loop_header423.us996 ], [ 0, %polly.loop_header417.split ]
  %190 = add nuw nsw i64 %polly.indvar426.us997, %157
  %polly.access.mul.Packed_MemRef_call1305.us1042 = mul nuw nsw i64 %polly.indvar426.us997, 1200
  %polly.access.add.call1441.us1001 = add nuw nsw i64 %polly.access.mul.call1440.us1000, %190
  %polly.access.call1442.us1002 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us1001
  %polly.access.call1442.load.us1003 = load double, double* %polly.access.call1442.us1002, align 8, !alias.scope !82, !noalias !87
  %polly.access.Packed_MemRef_call1305.us1005 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.mul.Packed_MemRef_call1305.us1042
  store double %polly.access.call1442.load.us1003, double* %polly.access.Packed_MemRef_call1305.us1005, align 8
  %polly.access.add.call1441.us1001.1 = add nuw nsw i64 %polly.access.mul.call1440.us1000.1, %190
  %polly.access.call1442.us1002.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us1001.1
  %polly.access.call1442.load.us1003.1 = load double, double* %polly.access.call1442.us1002.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us1004.1 = or i64 %polly.access.mul.Packed_MemRef_call1305.us1042, 1
  %polly.access.Packed_MemRef_call1305.us1005.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us1004.1
  store double %polly.access.call1442.load.us1003.1, double* %polly.access.Packed_MemRef_call1305.us1005.1, align 8
  %polly.access.add.call1441.us1001.2 = add nuw nsw i64 %polly.access.mul.call1440.us1000.2, %190
  %polly.access.call1442.us1002.2 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us1001.2
  %polly.access.call1442.load.us1003.2 = load double, double* %polly.access.call1442.us1002.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us1004.2 = or i64 %polly.access.mul.Packed_MemRef_call1305.us1042, 2
  %polly.access.Packed_MemRef_call1305.us1005.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us1004.2
  store double %polly.access.call1442.load.us1003.2, double* %polly.access.Packed_MemRef_call1305.us1005.2, align 8
  %polly.access.add.call1441.us1001.3 = add nuw nsw i64 %polly.access.mul.call1440.us1000.3, %190
  %polly.access.call1442.us1002.3 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us1001.3
  %polly.access.call1442.load.us1003.3 = load double, double* %polly.access.call1442.us1002.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us1004.3 = or i64 %polly.access.mul.Packed_MemRef_call1305.us1042, 3
  %polly.access.Packed_MemRef_call1305.us1005.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us1004.3
  store double %polly.access.call1442.load.us1003.3, double* %polly.access.Packed_MemRef_call1305.us1005.3, align 8
  %polly.access.add.call1441.us1001.4 = add nuw nsw i64 %polly.access.mul.call1440.us1000.4, %190
  %polly.access.call1442.us1002.4 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us1001.4
  %polly.access.call1442.load.us1003.4 = load double, double* %polly.access.call1442.us1002.4, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us1004.4 = or i64 %polly.access.mul.Packed_MemRef_call1305.us1042, 4
  %polly.access.Packed_MemRef_call1305.us1005.4 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us1004.4
  store double %polly.access.call1442.load.us1003.4, double* %polly.access.Packed_MemRef_call1305.us1005.4, align 8
  %polly.access.add.call1441.us1001.5 = add nuw nsw i64 %polly.access.mul.call1440.us1000.5, %190
  %polly.access.call1442.us1002.5 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us1001.5
  %polly.access.call1442.load.us1003.5 = load double, double* %polly.access.call1442.us1002.5, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us1004.5 = or i64 %polly.access.mul.Packed_MemRef_call1305.us1042, 5
  %polly.access.Packed_MemRef_call1305.us1005.5 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us1004.5
  store double %polly.access.call1442.load.us1003.5, double* %polly.access.Packed_MemRef_call1305.us1005.5, align 8
  %polly.access.add.call1441.us1001.6 = add nuw nsw i64 %polly.access.mul.call1440.us1000.6, %190
  %polly.access.call1442.us1002.6 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us1001.6
  %polly.access.call1442.load.us1003.6 = load double, double* %polly.access.call1442.us1002.6, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us1004.6 = or i64 %polly.access.mul.Packed_MemRef_call1305.us1042, 6
  %polly.access.Packed_MemRef_call1305.us1005.6 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us1004.6
  store double %polly.access.call1442.load.us1003.6, double* %polly.access.Packed_MemRef_call1305.us1005.6, align 8
  %polly.access.add.call1441.us1001.7 = add nuw nsw i64 %polly.access.mul.call1440.us1000.7, %190
  %polly.access.call1442.us1002.7 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us1001.7
  %polly.access.call1442.load.us1003.7 = load double, double* %polly.access.call1442.us1002.7, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.us1004.7 = or i64 %polly.access.mul.Packed_MemRef_call1305.us1042, 7
  %polly.access.Packed_MemRef_call1305.us1005.7 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us1004.7
  store double %polly.access.call1442.load.us1003.7, double* %polly.access.Packed_MemRef_call1305.us1005.7, align 8
  %polly.indvar_next427.us1034 = add nuw nsw i64 %polly.indvar426.us997, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar_next427.us1034, 20
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
  %191 = add nuw nsw i64 %polly.indvar426, %157
  %polly.access.mul.Packed_MemRef_call1305 = mul nuw nsw i64 %polly.indvar426, 1200
  %polly.access.add.call1441 = add nuw nsw i64 %polly.access.mul.call1440, %191
  %polly.access.call1442 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441
  %polly.access.call1442.load = load double, double* %polly.access.call1442, align 8, !alias.scope !82, !noalias !87
  %polly.access.Packed_MemRef_call1305 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.mul.Packed_MemRef_call1305
  store double %polly.access.call1442.load, double* %polly.access.Packed_MemRef_call1305, align 8
  %polly.access.add.call1441.1 = add nuw nsw i64 %polly.access.mul.call1440.1, %191
  %polly.access.call1442.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.1
  %polly.access.call1442.load.1 = load double, double* %polly.access.call1442.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.1 = or i64 %polly.access.mul.Packed_MemRef_call1305, 1
  %polly.access.Packed_MemRef_call1305.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.1
  store double %polly.access.call1442.load.1, double* %polly.access.Packed_MemRef_call1305.1, align 8
  %polly.access.add.call1441.2 = add nuw nsw i64 %polly.access.mul.call1440.2, %191
  %polly.access.call1442.2 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.2
  %polly.access.call1442.load.2 = load double, double* %polly.access.call1442.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.2 = or i64 %polly.access.mul.Packed_MemRef_call1305, 2
  %polly.access.Packed_MemRef_call1305.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.2
  store double %polly.access.call1442.load.2, double* %polly.access.Packed_MemRef_call1305.2, align 8
  %polly.access.add.call1441.3 = add nuw nsw i64 %polly.access.mul.call1440.3, %191
  %polly.access.call1442.3 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.3
  %polly.access.call1442.load.3 = load double, double* %polly.access.call1442.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.3 = or i64 %polly.access.mul.Packed_MemRef_call1305, 3
  %polly.access.Packed_MemRef_call1305.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.3
  store double %polly.access.call1442.load.3, double* %polly.access.Packed_MemRef_call1305.3, align 8
  %polly.access.add.call1441.4 = add nuw nsw i64 %polly.access.mul.call1440.4, %191
  %polly.access.call1442.4 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.4
  %polly.access.call1442.load.4 = load double, double* %polly.access.call1442.4, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.4 = or i64 %polly.access.mul.Packed_MemRef_call1305, 4
  %polly.access.Packed_MemRef_call1305.4 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.4
  store double %polly.access.call1442.load.4, double* %polly.access.Packed_MemRef_call1305.4, align 8
  %polly.access.add.call1441.5 = add nuw nsw i64 %polly.access.mul.call1440.5, %191
  %polly.access.call1442.5 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.5
  %polly.access.call1442.load.5 = load double, double* %polly.access.call1442.5, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.5 = or i64 %polly.access.mul.Packed_MemRef_call1305, 5
  %polly.access.Packed_MemRef_call1305.5 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.5
  store double %polly.access.call1442.load.5, double* %polly.access.Packed_MemRef_call1305.5, align 8
  %polly.access.add.call1441.6 = add nuw nsw i64 %polly.access.mul.call1440.6, %191
  %polly.access.call1442.6 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.6
  %polly.access.call1442.load.6 = load double, double* %polly.access.call1442.6, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.6 = or i64 %polly.access.mul.Packed_MemRef_call1305, 6
  %polly.access.Packed_MemRef_call1305.6 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.6
  store double %polly.access.call1442.load.6, double* %polly.access.Packed_MemRef_call1305.6, align 8
  %polly.access.add.call1441.7 = add nuw nsw i64 %polly.access.mul.call1440.7, %191
  %polly.access.call1442.7 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.7
  %polly.access.call1442.load.7 = load double, double* %polly.access.call1442.7, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305.7 = or i64 %polly.access.mul.Packed_MemRef_call1305, 7
  %polly.access.Packed_MemRef_call1305.7 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.7
  store double %polly.access.call1442.load.7, double* %polly.access.Packed_MemRef_call1305.7, align 8
  br label %polly.loop_header444

polly.merge430:                                   ; preds = %polly.loop_header444
  %polly.indvar_next427 = add nuw nsw i64 %polly.indvar426, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next427, 20
  br i1 %exitcond1130.not, label %polly.loop_header473.preheader, label %polly.loop_header423

polly.loop_header473.preheader:                   ; preds = %polly.merge430, %polly.loop_header423.us996, %polly.merge430.us
  %192 = sub nsw i64 %165, %183
  %193 = icmp sgt i64 %192, 0
  %194 = select i1 %193, i64 %192, i64 0
  %polly.loop_guard483 = icmp slt i64 %194, 50
  br i1 %polly.loop_guard483, label %polly.loop_header473.us, label %polly.loop_exit475

polly.loop_header473.us:                          ; preds = %polly.loop_header473.preheader, %polly.loop_exit482.loopexit.us
  %polly.indvar476.us = phi i64 [ %polly.indvar_next477.us, %polly.loop_exit482.loopexit.us ], [ 0, %polly.loop_header473.preheader ]
  %195 = add nuw nsw i64 %polly.indvar476.us, %157
  %polly.access.mul.Packed_MemRef_call1305495.us = mul nuw nsw i64 %polly.indvar476.us, 1200
  %196 = shl i64 %195, 3
  br label %polly.loop_header480.us

polly.loop_header480.us:                          ; preds = %polly.loop_header473.us, %polly.loop_exit490.us
  %indvars.iv1151 = phi i64 [ %181, %polly.loop_header473.us ], [ %indvars.iv.next1152, %polly.loop_exit490.us ]
  %polly.indvar484.us = phi i64 [ %194, %polly.loop_header473.us ], [ %polly.indvar_next485.us, %polly.loop_exit490.us ]
  %smin1153 = call i64 @llvm.smin.i64(i64 %indvars.iv1151, i64 7)
  %197 = add nuw i64 %polly.indvar484.us, %183
  %198 = add i64 %197, %166
  %polly.loop_guard491.us1229 = icmp sgt i64 %198, -1
  br i1 %polly.loop_guard491.us1229, label %polly.loop_header488.preheader.us, label %polly.loop_exit490.us

polly.loop_header488.us:                          ; preds = %polly.loop_header488.preheader.us, %polly.loop_header488.us
  %polly.indvar492.us = phi i64 [ %polly.indvar_next493.us, %polly.loop_header488.us ], [ 0, %polly.loop_header488.preheader.us ]
  %199 = add nuw nsw i64 %polly.indvar492.us, %165
  %polly.access.add.Packed_MemRef_call1305496.us = add nuw nsw i64 %polly.indvar492.us, %polly.access.mul.Packed_MemRef_call1305495.us
  %polly.access.Packed_MemRef_call1305497.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305496.us
  %_p_scalar_498.us = load double, double* %polly.access.Packed_MemRef_call1305497.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_501.us, %_p_scalar_498.us
  %200 = mul nuw nsw i64 %199, 8000
  %201 = add nuw nsw i64 %200, %196
  %scevgep502.us = getelementptr i8, i8* %call2, i64 %201
  %scevgep502503.us = bitcast i8* %scevgep502.us to double*
  %_p_scalar_504.us = load double, double* %scevgep502503.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_508.us, %_p_scalar_504.us
  %202 = shl i64 %199, 3
  %203 = add i64 %202, %206
  %scevgep509.us = getelementptr i8, i8* %call, i64 %203
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
  %204 = mul i64 %197, 8000
  %205 = add i64 %204, %196
  %scevgep499.us = getelementptr i8, i8* %call2, i64 %205
  %scevgep499500.us = bitcast i8* %scevgep499.us to double*
  %_p_scalar_501.us = load double, double* %scevgep499500.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1305506.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1305495.us, %198
  %polly.access.Packed_MemRef_call1305507.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305506.us
  %_p_scalar_508.us = load double, double* %polly.access.Packed_MemRef_call1305507.us, align 8
  %206 = mul i64 %197, 9600
  br label %polly.loop_header488.us

polly.loop_exit482.loopexit.us:                   ; preds = %polly.loop_exit490.us
  %polly.indvar_next477.us = add nuw nsw i64 %polly.indvar476.us, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next477.us, 20
  br i1 %exitcond1155.not, label %polly.loop_exit475, label %polly.loop_header473.us

polly.loop_header444:                             ; preds = %polly.loop_header423, %polly.loop_header444
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_header444 ], [ %186, %polly.loop_header423 ]
  %207 = add nuw nsw i64 %polly.indvar448, %165
  %polly.access.mul.call1452 = mul nsw i64 %207, 1000
  %polly.access.add.call1453 = add nuw nsw i64 %polly.access.mul.call1452, %191
  %polly.access.call1454 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1453
  %polly.access.call1454.load = load double, double* %polly.access.call1454, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305456 = add nuw nsw i64 %polly.indvar448, %polly.access.mul.Packed_MemRef_call1305
  %polly.access.Packed_MemRef_call1305457 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305456
  store double %polly.access.call1454.load, double* %polly.access.Packed_MemRef_call1305457, align 8
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %polly.loop_cond450.not.not = icmp slt i64 %polly.indvar448, %187
  br i1 %polly.loop_cond450.not.not, label %polly.loop_header444, label %polly.merge430

polly.start514:                                   ; preds = %init_array.exit
  %malloccall516 = tail call dereferenceable_or_null(192000) i8* @malloc(i64 192000) #6
  br label %polly.loop_header600

polly.exiting515:                                 ; preds = %polly.loop_exit624
  tail call void @free(i8* %malloccall516)
  br label %kernel_syr2k.exit

polly.loop_header600:                             ; preds = %polly.loop_exit608, %polly.start514
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit608 ], [ 0, %polly.start514 ]
  %polly.indvar603 = phi i64 [ %polly.indvar_next604, %polly.loop_exit608 ], [ 1, %polly.start514 ]
  %208 = add i64 %indvar, 1
  %209 = mul nuw nsw i64 %polly.indvar603, 9600
  %scevgep612 = getelementptr i8, i8* %call, i64 %209
  %min.iters.check1326 = icmp ult i64 %208, 4
  br i1 %min.iters.check1326, label %polly.loop_header606.preheader, label %vector.ph1327

vector.ph1327:                                    ; preds = %polly.loop_header600
  %n.vec1329 = and i64 %208, -4
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1327
  %index1330 = phi i64 [ 0, %vector.ph1327 ], [ %index.next1331, %vector.body1325 ]
  %210 = shl nuw nsw i64 %index1330, 3
  %211 = getelementptr i8, i8* %scevgep612, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  %wide.load1334 = load <4 x double>, <4 x double>* %212, align 8, !alias.scope !89, !noalias !91
  %213 = fmul fast <4 x double> %wide.load1334, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %214 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %213, <4 x double>* %214, align 8, !alias.scope !89, !noalias !91
  %index.next1331 = add i64 %index1330, 4
  %215 = icmp eq i64 %index.next1331, %n.vec1329
  br i1 %215, label %middle.block1323, label %vector.body1325, !llvm.loop !95

middle.block1323:                                 ; preds = %vector.body1325
  %cmp.n1333 = icmp eq i64 %208, %n.vec1329
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
  %216 = shl nuw nsw i64 %polly.indvar609, 3
  %scevgep613 = getelementptr i8, i8* %scevgep612, i64 %216
  %scevgep613614 = bitcast i8* %scevgep613 to double*
  %_p_scalar_615 = load double, double* %scevgep613614, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_615, 1.200000e+00
  store double %p_mul.i, double* %scevgep613614, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next610 = add nuw nsw i64 %polly.indvar609, 1
  %exitcond1189.not = icmp eq i64 %polly.indvar_next610, %polly.indvar603
  br i1 %exitcond1189.not, label %polly.loop_exit608, label %polly.loop_header606, !llvm.loop !96

polly.loop_header616:                             ; preds = %polly.loop_header616.preheader, %polly.loop_exit624
  %polly.indvar619 = phi i64 [ %polly.indvar_next620, %polly.loop_exit624 ], [ 0, %polly.loop_header616.preheader ]
  %217 = mul nuw nsw i64 %polly.indvar619, 20
  br label %polly.loop_header622

polly.loop_exit624:                               ; preds = %polly.loop_exit631
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %exitcond1188.not = icmp eq i64 %polly.indvar_next620, 50
  br i1 %exitcond1188.not, label %polly.exiting515, label %polly.loop_header616

polly.loop_header622:                             ; preds = %polly.loop_exit631, %polly.loop_header616
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %indvars.iv1166 = phi i64 [ %indvars.iv.next1167, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %indvars.iv1164 = phi i64 [ %indvars.iv.next1165, %polly.loop_exit631 ], [ 49, %polly.loop_header616 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %218 = udiv i64 %indvars.iv1166, 25
  %219 = mul nuw nsw i64 %218, 50
  %220 = sub nsw i64 %indvars.iv1173, %219
  %221 = add i64 %indvars.iv1178, %219
  %222 = add i64 %indvars.iv1164, %219
  %223 = shl nuw nsw i64 %polly.indvar625, 2
  %pexp.p_div_q628.lhs.trunc = trunc i64 %223 to i16
  %pexp.p_div_q628932 = udiv i16 %pexp.p_div_q628.lhs.trunc, 25
  %pexp.p_div_q628.zext = zext i16 %pexp.p_div_q628932 to i64
  %224 = or i64 %223, 1
  %225 = shl nsw i64 %polly.indvar625, 3
  %226 = mul nsw i64 %polly.indvar625, -8
  %polly.access.mul.call1652 = mul nsw i64 %polly.indvar625, 8000
  %227 = or i64 %225, 1
  %polly.access.mul.call1652.1 = mul nuw nsw i64 %227, 1000
  %228 = or i64 %225, 2
  %polly.access.mul.call1652.2 = mul nuw nsw i64 %228, 1000
  %229 = or i64 %225, 3
  %polly.access.mul.call1652.3 = mul nuw nsw i64 %229, 1000
  %230 = or i64 %225, 4
  %polly.access.mul.call1652.4 = mul nuw nsw i64 %230, 1000
  %231 = or i64 %225, 5
  %polly.access.mul.call1652.5 = mul nuw nsw i64 %231, 1000
  %232 = or i64 %225, 6
  %polly.access.mul.call1652.6 = mul nuw nsw i64 %232, 1000
  %233 = or i64 %225, 7
  %polly.access.mul.call1652.7 = mul nuw nsw i64 %233, 1000
  %polly.access.mul.call1652.us1047 = mul nsw i64 %polly.indvar625, 8000
  %234 = or i64 %225, 1
  %polly.access.mul.call1652.us1047.1 = mul nuw nsw i64 %234, 1000
  %235 = or i64 %225, 2
  %polly.access.mul.call1652.us1047.2 = mul nuw nsw i64 %235, 1000
  %236 = or i64 %225, 3
  %polly.access.mul.call1652.us1047.3 = mul nuw nsw i64 %236, 1000
  %237 = or i64 %225, 4
  %polly.access.mul.call1652.us1047.4 = mul nuw nsw i64 %237, 1000
  %238 = or i64 %225, 5
  %polly.access.mul.call1652.us1047.5 = mul nuw nsw i64 %238, 1000
  %239 = or i64 %225, 6
  %polly.access.mul.call1652.us1047.6 = mul nuw nsw i64 %239, 1000
  %240 = or i64 %225, 7
  %polly.access.mul.call1652.us1047.7 = mul nuw nsw i64 %240, 1000
  br label %polly.loop_header629

polly.loop_exit631:                               ; preds = %polly.loop_exit687
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next1165 = add nsw i64 %indvars.iv1164, -8
  %indvars.iv.next1167 = add nuw nsw i64 %indvars.iv1166, 4
  %indvars.iv.next1174 = add nuw nsw i64 %indvars.iv1173, 8
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -8
  %exitcond1187.not = icmp eq i64 %polly.indvar_next626, 150
  br i1 %exitcond1187.not, label %polly.loop_exit624, label %polly.loop_header622

polly.loop_header629:                             ; preds = %polly.loop_exit687, %polly.loop_header622
  %indvars.iv1180 = phi i64 [ %indvars.iv.next1181, %polly.loop_exit687 ], [ %221, %polly.loop_header622 ]
  %indvars.iv1175 = phi i64 [ %indvars.iv.next1176, %polly.loop_exit687 ], [ %220, %polly.loop_header622 ]
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit687 ], [ %222, %polly.loop_header622 ]
  %polly.indvar632 = phi i64 [ %polly.indvar_next633, %polly.loop_exit687 ], [ %pexp.p_div_q628.zext, %polly.loop_header622 ]
  %smax1177 = call i64 @llvm.smax.i64(i64 %indvars.iv1175, i64 0)
  %241 = add i64 %smax1177, %indvars.iv1180
  %smax1170 = call i64 @llvm.smax.i64(i64 %indvars.iv1168, i64 0)
  %242 = mul nuw nsw i64 %polly.indvar632, 25
  %.not931 = icmp ult i64 %242, %224
  %243 = mul nuw nsw i64 %polly.indvar632, 50
  %244 = add nsw i64 %243, %226
  %245 = icmp sgt i64 %244, 8
  %246 = select i1 %245, i64 %244, i64 8
  %247 = add nsw i64 %244, 49
  %polly.loop_guard674 = icmp sgt i64 %244, -50
  br i1 %.not931, label %polly.loop_header635.us, label %polly.loop_header629.split

polly.loop_header635.us:                          ; preds = %polly.loop_header629, %polly.merge642.us
  %polly.indvar638.us = phi i64 [ %polly.indvar_next639.us, %polly.merge642.us ], [ 0, %polly.loop_header629 ]
  br i1 %polly.loop_guard674, label %polly.loop_header671.preheader.us, label %polly.merge642.us

polly.loop_header671.us:                          ; preds = %polly.loop_header671.preheader.us, %polly.loop_header671.us
  %polly.indvar675.us = phi i64 [ %polly.indvar_next676.us, %polly.loop_header671.us ], [ 0, %polly.loop_header671.preheader.us ]
  %248 = add nuw nsw i64 %polly.indvar675.us, %225
  %polly.access.mul.call1679.us = mul nuw nsw i64 %248, 1000
  %polly.access.add.call1680.us = add nuw nsw i64 %249, %polly.access.mul.call1679.us
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
  %exitcond1172.not = icmp eq i64 %polly.indvar_next639.us, 20
  br i1 %exitcond1172.not, label %polly.loop_header685.preheader, label %polly.loop_header635.us

polly.loop_header671.preheader.us:                ; preds = %polly.loop_header635.us
  %249 = add nuw nsw i64 %polly.indvar638.us, %217
  %polly.access.mul.Packed_MemRef_call1517682.us = mul nuw nsw i64 %polly.indvar638.us, 1200
  br label %polly.loop_header671.us

polly.loop_header629.split:                       ; preds = %polly.loop_header629
  %polly.loop_guard659.not = icmp sgt i64 %246, %247
  br i1 %polly.loop_guard659.not, label %polly.loop_header635.us1043, label %polly.loop_header635

polly.loop_header635.us1043:                      ; preds = %polly.loop_header629.split, %polly.loop_header635.us1043
  %polly.indvar638.us1044 = phi i64 [ %polly.indvar_next639.us1081, %polly.loop_header635.us1043 ], [ 0, %polly.loop_header629.split ]
  %250 = add nuw nsw i64 %polly.indvar638.us1044, %217
  %polly.access.mul.Packed_MemRef_call1517.us1089 = mul nuw nsw i64 %polly.indvar638.us1044, 1200
  %polly.access.add.call1653.us1048 = add nuw nsw i64 %polly.access.mul.call1652.us1047, %250
  %polly.access.call1654.us1049 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us1048
  %polly.access.call1654.load.us1050 = load double, double* %polly.access.call1654.us1049, align 8, !alias.scope !92, !noalias !97
  %polly.access.Packed_MemRef_call1517.us1052 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.mul.Packed_MemRef_call1517.us1089
  store double %polly.access.call1654.load.us1050, double* %polly.access.Packed_MemRef_call1517.us1052, align 8
  %polly.access.add.call1653.us1048.1 = add nuw nsw i64 %polly.access.mul.call1652.us1047.1, %250
  %polly.access.call1654.us1049.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us1048.1
  %polly.access.call1654.load.us1050.1 = load double, double* %polly.access.call1654.us1049.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.us1051.1 = or i64 %polly.access.mul.Packed_MemRef_call1517.us1089, 1
  %polly.access.Packed_MemRef_call1517.us1052.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us1051.1
  store double %polly.access.call1654.load.us1050.1, double* %polly.access.Packed_MemRef_call1517.us1052.1, align 8
  %polly.access.add.call1653.us1048.2 = add nuw nsw i64 %polly.access.mul.call1652.us1047.2, %250
  %polly.access.call1654.us1049.2 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us1048.2
  %polly.access.call1654.load.us1050.2 = load double, double* %polly.access.call1654.us1049.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.us1051.2 = or i64 %polly.access.mul.Packed_MemRef_call1517.us1089, 2
  %polly.access.Packed_MemRef_call1517.us1052.2 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us1051.2
  store double %polly.access.call1654.load.us1050.2, double* %polly.access.Packed_MemRef_call1517.us1052.2, align 8
  %polly.access.add.call1653.us1048.3 = add nuw nsw i64 %polly.access.mul.call1652.us1047.3, %250
  %polly.access.call1654.us1049.3 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us1048.3
  %polly.access.call1654.load.us1050.3 = load double, double* %polly.access.call1654.us1049.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.us1051.3 = or i64 %polly.access.mul.Packed_MemRef_call1517.us1089, 3
  %polly.access.Packed_MemRef_call1517.us1052.3 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us1051.3
  store double %polly.access.call1654.load.us1050.3, double* %polly.access.Packed_MemRef_call1517.us1052.3, align 8
  %polly.access.add.call1653.us1048.4 = add nuw nsw i64 %polly.access.mul.call1652.us1047.4, %250
  %polly.access.call1654.us1049.4 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us1048.4
  %polly.access.call1654.load.us1050.4 = load double, double* %polly.access.call1654.us1049.4, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.us1051.4 = or i64 %polly.access.mul.Packed_MemRef_call1517.us1089, 4
  %polly.access.Packed_MemRef_call1517.us1052.4 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us1051.4
  store double %polly.access.call1654.load.us1050.4, double* %polly.access.Packed_MemRef_call1517.us1052.4, align 8
  %polly.access.add.call1653.us1048.5 = add nuw nsw i64 %polly.access.mul.call1652.us1047.5, %250
  %polly.access.call1654.us1049.5 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us1048.5
  %polly.access.call1654.load.us1050.5 = load double, double* %polly.access.call1654.us1049.5, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.us1051.5 = or i64 %polly.access.mul.Packed_MemRef_call1517.us1089, 5
  %polly.access.Packed_MemRef_call1517.us1052.5 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us1051.5
  store double %polly.access.call1654.load.us1050.5, double* %polly.access.Packed_MemRef_call1517.us1052.5, align 8
  %polly.access.add.call1653.us1048.6 = add nuw nsw i64 %polly.access.mul.call1652.us1047.6, %250
  %polly.access.call1654.us1049.6 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us1048.6
  %polly.access.call1654.load.us1050.6 = load double, double* %polly.access.call1654.us1049.6, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.us1051.6 = or i64 %polly.access.mul.Packed_MemRef_call1517.us1089, 6
  %polly.access.Packed_MemRef_call1517.us1052.6 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us1051.6
  store double %polly.access.call1654.load.us1050.6, double* %polly.access.Packed_MemRef_call1517.us1052.6, align 8
  %polly.access.add.call1653.us1048.7 = add nuw nsw i64 %polly.access.mul.call1652.us1047.7, %250
  %polly.access.call1654.us1049.7 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us1048.7
  %polly.access.call1654.load.us1050.7 = load double, double* %polly.access.call1654.us1049.7, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.us1051.7 = or i64 %polly.access.mul.Packed_MemRef_call1517.us1089, 7
  %polly.access.Packed_MemRef_call1517.us1052.7 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us1051.7
  store double %polly.access.call1654.load.us1050.7, double* %polly.access.Packed_MemRef_call1517.us1052.7, align 8
  %polly.indvar_next639.us1081 = add nuw nsw i64 %polly.indvar638.us1044, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next639.us1081, 20
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
  %251 = add nuw nsw i64 %polly.indvar638, %217
  %polly.access.mul.Packed_MemRef_call1517 = mul nuw nsw i64 %polly.indvar638, 1200
  %polly.access.add.call1653 = add nuw nsw i64 %polly.access.mul.call1652, %251
  %polly.access.call1654 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653
  %polly.access.call1654.load = load double, double* %polly.access.call1654, align 8, !alias.scope !92, !noalias !97
  %polly.access.Packed_MemRef_call1517 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.mul.Packed_MemRef_call1517
  store double %polly.access.call1654.load, double* %polly.access.Packed_MemRef_call1517, align 8
  %polly.access.add.call1653.1 = add nuw nsw i64 %polly.access.mul.call1652.1, %251
  %polly.access.call1654.1 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.1
  %polly.access.call1654.load.1 = load double, double* %polly.access.call1654.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.1 = or i64 %polly.access.mul.Packed_MemRef_call1517, 1
  %polly.access.Packed_MemRef_call1517.1 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.1
  store double %polly.access.call1654.load.1, double* %polly.access.Packed_MemRef_call1517.1, align 8
  %polly.access.add.call1653.2 = add nuw nsw i64 %polly.access.mul.call1652.2, %251
  %polly.access.call1654.2 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.2
  %polly.access.call1654.load.2 = load double, double* %polly.access.call1654.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.2 = or i64 %polly.access.mul.Packed_MemRef_call1517, 2
  %polly.access.Packed_MemRef_call1517.2 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.2
  store double %polly.access.call1654.load.2, double* %polly.access.Packed_MemRef_call1517.2, align 8
  %polly.access.add.call1653.3 = add nuw nsw i64 %polly.access.mul.call1652.3, %251
  %polly.access.call1654.3 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.3
  %polly.access.call1654.load.3 = load double, double* %polly.access.call1654.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.3 = or i64 %polly.access.mul.Packed_MemRef_call1517, 3
  %polly.access.Packed_MemRef_call1517.3 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.3
  store double %polly.access.call1654.load.3, double* %polly.access.Packed_MemRef_call1517.3, align 8
  %polly.access.add.call1653.4 = add nuw nsw i64 %polly.access.mul.call1652.4, %251
  %polly.access.call1654.4 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.4
  %polly.access.call1654.load.4 = load double, double* %polly.access.call1654.4, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.4 = or i64 %polly.access.mul.Packed_MemRef_call1517, 4
  %polly.access.Packed_MemRef_call1517.4 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.4
  store double %polly.access.call1654.load.4, double* %polly.access.Packed_MemRef_call1517.4, align 8
  %polly.access.add.call1653.5 = add nuw nsw i64 %polly.access.mul.call1652.5, %251
  %polly.access.call1654.5 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.5
  %polly.access.call1654.load.5 = load double, double* %polly.access.call1654.5, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.5 = or i64 %polly.access.mul.Packed_MemRef_call1517, 5
  %polly.access.Packed_MemRef_call1517.5 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.5
  store double %polly.access.call1654.load.5, double* %polly.access.Packed_MemRef_call1517.5, align 8
  %polly.access.add.call1653.6 = add nuw nsw i64 %polly.access.mul.call1652.6, %251
  %polly.access.call1654.6 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.6
  %polly.access.call1654.load.6 = load double, double* %polly.access.call1654.6, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.6 = or i64 %polly.access.mul.Packed_MemRef_call1517, 6
  %polly.access.Packed_MemRef_call1517.6 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.6
  store double %polly.access.call1654.load.6, double* %polly.access.Packed_MemRef_call1517.6, align 8
  %polly.access.add.call1653.7 = add nuw nsw i64 %polly.access.mul.call1652.7, %251
  %polly.access.call1654.7 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.7
  %polly.access.call1654.load.7 = load double, double* %polly.access.call1654.7, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517.7 = or i64 %polly.access.mul.Packed_MemRef_call1517, 7
  %polly.access.Packed_MemRef_call1517.7 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.7
  store double %polly.access.call1654.load.7, double* %polly.access.Packed_MemRef_call1517.7, align 8
  br label %polly.loop_header656

polly.merge642:                                   ; preds = %polly.loop_header656
  %polly.indvar_next639 = add nuw nsw i64 %polly.indvar638, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar_next639, 20
  br i1 %exitcond1161.not, label %polly.loop_header685.preheader, label %polly.loop_header635

polly.loop_header685.preheader:                   ; preds = %polly.merge642, %polly.loop_header635.us1043, %polly.merge642.us
  %252 = sub nsw i64 %225, %243
  %253 = icmp sgt i64 %252, 0
  %254 = select i1 %253, i64 %252, i64 0
  %polly.loop_guard695 = icmp slt i64 %254, 50
  br i1 %polly.loop_guard695, label %polly.loop_header685.us, label %polly.loop_exit687

polly.loop_header685.us:                          ; preds = %polly.loop_header685.preheader, %polly.loop_exit694.loopexit.us
  %polly.indvar688.us = phi i64 [ %polly.indvar_next689.us, %polly.loop_exit694.loopexit.us ], [ 0, %polly.loop_header685.preheader ]
  %255 = add nuw nsw i64 %polly.indvar688.us, %217
  %polly.access.mul.Packed_MemRef_call1517707.us = mul nuw nsw i64 %polly.indvar688.us, 1200
  %256 = shl i64 %255, 3
  br label %polly.loop_header692.us

polly.loop_header692.us:                          ; preds = %polly.loop_header685.us, %polly.loop_exit702.us
  %indvars.iv1182 = phi i64 [ %241, %polly.loop_header685.us ], [ %indvars.iv.next1183, %polly.loop_exit702.us ]
  %polly.indvar696.us = phi i64 [ %254, %polly.loop_header685.us ], [ %polly.indvar_next697.us, %polly.loop_exit702.us ]
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 7)
  %257 = add nuw i64 %polly.indvar696.us, %243
  %258 = add i64 %257, %226
  %polly.loop_guard703.us1230 = icmp sgt i64 %258, -1
  br i1 %polly.loop_guard703.us1230, label %polly.loop_header700.preheader.us, label %polly.loop_exit702.us

polly.loop_header700.us:                          ; preds = %polly.loop_header700.preheader.us, %polly.loop_header700.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_header700.us ], [ 0, %polly.loop_header700.preheader.us ]
  %259 = add nuw nsw i64 %polly.indvar704.us, %225
  %polly.access.add.Packed_MemRef_call1517708.us = add nuw nsw i64 %polly.indvar704.us, %polly.access.mul.Packed_MemRef_call1517707.us
  %polly.access.Packed_MemRef_call1517709.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1517709.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_713.us, %_p_scalar_710.us
  %260 = mul nuw nsw i64 %259, 8000
  %261 = add nuw nsw i64 %260, %256
  %scevgep714.us = getelementptr i8, i8* %call2, i64 %261
  %scevgep714715.us = bitcast i8* %scevgep714.us to double*
  %_p_scalar_716.us = load double, double* %scevgep714715.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_720.us, %_p_scalar_716.us
  %262 = shl i64 %259, 3
  %263 = add i64 %262, %266
  %scevgep721.us = getelementptr i8, i8* %call, i64 %263
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
  %264 = mul i64 %257, 8000
  %265 = add i64 %264, %256
  %scevgep711.us = getelementptr i8, i8* %call2, i64 %265
  %scevgep711712.us = bitcast i8* %scevgep711.us to double*
  %_p_scalar_713.us = load double, double* %scevgep711712.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1517718.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1517707.us, %258
  %polly.access.Packed_MemRef_call1517719.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517718.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call1517719.us, align 8
  %266 = mul i64 %257, 9600
  br label %polly.loop_header700.us

polly.loop_exit694.loopexit.us:                   ; preds = %polly.loop_exit702.us
  %polly.indvar_next689.us = add nuw nsw i64 %polly.indvar688.us, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar_next689.us, 20
  br i1 %exitcond1186.not, label %polly.loop_exit687, label %polly.loop_header685.us

polly.loop_header656:                             ; preds = %polly.loop_header635, %polly.loop_header656
  %polly.indvar660 = phi i64 [ %polly.indvar_next661, %polly.loop_header656 ], [ %246, %polly.loop_header635 ]
  %267 = add nuw nsw i64 %polly.indvar660, %225
  %polly.access.mul.call1664 = mul nsw i64 %267, 1000
  %polly.access.add.call1665 = add nuw nsw i64 %polly.access.mul.call1664, %251
  %polly.access.call1666 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1665
  %polly.access.call1666.load = load double, double* %polly.access.call1666, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517668 = add nuw nsw i64 %polly.indvar660, %polly.access.mul.Packed_MemRef_call1517
  %polly.access.Packed_MemRef_call1517669 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517668
  store double %polly.access.call1666.load, double* %polly.access.Packed_MemRef_call1517669, align 8
  %polly.indvar_next661 = add nuw nsw i64 %polly.indvar660, 1
  %polly.loop_cond662.not.not = icmp slt i64 %polly.indvar660, %247
  br i1 %polly.loop_cond662.not.not, label %polly.loop_header656, label %polly.merge642

polly.loop_header850:                             ; preds = %entry, %polly.loop_exit858
  %indvars.iv1215 = phi i64 [ %indvars.iv.next1216, %polly.loop_exit858 ], [ 0, %entry ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %entry ]
  %smin1217 = call i64 @llvm.smin.i64(i64 %indvars.iv1215, i64 -1168)
  %268 = shl nsw i64 %polly.indvar853, 5
  %269 = add nsw i64 %smin1217, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1216 = add nsw i64 %indvars.iv1215, -32
  %exitcond1220.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1220.not, label %polly.loop_header877, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %indvars.iv1211 = phi i64 [ %indvars.iv.next1212, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %270 = mul nsw i64 %polly.indvar859, -32
  %smin1264 = call i64 @llvm.smin.i64(i64 %270, i64 -1168)
  %271 = add nsw i64 %smin1264, 1200
  %smin1213 = call i64 @llvm.smin.i64(i64 %indvars.iv1211, i64 -1168)
  %272 = shl nsw i64 %polly.indvar859, 5
  %273 = add nsw i64 %smin1213, 1199
  br label %polly.loop_header862

polly.loop_exit864:                               ; preds = %polly.loop_exit870
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %indvars.iv.next1212 = add nsw i64 %indvars.iv1211, -32
  %exitcond1219.not = icmp eq i64 %polly.indvar_next860, 38
  br i1 %exitcond1219.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_exit870, %polly.loop_header856
  %polly.indvar865 = phi i64 [ 0, %polly.loop_header856 ], [ %polly.indvar_next866, %polly.loop_exit870 ]
  %274 = add nuw nsw i64 %polly.indvar865, %268
  %275 = trunc i64 %274 to i32
  %276 = mul nuw nsw i64 %274, 9600
  %min.iters.check = icmp eq i64 %271, 0
  br i1 %min.iters.check, label %polly.loop_header868, label %vector.ph1265

vector.ph1265:                                    ; preds = %polly.loop_header862
  %broadcast.splatinsert1272 = insertelement <4 x i64> poison, i64 %272, i32 0
  %broadcast.splat1273 = shufflevector <4 x i64> %broadcast.splatinsert1272, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %275, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %vector.ph1265
  %index1266 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1267, %vector.body1263 ]
  %vec.ind1270 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1265 ], [ %vec.ind.next1271, %vector.body1263 ]
  %277 = add nuw nsw <4 x i64> %vec.ind1270, %broadcast.splat1273
  %278 = trunc <4 x i64> %277 to <4 x i32>
  %279 = mul <4 x i32> %broadcast.splat1275, %278
  %280 = add <4 x i32> %279, <i32 3, i32 3, i32 3, i32 3>
  %281 = urem <4 x i32> %280, <i32 1200, i32 1200, i32 1200, i32 1200>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %284 = extractelement <4 x i64> %277, i32 0
  %285 = shl i64 %284, 3
  %286 = add nuw nsw i64 %285, %276
  %287 = getelementptr i8, i8* %call, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %283, <4 x double>* %288, align 8, !alias.scope !99, !noalias !101
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1271 = add <4 x i64> %vec.ind1270, <i64 4, i64 4, i64 4, i64 4>
  %289 = icmp eq i64 %index.next1267, %271
  br i1 %289, label %polly.loop_exit870, label %vector.body1263, !llvm.loop !104

polly.loop_exit870:                               ; preds = %vector.body1263, %polly.loop_header868
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1218.not = icmp eq i64 %polly.indvar865, %269
  br i1 %exitcond1218.not, label %polly.loop_exit864, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_header862, %polly.loop_header868
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_header868 ], [ 0, %polly.loop_header862 ]
  %290 = add nuw nsw i64 %polly.indvar871, %272
  %291 = trunc i64 %290 to i32
  %292 = mul i32 %291, %275
  %293 = add i32 %292, 3
  %294 = urem i32 %293, 1200
  %p_conv31.i = sitofp i32 %294 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %295 = shl i64 %290, 3
  %296 = add nuw nsw i64 %295, %276
  %scevgep874 = getelementptr i8, i8* %call, i64 %296
  %scevgep874875 = bitcast i8* %scevgep874 to double*
  store double %p_div33.i, double* %scevgep874875, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1214.not = icmp eq i64 %polly.indvar871, %273
  br i1 %exitcond1214.not, label %polly.loop_exit870, label %polly.loop_header868, !llvm.loop !105

polly.loop_header877:                             ; preds = %polly.loop_exit858, %polly.loop_exit885
  %indvars.iv1205 = phi i64 [ %indvars.iv.next1206, %polly.loop_exit885 ], [ 0, %polly.loop_exit858 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_exit858 ]
  %smin1207 = call i64 @llvm.smin.i64(i64 %indvars.iv1205, i64 -1168)
  %297 = shl nsw i64 %polly.indvar880, 5
  %298 = add nsw i64 %smin1207, 1199
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1206 = add nsw i64 %indvars.iv1205, -32
  %exitcond1210.not = icmp eq i64 %polly.indvar_next881, 38
  br i1 %exitcond1210.not, label %polly.loop_header903, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %indvars.iv1201 = phi i64 [ %indvars.iv.next1202, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %299 = mul nsw i64 %polly.indvar886, -32
  %smin1279 = call i64 @llvm.smin.i64(i64 %299, i64 -968)
  %300 = add nsw i64 %smin1279, 1000
  %smin1203 = call i64 @llvm.smin.i64(i64 %indvars.iv1201, i64 -968)
  %301 = shl nsw i64 %polly.indvar886, 5
  %302 = add nsw i64 %smin1203, 999
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next1202 = add nsw i64 %indvars.iv1201, -32
  %exitcond1209.not = icmp eq i64 %polly.indvar_next887, 32
  br i1 %exitcond1209.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %polly.indvar892 = phi i64 [ 0, %polly.loop_header883 ], [ %polly.indvar_next893, %polly.loop_exit897 ]
  %303 = add nuw nsw i64 %polly.indvar892, %297
  %304 = trunc i64 %303 to i32
  %305 = mul nuw nsw i64 %303, 8000
  %min.iters.check1280 = icmp eq i64 %300, 0
  br i1 %min.iters.check1280, label %polly.loop_header895, label %vector.ph1281

vector.ph1281:                                    ; preds = %polly.loop_header889
  %broadcast.splatinsert1290 = insertelement <4 x i64> poison, i64 %301, i32 0
  %broadcast.splat1291 = shufflevector <4 x i64> %broadcast.splatinsert1290, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1292 = insertelement <4 x i32> poison, i32 %304, i32 0
  %broadcast.splat1293 = shufflevector <4 x i32> %broadcast.splatinsert1292, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1281
  %index1284 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1285, %vector.body1278 ]
  %vec.ind1288 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1281 ], [ %vec.ind.next1289, %vector.body1278 ]
  %306 = add nuw nsw <4 x i64> %vec.ind1288, %broadcast.splat1291
  %307 = trunc <4 x i64> %306 to <4 x i32>
  %308 = mul <4 x i32> %broadcast.splat1293, %307
  %309 = add <4 x i32> %308, <i32 2, i32 2, i32 2, i32 2>
  %310 = urem <4 x i32> %309, <i32 1000, i32 1000, i32 1000, i32 1000>
  %311 = sitofp <4 x i32> %310 to <4 x double>
  %312 = fmul fast <4 x double> %311, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %313 = extractelement <4 x i64> %306, i32 0
  %314 = shl i64 %313, 3
  %315 = add nuw nsw i64 %314, %305
  %316 = getelementptr i8, i8* %call2, i64 %315
  %317 = bitcast i8* %316 to <4 x double>*
  store <4 x double> %312, <4 x double>* %317, align 8, !alias.scope !103, !noalias !106
  %index.next1285 = add i64 %index1284, 4
  %vec.ind.next1289 = add <4 x i64> %vec.ind1288, <i64 4, i64 4, i64 4, i64 4>
  %318 = icmp eq i64 %index.next1285, %300
  br i1 %318, label %polly.loop_exit897, label %vector.body1278, !llvm.loop !107

polly.loop_exit897:                               ; preds = %vector.body1278, %polly.loop_header895
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1208.not = icmp eq i64 %polly.indvar892, %298
  br i1 %exitcond1208.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_header889, %polly.loop_header895
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_header895 ], [ 0, %polly.loop_header889 ]
  %319 = add nuw nsw i64 %polly.indvar898, %301
  %320 = trunc i64 %319 to i32
  %321 = mul i32 %320, %304
  %322 = add i32 %321, 2
  %323 = urem i32 %322, 1000
  %p_conv10.i = sitofp i32 %323 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %324 = shl i64 %319, 3
  %325 = add nuw nsw i64 %324, %305
  %scevgep901 = getelementptr i8, i8* %call2, i64 %325
  %scevgep901902 = bitcast i8* %scevgep901 to double*
  store double %p_div12.i, double* %scevgep901902, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond1204.not = icmp eq i64 %polly.indvar898, %302
  br i1 %exitcond1204.not, label %polly.loop_exit897, label %polly.loop_header895, !llvm.loop !108

polly.loop_header903:                             ; preds = %polly.loop_exit885, %polly.loop_exit911
  %indvars.iv1195 = phi i64 [ %indvars.iv.next1196, %polly.loop_exit911 ], [ 0, %polly.loop_exit885 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_exit885 ]
  %smin1197 = call i64 @llvm.smin.i64(i64 %indvars.iv1195, i64 -1168)
  %326 = shl nsw i64 %polly.indvar906, 5
  %327 = add nsw i64 %smin1197, 1199
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1196 = add nsw i64 %indvars.iv1195, -32
  %exitcond1200.not = icmp eq i64 %polly.indvar_next907, 38
  br i1 %exitcond1200.not, label %init_array.exit, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %indvars.iv1191 = phi i64 [ %indvars.iv.next1192, %polly.loop_exit917 ], [ 0, %polly.loop_header903 ]
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %polly.loop_header903 ]
  %328 = mul nsw i64 %polly.indvar912, -32
  %smin1297 = call i64 @llvm.smin.i64(i64 %328, i64 -968)
  %329 = add nsw i64 %smin1297, 1000
  %smin1193 = call i64 @llvm.smin.i64(i64 %indvars.iv1191, i64 -968)
  %330 = shl nsw i64 %polly.indvar912, 5
  %331 = add nsw i64 %smin1193, 999
  br label %polly.loop_header915

polly.loop_exit917:                               ; preds = %polly.loop_exit923
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %indvars.iv.next1192 = add nsw i64 %indvars.iv1191, -32
  %exitcond1199.not = icmp eq i64 %polly.indvar_next913, 32
  br i1 %exitcond1199.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_exit923, %polly.loop_header909
  %polly.indvar918 = phi i64 [ 0, %polly.loop_header909 ], [ %polly.indvar_next919, %polly.loop_exit923 ]
  %332 = add nuw nsw i64 %polly.indvar918, %326
  %333 = trunc i64 %332 to i32
  %334 = mul nuw nsw i64 %332, 8000
  %min.iters.check1298 = icmp eq i64 %329, 0
  br i1 %min.iters.check1298, label %polly.loop_header921, label %vector.ph1299

vector.ph1299:                                    ; preds = %polly.loop_header915
  %broadcast.splatinsert1308 = insertelement <4 x i64> poison, i64 %330, i32 0
  %broadcast.splat1309 = shufflevector <4 x i64> %broadcast.splatinsert1308, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1310 = insertelement <4 x i32> poison, i32 %333, i32 0
  %broadcast.splat1311 = shufflevector <4 x i32> %broadcast.splatinsert1310, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1296

vector.body1296:                                  ; preds = %vector.body1296, %vector.ph1299
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1303, %vector.body1296 ]
  %vec.ind1306 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1299 ], [ %vec.ind.next1307, %vector.body1296 ]
  %335 = add nuw nsw <4 x i64> %vec.ind1306, %broadcast.splat1309
  %336 = trunc <4 x i64> %335 to <4 x i32>
  %337 = mul <4 x i32> %broadcast.splat1311, %336
  %338 = add <4 x i32> %337, <i32 1, i32 1, i32 1, i32 1>
  %339 = urem <4 x i32> %338, <i32 1200, i32 1200, i32 1200, i32 1200>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %342 = extractelement <4 x i64> %335, i32 0
  %343 = shl i64 %342, 3
  %344 = add nuw nsw i64 %343, %334
  %345 = getelementptr i8, i8* %call1, i64 %344
  %346 = bitcast i8* %345 to <4 x double>*
  store <4 x double> %341, <4 x double>* %346, align 8, !alias.scope !102, !noalias !109
  %index.next1303 = add i64 %index1302, 4
  %vec.ind.next1307 = add <4 x i64> %vec.ind1306, <i64 4, i64 4, i64 4, i64 4>
  %347 = icmp eq i64 %index.next1303, %329
  br i1 %347, label %polly.loop_exit923, label %vector.body1296, !llvm.loop !110

polly.loop_exit923:                               ; preds = %vector.body1296, %polly.loop_header921
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1198.not = icmp eq i64 %polly.indvar918, %327
  br i1 %exitcond1198.not, label %polly.loop_exit917, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_header915, %polly.loop_header921
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_header921 ], [ 0, %polly.loop_header915 ]
  %348 = add nuw nsw i64 %polly.indvar924, %330
  %349 = trunc i64 %348 to i32
  %350 = mul i32 %349, %333
  %351 = add i32 %350, 1
  %352 = urem i32 %351, 1200
  %p_conv.i = sitofp i32 %352 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %353 = shl i64 %348, 3
  %354 = add nuw nsw i64 %353, %334
  %scevgep928 = getelementptr i8, i8* %call1, i64 %354
  %scevgep928929 = bitcast i8* %scevgep928 to double*
  store double %p_div.i, double* %scevgep928929, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %exitcond1194.not = icmp eq i64 %polly.indvar924, %331
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
!25 = !{!"llvm.loop.tile.size", i32 8}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 20}
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
