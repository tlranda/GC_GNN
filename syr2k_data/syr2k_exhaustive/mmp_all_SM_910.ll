; ModuleID = 'syr2k_exhaustive/mmp_all_SM_910.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_910.c"
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
  %call935 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1787 = bitcast i8* %call1 to double*
  %polly.access.call1796 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2797 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1796, %call2
  %polly.access.call2816 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2816, %call1
  %2 = or i1 %0, %1
  %polly.access.call836 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call836, %call2
  %4 = icmp ule i8* %polly.access.call2816, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call836, %call1
  %8 = icmp ule i8* %polly.access.call1796, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header909, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1304 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1303 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1302 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1301 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1301, %scevgep1304
  %bound1 = icmp ult i8* %scevgep1303, %scevgep1302
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
  br i1 %exitcond18.not.i, label %vector.ph1308, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1308:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1315 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1316 = shufflevector <4 x i64> %broadcast.splatinsert1315, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1307

vector.body1307:                                  ; preds = %vector.body1307, %vector.ph1308
  %index1309 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1310, %vector.body1307 ]
  %vec.ind1313 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1308 ], [ %vec.ind.next1314, %vector.body1307 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1313, %broadcast.splat1316
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv7.i, i64 %index1309
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1310 = add i64 %index1309, 4
  %vec.ind.next1314 = add <4 x i64> %vec.ind1313, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1310, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1307, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1307
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1308, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit970
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start553, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1371 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1371, label %for.body3.i46.preheader1520, label %vector.ph1372

vector.ph1372:                                    ; preds = %for.body3.i46.preheader
  %n.vec1374 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1370

vector.body1370:                                  ; preds = %vector.body1370, %vector.ph1372
  %index1375 = phi i64 [ 0, %vector.ph1372 ], [ %index.next1376, %vector.body1370 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i, i64 %index1375
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1376 = add i64 %index1375, 4
  %46 = icmp eq i64 %index.next1376, %n.vec1374
  br i1 %46, label %middle.block1368, label %vector.body1370, !llvm.loop !18

middle.block1368:                                 ; preds = %vector.body1370
  %cmp.n1378 = icmp eq i64 %indvars.iv21.i, %n.vec1374
  br i1 %cmp.n1378, label %for.inc6.i, label %for.body3.i46.preheader1520

for.body3.i46.preheader1520:                      ; preds = %for.body3.i46.preheader, %middle.block1368
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1374, %middle.block1368 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1520, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1520 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1368, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting554
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start321, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1418 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1418, label %for.body3.i60.preheader1518, label %vector.ph1419

vector.ph1419:                                    ; preds = %for.body3.i60.preheader
  %n.vec1421 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1417

vector.body1417:                                  ; preds = %vector.body1417, %vector.ph1419
  %index1422 = phi i64 [ 0, %vector.ph1419 ], [ %index.next1423, %vector.body1417 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i52, i64 %index1422
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1426 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1426, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1423 = add i64 %index1422, 4
  %57 = icmp eq i64 %index.next1423, %n.vec1421
  br i1 %57, label %middle.block1415, label %vector.body1417, !llvm.loop !64

middle.block1415:                                 ; preds = %vector.body1417
  %cmp.n1425 = icmp eq i64 %indvars.iv21.i52, %n.vec1421
  br i1 %cmp.n1425, label %for.inc6.i63, label %for.body3.i60.preheader1518

for.body3.i60.preheader1518:                      ; preds = %for.body3.i60.preheader, %middle.block1415
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1421, %middle.block1415 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1518, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1518 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1415, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting322
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1468 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1468, label %for.body3.i99.preheader1516, label %vector.ph1469

vector.ph1469:                                    ; preds = %for.body3.i99.preheader
  %n.vec1471 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1467

vector.body1467:                                  ; preds = %vector.body1467, %vector.ph1469
  %index1472 = phi i64 [ 0, %vector.ph1469 ], [ %index.next1473, %vector.body1467 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i91, i64 %index1472
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1476 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1476, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1473 = add i64 %index1472, 4
  %68 = icmp eq i64 %index.next1473, %n.vec1471
  br i1 %68, label %middle.block1465, label %vector.body1467, !llvm.loop !66

middle.block1465:                                 ; preds = %vector.body1467
  %cmp.n1475 = icmp eq i64 %indvars.iv21.i91, %n.vec1471
  br i1 %cmp.n1475, label %for.inc6.i102, label %for.body3.i99.preheader1516

for.body3.i99.preheader1516:                      ; preds = %for.body3.i99.preheader, %middle.block1465
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1471, %middle.block1465 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1516, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1516 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1465, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call935, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall136 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit208
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1480 = phi i64 [ %indvar.next1481, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1480, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1482 = icmp ult i64 %88, 4
  br i1 %min.iters.check1482, label %polly.loop_header192.preheader, label %vector.ph1483

vector.ph1483:                                    ; preds = %polly.loop_header
  %n.vec1485 = and i64 %88, -4
  br label %vector.body1479

vector.body1479:                                  ; preds = %vector.body1479, %vector.ph1483
  %index1486 = phi i64 [ 0, %vector.ph1483 ], [ %index.next1487, %vector.body1479 ]
  %90 = shl nuw nsw i64 %index1486, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1490 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1490, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1487 = add i64 %index1486, 4
  %95 = icmp eq i64 %index.next1487, %n.vec1485
  br i1 %95, label %middle.block1477, label %vector.body1479, !llvm.loop !79

middle.block1477:                                 ; preds = %vector.body1479
  %cmp.n1489 = icmp eq i64 %88, %n.vec1485
  br i1 %cmp.n1489, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1477
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1485, %middle.block1477 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1477
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1193.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1481 = add i64 %indvar1480, 1
  br i1 %exitcond1193.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1192.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1192.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar203, 50
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1191.not = icmp eq i64 %polly.indvar_next204, 20
  br i1 %exitcond1191.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1182 = phi i64 [ %indvars.iv.next1183, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1169 = phi i64 [ %indvars.iv.next1170, %polly.loop_exit230 ], [ 79, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %98 = mul nuw nsw i64 %polly.indvar209, 100
  %99 = lshr i64 %polly.indvar209, 2
  %100 = add nuw i64 %polly.indvar209, %99
  %101 = mul nuw nsw i64 %100, 80
  %102 = sub i64 %98, %101
  %103 = mul nsw i64 %polly.indvar209, -100
  %104 = add i64 %103, %101
  %105 = lshr i64 %polly.indvar209, 2
  %106 = add nuw i64 %polly.indvar209, %105
  %107 = mul nuw nsw i64 %106, 80
  %108 = sub i64 %indvars.iv1177, %107
  %109 = add i64 %indvars.iv1182, %107
  %110 = add i64 %indvars.iv1169, %107
  %111 = mul nuw nsw i64 %polly.indvar209, 100
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %112 = mul nsw i64 %polly.indvar209, -100
  %113 = mul nuw nsw i64 %polly.indvar209, 5
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit280
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next1170 = add nsw i64 %indvars.iv1169, -100
  %indvars.iv.next1178 = add nuw nsw i64 %indvars.iv1177, 100
  %indvars.iv.next1183 = add nsw i64 %indvars.iv1182, -100
  %exitcond1190.not = icmp eq i64 %polly.indvar_next210, 12
  br i1 %exitcond1190.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %114 = add nuw nsw i64 %polly.indvar215, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1168.not = icmp eq i64 %polly.indvar_next216, 50
  br i1 %exitcond1168.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %115 = add nuw nsw i64 %polly.indvar221, %111
  %polly.access.mul.call2225 = mul nuw nsw i64 %115, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %114, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2797, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit280, %polly.loop_exit214
  %indvar1494 = phi i64 [ %indvar.next1495, %polly.loop_exit280 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1184 = phi i64 [ %indvars.iv.next1185, %polly.loop_exit280 ], [ %109, %polly.loop_exit214 ]
  %indvars.iv1179 = phi i64 [ %indvars.iv.next1180, %polly.loop_exit280 ], [ %108, %polly.loop_exit214 ]
  %indvars.iv1171 = phi i64 [ %indvars.iv.next1172, %polly.loop_exit280 ], [ %110, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit280 ], [ %106, %polly.loop_exit214 ]
  %116 = mul nsw i64 %indvar1494, -80
  %117 = add i64 %102, %116
  %smax1496 = call i64 @llvm.smax.i64(i64 %117, i64 0)
  %118 = mul nuw nsw i64 %indvar1494, 80
  %119 = add i64 %104, %118
  %120 = add i64 %smax1496, %119
  %smax1181 = call i64 @llvm.smax.i64(i64 %indvars.iv1179, i64 0)
  %121 = add i64 %smax1181, %indvars.iv1184
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1171, i64 0)
  %122 = shl nsw i64 %polly.indvar231, 2
  %.not.not = icmp ugt i64 %122, %113
  %123 = mul nuw nsw i64 %polly.indvar231, 80
  %124 = add nsw i64 %123, %112
  %125 = icmp sgt i64 %124, 100
  %126 = select i1 %125, i64 %124, i64 100
  %127 = add nsw i64 %124, 79
  %polly.loop_guard.not = icmp sgt i64 %126, %127
  br i1 %.not.not, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %128 = add nuw nsw i64 %polly.indvar237.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %129 = add nuw nsw i64 %polly.indvar243.us, %111
  %polly.access.mul.call1247.us = mul nuw nsw i64 %129, 1000
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %128
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar_next244.us, 100
  br i1 %exitcond1175.not, label %polly.loop_exit242.us, label %polly.loop_header240.us

polly.loop_exit242.us:                            ; preds = %polly.loop_header240.us
  br i1 %polly.loop_guard.not, label %polly.merge.us, label %polly.loop_header250.us

polly.loop_header250.us:                          ; preds = %polly.loop_exit242.us, %polly.loop_header250.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header250.us ], [ %126, %polly.loop_exit242.us ]
  %130 = add nuw nsw i64 %polly.indvar253.us, %111
  %polly.access.mul.call1257.us = mul nsw i64 %130, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %polly.access.mul.call1257.us, %128
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar253.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %polly.loop_cond255.not.not.us = icmp slt i64 %polly.indvar253.us, %127
  br i1 %polly.loop_cond255.not.not.us, label %polly.loop_header250.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header250.us, %polly.loop_exit242.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1176.not = icmp eq i64 %polly.indvar_next238.us, 50
  br i1 %exitcond1176.not, label %polly.loop_header278.preheader, label %polly.loop_header234.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  %polly.loop_guard267 = icmp sgt i64 %124, -80
  br i1 %polly.loop_guard267, label %polly.loop_header234.us1017, label %polly.loop_header278.preheader

polly.loop_header234.us1017:                      ; preds = %polly.loop_header228.split, %polly.merge.loopexit991.us1062
  %polly.indvar237.us1018 = phi i64 [ %polly.indvar_next238.us1054, %polly.merge.loopexit991.us1062 ], [ 0, %polly.loop_header228.split ]
  %131 = add nuw nsw i64 %polly.indvar237.us1018, %97
  %polly.access.mul.Packed_MemRef_call1275.us1061 = mul nuw nsw i64 %polly.indvar237.us1018, 1200
  br label %polly.loop_header264.us1020

polly.loop_header264.us1020:                      ; preds = %polly.loop_header234.us1017, %polly.loop_header264.us1020
  %polly.indvar268.us1021 = phi i64 [ %polly.indvar_next269.us1028, %polly.loop_header264.us1020 ], [ 0, %polly.loop_header234.us1017 ]
  %132 = add nuw nsw i64 %polly.indvar268.us1021, %111
  %polly.access.mul.call1272.us1022 = mul nuw nsw i64 %132, 1000
  %polly.access.add.call1273.us1023 = add nuw nsw i64 %131, %polly.access.mul.call1272.us1022
  %polly.access.call1274.us1024 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1273.us1023
  %polly.access.call1274.load.us1025 = load double, double* %polly.access.call1274.us1024, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1276.us1026 = add nuw nsw i64 %polly.indvar268.us1021, %polly.access.mul.Packed_MemRef_call1275.us1061
  %polly.access.Packed_MemRef_call1277.us1027 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1276.us1026
  store double %polly.access.call1274.load.us1025, double* %polly.access.Packed_MemRef_call1277.us1027, align 8
  %polly.indvar_next269.us1028 = add nuw nsw i64 %polly.indvar268.us1021, 1
  %exitcond1173.not = icmp eq i64 %polly.indvar268.us1021, %smax
  br i1 %exitcond1173.not, label %polly.merge.loopexit991.us1062, label %polly.loop_header264.us1020

polly.merge.loopexit991.us1062:                   ; preds = %polly.loop_header264.us1020
  %polly.indvar_next238.us1054 = add nuw nsw i64 %polly.indvar237.us1018, 1
  %exitcond1174.not = icmp eq i64 %polly.indvar_next238.us1054, 50
  br i1 %exitcond1174.not, label %polly.loop_header278.preheader, label %polly.loop_header234.us1017

polly.loop_exit280:                               ; preds = %polly.loop_exit287.loopexit.us, %polly.loop_header278.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp ult i64 %polly.indvar231, 14
  %indvars.iv.next1172 = add i64 %indvars.iv1171, 80
  %indvars.iv.next1180 = add i64 %indvars.iv1179, -80
  %indvars.iv.next1185 = add i64 %indvars.iv1184, 80
  %indvar.next1495 = add i64 %indvar1494, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header278.preheader:                   ; preds = %polly.merge.loopexit991.us1062, %polly.merge.us, %polly.loop_header228.split
  %133 = sub nsw i64 %111, %123
  %134 = icmp sgt i64 %133, 0
  %135 = select i1 %134, i64 %133, i64 0
  %polly.loop_guard288 = icmp slt i64 %135, 80
  br i1 %polly.loop_guard288, label %polly.loop_header278.us, label %polly.loop_exit280

polly.loop_header278.us:                          ; preds = %polly.loop_header278.preheader, %polly.loop_exit287.loopexit.us
  %polly.indvar281.us = phi i64 [ %polly.indvar_next282.us, %polly.loop_exit287.loopexit.us ], [ 0, %polly.loop_header278.preheader ]
  %polly.access.mul.Packed_MemRef_call1300.us = mul nuw nsw i64 %polly.indvar281.us, 1200
  br label %polly.loop_header285.us

polly.loop_header285.us:                          ; preds = %polly.loop_header278.us, %polly.loop_exit295.us
  %indvar1497 = phi i64 [ 0, %polly.loop_header278.us ], [ %indvar.next1498, %polly.loop_exit295.us ]
  %indvars.iv1186 = phi i64 [ %121, %polly.loop_header278.us ], [ %indvars.iv.next1187, %polly.loop_exit295.us ]
  %polly.indvar289.us = phi i64 [ %135, %polly.loop_header278.us ], [ %polly.indvar_next290.us, %polly.loop_exit295.us ]
  %136 = add i64 %120, %indvar1497
  %smin1499 = call i64 @llvm.smin.i64(i64 %136, i64 99)
  %137 = add nsw i64 %smin1499, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1186, i64 99)
  %138 = add nuw i64 %polly.indvar289.us, %123
  %139 = add i64 %138, %112
  %polly.loop_guard296.us1290 = icmp sgt i64 %139, -1
  br i1 %polly.loop_guard296.us1290, label %polly.loop_header293.preheader.us, label %polly.loop_exit295.us

polly.loop_header293.us:                          ; preds = %polly.loop_header293.us.preheader, %polly.loop_header293.us
  %polly.indvar297.us = phi i64 [ %polly.indvar_next298.us, %polly.loop_header293.us ], [ %polly.indvar297.us.ph, %polly.loop_header293.us.preheader ]
  %140 = add nuw nsw i64 %polly.indvar297.us, %111
  %polly.access.add.Packed_MemRef_call1301.us = add nuw nsw i64 %polly.indvar297.us, %polly.access.mul.Packed_MemRef_call1300.us
  %polly.access.Packed_MemRef_call1302.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1301.us
  %_p_scalar_303.us = load double, double* %polly.access.Packed_MemRef_call1302.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_307.us, %_p_scalar_303.us
  %polly.access.Packed_MemRef_call2310.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1301.us
  %_p_scalar_311.us = load double, double* %polly.access.Packed_MemRef_call2310.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_315.us, %_p_scalar_311.us
  %141 = shl i64 %140, 3
  %142 = add i64 %141, %143
  %scevgep316.us = getelementptr i8, i8* %call, i64 %142
  %scevgep316317.us = bitcast i8* %scevgep316.us to double*
  %_p_scalar_318.us = load double, double* %scevgep316317.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_318.us
  store double %p_add42.i118.us, double* %scevgep316317.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next298.us = add nuw nsw i64 %polly.indvar297.us, 1
  %exitcond1188.not = icmp eq i64 %polly.indvar297.us, %smin
  br i1 %exitcond1188.not, label %polly.loop_exit295.us, label %polly.loop_header293.us, !llvm.loop !84

polly.loop_exit295.us:                            ; preds = %polly.loop_header293.us, %middle.block1491, %polly.loop_header285.us
  %polly.indvar_next290.us = add nuw nsw i64 %polly.indvar289.us, 1
  %polly.loop_cond291.us = icmp ult i64 %polly.indvar289.us, 79
  %indvars.iv.next1187 = add i64 %indvars.iv1186, 1
  %indvar.next1498 = add i64 %indvar1497, 1
  br i1 %polly.loop_cond291.us, label %polly.loop_header285.us, label %polly.loop_exit287.loopexit.us

polly.loop_header293.preheader.us:                ; preds = %polly.loop_header285.us
  %polly.access.add.Packed_MemRef_call2305.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1300.us, %139
  %polly.access.Packed_MemRef_call2306.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2305.us
  %_p_scalar_307.us = load double, double* %polly.access.Packed_MemRef_call2306.us, align 8
  %polly.access.Packed_MemRef_call1314.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2305.us
  %_p_scalar_315.us = load double, double* %polly.access.Packed_MemRef_call1314.us, align 8
  %143 = mul i64 %138, 9600
  %min.iters.check1500 = icmp ult i64 %137, 4
  br i1 %min.iters.check1500, label %polly.loop_header293.us.preheader, label %vector.ph1501

vector.ph1501:                                    ; preds = %polly.loop_header293.preheader.us
  %n.vec1503 = and i64 %137, -4
  %broadcast.splatinsert1509 = insertelement <4 x double> poison, double %_p_scalar_307.us, i32 0
  %broadcast.splat1510 = shufflevector <4 x double> %broadcast.splatinsert1509, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1512 = insertelement <4 x double> poison, double %_p_scalar_315.us, i32 0
  %broadcast.splat1513 = shufflevector <4 x double> %broadcast.splatinsert1512, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1493

vector.body1493:                                  ; preds = %vector.body1493, %vector.ph1501
  %index1504 = phi i64 [ 0, %vector.ph1501 ], [ %index.next1505, %vector.body1493 ]
  %144 = add nuw nsw i64 %index1504, %111
  %145 = add nuw nsw i64 %index1504, %polly.access.mul.Packed_MemRef_call1300.us
  %146 = getelementptr double, double* %Packed_MemRef_call1, i64 %145
  %147 = bitcast double* %146 to <4 x double>*
  %wide.load1508 = load <4 x double>, <4 x double>* %147, align 8
  %148 = fmul fast <4 x double> %broadcast.splat1510, %wide.load1508
  %149 = getelementptr double, double* %Packed_MemRef_call2, i64 %145
  %150 = bitcast double* %149 to <4 x double>*
  %wide.load1511 = load <4 x double>, <4 x double>* %150, align 8
  %151 = fmul fast <4 x double> %broadcast.splat1513, %wide.load1511
  %152 = shl i64 %144, 3
  %153 = add i64 %152, %143
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %155, align 8, !alias.scope !72, !noalias !74
  %156 = fadd fast <4 x double> %151, %148
  %157 = fmul fast <4 x double> %156, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %158 = fadd fast <4 x double> %157, %wide.load1514
  %159 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %158, <4 x double>* %159, align 8, !alias.scope !72, !noalias !74
  %index.next1505 = add i64 %index1504, 4
  %160 = icmp eq i64 %index.next1505, %n.vec1503
  br i1 %160, label %middle.block1491, label %vector.body1493, !llvm.loop !85

middle.block1491:                                 ; preds = %vector.body1493
  %cmp.n1507 = icmp eq i64 %137, %n.vec1503
  br i1 %cmp.n1507, label %polly.loop_exit295.us, label %polly.loop_header293.us.preheader

polly.loop_header293.us.preheader:                ; preds = %polly.loop_header293.preheader.us, %middle.block1491
  %polly.indvar297.us.ph = phi i64 [ 0, %polly.loop_header293.preheader.us ], [ %n.vec1503, %middle.block1491 ]
  br label %polly.loop_header293.us

polly.loop_exit287.loopexit.us:                   ; preds = %polly.loop_exit295.us
  %polly.indvar_next282.us = add nuw nsw i64 %polly.indvar281.us, 1
  %exitcond1189.not = icmp eq i64 %polly.indvar_next282.us, 50
  br i1 %exitcond1189.not, label %polly.loop_exit280, label %polly.loop_header278.us

polly.start321:                                   ; preds = %kernel_syr2k.exit
  %malloccall323 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall325 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header409

polly.exiting322:                                 ; preds = %polly.loop_exit433
  tail call void @free(i8* %malloccall323)
  tail call void @free(i8* %malloccall325)
  br label %kernel_syr2k.exit90

polly.loop_header409:                             ; preds = %polly.loop_exit417, %polly.start321
  %indvar1430 = phi i64 [ %indvar.next1431, %polly.loop_exit417 ], [ 0, %polly.start321 ]
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_exit417 ], [ 1, %polly.start321 ]
  %161 = add i64 %indvar1430, 1
  %162 = mul nuw nsw i64 %polly.indvar412, 9600
  %scevgep421 = getelementptr i8, i8* %call, i64 %162
  %min.iters.check1432 = icmp ult i64 %161, 4
  br i1 %min.iters.check1432, label %polly.loop_header415.preheader, label %vector.ph1433

vector.ph1433:                                    ; preds = %polly.loop_header409
  %n.vec1435 = and i64 %161, -4
  br label %vector.body1429

vector.body1429:                                  ; preds = %vector.body1429, %vector.ph1433
  %index1436 = phi i64 [ 0, %vector.ph1433 ], [ %index.next1437, %vector.body1429 ]
  %163 = shl nuw nsw i64 %index1436, 3
  %164 = getelementptr i8, i8* %scevgep421, i64 %163
  %165 = bitcast i8* %164 to <4 x double>*
  %wide.load1440 = load <4 x double>, <4 x double>* %165, align 8, !alias.scope !86, !noalias !88
  %166 = fmul fast <4 x double> %wide.load1440, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %167 = bitcast i8* %164 to <4 x double>*
  store <4 x double> %166, <4 x double>* %167, align 8, !alias.scope !86, !noalias !88
  %index.next1437 = add i64 %index1436, 4
  %168 = icmp eq i64 %index.next1437, %n.vec1435
  br i1 %168, label %middle.block1427, label %vector.body1429, !llvm.loop !93

middle.block1427:                                 ; preds = %vector.body1429
  %cmp.n1439 = icmp eq i64 %161, %n.vec1435
  br i1 %cmp.n1439, label %polly.loop_exit417, label %polly.loop_header415.preheader

polly.loop_header415.preheader:                   ; preds = %polly.loop_header409, %middle.block1427
  %polly.indvar418.ph = phi i64 [ 0, %polly.loop_header409 ], [ %n.vec1435, %middle.block1427 ]
  br label %polly.loop_header415

polly.loop_exit417:                               ; preds = %polly.loop_header415, %middle.block1427
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond1224.not = icmp eq i64 %polly.indvar_next413, 1200
  %indvar.next1431 = add i64 %indvar1430, 1
  br i1 %exitcond1224.not, label %polly.loop_header425.preheader, label %polly.loop_header409

polly.loop_header425.preheader:                   ; preds = %polly.loop_exit417
  %Packed_MemRef_call1324 = bitcast i8* %malloccall323 to double*
  %Packed_MemRef_call2326 = bitcast i8* %malloccall325 to double*
  br label %polly.loop_header425

polly.loop_header415:                             ; preds = %polly.loop_header415.preheader, %polly.loop_header415
  %polly.indvar418 = phi i64 [ %polly.indvar_next419, %polly.loop_header415 ], [ %polly.indvar418.ph, %polly.loop_header415.preheader ]
  %169 = shl nuw nsw i64 %polly.indvar418, 3
  %scevgep422 = getelementptr i8, i8* %scevgep421, i64 %169
  %scevgep422423 = bitcast i8* %scevgep422 to double*
  %_p_scalar_424 = load double, double* %scevgep422423, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_424, 1.200000e+00
  store double %p_mul.i57, double* %scevgep422423, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond1223.not = icmp eq i64 %polly.indvar_next419, %polly.indvar412
  br i1 %exitcond1223.not, label %polly.loop_exit417, label %polly.loop_header415, !llvm.loop !94

polly.loop_header425:                             ; preds = %polly.loop_header425.preheader, %polly.loop_exit433
  %polly.indvar428 = phi i64 [ %polly.indvar_next429, %polly.loop_exit433 ], [ 0, %polly.loop_header425.preheader ]
  %170 = mul nuw nsw i64 %polly.indvar428, 50
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_exit456
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %exitcond1222.not = icmp eq i64 %polly.indvar_next429, 20
  br i1 %exitcond1222.not, label %polly.exiting322, label %polly.loop_header425

polly.loop_header431:                             ; preds = %polly.loop_exit456, %polly.loop_header425
  %indvars.iv1212 = phi i64 [ %indvars.iv.next1213, %polly.loop_exit456 ], [ 0, %polly.loop_header425 ]
  %indvars.iv1207 = phi i64 [ %indvars.iv.next1208, %polly.loop_exit456 ], [ 0, %polly.loop_header425 ]
  %indvars.iv1198 = phi i64 [ %indvars.iv.next1199, %polly.loop_exit456 ], [ 79, %polly.loop_header425 ]
  %indvars.iv1194 = phi i64 [ %indvars.iv.next1195, %polly.loop_exit456 ], [ 1200, %polly.loop_header425 ]
  %polly.indvar434 = phi i64 [ %polly.indvar_next435, %polly.loop_exit456 ], [ 0, %polly.loop_header425 ]
  %171 = mul nuw nsw i64 %polly.indvar434, 100
  %172 = lshr i64 %polly.indvar434, 2
  %173 = add nuw i64 %polly.indvar434, %172
  %174 = mul nuw nsw i64 %173, 80
  %175 = sub i64 %171, %174
  %176 = mul nsw i64 %polly.indvar434, -100
  %177 = add i64 %176, %174
  %178 = lshr i64 %polly.indvar434, 2
  %179 = add nuw i64 %polly.indvar434, %178
  %180 = mul nuw nsw i64 %179, 80
  %181 = sub i64 %indvars.iv1207, %180
  %182 = add i64 %indvars.iv1212, %180
  %183 = add i64 %indvars.iv1198, %180
  %184 = mul nuw nsw i64 %polly.indvar434, 100
  br label %polly.loop_header437

polly.loop_exit439:                               ; preds = %polly.loop_exit445
  %185 = mul nsw i64 %polly.indvar434, -100
  %186 = mul nuw nsw i64 %polly.indvar434, 5
  br label %polly.loop_header454

polly.loop_exit456:                               ; preds = %polly.loop_exit512
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %indvars.iv.next1195 = add nsw i64 %indvars.iv1194, -100
  %indvars.iv.next1199 = add nsw i64 %indvars.iv1198, -100
  %indvars.iv.next1208 = add nuw nsw i64 %indvars.iv1207, 100
  %indvars.iv.next1213 = add nsw i64 %indvars.iv1212, -100
  %exitcond1221.not = icmp eq i64 %polly.indvar_next435, 12
  br i1 %exitcond1221.not, label %polly.loop_exit433, label %polly.loop_header431

polly.loop_header437:                             ; preds = %polly.loop_exit445, %polly.loop_header431
  %polly.indvar440 = phi i64 [ 0, %polly.loop_header431 ], [ %polly.indvar_next441, %polly.loop_exit445 ]
  %187 = add nuw nsw i64 %polly.indvar440, %170
  %polly.access.mul.Packed_MemRef_call2326 = mul nuw nsw i64 %polly.indvar440, 1200
  br label %polly.loop_header443

polly.loop_exit445:                               ; preds = %polly.loop_header443
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %exitcond1197.not = icmp eq i64 %polly.indvar_next441, 50
  br i1 %exitcond1197.not, label %polly.loop_exit439, label %polly.loop_header437

polly.loop_header443:                             ; preds = %polly.loop_header443, %polly.loop_header437
  %polly.indvar446 = phi i64 [ 0, %polly.loop_header437 ], [ %polly.indvar_next447, %polly.loop_header443 ]
  %188 = add nuw nsw i64 %polly.indvar446, %184
  %polly.access.mul.call2450 = mul nuw nsw i64 %188, 1000
  %polly.access.add.call2451 = add nuw nsw i64 %187, %polly.access.mul.call2450
  %polly.access.call2452 = getelementptr double, double* %polly.access.cast.call2797, i64 %polly.access.add.call2451
  %polly.access.call2452.load = load double, double* %polly.access.call2452, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2326 = add nuw nsw i64 %polly.indvar446, %polly.access.mul.Packed_MemRef_call2326
  %polly.access.Packed_MemRef_call2326 = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call2326
  store double %polly.access.call2452.load, double* %polly.access.Packed_MemRef_call2326, align 8
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond1196.not = icmp eq i64 %polly.indvar_next447, %indvars.iv1194
  br i1 %exitcond1196.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header454:                             ; preds = %polly.loop_exit512, %polly.loop_exit439
  %indvar1444 = phi i64 [ %indvar.next1445, %polly.loop_exit512 ], [ 0, %polly.loop_exit439 ]
  %indvars.iv1214 = phi i64 [ %indvars.iv.next1215, %polly.loop_exit512 ], [ %182, %polly.loop_exit439 ]
  %indvars.iv1209 = phi i64 [ %indvars.iv.next1210, %polly.loop_exit512 ], [ %181, %polly.loop_exit439 ]
  %indvars.iv1200 = phi i64 [ %indvars.iv.next1201, %polly.loop_exit512 ], [ %183, %polly.loop_exit439 ]
  %polly.indvar457 = phi i64 [ %polly.indvar_next458, %polly.loop_exit512 ], [ %179, %polly.loop_exit439 ]
  %189 = mul nsw i64 %indvar1444, -80
  %190 = add i64 %175, %189
  %smax1446 = call i64 @llvm.smax.i64(i64 %190, i64 0)
  %191 = mul nuw nsw i64 %indvar1444, 80
  %192 = add i64 %177, %191
  %193 = add i64 %smax1446, %192
  %smax1211 = call i64 @llvm.smax.i64(i64 %indvars.iv1209, i64 0)
  %194 = add i64 %smax1211, %indvars.iv1214
  %smax1202 = call i64 @llvm.smax.i64(i64 %indvars.iv1200, i64 0)
  %195 = shl nsw i64 %polly.indvar457, 2
  %.not.not989 = icmp ugt i64 %195, %186
  %196 = mul nuw nsw i64 %polly.indvar457, 80
  %197 = add nsw i64 %196, %185
  %198 = icmp sgt i64 %197, 100
  %199 = select i1 %198, i64 %197, i64 100
  %200 = add nsw i64 %197, 79
  %polly.loop_guard484.not = icmp sgt i64 %199, %200
  br i1 %.not.not989, label %polly.loop_header460.us, label %polly.loop_header454.split

polly.loop_header460.us:                          ; preds = %polly.loop_header454, %polly.merge467.us
  %polly.indvar463.us = phi i64 [ %polly.indvar_next464.us, %polly.merge467.us ], [ 0, %polly.loop_header454 ]
  %201 = add nuw nsw i64 %polly.indvar463.us, %170
  %polly.access.mul.Packed_MemRef_call1324.us = mul nuw nsw i64 %polly.indvar463.us, 1200
  br label %polly.loop_header470.us

polly.loop_header470.us:                          ; preds = %polly.loop_header460.us, %polly.loop_header470.us
  %polly.indvar473.us = phi i64 [ %polly.indvar_next474.us, %polly.loop_header470.us ], [ 0, %polly.loop_header460.us ]
  %202 = add nuw nsw i64 %polly.indvar473.us, %184
  %polly.access.mul.call1477.us = mul nuw nsw i64 %202, 1000
  %polly.access.add.call1478.us = add nuw nsw i64 %polly.access.mul.call1477.us, %201
  %polly.access.call1479.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1478.us
  %polly.access.call1479.load.us = load double, double* %polly.access.call1479.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324.us = add nuw nsw i64 %polly.indvar473.us, %polly.access.mul.Packed_MemRef_call1324.us
  %polly.access.Packed_MemRef_call1324.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324.us
  store double %polly.access.call1479.load.us, double* %polly.access.Packed_MemRef_call1324.us, align 8
  %polly.indvar_next474.us = add nuw nsw i64 %polly.indvar473.us, 1
  %exitcond1205.not = icmp eq i64 %polly.indvar_next474.us, 100
  br i1 %exitcond1205.not, label %polly.loop_exit472.us, label %polly.loop_header470.us

polly.loop_exit472.us:                            ; preds = %polly.loop_header470.us
  br i1 %polly.loop_guard484.not, label %polly.merge467.us, label %polly.loop_header481.us

polly.loop_header481.us:                          ; preds = %polly.loop_exit472.us, %polly.loop_header481.us
  %polly.indvar485.us = phi i64 [ %polly.indvar_next486.us, %polly.loop_header481.us ], [ %199, %polly.loop_exit472.us ]
  %203 = add nuw nsw i64 %polly.indvar485.us, %184
  %polly.access.mul.call1489.us = mul nsw i64 %203, 1000
  %polly.access.add.call1490.us = add nuw nsw i64 %polly.access.mul.call1489.us, %201
  %polly.access.call1491.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1490.us
  %polly.access.call1491.load.us = load double, double* %polly.access.call1491.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324493.us = add nuw nsw i64 %polly.indvar485.us, %polly.access.mul.Packed_MemRef_call1324.us
  %polly.access.Packed_MemRef_call1324494.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324493.us
  store double %polly.access.call1491.load.us, double* %polly.access.Packed_MemRef_call1324494.us, align 8
  %polly.indvar_next486.us = add nuw nsw i64 %polly.indvar485.us, 1
  %polly.loop_cond487.not.not.us = icmp slt i64 %polly.indvar485.us, %200
  br i1 %polly.loop_cond487.not.not.us, label %polly.loop_header481.us, label %polly.merge467.us

polly.merge467.us:                                ; preds = %polly.loop_header481.us, %polly.loop_exit472.us
  %polly.indvar_next464.us = add nuw nsw i64 %polly.indvar463.us, 1
  %exitcond1206.not = icmp eq i64 %polly.indvar_next464.us, 50
  br i1 %exitcond1206.not, label %polly.loop_header510.preheader, label %polly.loop_header460.us

polly.loop_header454.split:                       ; preds = %polly.loop_header454
  %polly.loop_guard499 = icmp sgt i64 %197, -80
  br i1 %polly.loop_guard499, label %polly.loop_header460.us1063, label %polly.loop_header510.preheader

polly.loop_header460.us1063:                      ; preds = %polly.loop_header454.split, %polly.merge467.loopexit992.us1108
  %polly.indvar463.us1064 = phi i64 [ %polly.indvar_next464.us1100, %polly.merge467.loopexit992.us1108 ], [ 0, %polly.loop_header454.split ]
  %204 = add nuw nsw i64 %polly.indvar463.us1064, %170
  %polly.access.mul.Packed_MemRef_call1324507.us1107 = mul nuw nsw i64 %polly.indvar463.us1064, 1200
  br label %polly.loop_header496.us1066

polly.loop_header496.us1066:                      ; preds = %polly.loop_header460.us1063, %polly.loop_header496.us1066
  %polly.indvar500.us1067 = phi i64 [ %polly.indvar_next501.us1074, %polly.loop_header496.us1066 ], [ 0, %polly.loop_header460.us1063 ]
  %205 = add nuw nsw i64 %polly.indvar500.us1067, %184
  %polly.access.mul.call1504.us1068 = mul nuw nsw i64 %205, 1000
  %polly.access.add.call1505.us1069 = add nuw nsw i64 %204, %polly.access.mul.call1504.us1068
  %polly.access.call1506.us1070 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1505.us1069
  %polly.access.call1506.load.us1071 = load double, double* %polly.access.call1506.us1070, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1324508.us1072 = add nuw nsw i64 %polly.indvar500.us1067, %polly.access.mul.Packed_MemRef_call1324507.us1107
  %polly.access.Packed_MemRef_call1324509.us1073 = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324508.us1072
  store double %polly.access.call1506.load.us1071, double* %polly.access.Packed_MemRef_call1324509.us1073, align 8
  %polly.indvar_next501.us1074 = add nuw nsw i64 %polly.indvar500.us1067, 1
  %exitcond1203.not = icmp eq i64 %polly.indvar500.us1067, %smax1202
  br i1 %exitcond1203.not, label %polly.merge467.loopexit992.us1108, label %polly.loop_header496.us1066

polly.merge467.loopexit992.us1108:                ; preds = %polly.loop_header496.us1066
  %polly.indvar_next464.us1100 = add nuw nsw i64 %polly.indvar463.us1064, 1
  %exitcond1204.not = icmp eq i64 %polly.indvar_next464.us1100, 50
  br i1 %exitcond1204.not, label %polly.loop_header510.preheader, label %polly.loop_header460.us1063

polly.loop_exit512:                               ; preds = %polly.loop_exit519.loopexit.us, %polly.loop_header510.preheader
  %polly.indvar_next458 = add nuw nsw i64 %polly.indvar457, 1
  %polly.loop_cond459 = icmp ult i64 %polly.indvar457, 14
  %indvars.iv.next1201 = add i64 %indvars.iv1200, 80
  %indvars.iv.next1210 = add i64 %indvars.iv1209, -80
  %indvars.iv.next1215 = add i64 %indvars.iv1214, 80
  %indvar.next1445 = add i64 %indvar1444, 1
  br i1 %polly.loop_cond459, label %polly.loop_header454, label %polly.loop_exit456

polly.loop_header510.preheader:                   ; preds = %polly.merge467.loopexit992.us1108, %polly.merge467.us, %polly.loop_header454.split
  %206 = sub nsw i64 %184, %196
  %207 = icmp sgt i64 %206, 0
  %208 = select i1 %207, i64 %206, i64 0
  %polly.loop_guard520 = icmp slt i64 %208, 80
  br i1 %polly.loop_guard520, label %polly.loop_header510.us, label %polly.loop_exit512

polly.loop_header510.us:                          ; preds = %polly.loop_header510.preheader, %polly.loop_exit519.loopexit.us
  %polly.indvar513.us = phi i64 [ %polly.indvar_next514.us, %polly.loop_exit519.loopexit.us ], [ 0, %polly.loop_header510.preheader ]
  %polly.access.mul.Packed_MemRef_call1324532.us = mul nuw nsw i64 %polly.indvar513.us, 1200
  br label %polly.loop_header517.us

polly.loop_header517.us:                          ; preds = %polly.loop_header510.us, %polly.loop_exit527.us
  %indvar1447 = phi i64 [ 0, %polly.loop_header510.us ], [ %indvar.next1448, %polly.loop_exit527.us ]
  %indvars.iv1216 = phi i64 [ %194, %polly.loop_header510.us ], [ %indvars.iv.next1217, %polly.loop_exit527.us ]
  %polly.indvar521.us = phi i64 [ %208, %polly.loop_header510.us ], [ %polly.indvar_next522.us, %polly.loop_exit527.us ]
  %209 = add i64 %193, %indvar1447
  %smin1449 = call i64 @llvm.smin.i64(i64 %209, i64 99)
  %210 = add nsw i64 %smin1449, 1
  %smin1218 = call i64 @llvm.smin.i64(i64 %indvars.iv1216, i64 99)
  %211 = add nuw i64 %polly.indvar521.us, %196
  %212 = add i64 %211, %185
  %polly.loop_guard528.us1291 = icmp sgt i64 %212, -1
  br i1 %polly.loop_guard528.us1291, label %polly.loop_header525.preheader.us, label %polly.loop_exit527.us

polly.loop_header525.us:                          ; preds = %polly.loop_header525.us.preheader, %polly.loop_header525.us
  %polly.indvar529.us = phi i64 [ %polly.indvar_next530.us, %polly.loop_header525.us ], [ %polly.indvar529.us.ph, %polly.loop_header525.us.preheader ]
  %213 = add nuw nsw i64 %polly.indvar529.us, %184
  %polly.access.add.Packed_MemRef_call1324533.us = add nuw nsw i64 %polly.indvar529.us, %polly.access.mul.Packed_MemRef_call1324532.us
  %polly.access.Packed_MemRef_call1324534.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call1324533.us
  %_p_scalar_535.us = load double, double* %polly.access.Packed_MemRef_call1324534.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_539.us, %_p_scalar_535.us
  %polly.access.Packed_MemRef_call2326542.us = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call1324533.us
  %_p_scalar_543.us = load double, double* %polly.access.Packed_MemRef_call2326542.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_547.us, %_p_scalar_543.us
  %214 = shl i64 %213, 3
  %215 = add i64 %214, %216
  %scevgep548.us = getelementptr i8, i8* %call, i64 %215
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_550.us
  store double %p_add42.i79.us, double* %scevgep548549.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next530.us = add nuw nsw i64 %polly.indvar529.us, 1
  %exitcond1219.not = icmp eq i64 %polly.indvar529.us, %smin1218
  br i1 %exitcond1219.not, label %polly.loop_exit527.us, label %polly.loop_header525.us, !llvm.loop !97

polly.loop_exit527.us:                            ; preds = %polly.loop_header525.us, %middle.block1441, %polly.loop_header517.us
  %polly.indvar_next522.us = add nuw nsw i64 %polly.indvar521.us, 1
  %polly.loop_cond523.us = icmp ult i64 %polly.indvar521.us, 79
  %indvars.iv.next1217 = add i64 %indvars.iv1216, 1
  %indvar.next1448 = add i64 %indvar1447, 1
  br i1 %polly.loop_cond523.us, label %polly.loop_header517.us, label %polly.loop_exit519.loopexit.us

polly.loop_header525.preheader.us:                ; preds = %polly.loop_header517.us
  %polly.access.add.Packed_MemRef_call2326537.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1324532.us, %212
  %polly.access.Packed_MemRef_call2326538.us = getelementptr double, double* %Packed_MemRef_call2326, i64 %polly.access.add.Packed_MemRef_call2326537.us
  %_p_scalar_539.us = load double, double* %polly.access.Packed_MemRef_call2326538.us, align 8
  %polly.access.Packed_MemRef_call1324546.us = getelementptr double, double* %Packed_MemRef_call1324, i64 %polly.access.add.Packed_MemRef_call2326537.us
  %_p_scalar_547.us = load double, double* %polly.access.Packed_MemRef_call1324546.us, align 8
  %216 = mul i64 %211, 9600
  %min.iters.check1450 = icmp ult i64 %210, 4
  br i1 %min.iters.check1450, label %polly.loop_header525.us.preheader, label %vector.ph1451

vector.ph1451:                                    ; preds = %polly.loop_header525.preheader.us
  %n.vec1453 = and i64 %210, -4
  %broadcast.splatinsert1459 = insertelement <4 x double> poison, double %_p_scalar_539.us, i32 0
  %broadcast.splat1460 = shufflevector <4 x double> %broadcast.splatinsert1459, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1462 = insertelement <4 x double> poison, double %_p_scalar_547.us, i32 0
  %broadcast.splat1463 = shufflevector <4 x double> %broadcast.splatinsert1462, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1443

vector.body1443:                                  ; preds = %vector.body1443, %vector.ph1451
  %index1454 = phi i64 [ 0, %vector.ph1451 ], [ %index.next1455, %vector.body1443 ]
  %217 = add nuw nsw i64 %index1454, %184
  %218 = add nuw nsw i64 %index1454, %polly.access.mul.Packed_MemRef_call1324532.us
  %219 = getelementptr double, double* %Packed_MemRef_call1324, i64 %218
  %220 = bitcast double* %219 to <4 x double>*
  %wide.load1458 = load <4 x double>, <4 x double>* %220, align 8
  %221 = fmul fast <4 x double> %broadcast.splat1460, %wide.load1458
  %222 = getelementptr double, double* %Packed_MemRef_call2326, i64 %218
  %223 = bitcast double* %222 to <4 x double>*
  %wide.load1461 = load <4 x double>, <4 x double>* %223, align 8
  %224 = fmul fast <4 x double> %broadcast.splat1463, %wide.load1461
  %225 = shl i64 %217, 3
  %226 = add i64 %225, %216
  %227 = getelementptr i8, i8* %call, i64 %226
  %228 = bitcast i8* %227 to <4 x double>*
  %wide.load1464 = load <4 x double>, <4 x double>* %228, align 8, !alias.scope !86, !noalias !88
  %229 = fadd fast <4 x double> %224, %221
  %230 = fmul fast <4 x double> %229, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %231 = fadd fast <4 x double> %230, %wide.load1464
  %232 = bitcast i8* %227 to <4 x double>*
  store <4 x double> %231, <4 x double>* %232, align 8, !alias.scope !86, !noalias !88
  %index.next1455 = add i64 %index1454, 4
  %233 = icmp eq i64 %index.next1455, %n.vec1453
  br i1 %233, label %middle.block1441, label %vector.body1443, !llvm.loop !98

middle.block1441:                                 ; preds = %vector.body1443
  %cmp.n1457 = icmp eq i64 %210, %n.vec1453
  br i1 %cmp.n1457, label %polly.loop_exit527.us, label %polly.loop_header525.us.preheader

polly.loop_header525.us.preheader:                ; preds = %polly.loop_header525.preheader.us, %middle.block1441
  %polly.indvar529.us.ph = phi i64 [ 0, %polly.loop_header525.preheader.us ], [ %n.vec1453, %middle.block1441 ]
  br label %polly.loop_header525.us

polly.loop_exit519.loopexit.us:                   ; preds = %polly.loop_exit527.us
  %polly.indvar_next514.us = add nuw nsw i64 %polly.indvar513.us, 1
  %exitcond1220.not = icmp eq i64 %polly.indvar_next514.us, 50
  br i1 %exitcond1220.not, label %polly.loop_exit512, label %polly.loop_header510.us

polly.start553:                                   ; preds = %init_array.exit
  %malloccall555 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  %malloccall557 = tail call dereferenceable_or_null(480000) i8* @malloc(i64 480000) #6
  br label %polly.loop_header641

polly.exiting554:                                 ; preds = %polly.loop_exit665
  tail call void @free(i8* %malloccall555)
  tail call void @free(i8* %malloccall557)
  br label %kernel_syr2k.exit

polly.loop_header641:                             ; preds = %polly.loop_exit649, %polly.start553
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit649 ], [ 0, %polly.start553 ]
  %polly.indvar644 = phi i64 [ %polly.indvar_next645, %polly.loop_exit649 ], [ 1, %polly.start553 ]
  %234 = add i64 %indvar, 1
  %235 = mul nuw nsw i64 %polly.indvar644, 9600
  %scevgep653 = getelementptr i8, i8* %call, i64 %235
  %min.iters.check1382 = icmp ult i64 %234, 4
  br i1 %min.iters.check1382, label %polly.loop_header647.preheader, label %vector.ph1383

vector.ph1383:                                    ; preds = %polly.loop_header641
  %n.vec1385 = and i64 %234, -4
  br label %vector.body1381

vector.body1381:                                  ; preds = %vector.body1381, %vector.ph1383
  %index1386 = phi i64 [ 0, %vector.ph1383 ], [ %index.next1387, %vector.body1381 ]
  %236 = shl nuw nsw i64 %index1386, 3
  %237 = getelementptr i8, i8* %scevgep653, i64 %236
  %238 = bitcast i8* %237 to <4 x double>*
  %wide.load1390 = load <4 x double>, <4 x double>* %238, align 8, !alias.scope !99, !noalias !101
  %239 = fmul fast <4 x double> %wide.load1390, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %240 = bitcast i8* %237 to <4 x double>*
  store <4 x double> %239, <4 x double>* %240, align 8, !alias.scope !99, !noalias !101
  %index.next1387 = add i64 %index1386, 4
  %241 = icmp eq i64 %index.next1387, %n.vec1385
  br i1 %241, label %middle.block1379, label %vector.body1381, !llvm.loop !106

middle.block1379:                                 ; preds = %vector.body1381
  %cmp.n1389 = icmp eq i64 %234, %n.vec1385
  br i1 %cmp.n1389, label %polly.loop_exit649, label %polly.loop_header647.preheader

polly.loop_header647.preheader:                   ; preds = %polly.loop_header641, %middle.block1379
  %polly.indvar650.ph = phi i64 [ 0, %polly.loop_header641 ], [ %n.vec1385, %middle.block1379 ]
  br label %polly.loop_header647

polly.loop_exit649:                               ; preds = %polly.loop_header647, %middle.block1379
  %polly.indvar_next645 = add nuw nsw i64 %polly.indvar644, 1
  %exitcond1255.not = icmp eq i64 %polly.indvar_next645, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1255.not, label %polly.loop_header657.preheader, label %polly.loop_header641

polly.loop_header657.preheader:                   ; preds = %polly.loop_exit649
  %Packed_MemRef_call1556 = bitcast i8* %malloccall555 to double*
  %Packed_MemRef_call2558 = bitcast i8* %malloccall557 to double*
  br label %polly.loop_header657

polly.loop_header647:                             ; preds = %polly.loop_header647.preheader, %polly.loop_header647
  %polly.indvar650 = phi i64 [ %polly.indvar_next651, %polly.loop_header647 ], [ %polly.indvar650.ph, %polly.loop_header647.preheader ]
  %242 = shl nuw nsw i64 %polly.indvar650, 3
  %scevgep654 = getelementptr i8, i8* %scevgep653, i64 %242
  %scevgep654655 = bitcast i8* %scevgep654 to double*
  %_p_scalar_656 = load double, double* %scevgep654655, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_656, 1.200000e+00
  store double %p_mul.i, double* %scevgep654655, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next651 = add nuw nsw i64 %polly.indvar650, 1
  %exitcond1254.not = icmp eq i64 %polly.indvar_next651, %polly.indvar644
  br i1 %exitcond1254.not, label %polly.loop_exit649, label %polly.loop_header647, !llvm.loop !107

polly.loop_header657:                             ; preds = %polly.loop_header657.preheader, %polly.loop_exit665
  %polly.indvar660 = phi i64 [ %polly.indvar_next661, %polly.loop_exit665 ], [ 0, %polly.loop_header657.preheader ]
  %243 = mul nuw nsw i64 %polly.indvar660, 50
  br label %polly.loop_header663

polly.loop_exit665:                               ; preds = %polly.loop_exit688
  %polly.indvar_next661 = add nuw nsw i64 %polly.indvar660, 1
  %exitcond1253.not = icmp eq i64 %polly.indvar_next661, 20
  br i1 %exitcond1253.not, label %polly.exiting554, label %polly.loop_header657

polly.loop_header663:                             ; preds = %polly.loop_exit688, %polly.loop_header657
  %indvars.iv1243 = phi i64 [ %indvars.iv.next1244, %polly.loop_exit688 ], [ 0, %polly.loop_header657 ]
  %indvars.iv1238 = phi i64 [ %indvars.iv.next1239, %polly.loop_exit688 ], [ 0, %polly.loop_header657 ]
  %indvars.iv1229 = phi i64 [ %indvars.iv.next1230, %polly.loop_exit688 ], [ 79, %polly.loop_header657 ]
  %indvars.iv1225 = phi i64 [ %indvars.iv.next1226, %polly.loop_exit688 ], [ 1200, %polly.loop_header657 ]
  %polly.indvar666 = phi i64 [ %polly.indvar_next667, %polly.loop_exit688 ], [ 0, %polly.loop_header657 ]
  %244 = mul nuw nsw i64 %polly.indvar666, 100
  %245 = lshr i64 %polly.indvar666, 2
  %246 = add nuw i64 %polly.indvar666, %245
  %247 = mul nuw nsw i64 %246, 80
  %248 = sub i64 %244, %247
  %249 = mul nsw i64 %polly.indvar666, -100
  %250 = add i64 %249, %247
  %251 = lshr i64 %polly.indvar666, 2
  %252 = add nuw i64 %polly.indvar666, %251
  %253 = mul nuw nsw i64 %252, 80
  %254 = sub i64 %indvars.iv1238, %253
  %255 = add i64 %indvars.iv1243, %253
  %256 = add i64 %indvars.iv1229, %253
  %257 = mul nuw nsw i64 %polly.indvar666, 100
  br label %polly.loop_header669

polly.loop_exit671:                               ; preds = %polly.loop_exit677
  %258 = mul nsw i64 %polly.indvar666, -100
  %259 = mul nuw nsw i64 %polly.indvar666, 5
  br label %polly.loop_header686

polly.loop_exit688:                               ; preds = %polly.loop_exit744
  %polly.indvar_next667 = add nuw nsw i64 %polly.indvar666, 1
  %indvars.iv.next1226 = add nsw i64 %indvars.iv1225, -100
  %indvars.iv.next1230 = add nsw i64 %indvars.iv1229, -100
  %indvars.iv.next1239 = add nuw nsw i64 %indvars.iv1238, 100
  %indvars.iv.next1244 = add nsw i64 %indvars.iv1243, -100
  %exitcond1252.not = icmp eq i64 %polly.indvar_next667, 12
  br i1 %exitcond1252.not, label %polly.loop_exit665, label %polly.loop_header663

polly.loop_header669:                             ; preds = %polly.loop_exit677, %polly.loop_header663
  %polly.indvar672 = phi i64 [ 0, %polly.loop_header663 ], [ %polly.indvar_next673, %polly.loop_exit677 ]
  %260 = add nuw nsw i64 %polly.indvar672, %243
  %polly.access.mul.Packed_MemRef_call2558 = mul nuw nsw i64 %polly.indvar672, 1200
  br label %polly.loop_header675

polly.loop_exit677:                               ; preds = %polly.loop_header675
  %polly.indvar_next673 = add nuw nsw i64 %polly.indvar672, 1
  %exitcond1228.not = icmp eq i64 %polly.indvar_next673, 50
  br i1 %exitcond1228.not, label %polly.loop_exit671, label %polly.loop_header669

polly.loop_header675:                             ; preds = %polly.loop_header675, %polly.loop_header669
  %polly.indvar678 = phi i64 [ 0, %polly.loop_header669 ], [ %polly.indvar_next679, %polly.loop_header675 ]
  %261 = add nuw nsw i64 %polly.indvar678, %257
  %polly.access.mul.call2682 = mul nuw nsw i64 %261, 1000
  %polly.access.add.call2683 = add nuw nsw i64 %260, %polly.access.mul.call2682
  %polly.access.call2684 = getelementptr double, double* %polly.access.cast.call2797, i64 %polly.access.add.call2683
  %polly.access.call2684.load = load double, double* %polly.access.call2684, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2558 = add nuw nsw i64 %polly.indvar678, %polly.access.mul.Packed_MemRef_call2558
  %polly.access.Packed_MemRef_call2558 = getelementptr double, double* %Packed_MemRef_call2558, i64 %polly.access.add.Packed_MemRef_call2558
  store double %polly.access.call2684.load, double* %polly.access.Packed_MemRef_call2558, align 8
  %polly.indvar_next679 = add nuw nsw i64 %polly.indvar678, 1
  %exitcond1227.not = icmp eq i64 %polly.indvar_next679, %indvars.iv1225
  br i1 %exitcond1227.not, label %polly.loop_exit677, label %polly.loop_header675

polly.loop_header686:                             ; preds = %polly.loop_exit744, %polly.loop_exit671
  %indvar1394 = phi i64 [ %indvar.next1395, %polly.loop_exit744 ], [ 0, %polly.loop_exit671 ]
  %indvars.iv1245 = phi i64 [ %indvars.iv.next1246, %polly.loop_exit744 ], [ %255, %polly.loop_exit671 ]
  %indvars.iv1240 = phi i64 [ %indvars.iv.next1241, %polly.loop_exit744 ], [ %254, %polly.loop_exit671 ]
  %indvars.iv1231 = phi i64 [ %indvars.iv.next1232, %polly.loop_exit744 ], [ %256, %polly.loop_exit671 ]
  %polly.indvar689 = phi i64 [ %polly.indvar_next690, %polly.loop_exit744 ], [ %252, %polly.loop_exit671 ]
  %262 = mul nsw i64 %indvar1394, -80
  %263 = add i64 %248, %262
  %smax1396 = call i64 @llvm.smax.i64(i64 %263, i64 0)
  %264 = mul nuw nsw i64 %indvar1394, 80
  %265 = add i64 %250, %264
  %266 = add i64 %smax1396, %265
  %smax1242 = call i64 @llvm.smax.i64(i64 %indvars.iv1240, i64 0)
  %267 = add i64 %smax1242, %indvars.iv1245
  %smax1233 = call i64 @llvm.smax.i64(i64 %indvars.iv1231, i64 0)
  %268 = shl nsw i64 %polly.indvar689, 2
  %.not.not990 = icmp ugt i64 %268, %259
  %269 = mul nuw nsw i64 %polly.indvar689, 80
  %270 = add nsw i64 %269, %258
  %271 = icmp sgt i64 %270, 100
  %272 = select i1 %271, i64 %270, i64 100
  %273 = add nsw i64 %270, 79
  %polly.loop_guard716.not = icmp sgt i64 %272, %273
  br i1 %.not.not990, label %polly.loop_header692.us, label %polly.loop_header686.split

polly.loop_header692.us:                          ; preds = %polly.loop_header686, %polly.merge699.us
  %polly.indvar695.us = phi i64 [ %polly.indvar_next696.us, %polly.merge699.us ], [ 0, %polly.loop_header686 ]
  %274 = add nuw nsw i64 %polly.indvar695.us, %243
  %polly.access.mul.Packed_MemRef_call1556.us = mul nuw nsw i64 %polly.indvar695.us, 1200
  br label %polly.loop_header702.us

polly.loop_header702.us:                          ; preds = %polly.loop_header692.us, %polly.loop_header702.us
  %polly.indvar705.us = phi i64 [ %polly.indvar_next706.us, %polly.loop_header702.us ], [ 0, %polly.loop_header692.us ]
  %275 = add nuw nsw i64 %polly.indvar705.us, %257
  %polly.access.mul.call1709.us = mul nuw nsw i64 %275, 1000
  %polly.access.add.call1710.us = add nuw nsw i64 %polly.access.mul.call1709.us, %274
  %polly.access.call1711.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1710.us
  %polly.access.call1711.load.us = load double, double* %polly.access.call1711.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556.us = add nuw nsw i64 %polly.indvar705.us, %polly.access.mul.Packed_MemRef_call1556.us
  %polly.access.Packed_MemRef_call1556.us = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556.us
  store double %polly.access.call1711.load.us, double* %polly.access.Packed_MemRef_call1556.us, align 8
  %polly.indvar_next706.us = add nuw nsw i64 %polly.indvar705.us, 1
  %exitcond1236.not = icmp eq i64 %polly.indvar_next706.us, 100
  br i1 %exitcond1236.not, label %polly.loop_exit704.us, label %polly.loop_header702.us

polly.loop_exit704.us:                            ; preds = %polly.loop_header702.us
  br i1 %polly.loop_guard716.not, label %polly.merge699.us, label %polly.loop_header713.us

polly.loop_header713.us:                          ; preds = %polly.loop_exit704.us, %polly.loop_header713.us
  %polly.indvar717.us = phi i64 [ %polly.indvar_next718.us, %polly.loop_header713.us ], [ %272, %polly.loop_exit704.us ]
  %276 = add nuw nsw i64 %polly.indvar717.us, %257
  %polly.access.mul.call1721.us = mul nsw i64 %276, 1000
  %polly.access.add.call1722.us = add nuw nsw i64 %polly.access.mul.call1721.us, %274
  %polly.access.call1723.us = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1722.us
  %polly.access.call1723.load.us = load double, double* %polly.access.call1723.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556725.us = add nuw nsw i64 %polly.indvar717.us, %polly.access.mul.Packed_MemRef_call1556.us
  %polly.access.Packed_MemRef_call1556726.us = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556725.us
  store double %polly.access.call1723.load.us, double* %polly.access.Packed_MemRef_call1556726.us, align 8
  %polly.indvar_next718.us = add nuw nsw i64 %polly.indvar717.us, 1
  %polly.loop_cond719.not.not.us = icmp slt i64 %polly.indvar717.us, %273
  br i1 %polly.loop_cond719.not.not.us, label %polly.loop_header713.us, label %polly.merge699.us

polly.merge699.us:                                ; preds = %polly.loop_header713.us, %polly.loop_exit704.us
  %polly.indvar_next696.us = add nuw nsw i64 %polly.indvar695.us, 1
  %exitcond1237.not = icmp eq i64 %polly.indvar_next696.us, 50
  br i1 %exitcond1237.not, label %polly.loop_header742.preheader, label %polly.loop_header692.us

polly.loop_header686.split:                       ; preds = %polly.loop_header686
  %polly.loop_guard731 = icmp sgt i64 %270, -80
  br i1 %polly.loop_guard731, label %polly.loop_header692.us1109, label %polly.loop_header742.preheader

polly.loop_header692.us1109:                      ; preds = %polly.loop_header686.split, %polly.merge699.loopexit993.us1154
  %polly.indvar695.us1110 = phi i64 [ %polly.indvar_next696.us1146, %polly.merge699.loopexit993.us1154 ], [ 0, %polly.loop_header686.split ]
  %277 = add nuw nsw i64 %polly.indvar695.us1110, %243
  %polly.access.mul.Packed_MemRef_call1556739.us1153 = mul nuw nsw i64 %polly.indvar695.us1110, 1200
  br label %polly.loop_header728.us1112

polly.loop_header728.us1112:                      ; preds = %polly.loop_header692.us1109, %polly.loop_header728.us1112
  %polly.indvar732.us1113 = phi i64 [ %polly.indvar_next733.us1120, %polly.loop_header728.us1112 ], [ 0, %polly.loop_header692.us1109 ]
  %278 = add nuw nsw i64 %polly.indvar732.us1113, %257
  %polly.access.mul.call1736.us1114 = mul nuw nsw i64 %278, 1000
  %polly.access.add.call1737.us1115 = add nuw nsw i64 %277, %polly.access.mul.call1736.us1114
  %polly.access.call1738.us1116 = getelementptr double, double* %polly.access.cast.call1787, i64 %polly.access.add.call1737.us1115
  %polly.access.call1738.load.us1117 = load double, double* %polly.access.call1738.us1116, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1556740.us1118 = add nuw nsw i64 %polly.indvar732.us1113, %polly.access.mul.Packed_MemRef_call1556739.us1153
  %polly.access.Packed_MemRef_call1556741.us1119 = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556740.us1118
  store double %polly.access.call1738.load.us1117, double* %polly.access.Packed_MemRef_call1556741.us1119, align 8
  %polly.indvar_next733.us1120 = add nuw nsw i64 %polly.indvar732.us1113, 1
  %exitcond1234.not = icmp eq i64 %polly.indvar732.us1113, %smax1233
  br i1 %exitcond1234.not, label %polly.merge699.loopexit993.us1154, label %polly.loop_header728.us1112

polly.merge699.loopexit993.us1154:                ; preds = %polly.loop_header728.us1112
  %polly.indvar_next696.us1146 = add nuw nsw i64 %polly.indvar695.us1110, 1
  %exitcond1235.not = icmp eq i64 %polly.indvar_next696.us1146, 50
  br i1 %exitcond1235.not, label %polly.loop_header742.preheader, label %polly.loop_header692.us1109

polly.loop_exit744:                               ; preds = %polly.loop_exit751.loopexit.us, %polly.loop_header742.preheader
  %polly.indvar_next690 = add nuw nsw i64 %polly.indvar689, 1
  %polly.loop_cond691 = icmp ult i64 %polly.indvar689, 14
  %indvars.iv.next1232 = add i64 %indvars.iv1231, 80
  %indvars.iv.next1241 = add i64 %indvars.iv1240, -80
  %indvars.iv.next1246 = add i64 %indvars.iv1245, 80
  %indvar.next1395 = add i64 %indvar1394, 1
  br i1 %polly.loop_cond691, label %polly.loop_header686, label %polly.loop_exit688

polly.loop_header742.preheader:                   ; preds = %polly.merge699.loopexit993.us1154, %polly.merge699.us, %polly.loop_header686.split
  %279 = sub nsw i64 %257, %269
  %280 = icmp sgt i64 %279, 0
  %281 = select i1 %280, i64 %279, i64 0
  %polly.loop_guard752 = icmp slt i64 %281, 80
  br i1 %polly.loop_guard752, label %polly.loop_header742.us, label %polly.loop_exit744

polly.loop_header742.us:                          ; preds = %polly.loop_header742.preheader, %polly.loop_exit751.loopexit.us
  %polly.indvar745.us = phi i64 [ %polly.indvar_next746.us, %polly.loop_exit751.loopexit.us ], [ 0, %polly.loop_header742.preheader ]
  %polly.access.mul.Packed_MemRef_call1556764.us = mul nuw nsw i64 %polly.indvar745.us, 1200
  br label %polly.loop_header749.us

polly.loop_header749.us:                          ; preds = %polly.loop_header742.us, %polly.loop_exit759.us
  %indvar1397 = phi i64 [ 0, %polly.loop_header742.us ], [ %indvar.next1398, %polly.loop_exit759.us ]
  %indvars.iv1247 = phi i64 [ %267, %polly.loop_header742.us ], [ %indvars.iv.next1248, %polly.loop_exit759.us ]
  %polly.indvar753.us = phi i64 [ %281, %polly.loop_header742.us ], [ %polly.indvar_next754.us, %polly.loop_exit759.us ]
  %282 = add i64 %266, %indvar1397
  %smin1399 = call i64 @llvm.smin.i64(i64 %282, i64 99)
  %283 = add nsw i64 %smin1399, 1
  %smin1249 = call i64 @llvm.smin.i64(i64 %indvars.iv1247, i64 99)
  %284 = add nuw i64 %polly.indvar753.us, %269
  %285 = add i64 %284, %258
  %polly.loop_guard760.us1292 = icmp sgt i64 %285, -1
  br i1 %polly.loop_guard760.us1292, label %polly.loop_header757.preheader.us, label %polly.loop_exit759.us

polly.loop_header757.us:                          ; preds = %polly.loop_header757.us.preheader, %polly.loop_header757.us
  %polly.indvar761.us = phi i64 [ %polly.indvar_next762.us, %polly.loop_header757.us ], [ %polly.indvar761.us.ph, %polly.loop_header757.us.preheader ]
  %286 = add nuw nsw i64 %polly.indvar761.us, %257
  %polly.access.add.Packed_MemRef_call1556765.us = add nuw nsw i64 %polly.indvar761.us, %polly.access.mul.Packed_MemRef_call1556764.us
  %polly.access.Packed_MemRef_call1556766.us = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call1556765.us
  %_p_scalar_767.us = load double, double* %polly.access.Packed_MemRef_call1556766.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_771.us, %_p_scalar_767.us
  %polly.access.Packed_MemRef_call2558774.us = getelementptr double, double* %Packed_MemRef_call2558, i64 %polly.access.add.Packed_MemRef_call1556765.us
  %_p_scalar_775.us = load double, double* %polly.access.Packed_MemRef_call2558774.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_779.us, %_p_scalar_775.us
  %287 = shl i64 %286, 3
  %288 = add i64 %287, %289
  %scevgep780.us = getelementptr i8, i8* %call, i64 %288
  %scevgep780781.us = bitcast i8* %scevgep780.us to double*
  %_p_scalar_782.us = load double, double* %scevgep780781.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_782.us
  store double %p_add42.i.us, double* %scevgep780781.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next762.us = add nuw nsw i64 %polly.indvar761.us, 1
  %exitcond1250.not = icmp eq i64 %polly.indvar761.us, %smin1249
  br i1 %exitcond1250.not, label %polly.loop_exit759.us, label %polly.loop_header757.us, !llvm.loop !110

polly.loop_exit759.us:                            ; preds = %polly.loop_header757.us, %middle.block1391, %polly.loop_header749.us
  %polly.indvar_next754.us = add nuw nsw i64 %polly.indvar753.us, 1
  %polly.loop_cond755.us = icmp ult i64 %polly.indvar753.us, 79
  %indvars.iv.next1248 = add i64 %indvars.iv1247, 1
  %indvar.next1398 = add i64 %indvar1397, 1
  br i1 %polly.loop_cond755.us, label %polly.loop_header749.us, label %polly.loop_exit751.loopexit.us

polly.loop_header757.preheader.us:                ; preds = %polly.loop_header749.us
  %polly.access.add.Packed_MemRef_call2558769.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1556764.us, %285
  %polly.access.Packed_MemRef_call2558770.us = getelementptr double, double* %Packed_MemRef_call2558, i64 %polly.access.add.Packed_MemRef_call2558769.us
  %_p_scalar_771.us = load double, double* %polly.access.Packed_MemRef_call2558770.us, align 8
  %polly.access.Packed_MemRef_call1556778.us = getelementptr double, double* %Packed_MemRef_call1556, i64 %polly.access.add.Packed_MemRef_call2558769.us
  %_p_scalar_779.us = load double, double* %polly.access.Packed_MemRef_call1556778.us, align 8
  %289 = mul i64 %284, 9600
  %min.iters.check1400 = icmp ult i64 %283, 4
  br i1 %min.iters.check1400, label %polly.loop_header757.us.preheader, label %vector.ph1401

vector.ph1401:                                    ; preds = %polly.loop_header757.preheader.us
  %n.vec1403 = and i64 %283, -4
  %broadcast.splatinsert1409 = insertelement <4 x double> poison, double %_p_scalar_771.us, i32 0
  %broadcast.splat1410 = shufflevector <4 x double> %broadcast.splatinsert1409, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1412 = insertelement <4 x double> poison, double %_p_scalar_779.us, i32 0
  %broadcast.splat1413 = shufflevector <4 x double> %broadcast.splatinsert1412, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1393

vector.body1393:                                  ; preds = %vector.body1393, %vector.ph1401
  %index1404 = phi i64 [ 0, %vector.ph1401 ], [ %index.next1405, %vector.body1393 ]
  %290 = add nuw nsw i64 %index1404, %257
  %291 = add nuw nsw i64 %index1404, %polly.access.mul.Packed_MemRef_call1556764.us
  %292 = getelementptr double, double* %Packed_MemRef_call1556, i64 %291
  %293 = bitcast double* %292 to <4 x double>*
  %wide.load1408 = load <4 x double>, <4 x double>* %293, align 8
  %294 = fmul fast <4 x double> %broadcast.splat1410, %wide.load1408
  %295 = getelementptr double, double* %Packed_MemRef_call2558, i64 %291
  %296 = bitcast double* %295 to <4 x double>*
  %wide.load1411 = load <4 x double>, <4 x double>* %296, align 8
  %297 = fmul fast <4 x double> %broadcast.splat1413, %wide.load1411
  %298 = shl i64 %290, 3
  %299 = add i64 %298, %289
  %300 = getelementptr i8, i8* %call, i64 %299
  %301 = bitcast i8* %300 to <4 x double>*
  %wide.load1414 = load <4 x double>, <4 x double>* %301, align 8, !alias.scope !99, !noalias !101
  %302 = fadd fast <4 x double> %297, %294
  %303 = fmul fast <4 x double> %302, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %304 = fadd fast <4 x double> %303, %wide.load1414
  %305 = bitcast i8* %300 to <4 x double>*
  store <4 x double> %304, <4 x double>* %305, align 8, !alias.scope !99, !noalias !101
  %index.next1405 = add i64 %index1404, 4
  %306 = icmp eq i64 %index.next1405, %n.vec1403
  br i1 %306, label %middle.block1391, label %vector.body1393, !llvm.loop !111

middle.block1391:                                 ; preds = %vector.body1393
  %cmp.n1407 = icmp eq i64 %283, %n.vec1403
  br i1 %cmp.n1407, label %polly.loop_exit759.us, label %polly.loop_header757.us.preheader

polly.loop_header757.us.preheader:                ; preds = %polly.loop_header757.preheader.us, %middle.block1391
  %polly.indvar761.us.ph = phi i64 [ 0, %polly.loop_header757.preheader.us ], [ %n.vec1403, %middle.block1391 ]
  br label %polly.loop_header757.us

polly.loop_exit751.loopexit.us:                   ; preds = %polly.loop_exit759.us
  %polly.indvar_next746.us = add nuw nsw i64 %polly.indvar745.us, 1
  %exitcond1251.not = icmp eq i64 %polly.indvar_next746.us, 50
  br i1 %exitcond1251.not, label %polly.loop_exit744, label %polly.loop_header742.us

polly.loop_header909:                             ; preds = %entry, %polly.loop_exit917
  %indvars.iv1280 = phi i64 [ %indvars.iv.next1281, %polly.loop_exit917 ], [ 0, %entry ]
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %entry ]
  %smin1282 = call i64 @llvm.smin.i64(i64 %indvars.iv1280, i64 -1168)
  %307 = shl nsw i64 %polly.indvar912, 5
  %308 = add nsw i64 %smin1282, 1199
  br label %polly.loop_header915

polly.loop_exit917:                               ; preds = %polly.loop_exit923
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %indvars.iv.next1281 = add nsw i64 %indvars.iv1280, -32
  %exitcond1285.not = icmp eq i64 %polly.indvar_next913, 38
  br i1 %exitcond1285.not, label %polly.loop_header936, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_exit923, %polly.loop_header909
  %indvars.iv1276 = phi i64 [ %indvars.iv.next1277, %polly.loop_exit923 ], [ 0, %polly.loop_header909 ]
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %polly.loop_header909 ]
  %309 = mul nsw i64 %polly.indvar918, -32
  %smin1320 = call i64 @llvm.smin.i64(i64 %309, i64 -1168)
  %310 = add nsw i64 %smin1320, 1200
  %smin1278 = call i64 @llvm.smin.i64(i64 %indvars.iv1276, i64 -1168)
  %311 = shl nsw i64 %polly.indvar918, 5
  %312 = add nsw i64 %smin1278, 1199
  br label %polly.loop_header921

polly.loop_exit923:                               ; preds = %polly.loop_exit929
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %indvars.iv.next1277 = add nsw i64 %indvars.iv1276, -32
  %exitcond1284.not = icmp eq i64 %polly.indvar_next919, 38
  br i1 %exitcond1284.not, label %polly.loop_exit917, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_exit929, %polly.loop_header915
  %polly.indvar924 = phi i64 [ 0, %polly.loop_header915 ], [ %polly.indvar_next925, %polly.loop_exit929 ]
  %313 = add nuw nsw i64 %polly.indvar924, %307
  %314 = trunc i64 %313 to i32
  %315 = mul nuw nsw i64 %313, 9600
  %min.iters.check = icmp eq i64 %310, 0
  br i1 %min.iters.check, label %polly.loop_header927, label %vector.ph1321

vector.ph1321:                                    ; preds = %polly.loop_header921
  %broadcast.splatinsert1328 = insertelement <4 x i64> poison, i64 %311, i32 0
  %broadcast.splat1329 = shufflevector <4 x i64> %broadcast.splatinsert1328, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1330 = insertelement <4 x i32> poison, i32 %314, i32 0
  %broadcast.splat1331 = shufflevector <4 x i32> %broadcast.splatinsert1330, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1319

vector.body1319:                                  ; preds = %vector.body1319, %vector.ph1321
  %index1322 = phi i64 [ 0, %vector.ph1321 ], [ %index.next1323, %vector.body1319 ]
  %vec.ind1326 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1321 ], [ %vec.ind.next1327, %vector.body1319 ]
  %316 = add nuw nsw <4 x i64> %vec.ind1326, %broadcast.splat1329
  %317 = trunc <4 x i64> %316 to <4 x i32>
  %318 = mul <4 x i32> %broadcast.splat1331, %317
  %319 = add <4 x i32> %318, <i32 3, i32 3, i32 3, i32 3>
  %320 = urem <4 x i32> %319, <i32 1200, i32 1200, i32 1200, i32 1200>
  %321 = sitofp <4 x i32> %320 to <4 x double>
  %322 = fmul fast <4 x double> %321, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %323 = extractelement <4 x i64> %316, i32 0
  %324 = shl i64 %323, 3
  %325 = add nuw nsw i64 %324, %315
  %326 = getelementptr i8, i8* %call, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %322, <4 x double>* %327, align 8, !alias.scope !112, !noalias !114
  %index.next1323 = add i64 %index1322, 4
  %vec.ind.next1327 = add <4 x i64> %vec.ind1326, <i64 4, i64 4, i64 4, i64 4>
  %328 = icmp eq i64 %index.next1323, %310
  br i1 %328, label %polly.loop_exit929, label %vector.body1319, !llvm.loop !117

polly.loop_exit929:                               ; preds = %vector.body1319, %polly.loop_header927
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %exitcond1283.not = icmp eq i64 %polly.indvar924, %308
  br i1 %exitcond1283.not, label %polly.loop_exit923, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_header921, %polly.loop_header927
  %polly.indvar930 = phi i64 [ %polly.indvar_next931, %polly.loop_header927 ], [ 0, %polly.loop_header921 ]
  %329 = add nuw nsw i64 %polly.indvar930, %311
  %330 = trunc i64 %329 to i32
  %331 = mul i32 %330, %314
  %332 = add i32 %331, 3
  %333 = urem i32 %332, 1200
  %p_conv31.i = sitofp i32 %333 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %334 = shl i64 %329, 3
  %335 = add nuw nsw i64 %334, %315
  %scevgep933 = getelementptr i8, i8* %call, i64 %335
  %scevgep933934 = bitcast i8* %scevgep933 to double*
  store double %p_div33.i, double* %scevgep933934, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %exitcond1279.not = icmp eq i64 %polly.indvar930, %312
  br i1 %exitcond1279.not, label %polly.loop_exit929, label %polly.loop_header927, !llvm.loop !118

polly.loop_header936:                             ; preds = %polly.loop_exit917, %polly.loop_exit944
  %indvars.iv1270 = phi i64 [ %indvars.iv.next1271, %polly.loop_exit944 ], [ 0, %polly.loop_exit917 ]
  %polly.indvar939 = phi i64 [ %polly.indvar_next940, %polly.loop_exit944 ], [ 0, %polly.loop_exit917 ]
  %smin1272 = call i64 @llvm.smin.i64(i64 %indvars.iv1270, i64 -1168)
  %336 = shl nsw i64 %polly.indvar939, 5
  %337 = add nsw i64 %smin1272, 1199
  br label %polly.loop_header942

polly.loop_exit944:                               ; preds = %polly.loop_exit950
  %polly.indvar_next940 = add nuw nsw i64 %polly.indvar939, 1
  %indvars.iv.next1271 = add nsw i64 %indvars.iv1270, -32
  %exitcond1275.not = icmp eq i64 %polly.indvar_next940, 38
  br i1 %exitcond1275.not, label %polly.loop_header962, label %polly.loop_header936

polly.loop_header942:                             ; preds = %polly.loop_exit950, %polly.loop_header936
  %indvars.iv1266 = phi i64 [ %indvars.iv.next1267, %polly.loop_exit950 ], [ 0, %polly.loop_header936 ]
  %polly.indvar945 = phi i64 [ %polly.indvar_next946, %polly.loop_exit950 ], [ 0, %polly.loop_header936 ]
  %338 = mul nsw i64 %polly.indvar945, -32
  %smin1335 = call i64 @llvm.smin.i64(i64 %338, i64 -968)
  %339 = add nsw i64 %smin1335, 1000
  %smin1268 = call i64 @llvm.smin.i64(i64 %indvars.iv1266, i64 -968)
  %340 = shl nsw i64 %polly.indvar945, 5
  %341 = add nsw i64 %smin1268, 999
  br label %polly.loop_header948

polly.loop_exit950:                               ; preds = %polly.loop_exit956
  %polly.indvar_next946 = add nuw nsw i64 %polly.indvar945, 1
  %indvars.iv.next1267 = add nsw i64 %indvars.iv1266, -32
  %exitcond1274.not = icmp eq i64 %polly.indvar_next946, 32
  br i1 %exitcond1274.not, label %polly.loop_exit944, label %polly.loop_header942

polly.loop_header948:                             ; preds = %polly.loop_exit956, %polly.loop_header942
  %polly.indvar951 = phi i64 [ 0, %polly.loop_header942 ], [ %polly.indvar_next952, %polly.loop_exit956 ]
  %342 = add nuw nsw i64 %polly.indvar951, %336
  %343 = trunc i64 %342 to i32
  %344 = mul nuw nsw i64 %342, 8000
  %min.iters.check1336 = icmp eq i64 %339, 0
  br i1 %min.iters.check1336, label %polly.loop_header954, label %vector.ph1337

vector.ph1337:                                    ; preds = %polly.loop_header948
  %broadcast.splatinsert1346 = insertelement <4 x i64> poison, i64 %340, i32 0
  %broadcast.splat1347 = shufflevector <4 x i64> %broadcast.splatinsert1346, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1348 = insertelement <4 x i32> poison, i32 %343, i32 0
  %broadcast.splat1349 = shufflevector <4 x i32> %broadcast.splatinsert1348, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1334

vector.body1334:                                  ; preds = %vector.body1334, %vector.ph1337
  %index1340 = phi i64 [ 0, %vector.ph1337 ], [ %index.next1341, %vector.body1334 ]
  %vec.ind1344 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1337 ], [ %vec.ind.next1345, %vector.body1334 ]
  %345 = add nuw nsw <4 x i64> %vec.ind1344, %broadcast.splat1347
  %346 = trunc <4 x i64> %345 to <4 x i32>
  %347 = mul <4 x i32> %broadcast.splat1349, %346
  %348 = add <4 x i32> %347, <i32 2, i32 2, i32 2, i32 2>
  %349 = urem <4 x i32> %348, <i32 1000, i32 1000, i32 1000, i32 1000>
  %350 = sitofp <4 x i32> %349 to <4 x double>
  %351 = fmul fast <4 x double> %350, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %352 = extractelement <4 x i64> %345, i32 0
  %353 = shl i64 %352, 3
  %354 = add nuw nsw i64 %353, %344
  %355 = getelementptr i8, i8* %call2, i64 %354
  %356 = bitcast i8* %355 to <4 x double>*
  store <4 x double> %351, <4 x double>* %356, align 8, !alias.scope !116, !noalias !119
  %index.next1341 = add i64 %index1340, 4
  %vec.ind.next1345 = add <4 x i64> %vec.ind1344, <i64 4, i64 4, i64 4, i64 4>
  %357 = icmp eq i64 %index.next1341, %339
  br i1 %357, label %polly.loop_exit956, label %vector.body1334, !llvm.loop !120

polly.loop_exit956:                               ; preds = %vector.body1334, %polly.loop_header954
  %polly.indvar_next952 = add nuw nsw i64 %polly.indvar951, 1
  %exitcond1273.not = icmp eq i64 %polly.indvar951, %337
  br i1 %exitcond1273.not, label %polly.loop_exit950, label %polly.loop_header948

polly.loop_header954:                             ; preds = %polly.loop_header948, %polly.loop_header954
  %polly.indvar957 = phi i64 [ %polly.indvar_next958, %polly.loop_header954 ], [ 0, %polly.loop_header948 ]
  %358 = add nuw nsw i64 %polly.indvar957, %340
  %359 = trunc i64 %358 to i32
  %360 = mul i32 %359, %343
  %361 = add i32 %360, 2
  %362 = urem i32 %361, 1000
  %p_conv10.i = sitofp i32 %362 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %363 = shl i64 %358, 3
  %364 = add nuw nsw i64 %363, %344
  %scevgep960 = getelementptr i8, i8* %call2, i64 %364
  %scevgep960961 = bitcast i8* %scevgep960 to double*
  store double %p_div12.i, double* %scevgep960961, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next958 = add nuw nsw i64 %polly.indvar957, 1
  %exitcond1269.not = icmp eq i64 %polly.indvar957, %341
  br i1 %exitcond1269.not, label %polly.loop_exit956, label %polly.loop_header954, !llvm.loop !121

polly.loop_header962:                             ; preds = %polly.loop_exit944, %polly.loop_exit970
  %indvars.iv1260 = phi i64 [ %indvars.iv.next1261, %polly.loop_exit970 ], [ 0, %polly.loop_exit944 ]
  %polly.indvar965 = phi i64 [ %polly.indvar_next966, %polly.loop_exit970 ], [ 0, %polly.loop_exit944 ]
  %smin1262 = call i64 @llvm.smin.i64(i64 %indvars.iv1260, i64 -1168)
  %365 = shl nsw i64 %polly.indvar965, 5
  %366 = add nsw i64 %smin1262, 1199
  br label %polly.loop_header968

polly.loop_exit970:                               ; preds = %polly.loop_exit976
  %polly.indvar_next966 = add nuw nsw i64 %polly.indvar965, 1
  %indvars.iv.next1261 = add nsw i64 %indvars.iv1260, -32
  %exitcond1265.not = icmp eq i64 %polly.indvar_next966, 38
  br i1 %exitcond1265.not, label %init_array.exit, label %polly.loop_header962

polly.loop_header968:                             ; preds = %polly.loop_exit976, %polly.loop_header962
  %indvars.iv1256 = phi i64 [ %indvars.iv.next1257, %polly.loop_exit976 ], [ 0, %polly.loop_header962 ]
  %polly.indvar971 = phi i64 [ %polly.indvar_next972, %polly.loop_exit976 ], [ 0, %polly.loop_header962 ]
  %367 = mul nsw i64 %polly.indvar971, -32
  %smin1353 = call i64 @llvm.smin.i64(i64 %367, i64 -968)
  %368 = add nsw i64 %smin1353, 1000
  %smin1258 = call i64 @llvm.smin.i64(i64 %indvars.iv1256, i64 -968)
  %369 = shl nsw i64 %polly.indvar971, 5
  %370 = add nsw i64 %smin1258, 999
  br label %polly.loop_header974

polly.loop_exit976:                               ; preds = %polly.loop_exit982
  %polly.indvar_next972 = add nuw nsw i64 %polly.indvar971, 1
  %indvars.iv.next1257 = add nsw i64 %indvars.iv1256, -32
  %exitcond1264.not = icmp eq i64 %polly.indvar_next972, 32
  br i1 %exitcond1264.not, label %polly.loop_exit970, label %polly.loop_header968

polly.loop_header974:                             ; preds = %polly.loop_exit982, %polly.loop_header968
  %polly.indvar977 = phi i64 [ 0, %polly.loop_header968 ], [ %polly.indvar_next978, %polly.loop_exit982 ]
  %371 = add nuw nsw i64 %polly.indvar977, %365
  %372 = trunc i64 %371 to i32
  %373 = mul nuw nsw i64 %371, 8000
  %min.iters.check1354 = icmp eq i64 %368, 0
  br i1 %min.iters.check1354, label %polly.loop_header980, label %vector.ph1355

vector.ph1355:                                    ; preds = %polly.loop_header974
  %broadcast.splatinsert1364 = insertelement <4 x i64> poison, i64 %369, i32 0
  %broadcast.splat1365 = shufflevector <4 x i64> %broadcast.splatinsert1364, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1366 = insertelement <4 x i32> poison, i32 %372, i32 0
  %broadcast.splat1367 = shufflevector <4 x i32> %broadcast.splatinsert1366, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1352

vector.body1352:                                  ; preds = %vector.body1352, %vector.ph1355
  %index1358 = phi i64 [ 0, %vector.ph1355 ], [ %index.next1359, %vector.body1352 ]
  %vec.ind1362 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1355 ], [ %vec.ind.next1363, %vector.body1352 ]
  %374 = add nuw nsw <4 x i64> %vec.ind1362, %broadcast.splat1365
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat1367, %375
  %377 = add <4 x i32> %376, <i32 1, i32 1, i32 1, i32 1>
  %378 = urem <4 x i32> %377, <i32 1200, i32 1200, i32 1200, i32 1200>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add nuw nsw i64 %382, %373
  %384 = getelementptr i8, i8* %call1, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !115, !noalias !122
  %index.next1359 = add i64 %index1358, 4
  %vec.ind.next1363 = add <4 x i64> %vec.ind1362, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next1359, %368
  br i1 %386, label %polly.loop_exit982, label %vector.body1352, !llvm.loop !123

polly.loop_exit982:                               ; preds = %vector.body1352, %polly.loop_header980
  %polly.indvar_next978 = add nuw nsw i64 %polly.indvar977, 1
  %exitcond1263.not = icmp eq i64 %polly.indvar977, %366
  br i1 %exitcond1263.not, label %polly.loop_exit976, label %polly.loop_header974

polly.loop_header980:                             ; preds = %polly.loop_header974, %polly.loop_header980
  %polly.indvar983 = phi i64 [ %polly.indvar_next984, %polly.loop_header980 ], [ 0, %polly.loop_header974 ]
  %387 = add nuw nsw i64 %polly.indvar983, %369
  %388 = trunc i64 %387 to i32
  %389 = mul i32 %388, %372
  %390 = add i32 %389, 1
  %391 = urem i32 %390, 1200
  %p_conv.i = sitofp i32 %391 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %392 = shl i64 %387, 3
  %393 = add nuw nsw i64 %392, %373
  %scevgep987 = getelementptr i8, i8* %call1, i64 %393
  %scevgep987988 = bitcast i8* %scevgep987 to double*
  store double %p_div.i, double* %scevgep987988, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next984 = add nuw nsw i64 %polly.indvar983, 1
  %exitcond1259.not = icmp eq i64 %polly.indvar983, %370
  br i1 %exitcond1259.not, label %polly.loop_exit982, label %polly.loop_header980, !llvm.loop !124
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
!26 = !{!"llvm.loop.tile.size", i32 100}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 50}
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
