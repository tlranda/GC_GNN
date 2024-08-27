; ModuleID = 'syr2k_recreations//mmp_syr2k_S_144.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_144.c"
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
  %call699 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1560 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1560, %call2
  %polly.access.call2580 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2580, %call1
  %2 = or i1 %0, %1
  %polly.access.call600 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call600, %call2
  %4 = icmp ule i8* %polly.access.call2580, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call600, %call1
  %8 = icmp ule i8* %polly.access.call1560, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header685, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep997 = getelementptr i8, i8* %call2, i64 %12
  %scevgep996 = getelementptr i8, i8* %call2, i64 %11
  %scevgep995 = getelementptr i8, i8* %call1, i64 %12
  %scevgep994 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep994, %scevgep997
  %bound1 = icmp ult i8* %scevgep996, %scevgep995
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
  br i1 %exitcond18.not.i, label %vector.ph1001, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1001:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1008 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1009 = shufflevector <4 x i64> %broadcast.splatinsert1008, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1000

vector.body1000:                                  ; preds = %vector.body1000, %vector.ph1001
  %index1002 = phi i64 [ 0, %vector.ph1001 ], [ %index.next1003, %vector.body1000 ]
  %vec.ind1006 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1001 ], [ %vec.ind.next1007, %vector.body1000 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1006, %broadcast.splat1009
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv7.i, i64 %index1002
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1003 = add i64 %index1002, 4
  %vec.ind.next1007 = add <4 x i64> %vec.ind1006, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1003, 80
  br i1 %40, label %for.inc41.i, label %vector.body1000, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1000
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1001, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit746.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header483, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1357, label %vector.ph1283

vector.ph1283:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1282

vector.body1282:                                  ; preds = %vector.body1282, %vector.ph1283
  %index1284 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1285, %vector.body1282 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i, i64 %index1284
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1285 = add i64 %index1284, 4
  %46 = icmp eq i64 %index.next1285, %n.vec
  br i1 %46, label %middle.block1280, label %vector.body1282, !llvm.loop !18

middle.block1280:                                 ; preds = %vector.body1282
  %cmp.n1287 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1287, label %for.inc6.i, label %for.body3.i46.preheader1357

for.body3.i46.preheader1357:                      ; preds = %for.body3.i46.preheader, %middle.block1280
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1280 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1357, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1357 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1280, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !39

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit519.1.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header333, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1303 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1303, label %for.body3.i60.preheader1355, label %vector.ph1304

vector.ph1304:                                    ; preds = %for.body3.i60.preheader
  %n.vec1306 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1302

vector.body1302:                                  ; preds = %vector.body1302, %vector.ph1304
  %index1307 = phi i64 [ 0, %vector.ph1304 ], [ %index.next1308, %vector.body1302 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i52, i64 %index1307
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1311 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1311, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1308 = add i64 %index1307, 4
  %57 = icmp eq i64 %index.next1308, %n.vec1306
  br i1 %57, label %middle.block1300, label %vector.body1302, !llvm.loop !50

middle.block1300:                                 ; preds = %vector.body1302
  %cmp.n1310 = icmp eq i64 %indvars.iv21.i52, %n.vec1306
  br i1 %cmp.n1310, label %for.inc6.i63, label %for.body3.i60.preheader1355

for.body3.i60.preheader1355:                      ; preds = %for.body3.i60.preheader, %middle.block1300
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1306, %middle.block1300 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1355, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1355 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !51

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1300, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !39

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit369.1.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1329 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1329, label %for.body3.i99.preheader1353, label %vector.ph1330

vector.ph1330:                                    ; preds = %for.body3.i99.preheader
  %n.vec1332 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.body1328, %vector.ph1330
  %index1333 = phi i64 [ 0, %vector.ph1330 ], [ %index.next1334, %vector.body1328 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i91, i64 %index1333
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1337 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1337, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1334 = add i64 %index1333, 4
  %68 = icmp eq i64 %index.next1334, %n.vec1332
  br i1 %68, label %middle.block1326, label %vector.body1328, !llvm.loop !52

middle.block1326:                                 ; preds = %vector.body1328
  %cmp.n1336 = icmp eq i64 %indvars.iv21.i91, %n.vec1332
  br i1 %cmp.n1336, label %for.inc6.i102, label %for.body3.i99.preheader1353

for.body3.i99.preheader1353:                      ; preds = %for.body3.i99.preheader, %middle.block1326
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1332, %middle.block1326 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1353, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1353 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !53

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1326, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !39

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit219.1.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !54
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call699, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !56

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !57

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !54
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1341 = phi i64 [ %indvar.next1342, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1341, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1343 = icmp ult i64 %88, 4
  br i1 %min.iters.check1343, label %polly.loop_header191.preheader, label %vector.ph1344

vector.ph1344:                                    ; preds = %polly.loop_header
  %n.vec1346 = and i64 %88, -4
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1340 ]
  %90 = shl nuw nsw i64 %index1347, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1351 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !58, !noalias !60
  %93 = fmul fast <4 x double> %wide.load1351, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !58, !noalias !60
  %index.next1348 = add i64 %index1347, 4
  %95 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %95, label %middle.block1338, label %vector.body1340, !llvm.loop !63

middle.block1338:                                 ; preds = %vector.body1340
  %cmp.n1350 = icmp eq i64 %88, %n.vec1346
  br i1 %cmp.n1350, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1338
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1346, %middle.block1338 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1338
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond764.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1342 = add i64 %indvar1341, 1
  br i1 %exitcond764.not, label %polly.loop_header211, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond763.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond763.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !64

polly.loop_header211:                             ; preds = %polly.loop_exit193, %polly.loop_exit219
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit219 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_exit193 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 49)
  %97 = mul nuw nsw i64 %polly.indvar214, 480
  %scevgep232 = getelementptr i8, i8* %call2, i64 %97
  %scevgep239 = getelementptr i8, i8* %call1, i64 %97
  %98 = mul nuw nsw i64 %polly.indvar214, 640
  %scevgep243 = getelementptr i8, i8* %call, i64 %98
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond762.not = icmp eq i64 %indvars.iv.next, 80
  br i1 %exitcond762.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %99 = shl i64 %polly.indvar220, 3
  %scevgep233 = getelementptr i8, i8* %scevgep232, i64 %99
  %scevgep233234 = bitcast i8* %scevgep233 to double*
  %_p_scalar_235 = load double, double* %scevgep233234, align 8, !alias.scope !62, !noalias !66
  %scevgep240 = getelementptr i8, i8* %scevgep239, i64 %99
  %scevgep240241 = bitcast i8* %scevgep240 to double*
  %_p_scalar_242 = load double, double* %scevgep240241, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond761.not = icmp eq i64 %polly.indvar_next221, 50
  br i1 %exitcond761.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %100 = mul nuw nsw i64 %polly.indvar226, 480
  %101 = add i64 %100, %99
  %scevgep229 = getelementptr i8, i8* %call1, i64 %101
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112 = fmul fast double %_p_scalar_235, %_p_scalar_231
  %scevgep236 = getelementptr i8, i8* %call2, i64 %101
  %scevgep236237 = bitcast i8* %scevgep236 to double*
  %_p_scalar_238 = load double, double* %scevgep236237, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114 = fmul fast double %_p_scalar_242, %_p_scalar_238
  %102 = shl i64 %polly.indvar226, 3
  %scevgep244 = getelementptr i8, i8* %scevgep243, i64 %102
  %scevgep244245 = bitcast i8* %scevgep244 to double*
  %_p_scalar_246 = load double, double* %scevgep244245, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_246
  store double %p_add42.i118, double* %scevgep244245, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar226, %smin
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header333:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit341
  %indvar1315 = phi i64 [ %indvar.next1316, %polly.loop_exit341 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar336 = phi i64 [ %polly.indvar_next337, %polly.loop_exit341 ], [ 1, %kernel_syr2k.exit ]
  %103 = add i64 %indvar1315, 1
  %104 = mul nuw nsw i64 %polly.indvar336, 640
  %scevgep345 = getelementptr i8, i8* %call, i64 %104
  %min.iters.check1317 = icmp ult i64 %103, 4
  br i1 %min.iters.check1317, label %polly.loop_header339.preheader, label %vector.ph1318

vector.ph1318:                                    ; preds = %polly.loop_header333
  %n.vec1320 = and i64 %103, -4
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %vector.ph1318
  %index1321 = phi i64 [ 0, %vector.ph1318 ], [ %index.next1322, %vector.body1314 ]
  %105 = shl nuw nsw i64 %index1321, 3
  %106 = getelementptr i8, i8* %scevgep345, i64 %105
  %107 = bitcast i8* %106 to <4 x double>*
  %wide.load1325 = load <4 x double>, <4 x double>* %107, align 8, !alias.scope !68, !noalias !70
  %108 = fmul fast <4 x double> %wide.load1325, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %109 = bitcast i8* %106 to <4 x double>*
  store <4 x double> %108, <4 x double>* %109, align 8, !alias.scope !68, !noalias !70
  %index.next1322 = add i64 %index1321, 4
  %110 = icmp eq i64 %index.next1322, %n.vec1320
  br i1 %110, label %middle.block1312, label %vector.body1314, !llvm.loop !73

middle.block1312:                                 ; preds = %vector.body1314
  %cmp.n1324 = icmp eq i64 %103, %n.vec1320
  br i1 %cmp.n1324, label %polly.loop_exit341, label %polly.loop_header339.preheader

polly.loop_header339.preheader:                   ; preds = %polly.loop_header333, %middle.block1312
  %polly.indvar342.ph = phi i64 [ 0, %polly.loop_header333 ], [ %n.vec1320, %middle.block1312 ]
  br label %polly.loop_header339

polly.loop_exit341:                               ; preds = %polly.loop_header339, %middle.block1312
  %polly.indvar_next337 = add nuw nsw i64 %polly.indvar336, 1
  %exitcond772.not = icmp eq i64 %polly.indvar_next337, 80
  %indvar.next1316 = add i64 %indvar1315, 1
  br i1 %exitcond772.not, label %polly.loop_header361, label %polly.loop_header333

polly.loop_header339:                             ; preds = %polly.loop_header339.preheader, %polly.loop_header339
  %polly.indvar342 = phi i64 [ %polly.indvar_next343, %polly.loop_header339 ], [ %polly.indvar342.ph, %polly.loop_header339.preheader ]
  %111 = shl nuw nsw i64 %polly.indvar342, 3
  %scevgep346 = getelementptr i8, i8* %scevgep345, i64 %111
  %scevgep346347 = bitcast i8* %scevgep346 to double*
  %_p_scalar_348 = load double, double* %scevgep346347, align 8, !alias.scope !68, !noalias !70
  %p_mul.i57 = fmul fast double %_p_scalar_348, 1.200000e+00
  store double %p_mul.i57, double* %scevgep346347, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next343 = add nuw nsw i64 %polly.indvar342, 1
  %exitcond771.not = icmp eq i64 %polly.indvar_next343, %polly.indvar336
  br i1 %exitcond771.not, label %polly.loop_exit341, label %polly.loop_header339, !llvm.loop !74

polly.loop_header361:                             ; preds = %polly.loop_exit341, %polly.loop_exit369
  %indvars.iv765 = phi i64 [ %indvars.iv.next766, %polly.loop_exit369 ], [ 0, %polly.loop_exit341 ]
  %polly.indvar364 = phi i64 [ %polly.indvar_next365, %polly.loop_exit369 ], [ 0, %polly.loop_exit341 ]
  %smin767 = call i64 @llvm.smin.i64(i64 %indvars.iv765, i64 49)
  %112 = mul nuw nsw i64 %polly.indvar364, 480
  %scevgep382 = getelementptr i8, i8* %call2, i64 %112
  %scevgep389 = getelementptr i8, i8* %call1, i64 %112
  %113 = mul nuw nsw i64 %polly.indvar364, 640
  %scevgep393 = getelementptr i8, i8* %call, i64 %113
  br label %polly.loop_header367

polly.loop_exit369:                               ; preds = %polly.loop_exit375
  %polly.indvar_next365 = add nuw nsw i64 %polly.indvar364, 1
  %indvars.iv.next766 = add nuw nsw i64 %indvars.iv765, 1
  %exitcond770.not = icmp eq i64 %indvars.iv.next766, 80
  br i1 %exitcond770.not, label %polly.loop_header361.1, label %polly.loop_header361

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.loop_header361
  %polly.indvar370 = phi i64 [ 0, %polly.loop_header361 ], [ %polly.indvar_next371, %polly.loop_exit375 ]
  %114 = shl i64 %polly.indvar370, 3
  %scevgep383 = getelementptr i8, i8* %scevgep382, i64 %114
  %scevgep383384 = bitcast i8* %scevgep383 to double*
  %_p_scalar_385 = load double, double* %scevgep383384, align 8, !alias.scope !72, !noalias !75
  %scevgep390 = getelementptr i8, i8* %scevgep389, i64 %114
  %scevgep390391 = bitcast i8* %scevgep390 to double*
  %_p_scalar_392 = load double, double* %scevgep390391, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond769.not = icmp eq i64 %polly.indvar_next371, 50
  br i1 %exitcond769.not, label %polly.loop_exit369, label %polly.loop_header367

polly.loop_header373:                             ; preds = %polly.loop_header373, %polly.loop_header367
  %polly.indvar376 = phi i64 [ 0, %polly.loop_header367 ], [ %polly.indvar_next377, %polly.loop_header373 ]
  %115 = mul nuw nsw i64 %polly.indvar376, 480
  %116 = add i64 %115, %114
  %scevgep379 = getelementptr i8, i8* %call1, i64 %116
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73 = fmul fast double %_p_scalar_385, %_p_scalar_381
  %scevgep386 = getelementptr i8, i8* %call2, i64 %116
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75 = fmul fast double %_p_scalar_392, %_p_scalar_388
  %117 = shl i64 %polly.indvar376, 3
  %scevgep394 = getelementptr i8, i8* %scevgep393, i64 %117
  %scevgep394395 = bitcast i8* %scevgep394 to double*
  %_p_scalar_396 = load double, double* %scevgep394395, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_396
  store double %p_add42.i79, double* %scevgep394395, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond768.not = icmp eq i64 %polly.indvar376, %smin767
  br i1 %exitcond768.not, label %polly.loop_exit375, label %polly.loop_header373

polly.loop_header483:                             ; preds = %init_array.exit, %polly.loop_exit491
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit491 ], [ 0, %init_array.exit ]
  %polly.indvar486 = phi i64 [ %polly.indvar_next487, %polly.loop_exit491 ], [ 1, %init_array.exit ]
  %118 = add i64 %indvar, 1
  %119 = mul nuw nsw i64 %polly.indvar486, 640
  %scevgep495 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1291 = icmp ult i64 %118, 4
  br i1 %min.iters.check1291, label %polly.loop_header489.preheader, label %vector.ph1292

vector.ph1292:                                    ; preds = %polly.loop_header483
  %n.vec1294 = and i64 %118, -4
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %vector.ph1292
  %index1295 = phi i64 [ 0, %vector.ph1292 ], [ %index.next1296, %vector.body1290 ]
  %120 = shl nuw nsw i64 %index1295, 3
  %121 = getelementptr i8, i8* %scevgep495, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1299 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !77, !noalias !79
  %123 = fmul fast <4 x double> %wide.load1299, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !77, !noalias !79
  %index.next1296 = add i64 %index1295, 4
  %125 = icmp eq i64 %index.next1296, %n.vec1294
  br i1 %125, label %middle.block1288, label %vector.body1290, !llvm.loop !82

middle.block1288:                                 ; preds = %vector.body1290
  %cmp.n1298 = icmp eq i64 %118, %n.vec1294
  br i1 %cmp.n1298, label %polly.loop_exit491, label %polly.loop_header489.preheader

polly.loop_header489.preheader:                   ; preds = %polly.loop_header483, %middle.block1288
  %polly.indvar492.ph = phi i64 [ 0, %polly.loop_header483 ], [ %n.vec1294, %middle.block1288 ]
  br label %polly.loop_header489

polly.loop_exit491:                               ; preds = %polly.loop_header489, %middle.block1288
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond780.not = icmp eq i64 %polly.indvar_next487, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond780.not, label %polly.loop_header511, label %polly.loop_header483

polly.loop_header489:                             ; preds = %polly.loop_header489.preheader, %polly.loop_header489
  %polly.indvar492 = phi i64 [ %polly.indvar_next493, %polly.loop_header489 ], [ %polly.indvar492.ph, %polly.loop_header489.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar492, 3
  %scevgep496 = getelementptr i8, i8* %scevgep495, i64 %126
  %scevgep496497 = bitcast i8* %scevgep496 to double*
  %_p_scalar_498 = load double, double* %scevgep496497, align 8, !alias.scope !77, !noalias !79
  %p_mul.i = fmul fast double %_p_scalar_498, 1.200000e+00
  store double %p_mul.i, double* %scevgep496497, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next493 = add nuw nsw i64 %polly.indvar492, 1
  %exitcond779.not = icmp eq i64 %polly.indvar_next493, %polly.indvar486
  br i1 %exitcond779.not, label %polly.loop_exit491, label %polly.loop_header489, !llvm.loop !83

polly.loop_header511:                             ; preds = %polly.loop_exit491, %polly.loop_exit519
  %indvars.iv773 = phi i64 [ %indvars.iv.next774, %polly.loop_exit519 ], [ 0, %polly.loop_exit491 ]
  %polly.indvar514 = phi i64 [ %polly.indvar_next515, %polly.loop_exit519 ], [ 0, %polly.loop_exit491 ]
  %smin775 = call i64 @llvm.smin.i64(i64 %indvars.iv773, i64 49)
  %127 = mul nuw nsw i64 %polly.indvar514, 480
  %scevgep532 = getelementptr i8, i8* %call2, i64 %127
  %scevgep539 = getelementptr i8, i8* %call1, i64 %127
  %128 = mul nuw nsw i64 %polly.indvar514, 640
  %scevgep543 = getelementptr i8, i8* %call, i64 %128
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_exit525
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %indvars.iv.next774 = add nuw nsw i64 %indvars.iv773, 1
  %exitcond778.not = icmp eq i64 %indvars.iv.next774, 80
  br i1 %exitcond778.not, label %polly.loop_header511.1, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_exit525, %polly.loop_header511
  %polly.indvar520 = phi i64 [ 0, %polly.loop_header511 ], [ %polly.indvar_next521, %polly.loop_exit525 ]
  %129 = shl i64 %polly.indvar520, 3
  %scevgep533 = getelementptr i8, i8* %scevgep532, i64 %129
  %scevgep533534 = bitcast i8* %scevgep533 to double*
  %_p_scalar_535 = load double, double* %scevgep533534, align 8, !alias.scope !81, !noalias !84
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %129
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header523

polly.loop_exit525:                               ; preds = %polly.loop_header523
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next521, 50
  br i1 %exitcond777.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header523:                             ; preds = %polly.loop_header523, %polly.loop_header517
  %polly.indvar526 = phi i64 [ 0, %polly.loop_header517 ], [ %polly.indvar_next527, %polly.loop_header523 ]
  %130 = mul nuw nsw i64 %polly.indvar526, 480
  %131 = add i64 %130, %129
  %scevgep529 = getelementptr i8, i8* %call1, i64 %131
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i = fmul fast double %_p_scalar_535, %_p_scalar_531
  %scevgep536 = getelementptr i8, i8* %call2, i64 %131
  %scevgep536537 = bitcast i8* %scevgep536 to double*
  %_p_scalar_538 = load double, double* %scevgep536537, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i = fmul fast double %_p_scalar_542, %_p_scalar_538
  %132 = shl i64 %polly.indvar526, 3
  %scevgep544 = getelementptr i8, i8* %scevgep543, i64 %132
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_546
  store double %p_add42.i, double* %scevgep544545, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next527 = add nuw nsw i64 %polly.indvar526, 1
  %exitcond776.not = icmp eq i64 %polly.indvar526, %smin775
  br i1 %exitcond776.not, label %polly.loop_exit525, label %polly.loop_header523

polly.loop_header685:                             ; preds = %entry, %polly.loop_exit693
  %polly.indvar688 = phi i64 [ %polly.indvar_next689, %polly.loop_exit693 ], [ 0, %entry ]
  %133 = mul nuw nsw i64 %polly.indvar688, 640
  %134 = trunc i64 %polly.indvar688 to i32
  %broadcast.splatinsert1022 = insertelement <4 x i32> poison, i32 %134, i32 0
  %broadcast.splat1023 = shufflevector <4 x i32> %broadcast.splatinsert1022, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1012

vector.body1012:                                  ; preds = %vector.body1012, %polly.loop_header685
  %index1014 = phi i64 [ 0, %polly.loop_header685 ], [ %index.next1015, %vector.body1012 ]
  %vec.ind1020 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685 ], [ %vec.ind.next1021, %vector.body1012 ]
  %135 = mul <4 x i32> %vec.ind1020, %broadcast.splat1023
  %136 = add <4 x i32> %135, <i32 3, i32 3, i32 3, i32 3>
  %137 = urem <4 x i32> %136, <i32 80, i32 80, i32 80, i32 80>
  %138 = sitofp <4 x i32> %137 to <4 x double>
  %139 = fmul fast <4 x double> %138, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %140 = shl i64 %index1014, 3
  %141 = add nuw nsw i64 %140, %133
  %142 = getelementptr i8, i8* %call, i64 %141
  %143 = bitcast i8* %142 to <4 x double>*
  store <4 x double> %139, <4 x double>* %143, align 8, !alias.scope !86, !noalias !88
  %index.next1015 = add i64 %index1014, 4
  %vec.ind.next1021 = add <4 x i32> %vec.ind1020, <i32 4, i32 4, i32 4, i32 4>
  %144 = icmp eq i64 %index.next1015, 32
  br i1 %144, label %polly.loop_exit693, label %vector.body1012, !llvm.loop !91

polly.loop_exit693:                               ; preds = %vector.body1012
  %polly.indvar_next689 = add nuw nsw i64 %polly.indvar688, 1
  %exitcond800.not = icmp eq i64 %polly.indvar_next689, 32
  br i1 %exitcond800.not, label %polly.loop_header685.1, label %polly.loop_header685

polly.loop_header712:                             ; preds = %polly.loop_exit693.2.2, %polly.loop_exit720
  %polly.indvar715 = phi i64 [ %polly.indvar_next716, %polly.loop_exit720 ], [ 0, %polly.loop_exit693.2.2 ]
  %145 = mul nuw nsw i64 %polly.indvar715, 480
  %146 = trunc i64 %polly.indvar715 to i32
  %broadcast.splatinsert1136 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat1137 = shufflevector <4 x i32> %broadcast.splatinsert1136, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1126

vector.body1126:                                  ; preds = %vector.body1126, %polly.loop_header712
  %index1128 = phi i64 [ 0, %polly.loop_header712 ], [ %index.next1129, %vector.body1126 ]
  %vec.ind1134 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712 ], [ %vec.ind.next1135, %vector.body1126 ]
  %147 = mul <4 x i32> %vec.ind1134, %broadcast.splat1137
  %148 = add <4 x i32> %147, <i32 2, i32 2, i32 2, i32 2>
  %149 = urem <4 x i32> %148, <i32 60, i32 60, i32 60, i32 60>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index1128, 3
  %153 = add i64 %152, %145
  %154 = getelementptr i8, i8* %call2, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !90, !noalias !92
  %index.next1129 = add i64 %index1128, 4
  %vec.ind.next1135 = add <4 x i32> %vec.ind1134, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next1129, 32
  br i1 %156, label %polly.loop_exit720, label %vector.body1126, !llvm.loop !93

polly.loop_exit720:                               ; preds = %vector.body1126
  %polly.indvar_next716 = add nuw nsw i64 %polly.indvar715, 1
  %exitcond791.not = icmp eq i64 %polly.indvar_next716, 32
  br i1 %exitcond791.not, label %polly.loop_header712.1, label %polly.loop_header712

polly.loop_header738:                             ; preds = %polly.loop_exit720.1.2, %polly.loop_exit746
  %polly.indvar741 = phi i64 [ %polly.indvar_next742, %polly.loop_exit746 ], [ 0, %polly.loop_exit720.1.2 ]
  %157 = mul nuw nsw i64 %polly.indvar741, 480
  %158 = trunc i64 %polly.indvar741 to i32
  %broadcast.splatinsert1214 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1215 = shufflevector <4 x i32> %broadcast.splatinsert1214, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1204

vector.body1204:                                  ; preds = %vector.body1204, %polly.loop_header738
  %index1206 = phi i64 [ 0, %polly.loop_header738 ], [ %index.next1207, %vector.body1204 ]
  %vec.ind1212 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738 ], [ %vec.ind.next1213, %vector.body1204 ]
  %159 = mul <4 x i32> %vec.ind1212, %broadcast.splat1215
  %160 = add <4 x i32> %159, <i32 1, i32 1, i32 1, i32 1>
  %161 = urem <4 x i32> %160, <i32 80, i32 80, i32 80, i32 80>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %164 = shl i64 %index1206, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call1, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !89, !noalias !94
  %index.next1207 = add i64 %index1206, 4
  %vec.ind.next1213 = add <4 x i32> %vec.ind1212, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1207, 32
  br i1 %168, label %polly.loop_exit746, label %vector.body1204, !llvm.loop !95

polly.loop_exit746:                               ; preds = %vector.body1204
  %polly.indvar_next742 = add nuw nsw i64 %polly.indvar741, 1
  %exitcond785.not = icmp eq i64 %polly.indvar_next742, 32
  br i1 %exitcond785.not, label %polly.loop_header738.1, label %polly.loop_header738

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 50, %polly.loop_exit219 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 49)
  %169 = mul nuw nsw i64 %polly.indvar214.1, 480
  %scevgep232.1 = getelementptr i8, i8* %call2, i64 %169
  %scevgep239.1 = getelementptr i8, i8* %call1, i64 %169
  %170 = mul nuw nsw i64 %polly.indvar214.1, 640
  %scevgep243.1 = getelementptr i8, i8* %call, i64 %170
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_exit225.1 ]
  %171 = shl i64 %polly.indvar220.1, 3
  %scevgep233.1 = getelementptr i8, i8* %scevgep232.1, i64 %171
  %scevgep233234.1 = bitcast i8* %scevgep233.1 to double*
  %_p_scalar_235.1 = load double, double* %scevgep233234.1, align 8, !alias.scope !62, !noalias !66
  %scevgep240.1 = getelementptr i8, i8* %scevgep239.1, i64 %171
  %scevgep240241.1 = bitcast i8* %scevgep240.1 to double*
  %_p_scalar_242.1 = load double, double* %scevgep240241.1, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_header217.1
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_header217.1 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %172 = add nuw nsw i64 %polly.indvar226.1, 50
  %173 = mul nuw nsw i64 %172, 480
  %174 = add i64 %173, %171
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %174
  %scevgep229230.1 = bitcast i8* %scevgep229.1 to double*
  %_p_scalar_231.1 = load double, double* %scevgep229230.1, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.1 = fmul fast double %_p_scalar_235.1, %_p_scalar_231.1
  %scevgep236.1 = getelementptr i8, i8* %call2, i64 %174
  %scevgep236237.1 = bitcast i8* %scevgep236.1 to double*
  %_p_scalar_238.1 = load double, double* %scevgep236237.1, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.1 = fmul fast double %_p_scalar_242.1, %_p_scalar_238.1
  %175 = shl i64 %172, 3
  %scevgep244.1 = getelementptr i8, i8* %scevgep243.1, i64 %175
  %scevgep244245.1 = bitcast i8* %scevgep244.1 to double*
  %_p_scalar_246.1 = load double, double* %scevgep244245.1, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_246.1
  store double %p_add42.i118.1, double* %scevgep244245.1, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar226.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond761.1.not = icmp eq i64 %polly.indvar_next221.1, 50
  br i1 %exitcond761.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond762.1.not = icmp eq i64 %indvars.iv.next.1, 30
  br i1 %exitcond762.1.not, label %polly.loop_header211.1813, label %polly.loop_header211.1

polly.loop_header211.1813:                        ; preds = %polly.loop_exit219.1, %polly.loop_exit219.1846
  %indvars.iv.1807 = phi i64 [ %indvars.iv.next.1844, %polly.loop_exit219.1846 ], [ 0, %polly.loop_exit219.1 ]
  %polly.indvar214.1808 = phi i64 [ %polly.indvar_next215.1843, %polly.loop_exit219.1846 ], [ 0, %polly.loop_exit219.1 ]
  %smin.1809 = call i64 @llvm.smin.i64(i64 %indvars.iv.1807, i64 49)
  %176 = mul nuw nsw i64 %polly.indvar214.1808, 480
  %scevgep232.1810 = getelementptr i8, i8* %call2, i64 %176
  %scevgep239.1811 = getelementptr i8, i8* %call1, i64 %176
  %177 = mul nuw nsw i64 %polly.indvar214.1808, 640
  %scevgep243.1812 = getelementptr i8, i8* %call, i64 %177
  br label %polly.loop_header217.1821

polly.loop_header217.1821:                        ; preds = %polly.loop_exit225.1842, %polly.loop_header211.1813
  %polly.indvar220.1814 = phi i64 [ 0, %polly.loop_header211.1813 ], [ %polly.indvar_next221.1840, %polly.loop_exit225.1842 ]
  %178 = shl i64 %polly.indvar220.1814, 3
  %179 = add i64 %178, 400
  %scevgep233.1815 = getelementptr i8, i8* %scevgep232.1810, i64 %179
  %scevgep233234.1816 = bitcast i8* %scevgep233.1815 to double*
  %_p_scalar_235.1817 = load double, double* %scevgep233234.1816, align 8, !alias.scope !62, !noalias !66
  %scevgep240.1818 = getelementptr i8, i8* %scevgep239.1811, i64 %179
  %scevgep240241.1819 = bitcast i8* %scevgep240.1818 to double*
  %_p_scalar_242.1820 = load double, double* %scevgep240241.1819, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.1839

polly.loop_header223.1839:                        ; preds = %polly.loop_header223.1839, %polly.loop_header217.1821
  %polly.indvar226.1822 = phi i64 [ 0, %polly.loop_header217.1821 ], [ %polly.indvar_next227.1837, %polly.loop_header223.1839 ]
  %180 = mul nuw nsw i64 %polly.indvar226.1822, 480
  %181 = add i64 %180, %179
  %scevgep229.1823 = getelementptr i8, i8* %call1, i64 %181
  %scevgep229230.1824 = bitcast i8* %scevgep229.1823 to double*
  %_p_scalar_231.1825 = load double, double* %scevgep229230.1824, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.1826 = fmul fast double %_p_scalar_235.1817, %_p_scalar_231.1825
  %scevgep236.1827 = getelementptr i8, i8* %call2, i64 %181
  %scevgep236237.1828 = bitcast i8* %scevgep236.1827 to double*
  %_p_scalar_238.1829 = load double, double* %scevgep236237.1828, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.1830 = fmul fast double %_p_scalar_242.1820, %_p_scalar_238.1829
  %182 = shl i64 %polly.indvar226.1822, 3
  %scevgep244.1831 = getelementptr i8, i8* %scevgep243.1812, i64 %182
  %scevgep244245.1832 = bitcast i8* %scevgep244.1831 to double*
  %_p_scalar_246.1833 = load double, double* %scevgep244245.1832, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.1834 = fadd fast double %p_mul37.i114.1830, %p_mul27.i112.1826
  %p_reass.mul.i117.1835 = fmul fast double %p_reass.add.i116.1834, 1.500000e+00
  %p_add42.i118.1836 = fadd fast double %p_reass.mul.i117.1835, %_p_scalar_246.1833
  store double %p_add42.i118.1836, double* %scevgep244245.1832, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.1837 = add nuw nsw i64 %polly.indvar226.1822, 1
  %exitcond.1838.not = icmp eq i64 %polly.indvar226.1822, %smin.1809
  br i1 %exitcond.1838.not, label %polly.loop_exit225.1842, label %polly.loop_header223.1839

polly.loop_exit225.1842:                          ; preds = %polly.loop_header223.1839
  %polly.indvar_next221.1840 = add nuw nsw i64 %polly.indvar220.1814, 1
  %exitcond761.1841.not = icmp eq i64 %polly.indvar_next221.1840, 10
  br i1 %exitcond761.1841.not, label %polly.loop_exit219.1846, label %polly.loop_header217.1821

polly.loop_exit219.1846:                          ; preds = %polly.loop_exit225.1842
  %polly.indvar_next215.1843 = add nuw nsw i64 %polly.indvar214.1808, 1
  %indvars.iv.next.1844 = add nuw nsw i64 %indvars.iv.1807, 1
  %exitcond762.1845.not = icmp eq i64 %indvars.iv.next.1844, 80
  br i1 %exitcond762.1845.not, label %polly.loop_header211.1.1, label %polly.loop_header211.1813

polly.loop_header211.1.1:                         ; preds = %polly.loop_exit219.1846, %polly.loop_exit219.1.1
  %indvars.iv.1.1 = phi i64 [ %indvars.iv.next.1.1, %polly.loop_exit219.1.1 ], [ 0, %polly.loop_exit219.1846 ]
  %polly.indvar214.1.1 = phi i64 [ %polly.indvar_next215.1.1, %polly.loop_exit219.1.1 ], [ 50, %polly.loop_exit219.1846 ]
  %smin.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1.1, i64 49)
  %183 = mul nuw nsw i64 %polly.indvar214.1.1, 480
  %scevgep232.1.1 = getelementptr i8, i8* %call2, i64 %183
  %scevgep239.1.1 = getelementptr i8, i8* %call1, i64 %183
  %184 = mul nuw nsw i64 %polly.indvar214.1.1, 640
  %scevgep243.1.1 = getelementptr i8, i8* %call, i64 %184
  br label %polly.loop_header217.1.1

polly.loop_header217.1.1:                         ; preds = %polly.loop_exit225.1.1, %polly.loop_header211.1.1
  %polly.indvar220.1.1 = phi i64 [ 0, %polly.loop_header211.1.1 ], [ %polly.indvar_next221.1.1, %polly.loop_exit225.1.1 ]
  %185 = shl i64 %polly.indvar220.1.1, 3
  %186 = add i64 %185, 400
  %scevgep233.1.1 = getelementptr i8, i8* %scevgep232.1.1, i64 %186
  %scevgep233234.1.1 = bitcast i8* %scevgep233.1.1 to double*
  %_p_scalar_235.1.1 = load double, double* %scevgep233234.1.1, align 8, !alias.scope !62, !noalias !66
  %scevgep240.1.1 = getelementptr i8, i8* %scevgep239.1.1, i64 %186
  %scevgep240241.1.1 = bitcast i8* %scevgep240.1.1 to double*
  %_p_scalar_242.1.1 = load double, double* %scevgep240241.1.1, align 8, !alias.scope !61, !noalias !67
  br label %polly.loop_header223.1.1

polly.loop_header223.1.1:                         ; preds = %polly.loop_header223.1.1, %polly.loop_header217.1.1
  %polly.indvar226.1.1 = phi i64 [ 0, %polly.loop_header217.1.1 ], [ %polly.indvar_next227.1.1, %polly.loop_header223.1.1 ]
  %187 = add nuw nsw i64 %polly.indvar226.1.1, 50
  %188 = mul nuw nsw i64 %187, 480
  %189 = add i64 %188, %186
  %scevgep229.1.1 = getelementptr i8, i8* %call1, i64 %189
  %scevgep229230.1.1 = bitcast i8* %scevgep229.1.1 to double*
  %_p_scalar_231.1.1 = load double, double* %scevgep229230.1.1, align 8, !alias.scope !61, !noalias !67
  %p_mul27.i112.1.1 = fmul fast double %_p_scalar_235.1.1, %_p_scalar_231.1.1
  %scevgep236.1.1 = getelementptr i8, i8* %call2, i64 %189
  %scevgep236237.1.1 = bitcast i8* %scevgep236.1.1 to double*
  %_p_scalar_238.1.1 = load double, double* %scevgep236237.1.1, align 8, !alias.scope !62, !noalias !66
  %p_mul37.i114.1.1 = fmul fast double %_p_scalar_242.1.1, %_p_scalar_238.1.1
  %190 = shl i64 %187, 3
  %scevgep244.1.1 = getelementptr i8, i8* %scevgep243.1.1, i64 %190
  %scevgep244245.1.1 = bitcast i8* %scevgep244.1.1 to double*
  %_p_scalar_246.1.1 = load double, double* %scevgep244245.1.1, align 8, !alias.scope !58, !noalias !60
  %p_reass.add.i116.1.1 = fadd fast double %p_mul37.i114.1.1, %p_mul27.i112.1.1
  %p_reass.mul.i117.1.1 = fmul fast double %p_reass.add.i116.1.1, 1.500000e+00
  %p_add42.i118.1.1 = fadd fast double %p_reass.mul.i117.1.1, %_p_scalar_246.1.1
  store double %p_add42.i118.1.1, double* %scevgep244245.1.1, align 8, !alias.scope !58, !noalias !60
  %polly.indvar_next227.1.1 = add nuw nsw i64 %polly.indvar226.1.1, 1
  %exitcond.1.1.not = icmp eq i64 %polly.indvar226.1.1, %smin.1.1
  br i1 %exitcond.1.1.not, label %polly.loop_exit225.1.1, label %polly.loop_header223.1.1

polly.loop_exit225.1.1:                           ; preds = %polly.loop_header223.1.1
  %polly.indvar_next221.1.1 = add nuw nsw i64 %polly.indvar220.1.1, 1
  %exitcond761.1.1.not = icmp eq i64 %polly.indvar_next221.1.1, 10
  br i1 %exitcond761.1.1.not, label %polly.loop_exit219.1.1, label %polly.loop_header217.1.1

polly.loop_exit219.1.1:                           ; preds = %polly.loop_exit225.1.1
  %polly.indvar_next215.1.1 = add nuw nsw i64 %polly.indvar214.1.1, 1
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1.1, 1
  %exitcond762.1.1.not = icmp eq i64 %indvars.iv.next.1.1, 30
  br i1 %exitcond762.1.1.not, label %kernel_syr2k.exit129, label %polly.loop_header211.1.1

polly.loop_header361.1:                           ; preds = %polly.loop_exit369, %polly.loop_exit369.1
  %indvars.iv765.1 = phi i64 [ %indvars.iv.next766.1, %polly.loop_exit369.1 ], [ 0, %polly.loop_exit369 ]
  %polly.indvar364.1 = phi i64 [ %polly.indvar_next365.1, %polly.loop_exit369.1 ], [ 50, %polly.loop_exit369 ]
  %smin767.1 = call i64 @llvm.smin.i64(i64 %indvars.iv765.1, i64 49)
  %191 = mul nuw nsw i64 %polly.indvar364.1, 480
  %scevgep382.1 = getelementptr i8, i8* %call2, i64 %191
  %scevgep389.1 = getelementptr i8, i8* %call1, i64 %191
  %192 = mul nuw nsw i64 %polly.indvar364.1, 640
  %scevgep393.1 = getelementptr i8, i8* %call, i64 %192
  br label %polly.loop_header367.1

polly.loop_header367.1:                           ; preds = %polly.loop_exit375.1, %polly.loop_header361.1
  %polly.indvar370.1 = phi i64 [ 0, %polly.loop_header361.1 ], [ %polly.indvar_next371.1, %polly.loop_exit375.1 ]
  %193 = shl i64 %polly.indvar370.1, 3
  %scevgep383.1 = getelementptr i8, i8* %scevgep382.1, i64 %193
  %scevgep383384.1 = bitcast i8* %scevgep383.1 to double*
  %_p_scalar_385.1 = load double, double* %scevgep383384.1, align 8, !alias.scope !72, !noalias !75
  %scevgep390.1 = getelementptr i8, i8* %scevgep389.1, i64 %193
  %scevgep390391.1 = bitcast i8* %scevgep390.1 to double*
  %_p_scalar_392.1 = load double, double* %scevgep390391.1, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header373.1

polly.loop_header373.1:                           ; preds = %polly.loop_header373.1, %polly.loop_header367.1
  %polly.indvar376.1 = phi i64 [ 0, %polly.loop_header367.1 ], [ %polly.indvar_next377.1, %polly.loop_header373.1 ]
  %194 = add nuw nsw i64 %polly.indvar376.1, 50
  %195 = mul nuw nsw i64 %194, 480
  %196 = add i64 %195, %193
  %scevgep379.1 = getelementptr i8, i8* %call1, i64 %196
  %scevgep379380.1 = bitcast i8* %scevgep379.1 to double*
  %_p_scalar_381.1 = load double, double* %scevgep379380.1, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.1 = fmul fast double %_p_scalar_385.1, %_p_scalar_381.1
  %scevgep386.1 = getelementptr i8, i8* %call2, i64 %196
  %scevgep386387.1 = bitcast i8* %scevgep386.1 to double*
  %_p_scalar_388.1 = load double, double* %scevgep386387.1, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.1 = fmul fast double %_p_scalar_392.1, %_p_scalar_388.1
  %197 = shl i64 %194, 3
  %scevgep394.1 = getelementptr i8, i8* %scevgep393.1, i64 %197
  %scevgep394395.1 = bitcast i8* %scevgep394.1 to double*
  %_p_scalar_396.1 = load double, double* %scevgep394395.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_396.1
  store double %p_add42.i79.1, double* %scevgep394395.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next377.1 = add nuw nsw i64 %polly.indvar376.1, 1
  %exitcond768.1.not = icmp eq i64 %polly.indvar376.1, %smin767.1
  br i1 %exitcond768.1.not, label %polly.loop_exit375.1, label %polly.loop_header373.1

polly.loop_exit375.1:                             ; preds = %polly.loop_header373.1
  %polly.indvar_next371.1 = add nuw nsw i64 %polly.indvar370.1, 1
  %exitcond769.1.not = icmp eq i64 %polly.indvar_next371.1, 50
  br i1 %exitcond769.1.not, label %polly.loop_exit369.1, label %polly.loop_header367.1

polly.loop_exit369.1:                             ; preds = %polly.loop_exit375.1
  %polly.indvar_next365.1 = add nuw nsw i64 %polly.indvar364.1, 1
  %indvars.iv.next766.1 = add nuw nsw i64 %indvars.iv765.1, 1
  %exitcond770.1.not = icmp eq i64 %indvars.iv.next766.1, 30
  br i1 %exitcond770.1.not, label %polly.loop_header361.1854, label %polly.loop_header361.1

polly.loop_header361.1854:                        ; preds = %polly.loop_exit369.1, %polly.loop_exit369.1887
  %indvars.iv765.1848 = phi i64 [ %indvars.iv.next766.1885, %polly.loop_exit369.1887 ], [ 0, %polly.loop_exit369.1 ]
  %polly.indvar364.1849 = phi i64 [ %polly.indvar_next365.1884, %polly.loop_exit369.1887 ], [ 0, %polly.loop_exit369.1 ]
  %smin767.1850 = call i64 @llvm.smin.i64(i64 %indvars.iv765.1848, i64 49)
  %198 = mul nuw nsw i64 %polly.indvar364.1849, 480
  %scevgep382.1851 = getelementptr i8, i8* %call2, i64 %198
  %scevgep389.1852 = getelementptr i8, i8* %call1, i64 %198
  %199 = mul nuw nsw i64 %polly.indvar364.1849, 640
  %scevgep393.1853 = getelementptr i8, i8* %call, i64 %199
  br label %polly.loop_header367.1862

polly.loop_header367.1862:                        ; preds = %polly.loop_exit375.1883, %polly.loop_header361.1854
  %polly.indvar370.1855 = phi i64 [ 0, %polly.loop_header361.1854 ], [ %polly.indvar_next371.1881, %polly.loop_exit375.1883 ]
  %200 = shl i64 %polly.indvar370.1855, 3
  %201 = add i64 %200, 400
  %scevgep383.1856 = getelementptr i8, i8* %scevgep382.1851, i64 %201
  %scevgep383384.1857 = bitcast i8* %scevgep383.1856 to double*
  %_p_scalar_385.1858 = load double, double* %scevgep383384.1857, align 8, !alias.scope !72, !noalias !75
  %scevgep390.1859 = getelementptr i8, i8* %scevgep389.1852, i64 %201
  %scevgep390391.1860 = bitcast i8* %scevgep390.1859 to double*
  %_p_scalar_392.1861 = load double, double* %scevgep390391.1860, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header373.1880

polly.loop_header373.1880:                        ; preds = %polly.loop_header373.1880, %polly.loop_header367.1862
  %polly.indvar376.1863 = phi i64 [ 0, %polly.loop_header367.1862 ], [ %polly.indvar_next377.1878, %polly.loop_header373.1880 ]
  %202 = mul nuw nsw i64 %polly.indvar376.1863, 480
  %203 = add i64 %202, %201
  %scevgep379.1864 = getelementptr i8, i8* %call1, i64 %203
  %scevgep379380.1865 = bitcast i8* %scevgep379.1864 to double*
  %_p_scalar_381.1866 = load double, double* %scevgep379380.1865, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.1867 = fmul fast double %_p_scalar_385.1858, %_p_scalar_381.1866
  %scevgep386.1868 = getelementptr i8, i8* %call2, i64 %203
  %scevgep386387.1869 = bitcast i8* %scevgep386.1868 to double*
  %_p_scalar_388.1870 = load double, double* %scevgep386387.1869, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.1871 = fmul fast double %_p_scalar_392.1861, %_p_scalar_388.1870
  %204 = shl i64 %polly.indvar376.1863, 3
  %scevgep394.1872 = getelementptr i8, i8* %scevgep393.1853, i64 %204
  %scevgep394395.1873 = bitcast i8* %scevgep394.1872 to double*
  %_p_scalar_396.1874 = load double, double* %scevgep394395.1873, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.1875 = fadd fast double %p_mul37.i75.1871, %p_mul27.i73.1867
  %p_reass.mul.i78.1876 = fmul fast double %p_reass.add.i77.1875, 1.500000e+00
  %p_add42.i79.1877 = fadd fast double %p_reass.mul.i78.1876, %_p_scalar_396.1874
  store double %p_add42.i79.1877, double* %scevgep394395.1873, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next377.1878 = add nuw nsw i64 %polly.indvar376.1863, 1
  %exitcond768.1879.not = icmp eq i64 %polly.indvar376.1863, %smin767.1850
  br i1 %exitcond768.1879.not, label %polly.loop_exit375.1883, label %polly.loop_header373.1880

polly.loop_exit375.1883:                          ; preds = %polly.loop_header373.1880
  %polly.indvar_next371.1881 = add nuw nsw i64 %polly.indvar370.1855, 1
  %exitcond769.1882.not = icmp eq i64 %polly.indvar_next371.1881, 10
  br i1 %exitcond769.1882.not, label %polly.loop_exit369.1887, label %polly.loop_header367.1862

polly.loop_exit369.1887:                          ; preds = %polly.loop_exit375.1883
  %polly.indvar_next365.1884 = add nuw nsw i64 %polly.indvar364.1849, 1
  %indvars.iv.next766.1885 = add nuw nsw i64 %indvars.iv765.1848, 1
  %exitcond770.1886.not = icmp eq i64 %indvars.iv.next766.1885, 80
  br i1 %exitcond770.1886.not, label %polly.loop_header361.1.1, label %polly.loop_header361.1854

polly.loop_header361.1.1:                         ; preds = %polly.loop_exit369.1887, %polly.loop_exit369.1.1
  %indvars.iv765.1.1 = phi i64 [ %indvars.iv.next766.1.1, %polly.loop_exit369.1.1 ], [ 0, %polly.loop_exit369.1887 ]
  %polly.indvar364.1.1 = phi i64 [ %polly.indvar_next365.1.1, %polly.loop_exit369.1.1 ], [ 50, %polly.loop_exit369.1887 ]
  %smin767.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv765.1.1, i64 49)
  %205 = mul nuw nsw i64 %polly.indvar364.1.1, 480
  %scevgep382.1.1 = getelementptr i8, i8* %call2, i64 %205
  %scevgep389.1.1 = getelementptr i8, i8* %call1, i64 %205
  %206 = mul nuw nsw i64 %polly.indvar364.1.1, 640
  %scevgep393.1.1 = getelementptr i8, i8* %call, i64 %206
  br label %polly.loop_header367.1.1

polly.loop_header367.1.1:                         ; preds = %polly.loop_exit375.1.1, %polly.loop_header361.1.1
  %polly.indvar370.1.1 = phi i64 [ 0, %polly.loop_header361.1.1 ], [ %polly.indvar_next371.1.1, %polly.loop_exit375.1.1 ]
  %207 = shl i64 %polly.indvar370.1.1, 3
  %208 = add i64 %207, 400
  %scevgep383.1.1 = getelementptr i8, i8* %scevgep382.1.1, i64 %208
  %scevgep383384.1.1 = bitcast i8* %scevgep383.1.1 to double*
  %_p_scalar_385.1.1 = load double, double* %scevgep383384.1.1, align 8, !alias.scope !72, !noalias !75
  %scevgep390.1.1 = getelementptr i8, i8* %scevgep389.1.1, i64 %208
  %scevgep390391.1.1 = bitcast i8* %scevgep390.1.1 to double*
  %_p_scalar_392.1.1 = load double, double* %scevgep390391.1.1, align 8, !alias.scope !71, !noalias !76
  br label %polly.loop_header373.1.1

polly.loop_header373.1.1:                         ; preds = %polly.loop_header373.1.1, %polly.loop_header367.1.1
  %polly.indvar376.1.1 = phi i64 [ 0, %polly.loop_header367.1.1 ], [ %polly.indvar_next377.1.1, %polly.loop_header373.1.1 ]
  %209 = add nuw nsw i64 %polly.indvar376.1.1, 50
  %210 = mul nuw nsw i64 %209, 480
  %211 = add i64 %210, %208
  %scevgep379.1.1 = getelementptr i8, i8* %call1, i64 %211
  %scevgep379380.1.1 = bitcast i8* %scevgep379.1.1 to double*
  %_p_scalar_381.1.1 = load double, double* %scevgep379380.1.1, align 8, !alias.scope !71, !noalias !76
  %p_mul27.i73.1.1 = fmul fast double %_p_scalar_385.1.1, %_p_scalar_381.1.1
  %scevgep386.1.1 = getelementptr i8, i8* %call2, i64 %211
  %scevgep386387.1.1 = bitcast i8* %scevgep386.1.1 to double*
  %_p_scalar_388.1.1 = load double, double* %scevgep386387.1.1, align 8, !alias.scope !72, !noalias !75
  %p_mul37.i75.1.1 = fmul fast double %_p_scalar_392.1.1, %_p_scalar_388.1.1
  %212 = shl i64 %209, 3
  %scevgep394.1.1 = getelementptr i8, i8* %scevgep393.1.1, i64 %212
  %scevgep394395.1.1 = bitcast i8* %scevgep394.1.1 to double*
  %_p_scalar_396.1.1 = load double, double* %scevgep394395.1.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i77.1.1 = fadd fast double %p_mul37.i75.1.1, %p_mul27.i73.1.1
  %p_reass.mul.i78.1.1 = fmul fast double %p_reass.add.i77.1.1, 1.500000e+00
  %p_add42.i79.1.1 = fadd fast double %p_reass.mul.i78.1.1, %_p_scalar_396.1.1
  store double %p_add42.i79.1.1, double* %scevgep394395.1.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next377.1.1 = add nuw nsw i64 %polly.indvar376.1.1, 1
  %exitcond768.1.1.not = icmp eq i64 %polly.indvar376.1.1, %smin767.1.1
  br i1 %exitcond768.1.1.not, label %polly.loop_exit375.1.1, label %polly.loop_header373.1.1

polly.loop_exit375.1.1:                           ; preds = %polly.loop_header373.1.1
  %polly.indvar_next371.1.1 = add nuw nsw i64 %polly.indvar370.1.1, 1
  %exitcond769.1.1.not = icmp eq i64 %polly.indvar_next371.1.1, 10
  br i1 %exitcond769.1.1.not, label %polly.loop_exit369.1.1, label %polly.loop_header367.1.1

polly.loop_exit369.1.1:                           ; preds = %polly.loop_exit375.1.1
  %polly.indvar_next365.1.1 = add nuw nsw i64 %polly.indvar364.1.1, 1
  %indvars.iv.next766.1.1 = add nuw nsw i64 %indvars.iv765.1.1, 1
  %exitcond770.1.1.not = icmp eq i64 %indvars.iv.next766.1.1, 30
  br i1 %exitcond770.1.1.not, label %kernel_syr2k.exit90, label %polly.loop_header361.1.1

polly.loop_header511.1:                           ; preds = %polly.loop_exit519, %polly.loop_exit519.1
  %indvars.iv773.1 = phi i64 [ %indvars.iv.next774.1, %polly.loop_exit519.1 ], [ 0, %polly.loop_exit519 ]
  %polly.indvar514.1 = phi i64 [ %polly.indvar_next515.1, %polly.loop_exit519.1 ], [ 50, %polly.loop_exit519 ]
  %smin775.1 = call i64 @llvm.smin.i64(i64 %indvars.iv773.1, i64 49)
  %213 = mul nuw nsw i64 %polly.indvar514.1, 480
  %scevgep532.1 = getelementptr i8, i8* %call2, i64 %213
  %scevgep539.1 = getelementptr i8, i8* %call1, i64 %213
  %214 = mul nuw nsw i64 %polly.indvar514.1, 640
  %scevgep543.1 = getelementptr i8, i8* %call, i64 %214
  br label %polly.loop_header517.1

polly.loop_header517.1:                           ; preds = %polly.loop_exit525.1, %polly.loop_header511.1
  %polly.indvar520.1 = phi i64 [ 0, %polly.loop_header511.1 ], [ %polly.indvar_next521.1, %polly.loop_exit525.1 ]
  %215 = shl i64 %polly.indvar520.1, 3
  %scevgep533.1 = getelementptr i8, i8* %scevgep532.1, i64 %215
  %scevgep533534.1 = bitcast i8* %scevgep533.1 to double*
  %_p_scalar_535.1 = load double, double* %scevgep533534.1, align 8, !alias.scope !81, !noalias !84
  %scevgep540.1 = getelementptr i8, i8* %scevgep539.1, i64 %215
  %scevgep540541.1 = bitcast i8* %scevgep540.1 to double*
  %_p_scalar_542.1 = load double, double* %scevgep540541.1, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header523.1

polly.loop_header523.1:                           ; preds = %polly.loop_header523.1, %polly.loop_header517.1
  %polly.indvar526.1 = phi i64 [ 0, %polly.loop_header517.1 ], [ %polly.indvar_next527.1, %polly.loop_header523.1 ]
  %216 = add nuw nsw i64 %polly.indvar526.1, 50
  %217 = mul nuw nsw i64 %216, 480
  %218 = add i64 %217, %215
  %scevgep529.1 = getelementptr i8, i8* %call1, i64 %218
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.1 = fmul fast double %_p_scalar_535.1, %_p_scalar_531.1
  %scevgep536.1 = getelementptr i8, i8* %call2, i64 %218
  %scevgep536537.1 = bitcast i8* %scevgep536.1 to double*
  %_p_scalar_538.1 = load double, double* %scevgep536537.1, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.1 = fmul fast double %_p_scalar_542.1, %_p_scalar_538.1
  %219 = shl i64 %216, 3
  %scevgep544.1 = getelementptr i8, i8* %scevgep543.1, i64 %219
  %scevgep544545.1 = bitcast i8* %scevgep544.1 to double*
  %_p_scalar_546.1 = load double, double* %scevgep544545.1, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_546.1
  store double %p_add42.i.1, double* %scevgep544545.1, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next527.1 = add nuw nsw i64 %polly.indvar526.1, 1
  %exitcond776.1.not = icmp eq i64 %polly.indvar526.1, %smin775.1
  br i1 %exitcond776.1.not, label %polly.loop_exit525.1, label %polly.loop_header523.1

polly.loop_exit525.1:                             ; preds = %polly.loop_header523.1
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %exitcond777.1.not = icmp eq i64 %polly.indvar_next521.1, 50
  br i1 %exitcond777.1.not, label %polly.loop_exit519.1, label %polly.loop_header517.1

polly.loop_exit519.1:                             ; preds = %polly.loop_exit525.1
  %polly.indvar_next515.1 = add nuw nsw i64 %polly.indvar514.1, 1
  %indvars.iv.next774.1 = add nuw nsw i64 %indvars.iv773.1, 1
  %exitcond778.1.not = icmp eq i64 %indvars.iv.next774.1, 30
  br i1 %exitcond778.1.not, label %polly.loop_header511.1895, label %polly.loop_header511.1

polly.loop_header511.1895:                        ; preds = %polly.loop_exit519.1, %polly.loop_exit519.1928
  %indvars.iv773.1889 = phi i64 [ %indvars.iv.next774.1926, %polly.loop_exit519.1928 ], [ 0, %polly.loop_exit519.1 ]
  %polly.indvar514.1890 = phi i64 [ %polly.indvar_next515.1925, %polly.loop_exit519.1928 ], [ 0, %polly.loop_exit519.1 ]
  %smin775.1891 = call i64 @llvm.smin.i64(i64 %indvars.iv773.1889, i64 49)
  %220 = mul nuw nsw i64 %polly.indvar514.1890, 480
  %scevgep532.1892 = getelementptr i8, i8* %call2, i64 %220
  %scevgep539.1893 = getelementptr i8, i8* %call1, i64 %220
  %221 = mul nuw nsw i64 %polly.indvar514.1890, 640
  %scevgep543.1894 = getelementptr i8, i8* %call, i64 %221
  br label %polly.loop_header517.1903

polly.loop_header517.1903:                        ; preds = %polly.loop_exit525.1924, %polly.loop_header511.1895
  %polly.indvar520.1896 = phi i64 [ 0, %polly.loop_header511.1895 ], [ %polly.indvar_next521.1922, %polly.loop_exit525.1924 ]
  %222 = shl i64 %polly.indvar520.1896, 3
  %223 = add i64 %222, 400
  %scevgep533.1897 = getelementptr i8, i8* %scevgep532.1892, i64 %223
  %scevgep533534.1898 = bitcast i8* %scevgep533.1897 to double*
  %_p_scalar_535.1899 = load double, double* %scevgep533534.1898, align 8, !alias.scope !81, !noalias !84
  %scevgep540.1900 = getelementptr i8, i8* %scevgep539.1893, i64 %223
  %scevgep540541.1901 = bitcast i8* %scevgep540.1900 to double*
  %_p_scalar_542.1902 = load double, double* %scevgep540541.1901, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header523.1921

polly.loop_header523.1921:                        ; preds = %polly.loop_header523.1921, %polly.loop_header517.1903
  %polly.indvar526.1904 = phi i64 [ 0, %polly.loop_header517.1903 ], [ %polly.indvar_next527.1919, %polly.loop_header523.1921 ]
  %224 = mul nuw nsw i64 %polly.indvar526.1904, 480
  %225 = add i64 %224, %223
  %scevgep529.1905 = getelementptr i8, i8* %call1, i64 %225
  %scevgep529530.1906 = bitcast i8* %scevgep529.1905 to double*
  %_p_scalar_531.1907 = load double, double* %scevgep529530.1906, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.1908 = fmul fast double %_p_scalar_535.1899, %_p_scalar_531.1907
  %scevgep536.1909 = getelementptr i8, i8* %call2, i64 %225
  %scevgep536537.1910 = bitcast i8* %scevgep536.1909 to double*
  %_p_scalar_538.1911 = load double, double* %scevgep536537.1910, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.1912 = fmul fast double %_p_scalar_542.1902, %_p_scalar_538.1911
  %226 = shl i64 %polly.indvar526.1904, 3
  %scevgep544.1913 = getelementptr i8, i8* %scevgep543.1894, i64 %226
  %scevgep544545.1914 = bitcast i8* %scevgep544.1913 to double*
  %_p_scalar_546.1915 = load double, double* %scevgep544545.1914, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.1916 = fadd fast double %p_mul37.i.1912, %p_mul27.i.1908
  %p_reass.mul.i.1917 = fmul fast double %p_reass.add.i.1916, 1.500000e+00
  %p_add42.i.1918 = fadd fast double %p_reass.mul.i.1917, %_p_scalar_546.1915
  store double %p_add42.i.1918, double* %scevgep544545.1914, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next527.1919 = add nuw nsw i64 %polly.indvar526.1904, 1
  %exitcond776.1920.not = icmp eq i64 %polly.indvar526.1904, %smin775.1891
  br i1 %exitcond776.1920.not, label %polly.loop_exit525.1924, label %polly.loop_header523.1921

polly.loop_exit525.1924:                          ; preds = %polly.loop_header523.1921
  %polly.indvar_next521.1922 = add nuw nsw i64 %polly.indvar520.1896, 1
  %exitcond777.1923.not = icmp eq i64 %polly.indvar_next521.1922, 10
  br i1 %exitcond777.1923.not, label %polly.loop_exit519.1928, label %polly.loop_header517.1903

polly.loop_exit519.1928:                          ; preds = %polly.loop_exit525.1924
  %polly.indvar_next515.1925 = add nuw nsw i64 %polly.indvar514.1890, 1
  %indvars.iv.next774.1926 = add nuw nsw i64 %indvars.iv773.1889, 1
  %exitcond778.1927.not = icmp eq i64 %indvars.iv.next774.1926, 80
  br i1 %exitcond778.1927.not, label %polly.loop_header511.1.1, label %polly.loop_header511.1895

polly.loop_header511.1.1:                         ; preds = %polly.loop_exit519.1928, %polly.loop_exit519.1.1
  %indvars.iv773.1.1 = phi i64 [ %indvars.iv.next774.1.1, %polly.loop_exit519.1.1 ], [ 0, %polly.loop_exit519.1928 ]
  %polly.indvar514.1.1 = phi i64 [ %polly.indvar_next515.1.1, %polly.loop_exit519.1.1 ], [ 50, %polly.loop_exit519.1928 ]
  %smin775.1.1 = call i64 @llvm.smin.i64(i64 %indvars.iv773.1.1, i64 49)
  %227 = mul nuw nsw i64 %polly.indvar514.1.1, 480
  %scevgep532.1.1 = getelementptr i8, i8* %call2, i64 %227
  %scevgep539.1.1 = getelementptr i8, i8* %call1, i64 %227
  %228 = mul nuw nsw i64 %polly.indvar514.1.1, 640
  %scevgep543.1.1 = getelementptr i8, i8* %call, i64 %228
  br label %polly.loop_header517.1.1

polly.loop_header517.1.1:                         ; preds = %polly.loop_exit525.1.1, %polly.loop_header511.1.1
  %polly.indvar520.1.1 = phi i64 [ 0, %polly.loop_header511.1.1 ], [ %polly.indvar_next521.1.1, %polly.loop_exit525.1.1 ]
  %229 = shl i64 %polly.indvar520.1.1, 3
  %230 = add i64 %229, 400
  %scevgep533.1.1 = getelementptr i8, i8* %scevgep532.1.1, i64 %230
  %scevgep533534.1.1 = bitcast i8* %scevgep533.1.1 to double*
  %_p_scalar_535.1.1 = load double, double* %scevgep533534.1.1, align 8, !alias.scope !81, !noalias !84
  %scevgep540.1.1 = getelementptr i8, i8* %scevgep539.1.1, i64 %230
  %scevgep540541.1.1 = bitcast i8* %scevgep540.1.1 to double*
  %_p_scalar_542.1.1 = load double, double* %scevgep540541.1.1, align 8, !alias.scope !80, !noalias !85
  br label %polly.loop_header523.1.1

polly.loop_header523.1.1:                         ; preds = %polly.loop_header523.1.1, %polly.loop_header517.1.1
  %polly.indvar526.1.1 = phi i64 [ 0, %polly.loop_header517.1.1 ], [ %polly.indvar_next527.1.1, %polly.loop_header523.1.1 ]
  %231 = add nuw nsw i64 %polly.indvar526.1.1, 50
  %232 = mul nuw nsw i64 %231, 480
  %233 = add i64 %232, %230
  %scevgep529.1.1 = getelementptr i8, i8* %call1, i64 %233
  %scevgep529530.1.1 = bitcast i8* %scevgep529.1.1 to double*
  %_p_scalar_531.1.1 = load double, double* %scevgep529530.1.1, align 8, !alias.scope !80, !noalias !85
  %p_mul27.i.1.1 = fmul fast double %_p_scalar_535.1.1, %_p_scalar_531.1.1
  %scevgep536.1.1 = getelementptr i8, i8* %call2, i64 %233
  %scevgep536537.1.1 = bitcast i8* %scevgep536.1.1 to double*
  %_p_scalar_538.1.1 = load double, double* %scevgep536537.1.1, align 8, !alias.scope !81, !noalias !84
  %p_mul37.i.1.1 = fmul fast double %_p_scalar_542.1.1, %_p_scalar_538.1.1
  %234 = shl i64 %231, 3
  %scevgep544.1.1 = getelementptr i8, i8* %scevgep543.1.1, i64 %234
  %scevgep544545.1.1 = bitcast i8* %scevgep544.1.1 to double*
  %_p_scalar_546.1.1 = load double, double* %scevgep544545.1.1, align 8, !alias.scope !77, !noalias !79
  %p_reass.add.i.1.1 = fadd fast double %p_mul37.i.1.1, %p_mul27.i.1.1
  %p_reass.mul.i.1.1 = fmul fast double %p_reass.add.i.1.1, 1.500000e+00
  %p_add42.i.1.1 = fadd fast double %p_reass.mul.i.1.1, %_p_scalar_546.1.1
  store double %p_add42.i.1.1, double* %scevgep544545.1.1, align 8, !alias.scope !77, !noalias !79
  %polly.indvar_next527.1.1 = add nuw nsw i64 %polly.indvar526.1.1, 1
  %exitcond776.1.1.not = icmp eq i64 %polly.indvar526.1.1, %smin775.1.1
  br i1 %exitcond776.1.1.not, label %polly.loop_exit525.1.1, label %polly.loop_header523.1.1

polly.loop_exit525.1.1:                           ; preds = %polly.loop_header523.1.1
  %polly.indvar_next521.1.1 = add nuw nsw i64 %polly.indvar520.1.1, 1
  %exitcond777.1.1.not = icmp eq i64 %polly.indvar_next521.1.1, 10
  br i1 %exitcond777.1.1.not, label %polly.loop_exit519.1.1, label %polly.loop_header517.1.1

polly.loop_exit519.1.1:                           ; preds = %polly.loop_exit525.1.1
  %polly.indvar_next515.1.1 = add nuw nsw i64 %polly.indvar514.1.1, 1
  %indvars.iv.next774.1.1 = add nuw nsw i64 %indvars.iv773.1.1, 1
  %exitcond778.1.1.not = icmp eq i64 %indvars.iv.next774.1.1, 30
  br i1 %exitcond778.1.1.not, label %kernel_syr2k.exit, label %polly.loop_header511.1.1

polly.loop_header738.1:                           ; preds = %polly.loop_exit746, %polly.loop_exit746.1
  %polly.indvar741.1 = phi i64 [ %polly.indvar_next742.1, %polly.loop_exit746.1 ], [ 0, %polly.loop_exit746 ]
  %235 = mul nuw nsw i64 %polly.indvar741.1, 480
  %236 = trunc i64 %polly.indvar741.1 to i32
  %broadcast.splatinsert1226 = insertelement <4 x i32> poison, i32 %236, i32 0
  %broadcast.splat1227 = shufflevector <4 x i32> %broadcast.splatinsert1226, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1218

vector.body1218:                                  ; preds = %vector.body1218, %polly.loop_header738.1
  %index1220 = phi i64 [ 0, %polly.loop_header738.1 ], [ %index.next1221, %vector.body1218 ]
  %vec.ind1224 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1 ], [ %vec.ind.next1225, %vector.body1218 ]
  %237 = add nuw nsw <4 x i64> %vec.ind1224, <i64 32, i64 32, i64 32, i64 32>
  %238 = trunc <4 x i64> %237 to <4 x i32>
  %239 = mul <4 x i32> %broadcast.splat1227, %238
  %240 = add <4 x i32> %239, <i32 1, i32 1, i32 1, i32 1>
  %241 = urem <4 x i32> %240, <i32 80, i32 80, i32 80, i32 80>
  %242 = sitofp <4 x i32> %241 to <4 x double>
  %243 = fmul fast <4 x double> %242, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %244 = extractelement <4 x i64> %237, i32 0
  %245 = shl i64 %244, 3
  %246 = add i64 %245, %235
  %247 = getelementptr i8, i8* %call1, i64 %246
  %248 = bitcast i8* %247 to <4 x double>*
  store <4 x double> %243, <4 x double>* %248, align 8, !alias.scope !89, !noalias !94
  %index.next1221 = add i64 %index1220, 4
  %vec.ind.next1225 = add <4 x i64> %vec.ind1224, <i64 4, i64 4, i64 4, i64 4>
  %249 = icmp eq i64 %index.next1221, 28
  br i1 %249, label %polly.loop_exit746.1, label %vector.body1218, !llvm.loop !96

polly.loop_exit746.1:                             ; preds = %vector.body1218
  %polly.indvar_next742.1 = add nuw nsw i64 %polly.indvar741.1, 1
  %exitcond785.1.not = icmp eq i64 %polly.indvar_next742.1, 32
  br i1 %exitcond785.1.not, label %polly.loop_header738.1931, label %polly.loop_header738.1

polly.loop_header738.1931:                        ; preds = %polly.loop_exit746.1, %polly.loop_exit746.1942
  %polly.indvar741.1930 = phi i64 [ %polly.indvar_next742.1940, %polly.loop_exit746.1942 ], [ 0, %polly.loop_exit746.1 ]
  %250 = add nuw nsw i64 %polly.indvar741.1930, 32
  %251 = mul nuw nsw i64 %250, 480
  %252 = trunc i64 %250 to i32
  %broadcast.splatinsert1240 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat1241 = shufflevector <4 x i32> %broadcast.splatinsert1240, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %polly.loop_header738.1931
  %index1232 = phi i64 [ 0, %polly.loop_header738.1931 ], [ %index.next1233, %vector.body1230 ]
  %vec.ind1238 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.1931 ], [ %vec.ind.next1239, %vector.body1230 ]
  %253 = mul <4 x i32> %vec.ind1238, %broadcast.splat1241
  %254 = add <4 x i32> %253, <i32 1, i32 1, i32 1, i32 1>
  %255 = urem <4 x i32> %254, <i32 80, i32 80, i32 80, i32 80>
  %256 = sitofp <4 x i32> %255 to <4 x double>
  %257 = fmul fast <4 x double> %256, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %258 = shl i64 %index1232, 3
  %259 = add i64 %258, %251
  %260 = getelementptr i8, i8* %call1, i64 %259
  %261 = bitcast i8* %260 to <4 x double>*
  store <4 x double> %257, <4 x double>* %261, align 8, !alias.scope !89, !noalias !94
  %index.next1233 = add i64 %index1232, 4
  %vec.ind.next1239 = add <4 x i32> %vec.ind1238, <i32 4, i32 4, i32 4, i32 4>
  %262 = icmp eq i64 %index.next1233, 32
  br i1 %262, label %polly.loop_exit746.1942, label %vector.body1230, !llvm.loop !97

polly.loop_exit746.1942:                          ; preds = %vector.body1230
  %polly.indvar_next742.1940 = add nuw nsw i64 %polly.indvar741.1930, 1
  %exitcond785.1941.not = icmp eq i64 %polly.indvar_next742.1940, 32
  br i1 %exitcond785.1941.not, label %polly.loop_header738.1.1, label %polly.loop_header738.1931

polly.loop_header738.1.1:                         ; preds = %polly.loop_exit746.1942, %polly.loop_exit746.1.1
  %polly.indvar741.1.1 = phi i64 [ %polly.indvar_next742.1.1, %polly.loop_exit746.1.1 ], [ 0, %polly.loop_exit746.1942 ]
  %263 = add nuw nsw i64 %polly.indvar741.1.1, 32
  %264 = mul nuw nsw i64 %263, 480
  %265 = trunc i64 %263 to i32
  %broadcast.splatinsert1252 = insertelement <4 x i32> poison, i32 %265, i32 0
  %broadcast.splat1253 = shufflevector <4 x i32> %broadcast.splatinsert1252, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1244

vector.body1244:                                  ; preds = %vector.body1244, %polly.loop_header738.1.1
  %index1246 = phi i64 [ 0, %polly.loop_header738.1.1 ], [ %index.next1247, %vector.body1244 ]
  %vec.ind1250 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.1 ], [ %vec.ind.next1251, %vector.body1244 ]
  %266 = add nuw nsw <4 x i64> %vec.ind1250, <i64 32, i64 32, i64 32, i64 32>
  %267 = trunc <4 x i64> %266 to <4 x i32>
  %268 = mul <4 x i32> %broadcast.splat1253, %267
  %269 = add <4 x i32> %268, <i32 1, i32 1, i32 1, i32 1>
  %270 = urem <4 x i32> %269, <i32 80, i32 80, i32 80, i32 80>
  %271 = sitofp <4 x i32> %270 to <4 x double>
  %272 = fmul fast <4 x double> %271, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %273 = extractelement <4 x i64> %266, i32 0
  %274 = shl i64 %273, 3
  %275 = add i64 %274, %264
  %276 = getelementptr i8, i8* %call1, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %272, <4 x double>* %277, align 8, !alias.scope !89, !noalias !94
  %index.next1247 = add i64 %index1246, 4
  %vec.ind.next1251 = add <4 x i64> %vec.ind1250, <i64 4, i64 4, i64 4, i64 4>
  %278 = icmp eq i64 %index.next1247, 28
  br i1 %278, label %polly.loop_exit746.1.1, label %vector.body1244, !llvm.loop !98

polly.loop_exit746.1.1:                           ; preds = %vector.body1244
  %polly.indvar_next742.1.1 = add nuw nsw i64 %polly.indvar741.1.1, 1
  %exitcond785.1.1.not = icmp eq i64 %polly.indvar_next742.1.1, 32
  br i1 %exitcond785.1.1.not, label %polly.loop_header738.2, label %polly.loop_header738.1.1

polly.loop_header738.2:                           ; preds = %polly.loop_exit746.1.1, %polly.loop_exit746.2
  %polly.indvar741.2 = phi i64 [ %polly.indvar_next742.2, %polly.loop_exit746.2 ], [ 0, %polly.loop_exit746.1.1 ]
  %279 = add nuw nsw i64 %polly.indvar741.2, 64
  %280 = mul nuw nsw i64 %279, 480
  %281 = trunc i64 %279 to i32
  %broadcast.splatinsert1266 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1267 = shufflevector <4 x i32> %broadcast.splatinsert1266, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %polly.loop_header738.2
  %index1258 = phi i64 [ 0, %polly.loop_header738.2 ], [ %index.next1259, %vector.body1256 ]
  %vec.ind1264 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header738.2 ], [ %vec.ind.next1265, %vector.body1256 ]
  %282 = mul <4 x i32> %vec.ind1264, %broadcast.splat1267
  %283 = add <4 x i32> %282, <i32 1, i32 1, i32 1, i32 1>
  %284 = urem <4 x i32> %283, <i32 80, i32 80, i32 80, i32 80>
  %285 = sitofp <4 x i32> %284 to <4 x double>
  %286 = fmul fast <4 x double> %285, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %287 = shl i64 %index1258, 3
  %288 = add i64 %287, %280
  %289 = getelementptr i8, i8* %call1, i64 %288
  %290 = bitcast i8* %289 to <4 x double>*
  store <4 x double> %286, <4 x double>* %290, align 8, !alias.scope !89, !noalias !94
  %index.next1259 = add i64 %index1258, 4
  %vec.ind.next1265 = add <4 x i32> %vec.ind1264, <i32 4, i32 4, i32 4, i32 4>
  %291 = icmp eq i64 %index.next1259, 32
  br i1 %291, label %polly.loop_exit746.2, label %vector.body1256, !llvm.loop !99

polly.loop_exit746.2:                             ; preds = %vector.body1256
  %polly.indvar_next742.2 = add nuw nsw i64 %polly.indvar741.2, 1
  %exitcond785.2.not = icmp eq i64 %polly.indvar_next742.2, 16
  br i1 %exitcond785.2.not, label %polly.loop_header738.1.2, label %polly.loop_header738.2

polly.loop_header738.1.2:                         ; preds = %polly.loop_exit746.2, %polly.loop_exit746.1.2
  %polly.indvar741.1.2 = phi i64 [ %polly.indvar_next742.1.2, %polly.loop_exit746.1.2 ], [ 0, %polly.loop_exit746.2 ]
  %292 = add nuw nsw i64 %polly.indvar741.1.2, 64
  %293 = mul nuw nsw i64 %292, 480
  %294 = trunc i64 %292 to i32
  %broadcast.splatinsert1278 = insertelement <4 x i32> poison, i32 %294, i32 0
  %broadcast.splat1279 = shufflevector <4 x i32> %broadcast.splatinsert1278, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1270

vector.body1270:                                  ; preds = %vector.body1270, %polly.loop_header738.1.2
  %index1272 = phi i64 [ 0, %polly.loop_header738.1.2 ], [ %index.next1273, %vector.body1270 ]
  %vec.ind1276 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header738.1.2 ], [ %vec.ind.next1277, %vector.body1270 ]
  %295 = add nuw nsw <4 x i64> %vec.ind1276, <i64 32, i64 32, i64 32, i64 32>
  %296 = trunc <4 x i64> %295 to <4 x i32>
  %297 = mul <4 x i32> %broadcast.splat1279, %296
  %298 = add <4 x i32> %297, <i32 1, i32 1, i32 1, i32 1>
  %299 = urem <4 x i32> %298, <i32 80, i32 80, i32 80, i32 80>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %302 = extractelement <4 x i64> %295, i32 0
  %303 = shl i64 %302, 3
  %304 = add i64 %303, %293
  %305 = getelementptr i8, i8* %call1, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %301, <4 x double>* %306, align 8, !alias.scope !89, !noalias !94
  %index.next1273 = add i64 %index1272, 4
  %vec.ind.next1277 = add <4 x i64> %vec.ind1276, <i64 4, i64 4, i64 4, i64 4>
  %307 = icmp eq i64 %index.next1273, 28
  br i1 %307, label %polly.loop_exit746.1.2, label %vector.body1270, !llvm.loop !100

polly.loop_exit746.1.2:                           ; preds = %vector.body1270
  %polly.indvar_next742.1.2 = add nuw nsw i64 %polly.indvar741.1.2, 1
  %exitcond785.1.2.not = icmp eq i64 %polly.indvar_next742.1.2, 16
  br i1 %exitcond785.1.2.not, label %init_array.exit, label %polly.loop_header738.1.2

polly.loop_header712.1:                           ; preds = %polly.loop_exit720, %polly.loop_exit720.1
  %polly.indvar715.1 = phi i64 [ %polly.indvar_next716.1, %polly.loop_exit720.1 ], [ 0, %polly.loop_exit720 ]
  %308 = mul nuw nsw i64 %polly.indvar715.1, 480
  %309 = trunc i64 %polly.indvar715.1 to i32
  %broadcast.splatinsert1148 = insertelement <4 x i32> poison, i32 %309, i32 0
  %broadcast.splat1149 = shufflevector <4 x i32> %broadcast.splatinsert1148, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1140

vector.body1140:                                  ; preds = %vector.body1140, %polly.loop_header712.1
  %index1142 = phi i64 [ 0, %polly.loop_header712.1 ], [ %index.next1143, %vector.body1140 ]
  %vec.ind1146 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1 ], [ %vec.ind.next1147, %vector.body1140 ]
  %310 = add nuw nsw <4 x i64> %vec.ind1146, <i64 32, i64 32, i64 32, i64 32>
  %311 = trunc <4 x i64> %310 to <4 x i32>
  %312 = mul <4 x i32> %broadcast.splat1149, %311
  %313 = add <4 x i32> %312, <i32 2, i32 2, i32 2, i32 2>
  %314 = urem <4 x i32> %313, <i32 60, i32 60, i32 60, i32 60>
  %315 = sitofp <4 x i32> %314 to <4 x double>
  %316 = fmul fast <4 x double> %315, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %317 = extractelement <4 x i64> %310, i32 0
  %318 = shl i64 %317, 3
  %319 = add i64 %318, %308
  %320 = getelementptr i8, i8* %call2, i64 %319
  %321 = bitcast i8* %320 to <4 x double>*
  store <4 x double> %316, <4 x double>* %321, align 8, !alias.scope !90, !noalias !92
  %index.next1143 = add i64 %index1142, 4
  %vec.ind.next1147 = add <4 x i64> %vec.ind1146, <i64 4, i64 4, i64 4, i64 4>
  %322 = icmp eq i64 %index.next1143, 28
  br i1 %322, label %polly.loop_exit720.1, label %vector.body1140, !llvm.loop !101

polly.loop_exit720.1:                             ; preds = %vector.body1140
  %polly.indvar_next716.1 = add nuw nsw i64 %polly.indvar715.1, 1
  %exitcond791.1.not = icmp eq i64 %polly.indvar_next716.1, 32
  br i1 %exitcond791.1.not, label %polly.loop_header712.1945, label %polly.loop_header712.1

polly.loop_header712.1945:                        ; preds = %polly.loop_exit720.1, %polly.loop_exit720.1956
  %polly.indvar715.1944 = phi i64 [ %polly.indvar_next716.1954, %polly.loop_exit720.1956 ], [ 0, %polly.loop_exit720.1 ]
  %323 = add nuw nsw i64 %polly.indvar715.1944, 32
  %324 = mul nuw nsw i64 %323, 480
  %325 = trunc i64 %323 to i32
  %broadcast.splatinsert1162 = insertelement <4 x i32> poison, i32 %325, i32 0
  %broadcast.splat1163 = shufflevector <4 x i32> %broadcast.splatinsert1162, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1152

vector.body1152:                                  ; preds = %vector.body1152, %polly.loop_header712.1945
  %index1154 = phi i64 [ 0, %polly.loop_header712.1945 ], [ %index.next1155, %vector.body1152 ]
  %vec.ind1160 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.1945 ], [ %vec.ind.next1161, %vector.body1152 ]
  %326 = mul <4 x i32> %vec.ind1160, %broadcast.splat1163
  %327 = add <4 x i32> %326, <i32 2, i32 2, i32 2, i32 2>
  %328 = urem <4 x i32> %327, <i32 60, i32 60, i32 60, i32 60>
  %329 = sitofp <4 x i32> %328 to <4 x double>
  %330 = fmul fast <4 x double> %329, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %331 = shl i64 %index1154, 3
  %332 = add i64 %331, %324
  %333 = getelementptr i8, i8* %call2, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %330, <4 x double>* %334, align 8, !alias.scope !90, !noalias !92
  %index.next1155 = add i64 %index1154, 4
  %vec.ind.next1161 = add <4 x i32> %vec.ind1160, <i32 4, i32 4, i32 4, i32 4>
  %335 = icmp eq i64 %index.next1155, 32
  br i1 %335, label %polly.loop_exit720.1956, label %vector.body1152, !llvm.loop !102

polly.loop_exit720.1956:                          ; preds = %vector.body1152
  %polly.indvar_next716.1954 = add nuw nsw i64 %polly.indvar715.1944, 1
  %exitcond791.1955.not = icmp eq i64 %polly.indvar_next716.1954, 32
  br i1 %exitcond791.1955.not, label %polly.loop_header712.1.1, label %polly.loop_header712.1945

polly.loop_header712.1.1:                         ; preds = %polly.loop_exit720.1956, %polly.loop_exit720.1.1
  %polly.indvar715.1.1 = phi i64 [ %polly.indvar_next716.1.1, %polly.loop_exit720.1.1 ], [ 0, %polly.loop_exit720.1956 ]
  %336 = add nuw nsw i64 %polly.indvar715.1.1, 32
  %337 = mul nuw nsw i64 %336, 480
  %338 = trunc i64 %336 to i32
  %broadcast.splatinsert1174 = insertelement <4 x i32> poison, i32 %338, i32 0
  %broadcast.splat1175 = shufflevector <4 x i32> %broadcast.splatinsert1174, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %polly.loop_header712.1.1
  %index1168 = phi i64 [ 0, %polly.loop_header712.1.1 ], [ %index.next1169, %vector.body1166 ]
  %vec.ind1172 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.1 ], [ %vec.ind.next1173, %vector.body1166 ]
  %339 = add nuw nsw <4 x i64> %vec.ind1172, <i64 32, i64 32, i64 32, i64 32>
  %340 = trunc <4 x i64> %339 to <4 x i32>
  %341 = mul <4 x i32> %broadcast.splat1175, %340
  %342 = add <4 x i32> %341, <i32 2, i32 2, i32 2, i32 2>
  %343 = urem <4 x i32> %342, <i32 60, i32 60, i32 60, i32 60>
  %344 = sitofp <4 x i32> %343 to <4 x double>
  %345 = fmul fast <4 x double> %344, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %346 = extractelement <4 x i64> %339, i32 0
  %347 = shl i64 %346, 3
  %348 = add i64 %347, %337
  %349 = getelementptr i8, i8* %call2, i64 %348
  %350 = bitcast i8* %349 to <4 x double>*
  store <4 x double> %345, <4 x double>* %350, align 8, !alias.scope !90, !noalias !92
  %index.next1169 = add i64 %index1168, 4
  %vec.ind.next1173 = add <4 x i64> %vec.ind1172, <i64 4, i64 4, i64 4, i64 4>
  %351 = icmp eq i64 %index.next1169, 28
  br i1 %351, label %polly.loop_exit720.1.1, label %vector.body1166, !llvm.loop !103

polly.loop_exit720.1.1:                           ; preds = %vector.body1166
  %polly.indvar_next716.1.1 = add nuw nsw i64 %polly.indvar715.1.1, 1
  %exitcond791.1.1.not = icmp eq i64 %polly.indvar_next716.1.1, 32
  br i1 %exitcond791.1.1.not, label %polly.loop_header712.2, label %polly.loop_header712.1.1

polly.loop_header712.2:                           ; preds = %polly.loop_exit720.1.1, %polly.loop_exit720.2
  %polly.indvar715.2 = phi i64 [ %polly.indvar_next716.2, %polly.loop_exit720.2 ], [ 0, %polly.loop_exit720.1.1 ]
  %352 = add nuw nsw i64 %polly.indvar715.2, 64
  %353 = mul nuw nsw i64 %352, 480
  %354 = trunc i64 %352 to i32
  %broadcast.splatinsert1188 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1189 = shufflevector <4 x i32> %broadcast.splatinsert1188, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1178

vector.body1178:                                  ; preds = %vector.body1178, %polly.loop_header712.2
  %index1180 = phi i64 [ 0, %polly.loop_header712.2 ], [ %index.next1181, %vector.body1178 ]
  %vec.ind1186 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header712.2 ], [ %vec.ind.next1187, %vector.body1178 ]
  %355 = mul <4 x i32> %vec.ind1186, %broadcast.splat1189
  %356 = add <4 x i32> %355, <i32 2, i32 2, i32 2, i32 2>
  %357 = urem <4 x i32> %356, <i32 60, i32 60, i32 60, i32 60>
  %358 = sitofp <4 x i32> %357 to <4 x double>
  %359 = fmul fast <4 x double> %358, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %360 = shl i64 %index1180, 3
  %361 = add i64 %360, %353
  %362 = getelementptr i8, i8* %call2, i64 %361
  %363 = bitcast i8* %362 to <4 x double>*
  store <4 x double> %359, <4 x double>* %363, align 8, !alias.scope !90, !noalias !92
  %index.next1181 = add i64 %index1180, 4
  %vec.ind.next1187 = add <4 x i32> %vec.ind1186, <i32 4, i32 4, i32 4, i32 4>
  %364 = icmp eq i64 %index.next1181, 32
  br i1 %364, label %polly.loop_exit720.2, label %vector.body1178, !llvm.loop !104

polly.loop_exit720.2:                             ; preds = %vector.body1178
  %polly.indvar_next716.2 = add nuw nsw i64 %polly.indvar715.2, 1
  %exitcond791.2.not = icmp eq i64 %polly.indvar_next716.2, 16
  br i1 %exitcond791.2.not, label %polly.loop_header712.1.2, label %polly.loop_header712.2

polly.loop_header712.1.2:                         ; preds = %polly.loop_exit720.2, %polly.loop_exit720.1.2
  %polly.indvar715.1.2 = phi i64 [ %polly.indvar_next716.1.2, %polly.loop_exit720.1.2 ], [ 0, %polly.loop_exit720.2 ]
  %365 = add nuw nsw i64 %polly.indvar715.1.2, 64
  %366 = mul nuw nsw i64 %365, 480
  %367 = trunc i64 %365 to i32
  %broadcast.splatinsert1200 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1201 = shufflevector <4 x i32> %broadcast.splatinsert1200, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1192

vector.body1192:                                  ; preds = %vector.body1192, %polly.loop_header712.1.2
  %index1194 = phi i64 [ 0, %polly.loop_header712.1.2 ], [ %index.next1195, %vector.body1192 ]
  %vec.ind1198 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header712.1.2 ], [ %vec.ind.next1199, %vector.body1192 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1198, <i64 32, i64 32, i64 32, i64 32>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1201, %369
  %371 = add <4 x i32> %370, <i32 2, i32 2, i32 2, i32 2>
  %372 = urem <4 x i32> %371, <i32 60, i32 60, i32 60, i32 60>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add i64 %376, %366
  %378 = getelementptr i8, i8* %call2, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !90, !noalias !92
  %index.next1195 = add i64 %index1194, 4
  %vec.ind.next1199 = add <4 x i64> %vec.ind1198, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1195, 28
  br i1 %380, label %polly.loop_exit720.1.2, label %vector.body1192, !llvm.loop !105

polly.loop_exit720.1.2:                           ; preds = %vector.body1192
  %polly.indvar_next716.1.2 = add nuw nsw i64 %polly.indvar715.1.2, 1
  %exitcond791.1.2.not = icmp eq i64 %polly.indvar_next716.1.2, 16
  br i1 %exitcond791.1.2.not, label %polly.loop_header738, label %polly.loop_header712.1.2

polly.loop_header685.1:                           ; preds = %polly.loop_exit693, %polly.loop_exit693.1
  %polly.indvar688.1 = phi i64 [ %polly.indvar_next689.1, %polly.loop_exit693.1 ], [ 0, %polly.loop_exit693 ]
  %381 = mul nuw nsw i64 %polly.indvar688.1, 640
  %382 = trunc i64 %polly.indvar688.1 to i32
  %broadcast.splatinsert1034 = insertelement <4 x i32> poison, i32 %382, i32 0
  %broadcast.splat1035 = shufflevector <4 x i32> %broadcast.splatinsert1034, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1026

vector.body1026:                                  ; preds = %vector.body1026, %polly.loop_header685.1
  %index1028 = phi i64 [ 0, %polly.loop_header685.1 ], [ %index.next1029, %vector.body1026 ]
  %vec.ind1032 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1 ], [ %vec.ind.next1033, %vector.body1026 ]
  %383 = add nuw nsw <4 x i64> %vec.ind1032, <i64 32, i64 32, i64 32, i64 32>
  %384 = trunc <4 x i64> %383 to <4 x i32>
  %385 = mul <4 x i32> %broadcast.splat1035, %384
  %386 = add <4 x i32> %385, <i32 3, i32 3, i32 3, i32 3>
  %387 = urem <4 x i32> %386, <i32 80, i32 80, i32 80, i32 80>
  %388 = sitofp <4 x i32> %387 to <4 x double>
  %389 = fmul fast <4 x double> %388, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %390 = extractelement <4 x i64> %383, i32 0
  %391 = shl i64 %390, 3
  %392 = add nuw nsw i64 %391, %381
  %393 = getelementptr i8, i8* %call, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %389, <4 x double>* %394, align 8, !alias.scope !86, !noalias !88
  %index.next1029 = add i64 %index1028, 4
  %vec.ind.next1033 = add <4 x i64> %vec.ind1032, <i64 4, i64 4, i64 4, i64 4>
  %395 = icmp eq i64 %index.next1029, 32
  br i1 %395, label %polly.loop_exit693.1, label %vector.body1026, !llvm.loop !106

polly.loop_exit693.1:                             ; preds = %vector.body1026
  %polly.indvar_next689.1 = add nuw nsw i64 %polly.indvar688.1, 1
  %exitcond800.1.not = icmp eq i64 %polly.indvar_next689.1, 32
  br i1 %exitcond800.1.not, label %polly.loop_header685.2, label %polly.loop_header685.1

polly.loop_header685.2:                           ; preds = %polly.loop_exit693.1, %polly.loop_exit693.2
  %polly.indvar688.2 = phi i64 [ %polly.indvar_next689.2, %polly.loop_exit693.2 ], [ 0, %polly.loop_exit693.1 ]
  %396 = mul nuw nsw i64 %polly.indvar688.2, 640
  %397 = trunc i64 %polly.indvar688.2 to i32
  %broadcast.splatinsert1046 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat1047 = shufflevector <4 x i32> %broadcast.splatinsert1046, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1038

vector.body1038:                                  ; preds = %vector.body1038, %polly.loop_header685.2
  %index1040 = phi i64 [ 0, %polly.loop_header685.2 ], [ %index.next1041, %vector.body1038 ]
  %vec.ind1044 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2 ], [ %vec.ind.next1045, %vector.body1038 ]
  %398 = add nuw nsw <4 x i64> %vec.ind1044, <i64 64, i64 64, i64 64, i64 64>
  %399 = trunc <4 x i64> %398 to <4 x i32>
  %400 = mul <4 x i32> %broadcast.splat1047, %399
  %401 = add <4 x i32> %400, <i32 3, i32 3, i32 3, i32 3>
  %402 = urem <4 x i32> %401, <i32 80, i32 80, i32 80, i32 80>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = extractelement <4 x i64> %398, i32 0
  %406 = shl i64 %405, 3
  %407 = add nuw nsw i64 %406, %396
  %408 = getelementptr i8, i8* %call, i64 %407
  %409 = bitcast i8* %408 to <4 x double>*
  store <4 x double> %404, <4 x double>* %409, align 8, !alias.scope !86, !noalias !88
  %index.next1041 = add i64 %index1040, 4
  %vec.ind.next1045 = add <4 x i64> %vec.ind1044, <i64 4, i64 4, i64 4, i64 4>
  %410 = icmp eq i64 %index.next1041, 16
  br i1 %410, label %polly.loop_exit693.2, label %vector.body1038, !llvm.loop !107

polly.loop_exit693.2:                             ; preds = %vector.body1038
  %polly.indvar_next689.2 = add nuw nsw i64 %polly.indvar688.2, 1
  %exitcond800.2.not = icmp eq i64 %polly.indvar_next689.2, 32
  br i1 %exitcond800.2.not, label %polly.loop_header685.1959, label %polly.loop_header685.2

polly.loop_header685.1959:                        ; preds = %polly.loop_exit693.2, %polly.loop_exit693.1970
  %polly.indvar688.1958 = phi i64 [ %polly.indvar_next689.1968, %polly.loop_exit693.1970 ], [ 0, %polly.loop_exit693.2 ]
  %411 = add nuw nsw i64 %polly.indvar688.1958, 32
  %412 = mul nuw nsw i64 %411, 640
  %413 = trunc i64 %411 to i32
  %broadcast.splatinsert1060 = insertelement <4 x i32> poison, i32 %413, i32 0
  %broadcast.splat1061 = shufflevector <4 x i32> %broadcast.splatinsert1060, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %polly.loop_header685.1959
  %index1052 = phi i64 [ 0, %polly.loop_header685.1959 ], [ %index.next1053, %vector.body1050 ]
  %vec.ind1058 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.1959 ], [ %vec.ind.next1059, %vector.body1050 ]
  %414 = mul <4 x i32> %vec.ind1058, %broadcast.splat1061
  %415 = add <4 x i32> %414, <i32 3, i32 3, i32 3, i32 3>
  %416 = urem <4 x i32> %415, <i32 80, i32 80, i32 80, i32 80>
  %417 = sitofp <4 x i32> %416 to <4 x double>
  %418 = fmul fast <4 x double> %417, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %419 = shl i64 %index1052, 3
  %420 = add nuw nsw i64 %419, %412
  %421 = getelementptr i8, i8* %call, i64 %420
  %422 = bitcast i8* %421 to <4 x double>*
  store <4 x double> %418, <4 x double>* %422, align 8, !alias.scope !86, !noalias !88
  %index.next1053 = add i64 %index1052, 4
  %vec.ind.next1059 = add <4 x i32> %vec.ind1058, <i32 4, i32 4, i32 4, i32 4>
  %423 = icmp eq i64 %index.next1053, 32
  br i1 %423, label %polly.loop_exit693.1970, label %vector.body1050, !llvm.loop !108

polly.loop_exit693.1970:                          ; preds = %vector.body1050
  %polly.indvar_next689.1968 = add nuw nsw i64 %polly.indvar688.1958, 1
  %exitcond800.1969.not = icmp eq i64 %polly.indvar_next689.1968, 32
  br i1 %exitcond800.1969.not, label %polly.loop_header685.1.1, label %polly.loop_header685.1959

polly.loop_header685.1.1:                         ; preds = %polly.loop_exit693.1970, %polly.loop_exit693.1.1
  %polly.indvar688.1.1 = phi i64 [ %polly.indvar_next689.1.1, %polly.loop_exit693.1.1 ], [ 0, %polly.loop_exit693.1970 ]
  %424 = add nuw nsw i64 %polly.indvar688.1.1, 32
  %425 = mul nuw nsw i64 %424, 640
  %426 = trunc i64 %424 to i32
  %broadcast.splatinsert1072 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat1073 = shufflevector <4 x i32> %broadcast.splatinsert1072, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1064

vector.body1064:                                  ; preds = %vector.body1064, %polly.loop_header685.1.1
  %index1066 = phi i64 [ 0, %polly.loop_header685.1.1 ], [ %index.next1067, %vector.body1064 ]
  %vec.ind1070 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.1 ], [ %vec.ind.next1071, %vector.body1064 ]
  %427 = add nuw nsw <4 x i64> %vec.ind1070, <i64 32, i64 32, i64 32, i64 32>
  %428 = trunc <4 x i64> %427 to <4 x i32>
  %429 = mul <4 x i32> %broadcast.splat1073, %428
  %430 = add <4 x i32> %429, <i32 3, i32 3, i32 3, i32 3>
  %431 = urem <4 x i32> %430, <i32 80, i32 80, i32 80, i32 80>
  %432 = sitofp <4 x i32> %431 to <4 x double>
  %433 = fmul fast <4 x double> %432, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %434 = extractelement <4 x i64> %427, i32 0
  %435 = shl i64 %434, 3
  %436 = add nuw nsw i64 %435, %425
  %437 = getelementptr i8, i8* %call, i64 %436
  %438 = bitcast i8* %437 to <4 x double>*
  store <4 x double> %433, <4 x double>* %438, align 8, !alias.scope !86, !noalias !88
  %index.next1067 = add i64 %index1066, 4
  %vec.ind.next1071 = add <4 x i64> %vec.ind1070, <i64 4, i64 4, i64 4, i64 4>
  %439 = icmp eq i64 %index.next1067, 32
  br i1 %439, label %polly.loop_exit693.1.1, label %vector.body1064, !llvm.loop !109

polly.loop_exit693.1.1:                           ; preds = %vector.body1064
  %polly.indvar_next689.1.1 = add nuw nsw i64 %polly.indvar688.1.1, 1
  %exitcond800.1.1.not = icmp eq i64 %polly.indvar_next689.1.1, 32
  br i1 %exitcond800.1.1.not, label %polly.loop_header685.2.1, label %polly.loop_header685.1.1

polly.loop_header685.2.1:                         ; preds = %polly.loop_exit693.1.1, %polly.loop_exit693.2.1
  %polly.indvar688.2.1 = phi i64 [ %polly.indvar_next689.2.1, %polly.loop_exit693.2.1 ], [ 0, %polly.loop_exit693.1.1 ]
  %440 = add nuw nsw i64 %polly.indvar688.2.1, 32
  %441 = mul nuw nsw i64 %440, 640
  %442 = trunc i64 %440 to i32
  %broadcast.splatinsert1084 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1085 = shufflevector <4 x i32> %broadcast.splatinsert1084, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1076

vector.body1076:                                  ; preds = %vector.body1076, %polly.loop_header685.2.1
  %index1078 = phi i64 [ 0, %polly.loop_header685.2.1 ], [ %index.next1079, %vector.body1076 ]
  %vec.ind1082 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.1 ], [ %vec.ind.next1083, %vector.body1076 ]
  %443 = add nuw nsw <4 x i64> %vec.ind1082, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat1085, %444
  %446 = add <4 x i32> %445, <i32 3, i32 3, i32 3, i32 3>
  %447 = urem <4 x i32> %446, <i32 80, i32 80, i32 80, i32 80>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = extractelement <4 x i64> %443, i32 0
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %441
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %449, <4 x double>* %454, align 8, !alias.scope !86, !noalias !88
  %index.next1079 = add i64 %index1078, 4
  %vec.ind.next1083 = add <4 x i64> %vec.ind1082, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next1079, 16
  br i1 %455, label %polly.loop_exit693.2.1, label %vector.body1076, !llvm.loop !110

polly.loop_exit693.2.1:                           ; preds = %vector.body1076
  %polly.indvar_next689.2.1 = add nuw nsw i64 %polly.indvar688.2.1, 1
  %exitcond800.2.1.not = icmp eq i64 %polly.indvar_next689.2.1, 32
  br i1 %exitcond800.2.1.not, label %polly.loop_header685.2973, label %polly.loop_header685.2.1

polly.loop_header685.2973:                        ; preds = %polly.loop_exit693.2.1, %polly.loop_exit693.2984
  %polly.indvar688.2972 = phi i64 [ %polly.indvar_next689.2982, %polly.loop_exit693.2984 ], [ 0, %polly.loop_exit693.2.1 ]
  %456 = add nuw nsw i64 %polly.indvar688.2972, 64
  %457 = mul nuw nsw i64 %456, 640
  %458 = trunc i64 %456 to i32
  %broadcast.splatinsert1098 = insertelement <4 x i32> poison, i32 %458, i32 0
  %broadcast.splat1099 = shufflevector <4 x i32> %broadcast.splatinsert1098, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %polly.loop_header685.2973
  %index1090 = phi i64 [ 0, %polly.loop_header685.2973 ], [ %index.next1091, %vector.body1088 ]
  %vec.ind1096 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header685.2973 ], [ %vec.ind.next1097, %vector.body1088 ]
  %459 = mul <4 x i32> %vec.ind1096, %broadcast.splat1099
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = shl i64 %index1090, 3
  %465 = add nuw nsw i64 %464, %457
  %466 = getelementptr i8, i8* %call, i64 %465
  %467 = bitcast i8* %466 to <4 x double>*
  store <4 x double> %463, <4 x double>* %467, align 8, !alias.scope !86, !noalias !88
  %index.next1091 = add i64 %index1090, 4
  %vec.ind.next1097 = add <4 x i32> %vec.ind1096, <i32 4, i32 4, i32 4, i32 4>
  %468 = icmp eq i64 %index.next1091, 32
  br i1 %468, label %polly.loop_exit693.2984, label %vector.body1088, !llvm.loop !111

polly.loop_exit693.2984:                          ; preds = %vector.body1088
  %polly.indvar_next689.2982 = add nuw nsw i64 %polly.indvar688.2972, 1
  %exitcond800.2983.not = icmp eq i64 %polly.indvar_next689.2982, 16
  br i1 %exitcond800.2983.not, label %polly.loop_header685.1.2, label %polly.loop_header685.2973

polly.loop_header685.1.2:                         ; preds = %polly.loop_exit693.2984, %polly.loop_exit693.1.2
  %polly.indvar688.1.2 = phi i64 [ %polly.indvar_next689.1.2, %polly.loop_exit693.1.2 ], [ 0, %polly.loop_exit693.2984 ]
  %469 = add nuw nsw i64 %polly.indvar688.1.2, 64
  %470 = mul nuw nsw i64 %469, 640
  %471 = trunc i64 %469 to i32
  %broadcast.splatinsert1110 = insertelement <4 x i32> poison, i32 %471, i32 0
  %broadcast.splat1111 = shufflevector <4 x i32> %broadcast.splatinsert1110, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1102

vector.body1102:                                  ; preds = %vector.body1102, %polly.loop_header685.1.2
  %index1104 = phi i64 [ 0, %polly.loop_header685.1.2 ], [ %index.next1105, %vector.body1102 ]
  %vec.ind1108 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.1.2 ], [ %vec.ind.next1109, %vector.body1102 ]
  %472 = add nuw nsw <4 x i64> %vec.ind1108, <i64 32, i64 32, i64 32, i64 32>
  %473 = trunc <4 x i64> %472 to <4 x i32>
  %474 = mul <4 x i32> %broadcast.splat1111, %473
  %475 = add <4 x i32> %474, <i32 3, i32 3, i32 3, i32 3>
  %476 = urem <4 x i32> %475, <i32 80, i32 80, i32 80, i32 80>
  %477 = sitofp <4 x i32> %476 to <4 x double>
  %478 = fmul fast <4 x double> %477, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %479 = extractelement <4 x i64> %472, i32 0
  %480 = shl i64 %479, 3
  %481 = add nuw nsw i64 %480, %470
  %482 = getelementptr i8, i8* %call, i64 %481
  %483 = bitcast i8* %482 to <4 x double>*
  store <4 x double> %478, <4 x double>* %483, align 8, !alias.scope !86, !noalias !88
  %index.next1105 = add i64 %index1104, 4
  %vec.ind.next1109 = add <4 x i64> %vec.ind1108, <i64 4, i64 4, i64 4, i64 4>
  %484 = icmp eq i64 %index.next1105, 32
  br i1 %484, label %polly.loop_exit693.1.2, label %vector.body1102, !llvm.loop !112

polly.loop_exit693.1.2:                           ; preds = %vector.body1102
  %polly.indvar_next689.1.2 = add nuw nsw i64 %polly.indvar688.1.2, 1
  %exitcond800.1.2.not = icmp eq i64 %polly.indvar_next689.1.2, 16
  br i1 %exitcond800.1.2.not, label %polly.loop_header685.2.2, label %polly.loop_header685.1.2

polly.loop_header685.2.2:                         ; preds = %polly.loop_exit693.1.2, %polly.loop_exit693.2.2
  %polly.indvar688.2.2 = phi i64 [ %polly.indvar_next689.2.2, %polly.loop_exit693.2.2 ], [ 0, %polly.loop_exit693.1.2 ]
  %485 = add nuw nsw i64 %polly.indvar688.2.2, 64
  %486 = mul nuw nsw i64 %485, 640
  %487 = trunc i64 %485 to i32
  %broadcast.splatinsert1122 = insertelement <4 x i32> poison, i32 %487, i32 0
  %broadcast.splat1123 = shufflevector <4 x i32> %broadcast.splatinsert1122, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %polly.loop_header685.2.2
  %index1116 = phi i64 [ 0, %polly.loop_header685.2.2 ], [ %index.next1117, %vector.body1114 ]
  %vec.ind1120 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header685.2.2 ], [ %vec.ind.next1121, %vector.body1114 ]
  %488 = add nuw nsw <4 x i64> %vec.ind1120, <i64 64, i64 64, i64 64, i64 64>
  %489 = trunc <4 x i64> %488 to <4 x i32>
  %490 = mul <4 x i32> %broadcast.splat1123, %489
  %491 = add <4 x i32> %490, <i32 3, i32 3, i32 3, i32 3>
  %492 = urem <4 x i32> %491, <i32 80, i32 80, i32 80, i32 80>
  %493 = sitofp <4 x i32> %492 to <4 x double>
  %494 = fmul fast <4 x double> %493, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %495 = extractelement <4 x i64> %488, i32 0
  %496 = shl i64 %495, 3
  %497 = add nuw nsw i64 %496, %486
  %498 = getelementptr i8, i8* %call, i64 %497
  %499 = bitcast i8* %498 to <4 x double>*
  store <4 x double> %494, <4 x double>* %499, align 8, !alias.scope !86, !noalias !88
  %index.next1117 = add i64 %index1116, 4
  %vec.ind.next1121 = add <4 x i64> %vec.ind1120, <i64 4, i64 4, i64 4, i64 4>
  %500 = icmp eq i64 %index.next1117, 16
  br i1 %500, label %polly.loop_exit693.2.2, label %vector.body1114, !llvm.loop !113

polly.loop_exit693.2.2:                           ; preds = %vector.body1114
  %polly.indvar_next689.2.2 = add nuw nsw i64 %polly.indvar688.2.2, 1
  %exitcond800.2.2.not = icmp eq i64 %polly.indvar_next689.2.2, 16
  br i1 %exitcond800.2.2.not, label %polly.loop_header712, label %polly.loop_header685.2.2
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
!24 = !{!"llvm.loop.tile.size", i32 50}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !24, !33, !36}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.followup_floor", !34}
!34 = distinct !{!34, !12, !35}
!35 = !{!"llvm.loop.id", !"j1"}
!36 = !{!"llvm.loop.tile.followup_tile", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j2"}
!39 = distinct !{!39, !12, !22, !40, !41, !42, !43, !44, !47}
!40 = !{!"llvm.loop.id", !"i"}
!41 = !{!"llvm.loop.tile.enable", i1 true}
!42 = !{!"llvm.loop.tile.depth", i32 3}
!43 = !{!"llvm.loop.tile.size", i32 100}
!44 = !{!"llvm.loop.tile.followup_floor", !45}
!45 = distinct !{!45, !12, !46}
!46 = !{!"llvm.loop.id", !"i1"}
!47 = !{!"llvm.loop.tile.followup_tile", !48}
!48 = distinct !{!48, !12, !49}
!49 = !{!"llvm.loop.id", !"i2"}
!50 = distinct !{!50, !12, !13}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !4, i64 0}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !59, !"polly.alias.scope.MemRef_call"}
!59 = distinct !{!59, !"polly.alias.scope.domain"}
!60 = !{!61, !62}
!61 = distinct !{!61, !59, !"polly.alias.scope.MemRef_call1"}
!62 = distinct !{!62, !59, !"polly.alias.scope.MemRef_call2"}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !65, !13}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = !{!58, !61}
!67 = !{!58, !62}
!68 = distinct !{!68, !69, !"polly.alias.scope.MemRef_call"}
!69 = distinct !{!69, !"polly.alias.scope.domain"}
!70 = !{!71, !72}
!71 = distinct !{!71, !69, !"polly.alias.scope.MemRef_call1"}
!72 = distinct !{!72, !69, !"polly.alias.scope.MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !65, !13}
!75 = !{!68, !71}
!76 = !{!68, !72}
!77 = distinct !{!77, !78, !"polly.alias.scope.MemRef_call"}
!78 = distinct !{!78, !"polly.alias.scope.domain"}
!79 = !{!80, !81}
!80 = distinct !{!80, !78, !"polly.alias.scope.MemRef_call1"}
!81 = distinct !{!81, !78, !"polly.alias.scope.MemRef_call2"}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !65, !13}
!84 = !{!77, !80}
!85 = !{!77, !81}
!86 = distinct !{!86, !87, !"polly.alias.scope.MemRef_call"}
!87 = distinct !{!87, !"polly.alias.scope.domain"}
!88 = !{!89, !90}
!89 = distinct !{!89, !87, !"polly.alias.scope.MemRef_call1"}
!90 = distinct !{!90, !87, !"polly.alias.scope.MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = !{!89, !86}
!93 = distinct !{!93, !13}
!94 = !{!90, !86}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
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
