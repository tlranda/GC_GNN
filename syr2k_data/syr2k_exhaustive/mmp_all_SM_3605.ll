; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3605.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3605.c"
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
  %scevgep1224 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1223 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1222 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1221 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1221, %scevgep1224
  %bound1 = icmp ult i8* %scevgep1223, %scevgep1222
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
  br i1 %exitcond18.not.i, label %vector.ph1228, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1228:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1235 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1236 = shufflevector <4 x i64> %broadcast.splatinsert1235, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %vector.ph1228
  %index1229 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1230, %vector.body1227 ]
  %vec.ind1233 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1228 ], [ %vec.ind.next1234, %vector.body1227 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1233, %broadcast.splat1236
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv7.i, i64 %index1229
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1230 = add i64 %index1229, 4
  %vec.ind.next1234 = add <4 x i64> %vec.ind1233, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1230, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1227, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1227
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1228, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit911
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start514, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1291 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1291, label %for.body3.i46.preheader1368, label %vector.ph1292

vector.ph1292:                                    ; preds = %for.body3.i46.preheader
  %n.vec1294 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1292
  %index1295 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1296, %vector.body1290 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i, i64 %index1295
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1296 = add i64 %index1295, 4
  %46 = icmp eq i64 %index.next1296, %n.vec1294
  br i1 %46, label %middle.block1288, label %vector.body1290, !llvm.loop !18

middle.block1288:                                 ; preds = %vector.body1290
  %cmp.n1298 = icmp eq i64 %indvars.iv21.i, %n.vec1294
  br i1 %cmp.n1298, label %for.inc6.i, label %for.body3.i46.preheader1368

for.body3.i46.preheader1368:                      ; preds = %for.body3.i46.preheader, %middle.block1288
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1294, %middle.block1288 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1368, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1368 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1288, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

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
  %min.iters.check1314 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1314, label %for.body3.i60.preheader1366, label %vector.ph1315

vector.ph1315:                                    ; preds = %for.body3.i60.preheader
  %n.vec1317 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %vector.ph1315
  %index1318 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1319, %vector.body1313 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i52, i64 %index1318
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1322, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1319 = add i64 %index1318, 4
  %57 = icmp eq i64 %index.next1319, %n.vec1317
  br i1 %57, label %middle.block1311, label %vector.body1313, !llvm.loop !59

middle.block1311:                                 ; preds = %vector.body1313
  %cmp.n1321 = icmp eq i64 %indvars.iv21.i52, %n.vec1317
  br i1 %cmp.n1321, label %for.inc6.i63, label %for.body3.i60.preheader1366

for.body3.i60.preheader1366:                      ; preds = %for.body3.i60.preheader, %middle.block1311
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1317, %middle.block1311 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1366, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1366 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1311, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

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
  %min.iters.check1340 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1340, label %for.body3.i99.preheader1364, label %vector.ph1341

vector.ph1341:                                    ; preds = %for.body3.i99.preheader
  %n.vec1343 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %vector.ph1341
  %index1344 = phi i64 [ 0, %vector.ph1341 ], [ %index.next1345, %vector.body1339 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i91, i64 %index1344
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1348 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1348, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1345 = add i64 %index1344, 4
  %68 = icmp eq i64 %index.next1345, %n.vec1343
  br i1 %68, label %middle.block1337, label %vector.body1339, !llvm.loop !61

middle.block1337:                                 ; preds = %vector.body1339
  %cmp.n1347 = icmp eq i64 %indvars.iv21.i91, %n.vec1343
  br i1 %cmp.n1347, label %for.inc6.i102, label %for.body3.i99.preheader1364

for.body3.i99.preheader1364:                      ; preds = %for.body3.i99.preheader, %middle.block1337
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1343, %middle.block1337 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1364, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1364 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1337, %for.cond1.preheader.i93
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call876, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %indvar1352 = phi i64 [ %indvar.next1353, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1352, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1354 = icmp ult i64 %88, 4
  br i1 %min.iters.check1354, label %polly.loop_header191.preheader, label %vector.ph1355

vector.ph1355:                                    ; preds = %polly.loop_header
  %n.vec1357 = and i64 %88, -4
  br label %vector.body1351

vector.body1351:                                  ; preds = %vector.body1351, %vector.ph1355
  %index1358 = phi i64 [ 0, %vector.ph1355 ], [ %index.next1359, %vector.body1351 ]
  %90 = shl nuw nsw i64 %index1358, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1362 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1362, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1359 = add i64 %index1358, 4
  %95 = icmp eq i64 %index.next1359, %n.vec1357
  br i1 %95, label %middle.block1349, label %vector.body1351, !llvm.loop !73

middle.block1349:                                 ; preds = %vector.body1351
  %cmp.n1361 = icmp eq i64 %88, %n.vec1357
  br i1 %cmp.n1361, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1349
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1357, %middle.block1349 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1349
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1353 = add i64 %indvar1352, 1
  br i1 %exitcond1121.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1120.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 100
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond1119.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1110 = phi i64 [ %indvars.iv.next1111, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv1105 = phi i64 [ %indvars.iv.next1106, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 79, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %98 = lshr i64 %polly.indvar208, 2
  %99 = add nuw i64 %polly.indvar208, %98
  %100 = mul nuw nsw i64 %99, 80
  %101 = sub i64 %indvars.iv1105, %100
  %102 = add i64 %indvars.iv1110, %100
  %103 = add i64 %indvars.iv, %100
  %104 = mul nuw nsw i64 %polly.indvar208, 5
  %105 = mul nsw i64 %polly.indvar208, -100
  %106 = mul nuw nsw i64 %polly.indvar208, 100
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit263
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -100
  %indvars.iv.next1106 = add nuw nsw i64 %indvars.iv1105, 100
  %indvars.iv.next1111 = add nsw i64 %indvars.iv1110, -100
  %exitcond1118.not = icmp eq i64 %polly.indvar_next209, 12
  br i1 %exitcond1118.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit263, %polly.loop_header205
  %indvars.iv1112 = phi i64 [ %indvars.iv.next1113, %polly.loop_exit263 ], [ %102, %polly.loop_header205 ]
  %indvars.iv1107 = phi i64 [ %indvars.iv.next1108, %polly.loop_exit263 ], [ %101, %polly.loop_header205 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit263 ], [ %103, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit263 ], [ %99, %polly.loop_header205 ]
  %smax1109 = call i64 @llvm.smax.i64(i64 %indvars.iv1107, i64 0)
  %107 = add i64 %smax1109, %indvars.iv1112
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1100, i64 0)
  %108 = shl nsw i64 %polly.indvar214, 2
  %.not.not = icmp ugt i64 %108, %104
  %109 = mul nuw nsw i64 %polly.indvar214, 80
  %110 = add nsw i64 %109, %105
  %111 = icmp sgt i64 %110, 100
  %112 = select i1 %111, i64 %110, i64 100
  %113 = add nsw i64 %110, 79
  %polly.loop_guard.not = icmp sgt i64 %112, %113
  br i1 %.not.not, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.merge.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.merge.us ], [ 0, %polly.loop_header211 ]
  %114 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 1200
  br label %polly.loop_header223.us

polly.loop_header223.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header223.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.loop_header223.us ], [ 0, %polly.loop_header217.us ]
  %115 = add nuw nsw i64 %polly.indvar226.us, %106
  %polly.access.mul.call1230.us = mul nuw nsw i64 %115, 1000
  %polly.access.add.call1231.us = add nuw nsw i64 %polly.access.mul.call1230.us, %114
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar226.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next227.us, 100
  br i1 %exitcond1103.not, label %polly.loop_exit225.us, label %polly.loop_header223.us

polly.loop_exit225.us:                            ; preds = %polly.loop_header223.us
  br i1 %polly.loop_guard.not, label %polly.merge.us, label %polly.loop_header233.us

polly.loop_header233.us:                          ; preds = %polly.loop_exit225.us, %polly.loop_header233.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header233.us ], [ %112, %polly.loop_exit225.us ]
  %116 = add nuw nsw i64 %polly.indvar236.us, %106
  %polly.access.mul.call1240.us = mul nsw i64 %116, 1000
  %polly.access.add.call1241.us = add nuw nsw i64 %polly.access.mul.call1240.us, %114
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1244.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %polly.loop_cond238.not.not.us = icmp slt i64 %polly.indvar236.us, %113
  br i1 %polly.loop_cond238.not.not.us, label %polly.loop_header233.us, label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.loop_header233.us, %polly.loop_exit225.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next221.us, 100
  br i1 %exitcond1104.not, label %polly.loop_header261.preheader, label %polly.loop_header217.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  %polly.loop_guard250 = icmp sgt i64 %110, -80
  br i1 %polly.loop_guard250, label %polly.loop_header217.us946, label %polly.loop_header261.preheader

polly.loop_header217.us946:                       ; preds = %polly.loop_header211.split, %polly.merge.loopexit932.us992
  %polly.indvar220.us947 = phi i64 [ %polly.indvar_next221.us984, %polly.merge.loopexit932.us992 ], [ 0, %polly.loop_header211.split ]
  %117 = add nuw nsw i64 %polly.indvar220.us947, %97
  %polly.access.mul.Packed_MemRef_call1258.us991 = mul nuw nsw i64 %polly.indvar220.us947, 1200
  br label %polly.loop_header247.us949

polly.loop_header247.us949:                       ; preds = %polly.loop_header217.us946, %polly.loop_header247.us949
  %polly.indvar251.us950 = phi i64 [ %polly.indvar_next252.us957, %polly.loop_header247.us949 ], [ 0, %polly.loop_header217.us946 ]
  %118 = add nuw nsw i64 %polly.indvar251.us950, %106
  %polly.access.mul.call1255.us951 = mul nuw nsw i64 %118, 1000
  %polly.access.add.call1256.us952 = add nuw nsw i64 %117, %polly.access.mul.call1255.us951
  %polly.access.call1257.us953 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1256.us952
  %polly.access.call1257.load.us954 = load double, double* %polly.access.call1257.us953, align 8, !alias.scope !70, !noalias !76
  %polly.access.add.Packed_MemRef_call1259.us955 = add nuw nsw i64 %polly.indvar251.us950, %polly.access.mul.Packed_MemRef_call1258.us991
  %polly.access.Packed_MemRef_call1260.us956 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259.us955
  store double %polly.access.call1257.load.us954, double* %polly.access.Packed_MemRef_call1260.us956, align 8
  %polly.indvar_next252.us957 = add nuw nsw i64 %polly.indvar251.us950, 1
  %exitcond.not = icmp eq i64 %polly.indvar251.us950, %smax
  br i1 %exitcond.not, label %polly.merge.loopexit932.us992, label %polly.loop_header247.us949

polly.merge.loopexit932.us992:                    ; preds = %polly.loop_header247.us949
  %polly.indvar_next221.us984 = add nuw nsw i64 %polly.indvar220.us947, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar_next221.us984, 100
  br i1 %exitcond1102.not, label %polly.loop_header261.preheader, label %polly.loop_header217.us946

polly.loop_exit263:                               ; preds = %polly.loop_exit270.loopexit.us, %polly.loop_header261.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %polly.loop_cond216 = icmp ult i64 %polly.indvar214, 14
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 80
  %indvars.iv.next1108 = add i64 %indvars.iv1107, -80
  %indvars.iv.next1113 = add i64 %indvars.iv1112, 80
  br i1 %polly.loop_cond216, label %polly.loop_header211, label %polly.loop_exit213

polly.loop_header261.preheader:                   ; preds = %polly.merge.loopexit932.us992, %polly.merge.us, %polly.loop_header211.split
  %119 = sub nsw i64 %106, %109
  %120 = icmp sgt i64 %119, 0
  %121 = select i1 %120, i64 %119, i64 0
  %polly.loop_guard271 = icmp slt i64 %121, 80
  br i1 %polly.loop_guard271, label %polly.loop_header261.us, label %polly.loop_exit263

polly.loop_header261.us:                          ; preds = %polly.loop_header261.preheader, %polly.loop_exit270.loopexit.us
  %polly.indvar264.us = phi i64 [ %polly.indvar_next265.us, %polly.loop_exit270.loopexit.us ], [ 0, %polly.loop_header261.preheader ]
  %122 = add nuw nsw i64 %polly.indvar264.us, %97
  %polly.access.mul.Packed_MemRef_call1283.us = mul nuw nsw i64 %polly.indvar264.us, 1200
  %123 = shl i64 %122, 3
  br label %polly.loop_header268.us

polly.loop_header268.us:                          ; preds = %polly.loop_header261.us, %polly.loop_exit278.us
  %indvars.iv1114 = phi i64 [ %107, %polly.loop_header261.us ], [ %indvars.iv.next1115, %polly.loop_exit278.us ]
  %polly.indvar272.us = phi i64 [ %121, %polly.loop_header261.us ], [ %polly.indvar_next273.us, %polly.loop_exit278.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1114, i64 99)
  %124 = add nuw i64 %polly.indvar272.us, %109
  %125 = add i64 %124, %105
  %polly.loop_guard279.us1210 = icmp sgt i64 %125, -1
  br i1 %polly.loop_guard279.us1210, label %polly.loop_header276.preheader.us, label %polly.loop_exit278.us

polly.loop_header276.us:                          ; preds = %polly.loop_header276.preheader.us, %polly.loop_header276.us
  %polly.indvar280.us = phi i64 [ %polly.indvar_next281.us, %polly.loop_header276.us ], [ 0, %polly.loop_header276.preheader.us ]
  %126 = add nuw nsw i64 %polly.indvar280.us, %106
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar280.us, %polly.access.mul.Packed_MemRef_call1283.us
  %polly.access.Packed_MemRef_call1285.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call1285.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_289.us, %_p_scalar_286.us
  %127 = mul nuw nsw i64 %126, 8000
  %128 = add nuw nsw i64 %127, %123
  %scevgep290.us = getelementptr i8, i8* %call2, i64 %128
  %scevgep290291.us = bitcast i8* %scevgep290.us to double*
  %_p_scalar_292.us = load double, double* %scevgep290291.us, align 8, !alias.scope !71, !noalias !77
  %p_mul37.i114.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %129 = shl i64 %126, 3
  %130 = add i64 %129, %133
  %scevgep297.us = getelementptr i8, i8* %call, i64 %130
  %scevgep297298.us = bitcast i8* %scevgep297.us to double*
  %_p_scalar_299.us = load double, double* %scevgep297298.us, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_299.us
  store double %p_add42.i118.us, double* %scevgep297298.us, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next281.us = add nuw nsw i64 %polly.indvar280.us, 1
  %exitcond1116.not = icmp eq i64 %polly.indvar280.us, %smin
  br i1 %exitcond1116.not, label %polly.loop_exit278.us, label %polly.loop_header276.us

polly.loop_exit278.us:                            ; preds = %polly.loop_header276.us, %polly.loop_header268.us
  %polly.indvar_next273.us = add nuw nsw i64 %polly.indvar272.us, 1
  %polly.loop_cond274.us = icmp ult i64 %polly.indvar272.us, 79
  %indvars.iv.next1115 = add i64 %indvars.iv1114, 1
  br i1 %polly.loop_cond274.us, label %polly.loop_header268.us, label %polly.loop_exit270.loopexit.us

polly.loop_header276.preheader.us:                ; preds = %polly.loop_header268.us
  %131 = mul i64 %124, 8000
  %132 = add i64 %131, %123
  %scevgep287.us = getelementptr i8, i8* %call2, i64 %132
  %scevgep287288.us = bitcast i8* %scevgep287.us to double*
  %_p_scalar_289.us = load double, double* %scevgep287288.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1294.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1283.us, %125
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %133 = mul i64 %124, 9600
  br label %polly.loop_header276.us

polly.loop_exit270.loopexit.us:                   ; preds = %polly.loop_exit278.us
  %polly.indvar_next265.us = add nuw nsw i64 %polly.indvar264.us, 1
  %exitcond1117.not = icmp eq i64 %polly.indvar_next265.us, 100
  br i1 %exitcond1117.not, label %polly.loop_exit263, label %polly.loop_header261.us

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header388

polly.exiting303:                                 ; preds = %polly.loop_exit412
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start302
  %indvar1326 = phi i64 [ %indvar.next1327, %polly.loop_exit396 ], [ 0, %polly.start302 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start302 ]
  %134 = add i64 %indvar1326, 1
  %135 = mul nuw nsw i64 %polly.indvar391, 9600
  %scevgep400 = getelementptr i8, i8* %call, i64 %135
  %min.iters.check1328 = icmp ult i64 %134, 4
  br i1 %min.iters.check1328, label %polly.loop_header394.preheader, label %vector.ph1329

vector.ph1329:                                    ; preds = %polly.loop_header388
  %n.vec1331 = and i64 %134, -4
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1329
  %index1332 = phi i64 [ 0, %vector.ph1329 ], [ %index.next1333, %vector.body1325 ]
  %136 = shl nuw nsw i64 %index1332, 3
  %137 = getelementptr i8, i8* %scevgep400, i64 %136
  %138 = bitcast i8* %137 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %138, align 8, !alias.scope !78, !noalias !80
  %139 = fmul fast <4 x double> %wide.load1336, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %140 = bitcast i8* %137 to <4 x double>*
  store <4 x double> %139, <4 x double>* %140, align 8, !alias.scope !78, !noalias !80
  %index.next1333 = add i64 %index1332, 4
  %141 = icmp eq i64 %index.next1333, %n.vec1331
  br i1 %141, label %middle.block1323, label %vector.body1325, !llvm.loop !84

middle.block1323:                                 ; preds = %vector.body1325
  %cmp.n1335 = icmp eq i64 %134, %n.vec1331
  br i1 %cmp.n1335, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1323
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1331, %middle.block1323 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1323
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar_next392, 1200
  %indvar.next1327 = add i64 %indvar1326, 1
  br i1 %exitcond1148.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %142 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %142
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1147.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !85

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %143 = mul nuw nsw i64 %polly.indvar407, 100
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_exit419
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1146.not = icmp eq i64 %polly.indvar_next408, 10
  br i1 %exitcond1146.not, label %polly.exiting303, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_exit419, %polly.loop_header404
  %indvars.iv1136 = phi i64 [ %indvars.iv.next1137, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %indvars.iv1131 = phi i64 [ %indvars.iv.next1132, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit419 ], [ 79, %polly.loop_header404 ]
  %polly.indvar413 = phi i64 [ %polly.indvar_next414, %polly.loop_exit419 ], [ 0, %polly.loop_header404 ]
  %144 = lshr i64 %polly.indvar413, 2
  %145 = add nuw i64 %polly.indvar413, %144
  %146 = mul nuw nsw i64 %145, 80
  %147 = sub i64 %indvars.iv1131, %146
  %148 = add i64 %indvars.iv1136, %146
  %149 = add i64 %indvars.iv1122, %146
  %150 = mul nuw nsw i64 %polly.indvar413, 5
  %151 = mul nsw i64 %polly.indvar413, -100
  %152 = mul nuw nsw i64 %polly.indvar413, 100
  br label %polly.loop_header417

polly.loop_exit419:                               ; preds = %polly.loop_exit475
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %indvars.iv.next1123 = add nsw i64 %indvars.iv1122, -100
  %indvars.iv.next1132 = add nuw nsw i64 %indvars.iv1131, 100
  %indvars.iv.next1137 = add nsw i64 %indvars.iv1136, -100
  %exitcond1145.not = icmp eq i64 %polly.indvar_next414, 12
  br i1 %exitcond1145.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header417:                             ; preds = %polly.loop_exit475, %polly.loop_header410
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit475 ], [ %148, %polly.loop_header410 ]
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %polly.loop_exit475 ], [ %147, %polly.loop_header410 ]
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit475 ], [ %149, %polly.loop_header410 ]
  %polly.indvar420 = phi i64 [ %polly.indvar_next421, %polly.loop_exit475 ], [ %145, %polly.loop_header410 ]
  %smax1135 = call i64 @llvm.smax.i64(i64 %indvars.iv1133, i64 0)
  %153 = add i64 %smax1135, %indvars.iv1138
  %smax1126 = call i64 @llvm.smax.i64(i64 %indvars.iv1124, i64 0)
  %154 = shl nsw i64 %polly.indvar420, 2
  %.not.not930 = icmp ugt i64 %154, %150
  %155 = mul nuw nsw i64 %polly.indvar420, 80
  %156 = add nsw i64 %155, %151
  %157 = icmp sgt i64 %156, 100
  %158 = select i1 %157, i64 %156, i64 100
  %159 = add nsw i64 %156, 79
  %polly.loop_guard447.not = icmp sgt i64 %158, %159
  br i1 %.not.not930, label %polly.loop_header423.us, label %polly.loop_header417.split

polly.loop_header423.us:                          ; preds = %polly.loop_header417, %polly.merge430.us
  %polly.indvar426.us = phi i64 [ %polly.indvar_next427.us, %polly.merge430.us ], [ 0, %polly.loop_header417 ]
  %160 = add nuw nsw i64 %polly.indvar426.us, %143
  %polly.access.mul.Packed_MemRef_call1305.us = mul nuw nsw i64 %polly.indvar426.us, 1200
  br label %polly.loop_header433.us

polly.loop_header433.us:                          ; preds = %polly.loop_header423.us, %polly.loop_header433.us
  %polly.indvar436.us = phi i64 [ %polly.indvar_next437.us, %polly.loop_header433.us ], [ 0, %polly.loop_header423.us ]
  %161 = add nuw nsw i64 %polly.indvar436.us, %152
  %polly.access.mul.call1440.us = mul nuw nsw i64 %161, 1000
  %polly.access.add.call1441.us = add nuw nsw i64 %polly.access.mul.call1440.us, %160
  %polly.access.call1442.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1441.us
  %polly.access.call1442.load.us = load double, double* %polly.access.call1442.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1305.us = add nuw nsw i64 %polly.indvar436.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us
  store double %polly.access.call1442.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next437.us = add nuw nsw i64 %polly.indvar436.us, 1
  %exitcond1129.not = icmp eq i64 %polly.indvar_next437.us, 100
  br i1 %exitcond1129.not, label %polly.loop_exit435.us, label %polly.loop_header433.us

polly.loop_exit435.us:                            ; preds = %polly.loop_header433.us
  br i1 %polly.loop_guard447.not, label %polly.merge430.us, label %polly.loop_header444.us

polly.loop_header444.us:                          ; preds = %polly.loop_exit435.us, %polly.loop_header444.us
  %polly.indvar448.us = phi i64 [ %polly.indvar_next449.us, %polly.loop_header444.us ], [ %158, %polly.loop_exit435.us ]
  %162 = add nuw nsw i64 %polly.indvar448.us, %152
  %polly.access.mul.call1452.us = mul nsw i64 %162, 1000
  %polly.access.add.call1453.us = add nuw nsw i64 %polly.access.mul.call1452.us, %160
  %polly.access.call1454.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1453.us
  %polly.access.call1454.load.us = load double, double* %polly.access.call1454.us, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1305456.us = add nuw nsw i64 %polly.indvar448.us, %polly.access.mul.Packed_MemRef_call1305.us
  %polly.access.Packed_MemRef_call1305457.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305456.us
  store double %polly.access.call1454.load.us, double* %polly.access.Packed_MemRef_call1305457.us, align 8
  %polly.indvar_next449.us = add nuw nsw i64 %polly.indvar448.us, 1
  %polly.loop_cond450.not.not.us = icmp slt i64 %polly.indvar448.us, %159
  br i1 %polly.loop_cond450.not.not.us, label %polly.loop_header444.us, label %polly.merge430.us

polly.merge430.us:                                ; preds = %polly.loop_header444.us, %polly.loop_exit435.us
  %polly.indvar_next427.us = add nuw nsw i64 %polly.indvar426.us, 1
  %exitcond1130.not = icmp eq i64 %polly.indvar_next427.us, 100
  br i1 %exitcond1130.not, label %polly.loop_header473.preheader, label %polly.loop_header423.us

polly.loop_header417.split:                       ; preds = %polly.loop_header417
  %polly.loop_guard462 = icmp sgt i64 %156, -80
  br i1 %polly.loop_guard462, label %polly.loop_header423.us993, label %polly.loop_header473.preheader

polly.loop_header423.us993:                       ; preds = %polly.loop_header417.split, %polly.merge430.loopexit933.us1039
  %polly.indvar426.us994 = phi i64 [ %polly.indvar_next427.us1031, %polly.merge430.loopexit933.us1039 ], [ 0, %polly.loop_header417.split ]
  %163 = add nuw nsw i64 %polly.indvar426.us994, %143
  %polly.access.mul.Packed_MemRef_call1305470.us1038 = mul nuw nsw i64 %polly.indvar426.us994, 1200
  br label %polly.loop_header459.us996

polly.loop_header459.us996:                       ; preds = %polly.loop_header423.us993, %polly.loop_header459.us996
  %polly.indvar463.us997 = phi i64 [ %polly.indvar_next464.us1004, %polly.loop_header459.us996 ], [ 0, %polly.loop_header423.us993 ]
  %164 = add nuw nsw i64 %polly.indvar463.us997, %152
  %polly.access.mul.call1467.us998 = mul nuw nsw i64 %164, 1000
  %polly.access.add.call1468.us999 = add nuw nsw i64 %163, %polly.access.mul.call1467.us998
  %polly.access.call1469.us1000 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1468.us999
  %polly.access.call1469.load.us1001 = load double, double* %polly.access.call1469.us1000, align 8, !alias.scope !81, !noalias !86
  %polly.access.add.Packed_MemRef_call1305471.us1002 = add nuw nsw i64 %polly.indvar463.us997, %polly.access.mul.Packed_MemRef_call1305470.us1038
  %polly.access.Packed_MemRef_call1305472.us1003 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305471.us1002
  store double %polly.access.call1469.load.us1001, double* %polly.access.Packed_MemRef_call1305472.us1003, align 8
  %polly.indvar_next464.us1004 = add nuw nsw i64 %polly.indvar463.us997, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar463.us997, %smax1126
  br i1 %exitcond1127.not, label %polly.merge430.loopexit933.us1039, label %polly.loop_header459.us996

polly.merge430.loopexit933.us1039:                ; preds = %polly.loop_header459.us996
  %polly.indvar_next427.us1031 = add nuw nsw i64 %polly.indvar426.us994, 1
  %exitcond1128.not = icmp eq i64 %polly.indvar_next427.us1031, 100
  br i1 %exitcond1128.not, label %polly.loop_header473.preheader, label %polly.loop_header423.us993

polly.loop_exit475:                               ; preds = %polly.loop_exit482.loopexit.us, %polly.loop_header473.preheader
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %polly.loop_cond422 = icmp ult i64 %polly.indvar420, 14
  %indvars.iv.next1125 = add i64 %indvars.iv1124, 80
  %indvars.iv.next1134 = add i64 %indvars.iv1133, -80
  %indvars.iv.next1139 = add i64 %indvars.iv1138, 80
  br i1 %polly.loop_cond422, label %polly.loop_header417, label %polly.loop_exit419

polly.loop_header473.preheader:                   ; preds = %polly.merge430.loopexit933.us1039, %polly.merge430.us, %polly.loop_header417.split
  %165 = sub nsw i64 %152, %155
  %166 = icmp sgt i64 %165, 0
  %167 = select i1 %166, i64 %165, i64 0
  %polly.loop_guard483 = icmp slt i64 %167, 80
  br i1 %polly.loop_guard483, label %polly.loop_header473.us, label %polly.loop_exit475

polly.loop_header473.us:                          ; preds = %polly.loop_header473.preheader, %polly.loop_exit482.loopexit.us
  %polly.indvar476.us = phi i64 [ %polly.indvar_next477.us, %polly.loop_exit482.loopexit.us ], [ 0, %polly.loop_header473.preheader ]
  %168 = add nuw nsw i64 %polly.indvar476.us, %143
  %polly.access.mul.Packed_MemRef_call1305495.us = mul nuw nsw i64 %polly.indvar476.us, 1200
  %169 = shl i64 %168, 3
  br label %polly.loop_header480.us

polly.loop_header480.us:                          ; preds = %polly.loop_header473.us, %polly.loop_exit490.us
  %indvars.iv1140 = phi i64 [ %153, %polly.loop_header473.us ], [ %indvars.iv.next1141, %polly.loop_exit490.us ]
  %polly.indvar484.us = phi i64 [ %167, %polly.loop_header473.us ], [ %polly.indvar_next485.us, %polly.loop_exit490.us ]
  %smin1142 = call i64 @llvm.smin.i64(i64 %indvars.iv1140, i64 99)
  %170 = add nuw i64 %polly.indvar484.us, %155
  %171 = add i64 %170, %151
  %polly.loop_guard491.us1211 = icmp sgt i64 %171, -1
  br i1 %polly.loop_guard491.us1211, label %polly.loop_header488.preheader.us, label %polly.loop_exit490.us

polly.loop_header488.us:                          ; preds = %polly.loop_header488.preheader.us, %polly.loop_header488.us
  %polly.indvar492.us = phi i64 [ %polly.indvar_next493.us, %polly.loop_header488.us ], [ 0, %polly.loop_header488.preheader.us ]
  %172 = add nuw nsw i64 %polly.indvar492.us, %152
  %polly.access.add.Packed_MemRef_call1305496.us = add nuw nsw i64 %polly.indvar492.us, %polly.access.mul.Packed_MemRef_call1305495.us
  %polly.access.Packed_MemRef_call1305497.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305496.us
  %_p_scalar_498.us = load double, double* %polly.access.Packed_MemRef_call1305497.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_501.us, %_p_scalar_498.us
  %173 = mul nuw nsw i64 %172, 8000
  %174 = add nuw nsw i64 %173, %169
  %scevgep502.us = getelementptr i8, i8* %call2, i64 %174
  %scevgep502503.us = bitcast i8* %scevgep502.us to double*
  %_p_scalar_504.us = load double, double* %scevgep502503.us, align 8, !alias.scope !82, !noalias !87
  %p_mul37.i75.us = fmul fast double %_p_scalar_508.us, %_p_scalar_504.us
  %175 = shl i64 %172, 3
  %176 = add i64 %175, %179
  %scevgep509.us = getelementptr i8, i8* %call, i64 %176
  %scevgep509510.us = bitcast i8* %scevgep509.us to double*
  %_p_scalar_511.us = load double, double* %scevgep509510.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_511.us
  store double %p_add42.i79.us, double* %scevgep509510.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next493.us = add nuw nsw i64 %polly.indvar492.us, 1
  %exitcond1143.not = icmp eq i64 %polly.indvar492.us, %smin1142
  br i1 %exitcond1143.not, label %polly.loop_exit490.us, label %polly.loop_header488.us

polly.loop_exit490.us:                            ; preds = %polly.loop_header488.us, %polly.loop_header480.us
  %polly.indvar_next485.us = add nuw nsw i64 %polly.indvar484.us, 1
  %polly.loop_cond486.us = icmp ult i64 %polly.indvar484.us, 79
  %indvars.iv.next1141 = add i64 %indvars.iv1140, 1
  br i1 %polly.loop_cond486.us, label %polly.loop_header480.us, label %polly.loop_exit482.loopexit.us

polly.loop_header488.preheader.us:                ; preds = %polly.loop_header480.us
  %177 = mul i64 %170, 8000
  %178 = add i64 %177, %169
  %scevgep499.us = getelementptr i8, i8* %call2, i64 %178
  %scevgep499500.us = bitcast i8* %scevgep499.us to double*
  %_p_scalar_501.us = load double, double* %scevgep499500.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1305506.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1305495.us, %171
  %polly.access.Packed_MemRef_call1305507.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305506.us
  %_p_scalar_508.us = load double, double* %polly.access.Packed_MemRef_call1305507.us, align 8
  %179 = mul i64 %170, 9600
  br label %polly.loop_header488.us

polly.loop_exit482.loopexit.us:                   ; preds = %polly.loop_exit490.us
  %polly.indvar_next477.us = add nuw nsw i64 %polly.indvar476.us, 1
  %exitcond1144.not = icmp eq i64 %polly.indvar_next477.us, 100
  br i1 %exitcond1144.not, label %polly.loop_exit475, label %polly.loop_header473.us

polly.start514:                                   ; preds = %init_array.exit
  %malloccall516 = tail call dereferenceable_or_null(960000) i8* @malloc(i64 960000) #6
  br label %polly.loop_header600

polly.exiting515:                                 ; preds = %polly.loop_exit624
  tail call void @free(i8* %malloccall516)
  br label %kernel_syr2k.exit

polly.loop_header600:                             ; preds = %polly.loop_exit608, %polly.start514
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit608 ], [ 0, %polly.start514 ]
  %polly.indvar603 = phi i64 [ %polly.indvar_next604, %polly.loop_exit608 ], [ 1, %polly.start514 ]
  %180 = add i64 %indvar, 1
  %181 = mul nuw nsw i64 %polly.indvar603, 9600
  %scevgep612 = getelementptr i8, i8* %call, i64 %181
  %min.iters.check1302 = icmp ult i64 %180, 4
  br i1 %min.iters.check1302, label %polly.loop_header606.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %polly.loop_header600
  %n.vec1305 = and i64 %180, -4
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1301 ]
  %182 = shl nuw nsw i64 %index1306, 3
  %183 = getelementptr i8, i8* %scevgep612, i64 %182
  %184 = bitcast i8* %183 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %184, align 8, !alias.scope !88, !noalias !90
  %185 = fmul fast <4 x double> %wide.load1310, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %186 = bitcast i8* %183 to <4 x double>*
  store <4 x double> %185, <4 x double>* %186, align 8, !alias.scope !88, !noalias !90
  %index.next1307 = add i64 %index1306, 4
  %187 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %187, label %middle.block1299, label %vector.body1301, !llvm.loop !94

middle.block1299:                                 ; preds = %vector.body1301
  %cmp.n1309 = icmp eq i64 %180, %n.vec1305
  br i1 %cmp.n1309, label %polly.loop_exit608, label %polly.loop_header606.preheader

polly.loop_header606.preheader:                   ; preds = %polly.loop_header600, %middle.block1299
  %polly.indvar609.ph = phi i64 [ 0, %polly.loop_header600 ], [ %n.vec1305, %middle.block1299 ]
  br label %polly.loop_header606

polly.loop_exit608:                               ; preds = %polly.loop_header606, %middle.block1299
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond1175.not = icmp eq i64 %polly.indvar_next604, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1175.not, label %polly.loop_header616.preheader, label %polly.loop_header600

polly.loop_header616.preheader:                   ; preds = %polly.loop_exit608
  %Packed_MemRef_call1517 = bitcast i8* %malloccall516 to double*
  br label %polly.loop_header616

polly.loop_header606:                             ; preds = %polly.loop_header606.preheader, %polly.loop_header606
  %polly.indvar609 = phi i64 [ %polly.indvar_next610, %polly.loop_header606 ], [ %polly.indvar609.ph, %polly.loop_header606.preheader ]
  %188 = shl nuw nsw i64 %polly.indvar609, 3
  %scevgep613 = getelementptr i8, i8* %scevgep612, i64 %188
  %scevgep613614 = bitcast i8* %scevgep613 to double*
  %_p_scalar_615 = load double, double* %scevgep613614, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_615, 1.200000e+00
  store double %p_mul.i, double* %scevgep613614, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next610 = add nuw nsw i64 %polly.indvar609, 1
  %exitcond1174.not = icmp eq i64 %polly.indvar_next610, %polly.indvar603
  br i1 %exitcond1174.not, label %polly.loop_exit608, label %polly.loop_header606, !llvm.loop !95

polly.loop_header616:                             ; preds = %polly.loop_header616.preheader, %polly.loop_exit624
  %polly.indvar619 = phi i64 [ %polly.indvar_next620, %polly.loop_exit624 ], [ 0, %polly.loop_header616.preheader ]
  %189 = mul nuw nsw i64 %polly.indvar619, 100
  br label %polly.loop_header622

polly.loop_exit624:                               ; preds = %polly.loop_exit631
  %polly.indvar_next620 = add nuw nsw i64 %polly.indvar619, 1
  %exitcond1173.not = icmp eq i64 %polly.indvar_next620, 10
  br i1 %exitcond1173.not, label %polly.exiting515, label %polly.loop_header616

polly.loop_header622:                             ; preds = %polly.loop_exit631, %polly.loop_header616
  %indvars.iv1163 = phi i64 [ %indvars.iv.next1164, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %indvars.iv1158 = phi i64 [ %indvars.iv.next1159, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %polly.loop_exit631 ], [ 79, %polly.loop_header616 ]
  %polly.indvar625 = phi i64 [ %polly.indvar_next626, %polly.loop_exit631 ], [ 0, %polly.loop_header616 ]
  %190 = lshr i64 %polly.indvar625, 2
  %191 = add nuw i64 %polly.indvar625, %190
  %192 = mul nuw nsw i64 %191, 80
  %193 = sub i64 %indvars.iv1158, %192
  %194 = add i64 %indvars.iv1163, %192
  %195 = add i64 %indvars.iv1149, %192
  %196 = mul nuw nsw i64 %polly.indvar625, 5
  %197 = mul nsw i64 %polly.indvar625, -100
  %198 = mul nuw nsw i64 %polly.indvar625, 100
  br label %polly.loop_header629

polly.loop_exit631:                               ; preds = %polly.loop_exit687
  %polly.indvar_next626 = add nuw nsw i64 %polly.indvar625, 1
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, -100
  %indvars.iv.next1159 = add nuw nsw i64 %indvars.iv1158, 100
  %indvars.iv.next1164 = add nsw i64 %indvars.iv1163, -100
  %exitcond1172.not = icmp eq i64 %polly.indvar_next626, 12
  br i1 %exitcond1172.not, label %polly.loop_exit624, label %polly.loop_header622

polly.loop_header629:                             ; preds = %polly.loop_exit687, %polly.loop_header622
  %indvars.iv1165 = phi i64 [ %indvars.iv.next1166, %polly.loop_exit687 ], [ %194, %polly.loop_header622 ]
  %indvars.iv1160 = phi i64 [ %indvars.iv.next1161, %polly.loop_exit687 ], [ %193, %polly.loop_header622 ]
  %indvars.iv1151 = phi i64 [ %indvars.iv.next1152, %polly.loop_exit687 ], [ %195, %polly.loop_header622 ]
  %polly.indvar632 = phi i64 [ %polly.indvar_next633, %polly.loop_exit687 ], [ %191, %polly.loop_header622 ]
  %smax1162 = call i64 @llvm.smax.i64(i64 %indvars.iv1160, i64 0)
  %199 = add i64 %smax1162, %indvars.iv1165
  %smax1153 = call i64 @llvm.smax.i64(i64 %indvars.iv1151, i64 0)
  %200 = shl nsw i64 %polly.indvar632, 2
  %.not.not931 = icmp ugt i64 %200, %196
  %201 = mul nuw nsw i64 %polly.indvar632, 80
  %202 = add nsw i64 %201, %197
  %203 = icmp sgt i64 %202, 100
  %204 = select i1 %203, i64 %202, i64 100
  %205 = add nsw i64 %202, 79
  %polly.loop_guard659.not = icmp sgt i64 %204, %205
  br i1 %.not.not931, label %polly.loop_header635.us, label %polly.loop_header629.split

polly.loop_header635.us:                          ; preds = %polly.loop_header629, %polly.merge642.us
  %polly.indvar638.us = phi i64 [ %polly.indvar_next639.us, %polly.merge642.us ], [ 0, %polly.loop_header629 ]
  %206 = add nuw nsw i64 %polly.indvar638.us, %189
  %polly.access.mul.Packed_MemRef_call1517.us = mul nuw nsw i64 %polly.indvar638.us, 1200
  br label %polly.loop_header645.us

polly.loop_header645.us:                          ; preds = %polly.loop_header635.us, %polly.loop_header645.us
  %polly.indvar648.us = phi i64 [ %polly.indvar_next649.us, %polly.loop_header645.us ], [ 0, %polly.loop_header635.us ]
  %207 = add nuw nsw i64 %polly.indvar648.us, %198
  %polly.access.mul.call1652.us = mul nuw nsw i64 %207, 1000
  %polly.access.add.call1653.us = add nuw nsw i64 %polly.access.mul.call1652.us, %206
  %polly.access.call1654.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1653.us
  %polly.access.call1654.load.us = load double, double* %polly.access.call1654.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1517.us = add nuw nsw i64 %polly.indvar648.us, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517.us
  store double %polly.access.call1654.load.us, double* %polly.access.Packed_MemRef_call1517.us, align 8
  %polly.indvar_next649.us = add nuw nsw i64 %polly.indvar648.us, 1
  %exitcond1156.not = icmp eq i64 %polly.indvar_next649.us, 100
  br i1 %exitcond1156.not, label %polly.loop_exit647.us, label %polly.loop_header645.us

polly.loop_exit647.us:                            ; preds = %polly.loop_header645.us
  br i1 %polly.loop_guard659.not, label %polly.merge642.us, label %polly.loop_header656.us

polly.loop_header656.us:                          ; preds = %polly.loop_exit647.us, %polly.loop_header656.us
  %polly.indvar660.us = phi i64 [ %polly.indvar_next661.us, %polly.loop_header656.us ], [ %204, %polly.loop_exit647.us ]
  %208 = add nuw nsw i64 %polly.indvar660.us, %198
  %polly.access.mul.call1664.us = mul nsw i64 %208, 1000
  %polly.access.add.call1665.us = add nuw nsw i64 %polly.access.mul.call1664.us, %206
  %polly.access.call1666.us = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1665.us
  %polly.access.call1666.load.us = load double, double* %polly.access.call1666.us, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1517668.us = add nuw nsw i64 %polly.indvar660.us, %polly.access.mul.Packed_MemRef_call1517.us
  %polly.access.Packed_MemRef_call1517669.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517668.us
  store double %polly.access.call1666.load.us, double* %polly.access.Packed_MemRef_call1517669.us, align 8
  %polly.indvar_next661.us = add nuw nsw i64 %polly.indvar660.us, 1
  %polly.loop_cond662.not.not.us = icmp slt i64 %polly.indvar660.us, %205
  br i1 %polly.loop_cond662.not.not.us, label %polly.loop_header656.us, label %polly.merge642.us

polly.merge642.us:                                ; preds = %polly.loop_header656.us, %polly.loop_exit647.us
  %polly.indvar_next639.us = add nuw nsw i64 %polly.indvar638.us, 1
  %exitcond1157.not = icmp eq i64 %polly.indvar_next639.us, 100
  br i1 %exitcond1157.not, label %polly.loop_header685.preheader, label %polly.loop_header635.us

polly.loop_header629.split:                       ; preds = %polly.loop_header629
  %polly.loop_guard674 = icmp sgt i64 %202, -80
  br i1 %polly.loop_guard674, label %polly.loop_header635.us1040, label %polly.loop_header685.preheader

polly.loop_header635.us1040:                      ; preds = %polly.loop_header629.split, %polly.merge642.loopexit934.us1086
  %polly.indvar638.us1041 = phi i64 [ %polly.indvar_next639.us1078, %polly.merge642.loopexit934.us1086 ], [ 0, %polly.loop_header629.split ]
  %209 = add nuw nsw i64 %polly.indvar638.us1041, %189
  %polly.access.mul.Packed_MemRef_call1517682.us1085 = mul nuw nsw i64 %polly.indvar638.us1041, 1200
  br label %polly.loop_header671.us1043

polly.loop_header671.us1043:                      ; preds = %polly.loop_header635.us1040, %polly.loop_header671.us1043
  %polly.indvar675.us1044 = phi i64 [ %polly.indvar_next676.us1051, %polly.loop_header671.us1043 ], [ 0, %polly.loop_header635.us1040 ]
  %210 = add nuw nsw i64 %polly.indvar675.us1044, %198
  %polly.access.mul.call1679.us1045 = mul nuw nsw i64 %210, 1000
  %polly.access.add.call1680.us1046 = add nuw nsw i64 %209, %polly.access.mul.call1679.us1045
  %polly.access.call1681.us1047 = getelementptr double, double* %polly.access.cast.call1728, i64 %polly.access.add.call1680.us1046
  %polly.access.call1681.load.us1048 = load double, double* %polly.access.call1681.us1047, align 8, !alias.scope !91, !noalias !96
  %polly.access.add.Packed_MemRef_call1517683.us1049 = add nuw nsw i64 %polly.indvar675.us1044, %polly.access.mul.Packed_MemRef_call1517682.us1085
  %polly.access.Packed_MemRef_call1517684.us1050 = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517683.us1049
  store double %polly.access.call1681.load.us1048, double* %polly.access.Packed_MemRef_call1517684.us1050, align 8
  %polly.indvar_next676.us1051 = add nuw nsw i64 %polly.indvar675.us1044, 1
  %exitcond1154.not = icmp eq i64 %polly.indvar675.us1044, %smax1153
  br i1 %exitcond1154.not, label %polly.merge642.loopexit934.us1086, label %polly.loop_header671.us1043

polly.merge642.loopexit934.us1086:                ; preds = %polly.loop_header671.us1043
  %polly.indvar_next639.us1078 = add nuw nsw i64 %polly.indvar638.us1041, 1
  %exitcond1155.not = icmp eq i64 %polly.indvar_next639.us1078, 100
  br i1 %exitcond1155.not, label %polly.loop_header685.preheader, label %polly.loop_header635.us1040

polly.loop_exit687:                               ; preds = %polly.loop_exit694.loopexit.us, %polly.loop_header685.preheader
  %polly.indvar_next633 = add nuw nsw i64 %polly.indvar632, 1
  %polly.loop_cond634 = icmp ult i64 %polly.indvar632, 14
  %indvars.iv.next1152 = add i64 %indvars.iv1151, 80
  %indvars.iv.next1161 = add i64 %indvars.iv1160, -80
  %indvars.iv.next1166 = add i64 %indvars.iv1165, 80
  br i1 %polly.loop_cond634, label %polly.loop_header629, label %polly.loop_exit631

polly.loop_header685.preheader:                   ; preds = %polly.merge642.loopexit934.us1086, %polly.merge642.us, %polly.loop_header629.split
  %211 = sub nsw i64 %198, %201
  %212 = icmp sgt i64 %211, 0
  %213 = select i1 %212, i64 %211, i64 0
  %polly.loop_guard695 = icmp slt i64 %213, 80
  br i1 %polly.loop_guard695, label %polly.loop_header685.us, label %polly.loop_exit687

polly.loop_header685.us:                          ; preds = %polly.loop_header685.preheader, %polly.loop_exit694.loopexit.us
  %polly.indvar688.us = phi i64 [ %polly.indvar_next689.us, %polly.loop_exit694.loopexit.us ], [ 0, %polly.loop_header685.preheader ]
  %214 = add nuw nsw i64 %polly.indvar688.us, %189
  %polly.access.mul.Packed_MemRef_call1517707.us = mul nuw nsw i64 %polly.indvar688.us, 1200
  %215 = shl i64 %214, 3
  br label %polly.loop_header692.us

polly.loop_header692.us:                          ; preds = %polly.loop_header685.us, %polly.loop_exit702.us
  %indvars.iv1167 = phi i64 [ %199, %polly.loop_header685.us ], [ %indvars.iv.next1168, %polly.loop_exit702.us ]
  %polly.indvar696.us = phi i64 [ %213, %polly.loop_header685.us ], [ %polly.indvar_next697.us, %polly.loop_exit702.us ]
  %smin1169 = call i64 @llvm.smin.i64(i64 %indvars.iv1167, i64 99)
  %216 = add nuw i64 %polly.indvar696.us, %201
  %217 = add i64 %216, %197
  %polly.loop_guard703.us1212 = icmp sgt i64 %217, -1
  br i1 %polly.loop_guard703.us1212, label %polly.loop_header700.preheader.us, label %polly.loop_exit702.us

polly.loop_header700.us:                          ; preds = %polly.loop_header700.preheader.us, %polly.loop_header700.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_header700.us ], [ 0, %polly.loop_header700.preheader.us ]
  %218 = add nuw nsw i64 %polly.indvar704.us, %198
  %polly.access.add.Packed_MemRef_call1517708.us = add nuw nsw i64 %polly.indvar704.us, %polly.access.mul.Packed_MemRef_call1517707.us
  %polly.access.Packed_MemRef_call1517709.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1517709.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_713.us, %_p_scalar_710.us
  %219 = mul nuw nsw i64 %218, 8000
  %220 = add nuw nsw i64 %219, %215
  %scevgep714.us = getelementptr i8, i8* %call2, i64 %220
  %scevgep714715.us = bitcast i8* %scevgep714.us to double*
  %_p_scalar_716.us = load double, double* %scevgep714715.us, align 8, !alias.scope !92, !noalias !97
  %p_mul37.i.us = fmul fast double %_p_scalar_720.us, %_p_scalar_716.us
  %221 = shl i64 %218, 3
  %222 = add i64 %221, %225
  %scevgep721.us = getelementptr i8, i8* %call, i64 %222
  %scevgep721722.us = bitcast i8* %scevgep721.us to double*
  %_p_scalar_723.us = load double, double* %scevgep721722.us, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_723.us
  store double %p_add42.i.us, double* %scevgep721722.us, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next705.us = add nuw nsw i64 %polly.indvar704.us, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar704.us, %smin1169
  br i1 %exitcond1170.not, label %polly.loop_exit702.us, label %polly.loop_header700.us

polly.loop_exit702.us:                            ; preds = %polly.loop_header700.us, %polly.loop_header692.us
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %polly.loop_cond698.us = icmp ult i64 %polly.indvar696.us, 79
  %indvars.iv.next1168 = add i64 %indvars.iv1167, 1
  br i1 %polly.loop_cond698.us, label %polly.loop_header692.us, label %polly.loop_exit694.loopexit.us

polly.loop_header700.preheader.us:                ; preds = %polly.loop_header692.us
  %223 = mul i64 %216, 8000
  %224 = add i64 %223, %215
  %scevgep711.us = getelementptr i8, i8* %call2, i64 %224
  %scevgep711712.us = bitcast i8* %scevgep711.us to double*
  %_p_scalar_713.us = load double, double* %scevgep711712.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1517718.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1517707.us, %217
  %polly.access.Packed_MemRef_call1517719.us = getelementptr double, double* %Packed_MemRef_call1517, i64 %polly.access.add.Packed_MemRef_call1517718.us
  %_p_scalar_720.us = load double, double* %polly.access.Packed_MemRef_call1517719.us, align 8
  %225 = mul i64 %216, 9600
  br label %polly.loop_header700.us

polly.loop_exit694.loopexit.us:                   ; preds = %polly.loop_exit702.us
  %polly.indvar_next689.us = add nuw nsw i64 %polly.indvar688.us, 1
  %exitcond1171.not = icmp eq i64 %polly.indvar_next689.us, 100
  br i1 %exitcond1171.not, label %polly.loop_exit687, label %polly.loop_header685.us

polly.loop_header850:                             ; preds = %entry, %polly.loop_exit858
  %indvars.iv1200 = phi i64 [ %indvars.iv.next1201, %polly.loop_exit858 ], [ 0, %entry ]
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %entry ]
  %smin1202 = call i64 @llvm.smin.i64(i64 %indvars.iv1200, i64 -1168)
  %226 = shl nsw i64 %polly.indvar853, 5
  %227 = add nsw i64 %smin1202, 1199
  br label %polly.loop_header856

polly.loop_exit858:                               ; preds = %polly.loop_exit864
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %indvars.iv.next1201 = add nsw i64 %indvars.iv1200, -32
  %exitcond1205.not = icmp eq i64 %polly.indvar_next854, 38
  br i1 %exitcond1205.not, label %polly.loop_header877, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_exit864, %polly.loop_header850
  %indvars.iv1196 = phi i64 [ %indvars.iv.next1197, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %polly.loop_header850 ]
  %228 = mul nsw i64 %polly.indvar859, -32
  %smin1240 = call i64 @llvm.smin.i64(i64 %228, i64 -1168)
  %229 = add nsw i64 %smin1240, 1200
  %smin1198 = call i64 @llvm.smin.i64(i64 %indvars.iv1196, i64 -1168)
  %230 = shl nsw i64 %polly.indvar859, 5
  %231 = add nsw i64 %smin1198, 1199
  br label %polly.loop_header862

polly.loop_exit864:                               ; preds = %polly.loop_exit870
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %indvars.iv.next1197 = add nsw i64 %indvars.iv1196, -32
  %exitcond1204.not = icmp eq i64 %polly.indvar_next860, 38
  br i1 %exitcond1204.not, label %polly.loop_exit858, label %polly.loop_header856

polly.loop_header862:                             ; preds = %polly.loop_exit870, %polly.loop_header856
  %polly.indvar865 = phi i64 [ 0, %polly.loop_header856 ], [ %polly.indvar_next866, %polly.loop_exit870 ]
  %232 = add nuw nsw i64 %polly.indvar865, %226
  %233 = trunc i64 %232 to i32
  %234 = mul nuw nsw i64 %232, 9600
  %min.iters.check = icmp eq i64 %229, 0
  br i1 %min.iters.check, label %polly.loop_header868, label %vector.ph1241

vector.ph1241:                                    ; preds = %polly.loop_header862
  %broadcast.splatinsert1248 = insertelement <4 x i64> poison, i64 %230, i32 0
  %broadcast.splat1249 = shufflevector <4 x i64> %broadcast.splatinsert1248, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %233, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1241
  %index1242 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1243, %vector.body1239 ]
  %vec.ind1246 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1241 ], [ %vec.ind.next1247, %vector.body1239 ]
  %235 = add nuw nsw <4 x i64> %vec.ind1246, %broadcast.splat1249
  %236 = trunc <4 x i64> %235 to <4 x i32>
  %237 = mul <4 x i32> %broadcast.splat1251, %236
  %238 = add <4 x i32> %237, <i32 3, i32 3, i32 3, i32 3>
  %239 = urem <4 x i32> %238, <i32 1200, i32 1200, i32 1200, i32 1200>
  %240 = sitofp <4 x i32> %239 to <4 x double>
  %241 = fmul fast <4 x double> %240, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %242 = extractelement <4 x i64> %235, i32 0
  %243 = shl i64 %242, 3
  %244 = add nuw nsw i64 %243, %234
  %245 = getelementptr i8, i8* %call, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %241, <4 x double>* %246, align 8, !alias.scope !98, !noalias !100
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1247 = add <4 x i64> %vec.ind1246, <i64 4, i64 4, i64 4, i64 4>
  %247 = icmp eq i64 %index.next1243, %229
  br i1 %247, label %polly.loop_exit870, label %vector.body1239, !llvm.loop !103

polly.loop_exit870:                               ; preds = %vector.body1239, %polly.loop_header868
  %polly.indvar_next866 = add nuw nsw i64 %polly.indvar865, 1
  %exitcond1203.not = icmp eq i64 %polly.indvar865, %227
  br i1 %exitcond1203.not, label %polly.loop_exit864, label %polly.loop_header862

polly.loop_header868:                             ; preds = %polly.loop_header862, %polly.loop_header868
  %polly.indvar871 = phi i64 [ %polly.indvar_next872, %polly.loop_header868 ], [ 0, %polly.loop_header862 ]
  %248 = add nuw nsw i64 %polly.indvar871, %230
  %249 = trunc i64 %248 to i32
  %250 = mul i32 %249, %233
  %251 = add i32 %250, 3
  %252 = urem i32 %251, 1200
  %p_conv31.i = sitofp i32 %252 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %253 = shl i64 %248, 3
  %254 = add nuw nsw i64 %253, %234
  %scevgep874 = getelementptr i8, i8* %call, i64 %254
  %scevgep874875 = bitcast i8* %scevgep874 to double*
  store double %p_div33.i, double* %scevgep874875, align 8, !alias.scope !98, !noalias !100
  %polly.indvar_next872 = add nuw nsw i64 %polly.indvar871, 1
  %exitcond1199.not = icmp eq i64 %polly.indvar871, %231
  br i1 %exitcond1199.not, label %polly.loop_exit870, label %polly.loop_header868, !llvm.loop !104

polly.loop_header877:                             ; preds = %polly.loop_exit858, %polly.loop_exit885
  %indvars.iv1190 = phi i64 [ %indvars.iv.next1191, %polly.loop_exit885 ], [ 0, %polly.loop_exit858 ]
  %polly.indvar880 = phi i64 [ %polly.indvar_next881, %polly.loop_exit885 ], [ 0, %polly.loop_exit858 ]
  %smin1192 = call i64 @llvm.smin.i64(i64 %indvars.iv1190, i64 -1168)
  %255 = shl nsw i64 %polly.indvar880, 5
  %256 = add nsw i64 %smin1192, 1199
  br label %polly.loop_header883

polly.loop_exit885:                               ; preds = %polly.loop_exit891
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %indvars.iv.next1191 = add nsw i64 %indvars.iv1190, -32
  %exitcond1195.not = icmp eq i64 %polly.indvar_next881, 38
  br i1 %exitcond1195.not, label %polly.loop_header903, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_exit891, %polly.loop_header877
  %indvars.iv1186 = phi i64 [ %indvars.iv.next1187, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_header877 ]
  %257 = mul nsw i64 %polly.indvar886, -32
  %smin1255 = call i64 @llvm.smin.i64(i64 %257, i64 -968)
  %258 = add nsw i64 %smin1255, 1000
  %smin1188 = call i64 @llvm.smin.i64(i64 %indvars.iv1186, i64 -968)
  %259 = shl nsw i64 %polly.indvar886, 5
  %260 = add nsw i64 %smin1188, 999
  br label %polly.loop_header889

polly.loop_exit891:                               ; preds = %polly.loop_exit897
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %indvars.iv.next1187 = add nsw i64 %indvars.iv1186, -32
  %exitcond1194.not = icmp eq i64 %polly.indvar_next887, 32
  br i1 %exitcond1194.not, label %polly.loop_exit885, label %polly.loop_header883

polly.loop_header889:                             ; preds = %polly.loop_exit897, %polly.loop_header883
  %polly.indvar892 = phi i64 [ 0, %polly.loop_header883 ], [ %polly.indvar_next893, %polly.loop_exit897 ]
  %261 = add nuw nsw i64 %polly.indvar892, %255
  %262 = trunc i64 %261 to i32
  %263 = mul nuw nsw i64 %261, 8000
  %min.iters.check1256 = icmp eq i64 %258, 0
  br i1 %min.iters.check1256, label %polly.loop_header895, label %vector.ph1257

vector.ph1257:                                    ; preds = %polly.loop_header889
  %broadcast.splatinsert1266 = insertelement <4 x i64> poison, i64 %259, i32 0
  %broadcast.splat1267 = shufflevector <4 x i64> %broadcast.splatinsert1266, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %262, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1254 ]
  %vec.ind1264 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1257 ], [ %vec.ind.next1265, %vector.body1254 ]
  %264 = add nuw nsw <4 x i64> %vec.ind1264, %broadcast.splat1267
  %265 = trunc <4 x i64> %264 to <4 x i32>
  %266 = mul <4 x i32> %broadcast.splat1269, %265
  %267 = add <4 x i32> %266, <i32 2, i32 2, i32 2, i32 2>
  %268 = urem <4 x i32> %267, <i32 1000, i32 1000, i32 1000, i32 1000>
  %269 = sitofp <4 x i32> %268 to <4 x double>
  %270 = fmul fast <4 x double> %269, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %271 = extractelement <4 x i64> %264, i32 0
  %272 = shl i64 %271, 3
  %273 = add nuw nsw i64 %272, %263
  %274 = getelementptr i8, i8* %call2, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %270, <4 x double>* %275, align 8, !alias.scope !102, !noalias !105
  %index.next1261 = add i64 %index1260, 4
  %vec.ind.next1265 = add <4 x i64> %vec.ind1264, <i64 4, i64 4, i64 4, i64 4>
  %276 = icmp eq i64 %index.next1261, %258
  br i1 %276, label %polly.loop_exit897, label %vector.body1254, !llvm.loop !106

polly.loop_exit897:                               ; preds = %vector.body1254, %polly.loop_header895
  %polly.indvar_next893 = add nuw nsw i64 %polly.indvar892, 1
  %exitcond1193.not = icmp eq i64 %polly.indvar892, %256
  br i1 %exitcond1193.not, label %polly.loop_exit891, label %polly.loop_header889

polly.loop_header895:                             ; preds = %polly.loop_header889, %polly.loop_header895
  %polly.indvar898 = phi i64 [ %polly.indvar_next899, %polly.loop_header895 ], [ 0, %polly.loop_header889 ]
  %277 = add nuw nsw i64 %polly.indvar898, %259
  %278 = trunc i64 %277 to i32
  %279 = mul i32 %278, %262
  %280 = add i32 %279, 2
  %281 = urem i32 %280, 1000
  %p_conv10.i = sitofp i32 %281 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %282 = shl i64 %277, 3
  %283 = add nuw nsw i64 %282, %263
  %scevgep901 = getelementptr i8, i8* %call2, i64 %283
  %scevgep901902 = bitcast i8* %scevgep901 to double*
  store double %p_div12.i, double* %scevgep901902, align 8, !alias.scope !102, !noalias !105
  %polly.indvar_next899 = add nuw nsw i64 %polly.indvar898, 1
  %exitcond1189.not = icmp eq i64 %polly.indvar898, %260
  br i1 %exitcond1189.not, label %polly.loop_exit897, label %polly.loop_header895, !llvm.loop !107

polly.loop_header903:                             ; preds = %polly.loop_exit885, %polly.loop_exit911
  %indvars.iv1180 = phi i64 [ %indvars.iv.next1181, %polly.loop_exit911 ], [ 0, %polly.loop_exit885 ]
  %polly.indvar906 = phi i64 [ %polly.indvar_next907, %polly.loop_exit911 ], [ 0, %polly.loop_exit885 ]
  %smin1182 = call i64 @llvm.smin.i64(i64 %indvars.iv1180, i64 -1168)
  %284 = shl nsw i64 %polly.indvar906, 5
  %285 = add nsw i64 %smin1182, 1199
  br label %polly.loop_header909

polly.loop_exit911:                               ; preds = %polly.loop_exit917
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %indvars.iv.next1181 = add nsw i64 %indvars.iv1180, -32
  %exitcond1185.not = icmp eq i64 %polly.indvar_next907, 38
  br i1 %exitcond1185.not, label %init_array.exit, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_exit917, %polly.loop_header903
  %indvars.iv1176 = phi i64 [ %indvars.iv.next1177, %polly.loop_exit917 ], [ 0, %polly.loop_header903 ]
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %polly.loop_header903 ]
  %286 = mul nsw i64 %polly.indvar912, -32
  %smin1273 = call i64 @llvm.smin.i64(i64 %286, i64 -968)
  %287 = add nsw i64 %smin1273, 1000
  %smin1178 = call i64 @llvm.smin.i64(i64 %indvars.iv1176, i64 -968)
  %288 = shl nsw i64 %polly.indvar912, 5
  %289 = add nsw i64 %smin1178, 999
  br label %polly.loop_header915

polly.loop_exit917:                               ; preds = %polly.loop_exit923
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %indvars.iv.next1177 = add nsw i64 %indvars.iv1176, -32
  %exitcond1184.not = icmp eq i64 %polly.indvar_next913, 32
  br i1 %exitcond1184.not, label %polly.loop_exit911, label %polly.loop_header909

polly.loop_header915:                             ; preds = %polly.loop_exit923, %polly.loop_header909
  %polly.indvar918 = phi i64 [ 0, %polly.loop_header909 ], [ %polly.indvar_next919, %polly.loop_exit923 ]
  %290 = add nuw nsw i64 %polly.indvar918, %284
  %291 = trunc i64 %290 to i32
  %292 = mul nuw nsw i64 %290, 8000
  %min.iters.check1274 = icmp eq i64 %287, 0
  br i1 %min.iters.check1274, label %polly.loop_header921, label %vector.ph1275

vector.ph1275:                                    ; preds = %polly.loop_header915
  %broadcast.splatinsert1284 = insertelement <4 x i64> poison, i64 %288, i32 0
  %broadcast.splat1285 = shufflevector <4 x i64> %broadcast.splatinsert1284, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1286 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1287 = shufflevector <4 x i32> %broadcast.splatinsert1286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %vector.ph1275
  %index1278 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1279, %vector.body1272 ]
  %vec.ind1282 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1275 ], [ %vec.ind.next1283, %vector.body1272 ]
  %293 = add nuw nsw <4 x i64> %vec.ind1282, %broadcast.splat1285
  %294 = trunc <4 x i64> %293 to <4 x i32>
  %295 = mul <4 x i32> %broadcast.splat1287, %294
  %296 = add <4 x i32> %295, <i32 1, i32 1, i32 1, i32 1>
  %297 = urem <4 x i32> %296, <i32 1200, i32 1200, i32 1200, i32 1200>
  %298 = sitofp <4 x i32> %297 to <4 x double>
  %299 = fmul fast <4 x double> %298, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %300 = extractelement <4 x i64> %293, i32 0
  %301 = shl i64 %300, 3
  %302 = add nuw nsw i64 %301, %292
  %303 = getelementptr i8, i8* %call1, i64 %302
  %304 = bitcast i8* %303 to <4 x double>*
  store <4 x double> %299, <4 x double>* %304, align 8, !alias.scope !101, !noalias !108
  %index.next1279 = add i64 %index1278, 4
  %vec.ind.next1283 = add <4 x i64> %vec.ind1282, <i64 4, i64 4, i64 4, i64 4>
  %305 = icmp eq i64 %index.next1279, %287
  br i1 %305, label %polly.loop_exit923, label %vector.body1272, !llvm.loop !109

polly.loop_exit923:                               ; preds = %vector.body1272, %polly.loop_header921
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1183.not = icmp eq i64 %polly.indvar918, %285
  br i1 %exitcond1183.not, label %polly.loop_exit917, label %polly.loop_header915

polly.loop_header921:                             ; preds = %polly.loop_header915, %polly.loop_header921
  %polly.indvar924 = phi i64 [ %polly.indvar_next925, %polly.loop_header921 ], [ 0, %polly.loop_header915 ]
  %306 = add nuw nsw i64 %polly.indvar924, %288
  %307 = trunc i64 %306 to i32
  %308 = mul i32 %307, %291
  %309 = add i32 %308, 1
  %310 = urem i32 %309, 1200
  %p_conv.i = sitofp i32 %310 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %311 = shl i64 %306, 3
  %312 = add nuw nsw i64 %311, %292
  %scevgep928 = getelementptr i8, i8* %call1, i64 %312
  %scevgep928929 = bitcast i8* %scevgep928 to double*
  store double %p_div.i, double* %scevgep928929, align 8, !alias.scope !101, !noalias !108
  %polly.indvar_next925 = add nuw nsw i64 %polly.indvar924, 1
  %exitcond1179.not = icmp eq i64 %polly.indvar924, %289
  br i1 %exitcond1179.not, label %polly.loop_exit923, label %polly.loop_header921, !llvm.loop !110
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
!25 = !{!"llvm.loop.tile.size", i32 100}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !25, !34, !37}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !23, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !23, !39, !40}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = !{!"llvm.loop.interchange.followup_interchanged", !41}
!41 = distinct !{!41, !12, !23, !39, !42, !43, !44}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !23, !46, !47, !48, !49, !50, !56}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 80}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !23, !52, !53, !54, !55}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.loop.interchange.enable", i1 true}
!54 = !{!"llvm.loop.interchange.depth", i32 5}
!55 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call1"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !71, !72}
!77 = !{!67, !70, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !82, !83}
!87 = !{!78, !81, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call1"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !92, !93}
!97 = !{!88, !91, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !75, !13}
!105 = !{!101, !98}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !75, !13}
!108 = !{!102, !98}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !75, !13}
