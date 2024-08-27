; ModuleID = 'syr2k_recreations//mmp_syr2k_S_0.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_0.c"
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
  %call708 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1569 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1569, %call2
  %polly.access.call2589 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2589, %call1
  %2 = or i1 %0, %1
  %polly.access.call609 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call609, %call2
  %4 = icmp ule i8* %polly.access.call2589, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call609, %call1
  %8 = icmp ule i8* %polly.access.call1569, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header694, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep973 = getelementptr i8, i8* %call2, i64 %12
  %scevgep972 = getelementptr i8, i8* %call2, i64 %11
  %scevgep971 = getelementptr i8, i8* %call1, i64 %12
  %scevgep970 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep970, %scevgep973
  %bound1 = icmp ult i8* %scevgep972, %scevgep971
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
  br i1 %exitcond18.not.i, label %vector.ph977, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph977:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert984 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat985 = shufflevector <4 x i64> %broadcast.splatinsert984, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body976

vector.body976:                                   ; preds = %vector.body976, %vector.ph977
  %index978 = phi i64 [ 0, %vector.ph977 ], [ %index.next979, %vector.body976 ]
  %vec.ind982 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph977 ], [ %vec.ind.next983, %vector.body976 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind982, %broadcast.splat985
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call708, i64 %indvars.iv7.i, i64 %index978
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next979 = add i64 %index978, 4
  %vec.ind.next983 = add <4 x i64> %vec.ind982, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next979, 80
  br i1 %40, label %for.inc41.i, label %vector.body976, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body976
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph977, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit755.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header489, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1333, label %vector.ph1259

vector.ph1259:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %vector.ph1259
  %index1260 = phi i64 [ 0, %vector.ph1259 ], [ %index.next1261, %vector.body1258 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call708, i64 %indvars.iv21.i, i64 %index1260
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1261 = add i64 %index1260, 4
  %46 = icmp eq i64 %index.next1261, %n.vec
  br i1 %46, label %middle.block1256, label %vector.body1258, !llvm.loop !18

middle.block1256:                                 ; preds = %vector.body1258
  %cmp.n1263 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1263, label %for.inc6.i, label %for.body3.i46.preheader1333

for.body3.i46.preheader1333:                      ; preds = %for.body3.i46.preheader, %middle.block1256
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1256 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1333, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1333 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call708, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1256, %for.cond1.preheader.i45
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call708, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !21

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !31

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit519.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1279 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1279, label %for.body3.i60.preheader1331, label %vector.ph1280

vector.ph1280:                                    ; preds = %for.body3.i60.preheader
  %n.vec1282 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1284, %vector.body1278 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call708, i64 %indvars.iv21.i52, i64 %index1283
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1287 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1287, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1284 = add i64 %index1283, 4
  %57 = icmp eq i64 %index.next1284, %n.vec1282
  br i1 %57, label %middle.block1276, label %vector.body1278, !llvm.loop !54

middle.block1276:                                 ; preds = %vector.body1278
  %cmp.n1286 = icmp eq i64 %indvars.iv21.i52, %n.vec1282
  br i1 %cmp.n1286, label %for.inc6.i63, label %for.body3.i60.preheader1331

for.body3.i60.preheader1331:                      ; preds = %for.body3.i60.preheader, %middle.block1276
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1282, %middle.block1276 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1331, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1331 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call708, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1276, %for.cond1.preheader.i54
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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call708, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !21

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !31

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit366.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1305 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1305, label %for.body3.i99.preheader1329, label %vector.ph1306

vector.ph1306:                                    ; preds = %for.body3.i99.preheader
  %n.vec1308 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1306
  %index1309 = phi i64 [ 0, %vector.ph1306 ], [ %index.next1310, %vector.body1304 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call708, i64 %indvars.iv21.i91, i64 %index1309
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1313 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1313, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1310 = add i64 %index1309, 4
  %68 = icmp eq i64 %index.next1310, %n.vec1308
  br i1 %68, label %middle.block1302, label %vector.body1304, !llvm.loop !56

middle.block1302:                                 ; preds = %vector.body1304
  %cmp.n1312 = icmp eq i64 %indvars.iv21.i91, %n.vec1308
  br i1 %cmp.n1312, label %for.inc6.i102, label %for.body3.i99.preheader1329

for.body3.i99.preheader1329:                      ; preds = %for.body3.i99.preheader, %middle.block1302
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1308, %middle.block1302 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1329, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1329 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call708, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1302, %for.cond1.preheader.i93
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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call708, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !21

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !31

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit213.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call708, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1317 = phi i64 [ %indvar.next1318, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1317, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1319 = icmp ult i64 %88, 4
  br i1 %min.iters.check1319, label %polly.loop_header191.preheader, label %vector.ph1320

vector.ph1320:                                    ; preds = %polly.loop_header
  %n.vec1322 = and i64 %88, -4
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %vector.ph1320
  %index1323 = phi i64 [ 0, %vector.ph1320 ], [ %index.next1324, %vector.body1316 ]
  %90 = shl nuw nsw i64 %index1323, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1327, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1324 = add i64 %index1323, 4
  %95 = icmp eq i64 %index.next1324, %n.vec1322
  br i1 %95, label %middle.block1314, label %vector.body1316, !llvm.loop !67

middle.block1314:                                 ; preds = %vector.body1316
  %cmp.n1326 = icmp eq i64 %88, %n.vec1322
  br i1 %cmp.n1326, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1314
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1322, %middle.block1314 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1314
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond776.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1318 = add i64 %indvar1317, 1
  br i1 %exitcond776.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond775.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond775.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit213.1
  %polly.loop_cond204 = phi i1 [ false, %polly.loop_exit213.1 ], [ true, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ 1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar202, -32
  %98 = icmp slt i64 %97, -28
  %99 = select i1 %98, i64 %97, i64 -28
  %100 = shl nuw nsw i64 %polly.indvar202, 5
  %101 = add nsw i64 %99, 60
  br label %polly.loop_header211

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header199 ]
  %102 = shl nsw i64 %polly.indvar214, 2
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 63)
  %103 = mul nsw i64 %polly.indvar214, 1920
  %104 = mul nsw i64 %polly.indvar214, 2560
  %indvars.iv.next771 = or i64 %indvars.iv, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771, i64 63)
  %105 = or i64 %102, 1
  %106 = mul nuw nsw i64 %105, 480
  %107 = mul nuw nsw i64 %105, 640
  %indvars.iv.next771.1 = add nuw nsw i64 %indvars.iv.next771, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.1, i64 63)
  %108 = or i64 %102, 2
  %109 = mul nuw nsw i64 %108, 480
  %110 = mul nuw nsw i64 %108, 640
  %indvars.iv.next771.2 = or i64 %indvars.iv, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.2, i64 63)
  %111 = or i64 %102, 3
  %112 = mul nuw nsw i64 %111, 480
  %113 = mul nuw nsw i64 %111, 640
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit231.3
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %exitcond774.not = icmp eq i64 %polly.indvar_next215, 20
  br i1 %exitcond774.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit231.3, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_exit231.3 ]
  %114 = add nuw nsw i64 %polly.indvar220, %100
  %115 = shl i64 %114, 3
  %116 = add i64 %103, %115
  %scevgep238 = getelementptr i8, i8* %call2, i64 %116
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !66, !noalias !70
  %scevgep244 = getelementptr i8, i8* %call1, i64 %116
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229

polly.loop_exit231:                               ; preds = %polly.loop_header229
  %117 = add i64 %106, %115
  %scevgep238.1 = getelementptr i8, i8* %call2, i64 %117
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !66, !noalias !70
  %scevgep244.1 = getelementptr i8, i8* %call1, i64 %117
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.1

polly.loop_header229:                             ; preds = %polly.loop_header229, %polly.loop_header217
  %polly.indvar232 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next233, %polly.loop_header229 ]
  %118 = mul nuw nsw i64 %polly.indvar232, 480
  %119 = add i64 %118, %115
  %scevgep235 = getelementptr i8, i8* %call1, i64 %119
  %scevgep235236 = bitcast i8* %scevgep235 to double*
  %_p_scalar_237 = load double, double* %scevgep235236, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112 = fmul fast double %_p_scalar_240, %_p_scalar_237
  %scevgep241 = getelementptr i8, i8* %call2, i64 %119
  %scevgep241242 = bitcast i8* %scevgep241 to double*
  %_p_scalar_243 = load double, double* %scevgep241242, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114 = fmul fast double %_p_scalar_246, %_p_scalar_243
  %120 = shl i64 %polly.indvar232, 3
  %121 = add nuw nsw i64 %120, %104
  %scevgep247 = getelementptr i8, i8* %call, i64 %121
  %scevgep247248 = bitcast i8* %scevgep247 to double*
  %_p_scalar_249 = load double, double* %scevgep247248, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_249
  store double %p_add42.i118, double* %scevgep247248, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233 = add nuw nsw i64 %polly.indvar232, 1
  %exitcond.not = icmp eq i64 %polly.indvar232, %smin
  br i1 %exitcond.not, label %polly.loop_exit231, label %polly.loop_header229

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar1291 = phi i64 [ %indvar.next1292, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %122 = add i64 %indvar1291, 1
  %123 = mul nuw nsw i64 %polly.indvar339, 640
  %scevgep348 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1293 = icmp ult i64 %122, 4
  br i1 %min.iters.check1293, label %polly.loop_header342.preheader, label %vector.ph1294

vector.ph1294:                                    ; preds = %polly.loop_header336
  %n.vec1296 = and i64 %122, -4
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1294
  %index1297 = phi i64 [ 0, %vector.ph1294 ], [ %index.next1298, %vector.body1290 ]
  %124 = shl nuw nsw i64 %index1297, 3
  %125 = getelementptr i8, i8* %scevgep348, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1301 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !72, !noalias !74
  %127 = fmul fast <4 x double> %wide.load1301, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !72, !noalias !74
  %index.next1298 = add i64 %index1297, 4
  %129 = icmp eq i64 %index.next1298, %n.vec1296
  br i1 %129, label %middle.block1288, label %vector.body1290, !llvm.loop !77

middle.block1288:                                 ; preds = %vector.body1290
  %cmp.n1300 = icmp eq i64 %122, %n.vec1296
  br i1 %cmp.n1300, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block1288
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec1296, %middle.block1288 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block1288
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond787.not = icmp eq i64 %polly.indvar_next340, 80
  %indvar.next1292 = add i64 %indvar1291, 1
  br i1 %exitcond787.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %130
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond786.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond786.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !78

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit366.1
  %polly.loop_cond357 = phi i1 [ false, %polly.loop_exit366.1 ], [ true, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ 1, %polly.loop_exit366.1 ], [ 0, %polly.loop_exit344 ]
  %131 = mul nuw nsw i64 %polly.indvar355, -32
  %132 = icmp slt i64 %131, -28
  %133 = select i1 %132, i64 %131, i64 -28
  %134 = shl nuw nsw i64 %polly.indvar355, 5
  %135 = add nsw i64 %133, 60
  br label %polly.loop_header364

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header352
  %indvars.iv777 = phi i64 [ %indvars.iv.next778, %polly.loop_exit372 ], [ 0, %polly.loop_header352 ]
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_exit372 ], [ 0, %polly.loop_header352 ]
  %136 = shl nsw i64 %polly.indvar367, 2
  %smin781 = call i64 @llvm.smin.i64(i64 %indvars.iv777, i64 63)
  %137 = mul nsw i64 %polly.indvar367, 1920
  %138 = mul nsw i64 %polly.indvar367, 2560
  %indvars.iv.next780 = or i64 %indvars.iv777, 1
  %smin781.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next780, i64 63)
  %139 = or i64 %136, 1
  %140 = mul nuw nsw i64 %139, 480
  %141 = mul nuw nsw i64 %139, 640
  %indvars.iv.next780.1 = add nuw nsw i64 %indvars.iv.next780, 1
  %smin781.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next780.1, i64 63)
  %142 = or i64 %136, 2
  %143 = mul nuw nsw i64 %142, 480
  %144 = mul nuw nsw i64 %142, 640
  %indvars.iv.next780.2 = or i64 %indvars.iv777, 3
  %smin781.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next780.2, i64 63)
  %145 = or i64 %136, 3
  %146 = mul nuw nsw i64 %145, 480
  %147 = mul nuw nsw i64 %145, 640
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_exit384.3
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %indvars.iv.next778 = add nuw nsw i64 %indvars.iv777, 4
  %exitcond785.not = icmp eq i64 %polly.indvar_next368, 20
  br i1 %exitcond785.not, label %polly.loop_header364.1, label %polly.loop_header364

polly.loop_header370:                             ; preds = %polly.loop_exit384.3, %polly.loop_header364
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header364 ], [ %polly.indvar_next374, %polly.loop_exit384.3 ]
  %148 = add nuw nsw i64 %polly.indvar373, %134
  %149 = shl i64 %148, 3
  %150 = add i64 %137, %149
  %scevgep391 = getelementptr i8, i8* %call2, i64 %150
  %scevgep391392 = bitcast i8* %scevgep391 to double*
  %_p_scalar_393 = load double, double* %scevgep391392, align 8, !alias.scope !76, !noalias !79
  %scevgep397 = getelementptr i8, i8* %call1, i64 %150
  %scevgep397398 = bitcast i8* %scevgep397 to double*
  %_p_scalar_399 = load double, double* %scevgep397398, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %151 = add i64 %140, %149
  %scevgep391.1 = getelementptr i8, i8* %call2, i64 %151
  %scevgep391392.1 = bitcast i8* %scevgep391.1 to double*
  %_p_scalar_393.1 = load double, double* %scevgep391392.1, align 8, !alias.scope !76, !noalias !79
  %scevgep397.1 = getelementptr i8, i8* %call1, i64 %151
  %scevgep397398.1 = bitcast i8* %scevgep397.1 to double*
  %_p_scalar_399.1 = load double, double* %scevgep397398.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.1

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header370
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %152 = mul nuw nsw i64 %polly.indvar385, 480
  %153 = add i64 %152, %149
  %scevgep388 = getelementptr i8, i8* %call1, i64 %153
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73 = fmul fast double %_p_scalar_393, %_p_scalar_390
  %scevgep394 = getelementptr i8, i8* %call2, i64 %153
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75 = fmul fast double %_p_scalar_399, %_p_scalar_396
  %154 = shl i64 %polly.indvar385, 3
  %155 = add nuw nsw i64 %154, %138
  %scevgep400 = getelementptr i8, i8* %call, i64 %155
  %scevgep400401 = bitcast i8* %scevgep400 to double*
  %_p_scalar_402 = load double, double* %scevgep400401, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_402
  store double %p_add42.i79, double* %scevgep400401, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond782.not = icmp eq i64 %polly.indvar385, %smin781
  br i1 %exitcond782.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header489:                             ; preds = %init_array.exit, %polly.loop_exit497
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit497 ], [ 0, %init_array.exit ]
  %polly.indvar492 = phi i64 [ %polly.indvar_next493, %polly.loop_exit497 ], [ 1, %init_array.exit ]
  %156 = add i64 %indvar, 1
  %157 = mul nuw nsw i64 %polly.indvar492, 640
  %scevgep501 = getelementptr i8, i8* %call, i64 %157
  %min.iters.check1267 = icmp ult i64 %156, 4
  br i1 %min.iters.check1267, label %polly.loop_header495.preheader, label %vector.ph1268

vector.ph1268:                                    ; preds = %polly.loop_header489
  %n.vec1270 = and i64 %156, -4
  br label %vector.body1266

vector.body1266:                                  ; preds = %vector.body1266, %vector.ph1268
  %index1271 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1272, %vector.body1266 ]
  %158 = shl nuw nsw i64 %index1271, 3
  %159 = getelementptr i8, i8* %scevgep501, i64 %158
  %160 = bitcast i8* %159 to <4 x double>*
  %wide.load1275 = load <4 x double>, <4 x double>* %160, align 8, !alias.scope !81, !noalias !83
  %161 = fmul fast <4 x double> %wide.load1275, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %162 = bitcast i8* %159 to <4 x double>*
  store <4 x double> %161, <4 x double>* %162, align 8, !alias.scope !81, !noalias !83
  %index.next1272 = add i64 %index1271, 4
  %163 = icmp eq i64 %index.next1272, %n.vec1270
  br i1 %163, label %middle.block1264, label %vector.body1266, !llvm.loop !86

middle.block1264:                                 ; preds = %vector.body1266
  %cmp.n1274 = icmp eq i64 %156, %n.vec1270
  br i1 %cmp.n1274, label %polly.loop_exit497, label %polly.loop_header495.preheader

polly.loop_header495.preheader:                   ; preds = %polly.loop_header489, %middle.block1264
  %polly.indvar498.ph = phi i64 [ 0, %polly.loop_header489 ], [ %n.vec1270, %middle.block1264 ]
  br label %polly.loop_header495

polly.loop_exit497:                               ; preds = %polly.loop_header495, %middle.block1264
  %polly.indvar_next493 = add nuw nsw i64 %polly.indvar492, 1
  %exitcond798.not = icmp eq i64 %polly.indvar_next493, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond798.not, label %polly.loop_header505, label %polly.loop_header489

polly.loop_header495:                             ; preds = %polly.loop_header495.preheader, %polly.loop_header495
  %polly.indvar498 = phi i64 [ %polly.indvar_next499, %polly.loop_header495 ], [ %polly.indvar498.ph, %polly.loop_header495.preheader ]
  %164 = shl nuw nsw i64 %polly.indvar498, 3
  %scevgep502 = getelementptr i8, i8* %scevgep501, i64 %164
  %scevgep502503 = bitcast i8* %scevgep502 to double*
  %_p_scalar_504 = load double, double* %scevgep502503, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_504, 1.200000e+00
  store double %p_mul.i, double* %scevgep502503, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next499 = add nuw nsw i64 %polly.indvar498, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next499, %polly.indvar492
  br i1 %exitcond797.not, label %polly.loop_exit497, label %polly.loop_header495, !llvm.loop !87

polly.loop_header505:                             ; preds = %polly.loop_exit497, %polly.loop_exit519.1
  %polly.loop_cond510 = phi i1 [ false, %polly.loop_exit519.1 ], [ true, %polly.loop_exit497 ]
  %polly.indvar508 = phi i64 [ 1, %polly.loop_exit519.1 ], [ 0, %polly.loop_exit497 ]
  %165 = mul nuw nsw i64 %polly.indvar508, -32
  %166 = icmp slt i64 %165, -28
  %167 = select i1 %166, i64 %165, i64 -28
  %168 = shl nuw nsw i64 %polly.indvar508, 5
  %169 = add nsw i64 %167, 60
  br label %polly.loop_header517

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header505
  %indvars.iv788 = phi i64 [ %indvars.iv.next789, %polly.loop_exit525 ], [ 0, %polly.loop_header505 ]
  %polly.indvar520 = phi i64 [ %polly.indvar_next521, %polly.loop_exit525 ], [ 0, %polly.loop_header505 ]
  %170 = shl nsw i64 %polly.indvar520, 2
  %smin792 = call i64 @llvm.smin.i64(i64 %indvars.iv788, i64 63)
  %171 = mul nsw i64 %polly.indvar520, 1920
  %172 = mul nsw i64 %polly.indvar520, 2560
  %indvars.iv.next791 = or i64 %indvars.iv788, 1
  %smin792.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next791, i64 63)
  %173 = or i64 %170, 1
  %174 = mul nuw nsw i64 %173, 480
  %175 = mul nuw nsw i64 %173, 640
  %indvars.iv.next791.1 = add nuw nsw i64 %indvars.iv.next791, 1
  %smin792.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next791.1, i64 63)
  %176 = or i64 %170, 2
  %177 = mul nuw nsw i64 %176, 480
  %178 = mul nuw nsw i64 %176, 640
  %indvars.iv.next791.2 = or i64 %indvars.iv788, 3
  %smin792.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next791.2, i64 63)
  %179 = or i64 %170, 3
  %180 = mul nuw nsw i64 %179, 480
  %181 = mul nuw nsw i64 %179, 640
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_exit537.3
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %indvars.iv.next789 = add nuw nsw i64 %indvars.iv788, 4
  %exitcond796.not = icmp eq i64 %polly.indvar_next521, 20
  br i1 %exitcond796.not, label %polly.loop_header517.1, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_exit537.3, %polly.loop_header517
  %polly.indvar526 = phi i64 [ 0, %polly.loop_header517 ], [ %polly.indvar_next527, %polly.loop_exit537.3 ]
  %182 = add nuw nsw i64 %polly.indvar526, %168
  %183 = shl i64 %182, 3
  %184 = add i64 %171, %183
  %scevgep544 = getelementptr i8, i8* %call2, i64 %184
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !85, !noalias !88
  %scevgep550 = getelementptr i8, i8* %call1, i64 %184
  %scevgep550551 = bitcast i8* %scevgep550 to double*
  %_p_scalar_552 = load double, double* %scevgep550551, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535

polly.loop_exit537:                               ; preds = %polly.loop_header535
  %185 = add i64 %174, %183
  %scevgep544.1 = getelementptr i8, i8* %call2, i64 %185
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !85, !noalias !88
  %scevgep550.1 = getelementptr i8, i8* %call1, i64 %185
  %scevgep550551.1 = bitcast i8* %scevgep550.1 to double*
  %_p_scalar_552.1 = load double, double* %scevgep550551.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.1

polly.loop_header535:                             ; preds = %polly.loop_header535, %polly.loop_header523
  %polly.indvar538 = phi i64 [ 0, %polly.loop_header523 ], [ %polly.indvar_next539, %polly.loop_header535 ]
  %186 = mul nuw nsw i64 %polly.indvar538, 480
  %187 = add i64 %186, %183
  %scevgep541 = getelementptr i8, i8* %call1, i64 %187
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i = fmul fast double %_p_scalar_546, %_p_scalar_543
  %scevgep547 = getelementptr i8, i8* %call2, i64 %187
  %scevgep547548 = bitcast i8* %scevgep547 to double*
  %_p_scalar_549 = load double, double* %scevgep547548, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i = fmul fast double %_p_scalar_552, %_p_scalar_549
  %188 = shl i64 %polly.indvar538, 3
  %189 = add nuw nsw i64 %188, %172
  %scevgep553 = getelementptr i8, i8* %call, i64 %189
  %scevgep553554 = bitcast i8* %scevgep553 to double*
  %_p_scalar_555 = load double, double* %scevgep553554, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_555
  store double %p_add42.i, double* %scevgep553554, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond793.not = icmp eq i64 %polly.indvar538, %smin792
  br i1 %exitcond793.not, label %polly.loop_exit537, label %polly.loop_header535

polly.loop_header694:                             ; preds = %entry, %polly.loop_exit702
  %polly.indvar697 = phi i64 [ %polly.indvar_next698, %polly.loop_exit702 ], [ 0, %entry ]
  %190 = mul nuw nsw i64 %polly.indvar697, 640
  %191 = trunc i64 %polly.indvar697 to i32
  %broadcast.splatinsert998 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat999 = shufflevector <4 x i32> %broadcast.splatinsert998, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %polly.loop_header694
  %index990 = phi i64 [ 0, %polly.loop_header694 ], [ %index.next991, %vector.body988 ]
  %vec.ind996 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header694 ], [ %vec.ind.next997, %vector.body988 ]
  %192 = mul <4 x i32> %vec.ind996, %broadcast.splat999
  %193 = add <4 x i32> %192, <i32 3, i32 3, i32 3, i32 3>
  %194 = urem <4 x i32> %193, <i32 80, i32 80, i32 80, i32 80>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %197 = shl i64 %index990, 3
  %198 = add nuw nsw i64 %197, %190
  %199 = getelementptr i8, i8* %call, i64 %198
  %200 = bitcast i8* %199 to <4 x double>*
  store <4 x double> %196, <4 x double>* %200, align 8, !alias.scope !90, !noalias !92
  %index.next991 = add i64 %index990, 4
  %vec.ind.next997 = add <4 x i32> %vec.ind996, <i32 4, i32 4, i32 4, i32 4>
  %201 = icmp eq i64 %index.next991, 32
  br i1 %201, label %polly.loop_exit702, label %vector.body988, !llvm.loop !95

polly.loop_exit702:                               ; preds = %vector.body988
  %polly.indvar_next698 = add nuw nsw i64 %polly.indvar697, 1
  %exitcond818.not = icmp eq i64 %polly.indvar_next698, 32
  br i1 %exitcond818.not, label %polly.loop_header694.1, label %polly.loop_header694

polly.loop_header721:                             ; preds = %polly.loop_exit702.2.2, %polly.loop_exit729
  %polly.indvar724 = phi i64 [ %polly.indvar_next725, %polly.loop_exit729 ], [ 0, %polly.loop_exit702.2.2 ]
  %202 = mul nuw nsw i64 %polly.indvar724, 480
  %203 = trunc i64 %polly.indvar724 to i32
  %broadcast.splatinsert1112 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat1113 = shufflevector <4 x i32> %broadcast.splatinsert1112, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %polly.loop_header721
  %index1104 = phi i64 [ 0, %polly.loop_header721 ], [ %index.next1105, %vector.body1102 ]
  %vec.ind1110 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header721 ], [ %vec.ind.next1111, %vector.body1102 ]
  %204 = mul <4 x i32> %vec.ind1110, %broadcast.splat1113
  %205 = add <4 x i32> %204, <i32 2, i32 2, i32 2, i32 2>
  %206 = urem <4 x i32> %205, <i32 60, i32 60, i32 60, i32 60>
  %207 = sitofp <4 x i32> %206 to <4 x double>
  %208 = fmul fast <4 x double> %207, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %209 = shl i64 %index1104, 3
  %210 = add i64 %209, %202
  %211 = getelementptr i8, i8* %call2, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %208, <4 x double>* %212, align 8, !alias.scope !94, !noalias !96
  %index.next1105 = add i64 %index1104, 4
  %vec.ind.next1111 = add <4 x i32> %vec.ind1110, <i32 4, i32 4, i32 4, i32 4>
  %213 = icmp eq i64 %index.next1105, 32
  br i1 %213, label %polly.loop_exit729, label %vector.body1102, !llvm.loop !97

polly.loop_exit729:                               ; preds = %vector.body1102
  %polly.indvar_next725 = add nuw nsw i64 %polly.indvar724, 1
  %exitcond809.not = icmp eq i64 %polly.indvar_next725, 32
  br i1 %exitcond809.not, label %polly.loop_header721.1, label %polly.loop_header721

polly.loop_header747:                             ; preds = %polly.loop_exit729.1.2, %polly.loop_exit755
  %polly.indvar750 = phi i64 [ %polly.indvar_next751, %polly.loop_exit755 ], [ 0, %polly.loop_exit729.1.2 ]
  %214 = mul nuw nsw i64 %polly.indvar750, 480
  %215 = trunc i64 %polly.indvar750 to i32
  %broadcast.splatinsert1190 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat1191 = shufflevector <4 x i32> %broadcast.splatinsert1190, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1180

vector.body1180:                                  ; preds = %vector.body1180, %polly.loop_header747
  %index1182 = phi i64 [ 0, %polly.loop_header747 ], [ %index.next1183, %vector.body1180 ]
  %vec.ind1188 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header747 ], [ %vec.ind.next1189, %vector.body1180 ]
  %216 = mul <4 x i32> %vec.ind1188, %broadcast.splat1191
  %217 = add <4 x i32> %216, <i32 1, i32 1, i32 1, i32 1>
  %218 = urem <4 x i32> %217, <i32 80, i32 80, i32 80, i32 80>
  %219 = sitofp <4 x i32> %218 to <4 x double>
  %220 = fmul fast <4 x double> %219, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %221 = shl i64 %index1182, 3
  %222 = add i64 %221, %214
  %223 = getelementptr i8, i8* %call1, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %220, <4 x double>* %224, align 8, !alias.scope !93, !noalias !98
  %index.next1183 = add i64 %index1182, 4
  %vec.ind.next1189 = add <4 x i32> %vec.ind1188, <i32 4, i32 4, i32 4, i32 4>
  %225 = icmp eq i64 %index.next1183, 32
  br i1 %225, label %polly.loop_exit755, label %vector.body1180, !llvm.loop !99

polly.loop_exit755:                               ; preds = %vector.body1180
  %polly.indvar_next751 = add nuw nsw i64 %polly.indvar750, 1
  %exitcond803.not = icmp eq i64 %polly.indvar_next751, 32
  br i1 %exitcond803.not, label %polly.loop_header747.1, label %polly.loop_header747

polly.loop_header229.1:                           ; preds = %polly.loop_header229.1, %polly.loop_exit231
  %polly.indvar232.1 = phi i64 [ 0, %polly.loop_exit231 ], [ %polly.indvar_next233.1, %polly.loop_header229.1 ]
  %226 = mul nuw nsw i64 %polly.indvar232.1, 480
  %227 = add i64 %226, %115
  %scevgep235.1 = getelementptr i8, i8* %call1, i64 %227
  %scevgep235236.1 = bitcast i8* %scevgep235.1 to double*
  %_p_scalar_237.1 = load double, double* %scevgep235236.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1 = fmul fast double %_p_scalar_240.1, %_p_scalar_237.1
  %scevgep241.1 = getelementptr i8, i8* %call2, i64 %227
  %scevgep241242.1 = bitcast i8* %scevgep241.1 to double*
  %_p_scalar_243.1 = load double, double* %scevgep241242.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1 = fmul fast double %_p_scalar_246.1, %_p_scalar_243.1
  %228 = shl i64 %polly.indvar232.1, 3
  %229 = add nuw nsw i64 %228, %107
  %scevgep247.1 = getelementptr i8, i8* %call, i64 %229
  %scevgep247248.1 = bitcast i8* %scevgep247.1 to double*
  %_p_scalar_249.1 = load double, double* %scevgep247248.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_249.1
  store double %p_add42.i118.1, double* %scevgep247248.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.1 = add nuw nsw i64 %polly.indvar232.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar232.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit231.1, label %polly.loop_header229.1

polly.loop_exit231.1:                             ; preds = %polly.loop_header229.1
  %230 = add i64 %109, %115
  %scevgep238.2 = getelementptr i8, i8* %call2, i64 %230
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !66, !noalias !70
  %scevgep244.2 = getelementptr i8, i8* %call1, i64 %230
  %scevgep244245.2 = bitcast i8* %scevgep244.2 to double*
  %_p_scalar_246.2 = load double, double* %scevgep244245.2, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.2

polly.loop_header229.2:                           ; preds = %polly.loop_header229.2, %polly.loop_exit231.1
  %polly.indvar232.2 = phi i64 [ 0, %polly.loop_exit231.1 ], [ %polly.indvar_next233.2, %polly.loop_header229.2 ]
  %231 = mul nuw nsw i64 %polly.indvar232.2, 480
  %232 = add i64 %231, %115
  %scevgep235.2 = getelementptr i8, i8* %call1, i64 %232
  %scevgep235236.2 = bitcast i8* %scevgep235.2 to double*
  %_p_scalar_237.2 = load double, double* %scevgep235236.2, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2 = fmul fast double %_p_scalar_240.2, %_p_scalar_237.2
  %scevgep241.2 = getelementptr i8, i8* %call2, i64 %232
  %scevgep241242.2 = bitcast i8* %scevgep241.2 to double*
  %_p_scalar_243.2 = load double, double* %scevgep241242.2, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2 = fmul fast double %_p_scalar_246.2, %_p_scalar_243.2
  %233 = shl i64 %polly.indvar232.2, 3
  %234 = add nuw nsw i64 %233, %110
  %scevgep247.2 = getelementptr i8, i8* %call, i64 %234
  %scevgep247248.2 = bitcast i8* %scevgep247.2 to double*
  %_p_scalar_249.2 = load double, double* %scevgep247248.2, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_249.2
  store double %p_add42.i118.2, double* %scevgep247248.2, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.2 = add nuw nsw i64 %polly.indvar232.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar232.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit231.2, label %polly.loop_header229.2

polly.loop_exit231.2:                             ; preds = %polly.loop_header229.2
  %235 = add i64 %112, %115
  %scevgep238.3 = getelementptr i8, i8* %call2, i64 %235
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !66, !noalias !70
  %scevgep244.3 = getelementptr i8, i8* %call1, i64 %235
  %scevgep244245.3 = bitcast i8* %scevgep244.3 to double*
  %_p_scalar_246.3 = load double, double* %scevgep244245.3, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.3

polly.loop_header229.3:                           ; preds = %polly.loop_header229.3, %polly.loop_exit231.2
  %polly.indvar232.3 = phi i64 [ 0, %polly.loop_exit231.2 ], [ %polly.indvar_next233.3, %polly.loop_header229.3 ]
  %236 = mul nuw nsw i64 %polly.indvar232.3, 480
  %237 = add i64 %236, %115
  %scevgep235.3 = getelementptr i8, i8* %call1, i64 %237
  %scevgep235236.3 = bitcast i8* %scevgep235.3 to double*
  %_p_scalar_237.3 = load double, double* %scevgep235236.3, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3 = fmul fast double %_p_scalar_240.3, %_p_scalar_237.3
  %scevgep241.3 = getelementptr i8, i8* %call2, i64 %237
  %scevgep241242.3 = bitcast i8* %scevgep241.3 to double*
  %_p_scalar_243.3 = load double, double* %scevgep241242.3, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3 = fmul fast double %_p_scalar_246.3, %_p_scalar_243.3
  %238 = shl i64 %polly.indvar232.3, 3
  %239 = add nuw nsw i64 %238, %113
  %scevgep247.3 = getelementptr i8, i8* %call, i64 %239
  %scevgep247248.3 = bitcast i8* %scevgep247.3 to double*
  %_p_scalar_249.3 = load double, double* %scevgep247248.3, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_249.3
  store double %p_add42.i118.3, double* %scevgep247248.3, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.3 = add nuw nsw i64 %polly.indvar232.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar232.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit231.3, label %polly.loop_header229.3

polly.loop_exit231.3:                             ; preds = %polly.loop_header229.3
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond773.not = icmp eq i64 %polly.indvar_next221, %101
  br i1 %exitcond773.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 16, %polly.loop_exit219 ]
  %240 = shl nsw i64 %polly.indvar214.1, 2
  %smin.1825 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 63)
  %241 = mul nsw i64 %polly.indvar214.1, 1920
  %242 = mul nsw i64 %polly.indvar214.1, 2560
  %indvars.iv.next771.1850 = or i64 %indvars.iv.1, 1
  %smin.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.1850, i64 63)
  %243 = or i64 %240, 1
  %244 = mul nuw nsw i64 %243, 480
  %245 = mul nuw nsw i64 %243, 640
  %indvars.iv.next771.1.1 = add nuw nsw i64 %indvars.iv.next771.1850, 1
  %smin.2.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.1.1, i64 63)
  %246 = or i64 %240, 2
  %247 = mul nuw nsw i64 %246, 480
  %248 = mul nuw nsw i64 %246, 640
  %indvars.iv.next771.2.1 = or i64 %indvars.iv.1, 3
  %smin.3.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next771.2.1, i64 63)
  %249 = or i64 %240, 3
  %250 = mul nuw nsw i64 %249, 480
  %251 = mul nuw nsw i64 %249, 640
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit231.3.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_exit231.3.1 ]
  %252 = add nuw nsw i64 %polly.indvar220.1, %100
  %253 = shl i64 %252, 3
  %254 = add i64 %241, %253
  %scevgep238.1826 = getelementptr i8, i8* %call2, i64 %254
  %scevgep238239.1827 = bitcast i8* %scevgep238.1826 to double*
  %_p_scalar_240.1828 = load double, double* %scevgep238239.1827, align 8, !alias.scope !66, !noalias !70
  %scevgep244.1829 = getelementptr i8, i8* %call1, i64 %254
  %scevgep244245.1830 = bitcast i8* %scevgep244.1829 to double*
  %_p_scalar_246.1831 = load double, double* %scevgep244245.1830, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.1849

polly.loop_header229.1849:                        ; preds = %polly.loop_header229.1849, %polly.loop_header217.1
  %polly.indvar232.1832 = phi i64 [ 0, %polly.loop_header217.1 ], [ %polly.indvar_next233.1847, %polly.loop_header229.1849 ]
  %255 = add nuw nsw i64 %polly.indvar232.1832, 64
  %256 = mul nuw nsw i64 %255, 480
  %257 = add i64 %256, %253
  %scevgep235.1833 = getelementptr i8, i8* %call1, i64 %257
  %scevgep235236.1834 = bitcast i8* %scevgep235.1833 to double*
  %_p_scalar_237.1835 = load double, double* %scevgep235236.1834, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1836 = fmul fast double %_p_scalar_240.1828, %_p_scalar_237.1835
  %scevgep241.1837 = getelementptr i8, i8* %call2, i64 %257
  %scevgep241242.1838 = bitcast i8* %scevgep241.1837 to double*
  %_p_scalar_243.1839 = load double, double* %scevgep241242.1838, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1840 = fmul fast double %_p_scalar_246.1831, %_p_scalar_243.1839
  %258 = shl i64 %255, 3
  %259 = add nuw nsw i64 %258, %242
  %scevgep247.1841 = getelementptr i8, i8* %call, i64 %259
  %scevgep247248.1842 = bitcast i8* %scevgep247.1841 to double*
  %_p_scalar_249.1843 = load double, double* %scevgep247248.1842, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1844 = fadd fast double %p_mul37.i114.1840, %p_mul27.i112.1836
  %p_reass.mul.i117.1845 = fmul fast double %p_reass.add.i116.1844, 1.500000e+00
  %p_add42.i118.1846 = fadd fast double %p_reass.mul.i117.1845, %_p_scalar_249.1843
  store double %p_add42.i118.1846, double* %scevgep247248.1842, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.1847 = add nuw nsw i64 %polly.indvar232.1832, 1
  %exitcond.1848.not = icmp eq i64 %polly.indvar232.1832, %smin.1825
  br i1 %exitcond.1848.not, label %polly.loop_exit231.1851, label %polly.loop_header229.1849

polly.loop_exit231.1851:                          ; preds = %polly.loop_header229.1849
  %260 = add i64 %244, %253
  %scevgep238.1.1 = getelementptr i8, i8* %call2, i64 %260
  %scevgep238239.1.1 = bitcast i8* %scevgep238.1.1 to double*
  %_p_scalar_240.1.1 = load double, double* %scevgep238239.1.1, align 8, !alias.scope !66, !noalias !70
  %scevgep244.1.1 = getelementptr i8, i8* %call1, i64 %260
  %scevgep244245.1.1 = bitcast i8* %scevgep244.1.1 to double*
  %_p_scalar_246.1.1 = load double, double* %scevgep244245.1.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.1.1

polly.loop_header229.1.1:                         ; preds = %polly.loop_header229.1.1, %polly.loop_exit231.1851
  %polly.indvar232.1.1 = phi i64 [ 0, %polly.loop_exit231.1851 ], [ %polly.indvar_next233.1.1, %polly.loop_header229.1.1 ]
  %261 = add nuw nsw i64 %polly.indvar232.1.1, 64
  %262 = mul nuw nsw i64 %261, 480
  %263 = add i64 %262, %253
  %scevgep235.1.1 = getelementptr i8, i8* %call1, i64 %263
  %scevgep235236.1.1 = bitcast i8* %scevgep235.1.1 to double*
  %_p_scalar_237.1.1 = load double, double* %scevgep235236.1.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.1.1 = fmul fast double %_p_scalar_240.1.1, %_p_scalar_237.1.1
  %scevgep241.1.1 = getelementptr i8, i8* %call2, i64 %263
  %scevgep241242.1.1 = bitcast i8* %scevgep241.1.1 to double*
  %_p_scalar_243.1.1 = load double, double* %scevgep241242.1.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.1.1 = fmul fast double %_p_scalar_246.1.1, %_p_scalar_243.1.1
  %264 = shl i64 %261, 3
  %265 = add nuw nsw i64 %264, %245
  %scevgep247.1.1 = getelementptr i8, i8* %call, i64 %265
  %scevgep247248.1.1 = bitcast i8* %scevgep247.1.1 to double*
  %_p_scalar_249.1.1 = load double, double* %scevgep247248.1.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.1.1 = fadd fast double %p_mul37.i114.1.1, %p_mul27.i112.1.1
  %p_reass.mul.i117.1.1 = fmul fast double %p_reass.add.i116.1.1, 1.500000e+00
  %p_add42.i118.1.1 = fadd fast double %p_reass.mul.i117.1.1, %_p_scalar_249.1.1
  store double %p_add42.i118.1.1, double* %scevgep247248.1.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.1.1 = add nuw nsw i64 %polly.indvar232.1.1, 1
  %exitcond.1.1.not = icmp eq i64 %polly.indvar232.1.1, %smin.1.1
  br i1 %exitcond.1.1.not, label %polly.loop_exit231.1.1, label %polly.loop_header229.1.1

polly.loop_exit231.1.1:                           ; preds = %polly.loop_header229.1.1
  %266 = add i64 %247, %253
  %scevgep238.2.1 = getelementptr i8, i8* %call2, i64 %266
  %scevgep238239.2.1 = bitcast i8* %scevgep238.2.1 to double*
  %_p_scalar_240.2.1 = load double, double* %scevgep238239.2.1, align 8, !alias.scope !66, !noalias !70
  %scevgep244.2.1 = getelementptr i8, i8* %call1, i64 %266
  %scevgep244245.2.1 = bitcast i8* %scevgep244.2.1 to double*
  %_p_scalar_246.2.1 = load double, double* %scevgep244245.2.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.2.1

polly.loop_header229.2.1:                         ; preds = %polly.loop_header229.2.1, %polly.loop_exit231.1.1
  %polly.indvar232.2.1 = phi i64 [ 0, %polly.loop_exit231.1.1 ], [ %polly.indvar_next233.2.1, %polly.loop_header229.2.1 ]
  %267 = add nuw nsw i64 %polly.indvar232.2.1, 64
  %268 = mul nuw nsw i64 %267, 480
  %269 = add i64 %268, %253
  %scevgep235.2.1 = getelementptr i8, i8* %call1, i64 %269
  %scevgep235236.2.1 = bitcast i8* %scevgep235.2.1 to double*
  %_p_scalar_237.2.1 = load double, double* %scevgep235236.2.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.2.1 = fmul fast double %_p_scalar_240.2.1, %_p_scalar_237.2.1
  %scevgep241.2.1 = getelementptr i8, i8* %call2, i64 %269
  %scevgep241242.2.1 = bitcast i8* %scevgep241.2.1 to double*
  %_p_scalar_243.2.1 = load double, double* %scevgep241242.2.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.2.1 = fmul fast double %_p_scalar_246.2.1, %_p_scalar_243.2.1
  %270 = shl i64 %267, 3
  %271 = add nuw nsw i64 %270, %248
  %scevgep247.2.1 = getelementptr i8, i8* %call, i64 %271
  %scevgep247248.2.1 = bitcast i8* %scevgep247.2.1 to double*
  %_p_scalar_249.2.1 = load double, double* %scevgep247248.2.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.2.1 = fadd fast double %p_mul37.i114.2.1, %p_mul27.i112.2.1
  %p_reass.mul.i117.2.1 = fmul fast double %p_reass.add.i116.2.1, 1.500000e+00
  %p_add42.i118.2.1 = fadd fast double %p_reass.mul.i117.2.1, %_p_scalar_249.2.1
  store double %p_add42.i118.2.1, double* %scevgep247248.2.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.2.1 = add nuw nsw i64 %polly.indvar232.2.1, 1
  %exitcond.2.1.not = icmp eq i64 %polly.indvar232.2.1, %smin.2.1
  br i1 %exitcond.2.1.not, label %polly.loop_exit231.2.1, label %polly.loop_header229.2.1

polly.loop_exit231.2.1:                           ; preds = %polly.loop_header229.2.1
  %272 = add i64 %250, %253
  %scevgep238.3.1 = getelementptr i8, i8* %call2, i64 %272
  %scevgep238239.3.1 = bitcast i8* %scevgep238.3.1 to double*
  %_p_scalar_240.3.1 = load double, double* %scevgep238239.3.1, align 8, !alias.scope !66, !noalias !70
  %scevgep244.3.1 = getelementptr i8, i8* %call1, i64 %272
  %scevgep244245.3.1 = bitcast i8* %scevgep244.3.1 to double*
  %_p_scalar_246.3.1 = load double, double* %scevgep244245.3.1, align 8, !alias.scope !65, !noalias !71
  br label %polly.loop_header229.3.1

polly.loop_header229.3.1:                         ; preds = %polly.loop_header229.3.1, %polly.loop_exit231.2.1
  %polly.indvar232.3.1 = phi i64 [ 0, %polly.loop_exit231.2.1 ], [ %polly.indvar_next233.3.1, %polly.loop_header229.3.1 ]
  %273 = add nuw nsw i64 %polly.indvar232.3.1, 64
  %274 = mul nuw nsw i64 %273, 480
  %275 = add i64 %274, %253
  %scevgep235.3.1 = getelementptr i8, i8* %call1, i64 %275
  %scevgep235236.3.1 = bitcast i8* %scevgep235.3.1 to double*
  %_p_scalar_237.3.1 = load double, double* %scevgep235236.3.1, align 8, !alias.scope !65, !noalias !71
  %p_mul27.i112.3.1 = fmul fast double %_p_scalar_240.3.1, %_p_scalar_237.3.1
  %scevgep241.3.1 = getelementptr i8, i8* %call2, i64 %275
  %scevgep241242.3.1 = bitcast i8* %scevgep241.3.1 to double*
  %_p_scalar_243.3.1 = load double, double* %scevgep241242.3.1, align 8, !alias.scope !66, !noalias !70
  %p_mul37.i114.3.1 = fmul fast double %_p_scalar_246.3.1, %_p_scalar_243.3.1
  %276 = shl i64 %273, 3
  %277 = add nuw nsw i64 %276, %251
  %scevgep247.3.1 = getelementptr i8, i8* %call, i64 %277
  %scevgep247248.3.1 = bitcast i8* %scevgep247.3.1 to double*
  %_p_scalar_249.3.1 = load double, double* %scevgep247248.3.1, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.3.1 = fadd fast double %p_mul37.i114.3.1, %p_mul27.i112.3.1
  %p_reass.mul.i117.3.1 = fmul fast double %p_reass.add.i116.3.1, 1.500000e+00
  %p_add42.i118.3.1 = fadd fast double %p_reass.mul.i117.3.1, %_p_scalar_249.3.1
  store double %p_add42.i118.3.1, double* %scevgep247248.3.1, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next233.3.1 = add nuw nsw i64 %polly.indvar232.3.1, 1
  %exitcond.3.1.not = icmp eq i64 %polly.indvar232.3.1, %smin.3.1
  br i1 %exitcond.3.1.not, label %polly.loop_exit231.3.1, label %polly.loop_header229.3.1

polly.loop_exit231.3.1:                           ; preds = %polly.loop_header229.3.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond773.1.not = icmp eq i64 %polly.indvar_next221.1, %101
  br i1 %exitcond773.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit231.3.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 4
  %exitcond774.1.not = icmp eq i64 %polly.indvar_next215.1, 20
  br i1 %exitcond774.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  br i1 %polly.loop_cond204, label %polly.loop_header199, label %kernel_syr2k.exit129

polly.loop_header382.1:                           ; preds = %polly.loop_header382.1, %polly.loop_exit384
  %polly.indvar385.1 = phi i64 [ 0, %polly.loop_exit384 ], [ %polly.indvar_next386.1, %polly.loop_header382.1 ]
  %278 = mul nuw nsw i64 %polly.indvar385.1, 480
  %279 = add i64 %278, %149
  %scevgep388.1 = getelementptr i8, i8* %call1, i64 %279
  %scevgep388389.1 = bitcast i8* %scevgep388.1 to double*
  %_p_scalar_390.1 = load double, double* %scevgep388389.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1 = fmul fast double %_p_scalar_393.1, %_p_scalar_390.1
  %scevgep394.1 = getelementptr i8, i8* %call2, i64 %279
  %scevgep394395.1 = bitcast i8* %scevgep394.1 to double*
  %_p_scalar_396.1 = load double, double* %scevgep394395.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1 = fmul fast double %_p_scalar_399.1, %_p_scalar_396.1
  %280 = shl i64 %polly.indvar385.1, 3
  %281 = add nuw nsw i64 %280, %141
  %scevgep400.1 = getelementptr i8, i8* %call, i64 %281
  %scevgep400401.1 = bitcast i8* %scevgep400.1 to double*
  %_p_scalar_402.1 = load double, double* %scevgep400401.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_402.1
  store double %p_add42.i79.1, double* %scevgep400401.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.1 = add nuw nsw i64 %polly.indvar385.1, 1
  %exitcond782.1.not = icmp eq i64 %polly.indvar385.1, %smin781.1
  br i1 %exitcond782.1.not, label %polly.loop_exit384.1, label %polly.loop_header382.1

polly.loop_exit384.1:                             ; preds = %polly.loop_header382.1
  %282 = add i64 %143, %149
  %scevgep391.2 = getelementptr i8, i8* %call2, i64 %282
  %scevgep391392.2 = bitcast i8* %scevgep391.2 to double*
  %_p_scalar_393.2 = load double, double* %scevgep391392.2, align 8, !alias.scope !76, !noalias !79
  %scevgep397.2 = getelementptr i8, i8* %call1, i64 %282
  %scevgep397398.2 = bitcast i8* %scevgep397.2 to double*
  %_p_scalar_399.2 = load double, double* %scevgep397398.2, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.2

polly.loop_header382.2:                           ; preds = %polly.loop_header382.2, %polly.loop_exit384.1
  %polly.indvar385.2 = phi i64 [ 0, %polly.loop_exit384.1 ], [ %polly.indvar_next386.2, %polly.loop_header382.2 ]
  %283 = mul nuw nsw i64 %polly.indvar385.2, 480
  %284 = add i64 %283, %149
  %scevgep388.2 = getelementptr i8, i8* %call1, i64 %284
  %scevgep388389.2 = bitcast i8* %scevgep388.2 to double*
  %_p_scalar_390.2 = load double, double* %scevgep388389.2, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2 = fmul fast double %_p_scalar_393.2, %_p_scalar_390.2
  %scevgep394.2 = getelementptr i8, i8* %call2, i64 %284
  %scevgep394395.2 = bitcast i8* %scevgep394.2 to double*
  %_p_scalar_396.2 = load double, double* %scevgep394395.2, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2 = fmul fast double %_p_scalar_399.2, %_p_scalar_396.2
  %285 = shl i64 %polly.indvar385.2, 3
  %286 = add nuw nsw i64 %285, %144
  %scevgep400.2 = getelementptr i8, i8* %call, i64 %286
  %scevgep400401.2 = bitcast i8* %scevgep400.2 to double*
  %_p_scalar_402.2 = load double, double* %scevgep400401.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_402.2
  store double %p_add42.i79.2, double* %scevgep400401.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.2 = add nuw nsw i64 %polly.indvar385.2, 1
  %exitcond782.2.not = icmp eq i64 %polly.indvar385.2, %smin781.2
  br i1 %exitcond782.2.not, label %polly.loop_exit384.2, label %polly.loop_header382.2

polly.loop_exit384.2:                             ; preds = %polly.loop_header382.2
  %287 = add i64 %146, %149
  %scevgep391.3 = getelementptr i8, i8* %call2, i64 %287
  %scevgep391392.3 = bitcast i8* %scevgep391.3 to double*
  %_p_scalar_393.3 = load double, double* %scevgep391392.3, align 8, !alias.scope !76, !noalias !79
  %scevgep397.3 = getelementptr i8, i8* %call1, i64 %287
  %scevgep397398.3 = bitcast i8* %scevgep397.3 to double*
  %_p_scalar_399.3 = load double, double* %scevgep397398.3, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.3

polly.loop_header382.3:                           ; preds = %polly.loop_header382.3, %polly.loop_exit384.2
  %polly.indvar385.3 = phi i64 [ 0, %polly.loop_exit384.2 ], [ %polly.indvar_next386.3, %polly.loop_header382.3 ]
  %288 = mul nuw nsw i64 %polly.indvar385.3, 480
  %289 = add i64 %288, %149
  %scevgep388.3 = getelementptr i8, i8* %call1, i64 %289
  %scevgep388389.3 = bitcast i8* %scevgep388.3 to double*
  %_p_scalar_390.3 = load double, double* %scevgep388389.3, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3 = fmul fast double %_p_scalar_393.3, %_p_scalar_390.3
  %scevgep394.3 = getelementptr i8, i8* %call2, i64 %289
  %scevgep394395.3 = bitcast i8* %scevgep394.3 to double*
  %_p_scalar_396.3 = load double, double* %scevgep394395.3, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3 = fmul fast double %_p_scalar_399.3, %_p_scalar_396.3
  %290 = shl i64 %polly.indvar385.3, 3
  %291 = add nuw nsw i64 %290, %147
  %scevgep400.3 = getelementptr i8, i8* %call, i64 %291
  %scevgep400401.3 = bitcast i8* %scevgep400.3 to double*
  %_p_scalar_402.3 = load double, double* %scevgep400401.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_402.3
  store double %p_add42.i79.3, double* %scevgep400401.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.3 = add nuw nsw i64 %polly.indvar385.3, 1
  %exitcond782.3.not = icmp eq i64 %polly.indvar385.3, %smin781.3
  br i1 %exitcond782.3.not, label %polly.loop_exit384.3, label %polly.loop_header382.3

polly.loop_exit384.3:                             ; preds = %polly.loop_header382.3
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond784.not = icmp eq i64 %polly.indvar_next374, %135
  br i1 %exitcond784.not, label %polly.loop_exit372, label %polly.loop_header370

polly.loop_header364.1:                           ; preds = %polly.loop_exit372, %polly.loop_exit372.1
  %indvars.iv777.1 = phi i64 [ %indvars.iv.next778.1, %polly.loop_exit372.1 ], [ 0, %polly.loop_exit372 ]
  %polly.indvar367.1 = phi i64 [ %polly.indvar_next368.1, %polly.loop_exit372.1 ], [ 16, %polly.loop_exit372 ]
  %292 = shl nsw i64 %polly.indvar367.1, 2
  %smin781.1852 = call i64 @llvm.smin.i64(i64 %indvars.iv777.1, i64 63)
  %293 = mul nsw i64 %polly.indvar367.1, 1920
  %294 = mul nsw i64 %polly.indvar367.1, 2560
  %indvars.iv.next780.1877 = or i64 %indvars.iv777.1, 1
  %smin781.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next780.1877, i64 63)
  %295 = or i64 %292, 1
  %296 = mul nuw nsw i64 %295, 480
  %297 = mul nuw nsw i64 %295, 640
  %indvars.iv.next780.1.1 = add nuw nsw i64 %indvars.iv.next780.1877, 1
  %smin781.2.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next780.1.1, i64 63)
  %298 = or i64 %292, 2
  %299 = mul nuw nsw i64 %298, 480
  %300 = mul nuw nsw i64 %298, 640
  %indvars.iv.next780.2.1 = or i64 %indvars.iv777.1, 3
  %smin781.3.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next780.2.1, i64 63)
  %301 = or i64 %292, 3
  %302 = mul nuw nsw i64 %301, 480
  %303 = mul nuw nsw i64 %301, 640
  br label %polly.loop_header370.1

polly.loop_header370.1:                           ; preds = %polly.loop_exit384.3.1, %polly.loop_header364.1
  %polly.indvar373.1 = phi i64 [ 0, %polly.loop_header364.1 ], [ %polly.indvar_next374.1, %polly.loop_exit384.3.1 ]
  %304 = add nuw nsw i64 %polly.indvar373.1, %134
  %305 = shl i64 %304, 3
  %306 = add i64 %293, %305
  %scevgep391.1853 = getelementptr i8, i8* %call2, i64 %306
  %scevgep391392.1854 = bitcast i8* %scevgep391.1853 to double*
  %_p_scalar_393.1855 = load double, double* %scevgep391392.1854, align 8, !alias.scope !76, !noalias !79
  %scevgep397.1856 = getelementptr i8, i8* %call1, i64 %306
  %scevgep397398.1857 = bitcast i8* %scevgep397.1856 to double*
  %_p_scalar_399.1858 = load double, double* %scevgep397398.1857, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.1876

polly.loop_header382.1876:                        ; preds = %polly.loop_header382.1876, %polly.loop_header370.1
  %polly.indvar385.1859 = phi i64 [ 0, %polly.loop_header370.1 ], [ %polly.indvar_next386.1874, %polly.loop_header382.1876 ]
  %307 = add nuw nsw i64 %polly.indvar385.1859, 64
  %308 = mul nuw nsw i64 %307, 480
  %309 = add i64 %308, %305
  %scevgep388.1860 = getelementptr i8, i8* %call1, i64 %309
  %scevgep388389.1861 = bitcast i8* %scevgep388.1860 to double*
  %_p_scalar_390.1862 = load double, double* %scevgep388389.1861, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1863 = fmul fast double %_p_scalar_393.1855, %_p_scalar_390.1862
  %scevgep394.1864 = getelementptr i8, i8* %call2, i64 %309
  %scevgep394395.1865 = bitcast i8* %scevgep394.1864 to double*
  %_p_scalar_396.1866 = load double, double* %scevgep394395.1865, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1867 = fmul fast double %_p_scalar_399.1858, %_p_scalar_396.1866
  %310 = shl i64 %307, 3
  %311 = add nuw nsw i64 %310, %294
  %scevgep400.1868 = getelementptr i8, i8* %call, i64 %311
  %scevgep400401.1869 = bitcast i8* %scevgep400.1868 to double*
  %_p_scalar_402.1870 = load double, double* %scevgep400401.1869, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1871 = fadd fast double %p_mul37.i75.1867, %p_mul27.i73.1863
  %p_reass.mul.i78.1872 = fmul fast double %p_reass.add.i77.1871, 1.500000e+00
  %p_add42.i79.1873 = fadd fast double %p_reass.mul.i78.1872, %_p_scalar_402.1870
  store double %p_add42.i79.1873, double* %scevgep400401.1869, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.1874 = add nuw nsw i64 %polly.indvar385.1859, 1
  %exitcond782.1875.not = icmp eq i64 %polly.indvar385.1859, %smin781.1852
  br i1 %exitcond782.1875.not, label %polly.loop_exit384.1878, label %polly.loop_header382.1876

polly.loop_exit384.1878:                          ; preds = %polly.loop_header382.1876
  %312 = add i64 %296, %305
  %scevgep391.1.1 = getelementptr i8, i8* %call2, i64 %312
  %scevgep391392.1.1 = bitcast i8* %scevgep391.1.1 to double*
  %_p_scalar_393.1.1 = load double, double* %scevgep391392.1.1, align 8, !alias.scope !76, !noalias !79
  %scevgep397.1.1 = getelementptr i8, i8* %call1, i64 %312
  %scevgep397398.1.1 = bitcast i8* %scevgep397.1.1 to double*
  %_p_scalar_399.1.1 = load double, double* %scevgep397398.1.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.1.1

polly.loop_header382.1.1:                         ; preds = %polly.loop_header382.1.1, %polly.loop_exit384.1878
  %polly.indvar385.1.1 = phi i64 [ 0, %polly.loop_exit384.1878 ], [ %polly.indvar_next386.1.1, %polly.loop_header382.1.1 ]
  %313 = add nuw nsw i64 %polly.indvar385.1.1, 64
  %314 = mul nuw nsw i64 %313, 480
  %315 = add i64 %314, %305
  %scevgep388.1.1 = getelementptr i8, i8* %call1, i64 %315
  %scevgep388389.1.1 = bitcast i8* %scevgep388.1.1 to double*
  %_p_scalar_390.1.1 = load double, double* %scevgep388389.1.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.1.1 = fmul fast double %_p_scalar_393.1.1, %_p_scalar_390.1.1
  %scevgep394.1.1 = getelementptr i8, i8* %call2, i64 %315
  %scevgep394395.1.1 = bitcast i8* %scevgep394.1.1 to double*
  %_p_scalar_396.1.1 = load double, double* %scevgep394395.1.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.1.1 = fmul fast double %_p_scalar_399.1.1, %_p_scalar_396.1.1
  %316 = shl i64 %313, 3
  %317 = add nuw nsw i64 %316, %297
  %scevgep400.1.1 = getelementptr i8, i8* %call, i64 %317
  %scevgep400401.1.1 = bitcast i8* %scevgep400.1.1 to double*
  %_p_scalar_402.1.1 = load double, double* %scevgep400401.1.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.1.1 = fadd fast double %p_mul37.i75.1.1, %p_mul27.i73.1.1
  %p_reass.mul.i78.1.1 = fmul fast double %p_reass.add.i77.1.1, 1.500000e+00
  %p_add42.i79.1.1 = fadd fast double %p_reass.mul.i78.1.1, %_p_scalar_402.1.1
  store double %p_add42.i79.1.1, double* %scevgep400401.1.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.1.1 = add nuw nsw i64 %polly.indvar385.1.1, 1
  %exitcond782.1.1.not = icmp eq i64 %polly.indvar385.1.1, %smin781.1.1
  br i1 %exitcond782.1.1.not, label %polly.loop_exit384.1.1, label %polly.loop_header382.1.1

polly.loop_exit384.1.1:                           ; preds = %polly.loop_header382.1.1
  %318 = add i64 %299, %305
  %scevgep391.2.1 = getelementptr i8, i8* %call2, i64 %318
  %scevgep391392.2.1 = bitcast i8* %scevgep391.2.1 to double*
  %_p_scalar_393.2.1 = load double, double* %scevgep391392.2.1, align 8, !alias.scope !76, !noalias !79
  %scevgep397.2.1 = getelementptr i8, i8* %call1, i64 %318
  %scevgep397398.2.1 = bitcast i8* %scevgep397.2.1 to double*
  %_p_scalar_399.2.1 = load double, double* %scevgep397398.2.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.2.1

polly.loop_header382.2.1:                         ; preds = %polly.loop_header382.2.1, %polly.loop_exit384.1.1
  %polly.indvar385.2.1 = phi i64 [ 0, %polly.loop_exit384.1.1 ], [ %polly.indvar_next386.2.1, %polly.loop_header382.2.1 ]
  %319 = add nuw nsw i64 %polly.indvar385.2.1, 64
  %320 = mul nuw nsw i64 %319, 480
  %321 = add i64 %320, %305
  %scevgep388.2.1 = getelementptr i8, i8* %call1, i64 %321
  %scevgep388389.2.1 = bitcast i8* %scevgep388.2.1 to double*
  %_p_scalar_390.2.1 = load double, double* %scevgep388389.2.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.2.1 = fmul fast double %_p_scalar_393.2.1, %_p_scalar_390.2.1
  %scevgep394.2.1 = getelementptr i8, i8* %call2, i64 %321
  %scevgep394395.2.1 = bitcast i8* %scevgep394.2.1 to double*
  %_p_scalar_396.2.1 = load double, double* %scevgep394395.2.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.2.1 = fmul fast double %_p_scalar_399.2.1, %_p_scalar_396.2.1
  %322 = shl i64 %319, 3
  %323 = add nuw nsw i64 %322, %300
  %scevgep400.2.1 = getelementptr i8, i8* %call, i64 %323
  %scevgep400401.2.1 = bitcast i8* %scevgep400.2.1 to double*
  %_p_scalar_402.2.1 = load double, double* %scevgep400401.2.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.2.1 = fadd fast double %p_mul37.i75.2.1, %p_mul27.i73.2.1
  %p_reass.mul.i78.2.1 = fmul fast double %p_reass.add.i77.2.1, 1.500000e+00
  %p_add42.i79.2.1 = fadd fast double %p_reass.mul.i78.2.1, %_p_scalar_402.2.1
  store double %p_add42.i79.2.1, double* %scevgep400401.2.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.2.1 = add nuw nsw i64 %polly.indvar385.2.1, 1
  %exitcond782.2.1.not = icmp eq i64 %polly.indvar385.2.1, %smin781.2.1
  br i1 %exitcond782.2.1.not, label %polly.loop_exit384.2.1, label %polly.loop_header382.2.1

polly.loop_exit384.2.1:                           ; preds = %polly.loop_header382.2.1
  %324 = add i64 %302, %305
  %scevgep391.3.1 = getelementptr i8, i8* %call2, i64 %324
  %scevgep391392.3.1 = bitcast i8* %scevgep391.3.1 to double*
  %_p_scalar_393.3.1 = load double, double* %scevgep391392.3.1, align 8, !alias.scope !76, !noalias !79
  %scevgep397.3.1 = getelementptr i8, i8* %call1, i64 %324
  %scevgep397398.3.1 = bitcast i8* %scevgep397.3.1 to double*
  %_p_scalar_399.3.1 = load double, double* %scevgep397398.3.1, align 8, !alias.scope !75, !noalias !80
  br label %polly.loop_header382.3.1

polly.loop_header382.3.1:                         ; preds = %polly.loop_header382.3.1, %polly.loop_exit384.2.1
  %polly.indvar385.3.1 = phi i64 [ 0, %polly.loop_exit384.2.1 ], [ %polly.indvar_next386.3.1, %polly.loop_header382.3.1 ]
  %325 = add nuw nsw i64 %polly.indvar385.3.1, 64
  %326 = mul nuw nsw i64 %325, 480
  %327 = add i64 %326, %305
  %scevgep388.3.1 = getelementptr i8, i8* %call1, i64 %327
  %scevgep388389.3.1 = bitcast i8* %scevgep388.3.1 to double*
  %_p_scalar_390.3.1 = load double, double* %scevgep388389.3.1, align 8, !alias.scope !75, !noalias !80
  %p_mul27.i73.3.1 = fmul fast double %_p_scalar_393.3.1, %_p_scalar_390.3.1
  %scevgep394.3.1 = getelementptr i8, i8* %call2, i64 %327
  %scevgep394395.3.1 = bitcast i8* %scevgep394.3.1 to double*
  %_p_scalar_396.3.1 = load double, double* %scevgep394395.3.1, align 8, !alias.scope !76, !noalias !79
  %p_mul37.i75.3.1 = fmul fast double %_p_scalar_399.3.1, %_p_scalar_396.3.1
  %328 = shl i64 %325, 3
  %329 = add nuw nsw i64 %328, %303
  %scevgep400.3.1 = getelementptr i8, i8* %call, i64 %329
  %scevgep400401.3.1 = bitcast i8* %scevgep400.3.1 to double*
  %_p_scalar_402.3.1 = load double, double* %scevgep400401.3.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.3.1 = fadd fast double %p_mul37.i75.3.1, %p_mul27.i73.3.1
  %p_reass.mul.i78.3.1 = fmul fast double %p_reass.add.i77.3.1, 1.500000e+00
  %p_add42.i79.3.1 = fadd fast double %p_reass.mul.i78.3.1, %_p_scalar_402.3.1
  store double %p_add42.i79.3.1, double* %scevgep400401.3.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next386.3.1 = add nuw nsw i64 %polly.indvar385.3.1, 1
  %exitcond782.3.1.not = icmp eq i64 %polly.indvar385.3.1, %smin781.3.1
  br i1 %exitcond782.3.1.not, label %polly.loop_exit384.3.1, label %polly.loop_header382.3.1

polly.loop_exit384.3.1:                           ; preds = %polly.loop_header382.3.1
  %polly.indvar_next374.1 = add nuw nsw i64 %polly.indvar373.1, 1
  %exitcond784.1.not = icmp eq i64 %polly.indvar_next374.1, %135
  br i1 %exitcond784.1.not, label %polly.loop_exit372.1, label %polly.loop_header370.1

polly.loop_exit372.1:                             ; preds = %polly.loop_exit384.3.1
  %polly.indvar_next368.1 = add nuw nsw i64 %polly.indvar367.1, 1
  %indvars.iv.next778.1 = add nuw nsw i64 %indvars.iv777.1, 4
  %exitcond785.1.not = icmp eq i64 %polly.indvar_next368.1, 20
  br i1 %exitcond785.1.not, label %polly.loop_exit366.1, label %polly.loop_header364.1

polly.loop_exit366.1:                             ; preds = %polly.loop_exit372.1
  br i1 %polly.loop_cond357, label %polly.loop_header352, label %kernel_syr2k.exit90

polly.loop_header535.1:                           ; preds = %polly.loop_header535.1, %polly.loop_exit537
  %polly.indvar538.1 = phi i64 [ 0, %polly.loop_exit537 ], [ %polly.indvar_next539.1, %polly.loop_header535.1 ]
  %330 = mul nuw nsw i64 %polly.indvar538.1, 480
  %331 = add i64 %330, %183
  %scevgep541.1 = getelementptr i8, i8* %call1, i64 %331
  %scevgep541542.1 = bitcast i8* %scevgep541.1 to double*
  %_p_scalar_543.1 = load double, double* %scevgep541542.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1 = fmul fast double %_p_scalar_546.1, %_p_scalar_543.1
  %scevgep547.1 = getelementptr i8, i8* %call2, i64 %331
  %scevgep547548.1 = bitcast i8* %scevgep547.1 to double*
  %_p_scalar_549.1 = load double, double* %scevgep547548.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1 = fmul fast double %_p_scalar_552.1, %_p_scalar_549.1
  %332 = shl i64 %polly.indvar538.1, 3
  %333 = add nuw nsw i64 %332, %175
  %scevgep553.1 = getelementptr i8, i8* %call, i64 %333
  %scevgep553554.1 = bitcast i8* %scevgep553.1 to double*
  %_p_scalar_555.1 = load double, double* %scevgep553554.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_555.1
  store double %p_add42.i.1, double* %scevgep553554.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.1 = add nuw nsw i64 %polly.indvar538.1, 1
  %exitcond793.1.not = icmp eq i64 %polly.indvar538.1, %smin792.1
  br i1 %exitcond793.1.not, label %polly.loop_exit537.1, label %polly.loop_header535.1

polly.loop_exit537.1:                             ; preds = %polly.loop_header535.1
  %334 = add i64 %177, %183
  %scevgep544.2 = getelementptr i8, i8* %call2, i64 %334
  %scevgep544545.2 = bitcast i8* %scevgep544.2 to double*
  %_p_scalar_546.2 = load double, double* %scevgep544545.2, align 8, !alias.scope !85, !noalias !88
  %scevgep550.2 = getelementptr i8, i8* %call1, i64 %334
  %scevgep550551.2 = bitcast i8* %scevgep550.2 to double*
  %_p_scalar_552.2 = load double, double* %scevgep550551.2, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.2

polly.loop_header535.2:                           ; preds = %polly.loop_header535.2, %polly.loop_exit537.1
  %polly.indvar538.2 = phi i64 [ 0, %polly.loop_exit537.1 ], [ %polly.indvar_next539.2, %polly.loop_header535.2 ]
  %335 = mul nuw nsw i64 %polly.indvar538.2, 480
  %336 = add i64 %335, %183
  %scevgep541.2 = getelementptr i8, i8* %call1, i64 %336
  %scevgep541542.2 = bitcast i8* %scevgep541.2 to double*
  %_p_scalar_543.2 = load double, double* %scevgep541542.2, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2 = fmul fast double %_p_scalar_546.2, %_p_scalar_543.2
  %scevgep547.2 = getelementptr i8, i8* %call2, i64 %336
  %scevgep547548.2 = bitcast i8* %scevgep547.2 to double*
  %_p_scalar_549.2 = load double, double* %scevgep547548.2, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2 = fmul fast double %_p_scalar_552.2, %_p_scalar_549.2
  %337 = shl i64 %polly.indvar538.2, 3
  %338 = add nuw nsw i64 %337, %178
  %scevgep553.2 = getelementptr i8, i8* %call, i64 %338
  %scevgep553554.2 = bitcast i8* %scevgep553.2 to double*
  %_p_scalar_555.2 = load double, double* %scevgep553554.2, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_555.2
  store double %p_add42.i.2, double* %scevgep553554.2, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.2 = add nuw nsw i64 %polly.indvar538.2, 1
  %exitcond793.2.not = icmp eq i64 %polly.indvar538.2, %smin792.2
  br i1 %exitcond793.2.not, label %polly.loop_exit537.2, label %polly.loop_header535.2

polly.loop_exit537.2:                             ; preds = %polly.loop_header535.2
  %339 = add i64 %180, %183
  %scevgep544.3 = getelementptr i8, i8* %call2, i64 %339
  %scevgep544545.3 = bitcast i8* %scevgep544.3 to double*
  %_p_scalar_546.3 = load double, double* %scevgep544545.3, align 8, !alias.scope !85, !noalias !88
  %scevgep550.3 = getelementptr i8, i8* %call1, i64 %339
  %scevgep550551.3 = bitcast i8* %scevgep550.3 to double*
  %_p_scalar_552.3 = load double, double* %scevgep550551.3, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.3

polly.loop_header535.3:                           ; preds = %polly.loop_header535.3, %polly.loop_exit537.2
  %polly.indvar538.3 = phi i64 [ 0, %polly.loop_exit537.2 ], [ %polly.indvar_next539.3, %polly.loop_header535.3 ]
  %340 = mul nuw nsw i64 %polly.indvar538.3, 480
  %341 = add i64 %340, %183
  %scevgep541.3 = getelementptr i8, i8* %call1, i64 %341
  %scevgep541542.3 = bitcast i8* %scevgep541.3 to double*
  %_p_scalar_543.3 = load double, double* %scevgep541542.3, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3 = fmul fast double %_p_scalar_546.3, %_p_scalar_543.3
  %scevgep547.3 = getelementptr i8, i8* %call2, i64 %341
  %scevgep547548.3 = bitcast i8* %scevgep547.3 to double*
  %_p_scalar_549.3 = load double, double* %scevgep547548.3, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3 = fmul fast double %_p_scalar_552.3, %_p_scalar_549.3
  %342 = shl i64 %polly.indvar538.3, 3
  %343 = add nuw nsw i64 %342, %181
  %scevgep553.3 = getelementptr i8, i8* %call, i64 %343
  %scevgep553554.3 = bitcast i8* %scevgep553.3 to double*
  %_p_scalar_555.3 = load double, double* %scevgep553554.3, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_555.3
  store double %p_add42.i.3, double* %scevgep553554.3, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.3 = add nuw nsw i64 %polly.indvar538.3, 1
  %exitcond793.3.not = icmp eq i64 %polly.indvar538.3, %smin792.3
  br i1 %exitcond793.3.not, label %polly.loop_exit537.3, label %polly.loop_header535.3

polly.loop_exit537.3:                             ; preds = %polly.loop_header535.3
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond795.not = icmp eq i64 %polly.indvar_next527, %169
  br i1 %exitcond795.not, label %polly.loop_exit525, label %polly.loop_header523

polly.loop_header517.1:                           ; preds = %polly.loop_exit525, %polly.loop_exit525.1
  %indvars.iv788.1 = phi i64 [ %indvars.iv.next789.1, %polly.loop_exit525.1 ], [ 0, %polly.loop_exit525 ]
  %polly.indvar520.1 = phi i64 [ %polly.indvar_next521.1, %polly.loop_exit525.1 ], [ 16, %polly.loop_exit525 ]
  %344 = shl nsw i64 %polly.indvar520.1, 2
  %smin792.1879 = call i64 @llvm.smin.i64(i64 %indvars.iv788.1, i64 63)
  %345 = mul nsw i64 %polly.indvar520.1, 1920
  %346 = mul nsw i64 %polly.indvar520.1, 2560
  %indvars.iv.next791.1904 = or i64 %indvars.iv788.1, 1
  %smin792.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next791.1904, i64 63)
  %347 = or i64 %344, 1
  %348 = mul nuw nsw i64 %347, 480
  %349 = mul nuw nsw i64 %347, 640
  %indvars.iv.next791.1.1 = add nuw nsw i64 %indvars.iv.next791.1904, 1
  %smin792.2.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next791.1.1, i64 63)
  %350 = or i64 %344, 2
  %351 = mul nuw nsw i64 %350, 480
  %352 = mul nuw nsw i64 %350, 640
  %indvars.iv.next791.2.1 = or i64 %indvars.iv788.1, 3
  %smin792.3.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next791.2.1, i64 63)
  %353 = or i64 %344, 3
  %354 = mul nuw nsw i64 %353, 480
  %355 = mul nuw nsw i64 %353, 640
  br label %polly.loop_header523.1

polly.loop_header523.1:                           ; preds = %polly.loop_exit537.3.1, %polly.loop_header517.1
  %polly.indvar526.1 = phi i64 [ 0, %polly.loop_header517.1 ], [ %polly.indvar_next527.1, %polly.loop_exit537.3.1 ]
  %356 = add nuw nsw i64 %polly.indvar526.1, %168
  %357 = shl i64 %356, 3
  %358 = add i64 %345, %357
  %scevgep544.1880 = getelementptr i8, i8* %call2, i64 %358
  %scevgep544545.1881 = bitcast i8* %scevgep544.1880 to double*
  %_p_scalar_546.1882 = load double, double* %scevgep544545.1881, align 8, !alias.scope !85, !noalias !88
  %scevgep550.1883 = getelementptr i8, i8* %call1, i64 %358
  %scevgep550551.1884 = bitcast i8* %scevgep550.1883 to double*
  %_p_scalar_552.1885 = load double, double* %scevgep550551.1884, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.1903

polly.loop_header535.1903:                        ; preds = %polly.loop_header535.1903, %polly.loop_header523.1
  %polly.indvar538.1886 = phi i64 [ 0, %polly.loop_header523.1 ], [ %polly.indvar_next539.1901, %polly.loop_header535.1903 ]
  %359 = add nuw nsw i64 %polly.indvar538.1886, 64
  %360 = mul nuw nsw i64 %359, 480
  %361 = add i64 %360, %357
  %scevgep541.1887 = getelementptr i8, i8* %call1, i64 %361
  %scevgep541542.1888 = bitcast i8* %scevgep541.1887 to double*
  %_p_scalar_543.1889 = load double, double* %scevgep541542.1888, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1890 = fmul fast double %_p_scalar_546.1882, %_p_scalar_543.1889
  %scevgep547.1891 = getelementptr i8, i8* %call2, i64 %361
  %scevgep547548.1892 = bitcast i8* %scevgep547.1891 to double*
  %_p_scalar_549.1893 = load double, double* %scevgep547548.1892, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1894 = fmul fast double %_p_scalar_552.1885, %_p_scalar_549.1893
  %362 = shl i64 %359, 3
  %363 = add nuw nsw i64 %362, %346
  %scevgep553.1895 = getelementptr i8, i8* %call, i64 %363
  %scevgep553554.1896 = bitcast i8* %scevgep553.1895 to double*
  %_p_scalar_555.1897 = load double, double* %scevgep553554.1896, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1898 = fadd fast double %p_mul37.i.1894, %p_mul27.i.1890
  %p_reass.mul.i.1899 = fmul fast double %p_reass.add.i.1898, 1.500000e+00
  %p_add42.i.1900 = fadd fast double %p_reass.mul.i.1899, %_p_scalar_555.1897
  store double %p_add42.i.1900, double* %scevgep553554.1896, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.1901 = add nuw nsw i64 %polly.indvar538.1886, 1
  %exitcond793.1902.not = icmp eq i64 %polly.indvar538.1886, %smin792.1879
  br i1 %exitcond793.1902.not, label %polly.loop_exit537.1905, label %polly.loop_header535.1903

polly.loop_exit537.1905:                          ; preds = %polly.loop_header535.1903
  %364 = add i64 %348, %357
  %scevgep544.1.1 = getelementptr i8, i8* %call2, i64 %364
  %scevgep544545.1.1 = bitcast i8* %scevgep544.1.1 to double*
  %_p_scalar_546.1.1 = load double, double* %scevgep544545.1.1, align 8, !alias.scope !85, !noalias !88
  %scevgep550.1.1 = getelementptr i8, i8* %call1, i64 %364
  %scevgep550551.1.1 = bitcast i8* %scevgep550.1.1 to double*
  %_p_scalar_552.1.1 = load double, double* %scevgep550551.1.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.1.1

polly.loop_header535.1.1:                         ; preds = %polly.loop_header535.1.1, %polly.loop_exit537.1905
  %polly.indvar538.1.1 = phi i64 [ 0, %polly.loop_exit537.1905 ], [ %polly.indvar_next539.1.1, %polly.loop_header535.1.1 ]
  %365 = add nuw nsw i64 %polly.indvar538.1.1, 64
  %366 = mul nuw nsw i64 %365, 480
  %367 = add i64 %366, %357
  %scevgep541.1.1 = getelementptr i8, i8* %call1, i64 %367
  %scevgep541542.1.1 = bitcast i8* %scevgep541.1.1 to double*
  %_p_scalar_543.1.1 = load double, double* %scevgep541542.1.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.1.1 = fmul fast double %_p_scalar_546.1.1, %_p_scalar_543.1.1
  %scevgep547.1.1 = getelementptr i8, i8* %call2, i64 %367
  %scevgep547548.1.1 = bitcast i8* %scevgep547.1.1 to double*
  %_p_scalar_549.1.1 = load double, double* %scevgep547548.1.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.1.1 = fmul fast double %_p_scalar_552.1.1, %_p_scalar_549.1.1
  %368 = shl i64 %365, 3
  %369 = add nuw nsw i64 %368, %349
  %scevgep553.1.1 = getelementptr i8, i8* %call, i64 %369
  %scevgep553554.1.1 = bitcast i8* %scevgep553.1.1 to double*
  %_p_scalar_555.1.1 = load double, double* %scevgep553554.1.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.1.1 = fadd fast double %p_mul37.i.1.1, %p_mul27.i.1.1
  %p_reass.mul.i.1.1 = fmul fast double %p_reass.add.i.1.1, 1.500000e+00
  %p_add42.i.1.1 = fadd fast double %p_reass.mul.i.1.1, %_p_scalar_555.1.1
  store double %p_add42.i.1.1, double* %scevgep553554.1.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.1.1 = add nuw nsw i64 %polly.indvar538.1.1, 1
  %exitcond793.1.1.not = icmp eq i64 %polly.indvar538.1.1, %smin792.1.1
  br i1 %exitcond793.1.1.not, label %polly.loop_exit537.1.1, label %polly.loop_header535.1.1

polly.loop_exit537.1.1:                           ; preds = %polly.loop_header535.1.1
  %370 = add i64 %351, %357
  %scevgep544.2.1 = getelementptr i8, i8* %call2, i64 %370
  %scevgep544545.2.1 = bitcast i8* %scevgep544.2.1 to double*
  %_p_scalar_546.2.1 = load double, double* %scevgep544545.2.1, align 8, !alias.scope !85, !noalias !88
  %scevgep550.2.1 = getelementptr i8, i8* %call1, i64 %370
  %scevgep550551.2.1 = bitcast i8* %scevgep550.2.1 to double*
  %_p_scalar_552.2.1 = load double, double* %scevgep550551.2.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.2.1

polly.loop_header535.2.1:                         ; preds = %polly.loop_header535.2.1, %polly.loop_exit537.1.1
  %polly.indvar538.2.1 = phi i64 [ 0, %polly.loop_exit537.1.1 ], [ %polly.indvar_next539.2.1, %polly.loop_header535.2.1 ]
  %371 = add nuw nsw i64 %polly.indvar538.2.1, 64
  %372 = mul nuw nsw i64 %371, 480
  %373 = add i64 %372, %357
  %scevgep541.2.1 = getelementptr i8, i8* %call1, i64 %373
  %scevgep541542.2.1 = bitcast i8* %scevgep541.2.1 to double*
  %_p_scalar_543.2.1 = load double, double* %scevgep541542.2.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.2.1 = fmul fast double %_p_scalar_546.2.1, %_p_scalar_543.2.1
  %scevgep547.2.1 = getelementptr i8, i8* %call2, i64 %373
  %scevgep547548.2.1 = bitcast i8* %scevgep547.2.1 to double*
  %_p_scalar_549.2.1 = load double, double* %scevgep547548.2.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.2.1 = fmul fast double %_p_scalar_552.2.1, %_p_scalar_549.2.1
  %374 = shl i64 %371, 3
  %375 = add nuw nsw i64 %374, %352
  %scevgep553.2.1 = getelementptr i8, i8* %call, i64 %375
  %scevgep553554.2.1 = bitcast i8* %scevgep553.2.1 to double*
  %_p_scalar_555.2.1 = load double, double* %scevgep553554.2.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.2.1 = fadd fast double %p_mul37.i.2.1, %p_mul27.i.2.1
  %p_reass.mul.i.2.1 = fmul fast double %p_reass.add.i.2.1, 1.500000e+00
  %p_add42.i.2.1 = fadd fast double %p_reass.mul.i.2.1, %_p_scalar_555.2.1
  store double %p_add42.i.2.1, double* %scevgep553554.2.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.2.1 = add nuw nsw i64 %polly.indvar538.2.1, 1
  %exitcond793.2.1.not = icmp eq i64 %polly.indvar538.2.1, %smin792.2.1
  br i1 %exitcond793.2.1.not, label %polly.loop_exit537.2.1, label %polly.loop_header535.2.1

polly.loop_exit537.2.1:                           ; preds = %polly.loop_header535.2.1
  %376 = add i64 %354, %357
  %scevgep544.3.1 = getelementptr i8, i8* %call2, i64 %376
  %scevgep544545.3.1 = bitcast i8* %scevgep544.3.1 to double*
  %_p_scalar_546.3.1 = load double, double* %scevgep544545.3.1, align 8, !alias.scope !85, !noalias !88
  %scevgep550.3.1 = getelementptr i8, i8* %call1, i64 %376
  %scevgep550551.3.1 = bitcast i8* %scevgep550.3.1 to double*
  %_p_scalar_552.3.1 = load double, double* %scevgep550551.3.1, align 8, !alias.scope !84, !noalias !89
  br label %polly.loop_header535.3.1

polly.loop_header535.3.1:                         ; preds = %polly.loop_header535.3.1, %polly.loop_exit537.2.1
  %polly.indvar538.3.1 = phi i64 [ 0, %polly.loop_exit537.2.1 ], [ %polly.indvar_next539.3.1, %polly.loop_header535.3.1 ]
  %377 = add nuw nsw i64 %polly.indvar538.3.1, 64
  %378 = mul nuw nsw i64 %377, 480
  %379 = add i64 %378, %357
  %scevgep541.3.1 = getelementptr i8, i8* %call1, i64 %379
  %scevgep541542.3.1 = bitcast i8* %scevgep541.3.1 to double*
  %_p_scalar_543.3.1 = load double, double* %scevgep541542.3.1, align 8, !alias.scope !84, !noalias !89
  %p_mul27.i.3.1 = fmul fast double %_p_scalar_546.3.1, %_p_scalar_543.3.1
  %scevgep547.3.1 = getelementptr i8, i8* %call2, i64 %379
  %scevgep547548.3.1 = bitcast i8* %scevgep547.3.1 to double*
  %_p_scalar_549.3.1 = load double, double* %scevgep547548.3.1, align 8, !alias.scope !85, !noalias !88
  %p_mul37.i.3.1 = fmul fast double %_p_scalar_552.3.1, %_p_scalar_549.3.1
  %380 = shl i64 %377, 3
  %381 = add nuw nsw i64 %380, %355
  %scevgep553.3.1 = getelementptr i8, i8* %call, i64 %381
  %scevgep553554.3.1 = bitcast i8* %scevgep553.3.1 to double*
  %_p_scalar_555.3.1 = load double, double* %scevgep553554.3.1, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.3.1 = fadd fast double %p_mul37.i.3.1, %p_mul27.i.3.1
  %p_reass.mul.i.3.1 = fmul fast double %p_reass.add.i.3.1, 1.500000e+00
  %p_add42.i.3.1 = fadd fast double %p_reass.mul.i.3.1, %_p_scalar_555.3.1
  store double %p_add42.i.3.1, double* %scevgep553554.3.1, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next539.3.1 = add nuw nsw i64 %polly.indvar538.3.1, 1
  %exitcond793.3.1.not = icmp eq i64 %polly.indvar538.3.1, %smin792.3.1
  br i1 %exitcond793.3.1.not, label %polly.loop_exit537.3.1, label %polly.loop_header535.3.1

polly.loop_exit537.3.1:                           ; preds = %polly.loop_header535.3.1
  %polly.indvar_next527.1 = add nuw nsw i64 %polly.indvar526.1, 1
  %exitcond795.1.not = icmp eq i64 %polly.indvar_next527.1, %169
  br i1 %exitcond795.1.not, label %polly.loop_exit525.1, label %polly.loop_header523.1

polly.loop_exit525.1:                             ; preds = %polly.loop_exit537.3.1
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %indvars.iv.next789.1 = add nuw nsw i64 %indvars.iv788.1, 4
  %exitcond796.1.not = icmp eq i64 %polly.indvar_next521.1, 20
  br i1 %exitcond796.1.not, label %polly.loop_exit519.1, label %polly.loop_header517.1

polly.loop_exit519.1:                             ; preds = %polly.loop_exit525.1
  br i1 %polly.loop_cond510, label %polly.loop_header505, label %kernel_syr2k.exit

polly.loop_header747.1:                           ; preds = %polly.loop_exit755, %polly.loop_exit755.1
  %polly.indvar750.1 = phi i64 [ %polly.indvar_next751.1, %polly.loop_exit755.1 ], [ 0, %polly.loop_exit755 ]
  %382 = mul nuw nsw i64 %polly.indvar750.1, 480
  %383 = trunc i64 %polly.indvar750.1 to i32
  %broadcast.splatinsert1202 = insertelement <4 x i32> poison, i32 %383, i32 0
  %broadcast.splat1203 = shufflevector <4 x i32> %broadcast.splatinsert1202, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %polly.loop_header747.1
  %index1196 = phi i64 [ 0, %polly.loop_header747.1 ], [ %index.next1197, %vector.body1194 ]
  %vec.ind1200 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header747.1 ], [ %vec.ind.next1201, %vector.body1194 ]
  %384 = add nuw nsw <4 x i64> %vec.ind1200, <i64 32, i64 32, i64 32, i64 32>
  %385 = trunc <4 x i64> %384 to <4 x i32>
  %386 = mul <4 x i32> %broadcast.splat1203, %385
  %387 = add <4 x i32> %386, <i32 1, i32 1, i32 1, i32 1>
  %388 = urem <4 x i32> %387, <i32 80, i32 80, i32 80, i32 80>
  %389 = sitofp <4 x i32> %388 to <4 x double>
  %390 = fmul fast <4 x double> %389, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %391 = extractelement <4 x i64> %384, i32 0
  %392 = shl i64 %391, 3
  %393 = add i64 %392, %382
  %394 = getelementptr i8, i8* %call1, i64 %393
  %395 = bitcast i8* %394 to <4 x double>*
  store <4 x double> %390, <4 x double>* %395, align 8, !alias.scope !93, !noalias !98
  %index.next1197 = add i64 %index1196, 4
  %vec.ind.next1201 = add <4 x i64> %vec.ind1200, <i64 4, i64 4, i64 4, i64 4>
  %396 = icmp eq i64 %index.next1197, 28
  br i1 %396, label %polly.loop_exit755.1, label %vector.body1194, !llvm.loop !100

polly.loop_exit755.1:                             ; preds = %vector.body1194
  %polly.indvar_next751.1 = add nuw nsw i64 %polly.indvar750.1, 1
  %exitcond803.1.not = icmp eq i64 %polly.indvar_next751.1, 32
  br i1 %exitcond803.1.not, label %polly.loop_header747.1907, label %polly.loop_header747.1

polly.loop_header747.1907:                        ; preds = %polly.loop_exit755.1, %polly.loop_exit755.1918
  %polly.indvar750.1906 = phi i64 [ %polly.indvar_next751.1916, %polly.loop_exit755.1918 ], [ 0, %polly.loop_exit755.1 ]
  %397 = add nuw nsw i64 %polly.indvar750.1906, 32
  %398 = mul nuw nsw i64 %397, 480
  %399 = trunc i64 %397 to i32
  %broadcast.splatinsert1216 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1217 = shufflevector <4 x i32> %broadcast.splatinsert1216, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %polly.loop_header747.1907
  %index1208 = phi i64 [ 0, %polly.loop_header747.1907 ], [ %index.next1209, %vector.body1206 ]
  %vec.ind1214 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header747.1907 ], [ %vec.ind.next1215, %vector.body1206 ]
  %400 = mul <4 x i32> %vec.ind1214, %broadcast.splat1217
  %401 = add <4 x i32> %400, <i32 1, i32 1, i32 1, i32 1>
  %402 = urem <4 x i32> %401, <i32 80, i32 80, i32 80, i32 80>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %405 = shl i64 %index1208, 3
  %406 = add i64 %405, %398
  %407 = getelementptr i8, i8* %call1, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %404, <4 x double>* %408, align 8, !alias.scope !93, !noalias !98
  %index.next1209 = add i64 %index1208, 4
  %vec.ind.next1215 = add <4 x i32> %vec.ind1214, <i32 4, i32 4, i32 4, i32 4>
  %409 = icmp eq i64 %index.next1209, 32
  br i1 %409, label %polly.loop_exit755.1918, label %vector.body1206, !llvm.loop !101

polly.loop_exit755.1918:                          ; preds = %vector.body1206
  %polly.indvar_next751.1916 = add nuw nsw i64 %polly.indvar750.1906, 1
  %exitcond803.1917.not = icmp eq i64 %polly.indvar_next751.1916, 32
  br i1 %exitcond803.1917.not, label %polly.loop_header747.1.1, label %polly.loop_header747.1907

polly.loop_header747.1.1:                         ; preds = %polly.loop_exit755.1918, %polly.loop_exit755.1.1
  %polly.indvar750.1.1 = phi i64 [ %polly.indvar_next751.1.1, %polly.loop_exit755.1.1 ], [ 0, %polly.loop_exit755.1918 ]
  %410 = add nuw nsw i64 %polly.indvar750.1.1, 32
  %411 = mul nuw nsw i64 %410, 480
  %412 = trunc i64 %410 to i32
  %broadcast.splatinsert1228 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1229 = shufflevector <4 x i32> %broadcast.splatinsert1228, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %polly.loop_header747.1.1
  %index1222 = phi i64 [ 0, %polly.loop_header747.1.1 ], [ %index.next1223, %vector.body1220 ]
  %vec.ind1226 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header747.1.1 ], [ %vec.ind.next1227, %vector.body1220 ]
  %413 = add nuw nsw <4 x i64> %vec.ind1226, <i64 32, i64 32, i64 32, i64 32>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat1229, %414
  %416 = add <4 x i32> %415, <i32 1, i32 1, i32 1, i32 1>
  %417 = urem <4 x i32> %416, <i32 80, i32 80, i32 80, i32 80>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add i64 %421, %411
  %423 = getelementptr i8, i8* %call1, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !93, !noalias !98
  %index.next1223 = add i64 %index1222, 4
  %vec.ind.next1227 = add <4 x i64> %vec.ind1226, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next1223, 28
  br i1 %425, label %polly.loop_exit755.1.1, label %vector.body1220, !llvm.loop !102

polly.loop_exit755.1.1:                           ; preds = %vector.body1220
  %polly.indvar_next751.1.1 = add nuw nsw i64 %polly.indvar750.1.1, 1
  %exitcond803.1.1.not = icmp eq i64 %polly.indvar_next751.1.1, 32
  br i1 %exitcond803.1.1.not, label %polly.loop_header747.2, label %polly.loop_header747.1.1

polly.loop_header747.2:                           ; preds = %polly.loop_exit755.1.1, %polly.loop_exit755.2
  %polly.indvar750.2 = phi i64 [ %polly.indvar_next751.2, %polly.loop_exit755.2 ], [ 0, %polly.loop_exit755.1.1 ]
  %426 = add nuw nsw i64 %polly.indvar750.2, 64
  %427 = mul nuw nsw i64 %426, 480
  %428 = trunc i64 %426 to i32
  %broadcast.splatinsert1242 = insertelement <4 x i32> poison, i32 %428, i32 0
  %broadcast.splat1243 = shufflevector <4 x i32> %broadcast.splatinsert1242, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1232

vector.body1232:                                  ; preds = %vector.body1232, %polly.loop_header747.2
  %index1234 = phi i64 [ 0, %polly.loop_header747.2 ], [ %index.next1235, %vector.body1232 ]
  %vec.ind1240 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header747.2 ], [ %vec.ind.next1241, %vector.body1232 ]
  %429 = mul <4 x i32> %vec.ind1240, %broadcast.splat1243
  %430 = add <4 x i32> %429, <i32 1, i32 1, i32 1, i32 1>
  %431 = urem <4 x i32> %430, <i32 80, i32 80, i32 80, i32 80>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %434 = shl i64 %index1234, 3
  %435 = add i64 %434, %427
  %436 = getelementptr i8, i8* %call1, i64 %435
  %437 = bitcast i8* %436 to <4 x double>*
  store <4 x double> %433, <4 x double>* %437, align 8, !alias.scope !93, !noalias !98
  %index.next1235 = add i64 %index1234, 4
  %vec.ind.next1241 = add <4 x i32> %vec.ind1240, <i32 4, i32 4, i32 4, i32 4>
  %438 = icmp eq i64 %index.next1235, 32
  br i1 %438, label %polly.loop_exit755.2, label %vector.body1232, !llvm.loop !103

polly.loop_exit755.2:                             ; preds = %vector.body1232
  %polly.indvar_next751.2 = add nuw nsw i64 %polly.indvar750.2, 1
  %exitcond803.2.not = icmp eq i64 %polly.indvar_next751.2, 16
  br i1 %exitcond803.2.not, label %polly.loop_header747.1.2, label %polly.loop_header747.2

polly.loop_header747.1.2:                         ; preds = %polly.loop_exit755.2, %polly.loop_exit755.1.2
  %polly.indvar750.1.2 = phi i64 [ %polly.indvar_next751.1.2, %polly.loop_exit755.1.2 ], [ 0, %polly.loop_exit755.2 ]
  %439 = add nuw nsw i64 %polly.indvar750.1.2, 64
  %440 = mul nuw nsw i64 %439, 480
  %441 = trunc i64 %439 to i32
  %broadcast.splatinsert1254 = insertelement <4 x i32> poison, i32 %441, i32 0
  %broadcast.splat1255 = shufflevector <4 x i32> %broadcast.splatinsert1254, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %polly.loop_header747.1.2
  %index1248 = phi i64 [ 0, %polly.loop_header747.1.2 ], [ %index.next1249, %vector.body1246 ]
  %vec.ind1252 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header747.1.2 ], [ %vec.ind.next1253, %vector.body1246 ]
  %442 = add nuw nsw <4 x i64> %vec.ind1252, <i64 32, i64 32, i64 32, i64 32>
  %443 = trunc <4 x i64> %442 to <4 x i32>
  %444 = mul <4 x i32> %broadcast.splat1255, %443
  %445 = add <4 x i32> %444, <i32 1, i32 1, i32 1, i32 1>
  %446 = urem <4 x i32> %445, <i32 80, i32 80, i32 80, i32 80>
  %447 = sitofp <4 x i32> %446 to <4 x double>
  %448 = fmul fast <4 x double> %447, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %449 = extractelement <4 x i64> %442, i32 0
  %450 = shl i64 %449, 3
  %451 = add i64 %450, %440
  %452 = getelementptr i8, i8* %call1, i64 %451
  %453 = bitcast i8* %452 to <4 x double>*
  store <4 x double> %448, <4 x double>* %453, align 8, !alias.scope !93, !noalias !98
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1253 = add <4 x i64> %vec.ind1252, <i64 4, i64 4, i64 4, i64 4>
  %454 = icmp eq i64 %index.next1249, 28
  br i1 %454, label %polly.loop_exit755.1.2, label %vector.body1246, !llvm.loop !104

polly.loop_exit755.1.2:                           ; preds = %vector.body1246
  %polly.indvar_next751.1.2 = add nuw nsw i64 %polly.indvar750.1.2, 1
  %exitcond803.1.2.not = icmp eq i64 %polly.indvar_next751.1.2, 16
  br i1 %exitcond803.1.2.not, label %init_array.exit, label %polly.loop_header747.1.2

polly.loop_header721.1:                           ; preds = %polly.loop_exit729, %polly.loop_exit729.1
  %polly.indvar724.1 = phi i64 [ %polly.indvar_next725.1, %polly.loop_exit729.1 ], [ 0, %polly.loop_exit729 ]
  %455 = mul nuw nsw i64 %polly.indvar724.1, 480
  %456 = trunc i64 %polly.indvar724.1 to i32
  %broadcast.splatinsert1124 = insertelement <4 x i32> poison, i32 %456, i32 0
  %broadcast.splat1125 = shufflevector <4 x i32> %broadcast.splatinsert1124, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %polly.loop_header721.1
  %index1118 = phi i64 [ 0, %polly.loop_header721.1 ], [ %index.next1119, %vector.body1116 ]
  %vec.ind1122 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header721.1 ], [ %vec.ind.next1123, %vector.body1116 ]
  %457 = add nuw nsw <4 x i64> %vec.ind1122, <i64 32, i64 32, i64 32, i64 32>
  %458 = trunc <4 x i64> %457 to <4 x i32>
  %459 = mul <4 x i32> %broadcast.splat1125, %458
  %460 = add <4 x i32> %459, <i32 2, i32 2, i32 2, i32 2>
  %461 = urem <4 x i32> %460, <i32 60, i32 60, i32 60, i32 60>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = extractelement <4 x i64> %457, i32 0
  %465 = shl i64 %464, 3
  %466 = add i64 %465, %455
  %467 = getelementptr i8, i8* %call2, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %463, <4 x double>* %468, align 8, !alias.scope !94, !noalias !96
  %index.next1119 = add i64 %index1118, 4
  %vec.ind.next1123 = add <4 x i64> %vec.ind1122, <i64 4, i64 4, i64 4, i64 4>
  %469 = icmp eq i64 %index.next1119, 28
  br i1 %469, label %polly.loop_exit729.1, label %vector.body1116, !llvm.loop !105

polly.loop_exit729.1:                             ; preds = %vector.body1116
  %polly.indvar_next725.1 = add nuw nsw i64 %polly.indvar724.1, 1
  %exitcond809.1.not = icmp eq i64 %polly.indvar_next725.1, 32
  br i1 %exitcond809.1.not, label %polly.loop_header721.1921, label %polly.loop_header721.1

polly.loop_header721.1921:                        ; preds = %polly.loop_exit729.1, %polly.loop_exit729.1932
  %polly.indvar724.1920 = phi i64 [ %polly.indvar_next725.1930, %polly.loop_exit729.1932 ], [ 0, %polly.loop_exit729.1 ]
  %470 = add nuw nsw i64 %polly.indvar724.1920, 32
  %471 = mul nuw nsw i64 %470, 480
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1138 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1139 = shufflevector <4 x i32> %broadcast.splatinsert1138, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1128

vector.body1128:                                  ; preds = %vector.body1128, %polly.loop_header721.1921
  %index1130 = phi i64 [ 0, %polly.loop_header721.1921 ], [ %index.next1131, %vector.body1128 ]
  %vec.ind1136 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header721.1921 ], [ %vec.ind.next1137, %vector.body1128 ]
  %473 = mul <4 x i32> %vec.ind1136, %broadcast.splat1139
  %474 = add <4 x i32> %473, <i32 2, i32 2, i32 2, i32 2>
  %475 = urem <4 x i32> %474, <i32 60, i32 60, i32 60, i32 60>
  %476 = sitofp <4 x i32> %475 to <4 x double>
  %477 = fmul fast <4 x double> %476, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %478 = shl i64 %index1130, 3
  %479 = add i64 %478, %471
  %480 = getelementptr i8, i8* %call2, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %477, <4 x double>* %481, align 8, !alias.scope !94, !noalias !96
  %index.next1131 = add i64 %index1130, 4
  %vec.ind.next1137 = add <4 x i32> %vec.ind1136, <i32 4, i32 4, i32 4, i32 4>
  %482 = icmp eq i64 %index.next1131, 32
  br i1 %482, label %polly.loop_exit729.1932, label %vector.body1128, !llvm.loop !106

polly.loop_exit729.1932:                          ; preds = %vector.body1128
  %polly.indvar_next725.1930 = add nuw nsw i64 %polly.indvar724.1920, 1
  %exitcond809.1931.not = icmp eq i64 %polly.indvar_next725.1930, 32
  br i1 %exitcond809.1931.not, label %polly.loop_header721.1.1, label %polly.loop_header721.1921

polly.loop_header721.1.1:                         ; preds = %polly.loop_exit729.1932, %polly.loop_exit729.1.1
  %polly.indvar724.1.1 = phi i64 [ %polly.indvar_next725.1.1, %polly.loop_exit729.1.1 ], [ 0, %polly.loop_exit729.1932 ]
  %483 = add nuw nsw i64 %polly.indvar724.1.1, 32
  %484 = mul nuw nsw i64 %483, 480
  %485 = trunc i64 %483 to i32
  %broadcast.splatinsert1150 = insertelement <4 x i32> poison, i32 %485, i32 0
  %broadcast.splat1151 = shufflevector <4 x i32> %broadcast.splatinsert1150, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %polly.loop_header721.1.1
  %index1144 = phi i64 [ 0, %polly.loop_header721.1.1 ], [ %index.next1145, %vector.body1142 ]
  %vec.ind1148 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header721.1.1 ], [ %vec.ind.next1149, %vector.body1142 ]
  %486 = add nuw nsw <4 x i64> %vec.ind1148, <i64 32, i64 32, i64 32, i64 32>
  %487 = trunc <4 x i64> %486 to <4 x i32>
  %488 = mul <4 x i32> %broadcast.splat1151, %487
  %489 = add <4 x i32> %488, <i32 2, i32 2, i32 2, i32 2>
  %490 = urem <4 x i32> %489, <i32 60, i32 60, i32 60, i32 60>
  %491 = sitofp <4 x i32> %490 to <4 x double>
  %492 = fmul fast <4 x double> %491, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %493 = extractelement <4 x i64> %486, i32 0
  %494 = shl i64 %493, 3
  %495 = add i64 %494, %484
  %496 = getelementptr i8, i8* %call2, i64 %495
  %497 = bitcast i8* %496 to <4 x double>*
  store <4 x double> %492, <4 x double>* %497, align 8, !alias.scope !94, !noalias !96
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1149 = add <4 x i64> %vec.ind1148, <i64 4, i64 4, i64 4, i64 4>
  %498 = icmp eq i64 %index.next1145, 28
  br i1 %498, label %polly.loop_exit729.1.1, label %vector.body1142, !llvm.loop !107

polly.loop_exit729.1.1:                           ; preds = %vector.body1142
  %polly.indvar_next725.1.1 = add nuw nsw i64 %polly.indvar724.1.1, 1
  %exitcond809.1.1.not = icmp eq i64 %polly.indvar_next725.1.1, 32
  br i1 %exitcond809.1.1.not, label %polly.loop_header721.2, label %polly.loop_header721.1.1

polly.loop_header721.2:                           ; preds = %polly.loop_exit729.1.1, %polly.loop_exit729.2
  %polly.indvar724.2 = phi i64 [ %polly.indvar_next725.2, %polly.loop_exit729.2 ], [ 0, %polly.loop_exit729.1.1 ]
  %499 = add nuw nsw i64 %polly.indvar724.2, 64
  %500 = mul nuw nsw i64 %499, 480
  %501 = trunc i64 %499 to i32
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %501, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1154

vector.body1154:                                  ; preds = %vector.body1154, %polly.loop_header721.2
  %index1156 = phi i64 [ 0, %polly.loop_header721.2 ], [ %index.next1157, %vector.body1154 ]
  %vec.ind1162 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header721.2 ], [ %vec.ind.next1163, %vector.body1154 ]
  %502 = mul <4 x i32> %vec.ind1162, %broadcast.splat1165
  %503 = add <4 x i32> %502, <i32 2, i32 2, i32 2, i32 2>
  %504 = urem <4 x i32> %503, <i32 60, i32 60, i32 60, i32 60>
  %505 = sitofp <4 x i32> %504 to <4 x double>
  %506 = fmul fast <4 x double> %505, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %507 = shl i64 %index1156, 3
  %508 = add i64 %507, %500
  %509 = getelementptr i8, i8* %call2, i64 %508
  %510 = bitcast i8* %509 to <4 x double>*
  store <4 x double> %506, <4 x double>* %510, align 8, !alias.scope !94, !noalias !96
  %index.next1157 = add i64 %index1156, 4
  %vec.ind.next1163 = add <4 x i32> %vec.ind1162, <i32 4, i32 4, i32 4, i32 4>
  %511 = icmp eq i64 %index.next1157, 32
  br i1 %511, label %polly.loop_exit729.2, label %vector.body1154, !llvm.loop !108

polly.loop_exit729.2:                             ; preds = %vector.body1154
  %polly.indvar_next725.2 = add nuw nsw i64 %polly.indvar724.2, 1
  %exitcond809.2.not = icmp eq i64 %polly.indvar_next725.2, 16
  br i1 %exitcond809.2.not, label %polly.loop_header721.1.2, label %polly.loop_header721.2

polly.loop_header721.1.2:                         ; preds = %polly.loop_exit729.2, %polly.loop_exit729.1.2
  %polly.indvar724.1.2 = phi i64 [ %polly.indvar_next725.1.2, %polly.loop_exit729.1.2 ], [ 0, %polly.loop_exit729.2 ]
  %512 = add nuw nsw i64 %polly.indvar724.1.2, 64
  %513 = mul nuw nsw i64 %512, 480
  %514 = trunc i64 %512 to i32
  %broadcast.splatinsert1176 = insertelement <4 x i32> poison, i32 %514, i32 0
  %broadcast.splat1177 = shufflevector <4 x i32> %broadcast.splatinsert1176, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %polly.loop_header721.1.2
  %index1170 = phi i64 [ 0, %polly.loop_header721.1.2 ], [ %index.next1171, %vector.body1168 ]
  %vec.ind1174 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header721.1.2 ], [ %vec.ind.next1175, %vector.body1168 ]
  %515 = add nuw nsw <4 x i64> %vec.ind1174, <i64 32, i64 32, i64 32, i64 32>
  %516 = trunc <4 x i64> %515 to <4 x i32>
  %517 = mul <4 x i32> %broadcast.splat1177, %516
  %518 = add <4 x i32> %517, <i32 2, i32 2, i32 2, i32 2>
  %519 = urem <4 x i32> %518, <i32 60, i32 60, i32 60, i32 60>
  %520 = sitofp <4 x i32> %519 to <4 x double>
  %521 = fmul fast <4 x double> %520, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %522 = extractelement <4 x i64> %515, i32 0
  %523 = shl i64 %522, 3
  %524 = add i64 %523, %513
  %525 = getelementptr i8, i8* %call2, i64 %524
  %526 = bitcast i8* %525 to <4 x double>*
  store <4 x double> %521, <4 x double>* %526, align 8, !alias.scope !94, !noalias !96
  %index.next1171 = add i64 %index1170, 4
  %vec.ind.next1175 = add <4 x i64> %vec.ind1174, <i64 4, i64 4, i64 4, i64 4>
  %527 = icmp eq i64 %index.next1171, 28
  br i1 %527, label %polly.loop_exit729.1.2, label %vector.body1168, !llvm.loop !109

polly.loop_exit729.1.2:                           ; preds = %vector.body1168
  %polly.indvar_next725.1.2 = add nuw nsw i64 %polly.indvar724.1.2, 1
  %exitcond809.1.2.not = icmp eq i64 %polly.indvar_next725.1.2, 16
  br i1 %exitcond809.1.2.not, label %polly.loop_header747, label %polly.loop_header721.1.2

polly.loop_header694.1:                           ; preds = %polly.loop_exit702, %polly.loop_exit702.1
  %polly.indvar697.1 = phi i64 [ %polly.indvar_next698.1, %polly.loop_exit702.1 ], [ 0, %polly.loop_exit702 ]
  %528 = mul nuw nsw i64 %polly.indvar697.1, 640
  %529 = trunc i64 %polly.indvar697.1 to i32
  %broadcast.splatinsert1010 = insertelement <4 x i32> poison, i32 %529, i32 0
  %broadcast.splat1011 = shufflevector <4 x i32> %broadcast.splatinsert1010, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1002

vector.body1002:                                  ; preds = %vector.body1002, %polly.loop_header694.1
  %index1004 = phi i64 [ 0, %polly.loop_header694.1 ], [ %index.next1005, %vector.body1002 ]
  %vec.ind1008 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.1 ], [ %vec.ind.next1009, %vector.body1002 ]
  %530 = add nuw nsw <4 x i64> %vec.ind1008, <i64 32, i64 32, i64 32, i64 32>
  %531 = trunc <4 x i64> %530 to <4 x i32>
  %532 = mul <4 x i32> %broadcast.splat1011, %531
  %533 = add <4 x i32> %532, <i32 3, i32 3, i32 3, i32 3>
  %534 = urem <4 x i32> %533, <i32 80, i32 80, i32 80, i32 80>
  %535 = sitofp <4 x i32> %534 to <4 x double>
  %536 = fmul fast <4 x double> %535, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %537 = extractelement <4 x i64> %530, i32 0
  %538 = shl i64 %537, 3
  %539 = add nuw nsw i64 %538, %528
  %540 = getelementptr i8, i8* %call, i64 %539
  %541 = bitcast i8* %540 to <4 x double>*
  store <4 x double> %536, <4 x double>* %541, align 8, !alias.scope !90, !noalias !92
  %index.next1005 = add i64 %index1004, 4
  %vec.ind.next1009 = add <4 x i64> %vec.ind1008, <i64 4, i64 4, i64 4, i64 4>
  %542 = icmp eq i64 %index.next1005, 32
  br i1 %542, label %polly.loop_exit702.1, label %vector.body1002, !llvm.loop !110

polly.loop_exit702.1:                             ; preds = %vector.body1002
  %polly.indvar_next698.1 = add nuw nsw i64 %polly.indvar697.1, 1
  %exitcond818.1.not = icmp eq i64 %polly.indvar_next698.1, 32
  br i1 %exitcond818.1.not, label %polly.loop_header694.2, label %polly.loop_header694.1

polly.loop_header694.2:                           ; preds = %polly.loop_exit702.1, %polly.loop_exit702.2
  %polly.indvar697.2 = phi i64 [ %polly.indvar_next698.2, %polly.loop_exit702.2 ], [ 0, %polly.loop_exit702.1 ]
  %543 = mul nuw nsw i64 %polly.indvar697.2, 640
  %544 = trunc i64 %polly.indvar697.2 to i32
  %broadcast.splatinsert1022 = insertelement <4 x i32> poison, i32 %544, i32 0
  %broadcast.splat1023 = shufflevector <4 x i32> %broadcast.splatinsert1022, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1014

vector.body1014:                                  ; preds = %vector.body1014, %polly.loop_header694.2
  %index1016 = phi i64 [ 0, %polly.loop_header694.2 ], [ %index.next1017, %vector.body1014 ]
  %vec.ind1020 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.2 ], [ %vec.ind.next1021, %vector.body1014 ]
  %545 = add nuw nsw <4 x i64> %vec.ind1020, <i64 64, i64 64, i64 64, i64 64>
  %546 = trunc <4 x i64> %545 to <4 x i32>
  %547 = mul <4 x i32> %broadcast.splat1023, %546
  %548 = add <4 x i32> %547, <i32 3, i32 3, i32 3, i32 3>
  %549 = urem <4 x i32> %548, <i32 80, i32 80, i32 80, i32 80>
  %550 = sitofp <4 x i32> %549 to <4 x double>
  %551 = fmul fast <4 x double> %550, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %552 = extractelement <4 x i64> %545, i32 0
  %553 = shl i64 %552, 3
  %554 = add nuw nsw i64 %553, %543
  %555 = getelementptr i8, i8* %call, i64 %554
  %556 = bitcast i8* %555 to <4 x double>*
  store <4 x double> %551, <4 x double>* %556, align 8, !alias.scope !90, !noalias !92
  %index.next1017 = add i64 %index1016, 4
  %vec.ind.next1021 = add <4 x i64> %vec.ind1020, <i64 4, i64 4, i64 4, i64 4>
  %557 = icmp eq i64 %index.next1017, 16
  br i1 %557, label %polly.loop_exit702.2, label %vector.body1014, !llvm.loop !111

polly.loop_exit702.2:                             ; preds = %vector.body1014
  %polly.indvar_next698.2 = add nuw nsw i64 %polly.indvar697.2, 1
  %exitcond818.2.not = icmp eq i64 %polly.indvar_next698.2, 32
  br i1 %exitcond818.2.not, label %polly.loop_header694.1935, label %polly.loop_header694.2

polly.loop_header694.1935:                        ; preds = %polly.loop_exit702.2, %polly.loop_exit702.1946
  %polly.indvar697.1934 = phi i64 [ %polly.indvar_next698.1944, %polly.loop_exit702.1946 ], [ 0, %polly.loop_exit702.2 ]
  %558 = add nuw nsw i64 %polly.indvar697.1934, 32
  %559 = mul nuw nsw i64 %558, 640
  %560 = trunc i64 %558 to i32
  %broadcast.splatinsert1036 = insertelement <4 x i32> poison, i32 %560, i32 0
  %broadcast.splat1037 = shufflevector <4 x i32> %broadcast.splatinsert1036, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %polly.loop_header694.1935
  %index1028 = phi i64 [ 0, %polly.loop_header694.1935 ], [ %index.next1029, %vector.body1026 ]
  %vec.ind1034 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header694.1935 ], [ %vec.ind.next1035, %vector.body1026 ]
  %561 = mul <4 x i32> %vec.ind1034, %broadcast.splat1037
  %562 = add <4 x i32> %561, <i32 3, i32 3, i32 3, i32 3>
  %563 = urem <4 x i32> %562, <i32 80, i32 80, i32 80, i32 80>
  %564 = sitofp <4 x i32> %563 to <4 x double>
  %565 = fmul fast <4 x double> %564, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %566 = shl i64 %index1028, 3
  %567 = add nuw nsw i64 %566, %559
  %568 = getelementptr i8, i8* %call, i64 %567
  %569 = bitcast i8* %568 to <4 x double>*
  store <4 x double> %565, <4 x double>* %569, align 8, !alias.scope !90, !noalias !92
  %index.next1029 = add i64 %index1028, 4
  %vec.ind.next1035 = add <4 x i32> %vec.ind1034, <i32 4, i32 4, i32 4, i32 4>
  %570 = icmp eq i64 %index.next1029, 32
  br i1 %570, label %polly.loop_exit702.1946, label %vector.body1026, !llvm.loop !112

polly.loop_exit702.1946:                          ; preds = %vector.body1026
  %polly.indvar_next698.1944 = add nuw nsw i64 %polly.indvar697.1934, 1
  %exitcond818.1945.not = icmp eq i64 %polly.indvar_next698.1944, 32
  br i1 %exitcond818.1945.not, label %polly.loop_header694.1.1, label %polly.loop_header694.1935

polly.loop_header694.1.1:                         ; preds = %polly.loop_exit702.1946, %polly.loop_exit702.1.1
  %polly.indvar697.1.1 = phi i64 [ %polly.indvar_next698.1.1, %polly.loop_exit702.1.1 ], [ 0, %polly.loop_exit702.1946 ]
  %571 = add nuw nsw i64 %polly.indvar697.1.1, 32
  %572 = mul nuw nsw i64 %571, 640
  %573 = trunc i64 %571 to i32
  %broadcast.splatinsert1048 = insertelement <4 x i32> poison, i32 %573, i32 0
  %broadcast.splat1049 = shufflevector <4 x i32> %broadcast.splatinsert1048, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1040

vector.body1040:                                  ; preds = %vector.body1040, %polly.loop_header694.1.1
  %index1042 = phi i64 [ 0, %polly.loop_header694.1.1 ], [ %index.next1043, %vector.body1040 ]
  %vec.ind1046 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.1.1 ], [ %vec.ind.next1047, %vector.body1040 ]
  %574 = add nuw nsw <4 x i64> %vec.ind1046, <i64 32, i64 32, i64 32, i64 32>
  %575 = trunc <4 x i64> %574 to <4 x i32>
  %576 = mul <4 x i32> %broadcast.splat1049, %575
  %577 = add <4 x i32> %576, <i32 3, i32 3, i32 3, i32 3>
  %578 = urem <4 x i32> %577, <i32 80, i32 80, i32 80, i32 80>
  %579 = sitofp <4 x i32> %578 to <4 x double>
  %580 = fmul fast <4 x double> %579, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %581 = extractelement <4 x i64> %574, i32 0
  %582 = shl i64 %581, 3
  %583 = add nuw nsw i64 %582, %572
  %584 = getelementptr i8, i8* %call, i64 %583
  %585 = bitcast i8* %584 to <4 x double>*
  store <4 x double> %580, <4 x double>* %585, align 8, !alias.scope !90, !noalias !92
  %index.next1043 = add i64 %index1042, 4
  %vec.ind.next1047 = add <4 x i64> %vec.ind1046, <i64 4, i64 4, i64 4, i64 4>
  %586 = icmp eq i64 %index.next1043, 32
  br i1 %586, label %polly.loop_exit702.1.1, label %vector.body1040, !llvm.loop !113

polly.loop_exit702.1.1:                           ; preds = %vector.body1040
  %polly.indvar_next698.1.1 = add nuw nsw i64 %polly.indvar697.1.1, 1
  %exitcond818.1.1.not = icmp eq i64 %polly.indvar_next698.1.1, 32
  br i1 %exitcond818.1.1.not, label %polly.loop_header694.2.1, label %polly.loop_header694.1.1

polly.loop_header694.2.1:                         ; preds = %polly.loop_exit702.1.1, %polly.loop_exit702.2.1
  %polly.indvar697.2.1 = phi i64 [ %polly.indvar_next698.2.1, %polly.loop_exit702.2.1 ], [ 0, %polly.loop_exit702.1.1 ]
  %587 = add nuw nsw i64 %polly.indvar697.2.1, 32
  %588 = mul nuw nsw i64 %587, 640
  %589 = trunc i64 %587 to i32
  %broadcast.splatinsert1060 = insertelement <4 x i32> poison, i32 %589, i32 0
  %broadcast.splat1061 = shufflevector <4 x i32> %broadcast.splatinsert1060, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1052

vector.body1052:                                  ; preds = %vector.body1052, %polly.loop_header694.2.1
  %index1054 = phi i64 [ 0, %polly.loop_header694.2.1 ], [ %index.next1055, %vector.body1052 ]
  %vec.ind1058 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.2.1 ], [ %vec.ind.next1059, %vector.body1052 ]
  %590 = add nuw nsw <4 x i64> %vec.ind1058, <i64 64, i64 64, i64 64, i64 64>
  %591 = trunc <4 x i64> %590 to <4 x i32>
  %592 = mul <4 x i32> %broadcast.splat1061, %591
  %593 = add <4 x i32> %592, <i32 3, i32 3, i32 3, i32 3>
  %594 = urem <4 x i32> %593, <i32 80, i32 80, i32 80, i32 80>
  %595 = sitofp <4 x i32> %594 to <4 x double>
  %596 = fmul fast <4 x double> %595, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %597 = extractelement <4 x i64> %590, i32 0
  %598 = shl i64 %597, 3
  %599 = add nuw nsw i64 %598, %588
  %600 = getelementptr i8, i8* %call, i64 %599
  %601 = bitcast i8* %600 to <4 x double>*
  store <4 x double> %596, <4 x double>* %601, align 8, !alias.scope !90, !noalias !92
  %index.next1055 = add i64 %index1054, 4
  %vec.ind.next1059 = add <4 x i64> %vec.ind1058, <i64 4, i64 4, i64 4, i64 4>
  %602 = icmp eq i64 %index.next1055, 16
  br i1 %602, label %polly.loop_exit702.2.1, label %vector.body1052, !llvm.loop !114

polly.loop_exit702.2.1:                           ; preds = %vector.body1052
  %polly.indvar_next698.2.1 = add nuw nsw i64 %polly.indvar697.2.1, 1
  %exitcond818.2.1.not = icmp eq i64 %polly.indvar_next698.2.1, 32
  br i1 %exitcond818.2.1.not, label %polly.loop_header694.2949, label %polly.loop_header694.2.1

polly.loop_header694.2949:                        ; preds = %polly.loop_exit702.2.1, %polly.loop_exit702.2960
  %polly.indvar697.2948 = phi i64 [ %polly.indvar_next698.2958, %polly.loop_exit702.2960 ], [ 0, %polly.loop_exit702.2.1 ]
  %603 = add nuw nsw i64 %polly.indvar697.2948, 64
  %604 = mul nuw nsw i64 %603, 640
  %605 = trunc i64 %603 to i32
  %broadcast.splatinsert1074 = insertelement <4 x i32> poison, i32 %605, i32 0
  %broadcast.splat1075 = shufflevector <4 x i32> %broadcast.splatinsert1074, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.body1064, %polly.loop_header694.2949
  %index1066 = phi i64 [ 0, %polly.loop_header694.2949 ], [ %index.next1067, %vector.body1064 ]
  %vec.ind1072 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header694.2949 ], [ %vec.ind.next1073, %vector.body1064 ]
  %606 = mul <4 x i32> %vec.ind1072, %broadcast.splat1075
  %607 = add <4 x i32> %606, <i32 3, i32 3, i32 3, i32 3>
  %608 = urem <4 x i32> %607, <i32 80, i32 80, i32 80, i32 80>
  %609 = sitofp <4 x i32> %608 to <4 x double>
  %610 = fmul fast <4 x double> %609, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %611 = shl i64 %index1066, 3
  %612 = add nuw nsw i64 %611, %604
  %613 = getelementptr i8, i8* %call, i64 %612
  %614 = bitcast i8* %613 to <4 x double>*
  store <4 x double> %610, <4 x double>* %614, align 8, !alias.scope !90, !noalias !92
  %index.next1067 = add i64 %index1066, 4
  %vec.ind.next1073 = add <4 x i32> %vec.ind1072, <i32 4, i32 4, i32 4, i32 4>
  %615 = icmp eq i64 %index.next1067, 32
  br i1 %615, label %polly.loop_exit702.2960, label %vector.body1064, !llvm.loop !115

polly.loop_exit702.2960:                          ; preds = %vector.body1064
  %polly.indvar_next698.2958 = add nuw nsw i64 %polly.indvar697.2948, 1
  %exitcond818.2959.not = icmp eq i64 %polly.indvar_next698.2958, 16
  br i1 %exitcond818.2959.not, label %polly.loop_header694.1.2, label %polly.loop_header694.2949

polly.loop_header694.1.2:                         ; preds = %polly.loop_exit702.2960, %polly.loop_exit702.1.2
  %polly.indvar697.1.2 = phi i64 [ %polly.indvar_next698.1.2, %polly.loop_exit702.1.2 ], [ 0, %polly.loop_exit702.2960 ]
  %616 = add nuw nsw i64 %polly.indvar697.1.2, 64
  %617 = mul nuw nsw i64 %616, 640
  %618 = trunc i64 %616 to i32
  %broadcast.splatinsert1086 = insertelement <4 x i32> poison, i32 %618, i32 0
  %broadcast.splat1087 = shufflevector <4 x i32> %broadcast.splatinsert1086, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1078

vector.body1078:                                  ; preds = %vector.body1078, %polly.loop_header694.1.2
  %index1080 = phi i64 [ 0, %polly.loop_header694.1.2 ], [ %index.next1081, %vector.body1078 ]
  %vec.ind1084 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.1.2 ], [ %vec.ind.next1085, %vector.body1078 ]
  %619 = add nuw nsw <4 x i64> %vec.ind1084, <i64 32, i64 32, i64 32, i64 32>
  %620 = trunc <4 x i64> %619 to <4 x i32>
  %621 = mul <4 x i32> %broadcast.splat1087, %620
  %622 = add <4 x i32> %621, <i32 3, i32 3, i32 3, i32 3>
  %623 = urem <4 x i32> %622, <i32 80, i32 80, i32 80, i32 80>
  %624 = sitofp <4 x i32> %623 to <4 x double>
  %625 = fmul fast <4 x double> %624, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %626 = extractelement <4 x i64> %619, i32 0
  %627 = shl i64 %626, 3
  %628 = add nuw nsw i64 %627, %617
  %629 = getelementptr i8, i8* %call, i64 %628
  %630 = bitcast i8* %629 to <4 x double>*
  store <4 x double> %625, <4 x double>* %630, align 8, !alias.scope !90, !noalias !92
  %index.next1081 = add i64 %index1080, 4
  %vec.ind.next1085 = add <4 x i64> %vec.ind1084, <i64 4, i64 4, i64 4, i64 4>
  %631 = icmp eq i64 %index.next1081, 32
  br i1 %631, label %polly.loop_exit702.1.2, label %vector.body1078, !llvm.loop !116

polly.loop_exit702.1.2:                           ; preds = %vector.body1078
  %polly.indvar_next698.1.2 = add nuw nsw i64 %polly.indvar697.1.2, 1
  %exitcond818.1.2.not = icmp eq i64 %polly.indvar_next698.1.2, 16
  br i1 %exitcond818.1.2.not, label %polly.loop_header694.2.2, label %polly.loop_header694.1.2

polly.loop_header694.2.2:                         ; preds = %polly.loop_exit702.1.2, %polly.loop_exit702.2.2
  %polly.indvar697.2.2 = phi i64 [ %polly.indvar_next698.2.2, %polly.loop_exit702.2.2 ], [ 0, %polly.loop_exit702.1.2 ]
  %632 = add nuw nsw i64 %polly.indvar697.2.2, 64
  %633 = mul nuw nsw i64 %632, 640
  %634 = trunc i64 %632 to i32
  %broadcast.splatinsert1098 = insertelement <4 x i32> poison, i32 %634, i32 0
  %broadcast.splat1099 = shufflevector <4 x i32> %broadcast.splatinsert1098, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1090

vector.body1090:                                  ; preds = %vector.body1090, %polly.loop_header694.2.2
  %index1092 = phi i64 [ 0, %polly.loop_header694.2.2 ], [ %index.next1093, %vector.body1090 ]
  %vec.ind1096 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header694.2.2 ], [ %vec.ind.next1097, %vector.body1090 ]
  %635 = add nuw nsw <4 x i64> %vec.ind1096, <i64 64, i64 64, i64 64, i64 64>
  %636 = trunc <4 x i64> %635 to <4 x i32>
  %637 = mul <4 x i32> %broadcast.splat1099, %636
  %638 = add <4 x i32> %637, <i32 3, i32 3, i32 3, i32 3>
  %639 = urem <4 x i32> %638, <i32 80, i32 80, i32 80, i32 80>
  %640 = sitofp <4 x i32> %639 to <4 x double>
  %641 = fmul fast <4 x double> %640, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %642 = extractelement <4 x i64> %635, i32 0
  %643 = shl i64 %642, 3
  %644 = add nuw nsw i64 %643, %633
  %645 = getelementptr i8, i8* %call, i64 %644
  %646 = bitcast i8* %645 to <4 x double>*
  store <4 x double> %641, <4 x double>* %646, align 8, !alias.scope !90, !noalias !92
  %index.next1093 = add i64 %index1092, 4
  %vec.ind.next1097 = add <4 x i64> %vec.ind1096, <i64 4, i64 4, i64 4, i64 4>
  %647 = icmp eq i64 %index.next1093, 16
  br i1 %647, label %polly.loop_exit702.2.2, label %vector.body1090, !llvm.loop !117

polly.loop_exit702.2.2:                           ; preds = %vector.body1090
  %polly.indvar_next698.2.2 = add nuw nsw i64 %polly.indvar697.2.2, 1
  %exitcond818.2.2.not = icmp eq i64 %polly.indvar_next698.2.2, 16
  br i1 %exitcond818.2.2.not, label %polly.loop_header721, label %polly.loop_header694.2.2
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
!21 = distinct !{!21, !12, !22, !23, !24, !25, !28}
!22 = !{!"llvm.loop.disable_nonforced"}
!23 = !{!"llvm.loop.id", !"k"}
!24 = !{!"llvm.loop.tile.size", i32 64}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 32}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !51}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 4}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !22, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !22, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!62, !65}
!71 = !{!62, !66}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !75}
!80 = !{!72, !76}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !84}
!89 = !{!81, !85}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = !{!93, !90}
!97 = distinct !{!97, !13}
!98 = !{!94, !90}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !13}
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
