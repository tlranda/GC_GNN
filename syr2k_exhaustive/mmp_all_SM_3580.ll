; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3580.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3580.c"
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
  %call882 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1734 = bitcast i8* %call1 to double*
  %polly.access.call1743 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1743, %call2
  %polly.access.call2763 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2763, %call1
  %2 = or i1 %0, %1
  %polly.access.call783 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call783, %call2
  %4 = icmp ule i8* %polly.access.call2763, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call783, %call1
  %8 = icmp ule i8* %polly.access.call1743, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header856, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1251 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1250 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1249 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1248 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1248, %scevgep1251
  %bound1 = icmp ult i8* %scevgep1250, %scevgep1249
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
  br i1 %exitcond18.not.i, label %vector.ph1255, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1255:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1262 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1263 = shufflevector <4 x i64> %broadcast.splatinsert1262, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1255
  %index1256 = phi i64 [ 0, %vector.ph1255 ], [ %index.next1257, %vector.body1254 ]
  %vec.ind1260 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1255 ], [ %vec.ind.next1261, %vector.body1254 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1260, %broadcast.splat1263
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv7.i, i64 %index1256
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1257 = add i64 %index1256, 4
  %vec.ind.next1261 = add <4 x i64> %vec.ind1260, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1257, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1254, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1254
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1255, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit917
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start518, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1317 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1317, label %for.body3.i46.preheader1394, label %vector.ph1318

vector.ph1318:                                    ; preds = %for.body3.i46.preheader
  %n.vec1320 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %vector.ph1318
  %index1321 = phi i64 [ 0, %vector.ph1318 ], [ %index.next1322, %vector.body1316 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv21.i, i64 %index1321
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1322 = add i64 %index1321, 4
  %46 = icmp eq i64 %index.next1322, %n.vec1320
  br i1 %46, label %middle.block1314, label %vector.body1316, !llvm.loop !18

middle.block1314:                                 ; preds = %vector.body1316
  %cmp.n1324 = icmp eq i64 %indvars.iv21.i, %n.vec1320
  br i1 %cmp.n1324, label %for.inc6.i, label %for.body3.i46.preheader1394

for.body3.i46.preheader1394:                      ; preds = %for.body3.i46.preheader, %middle.block1314
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1320, %middle.block1314 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1394, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1394 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1314, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting519
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start304, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1340 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1340, label %for.body3.i60.preheader1392, label %vector.ph1341

vector.ph1341:                                    ; preds = %for.body3.i60.preheader
  %n.vec1343 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %vector.ph1341
  %index1344 = phi i64 [ 0, %vector.ph1341 ], [ %index.next1345, %vector.body1339 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv21.i52, i64 %index1344
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1348 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1348, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1345 = add i64 %index1344, 4
  %57 = icmp eq i64 %index.next1345, %n.vec1343
  br i1 %57, label %middle.block1337, label %vector.body1339, !llvm.loop !60

middle.block1337:                                 ; preds = %vector.body1339
  %cmp.n1347 = icmp eq i64 %indvars.iv21.i52, %n.vec1343
  br i1 %cmp.n1347, label %for.inc6.i63, label %for.body3.i60.preheader1392

for.body3.i60.preheader1392:                      ; preds = %for.body3.i60.preheader, %middle.block1337
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1343, %middle.block1337 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1392, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1392 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1337, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting305
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1366 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1366, label %for.body3.i99.preheader1390, label %vector.ph1367

vector.ph1367:                                    ; preds = %for.body3.i99.preheader
  %n.vec1369 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.body1365, %vector.ph1367
  %index1370 = phi i64 [ 0, %vector.ph1367 ], [ %index.next1371, %vector.body1365 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv21.i91, i64 %index1370
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1374 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1374, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1371 = add i64 %index1370, 4
  %68 = icmp eq i64 %index.next1371, %n.vec1369
  br i1 %68, label %middle.block1363, label %vector.body1365, !llvm.loop !62

middle.block1363:                                 ; preds = %vector.body1365
  %cmp.n1373 = icmp eq i64 %indvars.iv21.i91, %n.vec1369
  br i1 %cmp.n1373, label %for.inc6.i102, label %for.body3.i99.preheader1390

for.body3.i99.preheader1390:                      ; preds = %for.body3.i99.preheader, %middle.block1363
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1369, %middle.block1363 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1390, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1390 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1363, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call882, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1378 = phi i64 [ %indvar.next1379, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1378, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1380 = icmp ult i64 %88, 4
  br i1 %min.iters.check1380, label %polly.loop_header191.preheader, label %vector.ph1381

vector.ph1381:                                    ; preds = %polly.loop_header
  %n.vec1383 = and i64 %88, -4
  br label %vector.body1377

vector.body1377:                                  ; preds = %vector.body1377, %vector.ph1381
  %index1384 = phi i64 [ 0, %vector.ph1381 ], [ %index.next1385, %vector.body1377 ]
  %90 = shl nuw nsw i64 %index1384, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1388 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1388, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1385 = add i64 %index1384, 4
  %95 = icmp eq i64 %index.next1385, %n.vec1383
  br i1 %95, label %middle.block1375, label %vector.body1377, !llvm.loop !74

middle.block1375:                                 ; preds = %vector.body1377
  %cmp.n1387 = icmp eq i64 %88, %n.vec1383
  br i1 %cmp.n1387, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1375
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1383, %middle.block1375 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1375
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1379 = add i64 %indvar1378, 1
  br i1 %exitcond1134.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1133.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1133.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv1110 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1111, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %smin1129 = call i64 @llvm.smin.i64(i64 %indvars.iv1110, i64 -936)
  %97 = add nsw i64 %smin1129, 1000
  %98 = shl nsw i64 %polly.indvar202, 6
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -64
  %exitcond1132.not = icmp eq i64 %polly.indvar_next203, 16
  br i1 %exitcond1132.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1121 = phi i64 [ %indvars.iv.next1122, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit213 ], [ 7, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 79, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %99 = lshr i64 %indvars.iv1106, 3
  %100 = mul nuw nsw i64 %99, 80
  %101 = mul nuw nsw i64 %polly.indvar208, 3
  %102 = add nuw nsw i64 %101, 7
  %pexp.p_div_q = lshr i64 %102, 3
  %103 = sub nsw i64 %polly.indvar208, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %103, 15
  br i1 %polly.loop_guard, label %polly.loop_header211.preheader, label %polly.loop_exit213

polly.loop_header211.preheader:                   ; preds = %polly.loop_header205
  %104 = sub nsw i64 %indvars.iv, %100
  %105 = sub nsw i64 %indvars.iv1121, %100
  %106 = add i64 %indvars.iv1116, %100
  %107 = mul nuw nsw i64 %polly.indvar208, 5
  %108 = mul nsw i64 %polly.indvar208, -50
  %109 = mul nuw nsw i64 %polly.indvar208, 50
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit265, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 30
  %indvars.iv.next1107 = add nuw nsw i64 %indvars.iv1106, 3
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -30
  %indvars.iv.next1122 = add nuw nsw i64 %indvars.iv1121, 30
  %exitcond1131.not = icmp eq i64 %polly.indvar_next209, 24
  br i1 %exitcond1131.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211.preheader, %polly.loop_exit265
  %indvars.iv1123 = phi i64 [ %105, %polly.loop_header211.preheader ], [ %indvars.iv.next1124, %polly.loop_exit265 ]
  %indvars.iv1118 = phi i64 [ %106, %polly.loop_header211.preheader ], [ %indvars.iv.next1119, %polly.loop_exit265 ]
  %indvars.iv1108 = phi i64 [ %104, %polly.loop_header211.preheader ], [ %indvars.iv.next1109, %polly.loop_exit265 ]
  %polly.indvar214 = phi i64 [ %103, %polly.loop_header211.preheader ], [ %polly.indvar_next215, %polly.loop_exit265 ]
  %smax1120 = call i64 @llvm.smax.i64(i64 %indvars.iv1118, i64 0)
  %110 = add i64 %smax1120, %indvars.iv1123
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1108, i64 0)
  %111 = shl nsw i64 %polly.indvar214, 3
  %.not.not = icmp sgt i64 %111, %107
  %112 = mul nsw i64 %polly.indvar214, 80
  %113 = add nsw i64 %112, %108
  %114 = icmp sgt i64 %113, 50
  %115 = select i1 %114, i64 %113, i64 50
  %116 = add nsw i64 %113, 79
  %polly.loop_guard237.not = icmp sgt i64 %115, %116
  br i1 %.not.not, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %117 = add nuw nsw i64 %polly.indvar220.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %118 = add nuw nsw i64 %polly.indvar226.us, %109
  %polly.access.mul.call1230.us = mul nuw nsw i64 %118, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %polly.access.mul.call1230.us, %117
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next227.us, 50
  br i1 %exitcond1113.not, label %polly.loop_exit225.us, label %polly.loop_header223.us

polly.loop_exit225.us:                            ; preds = %polly.loop_header223.us
  br i1 %polly.loop_guard237.not, label %polly.merge.us, label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_exit225.us, %polly.loop_header234.us
  %polly.indvar238.us = phi i64 [ %polly.indvar_next239.us, %polly.loop_header234.us ], [ %115, %polly.loop_exit225.us ]
  %119 = add nuw nsw i64 %polly.indvar238.us, %109
  %polly.access.mul.call1242.us = mul nsw i64 %119, 1000
  %polly.access.add.call1243.us = add nuw nsw i64 %polly.access.mul.call1242.us, %117
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1246.us = add nuw nsw i64 %polly.indvar238.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  %polly.indvar_next239.us = add nuw nsw i64 %polly.indvar238.us, 1
  %polly.loop_cond240.not.not.us = icmp slt i64 %polly.indvar238.us, %116
  br i1 %polly.loop_cond240.not.not.us, label %polly.loop_header234.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header234.us, %polly.loop_exit225.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next221.us, %97
  br i1 %exitcond1115.not, label %polly.loop_header263.preheader, label %polly.loop_header217.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  %polly.loop_guard252 = icmp sgt i64 %113, -80
  br i1 %polly.loop_guard252, label %polly.loop_header217.us952, label %polly.loop_header263.preheader

polly.loop_header217.us952:                       ; preds = %polly.loop_header211.split, %polly.merge.loopexit938.us998
  %polly.indvar220.us953 = phi i64 [ %polly.indvar_next221.us990, %polly.merge.loopexit938.us998 ], [ 0, %polly.loop_header211.split ]
  %120 = add nuw nsw i64 %polly.indvar220.us953, %98
  %polly.access.mul.Packed_MemRef_call1260.us997 = mul nuw nsw i64 %polly.indvar220.us953, 1200
  br label %polly.loop_header249.us955

polly.loop_header249.us955:                       ; preds = %polly.loop_header217.us952, %polly.loop_header249.us955
  %polly.indvar253.us956 = phi i64 [ %polly.indvar_next254.us963, %polly.loop_header249.us955 ], [ 0, %polly.loop_header217.us952 ]
  %121 = add nuw nsw i64 %polly.indvar253.us956, %109
  %polly.access.mul.call1257.us957 = mul nuw nsw i64 %121, 1000
  %polly.access.add.call1258.us958 = add nuw nsw i64 %120, %polly.access.mul.call1257.us957
  %polly.access.call1259.us959 = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1258.us958
  %polly.access.call1259.load.us960 = load double, double* %polly.access.call1259.us959, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1261.us961 = add nuw nsw i64 %polly.indvar253.us956, %polly.access.mul.Packed_MemRef_call1260.us997
  %polly.access.Packed_MemRef_call1262.us962 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us961
  store double %polly.access.call1259.load.us960, double* %polly.access.Packed_MemRef_call1262.us962, align 8
  %polly.indvar_next254.us963 = add nuw nsw i64 %polly.indvar253.us956, 1
  %exitcond.not = icmp eq i64 %polly.indvar253.us956, %smax
  br i1 %exitcond.not, label %polly.merge.loopexit938.us998, label %polly.loop_header249.us955

polly.merge.loopexit938.us998:                    ; preds = %polly.loop_header249.us955
  %polly.indvar_next221.us990 = add nuw nsw i64 %polly.indvar220.us953, 1
  %exitcond1112.not = icmp eq i64 %polly.indvar_next221.us990, %97
  br i1 %exitcond1112.not, label %polly.loop_header263.preheader, label %polly.loop_header217.us952

polly.loop_exit265:                               ; preds = %polly.loop_exit272.loopexit.us, %polly.loop_header263.preheader
  %polly.indvar_next215 = add nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp slt i64 %polly.indvar214, 14
  %indvars.iv.next1109 = add i64 %indvars.iv1108, 80
  %indvars.iv.next1119 = add i64 %indvars.iv1118, -80
  %indvars.iv.next1124 = add i64 %indvars.iv1123, 80
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header263.preheader:                   ; preds = %polly.merge.loopexit938.us998, %polly.merge.us, %polly.loop_header211.split
  %122 = sub nsw i64 %109, %112
  %123 = icmp sgt i64 %122, 0
  %124 = select i1 %123, i64 %122, i64 0
  %polly.loop_guard273 = icmp slt i64 %124, 80
  br i1 %polly.loop_guard273, label %polly.loop_header263.us, label %polly.loop_exit265

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit272.loopexit.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.loopexit.us ], [ 0, %polly.loop_header263.preheader ]
  %125 = add nuw nsw i64 %polly.indvar266.us, %98
  %polly.access.mul.Packed_MemRef_call1285.us = mul nuw nsw i64 %polly.indvar266.us, 1200
  %126 = shl i64 %125, 3
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header263.us, %polly.loop_exit280.us
  %indvars.iv1125 = phi i64 [ %110, %polly.loop_header263.us ], [ %indvars.iv.next1126, %polly.loop_exit280.us ]
  %polly.indvar274.us = phi i64 [ %124, %polly.loop_header263.us ], [ %polly.indvar_next275.us, %polly.loop_exit280.us ]
  %smin1127 = call i64 @llvm.smin.i64(i64 %indvars.iv1125, i64 49)
  %127 = add i64 %polly.indvar274.us, %112
  %128 = add i64 %127, %108
  %polly.loop_guard281.us1237 = icmp sgt i64 %128, -1
  br i1 %polly.loop_guard281.us1237, label %polly.loop_header278.preheader.us, label %polly.loop_exit280.us

polly.loop_header278.us:                          ; preds = %polly.loop_header278.preheader.us, %polly.loop_header278.us
  %polly.indvar282.us = phi i64 [ %polly.indvar_next283.us, %polly.loop_header278.us ], [ 0, %polly.loop_header278.preheader.us ]
  %129 = add nuw nsw i64 %polly.indvar282.us, %109
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar282.us, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_291.us, %_p_scalar_288.us
  %130 = mul nuw nsw i64 %129, 8000
  %131 = add nuw nsw i64 %130, %126
  %scevgep292.us = getelementptr i8, i8* %call2, i64 %131
  %scevgep292293.us = bitcast i8* %scevgep292.us to double*
  %_p_scalar_294.us = load double, double* %scevgep292293.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_298.us, %_p_scalar_294.us
  %132 = shl i64 %129, 3
  %133 = add i64 %132, %136
  %scevgep299.us = getelementptr i8, i8* %call, i64 %133
  %scevgep299300.us = bitcast i8* %scevgep299.us to double*
  %_p_scalar_301.us = load double, double* %scevgep299300.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_301.us
  store double %p_add42.i118.us, double* %scevgep299300.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next283.us = add nuw nsw i64 %polly.indvar282.us, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar282.us, %smin1127
  br i1 %exitcond1128.not, label %polly.loop_exit280.us, label %polly.loop_header278.us

polly.loop_exit280.us:                            ; preds = %polly.loop_header278.us, %polly.loop_header270.us
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %polly.loop_cond276.us = icmp ult i64 %polly.indvar274.us, 79
  %indvars.iv.next1126 = add i64 %indvars.iv1125, 1
  br i1 %polly.loop_cond276.us, label %polly.loop_header270.us, label %polly.loop_exit272.loopexit.us

polly.loop_header278.preheader.us:                ; preds = %polly.loop_header270.us
  %134 = mul i64 %127, 8000
  %135 = add i64 %134, %126
  %scevgep289.us = getelementptr i8, i8* %call2, i64 %135
  %scevgep289290.us = bitcast i8* %scevgep289.us to double*
  %_p_scalar_291.us = load double, double* %scevgep289290.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1296.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1285.us, %128
  %polly.access.Packed_MemRef_call1297.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1296.us
  %_p_scalar_298.us = load double, double* %polly.access.Packed_MemRef_call1297.us, align 8
  %136 = mul i64 %127, 9600
  br label %polly.loop_header278.us

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_exit280.us
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next267.us, %97
  br i1 %exitcond1130.not, label %polly.loop_exit265, label %polly.loop_header263.us

polly.start304:                                   ; preds = %kernel_syr2k.exit
  %malloccall306 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header390

polly.exiting305:                                 ; preds = %polly.loop_exit414
  tail call void @free(i8* %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start304
  %indvar1352 = phi i64 [ %indvar.next1353, %polly.loop_exit398 ], [ 0, %polly.start304 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start304 ]
  %137 = add i64 %indvar1352, 1
  %138 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %138
  %min.iters.check1354 = icmp ult i64 %137, 4
  br i1 %min.iters.check1354, label %polly.loop_header396.preheader, label %vector.ph1355

vector.ph1355:                                    ; preds = %polly.loop_header390
  %n.vec1357 = and i64 %137, -4
  br label %vector.body1351

vector.body1351:                                  ; preds = %vector.body1351, %vector.ph1355
  %index1358 = phi i64 [ 0, %vector.ph1355 ], [ %index.next1359, %vector.body1351 ]
  %139 = shl nuw nsw i64 %index1358, 3
  %140 = getelementptr i8, i8* %scevgep402, i64 %139
  %141 = bitcast i8* %140 to <4 x double>*
  %wide.load1362 = load <4 x double>, <4 x double>* %141, align 8, !alias.scope !79, !noalias !81
  %142 = fmul fast <4 x double> %wide.load1362, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %143 = bitcast i8* %140 to <4 x double>*
  store <4 x double> %142, <4 x double>* %143, align 8, !alias.scope !79, !noalias !81
  %index.next1359 = add i64 %index1358, 4
  %144 = icmp eq i64 %index.next1359, %n.vec1357
  br i1 %144, label %middle.block1349, label %vector.body1351, !llvm.loop !85

middle.block1349:                                 ; preds = %vector.body1351
  %cmp.n1361 = icmp eq i64 %137, %n.vec1357
  br i1 %cmp.n1361, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1349
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1357, %middle.block1349 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1349
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1168.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1353 = add i64 %indvar1352, 1
  br i1 %exitcond1168.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %145 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %145
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1167.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1167.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !86

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit414
  %indvars.iv1143 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %indvars.iv.next1144, %polly.loop_exit414 ]
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header406.preheader ], [ %polly.indvar_next410, %polly.loop_exit414 ]
  %smin1163 = call i64 @llvm.smin.i64(i64 %indvars.iv1143, i64 -936)
  %146 = add nsw i64 %smin1163, 1000
  %147 = shl nsw i64 %polly.indvar409, 6
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_exit422
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %indvars.iv.next1144 = add nsw i64 %indvars.iv1143, -64
  %exitcond1166.not = icmp eq i64 %polly.indvar_next410, 16
  br i1 %exitcond1166.not, label %polly.exiting305, label %polly.loop_header406

polly.loop_header412:                             ; preds = %polly.loop_exit422, %polly.loop_header406
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit422 ], [ 0, %polly.loop_header406 ]
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit422 ], [ 0, %polly.loop_header406 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit422 ], [ 7, %polly.loop_header406 ]
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit422 ], [ 79, %polly.loop_header406 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit422 ], [ 0, %polly.loop_header406 ]
  %148 = lshr i64 %indvars.iv1137, 3
  %149 = mul nuw nsw i64 %148, 80
  %150 = mul nuw nsw i64 %polly.indvar415, 3
  %151 = add nuw nsw i64 %150, 7
  %pexp.p_div_q418 = lshr i64 %151, 3
  %152 = sub nsw i64 %polly.indvar415, %pexp.p_div_q418
  %polly.loop_guard423 = icmp slt i64 %152, 15
  br i1 %polly.loop_guard423, label %polly.loop_header420.preheader, label %polly.loop_exit422

polly.loop_header420.preheader:                   ; preds = %polly.loop_header412
  %153 = sub nsw i64 %indvars.iv1135, %149
  %154 = sub nsw i64 %indvars.iv1155, %149
  %155 = add i64 %indvars.iv1150, %149
  %156 = mul nuw nsw i64 %polly.indvar415, 5
  %157 = mul nsw i64 %polly.indvar415, -50
  %158 = mul nuw nsw i64 %polly.indvar415, 50
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit479, %polly.loop_header412
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next1136 = add nuw nsw i64 %indvars.iv1135, 30
  %indvars.iv.next1138 = add nuw nsw i64 %indvars.iv1137, 3
  %indvars.iv.next1151 = add nsw i64 %indvars.iv1150, -30
  %indvars.iv.next1156 = add nuw nsw i64 %indvars.iv1155, 30
  %exitcond1165.not = icmp eq i64 %polly.indvar_next416, 24
  br i1 %exitcond1165.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header420:                             ; preds = %polly.loop_header420.preheader, %polly.loop_exit479
  %indvars.iv1157 = phi i64 [ %154, %polly.loop_header420.preheader ], [ %indvars.iv.next1158, %polly.loop_exit479 ]
  %indvars.iv1152 = phi i64 [ %155, %polly.loop_header420.preheader ], [ %indvars.iv.next1153, %polly.loop_exit479 ]
  %indvars.iv1139 = phi i64 [ %153, %polly.loop_header420.preheader ], [ %indvars.iv.next1140, %polly.loop_exit479 ]
  %polly.indvar424 = phi i64 [ %152, %polly.loop_header420.preheader ], [ %polly.indvar_next425, %polly.loop_exit479 ]
  %smax1154 = call i64 @llvm.smax.i64(i64 %indvars.iv1152, i64 0)
  %159 = add i64 %smax1154, %indvars.iv1157
  %smax1141 = call i64 @llvm.smax.i64(i64 %indvars.iv1139, i64 0)
  %160 = shl nsw i64 %polly.indvar424, 3
  %.not.not936 = icmp sgt i64 %160, %156
  %161 = mul nsw i64 %polly.indvar424, 80
  %162 = add nsw i64 %161, %157
  %163 = icmp sgt i64 %162, 50
  %164 = select i1 %163, i64 %162, i64 50
  %165 = add nsw i64 %162, 79
  %polly.loop_guard451.not = icmp sgt i64 %164, %165
  br i1 %.not.not936, label %polly.loop_header427.us, label %polly.loop_header420.split

polly.loop_header427.us:                          ; preds = %polly.loop_header420, %polly.merge434.us
  %polly.indvar430.us = phi i64 [ %polly.indvar_next431.us, %polly.merge434.us ], [ 0, %polly.loop_header420 ]
  %166 = add nuw nsw i64 %polly.indvar430.us, %147
  %polly.access.mul.Packed_MemRef_call1307.us = mul nuw nsw i64 %polly.indvar430.us, 1200
  br label %polly.loop_header437.us

polly.loop_header437.us:                          ; preds = %polly.loop_header427.us, %polly.loop_header437.us
  %polly.indvar440.us = phi i64 [ %polly.indvar_next441.us, %polly.loop_header437.us ], [ 0, %polly.loop_header427.us ]
  %167 = add nuw nsw i64 %polly.indvar440.us, %158
  %polly.access.mul.call1444.us = mul nuw nsw i64 %167, 1000
  %polly.access.add.call1445.us = add nuw nsw i64 %polly.access.mul.call1444.us, %166
  %polly.access.call1446.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1445.us
  %polly.access.call1446.load.us = load double, double* %polly.access.call1446.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1307.us = add nuw nsw i64 %polly.indvar440.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307.us
  store double %polly.access.call1446.load.us, double* %polly.access.Packed_MemRef_call1307.us, align 8
  %polly.indvar_next441.us = add nuw nsw i64 %polly.indvar440.us, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next441.us, 50
  br i1 %exitcond1147.not, label %polly.loop_exit439.us, label %polly.loop_header437.us

polly.loop_exit439.us:                            ; preds = %polly.loop_header437.us
  br i1 %polly.loop_guard451.not, label %polly.merge434.us, label %polly.loop_header448.us

polly.loop_header448.us:                          ; preds = %polly.loop_exit439.us, %polly.loop_header448.us
  %polly.indvar452.us = phi i64 [ %polly.indvar_next453.us, %polly.loop_header448.us ], [ %164, %polly.loop_exit439.us ]
  %168 = add nuw nsw i64 %polly.indvar452.us, %158
  %polly.access.mul.call1456.us = mul nsw i64 %168, 1000
  %polly.access.add.call1457.us = add nuw nsw i64 %polly.access.mul.call1456.us, %166
  %polly.access.call1458.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1457.us
  %polly.access.call1458.load.us = load double, double* %polly.access.call1458.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1307460.us = add nuw nsw i64 %polly.indvar452.us, %polly.access.mul.Packed_MemRef_call1307.us
  %polly.access.Packed_MemRef_call1307461.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307460.us
  store double %polly.access.call1458.load.us, double* %polly.access.Packed_MemRef_call1307461.us, align 8
  %polly.indvar_next453.us = add nuw nsw i64 %polly.indvar452.us, 1
  %polly.loop_cond454.not.not.us = icmp slt i64 %polly.indvar452.us, %165
  br i1 %polly.loop_cond454.not.not.us, label %polly.loop_header448.us, label %polly.merge434.us

polly.merge434.us:                                ; preds = %polly.loop_header448.us, %polly.loop_exit439.us
  %polly.indvar_next431.us = add nuw nsw i64 %polly.indvar430.us, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar_next431.us, %146
  br i1 %exitcond1149.not, label %polly.loop_header477.preheader, label %polly.loop_header427.us

polly.loop_header420.split:                       ; preds = %polly.loop_header420
  %polly.loop_guard466 = icmp sgt i64 %162, -80
  br i1 %polly.loop_guard466, label %polly.loop_header427.us999, label %polly.loop_header477.preheader

polly.loop_header427.us999:                       ; preds = %polly.loop_header420.split, %polly.merge434.loopexit939.us1045
  %polly.indvar430.us1000 = phi i64 [ %polly.indvar_next431.us1037, %polly.merge434.loopexit939.us1045 ], [ 0, %polly.loop_header420.split ]
  %169 = add nuw nsw i64 %polly.indvar430.us1000, %147
  %polly.access.mul.Packed_MemRef_call1307474.us1044 = mul nuw nsw i64 %polly.indvar430.us1000, 1200
  br label %polly.loop_header463.us1002

polly.loop_header463.us1002:                      ; preds = %polly.loop_header427.us999, %polly.loop_header463.us1002
  %polly.indvar467.us1003 = phi i64 [ %polly.indvar_next468.us1010, %polly.loop_header463.us1002 ], [ 0, %polly.loop_header427.us999 ]
  %170 = add nuw nsw i64 %polly.indvar467.us1003, %158
  %polly.access.mul.call1471.us1004 = mul nuw nsw i64 %170, 1000
  %polly.access.add.call1472.us1005 = add nuw nsw i64 %169, %polly.access.mul.call1471.us1004
  %polly.access.call1473.us1006 = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1472.us1005
  %polly.access.call1473.load.us1007 = load double, double* %polly.access.call1473.us1006, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1307475.us1008 = add nuw nsw i64 %polly.indvar467.us1003, %polly.access.mul.Packed_MemRef_call1307474.us1044
  %polly.access.Packed_MemRef_call1307476.us1009 = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307475.us1008
  store double %polly.access.call1473.load.us1007, double* %polly.access.Packed_MemRef_call1307476.us1009, align 8
  %polly.indvar_next468.us1010 = add nuw nsw i64 %polly.indvar467.us1003, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar467.us1003, %smax1141
  br i1 %exitcond1142.not, label %polly.merge434.loopexit939.us1045, label %polly.loop_header463.us1002

polly.merge434.loopexit939.us1045:                ; preds = %polly.loop_header463.us1002
  %polly.indvar_next431.us1037 = add nuw nsw i64 %polly.indvar430.us1000, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar_next431.us1037, %146
  br i1 %exitcond1146.not, label %polly.loop_header477.preheader, label %polly.loop_header427.us999

polly.loop_exit479:                               ; preds = %polly.loop_exit486.loopexit.us, %polly.loop_header477.preheader
  %polly.indvar_next425 = add nsw i64 %polly.indvar424, 1
  %polly.loop_cond426 = icmp slt i64 %polly.indvar424, 14
  %indvars.iv.next1140 = add i64 %indvars.iv1139, 80
  %indvars.iv.next1153 = add i64 %indvars.iv1152, -80
  %indvars.iv.next1158 = add i64 %indvars.iv1157, 80
  br i1 %polly.loop_cond426, label %polly.loop_header420, label %polly.loop_exit422

polly.loop_header477.preheader:                   ; preds = %polly.merge434.loopexit939.us1045, %polly.merge434.us, %polly.loop_header420.split
  %171 = sub nsw i64 %158, %161
  %172 = icmp sgt i64 %171, 0
  %173 = select i1 %172, i64 %171, i64 0
  %polly.loop_guard487 = icmp slt i64 %173, 80
  br i1 %polly.loop_guard487, label %polly.loop_header477.us, label %polly.loop_exit479

polly.loop_header477.us:                          ; preds = %polly.loop_header477.preheader, %polly.loop_exit486.loopexit.us
  %polly.indvar480.us = phi i64 [ %polly.indvar_next481.us, %polly.loop_exit486.loopexit.us ], [ 0, %polly.loop_header477.preheader ]
  %174 = add nuw nsw i64 %polly.indvar480.us, %147
  %polly.access.mul.Packed_MemRef_call1307499.us = mul nuw nsw i64 %polly.indvar480.us, 1200
  %175 = shl i64 %174, 3
  br label %polly.loop_header484.us

polly.loop_header484.us:                          ; preds = %polly.loop_header477.us, %polly.loop_exit494.us
  %indvars.iv1159 = phi i64 [ %159, %polly.loop_header477.us ], [ %indvars.iv.next1160, %polly.loop_exit494.us ]
  %polly.indvar488.us = phi i64 [ %173, %polly.loop_header477.us ], [ %polly.indvar_next489.us, %polly.loop_exit494.us ]
  %smin1161 = call i64 @llvm.smin.i64(i64 %indvars.iv1159, i64 49)
  %176 = add i64 %polly.indvar488.us, %161
  %177 = add i64 %176, %157
  %polly.loop_guard495.us1238 = icmp sgt i64 %177, -1
  br i1 %polly.loop_guard495.us1238, label %polly.loop_header492.preheader.us, label %polly.loop_exit494.us

polly.loop_header492.us:                          ; preds = %polly.loop_header492.preheader.us, %polly.loop_header492.us
  %polly.indvar496.us = phi i64 [ %polly.indvar_next497.us, %polly.loop_header492.us ], [ 0, %polly.loop_header492.preheader.us ]
  %178 = add nuw nsw i64 %polly.indvar496.us, %158
  %polly.access.add.Packed_MemRef_call1307500.us = add nuw nsw i64 %polly.indvar496.us, %polly.access.mul.Packed_MemRef_call1307499.us
  %polly.access.Packed_MemRef_call1307501.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307500.us
  %_p_scalar_502.us = load double, double* %polly.access.Packed_MemRef_call1307501.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_505.us, %_p_scalar_502.us
  %179 = mul nuw nsw i64 %178, 8000
  %180 = add nuw nsw i64 %179, %175
  %scevgep506.us = getelementptr i8, i8* %call2, i64 %180
  %scevgep506507.us = bitcast i8* %scevgep506.us to double*
  %_p_scalar_508.us = load double, double* %scevgep506507.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_512.us, %_p_scalar_508.us
  %181 = shl i64 %178, 3
  %182 = add i64 %181, %185
  %scevgep513.us = getelementptr i8, i8* %call, i64 %182
  %scevgep513514.us = bitcast i8* %scevgep513.us to double*
  %_p_scalar_515.us = load double, double* %scevgep513514.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_515.us
  store double %p_add42.i79.us, double* %scevgep513514.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next497.us = add nuw nsw i64 %polly.indvar496.us, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar496.us, %smin1161
  br i1 %exitcond1162.not, label %polly.loop_exit494.us, label %polly.loop_header492.us

polly.loop_exit494.us:                            ; preds = %polly.loop_header492.us, %polly.loop_header484.us
  %polly.indvar_next489.us = add nuw nsw i64 %polly.indvar488.us, 1
  %polly.loop_cond490.us = icmp ult i64 %polly.indvar488.us, 79
  %indvars.iv.next1160 = add i64 %indvars.iv1159, 1
  br i1 %polly.loop_cond490.us, label %polly.loop_header484.us, label %polly.loop_exit486.loopexit.us

polly.loop_header492.preheader.us:                ; preds = %polly.loop_header484.us
  %183 = mul i64 %176, 8000
  %184 = add i64 %183, %175
  %scevgep503.us = getelementptr i8, i8* %call2, i64 %184
  %scevgep503504.us = bitcast i8* %scevgep503.us to double*
  %_p_scalar_505.us = load double, double* %scevgep503504.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1307510.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1307499.us, %177
  %polly.access.Packed_MemRef_call1307511.us = getelementptr double, double* %Packed_MemRef_call1307, i64 %polly.access.add.Packed_MemRef_call1307510.us
  %_p_scalar_512.us = load double, double* %polly.access.Packed_MemRef_call1307511.us, align 8
  %185 = mul i64 %176, 9600
  br label %polly.loop_header492.us

polly.loop_exit486.loopexit.us:                   ; preds = %polly.loop_exit494.us
  %polly.indvar_next481.us = add nuw nsw i64 %polly.indvar480.us, 1
  %exitcond1164.not = icmp eq i64 %polly.indvar_next481.us, %146
  br i1 %exitcond1164.not, label %polly.loop_exit479, label %polly.loop_header477.us

polly.start518:                                   ; preds = %init_array.exit
  %malloccall520 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header604

polly.exiting519:                                 ; preds = %polly.loop_exit628
  tail call void @free(i8* %malloccall520)
  br label %kernel_syr2k.exit

polly.loop_header604:                             ; preds = %polly.loop_exit612, %polly.start518
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit612 ], [ 0, %polly.start518 ]
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_exit612 ], [ 1, %polly.start518 ]
  %186 = add i64 %indvar, 1
  %187 = mul nuw nsw i64 %polly.indvar607, 9600
  %scevgep616 = getelementptr i8, i8* %call, i64 %187
  %min.iters.check1328 = icmp ult i64 %186, 4
  br i1 %min.iters.check1328, label %polly.loop_header610.preheader, label %vector.ph1329

vector.ph1329:                                    ; preds = %polly.loop_header604
  %n.vec1331 = and i64 %186, -4
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.body1327, %vector.ph1329
  %index1332 = phi i64 [ 0, %vector.ph1329 ], [ %index.next1333, %vector.body1327 ]
  %188 = shl nuw nsw i64 %index1332, 3
  %189 = getelementptr i8, i8* %scevgep616, i64 %188
  %190 = bitcast i8* %189 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %190, align 8, !alias.scope !89, !noalias !91
  %191 = fmul fast <4 x double> %wide.load1336, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %192 = bitcast i8* %189 to <4 x double>*
  store <4 x double> %191, <4 x double>* %192, align 8, !alias.scope !89, !noalias !91
  %index.next1333 = add i64 %index1332, 4
  %193 = icmp eq i64 %index.next1333, %n.vec1331
  br i1 %193, label %middle.block1325, label %vector.body1327, !llvm.loop !95

middle.block1325:                                 ; preds = %vector.body1327
  %cmp.n1335 = icmp eq i64 %186, %n.vec1331
  br i1 %cmp.n1335, label %polly.loop_exit612, label %polly.loop_header610.preheader

polly.loop_header610.preheader:                   ; preds = %polly.loop_header604, %middle.block1325
  %polly.indvar613.ph = phi i64 [ 0, %polly.loop_header604 ], [ %n.vec1331, %middle.block1325 ]
  br label %polly.loop_header610

polly.loop_exit612:                               ; preds = %polly.loop_header610, %middle.block1325
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1202.not = icmp eq i64 %polly.indvar_next608, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1202.not, label %polly.loop_header620.preheader, label %polly.loop_header604

polly.loop_header620.preheader:                   ; preds = %polly.loop_exit612
  %Packed_MemRef_call1521 = bitcast i8* %malloccall520 to double*
  br label %polly.loop_header620

polly.loop_header610:                             ; preds = %polly.loop_header610.preheader, %polly.loop_header610
  %polly.indvar613 = phi i64 [ %polly.indvar_next614, %polly.loop_header610 ], [ %polly.indvar613.ph, %polly.loop_header610.preheader ]
  %194 = shl nuw nsw i64 %polly.indvar613, 3
  %scevgep617 = getelementptr i8, i8* %scevgep616, i64 %194
  %scevgep617618 = bitcast i8* %scevgep617 to double*
  %_p_scalar_619 = load double, double* %scevgep617618, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_619, 1.200000e+00
  store double %p_mul.i, double* %scevgep617618, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next614 = add nuw nsw i64 %polly.indvar613, 1
  %exitcond1201.not = icmp eq i64 %polly.indvar_next614, %polly.indvar607
  br i1 %exitcond1201.not, label %polly.loop_exit612, label %polly.loop_header610, !llvm.loop !96

polly.loop_header620:                             ; preds = %polly.loop_header620.preheader, %polly.loop_exit628
  %indvars.iv1177 = phi i64 [ 0, %polly.loop_header620.preheader ], [ %indvars.iv.next1178, %polly.loop_exit628 ]
  %polly.indvar623 = phi i64 [ 0, %polly.loop_header620.preheader ], [ %polly.indvar_next624, %polly.loop_exit628 ]
  %smin1197 = call i64 @llvm.smin.i64(i64 %indvars.iv1177, i64 -936)
  %195 = add nsw i64 %smin1197, 1000
  %196 = shl nsw i64 %polly.indvar623, 6
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_exit636
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %indvars.iv.next1178 = add nsw i64 %indvars.iv1177, -64
  %exitcond1200.not = icmp eq i64 %polly.indvar_next624, 16
  br i1 %exitcond1200.not, label %polly.exiting519, label %polly.loop_header620

polly.loop_header626:                             ; preds = %polly.loop_exit636, %polly.loop_header620
  %indvars.iv1189 = phi i64 [ %indvars.iv.next1190, %polly.loop_exit636 ], [ 0, %polly.loop_header620 ]
  %indvars.iv1184 = phi i64 [ %indvars.iv.next1185, %polly.loop_exit636 ], [ 0, %polly.loop_header620 ]
  %indvars.iv1171 = phi i64 [ %indvars.iv.next1172, %polly.loop_exit636 ], [ 7, %polly.loop_header620 ]
  %indvars.iv1169 = phi i64 [ %indvars.iv.next1170, %polly.loop_exit636 ], [ 79, %polly.loop_header620 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit636 ], [ 0, %polly.loop_header620 ]
  %197 = lshr i64 %indvars.iv1171, 3
  %198 = mul nuw nsw i64 %197, 80
  %199 = mul nuw nsw i64 %polly.indvar629, 3
  %200 = add nuw nsw i64 %199, 7
  %pexp.p_div_q632 = lshr i64 %200, 3
  %201 = sub nsw i64 %polly.indvar629, %pexp.p_div_q632
  %polly.loop_guard637 = icmp slt i64 %201, 15
  br i1 %polly.loop_guard637, label %polly.loop_header634.preheader, label %polly.loop_exit636

polly.loop_header634.preheader:                   ; preds = %polly.loop_header626
  %202 = sub nsw i64 %indvars.iv1169, %198
  %203 = sub nsw i64 %indvars.iv1189, %198
  %204 = add i64 %indvars.iv1184, %198
  %205 = mul nuw nsw i64 %polly.indvar629, 5
  %206 = mul nsw i64 %polly.indvar629, -50
  %207 = mul nuw nsw i64 %polly.indvar629, 50
  br label %polly.loop_header634

polly.loop_exit636:                               ; preds = %polly.loop_exit693, %polly.loop_header626
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next1170 = add nuw nsw i64 %indvars.iv1169, 30
  %indvars.iv.next1172 = add nuw nsw i64 %indvars.iv1171, 3
  %indvars.iv.next1185 = add nsw i64 %indvars.iv1184, -30
  %indvars.iv.next1190 = add nuw nsw i64 %indvars.iv1189, 30
  %exitcond1199.not = icmp eq i64 %polly.indvar_next630, 24
  br i1 %exitcond1199.not, label %polly.loop_exit628, label %polly.loop_header626

polly.loop_header634:                             ; preds = %polly.loop_header634.preheader, %polly.loop_exit693
  %indvars.iv1191 = phi i64 [ %203, %polly.loop_header634.preheader ], [ %indvars.iv.next1192, %polly.loop_exit693 ]
  %indvars.iv1186 = phi i64 [ %204, %polly.loop_header634.preheader ], [ %indvars.iv.next1187, %polly.loop_exit693 ]
  %indvars.iv1173 = phi i64 [ %202, %polly.loop_header634.preheader ], [ %indvars.iv.next1174, %polly.loop_exit693 ]
  %polly.indvar638 = phi i64 [ %201, %polly.loop_header634.preheader ], [ %polly.indvar_next639, %polly.loop_exit693 ]
  %smax1188 = call i64 @llvm.smax.i64(i64 %indvars.iv1186, i64 0)
  %208 = add i64 %smax1188, %indvars.iv1191
  %smax1175 = call i64 @llvm.smax.i64(i64 %indvars.iv1173, i64 0)
  %209 = shl nsw i64 %polly.indvar638, 3
  %.not.not937 = icmp sgt i64 %209, %205
  %210 = mul nsw i64 %polly.indvar638, 80
  %211 = add nsw i64 %210, %206
  %212 = icmp sgt i64 %211, 50
  %213 = select i1 %212, i64 %211, i64 50
  %214 = add nsw i64 %211, 79
  %polly.loop_guard665.not = icmp sgt i64 %213, %214
  br i1 %.not.not937, label %polly.loop_header641.us, label %polly.loop_header634.split

polly.loop_header641.us:                          ; preds = %polly.loop_header634, %polly.merge648.us
  %polly.indvar644.us = phi i64 [ %polly.indvar_next645.us, %polly.merge648.us ], [ 0, %polly.loop_header634 ]
  %215 = add nuw nsw i64 %polly.indvar644.us, %196
  %polly.access.mul.Packed_MemRef_call1521.us = mul nuw nsw i64 %polly.indvar644.us, 1200
  br label %polly.loop_header651.us

polly.loop_header651.us:                          ; preds = %polly.loop_header641.us, %polly.loop_header651.us
  %polly.indvar654.us = phi i64 [ %polly.indvar_next655.us, %polly.loop_header651.us ], [ 0, %polly.loop_header641.us ]
  %216 = add nuw nsw i64 %polly.indvar654.us, %207
  %polly.access.mul.call1658.us = mul nuw nsw i64 %216, 1000
  %polly.access.add.call1659.us = add nuw nsw i64 %polly.access.mul.call1658.us, %215
  %polly.access.call1660.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1659.us
  %polly.access.call1660.load.us = load double, double* %polly.access.call1660.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1521.us = add nuw nsw i64 %polly.indvar654.us, %polly.access.mul.Packed_MemRef_call1521.us
  %polly.access.Packed_MemRef_call1521.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521.us
  store double %polly.access.call1660.load.us, double* %polly.access.Packed_MemRef_call1521.us, align 8
  %polly.indvar_next655.us = add nuw nsw i64 %polly.indvar654.us, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar_next655.us, 50
  br i1 %exitcond1181.not, label %polly.loop_exit653.us, label %polly.loop_header651.us

polly.loop_exit653.us:                            ; preds = %polly.loop_header651.us
  br i1 %polly.loop_guard665.not, label %polly.merge648.us, label %polly.loop_header662.us

polly.loop_header662.us:                          ; preds = %polly.loop_exit653.us, %polly.loop_header662.us
  %polly.indvar666.us = phi i64 [ %polly.indvar_next667.us, %polly.loop_header662.us ], [ %213, %polly.loop_exit653.us ]
  %217 = add nuw nsw i64 %polly.indvar666.us, %207
  %polly.access.mul.call1670.us = mul nsw i64 %217, 1000
  %polly.access.add.call1671.us = add nuw nsw i64 %polly.access.mul.call1670.us, %215
  %polly.access.call1672.us = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1671.us
  %polly.access.call1672.load.us = load double, double* %polly.access.call1672.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1521674.us = add nuw nsw i64 %polly.indvar666.us, %polly.access.mul.Packed_MemRef_call1521.us
  %polly.access.Packed_MemRef_call1521675.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521674.us
  store double %polly.access.call1672.load.us, double* %polly.access.Packed_MemRef_call1521675.us, align 8
  %polly.indvar_next667.us = add nuw nsw i64 %polly.indvar666.us, 1
  %polly.loop_cond668.not.not.us = icmp slt i64 %polly.indvar666.us, %214
  br i1 %polly.loop_cond668.not.not.us, label %polly.loop_header662.us, label %polly.merge648.us

polly.merge648.us:                                ; preds = %polly.loop_header662.us, %polly.loop_exit653.us
  %polly.indvar_next645.us = add nuw nsw i64 %polly.indvar644.us, 1
  %exitcond1183.not = icmp eq i64 %polly.indvar_next645.us, %195
  br i1 %exitcond1183.not, label %polly.loop_header691.preheader, label %polly.loop_header641.us

polly.loop_header634.split:                       ; preds = %polly.loop_header634
  %polly.loop_guard680 = icmp sgt i64 %211, -80
  br i1 %polly.loop_guard680, label %polly.loop_header641.us1046, label %polly.loop_header691.preheader

polly.loop_header641.us1046:                      ; preds = %polly.loop_header634.split, %polly.merge648.loopexit940.us1092
  %polly.indvar644.us1047 = phi i64 [ %polly.indvar_next645.us1084, %polly.merge648.loopexit940.us1092 ], [ 0, %polly.loop_header634.split ]
  %218 = add nuw nsw i64 %polly.indvar644.us1047, %196
  %polly.access.mul.Packed_MemRef_call1521688.us1091 = mul nuw nsw i64 %polly.indvar644.us1047, 1200
  br label %polly.loop_header677.us1049

polly.loop_header677.us1049:                      ; preds = %polly.loop_header641.us1046, %polly.loop_header677.us1049
  %polly.indvar681.us1050 = phi i64 [ %polly.indvar_next682.us1057, %polly.loop_header677.us1049 ], [ 0, %polly.loop_header641.us1046 ]
  %219 = add nuw nsw i64 %polly.indvar681.us1050, %207
  %polly.access.mul.call1685.us1051 = mul nuw nsw i64 %219, 1000
  %polly.access.add.call1686.us1052 = add nuw nsw i64 %218, %polly.access.mul.call1685.us1051
  %polly.access.call1687.us1053 = getelementptr double, double* %polly.access.cast.call1734, i64 %polly.access.add.call1686.us1052
  %polly.access.call1687.load.us1054 = load double, double* %polly.access.call1687.us1053, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1521689.us1055 = add nuw nsw i64 %polly.indvar681.us1050, %polly.access.mul.Packed_MemRef_call1521688.us1091
  %polly.access.Packed_MemRef_call1521690.us1056 = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521689.us1055
  store double %polly.access.call1687.load.us1054, double* %polly.access.Packed_MemRef_call1521690.us1056, align 8
  %polly.indvar_next682.us1057 = add nuw nsw i64 %polly.indvar681.us1050, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar681.us1050, %smax1175
  br i1 %exitcond1176.not, label %polly.merge648.loopexit940.us1092, label %polly.loop_header677.us1049

polly.merge648.loopexit940.us1092:                ; preds = %polly.loop_header677.us1049
  %polly.indvar_next645.us1084 = add nuw nsw i64 %polly.indvar644.us1047, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar_next645.us1084, %195
  br i1 %exitcond1180.not, label %polly.loop_header691.preheader, label %polly.loop_header641.us1046

polly.loop_exit693:                               ; preds = %polly.loop_exit700.loopexit.us, %polly.loop_header691.preheader
  %polly.indvar_next639 = add nsw i64 %polly.indvar638, 1
  %polly.loop_cond640 = icmp slt i64 %polly.indvar638, 14
  %indvars.iv.next1174 = add i64 %indvars.iv1173, 80
  %indvars.iv.next1187 = add i64 %indvars.iv1186, -80
  %indvars.iv.next1192 = add i64 %indvars.iv1191, 80
  br i1 %polly.loop_cond640, label %polly.loop_header634, label %polly.loop_exit636

polly.loop_header691.preheader:                   ; preds = %polly.merge648.loopexit940.us1092, %polly.merge648.us, %polly.loop_header634.split
  %220 = sub nsw i64 %207, %210
  %221 = icmp sgt i64 %220, 0
  %222 = select i1 %221, i64 %220, i64 0
  %polly.loop_guard701 = icmp slt i64 %222, 80
  br i1 %polly.loop_guard701, label %polly.loop_header691.us, label %polly.loop_exit693

polly.loop_header691.us:                          ; preds = %polly.loop_header691.preheader, %polly.loop_exit700.loopexit.us
  %polly.indvar694.us = phi i64 [ %polly.indvar_next695.us, %polly.loop_exit700.loopexit.us ], [ 0, %polly.loop_header691.preheader ]
  %223 = add nuw nsw i64 %polly.indvar694.us, %196
  %polly.access.mul.Packed_MemRef_call1521713.us = mul nuw nsw i64 %polly.indvar694.us, 1200
  %224 = shl i64 %223, 3
  br label %polly.loop_header698.us

polly.loop_header698.us:                          ; preds = %polly.loop_header691.us, %polly.loop_exit708.us
  %indvars.iv1193 = phi i64 [ %208, %polly.loop_header691.us ], [ %indvars.iv.next1194, %polly.loop_exit708.us ]
  %polly.indvar702.us = phi i64 [ %222, %polly.loop_header691.us ], [ %polly.indvar_next703.us, %polly.loop_exit708.us ]
  %smin1195 = call i64 @llvm.smin.i64(i64 %indvars.iv1193, i64 49)
  %225 = add i64 %polly.indvar702.us, %210
  %226 = add i64 %225, %206
  %polly.loop_guard709.us1239 = icmp sgt i64 %226, -1
  br i1 %polly.loop_guard709.us1239, label %polly.loop_header706.preheader.us, label %polly.loop_exit708.us

polly.loop_header706.us:                          ; preds = %polly.loop_header706.preheader.us, %polly.loop_header706.us
  %polly.indvar710.us = phi i64 [ %polly.indvar_next711.us, %polly.loop_header706.us ], [ 0, %polly.loop_header706.preheader.us ]
  %227 = add nuw nsw i64 %polly.indvar710.us, %207
  %polly.access.add.Packed_MemRef_call1521714.us = add nuw nsw i64 %polly.indvar710.us, %polly.access.mul.Packed_MemRef_call1521713.us
  %polly.access.Packed_MemRef_call1521715.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521714.us
  %_p_scalar_716.us = load double, double* %polly.access.Packed_MemRef_call1521715.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_719.us, %_p_scalar_716.us
  %228 = mul nuw nsw i64 %227, 8000
  %229 = add nuw nsw i64 %228, %224
  %scevgep720.us = getelementptr i8, i8* %call2, i64 %229
  %scevgep720721.us = bitcast i8* %scevgep720.us to double*
  %_p_scalar_722.us = load double, double* %scevgep720721.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_726.us, %_p_scalar_722.us
  %230 = shl i64 %227, 3
  %231 = add i64 %230, %234
  %scevgep727.us = getelementptr i8, i8* %call, i64 %231
  %scevgep727728.us = bitcast i8* %scevgep727.us to double*
  %_p_scalar_729.us = load double, double* %scevgep727728.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_729.us
  store double %p_add42.i.us, double* %scevgep727728.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next711.us = add nuw nsw i64 %polly.indvar710.us, 1
  %exitcond1196.not = icmp eq i64 %polly.indvar710.us, %smin1195
  br i1 %exitcond1196.not, label %polly.loop_exit708.us, label %polly.loop_header706.us

polly.loop_exit708.us:                            ; preds = %polly.loop_header706.us, %polly.loop_header698.us
  %polly.indvar_next703.us = add nuw nsw i64 %polly.indvar702.us, 1
  %polly.loop_cond704.us = icmp ult i64 %polly.indvar702.us, 79
  %indvars.iv.next1194 = add i64 %indvars.iv1193, 1
  br i1 %polly.loop_cond704.us, label %polly.loop_header698.us, label %polly.loop_exit700.loopexit.us

polly.loop_header706.preheader.us:                ; preds = %polly.loop_header698.us
  %232 = mul i64 %225, 8000
  %233 = add i64 %232, %224
  %scevgep717.us = getelementptr i8, i8* %call2, i64 %233
  %scevgep717718.us = bitcast i8* %scevgep717.us to double*
  %_p_scalar_719.us = load double, double* %scevgep717718.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1521724.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1521713.us, %226
  %polly.access.Packed_MemRef_call1521725.us = getelementptr double, double* %Packed_MemRef_call1521, i64 %polly.access.add.Packed_MemRef_call1521724.us
  %_p_scalar_726.us = load double, double* %polly.access.Packed_MemRef_call1521725.us, align 8
  %234 = mul i64 %225, 9600
  br label %polly.loop_header706.us

polly.loop_exit700.loopexit.us:                   ; preds = %polly.loop_exit708.us
  %polly.indvar_next695.us = add nuw nsw i64 %polly.indvar694.us, 1
  %exitcond1198.not = icmp eq i64 %polly.indvar_next695.us, %195
  br i1 %exitcond1198.not, label %polly.loop_exit693, label %polly.loop_header691.us

polly.loop_header856:                             ; preds = %entry, %polly.loop_exit864
  %indvars.iv1227 = phi i64 [ %indvars.iv.next1228, %polly.loop_exit864 ], [ 0, %entry ]
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %entry ]
  %smin1229 = call i64 @llvm.smin.i64(i64 %indvars.iv1227, i64 -1168)
  %235 = shl nsw i64 %polly.indvar859, 5
  %236 = add nsw i64 %smin1229, 1199
  br label %polly.loop_header862

polly.loop_exit864:                               ; preds = %polly.loop_exit870
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %indvars.iv.next1228 = add nsw i64 %indvars.iv1227, -32
  %exitcond1232.not = icmp eq i64 %polly.indvar_next860, 38
  br i1 %exitcond1232.not, label %polly.loop_header883, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_exit870, %polly.loop_header856
  %indvars.iv1223 = phi i64 [ %indvars.iv.next1224, %polly.loop_exit870 ], [ 0, %polly.loop_header856 ]
  %polly.indvar865 = phi i64 [ %polly.indvar_next866, %polly.loop_exit870 ], [ 0, %polly.loop_header856 ]
  %237 = mul nsw i64 %polly.indvar865, -32
  %smin = call i64 @llvm.smin.i64(i64 %237, i64 -1168)
  %238 = add nsw i64 %smin, 1200
  %smin1225 = call i64 @llvm.smin.i64(i64 %indvars.iv1223, i64 -1168)
  %239 = shl nsw i64 %polly.indvar865, 5
  %240 = add nsw i64 %smin1225, 1199
  br label %polly.loop_header868

polly.loop_exit870:                               ; preds = %polly.loop_exit876
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %indvars.iv.next1224 = add nsw i64 %indvars.iv1223, -32
  %exitcond1231.not = icmp eq i64 %polly.indvar_next866, 38
  br i1 %exitcond1231.not, label %polly.loop_exit864, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_exit876, %polly.loop_header862
  %polly.indvar871 = phi i64 [ 0, %polly.loop_header862 ], [ %polly.indvar_next872, %polly.loop_exit876 ]
  %241 = add nuw nsw i64 %polly.indvar871, %235
  %242 = trunc i64 %241 to i32
  %243 = mul nuw nsw i64 %241, 9600
  %min.iters.check = icmp eq i64 %238, 0
  br i1 %min.iters.check, label %polly.loop_header874, label %vector.ph1267

vector.ph1267:                                    ; preds = %polly.loop_header868
  %broadcast.splatinsert1274 = insertelement <4 x i64> poison, i64 %239, i32 0
  %broadcast.splat1275 = shufflevector <4 x i64> %broadcast.splatinsert1274, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1276 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1277 = shufflevector <4 x i32> %broadcast.splatinsert1276, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %vector.ph1267
  %index1268 = phi i64 [ 0, %vector.ph1267 ], [ %index.next1269, %vector.body1266 ]
  %vec.ind1272 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1267 ], [ %vec.ind.next1273, %vector.body1266 ]
  %244 = add nuw nsw <4 x i64> %vec.ind1272, %broadcast.splat1275
  %245 = trunc <4 x i64> %244 to <4 x i32>
  %246 = mul <4 x i32> %broadcast.splat1277, %245
  %247 = add <4 x i32> %246, <i32 3, i32 3, i32 3, i32 3>
  %248 = urem <4 x i32> %247, <i32 1200, i32 1200, i32 1200, i32 1200>
  %249 = sitofp <4 x i32> %248 to <4 x double>
  %250 = fmul fast <4 x double> %249, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %251 = extractelement <4 x i64> %244, i32 0
  %252 = shl i64 %251, 3
  %253 = add nuw nsw i64 %252, %243
  %254 = getelementptr i8, i8* %call, i64 %253
  %255 = bitcast i8* %254 to <4 x double>*
  store <4 x double> %250, <4 x double>* %255, align 8, !alias.scope !99, !noalias !101
  %index.next1269 = add i64 %index1268, 4
  %vec.ind.next1273 = add <4 x i64> %vec.ind1272, <i64 4, i64 4, i64 4, i64 4>
  %256 = icmp eq i64 %index.next1269, %238
  br i1 %256, label %polly.loop_exit876, label %vector.body1266, !llvm.loop !104

polly.loop_exit876:                               ; preds = %vector.body1266, %polly.loop_header874
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1230.not = icmp eq i64 %polly.indvar871, %236
  br i1 %exitcond1230.not, label %polly.loop_exit870, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_header868, %polly.loop_header874
  %polly.indvar877 = phi i64 [ %polly.indvar_next878, %polly.loop_header874 ], [ 0, %polly.loop_header868 ]
  %257 = add nuw nsw i64 %polly.indvar877, %239
  %258 = trunc i64 %257 to i32
  %259 = mul i32 %258, %242
  %260 = add i32 %259, 3
  %261 = urem i32 %260, 1200
  %p_conv31.i = sitofp i32 %261 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %262 = shl i64 %257, 3
  %263 = add nuw nsw i64 %262, %243
  %scevgep880 = getelementptr i8, i8* %call, i64 %263
  %scevgep880881 = bitcast i8* %scevgep880 to double*
  store double %p_div33.i, double* %scevgep880881, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %exitcond1226.not = icmp eq i64 %polly.indvar877, %240
  br i1 %exitcond1226.not, label %polly.loop_exit876, label %polly.loop_header874, !llvm.loop !105

polly.loop_header883:                             ; preds = %polly.loop_exit864, %polly.loop_exit891
  %indvars.iv1217 = phi i64 [ %indvars.iv.next1218, %polly.loop_exit891 ], [ 0, %polly.loop_exit864 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_exit864 ]
  %smin1219 = call i64 @llvm.smin.i64(i64 %indvars.iv1217, i64 -1168)
  %264 = shl nsw i64 %polly.indvar886, 5
  %265 = add nsw i64 %smin1219, 1199
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next1218 = add nsw i64 %indvars.iv1217, -32
  %exitcond1222.not = icmp eq i64 %polly.indvar_next887, 38
  br i1 %exitcond1222.not, label %polly.loop_header909, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %indvars.iv1213 = phi i64 [ %indvars.iv.next1214, %polly.loop_exit897 ], [ 0, %polly.loop_header883 ]
  %polly.indvar892 = phi i64 [ %polly.indvar_next893, %polly.loop_exit897 ], [ 0, %polly.loop_header883 ]
  %266 = mul nsw i64 %polly.indvar892, -32
  %smin1281 = call i64 @llvm.smin.i64(i64 %266, i64 -968)
  %267 = add nsw i64 %smin1281, 1000
  %smin1215 = call i64 @llvm.smin.i64(i64 %indvars.iv1213, i64 -968)
  %268 = shl nsw i64 %polly.indvar892, 5
  %269 = add nsw i64 %smin1215, 999
  br label %polly.loop_header895

polly.loop_exit897:                               ; preds = %polly.loop_exit903
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %indvars.iv.next1214 = add nsw i64 %indvars.iv1213, -32
  %exitcond1221.not = icmp eq i64 %polly.indvar_next893, 32
  br i1 %exitcond1221.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_exit903, %polly.loop_header889
  %polly.indvar898 = phi i64 [ 0, %polly.loop_header889 ], [ %polly.indvar_next899, %polly.loop_exit903 ]
  %270 = add nuw nsw i64 %polly.indvar898, %264
  %271 = trunc i64 %270 to i32
  %272 = mul nuw nsw i64 %270, 8000
  %min.iters.check1282 = icmp eq i64 %267, 0
  br i1 %min.iters.check1282, label %polly.loop_header901, label %vector.ph1283

vector.ph1283:                                    ; preds = %polly.loop_header895
  %broadcast.splatinsert1292 = insertelement <4 x i64> poison, i64 %268, i32 0
  %broadcast.splat1293 = shufflevector <4 x i64> %broadcast.splatinsert1292, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1294 = insertelement <4 x i32> poison, i32 %271, i32 0
  %broadcast.splat1295 = shufflevector <4 x i32> %broadcast.splatinsert1294, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %vector.ph1283
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1287, %vector.body1280 ]
  %vec.ind1290 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1283 ], [ %vec.ind.next1291, %vector.body1280 ]
  %273 = add nuw nsw <4 x i64> %vec.ind1290, %broadcast.splat1293
  %274 = trunc <4 x i64> %273 to <4 x i32>
  %275 = mul <4 x i32> %broadcast.splat1295, %274
  %276 = add <4 x i32> %275, <i32 2, i32 2, i32 2, i32 2>
  %277 = urem <4 x i32> %276, <i32 1000, i32 1000, i32 1000, i32 1000>
  %278 = sitofp <4 x i32> %277 to <4 x double>
  %279 = fmul fast <4 x double> %278, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %280 = extractelement <4 x i64> %273, i32 0
  %281 = shl i64 %280, 3
  %282 = add nuw nsw i64 %281, %272
  %283 = getelementptr i8, i8* %call2, i64 %282
  %284 = bitcast i8* %283 to <4 x double>*
  store <4 x double> %279, <4 x double>* %284, align 8, !alias.scope !103, !noalias !106
  %index.next1287 = add i64 %index1286, 4
  %vec.ind.next1291 = add <4 x i64> %vec.ind1290, <i64 4, i64 4, i64 4, i64 4>
  %285 = icmp eq i64 %index.next1287, %267
  br i1 %285, label %polly.loop_exit903, label %vector.body1280, !llvm.loop !107

polly.loop_exit903:                               ; preds = %vector.body1280, %polly.loop_header901
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond1220.not = icmp eq i64 %polly.indvar898, %265
  br i1 %exitcond1220.not, label %polly.loop_exit897, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_header895, %polly.loop_header901
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_header901 ], [ 0, %polly.loop_header895 ]
  %286 = add nuw nsw i64 %polly.indvar904, %268
  %287 = trunc i64 %286 to i32
  %288 = mul i32 %287, %271
  %289 = add i32 %288, 2
  %290 = urem i32 %289, 1000
  %p_conv10.i = sitofp i32 %290 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %291 = shl i64 %286, 3
  %292 = add nuw nsw i64 %291, %272
  %scevgep907 = getelementptr i8, i8* %call2, i64 %292
  %scevgep907908 = bitcast i8* %scevgep907 to double*
  store double %p_div12.i, double* %scevgep907908, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %exitcond1216.not = icmp eq i64 %polly.indvar904, %269
  br i1 %exitcond1216.not, label %polly.loop_exit903, label %polly.loop_header901, !llvm.loop !108

polly.loop_header909:                             ; preds = %polly.loop_exit891, %polly.loop_exit917
  %indvars.iv1207 = phi i64 [ %indvars.iv.next1208, %polly.loop_exit917 ], [ 0, %polly.loop_exit891 ]
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %polly.loop_exit891 ]
  %smin1209 = call i64 @llvm.smin.i64(i64 %indvars.iv1207, i64 -1168)
  %293 = shl nsw i64 %polly.indvar912, 5
  %294 = add nsw i64 %smin1209, 1199
  br label %polly.loop_header915

polly.loop_exit917:                               ; preds = %polly.loop_exit923
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %indvars.iv.next1208 = add nsw i64 %indvars.iv1207, -32
  %exitcond1212.not = icmp eq i64 %polly.indvar_next913, 38
  br i1 %exitcond1212.not, label %init_array.exit, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_exit923, %polly.loop_header909
  %indvars.iv1203 = phi i64 [ %indvars.iv.next1204, %polly.loop_exit923 ], [ 0, %polly.loop_header909 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_header909 ]
  %295 = mul nsw i64 %polly.indvar918, -32
  %smin1299 = call i64 @llvm.smin.i64(i64 %295, i64 -968)
  %296 = add nsw i64 %smin1299, 1000
  %smin1205 = call i64 @llvm.smin.i64(i64 %indvars.iv1203, i64 -968)
  %297 = shl nsw i64 %polly.indvar918, 5
  %298 = add nsw i64 %smin1205, 999
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1204 = add nsw i64 %indvars.iv1203, -32
  %exitcond1211.not = icmp eq i64 %polly.indvar_next919, 32
  br i1 %exitcond1211.not, label %polly.loop_exit917, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %polly.indvar924 = phi i64 [ 0, %polly.loop_header915 ], [ %polly.indvar_next925, %polly.loop_exit929 ]
  %299 = add nuw nsw i64 %polly.indvar924, %293
  %300 = trunc i64 %299 to i32
  %301 = mul nuw nsw i64 %299, 8000
  %min.iters.check1300 = icmp eq i64 %296, 0
  br i1 %min.iters.check1300, label %polly.loop_header927, label %vector.ph1301

vector.ph1301:                                    ; preds = %polly.loop_header921
  %broadcast.splatinsert1310 = insertelement <4 x i64> poison, i64 %297, i32 0
  %broadcast.splat1311 = shufflevector <4 x i64> %broadcast.splatinsert1310, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1312 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1313 = shufflevector <4 x i32> %broadcast.splatinsert1312, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %vector.ph1301
  %index1304 = phi i64 [ 0, %vector.ph1301 ], [ %index.next1305, %vector.body1298 ]
  %vec.ind1308 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1301 ], [ %vec.ind.next1309, %vector.body1298 ]
  %302 = add nuw nsw <4 x i64> %vec.ind1308, %broadcast.splat1311
  %303 = trunc <4 x i64> %302 to <4 x i32>
  %304 = mul <4 x i32> %broadcast.splat1313, %303
  %305 = add <4 x i32> %304, <i32 1, i32 1, i32 1, i32 1>
  %306 = urem <4 x i32> %305, <i32 1200, i32 1200, i32 1200, i32 1200>
  %307 = sitofp <4 x i32> %306 to <4 x double>
  %308 = fmul fast <4 x double> %307, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %309 = extractelement <4 x i64> %302, i32 0
  %310 = shl i64 %309, 3
  %311 = add nuw nsw i64 %310, %301
  %312 = getelementptr i8, i8* %call1, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %308, <4 x double>* %313, align 8, !alias.scope !102, !noalias !109
  %index.next1305 = add i64 %index1304, 4
  %vec.ind.next1309 = add <4 x i64> %vec.ind1308, <i64 4, i64 4, i64 4, i64 4>
  %314 = icmp eq i64 %index.next1305, %296
  br i1 %314, label %polly.loop_exit929, label %vector.body1298, !llvm.loop !110

polly.loop_exit929:                               ; preds = %vector.body1298, %polly.loop_header927
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %exitcond1210.not = icmp eq i64 %polly.indvar924, %294
  br i1 %exitcond1210.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_header921, %polly.loop_header927
  %polly.indvar930 = phi i64 [ %polly.indvar_next931, %polly.loop_header927 ], [ 0, %polly.loop_header921 ]
  %315 = add nuw nsw i64 %polly.indvar930, %297
  %316 = trunc i64 %315 to i32
  %317 = mul i32 %316, %300
  %318 = add i32 %317, 1
  %319 = urem i32 %318, 1200
  %p_conv.i = sitofp i32 %319 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %320 = shl i64 %315, 3
  %321 = add nuw nsw i64 %320, %301
  %scevgep934 = getelementptr i8, i8* %call1, i64 %321
  %scevgep934935 = bitcast i8* %scevgep934 to double*
  store double %p_div.i, double* %scevgep934935, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1206.not = icmp eq i64 %polly.indvar930, %298
  br i1 %exitcond1206.not, label %polly.loop_exit929, label %polly.loop_header927, !llvm.loop !111
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
!25 = !{!"llvm.loop.tile.size", i32 50}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 64}
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
!50 = !{!"llvm.loop.tile.size", i32 80}
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
