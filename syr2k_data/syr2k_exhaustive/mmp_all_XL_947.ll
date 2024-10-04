; ModuleID = 'syr2k_exhaustive/mmp_all_XL_947.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_947.c"
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
  %call890 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1742 = bitcast i8* %call1 to double*
  %polly.access.call1751 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2752 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1751, %call2
  %polly.access.call2771 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2771, %call1
  %2 = or i1 %0, %1
  %polly.access.call791 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call791, %call2
  %4 = icmp ule i8* %polly.access.call2771, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call791, %call1
  %8 = icmp ule i8* %polly.access.call1751, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header864, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1226 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1225 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1224 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1223 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1223, %scevgep1226
  %bound1 = icmp ult i8* %scevgep1225, %scevgep1224
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
  br i1 %exitcond18.not.i, label %vector.ph1230, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1230:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1237 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1238 = shufflevector <4 x i64> %broadcast.splatinsert1237, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %vector.ph1230
  %index1231 = phi i64 [ 0, %vector.ph1230 ], [ %index.next1232, %vector.body1229 ]
  %vec.ind1235 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1230 ], [ %vec.ind.next1236, %vector.body1229 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1235, %broadcast.splat1238
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv7.i, i64 %index1231
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1232 = add i64 %index1231, 4
  %vec.ind.next1236 = add <4 x i64> %vec.ind1235, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1232, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1229, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1229
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1230, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit925
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1292 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1292, label %for.body3.i46.preheader1441, label %vector.ph1293

vector.ph1293:                                    ; preds = %for.body3.i46.preheader
  %n.vec1295 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %vector.ph1293
  %index1296 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1297, %vector.body1291 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %index1296
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1297 = add i64 %index1296, 4
  %46 = icmp eq i64 %index.next1297, %n.vec1295
  br i1 %46, label %middle.block1289, label %vector.body1291, !llvm.loop !18

middle.block1289:                                 ; preds = %vector.body1291
  %cmp.n1299 = icmp eq i64 %indvars.iv21.i, %n.vec1295
  br i1 %cmp.n1299, label %for.inc6.i, label %for.body3.i46.preheader1441

for.body3.i46.preheader1441:                      ; preds = %for.body3.i46.preheader, %middle.block1289
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1295, %middle.block1289 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1441, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1441 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1289, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %41, label %polly.start306, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1339 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1339, label %for.body3.i60.preheader1439, label %vector.ph1340

vector.ph1340:                                    ; preds = %for.body3.i60.preheader
  %n.vec1342 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1338

vector.body1338:                                  ; preds = %vector.body1338, %vector.ph1340
  %index1343 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1344, %vector.body1338 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %index1343
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1347 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1347, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1344 = add i64 %index1343, 4
  %57 = icmp eq i64 %index.next1344, %n.vec1342
  br i1 %57, label %middle.block1336, label %vector.body1338, !llvm.loop !64

middle.block1336:                                 ; preds = %vector.body1338
  %cmp.n1346 = icmp eq i64 %indvars.iv21.i52, %n.vec1342
  br i1 %cmp.n1346, label %for.inc6.i63, label %for.body3.i60.preheader1439

for.body3.i60.preheader1439:                      ; preds = %for.body3.i60.preheader, %middle.block1336
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1342, %middle.block1336 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1439, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1439 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1336, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting307
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1389 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1389, label %for.body3.i99.preheader1437, label %vector.ph1390

vector.ph1390:                                    ; preds = %for.body3.i99.preheader
  %n.vec1392 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1388

vector.body1388:                                  ; preds = %vector.body1388, %vector.ph1390
  %index1393 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1394, %vector.body1388 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %index1393
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1397 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1397, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1394 = add i64 %index1393, 4
  %68 = icmp eq i64 %index.next1394, %n.vec1392
  br i1 %68, label %middle.block1386, label %vector.body1388, !llvm.loop !66

middle.block1386:                                 ; preds = %vector.body1388
  %cmp.n1396 = icmp eq i64 %indvars.iv21.i91, %n.vec1392
  br i1 %cmp.n1396, label %for.inc6.i102, label %for.body3.i99.preheader1437

for.body3.i99.preheader1437:                      ; preds = %for.body3.i99.preheader, %middle.block1386
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1392, %middle.block1386 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1437, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1437 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1386, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  %malloccall136 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1401 = phi i64 [ %indvar.next1402, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1401, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1403 = icmp ult i64 %88, 4
  br i1 %min.iters.check1403, label %polly.loop_header192.preheader, label %vector.ph1404

vector.ph1404:                                    ; preds = %polly.loop_header
  %n.vec1406 = and i64 %88, -4
  br label %vector.body1400

vector.body1400:                                  ; preds = %vector.body1400, %vector.ph1404
  %index1407 = phi i64 [ 0, %vector.ph1404 ], [ %index.next1408, %vector.body1400 ]
  %90 = shl nuw nsw i64 %index1407, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1411 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1411, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1408 = add i64 %index1407, 4
  %95 = icmp eq i64 %index.next1408, %n.vec1406
  br i1 %95, label %middle.block1398, label %vector.body1400, !llvm.loop !79

middle.block1398:                                 ; preds = %vector.body1400
  %cmp.n1410 = icmp eq i64 %88, %n.vec1406
  br i1 %cmp.n1410, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1398
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1406, %middle.block1398 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1398
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1402 = add i64 %indvar1401, 1
  br i1 %exitcond1115.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1114.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1114.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1090 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1091, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1090, i64 -872)
  %97 = add nsw i64 %smin1110, 1000
  %98 = shl nsw i64 %polly.indvar203, 7
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1091 = add nsw i64 %indvars.iv1090, -128
  %exitcond1113.not = icmp eq i64 %polly.indvar_next204, 8
  br i1 %exitcond1113.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %118, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = shl nuw nsw i64 %polly.indvar209, 3
  %100 = udiv i64 %polly.indvar209, 10
  %101 = mul nuw nsw i64 %100, 80
  %102 = sub nsw i64 %99, %101
  %103 = mul nsw i64 %polly.indvar209, -8
  %104 = add i64 %103, %101
  %105 = udiv i64 %polly.indvar209, 10
  %106 = mul nuw nsw i64 %105, 80
  %107 = sub nsw i64 %indvars.iv1098, %106
  %108 = add i64 %indvars.iv1102, %106
  %109 = shl nsw i64 %polly.indvar209, 3
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %110 = mul nsw i64 %polly.indvar209, -8
  %polly.access.mul.call1247.us = mul nsw i64 %polly.indvar209, 8000
  %111 = or i64 %109, 1
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %109, 2
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %112, 1000
  %113 = or i64 %109, 3
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %113, 1000
  %114 = or i64 %109, 4
  %polly.access.mul.call1247.us.4 = mul nuw nsw i64 %114, 1000
  %115 = or i64 %109, 5
  %polly.access.mul.call1247.us.5 = mul nuw nsw i64 %115, 1000
  %116 = or i64 %109, 6
  %polly.access.mul.call1247.us.6 = mul nuw nsw i64 %116, 1000
  %117 = or i64 %109, 7
  %polly.access.mul.call1247.us.7 = mul nuw nsw i64 %117, 1000
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %118 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next1099 = add nuw nsw i64 %indvars.iv1098, 8
  %indvars.iv.next1103 = add nsw i64 %indvars.iv1102, -8
  %exitcond1112.not = icmp eq i64 %118, 150
  br i1 %exitcond1112.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %119 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1092.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %120 = add nuw nsw i64 %polly.indvar221, %109
  %polly.access.mul.call2225 = mul nuw nsw i64 %120, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %119, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit265, %polly.loop_exit214
  %indvar1415 = phi i64 [ %indvar.next1416, %polly.loop_exit265 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit265 ], [ %108, %polly.loop_exit214 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit265 ], [ %107, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit265 ], [ %105, %polly.loop_exit214 ]
  %121 = mul nsw i64 %indvar1415, -80
  %122 = add i64 %102, %121
  %smax1417 = call i64 @llvm.smax.i64(i64 %122, i64 0)
  %123 = mul nuw nsw i64 %indvar1415, 80
  %124 = add i64 %104, %123
  %125 = add i64 %smax1417, %124
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1100, i64 0)
  %126 = add i64 %smax, %indvars.iv1104
  %127 = mul nuw nsw i64 %polly.indvar231, 10
  %.not.not = icmp ugt i64 %127, %polly.indvar209
  %128 = mul nuw nsw i64 %polly.indvar231, 80
  %129 = add nsw i64 %128, %110
  %130 = icmp sgt i64 %129, 0
  %131 = select i1 %130, i64 %129, i64 0
  %132 = add nsw i64 %129, 79
  %polly.loop_guard.not = icmp sgt i64 %131, %132
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit252.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit252.us ], [ 0, %polly.loop_header228 ]
  %133 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  %polly.access.add.call1248.us = add nuw nsw i64 %133, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1248.us.4 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.4
  %polly.access.call1249.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.4
  %polly.access.call1249.load.us.4 = load double, double* %polly.access.call1249.us.4, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1249.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1248.us.5 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.5
  %polly.access.call1249.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.5
  %polly.access.call1249.load.us.5 = load double, double* %polly.access.call1249.us.5, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1249.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1248.us.6 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.6
  %polly.access.call1249.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.6
  %polly.access.call1249.load.us.6 = load double, double* %polly.access.call1249.us.6, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1249.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1248.us.7 = add nuw nsw i64 %133, %polly.access.mul.call1247.us.7
  %polly.access.call1249.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.7
  %polly.access.call1249.load.us.7 = load double, double* %polly.access.call1249.us.7, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1249.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit252.us, label %polly.loop_header250.us

polly.loop_header250.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header250.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header250.us ], [ %131, %polly.loop_header234.us ]
  %134 = add nuw nsw i64 %polly.indvar253.us, %109
  %polly.access.mul.call1257.us = mul nsw i64 %134, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %133, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.not.not.us = icmp slt i64 %polly.indvar253.us, %132
  br i1 %polly.loop_cond255.not.not.us, label %polly.loop_header250.us, label %polly.loop_exit252.us

polly.loop_exit252.us:                            ; preds = %polly.loop_header250.us, %polly.loop_header234.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1097.not, label %polly.loop_header263.preheader, label %polly.loop_header234.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_exit265:                               ; preds = %polly.loop_exit272.loopexit.us, %polly.loop_header263.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 14
  %indvars.iv.next1101 = add i64 %indvars.iv1100, -80
  %indvars.iv.next1105 = add i64 %indvars.iv1104, 80
  %indvar.next1416 = add i64 %indvar1415, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit252
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit252 ], [ 0, %polly.loop_header228.split ]
  %135 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1260 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1094.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.loop_exit252, %polly.loop_exit252.us, %polly.loop_header228.split
  %136 = sub nsw i64 %109, %128
  %137 = icmp sgt i64 %136, 0
  %138 = select i1 %137, i64 %136, i64 0
  %polly.loop_guard273 = icmp slt i64 %138, 80
  br i1 %polly.loop_guard273, label %polly.loop_header263.us, label %polly.loop_exit265

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit272.loopexit.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.loopexit.us ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1285.us = mul nuw nsw i64 %polly.indvar266.us, 1200
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header263.us, %polly.loop_exit280.us
  %indvar1418 = phi i64 [ 0, %polly.loop_header263.us ], [ %indvar.next1419, %polly.loop_exit280.us ]
  %indvars.iv1106 = phi i64 [ %126, %polly.loop_header263.us ], [ %indvars.iv.next1107, %polly.loop_exit280.us ]
  %polly.indvar274.us = phi i64 [ %138, %polly.loop_header263.us ], [ %polly.indvar_next275.us, %polly.loop_exit280.us ]
  %139 = add i64 %125, %indvar1418
  %smin1420 = call i64 @llvm.smin.i64(i64 %139, i64 7)
  %140 = add nsw i64 %smin1420, 1
  %smin1108 = call i64 @llvm.smin.i64(i64 %indvars.iv1106, i64 7)
  %141 = add nsw i64 %polly.indvar274.us, %129
  %polly.loop_guard281.us1212 = icmp sgt i64 %141, -1
  br i1 %polly.loop_guard281.us1212, label %polly.loop_header278.preheader.us, label %polly.loop_exit280.us

polly.loop_header278.us:                          ; preds = %polly.loop_header278.us.preheader, %polly.loop_header278.us
  %polly.indvar282.us = phi i64 [ %polly.indvar_next283.us, %polly.loop_header278.us ], [ %polly.indvar282.us.ph, %polly.loop_header278.us.preheader ]
  %142 = add nuw nsw i64 %polly.indvar282.us, %109
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar282.us, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %polly.access.Packed_MemRef_call2295.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call2295.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_300.us, %_p_scalar_296.us
  %143 = shl i64 %142, 3
  %144 = add i64 %143, %146
  %scevgep301.us = getelementptr i8, i8* %call, i64 %144
  %scevgep301302.us = bitcast i8* %scevgep301.us to double*
  %_p_scalar_303.us = load double, double* %scevgep301302.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_303.us
  store double %p_add42.i118.us, double* %scevgep301302.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283.us = add nuw nsw i64 %polly.indvar282.us, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar282.us, %smin1108
  br i1 %exitcond1109.not, label %polly.loop_exit280.us, label %polly.loop_header278.us, !llvm.loop !84

polly.loop_exit280.us:                            ; preds = %polly.loop_header278.us, %middle.block1412, %polly.loop_header270.us
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %polly.loop_cond276.us = icmp ult i64 %polly.indvar274.us, 79
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 1
  %indvar.next1419 = add i64 %indvar1418, 1
  br i1 %polly.loop_cond276.us, label %polly.loop_header270.us, label %polly.loop_exit272.loopexit.us

polly.loop_header278.preheader.us:                ; preds = %polly.loop_header270.us
  %145 = add nuw nsw i64 %polly.indvar274.us, %128
  %polly.access.add.Packed_MemRef_call2290.us = add nsw i64 %141, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_300.us = load double, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %146 = mul i64 %145, 9600
  %min.iters.check1421 = icmp ult i64 %140, 4
  br i1 %min.iters.check1421, label %polly.loop_header278.us.preheader, label %vector.ph1422

vector.ph1422:                                    ; preds = %polly.loop_header278.preheader.us
  %n.vec1424 = and i64 %140, -4
  %broadcast.splatinsert1430 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1431 = shufflevector <4 x double> %broadcast.splatinsert1430, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1433 = insertelement <4 x double> poison, double %_p_scalar_300.us, i32 0
  %broadcast.splat1434 = shufflevector <4 x double> %broadcast.splatinsert1433, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1414

vector.body1414:                                  ; preds = %vector.body1414, %vector.ph1422
  %index1425 = phi i64 [ 0, %vector.ph1422 ], [ %index.next1426, %vector.body1414 ]
  %147 = add nuw nsw i64 %index1425, %109
  %148 = add nuw nsw i64 %index1425, %polly.access.mul.Packed_MemRef_call1285.us
  %149 = getelementptr double, double* %Packed_MemRef_call1, i64 %148
  %150 = bitcast double* %149 to <4 x double>*
  %wide.load1429 = load <4 x double>, <4 x double>* %150, align 8
  %151 = fmul fast <4 x double> %broadcast.splat1431, %wide.load1429
  %152 = getelementptr double, double* %Packed_MemRef_call2, i64 %148
  %153 = bitcast double* %152 to <4 x double>*
  %wide.load1432 = load <4 x double>, <4 x double>* %153, align 8
  %154 = fmul fast <4 x double> %broadcast.splat1434, %wide.load1432
  %155 = shl i64 %147, 3
  %156 = add i64 %155, %146
  %157 = getelementptr i8, i8* %call, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1435 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !72, !noalias !74
  %159 = fadd fast <4 x double> %154, %151
  %160 = fmul fast <4 x double> %159, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %161 = fadd fast <4 x double> %160, %wide.load1435
  %162 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !72, !noalias !74
  %index.next1426 = add i64 %index1425, 4
  %163 = icmp eq i64 %index.next1426, %n.vec1424
  br i1 %163, label %middle.block1412, label %vector.body1414, !llvm.loop !85

middle.block1412:                                 ; preds = %vector.body1414
  %cmp.n1428 = icmp eq i64 %140, %n.vec1424
  br i1 %cmp.n1428, label %polly.loop_exit280.us, label %polly.loop_header278.us.preheader

polly.loop_header278.us.preheader:                ; preds = %polly.loop_header278.preheader.us, %middle.block1412
  %polly.indvar282.us.ph = phi i64 [ 0, %polly.loop_header278.preheader.us ], [ %n.vec1424, %middle.block1412 ]
  br label %polly.loop_header278.us

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_exit280.us
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next267.us, %97
  br i1 %exitcond1111.not, label %polly.loop_exit265, label %polly.loop_header263.us

polly.loop_header250:                             ; preds = %polly.loop_header234, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %131, %polly.loop_header234 ]
  %164 = add nuw nsw i64 %polly.indvar253, %109
  %polly.access.mul.call1257 = mul nsw i64 %164, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %135, %polly.access.mul.call1257
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp slt i64 %polly.indvar253, %132
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_exit252

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  %malloccall310 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1351 = phi i64 [ %indvar.next1352, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %165 = add i64 %indvar1351, 1
  %166 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %166
  %min.iters.check1353 = icmp ult i64 %165, 4
  br i1 %min.iters.check1353, label %polly.loop_header400.preheader, label %vector.ph1354

vector.ph1354:                                    ; preds = %polly.loop_header394
  %n.vec1356 = and i64 %165, -4
  br label %vector.body1350

vector.body1350:                                  ; preds = %vector.body1350, %vector.ph1354
  %index1357 = phi i64 [ 0, %vector.ph1354 ], [ %index.next1358, %vector.body1350 ]
  %167 = shl nuw nsw i64 %index1357, 3
  %168 = getelementptr i8, i8* %scevgep406, i64 %167
  %169 = bitcast i8* %168 to <4 x double>*
  %wide.load1361 = load <4 x double>, <4 x double>* %169, align 8, !alias.scope !86, !noalias !88
  %170 = fmul fast <4 x double> %wide.load1361, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %171 = bitcast i8* %168 to <4 x double>*
  store <4 x double> %170, <4 x double>* %171, align 8, !alias.scope !86, !noalias !88
  %index.next1358 = add i64 %index1357, 4
  %172 = icmp eq i64 %index.next1358, %n.vec1356
  br i1 %172, label %middle.block1348, label %vector.body1350, !llvm.loop !93

middle.block1348:                                 ; preds = %vector.body1350
  %cmp.n1360 = icmp eq i64 %165, %n.vec1356
  br i1 %cmp.n1360, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1348
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1356, %middle.block1348 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1348
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar_next398, 1200
  %indvar.next1352 = add i64 %indvar1351, 1
  br i1 %exitcond1146.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %173 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %173
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1145.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1145.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !94

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %indvars.iv1119 = phi i64 [ 0, %polly.loop_header410.preheader ], [ %indvars.iv.next1120, %polly.loop_exit418 ]
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header410.preheader ], [ %polly.indvar_next414, %polly.loop_exit418 ]
  %smin1141 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -872)
  %174 = add nsw i64 %smin1141, 1000
  %175 = shl nsw i64 %polly.indvar413, 7
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit441
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -128
  %exitcond1144.not = icmp eq i64 %polly.indvar_next414, 8
  br i1 %exitcond1144.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit441, %polly.loop_header410
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit441 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %195, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %176 = shl nuw nsw i64 %polly.indvar419, 3
  %177 = udiv i64 %polly.indvar419, 10
  %178 = mul nuw nsw i64 %177, 80
  %179 = sub nsw i64 %176, %178
  %180 = mul nsw i64 %polly.indvar419, -8
  %181 = add i64 %180, %178
  %182 = udiv i64 %polly.indvar419, 10
  %183 = mul nuw nsw i64 %182, 80
  %184 = sub nsw i64 %indvars.iv1128, %183
  %185 = add i64 %indvars.iv1133, %183
  %186 = shl nsw i64 %polly.indvar419, 3
  br label %polly.loop_header422

polly.loop_exit424:                               ; preds = %polly.loop_exit430
  %187 = mul nsw i64 %polly.indvar419, -8
  %polly.access.mul.call1462.us = mul nsw i64 %polly.indvar419, 8000
  %188 = or i64 %186, 1
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %188, 1000
  %189 = or i64 %186, 2
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %189, 1000
  %190 = or i64 %186, 3
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %190, 1000
  %191 = or i64 %186, 4
  %polly.access.mul.call1462.us.4 = mul nuw nsw i64 %191, 1000
  %192 = or i64 %186, 5
  %polly.access.mul.call1462.us.5 = mul nuw nsw i64 %192, 1000
  %193 = or i64 %186, 6
  %polly.access.mul.call1462.us.6 = mul nuw nsw i64 %193, 1000
  %194 = or i64 %186, 7
  %polly.access.mul.call1462.us.7 = mul nuw nsw i64 %194, 1000
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit482
  %195 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -8
  %indvars.iv.next1129 = add nuw nsw i64 %indvars.iv1128, 8
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, -8
  %exitcond1143.not = icmp eq i64 %195, 150
  br i1 %exitcond1143.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_exit430, %polly.loop_header416
  %polly.indvar425 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next426, %polly.loop_exit430 ]
  %196 = add nuw nsw i64 %polly.indvar425, %175
  %polly.access.mul.Packed_MemRef_call2311 = mul nuw nsw i64 %polly.indvar425, 1200
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_header428
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next426, %174
  br i1 %exitcond1122.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %197 = add nuw nsw i64 %polly.indvar431, %186
  %polly.access.mul.call2435 = mul nuw nsw i64 %197, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %196, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2311 = add nuw nsw i64 %polly.indvar431, %polly.access.mul.Packed_MemRef_call2311
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1116
  br i1 %exitcond1118.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header439:                             ; preds = %polly.loop_exit482, %polly.loop_exit424
  %indvar1365 = phi i64 [ %indvar.next1366, %polly.loop_exit482 ], [ 0, %polly.loop_exit424 ]
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit482 ], [ %185, %polly.loop_exit424 ]
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit482 ], [ %184, %polly.loop_exit424 ]
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_exit482 ], [ %182, %polly.loop_exit424 ]
  %198 = mul nsw i64 %indvar1365, -80
  %199 = add i64 %179, %198
  %smax1367 = call i64 @llvm.smax.i64(i64 %199, i64 0)
  %200 = mul nuw nsw i64 %indvar1365, 80
  %201 = add i64 %181, %200
  %202 = add i64 %smax1367, %201
  %smax1132 = call i64 @llvm.smax.i64(i64 %indvars.iv1130, i64 0)
  %203 = add i64 %smax1132, %indvars.iv1135
  %204 = mul nuw nsw i64 %polly.indvar442, 10
  %.not.not944 = icmp ugt i64 %204, %polly.indvar419
  %205 = mul nuw nsw i64 %polly.indvar442, 80
  %206 = add nsw i64 %205, %187
  %207 = icmp sgt i64 %206, 0
  %208 = select i1 %207, i64 %206, i64 0
  %209 = add nsw i64 %206, 79
  %polly.loop_guard469.not = icmp sgt i64 %208, %209
  br i1 %.not.not944, label %polly.loop_header445.us, label %polly.loop_header439.split

polly.loop_header445.us:                          ; preds = %polly.loop_header439, %polly.loop_exit468.us
  %polly.indvar448.us = phi i64 [ %polly.indvar_next449.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header439 ]
  %210 = add nuw nsw i64 %polly.indvar448.us, %175
  %polly.access.mul.Packed_MemRef_call1309.us = mul nuw nsw i64 %polly.indvar448.us, 1200
  %polly.access.add.call1463.us = add nuw nsw i64 %210, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.mul.Packed_MemRef_call1309.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %210, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 1
  %polly.access.Packed_MemRef_call1309.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1309.us.1, align 8
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %210, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 2
  %polly.access.Packed_MemRef_call1309.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1309.us.2, align 8
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %210, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 3
  %polly.access.Packed_MemRef_call1309.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1309.us.3, align 8
  %polly.access.add.call1463.us.4 = add nuw nsw i64 %210, %polly.access.mul.call1462.us.4
  %polly.access.call1464.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.4
  %polly.access.call1464.load.us.4 = load double, double* %polly.access.call1464.us.4, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 4
  %polly.access.Packed_MemRef_call1309.us.4 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.4
  store double %polly.access.call1464.load.us.4, double* %polly.access.Packed_MemRef_call1309.us.4, align 8
  %polly.access.add.call1463.us.5 = add nuw nsw i64 %210, %polly.access.mul.call1462.us.5
  %polly.access.call1464.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.5
  %polly.access.call1464.load.us.5 = load double, double* %polly.access.call1464.us.5, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 5
  %polly.access.Packed_MemRef_call1309.us.5 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.5
  store double %polly.access.call1464.load.us.5, double* %polly.access.Packed_MemRef_call1309.us.5, align 8
  %polly.access.add.call1463.us.6 = add nuw nsw i64 %210, %polly.access.mul.call1462.us.6
  %polly.access.call1464.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.6
  %polly.access.call1464.load.us.6 = load double, double* %polly.access.call1464.us.6, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 6
  %polly.access.Packed_MemRef_call1309.us.6 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.6
  store double %polly.access.call1464.load.us.6, double* %polly.access.Packed_MemRef_call1309.us.6, align 8
  %polly.access.add.call1463.us.7 = add nuw nsw i64 %210, %polly.access.mul.call1462.us.7
  %polly.access.call1464.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.7
  %polly.access.call1464.load.us.7 = load double, double* %polly.access.call1464.us.7, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 7
  %polly.access.Packed_MemRef_call1309.us.7 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.7
  store double %polly.access.call1464.load.us.7, double* %polly.access.Packed_MemRef_call1309.us.7, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header466.us:                          ; preds = %polly.loop_header445.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %208, %polly.loop_header445.us ]
  %211 = add nuw nsw i64 %polly.indvar470.us, %186
  %polly.access.mul.call1474.us = mul nsw i64 %211, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %210, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309479.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1309479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %209
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_header445.us
  %polly.indvar_next449.us = add nuw nsw i64 %polly.indvar448.us, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar_next449.us, %174
  br i1 %exitcond1127.not, label %polly.loop_header480.preheader, label %polly.loop_header445.us

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header445

polly.loop_exit482:                               ; preds = %polly.loop_exit489.loopexit.us, %polly.loop_header480.preheader
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %polly.loop_cond444 = icmp ult i64 %polly.indvar442, 14
  %indvars.iv.next1131 = add i64 %indvars.iv1130, -80
  %indvars.iv.next1136 = add i64 %indvars.iv1135, 80
  %indvar.next1366 = add i64 %indvar1365, 1
  br i1 %polly.loop_cond444, label %polly.loop_header439, label %polly.loop_exit441

polly.loop_header445:                             ; preds = %polly.loop_header439.split, %polly.loop_exit468
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_exit468 ], [ 0, %polly.loop_header439.split ]
  %212 = add nuw nsw i64 %polly.indvar448, %175
  %polly.access.mul.Packed_MemRef_call1309477 = mul nuw nsw i64 %polly.indvar448, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next449, %174
  br i1 %exitcond1124.not, label %polly.loop_header480.preheader, label %polly.loop_header445

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header439.split
  %213 = sub nsw i64 %186, %205
  %214 = icmp sgt i64 %213, 0
  %215 = select i1 %214, i64 %213, i64 0
  %polly.loop_guard490 = icmp slt i64 %215, 80
  br i1 %polly.loop_guard490, label %polly.loop_header480.us, label %polly.loop_exit482

polly.loop_header480.us:                          ; preds = %polly.loop_header480.preheader, %polly.loop_exit489.loopexit.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_exit489.loopexit.us ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1309502.us = mul nuw nsw i64 %polly.indvar483.us, 1200
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header480.us, %polly.loop_exit497.us
  %indvar1368 = phi i64 [ 0, %polly.loop_header480.us ], [ %indvar.next1369, %polly.loop_exit497.us ]
  %indvars.iv1137 = phi i64 [ %203, %polly.loop_header480.us ], [ %indvars.iv.next1138, %polly.loop_exit497.us ]
  %polly.indvar491.us = phi i64 [ %215, %polly.loop_header480.us ], [ %polly.indvar_next492.us, %polly.loop_exit497.us ]
  %216 = add i64 %202, %indvar1368
  %smin1370 = call i64 @llvm.smin.i64(i64 %216, i64 7)
  %217 = add nsw i64 %smin1370, 1
  %smin1139 = call i64 @llvm.smin.i64(i64 %indvars.iv1137, i64 7)
  %218 = add nsw i64 %polly.indvar491.us, %206
  %polly.loop_guard498.us1213 = icmp sgt i64 %218, -1
  br i1 %polly.loop_guard498.us1213, label %polly.loop_header495.preheader.us, label %polly.loop_exit497.us

polly.loop_header495.us:                          ; preds = %polly.loop_header495.us.preheader, %polly.loop_header495.us
  %polly.indvar499.us = phi i64 [ %polly.indvar_next500.us, %polly.loop_header495.us ], [ %polly.indvar499.us.ph, %polly.loop_header495.us.preheader ]
  %219 = add nuw nsw i64 %polly.indvar499.us, %186
  %polly.access.add.Packed_MemRef_call1309503.us = add nuw nsw i64 %polly.indvar499.us, %polly.access.mul.Packed_MemRef_call1309502.us
  %polly.access.Packed_MemRef_call1309504.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1309504.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %polly.access.Packed_MemRef_call2311512.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503.us
  %_p_scalar_513.us = load double, double* %polly.access.Packed_MemRef_call2311512.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_517.us, %_p_scalar_513.us
  %220 = shl i64 %219, 3
  %221 = add i64 %220, %223
  %scevgep518.us = getelementptr i8, i8* %call, i64 %221
  %scevgep518519.us = bitcast i8* %scevgep518.us to double*
  %_p_scalar_520.us = load double, double* %scevgep518519.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_520.us
  store double %p_add42.i79.us, double* %scevgep518519.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next500.us = add nuw nsw i64 %polly.indvar499.us, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar499.us, %smin1139
  br i1 %exitcond1140.not, label %polly.loop_exit497.us, label %polly.loop_header495.us, !llvm.loop !97

polly.loop_exit497.us:                            ; preds = %polly.loop_header495.us, %middle.block1362, %polly.loop_header487.us
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %polly.loop_cond493.us = icmp ult i64 %polly.indvar491.us, 79
  %indvars.iv.next1138 = add i64 %indvars.iv1137, 1
  %indvar.next1369 = add i64 %indvar1368, 1
  br i1 %polly.loop_cond493.us, label %polly.loop_header487.us, label %polly.loop_exit489.loopexit.us

polly.loop_header495.preheader.us:                ; preds = %polly.loop_header487.us
  %222 = add nuw nsw i64 %polly.indvar491.us, %205
  %polly.access.add.Packed_MemRef_call2311507.us = add nsw i64 %218, %polly.access.mul.Packed_MemRef_call1309502.us
  %polly.access.Packed_MemRef_call2311508.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507.us
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call2311508.us, align 8
  %polly.access.Packed_MemRef_call1309516.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507.us
  %_p_scalar_517.us = load double, double* %polly.access.Packed_MemRef_call1309516.us, align 8
  %223 = mul i64 %222, 9600
  %min.iters.check1371 = icmp ult i64 %217, 4
  br i1 %min.iters.check1371, label %polly.loop_header495.us.preheader, label %vector.ph1372

vector.ph1372:                                    ; preds = %polly.loop_header495.preheader.us
  %n.vec1374 = and i64 %217, -4
  %broadcast.splatinsert1380 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1381 = shufflevector <4 x double> %broadcast.splatinsert1380, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1383 = insertelement <4 x double> poison, double %_p_scalar_517.us, i32 0
  %broadcast.splat1384 = shufflevector <4 x double> %broadcast.splatinsert1383, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %vector.ph1372
  %index1375 = phi i64 [ 0, %vector.ph1372 ], [ %index.next1376, %vector.body1364 ]
  %224 = add nuw nsw i64 %index1375, %186
  %225 = add nuw nsw i64 %index1375, %polly.access.mul.Packed_MemRef_call1309502.us
  %226 = getelementptr double, double* %Packed_MemRef_call1309, i64 %225
  %227 = bitcast double* %226 to <4 x double>*
  %wide.load1379 = load <4 x double>, <4 x double>* %227, align 8
  %228 = fmul fast <4 x double> %broadcast.splat1381, %wide.load1379
  %229 = getelementptr double, double* %Packed_MemRef_call2311, i64 %225
  %230 = bitcast double* %229 to <4 x double>*
  %wide.load1382 = load <4 x double>, <4 x double>* %230, align 8
  %231 = fmul fast <4 x double> %broadcast.splat1384, %wide.load1382
  %232 = shl i64 %224, 3
  %233 = add i64 %232, %223
  %234 = getelementptr i8, i8* %call, i64 %233
  %235 = bitcast i8* %234 to <4 x double>*
  %wide.load1385 = load <4 x double>, <4 x double>* %235, align 8, !alias.scope !86, !noalias !88
  %236 = fadd fast <4 x double> %231, %228
  %237 = fmul fast <4 x double> %236, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %238 = fadd fast <4 x double> %237, %wide.load1385
  %239 = bitcast i8* %234 to <4 x double>*
  store <4 x double> %238, <4 x double>* %239, align 8, !alias.scope !86, !noalias !88
  %index.next1376 = add i64 %index1375, 4
  %240 = icmp eq i64 %index.next1376, %n.vec1374
  br i1 %240, label %middle.block1362, label %vector.body1364, !llvm.loop !98

middle.block1362:                                 ; preds = %vector.body1364
  %cmp.n1378 = icmp eq i64 %217, %n.vec1374
  br i1 %cmp.n1378, label %polly.loop_exit497.us, label %polly.loop_header495.us.preheader

polly.loop_header495.us.preheader:                ; preds = %polly.loop_header495.preheader.us, %middle.block1362
  %polly.indvar499.us.ph = phi i64 [ 0, %polly.loop_header495.preheader.us ], [ %n.vec1374, %middle.block1362 ]
  br label %polly.loop_header495.us

polly.loop_exit489.loopexit.us:                   ; preds = %polly.loop_exit497.us
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar_next484.us, %174
  br i1 %exitcond1142.not, label %polly.loop_exit482, label %polly.loop_header480.us

polly.loop_header466:                             ; preds = %polly.loop_header445, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %208, %polly.loop_header445 ]
  %241 = add nuw nsw i64 %polly.indvar470, %186
  %polly.access.mul.call1474 = mul nsw i64 %241, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %212, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1309477
  %polly.access.Packed_MemRef_call1309479 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1309479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %209
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  %malloccall527 = tail call dereferenceable_or_null(1228800) i8* @malloc(i64 1228800) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %242 = add i64 %indvar, 1
  %243 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %243
  %min.iters.check1303 = icmp ult i64 %242, 4
  br i1 %min.iters.check1303, label %polly.loop_header617.preheader, label %vector.ph1304

vector.ph1304:                                    ; preds = %polly.loop_header611
  %n.vec1306 = and i64 %242, -4
  br label %vector.body1302

vector.body1302:                                  ; preds = %vector.body1302, %vector.ph1304
  %index1307 = phi i64 [ 0, %vector.ph1304 ], [ %index.next1308, %vector.body1302 ]
  %244 = shl nuw nsw i64 %index1307, 3
  %245 = getelementptr i8, i8* %scevgep623, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  %wide.load1311 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !99, !noalias !101
  %247 = fmul fast <4 x double> %wide.load1311, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %248 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %247, <4 x double>* %248, align 8, !alias.scope !99, !noalias !101
  %index.next1308 = add i64 %index1307, 4
  %249 = icmp eq i64 %index.next1308, %n.vec1306
  br i1 %249, label %middle.block1300, label %vector.body1302, !llvm.loop !106

middle.block1300:                                 ; preds = %vector.body1302
  %cmp.n1310 = icmp eq i64 %242, %n.vec1306
  br i1 %cmp.n1310, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1300
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1306, %middle.block1300 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1300
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1177.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %250 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %250
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1176.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !107

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %indvars.iv1150 = phi i64 [ 0, %polly.loop_header627.preheader ], [ %indvars.iv.next1151, %polly.loop_exit635 ]
  %polly.indvar630 = phi i64 [ 0, %polly.loop_header627.preheader ], [ %polly.indvar_next631, %polly.loop_exit635 ]
  %smin1172 = call i64 @llvm.smin.i64(i64 %indvars.iv1150, i64 -872)
  %251 = add nsw i64 %smin1172, 1000
  %252 = shl nsw i64 %polly.indvar630, 7
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1151 = add nsw i64 %indvars.iv1150, -128
  %exitcond1175.not = icmp eq i64 %polly.indvar_next631, 8
  br i1 %exitcond1175.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1164 = phi i64 [ %indvars.iv.next1165, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1147 = phi i64 [ %indvars.iv.next1148, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %272, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %253 = shl nuw nsw i64 %polly.indvar636, 3
  %254 = udiv i64 %polly.indvar636, 10
  %255 = mul nuw nsw i64 %254, 80
  %256 = sub nsw i64 %253, %255
  %257 = mul nsw i64 %polly.indvar636, -8
  %258 = add i64 %257, %255
  %259 = udiv i64 %polly.indvar636, 10
  %260 = mul nuw nsw i64 %259, 80
  %261 = sub nsw i64 %indvars.iv1159, %260
  %262 = add i64 %indvars.iv1164, %260
  %263 = shl nsw i64 %polly.indvar636, 3
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %264 = mul nsw i64 %polly.indvar636, -8
  %polly.access.mul.call1679.us = mul nsw i64 %polly.indvar636, 8000
  %265 = or i64 %263, 1
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %265, 1000
  %266 = or i64 %263, 2
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %266, 1000
  %267 = or i64 %263, 3
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %267, 1000
  %268 = or i64 %263, 4
  %polly.access.mul.call1679.us.4 = mul nuw nsw i64 %268, 1000
  %269 = or i64 %263, 5
  %polly.access.mul.call1679.us.5 = mul nuw nsw i64 %269, 1000
  %270 = or i64 %263, 6
  %polly.access.mul.call1679.us.6 = mul nuw nsw i64 %270, 1000
  %271 = or i64 %263, 7
  %polly.access.mul.call1679.us.7 = mul nuw nsw i64 %271, 1000
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit699
  %272 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1148 = add nsw i64 %indvars.iv1147, -8
  %indvars.iv.next1160 = add nuw nsw i64 %indvars.iv1159, 8
  %indvars.iv.next1165 = add nsw i64 %indvars.iv1164, -8
  %exitcond1174.not = icmp eq i64 %272, 150
  br i1 %exitcond1174.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %273 = add nuw nsw i64 %polly.indvar642, %252
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar_next643, %251
  br i1 %exitcond1153.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %274 = add nuw nsw i64 %polly.indvar648, %263
  %polly.access.mul.call2652 = mul nuw nsw i64 %274, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %273, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1147
  br i1 %exitcond1149.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit699, %polly.loop_exit641
  %indvar1315 = phi i64 [ %indvar.next1316, %polly.loop_exit699 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1166 = phi i64 [ %indvars.iv.next1167, %polly.loop_exit699 ], [ %262, %polly.loop_exit641 ]
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162, %polly.loop_exit699 ], [ %261, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit699 ], [ %259, %polly.loop_exit641 ]
  %275 = mul nsw i64 %indvar1315, -80
  %276 = add i64 %256, %275
  %smax1317 = call i64 @llvm.smax.i64(i64 %276, i64 0)
  %277 = mul nuw nsw i64 %indvar1315, 80
  %278 = add i64 %258, %277
  %279 = add i64 %smax1317, %278
  %smax1163 = call i64 @llvm.smax.i64(i64 %indvars.iv1161, i64 0)
  %280 = add i64 %smax1163, %indvars.iv1166
  %281 = mul nuw nsw i64 %polly.indvar659, 10
  %.not.not945 = icmp ugt i64 %281, %polly.indvar636
  %282 = mul nuw nsw i64 %polly.indvar659, 80
  %283 = add nsw i64 %282, %264
  %284 = icmp sgt i64 %283, 0
  %285 = select i1 %284, i64 %283, i64 0
  %286 = add nsw i64 %283, 79
  %polly.loop_guard686.not = icmp sgt i64 %285, %286
  br i1 %.not.not945, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit685.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit685.us ], [ 0, %polly.loop_header656 ]
  %287 = add nuw nsw i64 %polly.indvar665.us, %252
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  %polly.access.add.call1680.us = add nuw nsw i64 %287, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.mul.Packed_MemRef_call1526.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %287, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 1
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1526.us.1, align 8
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %287, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 2
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1526.us.2, align 8
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %287, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 3
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1526.us.3, align 8
  %polly.access.add.call1680.us.4 = add nuw nsw i64 %287, %polly.access.mul.call1679.us.4
  %polly.access.call1681.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.4
  %polly.access.call1681.load.us.4 = load double, double* %polly.access.call1681.us.4, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 4
  %polly.access.Packed_MemRef_call1526.us.4 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.4
  store double %polly.access.call1681.load.us.4, double* %polly.access.Packed_MemRef_call1526.us.4, align 8
  %polly.access.add.call1680.us.5 = add nuw nsw i64 %287, %polly.access.mul.call1679.us.5
  %polly.access.call1681.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.5
  %polly.access.call1681.load.us.5 = load double, double* %polly.access.call1681.us.5, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 5
  %polly.access.Packed_MemRef_call1526.us.5 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.5
  store double %polly.access.call1681.load.us.5, double* %polly.access.Packed_MemRef_call1526.us.5, align 8
  %polly.access.add.call1680.us.6 = add nuw nsw i64 %287, %polly.access.mul.call1679.us.6
  %polly.access.call1681.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.6
  %polly.access.call1681.load.us.6 = load double, double* %polly.access.call1681.us.6, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 6
  %polly.access.Packed_MemRef_call1526.us.6 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.6
  store double %polly.access.call1681.load.us.6, double* %polly.access.Packed_MemRef_call1526.us.6, align 8
  %polly.access.add.call1680.us.7 = add nuw nsw i64 %287, %polly.access.mul.call1679.us.7
  %polly.access.call1681.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.7
  %polly.access.call1681.load.us.7 = load double, double* %polly.access.call1681.us.7, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 7
  %polly.access.Packed_MemRef_call1526.us.7 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.7
  store double %polly.access.call1681.load.us.7, double* %polly.access.Packed_MemRef_call1526.us.7, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_exit685.us, label %polly.loop_header683.us

polly.loop_header683.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header683.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_header683.us ], [ %285, %polly.loop_header662.us ]
  %288 = add nuw nsw i64 %polly.indvar687.us, %263
  %polly.access.mul.call1691.us = mul nsw i64 %288, 1000
  %polly.access.add.call1692.us = add nuw nsw i64 %287, %polly.access.mul.call1691.us
  %polly.access.call1693.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us
  %polly.access.call1693.load.us = load double, double* %polly.access.call1693.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526695.us = add nuw nsw i64 %polly.indvar687.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526696.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us
  store double %polly.access.call1693.load.us, double* %polly.access.Packed_MemRef_call1526696.us, align 8
  %polly.indvar_next688.us = add nuw nsw i64 %polly.indvar687.us, 1
  %polly.loop_cond689.not.not.us = icmp slt i64 %polly.indvar687.us, %286
  br i1 %polly.loop_cond689.not.not.us, label %polly.loop_header683.us, label %polly.loop_exit685.us

polly.loop_exit685.us:                            ; preds = %polly.loop_header683.us, %polly.loop_header662.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar_next666.us, %251
  br i1 %exitcond1158.not, label %polly.loop_header697.preheader, label %polly.loop_header662.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header662

polly.loop_exit699:                               ; preds = %polly.loop_exit706.loopexit.us, %polly.loop_header697.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp ult i64 %polly.indvar659, 14
  %indvars.iv.next1162 = add i64 %indvars.iv1161, -80
  %indvars.iv.next1167 = add i64 %indvars.iv1166, 80
  %indvar.next1316 = add i64 %indvar1315, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit685
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit685 ], [ 0, %polly.loop_header656.split ]
  %289 = add nuw nsw i64 %polly.indvar665, %252
  %polly.access.mul.Packed_MemRef_call1526694 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header683

polly.loop_exit685:                               ; preds = %polly.loop_header683
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next666, %251
  br i1 %exitcond1155.not, label %polly.loop_header697.preheader, label %polly.loop_header662

polly.loop_header697.preheader:                   ; preds = %polly.loop_exit685, %polly.loop_exit685.us, %polly.loop_header656.split
  %290 = sub nsw i64 %263, %282
  %291 = icmp sgt i64 %290, 0
  %292 = select i1 %291, i64 %290, i64 0
  %polly.loop_guard707 = icmp slt i64 %292, 80
  br i1 %polly.loop_guard707, label %polly.loop_header697.us, label %polly.loop_exit699

polly.loop_header697.us:                          ; preds = %polly.loop_header697.preheader, %polly.loop_exit706.loopexit.us
  %polly.indvar700.us = phi i64 [ %polly.indvar_next701.us, %polly.loop_exit706.loopexit.us ], [ 0, %polly.loop_header697.preheader ]
  %polly.access.mul.Packed_MemRef_call1526719.us = mul nuw nsw i64 %polly.indvar700.us, 1200
  br label %polly.loop_header704.us

polly.loop_header704.us:                          ; preds = %polly.loop_header697.us, %polly.loop_exit714.us
  %indvar1318 = phi i64 [ 0, %polly.loop_header697.us ], [ %indvar.next1319, %polly.loop_exit714.us ]
  %indvars.iv1168 = phi i64 [ %280, %polly.loop_header697.us ], [ %indvars.iv.next1169, %polly.loop_exit714.us ]
  %polly.indvar708.us = phi i64 [ %292, %polly.loop_header697.us ], [ %polly.indvar_next709.us, %polly.loop_exit714.us ]
  %293 = add i64 %279, %indvar1318
  %smin1320 = call i64 @llvm.smin.i64(i64 %293, i64 7)
  %294 = add nsw i64 %smin1320, 1
  %smin1170 = call i64 @llvm.smin.i64(i64 %indvars.iv1168, i64 7)
  %295 = add nsw i64 %polly.indvar708.us, %283
  %polly.loop_guard715.us1214 = icmp sgt i64 %295, -1
  br i1 %polly.loop_guard715.us1214, label %polly.loop_header712.preheader.us, label %polly.loop_exit714.us

polly.loop_header712.us:                          ; preds = %polly.loop_header712.us.preheader, %polly.loop_header712.us
  %polly.indvar716.us = phi i64 [ %polly.indvar_next717.us, %polly.loop_header712.us ], [ %polly.indvar716.us.ph, %polly.loop_header712.us.preheader ]
  %296 = add nuw nsw i64 %polly.indvar716.us, %263
  %polly.access.add.Packed_MemRef_call1526720.us = add nuw nsw i64 %polly.indvar716.us, %polly.access.mul.Packed_MemRef_call1526719.us
  %polly.access.Packed_MemRef_call1526721.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720.us
  %_p_scalar_722.us = load double, double* %polly.access.Packed_MemRef_call1526721.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_726.us, %_p_scalar_722.us
  %polly.access.Packed_MemRef_call2528729.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720.us
  %_p_scalar_730.us = load double, double* %polly.access.Packed_MemRef_call2528729.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_734.us, %_p_scalar_730.us
  %297 = shl i64 %296, 3
  %298 = add i64 %297, %300
  %scevgep735.us = getelementptr i8, i8* %call, i64 %298
  %scevgep735736.us = bitcast i8* %scevgep735.us to double*
  %_p_scalar_737.us = load double, double* %scevgep735736.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_737.us
  store double %p_add42.i.us, double* %scevgep735736.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next717.us = add nuw nsw i64 %polly.indvar716.us, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar716.us, %smin1170
  br i1 %exitcond1171.not, label %polly.loop_exit714.us, label %polly.loop_header712.us, !llvm.loop !110

polly.loop_exit714.us:                            ; preds = %polly.loop_header712.us, %middle.block1312, %polly.loop_header704.us
  %polly.indvar_next709.us = add nuw nsw i64 %polly.indvar708.us, 1
  %polly.loop_cond710.us = icmp ult i64 %polly.indvar708.us, 79
  %indvars.iv.next1169 = add i64 %indvars.iv1168, 1
  %indvar.next1319 = add i64 %indvar1318, 1
  br i1 %polly.loop_cond710.us, label %polly.loop_header704.us, label %polly.loop_exit706.loopexit.us

polly.loop_header712.preheader.us:                ; preds = %polly.loop_header704.us
  %299 = add nuw nsw i64 %polly.indvar708.us, %282
  %polly.access.add.Packed_MemRef_call2528724.us = add nsw i64 %295, %polly.access.mul.Packed_MemRef_call1526719.us
  %polly.access.Packed_MemRef_call2528725.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724.us
  %_p_scalar_726.us = load double, double* %polly.access.Packed_MemRef_call2528725.us, align 8
  %polly.access.Packed_MemRef_call1526733.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724.us
  %_p_scalar_734.us = load double, double* %polly.access.Packed_MemRef_call1526733.us, align 8
  %300 = mul i64 %299, 9600
  %min.iters.check1321 = icmp ult i64 %294, 4
  br i1 %min.iters.check1321, label %polly.loop_header712.us.preheader, label %vector.ph1322

vector.ph1322:                                    ; preds = %polly.loop_header712.preheader.us
  %n.vec1324 = and i64 %294, -4
  %broadcast.splatinsert1330 = insertelement <4 x double> poison, double %_p_scalar_726.us, i32 0
  %broadcast.splat1331 = shufflevector <4 x double> %broadcast.splatinsert1330, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1333 = insertelement <4 x double> poison, double %_p_scalar_734.us, i32 0
  %broadcast.splat1334 = shufflevector <4 x double> %broadcast.splatinsert1333, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %vector.ph1322
  %index1325 = phi i64 [ 0, %vector.ph1322 ], [ %index.next1326, %vector.body1314 ]
  %301 = add nuw nsw i64 %index1325, %263
  %302 = add nuw nsw i64 %index1325, %polly.access.mul.Packed_MemRef_call1526719.us
  %303 = getelementptr double, double* %Packed_MemRef_call1526, i64 %302
  %304 = bitcast double* %303 to <4 x double>*
  %wide.load1329 = load <4 x double>, <4 x double>* %304, align 8
  %305 = fmul fast <4 x double> %broadcast.splat1331, %wide.load1329
  %306 = getelementptr double, double* %Packed_MemRef_call2528, i64 %302
  %307 = bitcast double* %306 to <4 x double>*
  %wide.load1332 = load <4 x double>, <4 x double>* %307, align 8
  %308 = fmul fast <4 x double> %broadcast.splat1334, %wide.load1332
  %309 = shl i64 %301, 3
  %310 = add i64 %309, %300
  %311 = getelementptr i8, i8* %call, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  %wide.load1335 = load <4 x double>, <4 x double>* %312, align 8, !alias.scope !99, !noalias !101
  %313 = fadd fast <4 x double> %308, %305
  %314 = fmul fast <4 x double> %313, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %315 = fadd fast <4 x double> %314, %wide.load1335
  %316 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %315, <4 x double>* %316, align 8, !alias.scope !99, !noalias !101
  %index.next1326 = add i64 %index1325, 4
  %317 = icmp eq i64 %index.next1326, %n.vec1324
  br i1 %317, label %middle.block1312, label %vector.body1314, !llvm.loop !111

middle.block1312:                                 ; preds = %vector.body1314
  %cmp.n1328 = icmp eq i64 %294, %n.vec1324
  br i1 %cmp.n1328, label %polly.loop_exit714.us, label %polly.loop_header712.us.preheader

polly.loop_header712.us.preheader:                ; preds = %polly.loop_header712.preheader.us, %middle.block1312
  %polly.indvar716.us.ph = phi i64 [ 0, %polly.loop_header712.preheader.us ], [ %n.vec1324, %middle.block1312 ]
  br label %polly.loop_header712.us

polly.loop_exit706.loopexit.us:                   ; preds = %polly.loop_exit714.us
  %polly.indvar_next701.us = add nuw nsw i64 %polly.indvar700.us, 1
  %exitcond1173.not = icmp eq i64 %polly.indvar_next701.us, %251
  br i1 %exitcond1173.not, label %polly.loop_exit699, label %polly.loop_header697.us

polly.loop_header683:                             ; preds = %polly.loop_header662, %polly.loop_header683
  %polly.indvar687 = phi i64 [ %polly.indvar_next688, %polly.loop_header683 ], [ %285, %polly.loop_header662 ]
  %318 = add nuw nsw i64 %polly.indvar687, %263
  %polly.access.mul.call1691 = mul nsw i64 %318, 1000
  %polly.access.add.call1692 = add nuw nsw i64 %289, %polly.access.mul.call1691
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526695 = add nuw nsw i64 %polly.indvar687, %polly.access.mul.Packed_MemRef_call1526694
  %polly.access.Packed_MemRef_call1526696 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1526696, align 8
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %polly.loop_cond689.not.not = icmp slt i64 %polly.indvar687, %286
  br i1 %polly.loop_cond689.not.not, label %polly.loop_header683, label %polly.loop_exit685

polly.loop_header864:                             ; preds = %entry, %polly.loop_exit872
  %indvars.iv1202 = phi i64 [ %indvars.iv.next1203, %polly.loop_exit872 ], [ 0, %entry ]
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_exit872 ], [ 0, %entry ]
  %smin1204 = call i64 @llvm.smin.i64(i64 %indvars.iv1202, i64 -1168)
  %319 = shl nsw i64 %polly.indvar867, 5
  %320 = add nsw i64 %smin1204, 1199
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1203 = add nsw i64 %indvars.iv1202, -32
  %exitcond1207.not = icmp eq i64 %polly.indvar_next868, 38
  br i1 %exitcond1207.not, label %polly.loop_header891, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %indvars.iv1198 = phi i64 [ %indvars.iv.next1199, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %321 = mul nsw i64 %polly.indvar873, -32
  %smin = call i64 @llvm.smin.i64(i64 %321, i64 -1168)
  %322 = add nsw i64 %smin, 1200
  %smin1200 = call i64 @llvm.smin.i64(i64 %indvars.iv1198, i64 -1168)
  %323 = shl nsw i64 %polly.indvar873, 5
  %324 = add nsw i64 %smin1200, 1199
  br label %polly.loop_header876

polly.loop_exit878:                               ; preds = %polly.loop_exit884
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %indvars.iv.next1199 = add nsw i64 %indvars.iv1198, -32
  %exitcond1206.not = icmp eq i64 %polly.indvar_next874, 38
  br i1 %exitcond1206.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_exit884, %polly.loop_header870
  %polly.indvar879 = phi i64 [ 0, %polly.loop_header870 ], [ %polly.indvar_next880, %polly.loop_exit884 ]
  %325 = add nuw nsw i64 %polly.indvar879, %319
  %326 = trunc i64 %325 to i32
  %327 = mul nuw nsw i64 %325, 9600
  %min.iters.check = icmp eq i64 %322, 0
  br i1 %min.iters.check, label %polly.loop_header882, label %vector.ph1242

vector.ph1242:                                    ; preds = %polly.loop_header876
  %broadcast.splatinsert1249 = insertelement <4 x i64> poison, i64 %323, i32 0
  %broadcast.splat1250 = shufflevector <4 x i64> %broadcast.splatinsert1249, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1251 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1252 = shufflevector <4 x i32> %broadcast.splatinsert1251, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %vector.ph1242
  %index1243 = phi i64 [ 0, %vector.ph1242 ], [ %index.next1244, %vector.body1241 ]
  %vec.ind1247 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1242 ], [ %vec.ind.next1248, %vector.body1241 ]
  %328 = add nuw nsw <4 x i64> %vec.ind1247, %broadcast.splat1250
  %329 = trunc <4 x i64> %328 to <4 x i32>
  %330 = mul <4 x i32> %broadcast.splat1252, %329
  %331 = add <4 x i32> %330, <i32 3, i32 3, i32 3, i32 3>
  %332 = urem <4 x i32> %331, <i32 1200, i32 1200, i32 1200, i32 1200>
  %333 = sitofp <4 x i32> %332 to <4 x double>
  %334 = fmul fast <4 x double> %333, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %335 = extractelement <4 x i64> %328, i32 0
  %336 = shl i64 %335, 3
  %337 = add nuw nsw i64 %336, %327
  %338 = getelementptr i8, i8* %call, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %334, <4 x double>* %339, align 8, !alias.scope !112, !noalias !114
  %index.next1244 = add i64 %index1243, 4
  %vec.ind.next1248 = add <4 x i64> %vec.ind1247, <i64 4, i64 4, i64 4, i64 4>
  %340 = icmp eq i64 %index.next1244, %322
  br i1 %340, label %polly.loop_exit884, label %vector.body1241, !llvm.loop !117

polly.loop_exit884:                               ; preds = %vector.body1241, %polly.loop_header882
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1205.not = icmp eq i64 %polly.indvar879, %320
  br i1 %exitcond1205.not, label %polly.loop_exit878, label %polly.loop_header876

polly.loop_header882:                             ; preds = %polly.loop_header876, %polly.loop_header882
  %polly.indvar885 = phi i64 [ %polly.indvar_next886, %polly.loop_header882 ], [ 0, %polly.loop_header876 ]
  %341 = add nuw nsw i64 %polly.indvar885, %323
  %342 = trunc i64 %341 to i32
  %343 = mul i32 %342, %326
  %344 = add i32 %343, 3
  %345 = urem i32 %344, 1200
  %p_conv31.i = sitofp i32 %345 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %346 = shl i64 %341, 3
  %347 = add nuw nsw i64 %346, %327
  %scevgep888 = getelementptr i8, i8* %call, i64 %347
  %scevgep888889 = bitcast i8* %scevgep888 to double*
  store double %p_div33.i, double* %scevgep888889, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next886 = add nuw nsw i64 %polly.indvar885, 1
  %exitcond1201.not = icmp eq i64 %polly.indvar885, %324
  br i1 %exitcond1201.not, label %polly.loop_exit884, label %polly.loop_header882, !llvm.loop !118

polly.loop_header891:                             ; preds = %polly.loop_exit872, %polly.loop_exit899
  %indvars.iv1192 = phi i64 [ %indvars.iv.next1193, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %smin1194 = call i64 @llvm.smin.i64(i64 %indvars.iv1192, i64 -1168)
  %348 = shl nsw i64 %polly.indvar894, 5
  %349 = add nsw i64 %smin1194, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1193 = add nsw i64 %indvars.iv1192, -32
  %exitcond1197.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1197.not, label %polly.loop_header917, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1188 = phi i64 [ %indvars.iv.next1189, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %350 = mul nsw i64 %polly.indvar900, -32
  %smin1256 = call i64 @llvm.smin.i64(i64 %350, i64 -968)
  %351 = add nsw i64 %smin1256, 1000
  %smin1190 = call i64 @llvm.smin.i64(i64 %indvars.iv1188, i64 -968)
  %352 = shl nsw i64 %polly.indvar900, 5
  %353 = add nsw i64 %smin1190, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1189 = add nsw i64 %indvars.iv1188, -32
  %exitcond1196.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1196.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %354 = add nuw nsw i64 %polly.indvar906, %348
  %355 = trunc i64 %354 to i32
  %356 = mul nuw nsw i64 %354, 8000
  %min.iters.check1257 = icmp eq i64 %351, 0
  br i1 %min.iters.check1257, label %polly.loop_header909, label %vector.ph1258

vector.ph1258:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1267 = insertelement <4 x i64> poison, i64 %352, i32 0
  %broadcast.splat1268 = shufflevector <4 x i64> %broadcast.splatinsert1267, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1269 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1270 = shufflevector <4 x i32> %broadcast.splatinsert1269, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %vector.ph1258
  %index1261 = phi i64 [ 0, %vector.ph1258 ], [ %index.next1262, %vector.body1255 ]
  %vec.ind1265 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1258 ], [ %vec.ind.next1266, %vector.body1255 ]
  %357 = add nuw nsw <4 x i64> %vec.ind1265, %broadcast.splat1268
  %358 = trunc <4 x i64> %357 to <4 x i32>
  %359 = mul <4 x i32> %broadcast.splat1270, %358
  %360 = add <4 x i32> %359, <i32 2, i32 2, i32 2, i32 2>
  %361 = urem <4 x i32> %360, <i32 1000, i32 1000, i32 1000, i32 1000>
  %362 = sitofp <4 x i32> %361 to <4 x double>
  %363 = fmul fast <4 x double> %362, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %364 = extractelement <4 x i64> %357, i32 0
  %365 = shl i64 %364, 3
  %366 = add nuw nsw i64 %365, %356
  %367 = getelementptr i8, i8* %call2, i64 %366
  %368 = bitcast i8* %367 to <4 x double>*
  store <4 x double> %363, <4 x double>* %368, align 8, !alias.scope !116, !noalias !119
  %index.next1262 = add i64 %index1261, 4
  %vec.ind.next1266 = add <4 x i64> %vec.ind1265, <i64 4, i64 4, i64 4, i64 4>
  %369 = icmp eq i64 %index.next1262, %351
  br i1 %369, label %polly.loop_exit911, label %vector.body1255, !llvm.loop !120

polly.loop_exit911:                               ; preds = %vector.body1255, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1195.not = icmp eq i64 %polly.indvar906, %349
  br i1 %exitcond1195.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %370 = add nuw nsw i64 %polly.indvar912, %352
  %371 = trunc i64 %370 to i32
  %372 = mul i32 %371, %355
  %373 = add i32 %372, 2
  %374 = urem i32 %373, 1000
  %p_conv10.i = sitofp i32 %374 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %375 = shl i64 %370, 3
  %376 = add nuw nsw i64 %375, %356
  %scevgep915 = getelementptr i8, i8* %call2, i64 %376
  %scevgep915916 = bitcast i8* %scevgep915 to double*
  store double %p_div12.i, double* %scevgep915916, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1191.not = icmp eq i64 %polly.indvar912, %353
  br i1 %exitcond1191.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !121

polly.loop_header917:                             ; preds = %polly.loop_exit899, %polly.loop_exit925
  %indvars.iv1182 = phi i64 [ %indvars.iv.next1183, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 -1168)
  %377 = shl nsw i64 %polly.indvar920, 5
  %378 = add nsw i64 %smin1184, 1199
  br label %polly.loop_header923

polly.loop_exit925:                               ; preds = %polly.loop_exit931
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %indvars.iv.next1183 = add nsw i64 %indvars.iv1182, -32
  %exitcond1187.not = icmp eq i64 %polly.indvar_next921, 38
  br i1 %exitcond1187.not, label %init_array.exit, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_exit931, %polly.loop_header917
  %indvars.iv1178 = phi i64 [ %indvars.iv.next1179, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %379 = mul nsw i64 %polly.indvar926, -32
  %smin1274 = call i64 @llvm.smin.i64(i64 %379, i64 -968)
  %380 = add nsw i64 %smin1274, 1000
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1178, i64 -968)
  %381 = shl nsw i64 %polly.indvar926, 5
  %382 = add nsw i64 %smin1180, 999
  br label %polly.loop_header929

polly.loop_exit931:                               ; preds = %polly.loop_exit937
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %indvars.iv.next1179 = add nsw i64 %indvars.iv1178, -32
  %exitcond1186.not = icmp eq i64 %polly.indvar_next927, 32
  br i1 %exitcond1186.not, label %polly.loop_exit925, label %polly.loop_header923

polly.loop_header929:                             ; preds = %polly.loop_exit937, %polly.loop_header923
  %polly.indvar932 = phi i64 [ 0, %polly.loop_header923 ], [ %polly.indvar_next933, %polly.loop_exit937 ]
  %383 = add nuw nsw i64 %polly.indvar932, %377
  %384 = trunc i64 %383 to i32
  %385 = mul nuw nsw i64 %383, 8000
  %min.iters.check1275 = icmp eq i64 %380, 0
  br i1 %min.iters.check1275, label %polly.loop_header935, label %vector.ph1276

vector.ph1276:                                    ; preds = %polly.loop_header929
  %broadcast.splatinsert1285 = insertelement <4 x i64> poison, i64 %381, i32 0
  %broadcast.splat1286 = shufflevector <4 x i64> %broadcast.splatinsert1285, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1287 = insertelement <4 x i32> poison, i32 %384, i32 0
  %broadcast.splat1288 = shufflevector <4 x i32> %broadcast.splatinsert1287, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %vector.ph1276
  %index1279 = phi i64 [ 0, %vector.ph1276 ], [ %index.next1280, %vector.body1273 ]
  %vec.ind1283 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1276 ], [ %vec.ind.next1284, %vector.body1273 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1283, %broadcast.splat1286
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1288, %387
  %389 = add <4 x i32> %388, <i32 1, i32 1, i32 1, i32 1>
  %390 = urem <4 x i32> %389, <i32 1200, i32 1200, i32 1200, i32 1200>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %385
  %396 = getelementptr i8, i8* %call1, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !115, !noalias !122
  %index.next1280 = add i64 %index1279, 4
  %vec.ind.next1284 = add <4 x i64> %vec.ind1283, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1280, %380
  br i1 %398, label %polly.loop_exit937, label %vector.body1273, !llvm.loop !123

polly.loop_exit937:                               ; preds = %vector.body1273, %polly.loop_header935
  %polly.indvar_next933 = add nuw nsw i64 %polly.indvar932, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar932, %378
  br i1 %exitcond1185.not, label %polly.loop_exit931, label %polly.loop_header929

polly.loop_header935:                             ; preds = %polly.loop_header929, %polly.loop_header935
  %polly.indvar938 = phi i64 [ %polly.indvar_next939, %polly.loop_header935 ], [ 0, %polly.loop_header929 ]
  %399 = add nuw nsw i64 %polly.indvar938, %381
  %400 = trunc i64 %399 to i32
  %401 = mul i32 %400, %384
  %402 = add i32 %401, 1
  %403 = urem i32 %402, 1200
  %p_conv.i = sitofp i32 %403 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %404 = shl i64 %399, 3
  %405 = add nuw nsw i64 %404, %385
  %scevgep942 = getelementptr i8, i8* %call1, i64 %405
  %scevgep942943 = bitcast i8* %scevgep942 to double*
  store double %p_div.i, double* %scevgep942943, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next939 = add nuw nsw i64 %polly.indvar938, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar938, %382
  br i1 %exitcond1181.not, label %polly.loop_exit937, label %polly.loop_header935, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 8}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 128}
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