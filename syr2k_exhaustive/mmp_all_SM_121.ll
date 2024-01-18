; ModuleID = 'syr2k_exhaustive/mmp_all_SM_121.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_121.c"
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
  %scevgep1265 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1264 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1263 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1262 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1262, %scevgep1265
  %bound1 = icmp ult i8* %scevgep1264, %scevgep1263
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
  br i1 %exitcond18.not.i, label %vector.ph1269, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1269:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1276 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1277 = shufflevector <4 x i64> %broadcast.splatinsert1276, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1268

vector.body1268:                                  ; preds = %vector.body1268, %vector.ph1269
  %index1270 = phi i64 [ 0, %vector.ph1269 ], [ %index.next1271, %vector.body1268 ]
  %vec.ind1274 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1269 ], [ %vec.ind.next1275, %vector.body1268 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1274, %broadcast.splat1277
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv7.i, i64 %index1270
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1271 = add i64 %index1270, 4
  %vec.ind.next1275 = add <4 x i64> %vec.ind1274, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1271, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1268, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1268
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1269, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit925
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start523, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1332 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1332, label %for.body3.i46.preheader1679, label %vector.ph1333

vector.ph1333:                                    ; preds = %for.body3.i46.preheader
  %n.vec1335 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1331

vector.body1331:                                  ; preds = %vector.body1331, %vector.ph1333
  %index1336 = phi i64 [ 0, %vector.ph1333 ], [ %index.next1337, %vector.body1331 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %index1336
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1337 = add i64 %index1336, 4
  %46 = icmp eq i64 %index.next1337, %n.vec1335
  br i1 %46, label %middle.block1329, label %vector.body1331, !llvm.loop !18

middle.block1329:                                 ; preds = %vector.body1331
  %cmp.n1339 = icmp eq i64 %indvars.iv21.i, %n.vec1335
  br i1 %cmp.n1339, label %for.inc6.i, label %for.body3.i46.preheader1679

for.body3.i46.preheader1679:                      ; preds = %for.body3.i46.preheader, %middle.block1329
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1335, %middle.block1329 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1679, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1679 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1329, %for.cond1.preheader.i45
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
  %min.iters.check1445 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1445, label %for.body3.i60.preheader1677, label %vector.ph1446

vector.ph1446:                                    ; preds = %for.body3.i60.preheader
  %n.vec1448 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1444

vector.body1444:                                  ; preds = %vector.body1444, %vector.ph1446
  %index1449 = phi i64 [ 0, %vector.ph1446 ], [ %index.next1450, %vector.body1444 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %index1449
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1453 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1453, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1450 = add i64 %index1449, 4
  %57 = icmp eq i64 %index.next1450, %n.vec1448
  br i1 %57, label %middle.block1442, label %vector.body1444, !llvm.loop !63

middle.block1442:                                 ; preds = %vector.body1444
  %cmp.n1452 = icmp eq i64 %indvars.iv21.i52, %n.vec1448
  br i1 %cmp.n1452, label %for.inc6.i63, label %for.body3.i60.preheader1677

for.body3.i60.preheader1677:                      ; preds = %for.body3.i60.preheader, %middle.block1442
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1448, %middle.block1442 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1677, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1677 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !64

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1442, %for.cond1.preheader.i54
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
  %min.iters.check1561 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1561, label %for.body3.i99.preheader1675, label %vector.ph1562

vector.ph1562:                                    ; preds = %for.body3.i99.preheader
  %n.vec1564 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1560

vector.body1560:                                  ; preds = %vector.body1560, %vector.ph1562
  %index1565 = phi i64 [ 0, %vector.ph1562 ], [ %index.next1566, %vector.body1560 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %index1565
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1569 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1569, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1566 = add i64 %index1565, 4
  %68 = icmp eq i64 %index.next1566, %n.vec1564
  br i1 %68, label %middle.block1558, label %vector.body1560, !llvm.loop !65

middle.block1558:                                 ; preds = %vector.body1560
  %cmp.n1568 = icmp eq i64 %indvars.iv21.i91, %n.vec1564
  br i1 %cmp.n1568, label %for.inc6.i102, label %for.body3.i99.preheader1675

for.body3.i99.preheader1675:                      ; preds = %for.body3.i99.preheader, %middle.block1558
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1564, %middle.block1558 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1675, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1675 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call890, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !66

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1558, %for.cond1.preheader.i93
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
  %indvar1573 = phi i64 [ %indvar.next1574, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1573, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1575 = icmp ult i64 %88, 4
  br i1 %min.iters.check1575, label %polly.loop_header192.preheader, label %vector.ph1576

vector.ph1576:                                    ; preds = %polly.loop_header
  %n.vec1578 = and i64 %88, -4
  br label %vector.body1572

vector.body1572:                                  ; preds = %vector.body1572, %vector.ph1576
  %index1579 = phi i64 [ 0, %vector.ph1576 ], [ %index.next1580, %vector.body1572 ]
  %90 = shl nuw nsw i64 %index1579, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !71, !noalias !73
  %93 = fmul fast <4 x double> %wide.load1583, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !71, !noalias !73
  %index.next1580 = add i64 %index1579, 4
  %95 = icmp eq i64 %index.next1580, %n.vec1578
  br i1 %95, label %middle.block1570, label %vector.body1572, !llvm.loop !78

middle.block1570:                                 ; preds = %vector.body1572
  %cmp.n1582 = icmp eq i64 %88, %n.vec1578
  br i1 %cmp.n1582, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1570
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1578, %middle.block1570 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1570
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1574 = add i64 %indvar1573, 1
  br i1 %exitcond1110.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr i8, i8* %malloccall, i64 8
  %96 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1 to double*
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr i8, i8* %malloccall, i64 16
  %97 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2 to double*
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr i8, i8* %malloccall, i64 24
  %98 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3 to double*
  %polly.access.Packed_MemRef_call1.us.11201 = getelementptr i8, i8* %malloccall, i64 9600
  %99 = bitcast i8* %polly.access.Packed_MemRef_call1.us.11201 to double*
  %polly.access.Packed_MemRef_call1.us.1.1 = getelementptr i8, i8* %malloccall, i64 9608
  %100 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.1 to double*
  %polly.access.Packed_MemRef_call1.us.2.1 = getelementptr i8, i8* %malloccall, i64 9616
  %101 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.1 to double*
  %polly.access.Packed_MemRef_call1.us.3.1 = getelementptr i8, i8* %malloccall, i64 9624
  %102 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.1 to double*
  %polly.access.Packed_MemRef_call1.us.21206 = getelementptr i8, i8* %malloccall, i64 19200
  %103 = bitcast i8* %polly.access.Packed_MemRef_call1.us.21206 to double*
  %polly.access.Packed_MemRef_call1.us.1.2 = getelementptr i8, i8* %malloccall, i64 19208
  %104 = bitcast i8* %polly.access.Packed_MemRef_call1.us.1.2 to double*
  %polly.access.Packed_MemRef_call1.us.2.2 = getelementptr i8, i8* %malloccall, i64 19216
  %105 = bitcast i8* %polly.access.Packed_MemRef_call1.us.2.2 to double*
  %polly.access.Packed_MemRef_call1.us.3.2 = getelementptr i8, i8* %malloccall, i64 19224
  %106 = bitcast i8* %polly.access.Packed_MemRef_call1.us.3.2 to double*
  %polly.access.Packed_MemRef_call1.us.31211 = getelementptr i8, i8* %malloccall, i64 28800
  %107 = bitcast i8* %polly.access.Packed_MemRef_call1.us.31211 to double*
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
  %exitcond1109.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1109.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !79

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %112 = shl nsw i64 %polly.indvar203, 2
  %113 = or i64 %112, 1
  %114 = or i64 %112, 2
  %115 = or i64 %112, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next204, 250
  br i1 %exitcond1108.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1094 = phi i64 [ %indvars.iv.next1095, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %145, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %116 = shl nuw nsw i64 %polly.indvar209, 2
  %117 = shl nuw nsw i64 %polly.indvar209, 2
  %118 = and i64 %117, 9223372036854775800
  %119 = sub nsw i64 %116, %118
  %120 = mul nsw i64 %polly.indvar209, -4
  %121 = add i64 %120, %118
  %122 = shl nuw nsw i64 %polly.indvar209, 2
  %123 = shl nuw nsw i64 %polly.indvar209, 2
  %124 = and i64 %123, 9223372036854775800
  %125 = sub nsw i64 %122, %124
  %126 = mul nsw i64 %polly.indvar209, -4
  %127 = add i64 %126, %124
  %128 = shl nuw nsw i64 %polly.indvar209, 2
  %129 = shl nuw nsw i64 %polly.indvar209, 2
  %130 = and i64 %129, 9223372036854775800
  %131 = sub nsw i64 %128, %130
  %132 = mul nsw i64 %polly.indvar209, -4
  %133 = add i64 %132, %130
  %134 = shl nuw nsw i64 %polly.indvar209, 2
  %135 = shl nuw nsw i64 %polly.indvar209, 2
  %136 = and i64 %135, 9223372036854775800
  %137 = sub nsw i64 %134, %136
  %138 = mul nsw i64 %polly.indvar209, -4
  %139 = add i64 %138, %136
  %140 = lshr i64 %polly.indvar209, 1
  %141 = shl nuw nsw i64 %140, 3
  %142 = sub nsw i64 %indvars.iv1094, %141
  %143 = add i64 %indvars.iv1098, %141
  %144 = shl nsw i64 %polly.indvar209, 2
  br label %polly.loop_header218

polly.loop_exit230:                               ; preds = %polly.loop_exit265
  %145 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next1095 = add nuw nsw i64 %indvars.iv1094, 4
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -4
  %exitcond1107.not = icmp eq i64 %145, 300
  br i1 %exitcond1107.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header206
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %146 = add nuw nsw i64 %polly.indvar221, %144
  %polly.access.mul.call2225 = mul nuw nsw i64 %146, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %112, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !75, !noalias !81
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar221
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header218.1, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit265, %polly.loop_exit220.3
  %indvar1587 = phi i64 [ %indvar.next1588, %polly.loop_exit265 ], [ 0, %polly.loop_exit220.3 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit265 ], [ %143, %polly.loop_exit220.3 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit265 ], [ %142, %polly.loop_exit220.3 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit265 ], [ %140, %polly.loop_exit220.3 ]
  %147 = mul nsw i64 %indvar1587, -8
  %148 = add i64 %119, %147
  %smax1655 = call i64 @llvm.smax.i64(i64 %148, i64 0)
  %149 = shl nuw nsw i64 %indvar1587, 3
  %150 = add i64 %121, %149
  %151 = add i64 %smax1655, %150
  %152 = mul nsw i64 %indvar1587, -8
  %153 = add i64 %125, %152
  %smax1633 = call i64 @llvm.smax.i64(i64 %153, i64 0)
  %154 = shl nuw nsw i64 %indvar1587, 3
  %155 = add i64 %127, %154
  %156 = add i64 %smax1633, %155
  %157 = mul nsw i64 %indvar1587, -8
  %158 = add i64 %131, %157
  %smax1611 = call i64 @llvm.smax.i64(i64 %158, i64 0)
  %159 = shl nuw nsw i64 %indvar1587, 3
  %160 = add i64 %133, %159
  %161 = add i64 %smax1611, %160
  %162 = mul nsw i64 %indvar1587, -8
  %163 = add i64 %137, %162
  %smax1589 = call i64 @llvm.smax.i64(i64 %163, i64 0)
  %164 = shl nuw nsw i64 %indvar1587, 3
  %165 = add i64 %139, %164
  %166 = add i64 %smax1589, %165
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1096, i64 0)
  %167 = add i64 %smax, %indvars.iv1100
  %168 = shl nuw nsw i64 %polly.indvar231, 1
  %.not.not = icmp ugt i64 %168, %polly.indvar209
  %169 = shl nsw i64 %polly.indvar231, 3
  %170 = add nsw i64 %169, %523
  %171 = icmp sgt i64 %170, 0
  %172 = select i1 %171, i64 %170, i64 0
  %173 = add nsw i64 %170, 7
  %polly.loop_guard.not = icmp sgt i64 %172, %173
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
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header250.us ], [ %172, %polly.loop_header234.us.preheader ]
  %174 = add nuw nsw i64 %polly.indvar253.us, %144
  %polly.access.mul.call1257.us = mul nsw i64 %174, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %112, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.not.not.us = icmp slt i64 %polly.indvar253.us, %173
  br i1 %polly.loop_cond255.not.not.us, label %polly.loop_header250.us, label %polly.loop_exit252.us

polly.loop_exit252.us:                            ; preds = %polly.loop_header250.us
  %polly.access.call1249.load.us.11200 = load double, double* %polly.access.call1249.us.11199, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.11200, double* %99, align 8
  %polly.access.call1249.load.us.1.1 = load double, double* %polly.access.call1249.us.1.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1.1, double* %100, align 8
  %polly.access.call1249.load.us.2.1 = load double, double* %polly.access.call1249.us.2.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2.1, double* %101, align 8
  %polly.access.call1249.load.us.3.1 = load double, double* %polly.access.call1249.us.3.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3.1, double* %102, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit252.us.2.critedge, label %polly.loop_header250.us.1

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header250

polly.loop_exit265:                               ; preds = %polly.loop_exit280.us.3, %polly.loop_header263.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1097 = add i64 %indvars.iv1096, -8
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 8
  %exitcond1106.not = icmp eq i64 %polly.indvar_next232, 150
  %indvar.next1588 = add i64 %indvar1587, 1
  br i1 %exitcond1106.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header263.preheader.critedge:          ; preds = %polly.loop_exit252.us.1
  %polly.access.call1249.load.us.31210.c = load double, double* %polly.access.call1249.us.31209, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.31210.c, double* %107, align 8
  %polly.access.call1249.load.us.1.3.c = load double, double* %polly.access.call1249.us.1.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1.3.c, double* %108, align 8
  %polly.access.call1249.load.us.2.3.c = load double, double* %polly.access.call1249.us.2.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2.3.c, double* %109, align 8
  %polly.access.call1249.load.us.3.3.c = load double, double* %polly.access.call1249.us.3.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3.3.c, double* %110, align 8
  br label %polly.loop_header263.preheader

polly.loop_header263.preheader:                   ; preds = %polly.loop_header250.3, %polly.loop_header250.us.3, %polly.loop_header263.preheader.critedge, %polly.loop_exit252.us.2, %polly.loop_header228.split
  %175 = sub nsw i64 %144, %169
  %176 = icmp sgt i64 %175, 0
  %177 = select i1 %176, i64 %175, i64 0
  %polly.loop_guard273 = icmp slt i64 %177, 8
  br i1 %polly.loop_guard273, label %polly.loop_header270.us, label %polly.loop_exit265

polly.loop_header270.us:                          ; preds = %polly.loop_header263.preheader, %polly.loop_exit280.us
  %indvar1656 = phi i64 [ %indvar.next1657, %polly.loop_exit280.us ], [ 0, %polly.loop_header263.preheader ]
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit280.us ], [ %167, %polly.loop_header263.preheader ]
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_exit280.us ], [ %177, %polly.loop_header263.preheader ]
  %178 = add i64 %151, %indvar1656
  %smin1658 = call i64 @llvm.smin.i64(i64 %178, i64 3)
  %179 = add nsw i64 %smin1658, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1102, i64 3)
  %180 = add nsw i64 %polly.indvar274.us, %170
  %polly.loop_guard281.us1242 = icmp sgt i64 %180, -1
  br i1 %polly.loop_guard281.us1242, label %polly.loop_header278.preheader.us, label %polly.loop_exit280.us

polly.loop_header278.us:                          ; preds = %polly.loop_header278.us.preheader, %polly.loop_header278.us
  %polly.indvar282.us = phi i64 [ %polly.indvar_next283.us, %polly.loop_header278.us ], [ %polly.indvar282.us.ph, %polly.loop_header278.us.preheader ]
  %181 = add nuw nsw i64 %polly.indvar282.us, %144
  %polly.access.Packed_MemRef_call1287.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar282.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call1287.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %polly.access.Packed_MemRef_call2295.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar282.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call2295.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_300.us, %_p_scalar_296.us
  %182 = shl i64 %181, 3
  %183 = add i64 %182, %185
  %scevgep301.us = getelementptr i8, i8* %call, i64 %183
  %scevgep301302.us = bitcast i8* %scevgep301.us to double*
  %_p_scalar_303.us = load double, double* %scevgep301302.us, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_303.us
  store double %p_add42.i118.us, double* %scevgep301302.us, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us = add nuw nsw i64 %polly.indvar282.us, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar282.us, %smin
  br i1 %exitcond1104.not, label %polly.loop_exit280.us, label %polly.loop_header278.us, !llvm.loop !83

polly.loop_exit280.us:                            ; preds = %polly.loop_header278.us, %middle.block1652, %polly.loop_header270.us
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %polly.loop_cond276.us = icmp ult i64 %polly.indvar274.us, 7
  %indvars.iv.next1103 = add i64 %indvars.iv1102, 1
  %indvar.next1657 = add i64 %indvar1656, 1
  br i1 %polly.loop_cond276.us, label %polly.loop_header270.us, label %polly.loop_header270.us.1

polly.loop_header278.preheader.us:                ; preds = %polly.loop_header270.us
  %184 = add nuw nsw i64 %polly.indvar274.us, %169
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %180
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %polly.access.Packed_MemRef_call1299.us = getelementptr double, double* %Packed_MemRef_call1, i64 %180
  %_p_scalar_300.us = load double, double* %polly.access.Packed_MemRef_call1299.us, align 8
  %185 = mul i64 %184, 9600
  %min.iters.check1659 = icmp ult i64 %179, 4
  br i1 %min.iters.check1659, label %polly.loop_header278.us.preheader, label %vector.ph1660

vector.ph1660:                                    ; preds = %polly.loop_header278.preheader.us
  %n.vec1662 = and i64 %179, -4
  %broadcast.splatinsert1668 = insertelement <4 x double> poison, double %_p_scalar_292.us, i32 0
  %broadcast.splat1669 = shufflevector <4 x double> %broadcast.splatinsert1668, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1671 = insertelement <4 x double> poison, double %_p_scalar_300.us, i32 0
  %broadcast.splat1672 = shufflevector <4 x double> %broadcast.splatinsert1671, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1654

vector.body1654:                                  ; preds = %vector.body1654, %vector.ph1660
  %index1663 = phi i64 [ 0, %vector.ph1660 ], [ %index.next1664, %vector.body1654 ]
  %186 = add nuw nsw i64 %index1663, %144
  %187 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1663
  %188 = bitcast double* %187 to <4 x double>*
  %wide.load1667 = load <4 x double>, <4 x double>* %188, align 8
  %189 = fmul fast <4 x double> %broadcast.splat1669, %wide.load1667
  %190 = getelementptr double, double* %Packed_MemRef_call2, i64 %index1663
  %191 = bitcast double* %190 to <4 x double>*
  %wide.load1670 = load <4 x double>, <4 x double>* %191, align 8
  %192 = fmul fast <4 x double> %broadcast.splat1672, %wide.load1670
  %193 = shl i64 %186, 3
  %194 = add i64 %193, %185
  %195 = getelementptr i8, i8* %call, i64 %194
  %196 = bitcast i8* %195 to <4 x double>*
  %wide.load1673 = load <4 x double>, <4 x double>* %196, align 8, !alias.scope !71, !noalias !73
  %197 = fadd fast <4 x double> %192, %189
  %198 = fmul fast <4 x double> %197, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %199 = fadd fast <4 x double> %198, %wide.load1673
  %200 = bitcast i8* %195 to <4 x double>*
  store <4 x double> %199, <4 x double>* %200, align 8, !alias.scope !71, !noalias !73
  %index.next1664 = add i64 %index1663, 4
  %201 = icmp eq i64 %index.next1664, %n.vec1662
  br i1 %201, label %middle.block1652, label %vector.body1654, !llvm.loop !84

middle.block1652:                                 ; preds = %vector.body1654
  %cmp.n1666 = icmp eq i64 %179, %n.vec1662
  br i1 %cmp.n1666, label %polly.loop_exit280.us, label %polly.loop_header278.us.preheader

polly.loop_header278.us.preheader:                ; preds = %polly.loop_header278.preheader.us, %middle.block1652
  %polly.indvar282.us.ph = phi i64 [ 0, %polly.loop_header278.preheader.us ], [ %n.vec1662, %middle.block1652 ]
  br label %polly.loop_header278.us

polly.loop_header250:                             ; preds = %polly.loop_header228.split, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %172, %polly.loop_header228.split ]
  %202 = add nuw nsw i64 %polly.indvar253, %144
  %polly.access.mul.call1257 = mul nsw i64 %202, 1000
  %polly.access.add.call1258 = add nuw nsw i64 %112, %polly.access.mul.call1257
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !74, !noalias !82
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %polly.loop_cond255.not.not = icmp slt i64 %polly.indvar253, %173
  br i1 %polly.loop_cond255.not.not, label %polly.loop_header250, label %polly.loop_header250.1

polly.start306:                                   ; preds = %kernel_syr2k.exit
  %malloccall308 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall310 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header394

polly.exiting307:                                 ; preds = %polly.loop_exit418
  tail call void @free(i8* %malloccall308)
  tail call void @free(i8* %malloccall310)
  br label %kernel_syr2k.exit90

polly.loop_header394:                             ; preds = %polly.loop_exit402, %polly.start306
  %indvar1457 = phi i64 [ %indvar.next1458, %polly.loop_exit402 ], [ 0, %polly.start306 ]
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_exit402 ], [ 1, %polly.start306 ]
  %203 = add i64 %indvar1457, 1
  %204 = mul nuw nsw i64 %polly.indvar397, 9600
  %scevgep406 = getelementptr i8, i8* %call, i64 %204
  %min.iters.check1459 = icmp ult i64 %203, 4
  br i1 %min.iters.check1459, label %polly.loop_header400.preheader, label %vector.ph1460

vector.ph1460:                                    ; preds = %polly.loop_header394
  %n.vec1462 = and i64 %203, -4
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.body1456, %vector.ph1460
  %index1463 = phi i64 [ 0, %vector.ph1460 ], [ %index.next1464, %vector.body1456 ]
  %205 = shl nuw nsw i64 %index1463, 3
  %206 = getelementptr i8, i8* %scevgep406, i64 %205
  %207 = bitcast i8* %206 to <4 x double>*
  %wide.load1467 = load <4 x double>, <4 x double>* %207, align 8, !alias.scope !85, !noalias !87
  %208 = fmul fast <4 x double> %wide.load1467, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %209 = bitcast i8* %206 to <4 x double>*
  store <4 x double> %208, <4 x double>* %209, align 8, !alias.scope !85, !noalias !87
  %index.next1464 = add i64 %index1463, 4
  %210 = icmp eq i64 %index.next1464, %n.vec1462
  br i1 %210, label %middle.block1454, label %vector.body1456, !llvm.loop !92

middle.block1454:                                 ; preds = %vector.body1456
  %cmp.n1466 = icmp eq i64 %203, %n.vec1462
  br i1 %cmp.n1466, label %polly.loop_exit402, label %polly.loop_header400.preheader

polly.loop_header400.preheader:                   ; preds = %polly.loop_header394, %middle.block1454
  %polly.indvar403.ph = phi i64 [ 0, %polly.loop_header394 ], [ %n.vec1462, %middle.block1454 ]
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_header400, %middle.block1454
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar_next398, 1200
  %indvar.next1458 = add i64 %indvar1457, 1
  br i1 %exitcond1136.not, label %polly.loop_header410.preheader, label %polly.loop_header394

polly.loop_header410.preheader:                   ; preds = %polly.loop_exit402
  %Packed_MemRef_call1309 = bitcast i8* %malloccall308 to double*
  %Packed_MemRef_call2311 = bitcast i8* %malloccall310 to double*
  %polly.access.Packed_MemRef_call1309.us.1 = getelementptr i8, i8* %malloccall308, i64 8
  %211 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.1 to double*
  %polly.access.Packed_MemRef_call1309.us.2 = getelementptr i8, i8* %malloccall308, i64 16
  %212 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.2 to double*
  %polly.access.Packed_MemRef_call1309.us.3 = getelementptr i8, i8* %malloccall308, i64 24
  %213 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.3 to double*
  %polly.access.Packed_MemRef_call1309.us.11216 = getelementptr i8, i8* %malloccall308, i64 9600
  %214 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.11216 to double*
  %polly.access.Packed_MemRef_call1309.us.1.1 = getelementptr i8, i8* %malloccall308, i64 9608
  %215 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.1.1 to double*
  %polly.access.Packed_MemRef_call1309.us.2.1 = getelementptr i8, i8* %malloccall308, i64 9616
  %216 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.2.1 to double*
  %polly.access.Packed_MemRef_call1309.us.3.1 = getelementptr i8, i8* %malloccall308, i64 9624
  %217 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.3.1 to double*
  %polly.access.Packed_MemRef_call1309.us.21221 = getelementptr i8, i8* %malloccall308, i64 19200
  %218 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.21221 to double*
  %polly.access.Packed_MemRef_call1309.us.1.2 = getelementptr i8, i8* %malloccall308, i64 19208
  %219 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.1.2 to double*
  %polly.access.Packed_MemRef_call1309.us.2.2 = getelementptr i8, i8* %malloccall308, i64 19216
  %220 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.2.2 to double*
  %polly.access.Packed_MemRef_call1309.us.3.2 = getelementptr i8, i8* %malloccall308, i64 19224
  %221 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.3.2 to double*
  %polly.access.Packed_MemRef_call1309.us.31226 = getelementptr i8, i8* %malloccall308, i64 28800
  %222 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.31226 to double*
  %polly.access.Packed_MemRef_call1309.us.1.3 = getelementptr i8, i8* %malloccall308, i64 28808
  %223 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.1.3 to double*
  %polly.access.Packed_MemRef_call1309.us.2.3 = getelementptr i8, i8* %malloccall308, i64 28816
  %224 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.2.3 to double*
  %polly.access.Packed_MemRef_call1309.us.3.3 = getelementptr i8, i8* %malloccall308, i64 28824
  %225 = bitcast i8* %polly.access.Packed_MemRef_call1309.us.3.3 to double*
  br label %polly.loop_header410

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_header400
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_header400 ], [ %polly.indvar403.ph, %polly.loop_header400.preheader ]
  %226 = shl nuw nsw i64 %polly.indvar403, 3
  %scevgep407 = getelementptr i8, i8* %scevgep406, i64 %226
  %scevgep407408 = bitcast i8* %scevgep407 to double*
  %_p_scalar_409 = load double, double* %scevgep407408, align 8, !alias.scope !85, !noalias !87
  %p_mul.i57 = fmul fast double %_p_scalar_409, 1.200000e+00
  store double %p_mul.i57, double* %scevgep407408, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next404, %polly.indvar397
  br i1 %exitcond1135.not, label %polly.loop_exit402, label %polly.loop_header400, !llvm.loop !93

polly.loop_header410:                             ; preds = %polly.loop_header410.preheader, %polly.loop_exit418
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit418 ], [ 0, %polly.loop_header410.preheader ]
  %227 = shl nsw i64 %polly.indvar413, 2
  %228 = or i64 %227, 1
  %229 = or i64 %227, 2
  %230 = or i64 %227, 3
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit441
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1134.not = icmp eq i64 %polly.indvar_next414, 250
  br i1 %exitcond1134.not, label %polly.exiting307, label %polly.loop_header410

polly.loop_header416:                             ; preds = %polly.loop_exit441, %polly.loop_header410
  %indvars.iv1123 = phi i64 [ %indvars.iv.next1124, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1118 = phi i64 [ %indvars.iv.next1119, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %indvars.iv1111 = phi i64 [ %indvars.iv.next1112, %polly.loop_exit441 ], [ 1200, %polly.loop_header410 ]
  %polly.indvar419 = phi i64 [ %260, %polly.loop_exit441 ], [ 0, %polly.loop_header410 ]
  %231 = shl nuw nsw i64 %polly.indvar419, 2
  %232 = shl nuw nsw i64 %polly.indvar419, 2
  %233 = and i64 %232, 9223372036854775800
  %234 = sub nsw i64 %231, %233
  %235 = mul nsw i64 %polly.indvar419, -4
  %236 = add i64 %235, %233
  %237 = shl nuw nsw i64 %polly.indvar419, 2
  %238 = shl nuw nsw i64 %polly.indvar419, 2
  %239 = and i64 %238, 9223372036854775800
  %240 = sub nsw i64 %237, %239
  %241 = mul nsw i64 %polly.indvar419, -4
  %242 = add i64 %241, %239
  %243 = shl nuw nsw i64 %polly.indvar419, 2
  %244 = shl nuw nsw i64 %polly.indvar419, 2
  %245 = and i64 %244, 9223372036854775800
  %246 = sub nsw i64 %243, %245
  %247 = mul nsw i64 %polly.indvar419, -4
  %248 = add i64 %247, %245
  %249 = shl nuw nsw i64 %polly.indvar419, 2
  %250 = shl nuw nsw i64 %polly.indvar419, 2
  %251 = and i64 %250, 9223372036854775800
  %252 = sub nsw i64 %249, %251
  %253 = mul nsw i64 %polly.indvar419, -4
  %254 = add i64 %253, %251
  %255 = lshr i64 %polly.indvar419, 1
  %256 = shl nuw nsw i64 %255, 3
  %257 = sub nsw i64 %indvars.iv1118, %256
  %258 = add i64 %indvars.iv1123, %256
  %259 = shl nsw i64 %polly.indvar419, 2
  br label %polly.loop_header428

polly.loop_exit441:                               ; preds = %polly.loop_exit482
  %260 = add nuw nsw i64 %polly.indvar419, 1
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -4
  %indvars.iv.next1119 = add nuw nsw i64 %indvars.iv1118, 4
  %indvars.iv.next1124 = add nsw i64 %indvars.iv1123, -4
  %exitcond1133.not = icmp eq i64 %260, 300
  br i1 %exitcond1133.not, label %polly.loop_exit418, label %polly.loop_header416

polly.loop_header428:                             ; preds = %polly.loop_header428, %polly.loop_header416
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header416 ], [ %polly.indvar_next432, %polly.loop_header428 ]
  %261 = add nuw nsw i64 %polly.indvar431, %259
  %polly.access.mul.call2435 = mul nuw nsw i64 %261, 1000
  %polly.access.add.call2436 = add nuw nsw i64 %227, %polly.access.mul.call2435
  %polly.access.call2437 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436
  %polly.access.call2437.load = load double, double* %polly.access.call2437, align 8, !alias.scope !89, !noalias !94
  %polly.access.Packed_MemRef_call2311 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar431
  store double %polly.access.call2437.load, double* %polly.access.Packed_MemRef_call2311, align 8
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next432, %indvars.iv1111
  br i1 %exitcond1113.not, label %polly.loop_header428.1, label %polly.loop_header428

polly.loop_header439:                             ; preds = %polly.loop_exit482, %polly.loop_exit430.3
  %indvar1471 = phi i64 [ %indvar.next1472, %polly.loop_exit482 ], [ 0, %polly.loop_exit430.3 ]
  %indvars.iv1125 = phi i64 [ %indvars.iv.next1126, %polly.loop_exit482 ], [ %258, %polly.loop_exit430.3 ]
  %indvars.iv1120 = phi i64 [ %indvars.iv.next1121, %polly.loop_exit482 ], [ %257, %polly.loop_exit430.3 ]
  %polly.indvar442 = phi i64 [ %polly.indvar_next443, %polly.loop_exit482 ], [ %255, %polly.loop_exit430.3 ]
  %262 = mul nsw i64 %indvar1471, -8
  %263 = add i64 %234, %262
  %smax1539 = call i64 @llvm.smax.i64(i64 %263, i64 0)
  %264 = shl nuw nsw i64 %indvar1471, 3
  %265 = add i64 %236, %264
  %266 = add i64 %smax1539, %265
  %267 = mul nsw i64 %indvar1471, -8
  %268 = add i64 %240, %267
  %smax1517 = call i64 @llvm.smax.i64(i64 %268, i64 0)
  %269 = shl nuw nsw i64 %indvar1471, 3
  %270 = add i64 %242, %269
  %271 = add i64 %smax1517, %270
  %272 = mul nsw i64 %indvar1471, -8
  %273 = add i64 %246, %272
  %smax1495 = call i64 @llvm.smax.i64(i64 %273, i64 0)
  %274 = shl nuw nsw i64 %indvar1471, 3
  %275 = add i64 %248, %274
  %276 = add i64 %smax1495, %275
  %277 = mul nsw i64 %indvar1471, -8
  %278 = add i64 %252, %277
  %smax1473 = call i64 @llvm.smax.i64(i64 %278, i64 0)
  %279 = shl nuw nsw i64 %indvar1471, 3
  %280 = add i64 %254, %279
  %281 = add i64 %smax1473, %280
  %smax1122 = call i64 @llvm.smax.i64(i64 %indvars.iv1120, i64 0)
  %282 = add i64 %smax1122, %indvars.iv1125
  %283 = shl nuw nsw i64 %polly.indvar442, 1
  %.not.not944 = icmp ugt i64 %283, %polly.indvar419
  %284 = shl nsw i64 %polly.indvar442, 3
  %285 = add nsw i64 %284, %611
  %286 = icmp sgt i64 %285, 0
  %287 = select i1 %286, i64 %285, i64 0
  %288 = add nsw i64 %285, 7
  %polly.loop_guard469.not = icmp sgt i64 %287, %288
  br i1 %.not.not944, label %polly.loop_header445.us.preheader, label %polly.loop_header439.split

polly.loop_header445.us.preheader:                ; preds = %polly.loop_header439
  %polly.access.call1464.load.us = load double, double* %polly.access.call1464.us, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us, double* %Packed_MemRef_call1309, align 8
  %polly.access.call1464.load.us.1 = load double, double* %polly.access.call1464.us.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1, double* %211, align 8
  %polly.access.call1464.load.us.2 = load double, double* %polly.access.call1464.us.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2, double* %212, align 8
  %polly.access.call1464.load.us.3 = load double, double* %polly.access.call1464.us.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3, double* %213, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us.1.critedge, label %polly.loop_header466.us

polly.loop_header466.us:                          ; preds = %polly.loop_header445.us.preheader, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %287, %polly.loop_header445.us.preheader ]
  %289 = add nuw nsw i64 %polly.indvar470.us, %259
  %polly.access.mul.call1474.us = mul nsw i64 %289, 1000
  %polly.access.add.call1475.us = add nuw nsw i64 %227, %polly.access.mul.call1474.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !88, !noalias !95
  %polly.access.Packed_MemRef_call1309479.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar470.us
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1309479.us, align 8
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %polly.loop_cond472.not.not.us = icmp slt i64 %polly.indvar470.us, %288
  br i1 %polly.loop_cond472.not.not.us, label %polly.loop_header466.us, label %polly.loop_exit468.us

polly.loop_exit468.us:                            ; preds = %polly.loop_header466.us
  %polly.access.call1464.load.us.11215 = load double, double* %polly.access.call1464.us.11214, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.11215, double* %214, align 8
  %polly.access.call1464.load.us.1.1 = load double, double* %polly.access.call1464.us.1.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1.1, double* %215, align 8
  %polly.access.call1464.load.us.2.1 = load double, double* %polly.access.call1464.us.2.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2.1, double* %216, align 8
  %polly.access.call1464.load.us.3.1 = load double, double* %polly.access.call1464.us.3.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3.1, double* %217, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_exit468.us.2.critedge, label %polly.loop_header466.us.1

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466

polly.loop_exit482:                               ; preds = %polly.loop_exit497.us.3, %polly.loop_header480.preheader
  %polly.indvar_next443 = add nuw nsw i64 %polly.indvar442, 1
  %indvars.iv.next1121 = add i64 %indvars.iv1120, -8
  %indvars.iv.next1126 = add i64 %indvars.iv1125, 8
  %exitcond1132.not = icmp eq i64 %polly.indvar_next443, 150
  %indvar.next1472 = add i64 %indvar1471, 1
  br i1 %exitcond1132.not, label %polly.loop_exit441, label %polly.loop_header439

polly.loop_header480.preheader.critedge:          ; preds = %polly.loop_exit468.us.1
  %polly.access.call1464.load.us.31225.c = load double, double* %polly.access.call1464.us.31224, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.31225.c, double* %222, align 8
  %polly.access.call1464.load.us.1.3.c = load double, double* %polly.access.call1464.us.1.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1.3.c, double* %223, align 8
  %polly.access.call1464.load.us.2.3.c = load double, double* %polly.access.call1464.us.2.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2.3.c, double* %224, align 8
  %polly.access.call1464.load.us.3.3.c = load double, double* %polly.access.call1464.us.3.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3.3.c, double* %225, align 8
  br label %polly.loop_header480.preheader

polly.loop_header480.preheader:                   ; preds = %polly.loop_header466.3, %polly.loop_header466.us.3, %polly.loop_header480.preheader.critedge, %polly.loop_exit468.us.2, %polly.loop_header439.split
  %290 = sub nsw i64 %259, %284
  %291 = icmp sgt i64 %290, 0
  %292 = select i1 %291, i64 %290, i64 0
  %polly.loop_guard490 = icmp slt i64 %292, 8
  br i1 %polly.loop_guard490, label %polly.loop_header487.us, label %polly.loop_exit482

polly.loop_header487.us:                          ; preds = %polly.loop_header480.preheader, %polly.loop_exit497.us
  %indvar1540 = phi i64 [ %indvar.next1541, %polly.loop_exit497.us ], [ 0, %polly.loop_header480.preheader ]
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit497.us ], [ %282, %polly.loop_header480.preheader ]
  %polly.indvar491.us = phi i64 [ %polly.indvar_next492.us, %polly.loop_exit497.us ], [ %292, %polly.loop_header480.preheader ]
  %293 = add i64 %266, %indvar1540
  %smin1542 = call i64 @llvm.smin.i64(i64 %293, i64 3)
  %294 = add nsw i64 %smin1542, 1
  %smin1129 = call i64 @llvm.smin.i64(i64 %indvars.iv1127, i64 3)
  %295 = add nsw i64 %polly.indvar491.us, %285
  %polly.loop_guard498.us1246 = icmp sgt i64 %295, -1
  br i1 %polly.loop_guard498.us1246, label %polly.loop_header495.preheader.us, label %polly.loop_exit497.us

polly.loop_header495.us:                          ; preds = %polly.loop_header495.us.preheader, %polly.loop_header495.us
  %polly.indvar499.us = phi i64 [ %polly.indvar_next500.us, %polly.loop_header495.us ], [ %polly.indvar499.us.ph, %polly.loop_header495.us.preheader ]
  %296 = add nuw nsw i64 %polly.indvar499.us, %259
  %polly.access.Packed_MemRef_call1309504.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar499.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call1309504.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %polly.access.Packed_MemRef_call2311512.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.indvar499.us
  %_p_scalar_513.us = load double, double* %polly.access.Packed_MemRef_call2311512.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_517.us, %_p_scalar_513.us
  %297 = shl i64 %296, 3
  %298 = add i64 %297, %300
  %scevgep518.us = getelementptr i8, i8* %call, i64 %298
  %scevgep518519.us = bitcast i8* %scevgep518.us to double*
  %_p_scalar_520.us = load double, double* %scevgep518519.us, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_520.us
  store double %p_add42.i79.us, double* %scevgep518519.us, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next500.us = add nuw nsw i64 %polly.indvar499.us, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar499.us, %smin1129
  br i1 %exitcond1130.not, label %polly.loop_exit497.us, label %polly.loop_header495.us, !llvm.loop !96

polly.loop_exit497.us:                            ; preds = %polly.loop_header495.us, %middle.block1536, %polly.loop_header487.us
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %polly.loop_cond493.us = icmp ult i64 %polly.indvar491.us, 7
  %indvars.iv.next1128 = add i64 %indvars.iv1127, 1
  %indvar.next1541 = add i64 %indvar1540, 1
  br i1 %polly.loop_cond493.us, label %polly.loop_header487.us, label %polly.loop_header487.us.1

polly.loop_header495.preheader.us:                ; preds = %polly.loop_header487.us
  %299 = add nuw nsw i64 %polly.indvar491.us, %284
  %polly.access.Packed_MemRef_call2311508.us = getelementptr double, double* %Packed_MemRef_call2311, i64 %295
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call2311508.us, align 8
  %polly.access.Packed_MemRef_call1309516.us = getelementptr double, double* %Packed_MemRef_call1309, i64 %295
  %_p_scalar_517.us = load double, double* %polly.access.Packed_MemRef_call1309516.us, align 8
  %300 = mul i64 %299, 9600
  %min.iters.check1543 = icmp ult i64 %294, 4
  br i1 %min.iters.check1543, label %polly.loop_header495.us.preheader, label %vector.ph1544

vector.ph1544:                                    ; preds = %polly.loop_header495.preheader.us
  %n.vec1546 = and i64 %294, -4
  %broadcast.splatinsert1552 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1553 = shufflevector <4 x double> %broadcast.splatinsert1552, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1555 = insertelement <4 x double> poison, double %_p_scalar_517.us, i32 0
  %broadcast.splat1556 = shufflevector <4 x double> %broadcast.splatinsert1555, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1538

vector.body1538:                                  ; preds = %vector.body1538, %vector.ph1544
  %index1547 = phi i64 [ 0, %vector.ph1544 ], [ %index.next1548, %vector.body1538 ]
  %301 = add nuw nsw i64 %index1547, %259
  %302 = getelementptr double, double* %Packed_MemRef_call1309, i64 %index1547
  %303 = bitcast double* %302 to <4 x double>*
  %wide.load1551 = load <4 x double>, <4 x double>* %303, align 8
  %304 = fmul fast <4 x double> %broadcast.splat1553, %wide.load1551
  %305 = getelementptr double, double* %Packed_MemRef_call2311, i64 %index1547
  %306 = bitcast double* %305 to <4 x double>*
  %wide.load1554 = load <4 x double>, <4 x double>* %306, align 8
  %307 = fmul fast <4 x double> %broadcast.splat1556, %wide.load1554
  %308 = shl i64 %301, 3
  %309 = add i64 %308, %300
  %310 = getelementptr i8, i8* %call, i64 %309
  %311 = bitcast i8* %310 to <4 x double>*
  %wide.load1557 = load <4 x double>, <4 x double>* %311, align 8, !alias.scope !85, !noalias !87
  %312 = fadd fast <4 x double> %307, %304
  %313 = fmul fast <4 x double> %312, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %314 = fadd fast <4 x double> %313, %wide.load1557
  %315 = bitcast i8* %310 to <4 x double>*
  store <4 x double> %314, <4 x double>* %315, align 8, !alias.scope !85, !noalias !87
  %index.next1548 = add i64 %index1547, 4
  %316 = icmp eq i64 %index.next1548, %n.vec1546
  br i1 %316, label %middle.block1536, label %vector.body1538, !llvm.loop !97

middle.block1536:                                 ; preds = %vector.body1538
  %cmp.n1550 = icmp eq i64 %294, %n.vec1546
  br i1 %cmp.n1550, label %polly.loop_exit497.us, label %polly.loop_header495.us.preheader

polly.loop_header495.us.preheader:                ; preds = %polly.loop_header495.preheader.us, %middle.block1536
  %polly.indvar499.us.ph = phi i64 [ 0, %polly.loop_header495.preheader.us ], [ %n.vec1546, %middle.block1536 ]
  br label %polly.loop_header495.us

polly.loop_header466:                             ; preds = %polly.loop_header439.split, %polly.loop_header466
  %polly.indvar470 = phi i64 [ %polly.indvar_next471, %polly.loop_header466 ], [ %287, %polly.loop_header439.split ]
  %317 = add nuw nsw i64 %polly.indvar470, %259
  %polly.access.mul.call1474 = mul nsw i64 %317, 1000
  %polly.access.add.call1475 = add nuw nsw i64 %227, %polly.access.mul.call1474
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !88, !noalias !95
  %polly.access.Packed_MemRef_call1309479 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.indvar470
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1309479, align 8
  %polly.indvar_next471 = add nuw nsw i64 %polly.indvar470, 1
  %polly.loop_cond472.not.not = icmp slt i64 %polly.indvar470, %288
  br i1 %polly.loop_cond472.not.not, label %polly.loop_header466, label %polly.loop_header466.1

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
  %318 = add i64 %indvar, 1
  %319 = mul nuw nsw i64 %polly.indvar614, 9600
  %scevgep623 = getelementptr i8, i8* %call, i64 %319
  %min.iters.check1343 = icmp ult i64 %318, 4
  br i1 %min.iters.check1343, label %polly.loop_header617.preheader, label %vector.ph1344

vector.ph1344:                                    ; preds = %polly.loop_header611
  %n.vec1346 = and i64 %318, -4
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1342 ]
  %320 = shl nuw nsw i64 %index1347, 3
  %321 = getelementptr i8, i8* %scevgep623, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %322, align 8, !alias.scope !98, !noalias !100
  %323 = fmul fast <4 x double> %wide.load1351, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %324 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %323, <4 x double>* %324, align 8, !alias.scope !98, !noalias !100
  %index.next1348 = add i64 %index1347, 4
  %325 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %325, label %middle.block1340, label %vector.body1342, !llvm.loop !105

middle.block1340:                                 ; preds = %vector.body1342
  %cmp.n1350 = icmp eq i64 %318, %n.vec1346
  br i1 %cmp.n1350, label %polly.loop_exit619, label %polly.loop_header617.preheader

polly.loop_header617.preheader:                   ; preds = %polly.loop_header611, %middle.block1340
  %polly.indvar620.ph = phi i64 [ 0, %polly.loop_header611 ], [ %n.vec1346, %middle.block1340 ]
  br label %polly.loop_header617

polly.loop_exit619:                               ; preds = %polly.loop_header617, %middle.block1340
  %polly.indvar_next615 = add nuw nsw i64 %polly.indvar614, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar_next615, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1162.not, label %polly.loop_header627.preheader, label %polly.loop_header611

polly.loop_header627.preheader:                   ; preds = %polly.loop_exit619
  %Packed_MemRef_call1526 = bitcast i8* %malloccall525 to double*
  %Packed_MemRef_call2528 = bitcast i8* %malloccall527 to double*
  %polly.access.Packed_MemRef_call1526.us.1 = getelementptr i8, i8* %malloccall525, i64 8
  %326 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.1 to double*
  %polly.access.Packed_MemRef_call1526.us.2 = getelementptr i8, i8* %malloccall525, i64 16
  %327 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.2 to double*
  %polly.access.Packed_MemRef_call1526.us.3 = getelementptr i8, i8* %malloccall525, i64 24
  %328 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.3 to double*
  %polly.access.Packed_MemRef_call1526.us.11231 = getelementptr i8, i8* %malloccall525, i64 9600
  %329 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.11231 to double*
  %polly.access.Packed_MemRef_call1526.us.1.1 = getelementptr i8, i8* %malloccall525, i64 9608
  %330 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.1.1 to double*
  %polly.access.Packed_MemRef_call1526.us.2.1 = getelementptr i8, i8* %malloccall525, i64 9616
  %331 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.2.1 to double*
  %polly.access.Packed_MemRef_call1526.us.3.1 = getelementptr i8, i8* %malloccall525, i64 9624
  %332 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.3.1 to double*
  %polly.access.Packed_MemRef_call1526.us.21236 = getelementptr i8, i8* %malloccall525, i64 19200
  %333 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.21236 to double*
  %polly.access.Packed_MemRef_call1526.us.1.2 = getelementptr i8, i8* %malloccall525, i64 19208
  %334 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.1.2 to double*
  %polly.access.Packed_MemRef_call1526.us.2.2 = getelementptr i8, i8* %malloccall525, i64 19216
  %335 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.2.2 to double*
  %polly.access.Packed_MemRef_call1526.us.3.2 = getelementptr i8, i8* %malloccall525, i64 19224
  %336 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.3.2 to double*
  %polly.access.Packed_MemRef_call1526.us.31241 = getelementptr i8, i8* %malloccall525, i64 28800
  %337 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.31241 to double*
  %polly.access.Packed_MemRef_call1526.us.1.3 = getelementptr i8, i8* %malloccall525, i64 28808
  %338 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.1.3 to double*
  %polly.access.Packed_MemRef_call1526.us.2.3 = getelementptr i8, i8* %malloccall525, i64 28816
  %339 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.2.3 to double*
  %polly.access.Packed_MemRef_call1526.us.3.3 = getelementptr i8, i8* %malloccall525, i64 28824
  %340 = bitcast i8* %polly.access.Packed_MemRef_call1526.us.3.3 to double*
  br label %polly.loop_header627

polly.loop_header617:                             ; preds = %polly.loop_header617.preheader, %polly.loop_header617
  %polly.indvar620 = phi i64 [ %polly.indvar_next621, %polly.loop_header617 ], [ %polly.indvar620.ph, %polly.loop_header617.preheader ]
  %341 = shl nuw nsw i64 %polly.indvar620, 3
  %scevgep624 = getelementptr i8, i8* %scevgep623, i64 %341
  %scevgep624625 = bitcast i8* %scevgep624 to double*
  %_p_scalar_626 = load double, double* %scevgep624625, align 8, !alias.scope !98, !noalias !100
  %p_mul.i = fmul fast double %_p_scalar_626, 1.200000e+00
  store double %p_mul.i, double* %scevgep624625, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next621 = add nuw nsw i64 %polly.indvar620, 1
  %exitcond1161.not = icmp eq i64 %polly.indvar_next621, %polly.indvar614
  br i1 %exitcond1161.not, label %polly.loop_exit619, label %polly.loop_header617, !llvm.loop !106

polly.loop_header627:                             ; preds = %polly.loop_header627.preheader, %polly.loop_exit635
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_exit635 ], [ 0, %polly.loop_header627.preheader ]
  %342 = shl nsw i64 %polly.indvar630, 2
  %343 = or i64 %342, 1
  %344 = or i64 %342, 2
  %345 = or i64 %342, 3
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_exit658
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar_next631, 250
  br i1 %exitcond1160.not, label %polly.exiting524, label %polly.loop_header627

polly.loop_header633:                             ; preds = %polly.loop_exit658, %polly.loop_header627
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit658 ], [ 1200, %polly.loop_header627 ]
  %polly.indvar636 = phi i64 [ %375, %polly.loop_exit658 ], [ 0, %polly.loop_header627 ]
  %346 = shl nuw nsw i64 %polly.indvar636, 2
  %347 = shl nuw nsw i64 %polly.indvar636, 2
  %348 = and i64 %347, 9223372036854775800
  %349 = sub nsw i64 %346, %348
  %350 = mul nsw i64 %polly.indvar636, -4
  %351 = add i64 %350, %348
  %352 = shl nuw nsw i64 %polly.indvar636, 2
  %353 = shl nuw nsw i64 %polly.indvar636, 2
  %354 = and i64 %353, 9223372036854775800
  %355 = sub nsw i64 %352, %354
  %356 = mul nsw i64 %polly.indvar636, -4
  %357 = add i64 %356, %354
  %358 = shl nuw nsw i64 %polly.indvar636, 2
  %359 = shl nuw nsw i64 %polly.indvar636, 2
  %360 = and i64 %359, 9223372036854775800
  %361 = sub nsw i64 %358, %360
  %362 = mul nsw i64 %polly.indvar636, -4
  %363 = add i64 %362, %360
  %364 = shl nuw nsw i64 %polly.indvar636, 2
  %365 = shl nuw nsw i64 %polly.indvar636, 2
  %366 = and i64 %365, 9223372036854775800
  %367 = sub nsw i64 %364, %366
  %368 = mul nsw i64 %polly.indvar636, -4
  %369 = add i64 %368, %366
  %370 = lshr i64 %polly.indvar636, 1
  %371 = shl nuw nsw i64 %370, 3
  %372 = sub nsw i64 %indvars.iv1144, %371
  %373 = add i64 %indvars.iv1149, %371
  %374 = shl nsw i64 %polly.indvar636, 2
  br label %polly.loop_header645

polly.loop_exit658:                               ; preds = %polly.loop_exit699
  %375 = add nuw nsw i64 %polly.indvar636, 1
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, -4
  %indvars.iv.next1145 = add nuw nsw i64 %indvars.iv1144, 4
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, -4
  %exitcond1159.not = icmp eq i64 %375, 300
  br i1 %exitcond1159.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header645:                             ; preds = %polly.loop_header645, %polly.loop_header633
  %polly.indvar648 = phi i64 [ 0, %polly.loop_header633 ], [ %polly.indvar_next649, %polly.loop_header645 ]
  %376 = add nuw nsw i64 %polly.indvar648, %374
  %polly.access.mul.call2652 = mul nuw nsw i64 %376, 1000
  %polly.access.add.call2653 = add nuw nsw i64 %342, %polly.access.mul.call2652
  %polly.access.call2654 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653
  %polly.access.call2654.load = load double, double* %polly.access.call2654, align 8, !alias.scope !102, !noalias !107
  %polly.access.Packed_MemRef_call2528 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar648
  store double %polly.access.call2654.load, double* %polly.access.Packed_MemRef_call2528, align 8
  %polly.indvar_next649 = add nuw nsw i64 %polly.indvar648, 1
  %exitcond1139.not = icmp eq i64 %polly.indvar_next649, %indvars.iv1137
  br i1 %exitcond1139.not, label %polly.loop_header645.1, label %polly.loop_header645

polly.loop_header656:                             ; preds = %polly.loop_exit699, %polly.loop_exit647.3
  %indvar1355 = phi i64 [ %indvar.next1356, %polly.loop_exit699 ], [ 0, %polly.loop_exit647.3 ]
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit699 ], [ %373, %polly.loop_exit647.3 ]
  %indvars.iv1146 = phi i64 [ %indvars.iv.next1147, %polly.loop_exit699 ], [ %372, %polly.loop_exit647.3 ]
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_exit699 ], [ %370, %polly.loop_exit647.3 ]
  %377 = mul nsw i64 %indvar1355, -8
  %378 = add i64 %349, %377
  %smax1423 = call i64 @llvm.smax.i64(i64 %378, i64 0)
  %379 = shl nuw nsw i64 %indvar1355, 3
  %380 = add i64 %351, %379
  %381 = add i64 %smax1423, %380
  %382 = mul nsw i64 %indvar1355, -8
  %383 = add i64 %355, %382
  %smax1401 = call i64 @llvm.smax.i64(i64 %383, i64 0)
  %384 = shl nuw nsw i64 %indvar1355, 3
  %385 = add i64 %357, %384
  %386 = add i64 %smax1401, %385
  %387 = mul nsw i64 %indvar1355, -8
  %388 = add i64 %361, %387
  %smax1379 = call i64 @llvm.smax.i64(i64 %388, i64 0)
  %389 = shl nuw nsw i64 %indvar1355, 3
  %390 = add i64 %363, %389
  %391 = add i64 %smax1379, %390
  %392 = mul nsw i64 %indvar1355, -8
  %393 = add i64 %367, %392
  %smax1357 = call i64 @llvm.smax.i64(i64 %393, i64 0)
  %394 = shl nuw nsw i64 %indvar1355, 3
  %395 = add i64 %369, %394
  %396 = add i64 %smax1357, %395
  %smax1148 = call i64 @llvm.smax.i64(i64 %indvars.iv1146, i64 0)
  %397 = add i64 %smax1148, %indvars.iv1151
  %398 = shl nuw nsw i64 %polly.indvar659, 1
  %.not.not945 = icmp ugt i64 %398, %polly.indvar636
  %399 = shl nsw i64 %polly.indvar659, 3
  %400 = add nsw i64 %399, %699
  %401 = icmp sgt i64 %400, 0
  %402 = select i1 %401, i64 %400, i64 0
  %403 = add nsw i64 %400, 7
  %polly.loop_guard686.not = icmp sgt i64 %402, %403
  br i1 %.not.not945, label %polly.loop_header662.us.preheader, label %polly.loop_header656.split

polly.loop_header662.us.preheader:                ; preds = %polly.loop_header656
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us, double* %Packed_MemRef_call1526, align 8
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1, double* %326, align 8
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2, double* %327, align 8
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3, double* %328, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_exit685.us.1.critedge, label %polly.loop_header683.us

polly.loop_header683.us:                          ; preds = %polly.loop_header662.us.preheader, %polly.loop_header683.us
  %polly.indvar687.us = phi i64 [ %polly.indvar_next688.us, %polly.loop_header683.us ], [ %402, %polly.loop_header662.us.preheader ]
  %404 = add nuw nsw i64 %polly.indvar687.us, %374
  %polly.access.mul.call1691.us = mul nsw i64 %404, 1000
  %polly.access.add.call1692.us = add nuw nsw i64 %342, %polly.access.mul.call1691.us
  %polly.access.call1693.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us
  %polly.access.call1693.load.us = load double, double* %polly.access.call1693.us, align 8, !alias.scope !101, !noalias !108
  %polly.access.Packed_MemRef_call1526696.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar687.us
  store double %polly.access.call1693.load.us, double* %polly.access.Packed_MemRef_call1526696.us, align 8
  %polly.indvar_next688.us = add nuw nsw i64 %polly.indvar687.us, 1
  %polly.loop_cond689.not.not.us = icmp slt i64 %polly.indvar687.us, %403
  br i1 %polly.loop_cond689.not.not.us, label %polly.loop_header683.us, label %polly.loop_exit685.us

polly.loop_exit685.us:                            ; preds = %polly.loop_header683.us
  %polly.access.call1681.load.us.11230 = load double, double* %polly.access.call1681.us.11229, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.11230, double* %329, align 8
  %polly.access.call1681.load.us.1.1 = load double, double* %polly.access.call1681.us.1.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1.1, double* %330, align 8
  %polly.access.call1681.load.us.2.1 = load double, double* %polly.access.call1681.us.2.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2.1, double* %331, align 8
  %polly.access.call1681.load.us.3.1 = load double, double* %polly.access.call1681.us.3.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3.1, double* %332, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_exit685.us.2.critedge, label %polly.loop_header683.us.1

polly.loop_header656.split:                       ; preds = %polly.loop_header656
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header683

polly.loop_exit699:                               ; preds = %polly.loop_exit714.us.3, %polly.loop_header697.preheader
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %indvars.iv.next1147 = add i64 %indvars.iv1146, -8
  %indvars.iv.next1152 = add i64 %indvars.iv1151, 8
  %exitcond1158.not = icmp eq i64 %polly.indvar_next660, 150
  %indvar.next1356 = add i64 %indvar1355, 1
  br i1 %exitcond1158.not, label %polly.loop_exit658, label %polly.loop_header656

polly.loop_header697.preheader.critedge:          ; preds = %polly.loop_exit685.us.1
  %polly.access.call1681.load.us.31240.c = load double, double* %polly.access.call1681.us.31239, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.31240.c, double* %337, align 8
  %polly.access.call1681.load.us.1.3.c = load double, double* %polly.access.call1681.us.1.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1.3.c, double* %338, align 8
  %polly.access.call1681.load.us.2.3.c = load double, double* %polly.access.call1681.us.2.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2.3.c, double* %339, align 8
  %polly.access.call1681.load.us.3.3.c = load double, double* %polly.access.call1681.us.3.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3.3.c, double* %340, align 8
  br label %polly.loop_header697.preheader

polly.loop_header697.preheader:                   ; preds = %polly.loop_header683.3, %polly.loop_header683.us.3, %polly.loop_header697.preheader.critedge, %polly.loop_exit685.us.2, %polly.loop_header656.split
  %405 = sub nsw i64 %374, %399
  %406 = icmp sgt i64 %405, 0
  %407 = select i1 %406, i64 %405, i64 0
  %polly.loop_guard707 = icmp slt i64 %407, 8
  br i1 %polly.loop_guard707, label %polly.loop_header704.us, label %polly.loop_exit699

polly.loop_header704.us:                          ; preds = %polly.loop_header697.preheader, %polly.loop_exit714.us
  %indvar1424 = phi i64 [ %indvar.next1425, %polly.loop_exit714.us ], [ 0, %polly.loop_header697.preheader ]
  %indvars.iv1153 = phi i64 [ %indvars.iv.next1154, %polly.loop_exit714.us ], [ %397, %polly.loop_header697.preheader ]
  %polly.indvar708.us = phi i64 [ %polly.indvar_next709.us, %polly.loop_exit714.us ], [ %407, %polly.loop_header697.preheader ]
  %408 = add i64 %381, %indvar1424
  %smin1426 = call i64 @llvm.smin.i64(i64 %408, i64 3)
  %409 = add nsw i64 %smin1426, 1
  %smin1155 = call i64 @llvm.smin.i64(i64 %indvars.iv1153, i64 3)
  %410 = add nsw i64 %polly.indvar708.us, %400
  %polly.loop_guard715.us1250 = icmp sgt i64 %410, -1
  br i1 %polly.loop_guard715.us1250, label %polly.loop_header712.preheader.us, label %polly.loop_exit714.us

polly.loop_header712.us:                          ; preds = %polly.loop_header712.us.preheader, %polly.loop_header712.us
  %polly.indvar716.us = phi i64 [ %polly.indvar_next717.us, %polly.loop_header712.us ], [ %polly.indvar716.us.ph, %polly.loop_header712.us.preheader ]
  %411 = add nuw nsw i64 %polly.indvar716.us, %374
  %polly.access.Packed_MemRef_call1526721.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar716.us
  %_p_scalar_722.us = load double, double* %polly.access.Packed_MemRef_call1526721.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_726.us, %_p_scalar_722.us
  %polly.access.Packed_MemRef_call2528729.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.indvar716.us
  %_p_scalar_730.us = load double, double* %polly.access.Packed_MemRef_call2528729.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_734.us, %_p_scalar_730.us
  %412 = shl i64 %411, 3
  %413 = add i64 %412, %415
  %scevgep735.us = getelementptr i8, i8* %call, i64 %413
  %scevgep735736.us = bitcast i8* %scevgep735.us to double*
  %_p_scalar_737.us = load double, double* %scevgep735736.us, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_737.us
  store double %p_add42.i.us, double* %scevgep735736.us, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next717.us = add nuw nsw i64 %polly.indvar716.us, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar716.us, %smin1155
  br i1 %exitcond1156.not, label %polly.loop_exit714.us, label %polly.loop_header712.us, !llvm.loop !109

polly.loop_exit714.us:                            ; preds = %polly.loop_header712.us, %middle.block1420, %polly.loop_header704.us
  %polly.indvar_next709.us = add nuw nsw i64 %polly.indvar708.us, 1
  %polly.loop_cond710.us = icmp ult i64 %polly.indvar708.us, 7
  %indvars.iv.next1154 = add i64 %indvars.iv1153, 1
  %indvar.next1425 = add i64 %indvar1424, 1
  br i1 %polly.loop_cond710.us, label %polly.loop_header704.us, label %polly.loop_header704.us.1

polly.loop_header712.preheader.us:                ; preds = %polly.loop_header704.us
  %414 = add nuw nsw i64 %polly.indvar708.us, %399
  %polly.access.Packed_MemRef_call2528725.us = getelementptr double, double* %Packed_MemRef_call2528, i64 %410
  %_p_scalar_726.us = load double, double* %polly.access.Packed_MemRef_call2528725.us, align 8
  %polly.access.Packed_MemRef_call1526733.us = getelementptr double, double* %Packed_MemRef_call1526, i64 %410
  %_p_scalar_734.us = load double, double* %polly.access.Packed_MemRef_call1526733.us, align 8
  %415 = mul i64 %414, 9600
  %min.iters.check1427 = icmp ult i64 %409, 4
  br i1 %min.iters.check1427, label %polly.loop_header712.us.preheader, label %vector.ph1428

vector.ph1428:                                    ; preds = %polly.loop_header712.preheader.us
  %n.vec1430 = and i64 %409, -4
  %broadcast.splatinsert1436 = insertelement <4 x double> poison, double %_p_scalar_726.us, i32 0
  %broadcast.splat1437 = shufflevector <4 x double> %broadcast.splatinsert1436, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1439 = insertelement <4 x double> poison, double %_p_scalar_734.us, i32 0
  %broadcast.splat1440 = shufflevector <4 x double> %broadcast.splatinsert1439, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1422

vector.body1422:                                  ; preds = %vector.body1422, %vector.ph1428
  %index1431 = phi i64 [ 0, %vector.ph1428 ], [ %index.next1432, %vector.body1422 ]
  %416 = add nuw nsw i64 %index1431, %374
  %417 = getelementptr double, double* %Packed_MemRef_call1526, i64 %index1431
  %418 = bitcast double* %417 to <4 x double>*
  %wide.load1435 = load <4 x double>, <4 x double>* %418, align 8
  %419 = fmul fast <4 x double> %broadcast.splat1437, %wide.load1435
  %420 = getelementptr double, double* %Packed_MemRef_call2528, i64 %index1431
  %421 = bitcast double* %420 to <4 x double>*
  %wide.load1438 = load <4 x double>, <4 x double>* %421, align 8
  %422 = fmul fast <4 x double> %broadcast.splat1440, %wide.load1438
  %423 = shl i64 %416, 3
  %424 = add i64 %423, %415
  %425 = getelementptr i8, i8* %call, i64 %424
  %426 = bitcast i8* %425 to <4 x double>*
  %wide.load1441 = load <4 x double>, <4 x double>* %426, align 8, !alias.scope !98, !noalias !100
  %427 = fadd fast <4 x double> %422, %419
  %428 = fmul fast <4 x double> %427, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %429 = fadd fast <4 x double> %428, %wide.load1441
  %430 = bitcast i8* %425 to <4 x double>*
  store <4 x double> %429, <4 x double>* %430, align 8, !alias.scope !98, !noalias !100
  %index.next1432 = add i64 %index1431, 4
  %431 = icmp eq i64 %index.next1432, %n.vec1430
  br i1 %431, label %middle.block1420, label %vector.body1422, !llvm.loop !110

middle.block1420:                                 ; preds = %vector.body1422
  %cmp.n1434 = icmp eq i64 %409, %n.vec1430
  br i1 %cmp.n1434, label %polly.loop_exit714.us, label %polly.loop_header712.us.preheader

polly.loop_header712.us.preheader:                ; preds = %polly.loop_header712.preheader.us, %middle.block1420
  %polly.indvar716.us.ph = phi i64 [ 0, %polly.loop_header712.preheader.us ], [ %n.vec1430, %middle.block1420 ]
  br label %polly.loop_header712.us

polly.loop_header683:                             ; preds = %polly.loop_header656.split, %polly.loop_header683
  %polly.indvar687 = phi i64 [ %polly.indvar_next688, %polly.loop_header683 ], [ %402, %polly.loop_header656.split ]
  %432 = add nuw nsw i64 %polly.indvar687, %374
  %polly.access.mul.call1691 = mul nsw i64 %432, 1000
  %polly.access.add.call1692 = add nuw nsw i64 %342, %polly.access.mul.call1691
  %polly.access.call1693 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692
  %polly.access.call1693.load = load double, double* %polly.access.call1693, align 8, !alias.scope !101, !noalias !108
  %polly.access.Packed_MemRef_call1526696 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.indvar687
  store double %polly.access.call1693.load, double* %polly.access.Packed_MemRef_call1526696, align 8
  %polly.indvar_next688 = add nuw nsw i64 %polly.indvar687, 1
  %polly.loop_cond689.not.not = icmp slt i64 %polly.indvar687, %403
  br i1 %polly.loop_cond689.not.not, label %polly.loop_header683, label %polly.loop_header683.1

polly.loop_header864:                             ; preds = %entry, %polly.loop_exit872
  %indvars.iv1187 = phi i64 [ %indvars.iv.next1188, %polly.loop_exit872 ], [ 0, %entry ]
  %polly.indvar867 = phi i64 [ %polly.indvar_next868, %polly.loop_exit872 ], [ 0, %entry ]
  %smin1189 = call i64 @llvm.smin.i64(i64 %indvars.iv1187, i64 -1168)
  %433 = shl nsw i64 %polly.indvar867, 5
  %434 = add nsw i64 %smin1189, 1199
  br label %polly.loop_header870

polly.loop_exit872:                               ; preds = %polly.loop_exit878
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %indvars.iv.next1188 = add nsw i64 %indvars.iv1187, -32
  %exitcond1192.not = icmp eq i64 %polly.indvar_next868, 38
  br i1 %exitcond1192.not, label %polly.loop_header891, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_exit878, %polly.loop_header864
  %indvars.iv1183 = phi i64 [ %indvars.iv.next1184, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_exit878 ], [ 0, %polly.loop_header864 ]
  %435 = mul nsw i64 %polly.indvar873, -32
  %smin1281 = call i64 @llvm.smin.i64(i64 %435, i64 -1168)
  %436 = add nsw i64 %smin1281, 1200
  %smin1185 = call i64 @llvm.smin.i64(i64 %indvars.iv1183, i64 -1168)
  %437 = shl nsw i64 %polly.indvar873, 5
  %438 = add nsw i64 %smin1185, 1199
  br label %polly.loop_header876

polly.loop_exit878:                               ; preds = %polly.loop_exit884
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %indvars.iv.next1184 = add nsw i64 %indvars.iv1183, -32
  %exitcond1191.not = icmp eq i64 %polly.indvar_next874, 38
  br i1 %exitcond1191.not, label %polly.loop_exit872, label %polly.loop_header870

polly.loop_header876:                             ; preds = %polly.loop_exit884, %polly.loop_header870
  %polly.indvar879 = phi i64 [ 0, %polly.loop_header870 ], [ %polly.indvar_next880, %polly.loop_exit884 ]
  %439 = add nuw nsw i64 %polly.indvar879, %433
  %440 = trunc i64 %439 to i32
  %441 = mul nuw nsw i64 %439, 9600
  %min.iters.check = icmp eq i64 %436, 0
  br i1 %min.iters.check, label %polly.loop_header882, label %vector.ph1282

vector.ph1282:                                    ; preds = %polly.loop_header876
  %broadcast.splatinsert1289 = insertelement <4 x i64> poison, i64 %437, i32 0
  %broadcast.splat1290 = shufflevector <4 x i64> %broadcast.splatinsert1289, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1291 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1292 = shufflevector <4 x i32> %broadcast.splatinsert1291, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %vector.ph1282
  %index1283 = phi i64 [ 0, %vector.ph1282 ], [ %index.next1284, %vector.body1280 ]
  %vec.ind1287 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1282 ], [ %vec.ind.next1288, %vector.body1280 ]
  %442 = add nuw nsw <4 x i64> %vec.ind1287, %broadcast.splat1290
  %443 = trunc <4 x i64> %442 to <4 x i32>
  %444 = mul <4 x i32> %broadcast.splat1292, %443
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 1200, i32 1200, i32 1200, i32 1200>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %449 = extractelement <4 x i64> %442, i32 0
  %450 = shl i64 %449, 3
  %451 = add nuw nsw i64 %450, %441
  %452 = getelementptr i8, i8* %call, i64 %451
  %453 = bitcast i8* %452 to <4 x double>*
  store <4 x double> %448, <4 x double>* %453, align 8, !alias.scope !111, !noalias !113
  %index.next1284 = add i64 %index1283, 4
  %vec.ind.next1288 = add <4 x i64> %vec.ind1287, <i64 4, i64 4, i64 4, i64 4>
  %454 = icmp eq i64 %index.next1284, %436
  br i1 %454, label %polly.loop_exit884, label %vector.body1280, !llvm.loop !116

polly.loop_exit884:                               ; preds = %vector.body1280, %polly.loop_header882
  %polly.indvar_next880 = add nuw nsw i64 %polly.indvar879, 1
  %exitcond1190.not = icmp eq i64 %polly.indvar879, %434
  br i1 %exitcond1190.not, label %polly.loop_exit878, label %polly.loop_header876

polly.loop_header882:                             ; preds = %polly.loop_header876, %polly.loop_header882
  %polly.indvar885 = phi i64 [ %polly.indvar_next886, %polly.loop_header882 ], [ 0, %polly.loop_header876 ]
  %455 = add nuw nsw i64 %polly.indvar885, %437
  %456 = trunc i64 %455 to i32
  %457 = mul i32 %456, %440
  %458 = add i32 %457, 3
  %459 = urem i32 %458, 1200
  %p_conv31.i = sitofp i32 %459 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %460 = shl i64 %455, 3
  %461 = add nuw nsw i64 %460, %441
  %scevgep888 = getelementptr i8, i8* %call, i64 %461
  %scevgep888889 = bitcast i8* %scevgep888 to double*
  store double %p_div33.i, double* %scevgep888889, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next886 = add nuw nsw i64 %polly.indvar885, 1
  %exitcond1186.not = icmp eq i64 %polly.indvar885, %438
  br i1 %exitcond1186.not, label %polly.loop_exit884, label %polly.loop_header882, !llvm.loop !117

polly.loop_header891:                             ; preds = %polly.loop_exit872, %polly.loop_exit899
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit872 ]
  %smin1179 = call i64 @llvm.smin.i64(i64 %indvars.iv1177, i64 -1168)
  %462 = shl nsw i64 %polly.indvar894, 5
  %463 = add nsw i64 %smin1179, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1178 = add nsw i64 %indvars.iv1177, -32
  %exitcond1182.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1182.not, label %polly.loop_header917, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1173 = phi i64 [ %indvars.iv.next1174, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %464 = mul nsw i64 %polly.indvar900, -32
  %smin1296 = call i64 @llvm.smin.i64(i64 %464, i64 -968)
  %465 = add nsw i64 %smin1296, 1000
  %smin1175 = call i64 @llvm.smin.i64(i64 %indvars.iv1173, i64 -968)
  %466 = shl nsw i64 %polly.indvar900, 5
  %467 = add nsw i64 %smin1175, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1174 = add nsw i64 %indvars.iv1173, -32
  %exitcond1181.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1181.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %468 = add nuw nsw i64 %polly.indvar906, %462
  %469 = trunc i64 %468 to i32
  %470 = mul nuw nsw i64 %468, 8000
  %min.iters.check1297 = icmp eq i64 %465, 0
  br i1 %min.iters.check1297, label %polly.loop_header909, label %vector.ph1298

vector.ph1298:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1307 = insertelement <4 x i64> poison, i64 %466, i32 0
  %broadcast.splat1308 = shufflevector <4 x i64> %broadcast.splatinsert1307, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1309 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1310 = shufflevector <4 x i32> %broadcast.splatinsert1309, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1298
  %index1301 = phi i64 [ 0, %vector.ph1298 ], [ %index.next1302, %vector.body1295 ]
  %vec.ind1305 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1298 ], [ %vec.ind.next1306, %vector.body1295 ]
  %471 = add nuw nsw <4 x i64> %vec.ind1305, %broadcast.splat1308
  %472 = trunc <4 x i64> %471 to <4 x i32>
  %473 = mul <4 x i32> %broadcast.splat1310, %472
  %474 = add <4 x i32> %473, <i32 2, i32 2, i32 2, i32 2>
  %475 = urem <4 x i32> %474, <i32 1000, i32 1000, i32 1000, i32 1000>
  %476 = sitofp <4 x i32> %475 to <4 x double>
  %477 = fmul fast <4 x double> %476, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %478 = extractelement <4 x i64> %471, i32 0
  %479 = shl i64 %478, 3
  %480 = add nuw nsw i64 %479, %470
  %481 = getelementptr i8, i8* %call2, i64 %480
  %482 = bitcast i8* %481 to <4 x double>*
  store <4 x double> %477, <4 x double>* %482, align 8, !alias.scope !115, !noalias !118
  %index.next1302 = add i64 %index1301, 4
  %vec.ind.next1306 = add <4 x i64> %vec.ind1305, <i64 4, i64 4, i64 4, i64 4>
  %483 = icmp eq i64 %index.next1302, %465
  br i1 %483, label %polly.loop_exit911, label %vector.body1295, !llvm.loop !119

polly.loop_exit911:                               ; preds = %vector.body1295, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar906, %463
  br i1 %exitcond1180.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %484 = add nuw nsw i64 %polly.indvar912, %466
  %485 = trunc i64 %484 to i32
  %486 = mul i32 %485, %469
  %487 = add i32 %486, 2
  %488 = urem i32 %487, 1000
  %p_conv10.i = sitofp i32 %488 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %489 = shl i64 %484, 3
  %490 = add nuw nsw i64 %489, %470
  %scevgep915 = getelementptr i8, i8* %call2, i64 %490
  %scevgep915916 = bitcast i8* %scevgep915 to double*
  store double %p_div12.i, double* %scevgep915916, align 8, !alias.scope !115, !noalias !118
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar912, %467
  br i1 %exitcond1176.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !120

polly.loop_header917:                             ; preds = %polly.loop_exit899, %polly.loop_exit925
  %indvars.iv1167 = phi i64 [ %indvars.iv.next1168, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %polly.indvar920 = phi i64 [ %polly.indvar_next921, %polly.loop_exit925 ], [ 0, %polly.loop_exit899 ]
  %smin1169 = call i64 @llvm.smin.i64(i64 %indvars.iv1167, i64 -1168)
  %491 = shl nsw i64 %polly.indvar920, 5
  %492 = add nsw i64 %smin1169, 1199
  br label %polly.loop_header923

polly.loop_exit925:                               ; preds = %polly.loop_exit931
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %indvars.iv.next1168 = add nsw i64 %indvars.iv1167, -32
  %exitcond1172.not = icmp eq i64 %polly.indvar_next921, 38
  br i1 %exitcond1172.not, label %init_array.exit, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_exit931, %polly.loop_header917
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_exit931 ], [ 0, %polly.loop_header917 ]
  %493 = mul nsw i64 %polly.indvar926, -32
  %smin1314 = call i64 @llvm.smin.i64(i64 %493, i64 -968)
  %494 = add nsw i64 %smin1314, 1000
  %smin1165 = call i64 @llvm.smin.i64(i64 %indvars.iv1163, i64 -968)
  %495 = shl nsw i64 %polly.indvar926, 5
  %496 = add nsw i64 %smin1165, 999
  br label %polly.loop_header929

polly.loop_exit931:                               ; preds = %polly.loop_exit937
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %indvars.iv.next1164 = add nsw i64 %indvars.iv1163, -32
  %exitcond1171.not = icmp eq i64 %polly.indvar_next927, 32
  br i1 %exitcond1171.not, label %polly.loop_exit925, label %polly.loop_header923

polly.loop_header929:                             ; preds = %polly.loop_exit937, %polly.loop_header923
  %polly.indvar932 = phi i64 [ 0, %polly.loop_header923 ], [ %polly.indvar_next933, %polly.loop_exit937 ]
  %497 = add nuw nsw i64 %polly.indvar932, %491
  %498 = trunc i64 %497 to i32
  %499 = mul nuw nsw i64 %497, 8000
  %min.iters.check1315 = icmp eq i64 %494, 0
  br i1 %min.iters.check1315, label %polly.loop_header935, label %vector.ph1316

vector.ph1316:                                    ; preds = %polly.loop_header929
  %broadcast.splatinsert1325 = insertelement <4 x i64> poison, i64 %495, i32 0
  %broadcast.splat1326 = shufflevector <4 x i64> %broadcast.splatinsert1325, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1327 = insertelement <4 x i32> poison, i32 %498, i32 0
  %broadcast.splat1328 = shufflevector <4 x i32> %broadcast.splatinsert1327, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1320, %vector.body1313 ]
  %vec.ind1323 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1316 ], [ %vec.ind.next1324, %vector.body1313 ]
  %500 = add nuw nsw <4 x i64> %vec.ind1323, %broadcast.splat1326
  %501 = trunc <4 x i64> %500 to <4 x i32>
  %502 = mul <4 x i32> %broadcast.splat1328, %501
  %503 = add <4 x i32> %502, <i32 1, i32 1, i32 1, i32 1>
  %504 = urem <4 x i32> %503, <i32 1200, i32 1200, i32 1200, i32 1200>
  %505 = sitofp <4 x i32> %504 to <4 x double>
  %506 = fmul fast <4 x double> %505, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %507 = extractelement <4 x i64> %500, i32 0
  %508 = shl i64 %507, 3
  %509 = add nuw nsw i64 %508, %499
  %510 = getelementptr i8, i8* %call1, i64 %509
  %511 = bitcast i8* %510 to <4 x double>*
  store <4 x double> %506, <4 x double>* %511, align 8, !alias.scope !114, !noalias !121
  %index.next1320 = add i64 %index1319, 4
  %vec.ind.next1324 = add <4 x i64> %vec.ind1323, <i64 4, i64 4, i64 4, i64 4>
  %512 = icmp eq i64 %index.next1320, %494
  br i1 %512, label %polly.loop_exit937, label %vector.body1313, !llvm.loop !122

polly.loop_exit937:                               ; preds = %vector.body1313, %polly.loop_header935
  %polly.indvar_next933 = add nuw nsw i64 %polly.indvar932, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar932, %492
  br i1 %exitcond1170.not, label %polly.loop_exit931, label %polly.loop_header929

polly.loop_header935:                             ; preds = %polly.loop_header929, %polly.loop_header935
  %polly.indvar938 = phi i64 [ %polly.indvar_next939, %polly.loop_header935 ], [ 0, %polly.loop_header929 ]
  %513 = add nuw nsw i64 %polly.indvar938, %495
  %514 = trunc i64 %513 to i32
  %515 = mul i32 %514, %498
  %516 = add i32 %515, 1
  %517 = urem i32 %516, 1200
  %p_conv.i = sitofp i32 %517 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %518 = shl i64 %513, 3
  %519 = add nuw nsw i64 %518, %499
  %scevgep942 = getelementptr i8, i8* %call1, i64 %519
  %scevgep942943 = bitcast i8* %scevgep942 to double*
  store double %p_div.i, double* %scevgep942943, align 8, !alias.scope !114, !noalias !121
  %polly.indvar_next939 = add nuw nsw i64 %polly.indvar938, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar938, %496
  br i1 %exitcond1166.not, label %polly.loop_exit937, label %polly.loop_header935, !llvm.loop !123

polly.loop_header218.1:                           ; preds = %polly.loop_header218, %polly.loop_header218.1
  %polly.indvar221.1 = phi i64 [ %polly.indvar_next222.1, %polly.loop_header218.1 ], [ 0, %polly.loop_header218 ]
  %520 = add nuw nsw i64 %polly.indvar221.1, %144
  %polly.access.mul.call2225.1 = mul nuw nsw i64 %520, 1000
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
  %521 = add nuw nsw i64 %polly.indvar221.2, %144
  %polly.access.mul.call2225.2 = mul nuw nsw i64 %521, 1000
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
  %522 = add nuw nsw i64 %polly.indvar221.3, %144
  %polly.access.mul.call2225.3 = mul nuw nsw i64 %522, 1000
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
  %523 = mul nsw i64 %polly.indvar209, -4
  %polly.access.mul.call1247.us = mul nsw i64 %polly.indvar209, 4000
  %polly.access.add.call1248.us = add nuw nsw i64 %112, %polly.access.mul.call1247.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us
  %524 = or i64 %144, 1
  %polly.access.mul.call1247.us.1 = mul nuw nsw i64 %524, 1000
  %polly.access.add.call1248.us.1 = add nuw nsw i64 %112, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1
  %525 = or i64 %144, 2
  %polly.access.mul.call1247.us.2 = mul nuw nsw i64 %525, 1000
  %polly.access.add.call1248.us.2 = add nuw nsw i64 %112, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2
  %526 = or i64 %144, 3
  %polly.access.mul.call1247.us.3 = mul nuw nsw i64 %526, 1000
  %polly.access.add.call1248.us.3 = add nuw nsw i64 %112, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3
  %polly.access.add.call1248.us.11198 = add nuw nsw i64 %113, %polly.access.mul.call1247.us
  %polly.access.call1249.us.11199 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.11198
  %polly.access.add.call1248.us.1.1 = add nuw nsw i64 %113, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1.1
  %polly.access.add.call1248.us.2.1 = add nuw nsw i64 %113, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2.1
  %polly.access.add.call1248.us.3.1 = add nuw nsw i64 %113, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3.1
  %polly.access.add.call1248.us.21203 = add nuw nsw i64 %114, %polly.access.mul.call1247.us
  %polly.access.call1249.us.21204 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.21203
  %polly.access.add.call1248.us.1.2 = add nuw nsw i64 %114, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1.2
  %polly.access.add.call1248.us.2.2 = add nuw nsw i64 %114, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2.2
  %polly.access.add.call1248.us.3.2 = add nuw nsw i64 %114, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3.2
  %polly.access.add.call1248.us.31208 = add nuw nsw i64 %115, %polly.access.mul.call1247.us
  %polly.access.call1249.us.31209 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.31208
  %polly.access.add.call1248.us.1.3 = add nuw nsw i64 %115, %polly.access.mul.call1247.us.1
  %polly.access.call1249.us.1.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.1.3
  %polly.access.add.call1248.us.2.3 = add nuw nsw i64 %115, %polly.access.mul.call1247.us.2
  %polly.access.call1249.us.2.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.2.3
  %polly.access.add.call1248.us.3.3 = add nuw nsw i64 %115, %polly.access.mul.call1247.us.3
  %polly.access.call1249.us.3.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1248.us.3.3
  br label %polly.loop_header228

polly.loop_header250.1:                           ; preds = %polly.loop_header250, %polly.loop_header250.1
  %polly.indvar253.1 = phi i64 [ %polly.indvar_next254.1, %polly.loop_header250.1 ], [ %172, %polly.loop_header250 ]
  %527 = add nuw nsw i64 %polly.indvar253.1, %144
  %polly.access.mul.call1257.1 = mul nsw i64 %527, 1000
  %polly.access.add.call1258.1 = add nuw nsw i64 %113, %polly.access.mul.call1257.1
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.1 = add nuw nsw i64 %polly.indvar253.1, 1200
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %polly.loop_cond255.not.not.1 = icmp slt i64 %polly.indvar253.1, %173
  br i1 %polly.loop_cond255.not.not.1, label %polly.loop_header250.1, label %polly.loop_header250.2

polly.loop_header250.2:                           ; preds = %polly.loop_header250.1, %polly.loop_header250.2
  %polly.indvar253.2 = phi i64 [ %polly.indvar_next254.2, %polly.loop_header250.2 ], [ %172, %polly.loop_header250.1 ]
  %528 = add nuw nsw i64 %polly.indvar253.2, %144
  %polly.access.mul.call1257.2 = mul nsw i64 %528, 1000
  %polly.access.add.call1258.2 = add nuw nsw i64 %114, %polly.access.mul.call1257.2
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.2 = add nuw nsw i64 %polly.indvar253.2, 2400
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.indvar_next254.2 = add nuw nsw i64 %polly.indvar253.2, 1
  %polly.loop_cond255.not.not.2 = icmp slt i64 %polly.indvar253.2, %173
  br i1 %polly.loop_cond255.not.not.2, label %polly.loop_header250.2, label %polly.loop_header250.3

polly.loop_header250.3:                           ; preds = %polly.loop_header250.2, %polly.loop_header250.3
  %polly.indvar253.3 = phi i64 [ %polly.indvar_next254.3, %polly.loop_header250.3 ], [ %172, %polly.loop_header250.2 ]
  %529 = add nuw nsw i64 %polly.indvar253.3, %144
  %polly.access.mul.call1257.3 = mul nsw i64 %529, 1000
  %polly.access.add.call1258.3 = add nuw nsw i64 %115, %polly.access.mul.call1257.3
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.3 = add nuw nsw i64 %polly.indvar253.3, 3600
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  %polly.indvar_next254.3 = add nuw nsw i64 %polly.indvar253.3, 1
  %polly.loop_cond255.not.not.3 = icmp slt i64 %polly.indvar253.3, %173
  br i1 %polly.loop_cond255.not.not.3, label %polly.loop_header250.3, label %polly.loop_header263.preheader

polly.loop_header250.us.1:                        ; preds = %polly.loop_exit252.us, %polly.loop_header250.us.1
  %polly.indvar253.us.1 = phi i64 [ %polly.indvar_next254.us.1, %polly.loop_header250.us.1 ], [ %172, %polly.loop_exit252.us ]
  %530 = add nuw nsw i64 %polly.indvar253.us.1, %144
  %polly.access.mul.call1257.us.1 = mul nsw i64 %530, 1000
  %polly.access.add.call1258.us.1 = add nuw nsw i64 %113, %polly.access.mul.call1257.us.1
  %polly.access.call1259.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us.1
  %polly.access.call1259.load.us.1 = load double, double* %polly.access.call1259.us.1, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1200
  %polly.access.Packed_MemRef_call1262.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.1
  store double %polly.access.call1259.load.us.1, double* %polly.access.Packed_MemRef_call1262.us.1, align 8
  %polly.indvar_next254.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1
  %polly.loop_cond255.not.not.us.1 = icmp slt i64 %polly.indvar253.us.1, %173
  br i1 %polly.loop_cond255.not.not.us.1, label %polly.loop_header250.us.1, label %polly.loop_exit252.us.1

polly.loop_exit252.us.1.critedge:                 ; preds = %polly.loop_header234.us.preheader
  %polly.access.call1249.load.us.11200.c = load double, double* %polly.access.call1249.us.11199, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.11200.c, double* %99, align 8
  %polly.access.call1249.load.us.1.1.c = load double, double* %polly.access.call1249.us.1.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1.1.c, double* %100, align 8
  %polly.access.call1249.load.us.2.1.c = load double, double* %polly.access.call1249.us.2.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2.1.c, double* %101, align 8
  %polly.access.call1249.load.us.3.1.c = load double, double* %polly.access.call1249.us.3.1, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3.1.c, double* %102, align 8
  br label %polly.loop_exit252.us.1

polly.loop_exit252.us.1:                          ; preds = %polly.loop_header250.us.1, %polly.loop_exit252.us.1.critedge
  %polly.access.call1249.load.us.21205 = load double, double* %polly.access.call1249.us.21204, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.21205, double* %103, align 8
  %polly.access.call1249.load.us.1.2 = load double, double* %polly.access.call1249.us.1.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1.2, double* %104, align 8
  %polly.access.call1249.load.us.2.2 = load double, double* %polly.access.call1249.us.2.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2.2, double* %105, align 8
  %polly.access.call1249.load.us.3.2 = load double, double* %polly.access.call1249.us.3.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3.2, double* %106, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader.critedge, label %polly.loop_header250.us.2

polly.loop_header250.us.2:                        ; preds = %polly.loop_exit252.us.1, %polly.loop_header250.us.2
  %polly.indvar253.us.2 = phi i64 [ %polly.indvar_next254.us.2, %polly.loop_header250.us.2 ], [ %172, %polly.loop_exit252.us.1 ]
  %531 = add nuw nsw i64 %polly.indvar253.us.2, %144
  %polly.access.mul.call1257.us.2 = mul nsw i64 %531, 1000
  %polly.access.add.call1258.us.2 = add nuw nsw i64 %114, %polly.access.mul.call1257.us.2
  %polly.access.call1259.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us.2
  %polly.access.call1259.load.us.2 = load double, double* %polly.access.call1259.us.2, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 2400
  %polly.access.Packed_MemRef_call1262.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.2
  store double %polly.access.call1259.load.us.2, double* %polly.access.Packed_MemRef_call1262.us.2, align 8
  %polly.indvar_next254.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 1
  %polly.loop_cond255.not.not.us.2 = icmp slt i64 %polly.indvar253.us.2, %173
  br i1 %polly.loop_cond255.not.not.us.2, label %polly.loop_header250.us.2, label %polly.loop_exit252.us.2

polly.loop_exit252.us.2.critedge:                 ; preds = %polly.loop_exit252.us
  %polly.access.call1249.load.us.21205.c = load double, double* %polly.access.call1249.us.21204, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.21205.c, double* %103, align 8
  %polly.access.call1249.load.us.1.2.c = load double, double* %polly.access.call1249.us.1.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1.2.c, double* %104, align 8
  %polly.access.call1249.load.us.2.2.c = load double, double* %polly.access.call1249.us.2.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2.2.c, double* %105, align 8
  %polly.access.call1249.load.us.3.2.c = load double, double* %polly.access.call1249.us.3.2, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3.2.c, double* %106, align 8
  br label %polly.loop_exit252.us.2

polly.loop_exit252.us.2:                          ; preds = %polly.loop_header250.us.2, %polly.loop_exit252.us.2.critedge
  %polly.access.call1249.load.us.31210 = load double, double* %polly.access.call1249.us.31209, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.31210, double* %107, align 8
  %polly.access.call1249.load.us.1.3 = load double, double* %polly.access.call1249.us.1.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.1.3, double* %108, align 8
  %polly.access.call1249.load.us.2.3 = load double, double* %polly.access.call1249.us.2.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.2.3, double* %109, align 8
  %polly.access.call1249.load.us.3.3 = load double, double* %polly.access.call1249.us.3.3, align 8, !alias.scope !74, !noalias !82
  store double %polly.access.call1249.load.us.3.3, double* %110, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_header263.preheader, label %polly.loop_header250.us.3

polly.loop_header250.us.3:                        ; preds = %polly.loop_exit252.us.2, %polly.loop_header250.us.3
  %polly.indvar253.us.3 = phi i64 [ %polly.indvar_next254.us.3, %polly.loop_header250.us.3 ], [ %172, %polly.loop_exit252.us.2 ]
  %532 = add nuw nsw i64 %polly.indvar253.us.3, %144
  %polly.access.mul.call1257.us.3 = mul nsw i64 %532, 1000
  %polly.access.add.call1258.us.3 = add nuw nsw i64 %115, %polly.access.mul.call1257.us.3
  %polly.access.call1259.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1258.us.3
  %polly.access.call1259.load.us.3 = load double, double* %polly.access.call1259.us.3, align 8, !alias.scope !74, !noalias !82
  %polly.access.add.Packed_MemRef_call1261.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 3600
  %polly.access.Packed_MemRef_call1262.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us.3
  store double %polly.access.call1259.load.us.3, double* %polly.access.Packed_MemRef_call1262.us.3, align 8
  %polly.indvar_next254.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 1
  %polly.loop_cond255.not.not.us.3 = icmp slt i64 %polly.indvar253.us.3, %173
  br i1 %polly.loop_cond255.not.not.us.3, label %polly.loop_header250.us.3, label %polly.loop_header263.preheader

polly.loop_header270.us.1:                        ; preds = %polly.loop_exit280.us, %polly.loop_exit280.us.1
  %indvar1634 = phi i64 [ %indvar.next1635, %polly.loop_exit280.us.1 ], [ 0, %polly.loop_exit280.us ]
  %indvars.iv1102.1 = phi i64 [ %indvars.iv.next1103.1, %polly.loop_exit280.us.1 ], [ %167, %polly.loop_exit280.us ]
  %polly.indvar274.us.1 = phi i64 [ %polly.indvar_next275.us.1, %polly.loop_exit280.us.1 ], [ %177, %polly.loop_exit280.us ]
  %533 = add i64 %156, %indvar1634
  %smin1636 = call i64 @llvm.smin.i64(i64 %533, i64 3)
  %534 = add nsw i64 %smin1636, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1102.1, i64 3)
  %535 = add nsw i64 %polly.indvar274.us.1, %170
  %polly.loop_guard281.us.11243 = icmp sgt i64 %535, -1
  br i1 %polly.loop_guard281.us.11243, label %polly.loop_header278.preheader.us.1, label %polly.loop_exit280.us.1

polly.loop_header278.preheader.us.1:              ; preds = %polly.loop_header270.us.1
  %536 = add nuw nsw i64 %polly.indvar274.us.1, %169
  %polly.access.add.Packed_MemRef_call2290.us.1 = add nuw nsw i64 %535, 1200
  %polly.access.Packed_MemRef_call2291.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call2291.us.1, align 8
  %polly.access.Packed_MemRef_call1299.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_300.us.1 = load double, double* %polly.access.Packed_MemRef_call1299.us.1, align 8
  %537 = mul i64 %536, 9600
  %min.iters.check1637 = icmp ult i64 %534, 4
  br i1 %min.iters.check1637, label %polly.loop_header278.us.1.preheader, label %vector.ph1638

vector.ph1638:                                    ; preds = %polly.loop_header278.preheader.us.1
  %n.vec1640 = and i64 %534, -4
  %broadcast.splatinsert1646 = insertelement <4 x double> poison, double %_p_scalar_292.us.1, i32 0
  %broadcast.splat1647 = shufflevector <4 x double> %broadcast.splatinsert1646, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1649 = insertelement <4 x double> poison, double %_p_scalar_300.us.1, i32 0
  %broadcast.splat1650 = shufflevector <4 x double> %broadcast.splatinsert1649, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1632

vector.body1632:                                  ; preds = %vector.body1632, %vector.ph1638
  %index1641 = phi i64 [ 0, %vector.ph1638 ], [ %index.next1642, %vector.body1632 ]
  %538 = add nuw nsw i64 %index1641, %144
  %539 = add nuw nsw i64 %index1641, 1200
  %540 = getelementptr double, double* %Packed_MemRef_call1, i64 %539
  %541 = bitcast double* %540 to <4 x double>*
  %wide.load1645 = load <4 x double>, <4 x double>* %541, align 8
  %542 = fmul fast <4 x double> %broadcast.splat1647, %wide.load1645
  %543 = getelementptr double, double* %Packed_MemRef_call2, i64 %539
  %544 = bitcast double* %543 to <4 x double>*
  %wide.load1648 = load <4 x double>, <4 x double>* %544, align 8
  %545 = fmul fast <4 x double> %broadcast.splat1650, %wide.load1648
  %546 = shl i64 %538, 3
  %547 = add i64 %546, %537
  %548 = getelementptr i8, i8* %call, i64 %547
  %549 = bitcast i8* %548 to <4 x double>*
  %wide.load1651 = load <4 x double>, <4 x double>* %549, align 8, !alias.scope !71, !noalias !73
  %550 = fadd fast <4 x double> %545, %542
  %551 = fmul fast <4 x double> %550, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %552 = fadd fast <4 x double> %551, %wide.load1651
  %553 = bitcast i8* %548 to <4 x double>*
  store <4 x double> %552, <4 x double>* %553, align 8, !alias.scope !71, !noalias !73
  %index.next1642 = add i64 %index1641, 4
  %554 = icmp eq i64 %index.next1642, %n.vec1640
  br i1 %554, label %middle.block1630, label %vector.body1632, !llvm.loop !124

middle.block1630:                                 ; preds = %vector.body1632
  %cmp.n1644 = icmp eq i64 %534, %n.vec1640
  br i1 %cmp.n1644, label %polly.loop_exit280.us.1, label %polly.loop_header278.us.1.preheader

polly.loop_header278.us.1.preheader:              ; preds = %polly.loop_header278.preheader.us.1, %middle.block1630
  %polly.indvar282.us.1.ph = phi i64 [ 0, %polly.loop_header278.preheader.us.1 ], [ %n.vec1640, %middle.block1630 ]
  br label %polly.loop_header278.us.1

polly.loop_header278.us.1:                        ; preds = %polly.loop_header278.us.1.preheader, %polly.loop_header278.us.1
  %polly.indvar282.us.1 = phi i64 [ %polly.indvar_next283.us.1, %polly.loop_header278.us.1 ], [ %polly.indvar282.us.1.ph, %polly.loop_header278.us.1.preheader ]
  %555 = add nuw nsw i64 %polly.indvar282.us.1, %144
  %polly.access.add.Packed_MemRef_call1286.us.1 = add nuw nsw i64 %polly.indvar282.us.1, 1200
  %polly.access.Packed_MemRef_call1287.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call1287.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_292.us.1, %_p_scalar_288.us.1
  %polly.access.Packed_MemRef_call2295.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us.1
  %_p_scalar_296.us.1 = load double, double* %polly.access.Packed_MemRef_call2295.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_300.us.1, %_p_scalar_296.us.1
  %556 = shl i64 %555, 3
  %557 = add i64 %556, %537
  %scevgep301.us.1 = getelementptr i8, i8* %call, i64 %557
  %scevgep301302.us.1 = bitcast i8* %scevgep301.us.1 to double*
  %_p_scalar_303.us.1 = load double, double* %scevgep301302.us.1, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_303.us.1
  store double %p_add42.i118.us.1, double* %scevgep301302.us.1, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us.1 = add nuw nsw i64 %polly.indvar282.us.1, 1
  %exitcond1104.1.not = icmp eq i64 %polly.indvar282.us.1, %smin.1
  br i1 %exitcond1104.1.not, label %polly.loop_exit280.us.1, label %polly.loop_header278.us.1, !llvm.loop !125

polly.loop_exit280.us.1:                          ; preds = %polly.loop_header278.us.1, %middle.block1630, %polly.loop_header270.us.1
  %polly.indvar_next275.us.1 = add nuw nsw i64 %polly.indvar274.us.1, 1
  %polly.loop_cond276.us.1 = icmp ult i64 %polly.indvar274.us.1, 7
  %indvars.iv.next1103.1 = add i64 %indvars.iv1102.1, 1
  %indvar.next1635 = add i64 %indvar1634, 1
  br i1 %polly.loop_cond276.us.1, label %polly.loop_header270.us.1, label %polly.loop_header270.us.2

polly.loop_header270.us.2:                        ; preds = %polly.loop_exit280.us.1, %polly.loop_exit280.us.2
  %indvar1612 = phi i64 [ %indvar.next1613, %polly.loop_exit280.us.2 ], [ 0, %polly.loop_exit280.us.1 ]
  %indvars.iv1102.2 = phi i64 [ %indvars.iv.next1103.2, %polly.loop_exit280.us.2 ], [ %167, %polly.loop_exit280.us.1 ]
  %polly.indvar274.us.2 = phi i64 [ %polly.indvar_next275.us.2, %polly.loop_exit280.us.2 ], [ %177, %polly.loop_exit280.us.1 ]
  %558 = add i64 %161, %indvar1612
  %smin1614 = call i64 @llvm.smin.i64(i64 %558, i64 3)
  %559 = add nsw i64 %smin1614, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1102.2, i64 3)
  %560 = add nsw i64 %polly.indvar274.us.2, %170
  %polly.loop_guard281.us.21244 = icmp sgt i64 %560, -1
  br i1 %polly.loop_guard281.us.21244, label %polly.loop_header278.preheader.us.2, label %polly.loop_exit280.us.2

polly.loop_header278.preheader.us.2:              ; preds = %polly.loop_header270.us.2
  %561 = add nuw nsw i64 %polly.indvar274.us.2, %169
  %polly.access.add.Packed_MemRef_call2290.us.2 = add nuw nsw i64 %560, 2400
  %polly.access.Packed_MemRef_call2291.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call2291.us.2, align 8
  %polly.access.Packed_MemRef_call1299.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_300.us.2 = load double, double* %polly.access.Packed_MemRef_call1299.us.2, align 8
  %562 = mul i64 %561, 9600
  %min.iters.check1615 = icmp ult i64 %559, 4
  br i1 %min.iters.check1615, label %polly.loop_header278.us.2.preheader, label %vector.ph1616

vector.ph1616:                                    ; preds = %polly.loop_header278.preheader.us.2
  %n.vec1618 = and i64 %559, -4
  %broadcast.splatinsert1624 = insertelement <4 x double> poison, double %_p_scalar_292.us.2, i32 0
  %broadcast.splat1625 = shufflevector <4 x double> %broadcast.splatinsert1624, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1627 = insertelement <4 x double> poison, double %_p_scalar_300.us.2, i32 0
  %broadcast.splat1628 = shufflevector <4 x double> %broadcast.splatinsert1627, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1610

vector.body1610:                                  ; preds = %vector.body1610, %vector.ph1616
  %index1619 = phi i64 [ 0, %vector.ph1616 ], [ %index.next1620, %vector.body1610 ]
  %563 = add nuw nsw i64 %index1619, %144
  %564 = add nuw nsw i64 %index1619, 2400
  %565 = getelementptr double, double* %Packed_MemRef_call1, i64 %564
  %566 = bitcast double* %565 to <4 x double>*
  %wide.load1623 = load <4 x double>, <4 x double>* %566, align 8
  %567 = fmul fast <4 x double> %broadcast.splat1625, %wide.load1623
  %568 = getelementptr double, double* %Packed_MemRef_call2, i64 %564
  %569 = bitcast double* %568 to <4 x double>*
  %wide.load1626 = load <4 x double>, <4 x double>* %569, align 8
  %570 = fmul fast <4 x double> %broadcast.splat1628, %wide.load1626
  %571 = shl i64 %563, 3
  %572 = add i64 %571, %562
  %573 = getelementptr i8, i8* %call, i64 %572
  %574 = bitcast i8* %573 to <4 x double>*
  %wide.load1629 = load <4 x double>, <4 x double>* %574, align 8, !alias.scope !71, !noalias !73
  %575 = fadd fast <4 x double> %570, %567
  %576 = fmul fast <4 x double> %575, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %577 = fadd fast <4 x double> %576, %wide.load1629
  %578 = bitcast i8* %573 to <4 x double>*
  store <4 x double> %577, <4 x double>* %578, align 8, !alias.scope !71, !noalias !73
  %index.next1620 = add i64 %index1619, 4
  %579 = icmp eq i64 %index.next1620, %n.vec1618
  br i1 %579, label %middle.block1608, label %vector.body1610, !llvm.loop !126

middle.block1608:                                 ; preds = %vector.body1610
  %cmp.n1622 = icmp eq i64 %559, %n.vec1618
  br i1 %cmp.n1622, label %polly.loop_exit280.us.2, label %polly.loop_header278.us.2.preheader

polly.loop_header278.us.2.preheader:              ; preds = %polly.loop_header278.preheader.us.2, %middle.block1608
  %polly.indvar282.us.2.ph = phi i64 [ 0, %polly.loop_header278.preheader.us.2 ], [ %n.vec1618, %middle.block1608 ]
  br label %polly.loop_header278.us.2

polly.loop_header278.us.2:                        ; preds = %polly.loop_header278.us.2.preheader, %polly.loop_header278.us.2
  %polly.indvar282.us.2 = phi i64 [ %polly.indvar_next283.us.2, %polly.loop_header278.us.2 ], [ %polly.indvar282.us.2.ph, %polly.loop_header278.us.2.preheader ]
  %580 = add nuw nsw i64 %polly.indvar282.us.2, %144
  %polly.access.add.Packed_MemRef_call1286.us.2 = add nuw nsw i64 %polly.indvar282.us.2, 2400
  %polly.access.Packed_MemRef_call1287.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  %_p_scalar_288.us.2 = load double, double* %polly.access.Packed_MemRef_call1287.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_292.us.2, %_p_scalar_288.us.2
  %polly.access.Packed_MemRef_call2295.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us.2
  %_p_scalar_296.us.2 = load double, double* %polly.access.Packed_MemRef_call2295.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_300.us.2, %_p_scalar_296.us.2
  %581 = shl i64 %580, 3
  %582 = add i64 %581, %562
  %scevgep301.us.2 = getelementptr i8, i8* %call, i64 %582
  %scevgep301302.us.2 = bitcast i8* %scevgep301.us.2 to double*
  %_p_scalar_303.us.2 = load double, double* %scevgep301302.us.2, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_303.us.2
  store double %p_add42.i118.us.2, double* %scevgep301302.us.2, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us.2 = add nuw nsw i64 %polly.indvar282.us.2, 1
  %exitcond1104.2.not = icmp eq i64 %polly.indvar282.us.2, %smin.2
  br i1 %exitcond1104.2.not, label %polly.loop_exit280.us.2, label %polly.loop_header278.us.2, !llvm.loop !127

polly.loop_exit280.us.2:                          ; preds = %polly.loop_header278.us.2, %middle.block1608, %polly.loop_header270.us.2
  %polly.indvar_next275.us.2 = add nuw nsw i64 %polly.indvar274.us.2, 1
  %polly.loop_cond276.us.2 = icmp ult i64 %polly.indvar274.us.2, 7
  %indvars.iv.next1103.2 = add i64 %indvars.iv1102.2, 1
  %indvar.next1613 = add i64 %indvar1612, 1
  br i1 %polly.loop_cond276.us.2, label %polly.loop_header270.us.2, label %polly.loop_header270.us.3

polly.loop_header270.us.3:                        ; preds = %polly.loop_exit280.us.2, %polly.loop_exit280.us.3
  %indvar1590 = phi i64 [ %indvar.next1591, %polly.loop_exit280.us.3 ], [ 0, %polly.loop_exit280.us.2 ]
  %indvars.iv1102.3 = phi i64 [ %indvars.iv.next1103.3, %polly.loop_exit280.us.3 ], [ %167, %polly.loop_exit280.us.2 ]
  %polly.indvar274.us.3 = phi i64 [ %polly.indvar_next275.us.3, %polly.loop_exit280.us.3 ], [ %177, %polly.loop_exit280.us.2 ]
  %583 = add i64 %166, %indvar1590
  %smin1592 = call i64 @llvm.smin.i64(i64 %583, i64 3)
  %584 = add nsw i64 %smin1592, 1
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1102.3, i64 3)
  %585 = add nsw i64 %polly.indvar274.us.3, %170
  %polly.loop_guard281.us.31245 = icmp sgt i64 %585, -1
  br i1 %polly.loop_guard281.us.31245, label %polly.loop_header278.preheader.us.3, label %polly.loop_exit280.us.3

polly.loop_header278.preheader.us.3:              ; preds = %polly.loop_header270.us.3
  %586 = add nuw nsw i64 %polly.indvar274.us.3, %169
  %polly.access.add.Packed_MemRef_call2290.us.3 = add nuw nsw i64 %585, 3600
  %polly.access.Packed_MemRef_call2291.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call2291.us.3, align 8
  %polly.access.Packed_MemRef_call1299.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_300.us.3 = load double, double* %polly.access.Packed_MemRef_call1299.us.3, align 8
  %587 = mul i64 %586, 9600
  %min.iters.check1593 = icmp ult i64 %584, 4
  br i1 %min.iters.check1593, label %polly.loop_header278.us.3.preheader, label %vector.ph1594

vector.ph1594:                                    ; preds = %polly.loop_header278.preheader.us.3
  %n.vec1596 = and i64 %584, -4
  %broadcast.splatinsert1602 = insertelement <4 x double> poison, double %_p_scalar_292.us.3, i32 0
  %broadcast.splat1603 = shufflevector <4 x double> %broadcast.splatinsert1602, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1605 = insertelement <4 x double> poison, double %_p_scalar_300.us.3, i32 0
  %broadcast.splat1606 = shufflevector <4 x double> %broadcast.splatinsert1605, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1586

vector.body1586:                                  ; preds = %vector.body1586, %vector.ph1594
  %index1597 = phi i64 [ 0, %vector.ph1594 ], [ %index.next1598, %vector.body1586 ]
  %588 = add nuw nsw i64 %index1597, %144
  %589 = add nuw nsw i64 %index1597, 3600
  %590 = getelementptr double, double* %Packed_MemRef_call1, i64 %589
  %591 = bitcast double* %590 to <4 x double>*
  %wide.load1601 = load <4 x double>, <4 x double>* %591, align 8
  %592 = fmul fast <4 x double> %broadcast.splat1603, %wide.load1601
  %593 = getelementptr double, double* %Packed_MemRef_call2, i64 %589
  %594 = bitcast double* %593 to <4 x double>*
  %wide.load1604 = load <4 x double>, <4 x double>* %594, align 8
  %595 = fmul fast <4 x double> %broadcast.splat1606, %wide.load1604
  %596 = shl i64 %588, 3
  %597 = add i64 %596, %587
  %598 = getelementptr i8, i8* %call, i64 %597
  %599 = bitcast i8* %598 to <4 x double>*
  %wide.load1607 = load <4 x double>, <4 x double>* %599, align 8, !alias.scope !71, !noalias !73
  %600 = fadd fast <4 x double> %595, %592
  %601 = fmul fast <4 x double> %600, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %602 = fadd fast <4 x double> %601, %wide.load1607
  %603 = bitcast i8* %598 to <4 x double>*
  store <4 x double> %602, <4 x double>* %603, align 8, !alias.scope !71, !noalias !73
  %index.next1598 = add i64 %index1597, 4
  %604 = icmp eq i64 %index.next1598, %n.vec1596
  br i1 %604, label %middle.block1584, label %vector.body1586, !llvm.loop !128

middle.block1584:                                 ; preds = %vector.body1586
  %cmp.n1600 = icmp eq i64 %584, %n.vec1596
  br i1 %cmp.n1600, label %polly.loop_exit280.us.3, label %polly.loop_header278.us.3.preheader

polly.loop_header278.us.3.preheader:              ; preds = %polly.loop_header278.preheader.us.3, %middle.block1584
  %polly.indvar282.us.3.ph = phi i64 [ 0, %polly.loop_header278.preheader.us.3 ], [ %n.vec1596, %middle.block1584 ]
  br label %polly.loop_header278.us.3

polly.loop_header278.us.3:                        ; preds = %polly.loop_header278.us.3.preheader, %polly.loop_header278.us.3
  %polly.indvar282.us.3 = phi i64 [ %polly.indvar_next283.us.3, %polly.loop_header278.us.3 ], [ %polly.indvar282.us.3.ph, %polly.loop_header278.us.3.preheader ]
  %605 = add nuw nsw i64 %polly.indvar282.us.3, %144
  %polly.access.add.Packed_MemRef_call1286.us.3 = add nuw nsw i64 %polly.indvar282.us.3, 3600
  %polly.access.Packed_MemRef_call1287.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  %_p_scalar_288.us.3 = load double, double* %polly.access.Packed_MemRef_call1287.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_292.us.3, %_p_scalar_288.us.3
  %polly.access.Packed_MemRef_call2295.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1286.us.3
  %_p_scalar_296.us.3 = load double, double* %polly.access.Packed_MemRef_call2295.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_300.us.3, %_p_scalar_296.us.3
  %606 = shl i64 %605, 3
  %607 = add i64 %606, %587
  %scevgep301.us.3 = getelementptr i8, i8* %call, i64 %607
  %scevgep301302.us.3 = bitcast i8* %scevgep301.us.3 to double*
  %_p_scalar_303.us.3 = load double, double* %scevgep301302.us.3, align 8, !alias.scope !71, !noalias !73
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_303.us.3
  store double %p_add42.i118.us.3, double* %scevgep301302.us.3, align 8, !alias.scope !71, !noalias !73
  %polly.indvar_next283.us.3 = add nuw nsw i64 %polly.indvar282.us.3, 1
  %exitcond1104.3.not = icmp eq i64 %polly.indvar282.us.3, %smin.3
  br i1 %exitcond1104.3.not, label %polly.loop_exit280.us.3, label %polly.loop_header278.us.3, !llvm.loop !129

polly.loop_exit280.us.3:                          ; preds = %polly.loop_header278.us.3, %middle.block1584, %polly.loop_header270.us.3
  %polly.indvar_next275.us.3 = add nuw nsw i64 %polly.indvar274.us.3, 1
  %polly.loop_cond276.us.3 = icmp ult i64 %polly.indvar274.us.3, 7
  %indvars.iv.next1103.3 = add i64 %indvars.iv1102.3, 1
  %indvar.next1591 = add i64 %indvar1590, 1
  br i1 %polly.loop_cond276.us.3, label %polly.loop_header270.us.3, label %polly.loop_exit265

polly.loop_header428.1:                           ; preds = %polly.loop_header428, %polly.loop_header428.1
  %polly.indvar431.1 = phi i64 [ %polly.indvar_next432.1, %polly.loop_header428.1 ], [ 0, %polly.loop_header428 ]
  %608 = add nuw nsw i64 %polly.indvar431.1, %259
  %polly.access.mul.call2435.1 = mul nuw nsw i64 %608, 1000
  %polly.access.add.call2436.1 = add nuw nsw i64 %228, %polly.access.mul.call2435.1
  %polly.access.call2437.1 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.1
  %polly.access.call2437.load.1 = load double, double* %polly.access.call2437.1, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.1 = add nuw nsw i64 %polly.indvar431.1, 1200
  %polly.access.Packed_MemRef_call2311.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.1
  store double %polly.access.call2437.load.1, double* %polly.access.Packed_MemRef_call2311.1, align 8
  %polly.indvar_next432.1 = add nuw nsw i64 %polly.indvar431.1, 1
  %exitcond1113.1.not = icmp eq i64 %polly.indvar_next432.1, %indvars.iv1111
  br i1 %exitcond1113.1.not, label %polly.loop_header428.2, label %polly.loop_header428.1

polly.loop_header428.2:                           ; preds = %polly.loop_header428.1, %polly.loop_header428.2
  %polly.indvar431.2 = phi i64 [ %polly.indvar_next432.2, %polly.loop_header428.2 ], [ 0, %polly.loop_header428.1 ]
  %609 = add nuw nsw i64 %polly.indvar431.2, %259
  %polly.access.mul.call2435.2 = mul nuw nsw i64 %609, 1000
  %polly.access.add.call2436.2 = add nuw nsw i64 %229, %polly.access.mul.call2435.2
  %polly.access.call2437.2 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.2
  %polly.access.call2437.load.2 = load double, double* %polly.access.call2437.2, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.2 = add nuw nsw i64 %polly.indvar431.2, 2400
  %polly.access.Packed_MemRef_call2311.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.2
  store double %polly.access.call2437.load.2, double* %polly.access.Packed_MemRef_call2311.2, align 8
  %polly.indvar_next432.2 = add nuw nsw i64 %polly.indvar431.2, 1
  %exitcond1113.2.not = icmp eq i64 %polly.indvar_next432.2, %indvars.iv1111
  br i1 %exitcond1113.2.not, label %polly.loop_header428.3, label %polly.loop_header428.2

polly.loop_header428.3:                           ; preds = %polly.loop_header428.2, %polly.loop_header428.3
  %polly.indvar431.3 = phi i64 [ %polly.indvar_next432.3, %polly.loop_header428.3 ], [ 0, %polly.loop_header428.2 ]
  %610 = add nuw nsw i64 %polly.indvar431.3, %259
  %polly.access.mul.call2435.3 = mul nuw nsw i64 %610, 1000
  %polly.access.add.call2436.3 = add nuw nsw i64 %230, %polly.access.mul.call2435.3
  %polly.access.call2437.3 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2436.3
  %polly.access.call2437.load.3 = load double, double* %polly.access.call2437.3, align 8, !alias.scope !89, !noalias !94
  %polly.access.add.Packed_MemRef_call2311.3 = add nuw nsw i64 %polly.indvar431.3, 3600
  %polly.access.Packed_MemRef_call2311.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311.3
  store double %polly.access.call2437.load.3, double* %polly.access.Packed_MemRef_call2311.3, align 8
  %polly.indvar_next432.3 = add nuw nsw i64 %polly.indvar431.3, 1
  %exitcond1113.3.not = icmp eq i64 %polly.indvar_next432.3, %indvars.iv1111
  br i1 %exitcond1113.3.not, label %polly.loop_exit430.3, label %polly.loop_header428.3

polly.loop_exit430.3:                             ; preds = %polly.loop_header428.3
  %611 = mul nsw i64 %polly.indvar419, -4
  %polly.access.mul.call1462.us = mul nsw i64 %polly.indvar419, 4000
  %polly.access.add.call1463.us = add nuw nsw i64 %227, %polly.access.mul.call1462.us
  %polly.access.call1464.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us
  %612 = or i64 %259, 1
  %polly.access.mul.call1462.us.1 = mul nuw nsw i64 %612, 1000
  %polly.access.add.call1463.us.1 = add nuw nsw i64 %227, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1
  %613 = or i64 %259, 2
  %polly.access.mul.call1462.us.2 = mul nuw nsw i64 %613, 1000
  %polly.access.add.call1463.us.2 = add nuw nsw i64 %227, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2
  %614 = or i64 %259, 3
  %polly.access.mul.call1462.us.3 = mul nuw nsw i64 %614, 1000
  %polly.access.add.call1463.us.3 = add nuw nsw i64 %227, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3
  %polly.access.add.call1463.us.11213 = add nuw nsw i64 %228, %polly.access.mul.call1462.us
  %polly.access.call1464.us.11214 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.11213
  %polly.access.add.call1463.us.1.1 = add nuw nsw i64 %228, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1.1
  %polly.access.add.call1463.us.2.1 = add nuw nsw i64 %228, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2.1
  %polly.access.add.call1463.us.3.1 = add nuw nsw i64 %228, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3.1
  %polly.access.add.call1463.us.21218 = add nuw nsw i64 %229, %polly.access.mul.call1462.us
  %polly.access.call1464.us.21219 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.21218
  %polly.access.add.call1463.us.1.2 = add nuw nsw i64 %229, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1.2
  %polly.access.add.call1463.us.2.2 = add nuw nsw i64 %229, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2.2
  %polly.access.add.call1463.us.3.2 = add nuw nsw i64 %229, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3.2
  %polly.access.add.call1463.us.31223 = add nuw nsw i64 %230, %polly.access.mul.call1462.us
  %polly.access.call1464.us.31224 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.31223
  %polly.access.add.call1463.us.1.3 = add nuw nsw i64 %230, %polly.access.mul.call1462.us.1
  %polly.access.call1464.us.1.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.1.3
  %polly.access.add.call1463.us.2.3 = add nuw nsw i64 %230, %polly.access.mul.call1462.us.2
  %polly.access.call1464.us.2.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.2.3
  %polly.access.add.call1463.us.3.3 = add nuw nsw i64 %230, %polly.access.mul.call1462.us.3
  %polly.access.call1464.us.3.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1463.us.3.3
  br label %polly.loop_header439

polly.loop_header466.1:                           ; preds = %polly.loop_header466, %polly.loop_header466.1
  %polly.indvar470.1 = phi i64 [ %polly.indvar_next471.1, %polly.loop_header466.1 ], [ %287, %polly.loop_header466 ]
  %615 = add nuw nsw i64 %polly.indvar470.1, %259
  %polly.access.mul.call1474.1 = mul nsw i64 %615, 1000
  %polly.access.add.call1475.1 = add nuw nsw i64 %228, %polly.access.mul.call1474.1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.1 = add nuw nsw i64 %polly.indvar470.1, 1200
  %polly.access.Packed_MemRef_call1309479.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1309479.1, align 8
  %polly.indvar_next471.1 = add nuw nsw i64 %polly.indvar470.1, 1
  %polly.loop_cond472.not.not.1 = icmp slt i64 %polly.indvar470.1, %288
  br i1 %polly.loop_cond472.not.not.1, label %polly.loop_header466.1, label %polly.loop_header466.2

polly.loop_header466.2:                           ; preds = %polly.loop_header466.1, %polly.loop_header466.2
  %polly.indvar470.2 = phi i64 [ %polly.indvar_next471.2, %polly.loop_header466.2 ], [ %287, %polly.loop_header466.1 ]
  %616 = add nuw nsw i64 %polly.indvar470.2, %259
  %polly.access.mul.call1474.2 = mul nsw i64 %616, 1000
  %polly.access.add.call1475.2 = add nuw nsw i64 %229, %polly.access.mul.call1474.2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.2 = add nuw nsw i64 %polly.indvar470.2, 2400
  %polly.access.Packed_MemRef_call1309479.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1309479.2, align 8
  %polly.indvar_next471.2 = add nuw nsw i64 %polly.indvar470.2, 1
  %polly.loop_cond472.not.not.2 = icmp slt i64 %polly.indvar470.2, %288
  br i1 %polly.loop_cond472.not.not.2, label %polly.loop_header466.2, label %polly.loop_header466.3

polly.loop_header466.3:                           ; preds = %polly.loop_header466.2, %polly.loop_header466.3
  %polly.indvar470.3 = phi i64 [ %polly.indvar_next471.3, %polly.loop_header466.3 ], [ %287, %polly.loop_header466.2 ]
  %617 = add nuw nsw i64 %polly.indvar470.3, %259
  %polly.access.mul.call1474.3 = mul nsw i64 %617, 1000
  %polly.access.add.call1475.3 = add nuw nsw i64 %230, %polly.access.mul.call1474.3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.3 = add nuw nsw i64 %polly.indvar470.3, 3600
  %polly.access.Packed_MemRef_call1309479.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1309479.3, align 8
  %polly.indvar_next471.3 = add nuw nsw i64 %polly.indvar470.3, 1
  %polly.loop_cond472.not.not.3 = icmp slt i64 %polly.indvar470.3, %288
  br i1 %polly.loop_cond472.not.not.3, label %polly.loop_header466.3, label %polly.loop_header480.preheader

polly.loop_header466.us.1:                        ; preds = %polly.loop_exit468.us, %polly.loop_header466.us.1
  %polly.indvar470.us.1 = phi i64 [ %polly.indvar_next471.us.1, %polly.loop_header466.us.1 ], [ %287, %polly.loop_exit468.us ]
  %618 = add nuw nsw i64 %polly.indvar470.us.1, %259
  %polly.access.mul.call1474.us.1 = mul nsw i64 %618, 1000
  %polly.access.add.call1475.us.1 = add nuw nsw i64 %228, %polly.access.mul.call1474.us.1
  %polly.access.call1476.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us.1
  %polly.access.call1476.load.us.1 = load double, double* %polly.access.call1476.us.1, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1200
  %polly.access.Packed_MemRef_call1309479.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us.1
  store double %polly.access.call1476.load.us.1, double* %polly.access.Packed_MemRef_call1309479.us.1, align 8
  %polly.indvar_next471.us.1 = add nuw nsw i64 %polly.indvar470.us.1, 1
  %polly.loop_cond472.not.not.us.1 = icmp slt i64 %polly.indvar470.us.1, %288
  br i1 %polly.loop_cond472.not.not.us.1, label %polly.loop_header466.us.1, label %polly.loop_exit468.us.1

polly.loop_exit468.us.1.critedge:                 ; preds = %polly.loop_header445.us.preheader
  %polly.access.call1464.load.us.11215.c = load double, double* %polly.access.call1464.us.11214, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.11215.c, double* %214, align 8
  %polly.access.call1464.load.us.1.1.c = load double, double* %polly.access.call1464.us.1.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1.1.c, double* %215, align 8
  %polly.access.call1464.load.us.2.1.c = load double, double* %polly.access.call1464.us.2.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2.1.c, double* %216, align 8
  %polly.access.call1464.load.us.3.1.c = load double, double* %polly.access.call1464.us.3.1, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3.1.c, double* %217, align 8
  br label %polly.loop_exit468.us.1

polly.loop_exit468.us.1:                          ; preds = %polly.loop_header466.us.1, %polly.loop_exit468.us.1.critedge
  %polly.access.call1464.load.us.21220 = load double, double* %polly.access.call1464.us.21219, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.21220, double* %218, align 8
  %polly.access.call1464.load.us.1.2 = load double, double* %polly.access.call1464.us.1.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1.2, double* %219, align 8
  %polly.access.call1464.load.us.2.2 = load double, double* %polly.access.call1464.us.2.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2.2, double* %220, align 8
  %polly.access.call1464.load.us.3.2 = load double, double* %polly.access.call1464.us.3.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3.2, double* %221, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader.critedge, label %polly.loop_header466.us.2

polly.loop_header466.us.2:                        ; preds = %polly.loop_exit468.us.1, %polly.loop_header466.us.2
  %polly.indvar470.us.2 = phi i64 [ %polly.indvar_next471.us.2, %polly.loop_header466.us.2 ], [ %287, %polly.loop_exit468.us.1 ]
  %619 = add nuw nsw i64 %polly.indvar470.us.2, %259
  %polly.access.mul.call1474.us.2 = mul nsw i64 %619, 1000
  %polly.access.add.call1475.us.2 = add nuw nsw i64 %229, %polly.access.mul.call1474.us.2
  %polly.access.call1476.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us.2
  %polly.access.call1476.load.us.2 = load double, double* %polly.access.call1476.us.2, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 2400
  %polly.access.Packed_MemRef_call1309479.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us.2
  store double %polly.access.call1476.load.us.2, double* %polly.access.Packed_MemRef_call1309479.us.2, align 8
  %polly.indvar_next471.us.2 = add nuw nsw i64 %polly.indvar470.us.2, 1
  %polly.loop_cond472.not.not.us.2 = icmp slt i64 %polly.indvar470.us.2, %288
  br i1 %polly.loop_cond472.not.not.us.2, label %polly.loop_header466.us.2, label %polly.loop_exit468.us.2

polly.loop_exit468.us.2.critedge:                 ; preds = %polly.loop_exit468.us
  %polly.access.call1464.load.us.21220.c = load double, double* %polly.access.call1464.us.21219, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.21220.c, double* %218, align 8
  %polly.access.call1464.load.us.1.2.c = load double, double* %polly.access.call1464.us.1.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1.2.c, double* %219, align 8
  %polly.access.call1464.load.us.2.2.c = load double, double* %polly.access.call1464.us.2.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2.2.c, double* %220, align 8
  %polly.access.call1464.load.us.3.2.c = load double, double* %polly.access.call1464.us.3.2, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3.2.c, double* %221, align 8
  br label %polly.loop_exit468.us.2

polly.loop_exit468.us.2:                          ; preds = %polly.loop_header466.us.2, %polly.loop_exit468.us.2.critedge
  %polly.access.call1464.load.us.31225 = load double, double* %polly.access.call1464.us.31224, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.31225, double* %222, align 8
  %polly.access.call1464.load.us.1.3 = load double, double* %polly.access.call1464.us.1.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.1.3, double* %223, align 8
  %polly.access.call1464.load.us.2.3 = load double, double* %polly.access.call1464.us.2.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.2.3, double* %224, align 8
  %polly.access.call1464.load.us.3.3 = load double, double* %polly.access.call1464.us.3.3, align 8, !alias.scope !88, !noalias !95
  store double %polly.access.call1464.load.us.3.3, double* %225, align 8
  br i1 %polly.loop_guard469.not, label %polly.loop_header480.preheader, label %polly.loop_header466.us.3

polly.loop_header466.us.3:                        ; preds = %polly.loop_exit468.us.2, %polly.loop_header466.us.3
  %polly.indvar470.us.3 = phi i64 [ %polly.indvar_next471.us.3, %polly.loop_header466.us.3 ], [ %287, %polly.loop_exit468.us.2 ]
  %620 = add nuw nsw i64 %polly.indvar470.us.3, %259
  %polly.access.mul.call1474.us.3 = mul nsw i64 %620, 1000
  %polly.access.add.call1475.us.3 = add nuw nsw i64 %230, %polly.access.mul.call1474.us.3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !88, !noalias !95
  %polly.access.add.Packed_MemRef_call1309478.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 3600
  %polly.access.Packed_MemRef_call1309479.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1309479.us.3, align 8
  %polly.indvar_next471.us.3 = add nuw nsw i64 %polly.indvar470.us.3, 1
  %polly.loop_cond472.not.not.us.3 = icmp slt i64 %polly.indvar470.us.3, %288
  br i1 %polly.loop_cond472.not.not.us.3, label %polly.loop_header466.us.3, label %polly.loop_header480.preheader

polly.loop_header487.us.1:                        ; preds = %polly.loop_exit497.us, %polly.loop_exit497.us.1
  %indvar1518 = phi i64 [ %indvar.next1519, %polly.loop_exit497.us.1 ], [ 0, %polly.loop_exit497.us ]
  %indvars.iv1127.1 = phi i64 [ %indvars.iv.next1128.1, %polly.loop_exit497.us.1 ], [ %282, %polly.loop_exit497.us ]
  %polly.indvar491.us.1 = phi i64 [ %polly.indvar_next492.us.1, %polly.loop_exit497.us.1 ], [ %292, %polly.loop_exit497.us ]
  %621 = add i64 %271, %indvar1518
  %smin1520 = call i64 @llvm.smin.i64(i64 %621, i64 3)
  %622 = add nsw i64 %smin1520, 1
  %smin1129.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1127.1, i64 3)
  %623 = add nsw i64 %polly.indvar491.us.1, %285
  %polly.loop_guard498.us.11247 = icmp sgt i64 %623, -1
  br i1 %polly.loop_guard498.us.11247, label %polly.loop_header495.preheader.us.1, label %polly.loop_exit497.us.1

polly.loop_header495.preheader.us.1:              ; preds = %polly.loop_header487.us.1
  %624 = add nuw nsw i64 %polly.indvar491.us.1, %284
  %polly.access.add.Packed_MemRef_call2311507.us.1 = add nuw nsw i64 %623, 1200
  %polly.access.Packed_MemRef_call2311508.us.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507.us.1
  %_p_scalar_509.us.1 = load double, double* %polly.access.Packed_MemRef_call2311508.us.1, align 8
  %polly.access.Packed_MemRef_call1309516.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507.us.1
  %_p_scalar_517.us.1 = load double, double* %polly.access.Packed_MemRef_call1309516.us.1, align 8
  %625 = mul i64 %624, 9600
  %min.iters.check1521 = icmp ult i64 %622, 4
  br i1 %min.iters.check1521, label %polly.loop_header495.us.1.preheader, label %vector.ph1522

vector.ph1522:                                    ; preds = %polly.loop_header495.preheader.us.1
  %n.vec1524 = and i64 %622, -4
  %broadcast.splatinsert1530 = insertelement <4 x double> poison, double %_p_scalar_509.us.1, i32 0
  %broadcast.splat1531 = shufflevector <4 x double> %broadcast.splatinsert1530, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1533 = insertelement <4 x double> poison, double %_p_scalar_517.us.1, i32 0
  %broadcast.splat1534 = shufflevector <4 x double> %broadcast.splatinsert1533, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1516

vector.body1516:                                  ; preds = %vector.body1516, %vector.ph1522
  %index1525 = phi i64 [ 0, %vector.ph1522 ], [ %index.next1526, %vector.body1516 ]
  %626 = add nuw nsw i64 %index1525, %259
  %627 = add nuw nsw i64 %index1525, 1200
  %628 = getelementptr double, double* %Packed_MemRef_call1309, i64 %627
  %629 = bitcast double* %628 to <4 x double>*
  %wide.load1529 = load <4 x double>, <4 x double>* %629, align 8
  %630 = fmul fast <4 x double> %broadcast.splat1531, %wide.load1529
  %631 = getelementptr double, double* %Packed_MemRef_call2311, i64 %627
  %632 = bitcast double* %631 to <4 x double>*
  %wide.load1532 = load <4 x double>, <4 x double>* %632, align 8
  %633 = fmul fast <4 x double> %broadcast.splat1534, %wide.load1532
  %634 = shl i64 %626, 3
  %635 = add i64 %634, %625
  %636 = getelementptr i8, i8* %call, i64 %635
  %637 = bitcast i8* %636 to <4 x double>*
  %wide.load1535 = load <4 x double>, <4 x double>* %637, align 8, !alias.scope !85, !noalias !87
  %638 = fadd fast <4 x double> %633, %630
  %639 = fmul fast <4 x double> %638, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %640 = fadd fast <4 x double> %639, %wide.load1535
  %641 = bitcast i8* %636 to <4 x double>*
  store <4 x double> %640, <4 x double>* %641, align 8, !alias.scope !85, !noalias !87
  %index.next1526 = add i64 %index1525, 4
  %642 = icmp eq i64 %index.next1526, %n.vec1524
  br i1 %642, label %middle.block1514, label %vector.body1516, !llvm.loop !130

middle.block1514:                                 ; preds = %vector.body1516
  %cmp.n1528 = icmp eq i64 %622, %n.vec1524
  br i1 %cmp.n1528, label %polly.loop_exit497.us.1, label %polly.loop_header495.us.1.preheader

polly.loop_header495.us.1.preheader:              ; preds = %polly.loop_header495.preheader.us.1, %middle.block1514
  %polly.indvar499.us.1.ph = phi i64 [ 0, %polly.loop_header495.preheader.us.1 ], [ %n.vec1524, %middle.block1514 ]
  br label %polly.loop_header495.us.1

polly.loop_header495.us.1:                        ; preds = %polly.loop_header495.us.1.preheader, %polly.loop_header495.us.1
  %polly.indvar499.us.1 = phi i64 [ %polly.indvar_next500.us.1, %polly.loop_header495.us.1 ], [ %polly.indvar499.us.1.ph, %polly.loop_header495.us.1.preheader ]
  %643 = add nuw nsw i64 %polly.indvar499.us.1, %259
  %polly.access.add.Packed_MemRef_call1309503.us.1 = add nuw nsw i64 %polly.indvar499.us.1, 1200
  %polly.access.Packed_MemRef_call1309504.us.1 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call1309504.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_509.us.1, %_p_scalar_505.us.1
  %polly.access.Packed_MemRef_call2311512.us.1 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503.us.1
  %_p_scalar_513.us.1 = load double, double* %polly.access.Packed_MemRef_call2311512.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_517.us.1, %_p_scalar_513.us.1
  %644 = shl i64 %643, 3
  %645 = add i64 %644, %625
  %scevgep518.us.1 = getelementptr i8, i8* %call, i64 %645
  %scevgep518519.us.1 = bitcast i8* %scevgep518.us.1 to double*
  %_p_scalar_520.us.1 = load double, double* %scevgep518519.us.1, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_520.us.1
  store double %p_add42.i79.us.1, double* %scevgep518519.us.1, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next500.us.1 = add nuw nsw i64 %polly.indvar499.us.1, 1
  %exitcond1130.1.not = icmp eq i64 %polly.indvar499.us.1, %smin1129.1
  br i1 %exitcond1130.1.not, label %polly.loop_exit497.us.1, label %polly.loop_header495.us.1, !llvm.loop !131

polly.loop_exit497.us.1:                          ; preds = %polly.loop_header495.us.1, %middle.block1514, %polly.loop_header487.us.1
  %polly.indvar_next492.us.1 = add nuw nsw i64 %polly.indvar491.us.1, 1
  %polly.loop_cond493.us.1 = icmp ult i64 %polly.indvar491.us.1, 7
  %indvars.iv.next1128.1 = add i64 %indvars.iv1127.1, 1
  %indvar.next1519 = add i64 %indvar1518, 1
  br i1 %polly.loop_cond493.us.1, label %polly.loop_header487.us.1, label %polly.loop_header487.us.2

polly.loop_header487.us.2:                        ; preds = %polly.loop_exit497.us.1, %polly.loop_exit497.us.2
  %indvar1496 = phi i64 [ %indvar.next1497, %polly.loop_exit497.us.2 ], [ 0, %polly.loop_exit497.us.1 ]
  %indvars.iv1127.2 = phi i64 [ %indvars.iv.next1128.2, %polly.loop_exit497.us.2 ], [ %282, %polly.loop_exit497.us.1 ]
  %polly.indvar491.us.2 = phi i64 [ %polly.indvar_next492.us.2, %polly.loop_exit497.us.2 ], [ %292, %polly.loop_exit497.us.1 ]
  %646 = add i64 %276, %indvar1496
  %smin1498 = call i64 @llvm.smin.i64(i64 %646, i64 3)
  %647 = add nsw i64 %smin1498, 1
  %smin1129.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1127.2, i64 3)
  %648 = add nsw i64 %polly.indvar491.us.2, %285
  %polly.loop_guard498.us.21248 = icmp sgt i64 %648, -1
  br i1 %polly.loop_guard498.us.21248, label %polly.loop_header495.preheader.us.2, label %polly.loop_exit497.us.2

polly.loop_header495.preheader.us.2:              ; preds = %polly.loop_header487.us.2
  %649 = add nuw nsw i64 %polly.indvar491.us.2, %284
  %polly.access.add.Packed_MemRef_call2311507.us.2 = add nuw nsw i64 %648, 2400
  %polly.access.Packed_MemRef_call2311508.us.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507.us.2
  %_p_scalar_509.us.2 = load double, double* %polly.access.Packed_MemRef_call2311508.us.2, align 8
  %polly.access.Packed_MemRef_call1309516.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507.us.2
  %_p_scalar_517.us.2 = load double, double* %polly.access.Packed_MemRef_call1309516.us.2, align 8
  %650 = mul i64 %649, 9600
  %min.iters.check1499 = icmp ult i64 %647, 4
  br i1 %min.iters.check1499, label %polly.loop_header495.us.2.preheader, label %vector.ph1500

vector.ph1500:                                    ; preds = %polly.loop_header495.preheader.us.2
  %n.vec1502 = and i64 %647, -4
  %broadcast.splatinsert1508 = insertelement <4 x double> poison, double %_p_scalar_509.us.2, i32 0
  %broadcast.splat1509 = shufflevector <4 x double> %broadcast.splatinsert1508, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1511 = insertelement <4 x double> poison, double %_p_scalar_517.us.2, i32 0
  %broadcast.splat1512 = shufflevector <4 x double> %broadcast.splatinsert1511, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1494

vector.body1494:                                  ; preds = %vector.body1494, %vector.ph1500
  %index1503 = phi i64 [ 0, %vector.ph1500 ], [ %index.next1504, %vector.body1494 ]
  %651 = add nuw nsw i64 %index1503, %259
  %652 = add nuw nsw i64 %index1503, 2400
  %653 = getelementptr double, double* %Packed_MemRef_call1309, i64 %652
  %654 = bitcast double* %653 to <4 x double>*
  %wide.load1507 = load <4 x double>, <4 x double>* %654, align 8
  %655 = fmul fast <4 x double> %broadcast.splat1509, %wide.load1507
  %656 = getelementptr double, double* %Packed_MemRef_call2311, i64 %652
  %657 = bitcast double* %656 to <4 x double>*
  %wide.load1510 = load <4 x double>, <4 x double>* %657, align 8
  %658 = fmul fast <4 x double> %broadcast.splat1512, %wide.load1510
  %659 = shl i64 %651, 3
  %660 = add i64 %659, %650
  %661 = getelementptr i8, i8* %call, i64 %660
  %662 = bitcast i8* %661 to <4 x double>*
  %wide.load1513 = load <4 x double>, <4 x double>* %662, align 8, !alias.scope !85, !noalias !87
  %663 = fadd fast <4 x double> %658, %655
  %664 = fmul fast <4 x double> %663, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %665 = fadd fast <4 x double> %664, %wide.load1513
  %666 = bitcast i8* %661 to <4 x double>*
  store <4 x double> %665, <4 x double>* %666, align 8, !alias.scope !85, !noalias !87
  %index.next1504 = add i64 %index1503, 4
  %667 = icmp eq i64 %index.next1504, %n.vec1502
  br i1 %667, label %middle.block1492, label %vector.body1494, !llvm.loop !132

middle.block1492:                                 ; preds = %vector.body1494
  %cmp.n1506 = icmp eq i64 %647, %n.vec1502
  br i1 %cmp.n1506, label %polly.loop_exit497.us.2, label %polly.loop_header495.us.2.preheader

polly.loop_header495.us.2.preheader:              ; preds = %polly.loop_header495.preheader.us.2, %middle.block1492
  %polly.indvar499.us.2.ph = phi i64 [ 0, %polly.loop_header495.preheader.us.2 ], [ %n.vec1502, %middle.block1492 ]
  br label %polly.loop_header495.us.2

polly.loop_header495.us.2:                        ; preds = %polly.loop_header495.us.2.preheader, %polly.loop_header495.us.2
  %polly.indvar499.us.2 = phi i64 [ %polly.indvar_next500.us.2, %polly.loop_header495.us.2 ], [ %polly.indvar499.us.2.ph, %polly.loop_header495.us.2.preheader ]
  %668 = add nuw nsw i64 %polly.indvar499.us.2, %259
  %polly.access.add.Packed_MemRef_call1309503.us.2 = add nuw nsw i64 %polly.indvar499.us.2, 2400
  %polly.access.Packed_MemRef_call1309504.us.2 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call1309504.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_509.us.2, %_p_scalar_505.us.2
  %polly.access.Packed_MemRef_call2311512.us.2 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503.us.2
  %_p_scalar_513.us.2 = load double, double* %polly.access.Packed_MemRef_call2311512.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_517.us.2, %_p_scalar_513.us.2
  %669 = shl i64 %668, 3
  %670 = add i64 %669, %650
  %scevgep518.us.2 = getelementptr i8, i8* %call, i64 %670
  %scevgep518519.us.2 = bitcast i8* %scevgep518.us.2 to double*
  %_p_scalar_520.us.2 = load double, double* %scevgep518519.us.2, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_520.us.2
  store double %p_add42.i79.us.2, double* %scevgep518519.us.2, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next500.us.2 = add nuw nsw i64 %polly.indvar499.us.2, 1
  %exitcond1130.2.not = icmp eq i64 %polly.indvar499.us.2, %smin1129.2
  br i1 %exitcond1130.2.not, label %polly.loop_exit497.us.2, label %polly.loop_header495.us.2, !llvm.loop !133

polly.loop_exit497.us.2:                          ; preds = %polly.loop_header495.us.2, %middle.block1492, %polly.loop_header487.us.2
  %polly.indvar_next492.us.2 = add nuw nsw i64 %polly.indvar491.us.2, 1
  %polly.loop_cond493.us.2 = icmp ult i64 %polly.indvar491.us.2, 7
  %indvars.iv.next1128.2 = add i64 %indvars.iv1127.2, 1
  %indvar.next1497 = add i64 %indvar1496, 1
  br i1 %polly.loop_cond493.us.2, label %polly.loop_header487.us.2, label %polly.loop_header487.us.3

polly.loop_header487.us.3:                        ; preds = %polly.loop_exit497.us.2, %polly.loop_exit497.us.3
  %indvar1474 = phi i64 [ %indvar.next1475, %polly.loop_exit497.us.3 ], [ 0, %polly.loop_exit497.us.2 ]
  %indvars.iv1127.3 = phi i64 [ %indvars.iv.next1128.3, %polly.loop_exit497.us.3 ], [ %282, %polly.loop_exit497.us.2 ]
  %polly.indvar491.us.3 = phi i64 [ %polly.indvar_next492.us.3, %polly.loop_exit497.us.3 ], [ %292, %polly.loop_exit497.us.2 ]
  %671 = add i64 %281, %indvar1474
  %smin1476 = call i64 @llvm.smin.i64(i64 %671, i64 3)
  %672 = add nsw i64 %smin1476, 1
  %smin1129.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1127.3, i64 3)
  %673 = add nsw i64 %polly.indvar491.us.3, %285
  %polly.loop_guard498.us.31249 = icmp sgt i64 %673, -1
  br i1 %polly.loop_guard498.us.31249, label %polly.loop_header495.preheader.us.3, label %polly.loop_exit497.us.3

polly.loop_header495.preheader.us.3:              ; preds = %polly.loop_header487.us.3
  %674 = add nuw nsw i64 %polly.indvar491.us.3, %284
  %polly.access.add.Packed_MemRef_call2311507.us.3 = add nuw nsw i64 %673, 3600
  %polly.access.Packed_MemRef_call2311508.us.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call2311507.us.3
  %_p_scalar_509.us.3 = load double, double* %polly.access.Packed_MemRef_call2311508.us.3, align 8
  %polly.access.Packed_MemRef_call1309516.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call2311507.us.3
  %_p_scalar_517.us.3 = load double, double* %polly.access.Packed_MemRef_call1309516.us.3, align 8
  %675 = mul i64 %674, 9600
  %min.iters.check1477 = icmp ult i64 %672, 4
  br i1 %min.iters.check1477, label %polly.loop_header495.us.3.preheader, label %vector.ph1478

vector.ph1478:                                    ; preds = %polly.loop_header495.preheader.us.3
  %n.vec1480 = and i64 %672, -4
  %broadcast.splatinsert1486 = insertelement <4 x double> poison, double %_p_scalar_509.us.3, i32 0
  %broadcast.splat1487 = shufflevector <4 x double> %broadcast.splatinsert1486, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1489 = insertelement <4 x double> poison, double %_p_scalar_517.us.3, i32 0
  %broadcast.splat1490 = shufflevector <4 x double> %broadcast.splatinsert1489, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1470

vector.body1470:                                  ; preds = %vector.body1470, %vector.ph1478
  %index1481 = phi i64 [ 0, %vector.ph1478 ], [ %index.next1482, %vector.body1470 ]
  %676 = add nuw nsw i64 %index1481, %259
  %677 = add nuw nsw i64 %index1481, 3600
  %678 = getelementptr double, double* %Packed_MemRef_call1309, i64 %677
  %679 = bitcast double* %678 to <4 x double>*
  %wide.load1485 = load <4 x double>, <4 x double>* %679, align 8
  %680 = fmul fast <4 x double> %broadcast.splat1487, %wide.load1485
  %681 = getelementptr double, double* %Packed_MemRef_call2311, i64 %677
  %682 = bitcast double* %681 to <4 x double>*
  %wide.load1488 = load <4 x double>, <4 x double>* %682, align 8
  %683 = fmul fast <4 x double> %broadcast.splat1490, %wide.load1488
  %684 = shl i64 %676, 3
  %685 = add i64 %684, %675
  %686 = getelementptr i8, i8* %call, i64 %685
  %687 = bitcast i8* %686 to <4 x double>*
  %wide.load1491 = load <4 x double>, <4 x double>* %687, align 8, !alias.scope !85, !noalias !87
  %688 = fadd fast <4 x double> %683, %680
  %689 = fmul fast <4 x double> %688, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %690 = fadd fast <4 x double> %689, %wide.load1491
  %691 = bitcast i8* %686 to <4 x double>*
  store <4 x double> %690, <4 x double>* %691, align 8, !alias.scope !85, !noalias !87
  %index.next1482 = add i64 %index1481, 4
  %692 = icmp eq i64 %index.next1482, %n.vec1480
  br i1 %692, label %middle.block1468, label %vector.body1470, !llvm.loop !134

middle.block1468:                                 ; preds = %vector.body1470
  %cmp.n1484 = icmp eq i64 %672, %n.vec1480
  br i1 %cmp.n1484, label %polly.loop_exit497.us.3, label %polly.loop_header495.us.3.preheader

polly.loop_header495.us.3.preheader:              ; preds = %polly.loop_header495.preheader.us.3, %middle.block1468
  %polly.indvar499.us.3.ph = phi i64 [ 0, %polly.loop_header495.preheader.us.3 ], [ %n.vec1480, %middle.block1468 ]
  br label %polly.loop_header495.us.3

polly.loop_header495.us.3:                        ; preds = %polly.loop_header495.us.3.preheader, %polly.loop_header495.us.3
  %polly.indvar499.us.3 = phi i64 [ %polly.indvar_next500.us.3, %polly.loop_header495.us.3 ], [ %polly.indvar499.us.3.ph, %polly.loop_header495.us.3.preheader ]
  %693 = add nuw nsw i64 %polly.indvar499.us.3, %259
  %polly.access.add.Packed_MemRef_call1309503.us.3 = add nuw nsw i64 %polly.indvar499.us.3, 3600
  %polly.access.Packed_MemRef_call1309504.us.3 = getelementptr double, double* %Packed_MemRef_call1309, i64 %polly.access.add.Packed_MemRef_call1309503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call1309504.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_509.us.3, %_p_scalar_505.us.3
  %polly.access.Packed_MemRef_call2311512.us.3 = getelementptr double, double* %Packed_MemRef_call2311, i64 %polly.access.add.Packed_MemRef_call1309503.us.3
  %_p_scalar_513.us.3 = load double, double* %polly.access.Packed_MemRef_call2311512.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_517.us.3, %_p_scalar_513.us.3
  %694 = shl i64 %693, 3
  %695 = add i64 %694, %675
  %scevgep518.us.3 = getelementptr i8, i8* %call, i64 %695
  %scevgep518519.us.3 = bitcast i8* %scevgep518.us.3 to double*
  %_p_scalar_520.us.3 = load double, double* %scevgep518519.us.3, align 8, !alias.scope !85, !noalias !87
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_520.us.3
  store double %p_add42.i79.us.3, double* %scevgep518519.us.3, align 8, !alias.scope !85, !noalias !87
  %polly.indvar_next500.us.3 = add nuw nsw i64 %polly.indvar499.us.3, 1
  %exitcond1130.3.not = icmp eq i64 %polly.indvar499.us.3, %smin1129.3
  br i1 %exitcond1130.3.not, label %polly.loop_exit497.us.3, label %polly.loop_header495.us.3, !llvm.loop !135

polly.loop_exit497.us.3:                          ; preds = %polly.loop_header495.us.3, %middle.block1468, %polly.loop_header487.us.3
  %polly.indvar_next492.us.3 = add nuw nsw i64 %polly.indvar491.us.3, 1
  %polly.loop_cond493.us.3 = icmp ult i64 %polly.indvar491.us.3, 7
  %indvars.iv.next1128.3 = add i64 %indvars.iv1127.3, 1
  %indvar.next1475 = add i64 %indvar1474, 1
  br i1 %polly.loop_cond493.us.3, label %polly.loop_header487.us.3, label %polly.loop_exit482

polly.loop_header645.1:                           ; preds = %polly.loop_header645, %polly.loop_header645.1
  %polly.indvar648.1 = phi i64 [ %polly.indvar_next649.1, %polly.loop_header645.1 ], [ 0, %polly.loop_header645 ]
  %696 = add nuw nsw i64 %polly.indvar648.1, %374
  %polly.access.mul.call2652.1 = mul nuw nsw i64 %696, 1000
  %polly.access.add.call2653.1 = add nuw nsw i64 %343, %polly.access.mul.call2652.1
  %polly.access.call2654.1 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.1
  %polly.access.call2654.load.1 = load double, double* %polly.access.call2654.1, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.1 = add nuw nsw i64 %polly.indvar648.1, 1200
  %polly.access.Packed_MemRef_call2528.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.1
  store double %polly.access.call2654.load.1, double* %polly.access.Packed_MemRef_call2528.1, align 8
  %polly.indvar_next649.1 = add nuw nsw i64 %polly.indvar648.1, 1
  %exitcond1139.1.not = icmp eq i64 %polly.indvar_next649.1, %indvars.iv1137
  br i1 %exitcond1139.1.not, label %polly.loop_header645.2, label %polly.loop_header645.1

polly.loop_header645.2:                           ; preds = %polly.loop_header645.1, %polly.loop_header645.2
  %polly.indvar648.2 = phi i64 [ %polly.indvar_next649.2, %polly.loop_header645.2 ], [ 0, %polly.loop_header645.1 ]
  %697 = add nuw nsw i64 %polly.indvar648.2, %374
  %polly.access.mul.call2652.2 = mul nuw nsw i64 %697, 1000
  %polly.access.add.call2653.2 = add nuw nsw i64 %344, %polly.access.mul.call2652.2
  %polly.access.call2654.2 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.2
  %polly.access.call2654.load.2 = load double, double* %polly.access.call2654.2, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.2 = add nuw nsw i64 %polly.indvar648.2, 2400
  %polly.access.Packed_MemRef_call2528.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.2
  store double %polly.access.call2654.load.2, double* %polly.access.Packed_MemRef_call2528.2, align 8
  %polly.indvar_next649.2 = add nuw nsw i64 %polly.indvar648.2, 1
  %exitcond1139.2.not = icmp eq i64 %polly.indvar_next649.2, %indvars.iv1137
  br i1 %exitcond1139.2.not, label %polly.loop_header645.3, label %polly.loop_header645.2

polly.loop_header645.3:                           ; preds = %polly.loop_header645.2, %polly.loop_header645.3
  %polly.indvar648.3 = phi i64 [ %polly.indvar_next649.3, %polly.loop_header645.3 ], [ 0, %polly.loop_header645.2 ]
  %698 = add nuw nsw i64 %polly.indvar648.3, %374
  %polly.access.mul.call2652.3 = mul nuw nsw i64 %698, 1000
  %polly.access.add.call2653.3 = add nuw nsw i64 %345, %polly.access.mul.call2652.3
  %polly.access.call2654.3 = getelementptr double, double* %polly.access.cast.call2752, i64 %polly.access.add.call2653.3
  %polly.access.call2654.load.3 = load double, double* %polly.access.call2654.3, align 8, !alias.scope !102, !noalias !107
  %polly.access.add.Packed_MemRef_call2528.3 = add nuw nsw i64 %polly.indvar648.3, 3600
  %polly.access.Packed_MemRef_call2528.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528.3
  store double %polly.access.call2654.load.3, double* %polly.access.Packed_MemRef_call2528.3, align 8
  %polly.indvar_next649.3 = add nuw nsw i64 %polly.indvar648.3, 1
  %exitcond1139.3.not = icmp eq i64 %polly.indvar_next649.3, %indvars.iv1137
  br i1 %exitcond1139.3.not, label %polly.loop_exit647.3, label %polly.loop_header645.3

polly.loop_exit647.3:                             ; preds = %polly.loop_header645.3
  %699 = mul nsw i64 %polly.indvar636, -4
  %polly.access.mul.call1679.us = mul nsw i64 %polly.indvar636, 4000
  %polly.access.add.call1680.us = add nuw nsw i64 %342, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us
  %700 = or i64 %374, 1
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %700, 1000
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %342, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1
  %701 = or i64 %374, 2
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %701, 1000
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %342, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2
  %702 = or i64 %374, 3
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %702, 1000
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %342, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3
  %polly.access.add.call1680.us.11228 = add nuw nsw i64 %343, %polly.access.mul.call1679.us
  %polly.access.call1681.us.11229 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.11228
  %polly.access.add.call1680.us.1.1 = add nuw nsw i64 %343, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1.1
  %polly.access.add.call1680.us.2.1 = add nuw nsw i64 %343, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2.1
  %polly.access.add.call1680.us.3.1 = add nuw nsw i64 %343, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3.1
  %polly.access.add.call1680.us.21233 = add nuw nsw i64 %344, %polly.access.mul.call1679.us
  %polly.access.call1681.us.21234 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.21233
  %polly.access.add.call1680.us.1.2 = add nuw nsw i64 %344, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1.2
  %polly.access.add.call1680.us.2.2 = add nuw nsw i64 %344, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2.2
  %polly.access.add.call1680.us.3.2 = add nuw nsw i64 %344, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3.2
  %polly.access.add.call1680.us.31238 = add nuw nsw i64 %345, %polly.access.mul.call1679.us
  %polly.access.call1681.us.31239 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.31238
  %polly.access.add.call1680.us.1.3 = add nuw nsw i64 %345, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.1.3
  %polly.access.add.call1680.us.2.3 = add nuw nsw i64 %345, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.2.3
  %polly.access.add.call1680.us.3.3 = add nuw nsw i64 %345, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1680.us.3.3
  br label %polly.loop_header656

polly.loop_header683.1:                           ; preds = %polly.loop_header683, %polly.loop_header683.1
  %polly.indvar687.1 = phi i64 [ %polly.indvar_next688.1, %polly.loop_header683.1 ], [ %402, %polly.loop_header683 ]
  %703 = add nuw nsw i64 %polly.indvar687.1, %374
  %polly.access.mul.call1691.1 = mul nsw i64 %703, 1000
  %polly.access.add.call1692.1 = add nuw nsw i64 %343, %polly.access.mul.call1691.1
  %polly.access.call1693.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.1
  %polly.access.call1693.load.1 = load double, double* %polly.access.call1693.1, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.1 = add nuw nsw i64 %polly.indvar687.1, 1200
  %polly.access.Packed_MemRef_call1526696.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.1
  store double %polly.access.call1693.load.1, double* %polly.access.Packed_MemRef_call1526696.1, align 8
  %polly.indvar_next688.1 = add nuw nsw i64 %polly.indvar687.1, 1
  %polly.loop_cond689.not.not.1 = icmp slt i64 %polly.indvar687.1, %403
  br i1 %polly.loop_cond689.not.not.1, label %polly.loop_header683.1, label %polly.loop_header683.2

polly.loop_header683.2:                           ; preds = %polly.loop_header683.1, %polly.loop_header683.2
  %polly.indvar687.2 = phi i64 [ %polly.indvar_next688.2, %polly.loop_header683.2 ], [ %402, %polly.loop_header683.1 ]
  %704 = add nuw nsw i64 %polly.indvar687.2, %374
  %polly.access.mul.call1691.2 = mul nsw i64 %704, 1000
  %polly.access.add.call1692.2 = add nuw nsw i64 %344, %polly.access.mul.call1691.2
  %polly.access.call1693.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.2
  %polly.access.call1693.load.2 = load double, double* %polly.access.call1693.2, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.2 = add nuw nsw i64 %polly.indvar687.2, 2400
  %polly.access.Packed_MemRef_call1526696.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.2
  store double %polly.access.call1693.load.2, double* %polly.access.Packed_MemRef_call1526696.2, align 8
  %polly.indvar_next688.2 = add nuw nsw i64 %polly.indvar687.2, 1
  %polly.loop_cond689.not.not.2 = icmp slt i64 %polly.indvar687.2, %403
  br i1 %polly.loop_cond689.not.not.2, label %polly.loop_header683.2, label %polly.loop_header683.3

polly.loop_header683.3:                           ; preds = %polly.loop_header683.2, %polly.loop_header683.3
  %polly.indvar687.3 = phi i64 [ %polly.indvar_next688.3, %polly.loop_header683.3 ], [ %402, %polly.loop_header683.2 ]
  %705 = add nuw nsw i64 %polly.indvar687.3, %374
  %polly.access.mul.call1691.3 = mul nsw i64 %705, 1000
  %polly.access.add.call1692.3 = add nuw nsw i64 %345, %polly.access.mul.call1691.3
  %polly.access.call1693.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.3
  %polly.access.call1693.load.3 = load double, double* %polly.access.call1693.3, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.3 = add nuw nsw i64 %polly.indvar687.3, 3600
  %polly.access.Packed_MemRef_call1526696.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.3
  store double %polly.access.call1693.load.3, double* %polly.access.Packed_MemRef_call1526696.3, align 8
  %polly.indvar_next688.3 = add nuw nsw i64 %polly.indvar687.3, 1
  %polly.loop_cond689.not.not.3 = icmp slt i64 %polly.indvar687.3, %403
  br i1 %polly.loop_cond689.not.not.3, label %polly.loop_header683.3, label %polly.loop_header697.preheader

polly.loop_header683.us.1:                        ; preds = %polly.loop_exit685.us, %polly.loop_header683.us.1
  %polly.indvar687.us.1 = phi i64 [ %polly.indvar_next688.us.1, %polly.loop_header683.us.1 ], [ %402, %polly.loop_exit685.us ]
  %706 = add nuw nsw i64 %polly.indvar687.us.1, %374
  %polly.access.mul.call1691.us.1 = mul nsw i64 %706, 1000
  %polly.access.add.call1692.us.1 = add nuw nsw i64 %343, %polly.access.mul.call1691.us.1
  %polly.access.call1693.us.1 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us.1
  %polly.access.call1693.load.us.1 = load double, double* %polly.access.call1693.us.1, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.us.1 = add nuw nsw i64 %polly.indvar687.us.1, 1200
  %polly.access.Packed_MemRef_call1526696.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us.1
  store double %polly.access.call1693.load.us.1, double* %polly.access.Packed_MemRef_call1526696.us.1, align 8
  %polly.indvar_next688.us.1 = add nuw nsw i64 %polly.indvar687.us.1, 1
  %polly.loop_cond689.not.not.us.1 = icmp slt i64 %polly.indvar687.us.1, %403
  br i1 %polly.loop_cond689.not.not.us.1, label %polly.loop_header683.us.1, label %polly.loop_exit685.us.1

polly.loop_exit685.us.1.critedge:                 ; preds = %polly.loop_header662.us.preheader
  %polly.access.call1681.load.us.11230.c = load double, double* %polly.access.call1681.us.11229, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.11230.c, double* %329, align 8
  %polly.access.call1681.load.us.1.1.c = load double, double* %polly.access.call1681.us.1.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1.1.c, double* %330, align 8
  %polly.access.call1681.load.us.2.1.c = load double, double* %polly.access.call1681.us.2.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2.1.c, double* %331, align 8
  %polly.access.call1681.load.us.3.1.c = load double, double* %polly.access.call1681.us.3.1, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3.1.c, double* %332, align 8
  br label %polly.loop_exit685.us.1

polly.loop_exit685.us.1:                          ; preds = %polly.loop_header683.us.1, %polly.loop_exit685.us.1.critedge
  %polly.access.call1681.load.us.21235 = load double, double* %polly.access.call1681.us.21234, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.21235, double* %333, align 8
  %polly.access.call1681.load.us.1.2 = load double, double* %polly.access.call1681.us.1.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1.2, double* %334, align 8
  %polly.access.call1681.load.us.2.2 = load double, double* %polly.access.call1681.us.2.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2.2, double* %335, align 8
  %polly.access.call1681.load.us.3.2 = load double, double* %polly.access.call1681.us.3.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3.2, double* %336, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader.critedge, label %polly.loop_header683.us.2

polly.loop_header683.us.2:                        ; preds = %polly.loop_exit685.us.1, %polly.loop_header683.us.2
  %polly.indvar687.us.2 = phi i64 [ %polly.indvar_next688.us.2, %polly.loop_header683.us.2 ], [ %402, %polly.loop_exit685.us.1 ]
  %707 = add nuw nsw i64 %polly.indvar687.us.2, %374
  %polly.access.mul.call1691.us.2 = mul nsw i64 %707, 1000
  %polly.access.add.call1692.us.2 = add nuw nsw i64 %344, %polly.access.mul.call1691.us.2
  %polly.access.call1693.us.2 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us.2
  %polly.access.call1693.load.us.2 = load double, double* %polly.access.call1693.us.2, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.us.2 = add nuw nsw i64 %polly.indvar687.us.2, 2400
  %polly.access.Packed_MemRef_call1526696.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us.2
  store double %polly.access.call1693.load.us.2, double* %polly.access.Packed_MemRef_call1526696.us.2, align 8
  %polly.indvar_next688.us.2 = add nuw nsw i64 %polly.indvar687.us.2, 1
  %polly.loop_cond689.not.not.us.2 = icmp slt i64 %polly.indvar687.us.2, %403
  br i1 %polly.loop_cond689.not.not.us.2, label %polly.loop_header683.us.2, label %polly.loop_exit685.us.2

polly.loop_exit685.us.2.critedge:                 ; preds = %polly.loop_exit685.us
  %polly.access.call1681.load.us.21235.c = load double, double* %polly.access.call1681.us.21234, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.21235.c, double* %333, align 8
  %polly.access.call1681.load.us.1.2.c = load double, double* %polly.access.call1681.us.1.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1.2.c, double* %334, align 8
  %polly.access.call1681.load.us.2.2.c = load double, double* %polly.access.call1681.us.2.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2.2.c, double* %335, align 8
  %polly.access.call1681.load.us.3.2.c = load double, double* %polly.access.call1681.us.3.2, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3.2.c, double* %336, align 8
  br label %polly.loop_exit685.us.2

polly.loop_exit685.us.2:                          ; preds = %polly.loop_header683.us.2, %polly.loop_exit685.us.2.critedge
  %polly.access.call1681.load.us.31240 = load double, double* %polly.access.call1681.us.31239, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.31240, double* %337, align 8
  %polly.access.call1681.load.us.1.3 = load double, double* %polly.access.call1681.us.1.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.1.3, double* %338, align 8
  %polly.access.call1681.load.us.2.3 = load double, double* %polly.access.call1681.us.2.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.2.3, double* %339, align 8
  %polly.access.call1681.load.us.3.3 = load double, double* %polly.access.call1681.us.3.3, align 8, !alias.scope !101, !noalias !108
  store double %polly.access.call1681.load.us.3.3, double* %340, align 8
  br i1 %polly.loop_guard686.not, label %polly.loop_header697.preheader, label %polly.loop_header683.us.3

polly.loop_header683.us.3:                        ; preds = %polly.loop_exit685.us.2, %polly.loop_header683.us.3
  %polly.indvar687.us.3 = phi i64 [ %polly.indvar_next688.us.3, %polly.loop_header683.us.3 ], [ %402, %polly.loop_exit685.us.2 ]
  %708 = add nuw nsw i64 %polly.indvar687.us.3, %374
  %polly.access.mul.call1691.us.3 = mul nsw i64 %708, 1000
  %polly.access.add.call1692.us.3 = add nuw nsw i64 %345, %polly.access.mul.call1691.us.3
  %polly.access.call1693.us.3 = getelementptr double, double* %polly.access.cast.call1742, i64 %polly.access.add.call1692.us.3
  %polly.access.call1693.load.us.3 = load double, double* %polly.access.call1693.us.3, align 8, !alias.scope !101, !noalias !108
  %polly.access.add.Packed_MemRef_call1526695.us.3 = add nuw nsw i64 %polly.indvar687.us.3, 3600
  %polly.access.Packed_MemRef_call1526696.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526695.us.3
  store double %polly.access.call1693.load.us.3, double* %polly.access.Packed_MemRef_call1526696.us.3, align 8
  %polly.indvar_next688.us.3 = add nuw nsw i64 %polly.indvar687.us.3, 1
  %polly.loop_cond689.not.not.us.3 = icmp slt i64 %polly.indvar687.us.3, %403
  br i1 %polly.loop_cond689.not.not.us.3, label %polly.loop_header683.us.3, label %polly.loop_header697.preheader

polly.loop_header704.us.1:                        ; preds = %polly.loop_exit714.us, %polly.loop_exit714.us.1
  %indvar1402 = phi i64 [ %indvar.next1403, %polly.loop_exit714.us.1 ], [ 0, %polly.loop_exit714.us ]
  %indvars.iv1153.1 = phi i64 [ %indvars.iv.next1154.1, %polly.loop_exit714.us.1 ], [ %397, %polly.loop_exit714.us ]
  %polly.indvar708.us.1 = phi i64 [ %polly.indvar_next709.us.1, %polly.loop_exit714.us.1 ], [ %407, %polly.loop_exit714.us ]
  %709 = add i64 %386, %indvar1402
  %smin1404 = call i64 @llvm.smin.i64(i64 %709, i64 3)
  %710 = add nsw i64 %smin1404, 1
  %smin1155.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1153.1, i64 3)
  %711 = add nsw i64 %polly.indvar708.us.1, %400
  %polly.loop_guard715.us.11251 = icmp sgt i64 %711, -1
  br i1 %polly.loop_guard715.us.11251, label %polly.loop_header712.preheader.us.1, label %polly.loop_exit714.us.1

polly.loop_header712.preheader.us.1:              ; preds = %polly.loop_header704.us.1
  %712 = add nuw nsw i64 %polly.indvar708.us.1, %399
  %polly.access.add.Packed_MemRef_call2528724.us.1 = add nuw nsw i64 %711, 1200
  %polly.access.Packed_MemRef_call2528725.us.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724.us.1
  %_p_scalar_726.us.1 = load double, double* %polly.access.Packed_MemRef_call2528725.us.1, align 8
  %polly.access.Packed_MemRef_call1526733.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724.us.1
  %_p_scalar_734.us.1 = load double, double* %polly.access.Packed_MemRef_call1526733.us.1, align 8
  %713 = mul i64 %712, 9600
  %min.iters.check1405 = icmp ult i64 %710, 4
  br i1 %min.iters.check1405, label %polly.loop_header712.us.1.preheader, label %vector.ph1406

vector.ph1406:                                    ; preds = %polly.loop_header712.preheader.us.1
  %n.vec1408 = and i64 %710, -4
  %broadcast.splatinsert1414 = insertelement <4 x double> poison, double %_p_scalar_726.us.1, i32 0
  %broadcast.splat1415 = shufflevector <4 x double> %broadcast.splatinsert1414, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1417 = insertelement <4 x double> poison, double %_p_scalar_734.us.1, i32 0
  %broadcast.splat1418 = shufflevector <4 x double> %broadcast.splatinsert1417, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1400

vector.body1400:                                  ; preds = %vector.body1400, %vector.ph1406
  %index1409 = phi i64 [ 0, %vector.ph1406 ], [ %index.next1410, %vector.body1400 ]
  %714 = add nuw nsw i64 %index1409, %374
  %715 = add nuw nsw i64 %index1409, 1200
  %716 = getelementptr double, double* %Packed_MemRef_call1526, i64 %715
  %717 = bitcast double* %716 to <4 x double>*
  %wide.load1413 = load <4 x double>, <4 x double>* %717, align 8
  %718 = fmul fast <4 x double> %broadcast.splat1415, %wide.load1413
  %719 = getelementptr double, double* %Packed_MemRef_call2528, i64 %715
  %720 = bitcast double* %719 to <4 x double>*
  %wide.load1416 = load <4 x double>, <4 x double>* %720, align 8
  %721 = fmul fast <4 x double> %broadcast.splat1418, %wide.load1416
  %722 = shl i64 %714, 3
  %723 = add i64 %722, %713
  %724 = getelementptr i8, i8* %call, i64 %723
  %725 = bitcast i8* %724 to <4 x double>*
  %wide.load1419 = load <4 x double>, <4 x double>* %725, align 8, !alias.scope !98, !noalias !100
  %726 = fadd fast <4 x double> %721, %718
  %727 = fmul fast <4 x double> %726, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %728 = fadd fast <4 x double> %727, %wide.load1419
  %729 = bitcast i8* %724 to <4 x double>*
  store <4 x double> %728, <4 x double>* %729, align 8, !alias.scope !98, !noalias !100
  %index.next1410 = add i64 %index1409, 4
  %730 = icmp eq i64 %index.next1410, %n.vec1408
  br i1 %730, label %middle.block1398, label %vector.body1400, !llvm.loop !136

middle.block1398:                                 ; preds = %vector.body1400
  %cmp.n1412 = icmp eq i64 %710, %n.vec1408
  br i1 %cmp.n1412, label %polly.loop_exit714.us.1, label %polly.loop_header712.us.1.preheader

polly.loop_header712.us.1.preheader:              ; preds = %polly.loop_header712.preheader.us.1, %middle.block1398
  %polly.indvar716.us.1.ph = phi i64 [ 0, %polly.loop_header712.preheader.us.1 ], [ %n.vec1408, %middle.block1398 ]
  br label %polly.loop_header712.us.1

polly.loop_header712.us.1:                        ; preds = %polly.loop_header712.us.1.preheader, %polly.loop_header712.us.1
  %polly.indvar716.us.1 = phi i64 [ %polly.indvar_next717.us.1, %polly.loop_header712.us.1 ], [ %polly.indvar716.us.1.ph, %polly.loop_header712.us.1.preheader ]
  %731 = add nuw nsw i64 %polly.indvar716.us.1, %374
  %polly.access.add.Packed_MemRef_call1526720.us.1 = add nuw nsw i64 %polly.indvar716.us.1, 1200
  %polly.access.Packed_MemRef_call1526721.us.1 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720.us.1
  %_p_scalar_722.us.1 = load double, double* %polly.access.Packed_MemRef_call1526721.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_726.us.1, %_p_scalar_722.us.1
  %polly.access.Packed_MemRef_call2528729.us.1 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720.us.1
  %_p_scalar_730.us.1 = load double, double* %polly.access.Packed_MemRef_call2528729.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_734.us.1, %_p_scalar_730.us.1
  %732 = shl i64 %731, 3
  %733 = add i64 %732, %713
  %scevgep735.us.1 = getelementptr i8, i8* %call, i64 %733
  %scevgep735736.us.1 = bitcast i8* %scevgep735.us.1 to double*
  %_p_scalar_737.us.1 = load double, double* %scevgep735736.us.1, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_737.us.1
  store double %p_add42.i.us.1, double* %scevgep735736.us.1, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next717.us.1 = add nuw nsw i64 %polly.indvar716.us.1, 1
  %exitcond1156.1.not = icmp eq i64 %polly.indvar716.us.1, %smin1155.1
  br i1 %exitcond1156.1.not, label %polly.loop_exit714.us.1, label %polly.loop_header712.us.1, !llvm.loop !137

polly.loop_exit714.us.1:                          ; preds = %polly.loop_header712.us.1, %middle.block1398, %polly.loop_header704.us.1
  %polly.indvar_next709.us.1 = add nuw nsw i64 %polly.indvar708.us.1, 1
  %polly.loop_cond710.us.1 = icmp ult i64 %polly.indvar708.us.1, 7
  %indvars.iv.next1154.1 = add i64 %indvars.iv1153.1, 1
  %indvar.next1403 = add i64 %indvar1402, 1
  br i1 %polly.loop_cond710.us.1, label %polly.loop_header704.us.1, label %polly.loop_header704.us.2

polly.loop_header704.us.2:                        ; preds = %polly.loop_exit714.us.1, %polly.loop_exit714.us.2
  %indvar1380 = phi i64 [ %indvar.next1381, %polly.loop_exit714.us.2 ], [ 0, %polly.loop_exit714.us.1 ]
  %indvars.iv1153.2 = phi i64 [ %indvars.iv.next1154.2, %polly.loop_exit714.us.2 ], [ %397, %polly.loop_exit714.us.1 ]
  %polly.indvar708.us.2 = phi i64 [ %polly.indvar_next709.us.2, %polly.loop_exit714.us.2 ], [ %407, %polly.loop_exit714.us.1 ]
  %734 = add i64 %391, %indvar1380
  %smin1382 = call i64 @llvm.smin.i64(i64 %734, i64 3)
  %735 = add nsw i64 %smin1382, 1
  %smin1155.2 = call i64 @llvm.smin.i64(i64 %indvars.iv1153.2, i64 3)
  %736 = add nsw i64 %polly.indvar708.us.2, %400
  %polly.loop_guard715.us.21252 = icmp sgt i64 %736, -1
  br i1 %polly.loop_guard715.us.21252, label %polly.loop_header712.preheader.us.2, label %polly.loop_exit714.us.2

polly.loop_header712.preheader.us.2:              ; preds = %polly.loop_header704.us.2
  %737 = add nuw nsw i64 %polly.indvar708.us.2, %399
  %polly.access.add.Packed_MemRef_call2528724.us.2 = add nuw nsw i64 %736, 2400
  %polly.access.Packed_MemRef_call2528725.us.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724.us.2
  %_p_scalar_726.us.2 = load double, double* %polly.access.Packed_MemRef_call2528725.us.2, align 8
  %polly.access.Packed_MemRef_call1526733.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724.us.2
  %_p_scalar_734.us.2 = load double, double* %polly.access.Packed_MemRef_call1526733.us.2, align 8
  %738 = mul i64 %737, 9600
  %min.iters.check1383 = icmp ult i64 %735, 4
  br i1 %min.iters.check1383, label %polly.loop_header712.us.2.preheader, label %vector.ph1384

vector.ph1384:                                    ; preds = %polly.loop_header712.preheader.us.2
  %n.vec1386 = and i64 %735, -4
  %broadcast.splatinsert1392 = insertelement <4 x double> poison, double %_p_scalar_726.us.2, i32 0
  %broadcast.splat1393 = shufflevector <4 x double> %broadcast.splatinsert1392, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1395 = insertelement <4 x double> poison, double %_p_scalar_734.us.2, i32 0
  %broadcast.splat1396 = shufflevector <4 x double> %broadcast.splatinsert1395, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %vector.ph1384
  %index1387 = phi i64 [ 0, %vector.ph1384 ], [ %index.next1388, %vector.body1378 ]
  %739 = add nuw nsw i64 %index1387, %374
  %740 = add nuw nsw i64 %index1387, 2400
  %741 = getelementptr double, double* %Packed_MemRef_call1526, i64 %740
  %742 = bitcast double* %741 to <4 x double>*
  %wide.load1391 = load <4 x double>, <4 x double>* %742, align 8
  %743 = fmul fast <4 x double> %broadcast.splat1393, %wide.load1391
  %744 = getelementptr double, double* %Packed_MemRef_call2528, i64 %740
  %745 = bitcast double* %744 to <4 x double>*
  %wide.load1394 = load <4 x double>, <4 x double>* %745, align 8
  %746 = fmul fast <4 x double> %broadcast.splat1396, %wide.load1394
  %747 = shl i64 %739, 3
  %748 = add i64 %747, %738
  %749 = getelementptr i8, i8* %call, i64 %748
  %750 = bitcast i8* %749 to <4 x double>*
  %wide.load1397 = load <4 x double>, <4 x double>* %750, align 8, !alias.scope !98, !noalias !100
  %751 = fadd fast <4 x double> %746, %743
  %752 = fmul fast <4 x double> %751, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %753 = fadd fast <4 x double> %752, %wide.load1397
  %754 = bitcast i8* %749 to <4 x double>*
  store <4 x double> %753, <4 x double>* %754, align 8, !alias.scope !98, !noalias !100
  %index.next1388 = add i64 %index1387, 4
  %755 = icmp eq i64 %index.next1388, %n.vec1386
  br i1 %755, label %middle.block1376, label %vector.body1378, !llvm.loop !138

middle.block1376:                                 ; preds = %vector.body1378
  %cmp.n1390 = icmp eq i64 %735, %n.vec1386
  br i1 %cmp.n1390, label %polly.loop_exit714.us.2, label %polly.loop_header712.us.2.preheader

polly.loop_header712.us.2.preheader:              ; preds = %polly.loop_header712.preheader.us.2, %middle.block1376
  %polly.indvar716.us.2.ph = phi i64 [ 0, %polly.loop_header712.preheader.us.2 ], [ %n.vec1386, %middle.block1376 ]
  br label %polly.loop_header712.us.2

polly.loop_header712.us.2:                        ; preds = %polly.loop_header712.us.2.preheader, %polly.loop_header712.us.2
  %polly.indvar716.us.2 = phi i64 [ %polly.indvar_next717.us.2, %polly.loop_header712.us.2 ], [ %polly.indvar716.us.2.ph, %polly.loop_header712.us.2.preheader ]
  %756 = add nuw nsw i64 %polly.indvar716.us.2, %374
  %polly.access.add.Packed_MemRef_call1526720.us.2 = add nuw nsw i64 %polly.indvar716.us.2, 2400
  %polly.access.Packed_MemRef_call1526721.us.2 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720.us.2
  %_p_scalar_722.us.2 = load double, double* %polly.access.Packed_MemRef_call1526721.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_726.us.2, %_p_scalar_722.us.2
  %polly.access.Packed_MemRef_call2528729.us.2 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720.us.2
  %_p_scalar_730.us.2 = load double, double* %polly.access.Packed_MemRef_call2528729.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_734.us.2, %_p_scalar_730.us.2
  %757 = shl i64 %756, 3
  %758 = add i64 %757, %738
  %scevgep735.us.2 = getelementptr i8, i8* %call, i64 %758
  %scevgep735736.us.2 = bitcast i8* %scevgep735.us.2 to double*
  %_p_scalar_737.us.2 = load double, double* %scevgep735736.us.2, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_737.us.2
  store double %p_add42.i.us.2, double* %scevgep735736.us.2, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next717.us.2 = add nuw nsw i64 %polly.indvar716.us.2, 1
  %exitcond1156.2.not = icmp eq i64 %polly.indvar716.us.2, %smin1155.2
  br i1 %exitcond1156.2.not, label %polly.loop_exit714.us.2, label %polly.loop_header712.us.2, !llvm.loop !139

polly.loop_exit714.us.2:                          ; preds = %polly.loop_header712.us.2, %middle.block1376, %polly.loop_header704.us.2
  %polly.indvar_next709.us.2 = add nuw nsw i64 %polly.indvar708.us.2, 1
  %polly.loop_cond710.us.2 = icmp ult i64 %polly.indvar708.us.2, 7
  %indvars.iv.next1154.2 = add i64 %indvars.iv1153.2, 1
  %indvar.next1381 = add i64 %indvar1380, 1
  br i1 %polly.loop_cond710.us.2, label %polly.loop_header704.us.2, label %polly.loop_header704.us.3

polly.loop_header704.us.3:                        ; preds = %polly.loop_exit714.us.2, %polly.loop_exit714.us.3
  %indvar1358 = phi i64 [ %indvar.next1359, %polly.loop_exit714.us.3 ], [ 0, %polly.loop_exit714.us.2 ]
  %indvars.iv1153.3 = phi i64 [ %indvars.iv.next1154.3, %polly.loop_exit714.us.3 ], [ %397, %polly.loop_exit714.us.2 ]
  %polly.indvar708.us.3 = phi i64 [ %polly.indvar_next709.us.3, %polly.loop_exit714.us.3 ], [ %407, %polly.loop_exit714.us.2 ]
  %759 = add i64 %396, %indvar1358
  %smin1360 = call i64 @llvm.smin.i64(i64 %759, i64 3)
  %760 = add nsw i64 %smin1360, 1
  %smin1155.3 = call i64 @llvm.smin.i64(i64 %indvars.iv1153.3, i64 3)
  %761 = add nsw i64 %polly.indvar708.us.3, %400
  %polly.loop_guard715.us.31253 = icmp sgt i64 %761, -1
  br i1 %polly.loop_guard715.us.31253, label %polly.loop_header712.preheader.us.3, label %polly.loop_exit714.us.3

polly.loop_header712.preheader.us.3:              ; preds = %polly.loop_header704.us.3
  %762 = add nuw nsw i64 %polly.indvar708.us.3, %399
  %polly.access.add.Packed_MemRef_call2528724.us.3 = add nuw nsw i64 %761, 3600
  %polly.access.Packed_MemRef_call2528725.us.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call2528724.us.3
  %_p_scalar_726.us.3 = load double, double* %polly.access.Packed_MemRef_call2528725.us.3, align 8
  %polly.access.Packed_MemRef_call1526733.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call2528724.us.3
  %_p_scalar_734.us.3 = load double, double* %polly.access.Packed_MemRef_call1526733.us.3, align 8
  %763 = mul i64 %762, 9600
  %min.iters.check1361 = icmp ult i64 %760, 4
  br i1 %min.iters.check1361, label %polly.loop_header712.us.3.preheader, label %vector.ph1362

vector.ph1362:                                    ; preds = %polly.loop_header712.preheader.us.3
  %n.vec1364 = and i64 %760, -4
  %broadcast.splatinsert1370 = insertelement <4 x double> poison, double %_p_scalar_726.us.3, i32 0
  %broadcast.splat1371 = shufflevector <4 x double> %broadcast.splatinsert1370, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1373 = insertelement <4 x double> poison, double %_p_scalar_734.us.3, i32 0
  %broadcast.splat1374 = shufflevector <4 x double> %broadcast.splatinsert1373, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %vector.ph1362
  %index1365 = phi i64 [ 0, %vector.ph1362 ], [ %index.next1366, %vector.body1354 ]
  %764 = add nuw nsw i64 %index1365, %374
  %765 = add nuw nsw i64 %index1365, 3600
  %766 = getelementptr double, double* %Packed_MemRef_call1526, i64 %765
  %767 = bitcast double* %766 to <4 x double>*
  %wide.load1369 = load <4 x double>, <4 x double>* %767, align 8
  %768 = fmul fast <4 x double> %broadcast.splat1371, %wide.load1369
  %769 = getelementptr double, double* %Packed_MemRef_call2528, i64 %765
  %770 = bitcast double* %769 to <4 x double>*
  %wide.load1372 = load <4 x double>, <4 x double>* %770, align 8
  %771 = fmul fast <4 x double> %broadcast.splat1374, %wide.load1372
  %772 = shl i64 %764, 3
  %773 = add i64 %772, %763
  %774 = getelementptr i8, i8* %call, i64 %773
  %775 = bitcast i8* %774 to <4 x double>*
  %wide.load1375 = load <4 x double>, <4 x double>* %775, align 8, !alias.scope !98, !noalias !100
  %776 = fadd fast <4 x double> %771, %768
  %777 = fmul fast <4 x double> %776, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %778 = fadd fast <4 x double> %777, %wide.load1375
  %779 = bitcast i8* %774 to <4 x double>*
  store <4 x double> %778, <4 x double>* %779, align 8, !alias.scope !98, !noalias !100
  %index.next1366 = add i64 %index1365, 4
  %780 = icmp eq i64 %index.next1366, %n.vec1364
  br i1 %780, label %middle.block1352, label %vector.body1354, !llvm.loop !140

middle.block1352:                                 ; preds = %vector.body1354
  %cmp.n1368 = icmp eq i64 %760, %n.vec1364
  br i1 %cmp.n1368, label %polly.loop_exit714.us.3, label %polly.loop_header712.us.3.preheader

polly.loop_header712.us.3.preheader:              ; preds = %polly.loop_header712.preheader.us.3, %middle.block1352
  %polly.indvar716.us.3.ph = phi i64 [ 0, %polly.loop_header712.preheader.us.3 ], [ %n.vec1364, %middle.block1352 ]
  br label %polly.loop_header712.us.3

polly.loop_header712.us.3:                        ; preds = %polly.loop_header712.us.3.preheader, %polly.loop_header712.us.3
  %polly.indvar716.us.3 = phi i64 [ %polly.indvar_next717.us.3, %polly.loop_header712.us.3 ], [ %polly.indvar716.us.3.ph, %polly.loop_header712.us.3.preheader ]
  %781 = add nuw nsw i64 %polly.indvar716.us.3, %374
  %polly.access.add.Packed_MemRef_call1526720.us.3 = add nuw nsw i64 %polly.indvar716.us.3, 3600
  %polly.access.Packed_MemRef_call1526721.us.3 = getelementptr double, double* %Packed_MemRef_call1526, i64 %polly.access.add.Packed_MemRef_call1526720.us.3
  %_p_scalar_722.us.3 = load double, double* %polly.access.Packed_MemRef_call1526721.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_726.us.3, %_p_scalar_722.us.3
  %polly.access.Packed_MemRef_call2528729.us.3 = getelementptr double, double* %Packed_MemRef_call2528, i64 %polly.access.add.Packed_MemRef_call1526720.us.3
  %_p_scalar_730.us.3 = load double, double* %polly.access.Packed_MemRef_call2528729.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_734.us.3, %_p_scalar_730.us.3
  %782 = shl i64 %781, 3
  %783 = add i64 %782, %763
  %scevgep735.us.3 = getelementptr i8, i8* %call, i64 %783
  %scevgep735736.us.3 = bitcast i8* %scevgep735.us.3 to double*
  %_p_scalar_737.us.3 = load double, double* %scevgep735736.us.3, align 8, !alias.scope !98, !noalias !100
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_737.us.3
  store double %p_add42.i.us.3, double* %scevgep735736.us.3, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next717.us.3 = add nuw nsw i64 %polly.indvar716.us.3, 1
  %exitcond1156.3.not = icmp eq i64 %polly.indvar716.us.3, %smin1155.3
  br i1 %exitcond1156.3.not, label %polly.loop_exit714.us.3, label %polly.loop_header712.us.3, !llvm.loop !141

polly.loop_exit714.us.3:                          ; preds = %polly.loop_header712.us.3, %middle.block1352, %polly.loop_header704.us.3
  %polly.indvar_next709.us.3 = add nuw nsw i64 %polly.indvar708.us.3, 1
  %polly.loop_cond710.us.3 = icmp ult i64 %polly.indvar708.us.3, 7
  %indvars.iv.next1154.3 = add i64 %indvars.iv1153.3, 1
  %indvar.next1359 = add i64 %indvar1358, 1
  br i1 %polly.loop_cond710.us.3, label %polly.loop_header704.us.3, label %polly.loop_exit699
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
!50 = !{!"llvm.loop.tile.size", i32 8}
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
!83 = distinct !{!83, !80, !13}
!84 = distinct !{!84, !13}
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
!96 = distinct !{!96, !80, !13}
!97 = distinct !{!97, !13}
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
!109 = distinct !{!109, !80, !13}
!110 = distinct !{!110, !13}
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
