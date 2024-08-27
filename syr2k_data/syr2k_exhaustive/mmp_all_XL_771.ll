; ModuleID = 'syr2k_exhaustive/mmp_all_XL_771.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_771.c"
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
  %scevgep1241 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1240 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1239 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1238 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1238, %scevgep1241
  %bound1 = icmp ult i8* %scevgep1240, %scevgep1239
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
  br i1 %exitcond18.not.i, label %vector.ph1245, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1245:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1252 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1253 = shufflevector <4 x i64> %broadcast.splatinsert1252, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1245
  %index1246 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1247, %vector.body1244 ]
  %vec.ind1250 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1245 ], [ %vec.ind.next1251, %vector.body1244 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1250, %broadcast.splat1253
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv7.i, i64 %index1246
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1247 = add i64 %index1246, 4
  %vec.ind.next1251 = add <4 x i64> %vec.ind1250, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1247, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1244, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1244
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1245, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit925
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1307 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1307, label %for.body3.i46.preheader1462, label %vector.ph1308

vector.ph1308:                                    ; preds = %for.body3.i46.preheader
  %n.vec1310 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1312, %vector.body1306 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %index1311
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1312 = add i64 %index1311, 4
  %46 = icmp eq i64 %index.next1312, %n.vec1310
  br i1 %46, label %middle.block1304, label %vector.body1306, !llvm.loop !18

middle.block1304:                                 ; preds = %vector.body1306
  %cmp.n1314 = icmp eq i64 %indvars.iv21.i, %n.vec1310
  br i1 %cmp.n1314, label %for.inc6.i, label %for.body3.i46.preheader1462

for.body3.i46.preheader1462:                      ; preds = %for.body3.i46.preheader, %middle.block1304
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1310, %middle.block1304 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1462, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1462 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1304, %for.cond1.preheader.i45
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
  %min.iters.check1354 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1354, label %for.body3.i60.preheader1458, label %vector.ph1355

vector.ph1355:                                    ; preds = %for.body3.i60.preheader
  %n.vec1357 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1353

vector.body1353:                                  ; preds = %vector.body1353, %vector.ph1355
  %index1358 = phi i64 [ 0, %vector.ph1355 ], [ %index.next1359, %vector.body1353 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %index1358
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1362 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1362, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1359 = add i64 %index1358, 4
  %57 = icmp eq i64 %index.next1359, %n.vec1357
  br i1 %57, label %middle.block1351, label %vector.body1353, !llvm.loop !64

middle.block1351:                                 ; preds = %vector.body1353
  %cmp.n1361 = icmp eq i64 %indvars.iv21.i52, %n.vec1357
  br i1 %cmp.n1361, label %for.inc6.i63, label %for.body3.i60.preheader1458

for.body3.i60.preheader1458:                      ; preds = %for.body3.i60.preheader, %middle.block1351
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1357, %middle.block1351 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1458, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1458 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1351, %for.cond1.preheader.i54
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
  %min.iters.check1404 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1404, label %for.body3.i99.preheader1454, label %vector.ph1405

vector.ph1405:                                    ; preds = %for.body3.i99.preheader
  %n.vec1407 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1403

vector.body1403:                                  ; preds = %vector.body1403, %vector.ph1405
  %index1408 = phi i64 [ 0, %vector.ph1405 ], [ %index.next1409, %vector.body1403 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %index1408
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1412 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1412, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1409 = add i64 %index1408, 4
  %68 = icmp eq i64 %index.next1409, %n.vec1407
  br i1 %68, label %middle.block1401, label %vector.body1403, !llvm.loop !66

middle.block1401:                                 ; preds = %vector.body1403
  %cmp.n1411 = icmp eq i64 %indvars.iv21.i91, %n.vec1407
  br i1 %cmp.n1411, label %for.inc6.i102, label %for.body3.i99.preheader1454

for.body3.i99.preheader1454:                      ; preds = %for.body3.i99.preheader, %middle.block1401
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1407, %middle.block1401 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1454, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1454 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1401, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall136 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1416 = phi i64 [ %indvar.next1417, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1416, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1418 = icmp ult i64 %88, 4
  br i1 %min.iters.check1418, label %polly.loop_header192.preheader, label %vector.ph1419

vector.ph1419:                                    ; preds = %polly.loop_header
  %n.vec1421 = and i64 %88, -4
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.body1415, %vector.ph1419
  %index1422 = phi i64 [ 0, %vector.ph1419 ], [ %index.next1423, %vector.body1415 ]
  %90 = shl nuw nsw i64 %index1422, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1426 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1426, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1423 = add i64 %index1422, 4
  %95 = icmp eq i64 %index.next1423, %n.vec1421
  br i1 %95, label %middle.block1413, label %vector.body1415, !llvm.loop !79

middle.block1413:                                 ; preds = %vector.body1415
  %cmp.n1425 = icmp eq i64 %88, %n.vec1421
  br i1 %cmp.n1425, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1413
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1421, %middle.block1413 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1413
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1417 = add i64 %indvar1416, 1
  br i1 %exitcond1122.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1121.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1121.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1096 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1097, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1116 = call i64 @llvm.smin.i64(i64 %indvars.iv1096, i64 -968)
  %97 = add nsw i64 %smin1116, 1000
  %98 = shl nsw i64 %polly.indvar203, 5
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, -32
  %exitcond1120.not = icmp eq i64 %polly.indvar_next204, 32
  br i1 %exitcond1120.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %119, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = shl nuw nsw i64 %polly.indvar209, 3
  %100 = shl nuw nsw i64 %polly.indvar209, 3
  %101 = and i64 %100, 9223372036854775744
  %102 = sub nsw i64 %99, %101
  %103 = mul nsw i64 %polly.indvar209, -8
  %104 = add i64 %103, %101
  %105 = lshr i64 %polly.indvar209, 3
  %106 = shl nuw nsw i64 %105, 6
  %107 = sub nsw i64 %indvars.iv1104, %106
  %108 = add i64 %indvars.iv1108, %106
  %109 = mul nsw i64 %polly.indvar209, -8
  %110 = shl nsw i64 %polly.indvar209, 3
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %111 = add nsw i64 %109, 1199
  %polly.access.mul.call1247.us = mul nsw i64 %polly.indvar209, 8000
  %112 = or i64 %110, 1
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %112, 1000
  %113 = or i64 %110, 2
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %113, 1000
  %114 = or i64 %110, 3
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %114, 1000
  %115 = or i64 %110, 4
  %polly.access.mul.call1247.us.4 = mul nuw nsw i64 %115, 1000
  %116 = or i64 %110, 5
  %polly.access.mul.call1247.us.5 = mul nuw nsw i64 %116, 1000
  %117 = or i64 %110, 6
  %polly.access.mul.call1247.us.6 = mul nuw nsw i64 %117, 1000
  %118 = or i64 %110, 7
  %polly.access.mul.call1247.us.7 = mul nuw nsw i64 %118, 1000
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %119 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next1105 = add nuw nsw i64 %indvars.iv1104, 8
  %indvars.iv.next1109 = add nsw i64 %indvars.iv1108, -8
  %exitcond1119.not = icmp eq i64 %119, 150
  br i1 %exitcond1119.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %120 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1098.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %121 = add nuw nsw i64 %polly.indvar221, %110
  %polly.access.mul.call2225 = mul nuw nsw i64 %121, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %120, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit265, %polly.loop_exit214
  %indvar1430 = phi i64 [ %indvar.next1431, %polly.loop_exit265 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit265 ], [ %108, %polly.loop_exit214 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit265 ], [ %107, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit265 ], [ %105, %polly.loop_exit214 ]
  %122 = mul nsw i64 %indvar1430, -64
  %123 = add i64 %102, %122
  %smax1432 = call i64 @llvm.smax.i64(i64 %123, i64 0)
  %124 = shl nuw nsw i64 %indvar1430, 6
  %125 = add i64 %104, %124
  %126 = add i64 %smax1432, %125
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1106, i64 0)
  %127 = add i64 %smax, %indvars.iv1110
  %128 = shl nsw i64 %polly.indvar231, 3
  %.not.not = icmp ugt i64 %128, %polly.indvar209
  %129 = shl nsw i64 %polly.indvar231, 6
  %130 = add nsw i64 %129, %109
  %131 = icmp sgt i64 %130, 0
  %132 = select i1 %131, i64 %130, i64 0
  %133 = add nsw i64 %130, 63
  %134 = icmp slt i64 %111, %133
  %135 = select i1 %134, i64 %111, i64 %133
  %polly.loop_guard.not = icmp sgt i64 %132, %135
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit252.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit252.us ], [ 0, %polly.loop_header228 ]
  %136 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  %polly.access.add.call1248.us = add nuw nsw i64 %136, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %136, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1249.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %136, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1249.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %136, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1249.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1248.us.4 = add nuw nsw i64 %136, %polly.access.mul.call1247.us.4
  %polly.access.call1249.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.4
  %polly.access.call1249.load.us.4 = load double, double* %polly.access.call1249.us.4, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1249.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1248.us.5 = add nuw nsw i64 %136, %polly.access.mul.call1247.us.5
  %polly.access.call1249.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.5
  %polly.access.call1249.load.us.5 = load double, double* %polly.access.call1249.us.5, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1249.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1248.us.6 = add nuw nsw i64 %136, %polly.access.mul.call1247.us.6
  %polly.access.call1249.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.6
  %polly.access.call1249.load.us.6 = load double, double* %polly.access.call1249.us.6, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1249.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1248.us.7 = add nuw nsw i64 %136, %polly.access.mul.call1247.us.7
  %polly.access.call1249.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.7
  %polly.access.call1249.load.us.7 = load double, double* %polly.access.call1249.us.7, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1249.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit252.us, label %polly.loop_header250.us

polly.loop_header250.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header250.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header250.us ], [ %132, %polly.loop_header234.us ]
  %137 = add nuw nsw i64 %polly.indvar253.us, %110
  %polly.access.mul.call1257.us = mul nsw i64 %137, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %136, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.not.not.us = icmp slt i64 %polly.indvar253.us, %135
  br i1 %polly.loop_cond255.not.not.us, label %polly.loop_header250.us, label %polly.loop_exit252.us

polly.loop_exit252.us:                            ; preds = %polly.loop_header250.us, %polly.loop_header234.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1103.not, label %polly.loop_header263.preheader, label %polly.loop_header234.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_exit265:                               ; preds = %polly.loop_exit272, %polly.loop_header263.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1107 = add i64 %indvars.iv1106, -64
  %indvars.iv.next1111 = add i64 %indvars.iv1110, 64
  %exitcond1118.not = icmp eq i64 %polly.indvar_next232, 19
  %indvar.next1431 = add i64 %indvar1430, 1
  br i1 %exitcond1118.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit252
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit252 ], [ 0, %polly.loop_header228.split ]
  %138 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1260 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1100.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1100.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.loop_exit252, %polly.loop_exit252.us, %polly.loop_header228.split
  %139 = sub nsw i64 %110, %129
  %140 = icmp sgt i64 %139, 0
  %141 = select i1 %140, i64 %139, i64 0
  %142 = mul nsw i64 %polly.indvar231, -64
  %143 = icmp slt i64 %142, -1136
  %144 = select i1 %143, i64 %142, i64 -1136
  %145 = add nsw i64 %144, 1199
  %polly.loop_guard273.not = icmp sgt i64 %141, %145
  br i1 %polly.loop_guard273.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header250:                             ; preds = %polly.loop_header234, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %132, %polly.loop_header234 ]
  %146 = add nuw nsw i64 %polly.indvar253, %110
  %polly.access.mul.call1257 = mul nsw i64 %146, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %138, %polly.access.mul.call1257
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp slt i64 %polly.indvar253, %135
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_exit252

polly.loop_header263:                             ; preds = %polly.loop_header263.preheader, %polly.loop_exit272
  %polly.indvar266 = phi i64 [ %polly.indvar_next267, %polly.loop_exit272 ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1285 = mul nuw nsw i64 %polly.indvar266, 1200
  br label %polly.loop_header270

polly.loop_exit272:                               ; preds = %polly.loop_exit280
  %polly.indvar_next267 = add nuw nsw i64 %polly.indvar266, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar_next267, %97
  br i1 %exitcond1117.not, label %polly.loop_exit265, label %polly.loop_header263

polly.loop_header270:                             ; preds = %polly.loop_header263, %polly.loop_exit280
  %indvar1433 = phi i64 [ 0, %polly.loop_header263 ], [ %indvar.next1434, %polly.loop_exit280 ]
  %indvars.iv1112 = phi i64 [ %127, %polly.loop_header263 ], [ %indvars.iv.next1113, %polly.loop_exit280 ]
  %polly.indvar274 = phi i64 [ %141, %polly.loop_header263 ], [ %polly.indvar_next275, %polly.loop_exit280 ]
  %147 = add i64 %126, %indvar1433
  %smin1435 = call i64 @llvm.smin.i64(i64 %147, i64 7)
  %148 = add nsw i64 %smin1435, 1
  %smin1114 = call i64 @llvm.smin.i64(i64 %indvars.iv1112, i64 7)
  %149 = add nsw i64 %polly.indvar274, %130
  %polly.loop_guard2811224 = icmp sgt i64 %149, -1
  br i1 %polly.loop_guard2811224, label %polly.loop_header278.preheader, label %polly.loop_exit280

polly.loop_header278.preheader:                   ; preds = %polly.loop_header270
  %150 = add nuw nsw i64 %polly.indvar274, %129
  %polly.access.add.Packed_MemRef_call2290 = add nsw i64 %149, %polly.access.mul.Packed_MemRef_call1285
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %polly.access.Packed_MemRef_call1299 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290
  %_p_scalar_300 = load double, double* %polly.access.Packed_MemRef_call1299, align 8
  %151 = mul i64 %150, 9600
  %min.iters.check1436 = icmp ult i64 %148, 4
  br i1 %min.iters.check1436, label %polly.loop_header278.preheader1451, label %vector.ph1437

vector.ph1437:                                    ; preds = %polly.loop_header278.preheader
  %n.vec1439 = and i64 %148, -4
  %broadcast.splatinsert1445 = insertelement <4 x double> poison, double %_p_scalar_292, i32 0
  %broadcast.splat1446 = shufflevector <4 x double> %broadcast.splatinsert1445, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1448 = insertelement <4 x double> poison, double %_p_scalar_300, i32 0
  %broadcast.splat1449 = shufflevector <4 x double> %broadcast.splatinsert1448, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1429

vector.body1429:                                  ; preds = %vector.body1429, %vector.ph1437
  %index1440 = phi i64 [ 0, %vector.ph1437 ], [ %index.next1441, %vector.body1429 ]
  %152 = add nuw nsw i64 %index1440, %110
  %153 = add nuw nsw i64 %index1440, %polly.access.mul.Packed_MemRef_call1285
  %154 = getelementptr double, double* %Packed_MemRef_call1, i64 %153
  %155 = bitcast double* %154 to <4 x double>*
  %wide.load1444 = load <4 x double>, <4 x double>* %155, align 8
  %156 = fmul fast <4 x double> %broadcast.splat1446, %wide.load1444
  %157 = getelementptr double, double* %Packed_MemRef_call2, i64 %153
  %158 = bitcast double* %157 to <4 x double>*
  %wide.load1447 = load <4 x double>, <4 x double>* %158, align 8
  %159 = fmul fast <4 x double> %broadcast.splat1449, %wide.load1447
  %160 = shl i64 %152, 3
  %161 = add i64 %160, %151
  %162 = getelementptr i8, i8* %call, i64 %161
  %163 = bitcast i8* %162 to <4 x double>*
  %wide.load1450 = load <4 x double>, <4 x double>* %163, align 8, !alias.scope !72, !noalias !74
  %164 = fadd fast <4 x double> %159, %156
  %165 = fmul fast <4 x double> %164, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %166 = fadd fast <4 x double> %165, %wide.load1450
  %167 = bitcast i8* %162 to <4 x double>*
  store <4 x double> %166, <4 x double>* %167, align 8, !alias.scope !72, !noalias !74
  %index.next1441 = add i64 %index1440, 4
  %168 = icmp eq i64 %index.next1441, %n.vec1439
  br i1 %168, label %middle.block1427, label %vector.body1429, !llvm.loop !84

middle.block1427:                                 ; preds = %vector.body1429
  %cmp.n1443 = icmp eq i64 %148, %n.vec1439
  br i1 %cmp.n1443, label %polly.loop_exit280, label %polly.loop_header278.preheader1451

polly.loop_header278.preheader1451:               ; preds = %polly.loop_header278.preheader, %middle.block1427
  %polly.indvar282.ph = phi i64 [ 0, %polly.loop_header278.preheader ], [ %n.vec1439, %middle.block1427 ]
  br label %polly.loop_header278

polly.loop_exit280:                               ; preds = %polly.loop_header278, %middle.block1427, %polly.loop_header270
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %polly.loop_cond276.not.not = icmp slt i64 %polly.indvar274, %145
  %indvars.iv.next1113 = add i64 %indvars.iv1112, 1
  %indvar.next1434 = add i64 %indvar1433, 1
  br i1 %polly.loop_cond276.not.not, label %polly.loop_header270, label %polly.loop_exit272

polly.loop_header278:                             ; preds = %polly.loop_header278.preheader1451, %polly.loop_header278
  %polly.indvar282 = phi i64 [ %polly.indvar_next283, %polly.loop_header278 ], [ %polly.indvar282.ph, %polly.loop_header278.preheader1451 ]
  %169 = add nuw nsw i64 %polly.indvar282, %110
  %polly.access.add.Packed_MemRef_call1286 = add nuw nsw i64 %polly.indvar282, %polly.access.mul.Packed_MemRef_call1285
  %polly.access.Packed_MemRef_call1287 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call1287, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_292, %_p_scalar_288
  %polly.access.Packed_MemRef_call2295 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call2295, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_300, %_p_scalar_296
  %170 = shl i64 %169, 3
  %171 = add i64 %170, %151
  %scevgep301 = getelementptr i8, i8* %call, i64 %171
  %scevgep301302 = bitcast i8* %scevgep301 to double*
  %_p_scalar_303 = load double, double* %scevgep301302, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_303
  store double %p_add42.i118, double* %scevgep301302, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283 = add nuw nsw i64 %polly.indvar282, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar282, %smin1114
  br i1 %exitcond1115.not, label %polly.loop_exit280, label %polly.loop_header278, !llvm.loop !85

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall310 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1366 = phi i64 [ %indvar.next1367, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %172 = add i64 %indvar1366, 1
  %173 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %173
  %min.iters.check1368 = icmp ult i64 %172, 4
  br i1 %min.iters.check1368, label %polly.loop_header400.preheader, label %vector.ph1369

vector.ph1369:                                    ; preds = %polly.loop_header394
  %n.vec1371 = and i64 %172, -4
  br label %vector.body1365

vector.body1365:                                  ; preds = %vector.body1365, %vector.ph1369
  %index1372 = phi i64 [ 0, %vector.ph1369 ], [ %index.next1373, %vector.body1365 ]
  %174 = shl nuw nsw i64 %index1372, 3
  %175 = getelementptr i8, i8* %scevgep406, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  %wide.load1376 = load <4 x double>, <4 x double>* %176, align 8, !alias.scope !86, !noalias !88
  %177 = fmul fast <4 x double> %wide.load1376, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %178 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %177, <4 x double>* %178, align 8, !alias.scope !86, !noalias !88
  %index.next1373 = add i64 %index1372, 4
  %179 = icmp eq i64 %index.next1373, %n.vec1371
  br i1 %179, label %middle.block1363, label %vector.body1365, !llvm.loop !93

middle.block1363:                                 ; preds = %vector.body1365
  %cmp.n1375 = icmp eq i64 %172, %n.vec1371
  br i1 %cmp.n1375, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1363
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1371, %middle.block1363 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1363
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1154.not = icmp eq i64 %polly.indvar_next398, 1200
  %indvar.next1367 = add i64 %indvar1366, 1
  br i1 %exitcond1154.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %180 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %180
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1153.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1153.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !94

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %indvars.iv1126 = phi i64 [ 0, %polly.loop_header410.preheader ], [ %indvars.iv.next1127, %polly.loop_exit418 ]
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header410.preheader ], [ %polly.indvar_next414, %polly.loop_exit418 ]
  %smin1148 = call i64 @llvm.smin.i64(i64 %indvars.iv1126, i64 -968)
  %181 = add nsw i64 %smin1148, 1000
  %182 = shl nsw i64 %polly.indvar413, 5
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit441
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %indvars.iv.next1127 = add nsw i64 %indvars.iv1126, -32
  %exitcond1152.not = icmp eq i64 %polly.indvar_next414, 32
  br i1 %exitcond1152.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit441, %polly.loop_header410
  %indvars.iv1140 = phi i64 [ %indvars.iv.next1141, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit441 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %203, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %183 = shl nuw nsw i64 %polly.indvar419, 3
  %184 = shl nuw nsw i64 %polly.indvar419, 3
  %185 = and i64 %184, 9223372036854775744
  %186 = sub nsw i64 %183, %185
  %187 = mul nsw i64 %polly.indvar419, -8
  %188 = add i64 %187, %185
  %189 = lshr i64 %polly.indvar419, 3
  %190 = shl nuw nsw i64 %189, 6
  %191 = sub nsw i64 %indvars.iv1135, %190
  %192 = add i64 %indvars.iv1140, %190
  %193 = mul nsw i64 %polly.indvar419, -8
  %194 = shl nsw i64 %polly.indvar419, 3
  br label %polly.loop_header422

polly.loop_exit424:                               ; preds = %polly.loop_exit430
  %195 = add nsw i64 %193, 1199
  %polly.access.mul.call1462.us = mul nsw i64 %polly.indvar419, 8000
  %196 = or i64 %194, 1
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %196, 1000
  %197 = or i64 %194, 2
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %197, 1000
  %198 = or i64 %194, 3
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %198, 1000
  %199 = or i64 %194, 4
  %polly.access.mul.call1462.us.4 = mul nuw nsw i64 %199, 1000
  %200 = or i64 %194, 5
  %polly.access.mul.call1462.us.5 = mul nuw nsw i64 %200, 1000
  %201 = or i64 %194, 6
  %polly.access.mul.call1462.us.6 = mul nuw nsw i64 %201, 1000
  %202 = or i64 %194, 7
  %polly.access.mul.call1462.us.7 = mul nuw nsw i64 %202, 1000
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit482
  %203 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1124 = add nsw i64 %indvars.iv1123, -8
  %indvars.iv.next1136 = add nuw nsw i64 %indvars.iv1135, 8
  %indvars.iv.next1141 = add nsw i64 %indvars.iv1140, -8
  %exitcond1151.not = icmp eq i64 %203, 150
  br i1 %exitcond1151.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_exit430, %polly.loop_header416
  %polly.indvar425 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next426, %polly.loop_exit430 ]
  %204 = add nuw nsw i64 %polly.indvar425, %182
  %polly.access.mul.Packed_MemRef_call2311 = mul nuw nsw i64 %polly.indvar425, 1200
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_header428
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next426, %181
  br i1 %exitcond1129.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %205 = add nuw nsw i64 %polly.indvar431, %194
  %polly.access.mul.call2435 = mul nuw nsw i64 %205, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %204, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2311 = add nuw nsw i64 %polly.indvar431, %polly.access.mul.Packed_MemRef_call2311
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1123
  br i1 %exitcond1125.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header439:                             ; preds = %polly.loop_exit482, %polly.loop_exit424
  %indvar1380 = phi i64 [ %indvar.next1381, %polly.loop_exit482 ], [ 0, %polly.loop_exit424 ]
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143, %polly.loop_exit482 ], [ %192, %polly.loop_exit424 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit482 ], [ %191, %polly.loop_exit424 ]
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_exit482 ], [ %189, %polly.loop_exit424 ]
  %206 = mul nsw i64 %indvar1380, -64
  %207 = add i64 %186, %206
  %smax1382 = call i64 @llvm.smax.i64(i64 %207, i64 0)
  %208 = shl nuw nsw i64 %indvar1380, 6
  %209 = add i64 %188, %208
  %210 = add i64 %smax1382, %209
  %smax1139 = call i64 @llvm.smax.i64(i64 %indvars.iv1137, i64 0)
  %211 = add i64 %smax1139, %indvars.iv1142
  %212 = shl nsw i64 %polly.indvar442, 3
  %.not.not944 = icmp ugt i64 %212, %polly.indvar419
  %213 = shl nsw i64 %polly.indvar442, 6
  %214 = add nsw i64 %213, %193
  %215 = icmp sgt i64 %214, 0
  %216 = select i1 %215, i64 %214, i64 0
  %217 = add nsw i64 %214, 63
  %218 = icmp slt i64 %195, %217
  %219 = select i1 %218, i64 %195, i64 %217
  %polly.loop_guard469.not = icmp sgt i64 %216, %219
  br i1 %.not.not944, label %polly.loop_header445.us, label %polly.loop_header439.split

polly.loop_header445.us:                          ; preds = %polly.loop_header439, %polly.loop_exit468.us
  %polly.indvar448.us = phi i64 [ %polly.indvar_next449.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header439 ]
  %220 = add nuw nsw i64 %polly.indvar448.us, %182
  %polly.access.mul.Packed_MemRef_call1309.us = mul nuw nsw i64 %polly.indvar448.us, 1200
  %polly.access.add.call1463.us = add nuw nsw i64 %220, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.mul.Packed_MemRef_call1309.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %220, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 1
  %polly.access.Packed_MemRef_call1309.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.1
  store double %polly.access.call1464.load.us.1, double* %polly.access.Packed_MemRef_call1309.us.1, align 8
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %220, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 2
  %polly.access.Packed_MemRef_call1309.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.2
  store double %polly.access.call1464.load.us.2, double* %polly.access.Packed_MemRef_call1309.us.2, align 8
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %220, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 3
  %polly.access.Packed_MemRef_call1309.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.3
  store double %polly.access.call1464.load.us.3, double* %polly.access.Packed_MemRef_call1309.us.3, align 8
  %polly.access.add.call1463.us.4 = add nuw nsw i64 %220, %polly.access.mul.call1462.us.4
  %polly.access.call1464.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.4
  %polly.access.call1464.load.us.4 = load double, double* %polly.access.call1464.us.4, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 4
  %polly.access.Packed_MemRef_call1309.us.4 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.4
  store double %polly.access.call1464.load.us.4, double* %polly.access.Packed_MemRef_call1309.us.4, align 8
  %polly.access.add.call1463.us.5 = add nuw nsw i64 %220, %polly.access.mul.call1462.us.5
  %polly.access.call1464.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.5
  %polly.access.call1464.load.us.5 = load double, double* %polly.access.call1464.us.5, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 5
  %polly.access.Packed_MemRef_call1309.us.5 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.5
  store double %polly.access.call1464.load.us.5, double* %polly.access.Packed_MemRef_call1309.us.5, align 8
  %polly.access.add.call1463.us.6 = add nuw nsw i64 %220, %polly.access.mul.call1462.us.6
  %polly.access.call1464.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.6
  %polly.access.call1464.load.us.6 = load double, double* %polly.access.call1464.us.6, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 6
  %polly.access.Packed_MemRef_call1309.us.6 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.6
  store double %polly.access.call1464.load.us.6, double* %polly.access.Packed_MemRef_call1309.us.6, align 8
  %polly.access.add.call1463.us.7 = add nuw nsw i64 %220, %polly.access.mul.call1462.us.7
  %polly.access.call1464.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.7
  %polly.access.call1464.load.us.7 = load double, double* %polly.access.call1464.us.7, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1309.us, 7
  %polly.access.Packed_MemRef_call1309.us.7 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us.7
  store double %polly.access.call1464.load.us.7, double* %polly.access.Packed_MemRef_call1309.us.7, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header466.us:                          ; preds = %polly.loop_header445.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %216, %polly.loop_header445.us ]
  %221 = add nuw nsw i64 %polly.indvar470.us, %194
  %polly.access.mul.call1474.us = mul nsw i64 %221, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %220, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309479.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1309479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %219
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.loop_header445.us
  %polly.indvar_next449.us = add nuw nsw i64 %polly.indvar448.us, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next449.us, %181
  br i1 %exitcond1134.not, label %polly.loop_header480.preheader, label %polly.loop_header445.us

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header445

polly.loop_exit482:                               ; preds = %polly.loop_exit489, %polly.loop_header480.preheader
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %indvars.iv.next1138 = add i64 %indvars.iv1137, -64
  %indvars.iv.next1143 = add i64 %indvars.iv1142, 64
  %exitcond1150.not = icmp eq i64 %polly.indvar_next443, 19
  %indvar.next1381 = add i64 %indvar1380, 1
  br i1 %exitcond1150.not, label %polly.loop_exit441, label %polly.loop_header439

polly.loop_header445:                             ; preds = %polly.loop_header439.split, %polly.loop_exit468
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_exit468 ], [ 0, %polly.loop_header439.split ]
  %222 = add nuw nsw i64 %polly.indvar448, %182
  %polly.access.mul.Packed_MemRef_call1309477 = mul nuw nsw i64 %polly.indvar448, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar_next449, %181
  br i1 %exitcond1131.not, label %polly.loop_header480.preheader, label %polly.loop_header445

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header439.split
  %223 = sub nsw i64 %194, %213
  %224 = icmp sgt i64 %223, 0
  %225 = select i1 %224, i64 %223, i64 0
  %226 = mul nsw i64 %polly.indvar442, -64
  %227 = icmp slt i64 %226, -1136
  %228 = select i1 %227, i64 %226, i64 -1136
  %229 = add nsw i64 %228, 1199
  %polly.loop_guard490.not = icmp sgt i64 %225, %229
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header466:                             ; preds = %polly.loop_header445, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %216, %polly.loop_header445 ]
  %230 = add nuw nsw i64 %polly.indvar470, %194
  %polly.access.mul.call1474 = mul nsw i64 %230, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %222, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1309477
  %polly.access.Packed_MemRef_call1309479 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1309479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %219
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.loop_header480:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit489
  %polly.indvar483 = phi i64 [ %polly.indvar_next484, %polly.loop_exit489 ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1309502 = mul nuw nsw i64 %polly.indvar483, 1200
  br label %polly.loop_header487

polly.loop_exit489:                               ; preds = %polly.loop_exit497
  %polly.indvar_next484 = add nuw nsw i64 %polly.indvar483, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar_next484, %181
  br i1 %exitcond1149.not, label %polly.loop_exit482, label %polly.loop_header480

polly.loop_header487:                             ; preds = %polly.loop_header480, %polly.loop_exit497
  %indvar1383 = phi i64 [ 0, %polly.loop_header480 ], [ %indvar.next1384, %polly.loop_exit497 ]
  %indvars.iv1144 = phi i64 [ %211, %polly.loop_header480 ], [ %indvars.iv.next1145, %polly.loop_exit497 ]
  %polly.indvar491 = phi i64 [ %225, %polly.loop_header480 ], [ %polly.indvar_next492, %polly.loop_exit497 ]
  %231 = add i64 %210, %indvar1383
  %smin1385 = call i64 @llvm.smin.i64(i64 %231, i64 7)
  %232 = add nsw i64 %smin1385, 1
  %smin1146 = call i64 @llvm.smin.i64(i64 %indvars.iv1144, i64 7)
  %233 = add nsw i64 %polly.indvar491, %214
  %polly.loop_guard4981225 = icmp sgt i64 %233, -1
  br i1 %polly.loop_guard4981225, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %234 = add nuw nsw i64 %polly.indvar491, %213
  %polly.access.add.Packed_MemRef_call2311507 = add nsw i64 %233, %polly.access.mul.Packed_MemRef_call1309502
  %polly.access.Packed_MemRef_call2311508 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2311508, align 8
  %polly.access.Packed_MemRef_call1309516 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1309516, align 8
  %235 = mul i64 %234, 9600
  %min.iters.check1386 = icmp ult i64 %232, 4
  br i1 %min.iters.check1386, label %polly.loop_header495.preheader1455, label %vector.ph1387

vector.ph1387:                                    ; preds = %polly.loop_header495.preheader
  %n.vec1389 = and i64 %232, -4
  %broadcast.splatinsert1395 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1396 = shufflevector <4 x double> %broadcast.splatinsert1395, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1398 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1399 = shufflevector <4 x double> %broadcast.splatinsert1398, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1379

vector.body1379:                                  ; preds = %vector.body1379, %vector.ph1387
  %index1390 = phi i64 [ 0, %vector.ph1387 ], [ %index.next1391, %vector.body1379 ]
  %236 = add nuw nsw i64 %index1390, %194
  %237 = add nuw nsw i64 %index1390, %polly.access.mul.Packed_MemRef_call1309502
  %238 = getelementptr double, double* %Packed_MemRef_call1309, i64 %237
  %239 = bitcast double* %238 to <4 x double>*
  %wide.load1394 = load <4 x double>, <4 x double>* %239, align 8
  %240 = fmul fast <4 x double> %broadcast.splat1396, %wide.load1394
  %241 = getelementptr double, double* %Packed_MemRef_call2311, i64 %237
  %242 = bitcast double* %241 to <4 x double>*
  %wide.load1397 = load <4 x double>, <4 x double>* %242, align 8
  %243 = fmul fast <4 x double> %broadcast.splat1399, %wide.load1397
  %244 = shl i64 %236, 3
  %245 = add i64 %244, %235
  %246 = getelementptr i8, i8* %call, i64 %245
  %247 = bitcast i8* %246 to <4 x double>*
  %wide.load1400 = load <4 x double>, <4 x double>* %247, align 8, !alias.scope !86, !noalias !88
  %248 = fadd fast <4 x double> %243, %240
  %249 = fmul fast <4 x double> %248, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %250 = fadd fast <4 x double> %249, %wide.load1400
  %251 = bitcast i8* %246 to <4 x double>*
  store <4 x double> %250, <4 x double>* %251, align 8, !alias.scope !86, !noalias !88
  %index.next1391 = add i64 %index1390, 4
  %252 = icmp eq i64 %index.next1391, %n.vec1389
  br i1 %252, label %middle.block1377, label %vector.body1379, !llvm.loop !97

middle.block1377:                                 ; preds = %vector.body1379
  %cmp.n1393 = icmp eq i64 %232, %n.vec1389
  br i1 %cmp.n1393, label %polly.loop_exit497, label %polly.loop_header495.preheader1455

polly.loop_header495.preheader1455:               ; preds = %polly.loop_header495.preheader, %middle.block1377
  %polly.indvar499.ph = phi i64 [ 0, %polly.loop_header495.preheader ], [ %n.vec1389, %middle.block1377 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1377, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %229
  %indvars.iv.next1145 = add i64 %indvars.iv1144, 1
  %indvar.next1384 = add i64 %indvar1383, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_exit489

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1455, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1455 ]
  %253 = add nuw nsw i64 %polly.indvar499, %194
  %polly.access.add.Packed_MemRef_call1309503 = add nuw nsw i64 %polly.indvar499, %polly.access.mul.Packed_MemRef_call1309502
  %polly.access.Packed_MemRef_call1309504 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1309504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2311512 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2311512, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_517, %_p_scalar_513
  %254 = shl i64 %253, 3
  %255 = add i64 %254, %235
  %scevgep518 = getelementptr i8, i8* %call, i64 %255
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_520
  store double %p_add42.i79, double* %scevgep518519, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar499, %smin1146
  br i1 %exitcond1147.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !98

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall527 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %256 = add i64 %indvar, 1
  %257 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %257
  %min.iters.check1318 = icmp ult i64 %256, 4
  br i1 %min.iters.check1318, label %polly.loop_header617.preheader, label %vector.ph1319

vector.ph1319:                                    ; preds = %polly.loop_header611
  %n.vec1321 = and i64 %256, -4
  br label %vector.body1317

vector.body1317:                                  ; preds = %vector.body1317, %vector.ph1319
  %index1322 = phi i64 [ 0, %vector.ph1319 ], [ %index.next1323, %vector.body1317 ]
  %258 = shl nuw nsw i64 %index1322, 3
  %259 = getelementptr i8, i8* %scevgep623, i64 %258
  %260 = bitcast i8* %259 to <4 x double>*
  %wide.load1326 = load <4 x double>, <4 x double>* %260, align 8, !alias.scope !99, !noalias !101
  %261 = fmul fast <4 x double> %wide.load1326, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %262 = bitcast i8* %259 to <4 x double>*
  store <4 x double> %261, <4 x double>* %262, align 8, !alias.scope !99, !noalias !101
  %index.next1323 = add i64 %index1322, 4
  %263 = icmp eq i64 %index.next1323, %n.vec1321
  br i1 %263, label %middle.block1315, label %vector.body1317, !llvm.loop !106

middle.block1315:                                 ; preds = %vector.body1317
  %cmp.n1325 = icmp eq i64 %256, %n.vec1321
  br i1 %cmp.n1325, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1315
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1321, %middle.block1315 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1315
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1186.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %264 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %264
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1185.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !107

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %indvars.iv1158 = phi i64 [ 0, %polly.loop_header627.preheader ], [ %indvars.iv.next1159, %polly.loop_exit635 ]
  %polly.indvar630 = phi i64 [ 0, %polly.loop_header627.preheader ], [ %polly.indvar_next631, %polly.loop_exit635 ]
  %smin1180 = call i64 @llvm.smin.i64(i64 %indvars.iv1158, i64 -968)
  %265 = add nsw i64 %smin1180, 1000
  %266 = shl nsw i64 %polly.indvar630, 5
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1159 = add nsw i64 %indvars.iv1158, -32
  %exitcond1184.not = icmp eq i64 %polly.indvar_next631, 32
  br i1 %exitcond1184.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1172 = phi i64 [ %indvars.iv.next1173, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1167 = phi i64 [ %indvars.iv.next1168, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %287, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %267 = shl nuw nsw i64 %polly.indvar636, 3
  %268 = shl nuw nsw i64 %polly.indvar636, 3
  %269 = and i64 %268, 9223372036854775744
  %270 = sub nsw i64 %267, %269
  %271 = mul nsw i64 %polly.indvar636, -8
  %272 = add i64 %271, %269
  %273 = lshr i64 %polly.indvar636, 3
  %274 = shl nuw nsw i64 %273, 6
  %275 = sub nsw i64 %indvars.iv1167, %274
  %276 = add i64 %indvars.iv1172, %274
  %277 = mul nsw i64 %polly.indvar636, -8
  %278 = shl nsw i64 %polly.indvar636, 3
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %279 = add nsw i64 %277, 1199
  %polly.access.mul.call1679.us = mul nsw i64 %polly.indvar636, 8000
  %280 = or i64 %278, 1
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %280, 1000
  %281 = or i64 %278, 2
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %281, 1000
  %282 = or i64 %278, 3
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %282, 1000
  %283 = or i64 %278, 4
  %polly.access.mul.call1679.us.4 = mul nuw nsw i64 %283, 1000
  %284 = or i64 %278, 5
  %polly.access.mul.call1679.us.5 = mul nuw nsw i64 %284, 1000
  %285 = or i64 %278, 6
  %polly.access.mul.call1679.us.6 = mul nuw nsw i64 %285, 1000
  %286 = or i64 %278, 7
  %polly.access.mul.call1679.us.7 = mul nuw nsw i64 %286, 1000
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit699
  %287 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1156 = add nsw i64 %indvars.iv1155, -8
  %indvars.iv.next1168 = add nuw nsw i64 %indvars.iv1167, 8
  %indvars.iv.next1173 = add nsw i64 %indvars.iv1172, -8
  %exitcond1183.not = icmp eq i64 %287, 150
  br i1 %exitcond1183.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %288 = add nuw nsw i64 %polly.indvar642, %266
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar_next643, %265
  br i1 %exitcond1161.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %289 = add nuw nsw i64 %polly.indvar648, %278
  %polly.access.mul.call2652 = mul nuw nsw i64 %289, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %288, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1155
  br i1 %exitcond1157.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit699, %polly.loop_exit641
  %indvar1330 = phi i64 [ %indvar.next1331, %polly.loop_exit699 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1174 = phi i64 [ %indvars.iv.next1175, %polly.loop_exit699 ], [ %276, %polly.loop_exit641 ]
  %indvars.iv1169 = phi i64 [ %indvars.iv.next1170, %polly.loop_exit699 ], [ %275, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit699 ], [ %273, %polly.loop_exit641 ]
  %290 = mul nsw i64 %indvar1330, -64
  %291 = add i64 %270, %290
  %smax1332 = call i64 @llvm.smax.i64(i64 %291, i64 0)
  %292 = shl nuw nsw i64 %indvar1330, 6
  %293 = add i64 %272, %292
  %294 = add i64 %smax1332, %293
  %smax1171 = call i64 @llvm.smax.i64(i64 %indvars.iv1169, i64 0)
  %295 = add i64 %smax1171, %indvars.iv1174
  %296 = shl nsw i64 %polly.indvar659, 3
  %.not.not945 = icmp ugt i64 %296, %polly.indvar636
  %297 = shl nsw i64 %polly.indvar659, 6
  %298 = add nsw i64 %297, %277
  %299 = icmp sgt i64 %298, 0
  %300 = select i1 %299, i64 %298, i64 0
  %301 = add nsw i64 %298, 63
  %302 = icmp slt i64 %279, %301
  %303 = select i1 %302, i64 %279, i64 %301
  %polly.loop_guard686.not = icmp sgt i64 %300, %303
  br i1 %.not.not945, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit685.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit685.us ], [ 0, %polly.loop_header656 ]
  %304 = add nuw nsw i64 %polly.indvar665.us, %266
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  %polly.access.add.call1680.us = add nuw nsw i64 %304, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.mul.Packed_MemRef_call1526.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %304, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 1
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1526.us.1, align 8
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %304, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 2
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1526.us.2, align 8
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %304, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 3
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1526.us.3, align 8
  %polly.access.add.call1680.us.4 = add nuw nsw i64 %304, %polly.access.mul.call1679.us.4
  %polly.access.call1681.us.4 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.4
  %polly.access.call1681.load.us.4 = load double, double* %polly.access.call1681.us.4, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 4
  %polly.access.Packed_MemRef_call1526.us.4 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.4
  store double %polly.access.call1681.load.us.4, double* %polly.access.Packed_MemRef_call1526.us.4, align 8
  %polly.access.add.call1680.us.5 = add nuw nsw i64 %304, %polly.access.mul.call1679.us.5
  %polly.access.call1681.us.5 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.5
  %polly.access.call1681.load.us.5 = load double, double* %polly.access.call1681.us.5, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 5
  %polly.access.Packed_MemRef_call1526.us.5 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.5
  store double %polly.access.call1681.load.us.5, double* %polly.access.Packed_MemRef_call1526.us.5, align 8
  %polly.access.add.call1680.us.6 = add nuw nsw i64 %304, %polly.access.mul.call1679.us.6
  %polly.access.call1681.us.6 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.6
  %polly.access.call1681.load.us.6 = load double, double* %polly.access.call1681.us.6, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 6
  %polly.access.Packed_MemRef_call1526.us.6 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.6
  store double %polly.access.call1681.load.us.6, double* %polly.access.Packed_MemRef_call1526.us.6, align 8
  %polly.access.add.call1680.us.7 = add nuw nsw i64 %304, %polly.access.mul.call1679.us.7
  %polly.access.call1681.us.7 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.7
  %polly.access.call1681.load.us.7 = load double, double* %polly.access.call1681.us.7, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1526.us, 7
  %polly.access.Packed_MemRef_call1526.us.7 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us.7
  store double %polly.access.call1681.load.us.7, double* %polly.access.Packed_MemRef_call1526.us.7, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_exit685.us, label %polly.loop_header683.us

polly.loop_header683.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header683.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_header683.us ], [ %300, %polly.loop_header662.us ]
  %305 = add nuw nsw i64 %polly.indvar687.us, %278
  %polly.access.mul.call1691.us = mul nsw i64 %305, 1000
  %polly.access.add.call1692.us = add nuw nsw i64 %304, %polly.access.mul.call1691.us
  %polly.access.call1693.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us
  %polly.access.call1693.load.us = load double, double* %polly.access.call1693.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526695.us = add nuw nsw i64 %polly.indvar687.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526696.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us
  store double %polly.access.call1693.load.us, double* %polly.access.Packed_MemRef_call1526696.us, align 8
  %polly.indvar_next688.us = add nuw nsw i64 %polly.indvar687.us, 1
  %polly.loop_cond689.not.not.us = icmp slt i64 %polly.indvar687.us, %303
  br i1 %polly.loop_cond689.not.not.us, label %polly.loop_header683.us, label %polly.loop_exit685.us

polly.loop_exit685.us:                            ; preds = %polly.loop_header683.us, %polly.loop_header662.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar_next666.us, %265
  br i1 %exitcond1166.not, label %polly.loop_header697.preheader, label %polly.loop_header662.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header662

polly.loop_exit699:                               ; preds = %polly.loop_exit706, %polly.loop_header697.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %indvars.iv.next1170 = add i64 %indvars.iv1169, -64
  %indvars.iv.next1175 = add i64 %indvars.iv1174, 64
  %exitcond1182.not = icmp eq i64 %polly.indvar_next660, 19
  %indvar.next1331 = add i64 %indvar1330, 1
  br i1 %exitcond1182.not, label %polly.loop_exit658, label %polly.loop_header656

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit685
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit685 ], [ 0, %polly.loop_header656.split ]
  %306 = add nuw nsw i64 %polly.indvar665, %266
  %polly.access.mul.Packed_MemRef_call1526694 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header683

polly.loop_exit685:                               ; preds = %polly.loop_header683
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next666, %265
  br i1 %exitcond1163.not, label %polly.loop_header697.preheader, label %polly.loop_header662

polly.loop_header697.preheader:                   ; preds = %polly.loop_exit685, %polly.loop_exit685.us, %polly.loop_header656.split
  %307 = sub nsw i64 %278, %297
  %308 = icmp sgt i64 %307, 0
  %309 = select i1 %308, i64 %307, i64 0
  %310 = mul nsw i64 %polly.indvar659, -64
  %311 = icmp slt i64 %310, -1136
  %312 = select i1 %311, i64 %310, i64 -1136
  %313 = add nsw i64 %312, 1199
  %polly.loop_guard707.not = icmp sgt i64 %309, %313
  br i1 %polly.loop_guard707.not, label %polly.loop_exit699, label %polly.loop_header697

polly.loop_header683:                             ; preds = %polly.loop_header662, %polly.loop_header683
  %polly.indvar687 = phi i64 [ %polly.indvar_next688, %polly.loop_header683 ], [ %300, %polly.loop_header662 ]
  %314 = add nuw nsw i64 %polly.indvar687, %278
  %polly.access.mul.call1691 = mul nsw i64 %314, 1000
  %polly.access.add.call1692 = add nuw nsw i64 %306, %polly.access.mul.call1691
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526695 = add nuw nsw i64 %polly.indvar687, %polly.access.mul.Packed_MemRef_call1526694
  %polly.access.Packed_MemRef_call1526696 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1526696, align 8
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %polly.loop_cond689.not.not = icmp slt i64 %polly.indvar687, %303
  br i1 %polly.loop_cond689.not.not, label %polly.loop_header683, label %polly.loop_exit685

polly.loop_header697:                             ; preds = %polly.loop_header697.preheader, %polly.loop_exit706
  %polly.indvar700 = phi i64 [ %polly.indvar_next701, %polly.loop_exit706 ], [ 0, %polly.loop_header697.preheader ]
  %polly.access.mul.Packed_MemRef_call1526719 = mul nuw nsw i64 %polly.indvar700, 1200
  br label %polly.loop_header704

polly.loop_exit706:                               ; preds = %polly.loop_exit714
  %polly.indvar_next701 = add nuw nsw i64 %polly.indvar700, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar_next701, %265
  br i1 %exitcond1181.not, label %polly.loop_exit699, label %polly.loop_header697

polly.loop_header704:                             ; preds = %polly.loop_header697, %polly.loop_exit714
  %indvar1333 = phi i64 [ 0, %polly.loop_header697 ], [ %indvar.next1334, %polly.loop_exit714 ]
  %indvars.iv1176 = phi i64 [ %295, %polly.loop_header697 ], [ %indvars.iv.next1177, %polly.loop_exit714 ]
  %polly.indvar708 = phi i64 [ %309, %polly.loop_header697 ], [ %polly.indvar_next709, %polly.loop_exit714 ]
  %315 = add i64 %294, %indvar1333
  %smin1335 = call i64 @llvm.smin.i64(i64 %315, i64 7)
  %316 = add nsw i64 %smin1335, 1
  %smin1178 = call i64 @llvm.smin.i64(i64 %indvars.iv1176, i64 7)
  %317 = add nsw i64 %polly.indvar708, %298
  %polly.loop_guard7151226 = icmp sgt i64 %317, -1
  br i1 %polly.loop_guard7151226, label %polly.loop_header712.preheader, label %polly.loop_exit714

polly.loop_header712.preheader:                   ; preds = %polly.loop_header704
  %318 = add nuw nsw i64 %polly.indvar708, %297
  %polly.access.add.Packed_MemRef_call2528724 = add nsw i64 %317, %polly.access.mul.Packed_MemRef_call1526719
  %polly.access.Packed_MemRef_call2528725 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724
  %_p_scalar_726 = load double, double* %polly.access.Packed_MemRef_call2528725, align 8
  %polly.access.Packed_MemRef_call1526733 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724
  %_p_scalar_734 = load double, double* %polly.access.Packed_MemRef_call1526733, align 8
  %319 = mul i64 %318, 9600
  %min.iters.check1336 = icmp ult i64 %316, 4
  br i1 %min.iters.check1336, label %polly.loop_header712.preheader1459, label %vector.ph1337

vector.ph1337:                                    ; preds = %polly.loop_header712.preheader
  %n.vec1339 = and i64 %316, -4
  %broadcast.splatinsert1345 = insertelement <4 x double> poison, double %_p_scalar_726, i32 0
  %broadcast.splat1346 = shufflevector <4 x double> %broadcast.splatinsert1345, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1348 = insertelement <4 x double> poison, double %_p_scalar_734, i32 0
  %broadcast.splat1349 = shufflevector <4 x double> %broadcast.splatinsert1348, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1329

vector.body1329:                                  ; preds = %vector.body1329, %vector.ph1337
  %index1340 = phi i64 [ 0, %vector.ph1337 ], [ %index.next1341, %vector.body1329 ]
  %320 = add nuw nsw i64 %index1340, %278
  %321 = add nuw nsw i64 %index1340, %polly.access.mul.Packed_MemRef_call1526719
  %322 = getelementptr double, double* %Packed_MemRef_call1526, i64 %321
  %323 = bitcast double* %322 to <4 x double>*
  %wide.load1344 = load <4 x double>, <4 x double>* %323, align 8
  %324 = fmul fast <4 x double> %broadcast.splat1346, %wide.load1344
  %325 = getelementptr double, double* %Packed_MemRef_call2528, i64 %321
  %326 = bitcast double* %325 to <4 x double>*
  %wide.load1347 = load <4 x double>, <4 x double>* %326, align 8
  %327 = fmul fast <4 x double> %broadcast.splat1349, %wide.load1347
  %328 = shl i64 %320, 3
  %329 = add i64 %328, %319
  %330 = getelementptr i8, i8* %call, i64 %329
  %331 = bitcast i8* %330 to <4 x double>*
  %wide.load1350 = load <4 x double>, <4 x double>* %331, align 8, !alias.scope !99, !noalias !101
  %332 = fadd fast <4 x double> %327, %324
  %333 = fmul fast <4 x double> %332, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %334 = fadd fast <4 x double> %333, %wide.load1350
  %335 = bitcast i8* %330 to <4 x double>*
  store <4 x double> %334, <4 x double>* %335, align 8, !alias.scope !99, !noalias !101
  %index.next1341 = add i64 %index1340, 4
  %336 = icmp eq i64 %index.next1341, %n.vec1339
  br i1 %336, label %middle.block1327, label %vector.body1329, !llvm.loop !110

middle.block1327:                                 ; preds = %vector.body1329
  %cmp.n1343 = icmp eq i64 %316, %n.vec1339
  br i1 %cmp.n1343, label %polly.loop_exit714, label %polly.loop_header712.preheader1459

polly.loop_header712.preheader1459:               ; preds = %polly.loop_header712.preheader, %middle.block1327
  %polly.indvar716.ph = phi i64 [ 0, %polly.loop_header712.preheader ], [ %n.vec1339, %middle.block1327 ]
  br label %polly.loop_header712

polly.loop_exit714:                               ; preds = %polly.loop_header712, %middle.block1327, %polly.loop_header704
  %polly.indvar_next709 = add nuw nsw i64 %polly.indvar708, 1
  %polly.loop_cond710.not.not = icmp slt i64 %polly.indvar708, %313
  %indvars.iv.next1177 = add i64 %indvars.iv1176, 1
  %indvar.next1334 = add i64 %indvar1333, 1
  br i1 %polly.loop_cond710.not.not, label %polly.loop_header704, label %polly.loop_exit706

polly.loop_header712:                             ; preds = %polly.loop_header712.preheader1459, %polly.loop_header712
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_header712 ], [ %polly.indvar716.ph, %polly.loop_header712.preheader1459 ]
  %337 = add nuw nsw i64 %polly.indvar716, %278
  %polly.access.add.Packed_MemRef_call1526720 = add nuw nsw i64 %polly.indvar716, %polly.access.mul.Packed_MemRef_call1526719
  %polly.access.Packed_MemRef_call1526721 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720
  %_p_scalar_722 = load double, double* %polly.access.Packed_MemRef_call1526721, align 8
  %p_mul27.i = fmul fast double %_p_scalar_726, %_p_scalar_722
  %polly.access.Packed_MemRef_call2528729 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720
  %_p_scalar_730 = load double, double* %polly.access.Packed_MemRef_call2528729, align 8
  %p_mul37.i = fmul fast double %_p_scalar_734, %_p_scalar_730
  %338 = shl i64 %337, 3
  %339 = add i64 %338, %319
  %scevgep735 = getelementptr i8, i8* %call, i64 %339
  %scevgep735736 = bitcast i8* %scevgep735 to double*
  %_p_scalar_737 = load double, double* %scevgep735736, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_737
  store double %p_add42.i, double* %scevgep735736, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %exitcond1179.not = icmp eq i64 %polly.indvar716, %smin1178
  br i1 %exitcond1179.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !111

polly.loop_header864:                             ; preds = %entry, %polly.loop_exit872
  %indvars.iv1211 = phi i64 [ %indvars.iv.next1212, %polly.loop_exit872 ], [ 0, %entry ]
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_exit872 ], [ 0, %entry ]
  %smin1213 = call i64 @llvm.smin.i64(i64 %indvars.iv1211, i64 -1168)
  %340 = shl nsw i64 %polly.indvar867, 5
  %341 = add nsw i64 %smin1213, 1199
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1212 = add nsw i64 %indvars.iv1211, -32
  %exitcond1216.not = icmp eq i64 %polly.indvar_next868, 38
  br i1 %exitcond1216.not, label %polly.loop_header891, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %indvars.iv1207 = phi i64 [ %indvars.iv.next1208, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %342 = mul nsw i64 %polly.indvar873, -32
  %smin = call i64 @llvm.smin.i64(i64 %342, i64 -1168)
  %343 = add nsw i64 %smin, 1200
  %smin1209 = call i64 @llvm.smin.i64(i64 %indvars.iv1207, i64 -1168)
  %344 = shl nsw i64 %polly.indvar873, 5
  %345 = add nsw i64 %smin1209, 1199
  br label %polly.loop_header876

polly.loop_exit878:                               ; preds = %polly.loop_exit884
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %indvars.iv.next1208 = add nsw i64 %indvars.iv1207, -32
  %exitcond1215.not = icmp eq i64 %polly.indvar_next874, 38
  br i1 %exitcond1215.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_exit884, %polly.loop_header870
  %polly.indvar879 = phi i64 [ 0, %polly.loop_header870 ], [ %polly.indvar_next880, %polly.loop_exit884 ]
  %346 = add nuw nsw i64 %polly.indvar879, %340
  %347 = trunc i64 %346 to i32
  %348 = mul nuw nsw i64 %346, 9600
  %min.iters.check = icmp eq i64 %343, 0
  br i1 %min.iters.check, label %polly.loop_header882, label %vector.ph1257

vector.ph1257:                                    ; preds = %polly.loop_header876
  %broadcast.splatinsert1264 = insertelement <4 x i64> poison, i64 %344, i32 0
  %broadcast.splat1265 = shufflevector <4 x i64> %broadcast.splatinsert1264, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1266 = insertelement <4 x i32> poison, i32 %347, i32 0
  %broadcast.splat1267 = shufflevector <4 x i32> %broadcast.splatinsert1266, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %vector.ph1257
  %index1258 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1259, %vector.body1256 ]
  %vec.ind1262 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1257 ], [ %vec.ind.next1263, %vector.body1256 ]
  %349 = add nuw nsw <4 x i64> %vec.ind1262, %broadcast.splat1265
  %350 = trunc <4 x i64> %349 to <4 x i32>
  %351 = mul <4 x i32> %broadcast.splat1267, %350
  %352 = add <4 x i32> %351, <i32 3, i32 3, i32 3, i32 3>
  %353 = urem <4 x i32> %352, <i32 1200, i32 1200, i32 1200, i32 1200>
  %354 = sitofp <4 x i32> %353 to <4 x double>
  %355 = fmul fast <4 x double> %354, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %356 = extractelement <4 x i64> %349, i32 0
  %357 = shl i64 %356, 3
  %358 = add nuw nsw i64 %357, %348
  %359 = getelementptr i8, i8* %call, i64 %358
  %360 = bitcast i8* %359 to <4 x double>*
  store <4 x double> %355, <4 x double>* %360, align 8, !alias.scope !112, !noalias !114
  %index.next1259 = add i64 %index1258, 4
  %vec.ind.next1263 = add <4 x i64> %vec.ind1262, <i64 4, i64 4, i64 4, i64 4>
  %361 = icmp eq i64 %index.next1259, %343
  br i1 %361, label %polly.loop_exit884, label %vector.body1256, !llvm.loop !117

polly.loop_exit884:                               ; preds = %vector.body1256, %polly.loop_header882
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1214.not = icmp eq i64 %polly.indvar879, %341
  br i1 %exitcond1214.not, label %polly.loop_exit878, label %polly.loop_header876

polly.loop_header882:                             ; preds = %polly.loop_header876, %polly.loop_header882
  %polly.indvar885 = phi i64 [ %polly.indvar_next886, %polly.loop_header882 ], [ 0, %polly.loop_header876 ]
  %362 = add nuw nsw i64 %polly.indvar885, %344
  %363 = trunc i64 %362 to i32
  %364 = mul i32 %363, %347
  %365 = add i32 %364, 3
  %366 = urem i32 %365, 1200
  %p_conv31.i = sitofp i32 %366 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %367 = shl i64 %362, 3
  %368 = add nuw nsw i64 %367, %348
  %scevgep888 = getelementptr i8, i8* %call, i64 %368
  %scevgep888889 = bitcast i8* %scevgep888 to double*
  store double %p_div33.i, double* %scevgep888889, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next886 = add nuw nsw i64 %polly.indvar885, 1
  %exitcond1210.not = icmp eq i64 %polly.indvar885, %345
  br i1 %exitcond1210.not, label %polly.loop_exit884, label %polly.loop_header882, !llvm.loop !118

polly.loop_header891:                             ; preds = %polly.loop_exit872, %polly.loop_exit899
  %indvars.iv1201 = phi i64 [ %indvars.iv.next1202, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %smin1203 = call i64 @llvm.smin.i64(i64 %indvars.iv1201, i64 -1168)
  %369 = shl nsw i64 %polly.indvar894, 5
  %370 = add nsw i64 %smin1203, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1202 = add nsw i64 %indvars.iv1201, -32
  %exitcond1206.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1206.not, label %polly.loop_header917, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1197 = phi i64 [ %indvars.iv.next1198, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %371 = mul nsw i64 %polly.indvar900, -32
  %smin1271 = call i64 @llvm.smin.i64(i64 %371, i64 -968)
  %372 = add nsw i64 %smin1271, 1000
  %smin1199 = call i64 @llvm.smin.i64(i64 %indvars.iv1197, i64 -968)
  %373 = shl nsw i64 %polly.indvar900, 5
  %374 = add nsw i64 %smin1199, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1198 = add nsw i64 %indvars.iv1197, -32
  %exitcond1205.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1205.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %375 = add nuw nsw i64 %polly.indvar906, %369
  %376 = trunc i64 %375 to i32
  %377 = mul nuw nsw i64 %375, 8000
  %min.iters.check1272 = icmp eq i64 %372, 0
  br i1 %min.iters.check1272, label %polly.loop_header909, label %vector.ph1273

vector.ph1273:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1282 = insertelement <4 x i64> poison, i64 %373, i32 0
  %broadcast.splat1283 = shufflevector <4 x i64> %broadcast.splatinsert1282, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1284 = insertelement <4 x i32> poison, i32 %376, i32 0
  %broadcast.splat1285 = shufflevector <4 x i32> %broadcast.splatinsert1284, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1270

vector.body1270:                                  ; preds = %vector.body1270, %vector.ph1273
  %index1276 = phi i64 [ 0, %vector.ph1273 ], [ %index.next1277, %vector.body1270 ]
  %vec.ind1280 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1273 ], [ %vec.ind.next1281, %vector.body1270 ]
  %378 = add nuw nsw <4 x i64> %vec.ind1280, %broadcast.splat1283
  %379 = trunc <4 x i64> %378 to <4 x i32>
  %380 = mul <4 x i32> %broadcast.splat1285, %379
  %381 = add <4 x i32> %380, <i32 2, i32 2, i32 2, i32 2>
  %382 = urem <4 x i32> %381, <i32 1000, i32 1000, i32 1000, i32 1000>
  %383 = sitofp <4 x i32> %382 to <4 x double>
  %384 = fmul fast <4 x double> %383, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %385 = extractelement <4 x i64> %378, i32 0
  %386 = shl i64 %385, 3
  %387 = add nuw nsw i64 %386, %377
  %388 = getelementptr i8, i8* %call2, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %384, <4 x double>* %389, align 8, !alias.scope !116, !noalias !119
  %index.next1277 = add i64 %index1276, 4
  %vec.ind.next1281 = add <4 x i64> %vec.ind1280, <i64 4, i64 4, i64 4, i64 4>
  %390 = icmp eq i64 %index.next1277, %372
  br i1 %390, label %polly.loop_exit911, label %vector.body1270, !llvm.loop !120

polly.loop_exit911:                               ; preds = %vector.body1270, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1204.not = icmp eq i64 %polly.indvar906, %370
  br i1 %exitcond1204.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %391 = add nuw nsw i64 %polly.indvar912, %373
  %392 = trunc i64 %391 to i32
  %393 = mul i32 %392, %376
  %394 = add i32 %393, 2
  %395 = urem i32 %394, 1000
  %p_conv10.i = sitofp i32 %395 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %396 = shl i64 %391, 3
  %397 = add nuw nsw i64 %396, %377
  %scevgep915 = getelementptr i8, i8* %call2, i64 %397
  %scevgep915916 = bitcast i8* %scevgep915 to double*
  store double %p_div12.i, double* %scevgep915916, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1200.not = icmp eq i64 %polly.indvar912, %374
  br i1 %exitcond1200.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !121

polly.loop_header917:                             ; preds = %polly.loop_exit899, %polly.loop_exit925
  %indvars.iv1191 = phi i64 [ %indvars.iv.next1192, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %smin1193 = call i64 @llvm.smin.i64(i64 %indvars.iv1191, i64 -1168)
  %398 = shl nsw i64 %polly.indvar920, 5
  %399 = add nsw i64 %smin1193, 1199
  br label %polly.loop_header923

polly.loop_exit925:                               ; preds = %polly.loop_exit931
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %indvars.iv.next1192 = add nsw i64 %indvars.iv1191, -32
  %exitcond1196.not = icmp eq i64 %polly.indvar_next921, 38
  br i1 %exitcond1196.not, label %init_array.exit, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_exit931, %polly.loop_header917
  %indvars.iv1187 = phi i64 [ %indvars.iv.next1188, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %400 = mul nsw i64 %polly.indvar926, -32
  %smin1289 = call i64 @llvm.smin.i64(i64 %400, i64 -968)
  %401 = add nsw i64 %smin1289, 1000
  %smin1189 = call i64 @llvm.smin.i64(i64 %indvars.iv1187, i64 -968)
  %402 = shl nsw i64 %polly.indvar926, 5
  %403 = add nsw i64 %smin1189, 999
  br label %polly.loop_header929

polly.loop_exit931:                               ; preds = %polly.loop_exit937
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %indvars.iv.next1188 = add nsw i64 %indvars.iv1187, -32
  %exitcond1195.not = icmp eq i64 %polly.indvar_next927, 32
  br i1 %exitcond1195.not, label %polly.loop_exit925, label %polly.loop_header923

polly.loop_header929:                             ; preds = %polly.loop_exit937, %polly.loop_header923
  %polly.indvar932 = phi i64 [ 0, %polly.loop_header923 ], [ %polly.indvar_next933, %polly.loop_exit937 ]
  %404 = add nuw nsw i64 %polly.indvar932, %398
  %405 = trunc i64 %404 to i32
  %406 = mul nuw nsw i64 %404, 8000
  %min.iters.check1290 = icmp eq i64 %401, 0
  br i1 %min.iters.check1290, label %polly.loop_header935, label %vector.ph1291

vector.ph1291:                                    ; preds = %polly.loop_header929
  %broadcast.splatinsert1300 = insertelement <4 x i64> poison, i64 %402, i32 0
  %broadcast.splat1301 = shufflevector <4 x i64> %broadcast.splatinsert1300, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1302 = insertelement <4 x i32> poison, i32 %405, i32 0
  %broadcast.splat1303 = shufflevector <4 x i32> %broadcast.splatinsert1302, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1288

vector.body1288:                                  ; preds = %vector.body1288, %vector.ph1291
  %index1294 = phi i64 [ 0, %vector.ph1291 ], [ %index.next1295, %vector.body1288 ]
  %vec.ind1298 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1291 ], [ %vec.ind.next1299, %vector.body1288 ]
  %407 = add nuw nsw <4 x i64> %vec.ind1298, %broadcast.splat1301
  %408 = trunc <4 x i64> %407 to <4 x i32>
  %409 = mul <4 x i32> %broadcast.splat1303, %408
  %410 = add <4 x i32> %409, <i32 1, i32 1, i32 1, i32 1>
  %411 = urem <4 x i32> %410, <i32 1200, i32 1200, i32 1200, i32 1200>
  %412 = sitofp <4 x i32> %411 to <4 x double>
  %413 = fmul fast <4 x double> %412, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %414 = extractelement <4 x i64> %407, i32 0
  %415 = shl i64 %414, 3
  %416 = add nuw nsw i64 %415, %406
  %417 = getelementptr i8, i8* %call1, i64 %416
  %418 = bitcast i8* %417 to <4 x double>*
  store <4 x double> %413, <4 x double>* %418, align 8, !alias.scope !115, !noalias !122
  %index.next1295 = add i64 %index1294, 4
  %vec.ind.next1299 = add <4 x i64> %vec.ind1298, <i64 4, i64 4, i64 4, i64 4>
  %419 = icmp eq i64 %index.next1295, %401
  br i1 %419, label %polly.loop_exit937, label %vector.body1288, !llvm.loop !123

polly.loop_exit937:                               ; preds = %vector.body1288, %polly.loop_header935
  %polly.indvar_next933 = add nuw nsw i64 %polly.indvar932, 1
  %exitcond1194.not = icmp eq i64 %polly.indvar932, %399
  br i1 %exitcond1194.not, label %polly.loop_exit931, label %polly.loop_header929

polly.loop_header935:                             ; preds = %polly.loop_header929, %polly.loop_header935
  %polly.indvar938 = phi i64 [ %polly.indvar_next939, %polly.loop_header935 ], [ 0, %polly.loop_header929 ]
  %420 = add nuw nsw i64 %polly.indvar938, %402
  %421 = trunc i64 %420 to i32
  %422 = mul i32 %421, %405
  %423 = add i32 %422, 1
  %424 = urem i32 %423, 1200
  %p_conv.i = sitofp i32 %424 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %425 = shl i64 %420, 3
  %426 = add nuw nsw i64 %425, %406
  %scevgep942 = getelementptr i8, i8* %call1, i64 %426
  %scevgep942943 = bitcast i8* %scevgep942 to double*
  store double %p_div.i, double* %scevgep942943, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next939 = add nuw nsw i64 %polly.indvar938, 1
  %exitcond1190.not = icmp eq i64 %polly.indvar938, %403
  br i1 %exitcond1190.not, label %polly.loop_exit937, label %polly.loop_header935, !llvm.loop !124
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
!51 = !{!"llvm.loop.tile.size", i32 64}
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
