; ModuleID = 'syr2k_exhaustive/mmp_all_SM_3862.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_3862.c"
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
  %call864 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1716 = bitcast i8* %call1 to double*
  %polly.access.call1725 = getelementptr i8, i8* %call1, i64 9600000
  %0 = icmp ule i8* %polly.access.call1725, %call2
  %polly.access.call2745 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2745, %call1
  %2 = or i1 %0, %1
  %polly.access.call765 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call765, %call2
  %4 = icmp ule i8* %polly.access.call2745, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call765, %call1
  %8 = icmp ule i8* %polly.access.call1725, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header838, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv7.i, i64 %index1229
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit899
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start506, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1291 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1291, label %for.body3.i46.preheader1371, label %vector.ph1292

vector.ph1292:                                    ; preds = %for.body3.i46.preheader
  %n.vec1294 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1292
  %index1295 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1296, %vector.body1290 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %index1295
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
  br i1 %cmp.n1298, label %for.inc6.i, label %for.body3.i46.preheader1371

for.body3.i46.preheader1371:                      ; preds = %for.body3.i46.preheader, %middle.block1288
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1294, %middle.block1288 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1371, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1371 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting507
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start298, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1314 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1314, label %for.body3.i60.preheader1368, label %vector.ph1315

vector.ph1315:                                    ; preds = %for.body3.i60.preheader
  %n.vec1317 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %vector.ph1315
  %index1318 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1319, %vector.body1313 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %index1318
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1322, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1319 = add i64 %index1318, 4
  %57 = icmp eq i64 %index.next1319, %n.vec1317
  br i1 %57, label %middle.block1311, label %vector.body1313, !llvm.loop !60

middle.block1311:                                 ; preds = %vector.body1313
  %cmp.n1321 = icmp eq i64 %indvars.iv21.i52, %n.vec1317
  br i1 %cmp.n1321, label %for.inc6.i63, label %for.body3.i60.preheader1368

for.body3.i60.preheader1368:                      ; preds = %for.body3.i60.preheader, %middle.block1311
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1317, %middle.block1311 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1368, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1368 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

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
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting299
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
  br i1 %min.iters.check1340, label %for.body3.i99.preheader1365, label %vector.ph1341

vector.ph1341:                                    ; preds = %for.body3.i99.preheader
  %n.vec1343 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1339

vector.body1339:                                  ; preds = %vector.body1339, %vector.ph1341
  %index1344 = phi i64 [ 0, %vector.ph1341 ], [ %index.next1345, %vector.body1339 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %index1344
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1348 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1348, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1345 = add i64 %index1344, 4
  %68 = icmp eq i64 %index.next1345, %n.vec1343
  br i1 %68, label %middle.block1337, label %vector.body1339, !llvm.loop !62

middle.block1337:                                 ; preds = %vector.body1339
  %cmp.n1347 = icmp eq i64 %indvars.iv21.i91, %n.vec1343
  br i1 %cmp.n1347, label %for.inc6.i102, label %for.body3.i99.preheader1365

for.body3.i99.preheader1365:                      ; preds = %for.body3.i99.preheader, %middle.block1337
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1343, %middle.block1337 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1365, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1365 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

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
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call864, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
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
  %wide.load1362 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1362, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1359 = add i64 %index1358, 4
  %95 = icmp eq i64 %index.next1359, %n.vec1357
  br i1 %95, label %middle.block1349, label %vector.body1351, !llvm.loop !74

middle.block1349:                                 ; preds = %vector.body1351
  %cmp.n1361 = icmp eq i64 %88, %n.vec1357
  br i1 %cmp.n1361, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1349
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1357, %middle.block1349 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1349
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1353 = add i64 %indvar1352, 1
  br i1 %exitcond1106.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1105.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1105.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv1096 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1097, %polly.loop_exit207 ]
  %indvars.iv1091 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1092, %polly.loop_exit207 ]
  %indvars.iv1085 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next1086, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ 99, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = udiv i64 %indvars.iv1085, 25
  %98 = mul nuw nsw i64 %97, 100
  %99 = sub nsw i64 %indvars.iv1091, %98
  %100 = add i64 %indvars.iv1096, %98
  %101 = add i64 %indvars.iv, %98
  %102 = shl nuw nsw i64 %polly.indvar202, 1
  %pexp.p_div_q.lhs.trunc = trunc i64 %102 to i16
  %pexp.p_div_q922 = udiv i16 %pexp.p_div_q.lhs.trunc, 25
  %pexp.p_div_q.zext = zext i16 %pexp.p_div_q922 to i64
  %103 = or i64 %102, 1
  %104 = shl nsw i64 %polly.indvar202, 3
  %105 = mul nsw i64 %polly.indvar202, -8
  %polly.access.mul.call1224 = mul nsw i64 %polly.indvar202, 8000
  %106 = or i64 %104, 1
  %polly.access.mul.call1224.1 = mul nuw nsw i64 %106, 1000
  %107 = or i64 %104, 2
  %polly.access.mul.call1224.2 = mul nuw nsw i64 %107, 1000
  %108 = or i64 %104, 3
  %polly.access.mul.call1224.3 = mul nuw nsw i64 %108, 1000
  %109 = or i64 %104, 4
  %polly.access.mul.call1224.4 = mul nuw nsw i64 %109, 1000
  %110 = or i64 %104, 5
  %polly.access.mul.call1224.5 = mul nuw nsw i64 %110, 1000
  %111 = or i64 %104, 6
  %polly.access.mul.call1224.6 = mul nuw nsw i64 %111, 1000
  %112 = or i64 %104, 7
  %polly.access.mul.call1224.7 = mul nuw nsw i64 %112, 1000
  %polly.access.mul.call1224.us935 = mul nsw i64 %polly.indvar202, 8000
  %113 = or i64 %104, 1
  %polly.access.mul.call1224.us935.1 = mul nuw nsw i64 %113, 1000
  %114 = or i64 %104, 2
  %polly.access.mul.call1224.us935.2 = mul nuw nsw i64 %114, 1000
  %115 = or i64 %104, 3
  %polly.access.mul.call1224.us935.3 = mul nuw nsw i64 %115, 1000
  %116 = or i64 %104, 4
  %polly.access.mul.call1224.us935.4 = mul nuw nsw i64 %116, 1000
  %117 = or i64 %104, 5
  %polly.access.mul.call1224.us935.5 = mul nuw nsw i64 %117, 1000
  %118 = or i64 %104, 6
  %polly.access.mul.call1224.us935.6 = mul nuw nsw i64 %118, 1000
  %119 = or i64 %104, 7
  %polly.access.mul.call1224.us935.7 = mul nuw nsw i64 %119, 1000
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit257
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next1086 = add nuw nsw i64 %indvars.iv1085, 2
  %indvars.iv.next1092 = add nuw nsw i64 %indvars.iv1091, 8
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, -8
  %exitcond1104.not = icmp eq i64 %polly.indvar_next203, 150
  br i1 %exitcond1104.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit257, %polly.loop_header199
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit257 ], [ %100, %polly.loop_header199 ]
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %polly.loop_exit257 ], [ %99, %polly.loop_header199 ]
  %indvars.iv1087 = phi i64 [ %indvars.iv.next1088, %polly.loop_exit257 ], [ %101, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit257 ], [ %pexp.p_div_q.zext, %polly.loop_header199 ]
  %smax1095 = call i64 @llvm.smax.i64(i64 %indvars.iv1093, i64 0)
  %120 = add i64 %smax1095, %indvars.iv1098
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1087, i64 0)
  %121 = mul nuw nsw i64 %polly.indvar208, 25
  %.not = icmp ult i64 %121, %103
  %122 = mul nuw nsw i64 %polly.indvar208, 100
  %123 = add nsw i64 %122, %105
  %124 = icmp sgt i64 %123, 8
  %125 = select i1 %124, i64 %123, i64 8
  %126 = add nsw i64 %123, 99
  %polly.loop_guard244 = icmp sgt i64 %123, -100
  br i1 %.not, label %polly.loop_header211.us, label %polly.loop_header205.split

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.merge.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.merge.us ], [ 0, %polly.loop_header205 ]
  br i1 %polly.loop_guard244, label %polly.loop_header241.preheader.us, label %polly.merge.us

polly.loop_header241.us:                          ; preds = %polly.loop_header241.preheader.us, %polly.loop_header241.us
  %polly.indvar245.us = phi i64 [ %polly.indvar_next246.us, %polly.loop_header241.us ], [ 0, %polly.loop_header241.preheader.us ]
  %127 = add nuw nsw i64 %polly.indvar245.us, %104
  %polly.access.mul.call1249.us = mul nuw nsw i64 %127, 1000
  %polly.access.add.call1250.us = add nuw nsw i64 %polly.access.mul.call1249.us, %polly.indvar214.us
  %polly.access.call1251.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1250.us
  %polly.access.call1251.load.us = load double, double* %polly.access.call1251.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1253.us = add nuw nsw i64 %polly.indvar245.us, %polly.access.mul.Packed_MemRef_call1252.us
  %polly.access.Packed_MemRef_call1254.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1253.us
  store double %polly.access.call1251.load.us, double* %polly.access.Packed_MemRef_call1254.us, align 8
  %polly.indvar_next246.us = add nuw nsw i64 %polly.indvar245.us, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar245.us, %smax
  br i1 %exitcond1089.not, label %polly.merge.us, label %polly.loop_header241.us

polly.merge.us:                                   ; preds = %polly.loop_header241.us, %polly.loop_header211.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next215.us, 1000
  br i1 %exitcond1090.not, label %polly.loop_header255.preheader, label %polly.loop_header211.us

polly.loop_header241.preheader.us:                ; preds = %polly.loop_header211.us
  %polly.access.mul.Packed_MemRef_call1252.us = mul nuw nsw i64 %polly.indvar214.us, 1200
  br label %polly.loop_header241.us

polly.loop_header205.split:                       ; preds = %polly.loop_header205
  %polly.loop_guard.not = icmp sgt i64 %125, %126
  br i1 %polly.loop_guard.not, label %polly.loop_header211.us931, label %polly.loop_header211

polly.loop_header211.us931:                       ; preds = %polly.loop_header205.split, %polly.loop_header211.us931
  %polly.indvar214.us932 = phi i64 [ %polly.indvar_next215.us968, %polly.loop_header211.us931 ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1.us976 = mul nuw nsw i64 %polly.indvar214.us932, 1200
  %polly.access.add.call1225.us936 = add nuw nsw i64 %polly.access.mul.call1224.us935, %polly.indvar214.us932
  %polly.access.call1226.us937 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us936
  %polly.access.call1226.load.us938 = load double, double* %polly.access.call1226.us937, align 8, !alias.scope !71, !noalias !77
  %polly.access.Packed_MemRef_call1.us940 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us976
  store double %polly.access.call1226.load.us938, double* %polly.access.Packed_MemRef_call1.us940, align 8
  %polly.access.add.call1225.us936.1 = add nuw nsw i64 %polly.access.mul.call1224.us935.1, %polly.indvar214.us932
  %polly.access.call1226.us937.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us936.1
  %polly.access.call1226.load.us938.1 = load double, double* %polly.access.call1226.us937.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us939.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us976, 1
  %polly.access.Packed_MemRef_call1.us940.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us939.1
  store double %polly.access.call1226.load.us938.1, double* %polly.access.Packed_MemRef_call1.us940.1, align 8
  %polly.access.add.call1225.us936.2 = add nuw nsw i64 %polly.access.mul.call1224.us935.2, %polly.indvar214.us932
  %polly.access.call1226.us937.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us936.2
  %polly.access.call1226.load.us938.2 = load double, double* %polly.access.call1226.us937.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us939.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us976, 2
  %polly.access.Packed_MemRef_call1.us940.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us939.2
  store double %polly.access.call1226.load.us938.2, double* %polly.access.Packed_MemRef_call1.us940.2, align 8
  %polly.access.add.call1225.us936.3 = add nuw nsw i64 %polly.access.mul.call1224.us935.3, %polly.indvar214.us932
  %polly.access.call1226.us937.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us936.3
  %polly.access.call1226.load.us938.3 = load double, double* %polly.access.call1226.us937.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us939.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us976, 3
  %polly.access.Packed_MemRef_call1.us940.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us939.3
  store double %polly.access.call1226.load.us938.3, double* %polly.access.Packed_MemRef_call1.us940.3, align 8
  %polly.access.add.call1225.us936.4 = add nuw nsw i64 %polly.access.mul.call1224.us935.4, %polly.indvar214.us932
  %polly.access.call1226.us937.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us936.4
  %polly.access.call1226.load.us938.4 = load double, double* %polly.access.call1226.us937.4, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us939.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us976, 4
  %polly.access.Packed_MemRef_call1.us940.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us939.4
  store double %polly.access.call1226.load.us938.4, double* %polly.access.Packed_MemRef_call1.us940.4, align 8
  %polly.access.add.call1225.us936.5 = add nuw nsw i64 %polly.access.mul.call1224.us935.5, %polly.indvar214.us932
  %polly.access.call1226.us937.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us936.5
  %polly.access.call1226.load.us938.5 = load double, double* %polly.access.call1226.us937.5, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us939.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us976, 5
  %polly.access.Packed_MemRef_call1.us940.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us939.5
  store double %polly.access.call1226.load.us938.5, double* %polly.access.Packed_MemRef_call1.us940.5, align 8
  %polly.access.add.call1225.us936.6 = add nuw nsw i64 %polly.access.mul.call1224.us935.6, %polly.indvar214.us932
  %polly.access.call1226.us937.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us936.6
  %polly.access.call1226.load.us938.6 = load double, double* %polly.access.call1226.us937.6, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us939.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us976, 6
  %polly.access.Packed_MemRef_call1.us940.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us939.6
  store double %polly.access.call1226.load.us938.6, double* %polly.access.Packed_MemRef_call1.us940.6, align 8
  %polly.access.add.call1225.us936.7 = add nuw nsw i64 %polly.access.mul.call1224.us935.7, %polly.indvar214.us932
  %polly.access.call1226.us937.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.us936.7
  %polly.access.call1226.load.us938.7 = load double, double* %polly.access.call1226.us937.7, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us939.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us976, 7
  %polly.access.Packed_MemRef_call1.us940.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us939.7
  store double %polly.access.call1226.load.us938.7, double* %polly.access.Packed_MemRef_call1.us940.7, align 8
  %polly.indvar_next215.us968 = add nuw nsw i64 %polly.indvar214.us932, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next215.us968, 1000
  br i1 %exitcond1084.not, label %polly.loop_header255.preheader, label %polly.loop_header211.us931

polly.loop_exit257:                               ; preds = %polly.loop_exit264.loopexit.us, %polly.loop_header255.preheader
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %polly.loop_cond210 = icmp ult i64 %polly.indvar208, 11
  %indvars.iv.next1088 = add i64 %indvars.iv1087, 100
  %indvars.iv.next1094 = add i64 %indvars.iv1093, -100
  %indvars.iv.next1099 = add i64 %indvars.iv1098, 100
  br i1 %polly.loop_cond210, label %polly.loop_header205, label %polly.loop_exit207

polly.loop_header211:                             ; preds = %polly.loop_header205.split, %polly.merge
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.merge ], [ 0, %polly.loop_header205.split ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar214, 1200
  %polly.access.add.call1225 = add nuw nsw i64 %polly.access.mul.call1224, %polly.indvar214
  %polly.access.call1226 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225
  %polly.access.call1226.load = load double, double* %polly.access.call1226, align 8, !alias.scope !71, !noalias !77
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1
  store double %polly.access.call1226.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.access.add.call1225.1 = add nuw nsw i64 %polly.access.mul.call1224.1, %polly.indvar214
  %polly.access.call1226.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.1
  %polly.access.call1226.load.1 = load double, double* %polly.access.call1226.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.1 = or i64 %polly.access.mul.Packed_MemRef_call1, 1
  %polly.access.Packed_MemRef_call1.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.1
  store double %polly.access.call1226.load.1, double* %polly.access.Packed_MemRef_call1.1, align 8
  %polly.access.add.call1225.2 = add nuw nsw i64 %polly.access.mul.call1224.2, %polly.indvar214
  %polly.access.call1226.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.2
  %polly.access.call1226.load.2 = load double, double* %polly.access.call1226.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.2 = or i64 %polly.access.mul.Packed_MemRef_call1, 2
  %polly.access.Packed_MemRef_call1.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.2
  store double %polly.access.call1226.load.2, double* %polly.access.Packed_MemRef_call1.2, align 8
  %polly.access.add.call1225.3 = add nuw nsw i64 %polly.access.mul.call1224.3, %polly.indvar214
  %polly.access.call1226.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.3
  %polly.access.call1226.load.3 = load double, double* %polly.access.call1226.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.3 = or i64 %polly.access.mul.Packed_MemRef_call1, 3
  %polly.access.Packed_MemRef_call1.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.3
  store double %polly.access.call1226.load.3, double* %polly.access.Packed_MemRef_call1.3, align 8
  %polly.access.add.call1225.4 = add nuw nsw i64 %polly.access.mul.call1224.4, %polly.indvar214
  %polly.access.call1226.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.4
  %polly.access.call1226.load.4 = load double, double* %polly.access.call1226.4, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.4 = or i64 %polly.access.mul.Packed_MemRef_call1, 4
  %polly.access.Packed_MemRef_call1.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.4
  store double %polly.access.call1226.load.4, double* %polly.access.Packed_MemRef_call1.4, align 8
  %polly.access.add.call1225.5 = add nuw nsw i64 %polly.access.mul.call1224.5, %polly.indvar214
  %polly.access.call1226.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.5
  %polly.access.call1226.load.5 = load double, double* %polly.access.call1226.5, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.5 = or i64 %polly.access.mul.Packed_MemRef_call1, 5
  %polly.access.Packed_MemRef_call1.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.5
  store double %polly.access.call1226.load.5, double* %polly.access.Packed_MemRef_call1.5, align 8
  %polly.access.add.call1225.6 = add nuw nsw i64 %polly.access.mul.call1224.6, %polly.indvar214
  %polly.access.call1226.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.6
  %polly.access.call1226.load.6 = load double, double* %polly.access.call1226.6, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.6 = or i64 %polly.access.mul.Packed_MemRef_call1, 6
  %polly.access.Packed_MemRef_call1.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.6
  store double %polly.access.call1226.load.6, double* %polly.access.Packed_MemRef_call1.6, align 8
  %polly.access.add.call1225.7 = add nuw nsw i64 %polly.access.mul.call1224.7, %polly.indvar214
  %polly.access.call1226.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1225.7
  %polly.access.call1226.load.7 = load double, double* %polly.access.call1226.7, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.7 = or i64 %polly.access.mul.Packed_MemRef_call1, 7
  %polly.access.Packed_MemRef_call1.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.7
  store double %polly.access.call1226.load.7, double* %polly.access.Packed_MemRef_call1.7, align 8
  br label %polly.loop_header227

polly.merge:                                      ; preds = %polly.loop_header227
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next215, 1000
  br i1 %exitcond1082.not, label %polly.loop_header255.preheader, label %polly.loop_header211

polly.loop_header255.preheader:                   ; preds = %polly.merge, %polly.loop_header211.us931, %polly.merge.us
  %128 = sub nsw i64 %104, %122
  %129 = icmp sgt i64 %128, 0
  %130 = select i1 %129, i64 %128, i64 0
  %polly.loop_guard265 = icmp slt i64 %130, 100
  br i1 %polly.loop_guard265, label %polly.loop_header255.us, label %polly.loop_exit257

polly.loop_header255.us:                          ; preds = %polly.loop_header255.preheader, %polly.loop_exit264.loopexit.us
  %polly.indvar258.us = phi i64 [ %polly.indvar_next259.us, %polly.loop_exit264.loopexit.us ], [ 0, %polly.loop_header255.preheader ]
  %131 = shl nuw nsw i64 %polly.indvar258.us, 3
  %scevgep281.us = getelementptr i8, i8* %call2, i64 %131
  %polly.access.mul.Packed_MemRef_call1277.us = mul nuw nsw i64 %polly.indvar258.us, 1200
  br label %polly.loop_header262.us

polly.loop_header262.us:                          ; preds = %polly.loop_exit272.us, %polly.loop_header255.us
  %indvars.iv1100 = phi i64 [ %indvars.iv.next1101, %polly.loop_exit272.us ], [ %120, %polly.loop_header255.us ]
  %polly.indvar266.us = phi i64 [ %polly.indvar_next267.us, %polly.loop_exit272.us ], [ %130, %polly.loop_header255.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1100, i64 7)
  %132 = add nuw i64 %polly.indvar266.us, %122
  %133 = add i64 %132, %105
  %polly.loop_guard273.us1204 = icmp sgt i64 %133, -1
  br i1 %polly.loop_guard273.us1204, label %polly.loop_header270.preheader.us, label %polly.loop_exit272.us

polly.loop_header270.us:                          ; preds = %polly.loop_header270.preheader.us, %polly.loop_header270.us
  %polly.indvar274.us = phi i64 [ %polly.indvar_next275.us, %polly.loop_header270.us ], [ 0, %polly.loop_header270.preheader.us ]
  %134 = add nuw nsw i64 %polly.indvar274.us, %104
  %polly.access.add.Packed_MemRef_call1278.us = add nuw nsw i64 %polly.indvar274.us, %polly.access.mul.Packed_MemRef_call1277.us
  %polly.access.Packed_MemRef_call1279.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1278.us
  %_p_scalar_280.us = load double, double* %polly.access.Packed_MemRef_call1279.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_284.us, %_p_scalar_280.us
  %135 = mul nuw nsw i64 %134, 8000
  %scevgep286.us = getelementptr i8, i8* %scevgep281.us, i64 %135
  %scevgep286287.us = bitcast i8* %scevgep286.us to double*
  %_p_scalar_288.us = load double, double* %scevgep286287.us, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.us = fmul fast double %_p_scalar_292.us, %_p_scalar_288.us
  %136 = shl i64 %134, 3
  %137 = add i64 %136, %139
  %scevgep293.us = getelementptr i8, i8* %call, i64 %137
  %scevgep293294.us = bitcast i8* %scevgep293.us to double*
  %_p_scalar_295.us = load double, double* %scevgep293294.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_295.us
  store double %p_add42.i118.us, double* %scevgep293294.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next275.us = add nuw nsw i64 %polly.indvar274.us, 1
  %exitcond1102.not = icmp eq i64 %polly.indvar274.us, %smin
  br i1 %exitcond1102.not, label %polly.loop_exit272.us, label %polly.loop_header270.us

polly.loop_exit272.us:                            ; preds = %polly.loop_header270.us, %polly.loop_header262.us
  %polly.indvar_next267.us = add nuw nsw i64 %polly.indvar266.us, 1
  %polly.loop_cond268.us = icmp ult i64 %polly.indvar266.us, 99
  %indvars.iv.next1101 = add i64 %indvars.iv1100, 1
  br i1 %polly.loop_cond268.us, label %polly.loop_header262.us, label %polly.loop_exit264.loopexit.us

polly.loop_header270.preheader.us:                ; preds = %polly.loop_header262.us
  %138 = mul i64 %132, 8000
  %scevgep282.us = getelementptr i8, i8* %scevgep281.us, i64 %138
  %scevgep282283.us = bitcast i8* %scevgep282.us to double*
  %_p_scalar_284.us = load double, double* %scevgep282283.us, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1290.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1277.us, %133
  %polly.access.Packed_MemRef_call1291.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call1291.us, align 8
  %139 = mul i64 %132, 9600
  br label %polly.loop_header270.us

polly.loop_exit264.loopexit.us:                   ; preds = %polly.loop_exit272.us
  %polly.indvar_next259.us = add nuw nsw i64 %polly.indvar258.us, 1
  %exitcond1103.not = icmp eq i64 %polly.indvar_next259.us, 1000
  br i1 %exitcond1103.not, label %polly.loop_exit257, label %polly.loop_header255.us

polly.loop_header227:                             ; preds = %polly.loop_header211, %polly.loop_header227
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_header227 ], [ %125, %polly.loop_header211 ]
  %140 = add nuw nsw i64 %polly.indvar230, %104
  %polly.access.mul.call1234 = mul nsw i64 %140, 1000
  %polly.access.add.call1235 = add nuw nsw i64 %polly.access.mul.call1234, %polly.indvar214
  %polly.access.call1236 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1235
  %polly.access.call1236.load = load double, double* %polly.access.call1236, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1238 = add nuw nsw i64 %polly.indvar230, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1239 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238
  store double %polly.access.call1236.load, double* %polly.access.Packed_MemRef_call1239, align 8
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232.not.not = icmp slt i64 %polly.indvar230, %126
  br i1 %polly.loop_cond232.not.not, label %polly.loop_header227, label %polly.merge

polly.start298:                                   ; preds = %kernel_syr2k.exit
  %malloccall300 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header384

polly.exiting299:                                 ; preds = %polly.loop_exit409
  tail call void @free(i8* %malloccall300)
  br label %kernel_syr2k.exit90

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.start298
  %indvar1326 = phi i64 [ %indvar.next1327, %polly.loop_exit392 ], [ 0, %polly.start298 ]
  %polly.indvar387 = phi i64 [ %polly.indvar_next388, %polly.loop_exit392 ], [ 1, %polly.start298 ]
  %141 = add i64 %indvar1326, 1
  %142 = mul nuw nsw i64 %polly.indvar387, 9600
  %scevgep396 = getelementptr i8, i8* %call, i64 %142
  %min.iters.check1328 = icmp ult i64 %141, 4
  br i1 %min.iters.check1328, label %polly.loop_header390.preheader, label %vector.ph1329

vector.ph1329:                                    ; preds = %polly.loop_header384
  %n.vec1331 = and i64 %141, -4
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1329
  %index1332 = phi i64 [ 0, %vector.ph1329 ], [ %index.next1333, %vector.body1325 ]
  %143 = shl nuw nsw i64 %index1332, 3
  %144 = getelementptr i8, i8* %scevgep396, i64 %143
  %145 = bitcast i8* %144 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %145, align 8, !alias.scope !79, !noalias !81
  %146 = fmul fast <4 x double> %wide.load1336, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %147 = bitcast i8* %144 to <4 x double>*
  store <4 x double> %146, <4 x double>* %147, align 8, !alias.scope !79, !noalias !81
  %index.next1333 = add i64 %index1332, 4
  %148 = icmp eq i64 %index.next1333, %n.vec1331
  br i1 %148, label %middle.block1323, label %vector.body1325, !llvm.loop !85

middle.block1323:                                 ; preds = %vector.body1325
  %cmp.n1335 = icmp eq i64 %141, %n.vec1331
  br i1 %cmp.n1335, label %polly.loop_exit392, label %polly.loop_header390.preheader

polly.loop_header390.preheader:                   ; preds = %polly.loop_header384, %middle.block1323
  %polly.indvar393.ph = phi i64 [ 0, %polly.loop_header384 ], [ %n.vec1331, %middle.block1323 ]
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390, %middle.block1323
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond1136.not = icmp eq i64 %polly.indvar_next388, 1200
  %indvar.next1327 = add i64 %indvar1326, 1
  br i1 %exitcond1136.not, label %polly.loop_header400.preheader, label %polly.loop_header384

polly.loop_header400.preheader:                   ; preds = %polly.loop_exit392
  %Packed_MemRef_call1301 = bitcast i8* %malloccall300 to double*
  br label %polly.loop_header400

polly.loop_header390:                             ; preds = %polly.loop_header390.preheader, %polly.loop_header390
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_header390 ], [ %polly.indvar393.ph, %polly.loop_header390.preheader ]
  %149 = shl nuw nsw i64 %polly.indvar393, 3
  %scevgep397 = getelementptr i8, i8* %scevgep396, i64 %149
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_399, 1.200000e+00
  store double %p_mul.i57, double* %scevgep397398, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1135.not = icmp eq i64 %polly.indvar_next394, %polly.indvar387
  br i1 %exitcond1135.not, label %polly.loop_exit392, label %polly.loop_header390, !llvm.loop !86

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit409
  %indvars.iv1125 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %indvars.iv.next1126, %polly.loop_exit409 ]
  %indvars.iv1120 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %indvars.iv.next1121, %polly.loop_exit409 ]
  %indvars.iv1113 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %indvars.iv.next1114, %polly.loop_exit409 ]
  %indvars.iv1111 = phi i64 [ 99, %polly.loop_header400.preheader ], [ %indvars.iv.next1112, %polly.loop_exit409 ]
  %polly.indvar403 = phi i64 [ 0, %polly.loop_header400.preheader ], [ %polly.indvar_next404, %polly.loop_exit409 ]
  %150 = udiv i64 %indvars.iv1113, 25
  %151 = mul nuw nsw i64 %150, 100
  %152 = sub nsw i64 %indvars.iv1120, %151
  %153 = add i64 %indvars.iv1125, %151
  %154 = add i64 %indvars.iv1111, %151
  %155 = shl nuw nsw i64 %polly.indvar403, 1
  %pexp.p_div_q406.lhs.trunc = trunc i64 %155 to i16
  %pexp.p_div_q406921 = udiv i16 %pexp.p_div_q406.lhs.trunc, 25
  %pexp.p_div_q406.zext = zext i16 %pexp.p_div_q406921 to i64
  %156 = or i64 %155, 1
  %157 = shl nsw i64 %polly.indvar403, 3
  %158 = mul nsw i64 %polly.indvar403, -8
  %polly.access.mul.call1430 = mul nsw i64 %polly.indvar403, 8000
  %159 = or i64 %157, 1
  %polly.access.mul.call1430.1 = mul nuw nsw i64 %159, 1000
  %160 = or i64 %157, 2
  %polly.access.mul.call1430.2 = mul nuw nsw i64 %160, 1000
  %161 = or i64 %157, 3
  %polly.access.mul.call1430.3 = mul nuw nsw i64 %161, 1000
  %162 = or i64 %157, 4
  %polly.access.mul.call1430.4 = mul nuw nsw i64 %162, 1000
  %163 = or i64 %157, 5
  %polly.access.mul.call1430.5 = mul nuw nsw i64 %163, 1000
  %164 = or i64 %157, 6
  %polly.access.mul.call1430.6 = mul nuw nsw i64 %164, 1000
  %165 = or i64 %157, 7
  %polly.access.mul.call1430.7 = mul nuw nsw i64 %165, 1000
  %polly.access.mul.call1430.us981 = mul nsw i64 %polly.indvar403, 8000
  %166 = or i64 %157, 1
  %polly.access.mul.call1430.us981.1 = mul nuw nsw i64 %166, 1000
  %167 = or i64 %157, 2
  %polly.access.mul.call1430.us981.2 = mul nuw nsw i64 %167, 1000
  %168 = or i64 %157, 3
  %polly.access.mul.call1430.us981.3 = mul nuw nsw i64 %168, 1000
  %169 = or i64 %157, 4
  %polly.access.mul.call1430.us981.4 = mul nuw nsw i64 %169, 1000
  %170 = or i64 %157, 5
  %polly.access.mul.call1430.us981.5 = mul nuw nsw i64 %170, 1000
  %171 = or i64 %157, 6
  %polly.access.mul.call1430.us981.6 = mul nuw nsw i64 %171, 1000
  %172 = or i64 %157, 7
  %polly.access.mul.call1430.us981.7 = mul nuw nsw i64 %172, 1000
  br label %polly.loop_header407

polly.loop_exit409:                               ; preds = %polly.loop_exit465
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next1112 = add nsw i64 %indvars.iv1111, -8
  %indvars.iv.next1114 = add nuw nsw i64 %indvars.iv1113, 2
  %indvars.iv.next1121 = add nuw nsw i64 %indvars.iv1120, 8
  %indvars.iv.next1126 = add nsw i64 %indvars.iv1125, -8
  %exitcond1134.not = icmp eq i64 %polly.indvar_next404, 150
  br i1 %exitcond1134.not, label %polly.exiting299, label %polly.loop_header400

polly.loop_header407:                             ; preds = %polly.loop_exit465, %polly.loop_header400
  %indvars.iv1127 = phi i64 [ %indvars.iv.next1128, %polly.loop_exit465 ], [ %153, %polly.loop_header400 ]
  %indvars.iv1122 = phi i64 [ %indvars.iv.next1123, %polly.loop_exit465 ], [ %152, %polly.loop_header400 ]
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit465 ], [ %154, %polly.loop_header400 ]
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit465 ], [ %pexp.p_div_q406.zext, %polly.loop_header400 ]
  %smax1124 = call i64 @llvm.smax.i64(i64 %indvars.iv1122, i64 0)
  %173 = add i64 %smax1124, %indvars.iv1127
  %smax1117 = call i64 @llvm.smax.i64(i64 %indvars.iv1115, i64 0)
  %174 = mul nuw nsw i64 %polly.indvar410, 25
  %.not918 = icmp ult i64 %174, %156
  %175 = mul nuw nsw i64 %polly.indvar410, 100
  %176 = add nsw i64 %175, %158
  %177 = icmp sgt i64 %176, 8
  %178 = select i1 %177, i64 %176, i64 8
  %179 = add nsw i64 %176, 99
  %polly.loop_guard452 = icmp sgt i64 %176, -100
  br i1 %.not918, label %polly.loop_header413.us, label %polly.loop_header407.split

polly.loop_header413.us:                          ; preds = %polly.loop_header407, %polly.merge420.us
  %polly.indvar416.us = phi i64 [ %polly.indvar_next417.us, %polly.merge420.us ], [ 0, %polly.loop_header407 ]
  br i1 %polly.loop_guard452, label %polly.loop_header449.preheader.us, label %polly.merge420.us

polly.loop_header449.us:                          ; preds = %polly.loop_header449.preheader.us, %polly.loop_header449.us
  %polly.indvar453.us = phi i64 [ %polly.indvar_next454.us, %polly.loop_header449.us ], [ 0, %polly.loop_header449.preheader.us ]
  %180 = add nuw nsw i64 %polly.indvar453.us, %157
  %polly.access.mul.call1457.us = mul nuw nsw i64 %180, 1000
  %polly.access.add.call1458.us = add nuw nsw i64 %polly.access.mul.call1457.us, %polly.indvar416.us
  %polly.access.call1459.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1458.us
  %polly.access.call1459.load.us = load double, double* %polly.access.call1459.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301461.us = add nuw nsw i64 %polly.indvar453.us, %polly.access.mul.Packed_MemRef_call1301460.us
  %polly.access.Packed_MemRef_call1301462.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301461.us
  store double %polly.access.call1459.load.us, double* %polly.access.Packed_MemRef_call1301462.us, align 8
  %polly.indvar_next454.us = add nuw nsw i64 %polly.indvar453.us, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar453.us, %smax1117
  br i1 %exitcond1118.not, label %polly.merge420.us, label %polly.loop_header449.us

polly.merge420.us:                                ; preds = %polly.loop_header449.us, %polly.loop_header413.us
  %polly.indvar_next417.us = add nuw nsw i64 %polly.indvar416.us, 1
  %exitcond1119.not = icmp eq i64 %polly.indvar_next417.us, 1000
  br i1 %exitcond1119.not, label %polly.loop_header463.preheader, label %polly.loop_header413.us

polly.loop_header449.preheader.us:                ; preds = %polly.loop_header413.us
  %polly.access.mul.Packed_MemRef_call1301460.us = mul nuw nsw i64 %polly.indvar416.us, 1200
  br label %polly.loop_header449.us

polly.loop_header407.split:                       ; preds = %polly.loop_header407
  %polly.loop_guard437.not = icmp sgt i64 %178, %179
  br i1 %polly.loop_guard437.not, label %polly.loop_header413.us977, label %polly.loop_header413

polly.loop_header413.us977:                       ; preds = %polly.loop_header407.split, %polly.loop_header413.us977
  %polly.indvar416.us978 = phi i64 [ %polly.indvar_next417.us1014, %polly.loop_header413.us977 ], [ 0, %polly.loop_header407.split ]
  %polly.access.mul.Packed_MemRef_call1301.us1022 = mul nuw nsw i64 %polly.indvar416.us978, 1200
  %polly.access.add.call1431.us982 = add nuw nsw i64 %polly.access.mul.call1430.us981, %polly.indvar416.us978
  %polly.access.call1432.us983 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us982
  %polly.access.call1432.load.us984 = load double, double* %polly.access.call1432.us983, align 8, !alias.scope !82, !noalias !87
  %polly.access.Packed_MemRef_call1301.us986 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.mul.Packed_MemRef_call1301.us1022
  store double %polly.access.call1432.load.us984, double* %polly.access.Packed_MemRef_call1301.us986, align 8
  %polly.access.add.call1431.us982.1 = add nuw nsw i64 %polly.access.mul.call1430.us981.1, %polly.indvar416.us978
  %polly.access.call1432.us983.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us982.1
  %polly.access.call1432.load.us984.1 = load double, double* %polly.access.call1432.us983.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us985.1 = or i64 %polly.access.mul.Packed_MemRef_call1301.us1022, 1
  %polly.access.Packed_MemRef_call1301.us986.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us985.1
  store double %polly.access.call1432.load.us984.1, double* %polly.access.Packed_MemRef_call1301.us986.1, align 8
  %polly.access.add.call1431.us982.2 = add nuw nsw i64 %polly.access.mul.call1430.us981.2, %polly.indvar416.us978
  %polly.access.call1432.us983.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us982.2
  %polly.access.call1432.load.us984.2 = load double, double* %polly.access.call1432.us983.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us985.2 = or i64 %polly.access.mul.Packed_MemRef_call1301.us1022, 2
  %polly.access.Packed_MemRef_call1301.us986.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us985.2
  store double %polly.access.call1432.load.us984.2, double* %polly.access.Packed_MemRef_call1301.us986.2, align 8
  %polly.access.add.call1431.us982.3 = add nuw nsw i64 %polly.access.mul.call1430.us981.3, %polly.indvar416.us978
  %polly.access.call1432.us983.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us982.3
  %polly.access.call1432.load.us984.3 = load double, double* %polly.access.call1432.us983.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us985.3 = or i64 %polly.access.mul.Packed_MemRef_call1301.us1022, 3
  %polly.access.Packed_MemRef_call1301.us986.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us985.3
  store double %polly.access.call1432.load.us984.3, double* %polly.access.Packed_MemRef_call1301.us986.3, align 8
  %polly.access.add.call1431.us982.4 = add nuw nsw i64 %polly.access.mul.call1430.us981.4, %polly.indvar416.us978
  %polly.access.call1432.us983.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us982.4
  %polly.access.call1432.load.us984.4 = load double, double* %polly.access.call1432.us983.4, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us985.4 = or i64 %polly.access.mul.Packed_MemRef_call1301.us1022, 4
  %polly.access.Packed_MemRef_call1301.us986.4 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us985.4
  store double %polly.access.call1432.load.us984.4, double* %polly.access.Packed_MemRef_call1301.us986.4, align 8
  %polly.access.add.call1431.us982.5 = add nuw nsw i64 %polly.access.mul.call1430.us981.5, %polly.indvar416.us978
  %polly.access.call1432.us983.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us982.5
  %polly.access.call1432.load.us984.5 = load double, double* %polly.access.call1432.us983.5, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us985.5 = or i64 %polly.access.mul.Packed_MemRef_call1301.us1022, 5
  %polly.access.Packed_MemRef_call1301.us986.5 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us985.5
  store double %polly.access.call1432.load.us984.5, double* %polly.access.Packed_MemRef_call1301.us986.5, align 8
  %polly.access.add.call1431.us982.6 = add nuw nsw i64 %polly.access.mul.call1430.us981.6, %polly.indvar416.us978
  %polly.access.call1432.us983.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us982.6
  %polly.access.call1432.load.us984.6 = load double, double* %polly.access.call1432.us983.6, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us985.6 = or i64 %polly.access.mul.Packed_MemRef_call1301.us1022, 6
  %polly.access.Packed_MemRef_call1301.us986.6 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us985.6
  store double %polly.access.call1432.load.us984.6, double* %polly.access.Packed_MemRef_call1301.us986.6, align 8
  %polly.access.add.call1431.us982.7 = add nuw nsw i64 %polly.access.mul.call1430.us981.7, %polly.indvar416.us978
  %polly.access.call1432.us983.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.us982.7
  %polly.access.call1432.load.us984.7 = load double, double* %polly.access.call1432.us983.7, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.us985.7 = or i64 %polly.access.mul.Packed_MemRef_call1301.us1022, 7
  %polly.access.Packed_MemRef_call1301.us986.7 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.us985.7
  store double %polly.access.call1432.load.us984.7, double* %polly.access.Packed_MemRef_call1301.us986.7, align 8
  %polly.indvar_next417.us1014 = add nuw nsw i64 %polly.indvar416.us978, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar_next417.us1014, 1000
  br i1 %exitcond1110.not, label %polly.loop_header463.preheader, label %polly.loop_header413.us977

polly.loop_exit465:                               ; preds = %polly.loop_exit472.loopexit.us, %polly.loop_header463.preheader
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %polly.loop_cond412 = icmp ult i64 %polly.indvar410, 11
  %indvars.iv.next1116 = add i64 %indvars.iv1115, 100
  %indvars.iv.next1123 = add i64 %indvars.iv1122, -100
  %indvars.iv.next1128 = add i64 %indvars.iv1127, 100
  br i1 %polly.loop_cond412, label %polly.loop_header407, label %polly.loop_exit409

polly.loop_header413:                             ; preds = %polly.loop_header407.split, %polly.merge420
  %polly.indvar416 = phi i64 [ %polly.indvar_next417, %polly.merge420 ], [ 0, %polly.loop_header407.split ]
  %polly.access.mul.Packed_MemRef_call1301 = mul nuw nsw i64 %polly.indvar416, 1200
  %polly.access.add.call1431 = add nuw nsw i64 %polly.access.mul.call1430, %polly.indvar416
  %polly.access.call1432 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431
  %polly.access.call1432.load = load double, double* %polly.access.call1432, align 8, !alias.scope !82, !noalias !87
  %polly.access.Packed_MemRef_call1301 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.mul.Packed_MemRef_call1301
  store double %polly.access.call1432.load, double* %polly.access.Packed_MemRef_call1301, align 8
  %polly.access.add.call1431.1 = add nuw nsw i64 %polly.access.mul.call1430.1, %polly.indvar416
  %polly.access.call1432.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.1
  %polly.access.call1432.load.1 = load double, double* %polly.access.call1432.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.1 = or i64 %polly.access.mul.Packed_MemRef_call1301, 1
  %polly.access.Packed_MemRef_call1301.1 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.1
  store double %polly.access.call1432.load.1, double* %polly.access.Packed_MemRef_call1301.1, align 8
  %polly.access.add.call1431.2 = add nuw nsw i64 %polly.access.mul.call1430.2, %polly.indvar416
  %polly.access.call1432.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.2
  %polly.access.call1432.load.2 = load double, double* %polly.access.call1432.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.2 = or i64 %polly.access.mul.Packed_MemRef_call1301, 2
  %polly.access.Packed_MemRef_call1301.2 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.2
  store double %polly.access.call1432.load.2, double* %polly.access.Packed_MemRef_call1301.2, align 8
  %polly.access.add.call1431.3 = add nuw nsw i64 %polly.access.mul.call1430.3, %polly.indvar416
  %polly.access.call1432.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.3
  %polly.access.call1432.load.3 = load double, double* %polly.access.call1432.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.3 = or i64 %polly.access.mul.Packed_MemRef_call1301, 3
  %polly.access.Packed_MemRef_call1301.3 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.3
  store double %polly.access.call1432.load.3, double* %polly.access.Packed_MemRef_call1301.3, align 8
  %polly.access.add.call1431.4 = add nuw nsw i64 %polly.access.mul.call1430.4, %polly.indvar416
  %polly.access.call1432.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.4
  %polly.access.call1432.load.4 = load double, double* %polly.access.call1432.4, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.4 = or i64 %polly.access.mul.Packed_MemRef_call1301, 4
  %polly.access.Packed_MemRef_call1301.4 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.4
  store double %polly.access.call1432.load.4, double* %polly.access.Packed_MemRef_call1301.4, align 8
  %polly.access.add.call1431.5 = add nuw nsw i64 %polly.access.mul.call1430.5, %polly.indvar416
  %polly.access.call1432.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.5
  %polly.access.call1432.load.5 = load double, double* %polly.access.call1432.5, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.5 = or i64 %polly.access.mul.Packed_MemRef_call1301, 5
  %polly.access.Packed_MemRef_call1301.5 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.5
  store double %polly.access.call1432.load.5, double* %polly.access.Packed_MemRef_call1301.5, align 8
  %polly.access.add.call1431.6 = add nuw nsw i64 %polly.access.mul.call1430.6, %polly.indvar416
  %polly.access.call1432.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.6
  %polly.access.call1432.load.6 = load double, double* %polly.access.call1432.6, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.6 = or i64 %polly.access.mul.Packed_MemRef_call1301, 6
  %polly.access.Packed_MemRef_call1301.6 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.6
  store double %polly.access.call1432.load.6, double* %polly.access.Packed_MemRef_call1301.6, align 8
  %polly.access.add.call1431.7 = add nuw nsw i64 %polly.access.mul.call1430.7, %polly.indvar416
  %polly.access.call1432.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1431.7
  %polly.access.call1432.load.7 = load double, double* %polly.access.call1432.7, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301.7 = or i64 %polly.access.mul.Packed_MemRef_call1301, 7
  %polly.access.Packed_MemRef_call1301.7 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301.7
  store double %polly.access.call1432.load.7, double* %polly.access.Packed_MemRef_call1301.7, align 8
  br label %polly.loop_header434

polly.merge420:                                   ; preds = %polly.loop_header434
  %polly.indvar_next417 = add nuw nsw i64 %polly.indvar416, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar_next417, 1000
  br i1 %exitcond1108.not, label %polly.loop_header463.preheader, label %polly.loop_header413

polly.loop_header463.preheader:                   ; preds = %polly.merge420, %polly.loop_header413.us977, %polly.merge420.us
  %181 = sub nsw i64 %157, %175
  %182 = icmp sgt i64 %181, 0
  %183 = select i1 %182, i64 %181, i64 0
  %polly.loop_guard473 = icmp slt i64 %183, 100
  br i1 %polly.loop_guard473, label %polly.loop_header463.us, label %polly.loop_exit465

polly.loop_header463.us:                          ; preds = %polly.loop_header463.preheader, %polly.loop_exit472.loopexit.us
  %polly.indvar466.us = phi i64 [ %polly.indvar_next467.us, %polly.loop_exit472.loopexit.us ], [ 0, %polly.loop_header463.preheader ]
  %184 = shl nuw nsw i64 %polly.indvar466.us, 3
  %scevgep489.us = getelementptr i8, i8* %call2, i64 %184
  %polly.access.mul.Packed_MemRef_call1301485.us = mul nuw nsw i64 %polly.indvar466.us, 1200
  br label %polly.loop_header470.us

polly.loop_header470.us:                          ; preds = %polly.loop_exit480.us, %polly.loop_header463.us
  %indvars.iv1129 = phi i64 [ %indvars.iv.next1130, %polly.loop_exit480.us ], [ %173, %polly.loop_header463.us ]
  %polly.indvar474.us = phi i64 [ %polly.indvar_next475.us, %polly.loop_exit480.us ], [ %183, %polly.loop_header463.us ]
  %smin1131 = call i64 @llvm.smin.i64(i64 %indvars.iv1129, i64 7)
  %185 = add nuw i64 %polly.indvar474.us, %175
  %186 = add i64 %185, %158
  %polly.loop_guard481.us1205 = icmp sgt i64 %186, -1
  br i1 %polly.loop_guard481.us1205, label %polly.loop_header478.preheader.us, label %polly.loop_exit480.us

polly.loop_header478.us:                          ; preds = %polly.loop_header478.preheader.us, %polly.loop_header478.us
  %polly.indvar482.us = phi i64 [ %polly.indvar_next483.us, %polly.loop_header478.us ], [ 0, %polly.loop_header478.preheader.us ]
  %187 = add nuw nsw i64 %polly.indvar482.us, %157
  %polly.access.add.Packed_MemRef_call1301486.us = add nuw nsw i64 %polly.indvar482.us, %polly.access.mul.Packed_MemRef_call1301485.us
  %polly.access.Packed_MemRef_call1301487.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call1301487.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_492.us, %_p_scalar_488.us
  %188 = mul nuw nsw i64 %187, 8000
  %scevgep494.us = getelementptr i8, i8* %scevgep489.us, i64 %188
  %scevgep494495.us = bitcast i8* %scevgep494.us to double*
  %_p_scalar_496.us = load double, double* %scevgep494495.us, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.us = fmul fast double %_p_scalar_500.us, %_p_scalar_496.us
  %189 = shl i64 %187, 3
  %190 = add i64 %189, %192
  %scevgep501.us = getelementptr i8, i8* %call, i64 %190
  %scevgep501502.us = bitcast i8* %scevgep501.us to double*
  %_p_scalar_503.us = load double, double* %scevgep501502.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_503.us
  store double %p_add42.i79.us, double* %scevgep501502.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next483.us = add nuw nsw i64 %polly.indvar482.us, 1
  %exitcond1132.not = icmp eq i64 %polly.indvar482.us, %smin1131
  br i1 %exitcond1132.not, label %polly.loop_exit480.us, label %polly.loop_header478.us

polly.loop_exit480.us:                            ; preds = %polly.loop_header478.us, %polly.loop_header470.us
  %polly.indvar_next475.us = add nuw nsw i64 %polly.indvar474.us, 1
  %polly.loop_cond476.us = icmp ult i64 %polly.indvar474.us, 99
  %indvars.iv.next1130 = add i64 %indvars.iv1129, 1
  br i1 %polly.loop_cond476.us, label %polly.loop_header470.us, label %polly.loop_exit472.loopexit.us

polly.loop_header478.preheader.us:                ; preds = %polly.loop_header470.us
  %191 = mul i64 %185, 8000
  %scevgep490.us = getelementptr i8, i8* %scevgep489.us, i64 %191
  %scevgep490491.us = bitcast i8* %scevgep490.us to double*
  %_p_scalar_492.us = load double, double* %scevgep490491.us, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1301498.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1301485.us, %186
  %polly.access.Packed_MemRef_call1301499.us = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call1301499.us, align 8
  %192 = mul i64 %185, 9600
  br label %polly.loop_header478.us

polly.loop_exit472.loopexit.us:                   ; preds = %polly.loop_exit480.us
  %polly.indvar_next467.us = add nuw nsw i64 %polly.indvar466.us, 1
  %exitcond1133.not = icmp eq i64 %polly.indvar_next467.us, 1000
  br i1 %exitcond1133.not, label %polly.loop_exit465, label %polly.loop_header463.us

polly.loop_header434:                             ; preds = %polly.loop_header413, %polly.loop_header434
  %polly.indvar438 = phi i64 [ %polly.indvar_next439, %polly.loop_header434 ], [ %178, %polly.loop_header413 ]
  %193 = add nuw nsw i64 %polly.indvar438, %157
  %polly.access.mul.call1442 = mul nsw i64 %193, 1000
  %polly.access.add.call1443 = add nuw nsw i64 %polly.access.mul.call1442, %polly.indvar416
  %polly.access.call1444 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1443
  %polly.access.call1444.load = load double, double* %polly.access.call1444, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1301446 = add nuw nsw i64 %polly.indvar438, %polly.access.mul.Packed_MemRef_call1301
  %polly.access.Packed_MemRef_call1301447 = getelementptr double, double* %Packed_MemRef_call1301, i64 %polly.access.add.Packed_MemRef_call1301446
  store double %polly.access.call1444.load, double* %polly.access.Packed_MemRef_call1301447, align 8
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %polly.loop_cond440.not.not = icmp slt i64 %polly.indvar438, %179
  br i1 %polly.loop_cond440.not.not, label %polly.loop_header434, label %polly.merge420

polly.start506:                                   ; preds = %init_array.exit
  %malloccall508 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header592

polly.exiting507:                                 ; preds = %polly.loop_exit617
  tail call void @free(i8* %malloccall508)
  br label %kernel_syr2k.exit

polly.loop_header592:                             ; preds = %polly.loop_exit600, %polly.start506
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit600 ], [ 0, %polly.start506 ]
  %polly.indvar595 = phi i64 [ %polly.indvar_next596, %polly.loop_exit600 ], [ 1, %polly.start506 ]
  %194 = add i64 %indvar, 1
  %195 = mul nuw nsw i64 %polly.indvar595, 9600
  %scevgep604 = getelementptr i8, i8* %call, i64 %195
  %min.iters.check1302 = icmp ult i64 %194, 4
  br i1 %min.iters.check1302, label %polly.loop_header598.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %polly.loop_header592
  %n.vec1305 = and i64 %194, -4
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1301 ]
  %196 = shl nuw nsw i64 %index1306, 3
  %197 = getelementptr i8, i8* %scevgep604, i64 %196
  %198 = bitcast i8* %197 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %198, align 8, !alias.scope !89, !noalias !91
  %199 = fmul fast <4 x double> %wide.load1310, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %200 = bitcast i8* %197 to <4 x double>*
  store <4 x double> %199, <4 x double>* %200, align 8, !alias.scope !89, !noalias !91
  %index.next1307 = add i64 %index1306, 4
  %201 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %201, label %middle.block1299, label %vector.body1301, !llvm.loop !95

middle.block1299:                                 ; preds = %vector.body1301
  %cmp.n1309 = icmp eq i64 %194, %n.vec1305
  br i1 %cmp.n1309, label %polly.loop_exit600, label %polly.loop_header598.preheader

polly.loop_header598.preheader:                   ; preds = %polly.loop_header592, %middle.block1299
  %polly.indvar601.ph = phi i64 [ 0, %polly.loop_header592 ], [ %n.vec1305, %middle.block1299 ]
  br label %polly.loop_header598

polly.loop_exit600:                               ; preds = %polly.loop_header598, %middle.block1299
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %exitcond1166.not = icmp eq i64 %polly.indvar_next596, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1166.not, label %polly.loop_header608.preheader, label %polly.loop_header592

polly.loop_header608.preheader:                   ; preds = %polly.loop_exit600
  %Packed_MemRef_call1509 = bitcast i8* %malloccall508 to double*
  br label %polly.loop_header608

polly.loop_header598:                             ; preds = %polly.loop_header598.preheader, %polly.loop_header598
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_header598 ], [ %polly.indvar601.ph, %polly.loop_header598.preheader ]
  %202 = shl nuw nsw i64 %polly.indvar601, 3
  %scevgep605 = getelementptr i8, i8* %scevgep604, i64 %202
  %scevgep605606 = bitcast i8* %scevgep605 to double*
  %_p_scalar_607 = load double, double* %scevgep605606, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_607, 1.200000e+00
  store double %p_mul.i, double* %scevgep605606, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1165.not = icmp eq i64 %polly.indvar_next602, %polly.indvar595
  br i1 %exitcond1165.not, label %polly.loop_exit600, label %polly.loop_header598, !llvm.loop !96

polly.loop_header608:                             ; preds = %polly.loop_header608.preheader, %polly.loop_exit617
  %indvars.iv1155 = phi i64 [ 0, %polly.loop_header608.preheader ], [ %indvars.iv.next1156, %polly.loop_exit617 ]
  %indvars.iv1150 = phi i64 [ 0, %polly.loop_header608.preheader ], [ %indvars.iv.next1151, %polly.loop_exit617 ]
  %indvars.iv1143 = phi i64 [ 0, %polly.loop_header608.preheader ], [ %indvars.iv.next1144, %polly.loop_exit617 ]
  %indvars.iv1141 = phi i64 [ 99, %polly.loop_header608.preheader ], [ %indvars.iv.next1142, %polly.loop_exit617 ]
  %polly.indvar611 = phi i64 [ 0, %polly.loop_header608.preheader ], [ %polly.indvar_next612, %polly.loop_exit617 ]
  %203 = udiv i64 %indvars.iv1143, 25
  %204 = mul nuw nsw i64 %203, 100
  %205 = sub nsw i64 %indvars.iv1150, %204
  %206 = add i64 %indvars.iv1155, %204
  %207 = add i64 %indvars.iv1141, %204
  %208 = shl nuw nsw i64 %polly.indvar611, 1
  %pexp.p_div_q614.lhs.trunc = trunc i64 %208 to i16
  %pexp.p_div_q614920 = udiv i16 %pexp.p_div_q614.lhs.trunc, 25
  %pexp.p_div_q614.zext = zext i16 %pexp.p_div_q614920 to i64
  %209 = or i64 %208, 1
  %210 = shl nsw i64 %polly.indvar611, 3
  %211 = mul nsw i64 %polly.indvar611, -8
  %polly.access.mul.call1638 = mul nsw i64 %polly.indvar611, 8000
  %212 = or i64 %210, 1
  %polly.access.mul.call1638.1 = mul nuw nsw i64 %212, 1000
  %213 = or i64 %210, 2
  %polly.access.mul.call1638.2 = mul nuw nsw i64 %213, 1000
  %214 = or i64 %210, 3
  %polly.access.mul.call1638.3 = mul nuw nsw i64 %214, 1000
  %215 = or i64 %210, 4
  %polly.access.mul.call1638.4 = mul nuw nsw i64 %215, 1000
  %216 = or i64 %210, 5
  %polly.access.mul.call1638.5 = mul nuw nsw i64 %216, 1000
  %217 = or i64 %210, 6
  %polly.access.mul.call1638.6 = mul nuw nsw i64 %217, 1000
  %218 = or i64 %210, 7
  %polly.access.mul.call1638.7 = mul nuw nsw i64 %218, 1000
  %polly.access.mul.call1638.us1027 = mul nsw i64 %polly.indvar611, 8000
  %219 = or i64 %210, 1
  %polly.access.mul.call1638.us1027.1 = mul nuw nsw i64 %219, 1000
  %220 = or i64 %210, 2
  %polly.access.mul.call1638.us1027.2 = mul nuw nsw i64 %220, 1000
  %221 = or i64 %210, 3
  %polly.access.mul.call1638.us1027.3 = mul nuw nsw i64 %221, 1000
  %222 = or i64 %210, 4
  %polly.access.mul.call1638.us1027.4 = mul nuw nsw i64 %222, 1000
  %223 = or i64 %210, 5
  %polly.access.mul.call1638.us1027.5 = mul nuw nsw i64 %223, 1000
  %224 = or i64 %210, 6
  %polly.access.mul.call1638.us1027.6 = mul nuw nsw i64 %224, 1000
  %225 = or i64 %210, 7
  %polly.access.mul.call1638.us1027.7 = mul nuw nsw i64 %225, 1000
  br label %polly.loop_header615

polly.loop_exit617:                               ; preds = %polly.loop_exit673
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %indvars.iv.next1142 = add nsw i64 %indvars.iv1141, -8
  %indvars.iv.next1144 = add nuw nsw i64 %indvars.iv1143, 2
  %indvars.iv.next1151 = add nuw nsw i64 %indvars.iv1150, 8
  %indvars.iv.next1156 = add nsw i64 %indvars.iv1155, -8
  %exitcond1164.not = icmp eq i64 %polly.indvar_next612, 150
  br i1 %exitcond1164.not, label %polly.exiting507, label %polly.loop_header608

polly.loop_header615:                             ; preds = %polly.loop_exit673, %polly.loop_header608
  %indvars.iv1157 = phi i64 [ %indvars.iv.next1158, %polly.loop_exit673 ], [ %206, %polly.loop_header608 ]
  %indvars.iv1152 = phi i64 [ %indvars.iv.next1153, %polly.loop_exit673 ], [ %205, %polly.loop_header608 ]
  %indvars.iv1145 = phi i64 [ %indvars.iv.next1146, %polly.loop_exit673 ], [ %207, %polly.loop_header608 ]
  %polly.indvar618 = phi i64 [ %polly.indvar_next619, %polly.loop_exit673 ], [ %pexp.p_div_q614.zext, %polly.loop_header608 ]
  %smax1154 = call i64 @llvm.smax.i64(i64 %indvars.iv1152, i64 0)
  %226 = add i64 %smax1154, %indvars.iv1157
  %smax1147 = call i64 @llvm.smax.i64(i64 %indvars.iv1145, i64 0)
  %227 = mul nuw nsw i64 %polly.indvar618, 25
  %.not919 = icmp ult i64 %227, %209
  %228 = mul nuw nsw i64 %polly.indvar618, 100
  %229 = add nsw i64 %228, %211
  %230 = icmp sgt i64 %229, 8
  %231 = select i1 %230, i64 %229, i64 8
  %232 = add nsw i64 %229, 99
  %polly.loop_guard660 = icmp sgt i64 %229, -100
  br i1 %.not919, label %polly.loop_header621.us, label %polly.loop_header615.split

polly.loop_header621.us:                          ; preds = %polly.loop_header615, %polly.merge628.us
  %polly.indvar624.us = phi i64 [ %polly.indvar_next625.us, %polly.merge628.us ], [ 0, %polly.loop_header615 ]
  br i1 %polly.loop_guard660, label %polly.loop_header657.preheader.us, label %polly.merge628.us

polly.loop_header657.us:                          ; preds = %polly.loop_header657.preheader.us, %polly.loop_header657.us
  %polly.indvar661.us = phi i64 [ %polly.indvar_next662.us, %polly.loop_header657.us ], [ 0, %polly.loop_header657.preheader.us ]
  %233 = add nuw nsw i64 %polly.indvar661.us, %210
  %polly.access.mul.call1665.us = mul nuw nsw i64 %233, 1000
  %polly.access.add.call1666.us = add nuw nsw i64 %polly.access.mul.call1665.us, %polly.indvar624.us
  %polly.access.call1667.us = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1666.us
  %polly.access.call1667.load.us = load double, double* %polly.access.call1667.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509669.us = add nuw nsw i64 %polly.indvar661.us, %polly.access.mul.Packed_MemRef_call1509668.us
  %polly.access.Packed_MemRef_call1509670.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509669.us
  store double %polly.access.call1667.load.us, double* %polly.access.Packed_MemRef_call1509670.us, align 8
  %polly.indvar_next662.us = add nuw nsw i64 %polly.indvar661.us, 1
  %exitcond1148.not = icmp eq i64 %polly.indvar661.us, %smax1147
  br i1 %exitcond1148.not, label %polly.merge628.us, label %polly.loop_header657.us

polly.merge628.us:                                ; preds = %polly.loop_header657.us, %polly.loop_header621.us
  %polly.indvar_next625.us = add nuw nsw i64 %polly.indvar624.us, 1
  %exitcond1149.not = icmp eq i64 %polly.indvar_next625.us, 1000
  br i1 %exitcond1149.not, label %polly.loop_header671.preheader, label %polly.loop_header621.us

polly.loop_header657.preheader.us:                ; preds = %polly.loop_header621.us
  %polly.access.mul.Packed_MemRef_call1509668.us = mul nuw nsw i64 %polly.indvar624.us, 1200
  br label %polly.loop_header657.us

polly.loop_header615.split:                       ; preds = %polly.loop_header615
  %polly.loop_guard645.not = icmp sgt i64 %231, %232
  br i1 %polly.loop_guard645.not, label %polly.loop_header621.us1023, label %polly.loop_header621

polly.loop_header621.us1023:                      ; preds = %polly.loop_header615.split, %polly.loop_header621.us1023
  %polly.indvar624.us1024 = phi i64 [ %polly.indvar_next625.us1060, %polly.loop_header621.us1023 ], [ 0, %polly.loop_header615.split ]
  %polly.access.mul.Packed_MemRef_call1509.us1068 = mul nuw nsw i64 %polly.indvar624.us1024, 1200
  %polly.access.add.call1639.us1028 = add nuw nsw i64 %polly.access.mul.call1638.us1027, %polly.indvar624.us1024
  %polly.access.call1640.us1029 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us1028
  %polly.access.call1640.load.us1030 = load double, double* %polly.access.call1640.us1029, align 8, !alias.scope !92, !noalias !97
  %polly.access.Packed_MemRef_call1509.us1032 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.mul.Packed_MemRef_call1509.us1068
  store double %polly.access.call1640.load.us1030, double* %polly.access.Packed_MemRef_call1509.us1032, align 8
  %polly.access.add.call1639.us1028.1 = add nuw nsw i64 %polly.access.mul.call1638.us1027.1, %polly.indvar624.us1024
  %polly.access.call1640.us1029.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us1028.1
  %polly.access.call1640.load.us1030.1 = load double, double* %polly.access.call1640.us1029.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us1031.1 = or i64 %polly.access.mul.Packed_MemRef_call1509.us1068, 1
  %polly.access.Packed_MemRef_call1509.us1032.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us1031.1
  store double %polly.access.call1640.load.us1030.1, double* %polly.access.Packed_MemRef_call1509.us1032.1, align 8
  %polly.access.add.call1639.us1028.2 = add nuw nsw i64 %polly.access.mul.call1638.us1027.2, %polly.indvar624.us1024
  %polly.access.call1640.us1029.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us1028.2
  %polly.access.call1640.load.us1030.2 = load double, double* %polly.access.call1640.us1029.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us1031.2 = or i64 %polly.access.mul.Packed_MemRef_call1509.us1068, 2
  %polly.access.Packed_MemRef_call1509.us1032.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us1031.2
  store double %polly.access.call1640.load.us1030.2, double* %polly.access.Packed_MemRef_call1509.us1032.2, align 8
  %polly.access.add.call1639.us1028.3 = add nuw nsw i64 %polly.access.mul.call1638.us1027.3, %polly.indvar624.us1024
  %polly.access.call1640.us1029.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us1028.3
  %polly.access.call1640.load.us1030.3 = load double, double* %polly.access.call1640.us1029.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us1031.3 = or i64 %polly.access.mul.Packed_MemRef_call1509.us1068, 3
  %polly.access.Packed_MemRef_call1509.us1032.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us1031.3
  store double %polly.access.call1640.load.us1030.3, double* %polly.access.Packed_MemRef_call1509.us1032.3, align 8
  %polly.access.add.call1639.us1028.4 = add nuw nsw i64 %polly.access.mul.call1638.us1027.4, %polly.indvar624.us1024
  %polly.access.call1640.us1029.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us1028.4
  %polly.access.call1640.load.us1030.4 = load double, double* %polly.access.call1640.us1029.4, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us1031.4 = or i64 %polly.access.mul.Packed_MemRef_call1509.us1068, 4
  %polly.access.Packed_MemRef_call1509.us1032.4 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us1031.4
  store double %polly.access.call1640.load.us1030.4, double* %polly.access.Packed_MemRef_call1509.us1032.4, align 8
  %polly.access.add.call1639.us1028.5 = add nuw nsw i64 %polly.access.mul.call1638.us1027.5, %polly.indvar624.us1024
  %polly.access.call1640.us1029.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us1028.5
  %polly.access.call1640.load.us1030.5 = load double, double* %polly.access.call1640.us1029.5, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us1031.5 = or i64 %polly.access.mul.Packed_MemRef_call1509.us1068, 5
  %polly.access.Packed_MemRef_call1509.us1032.5 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us1031.5
  store double %polly.access.call1640.load.us1030.5, double* %polly.access.Packed_MemRef_call1509.us1032.5, align 8
  %polly.access.add.call1639.us1028.6 = add nuw nsw i64 %polly.access.mul.call1638.us1027.6, %polly.indvar624.us1024
  %polly.access.call1640.us1029.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us1028.6
  %polly.access.call1640.load.us1030.6 = load double, double* %polly.access.call1640.us1029.6, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us1031.6 = or i64 %polly.access.mul.Packed_MemRef_call1509.us1068, 6
  %polly.access.Packed_MemRef_call1509.us1032.6 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us1031.6
  store double %polly.access.call1640.load.us1030.6, double* %polly.access.Packed_MemRef_call1509.us1032.6, align 8
  %polly.access.add.call1639.us1028.7 = add nuw nsw i64 %polly.access.mul.call1638.us1027.7, %polly.indvar624.us1024
  %polly.access.call1640.us1029.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.us1028.7
  %polly.access.call1640.load.us1030.7 = load double, double* %polly.access.call1640.us1029.7, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.us1031.7 = or i64 %polly.access.mul.Packed_MemRef_call1509.us1068, 7
  %polly.access.Packed_MemRef_call1509.us1032.7 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.us1031.7
  store double %polly.access.call1640.load.us1030.7, double* %polly.access.Packed_MemRef_call1509.us1032.7, align 8
  %polly.indvar_next625.us1060 = add nuw nsw i64 %polly.indvar624.us1024, 1
  %exitcond1140.not = icmp eq i64 %polly.indvar_next625.us1060, 1000
  br i1 %exitcond1140.not, label %polly.loop_header671.preheader, label %polly.loop_header621.us1023

polly.loop_exit673:                               ; preds = %polly.loop_exit680.loopexit.us, %polly.loop_header671.preheader
  %polly.indvar_next619 = add nuw nsw i64 %polly.indvar618, 1
  %polly.loop_cond620 = icmp ult i64 %polly.indvar618, 11
  %indvars.iv.next1146 = add i64 %indvars.iv1145, 100
  %indvars.iv.next1153 = add i64 %indvars.iv1152, -100
  %indvars.iv.next1158 = add i64 %indvars.iv1157, 100
  br i1 %polly.loop_cond620, label %polly.loop_header615, label %polly.loop_exit617

polly.loop_header621:                             ; preds = %polly.loop_header615.split, %polly.merge628
  %polly.indvar624 = phi i64 [ %polly.indvar_next625, %polly.merge628 ], [ 0, %polly.loop_header615.split ]
  %polly.access.mul.Packed_MemRef_call1509 = mul nuw nsw i64 %polly.indvar624, 1200
  %polly.access.add.call1639 = add nuw nsw i64 %polly.access.mul.call1638, %polly.indvar624
  %polly.access.call1640 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639
  %polly.access.call1640.load = load double, double* %polly.access.call1640, align 8, !alias.scope !92, !noalias !97
  %polly.access.Packed_MemRef_call1509 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.mul.Packed_MemRef_call1509
  store double %polly.access.call1640.load, double* %polly.access.Packed_MemRef_call1509, align 8
  %polly.access.add.call1639.1 = add nuw nsw i64 %polly.access.mul.call1638.1, %polly.indvar624
  %polly.access.call1640.1 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.1
  %polly.access.call1640.load.1 = load double, double* %polly.access.call1640.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.1 = or i64 %polly.access.mul.Packed_MemRef_call1509, 1
  %polly.access.Packed_MemRef_call1509.1 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.1
  store double %polly.access.call1640.load.1, double* %polly.access.Packed_MemRef_call1509.1, align 8
  %polly.access.add.call1639.2 = add nuw nsw i64 %polly.access.mul.call1638.2, %polly.indvar624
  %polly.access.call1640.2 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.2
  %polly.access.call1640.load.2 = load double, double* %polly.access.call1640.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.2 = or i64 %polly.access.mul.Packed_MemRef_call1509, 2
  %polly.access.Packed_MemRef_call1509.2 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.2
  store double %polly.access.call1640.load.2, double* %polly.access.Packed_MemRef_call1509.2, align 8
  %polly.access.add.call1639.3 = add nuw nsw i64 %polly.access.mul.call1638.3, %polly.indvar624
  %polly.access.call1640.3 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.3
  %polly.access.call1640.load.3 = load double, double* %polly.access.call1640.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.3 = or i64 %polly.access.mul.Packed_MemRef_call1509, 3
  %polly.access.Packed_MemRef_call1509.3 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.3
  store double %polly.access.call1640.load.3, double* %polly.access.Packed_MemRef_call1509.3, align 8
  %polly.access.add.call1639.4 = add nuw nsw i64 %polly.access.mul.call1638.4, %polly.indvar624
  %polly.access.call1640.4 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.4
  %polly.access.call1640.load.4 = load double, double* %polly.access.call1640.4, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.4 = or i64 %polly.access.mul.Packed_MemRef_call1509, 4
  %polly.access.Packed_MemRef_call1509.4 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.4
  store double %polly.access.call1640.load.4, double* %polly.access.Packed_MemRef_call1509.4, align 8
  %polly.access.add.call1639.5 = add nuw nsw i64 %polly.access.mul.call1638.5, %polly.indvar624
  %polly.access.call1640.5 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.5
  %polly.access.call1640.load.5 = load double, double* %polly.access.call1640.5, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.5 = or i64 %polly.access.mul.Packed_MemRef_call1509, 5
  %polly.access.Packed_MemRef_call1509.5 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.5
  store double %polly.access.call1640.load.5, double* %polly.access.Packed_MemRef_call1509.5, align 8
  %polly.access.add.call1639.6 = add nuw nsw i64 %polly.access.mul.call1638.6, %polly.indvar624
  %polly.access.call1640.6 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.6
  %polly.access.call1640.load.6 = load double, double* %polly.access.call1640.6, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.6 = or i64 %polly.access.mul.Packed_MemRef_call1509, 6
  %polly.access.Packed_MemRef_call1509.6 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.6
  store double %polly.access.call1640.load.6, double* %polly.access.Packed_MemRef_call1509.6, align 8
  %polly.access.add.call1639.7 = add nuw nsw i64 %polly.access.mul.call1638.7, %polly.indvar624
  %polly.access.call1640.7 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1639.7
  %polly.access.call1640.load.7 = load double, double* %polly.access.call1640.7, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509.7 = or i64 %polly.access.mul.Packed_MemRef_call1509, 7
  %polly.access.Packed_MemRef_call1509.7 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509.7
  store double %polly.access.call1640.load.7, double* %polly.access.Packed_MemRef_call1509.7, align 8
  br label %polly.loop_header642

polly.merge628:                                   ; preds = %polly.loop_header642
  %polly.indvar_next625 = add nuw nsw i64 %polly.indvar624, 1
  %exitcond1138.not = icmp eq i64 %polly.indvar_next625, 1000
  br i1 %exitcond1138.not, label %polly.loop_header671.preheader, label %polly.loop_header621

polly.loop_header671.preheader:                   ; preds = %polly.merge628, %polly.loop_header621.us1023, %polly.merge628.us
  %234 = sub nsw i64 %210, %228
  %235 = icmp sgt i64 %234, 0
  %236 = select i1 %235, i64 %234, i64 0
  %polly.loop_guard681 = icmp slt i64 %236, 100
  br i1 %polly.loop_guard681, label %polly.loop_header671.us, label %polly.loop_exit673

polly.loop_header671.us:                          ; preds = %polly.loop_header671.preheader, %polly.loop_exit680.loopexit.us
  %polly.indvar674.us = phi i64 [ %polly.indvar_next675.us, %polly.loop_exit680.loopexit.us ], [ 0, %polly.loop_header671.preheader ]
  %237 = shl nuw nsw i64 %polly.indvar674.us, 3
  %scevgep697.us = getelementptr i8, i8* %call2, i64 %237
  %polly.access.mul.Packed_MemRef_call1509693.us = mul nuw nsw i64 %polly.indvar674.us, 1200
  br label %polly.loop_header678.us

polly.loop_header678.us:                          ; preds = %polly.loop_exit688.us, %polly.loop_header671.us
  %indvars.iv1159 = phi i64 [ %indvars.iv.next1160, %polly.loop_exit688.us ], [ %226, %polly.loop_header671.us ]
  %polly.indvar682.us = phi i64 [ %polly.indvar_next683.us, %polly.loop_exit688.us ], [ %236, %polly.loop_header671.us ]
  %smin1161 = call i64 @llvm.smin.i64(i64 %indvars.iv1159, i64 7)
  %238 = add nuw i64 %polly.indvar682.us, %228
  %239 = add i64 %238, %211
  %polly.loop_guard689.us1206 = icmp sgt i64 %239, -1
  br i1 %polly.loop_guard689.us1206, label %polly.loop_header686.preheader.us, label %polly.loop_exit688.us

polly.loop_header686.us:                          ; preds = %polly.loop_header686.preheader.us, %polly.loop_header686.us
  %polly.indvar690.us = phi i64 [ %polly.indvar_next691.us, %polly.loop_header686.us ], [ 0, %polly.loop_header686.preheader.us ]
  %240 = add nuw nsw i64 %polly.indvar690.us, %210
  %polly.access.add.Packed_MemRef_call1509694.us = add nuw nsw i64 %polly.indvar690.us, %polly.access.mul.Packed_MemRef_call1509693.us
  %polly.access.Packed_MemRef_call1509695.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509694.us
  %_p_scalar_696.us = load double, double* %polly.access.Packed_MemRef_call1509695.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_700.us, %_p_scalar_696.us
  %241 = mul nuw nsw i64 %240, 8000
  %scevgep702.us = getelementptr i8, i8* %scevgep697.us, i64 %241
  %scevgep702703.us = bitcast i8* %scevgep702.us to double*
  %_p_scalar_704.us = load double, double* %scevgep702703.us, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.us = fmul fast double %_p_scalar_708.us, %_p_scalar_704.us
  %242 = shl i64 %240, 3
  %243 = add i64 %242, %245
  %scevgep709.us = getelementptr i8, i8* %call, i64 %243
  %scevgep709710.us = bitcast i8* %scevgep709.us to double*
  %_p_scalar_711.us = load double, double* %scevgep709710.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_711.us
  store double %p_add42.i.us, double* %scevgep709710.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next691.us = add nuw nsw i64 %polly.indvar690.us, 1
  %exitcond1162.not = icmp eq i64 %polly.indvar690.us, %smin1161
  br i1 %exitcond1162.not, label %polly.loop_exit688.us, label %polly.loop_header686.us

polly.loop_exit688.us:                            ; preds = %polly.loop_header686.us, %polly.loop_header678.us
  %polly.indvar_next683.us = add nuw nsw i64 %polly.indvar682.us, 1
  %polly.loop_cond684.us = icmp ult i64 %polly.indvar682.us, 99
  %indvars.iv.next1160 = add i64 %indvars.iv1159, 1
  br i1 %polly.loop_cond684.us, label %polly.loop_header678.us, label %polly.loop_exit680.loopexit.us

polly.loop_header686.preheader.us:                ; preds = %polly.loop_header678.us
  %244 = mul i64 %238, 8000
  %scevgep698.us = getelementptr i8, i8* %scevgep697.us, i64 %244
  %scevgep698699.us = bitcast i8* %scevgep698.us to double*
  %_p_scalar_700.us = load double, double* %scevgep698699.us, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1509706.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1509693.us, %239
  %polly.access.Packed_MemRef_call1509707.us = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509706.us
  %_p_scalar_708.us = load double, double* %polly.access.Packed_MemRef_call1509707.us, align 8
  %245 = mul i64 %238, 9600
  br label %polly.loop_header686.us

polly.loop_exit680.loopexit.us:                   ; preds = %polly.loop_exit688.us
  %polly.indvar_next675.us = add nuw nsw i64 %polly.indvar674.us, 1
  %exitcond1163.not = icmp eq i64 %polly.indvar_next675.us, 1000
  br i1 %exitcond1163.not, label %polly.loop_exit673, label %polly.loop_header671.us

polly.loop_header642:                             ; preds = %polly.loop_header621, %polly.loop_header642
  %polly.indvar646 = phi i64 [ %polly.indvar_next647, %polly.loop_header642 ], [ %231, %polly.loop_header621 ]
  %246 = add nuw nsw i64 %polly.indvar646, %210
  %polly.access.mul.call1650 = mul nsw i64 %246, 1000
  %polly.access.add.call1651 = add nuw nsw i64 %polly.access.mul.call1650, %polly.indvar624
  %polly.access.call1652 = getelementptr double, double* %polly.access.cast.call1716, i64 %polly.access.add.call1651
  %polly.access.call1652.load = load double, double* %polly.access.call1652, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1509654 = add nuw nsw i64 %polly.indvar646, %polly.access.mul.Packed_MemRef_call1509
  %polly.access.Packed_MemRef_call1509655 = getelementptr double, double* %Packed_MemRef_call1509, i64 %polly.access.add.Packed_MemRef_call1509654
  store double %polly.access.call1652.load, double* %polly.access.Packed_MemRef_call1509655, align 8
  %polly.indvar_next647 = add nuw nsw i64 %polly.indvar646, 1
  %polly.loop_cond648.not.not = icmp slt i64 %polly.indvar646, %232
  br i1 %polly.loop_cond648.not.not, label %polly.loop_header642, label %polly.merge628

polly.loop_header838:                             ; preds = %entry, %polly.loop_exit846
  %indvars.iv1191 = phi i64 [ %indvars.iv.next1192, %polly.loop_exit846 ], [ 0, %entry ]
  %polly.indvar841 = phi i64 [ %polly.indvar_next842, %polly.loop_exit846 ], [ 0, %entry ]
  %smin1193 = call i64 @llvm.smin.i64(i64 %indvars.iv1191, i64 -1168)
  %247 = shl nsw i64 %polly.indvar841, 5
  %248 = add nsw i64 %smin1193, 1199
  br label %polly.loop_header844

polly.loop_exit846:                               ; preds = %polly.loop_exit852
  %polly.indvar_next842 = add nuw nsw i64 %polly.indvar841, 1
  %indvars.iv.next1192 = add nsw i64 %indvars.iv1191, -32
  %exitcond1196.not = icmp eq i64 %polly.indvar_next842, 38
  br i1 %exitcond1196.not, label %polly.loop_header865, label %polly.loop_header838

polly.loop_header844:                             ; preds = %polly.loop_exit852, %polly.loop_header838
  %indvars.iv1187 = phi i64 [ %indvars.iv.next1188, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_header838 ]
  %249 = mul nsw i64 %polly.indvar847, -32
  %smin1240 = call i64 @llvm.smin.i64(i64 %249, i64 -1168)
  %250 = add nsw i64 %smin1240, 1200
  %smin1189 = call i64 @llvm.smin.i64(i64 %indvars.iv1187, i64 -1168)
  %251 = shl nsw i64 %polly.indvar847, 5
  %252 = add nsw i64 %smin1189, 1199
  br label %polly.loop_header850

polly.loop_exit852:                               ; preds = %polly.loop_exit858
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %indvars.iv.next1188 = add nsw i64 %indvars.iv1187, -32
  %exitcond1195.not = icmp eq i64 %polly.indvar_next848, 38
  br i1 %exitcond1195.not, label %polly.loop_exit846, label %polly.loop_header844

polly.loop_header850:                             ; preds = %polly.loop_exit858, %polly.loop_header844
  %polly.indvar853 = phi i64 [ 0, %polly.loop_header844 ], [ %polly.indvar_next854, %polly.loop_exit858 ]
  %253 = add nuw nsw i64 %polly.indvar853, %247
  %254 = trunc i64 %253 to i32
  %255 = mul nuw nsw i64 %253, 9600
  %min.iters.check = icmp eq i64 %250, 0
  br i1 %min.iters.check, label %polly.loop_header856, label %vector.ph1241

vector.ph1241:                                    ; preds = %polly.loop_header850
  %broadcast.splatinsert1248 = insertelement <4 x i64> poison, i64 %251, i32 0
  %broadcast.splat1249 = shufflevector <4 x i64> %broadcast.splatinsert1248, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %254, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1241
  %index1242 = phi i64 [ 0, %vector.ph1241 ], [ %index.next1243, %vector.body1239 ]
  %vec.ind1246 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1241 ], [ %vec.ind.next1247, %vector.body1239 ]
  %256 = add nuw nsw <4 x i64> %vec.ind1246, %broadcast.splat1249
  %257 = trunc <4 x i64> %256 to <4 x i32>
  %258 = mul <4 x i32> %broadcast.splat1251, %257
  %259 = add <4 x i32> %258, <i32 3, i32 3, i32 3, i32 3>
  %260 = urem <4 x i32> %259, <i32 1200, i32 1200, i32 1200, i32 1200>
  %261 = sitofp <4 x i32> %260 to <4 x double>
  %262 = fmul fast <4 x double> %261, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %263 = extractelement <4 x i64> %256, i32 0
  %264 = shl i64 %263, 3
  %265 = add nuw nsw i64 %264, %255
  %266 = getelementptr i8, i8* %call, i64 %265
  %267 = bitcast i8* %266 to <4 x double>*
  store <4 x double> %262, <4 x double>* %267, align 8, !alias.scope !99, !noalias !101
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1247 = add <4 x i64> %vec.ind1246, <i64 4, i64 4, i64 4, i64 4>
  %268 = icmp eq i64 %index.next1243, %250
  br i1 %268, label %polly.loop_exit858, label %vector.body1239, !llvm.loop !104

polly.loop_exit858:                               ; preds = %vector.body1239, %polly.loop_header856
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1194.not = icmp eq i64 %polly.indvar853, %248
  br i1 %exitcond1194.not, label %polly.loop_exit852, label %polly.loop_header850

polly.loop_header856:                             ; preds = %polly.loop_header850, %polly.loop_header856
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_header856 ], [ 0, %polly.loop_header850 ]
  %269 = add nuw nsw i64 %polly.indvar859, %251
  %270 = trunc i64 %269 to i32
  %271 = mul i32 %270, %254
  %272 = add i32 %271, 3
  %273 = urem i32 %272, 1200
  %p_conv31.i = sitofp i32 %273 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %274 = shl i64 %269, 3
  %275 = add nuw nsw i64 %274, %255
  %scevgep862 = getelementptr i8, i8* %call, i64 %275
  %scevgep862863 = bitcast i8* %scevgep862 to double*
  store double %p_div33.i, double* %scevgep862863, align 8, !alias.scope !99, !noalias !101
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1190.not = icmp eq i64 %polly.indvar859, %252
  br i1 %exitcond1190.not, label %polly.loop_exit858, label %polly.loop_header856, !llvm.loop !105

polly.loop_header865:                             ; preds = %polly.loop_exit846, %polly.loop_exit873
  %indvars.iv1181 = phi i64 [ %indvars.iv.next1182, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %polly.indvar868 = phi i64 [ %polly.indvar_next869, %polly.loop_exit873 ], [ 0, %polly.loop_exit846 ]
  %smin1183 = call i64 @llvm.smin.i64(i64 %indvars.iv1181, i64 -1168)
  %276 = shl nsw i64 %polly.indvar868, 5
  %277 = add nsw i64 %smin1183, 1199
  br label %polly.loop_header871

polly.loop_exit873:                               ; preds = %polly.loop_exit879
  %polly.indvar_next869 = add nuw nsw i64 %polly.indvar868, 1
  %indvars.iv.next1182 = add nsw i64 %indvars.iv1181, -32
  %exitcond1186.not = icmp eq i64 %polly.indvar_next869, 38
  br i1 %exitcond1186.not, label %polly.loop_header891, label %polly.loop_header865

polly.loop_header871:                             ; preds = %polly.loop_exit879, %polly.loop_header865
  %indvars.iv1177 = phi i64 [ %indvars.iv.next1178, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %polly.indvar874 = phi i64 [ %polly.indvar_next875, %polly.loop_exit879 ], [ 0, %polly.loop_header865 ]
  %278 = mul nsw i64 %polly.indvar874, -32
  %smin1255 = call i64 @llvm.smin.i64(i64 %278, i64 -968)
  %279 = add nsw i64 %smin1255, 1000
  %smin1179 = call i64 @llvm.smin.i64(i64 %indvars.iv1177, i64 -968)
  %280 = shl nsw i64 %polly.indvar874, 5
  %281 = add nsw i64 %smin1179, 999
  br label %polly.loop_header877

polly.loop_exit879:                               ; preds = %polly.loop_exit885
  %polly.indvar_next875 = add nuw nsw i64 %polly.indvar874, 1
  %indvars.iv.next1178 = add nsw i64 %indvars.iv1177, -32
  %exitcond1185.not = icmp eq i64 %polly.indvar_next875, 32
  br i1 %exitcond1185.not, label %polly.loop_exit873, label %polly.loop_header871

polly.loop_header877:                             ; preds = %polly.loop_exit885, %polly.loop_header871
  %polly.indvar880 = phi i64 [ 0, %polly.loop_header871 ], [ %polly.indvar_next881, %polly.loop_exit885 ]
  %282 = add nuw nsw i64 %polly.indvar880, %276
  %283 = trunc i64 %282 to i32
  %284 = mul nuw nsw i64 %282, 8000
  %min.iters.check1256 = icmp eq i64 %279, 0
  br i1 %min.iters.check1256, label %polly.loop_header883, label %vector.ph1257

vector.ph1257:                                    ; preds = %polly.loop_header877
  %broadcast.splatinsert1266 = insertelement <4 x i64> poison, i64 %280, i32 0
  %broadcast.splat1267 = shufflevector <4 x i64> %broadcast.splatinsert1266, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %283, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1257
  %index1260 = phi i64 [ 0, %vector.ph1257 ], [ %index.next1261, %vector.body1254 ]
  %vec.ind1264 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1257 ], [ %vec.ind.next1265, %vector.body1254 ]
  %285 = add nuw nsw <4 x i64> %vec.ind1264, %broadcast.splat1267
  %286 = trunc <4 x i64> %285 to <4 x i32>
  %287 = mul <4 x i32> %broadcast.splat1269, %286
  %288 = add <4 x i32> %287, <i32 2, i32 2, i32 2, i32 2>
  %289 = urem <4 x i32> %288, <i32 1000, i32 1000, i32 1000, i32 1000>
  %290 = sitofp <4 x i32> %289 to <4 x double>
  %291 = fmul fast <4 x double> %290, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %292 = extractelement <4 x i64> %285, i32 0
  %293 = shl i64 %292, 3
  %294 = add nuw nsw i64 %293, %284
  %295 = getelementptr i8, i8* %call2, i64 %294
  %296 = bitcast i8* %295 to <4 x double>*
  store <4 x double> %291, <4 x double>* %296, align 8, !alias.scope !103, !noalias !106
  %index.next1261 = add i64 %index1260, 4
  %vec.ind.next1265 = add <4 x i64> %vec.ind1264, <i64 4, i64 4, i64 4, i64 4>
  %297 = icmp eq i64 %index.next1261, %279
  br i1 %297, label %polly.loop_exit885, label %vector.body1254, !llvm.loop !107

polly.loop_exit885:                               ; preds = %vector.body1254, %polly.loop_header883
  %polly.indvar_next881 = add nuw nsw i64 %polly.indvar880, 1
  %exitcond1184.not = icmp eq i64 %polly.indvar880, %277
  br i1 %exitcond1184.not, label %polly.loop_exit879, label %polly.loop_header877

polly.loop_header883:                             ; preds = %polly.loop_header877, %polly.loop_header883
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_header883 ], [ 0, %polly.loop_header877 ]
  %298 = add nuw nsw i64 %polly.indvar886, %280
  %299 = trunc i64 %298 to i32
  %300 = mul i32 %299, %283
  %301 = add i32 %300, 2
  %302 = urem i32 %301, 1000
  %p_conv10.i = sitofp i32 %302 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %303 = shl i64 %298, 3
  %304 = add nuw nsw i64 %303, %284
  %scevgep889 = getelementptr i8, i8* %call2, i64 %304
  %scevgep889890 = bitcast i8* %scevgep889 to double*
  store double %p_div12.i, double* %scevgep889890, align 8, !alias.scope !103, !noalias !106
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1180.not = icmp eq i64 %polly.indvar886, %281
  br i1 %exitcond1180.not, label %polly.loop_exit885, label %polly.loop_header883, !llvm.loop !108

polly.loop_header891:                             ; preds = %polly.loop_exit873, %polly.loop_exit899
  %indvars.iv1171 = phi i64 [ %indvars.iv.next1172, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %polly.indvar894 = phi i64 [ %polly.indvar_next895, %polly.loop_exit899 ], [ 0, %polly.loop_exit873 ]
  %smin1173 = call i64 @llvm.smin.i64(i64 %indvars.iv1171, i64 -1168)
  %305 = shl nsw i64 %polly.indvar894, 5
  %306 = add nsw i64 %smin1173, 1199
  br label %polly.loop_header897

polly.loop_exit899:                               ; preds = %polly.loop_exit905
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %indvars.iv.next1172 = add nsw i64 %indvars.iv1171, -32
  %exitcond1176.not = icmp eq i64 %polly.indvar_next895, 38
  br i1 %exitcond1176.not, label %init_array.exit, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_exit905, %polly.loop_header891
  %indvars.iv1167 = phi i64 [ %indvars.iv.next1168, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_exit905 ], [ 0, %polly.loop_header891 ]
  %307 = mul nsw i64 %polly.indvar900, -32
  %smin1273 = call i64 @llvm.smin.i64(i64 %307, i64 -968)
  %308 = add nsw i64 %smin1273, 1000
  %smin1169 = call i64 @llvm.smin.i64(i64 %indvars.iv1167, i64 -968)
  %309 = shl nsw i64 %polly.indvar900, 5
  %310 = add nsw i64 %smin1169, 999
  br label %polly.loop_header903

polly.loop_exit905:                               ; preds = %polly.loop_exit911
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %indvars.iv.next1168 = add nsw i64 %indvars.iv1167, -32
  %exitcond1175.not = icmp eq i64 %polly.indvar_next901, 32
  br i1 %exitcond1175.not, label %polly.loop_exit899, label %polly.loop_header897

polly.loop_header903:                             ; preds = %polly.loop_exit911, %polly.loop_header897
  %polly.indvar906 = phi i64 [ 0, %polly.loop_header897 ], [ %polly.indvar_next907, %polly.loop_exit911 ]
  %311 = add nuw nsw i64 %polly.indvar906, %305
  %312 = trunc i64 %311 to i32
  %313 = mul nuw nsw i64 %311, 8000
  %min.iters.check1274 = icmp eq i64 %308, 0
  br i1 %min.iters.check1274, label %polly.loop_header909, label %vector.ph1275

vector.ph1275:                                    ; preds = %polly.loop_header903
  %broadcast.splatinsert1284 = insertelement <4 x i64> poison, i64 %309, i32 0
  %broadcast.splat1285 = shufflevector <4 x i64> %broadcast.splatinsert1284, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1286 = insertelement <4 x i32> poison, i32 %312, i32 0
  %broadcast.splat1287 = shufflevector <4 x i32> %broadcast.splatinsert1286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %vector.ph1275
  %index1278 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1279, %vector.body1272 ]
  %vec.ind1282 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1275 ], [ %vec.ind.next1283, %vector.body1272 ]
  %314 = add nuw nsw <4 x i64> %vec.ind1282, %broadcast.splat1285
  %315 = trunc <4 x i64> %314 to <4 x i32>
  %316 = mul <4 x i32> %broadcast.splat1287, %315
  %317 = add <4 x i32> %316, <i32 1, i32 1, i32 1, i32 1>
  %318 = urem <4 x i32> %317, <i32 1200, i32 1200, i32 1200, i32 1200>
  %319 = sitofp <4 x i32> %318 to <4 x double>
  %320 = fmul fast <4 x double> %319, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %321 = extractelement <4 x i64> %314, i32 0
  %322 = shl i64 %321, 3
  %323 = add nuw nsw i64 %322, %313
  %324 = getelementptr i8, i8* %call1, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %320, <4 x double>* %325, align 8, !alias.scope !102, !noalias !109
  %index.next1279 = add i64 %index1278, 4
  %vec.ind.next1283 = add <4 x i64> %vec.ind1282, <i64 4, i64 4, i64 4, i64 4>
  %326 = icmp eq i64 %index.next1279, %308
  br i1 %326, label %polly.loop_exit911, label %vector.body1272, !llvm.loop !110

polly.loop_exit911:                               ; preds = %vector.body1272, %polly.loop_header909
  %polly.indvar_next907 = add nuw nsw i64 %polly.indvar906, 1
  %exitcond1174.not = icmp eq i64 %polly.indvar906, %306
  br i1 %exitcond1174.not, label %polly.loop_exit905, label %polly.loop_header903

polly.loop_header909:                             ; preds = %polly.loop_header903, %polly.loop_header909
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_header909 ], [ 0, %polly.loop_header903 ]
  %327 = add nuw nsw i64 %polly.indvar912, %309
  %328 = trunc i64 %327 to i32
  %329 = mul i32 %328, %312
  %330 = add i32 %329, 1
  %331 = urem i32 %330, 1200
  %p_conv.i = sitofp i32 %331 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %332 = shl i64 %327, 3
  %333 = add nuw nsw i64 %332, %313
  %scevgep916 = getelementptr i8, i8* %call1, i64 %333
  %scevgep916917 = bitcast i8* %scevgep916 to double*
  store double %p_div.i, double* %scevgep916917, align 8, !alias.scope !102, !noalias !109
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1170.not = icmp eq i64 %polly.indvar912, %310
  br i1 %exitcond1170.not, label %polly.loop_exit911, label %polly.loop_header909, !llvm.loop !111
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
!34 = !{!"llvm.loop.tile.size", i32 2048}
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
!50 = !{!"llvm.loop.tile.size", i32 100}
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
