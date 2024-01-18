; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1143.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1143.c"
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
  %call894 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1746 = bitcast i8* %call1 to double*
  %polly.access.call1755 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2756 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1755, %call2
  %polly.access.call2775 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2775, %call1
  %2 = or i1 %0, %1
  %polly.access.call795 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call795, %call2
  %4 = icmp ule i8* %polly.access.call2775, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call795, %call1
  %8 = icmp ule i8* %polly.access.call1755, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header868, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1230 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1229 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1228 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1227 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1227, %scevgep1230
  %bound1 = icmp ult i8* %scevgep1229, %scevgep1228
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
  br i1 %exitcond18.not.i, label %vector.ph1234, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1234:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1241 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1242 = shufflevector <4 x i64> %broadcast.splatinsert1241, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %vector.ph1234
  %index1235 = phi i64 [ 0, %vector.ph1234 ], [ %index.next1236, %vector.body1233 ]
  %vec.ind1239 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1234 ], [ %vec.ind.next1240, %vector.body1233 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1239, %broadcast.splat1242
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv7.i, i64 %index1235
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1236 = add i64 %index1235, 4
  %vec.ind.next1240 = add <4 x i64> %vec.ind1239, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1236, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1233, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1233
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1234, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit929
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start527, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1296 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1296, label %for.body3.i46.preheader1445, label %vector.ph1297

vector.ph1297:                                    ; preds = %for.body3.i46.preheader
  %n.vec1299 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1295

vector.body1295:                                  ; preds = %vector.body1295, %vector.ph1297
  %index1300 = phi i64 [ 0, %vector.ph1297 ], [ %index.next1301, %vector.body1295 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i, i64 %index1300
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1301 = add i64 %index1300, 4
  %46 = icmp eq i64 %index.next1301, %n.vec1299
  br i1 %46, label %middle.block1293, label %vector.body1295, !llvm.loop !18

middle.block1293:                                 ; preds = %vector.body1295
  %cmp.n1303 = icmp eq i64 %indvars.iv21.i, %n.vec1299
  br i1 %cmp.n1303, label %for.inc6.i, label %for.body3.i46.preheader1445

for.body3.i46.preheader1445:                      ; preds = %for.body3.i46.preheader, %middle.block1293
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1299, %middle.block1293 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1445, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1445 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1293, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting528
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start310, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1343 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1343, label %for.body3.i60.preheader1443, label %vector.ph1344

vector.ph1344:                                    ; preds = %for.body3.i60.preheader
  %n.vec1346 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1342 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i52, i64 %index1347
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1351, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1348 = add i64 %index1347, 4
  %57 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %57, label %middle.block1340, label %vector.body1342, !llvm.loop !64

middle.block1340:                                 ; preds = %vector.body1342
  %cmp.n1350 = icmp eq i64 %indvars.iv21.i52, %n.vec1346
  br i1 %cmp.n1350, label %for.inc6.i63, label %for.body3.i60.preheader1443

for.body3.i60.preheader1443:                      ; preds = %for.body3.i60.preheader, %middle.block1340
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1346, %middle.block1340 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1443, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1443 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1340, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting311
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1393 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1393, label %for.body3.i99.preheader1441, label %vector.ph1394

vector.ph1394:                                    ; preds = %for.body3.i99.preheader
  %n.vec1396 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1392

vector.body1392:                                  ; preds = %vector.body1392, %vector.ph1394
  %index1397 = phi i64 [ 0, %vector.ph1394 ], [ %index.next1398, %vector.body1392 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i91, i64 %index1397
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1401 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1401, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1398 = add i64 %index1397, 4
  %68 = icmp eq i64 %index.next1398, %n.vec1396
  br i1 %68, label %middle.block1390, label %vector.body1392, !llvm.loop !66

middle.block1390:                                 ; preds = %vector.body1392
  %cmp.n1400 = icmp eq i64 %indvars.iv21.i91, %n.vec1396
  br i1 %cmp.n1400, label %for.inc6.i102, label %for.body3.i99.preheader1441

for.body3.i99.preheader1441:                      ; preds = %for.body3.i99.preheader, %middle.block1390
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1396, %middle.block1390 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1441, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1441 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1390, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call894, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1405 = phi i64 [ %indvar.next1406, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1405, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1407 = icmp ult i64 %88, 4
  br i1 %min.iters.check1407, label %polly.loop_header192.preheader, label %vector.ph1408

vector.ph1408:                                    ; preds = %polly.loop_header
  %n.vec1410 = and i64 %88, -4
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %vector.ph1408
  %index1411 = phi i64 [ 0, %vector.ph1408 ], [ %index.next1412, %vector.body1404 ]
  %90 = shl nuw nsw i64 %index1411, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1415 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1415, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1412 = add i64 %index1411, 4
  %95 = icmp eq i64 %index.next1412, %n.vec1410
  br i1 %95, label %middle.block1402, label %vector.body1404, !llvm.loop !79

middle.block1402:                                 ; preds = %vector.body1404
  %cmp.n1414 = icmp eq i64 %88, %n.vec1410
  br i1 %cmp.n1414, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1402
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1410, %middle.block1402 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1402
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1115.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1406 = add i64 %indvar1405, 1
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
  %indvars.iv1088 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1089, %polly.loop_exit208 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit208 ]
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1088, i64 -968)
  %97 = add nsw i64 %smin1110, 1000
  %98 = shl nsw i64 %polly.indvar203, 5
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit230
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, -32
  %exitcond1113.not = icmp eq i64 %polly.indvar_next204, 32
  br i1 %exitcond1113.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit230, %polly.loop_header200
  %indvars.iv1102 = phi i64 [ %indvars.iv.next1103, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit230 ], [ 24, %polly.loop_header200 ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit230 ], [ 1200, %polly.loop_header200 ]
  %polly.indvar209 = phi i64 [ %polly.indvar_next210, %polly.loop_exit230 ], [ 0, %polly.loop_header200 ]
  %99 = mul nsw i64 %polly.indvar209, -44
  %100 = mul nuw nsw i64 %polly.indvar209, 11
  %101 = add nuw i64 %100, 24
  %102 = udiv i64 %101, 25
  %103 = mul nuw nsw i64 %102, 100
  %104 = add i64 %99, %103
  %105 = mul nuw nsw i64 %polly.indvar209, 44
  %106 = sub nsw i64 %105, %103
  %107 = udiv i64 %indvars.iv1098, 25
  %108 = mul nuw nsw i64 %107, 100
  %109 = add i64 %indvars.iv1096, %108
  %110 = sub nsw i64 %indvars.iv1102, %108
  %111 = shl nsw i64 %polly.indvar209, 8
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_exit220
  %112 = mul nsw i64 %polly.indvar209, -256
  %113 = mul nuw nsw i64 %polly.indvar209, 3
  %114 = mul nuw nsw i64 %polly.indvar209, 11
  %115 = add nuw nsw i64 %114, 24
  %pexp.p_div_q = udiv i64 %115, 25
  %116 = sub nsw i64 %113, %pexp.p_div_q
  %polly.loop_guard = icmp slt i64 %116, 12
  br i1 %polly.loop_guard, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_exit230:                               ; preds = %polly.loop_exit269, %polly.loop_exit214
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, -44
  %indvars.iv.next1099 = add nuw nsw i64 %indvars.iv1098, 11
  %indvars.iv.next1103 = add nuw nsw i64 %indvars.iv1102, 44
  %exitcond1112.not = icmp eq i64 %polly.indvar_next210, 5
  br i1 %exitcond1112.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_exit220, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_exit220 ]
  %117 = add nuw nsw i64 %polly.indvar215, %98
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar215, 1200
  br label %polly.loop_header218

polly.loop_exit220:                               ; preds = %polly.loop_header218
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next216, %97
  br i1 %exitcond1090.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header218:                             ; preds = %polly.loop_header218, %polly.loop_header212
  %polly.indvar221 = phi i64 [ 0, %polly.loop_header212 ], [ %polly.indvar_next222, %polly.loop_header218 ]
  %118 = add nuw nsw i64 %polly.indvar221, %111
  %polly.access.mul.call2225 = mul nuw nsw i64 %118, 1000
  %polly.access.add.call2226 = add nuw nsw i64 %117, %polly.access.mul.call2225
  %polly.access.call2227 = getelementptr double, double* %polly.access.cast.call2756, i64 %polly.access.add.call2226
  %polly.access.call2227.load = load double, double* %polly.access.call2227, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar221, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2227.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next222 = add nuw nsw i64 %polly.indvar221, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next222, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit220, label %polly.loop_header218

polly.loop_header228:                             ; preds = %polly.loop_exit214, %polly.loop_exit269
  %indvar1419 = phi i64 [ %indvar.next1420, %polly.loop_exit269 ], [ 0, %polly.loop_exit214 ]
  %indvars.iv1104 = phi i64 [ %indvars.iv.next1105, %polly.loop_exit269 ], [ %110, %polly.loop_exit214 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit269 ], [ %109, %polly.loop_exit214 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit269 ], [ %116, %polly.loop_exit214 ]
  %119 = mul nsw i64 %indvar1419, -100
  %120 = add i64 %104, %119
  %smax1421 = call i64 @llvm.smax.i64(i64 %120, i64 0)
  %121 = mul nuw nsw i64 %indvar1419, 100
  %122 = add i64 %106, %121
  %123 = add i64 %smax1421, %122
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1100, i64 0)
  %124 = add i64 %smax, %indvars.iv1104
  %125 = mul nsw i64 %polly.indvar231, 100
  %126 = add nsw i64 %125, %112
  %127 = add nsw i64 %126, -1
  %.inv = icmp sgt i64 %126, 255
  %128 = select i1 %.inv, i64 255, i64 %127
  %polly.loop_guard244 = icmp sgt i64 %128, -1
  %129 = icmp sgt i64 %126, 0
  %130 = select i1 %129, i64 %126, i64 0
  %131 = add nsw i64 %126, 99
  %polly.loop_guard256.not = icmp sgt i64 %130, %131
  br i1 %polly.loop_guard244, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.loop_exit255.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_exit255.us ], [ 0, %polly.loop_header228 ]
  %132 = add nuw nsw i64 %polly.indvar237.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 1200
  br label %polly.loop_header241.us

polly.loop_header241.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header241.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_header241.us ], [ 0, %polly.loop_header234.us ]
  %133 = add nuw nsw i64 %polly.indvar245.us, %111
  %polly.access.mul.call1249.us = mul nuw nsw i64 %133, 1000
  %polly.access.add.call1250.us = add nuw nsw i64 %132, %polly.access.mul.call1249.us
  %polly.access.call1251.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1250.us
  %polly.access.call1251.load.us = load double, double* %polly.access.call1251.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar245.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1251.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next246.us = add nuw i64 %polly.indvar245.us, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar245.us, %128
  br i1 %exitcond1093.not, label %polly.loop_exit243.loopexit.us, label %polly.loop_header241.us

polly.loop_header253.us:                          ; preds = %polly.loop_exit243.loopexit.us, %polly.loop_header253.us
  %polly.indvar257.us = phi i64 [ %polly.indvar_next258.us, %polly.loop_header253.us ], [ %130, %polly.loop_exit243.loopexit.us ]
  %134 = add nuw nsw i64 %polly.indvar257.us, %111
  %polly.access.mul.call1261.us = mul nsw i64 %134, 1000
  %polly.access.add.call1262.us = add nuw nsw i64 %132, %polly.access.mul.call1261.us
  %polly.access.call1263.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1262.us
  %polly.access.call1263.load.us = load double, double* %polly.access.call1263.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1265.us = add nuw nsw i64 %polly.indvar257.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us
  store double %polly.access.call1263.load.us, double* %polly.access.Packed_MemRef_call1266.us, align 8
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %polly.loop_cond259.not.not.us = icmp slt i64 %polly.indvar257.us, %131
  br i1 %polly.loop_cond259.not.not.us, label %polly.loop_header253.us, label %polly.loop_exit255.us

polly.loop_exit255.us:                            ; preds = %polly.loop_header253.us, %polly.loop_exit243.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next238.us, %97
  br i1 %exitcond1095.not, label %polly.loop_header267.preheader, label %polly.loop_header234.us

polly.loop_exit243.loopexit.us:                   ; preds = %polly.loop_header241.us
  br i1 %polly.loop_guard256.not, label %polly.loop_exit255.us, label %polly.loop_header253.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %polly.loop_guard256.not, label %polly.loop_header267.preheader, label %polly.loop_header234

polly.loop_exit269:                               ; preds = %polly.loop_exit276.loopexit.us, %polly.loop_header267.preheader
  %polly.indvar_next232 = add nsw i64 %polly.indvar231, 1
  %polly.loop_cond233 = icmp slt i64 %polly.indvar231, 11
  %indvars.iv.next1101 = add i64 %indvars.iv1100, -100
  %indvars.iv.next1105 = add i64 %indvars.iv1104, 100
  %indvar.next1420 = add i64 %indvar1419, 1
  br i1 %polly.loop_cond233, label %polly.loop_header228, label %polly.loop_exit230

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_exit255
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_exit255 ], [ 0, %polly.loop_header228.split ]
  %135 = add nuw nsw i64 %polly.indvar237, %98
  %polly.access.mul.Packed_MemRef_call1264 = mul nuw nsw i64 %polly.indvar237, 1200
  br label %polly.loop_header253

polly.loop_exit255:                               ; preds = %polly.loop_header253
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next238, %97
  br i1 %exitcond1092.not, label %polly.loop_header267.preheader, label %polly.loop_header234

polly.loop_header267.preheader:                   ; preds = %polly.loop_exit255, %polly.loop_exit255.us, %polly.loop_header228.split
  %136 = sub nsw i64 %111, %125
  %137 = icmp sgt i64 %136, 0
  %138 = select i1 %137, i64 %136, i64 0
  %polly.loop_guard277 = icmp slt i64 %138, 100
  br i1 %polly.loop_guard277, label %polly.loop_header267.us, label %polly.loop_exit269

polly.loop_header267.us:                          ; preds = %polly.loop_header267.preheader, %polly.loop_exit276.loopexit.us
  %polly.indvar270.us = phi i64 [ %polly.indvar_next271.us, %polly.loop_exit276.loopexit.us ], [ 0, %polly.loop_header267.preheader ]
  %polly.access.mul.Packed_MemRef_call1289.us = mul nuw nsw i64 %polly.indvar270.us, 1200
  br label %polly.loop_header274.us

polly.loop_header274.us:                          ; preds = %polly.loop_header267.us, %polly.loop_exit284.us
  %indvar1422 = phi i64 [ 0, %polly.loop_header267.us ], [ %indvar.next1423, %polly.loop_exit284.us ]
  %indvars.iv1106 = phi i64 [ %124, %polly.loop_header267.us ], [ %indvars.iv.next1107, %polly.loop_exit284.us ]
  %polly.indvar278.us = phi i64 [ %138, %polly.loop_header267.us ], [ %polly.indvar_next279.us, %polly.loop_exit284.us ]
  %139 = add i64 %123, %indvar1422
  %smin1424 = call i64 @llvm.smin.i64(i64 %139, i64 255)
  %140 = add nsw i64 %smin1424, 1
  %smin1108 = call i64 @llvm.smin.i64(i64 %indvars.iv1106, i64 255)
  %141 = add nsw i64 %polly.indvar278.us, %126
  %polly.loop_guard285.us1216 = icmp sgt i64 %141, -1
  br i1 %polly.loop_guard285.us1216, label %polly.loop_header282.preheader.us, label %polly.loop_exit284.us

polly.loop_header282.us:                          ; preds = %polly.loop_header282.us.preheader, %polly.loop_header282.us
  %polly.indvar286.us = phi i64 [ %polly.indvar_next287.us, %polly.loop_header282.us ], [ %polly.indvar286.us.ph, %polly.loop_header282.us.preheader ]
  %142 = add nuw nsw i64 %polly.indvar286.us, %111
  %polly.access.add.Packed_MemRef_call1290.us = add nuw nsw i64 %polly.indvar286.us, %polly.access.mul.Packed_MemRef_call1289.us
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %polly.access.Packed_MemRef_call2299.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_300.us = load double, double* %polly.access.Packed_MemRef_call2299.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_304.us, %_p_scalar_300.us
  %143 = shl i64 %142, 3
  %144 = add i64 %143, %146
  %scevgep305.us = getelementptr i8, i8* %call, i64 %144
  %scevgep305306.us = bitcast i8* %scevgep305.us to double*
  %_p_scalar_307.us = load double, double* %scevgep305306.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_307.us
  store double %p_add42.i118.us, double* %scevgep305306.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next287.us = add nuw nsw i64 %polly.indvar286.us, 1
  %exitcond1109.not = icmp eq i64 %polly.indvar286.us, %smin1108
  br i1 %exitcond1109.not, label %polly.loop_exit284.us, label %polly.loop_header282.us, !llvm.loop !84

polly.loop_exit284.us:                            ; preds = %polly.loop_header282.us, %middle.block1416, %polly.loop_header274.us
  %polly.indvar_next279.us = add nuw nsw i64 %polly.indvar278.us, 1
  %polly.loop_cond280.us = icmp ult i64 %polly.indvar278.us, 99
  %indvars.iv.next1107 = add i64 %indvars.iv1106, 1
  %indvar.next1423 = add i64 %indvar1422, 1
  br i1 %polly.loop_cond280.us, label %polly.loop_header274.us, label %polly.loop_exit276.loopexit.us

polly.loop_header282.preheader.us:                ; preds = %polly.loop_header274.us
  %145 = add nsw i64 %polly.indvar278.us, %125
  %polly.access.add.Packed_MemRef_call2294.us = add nsw i64 %141, %polly.access.mul.Packed_MemRef_call1289.us
  %polly.access.Packed_MemRef_call2295.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2294.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call2295.us, align 8
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2294.us
  %_p_scalar_304.us = load double, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %146 = mul i64 %145, 9600
  %min.iters.check1425 = icmp ult i64 %140, 4
  br i1 %min.iters.check1425, label %polly.loop_header282.us.preheader, label %vector.ph1426

vector.ph1426:                                    ; preds = %polly.loop_header282.preheader.us
  %n.vec1428 = and i64 %140, -4
  %broadcast.splatinsert1434 = insertelement <4 x double> poison, double %_p_scalar_296.us, i32 0
  %broadcast.splat1435 = shufflevector <4 x double> %broadcast.splatinsert1434, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1437 = insertelement <4 x double> poison, double %_p_scalar_304.us, i32 0
  %broadcast.splat1438 = shufflevector <4 x double> %broadcast.splatinsert1437, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1418

vector.body1418:                                  ; preds = %vector.body1418, %vector.ph1426
  %index1429 = phi i64 [ 0, %vector.ph1426 ], [ %index.next1430, %vector.body1418 ]
  %147 = add nuw nsw i64 %index1429, %111
  %148 = add nuw nsw i64 %index1429, %polly.access.mul.Packed_MemRef_call1289.us
  %149 = getelementptr double, double* %Packed_MemRef_call1, i64 %148
  %150 = bitcast double* %149 to <4 x double>*
  %wide.load1433 = load <4 x double>, <4 x double>* %150, align 8
  %151 = fmul fast <4 x double> %broadcast.splat1435, %wide.load1433
  %152 = getelementptr double, double* %Packed_MemRef_call2, i64 %148
  %153 = bitcast double* %152 to <4 x double>*
  %wide.load1436 = load <4 x double>, <4 x double>* %153, align 8
  %154 = fmul fast <4 x double> %broadcast.splat1438, %wide.load1436
  %155 = shl i64 %147, 3
  %156 = add i64 %155, %146
  %157 = getelementptr i8, i8* %call, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1439 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !72, !noalias !74
  %159 = fadd fast <4 x double> %154, %151
  %160 = fmul fast <4 x double> %159, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %161 = fadd fast <4 x double> %160, %wide.load1439
  %162 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !72, !noalias !74
  %index.next1430 = add i64 %index1429, 4
  %163 = icmp eq i64 %index.next1430, %n.vec1428
  br i1 %163, label %middle.block1416, label %vector.body1418, !llvm.loop !85

middle.block1416:                                 ; preds = %vector.body1418
  %cmp.n1432 = icmp eq i64 %140, %n.vec1428
  br i1 %cmp.n1432, label %polly.loop_exit284.us, label %polly.loop_header282.us.preheader

polly.loop_header282.us.preheader:                ; preds = %polly.loop_header282.preheader.us, %middle.block1416
  %polly.indvar286.us.ph = phi i64 [ 0, %polly.loop_header282.preheader.us ], [ %n.vec1428, %middle.block1416 ]
  br label %polly.loop_header282.us

polly.loop_exit276.loopexit.us:                   ; preds = %polly.loop_exit284.us
  %polly.indvar_next271.us = add nuw nsw i64 %polly.indvar270.us, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar_next271.us, %97
  br i1 %exitcond1111.not, label %polly.loop_exit269, label %polly.loop_header267.us

polly.loop_header253:                             ; preds = %polly.loop_header234, %polly.loop_header253
  %polly.indvar257 = phi i64 [ %polly.indvar_next258, %polly.loop_header253 ], [ %130, %polly.loop_header234 ]
  %164 = add nuw nsw i64 %polly.indvar257, %111
  %polly.access.mul.call1261 = mul nsw i64 %164, 1000
  %polly.access.add.call1262 = add nuw nsw i64 %135, %polly.access.mul.call1261
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1262
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1265 = add nuw nsw i64 %polly.indvar257, %polly.access.mul.Packed_MemRef_call1264
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.indvar_next258 = add nuw nsw i64 %polly.indvar257, 1
  %polly.loop_cond259.not.not = icmp slt i64 %polly.indvar257, %131
  br i1 %polly.loop_cond259.not.not, label %polly.loop_header253, label %polly.loop_exit255

polly.start310:                                   ; preds = %kernel_syr2k.exit
  %malloccall312 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall314 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header398

polly.exiting311:                                 ; preds = %polly.loop_exit422
  tail call void @free(i8* %malloccall312)
  tail call void @free(i8* %malloccall314)
  br label %kernel_syr2k.exit90

polly.loop_header398:                             ; preds = %polly.loop_exit406, %polly.start310
  %indvar1355 = phi i64 [ %indvar.next1356, %polly.loop_exit406 ], [ 0, %polly.start310 ]
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit406 ], [ 1, %polly.start310 ]
  %165 = add i64 %indvar1355, 1
  %166 = mul nuw nsw i64 %polly.indvar401, 9600
  %scevgep410 = getelementptr i8, i8* %call, i64 %166
  %min.iters.check1357 = icmp ult i64 %165, 4
  br i1 %min.iters.check1357, label %polly.loop_header404.preheader, label %vector.ph1358

vector.ph1358:                                    ; preds = %polly.loop_header398
  %n.vec1360 = and i64 %165, -4
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %vector.ph1358
  %index1361 = phi i64 [ 0, %vector.ph1358 ], [ %index.next1362, %vector.body1354 ]
  %167 = shl nuw nsw i64 %index1361, 3
  %168 = getelementptr i8, i8* %scevgep410, i64 %167
  %169 = bitcast i8* %168 to <4 x double>*
  %wide.load1365 = load <4 x double>, <4 x double>* %169, align 8, !alias.scope !86, !noalias !88
  %170 = fmul fast <4 x double> %wide.load1365, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %171 = bitcast i8* %168 to <4 x double>*
  store <4 x double> %170, <4 x double>* %171, align 8, !alias.scope !86, !noalias !88
  %index.next1362 = add i64 %index1361, 4
  %172 = icmp eq i64 %index.next1362, %n.vec1360
  br i1 %172, label %middle.block1352, label %vector.body1354, !llvm.loop !93

middle.block1352:                                 ; preds = %vector.body1354
  %cmp.n1364 = icmp eq i64 %165, %n.vec1360
  br i1 %cmp.n1364, label %polly.loop_exit406, label %polly.loop_header404.preheader

polly.loop_header404.preheader:                   ; preds = %polly.loop_header398, %middle.block1352
  %polly.indvar407.ph = phi i64 [ 0, %polly.loop_header398 ], [ %n.vec1360, %middle.block1352 ]
  br label %polly.loop_header404

polly.loop_exit406:                               ; preds = %polly.loop_header404, %middle.block1352
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar_next402, 1200
  %indvar.next1356 = add i64 %indvar1355, 1
  br i1 %exitcond1148.not, label %polly.loop_header414.preheader, label %polly.loop_header398

polly.loop_header414.preheader:                   ; preds = %polly.loop_exit406
  %Packed_MemRef_call1313 = bitcast i8* %malloccall312 to double*
  %Packed_MemRef_call2315 = bitcast i8* %malloccall314 to double*
  br label %polly.loop_header414

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_header404
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_header404 ], [ %polly.indvar407.ph, %polly.loop_header404.preheader ]
  %173 = shl nuw nsw i64 %polly.indvar407, 3
  %scevgep411 = getelementptr i8, i8* %scevgep410, i64 %173
  %scevgep411412 = bitcast i8* %scevgep411 to double*
  %_p_scalar_413 = load double, double* %scevgep411412, align 8, !alias.scope !86, !noalias !88
  %p_mul.i57 = fmul fast double %_p_scalar_413, 1.200000e+00
  store double %p_mul.i57, double* %scevgep411412, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next408, %polly.indvar401
  br i1 %exitcond1147.not, label %polly.loop_exit406, label %polly.loop_header404, !llvm.loop !94

polly.loop_header414:                             ; preds = %polly.loop_header414.preheader, %polly.loop_exit422
  %indvars.iv1119 = phi i64 [ 0, %polly.loop_header414.preheader ], [ %indvars.iv.next1120, %polly.loop_exit422 ]
  %polly.indvar417 = phi i64 [ 0, %polly.loop_header414.preheader ], [ %polly.indvar_next418, %polly.loop_exit422 ]
  %smin1143 = call i64 @llvm.smin.i64(i64 %indvars.iv1119, i64 -968)
  %174 = add nsw i64 %smin1143, 1000
  %175 = shl nsw i64 %polly.indvar417, 5
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_exit446
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %indvars.iv.next1120 = add nsw i64 %indvars.iv1119, -32
  %exitcond1146.not = icmp eq i64 %polly.indvar_next418, 32
  br i1 %exitcond1146.not, label %polly.exiting311, label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_exit446, %polly.loop_header414
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %polly.loop_exit446 ], [ 0, %polly.loop_header414 ]
  %indvars.iv1130 = phi i64 [ %indvars.iv.next1131, %polly.loop_exit446 ], [ 24, %polly.loop_header414 ]
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit446 ], [ 0, %polly.loop_header414 ]
  %indvars.iv1116 = phi i64 [ %indvars.iv.next1117, %polly.loop_exit446 ], [ 1200, %polly.loop_header414 ]
  %polly.indvar423 = phi i64 [ %polly.indvar_next424, %polly.loop_exit446 ], [ 0, %polly.loop_header414 ]
  %176 = mul nsw i64 %polly.indvar423, -44
  %177 = mul nuw nsw i64 %polly.indvar423, 11
  %178 = add nuw i64 %177, 24
  %179 = udiv i64 %178, 25
  %180 = mul nuw nsw i64 %179, 100
  %181 = add i64 %176, %180
  %182 = mul nuw nsw i64 %polly.indvar423, 44
  %183 = sub nsw i64 %182, %180
  %184 = udiv i64 %indvars.iv1130, 25
  %185 = mul nuw nsw i64 %184, 100
  %186 = add i64 %indvars.iv1128, %185
  %187 = sub nsw i64 %indvars.iv1135, %185
  %188 = shl nsw i64 %polly.indvar423, 8
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit434
  %189 = mul nsw i64 %polly.indvar423, -256
  %190 = mul nuw nsw i64 %polly.indvar423, 3
  %191 = mul nuw nsw i64 %polly.indvar423, 11
  %192 = add nuw nsw i64 %191, 24
  %pexp.p_div_q442 = udiv i64 %192, 25
  %193 = sub nsw i64 %190, %pexp.p_div_q442
  %polly.loop_guard447 = icmp slt i64 %193, 12
  br i1 %polly.loop_guard447, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_exit446:                               ; preds = %polly.loop_exit486, %polly.loop_exit428
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %indvars.iv.next1117 = add nsw i64 %indvars.iv1116, -256
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -44
  %indvars.iv.next1131 = add nuw nsw i64 %indvars.iv1130, 11
  %indvars.iv.next1136 = add nuw nsw i64 %indvars.iv1135, 44
  %exitcond1145.not = icmp eq i64 %polly.indvar_next424, 5
  br i1 %exitcond1145.not, label %polly.loop_exit422, label %polly.loop_header420

polly.loop_header426:                             ; preds = %polly.loop_exit434, %polly.loop_header420
  %polly.indvar429 = phi i64 [ 0, %polly.loop_header420 ], [ %polly.indvar_next430, %polly.loop_exit434 ]
  %194 = add nuw nsw i64 %polly.indvar429, %175
  %polly.access.mul.Packed_MemRef_call2315 = mul nuw nsw i64 %polly.indvar429, 1200
  br label %polly.loop_header432

polly.loop_exit434:                               ; preds = %polly.loop_header432
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next430, %174
  br i1 %exitcond1122.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header432:                             ; preds = %polly.loop_header432, %polly.loop_header426
  %polly.indvar435 = phi i64 [ 0, %polly.loop_header426 ], [ %polly.indvar_next436, %polly.loop_header432 ]
  %195 = add nuw nsw i64 %polly.indvar435, %188
  %polly.access.mul.call2439 = mul nuw nsw i64 %195, 1000
  %polly.access.add.call2440 = add nuw nsw i64 %194, %polly.access.mul.call2439
  %polly.access.call2441 = getelementptr double, double* %polly.access.cast.call2756, i64 %polly.access.add.call2440
  %polly.access.call2441.load = load double, double* %polly.access.call2441, align 8, !alias.scope !90, !noalias !95
  %polly.access.add.Packed_MemRef_call2315 = add nuw nsw i64 %polly.indvar435, %polly.access.mul.Packed_MemRef_call2315
  %polly.access.Packed_MemRef_call2315 = getelementptr double, double* %Packed_MemRef_call2315, i64 %polly.access.add.Packed_MemRef_call2315
  store double %polly.access.call2441.load, double* %polly.access.Packed_MemRef_call2315, align 8
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next436, %indvars.iv1116
  br i1 %exitcond1118.not, label %polly.loop_exit434, label %polly.loop_header432

polly.loop_header444:                             ; preds = %polly.loop_exit428, %polly.loop_exit486
  %indvar1369 = phi i64 [ %indvar.next1370, %polly.loop_exit486 ], [ 0, %polly.loop_exit428 ]
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %polly.loop_exit486 ], [ %187, %polly.loop_exit428 ]
  %indvars.iv1132 = phi i64 [ %indvars.iv.next1133, %polly.loop_exit486 ], [ %186, %polly.loop_exit428 ]
  %polly.indvar448 = phi i64 [ %polly.indvar_next449, %polly.loop_exit486 ], [ %193, %polly.loop_exit428 ]
  %196 = mul nsw i64 %indvar1369, -100
  %197 = add i64 %181, %196
  %smax1371 = call i64 @llvm.smax.i64(i64 %197, i64 0)
  %198 = mul nuw nsw i64 %indvar1369, 100
  %199 = add i64 %183, %198
  %200 = add i64 %smax1371, %199
  %smax1134 = call i64 @llvm.smax.i64(i64 %indvars.iv1132, i64 0)
  %201 = add i64 %smax1134, %indvars.iv1137
  %202 = mul nsw i64 %polly.indvar448, 100
  %203 = add nsw i64 %202, %189
  %204 = add nsw i64 %203, -1
  %.inv948 = icmp sgt i64 %203, 255
  %205 = select i1 %.inv948, i64 255, i64 %204
  %polly.loop_guard461 = icmp sgt i64 %205, -1
  %206 = icmp sgt i64 %203, 0
  %207 = select i1 %206, i64 %203, i64 0
  %208 = add nsw i64 %203, 99
  %polly.loop_guard473.not = icmp sgt i64 %207, %208
  br i1 %polly.loop_guard461, label %polly.loop_header451.us, label %polly.loop_header444.split

polly.loop_header451.us:                          ; preds = %polly.loop_header444, %polly.loop_exit472.us
  %polly.indvar454.us = phi i64 [ %polly.indvar_next455.us, %polly.loop_exit472.us ], [ 0, %polly.loop_header444 ]
  %209 = add nuw nsw i64 %polly.indvar454.us, %175
  %polly.access.mul.Packed_MemRef_call1313.us = mul nuw nsw i64 %polly.indvar454.us, 1200
  br label %polly.loop_header458.us

polly.loop_header458.us:                          ; preds = %polly.loop_header451.us, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header451.us ]
  %210 = add nuw nsw i64 %polly.indvar462.us, %188
  %polly.access.mul.call1466.us = mul nuw nsw i64 %210, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %209, %polly.access.mul.call1466.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1313.us = add nuw nsw i64 %polly.indvar462.us, %polly.access.mul.Packed_MemRef_call1313.us
  %polly.access.Packed_MemRef_call1313.us = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1313.us, align 8
  %polly.indvar_next463.us = add nuw i64 %polly.indvar462.us, 1
  %exitcond1125.not = icmp eq i64 %polly.indvar462.us, %205
  br i1 %exitcond1125.not, label %polly.loop_exit460.loopexit.us, label %polly.loop_header458.us

polly.loop_header470.us:                          ; preds = %polly.loop_exit460.loopexit.us, %polly.loop_header470.us
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_header470.us ], [ %207, %polly.loop_exit460.loopexit.us ]
  %211 = add nuw nsw i64 %polly.indvar474.us, %188
  %polly.access.mul.call1478.us = mul nsw i64 %211, 1000
  %polly.access.add.call1479.us = add nuw nsw i64 %209, %polly.access.mul.call1478.us
  %polly.access.call1480.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1479.us
  %polly.access.call1480.load.us = load double, double* %polly.access.call1480.us, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1313482.us = add nuw nsw i64 %polly.indvar474.us, %polly.access.mul.Packed_MemRef_call1313.us
  %polly.access.Packed_MemRef_call1313483.us = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313482.us
  store double %polly.access.call1480.load.us, double* %polly.access.Packed_MemRef_call1313483.us, align 8
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %polly.loop_cond476.not.not.us = icmp slt i64 %polly.indvar474.us, %208
  br i1 %polly.loop_cond476.not.not.us, label %polly.loop_header470.us, label %polly.loop_exit472.us

polly.loop_exit472.us:                            ; preds = %polly.loop_header470.us, %polly.loop_exit460.loopexit.us
  %polly.indvar_next455.us = add nuw nsw i64 %polly.indvar454.us, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar_next455.us, %174
  br i1 %exitcond1127.not, label %polly.loop_header484.preheader, label %polly.loop_header451.us

polly.loop_exit460.loopexit.us:                   ; preds = %polly.loop_header458.us
  br i1 %polly.loop_guard473.not, label %polly.loop_exit472.us, label %polly.loop_header470.us

polly.loop_header444.split:                       ; preds = %polly.loop_header444
  br i1 %polly.loop_guard473.not, label %polly.loop_header484.preheader, label %polly.loop_header451

polly.loop_exit486:                               ; preds = %polly.loop_exit493.loopexit.us, %polly.loop_header484.preheader
  %polly.indvar_next449 = add nsw i64 %polly.indvar448, 1
  %polly.loop_cond450 = icmp slt i64 %polly.indvar448, 11
  %indvars.iv.next1133 = add i64 %indvars.iv1132, -100
  %indvars.iv.next1138 = add i64 %indvars.iv1137, 100
  %indvar.next1370 = add i64 %indvar1369, 1
  br i1 %polly.loop_cond450, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_header451:                             ; preds = %polly.loop_header444.split, %polly.loop_exit472
  %polly.indvar454 = phi i64 [ %polly.indvar_next455, %polly.loop_exit472 ], [ 0, %polly.loop_header444.split ]
  %212 = add nuw nsw i64 %polly.indvar454, %175
  %polly.access.mul.Packed_MemRef_call1313481 = mul nuw nsw i64 %polly.indvar454, 1200
  br label %polly.loop_header470

polly.loop_exit472:                               ; preds = %polly.loop_header470
  %polly.indvar_next455 = add nuw nsw i64 %polly.indvar454, 1
  %exitcond1124.not = icmp eq i64 %polly.indvar_next455, %174
  br i1 %exitcond1124.not, label %polly.loop_header484.preheader, label %polly.loop_header451

polly.loop_header484.preheader:                   ; preds = %polly.loop_exit472, %polly.loop_exit472.us, %polly.loop_header444.split
  %213 = sub nsw i64 %188, %202
  %214 = icmp sgt i64 %213, 0
  %215 = select i1 %214, i64 %213, i64 0
  %polly.loop_guard494 = icmp slt i64 %215, 100
  br i1 %polly.loop_guard494, label %polly.loop_header484.us, label %polly.loop_exit486

polly.loop_header484.us:                          ; preds = %polly.loop_header484.preheader, %polly.loop_exit493.loopexit.us
  %polly.indvar487.us = phi i64 [ %polly.indvar_next488.us, %polly.loop_exit493.loopexit.us ], [ 0, %polly.loop_header484.preheader ]
  %polly.access.mul.Packed_MemRef_call1313506.us = mul nuw nsw i64 %polly.indvar487.us, 1200
  br label %polly.loop_header491.us

polly.loop_header491.us:                          ; preds = %polly.loop_header484.us, %polly.loop_exit501.us
  %indvar1372 = phi i64 [ 0, %polly.loop_header484.us ], [ %indvar.next1373, %polly.loop_exit501.us ]
  %indvars.iv1139 = phi i64 [ %201, %polly.loop_header484.us ], [ %indvars.iv.next1140, %polly.loop_exit501.us ]
  %polly.indvar495.us = phi i64 [ %215, %polly.loop_header484.us ], [ %polly.indvar_next496.us, %polly.loop_exit501.us ]
  %216 = add i64 %200, %indvar1372
  %smin1374 = call i64 @llvm.smin.i64(i64 %216, i64 255)
  %217 = add nsw i64 %smin1374, 1
  %smin1141 = call i64 @llvm.smin.i64(i64 %indvars.iv1139, i64 255)
  %218 = add nsw i64 %polly.indvar495.us, %203
  %polly.loop_guard502.us1217 = icmp sgt i64 %218, -1
  br i1 %polly.loop_guard502.us1217, label %polly.loop_header499.preheader.us, label %polly.loop_exit501.us

polly.loop_header499.us:                          ; preds = %polly.loop_header499.us.preheader, %polly.loop_header499.us
  %polly.indvar503.us = phi i64 [ %polly.indvar_next504.us, %polly.loop_header499.us ], [ %polly.indvar503.us.ph, %polly.loop_header499.us.preheader ]
  %219 = add nuw nsw i64 %polly.indvar503.us, %188
  %polly.access.add.Packed_MemRef_call1313507.us = add nuw nsw i64 %polly.indvar503.us, %polly.access.mul.Packed_MemRef_call1313506.us
  %polly.access.Packed_MemRef_call1313508.us = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313507.us
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call1313508.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_513.us, %_p_scalar_509.us
  %polly.access.Packed_MemRef_call2315516.us = getelementptr double, double* %Packed_MemRef_call2315, i64 %polly.access.add.Packed_MemRef_call1313507.us
  %_p_scalar_517.us = load double, double* %polly.access.Packed_MemRef_call2315516.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_521.us, %_p_scalar_517.us
  %220 = shl i64 %219, 3
  %221 = add i64 %220, %223
  %scevgep522.us = getelementptr i8, i8* %call, i64 %221
  %scevgep522523.us = bitcast i8* %scevgep522.us to double*
  %_p_scalar_524.us = load double, double* %scevgep522523.us, align 8, !alias.scope !86, !noalias !88
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_524.us
  store double %p_add42.i79.us, double* %scevgep522523.us, align 8, !alias.scope !86, !noalias !88
  %polly.indvar_next504.us = add nuw nsw i64 %polly.indvar503.us, 1
  %exitcond1142.not = icmp eq i64 %polly.indvar503.us, %smin1141
  br i1 %exitcond1142.not, label %polly.loop_exit501.us, label %polly.loop_header499.us, !llvm.loop !97

polly.loop_exit501.us:                            ; preds = %polly.loop_header499.us, %middle.block1366, %polly.loop_header491.us
  %polly.indvar_next496.us = add nuw nsw i64 %polly.indvar495.us, 1
  %polly.loop_cond497.us = icmp ult i64 %polly.indvar495.us, 99
  %indvars.iv.next1140 = add i64 %indvars.iv1139, 1
  %indvar.next1373 = add i64 %indvar1372, 1
  br i1 %polly.loop_cond497.us, label %polly.loop_header491.us, label %polly.loop_exit493.loopexit.us

polly.loop_header499.preheader.us:                ; preds = %polly.loop_header491.us
  %222 = add nsw i64 %polly.indvar495.us, %202
  %polly.access.add.Packed_MemRef_call2315511.us = add nsw i64 %218, %polly.access.mul.Packed_MemRef_call1313506.us
  %polly.access.Packed_MemRef_call2315512.us = getelementptr double, double* %Packed_MemRef_call2315, i64 %polly.access.add.Packed_MemRef_call2315511.us
  %_p_scalar_513.us = load double, double* %polly.access.Packed_MemRef_call2315512.us, align 8
  %polly.access.Packed_MemRef_call1313520.us = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call2315511.us
  %_p_scalar_521.us = load double, double* %polly.access.Packed_MemRef_call1313520.us, align 8
  %223 = mul i64 %222, 9600
  %min.iters.check1375 = icmp ult i64 %217, 4
  br i1 %min.iters.check1375, label %polly.loop_header499.us.preheader, label %vector.ph1376

vector.ph1376:                                    ; preds = %polly.loop_header499.preheader.us
  %n.vec1378 = and i64 %217, -4
  %broadcast.splatinsert1384 = insertelement <4 x double> poison, double %_p_scalar_513.us, i32 0
  %broadcast.splat1385 = shufflevector <4 x double> %broadcast.splatinsert1384, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1387 = insertelement <4 x double> poison, double %_p_scalar_521.us, i32 0
  %broadcast.splat1388 = shufflevector <4 x double> %broadcast.splatinsert1387, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1368

vector.body1368:                                  ; preds = %vector.body1368, %vector.ph1376
  %index1379 = phi i64 [ 0, %vector.ph1376 ], [ %index.next1380, %vector.body1368 ]
  %224 = add nuw nsw i64 %index1379, %188
  %225 = add nuw nsw i64 %index1379, %polly.access.mul.Packed_MemRef_call1313506.us
  %226 = getelementptr double, double* %Packed_MemRef_call1313, i64 %225
  %227 = bitcast double* %226 to <4 x double>*
  %wide.load1383 = load <4 x double>, <4 x double>* %227, align 8
  %228 = fmul fast <4 x double> %broadcast.splat1385, %wide.load1383
  %229 = getelementptr double, double* %Packed_MemRef_call2315, i64 %225
  %230 = bitcast double* %229 to <4 x double>*
  %wide.load1386 = load <4 x double>, <4 x double>* %230, align 8
  %231 = fmul fast <4 x double> %broadcast.splat1388, %wide.load1386
  %232 = shl i64 %224, 3
  %233 = add i64 %232, %223
  %234 = getelementptr i8, i8* %call, i64 %233
  %235 = bitcast i8* %234 to <4 x double>*
  %wide.load1389 = load <4 x double>, <4 x double>* %235, align 8, !alias.scope !86, !noalias !88
  %236 = fadd fast <4 x double> %231, %228
  %237 = fmul fast <4 x double> %236, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %238 = fadd fast <4 x double> %237, %wide.load1389
  %239 = bitcast i8* %234 to <4 x double>*
  store <4 x double> %238, <4 x double>* %239, align 8, !alias.scope !86, !noalias !88
  %index.next1380 = add i64 %index1379, 4
  %240 = icmp eq i64 %index.next1380, %n.vec1378
  br i1 %240, label %middle.block1366, label %vector.body1368, !llvm.loop !98

middle.block1366:                                 ; preds = %vector.body1368
  %cmp.n1382 = icmp eq i64 %217, %n.vec1378
  br i1 %cmp.n1382, label %polly.loop_exit501.us, label %polly.loop_header499.us.preheader

polly.loop_header499.us.preheader:                ; preds = %polly.loop_header499.preheader.us, %middle.block1366
  %polly.indvar503.us.ph = phi i64 [ 0, %polly.loop_header499.preheader.us ], [ %n.vec1378, %middle.block1366 ]
  br label %polly.loop_header499.us

polly.loop_exit493.loopexit.us:                   ; preds = %polly.loop_exit501.us
  %polly.indvar_next488.us = add nuw nsw i64 %polly.indvar487.us, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar_next488.us, %174
  br i1 %exitcond1144.not, label %polly.loop_exit486, label %polly.loop_header484.us

polly.loop_header470:                             ; preds = %polly.loop_header451, %polly.loop_header470
  %polly.indvar474 = phi i64 [ %polly.indvar_next475, %polly.loop_header470 ], [ %207, %polly.loop_header451 ]
  %241 = add nuw nsw i64 %polly.indvar474, %188
  %polly.access.mul.call1478 = mul nsw i64 %241, 1000
  %polly.access.add.call1479 = add nuw nsw i64 %212, %polly.access.mul.call1478
  %polly.access.call1480 = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1479
  %polly.access.call1480.load = load double, double* %polly.access.call1480, align 8, !alias.scope !89, !noalias !96
  %polly.access.add.Packed_MemRef_call1313482 = add nuw nsw i64 %polly.indvar474, %polly.access.mul.Packed_MemRef_call1313481
  %polly.access.Packed_MemRef_call1313483 = getelementptr double, double* %Packed_MemRef_call1313, i64 %polly.access.add.Packed_MemRef_call1313482
  store double %polly.access.call1480.load, double* %polly.access.Packed_MemRef_call1313483, align 8
  %polly.indvar_next475 = add nuw nsw i64 %polly.indvar474, 1
  %polly.loop_cond476.not.not = icmp slt i64 %polly.indvar474, %208
  br i1 %polly.loop_cond476.not.not, label %polly.loop_header470, label %polly.loop_exit472

polly.start527:                                   ; preds = %init_array.exit
  %malloccall529 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  %malloccall531 = tail call dereferenceable_or_null(307200) i8* @malloc(i64 307200) #6
  br label %polly.loop_header615

polly.exiting528:                                 ; preds = %polly.loop_exit639
  tail call void @free(i8* %malloccall529)
  tail call void @free(i8* %malloccall531)
  br label %kernel_syr2k.exit

polly.loop_header615:                             ; preds = %polly.loop_exit623, %polly.start527
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit623 ], [ 0, %polly.start527 ]
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit623 ], [ 1, %polly.start527 ]
  %242 = add i64 %indvar, 1
  %243 = mul nuw nsw i64 %polly.indvar618, 9600
  %scevgep627 = getelementptr i8, i8* %call, i64 %243
  %min.iters.check1307 = icmp ult i64 %242, 4
  br i1 %min.iters.check1307, label %polly.loop_header621.preheader, label %vector.ph1308

vector.ph1308:                                    ; preds = %polly.loop_header615
  %n.vec1310 = and i64 %242, -4
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1312, %vector.body1306 ]
  %244 = shl nuw nsw i64 %index1311, 3
  %245 = getelementptr i8, i8* %scevgep627, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  %wide.load1315 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !99, !noalias !101
  %247 = fmul fast <4 x double> %wide.load1315, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %248 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %247, <4 x double>* %248, align 8, !alias.scope !99, !noalias !101
  %index.next1312 = add i64 %index1311, 4
  %249 = icmp eq i64 %index.next1312, %n.vec1310
  br i1 %249, label %middle.block1304, label %vector.body1306, !llvm.loop !106

middle.block1304:                                 ; preds = %vector.body1306
  %cmp.n1314 = icmp eq i64 %242, %n.vec1310
  br i1 %cmp.n1314, label %polly.loop_exit623, label %polly.loop_header621.preheader

polly.loop_header621.preheader:                   ; preds = %polly.loop_header615, %middle.block1304
  %polly.indvar624.ph = phi i64 [ 0, %polly.loop_header615 ], [ %n.vec1310, %middle.block1304 ]
  br label %polly.loop_header621

polly.loop_exit623:                               ; preds = %polly.loop_header621, %middle.block1304
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %exitcond1181.not = icmp eq i64 %polly.indvar_next619, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1181.not, label %polly.loop_header631.preheader, label %polly.loop_header615

polly.loop_header631.preheader:                   ; preds = %polly.loop_exit623
  %Packed_MemRef_call1530 = bitcast i8* %malloccall529 to double*
  %Packed_MemRef_call2532 = bitcast i8* %malloccall531 to double*
  br label %polly.loop_header631

polly.loop_header621:                             ; preds = %polly.loop_header621.preheader, %polly.loop_header621
  %polly.indvar624 = phi i64 [ %polly.indvar_next625, %polly.loop_header621 ], [ %polly.indvar624.ph, %polly.loop_header621.preheader ]
  %250 = shl nuw nsw i64 %polly.indvar624, 3
  %scevgep628 = getelementptr i8, i8* %scevgep627, i64 %250
  %scevgep628629 = bitcast i8* %scevgep628 to double*
  %_p_scalar_630 = load double, double* %scevgep628629, align 8, !alias.scope !99, !noalias !101
  %p_mul.i = fmul fast double %_p_scalar_630, 1.200000e+00
  store double %p_mul.i, double* %scevgep628629, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar_next625, %polly.indvar618
  br i1 %exitcond1180.not, label %polly.loop_exit623, label %polly.loop_header621, !llvm.loop !107

polly.loop_header631:                             ; preds = %polly.loop_header631.preheader, %polly.loop_exit639
  %indvars.iv1152 = phi i64 [ 0, %polly.loop_header631.preheader ], [ %indvars.iv.next1153, %polly.loop_exit639 ]
  %polly.indvar634 = phi i64 [ 0, %polly.loop_header631.preheader ], [ %polly.indvar_next635, %polly.loop_exit639 ]
  %smin1176 = call i64 @llvm.smin.i64(i64 %indvars.iv1152, i64 -968)
  %251 = add nsw i64 %smin1176, 1000
  %252 = shl nsw i64 %polly.indvar634, 5
  br label %polly.loop_header637

polly.loop_exit639:                               ; preds = %polly.loop_exit663
  %polly.indvar_next635 = add nuw nsw i64 %polly.indvar634, 1
  %indvars.iv.next1153 = add nsw i64 %indvars.iv1152, -32
  %exitcond1179.not = icmp eq i64 %polly.indvar_next635, 32
  br i1 %exitcond1179.not, label %polly.exiting528, label %polly.loop_header631

polly.loop_header637:                             ; preds = %polly.loop_exit663, %polly.loop_header631
  %indvars.iv1168 = phi i64 [ %indvars.iv.next1169, %polly.loop_exit663 ], [ 0, %polly.loop_header631 ]
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit663 ], [ 24, %polly.loop_header631 ]
  %indvars.iv1161 = phi i64 [ %indvars.iv.next1162, %polly.loop_exit663 ], [ 0, %polly.loop_header631 ]
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit663 ], [ 1200, %polly.loop_header631 ]
  %polly.indvar640 = phi i64 [ %polly.indvar_next641, %polly.loop_exit663 ], [ 0, %polly.loop_header631 ]
  %253 = mul nsw i64 %polly.indvar640, -44
  %254 = mul nuw nsw i64 %polly.indvar640, 11
  %255 = add nuw i64 %254, 24
  %256 = udiv i64 %255, 25
  %257 = mul nuw nsw i64 %256, 100
  %258 = add i64 %253, %257
  %259 = mul nuw nsw i64 %polly.indvar640, 44
  %260 = sub nsw i64 %259, %257
  %261 = udiv i64 %indvars.iv1163, 25
  %262 = mul nuw nsw i64 %261, 100
  %263 = add i64 %indvars.iv1161, %262
  %264 = sub nsw i64 %indvars.iv1168, %262
  %265 = shl nsw i64 %polly.indvar640, 8
  br label %polly.loop_header643

polly.loop_exit645:                               ; preds = %polly.loop_exit651
  %266 = mul nsw i64 %polly.indvar640, -256
  %267 = mul nuw nsw i64 %polly.indvar640, 3
  %268 = mul nuw nsw i64 %polly.indvar640, 11
  %269 = add nuw nsw i64 %268, 24
  %pexp.p_div_q659 = udiv i64 %269, 25
  %270 = sub nsw i64 %267, %pexp.p_div_q659
  %polly.loop_guard664 = icmp slt i64 %270, 12
  br i1 %polly.loop_guard664, label %polly.loop_header661, label %polly.loop_exit663

polly.loop_exit663:                               ; preds = %polly.loop_exit703, %polly.loop_exit645
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, -256
  %indvars.iv.next1162 = add nsw i64 %indvars.iv1161, -44
  %indvars.iv.next1164 = add nuw nsw i64 %indvars.iv1163, 11
  %indvars.iv.next1169 = add nuw nsw i64 %indvars.iv1168, 44
  %exitcond1178.not = icmp eq i64 %polly.indvar_next641, 5
  br i1 %exitcond1178.not, label %polly.loop_exit639, label %polly.loop_header637

polly.loop_header643:                             ; preds = %polly.loop_exit651, %polly.loop_header637
  %polly.indvar646 = phi i64 [ 0, %polly.loop_header637 ], [ %polly.indvar_next647, %polly.loop_exit651 ]
  %271 = add nuw nsw i64 %polly.indvar646, %252
  %polly.access.mul.Packed_MemRef_call2532 = mul nuw nsw i64 %polly.indvar646, 1200
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_header649
  %polly.indvar_next647 = add nuw nsw i64 %polly.indvar646, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next647, %251
  br i1 %exitcond1155.not, label %polly.loop_exit645, label %polly.loop_header643

polly.loop_header649:                             ; preds = %polly.loop_header649, %polly.loop_header643
  %polly.indvar652 = phi i64 [ 0, %polly.loop_header643 ], [ %polly.indvar_next653, %polly.loop_header649 ]
  %272 = add nuw nsw i64 %polly.indvar652, %265
  %polly.access.mul.call2656 = mul nuw nsw i64 %272, 1000
  %polly.access.add.call2657 = add nuw nsw i64 %271, %polly.access.mul.call2656
  %polly.access.call2658 = getelementptr double, double* %polly.access.cast.call2756, i64 %polly.access.add.call2657
  %polly.access.call2658.load = load double, double* %polly.access.call2658, align 8, !alias.scope !103, !noalias !108
  %polly.access.add.Packed_MemRef_call2532 = add nuw nsw i64 %polly.indvar652, %polly.access.mul.Packed_MemRef_call2532
  %polly.access.Packed_MemRef_call2532 = getelementptr double, double* %Packed_MemRef_call2532, i64 %polly.access.add.Packed_MemRef_call2532
  store double %polly.access.call2658.load, double* %polly.access.Packed_MemRef_call2532, align 8
  %polly.indvar_next653 = add nuw nsw i64 %polly.indvar652, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar_next653, %indvars.iv1149
  br i1 %exitcond1151.not, label %polly.loop_exit651, label %polly.loop_header649

polly.loop_header661:                             ; preds = %polly.loop_exit645, %polly.loop_exit703
  %indvar1319 = phi i64 [ %indvar.next1320, %polly.loop_exit703 ], [ 0, %polly.loop_exit645 ]
  %indvars.iv1170 = phi i64 [ %indvars.iv.next1171, %polly.loop_exit703 ], [ %264, %polly.loop_exit645 ]
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166, %polly.loop_exit703 ], [ %263, %polly.loop_exit645 ]
  %polly.indvar665 = phi i64 [ %polly.indvar_next666, %polly.loop_exit703 ], [ %270, %polly.loop_exit645 ]
  %273 = mul nsw i64 %indvar1319, -100
  %274 = add i64 %258, %273
  %smax1321 = call i64 @llvm.smax.i64(i64 %274, i64 0)
  %275 = mul nuw nsw i64 %indvar1319, 100
  %276 = add i64 %260, %275
  %277 = add i64 %smax1321, %276
  %smax1167 = call i64 @llvm.smax.i64(i64 %indvars.iv1165, i64 0)
  %278 = add i64 %smax1167, %indvars.iv1170
  %279 = mul nsw i64 %polly.indvar665, 100
  %280 = add nsw i64 %279, %266
  %281 = add nsw i64 %280, -1
  %.inv949 = icmp sgt i64 %280, 255
  %282 = select i1 %.inv949, i64 255, i64 %281
  %polly.loop_guard678 = icmp sgt i64 %282, -1
  %283 = icmp sgt i64 %280, 0
  %284 = select i1 %283, i64 %280, i64 0
  %285 = add nsw i64 %280, 99
  %polly.loop_guard690.not = icmp sgt i64 %284, %285
  br i1 %polly.loop_guard678, label %polly.loop_header668.us, label %polly.loop_header661.split

polly.loop_header668.us:                          ; preds = %polly.loop_header661, %polly.loop_exit689.us
  %polly.indvar671.us = phi i64 [ %polly.indvar_next672.us, %polly.loop_exit689.us ], [ 0, %polly.loop_header661 ]
  %286 = add nuw nsw i64 %polly.indvar671.us, %252
  %polly.access.mul.Packed_MemRef_call1530.us = mul nuw nsw i64 %polly.indvar671.us, 1200
  br label %polly.loop_header675.us

polly.loop_header675.us:                          ; preds = %polly.loop_header668.us, %polly.loop_header675.us
  %polly.indvar679.us = phi i64 [ %polly.indvar_next680.us, %polly.loop_header675.us ], [ 0, %polly.loop_header668.us ]
  %287 = add nuw nsw i64 %polly.indvar679.us, %265
  %polly.access.mul.call1683.us = mul nuw nsw i64 %287, 1000
  %polly.access.add.call1684.us = add nuw nsw i64 %286, %polly.access.mul.call1683.us
  %polly.access.call1685.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1684.us
  %polly.access.call1685.load.us = load double, double* %polly.access.call1685.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1530.us = add nuw nsw i64 %polly.indvar679.us, %polly.access.mul.Packed_MemRef_call1530.us
  %polly.access.Packed_MemRef_call1530.us = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530.us
  store double %polly.access.call1685.load.us, double* %polly.access.Packed_MemRef_call1530.us, align 8
  %polly.indvar_next680.us = add nuw i64 %polly.indvar679.us, 1
  %exitcond1158.not = icmp eq i64 %polly.indvar679.us, %282
  br i1 %exitcond1158.not, label %polly.loop_exit677.loopexit.us, label %polly.loop_header675.us

polly.loop_header687.us:                          ; preds = %polly.loop_exit677.loopexit.us, %polly.loop_header687.us
  %polly.indvar691.us = phi i64 [ %polly.indvar_next692.us, %polly.loop_header687.us ], [ %284, %polly.loop_exit677.loopexit.us ]
  %288 = add nuw nsw i64 %polly.indvar691.us, %265
  %polly.access.mul.call1695.us = mul nsw i64 %288, 1000
  %polly.access.add.call1696.us = add nuw nsw i64 %286, %polly.access.mul.call1695.us
  %polly.access.call1697.us = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1696.us
  %polly.access.call1697.load.us = load double, double* %polly.access.call1697.us, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1530699.us = add nuw nsw i64 %polly.indvar691.us, %polly.access.mul.Packed_MemRef_call1530.us
  %polly.access.Packed_MemRef_call1530700.us = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530699.us
  store double %polly.access.call1697.load.us, double* %polly.access.Packed_MemRef_call1530700.us, align 8
  %polly.indvar_next692.us = add nuw nsw i64 %polly.indvar691.us, 1
  %polly.loop_cond693.not.not.us = icmp slt i64 %polly.indvar691.us, %285
  br i1 %polly.loop_cond693.not.not.us, label %polly.loop_header687.us, label %polly.loop_exit689.us

polly.loop_exit689.us:                            ; preds = %polly.loop_header687.us, %polly.loop_exit677.loopexit.us
  %polly.indvar_next672.us = add nuw nsw i64 %polly.indvar671.us, 1
  %exitcond1160.not = icmp eq i64 %polly.indvar_next672.us, %251
  br i1 %exitcond1160.not, label %polly.loop_header701.preheader, label %polly.loop_header668.us

polly.loop_exit677.loopexit.us:                   ; preds = %polly.loop_header675.us
  br i1 %polly.loop_guard690.not, label %polly.loop_exit689.us, label %polly.loop_header687.us

polly.loop_header661.split:                       ; preds = %polly.loop_header661
  br i1 %polly.loop_guard690.not, label %polly.loop_header701.preheader, label %polly.loop_header668

polly.loop_exit703:                               ; preds = %polly.loop_exit710.loopexit.us, %polly.loop_header701.preheader
  %polly.indvar_next666 = add nsw i64 %polly.indvar665, 1
  %polly.loop_cond667 = icmp slt i64 %polly.indvar665, 11
  %indvars.iv.next1166 = add i64 %indvars.iv1165, -100
  %indvars.iv.next1171 = add i64 %indvars.iv1170, 100
  %indvar.next1320 = add i64 %indvar1319, 1
  br i1 %polly.loop_cond667, label %polly.loop_header661, label %polly.loop_exit663

polly.loop_header668:                             ; preds = %polly.loop_header661.split, %polly.loop_exit689
  %polly.indvar671 = phi i64 [ %polly.indvar_next672, %polly.loop_exit689 ], [ 0, %polly.loop_header661.split ]
  %289 = add nuw nsw i64 %polly.indvar671, %252
  %polly.access.mul.Packed_MemRef_call1530698 = mul nuw nsw i64 %polly.indvar671, 1200
  br label %polly.loop_header687

polly.loop_exit689:                               ; preds = %polly.loop_header687
  %polly.indvar_next672 = add nuw nsw i64 %polly.indvar671, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next672, %251
  br i1 %exitcond1157.not, label %polly.loop_header701.preheader, label %polly.loop_header668

polly.loop_header701.preheader:                   ; preds = %polly.loop_exit689, %polly.loop_exit689.us, %polly.loop_header661.split
  %290 = sub nsw i64 %265, %279
  %291 = icmp sgt i64 %290, 0
  %292 = select i1 %291, i64 %290, i64 0
  %polly.loop_guard711 = icmp slt i64 %292, 100
  br i1 %polly.loop_guard711, label %polly.loop_header701.us, label %polly.loop_exit703

polly.loop_header701.us:                          ; preds = %polly.loop_header701.preheader, %polly.loop_exit710.loopexit.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_exit710.loopexit.us ], [ 0, %polly.loop_header701.preheader ]
  %polly.access.mul.Packed_MemRef_call1530723.us = mul nuw nsw i64 %polly.indvar704.us, 1200
  br label %polly.loop_header708.us

polly.loop_header708.us:                          ; preds = %polly.loop_header701.us, %polly.loop_exit718.us
  %indvar1322 = phi i64 [ 0, %polly.loop_header701.us ], [ %indvar.next1323, %polly.loop_exit718.us ]
  %indvars.iv1172 = phi i64 [ %278, %polly.loop_header701.us ], [ %indvars.iv.next1173, %polly.loop_exit718.us ]
  %polly.indvar712.us = phi i64 [ %292, %polly.loop_header701.us ], [ %polly.indvar_next713.us, %polly.loop_exit718.us ]
  %293 = add i64 %277, %indvar1322
  %smin1324 = call i64 @llvm.smin.i64(i64 %293, i64 255)
  %294 = add nsw i64 %smin1324, 1
  %smin1174 = call i64 @llvm.smin.i64(i64 %indvars.iv1172, i64 255)
  %295 = add nsw i64 %polly.indvar712.us, %280
  %polly.loop_guard719.us1218 = icmp sgt i64 %295, -1
  br i1 %polly.loop_guard719.us1218, label %polly.loop_header716.preheader.us, label %polly.loop_exit718.us

polly.loop_header716.us:                          ; preds = %polly.loop_header716.us.preheader, %polly.loop_header716.us
  %polly.indvar720.us = phi i64 [ %polly.indvar_next721.us, %polly.loop_header716.us ], [ %polly.indvar720.us.ph, %polly.loop_header716.us.preheader ]
  %296 = add nuw nsw i64 %polly.indvar720.us, %265
  %polly.access.add.Packed_MemRef_call1530724.us = add nuw nsw i64 %polly.indvar720.us, %polly.access.mul.Packed_MemRef_call1530723.us
  %polly.access.Packed_MemRef_call1530725.us = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530724.us
  %_p_scalar_726.us = load double, double* %polly.access.Packed_MemRef_call1530725.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_730.us, %_p_scalar_726.us
  %polly.access.Packed_MemRef_call2532733.us = getelementptr double, double* %Packed_MemRef_call2532, i64 %polly.access.add.Packed_MemRef_call1530724.us
  %_p_scalar_734.us = load double, double* %polly.access.Packed_MemRef_call2532733.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_738.us, %_p_scalar_734.us
  %297 = shl i64 %296, 3
  %298 = add i64 %297, %300
  %scevgep739.us = getelementptr i8, i8* %call, i64 %298
  %scevgep739740.us = bitcast i8* %scevgep739.us to double*
  %_p_scalar_741.us = load double, double* %scevgep739740.us, align 8, !alias.scope !99, !noalias !101
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_741.us
  store double %p_add42.i.us, double* %scevgep739740.us, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next721.us = add nuw nsw i64 %polly.indvar720.us, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar720.us, %smin1174
  br i1 %exitcond1175.not, label %polly.loop_exit718.us, label %polly.loop_header716.us, !llvm.loop !110

polly.loop_exit718.us:                            ; preds = %polly.loop_header716.us, %middle.block1316, %polly.loop_header708.us
  %polly.indvar_next713.us = add nuw nsw i64 %polly.indvar712.us, 1
  %polly.loop_cond714.us = icmp ult i64 %polly.indvar712.us, 99
  %indvars.iv.next1173 = add i64 %indvars.iv1172, 1
  %indvar.next1323 = add i64 %indvar1322, 1
  br i1 %polly.loop_cond714.us, label %polly.loop_header708.us, label %polly.loop_exit710.loopexit.us

polly.loop_header716.preheader.us:                ; preds = %polly.loop_header708.us
  %299 = add nsw i64 %polly.indvar712.us, %279
  %polly.access.add.Packed_MemRef_call2532728.us = add nsw i64 %295, %polly.access.mul.Packed_MemRef_call1530723.us
  %polly.access.Packed_MemRef_call2532729.us = getelementptr double, double* %Packed_MemRef_call2532, i64 %polly.access.add.Packed_MemRef_call2532728.us
  %_p_scalar_730.us = load double, double* %polly.access.Packed_MemRef_call2532729.us, align 8
  %polly.access.Packed_MemRef_call1530737.us = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call2532728.us
  %_p_scalar_738.us = load double, double* %polly.access.Packed_MemRef_call1530737.us, align 8
  %300 = mul i64 %299, 9600
  %min.iters.check1325 = icmp ult i64 %294, 4
  br i1 %min.iters.check1325, label %polly.loop_header716.us.preheader, label %vector.ph1326

vector.ph1326:                                    ; preds = %polly.loop_header716.preheader.us
  %n.vec1328 = and i64 %294, -4
  %broadcast.splatinsert1334 = insertelement <4 x double> poison, double %_p_scalar_730.us, i32 0
  %broadcast.splat1335 = shufflevector <4 x double> %broadcast.splatinsert1334, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_738.us, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1318 ]
  %301 = add nuw nsw i64 %index1329, %265
  %302 = add nuw nsw i64 %index1329, %polly.access.mul.Packed_MemRef_call1530723.us
  %303 = getelementptr double, double* %Packed_MemRef_call1530, i64 %302
  %304 = bitcast double* %303 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %304, align 8
  %305 = fmul fast <4 x double> %broadcast.splat1335, %wide.load1333
  %306 = getelementptr double, double* %Packed_MemRef_call2532, i64 %302
  %307 = bitcast double* %306 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %307, align 8
  %308 = fmul fast <4 x double> %broadcast.splat1338, %wide.load1336
  %309 = shl i64 %301, 3
  %310 = add i64 %309, %300
  %311 = getelementptr i8, i8* %call, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %312, align 8, !alias.scope !99, !noalias !101
  %313 = fadd fast <4 x double> %308, %305
  %314 = fmul fast <4 x double> %313, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %315 = fadd fast <4 x double> %314, %wide.load1339
  %316 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %315, <4 x double>* %316, align 8, !alias.scope !99, !noalias !101
  %index.next1330 = add i64 %index1329, 4
  %317 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %317, label %middle.block1316, label %vector.body1318, !llvm.loop !111

middle.block1316:                                 ; preds = %vector.body1318
  %cmp.n1332 = icmp eq i64 %294, %n.vec1328
  br i1 %cmp.n1332, label %polly.loop_exit718.us, label %polly.loop_header716.us.preheader

polly.loop_header716.us.preheader:                ; preds = %polly.loop_header716.preheader.us, %middle.block1316
  %polly.indvar720.us.ph = phi i64 [ 0, %polly.loop_header716.preheader.us ], [ %n.vec1328, %middle.block1316 ]
  br label %polly.loop_header716.us

polly.loop_exit710.loopexit.us:                   ; preds = %polly.loop_exit718.us
  %polly.indvar_next705.us = add nuw nsw i64 %polly.indvar704.us, 1
  %exitcond1177.not = icmp eq i64 %polly.indvar_next705.us, %251
  br i1 %exitcond1177.not, label %polly.loop_exit703, label %polly.loop_header701.us

polly.loop_header687:                             ; preds = %polly.loop_header668, %polly.loop_header687
  %polly.indvar691 = phi i64 [ %polly.indvar_next692, %polly.loop_header687 ], [ %284, %polly.loop_header668 ]
  %318 = add nuw nsw i64 %polly.indvar691, %265
  %polly.access.mul.call1695 = mul nsw i64 %318, 1000
  %polly.access.add.call1696 = add nuw nsw i64 %289, %polly.access.mul.call1695
  %polly.access.call1697 = getelementptr double, double* %polly.access.cast.call1746, i64 %polly.access.add.call1696
  %polly.access.call1697.load = load double, double* %polly.access.call1697, align 8, !alias.scope !102, !noalias !109
  %polly.access.add.Packed_MemRef_call1530699 = add nuw nsw i64 %polly.indvar691, %polly.access.mul.Packed_MemRef_call1530698
  %polly.access.Packed_MemRef_call1530700 = getelementptr double, double* %Packed_MemRef_call1530, i64 %polly.access.add.Packed_MemRef_call1530699
  store double %polly.access.call1697.load, double* %polly.access.Packed_MemRef_call1530700, align 8
  %polly.indvar_next692 = add nuw nsw i64 %polly.indvar691, 1
  %polly.loop_cond693.not.not = icmp slt i64 %polly.indvar691, %285
  br i1 %polly.loop_cond693.not.not, label %polly.loop_header687, label %polly.loop_exit689

polly.loop_header868:                             ; preds = %entry, %polly.loop_exit876
  %indvars.iv1206 = phi i64 [ %indvars.iv.next1207, %polly.loop_exit876 ], [ 0, %entry ]
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_exit876 ], [ 0, %entry ]
  %smin1208 = call i64 @llvm.smin.i64(i64 %indvars.iv1206, i64 -1168)
  %319 = shl nsw i64 %polly.indvar871, 5
  %320 = add nsw i64 %smin1208, 1199
  br label %polly.loop_header874

polly.loop_exit876:                               ; preds = %polly.loop_exit882
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %indvars.iv.next1207 = add nsw i64 %indvars.iv1206, -32
  %exitcond1211.not = icmp eq i64 %polly.indvar_next872, 38
  br i1 %exitcond1211.not, label %polly.loop_header895, label %polly.loop_header868

polly.loop_header874:                             ; preds = %polly.loop_exit882, %polly.loop_header868
  %indvars.iv1202 = phi i64 [ %indvars.iv.next1203, %polly.loop_exit882 ], [ 0, %polly.loop_header868 ]
  %polly.indvar877 = phi i64 [ %polly.indvar_next878, %polly.loop_exit882 ], [ 0, %polly.loop_header868 ]
  %321 = mul nsw i64 %polly.indvar877, -32
  %smin = call i64 @llvm.smin.i64(i64 %321, i64 -1168)
  %322 = add nsw i64 %smin, 1200
  %smin1204 = call i64 @llvm.smin.i64(i64 %indvars.iv1202, i64 -1168)
  %323 = shl nsw i64 %polly.indvar877, 5
  %324 = add nsw i64 %smin1204, 1199
  br label %polly.loop_header880

polly.loop_exit882:                               ; preds = %polly.loop_exit888
  %polly.indvar_next878 = add nuw nsw i64 %polly.indvar877, 1
  %indvars.iv.next1203 = add nsw i64 %indvars.iv1202, -32
  %exitcond1210.not = icmp eq i64 %polly.indvar_next878, 38
  br i1 %exitcond1210.not, label %polly.loop_exit876, label %polly.loop_header874

polly.loop_header880:                             ; preds = %polly.loop_exit888, %polly.loop_header874
  %polly.indvar883 = phi i64 [ 0, %polly.loop_header874 ], [ %polly.indvar_next884, %polly.loop_exit888 ]
  %325 = add nuw nsw i64 %polly.indvar883, %319
  %326 = trunc i64 %325 to i32
  %327 = mul nuw nsw i64 %325, 9600
  %min.iters.check = icmp eq i64 %322, 0
  br i1 %min.iters.check, label %polly.loop_header886, label %vector.ph1246

vector.ph1246:                                    ; preds = %polly.loop_header880
  %broadcast.splatinsert1253 = insertelement <4 x i64> poison, i64 %323, i32 0
  %broadcast.splat1254 = shufflevector <4 x i64> %broadcast.splatinsert1253, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1255 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1256 = shufflevector <4 x i32> %broadcast.splatinsert1255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %vector.ph1246
  %index1247 = phi i64 [ 0, %vector.ph1246 ], [ %index.next1248, %vector.body1245 ]
  %vec.ind1251 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1246 ], [ %vec.ind.next1252, %vector.body1245 ]
  %328 = add nuw nsw <4 x i64> %vec.ind1251, %broadcast.splat1254
  %329 = trunc <4 x i64> %328 to <4 x i32>
  %330 = mul <4 x i32> %broadcast.splat1256, %329
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
  %index.next1248 = add i64 %index1247, 4
  %vec.ind.next1252 = add <4 x i64> %vec.ind1251, <i64 4, i64 4, i64 4, i64 4>
  %340 = icmp eq i64 %index.next1248, %322
  br i1 %340, label %polly.loop_exit888, label %vector.body1245, !llvm.loop !117

polly.loop_exit888:                               ; preds = %vector.body1245, %polly.loop_header886
  %polly.indvar_next884 = add nuw nsw i64 %polly.indvar883, 1
  %exitcond1209.not = icmp eq i64 %polly.indvar883, %320
  br i1 %exitcond1209.not, label %polly.loop_exit882, label %polly.loop_header880

polly.loop_header886:                             ; preds = %polly.loop_header880, %polly.loop_header886
  %polly.indvar889 = phi i64 [ %polly.indvar_next890, %polly.loop_header886 ], [ 0, %polly.loop_header880 ]
  %341 = add nuw nsw i64 %polly.indvar889, %323
  %342 = trunc i64 %341 to i32
  %343 = mul i32 %342, %326
  %344 = add i32 %343, 3
  %345 = urem i32 %344, 1200
  %p_conv31.i = sitofp i32 %345 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %346 = shl i64 %341, 3
  %347 = add nuw nsw i64 %346, %327
  %scevgep892 = getelementptr i8, i8* %call, i64 %347
  %scevgep892893 = bitcast i8* %scevgep892 to double*
  store double %p_div33.i, double* %scevgep892893, align 8, !alias.scope !112, !noalias !114
  %polly.indvar_next890 = add nuw nsw i64 %polly.indvar889, 1
  %exitcond1205.not = icmp eq i64 %polly.indvar889, %324
  br i1 %exitcond1205.not, label %polly.loop_exit888, label %polly.loop_header886, !llvm.loop !118

polly.loop_header895:                             ; preds = %polly.loop_exit876, %polly.loop_exit903
  %indvars.iv1196 = phi i64 [ %indvars.iv.next1197, %polly.loop_exit903 ], [ 0, %polly.loop_exit876 ]
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_exit903 ], [ 0, %polly.loop_exit876 ]
  %smin1198 = call i64 @llvm.smin.i64(i64 %indvars.iv1196, i64 -1168)
  %348 = shl nsw i64 %polly.indvar898, 5
  %349 = add nsw i64 %smin1198, 1199
  br label %polly.loop_header901

polly.loop_exit903:                               ; preds = %polly.loop_exit909
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %indvars.iv.next1197 = add nsw i64 %indvars.iv1196, -32
  %exitcond1201.not = icmp eq i64 %polly.indvar_next899, 38
  br i1 %exitcond1201.not, label %polly.loop_header921, label %polly.loop_header895

polly.loop_header901:                             ; preds = %polly.loop_exit909, %polly.loop_header895
  %indvars.iv1192 = phi i64 [ %indvars.iv.next1193, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %polly.indvar904 = phi i64 [ %polly.indvar_next905, %polly.loop_exit909 ], [ 0, %polly.loop_header895 ]
  %350 = mul nsw i64 %polly.indvar904, -32
  %smin1260 = call i64 @llvm.smin.i64(i64 %350, i64 -968)
  %351 = add nsw i64 %smin1260, 1000
  %smin1194 = call i64 @llvm.smin.i64(i64 %indvars.iv1192, i64 -968)
  %352 = shl nsw i64 %polly.indvar904, 5
  %353 = add nsw i64 %smin1194, 999
  br label %polly.loop_header907

polly.loop_exit909:                               ; preds = %polly.loop_exit915
  %polly.indvar_next905 = add nuw nsw i64 %polly.indvar904, 1
  %indvars.iv.next1193 = add nsw i64 %indvars.iv1192, -32
  %exitcond1200.not = icmp eq i64 %polly.indvar_next905, 32
  br i1 %exitcond1200.not, label %polly.loop_exit903, label %polly.loop_header901

polly.loop_header907:                             ; preds = %polly.loop_exit915, %polly.loop_header901
  %polly.indvar910 = phi i64 [ 0, %polly.loop_header901 ], [ %polly.indvar_next911, %polly.loop_exit915 ]
  %354 = add nuw nsw i64 %polly.indvar910, %348
  %355 = trunc i64 %354 to i32
  %356 = mul nuw nsw i64 %354, 8000
  %min.iters.check1261 = icmp eq i64 %351, 0
  br i1 %min.iters.check1261, label %polly.loop_header913, label %vector.ph1262

vector.ph1262:                                    ; preds = %polly.loop_header907
  %broadcast.splatinsert1271 = insertelement <4 x i64> poison, i64 %352, i32 0
  %broadcast.splat1272 = shufflevector <4 x i64> %broadcast.splatinsert1271, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1273 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1274 = shufflevector <4 x i32> %broadcast.splatinsert1273, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1262
  %index1265 = phi i64 [ 0, %vector.ph1262 ], [ %index.next1266, %vector.body1259 ]
  %vec.ind1269 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1262 ], [ %vec.ind.next1270, %vector.body1259 ]
  %357 = add nuw nsw <4 x i64> %vec.ind1269, %broadcast.splat1272
  %358 = trunc <4 x i64> %357 to <4 x i32>
  %359 = mul <4 x i32> %broadcast.splat1274, %358
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
  %index.next1266 = add i64 %index1265, 4
  %vec.ind.next1270 = add <4 x i64> %vec.ind1269, <i64 4, i64 4, i64 4, i64 4>
  %369 = icmp eq i64 %index.next1266, %351
  br i1 %369, label %polly.loop_exit915, label %vector.body1259, !llvm.loop !120

polly.loop_exit915:                               ; preds = %vector.body1259, %polly.loop_header913
  %polly.indvar_next911 = add nuw nsw i64 %polly.indvar910, 1
  %exitcond1199.not = icmp eq i64 %polly.indvar910, %349
  br i1 %exitcond1199.not, label %polly.loop_exit909, label %polly.loop_header907

polly.loop_header913:                             ; preds = %polly.loop_header907, %polly.loop_header913
  %polly.indvar916 = phi i64 [ %polly.indvar_next917, %polly.loop_header913 ], [ 0, %polly.loop_header907 ]
  %370 = add nuw nsw i64 %polly.indvar916, %352
  %371 = trunc i64 %370 to i32
  %372 = mul i32 %371, %355
  %373 = add i32 %372, 2
  %374 = urem i32 %373, 1000
  %p_conv10.i = sitofp i32 %374 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %375 = shl i64 %370, 3
  %376 = add nuw nsw i64 %375, %356
  %scevgep919 = getelementptr i8, i8* %call2, i64 %376
  %scevgep919920 = bitcast i8* %scevgep919 to double*
  store double %p_div12.i, double* %scevgep919920, align 8, !alias.scope !116, !noalias !119
  %polly.indvar_next917 = add nuw nsw i64 %polly.indvar916, 1
  %exitcond1195.not = icmp eq i64 %polly.indvar916, %353
  br i1 %exitcond1195.not, label %polly.loop_exit915, label %polly.loop_header913, !llvm.loop !121

polly.loop_header921:                             ; preds = %polly.loop_exit903, %polly.loop_exit929
  %indvars.iv1186 = phi i64 [ %indvars.iv.next1187, %polly.loop_exit929 ], [ 0, %polly.loop_exit903 ]
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_exit929 ], [ 0, %polly.loop_exit903 ]
  %smin1188 = call i64 @llvm.smin.i64(i64 %indvars.iv1186, i64 -1168)
  %377 = shl nsw i64 %polly.indvar924, 5
  %378 = add nsw i64 %smin1188, 1199
  br label %polly.loop_header927

polly.loop_exit929:                               ; preds = %polly.loop_exit935
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %indvars.iv.next1187 = add nsw i64 %indvars.iv1186, -32
  %exitcond1191.not = icmp eq i64 %polly.indvar_next925, 38
  br i1 %exitcond1191.not, label %init_array.exit, label %polly.loop_header921

polly.loop_header927:                             ; preds = %polly.loop_exit935, %polly.loop_header921
  %indvars.iv1182 = phi i64 [ %indvars.iv.next1183, %polly.loop_exit935 ], [ 0, %polly.loop_header921 ]
  %polly.indvar930 = phi i64 [ %polly.indvar_next931, %polly.loop_exit935 ], [ 0, %polly.loop_header921 ]
  %379 = mul nsw i64 %polly.indvar930, -32
  %smin1278 = call i64 @llvm.smin.i64(i64 %379, i64 -968)
  %380 = add nsw i64 %smin1278, 1000
  %smin1184 = call i64 @llvm.smin.i64(i64 %indvars.iv1182, i64 -968)
  %381 = shl nsw i64 %polly.indvar930, 5
  %382 = add nsw i64 %smin1184, 999
  br label %polly.loop_header933

polly.loop_exit935:                               ; preds = %polly.loop_exit941
  %polly.indvar_next931 = add nuw nsw i64 %polly.indvar930, 1
  %indvars.iv.next1183 = add nsw i64 %indvars.iv1182, -32
  %exitcond1190.not = icmp eq i64 %polly.indvar_next931, 32
  br i1 %exitcond1190.not, label %polly.loop_exit929, label %polly.loop_header927

polly.loop_header933:                             ; preds = %polly.loop_exit941, %polly.loop_header927
  %polly.indvar936 = phi i64 [ 0, %polly.loop_header927 ], [ %polly.indvar_next937, %polly.loop_exit941 ]
  %383 = add nuw nsw i64 %polly.indvar936, %377
  %384 = trunc i64 %383 to i32
  %385 = mul nuw nsw i64 %383, 8000
  %min.iters.check1279 = icmp eq i64 %380, 0
  br i1 %min.iters.check1279, label %polly.loop_header939, label %vector.ph1280

vector.ph1280:                                    ; preds = %polly.loop_header933
  %broadcast.splatinsert1289 = insertelement <4 x i64> poison, i64 %381, i32 0
  %broadcast.splat1290 = shufflevector <4 x i64> %broadcast.splatinsert1289, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1291 = insertelement <4 x i32> poison, i32 %384, i32 0
  %broadcast.splat1292 = shufflevector <4 x i32> %broadcast.splatinsert1291, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1277 ]
  %vec.ind1287 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1280 ], [ %vec.ind.next1288, %vector.body1277 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1287, %broadcast.splat1290
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1292, %387
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
  %index.next1284 = add i64 %index1283, 4
  %vec.ind.next1288 = add <4 x i64> %vec.ind1287, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1284, %380
  br i1 %398, label %polly.loop_exit941, label %vector.body1277, !llvm.loop !123

polly.loop_exit941:                               ; preds = %vector.body1277, %polly.loop_header939
  %polly.indvar_next937 = add nuw nsw i64 %polly.indvar936, 1
  %exitcond1189.not = icmp eq i64 %polly.indvar936, %378
  br i1 %exitcond1189.not, label %polly.loop_exit935, label %polly.loop_header933

polly.loop_header939:                             ; preds = %polly.loop_header933, %polly.loop_header939
  %polly.indvar942 = phi i64 [ %polly.indvar_next943, %polly.loop_header939 ], [ 0, %polly.loop_header933 ]
  %399 = add nuw nsw i64 %polly.indvar942, %381
  %400 = trunc i64 %399 to i32
  %401 = mul i32 %400, %384
  %402 = add i32 %401, 1
  %403 = urem i32 %402, 1200
  %p_conv.i = sitofp i32 %403 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %404 = shl i64 %399, 3
  %405 = add nuw nsw i64 %404, %385
  %scevgep946 = getelementptr i8, i8* %call1, i64 %405
  %scevgep946947 = bitcast i8* %scevgep946 to double*
  store double %p_div.i, double* %scevgep946947, align 8, !alias.scope !115, !noalias !122
  %polly.indvar_next943 = add nuw nsw i64 %polly.indvar942, 1
  %exitcond1185.not = icmp eq i64 %polly.indvar942, %382
  br i1 %exitcond1185.not, label %polly.loop_exit941, label %polly.loop_header939, !llvm.loop !124
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
