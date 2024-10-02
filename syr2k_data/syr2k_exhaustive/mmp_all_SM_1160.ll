; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1160.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1160.c"
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
  %scevgep1229 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1228 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1227 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1226 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1226, %scevgep1229
  %bound1 = icmp ult i8* %scevgep1228, %scevgep1227
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
  br i1 %exitcond18.not.i, label %vector.ph1233, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1233:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1240 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1241 = shufflevector <4 x i64> %broadcast.splatinsert1240, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %vector.ph1233
  %index1234 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1235, %vector.body1232 ]
  %vec.ind1238 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1233 ], [ %vec.ind.next1239, %vector.body1232 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1238, %broadcast.splat1241
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv7.i, i64 %index1234
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1235 = add i64 %index1234, 4
  %vec.ind.next1239 = add <4 x i64> %vec.ind1238, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1235, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1232, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1232
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1233, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit925
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1295 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1295, label %for.body3.i46.preheader1444, label %vector.ph1296

vector.ph1296:                                    ; preds = %for.body3.i46.preheader
  %n.vec1298 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1296
  %index1299 = phi i64 [ 0, %vector.ph1296 ], [ %index.next1300, %vector.body1294 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %index1299
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1300 = add i64 %index1299, 4
  %46 = icmp eq i64 %index.next1300, %n.vec1298
  br i1 %46, label %middle.block1292, label %vector.body1294, !llvm.loop !18

middle.block1292:                                 ; preds = %vector.body1294
  %cmp.n1302 = icmp eq i64 %indvars.iv21.i, %n.vec1298
  br i1 %cmp.n1302, label %for.inc6.i, label %for.body3.i46.preheader1444

for.body3.i46.preheader1444:                      ; preds = %for.body3.i46.preheader, %middle.block1292
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1298, %middle.block1292 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1444, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1444 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1292, %for.cond1.preheader.i45
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
  %min.iters.check1342 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1342, label %for.body3.i60.preheader1442, label %vector.ph1343

vector.ph1343:                                    ; preds = %for.body3.i60.preheader
  %n.vec1345 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1341

vector.body1341:                                  ; preds = %vector.body1341, %vector.ph1343
  %index1346 = phi i64 [ 0, %vector.ph1343 ], [ %index.next1347, %vector.body1341 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %index1346
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1350 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1350, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1347 = add i64 %index1346, 4
  %57 = icmp eq i64 %index.next1347, %n.vec1345
  br i1 %57, label %middle.block1339, label %vector.body1341, !llvm.loop !64

middle.block1339:                                 ; preds = %vector.body1341
  %cmp.n1349 = icmp eq i64 %indvars.iv21.i52, %n.vec1345
  br i1 %cmp.n1349, label %for.inc6.i63, label %for.body3.i60.preheader1442

for.body3.i60.preheader1442:                      ; preds = %for.body3.i60.preheader, %middle.block1339
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1345, %middle.block1339 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1442, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1442 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1339, %for.cond1.preheader.i54
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
  %min.iters.check1392 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1392, label %for.body3.i99.preheader1440, label %vector.ph1393

vector.ph1393:                                    ; preds = %for.body3.i99.preheader
  %n.vec1395 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1391

vector.body1391:                                  ; preds = %vector.body1391, %vector.ph1393
  %index1396 = phi i64 [ 0, %vector.ph1393 ], [ %index.next1397, %vector.body1391 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %index1396
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1400 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1400, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1397 = add i64 %index1396, 4
  %68 = icmp eq i64 %index.next1397, %n.vec1395
  br i1 %68, label %middle.block1389, label %vector.body1391, !llvm.loop !66

middle.block1389:                                 ; preds = %vector.body1391
  %cmp.n1399 = icmp eq i64 %indvars.iv21.i91, %n.vec1395
  br i1 %cmp.n1399, label %for.inc6.i102, label %for.body3.i99.preheader1440

for.body3.i99.preheader1440:                      ; preds = %for.body3.i99.preheader, %middle.block1389
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1395, %middle.block1389 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1440, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1440 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1389, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  %malloccall136 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1404 = phi i64 [ %indvar.next1405, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1404, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1406 = icmp ult i64 %88, 4
  br i1 %min.iters.check1406, label %polly.loop_header192.preheader, label %vector.ph1407

vector.ph1407:                                    ; preds = %polly.loop_header
  %n.vec1409 = and i64 %88, -4
  br label %vector.body1403

vector.body1403:                                  ; preds = %vector.body1403, %vector.ph1407
  %index1410 = phi i64 [ 0, %vector.ph1407 ], [ %index.next1411, %vector.body1403 ]
  %90 = shl nuw nsw i64 %index1410, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1414 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1414, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1411 = add i64 %index1410, 4
  %95 = icmp eq i64 %index.next1411, %n.vec1409
  br i1 %95, label %middle.block1401, label %vector.body1403, !llvm.loop !79

middle.block1401:                                 ; preds = %vector.body1403
  %cmp.n1413 = icmp eq i64 %88, %n.vec1409
  br i1 %cmp.n1413, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1401
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1409, %middle.block1401 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1401
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1405 = add i64 %indvar1404, 1
  br i1 %exitcond1116.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1115.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1115.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %indvars.iv1090 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1091, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1090, i64 -936)
  %97 = add nsw i64 %smin1110, 1000
  %98 = shl nsw i64 %polly.indvar203, 6
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1091 = add nsw i64 %indvars.iv1090, -64
  %exitcond1114.not = icmp eq i64 %polly.indvar_next204, 16
  br i1 %exitcond1114.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %111, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = mul nuw nsw i64 %polly.indvar209, 50
  %100 = lshr i64 %polly.indvar209, 1
  %101 = mul nuw nsw i64 %100, 100
  %102 = sub nsw i64 %99, %101
  %103 = mul nsw i64 %polly.indvar209, -50
  %104 = add i64 %103, %101
  %105 = lshr i64 %polly.indvar209, 1
  %106 = mul nuw nsw i64 %105, 100
  %107 = sub nsw i64 %indvars.iv1098, %106
  %108 = add i64 %indvars.iv1102, %106
  %109 = mul nuw nsw i64 %polly.indvar209, 50
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %110 = mul nsw i64 %polly.indvar209, -50
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %111 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next1099 = add nuw nsw i64 %indvars.iv1098, 50
  %indvars.iv.next1103 = add nsw i64 %indvars.iv1102, -50
  %exitcond1113.not = icmp eq i64 %111, 24
  br i1 %exitcond1113.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %112 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1092.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %113 = add nuw nsw i64 %polly.indvar221, %109
  %polly.access.mul.call2225 = mul nuw nsw i64 %113, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %112, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit265, %polly.loop_exit214
  %indvar1418 = phi i64 [ %indvar.next1419, %polly.loop_exit265 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit265 ], [ %108, %polly.loop_exit214 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit265 ], [ %107, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit265 ], [ %105, %polly.loop_exit214 ]
  %114 = mul nsw i64 %indvar1418, -100
  %115 = add i64 %102, %114
  %smax1420 = call i64 @llvm.smax.i64(i64 %115, i64 0)
  %116 = mul nuw nsw i64 %indvar1418, 100
  %117 = add i64 %104, %116
  %118 = add i64 %smax1420, %117
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1100, i64 0)
  %119 = add i64 %smax, %indvars.iv1104
  %120 = shl nuw nsw i64 %polly.indvar231, 1
  %.not.not = icmp ugt i64 %120, %polly.indvar209
  %121 = mul nuw nsw i64 %polly.indvar231, 100
  %122 = add nsw i64 %121, %110
  %123 = icmp sgt i64 %122, 0
  %124 = select i1 %123, i64 %122, i64 0
  %125 = add nsw i64 %122, 99
  %polly.loop_guard.not = icmp sgt i64 %124, %125
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit252.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit252.us ], [ 0, %polly.loop_header228 ]
  %126 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %127 = add nuw nsw i64 %polly.indvar243.us, %109
  %polly.access.mul.call1247.us = mul nuw nsw i64 %127, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %126, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next244.us, 50
  br i1 %exitcond1095.not, label %polly.merge.loopexit.us, label %polly.loop_header240.us

polly.loop_header250.us:                          ; preds = %polly.merge.loopexit.us, %polly.loop_header250.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header250.us ], [ %124, %polly.merge.loopexit.us ]
  %128 = add nuw nsw i64 %polly.indvar253.us, %109
  %polly.access.mul.call1257.us = mul nsw i64 %128, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %126, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.not.not.us = icmp slt i64 %polly.indvar253.us, %125
  br i1 %polly.loop_cond255.not.not.us, label %polly.loop_header250.us, label %polly.loop_exit252.us

polly.loop_exit252.us:                            ; preds = %polly.loop_header250.us, %polly.merge.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1097.not, label %polly.loop_header263.preheader, label %polly.loop_header234.us

polly.merge.loopexit.us:                          ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard.not, label %polly.loop_exit252.us, label %polly.loop_header250.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_exit265:                               ; preds = %polly.loop_exit272.loopexit.us, %polly.loop_header263.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1101 = add i64 %indvars.iv1100, -100
  %indvars.iv.next1105 = add i64 %indvars.iv1104, 100
  %exitcond1112.not = icmp eq i64 %polly.indvar_next232, 12
  %indvar.next1419 = add i64 %indvar1418, 1
  br i1 %exitcond1112.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit252
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit252 ], [ 0, %polly.loop_header228.split ]
  %129 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1260 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1094.not, label %polly.loop_header263.preheader, label %polly.loop_header234

polly.loop_header263.preheader:                   ; preds = %polly.loop_exit252, %polly.loop_exit252.us, %polly.loop_header228.split
  %130 = sub nsw i64 %109, %121
  %131 = icmp sgt i64 %130, 0
  %132 = select i1 %131, i64 %130, i64 0
  %polly.loop_guard273 = icmp slt i64 %132, 100
  br i1 %polly.loop_guard273, label %polly.loop_header263.us, label %polly.loop_exit265

polly.loop_header263.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit272.loopexit.us
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.loopexit.us ], [ 0, %polly.loop_header263.preheader ]
  %polly.access.mul.Packed_MemRef_call1285.us = mul nuw nsw i64 %polly.indvar266.us, 1200
  br label %polly.loop_header270.us

polly.loop_header270.us:                          ; preds = %polly.loop_header263.us, %polly.loop_exit280.us
  %indvar1421 = phi i64 [ 0, %polly.loop_header263.us ], [ %indvar.next1422, %polly.loop_exit280.us ]
  %indvars.iv1106 = phi i64 [ %119, %polly.loop_header263.us ], [ %indvars.iv.next1107, %polly.loop_exit280.us ]
  %polly.indvar274.us = phi i64 [ %132, %polly.loop_header263.us ], [ %polly.indvar_next275.us, %polly.loop_exit280.us ]
  %133 = add i64 %118, %indvar1421
  %smin1423 = call i64 @llvm.smin.i64(i64 %133, i64 49)
  %134 = add nsw i64 %smin1423, 1
  %smin1108 = call i64 @llvm.smin.i64(i64 %indvars.iv1106, i64 49)
  %135 = add nsw i64 %polly.indvar274.us, %122
  %polly.loop_guard281.us1215 = icmp sgt i64 %135, -1
  br i1 %polly.loop_guard281.us1215, label %polly.loop_header278.preheader.us, label %polly.loop_exit280.us

polly.loop_header278.us:                          ; preds = %polly.loop_header278.us.preheader, %polly.loop_header278.us
  %polly.indvar282.us = phi i64 [ %polly.indvar_next283.us, %polly.loop_header278.us ], [ %polly.indvar282.us.ph, %polly.loop_header278.us.preheader ]
  %136 = add nuw nsw i64 %polly.indvar282.us, %109
  %polly.access.add.Packed_MemRef_call1286.us = add nuw nsw i64 %polly.indvar282.us, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %polly.access.Packed_MemRef_call2295.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call2295.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_300.us, %_p_scalar_296.us
  %137 = shl i64 %136, 3
  %138 = add i64 %137, %140
  %scevgep301.us = getelementptr i8, i8* %call, i64 %138
  %scevgep301302.us = bitcast i8* %scevgep301.us to double*
  %_p_scalar_303.us = load double, double* %scevgep301302.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_303.us
  store double %p_add42.i118.us, double* %scevgep301302.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next283.us = add nuw nsw i64 %polly.indvar282.us, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar282.us, %smin1108
  br i1 %exitcond1109.not, label %polly.loop_exit280.us, label %polly.loop_header278.us, !llvm.loop !84

polly.loop_exit280.us:                            ; preds = %polly.loop_header278.us, %middle.block1415, %polly.loop_header270.us
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %polly.loop_cond276.us = icmp ult i64 %polly.indvar274.us, 99
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 1
  %indvar.next1422 = add i64 %indvar1421, 1
  br i1 %polly.loop_cond276.us, label %polly.loop_header270.us, label %polly.loop_exit272.loopexit.us

polly.loop_header278.preheader.us:                ; preds = %polly.loop_header270.us
  %139 = add nuw nsw i64 %polly.indvar274.us, %121
  %polly.access.add.Packed_MemRef_call2290.us = add nsw i64 %135, %polly.access.mul.Packed_MemRef_call1285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_300.us = load double, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %140 = mul i64 %139, 9600
  %min.iters.check1424 = icmp ult i64 %134, 4
  br i1 %min.iters.check1424, label %polly.loop_header278.us.preheader, label %vector.ph1425

vector.ph1425:                                    ; preds = %polly.loop_header278.preheader.us
  %n.vec1427 = and i64 %134, -4
  %broadcast.splatinsert1433 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1434 = shufflevector <4 x double> %broadcast.splatinsert1433, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1436 = insertelement <4 x double> poison, double %_p_scalar_300.us, i32 0
  %broadcast.splat1437 = shufflevector <4 x double> %broadcast.splatinsert1436, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1417

vector.body1417:                                  ; preds = %vector.body1417, %vector.ph1425
  %index1428 = phi i64 [ 0, %vector.ph1425 ], [ %index.next1429, %vector.body1417 ]
  %141 = add nuw nsw i64 %index1428, %109
  %142 = add nuw nsw i64 %index1428, %polly.access.mul.Packed_MemRef_call1285.us
  %143 = getelementptr double, double* %Packed_MemRef_call1, i64 %142
  %144 = bitcast double* %143 to <4 x double>*
  %wide.load1432 = load <4 x double>, <4 x double>* %144, align 8
  %145 = fmul fast <4 x double> %broadcast.splat1434, %wide.load1432
  %146 = getelementptr double, double* %Packed_MemRef_call2, i64 %142
  %147 = bitcast double* %146 to <4 x double>*
  %wide.load1435 = load <4 x double>, <4 x double>* %147, align 8
  %148 = fmul fast <4 x double> %broadcast.splat1437, %wide.load1435
  %149 = shl i64 %141, 3
  %150 = add i64 %149, %140
  %151 = getelementptr i8, i8* %call, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1438 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !72, !noalias !74
  %153 = fadd fast <4 x double> %148, %145
  %154 = fmul fast <4 x double> %153, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %155 = fadd fast <4 x double> %154, %wide.load1438
  %156 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !72, !noalias !74
  %index.next1429 = add i64 %index1428, 4
  %157 = icmp eq i64 %index.next1429, %n.vec1427
  br i1 %157, label %middle.block1415, label %vector.body1417, !llvm.loop !85

middle.block1415:                                 ; preds = %vector.body1417
  %cmp.n1431 = icmp eq i64 %134, %n.vec1427
  br i1 %cmp.n1431, label %polly.loop_exit280.us, label %polly.loop_header278.us.preheader

polly.loop_header278.us.preheader:                ; preds = %polly.loop_header278.preheader.us, %middle.block1415
  %polly.indvar282.us.ph = phi i64 [ 0, %polly.loop_header278.preheader.us ], [ %n.vec1427, %middle.block1415 ]
  br label %polly.loop_header278.us

polly.loop_exit272.loopexit.us:                   ; preds = %polly.loop_exit280.us
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next267.us, %97
  br i1 %exitcond1111.not, label %polly.loop_exit265, label %polly.loop_header263.us

polly.loop_header250:                             ; preds = %polly.loop_header234, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %124, %polly.loop_header234 ]
  %158 = add nuw nsw i64 %polly.indvar253, %109
  %polly.access.mul.call1257 = mul nsw i64 %158, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %129, %polly.access.mul.call1257
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar253, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp slt i64 %polly.indvar253, %125
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_exit252

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  %malloccall310 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1354 = phi i64 [ %indvar.next1355, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %159 = add i64 %indvar1354, 1
  %160 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %160
  %min.iters.check1356 = icmp ult i64 %159, 4
  br i1 %min.iters.check1356, label %polly.loop_header400.preheader, label %vector.ph1357

vector.ph1357:                                    ; preds = %polly.loop_header394
  %n.vec1359 = and i64 %159, -4
  br label %vector.body1353

vector.body1353:                                  ; preds = %vector.body1353, %vector.ph1357
  %index1360 = phi i64 [ 0, %vector.ph1357 ], [ %index.next1361, %vector.body1353 ]
  %161 = shl nuw nsw i64 %index1360, 3
  %162 = getelementptr i8, i8* %scevgep406, i64 %161
  %163 = bitcast i8* %162 to <4 x double>*
  %wide.load1364 = load <4 x double>, <4 x double>* %163, align 8, !alias.scope !86, !noalias !88
  %164 = fmul fast <4 x double> %wide.load1364, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %165 = bitcast i8* %162 to <4 x double>*
  store <4 x double> %164, <4 x double>* %165, align 8, !alias.scope !86, !noalias !88
  %index.next1361 = add i64 %index1360, 4
  %166 = icmp eq i64 %index.next1361, %n.vec1359
  br i1 %166, label %middle.block1351, label %vector.body1353, !llvm.loop !93

middle.block1351:                                 ; preds = %vector.body1353
  %cmp.n1363 = icmp eq i64 %159, %n.vec1359
  br i1 %cmp.n1363, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1351
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1359, %middle.block1351 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1351
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar_next398, 1200
  %indvar.next1355 = add i64 %indvar1354, 1
  br i1 %exitcond1148.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %167 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %167
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1147.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !94

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %indvars.iv1120 = phi i64 [ 0, %polly.loop_header410.preheader ], [ %indvars.iv.next1121, %polly.loop_exit418 ]
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header410.preheader ], [ %polly.indvar_next414, %polly.loop_exit418 ]
  %smin1142 = call i64 @llvm.smin.i64(i64 %indvars.iv1120, i64 -936)
  %168 = add nsw i64 %smin1142, 1000
  %169 = shl nsw i64 %polly.indvar413, 6
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit441
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %indvars.iv.next1121 = add nsw i64 %indvars.iv1120, -64
  %exitcond1146.not = icmp eq i64 %polly.indvar_next414, 16
  br i1 %exitcond1146.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit441, %polly.loop_header410
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1117 = phi i64 [ %indvars.iv.next1118, %polly.loop_exit441 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %182, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %170 = mul nuw nsw i64 %polly.indvar419, 50
  %171 = lshr i64 %polly.indvar419, 1
  %172 = mul nuw nsw i64 %171, 100
  %173 = sub nsw i64 %170, %172
  %174 = mul nsw i64 %polly.indvar419, -50
  %175 = add i64 %174, %172
  %176 = lshr i64 %polly.indvar419, 1
  %177 = mul nuw nsw i64 %176, 100
  %178 = sub nsw i64 %indvars.iv1129, %177
  %179 = add i64 %indvars.iv1134, %177
  %180 = mul nuw nsw i64 %polly.indvar419, 50
  br label %polly.loop_header422

polly.loop_exit424:                               ; preds = %polly.loop_exit430
  %181 = mul nsw i64 %polly.indvar419, -50
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit482
  %182 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1118 = add nsw i64 %indvars.iv1117, -50
  %indvars.iv.next1130 = add nuw nsw i64 %indvars.iv1129, 50
  %indvars.iv.next1135 = add nsw i64 %indvars.iv1134, -50
  %exitcond1145.not = icmp eq i64 %182, 24
  br i1 %exitcond1145.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header422:                             ; preds = %polly.loop_exit430, %polly.loop_header416
  %polly.indvar425 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next426, %polly.loop_exit430 ]
  %183 = add nuw nsw i64 %polly.indvar425, %169
  %polly.access.mul.Packed_MemRef_call2311 = mul nuw nsw i64 %polly.indvar425, 1200
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_header428
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar_next426, %168
  br i1 %exitcond1123.not, label %polly.loop_exit424, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %184 = add nuw nsw i64 %polly.indvar431, %180
  %polly.access.mul.call2435 = mul nuw nsw i64 %184, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %183, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2311 = add nuw nsw i64 %polly.indvar431, %polly.access.mul.Packed_MemRef_call2311
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1117
  br i1 %exitcond1119.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header439:                             ; preds = %polly.loop_exit482, %polly.loop_exit424
  %indvar1368 = phi i64 [ %indvar.next1369, %polly.loop_exit482 ], [ 0, %polly.loop_exit424 ]
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %polly.loop_exit482 ], [ %179, %polly.loop_exit424 ]
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit482 ], [ %178, %polly.loop_exit424 ]
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_exit482 ], [ %176, %polly.loop_exit424 ]
  %185 = mul nsw i64 %indvar1368, -100
  %186 = add i64 %173, %185
  %smax1370 = call i64 @llvm.smax.i64(i64 %186, i64 0)
  %187 = mul nuw nsw i64 %indvar1368, 100
  %188 = add i64 %175, %187
  %189 = add i64 %smax1370, %188
  %smax1133 = call i64 @llvm.smax.i64(i64 %indvars.iv1131, i64 0)
  %190 = add i64 %smax1133, %indvars.iv1136
  %191 = shl nuw nsw i64 %polly.indvar442, 1
  %.not.not944 = icmp ugt i64 %191, %polly.indvar419
  %192 = mul nuw nsw i64 %polly.indvar442, 100
  %193 = add nsw i64 %192, %181
  %194 = icmp sgt i64 %193, 0
  %195 = select i1 %194, i64 %193, i64 0
  %196 = add nsw i64 %193, 99
  %polly.loop_guard469.not = icmp sgt i64 %195, %196
  br i1 %.not.not944, label %polly.loop_header445.us, label %polly.loop_header439.split

polly.loop_header445.us:                          ; preds = %polly.loop_header439, %polly.loop_exit468.us
  %polly.indvar448.us = phi i64 [ %polly.indvar_next449.us, %polly.loop_exit468.us ], [ 0, %polly.loop_header439 ]
  %197 = add nuw nsw i64 %polly.indvar448.us, %169
  %polly.access.mul.Packed_MemRef_call1309.us = mul nuw nsw i64 %polly.indvar448.us, 1200
  br label %polly.loop_header455.us

polly.loop_header455.us:                          ; preds = %polly.loop_header445.us, %polly.loop_header455.us
  %polly.indvar458.us = phi i64 [ %polly.indvar_next459.us, %polly.loop_header455.us ], [ 0, %polly.loop_header445.us ]
  %198 = add nuw nsw i64 %polly.indvar458.us, %180
  %polly.access.mul.call1462.us = mul nuw nsw i64 %198, 1000
  %polly.access.add.call1463.us = add nuw nsw i64 %197, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309.us = add nuw nsw i64 %polly.indvar458.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309.us
  store double %polly.access.call1464.load.us, double* %polly.access.Packed_MemRef_call1309.us, align 8
  %polly.indvar_next459.us = add nuw nsw i64 %polly.indvar458.us, 1
  %exitcond1126.not = icmp eq i64 %polly.indvar_next459.us, 50
  br i1 %exitcond1126.not, label %polly.merge452.loopexit.us, label %polly.loop_header455.us

polly.loop_header466.us:                          ; preds = %polly.merge452.loopexit.us, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %195, %polly.merge452.loopexit.us ]
  %199 = add nuw nsw i64 %polly.indvar470.us, %180
  %polly.access.mul.call1474.us = mul nsw i64 %199, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %197, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309478.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1309.us
  %polly.access.Packed_MemRef_call1309479.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1309479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %196
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us, %polly.merge452.loopexit.us
  %polly.indvar_next449.us = add nuw nsw i64 %polly.indvar448.us, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar_next449.us, %168
  br i1 %exitcond1128.not, label %polly.loop_header480.preheader, label %polly.loop_header445.us

polly.merge452.loopexit.us:                       ; preds = %polly.loop_header455.us
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us, label %polly.loop_header466.us

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header445

polly.loop_exit482:                               ; preds = %polly.loop_exit489.loopexit.us, %polly.loop_header480.preheader
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %indvars.iv.next1132 = add i64 %indvars.iv1131, -100
  %indvars.iv.next1137 = add i64 %indvars.iv1136, 100
  %exitcond1144.not = icmp eq i64 %polly.indvar_next443, 12
  %indvar.next1369 = add i64 %indvar1368, 1
  br i1 %exitcond1144.not, label %polly.loop_exit441, label %polly.loop_header439

polly.loop_header445:                             ; preds = %polly.loop_header439.split, %polly.loop_exit468
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_exit468 ], [ 0, %polly.loop_header439.split ]
  %200 = add nuw nsw i64 %polly.indvar448, %169
  %polly.access.mul.Packed_MemRef_call1309477 = mul nuw nsw i64 %polly.indvar448, 1200
  br label %polly.loop_header466

polly.loop_exit468:                               ; preds = %polly.loop_header466
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar_next449, %168
  br i1 %exitcond1125.not, label %polly.loop_header480.preheader, label %polly.loop_header445

polly.loop_header480.preheader:                   ; preds = %polly.loop_exit468, %polly.loop_exit468.us, %polly.loop_header439.split
  %201 = sub nsw i64 %180, %192
  %202 = icmp sgt i64 %201, 0
  %203 = select i1 %202, i64 %201, i64 0
  %polly.loop_guard490 = icmp slt i64 %203, 100
  br i1 %polly.loop_guard490, label %polly.loop_header480.us, label %polly.loop_exit482

polly.loop_header480.us:                          ; preds = %polly.loop_header480.preheader, %polly.loop_exit489.loopexit.us
  %polly.indvar483.us = phi i64 [ %polly.indvar_next484.us, %polly.loop_exit489.loopexit.us ], [ 0, %polly.loop_header480.preheader ]
  %polly.access.mul.Packed_MemRef_call1309502.us = mul nuw nsw i64 %polly.indvar483.us, 1200
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header480.us, %polly.loop_exit497.us
  %indvar1371 = phi i64 [ 0, %polly.loop_header480.us ], [ %indvar.next1372, %polly.loop_exit497.us ]
  %indvars.iv1138 = phi i64 [ %190, %polly.loop_header480.us ], [ %indvars.iv.next1139, %polly.loop_exit497.us ]
  %polly.indvar491.us = phi i64 [ %203, %polly.loop_header480.us ], [ %polly.indvar_next492.us, %polly.loop_exit497.us ]
  %204 = add i64 %189, %indvar1371
  %smin1373 = call i64 @llvm.smin.i64(i64 %204, i64 49)
  %205 = add nsw i64 %smin1373, 1
  %smin1140 = call i64 @llvm.smin.i64(i64 %indvars.iv1138, i64 49)
  %206 = add nsw i64 %polly.indvar491.us, %193
  %polly.loop_guard498.us1216 = icmp sgt i64 %206, -1
  br i1 %polly.loop_guard498.us1216, label %polly.loop_header495.preheader.us, label %polly.loop_exit497.us

polly.loop_header495.us:                          ; preds = %polly.loop_header495.us.preheader, %polly.loop_header495.us
  %polly.indvar499.us = phi i64 [ %polly.indvar_next500.us, %polly.loop_header495.us ], [ %polly.indvar499.us.ph, %polly.loop_header495.us.preheader ]
  %207 = add nuw nsw i64 %polly.indvar499.us, %180
  %polly.access.add.Packed_MemRef_call1309503.us = add nuw nsw i64 %polly.indvar499.us, %polly.access.mul.Packed_MemRef_call1309502.us
  %polly.access.Packed_MemRef_call1309504.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1309504.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %polly.access.Packed_MemRef_call2311512.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503.us
  %_p_scalar_513.us = load double, double* %polly.access.Packed_MemRef_call2311512.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_517.us, %_p_scalar_513.us
  %208 = shl i64 %207, 3
  %209 = add i64 %208, %211
  %scevgep518.us = getelementptr i8, i8* %call, i64 %209
  %scevgep518519.us = bitcast i8* %scevgep518.us to double*
  %_p_scalar_520.us = load double, double* %scevgep518519.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_520.us
  store double %p_add42.i79.us, double* %scevgep518519.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next500.us = add nuw nsw i64 %polly.indvar499.us, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar499.us, %smin1140
  br i1 %exitcond1141.not, label %polly.loop_exit497.us, label %polly.loop_header495.us, !llvm.loop !97

polly.loop_exit497.us:                            ; preds = %polly.loop_header495.us, %middle.block1365, %polly.loop_header487.us
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %polly.loop_cond493.us = icmp ult i64 %polly.indvar491.us, 99
  %indvars.iv.next1139 = add i64 %indvars.iv1138, 1
  %indvar.next1372 = add i64 %indvar1371, 1
  br i1 %polly.loop_cond493.us, label %polly.loop_header487.us, label %polly.loop_exit489.loopexit.us

polly.loop_header495.preheader.us:                ; preds = %polly.loop_header487.us
  %210 = add nuw nsw i64 %polly.indvar491.us, %192
  %polly.access.add.Packed_MemRef_call2311507.us = add nsw i64 %206, %polly.access.mul.Packed_MemRef_call1309502.us
  %polly.access.Packed_MemRef_call2311508.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507.us
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call2311508.us, align 8
  %polly.access.Packed_MemRef_call1309516.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507.us
  %_p_scalar_517.us = load double, double* %polly.access.Packed_MemRef_call1309516.us, align 8
  %211 = mul i64 %210, 9600
  %min.iters.check1374 = icmp ult i64 %205, 4
  br i1 %min.iters.check1374, label %polly.loop_header495.us.preheader, label %vector.ph1375

vector.ph1375:                                    ; preds = %polly.loop_header495.preheader.us
  %n.vec1377 = and i64 %205, -4
  %broadcast.splatinsert1383 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1384 = shufflevector <4 x double> %broadcast.splatinsert1383, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1386 = insertelement <4 x double> poison, double %_p_scalar_517.us, i32 0
  %broadcast.splat1387 = shufflevector <4 x double> %broadcast.splatinsert1386, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1367

vector.body1367:                                  ; preds = %vector.body1367, %vector.ph1375
  %index1378 = phi i64 [ 0, %vector.ph1375 ], [ %index.next1379, %vector.body1367 ]
  %212 = add nuw nsw i64 %index1378, %180
  %213 = add nuw nsw i64 %index1378, %polly.access.mul.Packed_MemRef_call1309502.us
  %214 = getelementptr double, double* %Packed_MemRef_call1309, i64 %213
  %215 = bitcast double* %214 to <4 x double>*
  %wide.load1382 = load <4 x double>, <4 x double>* %215, align 8
  %216 = fmul fast <4 x double> %broadcast.splat1384, %wide.load1382
  %217 = getelementptr double, double* %Packed_MemRef_call2311, i64 %213
  %218 = bitcast double* %217 to <4 x double>*
  %wide.load1385 = load <4 x double>, <4 x double>* %218, align 8
  %219 = fmul fast <4 x double> %broadcast.splat1387, %wide.load1385
  %220 = shl i64 %212, 3
  %221 = add i64 %220, %211
  %222 = getelementptr i8, i8* %call, i64 %221
  %223 = bitcast i8* %222 to <4 x double>*
  %wide.load1388 = load <4 x double>, <4 x double>* %223, align 8, !alias.scope !86, !noalias !88
  %224 = fadd fast <4 x double> %219, %216
  %225 = fmul fast <4 x double> %224, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %226 = fadd fast <4 x double> %225, %wide.load1388
  %227 = bitcast i8* %222 to <4 x double>*
  store <4 x double> %226, <4 x double>* %227, align 8, !alias.scope !86, !noalias !88
  %index.next1379 = add i64 %index1378, 4
  %228 = icmp eq i64 %index.next1379, %n.vec1377
  br i1 %228, label %middle.block1365, label %vector.body1367, !llvm.loop !98

middle.block1365:                                 ; preds = %vector.body1367
  %cmp.n1381 = icmp eq i64 %205, %n.vec1377
  br i1 %cmp.n1381, label %polly.loop_exit497.us, label %polly.loop_header495.us.preheader

polly.loop_header495.us.preheader:                ; preds = %polly.loop_header495.preheader.us, %middle.block1365
  %polly.indvar499.us.ph = phi i64 [ 0, %polly.loop_header495.preheader.us ], [ %n.vec1377, %middle.block1365 ]
  br label %polly.loop_header495.us

polly.loop_exit489.loopexit.us:                   ; preds = %polly.loop_exit497.us
  %polly.indvar_next484.us = add nuw nsw i64 %polly.indvar483.us, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar_next484.us, %168
  br i1 %exitcond1143.not, label %polly.loop_exit482, label %polly.loop_header480.us

polly.loop_header466:                             ; preds = %polly.loop_header445, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %195, %polly.loop_header445 ]
  %229 = add nuw nsw i64 %polly.indvar470, %180
  %polly.access.mul.call1474 = mul nsw i64 %229, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %200, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1309478 = add nuw nsw i64 %polly.indvar470, %polly.access.mul.Packed_MemRef_call1309477
  %polly.access.Packed_MemRef_call1309479 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1309479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %196
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_exit468

polly.start523:                                   ; preds = %init_array.exit
  %malloccall525 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  %malloccall527 = tail call dereferenceable_or_null(614400) i8* @malloc(i64 614400) #6
  br label %polly.loop_header611

polly.exiting524:                                 ; preds = %polly.loop_exit635
  tail call void @free(i8* %malloccall525)
  tail call void @free(i8* %malloccall527)
  br label %kernel_syr2k.exit

polly.loop_header611:                             ; preds = %polly.loop_exit619, %polly.start523
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit619 ], [ 0, %polly.start523 ]
  %polly.indvar614 = phi i64 [ %polly.indvar_next615, %polly.loop_exit619 ], [ 1, %polly.start523 ]
  %230 = add i64 %indvar, 1
  %231 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %231
  %min.iters.check1306 = icmp ult i64 %230, 4
  br i1 %min.iters.check1306, label %polly.loop_header617.preheader, label %vector.ph1307

vector.ph1307:                                    ; preds = %polly.loop_header611
  %n.vec1309 = and i64 %230, -4
  br label %vector.body1305

vector.body1305:                                  ; preds = %vector.body1305, %vector.ph1307
  %index1310 = phi i64 [ 0, %vector.ph1307 ], [ %index.next1311, %vector.body1305 ]
  %232 = shl nuw nsw i64 %index1310, 3
  %233 = getelementptr i8, i8* %scevgep623, i64 %232
  %234 = bitcast i8* %233 to <4 x double>*
  %wide.load1314 = load <4 x double>, <4 x double>* %234, align 8, !alias.scope !99, !noalias !101
  %235 = fmul fast <4 x double> %wide.load1314, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %236 = bitcast i8* %233 to <4 x double>*
  store <4 x double> %235, <4 x double>* %236, align 8, !alias.scope !99, !noalias !101
  %index.next1311 = add i64 %index1310, 4
  %237 = icmp eq i64 %index.next1311, %n.vec1309
  br i1 %237, label %middle.block1303, label %vector.body1305, !llvm.loop !106

middle.block1303:                                 ; preds = %vector.body1305
  %cmp.n1313 = icmp eq i64 %230, %n.vec1309
  br i1 %cmp.n1313, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1303
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1309, %middle.block1303 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1303
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1180.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %238 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %238
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1179.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1179.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !107

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %indvars.iv1152 = phi i64 [ 0, %polly.loop_header627.preheader ], [ %indvars.iv.next1153, %polly.loop_exit635 ]
  %polly.indvar630 = phi i64 [ 0, %polly.loop_header627.preheader ], [ %polly.indvar_next631, %polly.loop_exit635 ]
  %smin1174 = call i64 @llvm.smin.i64(i64 %indvars.iv1152, i64 -936)
  %239 = add nsw i64 %smin1174, 1000
  %240 = shl nsw i64 %polly.indvar630, 6
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %indvars.iv.next1153 = add nsw i64 %indvars.iv1152, -64
  %exitcond1178.not = icmp eq i64 %polly.indvar_next631, 16
  br i1 %exitcond1178.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1166 = phi i64 [ %indvars.iv.next1167, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %253, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %241 = mul nuw nsw i64 %polly.indvar636, 50
  %242 = lshr i64 %polly.indvar636, 1
  %243 = mul nuw nsw i64 %242, 100
  %244 = sub nsw i64 %241, %243
  %245 = mul nsw i64 %polly.indvar636, -50
  %246 = add i64 %245, %243
  %247 = lshr i64 %polly.indvar636, 1
  %248 = mul nuw nsw i64 %247, 100
  %249 = sub nsw i64 %indvars.iv1161, %248
  %250 = add i64 %indvars.iv1166, %248
  %251 = mul nuw nsw i64 %polly.indvar636, 50
  br label %polly.loop_header639

polly.loop_exit641:                               ; preds = %polly.loop_exit647
  %252 = mul nsw i64 %polly.indvar636, -50
  br label %polly.loop_header656

polly.loop_exit658:                               ; preds = %polly.loop_exit699
  %253 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, -50
  %indvars.iv.next1162 = add nuw nsw i64 %indvars.iv1161, 50
  %indvars.iv.next1167 = add nsw i64 %indvars.iv1166, -50
  %exitcond1177.not = icmp eq i64 %253, 24
  br i1 %exitcond1177.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header639:                             ; preds = %polly.loop_exit647, %polly.loop_header633
  %polly.indvar642 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next643, %polly.loop_exit647 ]
  %254 = add nuw nsw i64 %polly.indvar642, %240
  %polly.access.mul.Packed_MemRef_call2528 = mul nuw nsw i64 %polly.indvar642, 1200
  br label %polly.loop_header645

polly.loop_exit647:                               ; preds = %polly.loop_header645
  %polly.indvar_next643 = add nuw nsw i64 %polly.indvar642, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next643, %239
  br i1 %exitcond1155.not, label %polly.loop_exit641, label %polly.loop_header639

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header639
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header639 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %255 = add nuw nsw i64 %polly.indvar648, %251
  %polly.access.mul.call2652 = mul nuw nsw i64 %255, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %254, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2528 = add nuw nsw i64 %polly.indvar648, %polly.access.mul.Packed_MemRef_call2528
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1149
  br i1 %exitcond1151.not, label %polly.loop_exit647, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit699, %polly.loop_exit641
  %indvar1318 = phi i64 [ %indvar.next1319, %polly.loop_exit699 ], [ 0, %polly.loop_exit641 ]
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit699 ], [ %250, %polly.loop_exit641 ]
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit699 ], [ %249, %polly.loop_exit641 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit699 ], [ %247, %polly.loop_exit641 ]
  %256 = mul nsw i64 %indvar1318, -100
  %257 = add i64 %244, %256
  %smax1320 = call i64 @llvm.smax.i64(i64 %257, i64 0)
  %258 = mul nuw nsw i64 %indvar1318, 100
  %259 = add i64 %246, %258
  %260 = add i64 %smax1320, %259
  %smax1165 = call i64 @llvm.smax.i64(i64 %indvars.iv1163, i64 0)
  %261 = add i64 %smax1165, %indvars.iv1168
  %262 = shl nuw nsw i64 %polly.indvar659, 1
  %.not.not945 = icmp ugt i64 %262, %polly.indvar636
  %263 = mul nuw nsw i64 %polly.indvar659, 100
  %264 = add nsw i64 %263, %252
  %265 = icmp sgt i64 %264, 0
  %266 = select i1 %265, i64 %264, i64 0
  %267 = add nsw i64 %264, 99
  %polly.loop_guard686.not = icmp sgt i64 %266, %267
  br i1 %.not.not945, label %polly.loop_header662.us, label %polly.loop_header656.split

polly.loop_header662.us:                          ; preds = %polly.loop_header656, %polly.loop_exit685.us
  %polly.indvar665.us = phi i64 [ %polly.indvar_next666.us, %polly.loop_exit685.us ], [ 0, %polly.loop_header656 ]
  %268 = add nuw nsw i64 %polly.indvar665.us, %240
  %polly.access.mul.Packed_MemRef_call1526.us = mul nuw nsw i64 %polly.indvar665.us, 1200
  br label %polly.loop_header672.us

polly.loop_header672.us:                          ; preds = %polly.loop_header662.us, %polly.loop_header672.us
  %polly.indvar675.us = phi i64 [ %polly.indvar_next676.us, %polly.loop_header672.us ], [ 0, %polly.loop_header662.us ]
  %269 = add nuw nsw i64 %polly.indvar675.us, %251
  %polly.access.mul.call1679.us = mul nuw nsw i64 %269, 1000
  %polly.access.add.call1680.us = add nuw nsw i64 %268, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526.us = add nuw nsw i64 %polly.indvar675.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1526.us, align 8
  %polly.indvar_next676.us = add nuw nsw i64 %polly.indvar675.us, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar_next676.us, 50
  br i1 %exitcond1158.not, label %polly.merge669.loopexit.us, label %polly.loop_header672.us

polly.loop_header683.us:                          ; preds = %polly.merge669.loopexit.us, %polly.loop_header683.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_header683.us ], [ %266, %polly.merge669.loopexit.us ]
  %270 = add nuw nsw i64 %polly.indvar687.us, %251
  %polly.access.mul.call1691.us = mul nsw i64 %270, 1000
  %polly.access.add.call1692.us = add nuw nsw i64 %268, %polly.access.mul.call1691.us
  %polly.access.call1693.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us
  %polly.access.call1693.load.us = load double, double* %polly.access.call1693.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526695.us = add nuw nsw i64 %polly.indvar687.us, %polly.access.mul.Packed_MemRef_call1526.us
  %polly.access.Packed_MemRef_call1526696.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us
  store double %polly.access.call1693.load.us, double* %polly.access.Packed_MemRef_call1526696.us, align 8
  %polly.indvar_next688.us = add nuw nsw i64 %polly.indvar687.us, 1
  %polly.loop_cond689.not.not.us = icmp slt i64 %polly.indvar687.us, %267
  br i1 %polly.loop_cond689.not.not.us, label %polly.loop_header683.us, label %polly.loop_exit685.us

polly.loop_exit685.us:                            ; preds = %polly.loop_header683.us, %polly.merge669.loopexit.us
  %polly.indvar_next666.us = add nuw nsw i64 %polly.indvar665.us, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar_next666.us, %239
  br i1 %exitcond1160.not, label %polly.loop_header697.preheader, label %polly.loop_header662.us

polly.merge669.loopexit.us:                       ; preds = %polly.loop_header672.us
  br i1 %polly.loop_guard686.not, label %polly.loop_exit685.us, label %polly.loop_header683.us

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header662

polly.loop_exit699:                               ; preds = %polly.loop_exit706.loopexit.us, %polly.loop_header697.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %indvars.iv.next1164 = add i64 %indvars.iv1163, -100
  %indvars.iv.next1169 = add i64 %indvars.iv1168, 100
  %exitcond1176.not = icmp eq i64 %polly.indvar_next660, 12
  %indvar.next1319 = add i64 %indvar1318, 1
  br i1 %exitcond1176.not, label %polly.loop_exit658, label %polly.loop_header656

polly.loop_header662:                             ; preds = %polly.loop_header656.split, %polly.loop_exit685
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit685 ], [ 0, %polly.loop_header656.split ]
  %271 = add nuw nsw i64 %polly.indvar665, %240
  %polly.access.mul.Packed_MemRef_call1526694 = mul nuw nsw i64 %polly.indvar665, 1200
  br label %polly.loop_header683

polly.loop_exit685:                               ; preds = %polly.loop_header683
  %polly.indvar_next666 = add nuw nsw i64 %polly.indvar665, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next666, %239
  br i1 %exitcond1157.not, label %polly.loop_header697.preheader, label %polly.loop_header662

polly.loop_header697.preheader:                   ; preds = %polly.loop_exit685, %polly.loop_exit685.us, %polly.loop_header656.split
  %272 = sub nsw i64 %251, %263
  %273 = icmp sgt i64 %272, 0
  %274 = select i1 %273, i64 %272, i64 0
  %polly.loop_guard707 = icmp slt i64 %274, 100
  br i1 %polly.loop_guard707, label %polly.loop_header697.us, label %polly.loop_exit699

polly.loop_header697.us:                          ; preds = %polly.loop_header697.preheader, %polly.loop_exit706.loopexit.us
  %polly.indvar700.us = phi i64 [ %polly.indvar_next701.us, %polly.loop_exit706.loopexit.us ], [ 0, %polly.loop_header697.preheader ]
  %polly.access.mul.Packed_MemRef_call1526719.us = mul nuw nsw i64 %polly.indvar700.us, 1200
  br label %polly.loop_header704.us

polly.loop_header704.us:                          ; preds = %polly.loop_header697.us, %polly.loop_exit714.us
  %indvar1321 = phi i64 [ 0, %polly.loop_header697.us ], [ %indvar.next1322, %polly.loop_exit714.us ]
  %indvars.iv1170 = phi i64 [ %261, %polly.loop_header697.us ], [ %indvars.iv.next1171, %polly.loop_exit714.us ]
  %polly.indvar708.us = phi i64 [ %274, %polly.loop_header697.us ], [ %polly.indvar_next709.us, %polly.loop_exit714.us ]
  %275 = add i64 %260, %indvar1321
  %smin1323 = call i64 @llvm.smin.i64(i64 %275, i64 49)
  %276 = add nsw i64 %smin1323, 1
  %smin1172 = call i64 @llvm.smin.i64(i64 %indvars.iv1170, i64 49)
  %277 = add nsw i64 %polly.indvar708.us, %264
  %polly.loop_guard715.us1217 = icmp sgt i64 %277, -1
  br i1 %polly.loop_guard715.us1217, label %polly.loop_header712.preheader.us, label %polly.loop_exit714.us

polly.loop_header712.us:                          ; preds = %polly.loop_header712.us.preheader, %polly.loop_header712.us
  %polly.indvar716.us = phi i64 [ %polly.indvar_next717.us, %polly.loop_header712.us ], [ %polly.indvar716.us.ph, %polly.loop_header712.us.preheader ]
  %278 = add nuw nsw i64 %polly.indvar716.us, %251
  %polly.access.add.Packed_MemRef_call1526720.us = add nuw nsw i64 %polly.indvar716.us, %polly.access.mul.Packed_MemRef_call1526719.us
  %polly.access.Packed_MemRef_call1526721.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720.us
  %_p_scalar_722.us = load double, double* %polly.access.Packed_MemRef_call1526721.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_726.us, %_p_scalar_722.us
  %polly.access.Packed_MemRef_call2528729.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720.us
  %_p_scalar_730.us = load double, double* %polly.access.Packed_MemRef_call2528729.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_734.us, %_p_scalar_730.us
  %279 = shl i64 %278, 3
  %280 = add i64 %279, %282
  %scevgep735.us = getelementptr i8, i8* %call, i64 %280
  %scevgep735736.us = bitcast i8* %scevgep735.us to double*
  %_p_scalar_737.us = load double, double* %scevgep735736.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_737.us
  store double %p_add42.i.us, double* %scevgep735736.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next717.us = add nuw nsw i64 %polly.indvar716.us, 1
  %exitcond1173.not = icmp eq i64 %polly.indvar716.us, %smin1172
  br i1 %exitcond1173.not, label %polly.loop_exit714.us, label %polly.loop_header712.us, !llvm.loop !110

polly.loop_exit714.us:                            ; preds = %polly.loop_header712.us, %middle.block1315, %polly.loop_header704.us
  %polly.indvar_next709.us = add nuw nsw i64 %polly.indvar708.us, 1
  %polly.loop_cond710.us = icmp ult i64 %polly.indvar708.us, 99
  %indvars.iv.next1171 = add i64 %indvars.iv1170, 1
  %indvar.next1322 = add i64 %indvar1321, 1
  br i1 %polly.loop_cond710.us, label %polly.loop_header704.us, label %polly.loop_exit706.loopexit.us

polly.loop_header712.preheader.us:                ; preds = %polly.loop_header704.us
  %281 = add nuw nsw i64 %polly.indvar708.us, %263
  %polly.access.add.Packed_MemRef_call2528724.us = add nsw i64 %277, %polly.access.mul.Packed_MemRef_call1526719.us
  %polly.access.Packed_MemRef_call2528725.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724.us
  %_p_scalar_726.us = load double, double* %polly.access.Packed_MemRef_call2528725.us, align 8
  %polly.access.Packed_MemRef_call1526733.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724.us
  %_p_scalar_734.us = load double, double* %polly.access.Packed_MemRef_call1526733.us, align 8
  %282 = mul i64 %281, 9600
  %min.iters.check1324 = icmp ult i64 %276, 4
  br i1 %min.iters.check1324, label %polly.loop_header712.us.preheader, label %vector.ph1325

vector.ph1325:                                    ; preds = %polly.loop_header712.preheader.us
  %n.vec1327 = and i64 %276, -4
  %broadcast.splatinsert1333 = insertelement <4 x double> poison, double %_p_scalar_726.us, i32 0
  %broadcast.splat1334 = shufflevector <4 x double> %broadcast.splatinsert1333, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1336 = insertelement <4 x double> poison, double %_p_scalar_734.us, i32 0
  %broadcast.splat1337 = shufflevector <4 x double> %broadcast.splatinsert1336, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1317

vector.body1317:                                  ; preds = %vector.body1317, %vector.ph1325
  %index1328 = phi i64 [ 0, %vector.ph1325 ], [ %index.next1329, %vector.body1317 ]
  %283 = add nuw nsw i64 %index1328, %251
  %284 = add nuw nsw i64 %index1328, %polly.access.mul.Packed_MemRef_call1526719.us
  %285 = getelementptr double, double* %Packed_MemRef_call1526, i64 %284
  %286 = bitcast double* %285 to <4 x double>*
  %wide.load1332 = load <4 x double>, <4 x double>* %286, align 8
  %287 = fmul fast <4 x double> %broadcast.splat1334, %wide.load1332
  %288 = getelementptr double, double* %Packed_MemRef_call2528, i64 %284
  %289 = bitcast double* %288 to <4 x double>*
  %wide.load1335 = load <4 x double>, <4 x double>* %289, align 8
  %290 = fmul fast <4 x double> %broadcast.splat1337, %wide.load1335
  %291 = shl i64 %283, 3
  %292 = add i64 %291, %282
  %293 = getelementptr i8, i8* %call, i64 %292
  %294 = bitcast i8* %293 to <4 x double>*
  %wide.load1338 = load <4 x double>, <4 x double>* %294, align 8, !alias.scope !99, !noalias !101
  %295 = fadd fast <4 x double> %290, %287
  %296 = fmul fast <4 x double> %295, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %297 = fadd fast <4 x double> %296, %wide.load1338
  %298 = bitcast i8* %293 to <4 x double>*
  store <4 x double> %297, <4 x double>* %298, align 8, !alias.scope !99, !noalias !101
  %index.next1329 = add i64 %index1328, 4
  %299 = icmp eq i64 %index.next1329, %n.vec1327
  br i1 %299, label %middle.block1315, label %vector.body1317, !llvm.loop !111

middle.block1315:                                 ; preds = %vector.body1317
  %cmp.n1331 = icmp eq i64 %276, %n.vec1327
  br i1 %cmp.n1331, label %polly.loop_exit714.us, label %polly.loop_header712.us.preheader

polly.loop_header712.us.preheader:                ; preds = %polly.loop_header712.preheader.us, %middle.block1315
  %polly.indvar716.us.ph = phi i64 [ 0, %polly.loop_header712.preheader.us ], [ %n.vec1327, %middle.block1315 ]
  br label %polly.loop_header712.us

polly.loop_exit706.loopexit.us:                   ; preds = %polly.loop_exit714.us
  %polly.indvar_next701.us = add nuw nsw i64 %polly.indvar700.us, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar_next701.us, %239
  br i1 %exitcond1175.not, label %polly.loop_exit699, label %polly.loop_header697.us

polly.loop_header683:                             ; preds = %polly.loop_header662, %polly.loop_header683
  %polly.indvar687 = phi i64 [ %polly.indvar_next688, %polly.loop_header683 ], [ %266, %polly.loop_header662 ]
  %300 = add nuw nsw i64 %polly.indvar687, %251
  %polly.access.mul.call1691 = mul nsw i64 %300, 1000
  %polly.access.add.call1692 = add nuw nsw i64 %271, %polly.access.mul.call1691
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1526695 = add nuw nsw i64 %polly.indvar687, %polly.access.mul.Packed_MemRef_call1526694
  %polly.access.Packed_MemRef_call1526696 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1526696, align 8
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %polly.loop_cond689.not.not = icmp slt i64 %polly.indvar687, %267
  br i1 %polly.loop_cond689.not.not, label %polly.loop_header683, label %polly.loop_exit685

polly.loop_header864:                             ; preds = %entry, %polly.loop_exit872
  %indvars.iv1205 = phi i64 [ %indvars.iv.next1206, %polly.loop_exit872 ], [ 0, %entry ]
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_exit872 ], [ 0, %entry ]
  %smin1207 = call i64 @llvm.smin.i64(i64 %indvars.iv1205, i64 -1168)
  %301 = shl nsw i64 %polly.indvar867, 5
  %302 = add nsw i64 %smin1207, 1199
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1206 = add nsw i64 %indvars.iv1205, -32
  %exitcond1210.not = icmp eq i64 %polly.indvar_next868, 38
  br i1 %exitcond1210.not, label %polly.loop_header891, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %indvars.iv1201 = phi i64 [ %indvars.iv.next1202, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %303 = mul nsw i64 %polly.indvar873, -32
  %smin = call i64 @llvm.smin.i64(i64 %303, i64 -1168)
  %304 = add nsw i64 %smin, 1200
  %smin1203 = call i64 @llvm.smin.i64(i64 %indvars.iv1201, i64 -1168)
  %305 = shl nsw i64 %polly.indvar873, 5
  %306 = add nsw i64 %smin1203, 1199
  br label %polly.loop_header876

polly.loop_exit878:                               ; preds = %polly.loop_exit884
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %indvars.iv.next1202 = add nsw i64 %indvars.iv1201, -32
  %exitcond1209.not = icmp eq i64 %polly.indvar_next874, 38
  br i1 %exitcond1209.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_exit884, %polly.loop_header870
  %polly.indvar879 = phi i64 [ 0, %polly.loop_header870 ], [ %polly.indvar_next880, %polly.loop_exit884 ]
  %307 = add nuw nsw i64 %polly.indvar879, %301
  %308 = trunc i64 %307 to i32
  %309 = mul nuw nsw i64 %307, 9600
  %min.iters.check = icmp eq i64 %304, 0
  br i1 %min.iters.check, label %polly.loop_header882, label %vector.ph1245

vector.ph1245:                                    ; preds = %polly.loop_header876
  %broadcast.splatinsert1252 = insertelement <4 x i64> poison, i64 %305, i32 0
  %broadcast.splat1253 = shufflevector <4 x i64> %broadcast.splatinsert1252, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1254 = insertelement <4 x i32> poison, i32 %308, i32 0
  %broadcast.splat1255 = shufflevector <4 x i32> %broadcast.splatinsert1254, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %vector.ph1245
  %index1246 = phi i64 [ 0, %vector.ph1245 ], [ %index.next1247, %vector.body1244 ]
  %vec.ind1250 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1245 ], [ %vec.ind.next1251, %vector.body1244 ]
  %310 = add nuw nsw <4 x i64> %vec.ind1250, %broadcast.splat1253
  %311 = trunc <4 x i64> %310 to <4 x i32>
  %312 = mul <4 x i32> %broadcast.splat1255, %311
  %313 = add <4 x i32> %312, <i32 3, i32 3, i32 3, i32 3>
  %314 = urem <4 x i32> %313, <i32 1200, i32 1200, i32 1200, i32 1200>
  %315 = sitofp <4 x i32> %314 to <4 x double>
  %316 = fmul fast <4 x double> %315, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %317 = extractelement <4 x i64> %310, i32 0
  %318 = shl i64 %317, 3
  %319 = add nuw nsw i64 %318, %309
  %320 = getelementptr i8, i8* %call, i64 %319
  %321 = bitcast i8* %320 to <4 x double>*
  store <4 x double> %316, <4 x double>* %321, align 8, !alias.scope !112, !noalias !114
  %index.next1247 = add i64 %index1246, 4
  %vec.ind.next1251 = add <4 x i64> %vec.ind1250, <i64 4, i64 4, i64 4, i64 4>
  %322 = icmp eq i64 %index.next1247, %304
  br i1 %322, label %polly.loop_exit884, label %vector.body1244, !llvm.loop !117

polly.loop_exit884:                               ; preds = %vector.body1244, %polly.loop_header882
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1208.not = icmp eq i64 %polly.indvar879, %302
  br i1 %exitcond1208.not, label %polly.loop_exit878, label %polly.loop_header876

polly.loop_header882:                             ; preds = %polly.loop_header876, %polly.loop_header882
  %polly.indvar885 = phi i64 [ %polly.indvar_next886, %polly.loop_header882 ], [ 0, %polly.loop_header876 ]
  %323 = add nuw nsw i64 %polly.indvar885, %305
  %324 = trunc i64 %323 to i32
  %325 = mul i32 %324, %308
  %326 = add i32 %325, 3
  %327 = urem i32 %326, 1200
  %p_conv31.i = sitofp i32 %327 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %328 = shl i64 %323, 3
  %329 = add nuw nsw i64 %328, %309
  %scevgep888 = getelementptr i8, i8* %call, i64 %329
  %scevgep888889 = bitcast i8* %scevgep888 to double*
  store double %p_div33.i, double* %scevgep888889, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next886 = add nuw nsw i64 %polly.indvar885, 1
  %exitcond1204.not = icmp eq i64 %polly.indvar885, %306
  br i1 %exitcond1204.not, label %polly.loop_exit884, label %polly.loop_header882, !llvm.loop !118

polly.loop_header891:                             ; preds = %polly.loop_exit872, %polly.loop_exit899
  %indvars.iv1195 = phi i64 [ %indvars.iv.next1196, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %smin1197 = call i64 @llvm.smin.i64(i64 %indvars.iv1195, i64 -1168)
  %330 = shl nsw i64 %polly.indvar894, 5
  %331 = add nsw i64 %smin1197, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1196 = add nsw i64 %indvars.iv1195, -32
  %exitcond1200.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1200.not, label %polly.loop_header917, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1191 = phi i64 [ %indvars.iv.next1192, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %332 = mul nsw i64 %polly.indvar900, -32
  %smin1259 = call i64 @llvm.smin.i64(i64 %332, i64 -968)
  %333 = add nsw i64 %smin1259, 1000
  %smin1193 = call i64 @llvm.smin.i64(i64 %indvars.iv1191, i64 -968)
  %334 = shl nsw i64 %polly.indvar900, 5
  %335 = add nsw i64 %smin1193, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1192 = add nsw i64 %indvars.iv1191, -32
  %exitcond1199.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1199.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %336 = add nuw nsw i64 %polly.indvar906, %330
  %337 = trunc i64 %336 to i32
  %338 = mul nuw nsw i64 %336, 8000
  %min.iters.check1260 = icmp eq i64 %333, 0
  br i1 %min.iters.check1260, label %polly.loop_header909, label %vector.ph1261

vector.ph1261:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1270 = insertelement <4 x i64> poison, i64 %334, i32 0
  %broadcast.splat1271 = shufflevector <4 x i64> %broadcast.splatinsert1270, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1272 = insertelement <4 x i32> poison, i32 %337, i32 0
  %broadcast.splat1273 = shufflevector <4 x i32> %broadcast.splatinsert1272, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %vector.ph1261
  %index1264 = phi i64 [ 0, %vector.ph1261 ], [ %index.next1265, %vector.body1258 ]
  %vec.ind1268 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1261 ], [ %vec.ind.next1269, %vector.body1258 ]
  %339 = add nuw nsw <4 x i64> %vec.ind1268, %broadcast.splat1271
  %340 = trunc <4 x i64> %339 to <4 x i32>
  %341 = mul <4 x i32> %broadcast.splat1273, %340
  %342 = add <4 x i32> %341, <i32 2, i32 2, i32 2, i32 2>
  %343 = urem <4 x i32> %342, <i32 1000, i32 1000, i32 1000, i32 1000>
  %344 = sitofp <4 x i32> %343 to <4 x double>
  %345 = fmul fast <4 x double> %344, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %346 = extractelement <4 x i64> %339, i32 0
  %347 = shl i64 %346, 3
  %348 = add nuw nsw i64 %347, %338
  %349 = getelementptr i8, i8* %call2, i64 %348
  %350 = bitcast i8* %349 to <4 x double>*
  store <4 x double> %345, <4 x double>* %350, align 8, !alias.scope !116, !noalias !119
  %index.next1265 = add i64 %index1264, 4
  %vec.ind.next1269 = add <4 x i64> %vec.ind1268, <i64 4, i64 4, i64 4, i64 4>
  %351 = icmp eq i64 %index.next1265, %333
  br i1 %351, label %polly.loop_exit911, label %vector.body1258, !llvm.loop !120

polly.loop_exit911:                               ; preds = %vector.body1258, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1198.not = icmp eq i64 %polly.indvar906, %331
  br i1 %exitcond1198.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %352 = add nuw nsw i64 %polly.indvar912, %334
  %353 = trunc i64 %352 to i32
  %354 = mul i32 %353, %337
  %355 = add i32 %354, 2
  %356 = urem i32 %355, 1000
  %p_conv10.i = sitofp i32 %356 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %357 = shl i64 %352, 3
  %358 = add nuw nsw i64 %357, %338
  %scevgep915 = getelementptr i8, i8* %call2, i64 %358
  %scevgep915916 = bitcast i8* %scevgep915 to double*
  store double %p_div12.i, double* %scevgep915916, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1194.not = icmp eq i64 %polly.indvar912, %335
  br i1 %exitcond1194.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !121

polly.loop_header917:                             ; preds = %polly.loop_exit899, %polly.loop_exit925
  %indvars.iv1185 = phi i64 [ %indvars.iv.next1186, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %smin1187 = call i64 @llvm.smin.i64(i64 %indvars.iv1185, i64 -1168)
  %359 = shl nsw i64 %polly.indvar920, 5
  %360 = add nsw i64 %smin1187, 1199
  br label %polly.loop_header923

polly.loop_exit925:                               ; preds = %polly.loop_exit931
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %indvars.iv.next1186 = add nsw i64 %indvars.iv1185, -32
  %exitcond1190.not = icmp eq i64 %polly.indvar_next921, 38
  br i1 %exitcond1190.not, label %init_array.exit, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_exit931, %polly.loop_header917
  %indvars.iv1181 = phi i64 [ %indvars.iv.next1182, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %361 = mul nsw i64 %polly.indvar926, -32
  %smin1277 = call i64 @llvm.smin.i64(i64 %361, i64 -968)
  %362 = add nsw i64 %smin1277, 1000
  %smin1183 = call i64 @llvm.smin.i64(i64 %indvars.iv1181, i64 -968)
  %363 = shl nsw i64 %polly.indvar926, 5
  %364 = add nsw i64 %smin1183, 999
  br label %polly.loop_header929

polly.loop_exit931:                               ; preds = %polly.loop_exit937
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %indvars.iv.next1182 = add nsw i64 %indvars.iv1181, -32
  %exitcond1189.not = icmp eq i64 %polly.indvar_next927, 32
  br i1 %exitcond1189.not, label %polly.loop_exit925, label %polly.loop_header923

polly.loop_header929:                             ; preds = %polly.loop_exit937, %polly.loop_header923
  %polly.indvar932 = phi i64 [ 0, %polly.loop_header923 ], [ %polly.indvar_next933, %polly.loop_exit937 ]
  %365 = add nuw nsw i64 %polly.indvar932, %359
  %366 = trunc i64 %365 to i32
  %367 = mul nuw nsw i64 %365, 8000
  %min.iters.check1278 = icmp eq i64 %362, 0
  br i1 %min.iters.check1278, label %polly.loop_header935, label %vector.ph1279

vector.ph1279:                                    ; preds = %polly.loop_header929
  %broadcast.splatinsert1288 = insertelement <4 x i64> poison, i64 %363, i32 0
  %broadcast.splat1289 = shufflevector <4 x i64> %broadcast.splatinsert1288, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1290 = insertelement <4 x i32> poison, i32 %366, i32 0
  %broadcast.splat1291 = shufflevector <4 x i32> %broadcast.splatinsert1290, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %vector.ph1279
  %index1282 = phi i64 [ 0, %vector.ph1279 ], [ %index.next1283, %vector.body1276 ]
  %vec.ind1286 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1279 ], [ %vec.ind.next1287, %vector.body1276 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1286, %broadcast.splat1289
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1291, %369
  %371 = add <4 x i32> %370, <i32 1, i32 1, i32 1, i32 1>
  %372 = urem <4 x i32> %371, <i32 1200, i32 1200, i32 1200, i32 1200>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add nuw nsw i64 %376, %367
  %378 = getelementptr i8, i8* %call1, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !115, !noalias !122
  %index.next1283 = add i64 %index1282, 4
  %vec.ind.next1287 = add <4 x i64> %vec.ind1286, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1283, %362
  br i1 %380, label %polly.loop_exit937, label %vector.body1276, !llvm.loop !123

polly.loop_exit937:                               ; preds = %vector.body1276, %polly.loop_header935
  %polly.indvar_next933 = add nuw nsw i64 %polly.indvar932, 1
  %exitcond1188.not = icmp eq i64 %polly.indvar932, %360
  br i1 %exitcond1188.not, label %polly.loop_exit931, label %polly.loop_header929

polly.loop_header935:                             ; preds = %polly.loop_header929, %polly.loop_header935
  %polly.indvar938 = phi i64 [ %polly.indvar_next939, %polly.loop_header935 ], [ 0, %polly.loop_header929 ]
  %381 = add nuw nsw i64 %polly.indvar938, %363
  %382 = trunc i64 %381 to i32
  %383 = mul i32 %382, %366
  %384 = add i32 %383, 1
  %385 = urem i32 %384, 1200
  %p_conv.i = sitofp i32 %385 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %386 = shl i64 %381, 3
  %387 = add nuw nsw i64 %386, %367
  %scevgep942 = getelementptr i8, i8* %call1, i64 %387
  %scevgep942943 = bitcast i8* %scevgep942 to double*
  store double %p_div.i, double* %scevgep942943, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next939 = add nuw nsw i64 %polly.indvar938, 1
  %exitcond1184.not = icmp eq i64 %polly.indvar938, %364
  br i1 %exitcond1184.not, label %polly.loop_exit937, label %polly.loop_header935, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 50}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 64}
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
!51 = !{!"llvm.loop.tile.size", i32 100}
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
