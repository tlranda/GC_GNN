; ModuleID = 'syr2k_recreations//mmp_syr2k_S_32.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_32.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #6
  %call811 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1663 = bitcast i8* %call1 to double*
  %polly.access.call1672 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1672, %call2
  %polly.access.call2692 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2692, %call1
  %2 = or i1 %0, %1
  %polly.access.call712 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call712, %call2
  %4 = icmp ule i8* %polly.access.call2692, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call712, %call1
  %8 = icmp ule i8* %polly.access.call1672, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header797, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1007 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1006 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1005 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1004 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1004, %scevgep1007
  %bound1 = icmp ult i8* %scevgep1006, %scevgep1005
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
  %16 = urem <4 x i32> %15, <i32 80, i32 80, i32 80, i32 80>
  %17 = sitofp <4 x i32> %16 to <4 x double>
  %18 = fmul fast <4 x double> %17, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %19 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %index
  %20 = bitcast double* %19 to <4 x double>*
  store <4 x double> %18, <4 x double>* %20, align 8, !tbaa !2, !alias.scope !6, !noalias !9
  %21 = add <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %22 = urem <4 x i32> %21, <i32 60, i32 60, i32 60, i32 60>
  %23 = sitofp <4 x i32> %22 to <4 x double>
  %24 = fmul fast <4 x double> %23, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %25 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %index
  %26 = bitcast double* %25 to <4 x double>*
  store <4 x double> %24, <4 x double>* %26, align 8, !tbaa !2, !alias.scope !9
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %index.next, 60
  br i1 %27, label %for.inc17.i, label %vector.body, !llvm.loop !11

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %28 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv16.i
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %rem.i = urem i32 %30, 80
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fmul fast double %conv.i, 1.250000e-02
  %arrayidx6.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %31 = add i32 %29, 2
  %rem9.i = urem i32 %31, 60
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fmul fast double %conv10.i, 0x3F91111111111111
  %arrayidx16.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 60
  br i1 %exitcond15.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !14

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 80
  br i1 %exitcond18.not.i, label %vector.ph1011, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1011:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1018 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1019 = shufflevector <4 x i64> %broadcast.splatinsert1018, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1011
  %index1012 = phi i64 [ 0, %vector.ph1011 ], [ %index.next1013, %vector.body1010 ]
  %vec.ind1016 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1011 ], [ %vec.ind.next1017, %vector.body1010 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1016, %broadcast.splat1019
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv7.i, i64 %index1012
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1013 = add i64 %index1012, 4
  %vec.ind.next1017 = add <4 x i64> %vec.ind1016, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1013, 80
  br i1 %40, label %for.inc41.i, label %vector.body1010, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1010
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1011, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit858.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start471, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1367, label %vector.ph1293

vector.ph1293:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %vector.ph1293
  %index1294 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1295, %vector.body1292 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i, i64 %index1294
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1295 = add i64 %index1294, 4
  %46 = icmp eq i64 %index.next1295, %n.vec
  br i1 %46, label %middle.block1290, label %vector.body1292, !llvm.loop !18

middle.block1290:                                 ; preds = %vector.body1292
  %cmp.n1297 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1297, label %for.inc6.i, label %for.body3.i46.preheader1367

for.body3.i46.preheader1367:                      ; preds = %for.body3.i46.preheader, %middle.block1290
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1290 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1367, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1367 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1290, %for.cond1.preheader.i45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 80
  br i1 %exitcond23.not.i, label %for.cond12.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !20

for.cond12.preheader.i:                           ; preds = %for.inc6.i, %for.inc49.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc49.i ], [ 0, %for.inc6.i ]
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.inc49.i ], [ 1, %for.inc6.i ]
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc46.i, %for.cond12.preheader.i
  %indvars.iv10.i47 = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next11.i51, %for.inc46.i ]
  %arrayidx26.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  %arrayidx36.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond15.preheader.i
  %indvars.iv.i48 = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next.i49, %for.body17.i ]
  %arrayidx21.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !32

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !46

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit581.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start281, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1313 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1313, label %for.body3.i60.preheader1365, label %vector.ph1314

vector.ph1314:                                    ; preds = %for.body3.i60.preheader
  %n.vec1316 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1314
  %index1317 = phi i64 [ 0, %vector.ph1314 ], [ %index.next1318, %vector.body1312 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i52, i64 %index1317
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1321 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1321, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1318 = add i64 %index1317, 4
  %57 = icmp eq i64 %index.next1318, %n.vec1316
  br i1 %57, label %middle.block1310, label %vector.body1312, !llvm.loop !60

middle.block1310:                                 ; preds = %vector.body1312
  %cmp.n1320 = icmp eq i64 %indvars.iv21.i52, %n.vec1316
  br i1 %cmp.n1320, label %for.inc6.i63, label %for.body3.i60.preheader1365

for.body3.i60.preheader1365:                      ; preds = %for.body3.i60.preheader, %middle.block1310
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1316, %middle.block1310 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1365, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1365 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1310, %for.cond1.preheader.i54
  %indvars.iv.next22.i61 = add nuw nsw i64 %indvars.iv21.i52, 1
  %exitcond23.not.i62 = icmp eq i64 %indvars.iv.next22.i61, 80
  br i1 %exitcond23.not.i62, label %for.cond12.preheader.i66, label %for.cond1.preheader.i54, !llvm.loop !20

for.cond12.preheader.i66:                         ; preds = %for.inc6.i63, %for.inc49.i89
  %indvars.iv15.i64 = phi i64 [ %indvars.iv.next16.i86, %for.inc49.i89 ], [ 0, %for.inc6.i63 ]
  %indvars.iv13.i65 = phi i64 [ %indvars.iv.next14.i87, %for.inc49.i89 ], [ 1, %for.inc6.i63 ]
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.inc46.i85, %for.cond12.preheader.i66
  %indvars.iv10.i67 = phi i64 [ 0, %for.cond12.preheader.i66 ], [ %indvars.iv.next11.i83, %for.inc46.i85 ]
  %arrayidx26.i68 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  %arrayidx36.i69 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  br label %for.body17.i82

for.body17.i82:                                   ; preds = %for.body17.i82, %for.cond15.preheader.i70
  %indvars.iv.i71 = phi i64 [ 0, %for.cond15.preheader.i70 ], [ %indvars.iv.next.i80, %for.body17.i82 ]
  %arrayidx21.i72 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !32

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !46

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit391.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1339 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1339, label %for.body3.i99.preheader1363, label %vector.ph1340

vector.ph1340:                                    ; preds = %for.body3.i99.preheader
  %n.vec1342 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1338

vector.body1338:                                  ; preds = %vector.body1338, %vector.ph1340
  %index1343 = phi i64 [ 0, %vector.ph1340 ], [ %index.next1344, %vector.body1338 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i91, i64 %index1343
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1347 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1347, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1344 = add i64 %index1343, 4
  %68 = icmp eq i64 %index.next1344, %n.vec1342
  br i1 %68, label %middle.block1336, label %vector.body1338, !llvm.loop !62

middle.block1336:                                 ; preds = %vector.body1338
  %cmp.n1346 = icmp eq i64 %indvars.iv21.i91, %n.vec1342
  br i1 %cmp.n1346, label %for.inc6.i102, label %for.body3.i99.preheader1363

for.body3.i99.preheader1363:                      ; preds = %for.body3.i99.preheader, %middle.block1336
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1342, %middle.block1336 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1363, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1363 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1336, %for.cond1.preheader.i93
  %indvars.iv.next22.i100 = add nuw nsw i64 %indvars.iv21.i91, 1
  %exitcond23.not.i101 = icmp eq i64 %indvars.iv.next22.i100, 80
  br i1 %exitcond23.not.i101, label %for.cond12.preheader.i105, label %for.cond1.preheader.i93, !llvm.loop !20

for.cond12.preheader.i105:                        ; preds = %for.inc6.i102, %for.inc49.i128
  %indvars.iv15.i103 = phi i64 [ %indvars.iv.next16.i125, %for.inc49.i128 ], [ 0, %for.inc6.i102 ]
  %indvars.iv13.i104 = phi i64 [ %indvars.iv.next14.i126, %for.inc49.i128 ], [ 1, %for.inc6.i102 ]
  br label %for.cond15.preheader.i109

for.cond15.preheader.i109:                        ; preds = %for.inc46.i124, %for.cond12.preheader.i105
  %indvars.iv10.i106 = phi i64 [ 0, %for.cond12.preheader.i105 ], [ %indvars.iv.next11.i122, %for.inc46.i124 ]
  %arrayidx26.i107 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  %arrayidx36.i108 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  br label %for.body17.i121

for.body17.i121:                                  ; preds = %for.body17.i121, %for.cond15.preheader.i109
  %indvars.iv.i110 = phi i64 [ 0, %for.cond15.preheader.i109 ], [ %indvars.iv.next.i119, %for.body17.i121 ]
  %arrayidx21.i111 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay3, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !32

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !46

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207.1
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
  %79 = mul nuw nsw i64 %indvars.iv4.i, 80
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !66

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1351 = phi i64 [ %indvar.next1352, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1351, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1353 = icmp ult i64 %88, 4
  br i1 %min.iters.check1353, label %polly.loop_header191.preheader, label %vector.ph1354

vector.ph1354:                                    ; preds = %polly.loop_header
  %n.vec1356 = and i64 %88, -4
  br label %vector.body1350

vector.body1350:                                  ; preds = %vector.body1350, %vector.ph1354
  %index1357 = phi i64 [ 0, %vector.ph1354 ], [ %index.next1358, %vector.body1350 ]
  %90 = shl nuw nsw i64 %index1357, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1361 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1361, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1358 = add i64 %index1357, 4
  %95 = icmp eq i64 %index.next1358, %n.vec1356
  br i1 %95, label %middle.block1348, label %vector.body1350, !llvm.loop !74

middle.block1348:                                 ; preds = %vector.body1350
  %cmp.n1360 = icmp eq i64 %88, %n.vec1356
  br i1 %cmp.n1360, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1348
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1356, %middle.block1348 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1348
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1352 = add i64 %indvar1351, 1
  br i1 %exitcond885.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond884.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header205:                             ; preds = %polly.loop_exit242, %polly.loop_header199.preheader
  %97 = phi i1 [ false, %polly.loop_exit242 ], [ true, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ 1, %polly.loop_exit242 ], [ 0, %polly.loop_header199.preheader ]
  br i1 %97, label %polly.loop_header211.us, label %polly.loop_header211

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.merge.loopexit.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.merge.loopexit.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 80
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header211.us
  %polly.indvar220.us = phi i64 [ 0, %polly.loop_header211.us ], [ %polly.indvar_next221.us, %polly.loop_header217.us ]
  %polly.access.mul.call1224.us = mul nuw nsw i64 %polly.indvar220.us, 60
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next221.us, 50
  br i1 %exitcond880.not, label %polly.merge.loopexit.us, label %polly.loop_header217.us

polly.merge.loopexit.us:                          ; preds = %polly.loop_header217.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next215.us, 60
  br i1 %exitcond881.not, label %polly.loop_header240.preheader869, label %polly.loop_header211.us

polly.loop_exit242:                               ; preds = %polly.loop_exit248
  br i1 %97, label %polly.loop_header205, label %polly.loop_header211.us.1

polly.loop_header211:                             ; preds = %polly.loop_header205, %polly.merge
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.merge ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1237 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header227

polly.merge:                                      ; preds = %polly.loop_header227
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next215, 60
  br i1 %exitcond879.not, label %polly.loop_header240.preheader869, label %polly.loop_header211

polly.loop_header240.preheader869:                ; preds = %polly.merge, %polly.merge.loopexit.us
  %98 = mul nuw nsw i64 %polly.indvar208, 50
  %99 = mul nuw nsw i64 %polly.indvar208, -50
  %100 = icmp slt i64 %99, -30
  %101 = select i1 %100, i64 %99, i64 -30
  %102 = add nsw i64 %101, 79
  br label %polly.loop_header240

polly.loop_header227:                             ; preds = %polly.loop_header211, %polly.loop_header227
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_header227 ], [ 0, %polly.loop_header211 ]
  %polly.access.mul.call1234 = mul nuw nsw i64 %polly.indvar230, 60
  %polly.access.add.call1235 = add nuw nsw i64 %polly.access.mul.call1234, %polly.indvar214
  %polly.access.call1236 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1235
  %polly.access.call1236.load = load double, double* %polly.access.call1236, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1238 = add nuw nsw i64 %polly.indvar230, %polly.access.mul.Packed_MemRef_call1237
  %polly.access.Packed_MemRef_call1239 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1238
  store double %polly.access.call1236.load, double* %polly.access.Packed_MemRef_call1239, align 8
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next231, 80
  br i1 %exitcond.not, label %polly.merge, label %polly.loop_header227

polly.loop_header240:                             ; preds = %polly.loop_header240.preheader869, %polly.loop_exit248
  %polly.indvar243 = phi i64 [ %polly.indvar_next244, %polly.loop_exit248 ], [ 0, %polly.loop_header240.preheader869 ]
  %103 = shl nuw nsw i64 %polly.indvar243, 3
  %scevgep264 = getelementptr i8, i8* %call2, i64 %103
  %polly.access.mul.Packed_MemRef_call1260 = mul nuw nsw i64 %polly.indvar243, 80
  br label %polly.loop_header246

polly.loop_exit248:                               ; preds = %polly.loop_exit255
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next244, 60
  br i1 %exitcond883.not, label %polly.loop_exit242, label %polly.loop_header240

polly.loop_header246:                             ; preds = %polly.loop_exit255, %polly.loop_header240
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit255 ], [ %98, %polly.loop_header240 ]
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_exit255 ], [ 0, %polly.loop_header240 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 63)
  %104 = add nuw i64 %polly.indvar249, %98
  %polly.loop_guard256990 = icmp sgt i64 %104, -1
  br i1 %polly.loop_guard256990, label %polly.loop_header253.preheader, label %polly.loop_exit255

polly.loop_header253.preheader:                   ; preds = %polly.loop_header246
  %105 = mul i64 %104, 480
  %scevgep265 = getelementptr i8, i8* %scevgep264, i64 %105
  %scevgep265266 = bitcast i8* %scevgep265 to double*
  %_p_scalar_267 = load double, double* %scevgep265266, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1273 = add nsw i64 %polly.access.mul.Packed_MemRef_call1260, %104
  %polly.access.Packed_MemRef_call1274 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273
  %_p_scalar_275 = load double, double* %polly.access.Packed_MemRef_call1274, align 8
  %106 = mul i64 %104, 640
  br label %polly.loop_header253

polly.loop_exit255:                               ; preds = %polly.loop_header253, %polly.loop_header246
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %polly.loop_cond251.not.not = icmp ult i64 %polly.indvar249, %102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %polly.loop_cond251.not.not, label %polly.loop_header246, label %polly.loop_exit248

polly.loop_header253:                             ; preds = %polly.loop_header253.preheader, %polly.loop_header253
  %polly.indvar257 = phi i64 [ %polly.indvar_next258, %polly.loop_header253 ], [ 0, %polly.loop_header253.preheader ]
  %polly.access.add.Packed_MemRef_call1261 = add nuw nsw i64 %polly.indvar257, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261
  %_p_scalar_263 = load double, double* %polly.access.Packed_MemRef_call1262, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_267, %_p_scalar_263
  %107 = mul nuw nsw i64 %polly.indvar257, 480
  %scevgep269 = getelementptr i8, i8* %scevgep264, i64 %107
  %scevgep269270 = bitcast i8* %scevgep269 to double*
  %_p_scalar_271 = load double, double* %scevgep269270, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_275, %_p_scalar_271
  %108 = shl i64 %polly.indvar257, 3
  %109 = add i64 %108, %106
  %scevgep276 = getelementptr i8, i8* %call, i64 %109
  %scevgep276277 = bitcast i8* %scevgep276 to double*
  %_p_scalar_278 = load double, double* %scevgep276277, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_278
  store double %p_add42.i118, double* %scevgep276277, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next258 = add nuw nsw i64 %polly.indvar257, 1
  %exitcond882.not = icmp eq i64 %polly.indvar257, %smin
  br i1 %exitcond882.not, label %polly.loop_exit255, label %polly.loop_header253

polly.start281:                                   ; preds = %kernel_syr2k.exit
  %malloccall283 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header367

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.start281
  %indvar1325 = phi i64 [ %indvar.next1326, %polly.loop_exit375 ], [ 0, %polly.start281 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 1, %polly.start281 ]
  %110 = add i64 %indvar1325, 1
  %111 = mul nuw nsw i64 %polly.indvar370, 640
  %scevgep379 = getelementptr i8, i8* %call, i64 %111
  %min.iters.check1327 = icmp ult i64 %110, 4
  br i1 %min.iters.check1327, label %polly.loop_header373.preheader, label %vector.ph1328

vector.ph1328:                                    ; preds = %polly.loop_header367
  %n.vec1330 = and i64 %110, -4
  br label %vector.body1324

vector.body1324:                                  ; preds = %vector.body1324, %vector.ph1328
  %index1331 = phi i64 [ 0, %vector.ph1328 ], [ %index.next1332, %vector.body1324 ]
  %112 = shl nuw nsw i64 %index1331, 3
  %113 = getelementptr i8, i8* %scevgep379, i64 %112
  %114 = bitcast i8* %113 to <4 x double>*
  %wide.load1335 = load <4 x double>, <4 x double>* %114, align 8, !alias.scope !79, !noalias !81
  %115 = fmul fast <4 x double> %wide.load1335, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %116 = bitcast i8* %113 to <4 x double>*
  store <4 x double> %115, <4 x double>* %116, align 8, !alias.scope !79, !noalias !81
  %index.next1332 = add i64 %index1331, 4
  %117 = icmp eq i64 %index.next1332, %n.vec1330
  br i1 %117, label %middle.block1322, label %vector.body1324, !llvm.loop !85

middle.block1322:                                 ; preds = %vector.body1324
  %cmp.n1334 = icmp eq i64 %110, %n.vec1330
  br i1 %cmp.n1334, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header367, %middle.block1322
  %polly.indvar376.ph = phi i64 [ 0, %polly.loop_header367 ], [ %n.vec1330, %middle.block1322 ]
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373, %middle.block1322
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next371, 80
  %indvar.next1326 = add i64 %indvar1325, 1
  br i1 %exitcond896.not, label %polly.loop_header383.preheader, label %polly.loop_header367

polly.loop_header383.preheader:                   ; preds = %polly.loop_exit375
  %Packed_MemRef_call1284 = bitcast i8* %malloccall283 to double*
  br label %polly.loop_header389

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_header373
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_header373 ], [ %polly.indvar376.ph, %polly.loop_header373.preheader ]
  %118 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %118
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond895.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !86

polly.loop_header389:                             ; preds = %polly.loop_exit430, %polly.loop_header383.preheader
  %119 = phi i1 [ false, %polly.loop_exit430 ], [ true, %polly.loop_header383.preheader ]
  %polly.indvar392 = phi i64 [ 1, %polly.loop_exit430 ], [ 0, %polly.loop_header383.preheader ]
  br i1 %119, label %polly.loop_header395.us, label %polly.loop_header395

polly.loop_header395.us:                          ; preds = %polly.loop_header389, %polly.merge402.loopexit.us
  %polly.indvar398.us = phi i64 [ %polly.indvar_next399.us, %polly.merge402.loopexit.us ], [ 0, %polly.loop_header389 ]
  %polly.access.mul.Packed_MemRef_call1284.us = mul nuw nsw i64 %polly.indvar398.us, 80
  br label %polly.loop_header405.us

polly.loop_header405.us:                          ; preds = %polly.loop_header405.us, %polly.loop_header395.us
  %polly.indvar408.us = phi i64 [ 0, %polly.loop_header395.us ], [ %polly.indvar_next409.us, %polly.loop_header405.us ]
  %polly.access.mul.call1412.us = mul nuw nsw i64 %polly.indvar408.us, 60
  %polly.access.add.call1413.us = add nuw nsw i64 %polly.access.mul.call1412.us, %polly.indvar398.us
  %polly.access.call1414.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1413.us
  %polly.access.call1414.load.us = load double, double* %polly.access.call1414.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar408.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us
  store double %polly.access.call1414.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next409.us = add nuw nsw i64 %polly.indvar408.us, 1
  %exitcond888.not = icmp eq i64 %polly.indvar_next409.us, 50
  br i1 %exitcond888.not, label %polly.merge402.loopexit.us, label %polly.loop_header405.us

polly.merge402.loopexit.us:                       ; preds = %polly.loop_header405.us
  %polly.indvar_next399.us = add nuw nsw i64 %polly.indvar398.us, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next399.us, 60
  br i1 %exitcond889.not, label %polly.loop_header428.preheader872, label %polly.loop_header395.us

polly.loop_exit430:                               ; preds = %polly.loop_exit437
  br i1 %119, label %polly.loop_header389, label %polly.loop_header395.us.1

polly.loop_header395:                             ; preds = %polly.loop_header389, %polly.merge402
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.merge402 ], [ 0, %polly.loop_header389 ]
  %polly.access.mul.Packed_MemRef_call1284425 = mul nuw nsw i64 %polly.indvar398, 80
  br label %polly.loop_header415

polly.merge402:                                   ; preds = %polly.loop_header415
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %exitcond887.not = icmp eq i64 %polly.indvar_next399, 60
  br i1 %exitcond887.not, label %polly.loop_header428.preheader872, label %polly.loop_header395

polly.loop_header428.preheader872:                ; preds = %polly.merge402, %polly.merge402.loopexit.us
  %120 = mul nuw nsw i64 %polly.indvar392, 50
  %121 = mul nuw nsw i64 %polly.indvar392, -50
  %122 = icmp slt i64 %121, -30
  %123 = select i1 %122, i64 %121, i64 -30
  %124 = add nsw i64 %123, 79
  br label %polly.loop_header428

polly.loop_header415:                             ; preds = %polly.loop_header395, %polly.loop_header415
  %polly.indvar418 = phi i64 [ %polly.indvar_next419, %polly.loop_header415 ], [ 0, %polly.loop_header395 ]
  %polly.access.mul.call1422 = mul nuw nsw i64 %polly.indvar418, 60
  %polly.access.add.call1423 = add nuw nsw i64 %polly.access.mul.call1422, %polly.indvar398
  %polly.access.call1424 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1423
  %polly.access.call1424.load = load double, double* %polly.access.call1424, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284426 = add nuw nsw i64 %polly.indvar418, %polly.access.mul.Packed_MemRef_call1284425
  %polly.access.Packed_MemRef_call1284427 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284426
  store double %polly.access.call1424.load, double* %polly.access.Packed_MemRef_call1284427, align 8
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next419, 80
  br i1 %exitcond886.not, label %polly.merge402, label %polly.loop_header415

polly.loop_header428:                             ; preds = %polly.loop_header428.preheader872, %polly.loop_exit437
  %polly.indvar431 = phi i64 [ %polly.indvar_next432, %polly.loop_exit437 ], [ 0, %polly.loop_header428.preheader872 ]
  %125 = shl nuw nsw i64 %polly.indvar431, 3
  %scevgep454 = getelementptr i8, i8* %call2, i64 %125
  %polly.access.mul.Packed_MemRef_call1284450 = mul nuw nsw i64 %polly.indvar431, 80
  br label %polly.loop_header435

polly.loop_exit437:                               ; preds = %polly.loop_exit445
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond894.not = icmp eq i64 %polly.indvar_next432, 60
  br i1 %exitcond894.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header435:                             ; preds = %polly.loop_exit445, %polly.loop_header428
  %indvars.iv890 = phi i64 [ %indvars.iv.next891, %polly.loop_exit445 ], [ %120, %polly.loop_header428 ]
  %polly.indvar439 = phi i64 [ %polly.indvar_next440, %polly.loop_exit445 ], [ 0, %polly.loop_header428 ]
  %smin892 = call i64 @llvm.smin.i64(i64 %indvars.iv890, i64 63)
  %126 = add nuw i64 %polly.indvar439, %120
  %polly.loop_guard446992 = icmp sgt i64 %126, -1
  br i1 %polly.loop_guard446992, label %polly.loop_header443.preheader, label %polly.loop_exit445

polly.loop_header443.preheader:                   ; preds = %polly.loop_header435
  %127 = mul i64 %126, 480
  %scevgep455 = getelementptr i8, i8* %scevgep454, i64 %127
  %scevgep455456 = bitcast i8* %scevgep455 to double*
  %_p_scalar_457 = load double, double* %scevgep455456, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1284463 = add nsw i64 %polly.access.mul.Packed_MemRef_call1284450, %126
  %polly.access.Packed_MemRef_call1284464 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284463
  %_p_scalar_465 = load double, double* %polly.access.Packed_MemRef_call1284464, align 8
  %128 = mul i64 %126, 640
  br label %polly.loop_header443

polly.loop_exit445:                               ; preds = %polly.loop_header443, %polly.loop_header435
  %polly.indvar_next440 = add nuw nsw i64 %polly.indvar439, 1
  %polly.loop_cond441.not.not = icmp ult i64 %polly.indvar439, %124
  %indvars.iv.next891 = add nuw nsw i64 %indvars.iv890, 1
  br i1 %polly.loop_cond441.not.not, label %polly.loop_header435, label %polly.loop_exit437

polly.loop_header443:                             ; preds = %polly.loop_header443.preheader, %polly.loop_header443
  %polly.indvar447 = phi i64 [ %polly.indvar_next448, %polly.loop_header443 ], [ 0, %polly.loop_header443.preheader ]
  %polly.access.add.Packed_MemRef_call1284451 = add nuw nsw i64 %polly.indvar447, %polly.access.mul.Packed_MemRef_call1284450
  %polly.access.Packed_MemRef_call1284452 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284451
  %_p_scalar_453 = load double, double* %polly.access.Packed_MemRef_call1284452, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_457, %_p_scalar_453
  %129 = mul nuw nsw i64 %polly.indvar447, 480
  %scevgep459 = getelementptr i8, i8* %scevgep454, i64 %129
  %scevgep459460 = bitcast i8* %scevgep459 to double*
  %_p_scalar_461 = load double, double* %scevgep459460, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_465, %_p_scalar_461
  %130 = shl i64 %polly.indvar447, 3
  %131 = add i64 %130, %128
  %scevgep466 = getelementptr i8, i8* %call, i64 %131
  %scevgep466467 = bitcast i8* %scevgep466 to double*
  %_p_scalar_468 = load double, double* %scevgep466467, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_468
  store double %p_add42.i79, double* %scevgep466467, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next448 = add nuw nsw i64 %polly.indvar447, 1
  %exitcond893.not = icmp eq i64 %polly.indvar447, %smin892
  br i1 %exitcond893.not, label %polly.loop_exit445, label %polly.loop_header443

polly.start471:                                   ; preds = %init_array.exit
  %malloccall473 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header557

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.start471
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit565 ], [ 0, %polly.start471 ]
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.loop_exit565 ], [ 1, %polly.start471 ]
  %132 = add i64 %indvar, 1
  %133 = mul nuw nsw i64 %polly.indvar560, 640
  %scevgep569 = getelementptr i8, i8* %call, i64 %133
  %min.iters.check1301 = icmp ult i64 %132, 4
  br i1 %min.iters.check1301, label %polly.loop_header563.preheader, label %vector.ph1302

vector.ph1302:                                    ; preds = %polly.loop_header557
  %n.vec1304 = and i64 %132, -4
  br label %vector.body1300

vector.body1300:                                  ; preds = %vector.body1300, %vector.ph1302
  %index1305 = phi i64 [ 0, %vector.ph1302 ], [ %index.next1306, %vector.body1300 ]
  %134 = shl nuw nsw i64 %index1305, 3
  %135 = getelementptr i8, i8* %scevgep569, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1309 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !89, !noalias !91
  %137 = fmul fast <4 x double> %wide.load1309, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !89, !noalias !91
  %index.next1306 = add i64 %index1305, 4
  %139 = icmp eq i64 %index.next1306, %n.vec1304
  br i1 %139, label %middle.block1298, label %vector.body1300, !llvm.loop !95

middle.block1298:                                 ; preds = %vector.body1300
  %cmp.n1308 = icmp eq i64 %132, %n.vec1304
  br i1 %cmp.n1308, label %polly.loop_exit565, label %polly.loop_header563.preheader

polly.loop_header563.preheader:                   ; preds = %polly.loop_header557, %middle.block1298
  %polly.indvar566.ph = phi i64 [ 0, %polly.loop_header557 ], [ %n.vec1304, %middle.block1298 ]
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563, %middle.block1298
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond907.not = icmp eq i64 %polly.indvar_next561, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond907.not, label %polly.loop_header573.preheader, label %polly.loop_header557

polly.loop_header573.preheader:                   ; preds = %polly.loop_exit565
  %Packed_MemRef_call1474 = bitcast i8* %malloccall473 to double*
  br label %polly.loop_header579

polly.loop_header563:                             ; preds = %polly.loop_header563.preheader, %polly.loop_header563
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_header563 ], [ %polly.indvar566.ph, %polly.loop_header563.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar566, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %140
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_572, 1.200000e+00
  store double %p_mul.i, double* %scevgep570571, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond906.not = icmp eq i64 %polly.indvar_next567, %polly.indvar560
  br i1 %exitcond906.not, label %polly.loop_exit565, label %polly.loop_header563, !llvm.loop !96

polly.loop_header579:                             ; preds = %polly.loop_exit620, %polly.loop_header573.preheader
  %141 = phi i1 [ false, %polly.loop_exit620 ], [ true, %polly.loop_header573.preheader ]
  %polly.indvar582 = phi i64 [ 1, %polly.loop_exit620 ], [ 0, %polly.loop_header573.preheader ]
  br i1 %141, label %polly.loop_header585.us, label %polly.loop_header585

polly.loop_header585.us:                          ; preds = %polly.loop_header579, %polly.merge592.loopexit.us
  %polly.indvar588.us = phi i64 [ %polly.indvar_next589.us, %polly.merge592.loopexit.us ], [ 0, %polly.loop_header579 ]
  %polly.access.mul.Packed_MemRef_call1474.us = mul nuw nsw i64 %polly.indvar588.us, 80
  br label %polly.loop_header595.us

polly.loop_header595.us:                          ; preds = %polly.loop_header595.us, %polly.loop_header585.us
  %polly.indvar598.us = phi i64 [ 0, %polly.loop_header585.us ], [ %polly.indvar_next599.us, %polly.loop_header595.us ]
  %polly.access.mul.call1602.us = mul nuw nsw i64 %polly.indvar598.us, 60
  %polly.access.add.call1603.us = add nuw nsw i64 %polly.access.mul.call1602.us, %polly.indvar588.us
  %polly.access.call1604.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1603.us
  %polly.access.call1604.load.us = load double, double* %polly.access.call1604.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474.us = add nuw nsw i64 %polly.indvar598.us, %polly.access.mul.Packed_MemRef_call1474.us
  %polly.access.Packed_MemRef_call1474.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us
  store double %polly.access.call1604.load.us, double* %polly.access.Packed_MemRef_call1474.us, align 8
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %exitcond899.not = icmp eq i64 %polly.indvar_next599.us, 50
  br i1 %exitcond899.not, label %polly.merge592.loopexit.us, label %polly.loop_header595.us

polly.merge592.loopexit.us:                       ; preds = %polly.loop_header595.us
  %polly.indvar_next589.us = add nuw nsw i64 %polly.indvar588.us, 1
  %exitcond900.not = icmp eq i64 %polly.indvar_next589.us, 60
  br i1 %exitcond900.not, label %polly.loop_header618.preheader875, label %polly.loop_header585.us

polly.loop_exit620:                               ; preds = %polly.loop_exit627
  br i1 %141, label %polly.loop_header579, label %polly.loop_header585.us.1

polly.loop_header585:                             ; preds = %polly.loop_header579, %polly.merge592
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.merge592 ], [ 0, %polly.loop_header579 ]
  %polly.access.mul.Packed_MemRef_call1474615 = mul nuw nsw i64 %polly.indvar588, 80
  br label %polly.loop_header605

polly.merge592:                                   ; preds = %polly.loop_header605
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next589, 60
  br i1 %exitcond898.not, label %polly.loop_header618.preheader875, label %polly.loop_header585

polly.loop_header618.preheader875:                ; preds = %polly.merge592, %polly.merge592.loopexit.us
  %142 = mul nuw nsw i64 %polly.indvar582, 50
  %143 = mul nuw nsw i64 %polly.indvar582, -50
  %144 = icmp slt i64 %143, -30
  %145 = select i1 %144, i64 %143, i64 -30
  %146 = add nsw i64 %145, 79
  br label %polly.loop_header618

polly.loop_header605:                             ; preds = %polly.loop_header585, %polly.loop_header605
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_header605 ], [ 0, %polly.loop_header585 ]
  %polly.access.mul.call1612 = mul nuw nsw i64 %polly.indvar608, 60
  %polly.access.add.call1613 = add nuw nsw i64 %polly.access.mul.call1612, %polly.indvar588
  %polly.access.call1614 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1613
  %polly.access.call1614.load = load double, double* %polly.access.call1614, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474616 = add nuw nsw i64 %polly.indvar608, %polly.access.mul.Packed_MemRef_call1474615
  %polly.access.Packed_MemRef_call1474617 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474616
  store double %polly.access.call1614.load, double* %polly.access.Packed_MemRef_call1474617, align 8
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next609, 80
  br i1 %exitcond897.not, label %polly.merge592, label %polly.loop_header605

polly.loop_header618:                             ; preds = %polly.loop_header618.preheader875, %polly.loop_exit627
  %polly.indvar621 = phi i64 [ %polly.indvar_next622, %polly.loop_exit627 ], [ 0, %polly.loop_header618.preheader875 ]
  %147 = shl nuw nsw i64 %polly.indvar621, 3
  %scevgep644 = getelementptr i8, i8* %call2, i64 %147
  %polly.access.mul.Packed_MemRef_call1474640 = mul nuw nsw i64 %polly.indvar621, 80
  br label %polly.loop_header625

polly.loop_exit627:                               ; preds = %polly.loop_exit635
  %polly.indvar_next622 = add nuw nsw i64 %polly.indvar621, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next622, 60
  br i1 %exitcond905.not, label %polly.loop_exit620, label %polly.loop_header618

polly.loop_header625:                             ; preds = %polly.loop_exit635, %polly.loop_header618
  %indvars.iv901 = phi i64 [ %indvars.iv.next902, %polly.loop_exit635 ], [ %142, %polly.loop_header618 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit635 ], [ 0, %polly.loop_header618 ]
  %smin903 = call i64 @llvm.smin.i64(i64 %indvars.iv901, i64 63)
  %148 = add nuw i64 %polly.indvar629, %142
  %polly.loop_guard636994 = icmp sgt i64 %148, -1
  br i1 %polly.loop_guard636994, label %polly.loop_header633.preheader, label %polly.loop_exit635

polly.loop_header633.preheader:                   ; preds = %polly.loop_header625
  %149 = mul i64 %148, 480
  %scevgep645 = getelementptr i8, i8* %scevgep644, i64 %149
  %scevgep645646 = bitcast i8* %scevgep645 to double*
  %_p_scalar_647 = load double, double* %scevgep645646, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1474653 = add nsw i64 %polly.access.mul.Packed_MemRef_call1474640, %148
  %polly.access.Packed_MemRef_call1474654 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474653
  %_p_scalar_655 = load double, double* %polly.access.Packed_MemRef_call1474654, align 8
  %150 = mul i64 %148, 640
  br label %polly.loop_header633

polly.loop_exit635:                               ; preds = %polly.loop_header633, %polly.loop_header625
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %polly.loop_cond631.not.not = icmp ult i64 %polly.indvar629, %146
  %indvars.iv.next902 = add nuw nsw i64 %indvars.iv901, 1
  br i1 %polly.loop_cond631.not.not, label %polly.loop_header625, label %polly.loop_exit627

polly.loop_header633:                             ; preds = %polly.loop_header633.preheader, %polly.loop_header633
  %polly.indvar637 = phi i64 [ %polly.indvar_next638, %polly.loop_header633 ], [ 0, %polly.loop_header633.preheader ]
  %polly.access.add.Packed_MemRef_call1474641 = add nuw nsw i64 %polly.indvar637, %polly.access.mul.Packed_MemRef_call1474640
  %polly.access.Packed_MemRef_call1474642 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641
  %_p_scalar_643 = load double, double* %polly.access.Packed_MemRef_call1474642, align 8
  %p_mul27.i = fmul fast double %_p_scalar_647, %_p_scalar_643
  %151 = mul nuw nsw i64 %polly.indvar637, 480
  %scevgep649 = getelementptr i8, i8* %scevgep644, i64 %151
  %scevgep649650 = bitcast i8* %scevgep649 to double*
  %_p_scalar_651 = load double, double* %scevgep649650, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_655, %_p_scalar_651
  %152 = shl i64 %polly.indvar637, 3
  %153 = add i64 %152, %150
  %scevgep656 = getelementptr i8, i8* %call, i64 %153
  %scevgep656657 = bitcast i8* %scevgep656 to double*
  %_p_scalar_658 = load double, double* %scevgep656657, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_658
  store double %p_add42.i, double* %scevgep656657, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next638 = add nuw nsw i64 %polly.indvar637, 1
  %exitcond904.not = icmp eq i64 %polly.indvar637, %smin903
  br i1 %exitcond904.not, label %polly.loop_exit635, label %polly.loop_header633

polly.loop_header797:                             ; preds = %entry, %polly.loop_exit805
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %entry ]
  %154 = mul nuw nsw i64 %polly.indvar800, 640
  %155 = trunc i64 %polly.indvar800 to i32
  %broadcast.splatinsert1032 = insertelement <4 x i32> poison, i32 %155, i32 0
  %broadcast.splat1033 = shufflevector <4 x i32> %broadcast.splatinsert1032, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %polly.loop_header797
  %index1024 = phi i64 [ 0, %polly.loop_header797 ], [ %index.next1025, %vector.body1022 ]
  %vec.ind1030 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header797 ], [ %vec.ind.next1031, %vector.body1022 ]
  %156 = mul <4 x i32> %vec.ind1030, %broadcast.splat1033
  %157 = add <4 x i32> %156, <i32 3, i32 3, i32 3, i32 3>
  %158 = urem <4 x i32> %157, <i32 80, i32 80, i32 80, i32 80>
  %159 = sitofp <4 x i32> %158 to <4 x double>
  %160 = fmul fast <4 x double> %159, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %161 = shl i64 %index1024, 3
  %162 = add nuw nsw i64 %161, %154
  %163 = getelementptr i8, i8* %call, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %160, <4 x double>* %164, align 8, !alias.scope !99, !noalias !101
  %index.next1025 = add i64 %index1024, 4
  %vec.ind.next1031 = add <4 x i32> %vec.ind1030, <i32 4, i32 4, i32 4, i32 4>
  %165 = icmp eq i64 %index.next1025, 32
  br i1 %165, label %polly.loop_exit805, label %vector.body1022, !llvm.loop !104

polly.loop_exit805:                               ; preds = %vector.body1022
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond927.not = icmp eq i64 %polly.indvar_next801, 32
  br i1 %exitcond927.not, label %polly.loop_header797.1, label %polly.loop_header797

polly.loop_header824:                             ; preds = %polly.loop_exit805.2.2, %polly.loop_exit832
  %polly.indvar827 = phi i64 [ %polly.indvar_next828, %polly.loop_exit832 ], [ 0, %polly.loop_exit805.2.2 ]
  %166 = mul nuw nsw i64 %polly.indvar827, 480
  %167 = trunc i64 %polly.indvar827 to i32
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %167, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1136

vector.body1136:                                  ; preds = %vector.body1136, %polly.loop_header824
  %index1138 = phi i64 [ 0, %polly.loop_header824 ], [ %index.next1139, %vector.body1136 ]
  %vec.ind1144 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header824 ], [ %vec.ind.next1145, %vector.body1136 ]
  %168 = mul <4 x i32> %vec.ind1144, %broadcast.splat1147
  %169 = add <4 x i32> %168, <i32 2, i32 2, i32 2, i32 2>
  %170 = urem <4 x i32> %169, <i32 60, i32 60, i32 60, i32 60>
  %171 = sitofp <4 x i32> %170 to <4 x double>
  %172 = fmul fast <4 x double> %171, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %173 = shl i64 %index1138, 3
  %174 = add i64 %173, %166
  %175 = getelementptr i8, i8* %call2, i64 %174
  %176 = bitcast i8* %175 to <4 x double>*
  store <4 x double> %172, <4 x double>* %176, align 8, !alias.scope !103, !noalias !105
  %index.next1139 = add i64 %index1138, 4
  %vec.ind.next1145 = add <4 x i32> %vec.ind1144, <i32 4, i32 4, i32 4, i32 4>
  %177 = icmp eq i64 %index.next1139, 32
  br i1 %177, label %polly.loop_exit832, label %vector.body1136, !llvm.loop !106

polly.loop_exit832:                               ; preds = %vector.body1136
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %exitcond918.not = icmp eq i64 %polly.indvar_next828, 32
  br i1 %exitcond918.not, label %polly.loop_header824.1, label %polly.loop_header824

polly.loop_header850:                             ; preds = %polly.loop_exit832.1.2, %polly.loop_exit858
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_exit832.1.2 ]
  %178 = mul nuw nsw i64 %polly.indvar853, 480
  %179 = trunc i64 %polly.indvar853 to i32
  %broadcast.splatinsert1224 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1225 = shufflevector <4 x i32> %broadcast.splatinsert1224, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %polly.loop_header850
  %index1216 = phi i64 [ 0, %polly.loop_header850 ], [ %index.next1217, %vector.body1214 ]
  %vec.ind1222 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header850 ], [ %vec.ind.next1223, %vector.body1214 ]
  %180 = mul <4 x i32> %vec.ind1222, %broadcast.splat1225
  %181 = add <4 x i32> %180, <i32 1, i32 1, i32 1, i32 1>
  %182 = urem <4 x i32> %181, <i32 80, i32 80, i32 80, i32 80>
  %183 = sitofp <4 x i32> %182 to <4 x double>
  %184 = fmul fast <4 x double> %183, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %185 = shl i64 %index1216, 3
  %186 = add i64 %185, %178
  %187 = getelementptr i8, i8* %call1, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %184, <4 x double>* %188, align 8, !alias.scope !102, !noalias !107
  %index.next1217 = add i64 %index1216, 4
  %vec.ind.next1223 = add <4 x i32> %vec.ind1222, <i32 4, i32 4, i32 4, i32 4>
  %189 = icmp eq i64 %index.next1217, 32
  br i1 %189, label %polly.loop_exit858, label %vector.body1214, !llvm.loop !108

polly.loop_exit858:                               ; preds = %vector.body1214
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next854, 32
  br i1 %exitcond912.not, label %polly.loop_header850.1, label %polly.loop_header850

polly.loop_header211.us.1:                        ; preds = %polly.loop_exit242, %polly.merge.loopexit.us.1
  %polly.indvar214.us.1 = phi i64 [ %polly.indvar_next215.us.1, %polly.merge.loopexit.us.1 ], [ 0, %polly.loop_exit242 ]
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar214.us.1, 80
  br label %polly.loop_header217.us.1

polly.loop_header217.us.1:                        ; preds = %polly.loop_header217.us.1, %polly.loop_header211.us.1
  %polly.indvar220.us.1 = phi i64 [ 0, %polly.loop_header211.us.1 ], [ %polly.indvar_next221.us.1, %polly.loop_header217.us.1 ]
  %190 = mul i64 %polly.indvar220.us.1, 60
  %polly.access.mul.call1224.us.1 = add i64 %190, 3840
  %polly.access.add.call1225.us.1 = add nuw nsw i64 %polly.access.mul.call1224.us.1, %polly.indvar214.us.1
  %polly.access.call1226.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1225.us.1
  %polly.access.call1226.load.us.1 = load double, double* %polly.access.call1226.us.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar220.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1226.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next221.us.1 = add nuw nsw i64 %polly.indvar220.us.1, 1
  %exitcond880.1.not = icmp eq i64 %polly.indvar_next221.us.1, 16
  br i1 %exitcond880.1.not, label %polly.merge.loopexit.us.1, label %polly.loop_header217.us.1

polly.merge.loopexit.us.1:                        ; preds = %polly.loop_header217.us.1
  %polly.indvar_next215.us.1 = add nuw nsw i64 %polly.indvar214.us.1, 1
  %exitcond881.1.not = icmp eq i64 %polly.indvar_next215.us.1, 60
  br i1 %exitcond881.1.not, label %polly.loop_header240.1, label %polly.loop_header211.us.1

polly.loop_header240.1:                           ; preds = %polly.merge.loopexit.us.1, %polly.loop_exit248.1
  %polly.indvar243.1 = phi i64 [ %polly.indvar_next244.1, %polly.loop_exit248.1 ], [ 0, %polly.merge.loopexit.us.1 ]
  %191 = shl nuw nsw i64 %polly.indvar243.1, 3
  %scevgep264.1 = getelementptr i8, i8* %call2, i64 %191
  %polly.access.mul.Packed_MemRef_call1260.1 = mul nuw nsw i64 %polly.indvar243.1, 80
  br label %polly.loop_header246.1

polly.loop_header246.1:                           ; preds = %polly.loop_exit255.1, %polly.loop_header240.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit255.1 ], [ 0, %polly.loop_header240.1 ]
  %polly.indvar249.1 = phi i64 [ %polly.indvar_next250.1, %polly.loop_exit255.1 ], [ 14, %polly.loop_header240.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 63)
  %192 = add nuw nsw i64 %polly.indvar249.1, 50
  %polly.loop_guard256.1991 = icmp ugt i64 %polly.indvar249.1, 13
  br i1 %polly.loop_guard256.1991, label %polly.loop_header253.preheader.1, label %polly.loop_exit255.1

polly.loop_header253.preheader.1:                 ; preds = %polly.loop_header246.1
  %193 = add nsw i64 %polly.indvar249.1, -14
  %194 = mul nuw nsw i64 %192, 480
  %scevgep265.1 = getelementptr i8, i8* %scevgep264.1, i64 %194
  %scevgep265266.1 = bitcast i8* %scevgep265.1 to double*
  %_p_scalar_267.1 = load double, double* %scevgep265266.1, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1273.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1260.1, %193
  %polly.access.Packed_MemRef_call1274.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.1
  %_p_scalar_275.1 = load double, double* %polly.access.Packed_MemRef_call1274.1, align 8
  %195 = mul nuw nsw i64 %192, 640
  br label %polly.loop_header253.1

polly.loop_header253.1:                           ; preds = %polly.loop_header253.1, %polly.loop_header253.preheader.1
  %polly.indvar257.1 = phi i64 [ %polly.indvar_next258.1, %polly.loop_header253.1 ], [ 0, %polly.loop_header253.preheader.1 ]
  %196 = add nuw nsw i64 %polly.indvar257.1, 64
  %polly.access.add.Packed_MemRef_call1261.1 = add nuw nsw i64 %polly.indvar257.1, %polly.access.mul.Packed_MemRef_call1260.1
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  %_p_scalar_263.1 = load double, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_267.1, %_p_scalar_263.1
  %197 = mul nuw nsw i64 %196, 480
  %scevgep269.1 = getelementptr i8, i8* %scevgep264.1, i64 %197
  %scevgep269270.1 = bitcast i8* %scevgep269.1 to double*
  %_p_scalar_271.1 = load double, double* %scevgep269270.1, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114.1 = fmul fast double %_p_scalar_275.1, %_p_scalar_271.1
  %198 = shl i64 %196, 3
  %199 = add i64 %198, %195
  %scevgep276.1 = getelementptr i8, i8* %call, i64 %199
  %scevgep276277.1 = bitcast i8* %scevgep276.1 to double*
  %_p_scalar_278.1 = load double, double* %scevgep276277.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_278.1
  store double %p_add42.i118.1, double* %scevgep276277.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next258.1 = add nuw nsw i64 %polly.indvar257.1, 1
  %exitcond882.1.not = icmp eq i64 %polly.indvar257.1, %smin.1
  br i1 %exitcond882.1.not, label %polly.loop_exit255.1, label %polly.loop_header253.1

polly.loop_exit255.1:                             ; preds = %polly.loop_header253.1, %polly.loop_header246.1
  %polly.indvar_next250.1 = add nuw nsw i64 %polly.indvar249.1, 1
  %polly.loop_cond251.not.not.1 = icmp ult i64 %polly.indvar249.1, 29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  br i1 %polly.loop_cond251.not.not.1, label %polly.loop_header246.1, label %polly.loop_exit248.1

polly.loop_exit248.1:                             ; preds = %polly.loop_exit255.1
  %polly.indvar_next244.1 = add nuw nsw i64 %polly.indvar243.1, 1
  %exitcond883.1.not = icmp eq i64 %polly.indvar_next244.1, 60
  br i1 %exitcond883.1.not, label %polly.loop_exit207.1, label %polly.loop_header240.1

polly.loop_exit207.1:                             ; preds = %polly.loop_exit248.1
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header395.us.1:                        ; preds = %polly.loop_exit430, %polly.merge402.loopexit.us.1
  %polly.indvar398.us.1 = phi i64 [ %polly.indvar_next399.us.1, %polly.merge402.loopexit.us.1 ], [ 0, %polly.loop_exit430 ]
  %polly.access.mul.Packed_MemRef_call1284.us.1 = mul nuw nsw i64 %polly.indvar398.us.1, 80
  br label %polly.loop_header405.us.1

polly.loop_header405.us.1:                        ; preds = %polly.loop_header405.us.1, %polly.loop_header395.us.1
  %polly.indvar408.us.1 = phi i64 [ 0, %polly.loop_header395.us.1 ], [ %polly.indvar_next409.us.1, %polly.loop_header405.us.1 ]
  %200 = mul i64 %polly.indvar408.us.1, 60
  %polly.access.mul.call1412.us.1 = add i64 %200, 3840
  %polly.access.add.call1413.us.1 = add nuw nsw i64 %polly.access.mul.call1412.us.1, %polly.indvar398.us.1
  %polly.access.call1414.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1413.us.1
  %polly.access.call1414.load.us.1 = load double, double* %polly.access.call1414.us.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1284.us.1 = add nuw nsw i64 %polly.indvar408.us.1, %polly.access.mul.Packed_MemRef_call1284.us.1
  %polly.access.Packed_MemRef_call1284.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us.1
  store double %polly.access.call1414.load.us.1, double* %polly.access.Packed_MemRef_call1284.us.1, align 8
  %polly.indvar_next409.us.1 = add nuw nsw i64 %polly.indvar408.us.1, 1
  %exitcond888.1.not = icmp eq i64 %polly.indvar_next409.us.1, 16
  br i1 %exitcond888.1.not, label %polly.merge402.loopexit.us.1, label %polly.loop_header405.us.1

polly.merge402.loopexit.us.1:                     ; preds = %polly.loop_header405.us.1
  %polly.indvar_next399.us.1 = add nuw nsw i64 %polly.indvar398.us.1, 1
  %exitcond889.1.not = icmp eq i64 %polly.indvar_next399.us.1, 60
  br i1 %exitcond889.1.not, label %polly.loop_header428.1, label %polly.loop_header395.us.1

polly.loop_header428.1:                           ; preds = %polly.merge402.loopexit.us.1, %polly.loop_exit437.1
  %polly.indvar431.1 = phi i64 [ %polly.indvar_next432.1, %polly.loop_exit437.1 ], [ 0, %polly.merge402.loopexit.us.1 ]
  %201 = shl nuw nsw i64 %polly.indvar431.1, 3
  %scevgep454.1 = getelementptr i8, i8* %call2, i64 %201
  %polly.access.mul.Packed_MemRef_call1284450.1 = mul nuw nsw i64 %polly.indvar431.1, 80
  br label %polly.loop_header435.1

polly.loop_header435.1:                           ; preds = %polly.loop_exit445.1, %polly.loop_header428.1
  %indvars.iv890.1 = phi i64 [ %indvars.iv.next891.1, %polly.loop_exit445.1 ], [ 0, %polly.loop_header428.1 ]
  %polly.indvar439.1 = phi i64 [ %polly.indvar_next440.1, %polly.loop_exit445.1 ], [ 14, %polly.loop_header428.1 ]
  %smin892.1 = call i64 @llvm.smin.i64(i64 %indvars.iv890.1, i64 63)
  %202 = add nuw nsw i64 %polly.indvar439.1, 50
  %polly.loop_guard446.1993 = icmp ugt i64 %polly.indvar439.1, 13
  br i1 %polly.loop_guard446.1993, label %polly.loop_header443.preheader.1, label %polly.loop_exit445.1

polly.loop_header443.preheader.1:                 ; preds = %polly.loop_header435.1
  %203 = add nsw i64 %polly.indvar439.1, -14
  %204 = mul nuw nsw i64 %202, 480
  %scevgep455.1 = getelementptr i8, i8* %scevgep454.1, i64 %204
  %scevgep455456.1 = bitcast i8* %scevgep455.1 to double*
  %_p_scalar_457.1 = load double, double* %scevgep455456.1, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1284463.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1284450.1, %203
  %polly.access.Packed_MemRef_call1284464.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284463.1
  %_p_scalar_465.1 = load double, double* %polly.access.Packed_MemRef_call1284464.1, align 8
  %205 = mul nuw nsw i64 %202, 640
  br label %polly.loop_header443.1

polly.loop_header443.1:                           ; preds = %polly.loop_header443.1, %polly.loop_header443.preheader.1
  %polly.indvar447.1 = phi i64 [ %polly.indvar_next448.1, %polly.loop_header443.1 ], [ 0, %polly.loop_header443.preheader.1 ]
  %206 = add nuw nsw i64 %polly.indvar447.1, 64
  %polly.access.add.Packed_MemRef_call1284451.1 = add nuw nsw i64 %polly.indvar447.1, %polly.access.mul.Packed_MemRef_call1284450.1
  %polly.access.Packed_MemRef_call1284452.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284451.1
  %_p_scalar_453.1 = load double, double* %polly.access.Packed_MemRef_call1284452.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_457.1, %_p_scalar_453.1
  %207 = mul nuw nsw i64 %206, 480
  %scevgep459.1 = getelementptr i8, i8* %scevgep454.1, i64 %207
  %scevgep459460.1 = bitcast i8* %scevgep459.1 to double*
  %_p_scalar_461.1 = load double, double* %scevgep459460.1, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75.1 = fmul fast double %_p_scalar_465.1, %_p_scalar_461.1
  %208 = shl i64 %206, 3
  %209 = add i64 %208, %205
  %scevgep466.1 = getelementptr i8, i8* %call, i64 %209
  %scevgep466467.1 = bitcast i8* %scevgep466.1 to double*
  %_p_scalar_468.1 = load double, double* %scevgep466467.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_468.1
  store double %p_add42.i79.1, double* %scevgep466467.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next448.1 = add nuw nsw i64 %polly.indvar447.1, 1
  %exitcond893.1.not = icmp eq i64 %polly.indvar447.1, %smin892.1
  br i1 %exitcond893.1.not, label %polly.loop_exit445.1, label %polly.loop_header443.1

polly.loop_exit445.1:                             ; preds = %polly.loop_header443.1, %polly.loop_header435.1
  %polly.indvar_next440.1 = add nuw nsw i64 %polly.indvar439.1, 1
  %polly.loop_cond441.not.not.1 = icmp ult i64 %polly.indvar439.1, 29
  %indvars.iv.next891.1 = add nuw nsw i64 %indvars.iv890.1, 1
  br i1 %polly.loop_cond441.not.not.1, label %polly.loop_header435.1, label %polly.loop_exit437.1

polly.loop_exit437.1:                             ; preds = %polly.loop_exit445.1
  %polly.indvar_next432.1 = add nuw nsw i64 %polly.indvar431.1, 1
  %exitcond894.1.not = icmp eq i64 %polly.indvar_next432.1, 60
  br i1 %exitcond894.1.not, label %polly.loop_exit391.1, label %polly.loop_header428.1

polly.loop_exit391.1:                             ; preds = %polly.loop_exit437.1
  tail call void @free(i8* %malloccall283)
  br label %kernel_syr2k.exit90

polly.loop_header585.us.1:                        ; preds = %polly.loop_exit620, %polly.merge592.loopexit.us.1
  %polly.indvar588.us.1 = phi i64 [ %polly.indvar_next589.us.1, %polly.merge592.loopexit.us.1 ], [ 0, %polly.loop_exit620 ]
  %polly.access.mul.Packed_MemRef_call1474.us.1 = mul nuw nsw i64 %polly.indvar588.us.1, 80
  br label %polly.loop_header595.us.1

polly.loop_header595.us.1:                        ; preds = %polly.loop_header595.us.1, %polly.loop_header585.us.1
  %polly.indvar598.us.1 = phi i64 [ 0, %polly.loop_header585.us.1 ], [ %polly.indvar_next599.us.1, %polly.loop_header595.us.1 ]
  %210 = mul i64 %polly.indvar598.us.1, 60
  %polly.access.mul.call1602.us.1 = add i64 %210, 3840
  %polly.access.add.call1603.us.1 = add nuw nsw i64 %polly.access.mul.call1602.us.1, %polly.indvar588.us.1
  %polly.access.call1604.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1603.us.1
  %polly.access.call1604.load.us.1 = load double, double* %polly.access.call1604.us.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1474.us.1 = add nuw nsw i64 %polly.indvar598.us.1, %polly.access.mul.Packed_MemRef_call1474.us.1
  %polly.access.Packed_MemRef_call1474.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.1
  store double %polly.access.call1604.load.us.1, double* %polly.access.Packed_MemRef_call1474.us.1, align 8
  %polly.indvar_next599.us.1 = add nuw nsw i64 %polly.indvar598.us.1, 1
  %exitcond899.1.not = icmp eq i64 %polly.indvar_next599.us.1, 16
  br i1 %exitcond899.1.not, label %polly.merge592.loopexit.us.1, label %polly.loop_header595.us.1

polly.merge592.loopexit.us.1:                     ; preds = %polly.loop_header595.us.1
  %polly.indvar_next589.us.1 = add nuw nsw i64 %polly.indvar588.us.1, 1
  %exitcond900.1.not = icmp eq i64 %polly.indvar_next589.us.1, 60
  br i1 %exitcond900.1.not, label %polly.loop_header618.1, label %polly.loop_header585.us.1

polly.loop_header618.1:                           ; preds = %polly.merge592.loopexit.us.1, %polly.loop_exit627.1
  %polly.indvar621.1 = phi i64 [ %polly.indvar_next622.1, %polly.loop_exit627.1 ], [ 0, %polly.merge592.loopexit.us.1 ]
  %211 = shl nuw nsw i64 %polly.indvar621.1, 3
  %scevgep644.1 = getelementptr i8, i8* %call2, i64 %211
  %polly.access.mul.Packed_MemRef_call1474640.1 = mul nuw nsw i64 %polly.indvar621.1, 80
  br label %polly.loop_header625.1

polly.loop_header625.1:                           ; preds = %polly.loop_exit635.1, %polly.loop_header618.1
  %indvars.iv901.1 = phi i64 [ %indvars.iv.next902.1, %polly.loop_exit635.1 ], [ 0, %polly.loop_header618.1 ]
  %polly.indvar629.1 = phi i64 [ %polly.indvar_next630.1, %polly.loop_exit635.1 ], [ 14, %polly.loop_header618.1 ]
  %smin903.1 = call i64 @llvm.smin.i64(i64 %indvars.iv901.1, i64 63)
  %212 = add nuw nsw i64 %polly.indvar629.1, 50
  %polly.loop_guard636.1995 = icmp ugt i64 %polly.indvar629.1, 13
  br i1 %polly.loop_guard636.1995, label %polly.loop_header633.preheader.1, label %polly.loop_exit635.1

polly.loop_header633.preheader.1:                 ; preds = %polly.loop_header625.1
  %213 = add nsw i64 %polly.indvar629.1, -14
  %214 = mul nuw nsw i64 %212, 480
  %scevgep645.1 = getelementptr i8, i8* %scevgep644.1, i64 %214
  %scevgep645646.1 = bitcast i8* %scevgep645.1 to double*
  %_p_scalar_647.1 = load double, double* %scevgep645646.1, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1474653.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1474640.1, %213
  %polly.access.Packed_MemRef_call1474654.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474653.1
  %_p_scalar_655.1 = load double, double* %polly.access.Packed_MemRef_call1474654.1, align 8
  %215 = mul nuw nsw i64 %212, 640
  br label %polly.loop_header633.1

polly.loop_header633.1:                           ; preds = %polly.loop_header633.1, %polly.loop_header633.preheader.1
  %polly.indvar637.1 = phi i64 [ %polly.indvar_next638.1, %polly.loop_header633.1 ], [ 0, %polly.loop_header633.preheader.1 ]
  %216 = add nuw nsw i64 %polly.indvar637.1, 64
  %polly.access.add.Packed_MemRef_call1474641.1 = add nuw nsw i64 %polly.indvar637.1, %polly.access.mul.Packed_MemRef_call1474640.1
  %polly.access.Packed_MemRef_call1474642.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474641.1
  %_p_scalar_643.1 = load double, double* %polly.access.Packed_MemRef_call1474642.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_647.1, %_p_scalar_643.1
  %217 = mul nuw nsw i64 %216, 480
  %scevgep649.1 = getelementptr i8, i8* %scevgep644.1, i64 %217
  %scevgep649650.1 = bitcast i8* %scevgep649.1 to double*
  %_p_scalar_651.1 = load double, double* %scevgep649650.1, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i.1 = fmul fast double %_p_scalar_655.1, %_p_scalar_651.1
  %218 = shl i64 %216, 3
  %219 = add i64 %218, %215
  %scevgep656.1 = getelementptr i8, i8* %call, i64 %219
  %scevgep656657.1 = bitcast i8* %scevgep656.1 to double*
  %_p_scalar_658.1 = load double, double* %scevgep656657.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_658.1
  store double %p_add42.i.1, double* %scevgep656657.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next638.1 = add nuw nsw i64 %polly.indvar637.1, 1
  %exitcond904.1.not = icmp eq i64 %polly.indvar637.1, %smin903.1
  br i1 %exitcond904.1.not, label %polly.loop_exit635.1, label %polly.loop_header633.1

polly.loop_exit635.1:                             ; preds = %polly.loop_header633.1, %polly.loop_header625.1
  %polly.indvar_next630.1 = add nuw nsw i64 %polly.indvar629.1, 1
  %polly.loop_cond631.not.not.1 = icmp ult i64 %polly.indvar629.1, 29
  %indvars.iv.next902.1 = add nuw nsw i64 %indvars.iv901.1, 1
  br i1 %polly.loop_cond631.not.not.1, label %polly.loop_header625.1, label %polly.loop_exit627.1

polly.loop_exit627.1:                             ; preds = %polly.loop_exit635.1
  %polly.indvar_next622.1 = add nuw nsw i64 %polly.indvar621.1, 1
  %exitcond905.1.not = icmp eq i64 %polly.indvar_next622.1, 60
  br i1 %exitcond905.1.not, label %polly.loop_exit581.1, label %polly.loop_header618.1

polly.loop_exit581.1:                             ; preds = %polly.loop_exit627.1
  tail call void @free(i8* %malloccall473)
  br label %kernel_syr2k.exit

polly.loop_header850.1:                           ; preds = %polly.loop_exit858, %polly.loop_exit858.1
  %polly.indvar853.1 = phi i64 [ %polly.indvar_next854.1, %polly.loop_exit858.1 ], [ 0, %polly.loop_exit858 ]
  %220 = mul nuw nsw i64 %polly.indvar853.1, 480
  %221 = trunc i64 %polly.indvar853.1 to i32
  %broadcast.splatinsert1236 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1237 = shufflevector <4 x i32> %broadcast.splatinsert1236, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %polly.loop_header850.1
  %index1230 = phi i64 [ 0, %polly.loop_header850.1 ], [ %index.next1231, %vector.body1228 ]
  %vec.ind1234 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.1 ], [ %vec.ind.next1235, %vector.body1228 ]
  %222 = add nuw nsw <4 x i64> %vec.ind1234, <i64 32, i64 32, i64 32, i64 32>
  %223 = trunc <4 x i64> %222 to <4 x i32>
  %224 = mul <4 x i32> %broadcast.splat1237, %223
  %225 = add <4 x i32> %224, <i32 1, i32 1, i32 1, i32 1>
  %226 = urem <4 x i32> %225, <i32 80, i32 80, i32 80, i32 80>
  %227 = sitofp <4 x i32> %226 to <4 x double>
  %228 = fmul fast <4 x double> %227, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %229 = extractelement <4 x i64> %222, i32 0
  %230 = shl i64 %229, 3
  %231 = add i64 %230, %220
  %232 = getelementptr i8, i8* %call1, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %228, <4 x double>* %233, align 8, !alias.scope !102, !noalias !107
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1235 = add <4 x i64> %vec.ind1234, <i64 4, i64 4, i64 4, i64 4>
  %234 = icmp eq i64 %index.next1231, 28
  br i1 %234, label %polly.loop_exit858.1, label %vector.body1228, !llvm.loop !109

polly.loop_exit858.1:                             ; preds = %vector.body1228
  %polly.indvar_next854.1 = add nuw nsw i64 %polly.indvar853.1, 1
  %exitcond912.1.not = icmp eq i64 %polly.indvar_next854.1, 32
  br i1 %exitcond912.1.not, label %polly.loop_header850.1935, label %polly.loop_header850.1

polly.loop_header850.1935:                        ; preds = %polly.loop_exit858.1, %polly.loop_exit858.1946
  %polly.indvar853.1934 = phi i64 [ %polly.indvar_next854.1944, %polly.loop_exit858.1946 ], [ 0, %polly.loop_exit858.1 ]
  %235 = add nuw nsw i64 %polly.indvar853.1934, 32
  %236 = mul nuw nsw i64 %235, 480
  %237 = trunc i64 %235 to i32
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %polly.loop_header850.1935
  %index1242 = phi i64 [ 0, %polly.loop_header850.1935 ], [ %index.next1243, %vector.body1240 ]
  %vec.ind1248 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header850.1935 ], [ %vec.ind.next1249, %vector.body1240 ]
  %238 = mul <4 x i32> %vec.ind1248, %broadcast.splat1251
  %239 = add <4 x i32> %238, <i32 1, i32 1, i32 1, i32 1>
  %240 = urem <4 x i32> %239, <i32 80, i32 80, i32 80, i32 80>
  %241 = sitofp <4 x i32> %240 to <4 x double>
  %242 = fmul fast <4 x double> %241, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %243 = shl i64 %index1242, 3
  %244 = add i64 %243, %236
  %245 = getelementptr i8, i8* %call1, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %242, <4 x double>* %246, align 8, !alias.scope !102, !noalias !107
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1249 = add <4 x i32> %vec.ind1248, <i32 4, i32 4, i32 4, i32 4>
  %247 = icmp eq i64 %index.next1243, 32
  br i1 %247, label %polly.loop_exit858.1946, label %vector.body1240, !llvm.loop !110

polly.loop_exit858.1946:                          ; preds = %vector.body1240
  %polly.indvar_next854.1944 = add nuw nsw i64 %polly.indvar853.1934, 1
  %exitcond912.1945.not = icmp eq i64 %polly.indvar_next854.1944, 32
  br i1 %exitcond912.1945.not, label %polly.loop_header850.1.1, label %polly.loop_header850.1935

polly.loop_header850.1.1:                         ; preds = %polly.loop_exit858.1946, %polly.loop_exit858.1.1
  %polly.indvar853.1.1 = phi i64 [ %polly.indvar_next854.1.1, %polly.loop_exit858.1.1 ], [ 0, %polly.loop_exit858.1946 ]
  %248 = add nuw nsw i64 %polly.indvar853.1.1, 32
  %249 = mul nuw nsw i64 %248, 480
  %250 = trunc i64 %248 to i32
  %broadcast.splatinsert1262 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1263 = shufflevector <4 x i32> %broadcast.splatinsert1262, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %polly.loop_header850.1.1
  %index1256 = phi i64 [ 0, %polly.loop_header850.1.1 ], [ %index.next1257, %vector.body1254 ]
  %vec.ind1260 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.1.1 ], [ %vec.ind.next1261, %vector.body1254 ]
  %251 = add nuw nsw <4 x i64> %vec.ind1260, <i64 32, i64 32, i64 32, i64 32>
  %252 = trunc <4 x i64> %251 to <4 x i32>
  %253 = mul <4 x i32> %broadcast.splat1263, %252
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 80, i32 80, i32 80, i32 80>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %258 = extractelement <4 x i64> %251, i32 0
  %259 = shl i64 %258, 3
  %260 = add i64 %259, %249
  %261 = getelementptr i8, i8* %call1, i64 %260
  %262 = bitcast i8* %261 to <4 x double>*
  store <4 x double> %257, <4 x double>* %262, align 8, !alias.scope !102, !noalias !107
  %index.next1257 = add i64 %index1256, 4
  %vec.ind.next1261 = add <4 x i64> %vec.ind1260, <i64 4, i64 4, i64 4, i64 4>
  %263 = icmp eq i64 %index.next1257, 28
  br i1 %263, label %polly.loop_exit858.1.1, label %vector.body1254, !llvm.loop !111

polly.loop_exit858.1.1:                           ; preds = %vector.body1254
  %polly.indvar_next854.1.1 = add nuw nsw i64 %polly.indvar853.1.1, 1
  %exitcond912.1.1.not = icmp eq i64 %polly.indvar_next854.1.1, 32
  br i1 %exitcond912.1.1.not, label %polly.loop_header850.2, label %polly.loop_header850.1.1

polly.loop_header850.2:                           ; preds = %polly.loop_exit858.1.1, %polly.loop_exit858.2
  %polly.indvar853.2 = phi i64 [ %polly.indvar_next854.2, %polly.loop_exit858.2 ], [ 0, %polly.loop_exit858.1.1 ]
  %264 = add nuw nsw i64 %polly.indvar853.2, 64
  %265 = mul nuw nsw i64 %264, 480
  %266 = trunc i64 %264 to i32
  %broadcast.splatinsert1276 = insertelement <4 x i32> poison, i32 %266, i32 0
  %broadcast.splat1277 = shufflevector <4 x i32> %broadcast.splatinsert1276, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %polly.loop_header850.2
  %index1268 = phi i64 [ 0, %polly.loop_header850.2 ], [ %index.next1269, %vector.body1266 ]
  %vec.ind1274 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header850.2 ], [ %vec.ind.next1275, %vector.body1266 ]
  %267 = mul <4 x i32> %vec.ind1274, %broadcast.splat1277
  %268 = add <4 x i32> %267, <i32 1, i32 1, i32 1, i32 1>
  %269 = urem <4 x i32> %268, <i32 80, i32 80, i32 80, i32 80>
  %270 = sitofp <4 x i32> %269 to <4 x double>
  %271 = fmul fast <4 x double> %270, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %272 = shl i64 %index1268, 3
  %273 = add i64 %272, %265
  %274 = getelementptr i8, i8* %call1, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %271, <4 x double>* %275, align 8, !alias.scope !102, !noalias !107
  %index.next1269 = add i64 %index1268, 4
  %vec.ind.next1275 = add <4 x i32> %vec.ind1274, <i32 4, i32 4, i32 4, i32 4>
  %276 = icmp eq i64 %index.next1269, 32
  br i1 %276, label %polly.loop_exit858.2, label %vector.body1266, !llvm.loop !112

polly.loop_exit858.2:                             ; preds = %vector.body1266
  %polly.indvar_next854.2 = add nuw nsw i64 %polly.indvar853.2, 1
  %exitcond912.2.not = icmp eq i64 %polly.indvar_next854.2, 16
  br i1 %exitcond912.2.not, label %polly.loop_header850.1.2, label %polly.loop_header850.2

polly.loop_header850.1.2:                         ; preds = %polly.loop_exit858.2, %polly.loop_exit858.1.2
  %polly.indvar853.1.2 = phi i64 [ %polly.indvar_next854.1.2, %polly.loop_exit858.1.2 ], [ 0, %polly.loop_exit858.2 ]
  %277 = add nuw nsw i64 %polly.indvar853.1.2, 64
  %278 = mul nuw nsw i64 %277, 480
  %279 = trunc i64 %277 to i32
  %broadcast.splatinsert1288 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1289 = shufflevector <4 x i32> %broadcast.splatinsert1288, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1280

vector.body1280:                                  ; preds = %vector.body1280, %polly.loop_header850.1.2
  %index1282 = phi i64 [ 0, %polly.loop_header850.1.2 ], [ %index.next1283, %vector.body1280 ]
  %vec.ind1286 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.1.2 ], [ %vec.ind.next1287, %vector.body1280 ]
  %280 = add nuw nsw <4 x i64> %vec.ind1286, <i64 32, i64 32, i64 32, i64 32>
  %281 = trunc <4 x i64> %280 to <4 x i32>
  %282 = mul <4 x i32> %broadcast.splat1289, %281
  %283 = add <4 x i32> %282, <i32 1, i32 1, i32 1, i32 1>
  %284 = urem <4 x i32> %283, <i32 80, i32 80, i32 80, i32 80>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %287 = extractelement <4 x i64> %280, i32 0
  %288 = shl i64 %287, 3
  %289 = add i64 %288, %278
  %290 = getelementptr i8, i8* %call1, i64 %289
  %291 = bitcast i8* %290 to <4 x double>*
  store <4 x double> %286, <4 x double>* %291, align 8, !alias.scope !102, !noalias !107
  %index.next1283 = add i64 %index1282, 4
  %vec.ind.next1287 = add <4 x i64> %vec.ind1286, <i64 4, i64 4, i64 4, i64 4>
  %292 = icmp eq i64 %index.next1283, 28
  br i1 %292, label %polly.loop_exit858.1.2, label %vector.body1280, !llvm.loop !113

polly.loop_exit858.1.2:                           ; preds = %vector.body1280
  %polly.indvar_next854.1.2 = add nuw nsw i64 %polly.indvar853.1.2, 1
  %exitcond912.1.2.not = icmp eq i64 %polly.indvar_next854.1.2, 16
  br i1 %exitcond912.1.2.not, label %init_array.exit, label %polly.loop_header850.1.2

polly.loop_header824.1:                           ; preds = %polly.loop_exit832, %polly.loop_exit832.1
  %polly.indvar827.1 = phi i64 [ %polly.indvar_next828.1, %polly.loop_exit832.1 ], [ 0, %polly.loop_exit832 ]
  %293 = mul nuw nsw i64 %polly.indvar827.1, 480
  %294 = trunc i64 %polly.indvar827.1 to i32
  %broadcast.splatinsert1158 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1159 = shufflevector <4 x i32> %broadcast.splatinsert1158, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %polly.loop_header824.1
  %index1152 = phi i64 [ 0, %polly.loop_header824.1 ], [ %index.next1153, %vector.body1150 ]
  %vec.ind1156 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header824.1 ], [ %vec.ind.next1157, %vector.body1150 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1156, <i64 32, i64 32, i64 32, i64 32>
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1159, %296
  %298 = add <4 x i32> %297, <i32 2, i32 2, i32 2, i32 2>
  %299 = urem <4 x i32> %298, <i32 60, i32 60, i32 60, i32 60>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add i64 %303, %293
  %305 = getelementptr i8, i8* %call2, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !103, !noalias !105
  %index.next1153 = add i64 %index1152, 4
  %vec.ind.next1157 = add <4 x i64> %vec.ind1156, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1153, 28
  br i1 %307, label %polly.loop_exit832.1, label %vector.body1150, !llvm.loop !114

polly.loop_exit832.1:                             ; preds = %vector.body1150
  %polly.indvar_next828.1 = add nuw nsw i64 %polly.indvar827.1, 1
  %exitcond918.1.not = icmp eq i64 %polly.indvar_next828.1, 32
  br i1 %exitcond918.1.not, label %polly.loop_header824.1949, label %polly.loop_header824.1

polly.loop_header824.1949:                        ; preds = %polly.loop_exit832.1, %polly.loop_exit832.1960
  %polly.indvar827.1948 = phi i64 [ %polly.indvar_next828.1958, %polly.loop_exit832.1960 ], [ 0, %polly.loop_exit832.1 ]
  %308 = add nuw nsw i64 %polly.indvar827.1948, 32
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1172 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1173 = shufflevector <4 x i32> %broadcast.splatinsert1172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %polly.loop_header824.1949
  %index1164 = phi i64 [ 0, %polly.loop_header824.1949 ], [ %index.next1165, %vector.body1162 ]
  %vec.ind1170 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header824.1949 ], [ %vec.ind.next1171, %vector.body1162 ]
  %311 = mul <4 x i32> %vec.ind1170, %broadcast.splat1173
  %312 = add <4 x i32> %311, <i32 2, i32 2, i32 2, i32 2>
  %313 = urem <4 x i32> %312, <i32 60, i32 60, i32 60, i32 60>
  %314 = sitofp <4 x i32> %313 to <4 x double>
  %315 = fmul fast <4 x double> %314, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %316 = shl i64 %index1164, 3
  %317 = add i64 %316, %309
  %318 = getelementptr i8, i8* %call2, i64 %317
  %319 = bitcast i8* %318 to <4 x double>*
  store <4 x double> %315, <4 x double>* %319, align 8, !alias.scope !103, !noalias !105
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1171 = add <4 x i32> %vec.ind1170, <i32 4, i32 4, i32 4, i32 4>
  %320 = icmp eq i64 %index.next1165, 32
  br i1 %320, label %polly.loop_exit832.1960, label %vector.body1162, !llvm.loop !115

polly.loop_exit832.1960:                          ; preds = %vector.body1162
  %polly.indvar_next828.1958 = add nuw nsw i64 %polly.indvar827.1948, 1
  %exitcond918.1959.not = icmp eq i64 %polly.indvar_next828.1958, 32
  br i1 %exitcond918.1959.not, label %polly.loop_header824.1.1, label %polly.loop_header824.1949

polly.loop_header824.1.1:                         ; preds = %polly.loop_exit832.1960, %polly.loop_exit832.1.1
  %polly.indvar827.1.1 = phi i64 [ %polly.indvar_next828.1.1, %polly.loop_exit832.1.1 ], [ 0, %polly.loop_exit832.1960 ]
  %321 = add nuw nsw i64 %polly.indvar827.1.1, 32
  %322 = mul nuw nsw i64 %321, 480
  %323 = trunc i64 %321 to i32
  %broadcast.splatinsert1184 = insertelement <4 x i32> poison, i32 %323, i32 0
  %broadcast.splat1185 = shufflevector <4 x i32> %broadcast.splatinsert1184, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %polly.loop_header824.1.1
  %index1178 = phi i64 [ 0, %polly.loop_header824.1.1 ], [ %index.next1179, %vector.body1176 ]
  %vec.ind1182 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header824.1.1 ], [ %vec.ind.next1183, %vector.body1176 ]
  %324 = add nuw nsw <4 x i64> %vec.ind1182, <i64 32, i64 32, i64 32, i64 32>
  %325 = trunc <4 x i64> %324 to <4 x i32>
  %326 = mul <4 x i32> %broadcast.splat1185, %325
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 60, i32 60, i32 60, i32 60>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %331 = extractelement <4 x i64> %324, i32 0
  %332 = shl i64 %331, 3
  %333 = add i64 %332, %322
  %334 = getelementptr i8, i8* %call2, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %330, <4 x double>* %335, align 8, !alias.scope !103, !noalias !105
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1183 = add <4 x i64> %vec.ind1182, <i64 4, i64 4, i64 4, i64 4>
  %336 = icmp eq i64 %index.next1179, 28
  br i1 %336, label %polly.loop_exit832.1.1, label %vector.body1176, !llvm.loop !116

polly.loop_exit832.1.1:                           ; preds = %vector.body1176
  %polly.indvar_next828.1.1 = add nuw nsw i64 %polly.indvar827.1.1, 1
  %exitcond918.1.1.not = icmp eq i64 %polly.indvar_next828.1.1, 32
  br i1 %exitcond918.1.1.not, label %polly.loop_header824.2, label %polly.loop_header824.1.1

polly.loop_header824.2:                           ; preds = %polly.loop_exit832.1.1, %polly.loop_exit832.2
  %polly.indvar827.2 = phi i64 [ %polly.indvar_next828.2, %polly.loop_exit832.2 ], [ 0, %polly.loop_exit832.1.1 ]
  %337 = add nuw nsw i64 %polly.indvar827.2, 64
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %polly.loop_header824.2
  %index1190 = phi i64 [ 0, %polly.loop_header824.2 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1196 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header824.2 ], [ %vec.ind.next1197, %vector.body1188 ]
  %340 = mul <4 x i32> %vec.ind1196, %broadcast.splat1199
  %341 = add <4 x i32> %340, <i32 2, i32 2, i32 2, i32 2>
  %342 = urem <4 x i32> %341, <i32 60, i32 60, i32 60, i32 60>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %345 = shl i64 %index1190, 3
  %346 = add i64 %345, %338
  %347 = getelementptr i8, i8* %call2, i64 %346
  %348 = bitcast i8* %347 to <4 x double>*
  store <4 x double> %344, <4 x double>* %348, align 8, !alias.scope !103, !noalias !105
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1197 = add <4 x i32> %vec.ind1196, <i32 4, i32 4, i32 4, i32 4>
  %349 = icmp eq i64 %index.next1191, 32
  br i1 %349, label %polly.loop_exit832.2, label %vector.body1188, !llvm.loop !117

polly.loop_exit832.2:                             ; preds = %vector.body1188
  %polly.indvar_next828.2 = add nuw nsw i64 %polly.indvar827.2, 1
  %exitcond918.2.not = icmp eq i64 %polly.indvar_next828.2, 16
  br i1 %exitcond918.2.not, label %polly.loop_header824.1.2, label %polly.loop_header824.2

polly.loop_header824.1.2:                         ; preds = %polly.loop_exit832.2, %polly.loop_exit832.1.2
  %polly.indvar827.1.2 = phi i64 [ %polly.indvar_next828.1.2, %polly.loop_exit832.1.2 ], [ 0, %polly.loop_exit832.2 ]
  %350 = add nuw nsw i64 %polly.indvar827.1.2, 64
  %351 = mul nuw nsw i64 %350, 480
  %352 = trunc i64 %350 to i32
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %352, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %polly.loop_header824.1.2
  %index1204 = phi i64 [ 0, %polly.loop_header824.1.2 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1208 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header824.1.2 ], [ %vec.ind.next1209, %vector.body1202 ]
  %353 = add nuw nsw <4 x i64> %vec.ind1208, <i64 32, i64 32, i64 32, i64 32>
  %354 = trunc <4 x i64> %353 to <4 x i32>
  %355 = mul <4 x i32> %broadcast.splat1211, %354
  %356 = add <4 x i32> %355, <i32 2, i32 2, i32 2, i32 2>
  %357 = urem <4 x i32> %356, <i32 60, i32 60, i32 60, i32 60>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = extractelement <4 x i64> %353, i32 0
  %361 = shl i64 %360, 3
  %362 = add i64 %361, %351
  %363 = getelementptr i8, i8* %call2, i64 %362
  %364 = bitcast i8* %363 to <4 x double>*
  store <4 x double> %359, <4 x double>* %364, align 8, !alias.scope !103, !noalias !105
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1209 = add <4 x i64> %vec.ind1208, <i64 4, i64 4, i64 4, i64 4>
  %365 = icmp eq i64 %index.next1205, 28
  br i1 %365, label %polly.loop_exit832.1.2, label %vector.body1202, !llvm.loop !118

polly.loop_exit832.1.2:                           ; preds = %vector.body1202
  %polly.indvar_next828.1.2 = add nuw nsw i64 %polly.indvar827.1.2, 1
  %exitcond918.1.2.not = icmp eq i64 %polly.indvar_next828.1.2, 16
  br i1 %exitcond918.1.2.not, label %polly.loop_header850, label %polly.loop_header824.1.2

polly.loop_header797.1:                           ; preds = %polly.loop_exit805, %polly.loop_exit805.1
  %polly.indvar800.1 = phi i64 [ %polly.indvar_next801.1, %polly.loop_exit805.1 ], [ 0, %polly.loop_exit805 ]
  %366 = mul nuw nsw i64 %polly.indvar800.1, 640
  %367 = trunc i64 %polly.indvar800.1 to i32
  %broadcast.splatinsert1044 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1045 = shufflevector <4 x i32> %broadcast.splatinsert1044, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %polly.loop_header797.1
  %index1038 = phi i64 [ 0, %polly.loop_header797.1 ], [ %index.next1039, %vector.body1036 ]
  %vec.ind1042 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.1 ], [ %vec.ind.next1043, %vector.body1036 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1042, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1045, %369
  %371 = add <4 x i32> %370, <i32 3, i32 3, i32 3, i32 3>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add nuw nsw i64 %376, %366
  %378 = getelementptr i8, i8* %call, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !99, !noalias !101
  %index.next1039 = add i64 %index1038, 4
  %vec.ind.next1043 = add <4 x i64> %vec.ind1042, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1039, 32
  br i1 %380, label %polly.loop_exit805.1, label %vector.body1036, !llvm.loop !119

polly.loop_exit805.1:                             ; preds = %vector.body1036
  %polly.indvar_next801.1 = add nuw nsw i64 %polly.indvar800.1, 1
  %exitcond927.1.not = icmp eq i64 %polly.indvar_next801.1, 32
  br i1 %exitcond927.1.not, label %polly.loop_header797.2, label %polly.loop_header797.1

polly.loop_header797.2:                           ; preds = %polly.loop_exit805.1, %polly.loop_exit805.2
  %polly.indvar800.2 = phi i64 [ %polly.indvar_next801.2, %polly.loop_exit805.2 ], [ 0, %polly.loop_exit805.1 ]
  %381 = mul nuw nsw i64 %polly.indvar800.2, 640
  %382 = trunc i64 %polly.indvar800.2 to i32
  %broadcast.splatinsert1056 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat1057 = shufflevector <4 x i32> %broadcast.splatinsert1056, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %polly.loop_header797.2
  %index1050 = phi i64 [ 0, %polly.loop_header797.2 ], [ %index.next1051, %vector.body1048 ]
  %vec.ind1054 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.2 ], [ %vec.ind.next1055, %vector.body1048 ]
  %383 = add nuw nsw <4 x i64> %vec.ind1054, <i64 64, i64 64, i64 64, i64 64>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat1057, %384
  %386 = add <4 x i32> %385, <i32 3, i32 3, i32 3, i32 3>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %381
  %393 = getelementptr i8, i8* %call, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !99, !noalias !101
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1055 = add <4 x i64> %vec.ind1054, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next1051, 16
  br i1 %395, label %polly.loop_exit805.2, label %vector.body1048, !llvm.loop !120

polly.loop_exit805.2:                             ; preds = %vector.body1048
  %polly.indvar_next801.2 = add nuw nsw i64 %polly.indvar800.2, 1
  %exitcond927.2.not = icmp eq i64 %polly.indvar_next801.2, 32
  br i1 %exitcond927.2.not, label %polly.loop_header797.1963, label %polly.loop_header797.2

polly.loop_header797.1963:                        ; preds = %polly.loop_exit805.2, %polly.loop_exit805.1974
  %polly.indvar800.1962 = phi i64 [ %polly.indvar_next801.1972, %polly.loop_exit805.1974 ], [ 0, %polly.loop_exit805.2 ]
  %396 = add nuw nsw i64 %polly.indvar800.1962, 32
  %397 = mul nuw nsw i64 %396, 640
  %398 = trunc i64 %396 to i32
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %398, i32 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %polly.loop_header797.1963
  %index1062 = phi i64 [ 0, %polly.loop_header797.1963 ], [ %index.next1063, %vector.body1060 ]
  %vec.ind1068 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header797.1963 ], [ %vec.ind.next1069, %vector.body1060 ]
  %399 = mul <4 x i32> %vec.ind1068, %broadcast.splat1071
  %400 = add <4 x i32> %399, <i32 3, i32 3, i32 3, i32 3>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = shl i64 %index1062, 3
  %405 = add nuw nsw i64 %404, %397
  %406 = getelementptr i8, i8* %call, i64 %405
  %407 = bitcast i8* %406 to <4 x double>*
  store <4 x double> %403, <4 x double>* %407, align 8, !alias.scope !99, !noalias !101
  %index.next1063 = add i64 %index1062, 4
  %vec.ind.next1069 = add <4 x i32> %vec.ind1068, <i32 4, i32 4, i32 4, i32 4>
  %408 = icmp eq i64 %index.next1063, 32
  br i1 %408, label %polly.loop_exit805.1974, label %vector.body1060, !llvm.loop !121

polly.loop_exit805.1974:                          ; preds = %vector.body1060
  %polly.indvar_next801.1972 = add nuw nsw i64 %polly.indvar800.1962, 1
  %exitcond927.1973.not = icmp eq i64 %polly.indvar_next801.1972, 32
  br i1 %exitcond927.1973.not, label %polly.loop_header797.1.1, label %polly.loop_header797.1963

polly.loop_header797.1.1:                         ; preds = %polly.loop_exit805.1974, %polly.loop_exit805.1.1
  %polly.indvar800.1.1 = phi i64 [ %polly.indvar_next801.1.1, %polly.loop_exit805.1.1 ], [ 0, %polly.loop_exit805.1974 ]
  %409 = add nuw nsw i64 %polly.indvar800.1.1, 32
  %410 = mul nuw nsw i64 %409, 640
  %411 = trunc i64 %409 to i32
  %broadcast.splatinsert1082 = insertelement <4 x i32> poison, i32 %411, i32 0
  %broadcast.splat1083 = shufflevector <4 x i32> %broadcast.splatinsert1082, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %polly.loop_header797.1.1
  %index1076 = phi i64 [ 0, %polly.loop_header797.1.1 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1080 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.1.1 ], [ %vec.ind.next1081, %vector.body1074 ]
  %412 = add nuw nsw <4 x i64> %vec.ind1080, <i64 32, i64 32, i64 32, i64 32>
  %413 = trunc <4 x i64> %412 to <4 x i32>
  %414 = mul <4 x i32> %broadcast.splat1083, %413
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = extractelement <4 x i64> %412, i32 0
  %420 = shl i64 %419, 3
  %421 = add nuw nsw i64 %420, %410
  %422 = getelementptr i8, i8* %call, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %418, <4 x double>* %423, align 8, !alias.scope !99, !noalias !101
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1081 = add <4 x i64> %vec.ind1080, <i64 4, i64 4, i64 4, i64 4>
  %424 = icmp eq i64 %index.next1077, 32
  br i1 %424, label %polly.loop_exit805.1.1, label %vector.body1074, !llvm.loop !122

polly.loop_exit805.1.1:                           ; preds = %vector.body1074
  %polly.indvar_next801.1.1 = add nuw nsw i64 %polly.indvar800.1.1, 1
  %exitcond927.1.1.not = icmp eq i64 %polly.indvar_next801.1.1, 32
  br i1 %exitcond927.1.1.not, label %polly.loop_header797.2.1, label %polly.loop_header797.1.1

polly.loop_header797.2.1:                         ; preds = %polly.loop_exit805.1.1, %polly.loop_exit805.2.1
  %polly.indvar800.2.1 = phi i64 [ %polly.indvar_next801.2.1, %polly.loop_exit805.2.1 ], [ 0, %polly.loop_exit805.1.1 ]
  %425 = add nuw nsw i64 %polly.indvar800.2.1, 32
  %426 = mul nuw nsw i64 %425, 640
  %427 = trunc i64 %425 to i32
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %polly.loop_header797.2.1
  %index1088 = phi i64 [ 0, %polly.loop_header797.2.1 ], [ %index.next1089, %vector.body1086 ]
  %vec.ind1092 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.2.1 ], [ %vec.ind.next1093, %vector.body1086 ]
  %428 = add nuw nsw <4 x i64> %vec.ind1092, <i64 64, i64 64, i64 64, i64 64>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1095, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !99, !noalias !101
  %index.next1089 = add i64 %index1088, 4
  %vec.ind.next1093 = add <4 x i64> %vec.ind1092, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next1089, 16
  br i1 %440, label %polly.loop_exit805.2.1, label %vector.body1086, !llvm.loop !123

polly.loop_exit805.2.1:                           ; preds = %vector.body1086
  %polly.indvar_next801.2.1 = add nuw nsw i64 %polly.indvar800.2.1, 1
  %exitcond927.2.1.not = icmp eq i64 %polly.indvar_next801.2.1, 32
  br i1 %exitcond927.2.1.not, label %polly.loop_header797.2977, label %polly.loop_header797.2.1

polly.loop_header797.2977:                        ; preds = %polly.loop_exit805.2.1, %polly.loop_exit805.2988
  %polly.indvar800.2976 = phi i64 [ %polly.indvar_next801.2986, %polly.loop_exit805.2988 ], [ 0, %polly.loop_exit805.2.1 ]
  %441 = add nuw nsw i64 %polly.indvar800.2976, 64
  %442 = mul nuw nsw i64 %441, 640
  %443 = trunc i64 %441 to i32
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %443, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %polly.loop_header797.2977
  %index1100 = phi i64 [ 0, %polly.loop_header797.2977 ], [ %index.next1101, %vector.body1098 ]
  %vec.ind1106 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header797.2977 ], [ %vec.ind.next1107, %vector.body1098 ]
  %444 = mul <4 x i32> %vec.ind1106, %broadcast.splat1109
  %445 = add <4 x i32> %444, <i32 3, i32 3, i32 3, i32 3>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %449 = shl i64 %index1100, 3
  %450 = add nuw nsw i64 %449, %442
  %451 = getelementptr i8, i8* %call, i64 %450
  %452 = bitcast i8* %451 to <4 x double>*
  store <4 x double> %448, <4 x double>* %452, align 8, !alias.scope !99, !noalias !101
  %index.next1101 = add i64 %index1100, 4
  %vec.ind.next1107 = add <4 x i32> %vec.ind1106, <i32 4, i32 4, i32 4, i32 4>
  %453 = icmp eq i64 %index.next1101, 32
  br i1 %453, label %polly.loop_exit805.2988, label %vector.body1098, !llvm.loop !124

polly.loop_exit805.2988:                          ; preds = %vector.body1098
  %polly.indvar_next801.2986 = add nuw nsw i64 %polly.indvar800.2976, 1
  %exitcond927.2987.not = icmp eq i64 %polly.indvar_next801.2986, 16
  br i1 %exitcond927.2987.not, label %polly.loop_header797.1.2, label %polly.loop_header797.2977

polly.loop_header797.1.2:                         ; preds = %polly.loop_exit805.2988, %polly.loop_exit805.1.2
  %polly.indvar800.1.2 = phi i64 [ %polly.indvar_next801.1.2, %polly.loop_exit805.1.2 ], [ 0, %polly.loop_exit805.2988 ]
  %454 = add nuw nsw i64 %polly.indvar800.1.2, 64
  %455 = mul nuw nsw i64 %454, 640
  %456 = trunc i64 %454 to i32
  %broadcast.splatinsert1120 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1121 = shufflevector <4 x i32> %broadcast.splatinsert1120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %polly.loop_header797.1.2
  %index1114 = phi i64 [ 0, %polly.loop_header797.1.2 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1118 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.1.2 ], [ %vec.ind.next1119, %vector.body1112 ]
  %457 = add nuw nsw <4 x i64> %vec.ind1118, <i64 32, i64 32, i64 32, i64 32>
  %458 = trunc <4 x i64> %457 to <4 x i32>
  %459 = mul <4 x i32> %broadcast.splat1121, %458
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = extractelement <4 x i64> %457, i32 0
  %465 = shl i64 %464, 3
  %466 = add nuw nsw i64 %465, %455
  %467 = getelementptr i8, i8* %call, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %463, <4 x double>* %468, align 8, !alias.scope !99, !noalias !101
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1119 = add <4 x i64> %vec.ind1118, <i64 4, i64 4, i64 4, i64 4>
  %469 = icmp eq i64 %index.next1115, 32
  br i1 %469, label %polly.loop_exit805.1.2, label %vector.body1112, !llvm.loop !125

polly.loop_exit805.1.2:                           ; preds = %vector.body1112
  %polly.indvar_next801.1.2 = add nuw nsw i64 %polly.indvar800.1.2, 1
  %exitcond927.1.2.not = icmp eq i64 %polly.indvar_next801.1.2, 16
  br i1 %exitcond927.1.2.not, label %polly.loop_header797.2.2, label %polly.loop_header797.1.2

polly.loop_header797.2.2:                         ; preds = %polly.loop_exit805.1.2, %polly.loop_exit805.2.2
  %polly.indvar800.2.2 = phi i64 [ %polly.indvar_next801.2.2, %polly.loop_exit805.2.2 ], [ 0, %polly.loop_exit805.1.2 ]
  %470 = add nuw nsw i64 %polly.indvar800.2.2, 64
  %471 = mul nuw nsw i64 %470, 640
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1132 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1133 = shufflevector <4 x i32> %broadcast.splatinsert1132, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %polly.loop_header797.2.2
  %index1126 = phi i64 [ 0, %polly.loop_header797.2.2 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1130 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.2.2 ], [ %vec.ind.next1131, %vector.body1124 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1130, <i64 64, i64 64, i64 64, i64 64>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1133, %474
  %476 = add <4 x i32> %475, <i32 3, i32 3, i32 3, i32 3>
  %477 = urem <4 x i32> %476, <i32 80, i32 80, i32 80, i32 80>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add nuw nsw i64 %481, %471
  %483 = getelementptr i8, i8* %call, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !99, !noalias !101
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1131 = add <4 x i64> %vec.ind1130, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1127, 16
  br i1 %485, label %polly.loop_exit805.2.2, label %vector.body1124, !llvm.loop !126

polly.loop_exit805.2.2:                           ; preds = %vector.body1124
  %polly.indvar_next801.2.2 = add nuw nsw i64 %polly.indvar800.2.2, 1
  %exitcond927.2.2.not = icmp eq i64 %polly.indvar_next801.2.2, 16
  br i1 %exitcond927.2.2.not, label %polly.loop_header824, label %polly.loop_header797.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 64}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 80}
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
!50 = !{!"llvm.loop.tile.size", i32 50}
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
!105 = !{!102, !99}
!106 = distinct !{!106, !13}
!107 = !{!103, !99}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
