; ModuleID = 'syr2k_exhaustive/mmp_all_SM_968.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_968.c"
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
  %scevgep1271 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1270 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1269 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1268 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1268, %scevgep1271
  %bound1 = icmp ult i8* %scevgep1270, %scevgep1269
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
  br i1 %exitcond18.not.i, label %vector.ph1275, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1275:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1282 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1283 = shufflevector <4 x i64> %broadcast.splatinsert1282, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1275
  %index1276 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1277, %vector.body1274 ]
  %vec.ind1280 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1275 ], [ %vec.ind.next1281, %vector.body1274 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1280, %broadcast.splat1283
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv7.i, i64 %index1276
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1277 = add i64 %index1276, 4
  %vec.ind.next1281 = add <4 x i64> %vec.ind1280, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1277, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1274, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1274
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1275, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit925
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1338 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1338, label %for.body3.i46.preheader1688, label %vector.ph1339

vector.ph1339:                                    ; preds = %for.body3.i46.preheader
  %n.vec1341 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %vector.ph1339
  %index1342 = phi i64 [ 0, %vector.ph1339 ], [ %index.next1343, %vector.body1337 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %index1342
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1343 = add i64 %index1342, 4
  %46 = icmp eq i64 %index.next1343, %n.vec1341
  br i1 %46, label %middle.block1335, label %vector.body1337, !llvm.loop !18

middle.block1335:                                 ; preds = %vector.body1337
  %cmp.n1345 = icmp eq i64 %indvars.iv21.i, %n.vec1341
  br i1 %cmp.n1345, label %for.inc6.i, label %for.body3.i46.preheader1688

for.body3.i46.preheader1688:                      ; preds = %for.body3.i46.preheader, %middle.block1335
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1341, %middle.block1335 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1688, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1688 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1335, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

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
  %min.iters.check1451 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1451, label %for.body3.i60.preheader1685, label %vector.ph1452

vector.ph1452:                                    ; preds = %for.body3.i60.preheader
  %n.vec1454 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1450

vector.body1450:                                  ; preds = %vector.body1450, %vector.ph1452
  %index1455 = phi i64 [ 0, %vector.ph1452 ], [ %index.next1456, %vector.body1450 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %index1455
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1459 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1459, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1456 = add i64 %index1455, 4
  %57 = icmp eq i64 %index.next1456, %n.vec1454
  br i1 %57, label %middle.block1448, label %vector.body1450, !llvm.loop !63

middle.block1448:                                 ; preds = %vector.body1450
  %cmp.n1458 = icmp eq i64 %indvars.iv21.i52, %n.vec1454
  br i1 %cmp.n1458, label %for.inc6.i63, label %for.body3.i60.preheader1685

for.body3.i60.preheader1685:                      ; preds = %for.body3.i60.preheader, %middle.block1448
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1454, %middle.block1448 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1685, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1685 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1448, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

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
  %min.iters.check1567 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1567, label %for.body3.i99.preheader1682, label %vector.ph1568

vector.ph1568:                                    ; preds = %for.body3.i99.preheader
  %n.vec1570 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1566

vector.body1566:                                  ; preds = %vector.body1566, %vector.ph1568
  %index1571 = phi i64 [ 0, %vector.ph1568 ], [ %index.next1572, %vector.body1566 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %index1571
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1575 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1575, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1572 = add i64 %index1571, 4
  %68 = icmp eq i64 %index.next1572, %n.vec1570
  br i1 %68, label %middle.block1564, label %vector.body1566, !llvm.loop !65

middle.block1564:                                 ; preds = %vector.body1566
  %cmp.n1574 = icmp eq i64 %indvars.iv21.i91, %n.vec1570
  br i1 %cmp.n1574, label %for.inc6.i102, label %for.body3.i99.preheader1682

for.body3.i99.preheader1682:                      ; preds = %for.body3.i99.preheader, %middle.block1564
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1570, %middle.block1564 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1682, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1682 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1564, %for.cond1.preheader.i93
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !67
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !69

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !70

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !67
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
  %indvar1579 = phi i64 [ %indvar.next1580, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1579, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1581 = icmp ult i64 %88, 4
  br i1 %min.iters.check1581, label %polly.loop_header192.preheader, label %vector.ph1582

vector.ph1582:                                    ; preds = %polly.loop_header
  %n.vec1584 = and i64 %88, -4
  br label %vector.body1578

vector.body1578:                                  ; preds = %vector.body1578, %vector.ph1582
  %index1585 = phi i64 [ 0, %vector.ph1582 ], [ %index.next1586, %vector.body1578 ]
  %90 = shl nuw nsw i64 %index1585, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1589 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1589, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1586 = add i64 %index1585, 4
  %95 = icmp eq i64 %index.next1586, %n.vec1584
  br i1 %95, label %middle.block1576, label %vector.body1578, !llvm.loop !78

middle.block1576:                                 ; preds = %vector.body1578
  %cmp.n1588 = icmp eq i64 %88, %n.vec1584
  br i1 %cmp.n1588, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1576
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1584, %middle.block1576 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1576
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1580 = add i64 %indvar1579, 1
  br i1 %exitcond1115.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr i8, i8* %malloccall, i64 8
  %96 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1 to double*
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr i8, i8* %malloccall, i64 16
  %97 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2 to double*
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr i8, i8* %malloccall, i64 24
  %98 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3 to double*
  %polly.access.Packed_MemRef_call1.us.11207 = getelementptr i8, i8* %malloccall, i64 9600
  %99 = bitcast i8* %polly.access.Packed_MemRef_call1.us.11207 to double*
  %polly.access.Packed_MemRef_call1.us.1.1 = getelementptr i8, i8* %malloccall, i64 9608
  %100 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.1 to double*
  %polly.access.Packed_MemRef_call1.us.2.1 = getelementptr i8, i8* %malloccall, i64 9616
  %101 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.1 to double*
  %polly.access.Packed_MemRef_call1.us.3.1 = getelementptr i8, i8* %malloccall, i64 9624
  %102 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.1 to double*
  %polly.access.Packed_MemRef_call1.us.21212 = getelementptr i8, i8* %malloccall, i64 19200
  %103 = bitcast i8* %polly.access.Packed_MemRef_call1.us.21212 to double*
  %polly.access.Packed_MemRef_call1.us.1.2 = getelementptr i8, i8* %malloccall, i64 19208
  %104 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.2 to double*
  %polly.access.Packed_MemRef_call1.us.2.2 = getelementptr i8, i8* %malloccall, i64 19216
  %105 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.2 to double*
  %polly.access.Packed_MemRef_call1.us.3.2 = getelementptr i8, i8* %malloccall, i64 19224
  %106 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.2 to double*
  %polly.access.Packed_MemRef_call1.us.31217 = getelementptr i8, i8* %malloccall, i64 28800
  %107 = bitcast i8* %polly.access.Packed_MemRef_call1.us.31217 to double*
  %polly.access.Packed_MemRef_call1.us.1.3 = getelementptr i8, i8* %malloccall, i64 28808
  %108 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.3 to double*
  %polly.access.Packed_MemRef_call1.us.2.3 = getelementptr i8, i8* %malloccall, i64 28816
  %109 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.3 to double*
  %polly.access.Packed_MemRef_call1.us.3.3 = getelementptr i8, i8* %malloccall, i64 28824
  %110 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.3 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %111
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1114.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1114.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %112 = shl nsw i64 %polly.indvar203, 2
  %113 = or i64 %112, 1
  %114 = or i64 %112, 2
  %115 = or i64 %112, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next204, 250
  br i1 %exitcond1113.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %146, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %116 = shl nuw nsw i64 %polly.indvar209, 2
  %117 = udiv i64 %polly.indvar209, 24
  %118 = mul nuw nsw i64 %117, 96
  %119 = sub nsw i64 %116, %118
  %120 = mul nsw i64 %polly.indvar209, -4
  %121 = add i64 %120, %118
  %122 = shl nuw nsw i64 %polly.indvar209, 2
  %123 = udiv i64 %polly.indvar209, 24
  %124 = mul nuw nsw i64 %123, 96
  %125 = sub nsw i64 %122, %124
  %126 = mul nsw i64 %polly.indvar209, -4
  %127 = add i64 %126, %124
  %128 = shl nuw nsw i64 %polly.indvar209, 2
  %129 = udiv i64 %polly.indvar209, 24
  %130 = mul nuw nsw i64 %129, 96
  %131 = sub nsw i64 %128, %130
  %132 = mul nsw i64 %polly.indvar209, -4
  %133 = add i64 %132, %130
  %134 = shl nuw nsw i64 %polly.indvar209, 2
  %135 = udiv i64 %polly.indvar209, 24
  %136 = mul nuw nsw i64 %135, 96
  %137 = sub nsw i64 %134, %136
  %138 = mul nsw i64 %polly.indvar209, -4
  %139 = add i64 %138, %136
  %140 = udiv i64 %polly.indvar209, 24
  %141 = mul nuw nsw i64 %140, 96
  %142 = sub nsw i64 %indvars.iv1100, %141
  %143 = add i64 %indvars.iv1104, %141
  %144 = mul nsw i64 %polly.indvar209, -4
  %145 = shl nsw i64 %polly.indvar209, 2
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %146 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next1101 = add nuw nsw i64 %indvars.iv1100, 4
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -4
  %exitcond1112.not = icmp eq i64 %146, 300
  br i1 %exitcond1112.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %147 = add nuw nsw i64 %polly.indvar221, %145
  %polly.access.mul.call2225 = mul nuw nsw i64 %147, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %112, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit265, %polly.loop_exit220.3
  %indvar1593 = phi i64 [ %indvar.next1594, %polly.loop_exit265 ], [ 0, %polly.loop_exit220.3 ]
  %indvars.iv1106 = phi i64 [ %indvars.iv.next1107, %polly.loop_exit265 ], [ %143, %polly.loop_exit220.3 ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit265 ], [ %142, %polly.loop_exit220.3 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit265 ], [ %140, %polly.loop_exit220.3 ]
  %148 = mul nsw i64 %indvar1593, -96
  %149 = add i64 %119, %148
  %smax1661 = call i64 @llvm.smax.i64(i64 %149, i64 0)
  %150 = mul nuw nsw i64 %indvar1593, 96
  %151 = add i64 %121, %150
  %152 = add i64 %smax1661, %151
  %153 = mul nsw i64 %indvar1593, -96
  %154 = add i64 %125, %153
  %smax1639 = call i64 @llvm.smax.i64(i64 %154, i64 0)
  %155 = mul nuw nsw i64 %indvar1593, 96
  %156 = add i64 %127, %155
  %157 = add i64 %smax1639, %156
  %158 = mul nsw i64 %indvar1593, -96
  %159 = add i64 %131, %158
  %smax1617 = call i64 @llvm.smax.i64(i64 %159, i64 0)
  %160 = mul nuw nsw i64 %indvar1593, 96
  %161 = add i64 %133, %160
  %162 = add i64 %smax1617, %161
  %163 = mul nsw i64 %indvar1593, -96
  %164 = add i64 %137, %163
  %smax1595 = call i64 @llvm.smax.i64(i64 %164, i64 0)
  %165 = mul nuw nsw i64 %indvar1593, 96
  %166 = add i64 %139, %165
  %167 = add i64 %smax1595, %166
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1102, i64 0)
  %168 = add i64 %smax, %indvars.iv1106
  %169 = mul nuw nsw i64 %polly.indvar231, 24
  %.not.not = icmp ugt i64 %169, %polly.indvar209
  %170 = mul nuw nsw i64 %polly.indvar231, 96
  %171 = add nsw i64 %170, %144
  %172 = icmp sgt i64 %171, 0
  %173 = select i1 %172, i64 %171, i64 0
  %174 = add nsw i64 %171, 95
  %175 = icmp slt i64 %544, %174
  %176 = select i1 %175, i64 %544, i64 %174
  %polly.loop_guard.not = icmp sgt i64 %173, %176
  br i1 %.not.not, label %polly.loop_header234.us.preheader, label %polly.loop_header228.split

polly.loop_header234.us.preheader:                ; preds = %polly.loop_header228
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us, double* %Packed_MemRef_call1, align 8
  %polly.access.call1249.load.us.1 = load double, double* %polly.access.call1249.us.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1, double* %96, align 8
  %polly.access.call1249.load.us.2 = load double, double* %polly.access.call1249.us.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2, double* %97, align 8
  %polly.access.call1249.load.us.3 = load double, double* %polly.access.call1249.us.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3, double* %98, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit252.us.1.critedge, label %polly.loop_header250.us

polly.loop_header250.us:                          ; preds = %polly.loop_header234.us.preheader, %polly.loop_header250.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header250.us ], [ %173, %polly.loop_header234.us.preheader ]
  %177 = add nuw nsw i64 %polly.indvar253.us, %145
  %polly.access.mul.call1257.us = mul nsw i64 %177, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %112, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.not.not.us = icmp slt i64 %polly.indvar253.us, %176
  br i1 %polly.loop_cond255.not.not.us, label %polly.loop_header250.us, label %polly.loop_exit252.us

polly.loop_exit252.us:                            ; preds = %polly.loop_header250.us
  %polly.access.call1249.load.us.11206 = load double, double* %polly.access.call1249.us.11205, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.11206, double* %99, align 8
  %polly.access.call1249.load.us.1.1 = load double, double* %polly.access.call1249.us.1.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1.1, double* %100, align 8
  %polly.access.call1249.load.us.2.1 = load double, double* %polly.access.call1249.us.2.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2.1, double* %101, align 8
  %polly.access.call1249.load.us.3.1 = load double, double* %polly.access.call1249.us.3.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3.1, double* %102, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit252.us.2.critedge, label %polly.loop_header250.us.1

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header250

polly.loop_exit265:                               ; preds = %polly.loop_exit280.3, %polly.loop_header263.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 12
  %indvars.iv.next1103 = add i64 %indvars.iv1102, -96
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 96
  %indvar.next1594 = add i64 %indvar1593, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header263.preheader.critedge:          ; preds = %polly.loop_exit252.us.1
  %polly.access.call1249.load.us.31216.c = load double, double* %polly.access.call1249.us.31215, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.31216.c, double* %107, align 8
  %polly.access.call1249.load.us.1.3.c = load double, double* %polly.access.call1249.us.1.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1.3.c, double* %108, align 8
  %polly.access.call1249.load.us.2.3.c = load double, double* %polly.access.call1249.us.2.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2.3.c, double* %109, align 8
  %polly.access.call1249.load.us.3.3.c = load double, double* %polly.access.call1249.us.3.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3.3.c, double* %110, align 8
  br label %polly.loop_header263.preheader

polly.loop_header263.preheader:                   ; preds = %polly.loop_header250.3, %polly.loop_header250.us.3, %polly.loop_header263.preheader.critedge, %polly.loop_exit252.us.2, %polly.loop_header228.split
  %178 = sub nsw i64 %145, %170
  %179 = icmp sgt i64 %178, 0
  %180 = select i1 %179, i64 %178, i64 0
  %181 = mul nsw i64 %polly.indvar231, -96
  %182 = icmp slt i64 %181, -1104
  %183 = select i1 %182, i64 %181, i64 -1104
  %184 = add nsw i64 %183, 1199
  %polly.loop_guard273.not = icmp sgt i64 %180, %184
  br i1 %polly.loop_guard273.not, label %polly.loop_exit265, label %polly.loop_header270

polly.loop_header250:                             ; preds = %polly.loop_header228.split, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %173, %polly.loop_header228.split ]
  %185 = add nuw nsw i64 %polly.indvar253, %145
  %polly.access.mul.call1257 = mul nsw i64 %185, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %112, %polly.access.mul.call1257
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp slt i64 %polly.indvar253, %176
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_header250.1

polly.loop_header270:                             ; preds = %polly.loop_header263.preheader, %polly.loop_exit280
  %indvar1662 = phi i64 [ %indvar.next1663, %polly.loop_exit280 ], [ 0, %polly.loop_header263.preheader ]
  %indvars.iv1108 = phi i64 [ %indvars.iv.next1109, %polly.loop_exit280 ], [ %168, %polly.loop_header263.preheader ]
  %polly.indvar274 = phi i64 [ %polly.indvar_next275, %polly.loop_exit280 ], [ %180, %polly.loop_header263.preheader ]
  %186 = add i64 %152, %indvar1662
  %smin1664 = call i64 @llvm.smin.i64(i64 %186, i64 3)
  %187 = add nsw i64 %smin1664, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1108, i64 3)
  %188 = add nsw i64 %polly.indvar274, %171
  %polly.loop_guard2811248 = icmp sgt i64 %188, -1
  br i1 %polly.loop_guard2811248, label %polly.loop_header278.preheader, label %polly.loop_exit280

polly.loop_header278.preheader:                   ; preds = %polly.loop_header270
  %189 = add nuw nsw i64 %polly.indvar274, %170
  %polly.access.Packed_MemRef_call2291 = getelementptr double, double* %Packed_MemRef_call2, i64 %188
  %_p_scalar_292 = load double, double* %polly.access.Packed_MemRef_call2291, align 8
  %polly.access.Packed_MemRef_call1299 = getelementptr double, double* %Packed_MemRef_call1, i64 %188
  %_p_scalar_300 = load double, double* %polly.access.Packed_MemRef_call1299, align 8
  %190 = mul i64 %189, 9600
  %min.iters.check1665 = icmp ult i64 %187, 4
  br i1 %min.iters.check1665, label %polly.loop_header278.preheader1680, label %vector.ph1666

vector.ph1666:                                    ; preds = %polly.loop_header278.preheader
  %n.vec1668 = and i64 %187, -4
  %broadcast.splatinsert1674 = insertelement <4 x double> poison, double %_p_scalar_292, i32 0
  %broadcast.splat1675 = shufflevector <4 x double> %broadcast.splatinsert1674, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1677 = insertelement <4 x double> poison, double %_p_scalar_300, i32 0
  %broadcast.splat1678 = shufflevector <4 x double> %broadcast.splatinsert1677, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1660

vector.body1660:                                  ; preds = %vector.body1660, %vector.ph1666
  %index1669 = phi i64 [ 0, %vector.ph1666 ], [ %index.next1670, %vector.body1660 ]
  %191 = add nuw nsw i64 %index1669, %145
  %192 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1669
  %193 = bitcast double* %192 to <4 x double>*
  %wide.load1673 = load <4 x double>, <4 x double>* %193, align 8
  %194 = fmul fast <4 x double> %broadcast.splat1675, %wide.load1673
  %195 = getelementptr double, double* %Packed_MemRef_call2, i64 %index1669
  %196 = bitcast double* %195 to <4 x double>*
  %wide.load1676 = load <4 x double>, <4 x double>* %196, align 8
  %197 = fmul fast <4 x double> %broadcast.splat1678, %wide.load1676
  %198 = shl i64 %191, 3
  %199 = add i64 %198, %190
  %200 = getelementptr i8, i8* %call, i64 %199
  %201 = bitcast i8* %200 to <4 x double>*
  %wide.load1679 = load <4 x double>, <4 x double>* %201, align 8, !alias.scope !71, !noalias !73
  %202 = fadd fast <4 x double> %197, %194
  %203 = fmul fast <4 x double> %202, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %204 = fadd fast <4 x double> %203, %wide.load1679
  %205 = bitcast i8* %200 to <4 x double>*
  store <4 x double> %204, <4 x double>* %205, align 8, !alias.scope !71, !noalias !73
  %index.next1670 = add i64 %index1669, 4
  %206 = icmp eq i64 %index.next1670, %n.vec1668
  br i1 %206, label %middle.block1658, label %vector.body1660, !llvm.loop !83

middle.block1658:                                 ; preds = %vector.body1660
  %cmp.n1672 = icmp eq i64 %187, %n.vec1668
  br i1 %cmp.n1672, label %polly.loop_exit280, label %polly.loop_header278.preheader1680

polly.loop_header278.preheader1680:               ; preds = %polly.loop_header278.preheader, %middle.block1658
  %polly.indvar282.ph = phi i64 [ 0, %polly.loop_header278.preheader ], [ %n.vec1668, %middle.block1658 ]
  br label %polly.loop_header278

polly.loop_exit280:                               ; preds = %polly.loop_header278, %middle.block1658, %polly.loop_header270
  %polly.indvar_next275 = add nuw nsw i64 %polly.indvar274, 1
  %polly.loop_cond276.not.not = icmp slt i64 %polly.indvar274, %184
  %indvars.iv.next1109 = add i64 %indvars.iv1108, 1
  %indvar.next1663 = add i64 %indvar1662, 1
  br i1 %polly.loop_cond276.not.not, label %polly.loop_header270, label %polly.loop_header270.1

polly.loop_header278:                             ; preds = %polly.loop_header278.preheader1680, %polly.loop_header278
  %polly.indvar282 = phi i64 [ %polly.indvar_next283, %polly.loop_header278 ], [ %polly.indvar282.ph, %polly.loop_header278.preheader1680 ]
  %207 = add nuw nsw i64 %polly.indvar282, %145
  %polly.access.Packed_MemRef_call1287 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar282
  %_p_scalar_288 = load double, double* %polly.access.Packed_MemRef_call1287, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_292, %_p_scalar_288
  %polly.access.Packed_MemRef_call2295 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar282
  %_p_scalar_296 = load double, double* %polly.access.Packed_MemRef_call2295, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_300, %_p_scalar_296
  %208 = shl i64 %207, 3
  %209 = add i64 %208, %190
  %scevgep301 = getelementptr i8, i8* %call, i64 %209
  %scevgep301302 = bitcast i8* %scevgep301 to double*
  %_p_scalar_303 = load double, double* %scevgep301302, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_303
  store double %p_add42.i118, double* %scevgep301302, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283 = add nuw nsw i64 %polly.indvar282, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar282, %smin
  br i1 %exitcond1110.not, label %polly.loop_exit280, label %polly.loop_header278, !llvm.loop !84

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall310 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1463 = phi i64 [ %indvar.next1464, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %210 = add i64 %indvar1463, 1
  %211 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %211
  %min.iters.check1465 = icmp ult i64 %210, 4
  br i1 %min.iters.check1465, label %polly.loop_header400.preheader, label %vector.ph1466

vector.ph1466:                                    ; preds = %polly.loop_header394
  %n.vec1468 = and i64 %210, -4
  br label %vector.body1462

vector.body1462:                                  ; preds = %vector.body1462, %vector.ph1466
  %index1469 = phi i64 [ 0, %vector.ph1466 ], [ %index.next1470, %vector.body1462 ]
  %212 = shl nuw nsw i64 %index1469, 3
  %213 = getelementptr i8, i8* %scevgep406, i64 %212
  %214 = bitcast i8* %213 to <4 x double>*
  %wide.load1473 = load <4 x double>, <4 x double>* %214, align 8, !alias.scope !85, !noalias !87
  %215 = fmul fast <4 x double> %wide.load1473, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %216 = bitcast i8* %213 to <4 x double>*
  store <4 x double> %215, <4 x double>* %216, align 8, !alias.scope !85, !noalias !87
  %index.next1470 = add i64 %index1469, 4
  %217 = icmp eq i64 %index.next1470, %n.vec1468
  br i1 %217, label %middle.block1460, label %vector.body1462, !llvm.loop !92

middle.block1460:                                 ; preds = %vector.body1462
  %cmp.n1472 = icmp eq i64 %210, %n.vec1468
  br i1 %cmp.n1472, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1460
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1468, %middle.block1460 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1460
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next398, 1200
  %indvar.next1464 = add i64 %indvar1463, 1
  br i1 %exitcond1140.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  %polly.access.Packed_MemRef_call1309.us.1 = getelementptr i8, i8* %malloccall308, i64 8
  %218 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.1 to double*
  %polly.access.Packed_MemRef_call1309.us.2 = getelementptr i8, i8* %malloccall308, i64 16
  %219 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.2 to double*
  %polly.access.Packed_MemRef_call1309.us.3 = getelementptr i8, i8* %malloccall308, i64 24
  %220 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.3 to double*
  %polly.access.Packed_MemRef_call1309.us.11222 = getelementptr i8, i8* %malloccall308, i64 9600
  %221 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.11222 to double*
  %polly.access.Packed_MemRef_call1309.us.1.1 = getelementptr i8, i8* %malloccall308, i64 9608
  %222 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.1.1 to double*
  %polly.access.Packed_MemRef_call1309.us.2.1 = getelementptr i8, i8* %malloccall308, i64 9616
  %223 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.2.1 to double*
  %polly.access.Packed_MemRef_call1309.us.3.1 = getelementptr i8, i8* %malloccall308, i64 9624
  %224 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.3.1 to double*
  %polly.access.Packed_MemRef_call1309.us.21227 = getelementptr i8, i8* %malloccall308, i64 19200
  %225 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.21227 to double*
  %polly.access.Packed_MemRef_call1309.us.1.2 = getelementptr i8, i8* %malloccall308, i64 19208
  %226 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.1.2 to double*
  %polly.access.Packed_MemRef_call1309.us.2.2 = getelementptr i8, i8* %malloccall308, i64 19216
  %227 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.2.2 to double*
  %polly.access.Packed_MemRef_call1309.us.3.2 = getelementptr i8, i8* %malloccall308, i64 19224
  %228 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.3.2 to double*
  %polly.access.Packed_MemRef_call1309.us.31232 = getelementptr i8, i8* %malloccall308, i64 28800
  %229 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.31232 to double*
  %polly.access.Packed_MemRef_call1309.us.1.3 = getelementptr i8, i8* %malloccall308, i64 28808
  %230 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.1.3 to double*
  %polly.access.Packed_MemRef_call1309.us.2.3 = getelementptr i8, i8* %malloccall308, i64 28816
  %231 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.2.3 to double*
  %polly.access.Packed_MemRef_call1309.us.3.3 = getelementptr i8, i8* %malloccall308, i64 28824
  %232 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.3.3 to double*
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %233 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %233
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1139.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !93

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit418 ], [ 0, %polly.loop_header410.preheader ]
  %234 = shl nsw i64 %polly.indvar413, 2
  %235 = or i64 %234, 1
  %236 = or i64 %234, 2
  %237 = or i64 %234, 3
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit441
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar_next414, 250
  br i1 %exitcond1138.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit441, %polly.loop_header410
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit441 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %268, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %238 = shl nuw nsw i64 %polly.indvar419, 2
  %239 = udiv i64 %polly.indvar419, 24
  %240 = mul nuw nsw i64 %239, 96
  %241 = sub nsw i64 %238, %240
  %242 = mul nsw i64 %polly.indvar419, -4
  %243 = add i64 %242, %240
  %244 = shl nuw nsw i64 %polly.indvar419, 2
  %245 = udiv i64 %polly.indvar419, 24
  %246 = mul nuw nsw i64 %245, 96
  %247 = sub nsw i64 %244, %246
  %248 = mul nsw i64 %polly.indvar419, -4
  %249 = add i64 %248, %246
  %250 = shl nuw nsw i64 %polly.indvar419, 2
  %251 = udiv i64 %polly.indvar419, 24
  %252 = mul nuw nsw i64 %251, 96
  %253 = sub nsw i64 %250, %252
  %254 = mul nsw i64 %polly.indvar419, -4
  %255 = add i64 %254, %252
  %256 = shl nuw nsw i64 %polly.indvar419, 2
  %257 = udiv i64 %polly.indvar419, 24
  %258 = mul nuw nsw i64 %257, 96
  %259 = sub nsw i64 %256, %258
  %260 = mul nsw i64 %polly.indvar419, -4
  %261 = add i64 %260, %258
  %262 = udiv i64 %polly.indvar419, 24
  %263 = mul nuw nsw i64 %262, 96
  %264 = sub nsw i64 %indvars.iv1123, %263
  %265 = add i64 %indvars.iv1128, %263
  %266 = mul nsw i64 %polly.indvar419, -4
  %267 = shl nsw i64 %polly.indvar419, 2
  br label %polly.loop_header428

polly.loop_exit441:                               ; preds = %polly.loop_exit482
  %268 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -4
  %indvars.iv.next1124 = add nuw nsw i64 %indvars.iv1123, 4
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -4
  %exitcond1137.not = icmp eq i64 %268, 300
  br i1 %exitcond1137.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header416
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %269 = add nuw nsw i64 %polly.indvar431, %267
  %polly.access.mul.call2435 = mul nuw nsw i64 %269, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %234, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !89, !noalias !94
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar431
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1116
  br i1 %exitcond1118.not, label %polly.loop_header428.1, label %polly.loop_header428

polly.loop_header439:                             ; preds = %polly.loop_exit482, %polly.loop_exit430.3
  %indvar1477 = phi i64 [ %indvar.next1478, %polly.loop_exit482 ], [ 0, %polly.loop_exit430.3 ]
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit482 ], [ %265, %polly.loop_exit430.3 ]
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %polly.loop_exit482 ], [ %264, %polly.loop_exit430.3 ]
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_exit482 ], [ %262, %polly.loop_exit430.3 ]
  %270 = mul nsw i64 %indvar1477, -96
  %271 = add i64 %241, %270
  %smax1545 = call i64 @llvm.smax.i64(i64 %271, i64 0)
  %272 = mul nuw nsw i64 %indvar1477, 96
  %273 = add i64 %243, %272
  %274 = add i64 %smax1545, %273
  %275 = mul nsw i64 %indvar1477, -96
  %276 = add i64 %247, %275
  %smax1523 = call i64 @llvm.smax.i64(i64 %276, i64 0)
  %277 = mul nuw nsw i64 %indvar1477, 96
  %278 = add i64 %249, %277
  %279 = add i64 %smax1523, %278
  %280 = mul nsw i64 %indvar1477, -96
  %281 = add i64 %253, %280
  %smax1501 = call i64 @llvm.smax.i64(i64 %281, i64 0)
  %282 = mul nuw nsw i64 %indvar1477, 96
  %283 = add i64 %255, %282
  %284 = add i64 %smax1501, %283
  %285 = mul nsw i64 %indvar1477, -96
  %286 = add i64 %259, %285
  %smax1479 = call i64 @llvm.smax.i64(i64 %286, i64 0)
  %287 = mul nuw nsw i64 %indvar1477, 96
  %288 = add i64 %261, %287
  %289 = add i64 %smax1479, %288
  %smax1127 = call i64 @llvm.smax.i64(i64 %indvars.iv1125, i64 0)
  %290 = add i64 %smax1127, %indvars.iv1130
  %291 = mul nuw nsw i64 %polly.indvar442, 24
  %.not.not944 = icmp ugt i64 %291, %polly.indvar419
  %292 = mul nuw nsw i64 %polly.indvar442, 96
  %293 = add nsw i64 %292, %266
  %294 = icmp sgt i64 %293, 0
  %295 = select i1 %294, i64 %293, i64 0
  %296 = add nsw i64 %293, 95
  %297 = icmp slt i64 %632, %296
  %298 = select i1 %297, i64 %632, i64 %296
  %polly.loop_guard469.not = icmp sgt i64 %295, %298
  br i1 %.not.not944, label %polly.loop_header445.us.preheader, label %polly.loop_header439.split

polly.loop_header445.us.preheader:                ; preds = %polly.loop_header439
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us, double* %Packed_MemRef_call1309, align 8
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1, double* %218, align 8
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2, double* %219, align 8
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3, double* %220, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us.1.critedge, label %polly.loop_header466.us

polly.loop_header466.us:                          ; preds = %polly.loop_header445.us.preheader, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %295, %polly.loop_header445.us.preheader ]
  %299 = add nuw nsw i64 %polly.indvar470.us, %267
  %polly.access.mul.call1474.us = mul nsw i64 %299, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %234, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.Packed_MemRef_call1309479.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar470.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1309479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %298
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us
  %polly.access.call1464.load.us.11221 = load double, double* %polly.access.call1464.us.11220, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.11221, double* %221, align 8
  %polly.access.call1464.load.us.1.1 = load double, double* %polly.access.call1464.us.1.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1.1, double* %222, align 8
  %polly.access.call1464.load.us.2.1 = load double, double* %polly.access.call1464.us.2.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2.1, double* %223, align 8
  %polly.access.call1464.load.us.3.1 = load double, double* %polly.access.call1464.us.3.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3.1, double* %224, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us.2.critedge, label %polly.loop_header466.us.1

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466

polly.loop_exit482:                               ; preds = %polly.loop_exit497.3, %polly.loop_header480.preheader
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %polly.loop_cond444 = icmp ult i64 %polly.indvar442, 12
  %indvars.iv.next1126 = add i64 %indvars.iv1125, -96
  %indvars.iv.next1131 = add i64 %indvars.iv1130, 96
  %indvar.next1478 = add i64 %indvar1477, 1
  br i1 %polly.loop_cond444, label %polly.loop_header439, label %polly.loop_exit441

polly.loop_header480.preheader.critedge:          ; preds = %polly.loop_exit468.us.1
  %polly.access.call1464.load.us.31231.c = load double, double* %polly.access.call1464.us.31230, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.31231.c, double* %229, align 8
  %polly.access.call1464.load.us.1.3.c = load double, double* %polly.access.call1464.us.1.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1.3.c, double* %230, align 8
  %polly.access.call1464.load.us.2.3.c = load double, double* %polly.access.call1464.us.2.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2.3.c, double* %231, align 8
  %polly.access.call1464.load.us.3.3.c = load double, double* %polly.access.call1464.us.3.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3.3.c, double* %232, align 8
  br label %polly.loop_header480.preheader

polly.loop_header480.preheader:                   ; preds = %polly.loop_header466.3, %polly.loop_header466.us.3, %polly.loop_header480.preheader.critedge, %polly.loop_exit468.us.2, %polly.loop_header439.split
  %300 = sub nsw i64 %267, %292
  %301 = icmp sgt i64 %300, 0
  %302 = select i1 %301, i64 %300, i64 0
  %303 = mul nsw i64 %polly.indvar442, -96
  %304 = icmp slt i64 %303, -1104
  %305 = select i1 %304, i64 %303, i64 -1104
  %306 = add nsw i64 %305, 1199
  %polly.loop_guard490.not = icmp sgt i64 %302, %306
  br i1 %polly.loop_guard490.not, label %polly.loop_exit482, label %polly.loop_header487

polly.loop_header466:                             ; preds = %polly.loop_header439.split, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %295, %polly.loop_header439.split ]
  %307 = add nuw nsw i64 %polly.indvar470, %267
  %polly.access.mul.call1474 = mul nsw i64 %307, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %234, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !88, !noalias !95
  %polly.access.Packed_MemRef_call1309479 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar470
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1309479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %298
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_header466.1

polly.loop_header487:                             ; preds = %polly.loop_header480.preheader, %polly.loop_exit497
  %indvar1546 = phi i64 [ %indvar.next1547, %polly.loop_exit497 ], [ 0, %polly.loop_header480.preheader ]
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit497 ], [ %290, %polly.loop_header480.preheader ]
  %polly.indvar491 = phi i64 [ %polly.indvar_next492, %polly.loop_exit497 ], [ %302, %polly.loop_header480.preheader ]
  %308 = add i64 %274, %indvar1546
  %smin1548 = call i64 @llvm.smin.i64(i64 %308, i64 3)
  %309 = add nsw i64 %smin1548, 1
  %smin1134 = call i64 @llvm.smin.i64(i64 %indvars.iv1132, i64 3)
  %310 = add nsw i64 %polly.indvar491, %293
  %polly.loop_guard4981252 = icmp sgt i64 %310, -1
  br i1 %polly.loop_guard4981252, label %polly.loop_header495.preheader, label %polly.loop_exit497

polly.loop_header495.preheader:                   ; preds = %polly.loop_header487
  %311 = add nuw nsw i64 %polly.indvar491, %292
  %polly.access.Packed_MemRef_call2311508 = getelementptr double, double* %Packed_MemRef_call2311, i64 %310
  %_p_scalar_509 = load double, double* %polly.access.Packed_MemRef_call2311508, align 8
  %polly.access.Packed_MemRef_call1309516 = getelementptr double, double* %Packed_MemRef_call1309, i64 %310
  %_p_scalar_517 = load double, double* %polly.access.Packed_MemRef_call1309516, align 8
  %312 = mul i64 %311, 9600
  %min.iters.check1549 = icmp ult i64 %309, 4
  br i1 %min.iters.check1549, label %polly.loop_header495.preheader1683, label %vector.ph1550

vector.ph1550:                                    ; preds = %polly.loop_header495.preheader
  %n.vec1552 = and i64 %309, -4
  %broadcast.splatinsert1558 = insertelement <4 x double> poison, double %_p_scalar_509, i32 0
  %broadcast.splat1559 = shufflevector <4 x double> %broadcast.splatinsert1558, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1561 = insertelement <4 x double> poison, double %_p_scalar_517, i32 0
  %broadcast.splat1562 = shufflevector <4 x double> %broadcast.splatinsert1561, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1544

vector.body1544:                                  ; preds = %vector.body1544, %vector.ph1550
  %index1553 = phi i64 [ 0, %vector.ph1550 ], [ %index.next1554, %vector.body1544 ]
  %313 = add nuw nsw i64 %index1553, %267
  %314 = getelementptr double, double* %Packed_MemRef_call1309, i64 %index1553
  %315 = bitcast double* %314 to <4 x double>*
  %wide.load1557 = load <4 x double>, <4 x double>* %315, align 8
  %316 = fmul fast <4 x double> %broadcast.splat1559, %wide.load1557
  %317 = getelementptr double, double* %Packed_MemRef_call2311, i64 %index1553
  %318 = bitcast double* %317 to <4 x double>*
  %wide.load1560 = load <4 x double>, <4 x double>* %318, align 8
  %319 = fmul fast <4 x double> %broadcast.splat1562, %wide.load1560
  %320 = shl i64 %313, 3
  %321 = add i64 %320, %312
  %322 = getelementptr i8, i8* %call, i64 %321
  %323 = bitcast i8* %322 to <4 x double>*
  %wide.load1563 = load <4 x double>, <4 x double>* %323, align 8, !alias.scope !85, !noalias !87
  %324 = fadd fast <4 x double> %319, %316
  %325 = fmul fast <4 x double> %324, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %326 = fadd fast <4 x double> %325, %wide.load1563
  %327 = bitcast i8* %322 to <4 x double>*
  store <4 x double> %326, <4 x double>* %327, align 8, !alias.scope !85, !noalias !87
  %index.next1554 = add i64 %index1553, 4
  %328 = icmp eq i64 %index.next1554, %n.vec1552
  br i1 %328, label %middle.block1542, label %vector.body1544, !llvm.loop !96

middle.block1542:                                 ; preds = %vector.body1544
  %cmp.n1556 = icmp eq i64 %309, %n.vec1552
  br i1 %cmp.n1556, label %polly.loop_exit497, label %polly.loop_header495.preheader1683

polly.loop_header495.preheader1683:               ; preds = %polly.loop_header495.preheader, %middle.block1542
  %polly.indvar499.ph = phi i64 [ 0, %polly.loop_header495.preheader ], [ %n.vec1552, %middle.block1542 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1542, %polly.loop_header487
  %polly.indvar_next492 = add nuw nsw i64 %polly.indvar491, 1
  %polly.loop_cond493.not.not = icmp slt i64 %polly.indvar491, %306
  %indvars.iv.next1133 = add i64 %indvars.iv1132, 1
  %indvar.next1547 = add i64 %indvar1546, 1
  br i1 %polly.loop_cond493.not.not, label %polly.loop_header487, label %polly.loop_header487.1

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader1683, %polly.loop_header495
  %polly.indvar499 = phi i64 [ %polly.indvar_next500, %polly.loop_header495 ], [ %polly.indvar499.ph, %polly.loop_header495.preheader1683 ]
  %329 = add nuw nsw i64 %polly.indvar499, %267
  %polly.access.Packed_MemRef_call1309504 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar499
  %_p_scalar_505 = load double, double* %polly.access.Packed_MemRef_call1309504, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_509, %_p_scalar_505
  %polly.access.Packed_MemRef_call2311512 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar499
  %_p_scalar_513 = load double, double* %polly.access.Packed_MemRef_call2311512, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_517, %_p_scalar_513
  %330 = shl i64 %329, 3
  %331 = add i64 %330, %312
  %scevgep518 = getelementptr i8, i8* %call, i64 %331
  %scevgep518519 = bitcast i8* %scevgep518 to double*
  %_p_scalar_520 = load double, double* %scevgep518519, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_520
  store double %p_add42.i79, double* %scevgep518519, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next500 = add nuw nsw i64 %polly.indvar499, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar499, %smin1134
  br i1 %exitcond1135.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !97

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
  %332 = add i64 %indvar, 1
  %333 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %333
  %min.iters.check1349 = icmp ult i64 %332, 4
  br i1 %min.iters.check1349, label %polly.loop_header617.preheader, label %vector.ph1350

vector.ph1350:                                    ; preds = %polly.loop_header611
  %n.vec1352 = and i64 %332, -4
  br label %vector.body1348

vector.body1348:                                  ; preds = %vector.body1348, %vector.ph1350
  %index1353 = phi i64 [ 0, %vector.ph1350 ], [ %index.next1354, %vector.body1348 ]
  %334 = shl nuw nsw i64 %index1353, 3
  %335 = getelementptr i8, i8* %scevgep623, i64 %334
  %336 = bitcast i8* %335 to <4 x double>*
  %wide.load1357 = load <4 x double>, <4 x double>* %336, align 8, !alias.scope !98, !noalias !100
  %337 = fmul fast <4 x double> %wide.load1357, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %338 = bitcast i8* %335 to <4 x double>*
  store <4 x double> %337, <4 x double>* %338, align 8, !alias.scope !98, !noalias !100
  %index.next1354 = add i64 %index1353, 4
  %339 = icmp eq i64 %index.next1354, %n.vec1352
  br i1 %339, label %middle.block1346, label %vector.body1348, !llvm.loop !105

middle.block1346:                                 ; preds = %vector.body1348
  %cmp.n1356 = icmp eq i64 %332, %n.vec1352
  br i1 %cmp.n1356, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1346
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1352, %middle.block1346 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1346
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1165.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr i8, i8* %malloccall525, i64 8
  %340 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.1 to double*
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr i8, i8* %malloccall525, i64 16
  %341 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.2 to double*
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr i8, i8* %malloccall525, i64 24
  %342 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.3 to double*
  %polly.access.Packed_MemRef_call1526.us.11237 = getelementptr i8, i8* %malloccall525, i64 9600
  %343 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.11237 to double*
  %polly.access.Packed_MemRef_call1526.us.1.1 = getelementptr i8, i8* %malloccall525, i64 9608
  %344 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.1.1 to double*
  %polly.access.Packed_MemRef_call1526.us.2.1 = getelementptr i8, i8* %malloccall525, i64 9616
  %345 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.2.1 to double*
  %polly.access.Packed_MemRef_call1526.us.3.1 = getelementptr i8, i8* %malloccall525, i64 9624
  %346 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.3.1 to double*
  %polly.access.Packed_MemRef_call1526.us.21242 = getelementptr i8, i8* %malloccall525, i64 19200
  %347 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.21242 to double*
  %polly.access.Packed_MemRef_call1526.us.1.2 = getelementptr i8, i8* %malloccall525, i64 19208
  %348 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.1.2 to double*
  %polly.access.Packed_MemRef_call1526.us.2.2 = getelementptr i8, i8* %malloccall525, i64 19216
  %349 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.2.2 to double*
  %polly.access.Packed_MemRef_call1526.us.3.2 = getelementptr i8, i8* %malloccall525, i64 19224
  %350 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.3.2 to double*
  %polly.access.Packed_MemRef_call1526.us.31247 = getelementptr i8, i8* %malloccall525, i64 28800
  %351 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.31247 to double*
  %polly.access.Packed_MemRef_call1526.us.1.3 = getelementptr i8, i8* %malloccall525, i64 28808
  %352 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.1.3 to double*
  %polly.access.Packed_MemRef_call1526.us.2.3 = getelementptr i8, i8* %malloccall525, i64 28816
  %353 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.2.3 to double*
  %polly.access.Packed_MemRef_call1526.us.3.3 = getelementptr i8, i8* %malloccall525, i64 28824
  %354 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.3.3 to double*
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %355 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %355
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !98, !noalias !100
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1164.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1164.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !106

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %356 = shl nsw i64 %polly.indvar630, 2
  %357 = or i64 %356, 1
  %358 = or i64 %356, 2
  %359 = or i64 %356, 3
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next631, 250
  br i1 %exitcond1163.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1141 = phi i64 [ %indvars.iv.next1142, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %390, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %360 = shl nuw nsw i64 %polly.indvar636, 2
  %361 = udiv i64 %polly.indvar636, 24
  %362 = mul nuw nsw i64 %361, 96
  %363 = sub nsw i64 %360, %362
  %364 = mul nsw i64 %polly.indvar636, -4
  %365 = add i64 %364, %362
  %366 = shl nuw nsw i64 %polly.indvar636, 2
  %367 = udiv i64 %polly.indvar636, 24
  %368 = mul nuw nsw i64 %367, 96
  %369 = sub nsw i64 %366, %368
  %370 = mul nsw i64 %polly.indvar636, -4
  %371 = add i64 %370, %368
  %372 = shl nuw nsw i64 %polly.indvar636, 2
  %373 = udiv i64 %polly.indvar636, 24
  %374 = mul nuw nsw i64 %373, 96
  %375 = sub nsw i64 %372, %374
  %376 = mul nsw i64 %polly.indvar636, -4
  %377 = add i64 %376, %374
  %378 = shl nuw nsw i64 %polly.indvar636, 2
  %379 = udiv i64 %polly.indvar636, 24
  %380 = mul nuw nsw i64 %379, 96
  %381 = sub nsw i64 %378, %380
  %382 = mul nsw i64 %polly.indvar636, -4
  %383 = add i64 %382, %380
  %384 = udiv i64 %polly.indvar636, 24
  %385 = mul nuw nsw i64 %384, 96
  %386 = sub nsw i64 %indvars.iv1148, %385
  %387 = add i64 %indvars.iv1153, %385
  %388 = mul nsw i64 %polly.indvar636, -4
  %389 = shl nsw i64 %polly.indvar636, 2
  br label %polly.loop_header645

polly.loop_exit658:                               ; preds = %polly.loop_exit699
  %390 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1142 = add nsw i64 %indvars.iv1141, -4
  %indvars.iv.next1149 = add nuw nsw i64 %indvars.iv1148, 4
  %indvars.iv.next1154 = add nsw i64 %indvars.iv1153, -4
  %exitcond1162.not = icmp eq i64 %390, 300
  br i1 %exitcond1162.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header633
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %391 = add nuw nsw i64 %polly.indvar648, %389
  %polly.access.mul.call2652 = mul nuw nsw i64 %391, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %356, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !102, !noalias !107
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar648
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1141
  br i1 %exitcond1143.not, label %polly.loop_header645.1, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit699, %polly.loop_exit647.3
  %indvar1361 = phi i64 [ %indvar.next1362, %polly.loop_exit699 ], [ 0, %polly.loop_exit647.3 ]
  %indvars.iv1155 = phi i64 [ %indvars.iv.next1156, %polly.loop_exit699 ], [ %387, %polly.loop_exit647.3 ]
  %indvars.iv1150 = phi i64 [ %indvars.iv.next1151, %polly.loop_exit699 ], [ %386, %polly.loop_exit647.3 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit699 ], [ %384, %polly.loop_exit647.3 ]
  %392 = mul nsw i64 %indvar1361, -96
  %393 = add i64 %363, %392
  %smax1429 = call i64 @llvm.smax.i64(i64 %393, i64 0)
  %394 = mul nuw nsw i64 %indvar1361, 96
  %395 = add i64 %365, %394
  %396 = add i64 %smax1429, %395
  %397 = mul nsw i64 %indvar1361, -96
  %398 = add i64 %369, %397
  %smax1407 = call i64 @llvm.smax.i64(i64 %398, i64 0)
  %399 = mul nuw nsw i64 %indvar1361, 96
  %400 = add i64 %371, %399
  %401 = add i64 %smax1407, %400
  %402 = mul nsw i64 %indvar1361, -96
  %403 = add i64 %375, %402
  %smax1385 = call i64 @llvm.smax.i64(i64 %403, i64 0)
  %404 = mul nuw nsw i64 %indvar1361, 96
  %405 = add i64 %377, %404
  %406 = add i64 %smax1385, %405
  %407 = mul nsw i64 %indvar1361, -96
  %408 = add i64 %381, %407
  %smax1363 = call i64 @llvm.smax.i64(i64 %408, i64 0)
  %409 = mul nuw nsw i64 %indvar1361, 96
  %410 = add i64 %383, %409
  %411 = add i64 %smax1363, %410
  %smax1152 = call i64 @llvm.smax.i64(i64 %indvars.iv1150, i64 0)
  %412 = add i64 %smax1152, %indvars.iv1155
  %413 = mul nuw nsw i64 %polly.indvar659, 24
  %.not.not945 = icmp ugt i64 %413, %polly.indvar636
  %414 = mul nuw nsw i64 %polly.indvar659, 96
  %415 = add nsw i64 %414, %388
  %416 = icmp sgt i64 %415, 0
  %417 = select i1 %416, i64 %415, i64 0
  %418 = add nsw i64 %415, 95
  %419 = icmp slt i64 %720, %418
  %420 = select i1 %419, i64 %720, i64 %418
  %polly.loop_guard686.not = icmp sgt i64 %417, %420
  br i1 %.not.not945, label %polly.loop_header662.us.preheader, label %polly.loop_header656.split

polly.loop_header662.us.preheader:                ; preds = %polly.loop_header656
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us, double* %Packed_MemRef_call1526, align 8
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1, double* %340, align 8
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2, double* %341, align 8
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3, double* %342, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_exit685.us.1.critedge, label %polly.loop_header683.us

polly.loop_header683.us:                          ; preds = %polly.loop_header662.us.preheader, %polly.loop_header683.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_header683.us ], [ %417, %polly.loop_header662.us.preheader ]
  %421 = add nuw nsw i64 %polly.indvar687.us, %389
  %polly.access.mul.call1691.us = mul nsw i64 %421, 1000
  %polly.access.add.call1692.us = add nuw nsw i64 %356, %polly.access.mul.call1691.us
  %polly.access.call1693.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us
  %polly.access.call1693.load.us = load double, double* %polly.access.call1693.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.Packed_MemRef_call1526696.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar687.us
  store double %polly.access.call1693.load.us, double* %polly.access.Packed_MemRef_call1526696.us, align 8
  %polly.indvar_next688.us = add nuw nsw i64 %polly.indvar687.us, 1
  %polly.loop_cond689.not.not.us = icmp slt i64 %polly.indvar687.us, %420
  br i1 %polly.loop_cond689.not.not.us, label %polly.loop_header683.us, label %polly.loop_exit685.us

polly.loop_exit685.us:                            ; preds = %polly.loop_header683.us
  %polly.access.call1681.load.us.11236 = load double, double* %polly.access.call1681.us.11235, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.11236, double* %343, align 8
  %polly.access.call1681.load.us.1.1 = load double, double* %polly.access.call1681.us.1.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1.1, double* %344, align 8
  %polly.access.call1681.load.us.2.1 = load double, double* %polly.access.call1681.us.2.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2.1, double* %345, align 8
  %polly.access.call1681.load.us.3.1 = load double, double* %polly.access.call1681.us.3.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3.1, double* %346, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_exit685.us.2.critedge, label %polly.loop_header683.us.1

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header683

polly.loop_exit699:                               ; preds = %polly.loop_exit714.3, %polly.loop_header697.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %polly.loop_cond661 = icmp ult i64 %polly.indvar659, 12
  %indvars.iv.next1151 = add i64 %indvars.iv1150, -96
  %indvars.iv.next1156 = add i64 %indvars.iv1155, 96
  %indvar.next1362 = add i64 %indvar1361, 1
  br i1 %polly.loop_cond661, label %polly.loop_header656, label %polly.loop_exit658

polly.loop_header697.preheader.critedge:          ; preds = %polly.loop_exit685.us.1
  %polly.access.call1681.load.us.31246.c = load double, double* %polly.access.call1681.us.31245, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.31246.c, double* %351, align 8
  %polly.access.call1681.load.us.1.3.c = load double, double* %polly.access.call1681.us.1.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1.3.c, double* %352, align 8
  %polly.access.call1681.load.us.2.3.c = load double, double* %polly.access.call1681.us.2.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2.3.c, double* %353, align 8
  %polly.access.call1681.load.us.3.3.c = load double, double* %polly.access.call1681.us.3.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3.3.c, double* %354, align 8
  br label %polly.loop_header697.preheader

polly.loop_header697.preheader:                   ; preds = %polly.loop_header683.3, %polly.loop_header683.us.3, %polly.loop_header697.preheader.critedge, %polly.loop_exit685.us.2, %polly.loop_header656.split
  %422 = sub nsw i64 %389, %414
  %423 = icmp sgt i64 %422, 0
  %424 = select i1 %423, i64 %422, i64 0
  %425 = mul nsw i64 %polly.indvar659, -96
  %426 = icmp slt i64 %425, -1104
  %427 = select i1 %426, i64 %425, i64 -1104
  %428 = add nsw i64 %427, 1199
  %polly.loop_guard707.not = icmp sgt i64 %424, %428
  br i1 %polly.loop_guard707.not, label %polly.loop_exit699, label %polly.loop_header704

polly.loop_header683:                             ; preds = %polly.loop_header656.split, %polly.loop_header683
  %polly.indvar687 = phi i64 [ %polly.indvar_next688, %polly.loop_header683 ], [ %417, %polly.loop_header656.split ]
  %429 = add nuw nsw i64 %polly.indvar687, %389
  %polly.access.mul.call1691 = mul nsw i64 %429, 1000
  %polly.access.add.call1692 = add nuw nsw i64 %356, %polly.access.mul.call1691
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !101, !noalias !108
  %polly.access.Packed_MemRef_call1526696 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar687
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1526696, align 8
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %polly.loop_cond689.not.not = icmp slt i64 %polly.indvar687, %420
  br i1 %polly.loop_cond689.not.not, label %polly.loop_header683, label %polly.loop_header683.1

polly.loop_header704:                             ; preds = %polly.loop_header697.preheader, %polly.loop_exit714
  %indvar1430 = phi i64 [ %indvar.next1431, %polly.loop_exit714 ], [ 0, %polly.loop_header697.preheader ]
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit714 ], [ %412, %polly.loop_header697.preheader ]
  %polly.indvar708 = phi i64 [ %polly.indvar_next709, %polly.loop_exit714 ], [ %424, %polly.loop_header697.preheader ]
  %430 = add i64 %396, %indvar1430
  %smin1432 = call i64 @llvm.smin.i64(i64 %430, i64 3)
  %431 = add nsw i64 %smin1432, 1
  %smin1159 = call i64 @llvm.smin.i64(i64 %indvars.iv1157, i64 3)
  %432 = add nsw i64 %polly.indvar708, %415
  %polly.loop_guard7151256 = icmp sgt i64 %432, -1
  br i1 %polly.loop_guard7151256, label %polly.loop_header712.preheader, label %polly.loop_exit714

polly.loop_header712.preheader:                   ; preds = %polly.loop_header704
  %433 = add nuw nsw i64 %polly.indvar708, %414
  %polly.access.Packed_MemRef_call2528725 = getelementptr double, double* %Packed_MemRef_call2528, i64 %432
  %_p_scalar_726 = load double, double* %polly.access.Packed_MemRef_call2528725, align 8
  %polly.access.Packed_MemRef_call1526733 = getelementptr double, double* %Packed_MemRef_call1526, i64 %432
  %_p_scalar_734 = load double, double* %polly.access.Packed_MemRef_call1526733, align 8
  %434 = mul i64 %433, 9600
  %min.iters.check1433 = icmp ult i64 %431, 4
  br i1 %min.iters.check1433, label %polly.loop_header712.preheader1686, label %vector.ph1434

vector.ph1434:                                    ; preds = %polly.loop_header712.preheader
  %n.vec1436 = and i64 %431, -4
  %broadcast.splatinsert1442 = insertelement <4 x double> poison, double %_p_scalar_726, i32 0
  %broadcast.splat1443 = shufflevector <4 x double> %broadcast.splatinsert1442, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1445 = insertelement <4 x double> poison, double %_p_scalar_734, i32 0
  %broadcast.splat1446 = shufflevector <4 x double> %broadcast.splatinsert1445, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1428

vector.body1428:                                  ; preds = %vector.body1428, %vector.ph1434
  %index1437 = phi i64 [ 0, %vector.ph1434 ], [ %index.next1438, %vector.body1428 ]
  %435 = add nuw nsw i64 %index1437, %389
  %436 = getelementptr double, double* %Packed_MemRef_call1526, i64 %index1437
  %437 = bitcast double* %436 to <4 x double>*
  %wide.load1441 = load <4 x double>, <4 x double>* %437, align 8
  %438 = fmul fast <4 x double> %broadcast.splat1443, %wide.load1441
  %439 = getelementptr double, double* %Packed_MemRef_call2528, i64 %index1437
  %440 = bitcast double* %439 to <4 x double>*
  %wide.load1444 = load <4 x double>, <4 x double>* %440, align 8
  %441 = fmul fast <4 x double> %broadcast.splat1446, %wide.load1444
  %442 = shl i64 %435, 3
  %443 = add i64 %442, %434
  %444 = getelementptr i8, i8* %call, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  %wide.load1447 = load <4 x double>, <4 x double>* %445, align 8, !alias.scope !98, !noalias !100
  %446 = fadd fast <4 x double> %441, %438
  %447 = fmul fast <4 x double> %446, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %448 = fadd fast <4 x double> %447, %wide.load1447
  %449 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %448, <4 x double>* %449, align 8, !alias.scope !98, !noalias !100
  %index.next1438 = add i64 %index1437, 4
  %450 = icmp eq i64 %index.next1438, %n.vec1436
  br i1 %450, label %middle.block1426, label %vector.body1428, !llvm.loop !109

middle.block1426:                                 ; preds = %vector.body1428
  %cmp.n1440 = icmp eq i64 %431, %n.vec1436
  br i1 %cmp.n1440, label %polly.loop_exit714, label %polly.loop_header712.preheader1686

polly.loop_header712.preheader1686:               ; preds = %polly.loop_header712.preheader, %middle.block1426
  %polly.indvar716.ph = phi i64 [ 0, %polly.loop_header712.preheader ], [ %n.vec1436, %middle.block1426 ]
  br label %polly.loop_header712

polly.loop_exit714:                               ; preds = %polly.loop_header712, %middle.block1426, %polly.loop_header704
  %polly.indvar_next709 = add nuw nsw i64 %polly.indvar708, 1
  %polly.loop_cond710.not.not = icmp slt i64 %polly.indvar708, %428
  %indvars.iv.next1158 = add i64 %indvars.iv1157, 1
  %indvar.next1431 = add i64 %indvar1430, 1
  br i1 %polly.loop_cond710.not.not, label %polly.loop_header704, label %polly.loop_header704.1

polly.loop_header712:                             ; preds = %polly.loop_header712.preheader1686, %polly.loop_header712
  %polly.indvar716 = phi i64 [ %polly.indvar_next717, %polly.loop_header712 ], [ %polly.indvar716.ph, %polly.loop_header712.preheader1686 ]
  %451 = add nuw nsw i64 %polly.indvar716, %389
  %polly.access.Packed_MemRef_call1526721 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar716
  %_p_scalar_722 = load double, double* %polly.access.Packed_MemRef_call1526721, align 8
  %p_mul27.i = fmul fast double %_p_scalar_726, %_p_scalar_722
  %polly.access.Packed_MemRef_call2528729 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar716
  %_p_scalar_730 = load double, double* %polly.access.Packed_MemRef_call2528729, align 8
  %p_mul37.i = fmul fast double %_p_scalar_734, %_p_scalar_730
  %452 = shl i64 %451, 3
  %453 = add i64 %452, %434
  %scevgep735 = getelementptr i8, i8* %call, i64 %453
  %scevgep735736 = bitcast i8* %scevgep735 to double*
  %_p_scalar_737 = load double, double* %scevgep735736, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_737
  store double %p_add42.i, double* %scevgep735736, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next717 = add nuw nsw i64 %polly.indvar716, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar716, %smin1159
  br i1 %exitcond1160.not, label %polly.loop_exit714, label %polly.loop_header712, !llvm.loop !110

polly.loop_header864:                             ; preds = %entry, %polly.loop_exit872
  %indvars.iv1190 = phi i64 [ %indvars.iv.next1191, %polly.loop_exit872 ], [ 0, %entry ]
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_exit872 ], [ 0, %entry ]
  %smin1192 = call i64 @llvm.smin.i64(i64 %indvars.iv1190, i64 -1168)
  %454 = shl nsw i64 %polly.indvar867, 5
  %455 = add nsw i64 %smin1192, 1199
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1191 = add nsw i64 %indvars.iv1190, -32
  %exitcond1195.not = icmp eq i64 %polly.indvar_next868, 38
  br i1 %exitcond1195.not, label %polly.loop_header891, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %indvars.iv1186 = phi i64 [ %indvars.iv.next1187, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %456 = mul nsw i64 %polly.indvar873, -32
  %smin1287 = call i64 @llvm.smin.i64(i64 %456, i64 -1168)
  %457 = add nsw i64 %smin1287, 1200
  %smin1188 = call i64 @llvm.smin.i64(i64 %indvars.iv1186, i64 -1168)
  %458 = shl nsw i64 %polly.indvar873, 5
  %459 = add nsw i64 %smin1188, 1199
  br label %polly.loop_header876

polly.loop_exit878:                               ; preds = %polly.loop_exit884
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %indvars.iv.next1187 = add nsw i64 %indvars.iv1186, -32
  %exitcond1194.not = icmp eq i64 %polly.indvar_next874, 38
  br i1 %exitcond1194.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_exit884, %polly.loop_header870
  %polly.indvar879 = phi i64 [ 0, %polly.loop_header870 ], [ %polly.indvar_next880, %polly.loop_exit884 ]
  %460 = add nuw nsw i64 %polly.indvar879, %454
  %461 = trunc i64 %460 to i32
  %462 = mul nuw nsw i64 %460, 9600
  %min.iters.check = icmp eq i64 %457, 0
  br i1 %min.iters.check, label %polly.loop_header882, label %vector.ph1288

vector.ph1288:                                    ; preds = %polly.loop_header876
  %broadcast.splatinsert1295 = insertelement <4 x i64> poison, i64 %458, i32 0
  %broadcast.splat1296 = shufflevector <4 x i64> %broadcast.splatinsert1295, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1297 = insertelement <4 x i32> poison, i32 %461, i32 0
  %broadcast.splat1298 = shufflevector <4 x i32> %broadcast.splatinsert1297, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %vector.ph1288
  %index1289 = phi i64 [ 0, %vector.ph1288 ], [ %index.next1290, %vector.body1286 ]
  %vec.ind1293 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1288 ], [ %vec.ind.next1294, %vector.body1286 ]
  %463 = add nuw nsw <4 x i64> %vec.ind1293, %broadcast.splat1296
  %464 = trunc <4 x i64> %463 to <4 x i32>
  %465 = mul <4 x i32> %broadcast.splat1298, %464
  %466 = add <4 x i32> %465, <i32 3, i32 3, i32 3, i32 3>
  %467 = urem <4 x i32> %466, <i32 1200, i32 1200, i32 1200, i32 1200>
  %468 = sitofp <4 x i32> %467 to <4 x double>
  %469 = fmul fast <4 x double> %468, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %470 = extractelement <4 x i64> %463, i32 0
  %471 = shl i64 %470, 3
  %472 = add nuw nsw i64 %471, %462
  %473 = getelementptr i8, i8* %call, i64 %472
  %474 = bitcast i8* %473 to <4 x double>*
  store <4 x double> %469, <4 x double>* %474, align 8, !alias.scope !111, !noalias !113
  %index.next1290 = add i64 %index1289, 4
  %vec.ind.next1294 = add <4 x i64> %vec.ind1293, <i64 4, i64 4, i64 4, i64 4>
  %475 = icmp eq i64 %index.next1290, %457
  br i1 %475, label %polly.loop_exit884, label %vector.body1286, !llvm.loop !116

polly.loop_exit884:                               ; preds = %vector.body1286, %polly.loop_header882
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1193.not = icmp eq i64 %polly.indvar879, %455
  br i1 %exitcond1193.not, label %polly.loop_exit878, label %polly.loop_header876

polly.loop_header882:                             ; preds = %polly.loop_header876, %polly.loop_header882
  %polly.indvar885 = phi i64 [ %polly.indvar_next886, %polly.loop_header882 ], [ 0, %polly.loop_header876 ]
  %476 = add nuw nsw i64 %polly.indvar885, %458
  %477 = trunc i64 %476 to i32
  %478 = mul i32 %477, %461
  %479 = add i32 %478, 3
  %480 = urem i32 %479, 1200
  %p_conv31.i = sitofp i32 %480 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %481 = shl i64 %476, 3
  %482 = add nuw nsw i64 %481, %462
  %scevgep888 = getelementptr i8, i8* %call, i64 %482
  %scevgep888889 = bitcast i8* %scevgep888 to double*
  store double %p_div33.i, double* %scevgep888889, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next886 = add nuw nsw i64 %polly.indvar885, 1
  %exitcond1189.not = icmp eq i64 %polly.indvar885, %459
  br i1 %exitcond1189.not, label %polly.loop_exit884, label %polly.loop_header882, !llvm.loop !117

polly.loop_header891:                             ; preds = %polly.loop_exit872, %polly.loop_exit899
  %indvars.iv1180 = phi i64 [ %indvars.iv.next1181, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %smin1182 = call i64 @llvm.smin.i64(i64 %indvars.iv1180, i64 -1168)
  %483 = shl nsw i64 %polly.indvar894, 5
  %484 = add nsw i64 %smin1182, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1181 = add nsw i64 %indvars.iv1180, -32
  %exitcond1185.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1185.not, label %polly.loop_header917, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1176 = phi i64 [ %indvars.iv.next1177, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %485 = mul nsw i64 %polly.indvar900, -32
  %smin1302 = call i64 @llvm.smin.i64(i64 %485, i64 -968)
  %486 = add nsw i64 %smin1302, 1000
  %smin1178 = call i64 @llvm.smin.i64(i64 %indvars.iv1176, i64 -968)
  %487 = shl nsw i64 %polly.indvar900, 5
  %488 = add nsw i64 %smin1178, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1177 = add nsw i64 %indvars.iv1176, -32
  %exitcond1184.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1184.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %489 = add nuw nsw i64 %polly.indvar906, %483
  %490 = trunc i64 %489 to i32
  %491 = mul nuw nsw i64 %489, 8000
  %min.iters.check1303 = icmp eq i64 %486, 0
  br i1 %min.iters.check1303, label %polly.loop_header909, label %vector.ph1304

vector.ph1304:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1313 = insertelement <4 x i64> poison, i64 %487, i32 0
  %broadcast.splat1314 = shufflevector <4 x i64> %broadcast.splatinsert1313, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1315 = insertelement <4 x i32> poison, i32 %490, i32 0
  %broadcast.splat1316 = shufflevector <4 x i32> %broadcast.splatinsert1315, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1304
  %index1307 = phi i64 [ 0, %vector.ph1304 ], [ %index.next1308, %vector.body1301 ]
  %vec.ind1311 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1304 ], [ %vec.ind.next1312, %vector.body1301 ]
  %492 = add nuw nsw <4 x i64> %vec.ind1311, %broadcast.splat1314
  %493 = trunc <4 x i64> %492 to <4 x i32>
  %494 = mul <4 x i32> %broadcast.splat1316, %493
  %495 = add <4 x i32> %494, <i32 2, i32 2, i32 2, i32 2>
  %496 = urem <4 x i32> %495, <i32 1000, i32 1000, i32 1000, i32 1000>
  %497 = sitofp <4 x i32> %496 to <4 x double>
  %498 = fmul fast <4 x double> %497, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %499 = extractelement <4 x i64> %492, i32 0
  %500 = shl i64 %499, 3
  %501 = add nuw nsw i64 %500, %491
  %502 = getelementptr i8, i8* %call2, i64 %501
  %503 = bitcast i8* %502 to <4 x double>*
  store <4 x double> %498, <4 x double>* %503, align 8, !alias.scope !115, !noalias !118
  %index.next1308 = add i64 %index1307, 4
  %vec.ind.next1312 = add <4 x i64> %vec.ind1311, <i64 4, i64 4, i64 4, i64 4>
  %504 = icmp eq i64 %index.next1308, %486
  br i1 %504, label %polly.loop_exit911, label %vector.body1301, !llvm.loop !119

polly.loop_exit911:                               ; preds = %vector.body1301, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1183.not = icmp eq i64 %polly.indvar906, %484
  br i1 %exitcond1183.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %505 = add nuw nsw i64 %polly.indvar912, %487
  %506 = trunc i64 %505 to i32
  %507 = mul i32 %506, %490
  %508 = add i32 %507, 2
  %509 = urem i32 %508, 1000
  %p_conv10.i = sitofp i32 %509 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %510 = shl i64 %505, 3
  %511 = add nuw nsw i64 %510, %491
  %scevgep915 = getelementptr i8, i8* %call2, i64 %511
  %scevgep915916 = bitcast i8* %scevgep915 to double*
  store double %p_div12.i, double* %scevgep915916, align 8, !alias.scope !115, !noalias !118
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1179.not = icmp eq i64 %polly.indvar912, %488
  br i1 %exitcond1179.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !120

polly.loop_header917:                             ; preds = %polly.loop_exit899, %polly.loop_exit925
  %indvars.iv1170 = phi i64 [ %indvars.iv.next1171, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %smin1172 = call i64 @llvm.smin.i64(i64 %indvars.iv1170, i64 -1168)
  %512 = shl nsw i64 %polly.indvar920, 5
  %513 = add nsw i64 %smin1172, 1199
  br label %polly.loop_header923

polly.loop_exit925:                               ; preds = %polly.loop_exit931
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %indvars.iv.next1171 = add nsw i64 %indvars.iv1170, -32
  %exitcond1175.not = icmp eq i64 %polly.indvar_next921, 38
  br i1 %exitcond1175.not, label %init_array.exit, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_exit931, %polly.loop_header917
  %indvars.iv1166 = phi i64 [ %indvars.iv.next1167, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %514 = mul nsw i64 %polly.indvar926, -32
  %smin1320 = call i64 @llvm.smin.i64(i64 %514, i64 -968)
  %515 = add nsw i64 %smin1320, 1000
  %smin1168 = call i64 @llvm.smin.i64(i64 %indvars.iv1166, i64 -968)
  %516 = shl nsw i64 %polly.indvar926, 5
  %517 = add nsw i64 %smin1168, 999
  br label %polly.loop_header929

polly.loop_exit931:                               ; preds = %polly.loop_exit937
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %indvars.iv.next1167 = add nsw i64 %indvars.iv1166, -32
  %exitcond1174.not = icmp eq i64 %polly.indvar_next927, 32
  br i1 %exitcond1174.not, label %polly.loop_exit925, label %polly.loop_header923

polly.loop_header929:                             ; preds = %polly.loop_exit937, %polly.loop_header923
  %polly.indvar932 = phi i64 [ 0, %polly.loop_header923 ], [ %polly.indvar_next933, %polly.loop_exit937 ]
  %518 = add nuw nsw i64 %polly.indvar932, %512
  %519 = trunc i64 %518 to i32
  %520 = mul nuw nsw i64 %518, 8000
  %min.iters.check1321 = icmp eq i64 %515, 0
  br i1 %min.iters.check1321, label %polly.loop_header935, label %vector.ph1322

vector.ph1322:                                    ; preds = %polly.loop_header929
  %broadcast.splatinsert1331 = insertelement <4 x i64> poison, i64 %516, i32 0
  %broadcast.splat1332 = shufflevector <4 x i64> %broadcast.splatinsert1331, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1333 = insertelement <4 x i32> poison, i32 %519, i32 0
  %broadcast.splat1334 = shufflevector <4 x i32> %broadcast.splatinsert1333, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %vector.ph1322
  %index1325 = phi i64 [ 0, %vector.ph1322 ], [ %index.next1326, %vector.body1319 ]
  %vec.ind1329 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1322 ], [ %vec.ind.next1330, %vector.body1319 ]
  %521 = add nuw nsw <4 x i64> %vec.ind1329, %broadcast.splat1332
  %522 = trunc <4 x i64> %521 to <4 x i32>
  %523 = mul <4 x i32> %broadcast.splat1334, %522
  %524 = add <4 x i32> %523, <i32 1, i32 1, i32 1, i32 1>
  %525 = urem <4 x i32> %524, <i32 1200, i32 1200, i32 1200, i32 1200>
  %526 = sitofp <4 x i32> %525 to <4 x double>
  %527 = fmul fast <4 x double> %526, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %528 = extractelement <4 x i64> %521, i32 0
  %529 = shl i64 %528, 3
  %530 = add nuw nsw i64 %529, %520
  %531 = getelementptr i8, i8* %call1, i64 %530
  %532 = bitcast i8* %531 to <4 x double>*
  store <4 x double> %527, <4 x double>* %532, align 8, !alias.scope !114, !noalias !121
  %index.next1326 = add i64 %index1325, 4
  %vec.ind.next1330 = add <4 x i64> %vec.ind1329, <i64 4, i64 4, i64 4, i64 4>
  %533 = icmp eq i64 %index.next1326, %515
  br i1 %533, label %polly.loop_exit937, label %vector.body1319, !llvm.loop !122

polly.loop_exit937:                               ; preds = %vector.body1319, %polly.loop_header935
  %polly.indvar_next933 = add nuw nsw i64 %polly.indvar932, 1
  %exitcond1173.not = icmp eq i64 %polly.indvar932, %513
  br i1 %exitcond1173.not, label %polly.loop_exit931, label %polly.loop_header929

polly.loop_header935:                             ; preds = %polly.loop_header929, %polly.loop_header935
  %polly.indvar938 = phi i64 [ %polly.indvar_next939, %polly.loop_header935 ], [ 0, %polly.loop_header929 ]
  %534 = add nuw nsw i64 %polly.indvar938, %516
  %535 = trunc i64 %534 to i32
  %536 = mul i32 %535, %519
  %537 = add i32 %536, 1
  %538 = urem i32 %537, 1200
  %p_conv.i = sitofp i32 %538 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %539 = shl i64 %534, 3
  %540 = add nuw nsw i64 %539, %520
  %scevgep942 = getelementptr i8, i8* %call1, i64 %540
  %scevgep942943 = bitcast i8* %scevgep942 to double*
  store double %p_div.i, double* %scevgep942943, align 8, !alias.scope !114, !noalias !121
  %polly.indvar_next939 = add nuw nsw i64 %polly.indvar938, 1
  %exitcond1169.not = icmp eq i64 %polly.indvar938, %517
  br i1 %exitcond1169.not, label %polly.loop_exit937, label %polly.loop_header935, !llvm.loop !123

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %541 = add nuw nsw i64 %polly.indvar221.1, %145
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %541, 1000
  %polly.access.add.call2226.1 = add nuw nsw i64 %113, %polly.access.mul.call2225.1
  %polly.access.call2227.1 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.1
  %polly.access.call2227.load.1 = load double, double* %polly.access.call2227.1, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar221.1, 1200
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2227.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next222.1 = add nuw nsw i64 %polly.indvar221.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next222.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header218.2, label %polly.loop_header218.1

polly.loop_header218.2:                           ; preds = %polly.loop_header218.1, %polly.loop_header218.2
  %polly.indvar221.2 = phi i64 [ %polly.indvar_next222.2, %polly.loop_header218.2 ], [ 0, %polly.loop_header218.1 ]
  %542 = add nuw nsw i64 %polly.indvar221.2, %145
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %542, 1000
  %polly.access.add.call2226.2 = add nuw nsw i64 %114, %polly.access.mul.call2225.2
  %polly.access.call2227.2 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.2
  %polly.access.call2227.load.2 = load double, double* %polly.access.call2227.2, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar221.2, 2400
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2227.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next222.2 = add nuw nsw i64 %polly.indvar221.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next222.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header218.3, label %polly.loop_header218.2

polly.loop_header218.3:                           ; preds = %polly.loop_header218.2, %polly.loop_header218.3
  %polly.indvar221.3 = phi i64 [ %polly.indvar_next222.3, %polly.loop_header218.3 ], [ 0, %polly.loop_header218.2 ]
  %543 = add nuw nsw i64 %polly.indvar221.3, %145
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %543, 1000
  %polly.access.add.call2226.3 = add nuw nsw i64 %115, %polly.access.mul.call2225.3
  %polly.access.call2227.3 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226.3
  %polly.access.call2227.load.3 = load double, double* %polly.access.call2227.3, align 8, !alias.scope !75, !noalias !81
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar221.3, 3600
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2227.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next222.3 = add nuw nsw i64 %polly.indvar221.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next222.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit220.3, label %polly.loop_header218.3

polly.loop_exit220.3:                             ; preds = %polly.loop_header218.3
  %544 = add nsw i64 %144, 1199
  %polly.access.mul.call1247.us = mul nsw i64 %polly.indvar209, 4000
  %polly.access.add.call1248.us = add nuw nsw i64 %112, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us
  %545 = or i64 %145, 1
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %545, 1000
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %112, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1
  %546 = or i64 %145, 2
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %546, 1000
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %112, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2
  %547 = or i64 %145, 3
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %547, 1000
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %112, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3
  %polly.access.add.call1248.us.11204 = add nuw nsw i64 %113, %polly.access.mul.call1247.us
  %polly.access.call1249.us.11205 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.11204
  %polly.access.add.call1248.us.1.1 = add nuw nsw i64 %113, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1.1
  %polly.access.add.call1248.us.2.1 = add nuw nsw i64 %113, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2.1
  %polly.access.add.call1248.us.3.1 = add nuw nsw i64 %113, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3.1
  %polly.access.add.call1248.us.21209 = add nuw nsw i64 %114, %polly.access.mul.call1247.us
  %polly.access.call1249.us.21210 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.21209
  %polly.access.add.call1248.us.1.2 = add nuw nsw i64 %114, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1.2
  %polly.access.add.call1248.us.2.2 = add nuw nsw i64 %114, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2.2
  %polly.access.add.call1248.us.3.2 = add nuw nsw i64 %114, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3.2
  %polly.access.add.call1248.us.31214 = add nuw nsw i64 %115, %polly.access.mul.call1247.us
  %polly.access.call1249.us.31215 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.31214
  %polly.access.add.call1248.us.1.3 = add nuw nsw i64 %115, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1.3
  %polly.access.add.call1248.us.2.3 = add nuw nsw i64 %115, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2.3
  %polly.access.add.call1248.us.3.3 = add nuw nsw i64 %115, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3.3
  br label %polly.loop_header228

polly.loop_header250.1:                           ; preds = %polly.loop_header250, %polly.loop_header250.1
  %polly.indvar253.1 = phi i64 [ %polly.indvar_next254.1, %polly.loop_header250.1 ], [ %173, %polly.loop_header250 ]
  %548 = add nuw nsw i64 %polly.indvar253.1, %145
  %polly.access.mul.call1257.1 = mul nsw i64 %548, 1000
  %polly.access.add.call1258.1 = add nuw nsw i64 %113, %polly.access.mul.call1257.1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.1 = add nuw nsw i64 %polly.indvar253.1, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %polly.loop_cond255.not.not.1 = icmp slt i64 %polly.indvar253.1, %176
  br i1 %polly.loop_cond255.not.not.1, label %polly.loop_header250.1, label %polly.loop_header250.2

polly.loop_header250.2:                           ; preds = %polly.loop_header250.1, %polly.loop_header250.2
  %polly.indvar253.2 = phi i64 [ %polly.indvar_next254.2, %polly.loop_header250.2 ], [ %173, %polly.loop_header250.1 ]
  %549 = add nuw nsw i64 %polly.indvar253.2, %145
  %polly.access.mul.call1257.2 = mul nsw i64 %549, 1000
  %polly.access.add.call1258.2 = add nuw nsw i64 %114, %polly.access.mul.call1257.2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.2 = add nuw nsw i64 %polly.indvar253.2, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.indvar_next254.2 = add nuw nsw i64 %polly.indvar253.2, 1
  %polly.loop_cond255.not.not.2 = icmp slt i64 %polly.indvar253.2, %176
  br i1 %polly.loop_cond255.not.not.2, label %polly.loop_header250.2, label %polly.loop_header250.3

polly.loop_header250.3:                           ; preds = %polly.loop_header250.2, %polly.loop_header250.3
  %polly.indvar253.3 = phi i64 [ %polly.indvar_next254.3, %polly.loop_header250.3 ], [ %173, %polly.loop_header250.2 ]
  %550 = add nuw nsw i64 %polly.indvar253.3, %145
  %polly.access.mul.call1257.3 = mul nsw i64 %550, 1000
  %polly.access.add.call1258.3 = add nuw nsw i64 %115, %polly.access.mul.call1257.3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.3 = add nuw nsw i64 %polly.indvar253.3, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  %polly.indvar_next254.3 = add nuw nsw i64 %polly.indvar253.3, 1
  %polly.loop_cond255.not.not.3 = icmp slt i64 %polly.indvar253.3, %176
  br i1 %polly.loop_cond255.not.not.3, label %polly.loop_header250.3, label %polly.loop_header263.preheader

polly.loop_header250.us.1:                        ; preds = %polly.loop_exit252.us, %polly.loop_header250.us.1
  %polly.indvar253.us.1 = phi i64 [ %polly.indvar_next254.us.1, %polly.loop_header250.us.1 ], [ %173, %polly.loop_exit252.us ]
  %551 = add nuw nsw i64 %polly.indvar253.us.1, %145
  %polly.access.mul.call1257.us.1 = mul nsw i64 %551, 1000
  %polly.access.add.call1258.us.1 = add nuw nsw i64 %113, %polly.access.mul.call1257.us.1
  %polly.access.call1259.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us.1
  %polly.access.call1259.load.us.1 = load double, double* %polly.access.call1259.us.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1200
  %polly.access.Packed_MemRef_call1262.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.1
  store double %polly.access.call1259.load.us.1, double* %polly.access.Packed_MemRef_call1262.us.1, align 8
  %polly.indvar_next254.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1
  %polly.loop_cond255.not.not.us.1 = icmp slt i64 %polly.indvar253.us.1, %176
  br i1 %polly.loop_cond255.not.not.us.1, label %polly.loop_header250.us.1, label %polly.loop_exit252.us.1

polly.loop_exit252.us.1.critedge:                 ; preds = %polly.loop_header234.us.preheader
  %polly.access.call1249.load.us.11206.c = load double, double* %polly.access.call1249.us.11205, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.11206.c, double* %99, align 8
  %polly.access.call1249.load.us.1.1.c = load double, double* %polly.access.call1249.us.1.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1.1.c, double* %100, align 8
  %polly.access.call1249.load.us.2.1.c = load double, double* %polly.access.call1249.us.2.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2.1.c, double* %101, align 8
  %polly.access.call1249.load.us.3.1.c = load double, double* %polly.access.call1249.us.3.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3.1.c, double* %102, align 8
  br label %polly.loop_exit252.us.1

polly.loop_exit252.us.1:                          ; preds = %polly.loop_header250.us.1, %polly.loop_exit252.us.1.critedge
  %polly.access.call1249.load.us.21211 = load double, double* %polly.access.call1249.us.21210, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.21211, double* %103, align 8
  %polly.access.call1249.load.us.1.2 = load double, double* %polly.access.call1249.us.1.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1.2, double* %104, align 8
  %polly.access.call1249.load.us.2.2 = load double, double* %polly.access.call1249.us.2.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2.2, double* %105, align 8
  %polly.access.call1249.load.us.3.2 = load double, double* %polly.access.call1249.us.3.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3.2, double* %106, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader.critedge, label %polly.loop_header250.us.2

polly.loop_header250.us.2:                        ; preds = %polly.loop_exit252.us.1, %polly.loop_header250.us.2
  %polly.indvar253.us.2 = phi i64 [ %polly.indvar_next254.us.2, %polly.loop_header250.us.2 ], [ %173, %polly.loop_exit252.us.1 ]
  %552 = add nuw nsw i64 %polly.indvar253.us.2, %145
  %polly.access.mul.call1257.us.2 = mul nsw i64 %552, 1000
  %polly.access.add.call1258.us.2 = add nuw nsw i64 %114, %polly.access.mul.call1257.us.2
  %polly.access.call1259.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us.2
  %polly.access.call1259.load.us.2 = load double, double* %polly.access.call1259.us.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 2400
  %polly.access.Packed_MemRef_call1262.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.2
  store double %polly.access.call1259.load.us.2, double* %polly.access.Packed_MemRef_call1262.us.2, align 8
  %polly.indvar_next254.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 1
  %polly.loop_cond255.not.not.us.2 = icmp slt i64 %polly.indvar253.us.2, %176
  br i1 %polly.loop_cond255.not.not.us.2, label %polly.loop_header250.us.2, label %polly.loop_exit252.us.2

polly.loop_exit252.us.2.critedge:                 ; preds = %polly.loop_exit252.us
  %polly.access.call1249.load.us.21211.c = load double, double* %polly.access.call1249.us.21210, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.21211.c, double* %103, align 8
  %polly.access.call1249.load.us.1.2.c = load double, double* %polly.access.call1249.us.1.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1.2.c, double* %104, align 8
  %polly.access.call1249.load.us.2.2.c = load double, double* %polly.access.call1249.us.2.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2.2.c, double* %105, align 8
  %polly.access.call1249.load.us.3.2.c = load double, double* %polly.access.call1249.us.3.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3.2.c, double* %106, align 8
  br label %polly.loop_exit252.us.2

polly.loop_exit252.us.2:                          ; preds = %polly.loop_header250.us.2, %polly.loop_exit252.us.2.critedge
  %polly.access.call1249.load.us.31216 = load double, double* %polly.access.call1249.us.31215, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.31216, double* %107, align 8
  %polly.access.call1249.load.us.1.3 = load double, double* %polly.access.call1249.us.1.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1.3, double* %108, align 8
  %polly.access.call1249.load.us.2.3 = load double, double* %polly.access.call1249.us.2.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2.3, double* %109, align 8
  %polly.access.call1249.load.us.3.3 = load double, double* %polly.access.call1249.us.3.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3.3, double* %110, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header250.us.3

polly.loop_header250.us.3:                        ; preds = %polly.loop_exit252.us.2, %polly.loop_header250.us.3
  %polly.indvar253.us.3 = phi i64 [ %polly.indvar_next254.us.3, %polly.loop_header250.us.3 ], [ %173, %polly.loop_exit252.us.2 ]
  %553 = add nuw nsw i64 %polly.indvar253.us.3, %145
  %polly.access.mul.call1257.us.3 = mul nsw i64 %553, 1000
  %polly.access.add.call1258.us.3 = add nuw nsw i64 %115, %polly.access.mul.call1257.us.3
  %polly.access.call1259.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us.3
  %polly.access.call1259.load.us.3 = load double, double* %polly.access.call1259.us.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 3600
  %polly.access.Packed_MemRef_call1262.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.3
  store double %polly.access.call1259.load.us.3, double* %polly.access.Packed_MemRef_call1262.us.3, align 8
  %polly.indvar_next254.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 1
  %polly.loop_cond255.not.not.us.3 = icmp slt i64 %polly.indvar253.us.3, %176
  br i1 %polly.loop_cond255.not.not.us.3, label %polly.loop_header250.us.3, label %polly.loop_header263.preheader

polly.loop_header270.1:                           ; preds = %polly.loop_exit280, %polly.loop_exit280.1
  %indvar1640 = phi i64 [ %indvar.next1641, %polly.loop_exit280.1 ], [ 0, %polly.loop_exit280 ]
  %indvars.iv1108.1 = phi i64 [ %indvars.iv.next1109.1, %polly.loop_exit280.1 ], [ %168, %polly.loop_exit280 ]
  %polly.indvar274.1 = phi i64 [ %polly.indvar_next275.1, %polly.loop_exit280.1 ], [ %180, %polly.loop_exit280 ]
  %554 = add i64 %157, %indvar1640
  %smin1642 = call i64 @llvm.smin.i64(i64 %554, i64 3)
  %555 = add nsw i64 %smin1642, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1108.1, i64 3)
  %556 = add nsw i64 %polly.indvar274.1, %171
  %polly.loop_guard281.11249 = icmp sgt i64 %556, -1
  br i1 %polly.loop_guard281.11249, label %polly.loop_header278.preheader.1, label %polly.loop_exit280.1

polly.loop_header278.preheader.1:                 ; preds = %polly.loop_header270.1
  %557 = add nuw nsw i64 %polly.indvar274.1, %170
  %polly.access.add.Packed_MemRef_call2290.1 = add nuw nsw i64 %556, 1200
  %polly.access.Packed_MemRef_call2291.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.1
  %_p_scalar_292.1 = load double, double* %polly.access.Packed_MemRef_call2291.1, align 8
  %polly.access.Packed_MemRef_call1299.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.1
  %_p_scalar_300.1 = load double, double* %polly.access.Packed_MemRef_call1299.1, align 8
  %558 = mul i64 %557, 9600
  %min.iters.check1643 = icmp ult i64 %555, 4
  br i1 %min.iters.check1643, label %polly.loop_header278.1.preheader, label %vector.ph1644

vector.ph1644:                                    ; preds = %polly.loop_header278.preheader.1
  %n.vec1646 = and i64 %555, -4
  %broadcast.splatinsert1652 = insertelement <4 x double> poison, double %_p_scalar_292.1, i32 0
  %broadcast.splat1653 = shufflevector <4 x double> %broadcast.splatinsert1652, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1655 = insertelement <4 x double> poison, double %_p_scalar_300.1, i32 0
  %broadcast.splat1656 = shufflevector <4 x double> %broadcast.splatinsert1655, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1638

vector.body1638:                                  ; preds = %vector.body1638, %vector.ph1644
  %index1647 = phi i64 [ 0, %vector.ph1644 ], [ %index.next1648, %vector.body1638 ]
  %559 = add nuw nsw i64 %index1647, %145
  %560 = add nuw nsw i64 %index1647, 1200
  %561 = getelementptr double, double* %Packed_MemRef_call1, i64 %560
  %562 = bitcast double* %561 to <4 x double>*
  %wide.load1651 = load <4 x double>, <4 x double>* %562, align 8
  %563 = fmul fast <4 x double> %broadcast.splat1653, %wide.load1651
  %564 = getelementptr double, double* %Packed_MemRef_call2, i64 %560
  %565 = bitcast double* %564 to <4 x double>*
  %wide.load1654 = load <4 x double>, <4 x double>* %565, align 8
  %566 = fmul fast <4 x double> %broadcast.splat1656, %wide.load1654
  %567 = shl i64 %559, 3
  %568 = add i64 %567, %558
  %569 = getelementptr i8, i8* %call, i64 %568
  %570 = bitcast i8* %569 to <4 x double>*
  %wide.load1657 = load <4 x double>, <4 x double>* %570, align 8, !alias.scope !71, !noalias !73
  %571 = fadd fast <4 x double> %566, %563
  %572 = fmul fast <4 x double> %571, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %573 = fadd fast <4 x double> %572, %wide.load1657
  %574 = bitcast i8* %569 to <4 x double>*
  store <4 x double> %573, <4 x double>* %574, align 8, !alias.scope !71, !noalias !73
  %index.next1648 = add i64 %index1647, 4
  %575 = icmp eq i64 %index.next1648, %n.vec1646
  br i1 %575, label %middle.block1636, label %vector.body1638, !llvm.loop !124

middle.block1636:                                 ; preds = %vector.body1638
  %cmp.n1650 = icmp eq i64 %555, %n.vec1646
  br i1 %cmp.n1650, label %polly.loop_exit280.1, label %polly.loop_header278.1.preheader

polly.loop_header278.1.preheader:                 ; preds = %polly.loop_header278.preheader.1, %middle.block1636
  %polly.indvar282.1.ph = phi i64 [ 0, %polly.loop_header278.preheader.1 ], [ %n.vec1646, %middle.block1636 ]
  br label %polly.loop_header278.1

polly.loop_header278.1:                           ; preds = %polly.loop_header278.1.preheader, %polly.loop_header278.1
  %polly.indvar282.1 = phi i64 [ %polly.indvar_next283.1, %polly.loop_header278.1 ], [ %polly.indvar282.1.ph, %polly.loop_header278.1.preheader ]
  %576 = add nuw nsw i64 %polly.indvar282.1, %145
  %polly.access.add.Packed_MemRef_call1286.1 = add nuw nsw i64 %polly.indvar282.1, 1200
  %polly.access.Packed_MemRef_call1287.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.1
  %_p_scalar_288.1 = load double, double* %polly.access.Packed_MemRef_call1287.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_292.1, %_p_scalar_288.1
  %polly.access.Packed_MemRef_call2295.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.1
  %_p_scalar_296.1 = load double, double* %polly.access.Packed_MemRef_call2295.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_300.1, %_p_scalar_296.1
  %577 = shl i64 %576, 3
  %578 = add i64 %577, %558
  %scevgep301.1 = getelementptr i8, i8* %call, i64 %578
  %scevgep301302.1 = bitcast i8* %scevgep301.1 to double*
  %_p_scalar_303.1 = load double, double* %scevgep301302.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_303.1
  store double %p_add42.i118.1, double* %scevgep301302.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.1 = add nuw nsw i64 %polly.indvar282.1, 1
  %exitcond1110.1.not = icmp eq i64 %polly.indvar282.1, %smin.1
  br i1 %exitcond1110.1.not, label %polly.loop_exit280.1, label %polly.loop_header278.1, !llvm.loop !125

polly.loop_exit280.1:                             ; preds = %polly.loop_header278.1, %middle.block1636, %polly.loop_header270.1
  %polly.indvar_next275.1 = add nuw nsw i64 %polly.indvar274.1, 1
  %polly.loop_cond276.not.not.1 = icmp slt i64 %polly.indvar274.1, %184
  %indvars.iv.next1109.1 = add i64 %indvars.iv1108.1, 1
  %indvar.next1641 = add i64 %indvar1640, 1
  br i1 %polly.loop_cond276.not.not.1, label %polly.loop_header270.1, label %polly.loop_header270.2

polly.loop_header270.2:                           ; preds = %polly.loop_exit280.1, %polly.loop_exit280.2
  %indvar1618 = phi i64 [ %indvar.next1619, %polly.loop_exit280.2 ], [ 0, %polly.loop_exit280.1 ]
  %indvars.iv1108.2 = phi i64 [ %indvars.iv.next1109.2, %polly.loop_exit280.2 ], [ %168, %polly.loop_exit280.1 ]
  %polly.indvar274.2 = phi i64 [ %polly.indvar_next275.2, %polly.loop_exit280.2 ], [ %180, %polly.loop_exit280.1 ]
  %579 = add i64 %162, %indvar1618
  %smin1620 = call i64 @llvm.smin.i64(i64 %579, i64 3)
  %580 = add nsw i64 %smin1620, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1108.2, i64 3)
  %581 = add nsw i64 %polly.indvar274.2, %171
  %polly.loop_guard281.21250 = icmp sgt i64 %581, -1
  br i1 %polly.loop_guard281.21250, label %polly.loop_header278.preheader.2, label %polly.loop_exit280.2

polly.loop_header278.preheader.2:                 ; preds = %polly.loop_header270.2
  %582 = add nuw nsw i64 %polly.indvar274.2, %170
  %polly.access.add.Packed_MemRef_call2290.2 = add nuw nsw i64 %581, 2400
  %polly.access.Packed_MemRef_call2291.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.2
  %_p_scalar_292.2 = load double, double* %polly.access.Packed_MemRef_call2291.2, align 8
  %polly.access.Packed_MemRef_call1299.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.2
  %_p_scalar_300.2 = load double, double* %polly.access.Packed_MemRef_call1299.2, align 8
  %583 = mul i64 %582, 9600
  %min.iters.check1621 = icmp ult i64 %580, 4
  br i1 %min.iters.check1621, label %polly.loop_header278.2.preheader, label %vector.ph1622

vector.ph1622:                                    ; preds = %polly.loop_header278.preheader.2
  %n.vec1624 = and i64 %580, -4
  %broadcast.splatinsert1630 = insertelement <4 x double> poison, double %_p_scalar_292.2, i32 0
  %broadcast.splat1631 = shufflevector <4 x double> %broadcast.splatinsert1630, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1633 = insertelement <4 x double> poison, double %_p_scalar_300.2, i32 0
  %broadcast.splat1634 = shufflevector <4 x double> %broadcast.splatinsert1633, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1616

vector.body1616:                                  ; preds = %vector.body1616, %vector.ph1622
  %index1625 = phi i64 [ 0, %vector.ph1622 ], [ %index.next1626, %vector.body1616 ]
  %584 = add nuw nsw i64 %index1625, %145
  %585 = add nuw nsw i64 %index1625, 2400
  %586 = getelementptr double, double* %Packed_MemRef_call1, i64 %585
  %587 = bitcast double* %586 to <4 x double>*
  %wide.load1629 = load <4 x double>, <4 x double>* %587, align 8
  %588 = fmul fast <4 x double> %broadcast.splat1631, %wide.load1629
  %589 = getelementptr double, double* %Packed_MemRef_call2, i64 %585
  %590 = bitcast double* %589 to <4 x double>*
  %wide.load1632 = load <4 x double>, <4 x double>* %590, align 8
  %591 = fmul fast <4 x double> %broadcast.splat1634, %wide.load1632
  %592 = shl i64 %584, 3
  %593 = add i64 %592, %583
  %594 = getelementptr i8, i8* %call, i64 %593
  %595 = bitcast i8* %594 to <4 x double>*
  %wide.load1635 = load <4 x double>, <4 x double>* %595, align 8, !alias.scope !71, !noalias !73
  %596 = fadd fast <4 x double> %591, %588
  %597 = fmul fast <4 x double> %596, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %598 = fadd fast <4 x double> %597, %wide.load1635
  %599 = bitcast i8* %594 to <4 x double>*
  store <4 x double> %598, <4 x double>* %599, align 8, !alias.scope !71, !noalias !73
  %index.next1626 = add i64 %index1625, 4
  %600 = icmp eq i64 %index.next1626, %n.vec1624
  br i1 %600, label %middle.block1614, label %vector.body1616, !llvm.loop !126

middle.block1614:                                 ; preds = %vector.body1616
  %cmp.n1628 = icmp eq i64 %580, %n.vec1624
  br i1 %cmp.n1628, label %polly.loop_exit280.2, label %polly.loop_header278.2.preheader

polly.loop_header278.2.preheader:                 ; preds = %polly.loop_header278.preheader.2, %middle.block1614
  %polly.indvar282.2.ph = phi i64 [ 0, %polly.loop_header278.preheader.2 ], [ %n.vec1624, %middle.block1614 ]
  br label %polly.loop_header278.2

polly.loop_header278.2:                           ; preds = %polly.loop_header278.2.preheader, %polly.loop_header278.2
  %polly.indvar282.2 = phi i64 [ %polly.indvar_next283.2, %polly.loop_header278.2 ], [ %polly.indvar282.2.ph, %polly.loop_header278.2.preheader ]
  %601 = add nuw nsw i64 %polly.indvar282.2, %145
  %polly.access.add.Packed_MemRef_call1286.2 = add nuw nsw i64 %polly.indvar282.2, 2400
  %polly.access.Packed_MemRef_call1287.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.2
  %_p_scalar_288.2 = load double, double* %polly.access.Packed_MemRef_call1287.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_292.2, %_p_scalar_288.2
  %polly.access.Packed_MemRef_call2295.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.2
  %_p_scalar_296.2 = load double, double* %polly.access.Packed_MemRef_call2295.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_300.2, %_p_scalar_296.2
  %602 = shl i64 %601, 3
  %603 = add i64 %602, %583
  %scevgep301.2 = getelementptr i8, i8* %call, i64 %603
  %scevgep301302.2 = bitcast i8* %scevgep301.2 to double*
  %_p_scalar_303.2 = load double, double* %scevgep301302.2, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_303.2
  store double %p_add42.i118.2, double* %scevgep301302.2, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.2 = add nuw nsw i64 %polly.indvar282.2, 1
  %exitcond1110.2.not = icmp eq i64 %polly.indvar282.2, %smin.2
  br i1 %exitcond1110.2.not, label %polly.loop_exit280.2, label %polly.loop_header278.2, !llvm.loop !127

polly.loop_exit280.2:                             ; preds = %polly.loop_header278.2, %middle.block1614, %polly.loop_header270.2
  %polly.indvar_next275.2 = add nuw nsw i64 %polly.indvar274.2, 1
  %polly.loop_cond276.not.not.2 = icmp slt i64 %polly.indvar274.2, %184
  %indvars.iv.next1109.2 = add i64 %indvars.iv1108.2, 1
  %indvar.next1619 = add i64 %indvar1618, 1
  br i1 %polly.loop_cond276.not.not.2, label %polly.loop_header270.2, label %polly.loop_header270.3

polly.loop_header270.3:                           ; preds = %polly.loop_exit280.2, %polly.loop_exit280.3
  %indvar1596 = phi i64 [ %indvar.next1597, %polly.loop_exit280.3 ], [ 0, %polly.loop_exit280.2 ]
  %indvars.iv1108.3 = phi i64 [ %indvars.iv.next1109.3, %polly.loop_exit280.3 ], [ %168, %polly.loop_exit280.2 ]
  %polly.indvar274.3 = phi i64 [ %polly.indvar_next275.3, %polly.loop_exit280.3 ], [ %180, %polly.loop_exit280.2 ]
  %604 = add i64 %167, %indvar1596
  %smin1598 = call i64 @llvm.smin.i64(i64 %604, i64 3)
  %605 = add nsw i64 %smin1598, 1
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1108.3, i64 3)
  %606 = add nsw i64 %polly.indvar274.3, %171
  %polly.loop_guard281.31251 = icmp sgt i64 %606, -1
  br i1 %polly.loop_guard281.31251, label %polly.loop_header278.preheader.3, label %polly.loop_exit280.3

polly.loop_header278.preheader.3:                 ; preds = %polly.loop_header270.3
  %607 = add nuw nsw i64 %polly.indvar274.3, %170
  %polly.access.add.Packed_MemRef_call2290.3 = add nuw nsw i64 %606, 3600
  %polly.access.Packed_MemRef_call2291.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.3
  %_p_scalar_292.3 = load double, double* %polly.access.Packed_MemRef_call2291.3, align 8
  %polly.access.Packed_MemRef_call1299.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.3
  %_p_scalar_300.3 = load double, double* %polly.access.Packed_MemRef_call1299.3, align 8
  %608 = mul i64 %607, 9600
  %min.iters.check1599 = icmp ult i64 %605, 4
  br i1 %min.iters.check1599, label %polly.loop_header278.3.preheader, label %vector.ph1600

vector.ph1600:                                    ; preds = %polly.loop_header278.preheader.3
  %n.vec1602 = and i64 %605, -4
  %broadcast.splatinsert1608 = insertelement <4 x double> poison, double %_p_scalar_292.3, i32 0
  %broadcast.splat1609 = shufflevector <4 x double> %broadcast.splatinsert1608, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1611 = insertelement <4 x double> poison, double %_p_scalar_300.3, i32 0
  %broadcast.splat1612 = shufflevector <4 x double> %broadcast.splatinsert1611, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1592

vector.body1592:                                  ; preds = %vector.body1592, %vector.ph1600
  %index1603 = phi i64 [ 0, %vector.ph1600 ], [ %index.next1604, %vector.body1592 ]
  %609 = add nuw nsw i64 %index1603, %145
  %610 = add nuw nsw i64 %index1603, 3600
  %611 = getelementptr double, double* %Packed_MemRef_call1, i64 %610
  %612 = bitcast double* %611 to <4 x double>*
  %wide.load1607 = load <4 x double>, <4 x double>* %612, align 8
  %613 = fmul fast <4 x double> %broadcast.splat1609, %wide.load1607
  %614 = getelementptr double, double* %Packed_MemRef_call2, i64 %610
  %615 = bitcast double* %614 to <4 x double>*
  %wide.load1610 = load <4 x double>, <4 x double>* %615, align 8
  %616 = fmul fast <4 x double> %broadcast.splat1612, %wide.load1610
  %617 = shl i64 %609, 3
  %618 = add i64 %617, %608
  %619 = getelementptr i8, i8* %call, i64 %618
  %620 = bitcast i8* %619 to <4 x double>*
  %wide.load1613 = load <4 x double>, <4 x double>* %620, align 8, !alias.scope !71, !noalias !73
  %621 = fadd fast <4 x double> %616, %613
  %622 = fmul fast <4 x double> %621, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %623 = fadd fast <4 x double> %622, %wide.load1613
  %624 = bitcast i8* %619 to <4 x double>*
  store <4 x double> %623, <4 x double>* %624, align 8, !alias.scope !71, !noalias !73
  %index.next1604 = add i64 %index1603, 4
  %625 = icmp eq i64 %index.next1604, %n.vec1602
  br i1 %625, label %middle.block1590, label %vector.body1592, !llvm.loop !128

middle.block1590:                                 ; preds = %vector.body1592
  %cmp.n1606 = icmp eq i64 %605, %n.vec1602
  br i1 %cmp.n1606, label %polly.loop_exit280.3, label %polly.loop_header278.3.preheader

polly.loop_header278.3.preheader:                 ; preds = %polly.loop_header278.preheader.3, %middle.block1590
  %polly.indvar282.3.ph = phi i64 [ 0, %polly.loop_header278.preheader.3 ], [ %n.vec1602, %middle.block1590 ]
  br label %polly.loop_header278.3

polly.loop_header278.3:                           ; preds = %polly.loop_header278.3.preheader, %polly.loop_header278.3
  %polly.indvar282.3 = phi i64 [ %polly.indvar_next283.3, %polly.loop_header278.3 ], [ %polly.indvar282.3.ph, %polly.loop_header278.3.preheader ]
  %626 = add nuw nsw i64 %polly.indvar282.3, %145
  %polly.access.add.Packed_MemRef_call1286.3 = add nuw nsw i64 %polly.indvar282.3, 3600
  %polly.access.Packed_MemRef_call1287.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.3
  %_p_scalar_288.3 = load double, double* %polly.access.Packed_MemRef_call1287.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_292.3, %_p_scalar_288.3
  %polly.access.Packed_MemRef_call2295.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.3
  %_p_scalar_296.3 = load double, double* %polly.access.Packed_MemRef_call2295.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_300.3, %_p_scalar_296.3
  %627 = shl i64 %626, 3
  %628 = add i64 %627, %608
  %scevgep301.3 = getelementptr i8, i8* %call, i64 %628
  %scevgep301302.3 = bitcast i8* %scevgep301.3 to double*
  %_p_scalar_303.3 = load double, double* %scevgep301302.3, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_303.3
  store double %p_add42.i118.3, double* %scevgep301302.3, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.3 = add nuw nsw i64 %polly.indvar282.3, 1
  %exitcond1110.3.not = icmp eq i64 %polly.indvar282.3, %smin.3
  br i1 %exitcond1110.3.not, label %polly.loop_exit280.3, label %polly.loop_header278.3, !llvm.loop !129

polly.loop_exit280.3:                             ; preds = %polly.loop_header278.3, %middle.block1590, %polly.loop_header270.3
  %polly.indvar_next275.3 = add nuw nsw i64 %polly.indvar274.3, 1
  %polly.loop_cond276.not.not.3 = icmp slt i64 %polly.indvar274.3, %184
  %indvars.iv.next1109.3 = add i64 %indvars.iv1108.3, 1
  %indvar.next1597 = add i64 %indvar1596, 1
  br i1 %polly.loop_cond276.not.not.3, label %polly.loop_header270.3, label %polly.loop_exit265

polly.loop_header428.1:                           ; preds = %polly.loop_header428, %polly.loop_header428.1
  %polly.indvar431.1 = phi i64 [ %polly.indvar_next432.1, %polly.loop_header428.1 ], [ 0, %polly.loop_header428 ]
  %629 = add nuw nsw i64 %polly.indvar431.1, %267
  %polly.access.mul.call2435.1 = mul nuw nsw i64 %629, 1000
  %polly.access.add.call2436.1 = add nuw nsw i64 %235, %polly.access.mul.call2435.1
  %polly.access.call2437.1 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.1
  %polly.access.call2437.load.1 = load double, double* %polly.access.call2437.1, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.1 = add nuw nsw i64 %polly.indvar431.1, 1200
  %polly.access.Packed_MemRef_call2311.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.1
  store double %polly.access.call2437.load.1, double* %polly.access.Packed_MemRef_call2311.1, align 8
  %polly.indvar_next432.1 = add nuw nsw i64 %polly.indvar431.1, 1
  %exitcond1118.1.not = icmp eq i64 %polly.indvar_next432.1, %indvars.iv1116
  br i1 %exitcond1118.1.not, label %polly.loop_header428.2, label %polly.loop_header428.1

polly.loop_header428.2:                           ; preds = %polly.loop_header428.1, %polly.loop_header428.2
  %polly.indvar431.2 = phi i64 [ %polly.indvar_next432.2, %polly.loop_header428.2 ], [ 0, %polly.loop_header428.1 ]
  %630 = add nuw nsw i64 %polly.indvar431.2, %267
  %polly.access.mul.call2435.2 = mul nuw nsw i64 %630, 1000
  %polly.access.add.call2436.2 = add nuw nsw i64 %236, %polly.access.mul.call2435.2
  %polly.access.call2437.2 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.2
  %polly.access.call2437.load.2 = load double, double* %polly.access.call2437.2, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.2 = add nuw nsw i64 %polly.indvar431.2, 2400
  %polly.access.Packed_MemRef_call2311.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.2
  store double %polly.access.call2437.load.2, double* %polly.access.Packed_MemRef_call2311.2, align 8
  %polly.indvar_next432.2 = add nuw nsw i64 %polly.indvar431.2, 1
  %exitcond1118.2.not = icmp eq i64 %polly.indvar_next432.2, %indvars.iv1116
  br i1 %exitcond1118.2.not, label %polly.loop_header428.3, label %polly.loop_header428.2

polly.loop_header428.3:                           ; preds = %polly.loop_header428.2, %polly.loop_header428.3
  %polly.indvar431.3 = phi i64 [ %polly.indvar_next432.3, %polly.loop_header428.3 ], [ 0, %polly.loop_header428.2 ]
  %631 = add nuw nsw i64 %polly.indvar431.3, %267
  %polly.access.mul.call2435.3 = mul nuw nsw i64 %631, 1000
  %polly.access.add.call2436.3 = add nuw nsw i64 %237, %polly.access.mul.call2435.3
  %polly.access.call2437.3 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.3
  %polly.access.call2437.load.3 = load double, double* %polly.access.call2437.3, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.3 = add nuw nsw i64 %polly.indvar431.3, 3600
  %polly.access.Packed_MemRef_call2311.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.3
  store double %polly.access.call2437.load.3, double* %polly.access.Packed_MemRef_call2311.3, align 8
  %polly.indvar_next432.3 = add nuw nsw i64 %polly.indvar431.3, 1
  %exitcond1118.3.not = icmp eq i64 %polly.indvar_next432.3, %indvars.iv1116
  br i1 %exitcond1118.3.not, label %polly.loop_exit430.3, label %polly.loop_header428.3

polly.loop_exit430.3:                             ; preds = %polly.loop_header428.3
  %632 = add nsw i64 %266, 1199
  %polly.access.mul.call1462.us = mul nsw i64 %polly.indvar419, 4000
  %polly.access.add.call1463.us = add nuw nsw i64 %234, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us
  %633 = or i64 %267, 1
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %633, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %234, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1
  %634 = or i64 %267, 2
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %634, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %234, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2
  %635 = or i64 %267, 3
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %635, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %234, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3
  %polly.access.add.call1463.us.11219 = add nuw nsw i64 %235, %polly.access.mul.call1462.us
  %polly.access.call1464.us.11220 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.11219
  %polly.access.add.call1463.us.1.1 = add nuw nsw i64 %235, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1.1
  %polly.access.add.call1463.us.2.1 = add nuw nsw i64 %235, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2.1
  %polly.access.add.call1463.us.3.1 = add nuw nsw i64 %235, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3.1
  %polly.access.add.call1463.us.21224 = add nuw nsw i64 %236, %polly.access.mul.call1462.us
  %polly.access.call1464.us.21225 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.21224
  %polly.access.add.call1463.us.1.2 = add nuw nsw i64 %236, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1.2
  %polly.access.add.call1463.us.2.2 = add nuw nsw i64 %236, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2.2
  %polly.access.add.call1463.us.3.2 = add nuw nsw i64 %236, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3.2
  %polly.access.add.call1463.us.31229 = add nuw nsw i64 %237, %polly.access.mul.call1462.us
  %polly.access.call1464.us.31230 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.31229
  %polly.access.add.call1463.us.1.3 = add nuw nsw i64 %237, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1.3
  %polly.access.add.call1463.us.2.3 = add nuw nsw i64 %237, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2.3
  %polly.access.add.call1463.us.3.3 = add nuw nsw i64 %237, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3.3
  br label %polly.loop_header439

polly.loop_header466.1:                           ; preds = %polly.loop_header466, %polly.loop_header466.1
  %polly.indvar470.1 = phi i64 [ %polly.indvar_next471.1, %polly.loop_header466.1 ], [ %295, %polly.loop_header466 ]
  %636 = add nuw nsw i64 %polly.indvar470.1, %267
  %polly.access.mul.call1474.1 = mul nsw i64 %636, 1000
  %polly.access.add.call1475.1 = add nuw nsw i64 %235, %polly.access.mul.call1474.1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.1 = add nuw nsw i64 %polly.indvar470.1, 1200
  %polly.access.Packed_MemRef_call1309479.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1309479.1, align 8
  %polly.indvar_next471.1 = add nuw nsw i64 %polly.indvar470.1, 1
  %polly.loop_cond472.not.not.1 = icmp slt i64 %polly.indvar470.1, %298
  br i1 %polly.loop_cond472.not.not.1, label %polly.loop_header466.1, label %polly.loop_header466.2

polly.loop_header466.2:                           ; preds = %polly.loop_header466.1, %polly.loop_header466.2
  %polly.indvar470.2 = phi i64 [ %polly.indvar_next471.2, %polly.loop_header466.2 ], [ %295, %polly.loop_header466.1 ]
  %637 = add nuw nsw i64 %polly.indvar470.2, %267
  %polly.access.mul.call1474.2 = mul nsw i64 %637, 1000
  %polly.access.add.call1475.2 = add nuw nsw i64 %236, %polly.access.mul.call1474.2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.2 = add nuw nsw i64 %polly.indvar470.2, 2400
  %polly.access.Packed_MemRef_call1309479.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1309479.2, align 8
  %polly.indvar_next471.2 = add nuw nsw i64 %polly.indvar470.2, 1
  %polly.loop_cond472.not.not.2 = icmp slt i64 %polly.indvar470.2, %298
  br i1 %polly.loop_cond472.not.not.2, label %polly.loop_header466.2, label %polly.loop_header466.3

polly.loop_header466.3:                           ; preds = %polly.loop_header466.2, %polly.loop_header466.3
  %polly.indvar470.3 = phi i64 [ %polly.indvar_next471.3, %polly.loop_header466.3 ], [ %295, %polly.loop_header466.2 ]
  %638 = add nuw nsw i64 %polly.indvar470.3, %267
  %polly.access.mul.call1474.3 = mul nsw i64 %638, 1000
  %polly.access.add.call1475.3 = add nuw nsw i64 %237, %polly.access.mul.call1474.3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.3 = add nuw nsw i64 %polly.indvar470.3, 3600
  %polly.access.Packed_MemRef_call1309479.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1309479.3, align 8
  %polly.indvar_next471.3 = add nuw nsw i64 %polly.indvar470.3, 1
  %polly.loop_cond472.not.not.3 = icmp slt i64 %polly.indvar470.3, %298
  br i1 %polly.loop_cond472.not.not.3, label %polly.loop_header466.3, label %polly.loop_header480.preheader

polly.loop_header466.us.1:                        ; preds = %polly.loop_exit468.us, %polly.loop_header466.us.1
  %polly.indvar470.us.1 = phi i64 [ %polly.indvar_next471.us.1, %polly.loop_header466.us.1 ], [ %295, %polly.loop_exit468.us ]
  %639 = add nuw nsw i64 %polly.indvar470.us.1, %267
  %polly.access.mul.call1474.us.1 = mul nsw i64 %639, 1000
  %polly.access.add.call1475.us.1 = add nuw nsw i64 %235, %polly.access.mul.call1474.us.1
  %polly.access.call1476.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us.1
  %polly.access.call1476.load.us.1 = load double, double* %polly.access.call1476.us.1, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1200
  %polly.access.Packed_MemRef_call1309479.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us.1
  store double %polly.access.call1476.load.us.1, double* %polly.access.Packed_MemRef_call1309479.us.1, align 8
  %polly.indvar_next471.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1
  %polly.loop_cond472.not.not.us.1 = icmp slt i64 %polly.indvar470.us.1, %298
  br i1 %polly.loop_cond472.not.not.us.1, label %polly.loop_header466.us.1, label %polly.loop_exit468.us.1

polly.loop_exit468.us.1.critedge:                 ; preds = %polly.loop_header445.us.preheader
  %polly.access.call1464.load.us.11221.c = load double, double* %polly.access.call1464.us.11220, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.11221.c, double* %221, align 8
  %polly.access.call1464.load.us.1.1.c = load double, double* %polly.access.call1464.us.1.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1.1.c, double* %222, align 8
  %polly.access.call1464.load.us.2.1.c = load double, double* %polly.access.call1464.us.2.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2.1.c, double* %223, align 8
  %polly.access.call1464.load.us.3.1.c = load double, double* %polly.access.call1464.us.3.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3.1.c, double* %224, align 8
  br label %polly.loop_exit468.us.1

polly.loop_exit468.us.1:                          ; preds = %polly.loop_header466.us.1, %polly.loop_exit468.us.1.critedge
  %polly.access.call1464.load.us.21226 = load double, double* %polly.access.call1464.us.21225, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.21226, double* %225, align 8
  %polly.access.call1464.load.us.1.2 = load double, double* %polly.access.call1464.us.1.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1.2, double* %226, align 8
  %polly.access.call1464.load.us.2.2 = load double, double* %polly.access.call1464.us.2.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2.2, double* %227, align 8
  %polly.access.call1464.load.us.3.2 = load double, double* %polly.access.call1464.us.3.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3.2, double* %228, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader.critedge, label %polly.loop_header466.us.2

polly.loop_header466.us.2:                        ; preds = %polly.loop_exit468.us.1, %polly.loop_header466.us.2
  %polly.indvar470.us.2 = phi i64 [ %polly.indvar_next471.us.2, %polly.loop_header466.us.2 ], [ %295, %polly.loop_exit468.us.1 ]
  %640 = add nuw nsw i64 %polly.indvar470.us.2, %267
  %polly.access.mul.call1474.us.2 = mul nsw i64 %640, 1000
  %polly.access.add.call1475.us.2 = add nuw nsw i64 %236, %polly.access.mul.call1474.us.2
  %polly.access.call1476.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us.2
  %polly.access.call1476.load.us.2 = load double, double* %polly.access.call1476.us.2, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 2400
  %polly.access.Packed_MemRef_call1309479.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us.2
  store double %polly.access.call1476.load.us.2, double* %polly.access.Packed_MemRef_call1309479.us.2, align 8
  %polly.indvar_next471.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 1
  %polly.loop_cond472.not.not.us.2 = icmp slt i64 %polly.indvar470.us.2, %298
  br i1 %polly.loop_cond472.not.not.us.2, label %polly.loop_header466.us.2, label %polly.loop_exit468.us.2

polly.loop_exit468.us.2.critedge:                 ; preds = %polly.loop_exit468.us
  %polly.access.call1464.load.us.21226.c = load double, double* %polly.access.call1464.us.21225, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.21226.c, double* %225, align 8
  %polly.access.call1464.load.us.1.2.c = load double, double* %polly.access.call1464.us.1.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1.2.c, double* %226, align 8
  %polly.access.call1464.load.us.2.2.c = load double, double* %polly.access.call1464.us.2.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2.2.c, double* %227, align 8
  %polly.access.call1464.load.us.3.2.c = load double, double* %polly.access.call1464.us.3.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3.2.c, double* %228, align 8
  br label %polly.loop_exit468.us.2

polly.loop_exit468.us.2:                          ; preds = %polly.loop_header466.us.2, %polly.loop_exit468.us.2.critedge
  %polly.access.call1464.load.us.31231 = load double, double* %polly.access.call1464.us.31230, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.31231, double* %229, align 8
  %polly.access.call1464.load.us.1.3 = load double, double* %polly.access.call1464.us.1.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1.3, double* %230, align 8
  %polly.access.call1464.load.us.2.3 = load double, double* %polly.access.call1464.us.2.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2.3, double* %231, align 8
  %polly.access.call1464.load.us.3.3 = load double, double* %polly.access.call1464.us.3.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3.3, double* %232, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466.us.3

polly.loop_header466.us.3:                        ; preds = %polly.loop_exit468.us.2, %polly.loop_header466.us.3
  %polly.indvar470.us.3 = phi i64 [ %polly.indvar_next471.us.3, %polly.loop_header466.us.3 ], [ %295, %polly.loop_exit468.us.2 ]
  %641 = add nuw nsw i64 %polly.indvar470.us.3, %267
  %polly.access.mul.call1474.us.3 = mul nsw i64 %641, 1000
  %polly.access.add.call1475.us.3 = add nuw nsw i64 %237, %polly.access.mul.call1474.us.3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 3600
  %polly.access.Packed_MemRef_call1309479.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1309479.us.3, align 8
  %polly.indvar_next471.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 1
  %polly.loop_cond472.not.not.us.3 = icmp slt i64 %polly.indvar470.us.3, %298
  br i1 %polly.loop_cond472.not.not.us.3, label %polly.loop_header466.us.3, label %polly.loop_header480.preheader

polly.loop_header487.1:                           ; preds = %polly.loop_exit497, %polly.loop_exit497.1
  %indvar1524 = phi i64 [ %indvar.next1525, %polly.loop_exit497.1 ], [ 0, %polly.loop_exit497 ]
  %indvars.iv1132.1 = phi i64 [ %indvars.iv.next1133.1, %polly.loop_exit497.1 ], [ %290, %polly.loop_exit497 ]
  %polly.indvar491.1 = phi i64 [ %polly.indvar_next492.1, %polly.loop_exit497.1 ], [ %302, %polly.loop_exit497 ]
  %642 = add i64 %279, %indvar1524
  %smin1526 = call i64 @llvm.smin.i64(i64 %642, i64 3)
  %643 = add nsw i64 %smin1526, 1
  %smin1134.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1132.1, i64 3)
  %644 = add nsw i64 %polly.indvar491.1, %293
  %polly.loop_guard498.11253 = icmp sgt i64 %644, -1
  br i1 %polly.loop_guard498.11253, label %polly.loop_header495.preheader.1, label %polly.loop_exit497.1

polly.loop_header495.preheader.1:                 ; preds = %polly.loop_header487.1
  %645 = add nuw nsw i64 %polly.indvar491.1, %292
  %polly.access.add.Packed_MemRef_call2311507.1 = add nuw nsw i64 %644, 1200
  %polly.access.Packed_MemRef_call2311508.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507.1
  %_p_scalar_509.1 = load double, double* %polly.access.Packed_MemRef_call2311508.1, align 8
  %polly.access.Packed_MemRef_call1309516.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507.1
  %_p_scalar_517.1 = load double, double* %polly.access.Packed_MemRef_call1309516.1, align 8
  %646 = mul i64 %645, 9600
  %min.iters.check1527 = icmp ult i64 %643, 4
  br i1 %min.iters.check1527, label %polly.loop_header495.1.preheader, label %vector.ph1528

vector.ph1528:                                    ; preds = %polly.loop_header495.preheader.1
  %n.vec1530 = and i64 %643, -4
  %broadcast.splatinsert1536 = insertelement <4 x double> poison, double %_p_scalar_509.1, i32 0
  %broadcast.splat1537 = shufflevector <4 x double> %broadcast.splatinsert1536, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1539 = insertelement <4 x double> poison, double %_p_scalar_517.1, i32 0
  %broadcast.splat1540 = shufflevector <4 x double> %broadcast.splatinsert1539, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1522

vector.body1522:                                  ; preds = %vector.body1522, %vector.ph1528
  %index1531 = phi i64 [ 0, %vector.ph1528 ], [ %index.next1532, %vector.body1522 ]
  %647 = add nuw nsw i64 %index1531, %267
  %648 = add nuw nsw i64 %index1531, 1200
  %649 = getelementptr double, double* %Packed_MemRef_call1309, i64 %648
  %650 = bitcast double* %649 to <4 x double>*
  %wide.load1535 = load <4 x double>, <4 x double>* %650, align 8
  %651 = fmul fast <4 x double> %broadcast.splat1537, %wide.load1535
  %652 = getelementptr double, double* %Packed_MemRef_call2311, i64 %648
  %653 = bitcast double* %652 to <4 x double>*
  %wide.load1538 = load <4 x double>, <4 x double>* %653, align 8
  %654 = fmul fast <4 x double> %broadcast.splat1540, %wide.load1538
  %655 = shl i64 %647, 3
  %656 = add i64 %655, %646
  %657 = getelementptr i8, i8* %call, i64 %656
  %658 = bitcast i8* %657 to <4 x double>*
  %wide.load1541 = load <4 x double>, <4 x double>* %658, align 8, !alias.scope !85, !noalias !87
  %659 = fadd fast <4 x double> %654, %651
  %660 = fmul fast <4 x double> %659, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %661 = fadd fast <4 x double> %660, %wide.load1541
  %662 = bitcast i8* %657 to <4 x double>*
  store <4 x double> %661, <4 x double>* %662, align 8, !alias.scope !85, !noalias !87
  %index.next1532 = add i64 %index1531, 4
  %663 = icmp eq i64 %index.next1532, %n.vec1530
  br i1 %663, label %middle.block1520, label %vector.body1522, !llvm.loop !130

middle.block1520:                                 ; preds = %vector.body1522
  %cmp.n1534 = icmp eq i64 %643, %n.vec1530
  br i1 %cmp.n1534, label %polly.loop_exit497.1, label %polly.loop_header495.1.preheader

polly.loop_header495.1.preheader:                 ; preds = %polly.loop_header495.preheader.1, %middle.block1520
  %polly.indvar499.1.ph = phi i64 [ 0, %polly.loop_header495.preheader.1 ], [ %n.vec1530, %middle.block1520 ]
  br label %polly.loop_header495.1

polly.loop_header495.1:                           ; preds = %polly.loop_header495.1.preheader, %polly.loop_header495.1
  %polly.indvar499.1 = phi i64 [ %polly.indvar_next500.1, %polly.loop_header495.1 ], [ %polly.indvar499.1.ph, %polly.loop_header495.1.preheader ]
  %664 = add nuw nsw i64 %polly.indvar499.1, %267
  %polly.access.add.Packed_MemRef_call1309503.1 = add nuw nsw i64 %polly.indvar499.1, 1200
  %polly.access.Packed_MemRef_call1309504.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503.1
  %_p_scalar_505.1 = load double, double* %polly.access.Packed_MemRef_call1309504.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_509.1, %_p_scalar_505.1
  %polly.access.Packed_MemRef_call2311512.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503.1
  %_p_scalar_513.1 = load double, double* %polly.access.Packed_MemRef_call2311512.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_517.1, %_p_scalar_513.1
  %665 = shl i64 %664, 3
  %666 = add i64 %665, %646
  %scevgep518.1 = getelementptr i8, i8* %call, i64 %666
  %scevgep518519.1 = bitcast i8* %scevgep518.1 to double*
  %_p_scalar_520.1 = load double, double* %scevgep518519.1, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_520.1
  store double %p_add42.i79.1, double* %scevgep518519.1, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next500.1 = add nuw nsw i64 %polly.indvar499.1, 1
  %exitcond1135.1.not = icmp eq i64 %polly.indvar499.1, %smin1134.1
  br i1 %exitcond1135.1.not, label %polly.loop_exit497.1, label %polly.loop_header495.1, !llvm.loop !131

polly.loop_exit497.1:                             ; preds = %polly.loop_header495.1, %middle.block1520, %polly.loop_header487.1
  %polly.indvar_next492.1 = add nuw nsw i64 %polly.indvar491.1, 1
  %polly.loop_cond493.not.not.1 = icmp slt i64 %polly.indvar491.1, %306
  %indvars.iv.next1133.1 = add i64 %indvars.iv1132.1, 1
  %indvar.next1525 = add i64 %indvar1524, 1
  br i1 %polly.loop_cond493.not.not.1, label %polly.loop_header487.1, label %polly.loop_header487.2

polly.loop_header487.2:                           ; preds = %polly.loop_exit497.1, %polly.loop_exit497.2
  %indvar1502 = phi i64 [ %indvar.next1503, %polly.loop_exit497.2 ], [ 0, %polly.loop_exit497.1 ]
  %indvars.iv1132.2 = phi i64 [ %indvars.iv.next1133.2, %polly.loop_exit497.2 ], [ %290, %polly.loop_exit497.1 ]
  %polly.indvar491.2 = phi i64 [ %polly.indvar_next492.2, %polly.loop_exit497.2 ], [ %302, %polly.loop_exit497.1 ]
  %667 = add i64 %284, %indvar1502
  %smin1504 = call i64 @llvm.smin.i64(i64 %667, i64 3)
  %668 = add nsw i64 %smin1504, 1
  %smin1134.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1132.2, i64 3)
  %669 = add nsw i64 %polly.indvar491.2, %293
  %polly.loop_guard498.21254 = icmp sgt i64 %669, -1
  br i1 %polly.loop_guard498.21254, label %polly.loop_header495.preheader.2, label %polly.loop_exit497.2

polly.loop_header495.preheader.2:                 ; preds = %polly.loop_header487.2
  %670 = add nuw nsw i64 %polly.indvar491.2, %292
  %polly.access.add.Packed_MemRef_call2311507.2 = add nuw nsw i64 %669, 2400
  %polly.access.Packed_MemRef_call2311508.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507.2
  %_p_scalar_509.2 = load double, double* %polly.access.Packed_MemRef_call2311508.2, align 8
  %polly.access.Packed_MemRef_call1309516.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507.2
  %_p_scalar_517.2 = load double, double* %polly.access.Packed_MemRef_call1309516.2, align 8
  %671 = mul i64 %670, 9600
  %min.iters.check1505 = icmp ult i64 %668, 4
  br i1 %min.iters.check1505, label %polly.loop_header495.2.preheader, label %vector.ph1506

vector.ph1506:                                    ; preds = %polly.loop_header495.preheader.2
  %n.vec1508 = and i64 %668, -4
  %broadcast.splatinsert1514 = insertelement <4 x double> poison, double %_p_scalar_509.2, i32 0
  %broadcast.splat1515 = shufflevector <4 x double> %broadcast.splatinsert1514, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1517 = insertelement <4 x double> poison, double %_p_scalar_517.2, i32 0
  %broadcast.splat1518 = shufflevector <4 x double> %broadcast.splatinsert1517, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1500

vector.body1500:                                  ; preds = %vector.body1500, %vector.ph1506
  %index1509 = phi i64 [ 0, %vector.ph1506 ], [ %index.next1510, %vector.body1500 ]
  %672 = add nuw nsw i64 %index1509, %267
  %673 = add nuw nsw i64 %index1509, 2400
  %674 = getelementptr double, double* %Packed_MemRef_call1309, i64 %673
  %675 = bitcast double* %674 to <4 x double>*
  %wide.load1513 = load <4 x double>, <4 x double>* %675, align 8
  %676 = fmul fast <4 x double> %broadcast.splat1515, %wide.load1513
  %677 = getelementptr double, double* %Packed_MemRef_call2311, i64 %673
  %678 = bitcast double* %677 to <4 x double>*
  %wide.load1516 = load <4 x double>, <4 x double>* %678, align 8
  %679 = fmul fast <4 x double> %broadcast.splat1518, %wide.load1516
  %680 = shl i64 %672, 3
  %681 = add i64 %680, %671
  %682 = getelementptr i8, i8* %call, i64 %681
  %683 = bitcast i8* %682 to <4 x double>*
  %wide.load1519 = load <4 x double>, <4 x double>* %683, align 8, !alias.scope !85, !noalias !87
  %684 = fadd fast <4 x double> %679, %676
  %685 = fmul fast <4 x double> %684, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %686 = fadd fast <4 x double> %685, %wide.load1519
  %687 = bitcast i8* %682 to <4 x double>*
  store <4 x double> %686, <4 x double>* %687, align 8, !alias.scope !85, !noalias !87
  %index.next1510 = add i64 %index1509, 4
  %688 = icmp eq i64 %index.next1510, %n.vec1508
  br i1 %688, label %middle.block1498, label %vector.body1500, !llvm.loop !132

middle.block1498:                                 ; preds = %vector.body1500
  %cmp.n1512 = icmp eq i64 %668, %n.vec1508
  br i1 %cmp.n1512, label %polly.loop_exit497.2, label %polly.loop_header495.2.preheader

polly.loop_header495.2.preheader:                 ; preds = %polly.loop_header495.preheader.2, %middle.block1498
  %polly.indvar499.2.ph = phi i64 [ 0, %polly.loop_header495.preheader.2 ], [ %n.vec1508, %middle.block1498 ]
  br label %polly.loop_header495.2

polly.loop_header495.2:                           ; preds = %polly.loop_header495.2.preheader, %polly.loop_header495.2
  %polly.indvar499.2 = phi i64 [ %polly.indvar_next500.2, %polly.loop_header495.2 ], [ %polly.indvar499.2.ph, %polly.loop_header495.2.preheader ]
  %689 = add nuw nsw i64 %polly.indvar499.2, %267
  %polly.access.add.Packed_MemRef_call1309503.2 = add nuw nsw i64 %polly.indvar499.2, 2400
  %polly.access.Packed_MemRef_call1309504.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503.2
  %_p_scalar_505.2 = load double, double* %polly.access.Packed_MemRef_call1309504.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_509.2, %_p_scalar_505.2
  %polly.access.Packed_MemRef_call2311512.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503.2
  %_p_scalar_513.2 = load double, double* %polly.access.Packed_MemRef_call2311512.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_517.2, %_p_scalar_513.2
  %690 = shl i64 %689, 3
  %691 = add i64 %690, %671
  %scevgep518.2 = getelementptr i8, i8* %call, i64 %691
  %scevgep518519.2 = bitcast i8* %scevgep518.2 to double*
  %_p_scalar_520.2 = load double, double* %scevgep518519.2, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_520.2
  store double %p_add42.i79.2, double* %scevgep518519.2, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next500.2 = add nuw nsw i64 %polly.indvar499.2, 1
  %exitcond1135.2.not = icmp eq i64 %polly.indvar499.2, %smin1134.2
  br i1 %exitcond1135.2.not, label %polly.loop_exit497.2, label %polly.loop_header495.2, !llvm.loop !133

polly.loop_exit497.2:                             ; preds = %polly.loop_header495.2, %middle.block1498, %polly.loop_header487.2
  %polly.indvar_next492.2 = add nuw nsw i64 %polly.indvar491.2, 1
  %polly.loop_cond493.not.not.2 = icmp slt i64 %polly.indvar491.2, %306
  %indvars.iv.next1133.2 = add i64 %indvars.iv1132.2, 1
  %indvar.next1503 = add i64 %indvar1502, 1
  br i1 %polly.loop_cond493.not.not.2, label %polly.loop_header487.2, label %polly.loop_header487.3

polly.loop_header487.3:                           ; preds = %polly.loop_exit497.2, %polly.loop_exit497.3
  %indvar1480 = phi i64 [ %indvar.next1481, %polly.loop_exit497.3 ], [ 0, %polly.loop_exit497.2 ]
  %indvars.iv1132.3 = phi i64 [ %indvars.iv.next1133.3, %polly.loop_exit497.3 ], [ %290, %polly.loop_exit497.2 ]
  %polly.indvar491.3 = phi i64 [ %polly.indvar_next492.3, %polly.loop_exit497.3 ], [ %302, %polly.loop_exit497.2 ]
  %692 = add i64 %289, %indvar1480
  %smin1482 = call i64 @llvm.smin.i64(i64 %692, i64 3)
  %693 = add nsw i64 %smin1482, 1
  %smin1134.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1132.3, i64 3)
  %694 = add nsw i64 %polly.indvar491.3, %293
  %polly.loop_guard498.31255 = icmp sgt i64 %694, -1
  br i1 %polly.loop_guard498.31255, label %polly.loop_header495.preheader.3, label %polly.loop_exit497.3

polly.loop_header495.preheader.3:                 ; preds = %polly.loop_header487.3
  %695 = add nuw nsw i64 %polly.indvar491.3, %292
  %polly.access.add.Packed_MemRef_call2311507.3 = add nuw nsw i64 %694, 3600
  %polly.access.Packed_MemRef_call2311508.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507.3
  %_p_scalar_509.3 = load double, double* %polly.access.Packed_MemRef_call2311508.3, align 8
  %polly.access.Packed_MemRef_call1309516.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507.3
  %_p_scalar_517.3 = load double, double* %polly.access.Packed_MemRef_call1309516.3, align 8
  %696 = mul i64 %695, 9600
  %min.iters.check1483 = icmp ult i64 %693, 4
  br i1 %min.iters.check1483, label %polly.loop_header495.3.preheader, label %vector.ph1484

vector.ph1484:                                    ; preds = %polly.loop_header495.preheader.3
  %n.vec1486 = and i64 %693, -4
  %broadcast.splatinsert1492 = insertelement <4 x double> poison, double %_p_scalar_509.3, i32 0
  %broadcast.splat1493 = shufflevector <4 x double> %broadcast.splatinsert1492, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1495 = insertelement <4 x double> poison, double %_p_scalar_517.3, i32 0
  %broadcast.splat1496 = shufflevector <4 x double> %broadcast.splatinsert1495, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1476

vector.body1476:                                  ; preds = %vector.body1476, %vector.ph1484
  %index1487 = phi i64 [ 0, %vector.ph1484 ], [ %index.next1488, %vector.body1476 ]
  %697 = add nuw nsw i64 %index1487, %267
  %698 = add nuw nsw i64 %index1487, 3600
  %699 = getelementptr double, double* %Packed_MemRef_call1309, i64 %698
  %700 = bitcast double* %699 to <4 x double>*
  %wide.load1491 = load <4 x double>, <4 x double>* %700, align 8
  %701 = fmul fast <4 x double> %broadcast.splat1493, %wide.load1491
  %702 = getelementptr double, double* %Packed_MemRef_call2311, i64 %698
  %703 = bitcast double* %702 to <4 x double>*
  %wide.load1494 = load <4 x double>, <4 x double>* %703, align 8
  %704 = fmul fast <4 x double> %broadcast.splat1496, %wide.load1494
  %705 = shl i64 %697, 3
  %706 = add i64 %705, %696
  %707 = getelementptr i8, i8* %call, i64 %706
  %708 = bitcast i8* %707 to <4 x double>*
  %wide.load1497 = load <4 x double>, <4 x double>* %708, align 8, !alias.scope !85, !noalias !87
  %709 = fadd fast <4 x double> %704, %701
  %710 = fmul fast <4 x double> %709, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %711 = fadd fast <4 x double> %710, %wide.load1497
  %712 = bitcast i8* %707 to <4 x double>*
  store <4 x double> %711, <4 x double>* %712, align 8, !alias.scope !85, !noalias !87
  %index.next1488 = add i64 %index1487, 4
  %713 = icmp eq i64 %index.next1488, %n.vec1486
  br i1 %713, label %middle.block1474, label %vector.body1476, !llvm.loop !134

middle.block1474:                                 ; preds = %vector.body1476
  %cmp.n1490 = icmp eq i64 %693, %n.vec1486
  br i1 %cmp.n1490, label %polly.loop_exit497.3, label %polly.loop_header495.3.preheader

polly.loop_header495.3.preheader:                 ; preds = %polly.loop_header495.preheader.3, %middle.block1474
  %polly.indvar499.3.ph = phi i64 [ 0, %polly.loop_header495.preheader.3 ], [ %n.vec1486, %middle.block1474 ]
  br label %polly.loop_header495.3

polly.loop_header495.3:                           ; preds = %polly.loop_header495.3.preheader, %polly.loop_header495.3
  %polly.indvar499.3 = phi i64 [ %polly.indvar_next500.3, %polly.loop_header495.3 ], [ %polly.indvar499.3.ph, %polly.loop_header495.3.preheader ]
  %714 = add nuw nsw i64 %polly.indvar499.3, %267
  %polly.access.add.Packed_MemRef_call1309503.3 = add nuw nsw i64 %polly.indvar499.3, 3600
  %polly.access.Packed_MemRef_call1309504.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503.3
  %_p_scalar_505.3 = load double, double* %polly.access.Packed_MemRef_call1309504.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_509.3, %_p_scalar_505.3
  %polly.access.Packed_MemRef_call2311512.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503.3
  %_p_scalar_513.3 = load double, double* %polly.access.Packed_MemRef_call2311512.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_517.3, %_p_scalar_513.3
  %715 = shl i64 %714, 3
  %716 = add i64 %715, %696
  %scevgep518.3 = getelementptr i8, i8* %call, i64 %716
  %scevgep518519.3 = bitcast i8* %scevgep518.3 to double*
  %_p_scalar_520.3 = load double, double* %scevgep518519.3, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_520.3
  store double %p_add42.i79.3, double* %scevgep518519.3, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next500.3 = add nuw nsw i64 %polly.indvar499.3, 1
  %exitcond1135.3.not = icmp eq i64 %polly.indvar499.3, %smin1134.3
  br i1 %exitcond1135.3.not, label %polly.loop_exit497.3, label %polly.loop_header495.3, !llvm.loop !135

polly.loop_exit497.3:                             ; preds = %polly.loop_header495.3, %middle.block1474, %polly.loop_header487.3
  %polly.indvar_next492.3 = add nuw nsw i64 %polly.indvar491.3, 1
  %polly.loop_cond493.not.not.3 = icmp slt i64 %polly.indvar491.3, %306
  %indvars.iv.next1133.3 = add i64 %indvars.iv1132.3, 1
  %indvar.next1481 = add i64 %indvar1480, 1
  br i1 %polly.loop_cond493.not.not.3, label %polly.loop_header487.3, label %polly.loop_exit482

polly.loop_header645.1:                           ; preds = %polly.loop_header645, %polly.loop_header645.1
  %polly.indvar648.1 = phi i64 [ %polly.indvar_next649.1, %polly.loop_header645.1 ], [ 0, %polly.loop_header645 ]
  %717 = add nuw nsw i64 %polly.indvar648.1, %389
  %polly.access.mul.call2652.1 = mul nuw nsw i64 %717, 1000
  %polly.access.add.call2653.1 = add nuw nsw i64 %357, %polly.access.mul.call2652.1
  %polly.access.call2654.1 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.1
  %polly.access.call2654.load.1 = load double, double* %polly.access.call2654.1, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.1 = add nuw nsw i64 %polly.indvar648.1, 1200
  %polly.access.Packed_MemRef_call2528.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.1
  store double %polly.access.call2654.load.1, double* %polly.access.Packed_MemRef_call2528.1, align 8
  %polly.indvar_next649.1 = add nuw nsw i64 %polly.indvar648.1, 1
  %exitcond1143.1.not = icmp eq i64 %polly.indvar_next649.1, %indvars.iv1141
  br i1 %exitcond1143.1.not, label %polly.loop_header645.2, label %polly.loop_header645.1

polly.loop_header645.2:                           ; preds = %polly.loop_header645.1, %polly.loop_header645.2
  %polly.indvar648.2 = phi i64 [ %polly.indvar_next649.2, %polly.loop_header645.2 ], [ 0, %polly.loop_header645.1 ]
  %718 = add nuw nsw i64 %polly.indvar648.2, %389
  %polly.access.mul.call2652.2 = mul nuw nsw i64 %718, 1000
  %polly.access.add.call2653.2 = add nuw nsw i64 %358, %polly.access.mul.call2652.2
  %polly.access.call2654.2 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.2
  %polly.access.call2654.load.2 = load double, double* %polly.access.call2654.2, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.2 = add nuw nsw i64 %polly.indvar648.2, 2400
  %polly.access.Packed_MemRef_call2528.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.2
  store double %polly.access.call2654.load.2, double* %polly.access.Packed_MemRef_call2528.2, align 8
  %polly.indvar_next649.2 = add nuw nsw i64 %polly.indvar648.2, 1
  %exitcond1143.2.not = icmp eq i64 %polly.indvar_next649.2, %indvars.iv1141
  br i1 %exitcond1143.2.not, label %polly.loop_header645.3, label %polly.loop_header645.2

polly.loop_header645.3:                           ; preds = %polly.loop_header645.2, %polly.loop_header645.3
  %polly.indvar648.3 = phi i64 [ %polly.indvar_next649.3, %polly.loop_header645.3 ], [ 0, %polly.loop_header645.2 ]
  %719 = add nuw nsw i64 %polly.indvar648.3, %389
  %polly.access.mul.call2652.3 = mul nuw nsw i64 %719, 1000
  %polly.access.add.call2653.3 = add nuw nsw i64 %359, %polly.access.mul.call2652.3
  %polly.access.call2654.3 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.3
  %polly.access.call2654.load.3 = load double, double* %polly.access.call2654.3, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.3 = add nuw nsw i64 %polly.indvar648.3, 3600
  %polly.access.Packed_MemRef_call2528.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.3
  store double %polly.access.call2654.load.3, double* %polly.access.Packed_MemRef_call2528.3, align 8
  %polly.indvar_next649.3 = add nuw nsw i64 %polly.indvar648.3, 1
  %exitcond1143.3.not = icmp eq i64 %polly.indvar_next649.3, %indvars.iv1141
  br i1 %exitcond1143.3.not, label %polly.loop_exit647.3, label %polly.loop_header645.3

polly.loop_exit647.3:                             ; preds = %polly.loop_header645.3
  %720 = add nsw i64 %388, 1199
  %polly.access.mul.call1679.us = mul nsw i64 %polly.indvar636, 4000
  %polly.access.add.call1680.us = add nuw nsw i64 %356, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us
  %721 = or i64 %389, 1
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %721, 1000
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %356, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1
  %722 = or i64 %389, 2
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %722, 1000
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %356, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2
  %723 = or i64 %389, 3
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %723, 1000
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %356, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3
  %polly.access.add.call1680.us.11234 = add nuw nsw i64 %357, %polly.access.mul.call1679.us
  %polly.access.call1681.us.11235 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.11234
  %polly.access.add.call1680.us.1.1 = add nuw nsw i64 %357, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1.1
  %polly.access.add.call1680.us.2.1 = add nuw nsw i64 %357, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2.1
  %polly.access.add.call1680.us.3.1 = add nuw nsw i64 %357, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3.1
  %polly.access.add.call1680.us.21239 = add nuw nsw i64 %358, %polly.access.mul.call1679.us
  %polly.access.call1681.us.21240 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.21239
  %polly.access.add.call1680.us.1.2 = add nuw nsw i64 %358, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1.2
  %polly.access.add.call1680.us.2.2 = add nuw nsw i64 %358, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2.2
  %polly.access.add.call1680.us.3.2 = add nuw nsw i64 %358, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3.2
  %polly.access.add.call1680.us.31244 = add nuw nsw i64 %359, %polly.access.mul.call1679.us
  %polly.access.call1681.us.31245 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.31244
  %polly.access.add.call1680.us.1.3 = add nuw nsw i64 %359, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1.3
  %polly.access.add.call1680.us.2.3 = add nuw nsw i64 %359, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2.3
  %polly.access.add.call1680.us.3.3 = add nuw nsw i64 %359, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3.3
  br label %polly.loop_header656

polly.loop_header683.1:                           ; preds = %polly.loop_header683, %polly.loop_header683.1
  %polly.indvar687.1 = phi i64 [ %polly.indvar_next688.1, %polly.loop_header683.1 ], [ %417, %polly.loop_header683 ]
  %724 = add nuw nsw i64 %polly.indvar687.1, %389
  %polly.access.mul.call1691.1 = mul nsw i64 %724, 1000
  %polly.access.add.call1692.1 = add nuw nsw i64 %357, %polly.access.mul.call1691.1
  %polly.access.call1693.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.1
  %polly.access.call1693.load.1 = load double, double* %polly.access.call1693.1, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.1 = add nuw nsw i64 %polly.indvar687.1, 1200
  %polly.access.Packed_MemRef_call1526696.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.1
  store double %polly.access.call1693.load.1, double* %polly.access.Packed_MemRef_call1526696.1, align 8
  %polly.indvar_next688.1 = add nuw nsw i64 %polly.indvar687.1, 1
  %polly.loop_cond689.not.not.1 = icmp slt i64 %polly.indvar687.1, %420
  br i1 %polly.loop_cond689.not.not.1, label %polly.loop_header683.1, label %polly.loop_header683.2

polly.loop_header683.2:                           ; preds = %polly.loop_header683.1, %polly.loop_header683.2
  %polly.indvar687.2 = phi i64 [ %polly.indvar_next688.2, %polly.loop_header683.2 ], [ %417, %polly.loop_header683.1 ]
  %725 = add nuw nsw i64 %polly.indvar687.2, %389
  %polly.access.mul.call1691.2 = mul nsw i64 %725, 1000
  %polly.access.add.call1692.2 = add nuw nsw i64 %358, %polly.access.mul.call1691.2
  %polly.access.call1693.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.2
  %polly.access.call1693.load.2 = load double, double* %polly.access.call1693.2, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.2 = add nuw nsw i64 %polly.indvar687.2, 2400
  %polly.access.Packed_MemRef_call1526696.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.2
  store double %polly.access.call1693.load.2, double* %polly.access.Packed_MemRef_call1526696.2, align 8
  %polly.indvar_next688.2 = add nuw nsw i64 %polly.indvar687.2, 1
  %polly.loop_cond689.not.not.2 = icmp slt i64 %polly.indvar687.2, %420
  br i1 %polly.loop_cond689.not.not.2, label %polly.loop_header683.2, label %polly.loop_header683.3

polly.loop_header683.3:                           ; preds = %polly.loop_header683.2, %polly.loop_header683.3
  %polly.indvar687.3 = phi i64 [ %polly.indvar_next688.3, %polly.loop_header683.3 ], [ %417, %polly.loop_header683.2 ]
  %726 = add nuw nsw i64 %polly.indvar687.3, %389
  %polly.access.mul.call1691.3 = mul nsw i64 %726, 1000
  %polly.access.add.call1692.3 = add nuw nsw i64 %359, %polly.access.mul.call1691.3
  %polly.access.call1693.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.3
  %polly.access.call1693.load.3 = load double, double* %polly.access.call1693.3, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.3 = add nuw nsw i64 %polly.indvar687.3, 3600
  %polly.access.Packed_MemRef_call1526696.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.3
  store double %polly.access.call1693.load.3, double* %polly.access.Packed_MemRef_call1526696.3, align 8
  %polly.indvar_next688.3 = add nuw nsw i64 %polly.indvar687.3, 1
  %polly.loop_cond689.not.not.3 = icmp slt i64 %polly.indvar687.3, %420
  br i1 %polly.loop_cond689.not.not.3, label %polly.loop_header683.3, label %polly.loop_header697.preheader

polly.loop_header683.us.1:                        ; preds = %polly.loop_exit685.us, %polly.loop_header683.us.1
  %polly.indvar687.us.1 = phi i64 [ %polly.indvar_next688.us.1, %polly.loop_header683.us.1 ], [ %417, %polly.loop_exit685.us ]
  %727 = add nuw nsw i64 %polly.indvar687.us.1, %389
  %polly.access.mul.call1691.us.1 = mul nsw i64 %727, 1000
  %polly.access.add.call1692.us.1 = add nuw nsw i64 %357, %polly.access.mul.call1691.us.1
  %polly.access.call1693.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us.1
  %polly.access.call1693.load.us.1 = load double, double* %polly.access.call1693.us.1, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.us.1 = add nuw nsw i64 %polly.indvar687.us.1, 1200
  %polly.access.Packed_MemRef_call1526696.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us.1
  store double %polly.access.call1693.load.us.1, double* %polly.access.Packed_MemRef_call1526696.us.1, align 8
  %polly.indvar_next688.us.1 = add nuw nsw i64 %polly.indvar687.us.1, 1
  %polly.loop_cond689.not.not.us.1 = icmp slt i64 %polly.indvar687.us.1, %420
  br i1 %polly.loop_cond689.not.not.us.1, label %polly.loop_header683.us.1, label %polly.loop_exit685.us.1

polly.loop_exit685.us.1.critedge:                 ; preds = %polly.loop_header662.us.preheader
  %polly.access.call1681.load.us.11236.c = load double, double* %polly.access.call1681.us.11235, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.11236.c, double* %343, align 8
  %polly.access.call1681.load.us.1.1.c = load double, double* %polly.access.call1681.us.1.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1.1.c, double* %344, align 8
  %polly.access.call1681.load.us.2.1.c = load double, double* %polly.access.call1681.us.2.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2.1.c, double* %345, align 8
  %polly.access.call1681.load.us.3.1.c = load double, double* %polly.access.call1681.us.3.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3.1.c, double* %346, align 8
  br label %polly.loop_exit685.us.1

polly.loop_exit685.us.1:                          ; preds = %polly.loop_header683.us.1, %polly.loop_exit685.us.1.critedge
  %polly.access.call1681.load.us.21241 = load double, double* %polly.access.call1681.us.21240, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.21241, double* %347, align 8
  %polly.access.call1681.load.us.1.2 = load double, double* %polly.access.call1681.us.1.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1.2, double* %348, align 8
  %polly.access.call1681.load.us.2.2 = load double, double* %polly.access.call1681.us.2.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2.2, double* %349, align 8
  %polly.access.call1681.load.us.3.2 = load double, double* %polly.access.call1681.us.3.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3.2, double* %350, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader.critedge, label %polly.loop_header683.us.2

polly.loop_header683.us.2:                        ; preds = %polly.loop_exit685.us.1, %polly.loop_header683.us.2
  %polly.indvar687.us.2 = phi i64 [ %polly.indvar_next688.us.2, %polly.loop_header683.us.2 ], [ %417, %polly.loop_exit685.us.1 ]
  %728 = add nuw nsw i64 %polly.indvar687.us.2, %389
  %polly.access.mul.call1691.us.2 = mul nsw i64 %728, 1000
  %polly.access.add.call1692.us.2 = add nuw nsw i64 %358, %polly.access.mul.call1691.us.2
  %polly.access.call1693.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us.2
  %polly.access.call1693.load.us.2 = load double, double* %polly.access.call1693.us.2, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.us.2 = add nuw nsw i64 %polly.indvar687.us.2, 2400
  %polly.access.Packed_MemRef_call1526696.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us.2
  store double %polly.access.call1693.load.us.2, double* %polly.access.Packed_MemRef_call1526696.us.2, align 8
  %polly.indvar_next688.us.2 = add nuw nsw i64 %polly.indvar687.us.2, 1
  %polly.loop_cond689.not.not.us.2 = icmp slt i64 %polly.indvar687.us.2, %420
  br i1 %polly.loop_cond689.not.not.us.2, label %polly.loop_header683.us.2, label %polly.loop_exit685.us.2

polly.loop_exit685.us.2.critedge:                 ; preds = %polly.loop_exit685.us
  %polly.access.call1681.load.us.21241.c = load double, double* %polly.access.call1681.us.21240, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.21241.c, double* %347, align 8
  %polly.access.call1681.load.us.1.2.c = load double, double* %polly.access.call1681.us.1.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1.2.c, double* %348, align 8
  %polly.access.call1681.load.us.2.2.c = load double, double* %polly.access.call1681.us.2.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2.2.c, double* %349, align 8
  %polly.access.call1681.load.us.3.2.c = load double, double* %polly.access.call1681.us.3.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3.2.c, double* %350, align 8
  br label %polly.loop_exit685.us.2

polly.loop_exit685.us.2:                          ; preds = %polly.loop_header683.us.2, %polly.loop_exit685.us.2.critedge
  %polly.access.call1681.load.us.31246 = load double, double* %polly.access.call1681.us.31245, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.31246, double* %351, align 8
  %polly.access.call1681.load.us.1.3 = load double, double* %polly.access.call1681.us.1.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1.3, double* %352, align 8
  %polly.access.call1681.load.us.2.3 = load double, double* %polly.access.call1681.us.2.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2.3, double* %353, align 8
  %polly.access.call1681.load.us.3.3 = load double, double* %polly.access.call1681.us.3.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3.3, double* %354, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header683.us.3

polly.loop_header683.us.3:                        ; preds = %polly.loop_exit685.us.2, %polly.loop_header683.us.3
  %polly.indvar687.us.3 = phi i64 [ %polly.indvar_next688.us.3, %polly.loop_header683.us.3 ], [ %417, %polly.loop_exit685.us.2 ]
  %729 = add nuw nsw i64 %polly.indvar687.us.3, %389
  %polly.access.mul.call1691.us.3 = mul nsw i64 %729, 1000
  %polly.access.add.call1692.us.3 = add nuw nsw i64 %359, %polly.access.mul.call1691.us.3
  %polly.access.call1693.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us.3
  %polly.access.call1693.load.us.3 = load double, double* %polly.access.call1693.us.3, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.us.3 = add nuw nsw i64 %polly.indvar687.us.3, 3600
  %polly.access.Packed_MemRef_call1526696.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us.3
  store double %polly.access.call1693.load.us.3, double* %polly.access.Packed_MemRef_call1526696.us.3, align 8
  %polly.indvar_next688.us.3 = add nuw nsw i64 %polly.indvar687.us.3, 1
  %polly.loop_cond689.not.not.us.3 = icmp slt i64 %polly.indvar687.us.3, %420
  br i1 %polly.loop_cond689.not.not.us.3, label %polly.loop_header683.us.3, label %polly.loop_header697.preheader

polly.loop_header704.1:                           ; preds = %polly.loop_exit714, %polly.loop_exit714.1
  %indvar1408 = phi i64 [ %indvar.next1409, %polly.loop_exit714.1 ], [ 0, %polly.loop_exit714 ]
  %indvars.iv1157.1 = phi i64 [ %indvars.iv.next1158.1, %polly.loop_exit714.1 ], [ %412, %polly.loop_exit714 ]
  %polly.indvar708.1 = phi i64 [ %polly.indvar_next709.1, %polly.loop_exit714.1 ], [ %424, %polly.loop_exit714 ]
  %730 = add i64 %401, %indvar1408
  %smin1410 = call i64 @llvm.smin.i64(i64 %730, i64 3)
  %731 = add nsw i64 %smin1410, 1
  %smin1159.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1157.1, i64 3)
  %732 = add nsw i64 %polly.indvar708.1, %415
  %polly.loop_guard715.11257 = icmp sgt i64 %732, -1
  br i1 %polly.loop_guard715.11257, label %polly.loop_header712.preheader.1, label %polly.loop_exit714.1

polly.loop_header712.preheader.1:                 ; preds = %polly.loop_header704.1
  %733 = add nuw nsw i64 %polly.indvar708.1, %414
  %polly.access.add.Packed_MemRef_call2528724.1 = add nuw nsw i64 %732, 1200
  %polly.access.Packed_MemRef_call2528725.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724.1
  %_p_scalar_726.1 = load double, double* %polly.access.Packed_MemRef_call2528725.1, align 8
  %polly.access.Packed_MemRef_call1526733.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724.1
  %_p_scalar_734.1 = load double, double* %polly.access.Packed_MemRef_call1526733.1, align 8
  %734 = mul i64 %733, 9600
  %min.iters.check1411 = icmp ult i64 %731, 4
  br i1 %min.iters.check1411, label %polly.loop_header712.1.preheader, label %vector.ph1412

vector.ph1412:                                    ; preds = %polly.loop_header712.preheader.1
  %n.vec1414 = and i64 %731, -4
  %broadcast.splatinsert1420 = insertelement <4 x double> poison, double %_p_scalar_726.1, i32 0
  %broadcast.splat1421 = shufflevector <4 x double> %broadcast.splatinsert1420, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1423 = insertelement <4 x double> poison, double %_p_scalar_734.1, i32 0
  %broadcast.splat1424 = shufflevector <4 x double> %broadcast.splatinsert1423, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1406

vector.body1406:                                  ; preds = %vector.body1406, %vector.ph1412
  %index1415 = phi i64 [ 0, %vector.ph1412 ], [ %index.next1416, %vector.body1406 ]
  %735 = add nuw nsw i64 %index1415, %389
  %736 = add nuw nsw i64 %index1415, 1200
  %737 = getelementptr double, double* %Packed_MemRef_call1526, i64 %736
  %738 = bitcast double* %737 to <4 x double>*
  %wide.load1419 = load <4 x double>, <4 x double>* %738, align 8
  %739 = fmul fast <4 x double> %broadcast.splat1421, %wide.load1419
  %740 = getelementptr double, double* %Packed_MemRef_call2528, i64 %736
  %741 = bitcast double* %740 to <4 x double>*
  %wide.load1422 = load <4 x double>, <4 x double>* %741, align 8
  %742 = fmul fast <4 x double> %broadcast.splat1424, %wide.load1422
  %743 = shl i64 %735, 3
  %744 = add i64 %743, %734
  %745 = getelementptr i8, i8* %call, i64 %744
  %746 = bitcast i8* %745 to <4 x double>*
  %wide.load1425 = load <4 x double>, <4 x double>* %746, align 8, !alias.scope !98, !noalias !100
  %747 = fadd fast <4 x double> %742, %739
  %748 = fmul fast <4 x double> %747, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %749 = fadd fast <4 x double> %748, %wide.load1425
  %750 = bitcast i8* %745 to <4 x double>*
  store <4 x double> %749, <4 x double>* %750, align 8, !alias.scope !98, !noalias !100
  %index.next1416 = add i64 %index1415, 4
  %751 = icmp eq i64 %index.next1416, %n.vec1414
  br i1 %751, label %middle.block1404, label %vector.body1406, !llvm.loop !136

middle.block1404:                                 ; preds = %vector.body1406
  %cmp.n1418 = icmp eq i64 %731, %n.vec1414
  br i1 %cmp.n1418, label %polly.loop_exit714.1, label %polly.loop_header712.1.preheader

polly.loop_header712.1.preheader:                 ; preds = %polly.loop_header712.preheader.1, %middle.block1404
  %polly.indvar716.1.ph = phi i64 [ 0, %polly.loop_header712.preheader.1 ], [ %n.vec1414, %middle.block1404 ]
  br label %polly.loop_header712.1

polly.loop_header712.1:                           ; preds = %polly.loop_header712.1.preheader, %polly.loop_header712.1
  %polly.indvar716.1 = phi i64 [ %polly.indvar_next717.1, %polly.loop_header712.1 ], [ %polly.indvar716.1.ph, %polly.loop_header712.1.preheader ]
  %752 = add nuw nsw i64 %polly.indvar716.1, %389
  %polly.access.add.Packed_MemRef_call1526720.1 = add nuw nsw i64 %polly.indvar716.1, 1200
  %polly.access.Packed_MemRef_call1526721.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720.1
  %_p_scalar_722.1 = load double, double* %polly.access.Packed_MemRef_call1526721.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_726.1, %_p_scalar_722.1
  %polly.access.Packed_MemRef_call2528729.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720.1
  %_p_scalar_730.1 = load double, double* %polly.access.Packed_MemRef_call2528729.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_734.1, %_p_scalar_730.1
  %753 = shl i64 %752, 3
  %754 = add i64 %753, %734
  %scevgep735.1 = getelementptr i8, i8* %call, i64 %754
  %scevgep735736.1 = bitcast i8* %scevgep735.1 to double*
  %_p_scalar_737.1 = load double, double* %scevgep735736.1, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_737.1
  store double %p_add42.i.1, double* %scevgep735736.1, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next717.1 = add nuw nsw i64 %polly.indvar716.1, 1
  %exitcond1160.1.not = icmp eq i64 %polly.indvar716.1, %smin1159.1
  br i1 %exitcond1160.1.not, label %polly.loop_exit714.1, label %polly.loop_header712.1, !llvm.loop !137

polly.loop_exit714.1:                             ; preds = %polly.loop_header712.1, %middle.block1404, %polly.loop_header704.1
  %polly.indvar_next709.1 = add nuw nsw i64 %polly.indvar708.1, 1
  %polly.loop_cond710.not.not.1 = icmp slt i64 %polly.indvar708.1, %428
  %indvars.iv.next1158.1 = add i64 %indvars.iv1157.1, 1
  %indvar.next1409 = add i64 %indvar1408, 1
  br i1 %polly.loop_cond710.not.not.1, label %polly.loop_header704.1, label %polly.loop_header704.2

polly.loop_header704.2:                           ; preds = %polly.loop_exit714.1, %polly.loop_exit714.2
  %indvar1386 = phi i64 [ %indvar.next1387, %polly.loop_exit714.2 ], [ 0, %polly.loop_exit714.1 ]
  %indvars.iv1157.2 = phi i64 [ %indvars.iv.next1158.2, %polly.loop_exit714.2 ], [ %412, %polly.loop_exit714.1 ]
  %polly.indvar708.2 = phi i64 [ %polly.indvar_next709.2, %polly.loop_exit714.2 ], [ %424, %polly.loop_exit714.1 ]
  %755 = add i64 %406, %indvar1386
  %smin1388 = call i64 @llvm.smin.i64(i64 %755, i64 3)
  %756 = add nsw i64 %smin1388, 1
  %smin1159.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1157.2, i64 3)
  %757 = add nsw i64 %polly.indvar708.2, %415
  %polly.loop_guard715.21258 = icmp sgt i64 %757, -1
  br i1 %polly.loop_guard715.21258, label %polly.loop_header712.preheader.2, label %polly.loop_exit714.2

polly.loop_header712.preheader.2:                 ; preds = %polly.loop_header704.2
  %758 = add nuw nsw i64 %polly.indvar708.2, %414
  %polly.access.add.Packed_MemRef_call2528724.2 = add nuw nsw i64 %757, 2400
  %polly.access.Packed_MemRef_call2528725.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724.2
  %_p_scalar_726.2 = load double, double* %polly.access.Packed_MemRef_call2528725.2, align 8
  %polly.access.Packed_MemRef_call1526733.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724.2
  %_p_scalar_734.2 = load double, double* %polly.access.Packed_MemRef_call1526733.2, align 8
  %759 = mul i64 %758, 9600
  %min.iters.check1389 = icmp ult i64 %756, 4
  br i1 %min.iters.check1389, label %polly.loop_header712.2.preheader, label %vector.ph1390

vector.ph1390:                                    ; preds = %polly.loop_header712.preheader.2
  %n.vec1392 = and i64 %756, -4
  %broadcast.splatinsert1398 = insertelement <4 x double> poison, double %_p_scalar_726.2, i32 0
  %broadcast.splat1399 = shufflevector <4 x double> %broadcast.splatinsert1398, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1401 = insertelement <4 x double> poison, double %_p_scalar_734.2, i32 0
  %broadcast.splat1402 = shufflevector <4 x double> %broadcast.splatinsert1401, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1384

vector.body1384:                                  ; preds = %vector.body1384, %vector.ph1390
  %index1393 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1394, %vector.body1384 ]
  %760 = add nuw nsw i64 %index1393, %389
  %761 = add nuw nsw i64 %index1393, 2400
  %762 = getelementptr double, double* %Packed_MemRef_call1526, i64 %761
  %763 = bitcast double* %762 to <4 x double>*
  %wide.load1397 = load <4 x double>, <4 x double>* %763, align 8
  %764 = fmul fast <4 x double> %broadcast.splat1399, %wide.load1397
  %765 = getelementptr double, double* %Packed_MemRef_call2528, i64 %761
  %766 = bitcast double* %765 to <4 x double>*
  %wide.load1400 = load <4 x double>, <4 x double>* %766, align 8
  %767 = fmul fast <4 x double> %broadcast.splat1402, %wide.load1400
  %768 = shl i64 %760, 3
  %769 = add i64 %768, %759
  %770 = getelementptr i8, i8* %call, i64 %769
  %771 = bitcast i8* %770 to <4 x double>*
  %wide.load1403 = load <4 x double>, <4 x double>* %771, align 8, !alias.scope !98, !noalias !100
  %772 = fadd fast <4 x double> %767, %764
  %773 = fmul fast <4 x double> %772, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %774 = fadd fast <4 x double> %773, %wide.load1403
  %775 = bitcast i8* %770 to <4 x double>*
  store <4 x double> %774, <4 x double>* %775, align 8, !alias.scope !98, !noalias !100
  %index.next1394 = add i64 %index1393, 4
  %776 = icmp eq i64 %index.next1394, %n.vec1392
  br i1 %776, label %middle.block1382, label %vector.body1384, !llvm.loop !138

middle.block1382:                                 ; preds = %vector.body1384
  %cmp.n1396 = icmp eq i64 %756, %n.vec1392
  br i1 %cmp.n1396, label %polly.loop_exit714.2, label %polly.loop_header712.2.preheader

polly.loop_header712.2.preheader:                 ; preds = %polly.loop_header712.preheader.2, %middle.block1382
  %polly.indvar716.2.ph = phi i64 [ 0, %polly.loop_header712.preheader.2 ], [ %n.vec1392, %middle.block1382 ]
  br label %polly.loop_header712.2

polly.loop_header712.2:                           ; preds = %polly.loop_header712.2.preheader, %polly.loop_header712.2
  %polly.indvar716.2 = phi i64 [ %polly.indvar_next717.2, %polly.loop_header712.2 ], [ %polly.indvar716.2.ph, %polly.loop_header712.2.preheader ]
  %777 = add nuw nsw i64 %polly.indvar716.2, %389
  %polly.access.add.Packed_MemRef_call1526720.2 = add nuw nsw i64 %polly.indvar716.2, 2400
  %polly.access.Packed_MemRef_call1526721.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720.2
  %_p_scalar_722.2 = load double, double* %polly.access.Packed_MemRef_call1526721.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_726.2, %_p_scalar_722.2
  %polly.access.Packed_MemRef_call2528729.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720.2
  %_p_scalar_730.2 = load double, double* %polly.access.Packed_MemRef_call2528729.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_734.2, %_p_scalar_730.2
  %778 = shl i64 %777, 3
  %779 = add i64 %778, %759
  %scevgep735.2 = getelementptr i8, i8* %call, i64 %779
  %scevgep735736.2 = bitcast i8* %scevgep735.2 to double*
  %_p_scalar_737.2 = load double, double* %scevgep735736.2, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_737.2
  store double %p_add42.i.2, double* %scevgep735736.2, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next717.2 = add nuw nsw i64 %polly.indvar716.2, 1
  %exitcond1160.2.not = icmp eq i64 %polly.indvar716.2, %smin1159.2
  br i1 %exitcond1160.2.not, label %polly.loop_exit714.2, label %polly.loop_header712.2, !llvm.loop !139

polly.loop_exit714.2:                             ; preds = %polly.loop_header712.2, %middle.block1382, %polly.loop_header704.2
  %polly.indvar_next709.2 = add nuw nsw i64 %polly.indvar708.2, 1
  %polly.loop_cond710.not.not.2 = icmp slt i64 %polly.indvar708.2, %428
  %indvars.iv.next1158.2 = add i64 %indvars.iv1157.2, 1
  %indvar.next1387 = add i64 %indvar1386, 1
  br i1 %polly.loop_cond710.not.not.2, label %polly.loop_header704.2, label %polly.loop_header704.3

polly.loop_header704.3:                           ; preds = %polly.loop_exit714.2, %polly.loop_exit714.3
  %indvar1364 = phi i64 [ %indvar.next1365, %polly.loop_exit714.3 ], [ 0, %polly.loop_exit714.2 ]
  %indvars.iv1157.3 = phi i64 [ %indvars.iv.next1158.3, %polly.loop_exit714.3 ], [ %412, %polly.loop_exit714.2 ]
  %polly.indvar708.3 = phi i64 [ %polly.indvar_next709.3, %polly.loop_exit714.3 ], [ %424, %polly.loop_exit714.2 ]
  %780 = add i64 %411, %indvar1364
  %smin1366 = call i64 @llvm.smin.i64(i64 %780, i64 3)
  %781 = add nsw i64 %smin1366, 1
  %smin1159.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1157.3, i64 3)
  %782 = add nsw i64 %polly.indvar708.3, %415
  %polly.loop_guard715.31259 = icmp sgt i64 %782, -1
  br i1 %polly.loop_guard715.31259, label %polly.loop_header712.preheader.3, label %polly.loop_exit714.3

polly.loop_header712.preheader.3:                 ; preds = %polly.loop_header704.3
  %783 = add nuw nsw i64 %polly.indvar708.3, %414
  %polly.access.add.Packed_MemRef_call2528724.3 = add nuw nsw i64 %782, 3600
  %polly.access.Packed_MemRef_call2528725.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724.3
  %_p_scalar_726.3 = load double, double* %polly.access.Packed_MemRef_call2528725.3, align 8
  %polly.access.Packed_MemRef_call1526733.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724.3
  %_p_scalar_734.3 = load double, double* %polly.access.Packed_MemRef_call1526733.3, align 8
  %784 = mul i64 %783, 9600
  %min.iters.check1367 = icmp ult i64 %781, 4
  br i1 %min.iters.check1367, label %polly.loop_header712.3.preheader, label %vector.ph1368

vector.ph1368:                                    ; preds = %polly.loop_header712.preheader.3
  %n.vec1370 = and i64 %781, -4
  %broadcast.splatinsert1376 = insertelement <4 x double> poison, double %_p_scalar_726.3, i32 0
  %broadcast.splat1377 = shufflevector <4 x double> %broadcast.splatinsert1376, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1379 = insertelement <4 x double> poison, double %_p_scalar_734.3, i32 0
  %broadcast.splat1380 = shufflevector <4 x double> %broadcast.splatinsert1379, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1360

vector.body1360:                                  ; preds = %vector.body1360, %vector.ph1368
  %index1371 = phi i64 [ 0, %vector.ph1368 ], [ %index.next1372, %vector.body1360 ]
  %785 = add nuw nsw i64 %index1371, %389
  %786 = add nuw nsw i64 %index1371, 3600
  %787 = getelementptr double, double* %Packed_MemRef_call1526, i64 %786
  %788 = bitcast double* %787 to <4 x double>*
  %wide.load1375 = load <4 x double>, <4 x double>* %788, align 8
  %789 = fmul fast <4 x double> %broadcast.splat1377, %wide.load1375
  %790 = getelementptr double, double* %Packed_MemRef_call2528, i64 %786
  %791 = bitcast double* %790 to <4 x double>*
  %wide.load1378 = load <4 x double>, <4 x double>* %791, align 8
  %792 = fmul fast <4 x double> %broadcast.splat1380, %wide.load1378
  %793 = shl i64 %785, 3
  %794 = add i64 %793, %784
  %795 = getelementptr i8, i8* %call, i64 %794
  %796 = bitcast i8* %795 to <4 x double>*
  %wide.load1381 = load <4 x double>, <4 x double>* %796, align 8, !alias.scope !98, !noalias !100
  %797 = fadd fast <4 x double> %792, %789
  %798 = fmul fast <4 x double> %797, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %799 = fadd fast <4 x double> %798, %wide.load1381
  %800 = bitcast i8* %795 to <4 x double>*
  store <4 x double> %799, <4 x double>* %800, align 8, !alias.scope !98, !noalias !100
  %index.next1372 = add i64 %index1371, 4
  %801 = icmp eq i64 %index.next1372, %n.vec1370
  br i1 %801, label %middle.block1358, label %vector.body1360, !llvm.loop !140

middle.block1358:                                 ; preds = %vector.body1360
  %cmp.n1374 = icmp eq i64 %781, %n.vec1370
  br i1 %cmp.n1374, label %polly.loop_exit714.3, label %polly.loop_header712.3.preheader

polly.loop_header712.3.preheader:                 ; preds = %polly.loop_header712.preheader.3, %middle.block1358
  %polly.indvar716.3.ph = phi i64 [ 0, %polly.loop_header712.preheader.3 ], [ %n.vec1370, %middle.block1358 ]
  br label %polly.loop_header712.3

polly.loop_header712.3:                           ; preds = %polly.loop_header712.3.preheader, %polly.loop_header712.3
  %polly.indvar716.3 = phi i64 [ %polly.indvar_next717.3, %polly.loop_header712.3 ], [ %polly.indvar716.3.ph, %polly.loop_header712.3.preheader ]
  %802 = add nuw nsw i64 %polly.indvar716.3, %389
  %polly.access.add.Packed_MemRef_call1526720.3 = add nuw nsw i64 %polly.indvar716.3, 3600
  %polly.access.Packed_MemRef_call1526721.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720.3
  %_p_scalar_722.3 = load double, double* %polly.access.Packed_MemRef_call1526721.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_726.3, %_p_scalar_722.3
  %polly.access.Packed_MemRef_call2528729.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720.3
  %_p_scalar_730.3 = load double, double* %polly.access.Packed_MemRef_call2528729.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_734.3, %_p_scalar_730.3
  %803 = shl i64 %802, 3
  %804 = add i64 %803, %784
  %scevgep735.3 = getelementptr i8, i8* %call, i64 %804
  %scevgep735736.3 = bitcast i8* %scevgep735.3 to double*
  %_p_scalar_737.3 = load double, double* %scevgep735736.3, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_737.3
  store double %p_add42.i.3, double* %scevgep735736.3, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next717.3 = add nuw nsw i64 %polly.indvar716.3, 1
  %exitcond1160.3.not = icmp eq i64 %polly.indvar716.3, %smin1159.3
  br i1 %exitcond1160.3.not, label %polly.loop_exit714.3, label %polly.loop_header712.3, !llvm.loop !141

polly.loop_exit714.3:                             ; preds = %polly.loop_header712.3, %middle.block1358, %polly.loop_header704.3
  %polly.indvar_next709.3 = add nuw nsw i64 %polly.indvar708.3, 1
  %polly.loop_cond710.not.not.3 = icmp slt i64 %polly.indvar708.3, %428
  %indvars.iv.next1158.3 = add i64 %indvars.iv1157.3, 1
  %indvar.next1365 = add i64 %indvar1364, 1
  br i1 %polly.loop_cond710.not.not.3, label %polly.loop_header704.3, label %polly.loop_exit699
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
!26 = !{!"llvm.loop.tile.size", i32 4}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !26, !35, !38}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !24, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !24, !40, !41}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.loop.interchange.followup_interchanged", !42}
!42 = distinct !{!42, !12, !24, !40, !43, !44, !45}
!43 = !{!"llvm.data.pack.enable", i1 true}
!44 = !{!"llvm.data.pack.array", !21}
!45 = !{!"llvm.data.pack.allocate", !"malloc"}
!46 = distinct !{!46, !12, !24, !47, !48, !49, !50, !51, !60}
!47 = !{!"llvm.loop.id", !"i"}
!48 = !{!"llvm.loop.tile.enable", i1 true}
!49 = !{!"llvm.loop.tile.depth", i32 3}
!50 = !{!"llvm.loop.tile.size", i32 96}
!51 = !{!"llvm.loop.tile.followup_floor", !52}
!52 = distinct !{!52, !12, !24, !53, !54, !55, !56, !57}
!53 = !{!"llvm.loop.id", !"i1"}
!54 = !{!"llvm.loop.interchange.enable", i1 true}
!55 = !{!"llvm.loop.interchange.depth", i32 5}
!56 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!57 = !{!"llvm.loop.interchange.followup_interchanged", !58}
!58 = distinct !{!58, !12, !24, !53, !43, !59, !45}
!59 = !{!"llvm.data.pack.array", !22}
!60 = !{!"llvm.loop.tile.followup_tile", !61}
!61 = distinct !{!61, !12, !24, !62}
!62 = !{!"llvm.loop.id", !"i2"}
!63 = distinct !{!63, !12, !13}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = !{!68, !68, i64 0}
!68 = !{!"any pointer", !4, i64 0}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !72, !"polly.alias.scope.MemRef_call"}
!72 = distinct !{!72, !"polly.alias.scope.domain"}
!73 = !{!74, !75, !76, !77}
!74 = distinct !{!74, !72, !"polly.alias.scope.MemRef_call1"}
!75 = distinct !{!75, !72, !"polly.alias.scope.MemRef_call2"}
!76 = distinct !{!76, !72, !"polly.alias.scope.Packed_MemRef_call1"}
!77 = distinct !{!77, !72, !"polly.alias.scope.Packed_MemRef_call2"}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !80, !13}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!71, !74, !76, !77}
!82 = !{!71, !75, !76, !77}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !80, !13}
!85 = distinct !{!85, !86, !"polly.alias.scope.MemRef_call"}
!86 = distinct !{!86, !"polly.alias.scope.domain"}
!87 = !{!88, !89, !90, !91}
!88 = distinct !{!88, !86, !"polly.alias.scope.MemRef_call1"}
!89 = distinct !{!89, !86, !"polly.alias.scope.MemRef_call2"}
!90 = distinct !{!90, !86, !"polly.alias.scope.Packed_MemRef_call1"}
!91 = distinct !{!91, !86, !"polly.alias.scope.Packed_MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !80, !13}
!94 = !{!85, !88, !90, !91}
!95 = !{!85, !89, !90, !91}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !80, !13}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102, !103, !104}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !99, !"polly.alias.scope.Packed_MemRef_call1"}
!104 = distinct !{!104, !99, !"polly.alias.scope.Packed_MemRef_call2"}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !80, !13}
!107 = !{!98, !101, !103, !104}
!108 = !{!98, !102, !103, !104}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !80, !13}
!111 = distinct !{!111, !112, !"polly.alias.scope.MemRef_call"}
!112 = distinct !{!112, !"polly.alias.scope.domain"}
!113 = !{!114, !115}
!114 = distinct !{!114, !112, !"polly.alias.scope.MemRef_call1"}
!115 = distinct !{!115, !112, !"polly.alias.scope.MemRef_call2"}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !80, !13}
!118 = !{!114, !111}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !80, !13}
!121 = !{!115, !111}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !80, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !80, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !80, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !80, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !80, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !80, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !80, !13}
!136 = distinct !{!136, !13}
!137 = distinct !{!137, !80, !13}
!138 = distinct !{!138, !13}
!139 = distinct !{!139, !80, !13}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !80, !13}
