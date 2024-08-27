; ModuleID = 'syr2k_recreations//mmp_syr2k_S_155.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_155.c"
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
  %call778 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1639 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2640 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1639, %call2
  %polly.access.call2659 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2659, %call1
  %2 = or i1 %0, %1
  %polly.access.call679 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call679, %call2
  %4 = icmp ule i8* %polly.access.call2659, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call679, %call1
  %8 = icmp ule i8* %polly.access.call1639, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header764, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep989 = getelementptr i8, i8* %call2, i64 %12
  %scevgep988 = getelementptr i8, i8* %call2, i64 %11
  %scevgep987 = getelementptr i8, i8* %call1, i64 %12
  %scevgep986 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep986, %scevgep989
  %bound1 = icmp ult i8* %scevgep988, %scevgep987
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
  br i1 %exitcond18.not.i, label %vector.ph993, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph993:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1000 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1001 = shufflevector <4 x i64> %broadcast.splatinsert1000, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body992

vector.body992:                                   ; preds = %vector.body992, %vector.ph993
  %index994 = phi i64 [ 0, %vector.ph993 ], [ %index.next995, %vector.body992 ]
  %vec.ind998 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph993 ], [ %vec.ind.next999, %vector.body992 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind998, %broadcast.splat1001
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv7.i, i64 %index994
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next995 = add i64 %index994, 4
  %vec.ind.next999 = add <4 x i64> %vec.ind998, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next995, 80
  br i1 %40, label %for.inc41.i, label %vector.body992, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body992
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph993, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit825.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start450, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1346, label %vector.ph1275

vector.ph1275:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1275
  %index1276 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1277, %vector.body1274 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i, i64 %index1276
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1277 = add i64 %index1276, 4
  %46 = icmp eq i64 %index.next1277, %n.vec
  br i1 %46, label %middle.block1272, label %vector.body1274, !llvm.loop !18

middle.block1272:                                 ; preds = %vector.body1274
  %cmp.n1279 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1279, label %for.inc6.i, label %for.body3.i46.preheader1346

for.body3.i46.preheader1346:                      ; preds = %for.body3.i46.preheader, %middle.block1272
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1272 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1346, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1346 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1272, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !21
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !21
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !41

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit560.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start272, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1295 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1295, label %for.body3.i60.preheader1345, label %vector.ph1296

vector.ph1296:                                    ; preds = %for.body3.i60.preheader
  %n.vec1298 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1294

vector.body1294:                                  ; preds = %vector.body1294, %vector.ph1296
  %index1299 = phi i64 [ 0, %vector.ph1296 ], [ %index.next1300, %vector.body1294 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i52, i64 %index1299
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1303 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1303, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1300 = add i64 %index1299, 4
  %57 = icmp eq i64 %index.next1300, %n.vec1298
  br i1 %57, label %middle.block1292, label %vector.body1294, !llvm.loop !60

middle.block1292:                                 ; preds = %vector.body1294
  %cmp.n1302 = icmp eq i64 %indvars.iv21.i52, %n.vec1298
  br i1 %cmp.n1302, label %for.inc6.i63, label %for.body3.i60.preheader1345

for.body3.i60.preheader1345:                      ; preds = %for.body3.i60.preheader, %middle.block1292
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1298, %middle.block1292 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1345, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1345 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1292, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !21
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !21
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !41

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit382.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1321 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1321, label %for.body3.i99.preheader1344, label %vector.ph1322

vector.ph1322:                                    ; preds = %for.body3.i99.preheader
  %n.vec1324 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1320

vector.body1320:                                  ; preds = %vector.body1320, %vector.ph1322
  %index1325 = phi i64 [ 0, %vector.ph1322 ], [ %index.next1326, %vector.body1320 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i91, i64 %index1325
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1329 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1329, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1326 = add i64 %index1325, 4
  %68 = icmp eq i64 %index.next1326, %n.vec1324
  br i1 %68, label %middle.block1318, label %vector.body1320, !llvm.loop !62

middle.block1318:                                 ; preds = %vector.body1320
  %cmp.n1328 = icmp eq i64 %indvars.iv21.i91, %n.vec1324
  br i1 %cmp.n1328, label %for.inc6.i102, label %for.body3.i99.preheader1344

for.body3.i99.preheader1344:                      ; preds = %for.body3.i99.preheader, %middle.block1318
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1324, %middle.block1318 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1344, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1344 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1318, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !21
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !21
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !41

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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1333 = phi i64 [ %indvar.next1334, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1333, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1335 = icmp ult i64 %88, 4
  br i1 %min.iters.check1335, label %polly.loop_header191.preheader, label %vector.ph1336

vector.ph1336:                                    ; preds = %polly.loop_header
  %n.vec1338 = and i64 %88, -4
  br label %vector.body1332

vector.body1332:                                  ; preds = %vector.body1332, %vector.ph1336
  %index1339 = phi i64 [ 0, %vector.ph1336 ], [ %index.next1340, %vector.body1332 ]
  %90 = shl nuw nsw i64 %index1339, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1343 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1343, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1340 = add i64 %index1339, 4
  %95 = icmp eq i64 %index.next1340, %n.vec1338
  br i1 %95, label %middle.block1330, label %vector.body1332, !llvm.loop !74

middle.block1330:                                 ; preds = %vector.body1332
  %cmp.n1342 = icmp eq i64 %88, %n.vec1338
  br i1 %cmp.n1342, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1330
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1338, %middle.block1330 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1330
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1334 = add i64 %indvar1333, 1
  br i1 %exitcond864.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
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
  %exitcond863.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond863.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199.preheader
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit229 ], [ 0, %polly.loop_header199.preheader ]
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit229 ], [ 0, %polly.loop_header199.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 80, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar208, 20
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %98 = mul nsw i64 %polly.indvar208, -20
  %99 = shl nuw nsw i64 %polly.indvar208, 1
  %pexp.p_div_q = udiv i64 %99, 5
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -20
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 20
  %exitcond862.not = icmp eq i64 %polly.indvar_next209, 4
  br i1 %exitcond862.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next215, 32
  br i1 %exitcond853.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %100 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.call2224 = mul nuw nsw i64 %100, 60
  %polly.access.add.call2225 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_exit213
  %polly.indvar230 = phi i64 [ %pexp.p_div_q, %polly.loop_exit213 ], [ 1, %polly.loop_exit235 ]
  %101 = mul nuw nsw i64 %polly.indvar230, 50
  %102 = sub nsw i64 %97, %101
  %103 = icmp sgt i64 %102, 0
  %104 = select i1 %103, i64 %102, i64 0
  %105 = mul nuw nsw i64 %polly.indvar230, -50
  %106 = icmp slt i64 %105, -30
  %107 = select i1 %106, i64 %105, i64 -30
  %108 = add nsw i64 %107, 79
  %polly.loop_guard.not = icmp sgt i64 %104, %108
  br i1 %polly.loop_guard.not, label %polly.loop_exit235, label %polly.loop_header233.preheader

polly.loop_header233.preheader:                   ; preds = %polly.loop_header227
  %109 = sub nsw i64 %indvars.iv856, %101
  %smax = call i64 @llvm.smax.i64(i64 %109, i64 0)
  %110 = add i64 %indvars.iv854, %smax
  %111 = add i64 %110, %101
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.loop_cond232 = icmp eq i64 %polly.indvar230, 0
  br i1 %polly.loop_cond232, label %polly.loop_header227, label %polly.loop_exit229

polly.loop_header233:                             ; preds = %polly.loop_header233.preheader, %polly.loop_exit241
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header233.preheader ]
  %112 = shl i64 %polly.indvar236, 3
  %polly.access.mul.Packed_MemRef_call2256 = mul nuw nsw i64 %polly.indvar236, 80
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_exit248
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next237, 32
  br i1 %exitcond861.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header233, %polly.loop_exit248
  %indvars.iv858 = phi i64 [ %111, %polly.loop_header233 ], [ %indvars.iv.next859, %polly.loop_exit248 ]
  %polly.indvar242 = phi i64 [ %104, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_exit248 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv858, i64 19)
  %113 = add nuw i64 %polly.indvar242, %101
  %114 = add i64 %113, %98
  %polly.loop_guard249978 = icmp sgt i64 %114, -1
  br i1 %polly.loop_guard249978, label %polly.loop_header246.preheader, label %polly.loop_exit248

polly.loop_header246.preheader:                   ; preds = %polly.loop_header239
  %polly.access.add.Packed_MemRef_call2257 = add nsw i64 %polly.access.mul.Packed_MemRef_call2256, %114
  %polly.access.Packed_MemRef_call2258 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257
  %_p_scalar_259 = load double, double* %polly.access.Packed_MemRef_call2258, align 8
  %115 = mul i64 %113, 480
  %116 = add i64 %115, %112
  %scevgep264 = getelementptr i8, i8* %call1, i64 %116
  %scevgep264265 = bitcast i8* %scevgep264 to double*
  %_p_scalar_266 = load double, double* %scevgep264265, align 8, !alias.scope !71, !noalias !78
  %117 = mul i64 %113, 640
  br label %polly.loop_header246

polly.loop_exit248:                               ; preds = %polly.loop_header246, %polly.loop_header239
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %polly.loop_cond244.not.not = icmp ult i64 %polly.indvar242, %108
  %indvars.iv.next859 = add i64 %indvars.iv858, 1
  br i1 %polly.loop_cond244.not.not, label %polly.loop_header239, label %polly.loop_exit241

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_header246
  %polly.indvar250 = phi i64 [ %polly.indvar_next251, %polly.loop_header246 ], [ 0, %polly.loop_header246.preheader ]
  %118 = add nuw nsw i64 %polly.indvar250, %97
  %119 = mul nuw nsw i64 %118, 480
  %120 = add nuw nsw i64 %119, %112
  %scevgep253 = getelementptr i8, i8* %call1, i64 %120
  %scevgep253254 = bitcast i8* %scevgep253 to double*
  %_p_scalar_255 = load double, double* %scevgep253254, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %polly.access.add.Packed_MemRef_call2261 = add nuw nsw i64 %polly.indvar250, %polly.access.mul.Packed_MemRef_call2256
  %polly.access.Packed_MemRef_call2262 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261
  %_p_scalar_263 = load double, double* %polly.access.Packed_MemRef_call2262, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_266, %_p_scalar_263
  %121 = shl i64 %118, 3
  %122 = add i64 %121, %117
  %scevgep267 = getelementptr i8, i8* %call, i64 %122
  %scevgep267268 = bitcast i8* %scevgep267 to double*
  %_p_scalar_269 = load double, double* %scevgep267268, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_269
  store double %p_add42.i118, double* %scevgep267268, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251 = add nuw nsw i64 %polly.indvar250, 1
  %exitcond860.not = icmp eq i64 %polly.indvar250, %smin
  br i1 %exitcond860.not, label %polly.loop_exit248, label %polly.loop_header246

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header358

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1307 = phi i64 [ %indvar.next1308, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %123 = add i64 %indvar1307, 1
  %124 = mul nuw nsw i64 %polly.indvar361, 640
  %scevgep370 = getelementptr i8, i8* %call, i64 %124
  %min.iters.check1309 = icmp ult i64 %123, 4
  br i1 %min.iters.check1309, label %polly.loop_header364.preheader, label %vector.ph1310

vector.ph1310:                                    ; preds = %polly.loop_header358
  %n.vec1312 = and i64 %123, -4
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1310
  %index1313 = phi i64 [ 0, %vector.ph1310 ], [ %index.next1314, %vector.body1306 ]
  %125 = shl nuw nsw i64 %index1313, 3
  %126 = getelementptr i8, i8* %scevgep370, i64 %125
  %127 = bitcast i8* %126 to <4 x double>*
  %wide.load1317 = load <4 x double>, <4 x double>* %127, align 8, !alias.scope !79, !noalias !81
  %128 = fmul fast <4 x double> %wide.load1317, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %129 = bitcast i8* %126 to <4 x double>*
  store <4 x double> %128, <4 x double>* %129, align 8, !alias.scope !79, !noalias !81
  %index.next1314 = add i64 %index1313, 4
  %130 = icmp eq i64 %index.next1314, %n.vec1312
  br i1 %130, label %middle.block1304, label %vector.body1306, !llvm.loop !85

middle.block1304:                                 ; preds = %vector.body1306
  %cmp.n1316 = icmp eq i64 %123, %n.vec1312
  br i1 %cmp.n1316, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1304
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1312, %middle.block1304 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1304
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next362, 80
  %indvar.next1308 = add i64 %indvar1307, 1
  br i1 %exitcond881.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header380

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %131 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %131
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond880.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !86

polly.loop_header380:                             ; preds = %polly.loop_exit405, %polly.loop_header374.preheader
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %polly.loop_exit405 ], [ 0, %polly.loop_header374.preheader ]
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit405 ], [ 0, %polly.loop_header374.preheader ]
  %indvars.iv865 = phi i64 [ %indvars.iv.next866, %polly.loop_exit405 ], [ 80, %polly.loop_header374.preheader ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit405 ], [ 0, %polly.loop_header374.preheader ]
  %132 = mul nuw nsw i64 %polly.indvar383, 20
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_exit394
  %133 = mul nsw i64 %polly.indvar383, -20
  %134 = shl nuw nsw i64 %polly.indvar383, 1
  %pexp.p_div_q402 = udiv i64 %134, 5
  br label %polly.loop_header403

polly.loop_exit405:                               ; preds = %polly.loop_exit411
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %indvars.iv.next866 = add nsw i64 %indvars.iv865, -20
  %indvars.iv.next870 = add nsw i64 %indvars.iv869, -20
  %indvars.iv.next872 = add nuw nsw i64 %indvars.iv871, 20
  %exitcond879.not = icmp eq i64 %polly.indvar_next384, 4
  br i1 %exitcond879.not, label %polly.loop_header380.1, label %polly.loop_header380

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.loop_header380
  %polly.indvar389 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next390, %polly.loop_exit394 ]
  %polly.access.mul.Packed_MemRef_call2275 = mul nuw nsw i64 %polly.indvar389, 80
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next390, 32
  br i1 %exitcond868.not, label %polly.loop_exit388, label %polly.loop_header386

polly.loop_header392:                             ; preds = %polly.loop_header392, %polly.loop_header386
  %polly.indvar395 = phi i64 [ 0, %polly.loop_header386 ], [ %polly.indvar_next396, %polly.loop_header392 ]
  %135 = add nuw nsw i64 %polly.indvar395, %132
  %polly.access.mul.call2399 = mul nuw nsw i64 %135, 60
  %polly.access.add.call2400 = add nuw nsw i64 %polly.indvar389, %polly.access.mul.call2399
  %polly.access.call2401 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400
  %polly.access.call2401.load = load double, double* %polly.access.call2401, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2275 = add nuw nsw i64 %polly.indvar395, %polly.access.mul.Packed_MemRef_call2275
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275
  store double %polly.access.call2401.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next396, %indvars.iv865
  br i1 %exitcond867.not, label %polly.loop_exit394, label %polly.loop_header392

polly.loop_header403:                             ; preds = %polly.loop_exit411, %polly.loop_exit388
  %polly.indvar406 = phi i64 [ %pexp.p_div_q402, %polly.loop_exit388 ], [ 1, %polly.loop_exit411 ]
  %136 = mul nuw nsw i64 %polly.indvar406, 50
  %137 = sub nsw i64 %132, %136
  %138 = icmp sgt i64 %137, 0
  %139 = select i1 %138, i64 %137, i64 0
  %140 = mul nuw nsw i64 %polly.indvar406, -50
  %141 = icmp slt i64 %140, -30
  %142 = select i1 %141, i64 %140, i64 -30
  %143 = add nsw i64 %142, 79
  %polly.loop_guard419.not = icmp sgt i64 %139, %143
  br i1 %polly.loop_guard419.not, label %polly.loop_exit411, label %polly.loop_header409.preheader

polly.loop_header409.preheader:                   ; preds = %polly.loop_header403
  %144 = sub nsw i64 %indvars.iv871, %136
  %smax873 = call i64 @llvm.smax.i64(i64 %144, i64 0)
  %145 = add i64 %indvars.iv869, %smax873
  %146 = add i64 %145, %136
  br label %polly.loop_header409

polly.loop_exit411:                               ; preds = %polly.loop_exit418, %polly.loop_header403
  %polly.loop_cond408 = icmp eq i64 %polly.indvar406, 0
  br i1 %polly.loop_cond408, label %polly.loop_header403, label %polly.loop_exit405

polly.loop_header409:                             ; preds = %polly.loop_header409.preheader, %polly.loop_exit418
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_exit418 ], [ 0, %polly.loop_header409.preheader ]
  %147 = shl i64 %polly.indvar412, 3
  %polly.access.mul.Packed_MemRef_call2275434 = mul nuw nsw i64 %polly.indvar412, 80
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit426
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next413, 32
  br i1 %exitcond878.not, label %polly.loop_exit411, label %polly.loop_header409

polly.loop_header416:                             ; preds = %polly.loop_header409, %polly.loop_exit426
  %indvars.iv874 = phi i64 [ %146, %polly.loop_header409 ], [ %indvars.iv.next875, %polly.loop_exit426 ]
  %polly.indvar420 = phi i64 [ %139, %polly.loop_header409 ], [ %polly.indvar_next421, %polly.loop_exit426 ]
  %smin876 = call i64 @llvm.smin.i64(i64 %indvars.iv874, i64 19)
  %148 = add nuw i64 %polly.indvar420, %136
  %149 = add i64 %148, %133
  %polly.loop_guard427980 = icmp sgt i64 %149, -1
  br i1 %polly.loop_guard427980, label %polly.loop_header424.preheader, label %polly.loop_exit426

polly.loop_header424.preheader:                   ; preds = %polly.loop_header416
  %polly.access.add.Packed_MemRef_call2275435 = add nsw i64 %polly.access.mul.Packed_MemRef_call2275434, %149
  %polly.access.Packed_MemRef_call2275436 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435
  %_p_scalar_437 = load double, double* %polly.access.Packed_MemRef_call2275436, align 8
  %150 = mul i64 %148, 480
  %151 = add i64 %150, %147
  %scevgep442 = getelementptr i8, i8* %call1, i64 %151
  %scevgep442443 = bitcast i8* %scevgep442 to double*
  %_p_scalar_444 = load double, double* %scevgep442443, align 8, !alias.scope !82, !noalias !88
  %152 = mul i64 %148, 640
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_header424, %polly.loop_header416
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %polly.loop_cond422.not.not = icmp ult i64 %polly.indvar420, %143
  %indvars.iv.next875 = add i64 %indvars.iv874, 1
  br i1 %polly.loop_cond422.not.not, label %polly.loop_header416, label %polly.loop_exit418

polly.loop_header424:                             ; preds = %polly.loop_header424.preheader, %polly.loop_header424
  %polly.indvar428 = phi i64 [ %polly.indvar_next429, %polly.loop_header424 ], [ 0, %polly.loop_header424.preheader ]
  %153 = add nuw nsw i64 %polly.indvar428, %132
  %154 = mul nuw nsw i64 %153, 480
  %155 = add nuw nsw i64 %154, %147
  %scevgep431 = getelementptr i8, i8* %call1, i64 %155
  %scevgep431432 = bitcast i8* %scevgep431 to double*
  %_p_scalar_433 = load double, double* %scevgep431432, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_437, %_p_scalar_433
  %polly.access.add.Packed_MemRef_call2275439 = add nuw nsw i64 %polly.indvar428, %polly.access.mul.Packed_MemRef_call2275434
  %polly.access.Packed_MemRef_call2275440 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439
  %_p_scalar_441 = load double, double* %polly.access.Packed_MemRef_call2275440, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_444, %_p_scalar_441
  %156 = shl i64 %153, 3
  %157 = add i64 %156, %152
  %scevgep445 = getelementptr i8, i8* %call, i64 %157
  %scevgep445446 = bitcast i8* %scevgep445 to double*
  %_p_scalar_447 = load double, double* %scevgep445446, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_447
  store double %p_add42.i79, double* %scevgep445446, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %exitcond877.not = icmp eq i64 %polly.indvar428, %smin876
  br i1 %exitcond877.not, label %polly.loop_exit426, label %polly.loop_header424

polly.start450:                                   ; preds = %init_array.exit
  %malloccall452 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header536

polly.loop_header536:                             ; preds = %polly.loop_exit544, %polly.start450
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit544 ], [ 0, %polly.start450 ]
  %polly.indvar539 = phi i64 [ %polly.indvar_next540, %polly.loop_exit544 ], [ 1, %polly.start450 ]
  %158 = add i64 %indvar, 1
  %159 = mul nuw nsw i64 %polly.indvar539, 640
  %scevgep548 = getelementptr i8, i8* %call, i64 %159
  %min.iters.check1283 = icmp ult i64 %158, 4
  br i1 %min.iters.check1283, label %polly.loop_header542.preheader, label %vector.ph1284

vector.ph1284:                                    ; preds = %polly.loop_header536
  %n.vec1286 = and i64 %158, -4
  br label %vector.body1282

vector.body1282:                                  ; preds = %vector.body1282, %vector.ph1284
  %index1287 = phi i64 [ 0, %vector.ph1284 ], [ %index.next1288, %vector.body1282 ]
  %160 = shl nuw nsw i64 %index1287, 3
  %161 = getelementptr i8, i8* %scevgep548, i64 %160
  %162 = bitcast i8* %161 to <4 x double>*
  %wide.load1291 = load <4 x double>, <4 x double>* %162, align 8, !alias.scope !89, !noalias !91
  %163 = fmul fast <4 x double> %wide.load1291, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %164 = bitcast i8* %161 to <4 x double>*
  store <4 x double> %163, <4 x double>* %164, align 8, !alias.scope !89, !noalias !91
  %index.next1288 = add i64 %index1287, 4
  %165 = icmp eq i64 %index.next1288, %n.vec1286
  br i1 %165, label %middle.block1280, label %vector.body1282, !llvm.loop !95

middle.block1280:                                 ; preds = %vector.body1282
  %cmp.n1290 = icmp eq i64 %158, %n.vec1286
  br i1 %cmp.n1290, label %polly.loop_exit544, label %polly.loop_header542.preheader

polly.loop_header542.preheader:                   ; preds = %polly.loop_header536, %middle.block1280
  %polly.indvar545.ph = phi i64 [ 0, %polly.loop_header536 ], [ %n.vec1286, %middle.block1280 ]
  br label %polly.loop_header542

polly.loop_exit544:                               ; preds = %polly.loop_header542, %middle.block1280
  %polly.indvar_next540 = add nuw nsw i64 %polly.indvar539, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next540, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond898.not, label %polly.loop_header552.preheader, label %polly.loop_header536

polly.loop_header552.preheader:                   ; preds = %polly.loop_exit544
  %Packed_MemRef_call2453 = bitcast i8* %malloccall452 to double*
  br label %polly.loop_header558

polly.loop_header542:                             ; preds = %polly.loop_header542.preheader, %polly.loop_header542
  %polly.indvar545 = phi i64 [ %polly.indvar_next546, %polly.loop_header542 ], [ %polly.indvar545.ph, %polly.loop_header542.preheader ]
  %166 = shl nuw nsw i64 %polly.indvar545, 3
  %scevgep549 = getelementptr i8, i8* %scevgep548, i64 %166
  %scevgep549550 = bitcast i8* %scevgep549 to double*
  %_p_scalar_551 = load double, double* %scevgep549550, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_551, 1.200000e+00
  store double %p_mul.i, double* %scevgep549550, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next546 = add nuw nsw i64 %polly.indvar545, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next546, %polly.indvar539
  br i1 %exitcond897.not, label %polly.loop_exit544, label %polly.loop_header542, !llvm.loop !96

polly.loop_header558:                             ; preds = %polly.loop_exit583, %polly.loop_header552.preheader
  %indvars.iv888 = phi i64 [ %indvars.iv.next889, %polly.loop_exit583 ], [ 0, %polly.loop_header552.preheader ]
  %indvars.iv886 = phi i64 [ %indvars.iv.next887, %polly.loop_exit583 ], [ 0, %polly.loop_header552.preheader ]
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %polly.loop_exit583 ], [ 80, %polly.loop_header552.preheader ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit583 ], [ 0, %polly.loop_header552.preheader ]
  %167 = mul nuw nsw i64 %polly.indvar561, 20
  br label %polly.loop_header564

polly.loop_exit566:                               ; preds = %polly.loop_exit572
  %168 = mul nsw i64 %polly.indvar561, -20
  %169 = shl nuw nsw i64 %polly.indvar561, 1
  %pexp.p_div_q580 = udiv i64 %169, 5
  br label %polly.loop_header581

polly.loop_exit583:                               ; preds = %polly.loop_exit589
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %indvars.iv.next883 = add nsw i64 %indvars.iv882, -20
  %indvars.iv.next887 = add nsw i64 %indvars.iv886, -20
  %indvars.iv.next889 = add nuw nsw i64 %indvars.iv888, 20
  %exitcond896.not = icmp eq i64 %polly.indvar_next562, 4
  br i1 %exitcond896.not, label %polly.loop_header558.1, label %polly.loop_header558

polly.loop_header564:                             ; preds = %polly.loop_exit572, %polly.loop_header558
  %polly.indvar567 = phi i64 [ 0, %polly.loop_header558 ], [ %polly.indvar_next568, %polly.loop_exit572 ]
  %polly.access.mul.Packed_MemRef_call2453 = mul nuw nsw i64 %polly.indvar567, 80
  br label %polly.loop_header570

polly.loop_exit572:                               ; preds = %polly.loop_header570
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next568, 32
  br i1 %exitcond885.not, label %polly.loop_exit566, label %polly.loop_header564

polly.loop_header570:                             ; preds = %polly.loop_header570, %polly.loop_header564
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header564 ], [ %polly.indvar_next574, %polly.loop_header570 ]
  %170 = add nuw nsw i64 %polly.indvar573, %167
  %polly.access.mul.call2577 = mul nuw nsw i64 %170, 60
  %polly.access.add.call2578 = add nuw nsw i64 %polly.indvar567, %polly.access.mul.call2577
  %polly.access.call2579 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578
  %polly.access.call2579.load = load double, double* %polly.access.call2579, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2453 = add nuw nsw i64 %polly.indvar573, %polly.access.mul.Packed_MemRef_call2453
  %polly.access.Packed_MemRef_call2453 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453
  store double %polly.access.call2579.load, double* %polly.access.Packed_MemRef_call2453, align 8
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next574, %indvars.iv882
  br i1 %exitcond884.not, label %polly.loop_exit572, label %polly.loop_header570

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_exit566
  %polly.indvar584 = phi i64 [ %pexp.p_div_q580, %polly.loop_exit566 ], [ 1, %polly.loop_exit589 ]
  %171 = mul nuw nsw i64 %polly.indvar584, 50
  %172 = sub nsw i64 %167, %171
  %173 = icmp sgt i64 %172, 0
  %174 = select i1 %173, i64 %172, i64 0
  %175 = mul nuw nsw i64 %polly.indvar584, -50
  %176 = icmp slt i64 %175, -30
  %177 = select i1 %176, i64 %175, i64 -30
  %178 = add nsw i64 %177, 79
  %polly.loop_guard597.not = icmp sgt i64 %174, %178
  br i1 %polly.loop_guard597.not, label %polly.loop_exit589, label %polly.loop_header587.preheader

polly.loop_header587.preheader:                   ; preds = %polly.loop_header581
  %179 = sub nsw i64 %indvars.iv888, %171
  %smax890 = call i64 @llvm.smax.i64(i64 %179, i64 0)
  %180 = add i64 %indvars.iv886, %smax890
  %181 = add i64 %180, %171
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit596, %polly.loop_header581
  %polly.loop_cond586 = icmp eq i64 %polly.indvar584, 0
  br i1 %polly.loop_cond586, label %polly.loop_header581, label %polly.loop_exit583

polly.loop_header587:                             ; preds = %polly.loop_header587.preheader, %polly.loop_exit596
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit596 ], [ 0, %polly.loop_header587.preheader ]
  %182 = shl i64 %polly.indvar590, 3
  %polly.access.mul.Packed_MemRef_call2453612 = mul nuw nsw i64 %polly.indvar590, 80
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_exit604
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next591, 32
  br i1 %exitcond895.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header594:                             ; preds = %polly.loop_header587, %polly.loop_exit604
  %indvars.iv891 = phi i64 [ %181, %polly.loop_header587 ], [ %indvars.iv.next892, %polly.loop_exit604 ]
  %polly.indvar598 = phi i64 [ %174, %polly.loop_header587 ], [ %polly.indvar_next599, %polly.loop_exit604 ]
  %smin893 = call i64 @llvm.smin.i64(i64 %indvars.iv891, i64 19)
  %183 = add nuw i64 %polly.indvar598, %171
  %184 = add i64 %183, %168
  %polly.loop_guard605982 = icmp sgt i64 %184, -1
  br i1 %polly.loop_guard605982, label %polly.loop_header602.preheader, label %polly.loop_exit604

polly.loop_header602.preheader:                   ; preds = %polly.loop_header594
  %polly.access.add.Packed_MemRef_call2453613 = add nsw i64 %polly.access.mul.Packed_MemRef_call2453612, %184
  %polly.access.Packed_MemRef_call2453614 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613
  %_p_scalar_615 = load double, double* %polly.access.Packed_MemRef_call2453614, align 8
  %185 = mul i64 %183, 480
  %186 = add i64 %185, %182
  %scevgep620 = getelementptr i8, i8* %call1, i64 %186
  %scevgep620621 = bitcast i8* %scevgep620 to double*
  %_p_scalar_622 = load double, double* %scevgep620621, align 8, !alias.scope !92, !noalias !98
  %187 = mul i64 %183, 640
  br label %polly.loop_header602

polly.loop_exit604:                               ; preds = %polly.loop_header602, %polly.loop_header594
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600.not.not = icmp ult i64 %polly.indvar598, %178
  %indvars.iv.next892 = add i64 %indvars.iv891, 1
  br i1 %polly.loop_cond600.not.not, label %polly.loop_header594, label %polly.loop_exit596

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_header602
  %polly.indvar606 = phi i64 [ %polly.indvar_next607, %polly.loop_header602 ], [ 0, %polly.loop_header602.preheader ]
  %188 = add nuw nsw i64 %polly.indvar606, %167
  %189 = mul nuw nsw i64 %188, 480
  %190 = add nuw nsw i64 %189, %182
  %scevgep609 = getelementptr i8, i8* %call1, i64 %190
  %scevgep609610 = bitcast i8* %scevgep609 to double*
  %_p_scalar_611 = load double, double* %scevgep609610, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_615, %_p_scalar_611
  %polly.access.add.Packed_MemRef_call2453617 = add nuw nsw i64 %polly.indvar606, %polly.access.mul.Packed_MemRef_call2453612
  %polly.access.Packed_MemRef_call2453618 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617
  %_p_scalar_619 = load double, double* %polly.access.Packed_MemRef_call2453618, align 8
  %p_mul37.i = fmul fast double %_p_scalar_622, %_p_scalar_619
  %191 = shl i64 %188, 3
  %192 = add i64 %191, %187
  %scevgep623 = getelementptr i8, i8* %call, i64 %192
  %scevgep623624 = bitcast i8* %scevgep623 to double*
  %_p_scalar_625 = load double, double* %scevgep623624, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_625
  store double %p_add42.i, double* %scevgep623624, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond894.not = icmp eq i64 %polly.indvar606, %smin893
  br i1 %exitcond894.not, label %polly.loop_exit604, label %polly.loop_header602

polly.loop_header764:                             ; preds = %entry, %polly.loop_exit772
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_exit772 ], [ 0, %entry ]
  %193 = mul nuw nsw i64 %polly.indvar767, 640
  %194 = trunc i64 %polly.indvar767 to i32
  %broadcast.splatinsert1014 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat1015 = shufflevector <4 x i32> %broadcast.splatinsert1014, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1004

vector.body1004:                                  ; preds = %vector.body1004, %polly.loop_header764
  %index1006 = phi i64 [ 0, %polly.loop_header764 ], [ %index.next1007, %vector.body1004 ]
  %vec.ind1012 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header764 ], [ %vec.ind.next1013, %vector.body1004 ]
  %195 = mul <4 x i32> %vec.ind1012, %broadcast.splat1015
  %196 = add <4 x i32> %195, <i32 3, i32 3, i32 3, i32 3>
  %197 = urem <4 x i32> %196, <i32 80, i32 80, i32 80, i32 80>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %200 = shl i64 %index1006, 3
  %201 = add nuw nsw i64 %200, %193
  %202 = getelementptr i8, i8* %call, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %199, <4 x double>* %203, align 8, !alias.scope !99, !noalias !101
  %index.next1007 = add i64 %index1006, 4
  %vec.ind.next1013 = add <4 x i32> %vec.ind1012, <i32 4, i32 4, i32 4, i32 4>
  %204 = icmp eq i64 %index.next1007, 32
  br i1 %204, label %polly.loop_exit772, label %vector.body1004, !llvm.loop !104

polly.loop_exit772:                               ; preds = %vector.body1004
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond918.not = icmp eq i64 %polly.indvar_next768, 32
  br i1 %exitcond918.not, label %polly.loop_header764.1, label %polly.loop_header764

polly.loop_header791:                             ; preds = %polly.loop_exit772.2.2, %polly.loop_exit799
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_exit772.2.2 ]
  %205 = mul nuw nsw i64 %polly.indvar794, 480
  %206 = trunc i64 %polly.indvar794 to i32
  %broadcast.splatinsert1128 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1129 = shufflevector <4 x i32> %broadcast.splatinsert1128, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %polly.loop_header791
  %index1120 = phi i64 [ 0, %polly.loop_header791 ], [ %index.next1121, %vector.body1118 ]
  %vec.ind1126 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791 ], [ %vec.ind.next1127, %vector.body1118 ]
  %207 = mul <4 x i32> %vec.ind1126, %broadcast.splat1129
  %208 = add <4 x i32> %207, <i32 2, i32 2, i32 2, i32 2>
  %209 = urem <4 x i32> %208, <i32 60, i32 60, i32 60, i32 60>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %212 = shl i64 %index1120, 3
  %213 = add i64 %212, %205
  %214 = getelementptr i8, i8* %call2, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %211, <4 x double>* %215, align 8, !alias.scope !103, !noalias !105
  %index.next1121 = add i64 %index1120, 4
  %vec.ind.next1127 = add <4 x i32> %vec.ind1126, <i32 4, i32 4, i32 4, i32 4>
  %216 = icmp eq i64 %index.next1121, 32
  br i1 %216, label %polly.loop_exit799, label %vector.body1118, !llvm.loop !106

polly.loop_exit799:                               ; preds = %vector.body1118
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next795, 32
  br i1 %exitcond909.not, label %polly.loop_header791.1, label %polly.loop_header791

polly.loop_header817:                             ; preds = %polly.loop_exit799.1.2, %polly.loop_exit825
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_exit825 ], [ 0, %polly.loop_exit799.1.2 ]
  %217 = mul nuw nsw i64 %polly.indvar820, 480
  %218 = trunc i64 %polly.indvar820 to i32
  %broadcast.splatinsert1206 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1207 = shufflevector <4 x i32> %broadcast.splatinsert1206, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %polly.loop_header817
  %index1198 = phi i64 [ 0, %polly.loop_header817 ], [ %index.next1199, %vector.body1196 ]
  %vec.ind1204 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817 ], [ %vec.ind.next1205, %vector.body1196 ]
  %219 = mul <4 x i32> %vec.ind1204, %broadcast.splat1207
  %220 = add <4 x i32> %219, <i32 1, i32 1, i32 1, i32 1>
  %221 = urem <4 x i32> %220, <i32 80, i32 80, i32 80, i32 80>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %224 = shl i64 %index1198, 3
  %225 = add i64 %224, %217
  %226 = getelementptr i8, i8* %call1, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %223, <4 x double>* %227, align 8, !alias.scope !102, !noalias !107
  %index.next1199 = add i64 %index1198, 4
  %vec.ind.next1205 = add <4 x i32> %vec.ind1204, <i32 4, i32 4, i32 4, i32 4>
  %228 = icmp eq i64 %index.next1199, 32
  br i1 %228, label %polly.loop_exit825, label %vector.body1196, !llvm.loop !108

polly.loop_exit825:                               ; preds = %vector.body1196
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next821, 32
  br i1 %exitcond903.not, label %polly.loop_header817.1, label %polly.loop_header817

polly.loop_header205.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv856.1 = phi i64 [ %indvars.iv.next857.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %indvars.iv854.1 = phi i64 [ %indvars.iv.next855.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit229.1 ], [ 80, %polly.loop_exit229 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %229 = mul nuw nsw i64 %polly.indvar208.1, 20
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_exit219.1 ]
  %230 = add nuw nsw i64 %polly.indvar214.1, 32
  %polly.access.mul.Packed_MemRef_call2.1 = mul nuw nsw i64 %polly.indvar214.1, 80
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %231 = add nuw nsw i64 %polly.indvar220.1, %229
  %polly.access.mul.call2224.1 = mul nuw nsw i64 %231, 60
  %polly.access.add.call2225.1 = add nuw nsw i64 %230, %polly.access.mul.call2224.1
  %polly.access.call2226.1 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2225.1
  %polly.access.call2226.load.1 = load double, double* %polly.access.call2226.1, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar220.1, %polly.access.mul.Packed_MemRef_call2.1
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2226.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_header217.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %exitcond853.1.not = icmp eq i64 %polly.indvar_next215.1, 28
  br i1 %exitcond853.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %232 = mul nsw i64 %polly.indvar208.1, -20
  %233 = shl nuw nsw i64 %polly.indvar208.1, 1
  %pexp.p_div_q.1 = udiv i64 %233, 5
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit213.1
  %polly.indvar230.1 = phi i64 [ %pexp.p_div_q.1, %polly.loop_exit213.1 ], [ 1, %polly.loop_exit235.1 ]
  %234 = mul nuw nsw i64 %polly.indvar230.1, 50
  %235 = sub nsw i64 %229, %234
  %236 = icmp sgt i64 %235, 0
  %237 = select i1 %236, i64 %235, i64 0
  %238 = mul nuw nsw i64 %polly.indvar230.1, -50
  %239 = icmp slt i64 %238, -30
  %240 = select i1 %239, i64 %238, i64 -30
  %241 = add nsw i64 %240, 79
  %polly.loop_guard.not.1 = icmp sgt i64 %237, %241
  br i1 %polly.loop_guard.not.1, label %polly.loop_exit235.1, label %polly.loop_header233.preheader.1

polly.loop_header233.preheader.1:                 ; preds = %polly.loop_header227.1
  %242 = sub nsw i64 %indvars.iv856.1, %234
  %smax.1 = call i64 @llvm.smax.i64(i64 %242, i64 0)
  %243 = add i64 %indvars.iv854.1, %smax.1
  %244 = add i64 %243, %234
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit241.1, %polly.loop_header233.preheader.1
  %polly.indvar236.1 = phi i64 [ %polly.indvar_next237.1, %polly.loop_exit241.1 ], [ 0, %polly.loop_header233.preheader.1 ]
  %245 = shl i64 %polly.indvar236.1, 3
  %246 = add i64 %245, 256
  %polly.access.mul.Packed_MemRef_call2256.1 = mul nuw nsw i64 %polly.indvar236.1, 80
  br label %polly.loop_header239.1

polly.loop_header239.1:                           ; preds = %polly.loop_exit248.1, %polly.loop_header233.1
  %indvars.iv858.1 = phi i64 [ %244, %polly.loop_header233.1 ], [ %indvars.iv.next859.1, %polly.loop_exit248.1 ]
  %polly.indvar242.1 = phi i64 [ %237, %polly.loop_header233.1 ], [ %polly.indvar_next243.1, %polly.loop_exit248.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv858.1, i64 19)
  %247 = add nuw i64 %polly.indvar242.1, %234
  %248 = add i64 %247, %232
  %polly.loop_guard249.1979 = icmp sgt i64 %248, -1
  br i1 %polly.loop_guard249.1979, label %polly.loop_header246.preheader.1, label %polly.loop_exit248.1

polly.loop_header246.preheader.1:                 ; preds = %polly.loop_header239.1
  %polly.access.add.Packed_MemRef_call2257.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2256.1, %248
  %polly.access.Packed_MemRef_call2258.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.1
  %_p_scalar_259.1 = load double, double* %polly.access.Packed_MemRef_call2258.1, align 8
  %249 = mul i64 %247, 480
  %250 = add i64 %249, %246
  %scevgep264.1 = getelementptr i8, i8* %call1, i64 %250
  %scevgep264265.1 = bitcast i8* %scevgep264.1 to double*
  %_p_scalar_266.1 = load double, double* %scevgep264265.1, align 8, !alias.scope !71, !noalias !78
  %251 = mul i64 %247, 640
  br label %polly.loop_header246.1

polly.loop_header246.1:                           ; preds = %polly.loop_header246.1, %polly.loop_header246.preheader.1
  %polly.indvar250.1 = phi i64 [ %polly.indvar_next251.1, %polly.loop_header246.1 ], [ 0, %polly.loop_header246.preheader.1 ]
  %252 = add nuw nsw i64 %polly.indvar250.1, %229
  %253 = mul nuw nsw i64 %252, 480
  %254 = add nuw nsw i64 %253, %246
  %scevgep253.1 = getelementptr i8, i8* %call1, i64 %254
  %scevgep253254.1 = bitcast i8* %scevgep253.1 to double*
  %_p_scalar_255.1 = load double, double* %scevgep253254.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1 = fmul fast double %_p_scalar_259.1, %_p_scalar_255.1
  %polly.access.add.Packed_MemRef_call2261.1 = add nuw nsw i64 %polly.indvar250.1, %polly.access.mul.Packed_MemRef_call2256.1
  %polly.access.Packed_MemRef_call2262.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.1
  %_p_scalar_263.1 = load double, double* %polly.access.Packed_MemRef_call2262.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_266.1, %_p_scalar_263.1
  %255 = shl i64 %252, 3
  %256 = add i64 %255, %251
  %scevgep267.1 = getelementptr i8, i8* %call, i64 %256
  %scevgep267268.1 = bitcast i8* %scevgep267.1 to double*
  %_p_scalar_269.1 = load double, double* %scevgep267268.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_269.1
  store double %p_add42.i118.1, double* %scevgep267268.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251.1 = add nuw nsw i64 %polly.indvar250.1, 1
  %exitcond860.1.not = icmp eq i64 %polly.indvar250.1, %smin.1
  br i1 %exitcond860.1.not, label %polly.loop_exit248.1, label %polly.loop_header246.1

polly.loop_exit248.1:                             ; preds = %polly.loop_header246.1, %polly.loop_header239.1
  %polly.indvar_next243.1 = add nuw nsw i64 %polly.indvar242.1, 1
  %polly.loop_cond244.not.not.1 = icmp ult i64 %polly.indvar242.1, %241
  %indvars.iv.next859.1 = add i64 %indvars.iv858.1, 1
  br i1 %polly.loop_cond244.not.not.1, label %polly.loop_header239.1, label %polly.loop_exit241.1

polly.loop_exit241.1:                             ; preds = %polly.loop_exit248.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %exitcond861.1.not = icmp eq i64 %polly.indvar_next237.1, 28
  br i1 %exitcond861.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.1, %polly.loop_header227.1
  %polly.loop_cond232.1 = icmp eq i64 %polly.indvar230.1, 0
  br i1 %polly.loop_cond232.1, label %polly.loop_header227.1, label %polly.loop_exit229.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -20
  %indvars.iv.next855.1 = add nsw i64 %indvars.iv854.1, -20
  %indvars.iv.next857.1 = add nuw nsw i64 %indvars.iv856.1, 20
  %exitcond862.1.not = icmp eq i64 %polly.indvar_next209.1, 4
  br i1 %exitcond862.1.not, label %polly.loop_exit207.1, label %polly.loop_header205.1

polly.loop_exit207.1:                             ; preds = %polly.loop_exit229.1
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header380.1:                           ; preds = %polly.loop_exit405, %polly.loop_exit405.1
  %indvars.iv871.1 = phi i64 [ %indvars.iv.next872.1, %polly.loop_exit405.1 ], [ 0, %polly.loop_exit405 ]
  %indvars.iv869.1 = phi i64 [ %indvars.iv.next870.1, %polly.loop_exit405.1 ], [ 0, %polly.loop_exit405 ]
  %indvars.iv865.1 = phi i64 [ %indvars.iv.next866.1, %polly.loop_exit405.1 ], [ 80, %polly.loop_exit405 ]
  %polly.indvar383.1 = phi i64 [ %polly.indvar_next384.1, %polly.loop_exit405.1 ], [ 0, %polly.loop_exit405 ]
  %257 = mul nuw nsw i64 %polly.indvar383.1, 20
  br label %polly.loop_header386.1

polly.loop_header386.1:                           ; preds = %polly.loop_exit394.1, %polly.loop_header380.1
  %polly.indvar389.1 = phi i64 [ 0, %polly.loop_header380.1 ], [ %polly.indvar_next390.1, %polly.loop_exit394.1 ]
  %258 = add nuw nsw i64 %polly.indvar389.1, 32
  %polly.access.mul.Packed_MemRef_call2275.1 = mul nuw nsw i64 %polly.indvar389.1, 80
  br label %polly.loop_header392.1

polly.loop_header392.1:                           ; preds = %polly.loop_header392.1, %polly.loop_header386.1
  %polly.indvar395.1 = phi i64 [ 0, %polly.loop_header386.1 ], [ %polly.indvar_next396.1, %polly.loop_header392.1 ]
  %259 = add nuw nsw i64 %polly.indvar395.1, %257
  %polly.access.mul.call2399.1 = mul nuw nsw i64 %259, 60
  %polly.access.add.call2400.1 = add nuw nsw i64 %258, %polly.access.mul.call2399.1
  %polly.access.call2401.1 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400.1
  %polly.access.call2401.load.1 = load double, double* %polly.access.call2401.1, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2275.1 = add nuw nsw i64 %polly.indvar395.1, %polly.access.mul.Packed_MemRef_call2275.1
  %polly.access.Packed_MemRef_call2275.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275.1
  store double %polly.access.call2401.load.1, double* %polly.access.Packed_MemRef_call2275.1, align 8
  %polly.indvar_next396.1 = add nuw nsw i64 %polly.indvar395.1, 1
  %exitcond867.1.not = icmp eq i64 %polly.indvar_next396.1, %indvars.iv865.1
  br i1 %exitcond867.1.not, label %polly.loop_exit394.1, label %polly.loop_header392.1

polly.loop_exit394.1:                             ; preds = %polly.loop_header392.1
  %polly.indvar_next390.1 = add nuw nsw i64 %polly.indvar389.1, 1
  %exitcond868.1.not = icmp eq i64 %polly.indvar_next390.1, 28
  br i1 %exitcond868.1.not, label %polly.loop_exit388.1, label %polly.loop_header386.1

polly.loop_exit388.1:                             ; preds = %polly.loop_exit394.1
  %260 = mul nsw i64 %polly.indvar383.1, -20
  %261 = shl nuw nsw i64 %polly.indvar383.1, 1
  %pexp.p_div_q402.1 = udiv i64 %261, 5
  br label %polly.loop_header403.1

polly.loop_header403.1:                           ; preds = %polly.loop_exit411.1, %polly.loop_exit388.1
  %polly.indvar406.1 = phi i64 [ %pexp.p_div_q402.1, %polly.loop_exit388.1 ], [ 1, %polly.loop_exit411.1 ]
  %262 = mul nuw nsw i64 %polly.indvar406.1, 50
  %263 = sub nsw i64 %257, %262
  %264 = icmp sgt i64 %263, 0
  %265 = select i1 %264, i64 %263, i64 0
  %266 = mul nuw nsw i64 %polly.indvar406.1, -50
  %267 = icmp slt i64 %266, -30
  %268 = select i1 %267, i64 %266, i64 -30
  %269 = add nsw i64 %268, 79
  %polly.loop_guard419.not.1 = icmp sgt i64 %265, %269
  br i1 %polly.loop_guard419.not.1, label %polly.loop_exit411.1, label %polly.loop_header409.preheader.1

polly.loop_header409.preheader.1:                 ; preds = %polly.loop_header403.1
  %270 = sub nsw i64 %indvars.iv871.1, %262
  %smax873.1 = call i64 @llvm.smax.i64(i64 %270, i64 0)
  %271 = add i64 %indvars.iv869.1, %smax873.1
  %272 = add i64 %271, %262
  br label %polly.loop_header409.1

polly.loop_header409.1:                           ; preds = %polly.loop_exit418.1, %polly.loop_header409.preheader.1
  %polly.indvar412.1 = phi i64 [ %polly.indvar_next413.1, %polly.loop_exit418.1 ], [ 0, %polly.loop_header409.preheader.1 ]
  %273 = shl i64 %polly.indvar412.1, 3
  %274 = add i64 %273, 256
  %polly.access.mul.Packed_MemRef_call2275434.1 = mul nuw nsw i64 %polly.indvar412.1, 80
  br label %polly.loop_header416.1

polly.loop_header416.1:                           ; preds = %polly.loop_exit426.1, %polly.loop_header409.1
  %indvars.iv874.1 = phi i64 [ %272, %polly.loop_header409.1 ], [ %indvars.iv.next875.1, %polly.loop_exit426.1 ]
  %polly.indvar420.1 = phi i64 [ %265, %polly.loop_header409.1 ], [ %polly.indvar_next421.1, %polly.loop_exit426.1 ]
  %smin876.1 = call i64 @llvm.smin.i64(i64 %indvars.iv874.1, i64 19)
  %275 = add nuw i64 %polly.indvar420.1, %262
  %276 = add i64 %275, %260
  %polly.loop_guard427.1981 = icmp sgt i64 %276, -1
  br i1 %polly.loop_guard427.1981, label %polly.loop_header424.preheader.1, label %polly.loop_exit426.1

polly.loop_header424.preheader.1:                 ; preds = %polly.loop_header416.1
  %polly.access.add.Packed_MemRef_call2275435.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2275434.1, %276
  %polly.access.Packed_MemRef_call2275436.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.1
  %_p_scalar_437.1 = load double, double* %polly.access.Packed_MemRef_call2275436.1, align 8
  %277 = mul i64 %275, 480
  %278 = add i64 %277, %274
  %scevgep442.1 = getelementptr i8, i8* %call1, i64 %278
  %scevgep442443.1 = bitcast i8* %scevgep442.1 to double*
  %_p_scalar_444.1 = load double, double* %scevgep442443.1, align 8, !alias.scope !82, !noalias !88
  %279 = mul i64 %275, 640
  br label %polly.loop_header424.1

polly.loop_header424.1:                           ; preds = %polly.loop_header424.1, %polly.loop_header424.preheader.1
  %polly.indvar428.1 = phi i64 [ %polly.indvar_next429.1, %polly.loop_header424.1 ], [ 0, %polly.loop_header424.preheader.1 ]
  %280 = add nuw nsw i64 %polly.indvar428.1, %257
  %281 = mul nuw nsw i64 %280, 480
  %282 = add nuw nsw i64 %281, %274
  %scevgep431.1 = getelementptr i8, i8* %call1, i64 %282
  %scevgep431432.1 = bitcast i8* %scevgep431.1 to double*
  %_p_scalar_433.1 = load double, double* %scevgep431432.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1 = fmul fast double %_p_scalar_437.1, %_p_scalar_433.1
  %polly.access.add.Packed_MemRef_call2275439.1 = add nuw nsw i64 %polly.indvar428.1, %polly.access.mul.Packed_MemRef_call2275434.1
  %polly.access.Packed_MemRef_call2275440.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.1
  %_p_scalar_441.1 = load double, double* %polly.access.Packed_MemRef_call2275440.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_444.1, %_p_scalar_441.1
  %283 = shl i64 %280, 3
  %284 = add i64 %283, %279
  %scevgep445.1 = getelementptr i8, i8* %call, i64 %284
  %scevgep445446.1 = bitcast i8* %scevgep445.1 to double*
  %_p_scalar_447.1 = load double, double* %scevgep445446.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_447.1
  store double %p_add42.i79.1, double* %scevgep445446.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next429.1 = add nuw nsw i64 %polly.indvar428.1, 1
  %exitcond877.1.not = icmp eq i64 %polly.indvar428.1, %smin876.1
  br i1 %exitcond877.1.not, label %polly.loop_exit426.1, label %polly.loop_header424.1

polly.loop_exit426.1:                             ; preds = %polly.loop_header424.1, %polly.loop_header416.1
  %polly.indvar_next421.1 = add nuw nsw i64 %polly.indvar420.1, 1
  %polly.loop_cond422.not.not.1 = icmp ult i64 %polly.indvar420.1, %269
  %indvars.iv.next875.1 = add i64 %indvars.iv874.1, 1
  br i1 %polly.loop_cond422.not.not.1, label %polly.loop_header416.1, label %polly.loop_exit418.1

polly.loop_exit418.1:                             ; preds = %polly.loop_exit426.1
  %polly.indvar_next413.1 = add nuw nsw i64 %polly.indvar412.1, 1
  %exitcond878.1.not = icmp eq i64 %polly.indvar_next413.1, 28
  br i1 %exitcond878.1.not, label %polly.loop_exit411.1, label %polly.loop_header409.1

polly.loop_exit411.1:                             ; preds = %polly.loop_exit418.1, %polly.loop_header403.1
  %polly.loop_cond408.1 = icmp eq i64 %polly.indvar406.1, 0
  br i1 %polly.loop_cond408.1, label %polly.loop_header403.1, label %polly.loop_exit405.1

polly.loop_exit405.1:                             ; preds = %polly.loop_exit411.1
  %polly.indvar_next384.1 = add nuw nsw i64 %polly.indvar383.1, 1
  %indvars.iv.next866.1 = add nsw i64 %indvars.iv865.1, -20
  %indvars.iv.next870.1 = add nsw i64 %indvars.iv869.1, -20
  %indvars.iv.next872.1 = add nuw nsw i64 %indvars.iv871.1, 20
  %exitcond879.1.not = icmp eq i64 %polly.indvar_next384.1, 4
  br i1 %exitcond879.1.not, label %polly.loop_exit382.1, label %polly.loop_header380.1

polly.loop_exit382.1:                             ; preds = %polly.loop_exit405.1
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header558.1:                           ; preds = %polly.loop_exit583, %polly.loop_exit583.1
  %indvars.iv888.1 = phi i64 [ %indvars.iv.next889.1, %polly.loop_exit583.1 ], [ 0, %polly.loop_exit583 ]
  %indvars.iv886.1 = phi i64 [ %indvars.iv.next887.1, %polly.loop_exit583.1 ], [ 0, %polly.loop_exit583 ]
  %indvars.iv882.1 = phi i64 [ %indvars.iv.next883.1, %polly.loop_exit583.1 ], [ 80, %polly.loop_exit583 ]
  %polly.indvar561.1 = phi i64 [ %polly.indvar_next562.1, %polly.loop_exit583.1 ], [ 0, %polly.loop_exit583 ]
  %285 = mul nuw nsw i64 %polly.indvar561.1, 20
  br label %polly.loop_header564.1

polly.loop_header564.1:                           ; preds = %polly.loop_exit572.1, %polly.loop_header558.1
  %polly.indvar567.1 = phi i64 [ 0, %polly.loop_header558.1 ], [ %polly.indvar_next568.1, %polly.loop_exit572.1 ]
  %286 = add nuw nsw i64 %polly.indvar567.1, 32
  %polly.access.mul.Packed_MemRef_call2453.1 = mul nuw nsw i64 %polly.indvar567.1, 80
  br label %polly.loop_header570.1

polly.loop_header570.1:                           ; preds = %polly.loop_header570.1, %polly.loop_header564.1
  %polly.indvar573.1 = phi i64 [ 0, %polly.loop_header564.1 ], [ %polly.indvar_next574.1, %polly.loop_header570.1 ]
  %287 = add nuw nsw i64 %polly.indvar573.1, %285
  %polly.access.mul.call2577.1 = mul nuw nsw i64 %287, 60
  %polly.access.add.call2578.1 = add nuw nsw i64 %286, %polly.access.mul.call2577.1
  %polly.access.call2579.1 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578.1
  %polly.access.call2579.load.1 = load double, double* %polly.access.call2579.1, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2453.1 = add nuw nsw i64 %polly.indvar573.1, %polly.access.mul.Packed_MemRef_call2453.1
  %polly.access.Packed_MemRef_call2453.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453.1
  store double %polly.access.call2579.load.1, double* %polly.access.Packed_MemRef_call2453.1, align 8
  %polly.indvar_next574.1 = add nuw nsw i64 %polly.indvar573.1, 1
  %exitcond884.1.not = icmp eq i64 %polly.indvar_next574.1, %indvars.iv882.1
  br i1 %exitcond884.1.not, label %polly.loop_exit572.1, label %polly.loop_header570.1

polly.loop_exit572.1:                             ; preds = %polly.loop_header570.1
  %polly.indvar_next568.1 = add nuw nsw i64 %polly.indvar567.1, 1
  %exitcond885.1.not = icmp eq i64 %polly.indvar_next568.1, 28
  br i1 %exitcond885.1.not, label %polly.loop_exit566.1, label %polly.loop_header564.1

polly.loop_exit566.1:                             ; preds = %polly.loop_exit572.1
  %288 = mul nsw i64 %polly.indvar561.1, -20
  %289 = shl nuw nsw i64 %polly.indvar561.1, 1
  %pexp.p_div_q580.1 = udiv i64 %289, 5
  br label %polly.loop_header581.1

polly.loop_header581.1:                           ; preds = %polly.loop_exit589.1, %polly.loop_exit566.1
  %polly.indvar584.1 = phi i64 [ %pexp.p_div_q580.1, %polly.loop_exit566.1 ], [ 1, %polly.loop_exit589.1 ]
  %290 = mul nuw nsw i64 %polly.indvar584.1, 50
  %291 = sub nsw i64 %285, %290
  %292 = icmp sgt i64 %291, 0
  %293 = select i1 %292, i64 %291, i64 0
  %294 = mul nuw nsw i64 %polly.indvar584.1, -50
  %295 = icmp slt i64 %294, -30
  %296 = select i1 %295, i64 %294, i64 -30
  %297 = add nsw i64 %296, 79
  %polly.loop_guard597.not.1 = icmp sgt i64 %293, %297
  br i1 %polly.loop_guard597.not.1, label %polly.loop_exit589.1, label %polly.loop_header587.preheader.1

polly.loop_header587.preheader.1:                 ; preds = %polly.loop_header581.1
  %298 = sub nsw i64 %indvars.iv888.1, %290
  %smax890.1 = call i64 @llvm.smax.i64(i64 %298, i64 0)
  %299 = add i64 %indvars.iv886.1, %smax890.1
  %300 = add i64 %299, %290
  br label %polly.loop_header587.1

polly.loop_header587.1:                           ; preds = %polly.loop_exit596.1, %polly.loop_header587.preheader.1
  %polly.indvar590.1 = phi i64 [ %polly.indvar_next591.1, %polly.loop_exit596.1 ], [ 0, %polly.loop_header587.preheader.1 ]
  %301 = shl i64 %polly.indvar590.1, 3
  %302 = add i64 %301, 256
  %polly.access.mul.Packed_MemRef_call2453612.1 = mul nuw nsw i64 %polly.indvar590.1, 80
  br label %polly.loop_header594.1

polly.loop_header594.1:                           ; preds = %polly.loop_exit604.1, %polly.loop_header587.1
  %indvars.iv891.1 = phi i64 [ %300, %polly.loop_header587.1 ], [ %indvars.iv.next892.1, %polly.loop_exit604.1 ]
  %polly.indvar598.1 = phi i64 [ %293, %polly.loop_header587.1 ], [ %polly.indvar_next599.1, %polly.loop_exit604.1 ]
  %smin893.1 = call i64 @llvm.smin.i64(i64 %indvars.iv891.1, i64 19)
  %303 = add nuw i64 %polly.indvar598.1, %290
  %304 = add i64 %303, %288
  %polly.loop_guard605.1983 = icmp sgt i64 %304, -1
  br i1 %polly.loop_guard605.1983, label %polly.loop_header602.preheader.1, label %polly.loop_exit604.1

polly.loop_header602.preheader.1:                 ; preds = %polly.loop_header594.1
  %polly.access.add.Packed_MemRef_call2453613.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2453612.1, %304
  %polly.access.Packed_MemRef_call2453614.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.1
  %_p_scalar_615.1 = load double, double* %polly.access.Packed_MemRef_call2453614.1, align 8
  %305 = mul i64 %303, 480
  %306 = add i64 %305, %302
  %scevgep620.1 = getelementptr i8, i8* %call1, i64 %306
  %scevgep620621.1 = bitcast i8* %scevgep620.1 to double*
  %_p_scalar_622.1 = load double, double* %scevgep620621.1, align 8, !alias.scope !92, !noalias !98
  %307 = mul i64 %303, 640
  br label %polly.loop_header602.1

polly.loop_header602.1:                           ; preds = %polly.loop_header602.1, %polly.loop_header602.preheader.1
  %polly.indvar606.1 = phi i64 [ %polly.indvar_next607.1, %polly.loop_header602.1 ], [ 0, %polly.loop_header602.preheader.1 ]
  %308 = add nuw nsw i64 %polly.indvar606.1, %285
  %309 = mul nuw nsw i64 %308, 480
  %310 = add nuw nsw i64 %309, %302
  %scevgep609.1 = getelementptr i8, i8* %call1, i64 %310
  %scevgep609610.1 = bitcast i8* %scevgep609.1 to double*
  %_p_scalar_611.1 = load double, double* %scevgep609610.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1 = fmul fast double %_p_scalar_615.1, %_p_scalar_611.1
  %polly.access.add.Packed_MemRef_call2453617.1 = add nuw nsw i64 %polly.indvar606.1, %polly.access.mul.Packed_MemRef_call2453612.1
  %polly.access.Packed_MemRef_call2453618.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.1
  %_p_scalar_619.1 = load double, double* %polly.access.Packed_MemRef_call2453618.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_622.1, %_p_scalar_619.1
  %311 = shl i64 %308, 3
  %312 = add i64 %311, %307
  %scevgep623.1 = getelementptr i8, i8* %call, i64 %312
  %scevgep623624.1 = bitcast i8* %scevgep623.1 to double*
  %_p_scalar_625.1 = load double, double* %scevgep623624.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_625.1
  store double %p_add42.i.1, double* %scevgep623624.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next607.1 = add nuw nsw i64 %polly.indvar606.1, 1
  %exitcond894.1.not = icmp eq i64 %polly.indvar606.1, %smin893.1
  br i1 %exitcond894.1.not, label %polly.loop_exit604.1, label %polly.loop_header602.1

polly.loop_exit604.1:                             ; preds = %polly.loop_header602.1, %polly.loop_header594.1
  %polly.indvar_next599.1 = add nuw nsw i64 %polly.indvar598.1, 1
  %polly.loop_cond600.not.not.1 = icmp ult i64 %polly.indvar598.1, %297
  %indvars.iv.next892.1 = add i64 %indvars.iv891.1, 1
  br i1 %polly.loop_cond600.not.not.1, label %polly.loop_header594.1, label %polly.loop_exit596.1

polly.loop_exit596.1:                             ; preds = %polly.loop_exit604.1
  %polly.indvar_next591.1 = add nuw nsw i64 %polly.indvar590.1, 1
  %exitcond895.1.not = icmp eq i64 %polly.indvar_next591.1, 28
  br i1 %exitcond895.1.not, label %polly.loop_exit589.1, label %polly.loop_header587.1

polly.loop_exit589.1:                             ; preds = %polly.loop_exit596.1, %polly.loop_header581.1
  %polly.loop_cond586.1 = icmp eq i64 %polly.indvar584.1, 0
  br i1 %polly.loop_cond586.1, label %polly.loop_header581.1, label %polly.loop_exit583.1

polly.loop_exit583.1:                             ; preds = %polly.loop_exit589.1
  %polly.indvar_next562.1 = add nuw nsw i64 %polly.indvar561.1, 1
  %indvars.iv.next883.1 = add nsw i64 %indvars.iv882.1, -20
  %indvars.iv.next887.1 = add nsw i64 %indvars.iv886.1, -20
  %indvars.iv.next889.1 = add nuw nsw i64 %indvars.iv888.1, 20
  %exitcond896.1.not = icmp eq i64 %polly.indvar_next562.1, 4
  br i1 %exitcond896.1.not, label %polly.loop_exit560.1, label %polly.loop_header558.1

polly.loop_exit560.1:                             ; preds = %polly.loop_exit583.1
  tail call void @free(i8* %malloccall452)
  br label %kernel_syr2k.exit

polly.loop_header817.1:                           ; preds = %polly.loop_exit825, %polly.loop_exit825.1
  %polly.indvar820.1 = phi i64 [ %polly.indvar_next821.1, %polly.loop_exit825.1 ], [ 0, %polly.loop_exit825 ]
  %313 = mul nuw nsw i64 %polly.indvar820.1, 480
  %314 = trunc i64 %polly.indvar820.1 to i32
  %broadcast.splatinsert1218 = insertelement <4 x i32> poison, i32 %314, i32 0
  %broadcast.splat1219 = shufflevector <4 x i32> %broadcast.splatinsert1218, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1210

vector.body1210:                                  ; preds = %vector.body1210, %polly.loop_header817.1
  %index1212 = phi i64 [ 0, %polly.loop_header817.1 ], [ %index.next1213, %vector.body1210 ]
  %vec.ind1216 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1 ], [ %vec.ind.next1217, %vector.body1210 ]
  %315 = add nuw nsw <4 x i64> %vec.ind1216, <i64 32, i64 32, i64 32, i64 32>
  %316 = trunc <4 x i64> %315 to <4 x i32>
  %317 = mul <4 x i32> %broadcast.splat1219, %316
  %318 = add <4 x i32> %317, <i32 1, i32 1, i32 1, i32 1>
  %319 = urem <4 x i32> %318, <i32 80, i32 80, i32 80, i32 80>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %322 = extractelement <4 x i64> %315, i32 0
  %323 = shl i64 %322, 3
  %324 = add i64 %323, %313
  %325 = getelementptr i8, i8* %call1, i64 %324
  %326 = bitcast i8* %325 to <4 x double>*
  store <4 x double> %321, <4 x double>* %326, align 8, !alias.scope !102, !noalias !107
  %index.next1213 = add i64 %index1212, 4
  %vec.ind.next1217 = add <4 x i64> %vec.ind1216, <i64 4, i64 4, i64 4, i64 4>
  %327 = icmp eq i64 %index.next1213, 28
  br i1 %327, label %polly.loop_exit825.1, label %vector.body1210, !llvm.loop !109

polly.loop_exit825.1:                             ; preds = %vector.body1210
  %polly.indvar_next821.1 = add nuw nsw i64 %polly.indvar820.1, 1
  %exitcond903.1.not = icmp eq i64 %polly.indvar_next821.1, 32
  br i1 %exitcond903.1.not, label %polly.loop_header817.1923, label %polly.loop_header817.1

polly.loop_header817.1923:                        ; preds = %polly.loop_exit825.1, %polly.loop_exit825.1934
  %polly.indvar820.1922 = phi i64 [ %polly.indvar_next821.1932, %polly.loop_exit825.1934 ], [ 0, %polly.loop_exit825.1 ]
  %328 = add nuw nsw i64 %polly.indvar820.1922, 32
  %329 = mul nuw nsw i64 %328, 480
  %330 = trunc i64 %328 to i32
  %broadcast.splatinsert1232 = insertelement <4 x i32> poison, i32 %330, i32 0
  %broadcast.splat1233 = shufflevector <4 x i32> %broadcast.splatinsert1232, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %polly.loop_header817.1923
  %index1224 = phi i64 [ 0, %polly.loop_header817.1923 ], [ %index.next1225, %vector.body1222 ]
  %vec.ind1230 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817.1923 ], [ %vec.ind.next1231, %vector.body1222 ]
  %331 = mul <4 x i32> %vec.ind1230, %broadcast.splat1233
  %332 = add <4 x i32> %331, <i32 1, i32 1, i32 1, i32 1>
  %333 = urem <4 x i32> %332, <i32 80, i32 80, i32 80, i32 80>
  %334 = sitofp <4 x i32> %333 to <4 x double>
  %335 = fmul fast <4 x double> %334, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %336 = shl i64 %index1224, 3
  %337 = add i64 %336, %329
  %338 = getelementptr i8, i8* %call1, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %335, <4 x double>* %339, align 8, !alias.scope !102, !noalias !107
  %index.next1225 = add i64 %index1224, 4
  %vec.ind.next1231 = add <4 x i32> %vec.ind1230, <i32 4, i32 4, i32 4, i32 4>
  %340 = icmp eq i64 %index.next1225, 32
  br i1 %340, label %polly.loop_exit825.1934, label %vector.body1222, !llvm.loop !110

polly.loop_exit825.1934:                          ; preds = %vector.body1222
  %polly.indvar_next821.1932 = add nuw nsw i64 %polly.indvar820.1922, 1
  %exitcond903.1933.not = icmp eq i64 %polly.indvar_next821.1932, 32
  br i1 %exitcond903.1933.not, label %polly.loop_header817.1.1, label %polly.loop_header817.1923

polly.loop_header817.1.1:                         ; preds = %polly.loop_exit825.1934, %polly.loop_exit825.1.1
  %polly.indvar820.1.1 = phi i64 [ %polly.indvar_next821.1.1, %polly.loop_exit825.1.1 ], [ 0, %polly.loop_exit825.1934 ]
  %341 = add nuw nsw i64 %polly.indvar820.1.1, 32
  %342 = mul nuw nsw i64 %341, 480
  %343 = trunc i64 %341 to i32
  %broadcast.splatinsert1244 = insertelement <4 x i32> poison, i32 %343, i32 0
  %broadcast.splat1245 = shufflevector <4 x i32> %broadcast.splatinsert1244, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %polly.loop_header817.1.1
  %index1238 = phi i64 [ 0, %polly.loop_header817.1.1 ], [ %index.next1239, %vector.body1236 ]
  %vec.ind1242 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1.1 ], [ %vec.ind.next1243, %vector.body1236 ]
  %344 = add nuw nsw <4 x i64> %vec.ind1242, <i64 32, i64 32, i64 32, i64 32>
  %345 = trunc <4 x i64> %344 to <4 x i32>
  %346 = mul <4 x i32> %broadcast.splat1245, %345
  %347 = add <4 x i32> %346, <i32 1, i32 1, i32 1, i32 1>
  %348 = urem <4 x i32> %347, <i32 80, i32 80, i32 80, i32 80>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %351 = extractelement <4 x i64> %344, i32 0
  %352 = shl i64 %351, 3
  %353 = add i64 %352, %342
  %354 = getelementptr i8, i8* %call1, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %350, <4 x double>* %355, align 8, !alias.scope !102, !noalias !107
  %index.next1239 = add i64 %index1238, 4
  %vec.ind.next1243 = add <4 x i64> %vec.ind1242, <i64 4, i64 4, i64 4, i64 4>
  %356 = icmp eq i64 %index.next1239, 28
  br i1 %356, label %polly.loop_exit825.1.1, label %vector.body1236, !llvm.loop !111

polly.loop_exit825.1.1:                           ; preds = %vector.body1236
  %polly.indvar_next821.1.1 = add nuw nsw i64 %polly.indvar820.1.1, 1
  %exitcond903.1.1.not = icmp eq i64 %polly.indvar_next821.1.1, 32
  br i1 %exitcond903.1.1.not, label %polly.loop_header817.2, label %polly.loop_header817.1.1

polly.loop_header817.2:                           ; preds = %polly.loop_exit825.1.1, %polly.loop_exit825.2
  %polly.indvar820.2 = phi i64 [ %polly.indvar_next821.2, %polly.loop_exit825.2 ], [ 0, %polly.loop_exit825.1.1 ]
  %357 = add nuw nsw i64 %polly.indvar820.2, 64
  %358 = mul nuw nsw i64 %357, 480
  %359 = trunc i64 %357 to i32
  %broadcast.splatinsert1258 = insertelement <4 x i32> poison, i32 %359, i32 0
  %broadcast.splat1259 = shufflevector <4 x i32> %broadcast.splatinsert1258, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1248

vector.body1248:                                  ; preds = %vector.body1248, %polly.loop_header817.2
  %index1250 = phi i64 [ 0, %polly.loop_header817.2 ], [ %index.next1251, %vector.body1248 ]
  %vec.ind1256 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817.2 ], [ %vec.ind.next1257, %vector.body1248 ]
  %360 = mul <4 x i32> %vec.ind1256, %broadcast.splat1259
  %361 = add <4 x i32> %360, <i32 1, i32 1, i32 1, i32 1>
  %362 = urem <4 x i32> %361, <i32 80, i32 80, i32 80, i32 80>
  %363 = sitofp <4 x i32> %362 to <4 x double>
  %364 = fmul fast <4 x double> %363, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %365 = shl i64 %index1250, 3
  %366 = add i64 %365, %358
  %367 = getelementptr i8, i8* %call1, i64 %366
  %368 = bitcast i8* %367 to <4 x double>*
  store <4 x double> %364, <4 x double>* %368, align 8, !alias.scope !102, !noalias !107
  %index.next1251 = add i64 %index1250, 4
  %vec.ind.next1257 = add <4 x i32> %vec.ind1256, <i32 4, i32 4, i32 4, i32 4>
  %369 = icmp eq i64 %index.next1251, 32
  br i1 %369, label %polly.loop_exit825.2, label %vector.body1248, !llvm.loop !112

polly.loop_exit825.2:                             ; preds = %vector.body1248
  %polly.indvar_next821.2 = add nuw nsw i64 %polly.indvar820.2, 1
  %exitcond903.2.not = icmp eq i64 %polly.indvar_next821.2, 16
  br i1 %exitcond903.2.not, label %polly.loop_header817.1.2, label %polly.loop_header817.2

polly.loop_header817.1.2:                         ; preds = %polly.loop_exit825.2, %polly.loop_exit825.1.2
  %polly.indvar820.1.2 = phi i64 [ %polly.indvar_next821.1.2, %polly.loop_exit825.1.2 ], [ 0, %polly.loop_exit825.2 ]
  %370 = add nuw nsw i64 %polly.indvar820.1.2, 64
  %371 = mul nuw nsw i64 %370, 480
  %372 = trunc i64 %370 to i32
  %broadcast.splatinsert1270 = insertelement <4 x i32> poison, i32 %372, i32 0
  %broadcast.splat1271 = shufflevector <4 x i32> %broadcast.splatinsert1270, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %polly.loop_header817.1.2
  %index1264 = phi i64 [ 0, %polly.loop_header817.1.2 ], [ %index.next1265, %vector.body1262 ]
  %vec.ind1268 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1.2 ], [ %vec.ind.next1269, %vector.body1262 ]
  %373 = add nuw nsw <4 x i64> %vec.ind1268, <i64 32, i64 32, i64 32, i64 32>
  %374 = trunc <4 x i64> %373 to <4 x i32>
  %375 = mul <4 x i32> %broadcast.splat1271, %374
  %376 = add <4 x i32> %375, <i32 1, i32 1, i32 1, i32 1>
  %377 = urem <4 x i32> %376, <i32 80, i32 80, i32 80, i32 80>
  %378 = sitofp <4 x i32> %377 to <4 x double>
  %379 = fmul fast <4 x double> %378, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %380 = extractelement <4 x i64> %373, i32 0
  %381 = shl i64 %380, 3
  %382 = add i64 %381, %371
  %383 = getelementptr i8, i8* %call1, i64 %382
  %384 = bitcast i8* %383 to <4 x double>*
  store <4 x double> %379, <4 x double>* %384, align 8, !alias.scope !102, !noalias !107
  %index.next1265 = add i64 %index1264, 4
  %vec.ind.next1269 = add <4 x i64> %vec.ind1268, <i64 4, i64 4, i64 4, i64 4>
  %385 = icmp eq i64 %index.next1265, 28
  br i1 %385, label %polly.loop_exit825.1.2, label %vector.body1262, !llvm.loop !113

polly.loop_exit825.1.2:                           ; preds = %vector.body1262
  %polly.indvar_next821.1.2 = add nuw nsw i64 %polly.indvar820.1.2, 1
  %exitcond903.1.2.not = icmp eq i64 %polly.indvar_next821.1.2, 16
  br i1 %exitcond903.1.2.not, label %init_array.exit, label %polly.loop_header817.1.2

polly.loop_header791.1:                           ; preds = %polly.loop_exit799, %polly.loop_exit799.1
  %polly.indvar794.1 = phi i64 [ %polly.indvar_next795.1, %polly.loop_exit799.1 ], [ 0, %polly.loop_exit799 ]
  %386 = mul nuw nsw i64 %polly.indvar794.1, 480
  %387 = trunc i64 %polly.indvar794.1 to i32
  %broadcast.splatinsert1140 = insertelement <4 x i32> poison, i32 %387, i32 0
  %broadcast.splat1141 = shufflevector <4 x i32> %broadcast.splatinsert1140, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1132

vector.body1132:                                  ; preds = %vector.body1132, %polly.loop_header791.1
  %index1134 = phi i64 [ 0, %polly.loop_header791.1 ], [ %index.next1135, %vector.body1132 ]
  %vec.ind1138 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1 ], [ %vec.ind.next1139, %vector.body1132 ]
  %388 = add nuw nsw <4 x i64> %vec.ind1138, <i64 32, i64 32, i64 32, i64 32>
  %389 = trunc <4 x i64> %388 to <4 x i32>
  %390 = mul <4 x i32> %broadcast.splat1141, %389
  %391 = add <4 x i32> %390, <i32 2, i32 2, i32 2, i32 2>
  %392 = urem <4 x i32> %391, <i32 60, i32 60, i32 60, i32 60>
  %393 = sitofp <4 x i32> %392 to <4 x double>
  %394 = fmul fast <4 x double> %393, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %395 = extractelement <4 x i64> %388, i32 0
  %396 = shl i64 %395, 3
  %397 = add i64 %396, %386
  %398 = getelementptr i8, i8* %call2, i64 %397
  %399 = bitcast i8* %398 to <4 x double>*
  store <4 x double> %394, <4 x double>* %399, align 8, !alias.scope !103, !noalias !105
  %index.next1135 = add i64 %index1134, 4
  %vec.ind.next1139 = add <4 x i64> %vec.ind1138, <i64 4, i64 4, i64 4, i64 4>
  %400 = icmp eq i64 %index.next1135, 28
  br i1 %400, label %polly.loop_exit799.1, label %vector.body1132, !llvm.loop !114

polly.loop_exit799.1:                             ; preds = %vector.body1132
  %polly.indvar_next795.1 = add nuw nsw i64 %polly.indvar794.1, 1
  %exitcond909.1.not = icmp eq i64 %polly.indvar_next795.1, 32
  br i1 %exitcond909.1.not, label %polly.loop_header791.1937, label %polly.loop_header791.1

polly.loop_header791.1937:                        ; preds = %polly.loop_exit799.1, %polly.loop_exit799.1948
  %polly.indvar794.1936 = phi i64 [ %polly.indvar_next795.1946, %polly.loop_exit799.1948 ], [ 0, %polly.loop_exit799.1 ]
  %401 = add nuw nsw i64 %polly.indvar794.1936, 32
  %402 = mul nuw nsw i64 %401, 480
  %403 = trunc i64 %401 to i32
  %broadcast.splatinsert1154 = insertelement <4 x i32> poison, i32 %403, i32 0
  %broadcast.splat1155 = shufflevector <4 x i32> %broadcast.splatinsert1154, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %polly.loop_header791.1937
  %index1146 = phi i64 [ 0, %polly.loop_header791.1937 ], [ %index.next1147, %vector.body1144 ]
  %vec.ind1152 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791.1937 ], [ %vec.ind.next1153, %vector.body1144 ]
  %404 = mul <4 x i32> %vec.ind1152, %broadcast.splat1155
  %405 = add <4 x i32> %404, <i32 2, i32 2, i32 2, i32 2>
  %406 = urem <4 x i32> %405, <i32 60, i32 60, i32 60, i32 60>
  %407 = sitofp <4 x i32> %406 to <4 x double>
  %408 = fmul fast <4 x double> %407, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %409 = shl i64 %index1146, 3
  %410 = add i64 %409, %402
  %411 = getelementptr i8, i8* %call2, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %408, <4 x double>* %412, align 8, !alias.scope !103, !noalias !105
  %index.next1147 = add i64 %index1146, 4
  %vec.ind.next1153 = add <4 x i32> %vec.ind1152, <i32 4, i32 4, i32 4, i32 4>
  %413 = icmp eq i64 %index.next1147, 32
  br i1 %413, label %polly.loop_exit799.1948, label %vector.body1144, !llvm.loop !115

polly.loop_exit799.1948:                          ; preds = %vector.body1144
  %polly.indvar_next795.1946 = add nuw nsw i64 %polly.indvar794.1936, 1
  %exitcond909.1947.not = icmp eq i64 %polly.indvar_next795.1946, 32
  br i1 %exitcond909.1947.not, label %polly.loop_header791.1.1, label %polly.loop_header791.1937

polly.loop_header791.1.1:                         ; preds = %polly.loop_exit799.1948, %polly.loop_exit799.1.1
  %polly.indvar794.1.1 = phi i64 [ %polly.indvar_next795.1.1, %polly.loop_exit799.1.1 ], [ 0, %polly.loop_exit799.1948 ]
  %414 = add nuw nsw i64 %polly.indvar794.1.1, 32
  %415 = mul nuw nsw i64 %414, 480
  %416 = trunc i64 %414 to i32
  %broadcast.splatinsert1166 = insertelement <4 x i32> poison, i32 %416, i32 0
  %broadcast.splat1167 = shufflevector <4 x i32> %broadcast.splatinsert1166, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1158

vector.body1158:                                  ; preds = %vector.body1158, %polly.loop_header791.1.1
  %index1160 = phi i64 [ 0, %polly.loop_header791.1.1 ], [ %index.next1161, %vector.body1158 ]
  %vec.ind1164 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1.1 ], [ %vec.ind.next1165, %vector.body1158 ]
  %417 = add nuw nsw <4 x i64> %vec.ind1164, <i64 32, i64 32, i64 32, i64 32>
  %418 = trunc <4 x i64> %417 to <4 x i32>
  %419 = mul <4 x i32> %broadcast.splat1167, %418
  %420 = add <4 x i32> %419, <i32 2, i32 2, i32 2, i32 2>
  %421 = urem <4 x i32> %420, <i32 60, i32 60, i32 60, i32 60>
  %422 = sitofp <4 x i32> %421 to <4 x double>
  %423 = fmul fast <4 x double> %422, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %424 = extractelement <4 x i64> %417, i32 0
  %425 = shl i64 %424, 3
  %426 = add i64 %425, %415
  %427 = getelementptr i8, i8* %call2, i64 %426
  %428 = bitcast i8* %427 to <4 x double>*
  store <4 x double> %423, <4 x double>* %428, align 8, !alias.scope !103, !noalias !105
  %index.next1161 = add i64 %index1160, 4
  %vec.ind.next1165 = add <4 x i64> %vec.ind1164, <i64 4, i64 4, i64 4, i64 4>
  %429 = icmp eq i64 %index.next1161, 28
  br i1 %429, label %polly.loop_exit799.1.1, label %vector.body1158, !llvm.loop !116

polly.loop_exit799.1.1:                           ; preds = %vector.body1158
  %polly.indvar_next795.1.1 = add nuw nsw i64 %polly.indvar794.1.1, 1
  %exitcond909.1.1.not = icmp eq i64 %polly.indvar_next795.1.1, 32
  br i1 %exitcond909.1.1.not, label %polly.loop_header791.2, label %polly.loop_header791.1.1

polly.loop_header791.2:                           ; preds = %polly.loop_exit799.1.1, %polly.loop_exit799.2
  %polly.indvar794.2 = phi i64 [ %polly.indvar_next795.2, %polly.loop_exit799.2 ], [ 0, %polly.loop_exit799.1.1 ]
  %430 = add nuw nsw i64 %polly.indvar794.2, 64
  %431 = mul nuw nsw i64 %430, 480
  %432 = trunc i64 %430 to i32
  %broadcast.splatinsert1180 = insertelement <4 x i32> poison, i32 %432, i32 0
  %broadcast.splat1181 = shufflevector <4 x i32> %broadcast.splatinsert1180, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1170

vector.body1170:                                  ; preds = %vector.body1170, %polly.loop_header791.2
  %index1172 = phi i64 [ 0, %polly.loop_header791.2 ], [ %index.next1173, %vector.body1170 ]
  %vec.ind1178 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791.2 ], [ %vec.ind.next1179, %vector.body1170 ]
  %433 = mul <4 x i32> %vec.ind1178, %broadcast.splat1181
  %434 = add <4 x i32> %433, <i32 2, i32 2, i32 2, i32 2>
  %435 = urem <4 x i32> %434, <i32 60, i32 60, i32 60, i32 60>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %438 = shl i64 %index1172, 3
  %439 = add i64 %438, %431
  %440 = getelementptr i8, i8* %call2, i64 %439
  %441 = bitcast i8* %440 to <4 x double>*
  store <4 x double> %437, <4 x double>* %441, align 8, !alias.scope !103, !noalias !105
  %index.next1173 = add i64 %index1172, 4
  %vec.ind.next1179 = add <4 x i32> %vec.ind1178, <i32 4, i32 4, i32 4, i32 4>
  %442 = icmp eq i64 %index.next1173, 32
  br i1 %442, label %polly.loop_exit799.2, label %vector.body1170, !llvm.loop !117

polly.loop_exit799.2:                             ; preds = %vector.body1170
  %polly.indvar_next795.2 = add nuw nsw i64 %polly.indvar794.2, 1
  %exitcond909.2.not = icmp eq i64 %polly.indvar_next795.2, 16
  br i1 %exitcond909.2.not, label %polly.loop_header791.1.2, label %polly.loop_header791.2

polly.loop_header791.1.2:                         ; preds = %polly.loop_exit799.2, %polly.loop_exit799.1.2
  %polly.indvar794.1.2 = phi i64 [ %polly.indvar_next795.1.2, %polly.loop_exit799.1.2 ], [ 0, %polly.loop_exit799.2 ]
  %443 = add nuw nsw i64 %polly.indvar794.1.2, 64
  %444 = mul nuw nsw i64 %443, 480
  %445 = trunc i64 %443 to i32
  %broadcast.splatinsert1192 = insertelement <4 x i32> poison, i32 %445, i32 0
  %broadcast.splat1193 = shufflevector <4 x i32> %broadcast.splatinsert1192, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1184

vector.body1184:                                  ; preds = %vector.body1184, %polly.loop_header791.1.2
  %index1186 = phi i64 [ 0, %polly.loop_header791.1.2 ], [ %index.next1187, %vector.body1184 ]
  %vec.ind1190 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1.2 ], [ %vec.ind.next1191, %vector.body1184 ]
  %446 = add nuw nsw <4 x i64> %vec.ind1190, <i64 32, i64 32, i64 32, i64 32>
  %447 = trunc <4 x i64> %446 to <4 x i32>
  %448 = mul <4 x i32> %broadcast.splat1193, %447
  %449 = add <4 x i32> %448, <i32 2, i32 2, i32 2, i32 2>
  %450 = urem <4 x i32> %449, <i32 60, i32 60, i32 60, i32 60>
  %451 = sitofp <4 x i32> %450 to <4 x double>
  %452 = fmul fast <4 x double> %451, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %453 = extractelement <4 x i64> %446, i32 0
  %454 = shl i64 %453, 3
  %455 = add i64 %454, %444
  %456 = getelementptr i8, i8* %call2, i64 %455
  %457 = bitcast i8* %456 to <4 x double>*
  store <4 x double> %452, <4 x double>* %457, align 8, !alias.scope !103, !noalias !105
  %index.next1187 = add i64 %index1186, 4
  %vec.ind.next1191 = add <4 x i64> %vec.ind1190, <i64 4, i64 4, i64 4, i64 4>
  %458 = icmp eq i64 %index.next1187, 28
  br i1 %458, label %polly.loop_exit799.1.2, label %vector.body1184, !llvm.loop !118

polly.loop_exit799.1.2:                           ; preds = %vector.body1184
  %polly.indvar_next795.1.2 = add nuw nsw i64 %polly.indvar794.1.2, 1
  %exitcond909.1.2.not = icmp eq i64 %polly.indvar_next795.1.2, 16
  br i1 %exitcond909.1.2.not, label %polly.loop_header817, label %polly.loop_header791.1.2

polly.loop_header764.1:                           ; preds = %polly.loop_exit772, %polly.loop_exit772.1
  %polly.indvar767.1 = phi i64 [ %polly.indvar_next768.1, %polly.loop_exit772.1 ], [ 0, %polly.loop_exit772 ]
  %459 = mul nuw nsw i64 %polly.indvar767.1, 640
  %460 = trunc i64 %polly.indvar767.1 to i32
  %broadcast.splatinsert1026 = insertelement <4 x i32> poison, i32 %460, i32 0
  %broadcast.splat1027 = shufflevector <4 x i32> %broadcast.splatinsert1026, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1018

vector.body1018:                                  ; preds = %vector.body1018, %polly.loop_header764.1
  %index1020 = phi i64 [ 0, %polly.loop_header764.1 ], [ %index.next1021, %vector.body1018 ]
  %vec.ind1024 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.1 ], [ %vec.ind.next1025, %vector.body1018 ]
  %461 = add nuw nsw <4 x i64> %vec.ind1024, <i64 32, i64 32, i64 32, i64 32>
  %462 = trunc <4 x i64> %461 to <4 x i32>
  %463 = mul <4 x i32> %broadcast.splat1027, %462
  %464 = add <4 x i32> %463, <i32 3, i32 3, i32 3, i32 3>
  %465 = urem <4 x i32> %464, <i32 80, i32 80, i32 80, i32 80>
  %466 = sitofp <4 x i32> %465 to <4 x double>
  %467 = fmul fast <4 x double> %466, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %468 = extractelement <4 x i64> %461, i32 0
  %469 = shl i64 %468, 3
  %470 = add nuw nsw i64 %469, %459
  %471 = getelementptr i8, i8* %call, i64 %470
  %472 = bitcast i8* %471 to <4 x double>*
  store <4 x double> %467, <4 x double>* %472, align 8, !alias.scope !99, !noalias !101
  %index.next1021 = add i64 %index1020, 4
  %vec.ind.next1025 = add <4 x i64> %vec.ind1024, <i64 4, i64 4, i64 4, i64 4>
  %473 = icmp eq i64 %index.next1021, 32
  br i1 %473, label %polly.loop_exit772.1, label %vector.body1018, !llvm.loop !119

polly.loop_exit772.1:                             ; preds = %vector.body1018
  %polly.indvar_next768.1 = add nuw nsw i64 %polly.indvar767.1, 1
  %exitcond918.1.not = icmp eq i64 %polly.indvar_next768.1, 32
  br i1 %exitcond918.1.not, label %polly.loop_header764.2, label %polly.loop_header764.1

polly.loop_header764.2:                           ; preds = %polly.loop_exit772.1, %polly.loop_exit772.2
  %polly.indvar767.2 = phi i64 [ %polly.indvar_next768.2, %polly.loop_exit772.2 ], [ 0, %polly.loop_exit772.1 ]
  %474 = mul nuw nsw i64 %polly.indvar767.2, 640
  %475 = trunc i64 %polly.indvar767.2 to i32
  %broadcast.splatinsert1038 = insertelement <4 x i32> poison, i32 %475, i32 0
  %broadcast.splat1039 = shufflevector <4 x i32> %broadcast.splatinsert1038, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1030

vector.body1030:                                  ; preds = %vector.body1030, %polly.loop_header764.2
  %index1032 = phi i64 [ 0, %polly.loop_header764.2 ], [ %index.next1033, %vector.body1030 ]
  %vec.ind1036 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.2 ], [ %vec.ind.next1037, %vector.body1030 ]
  %476 = add nuw nsw <4 x i64> %vec.ind1036, <i64 64, i64 64, i64 64, i64 64>
  %477 = trunc <4 x i64> %476 to <4 x i32>
  %478 = mul <4 x i32> %broadcast.splat1039, %477
  %479 = add <4 x i32> %478, <i32 3, i32 3, i32 3, i32 3>
  %480 = urem <4 x i32> %479, <i32 80, i32 80, i32 80, i32 80>
  %481 = sitofp <4 x i32> %480 to <4 x double>
  %482 = fmul fast <4 x double> %481, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %483 = extractelement <4 x i64> %476, i32 0
  %484 = shl i64 %483, 3
  %485 = add nuw nsw i64 %484, %474
  %486 = getelementptr i8, i8* %call, i64 %485
  %487 = bitcast i8* %486 to <4 x double>*
  store <4 x double> %482, <4 x double>* %487, align 8, !alias.scope !99, !noalias !101
  %index.next1033 = add i64 %index1032, 4
  %vec.ind.next1037 = add <4 x i64> %vec.ind1036, <i64 4, i64 4, i64 4, i64 4>
  %488 = icmp eq i64 %index.next1033, 16
  br i1 %488, label %polly.loop_exit772.2, label %vector.body1030, !llvm.loop !120

polly.loop_exit772.2:                             ; preds = %vector.body1030
  %polly.indvar_next768.2 = add nuw nsw i64 %polly.indvar767.2, 1
  %exitcond918.2.not = icmp eq i64 %polly.indvar_next768.2, 32
  br i1 %exitcond918.2.not, label %polly.loop_header764.1951, label %polly.loop_header764.2

polly.loop_header764.1951:                        ; preds = %polly.loop_exit772.2, %polly.loop_exit772.1962
  %polly.indvar767.1950 = phi i64 [ %polly.indvar_next768.1960, %polly.loop_exit772.1962 ], [ 0, %polly.loop_exit772.2 ]
  %489 = add nuw nsw i64 %polly.indvar767.1950, 32
  %490 = mul nuw nsw i64 %489, 640
  %491 = trunc i64 %489 to i32
  %broadcast.splatinsert1052 = insertelement <4 x i32> poison, i32 %491, i32 0
  %broadcast.splat1053 = shufflevector <4 x i32> %broadcast.splatinsert1052, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %polly.loop_header764.1951
  %index1044 = phi i64 [ 0, %polly.loop_header764.1951 ], [ %index.next1045, %vector.body1042 ]
  %vec.ind1050 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header764.1951 ], [ %vec.ind.next1051, %vector.body1042 ]
  %492 = mul <4 x i32> %vec.ind1050, %broadcast.splat1053
  %493 = add <4 x i32> %492, <i32 3, i32 3, i32 3, i32 3>
  %494 = urem <4 x i32> %493, <i32 80, i32 80, i32 80, i32 80>
  %495 = sitofp <4 x i32> %494 to <4 x double>
  %496 = fmul fast <4 x double> %495, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %497 = shl i64 %index1044, 3
  %498 = add nuw nsw i64 %497, %490
  %499 = getelementptr i8, i8* %call, i64 %498
  %500 = bitcast i8* %499 to <4 x double>*
  store <4 x double> %496, <4 x double>* %500, align 8, !alias.scope !99, !noalias !101
  %index.next1045 = add i64 %index1044, 4
  %vec.ind.next1051 = add <4 x i32> %vec.ind1050, <i32 4, i32 4, i32 4, i32 4>
  %501 = icmp eq i64 %index.next1045, 32
  br i1 %501, label %polly.loop_exit772.1962, label %vector.body1042, !llvm.loop !121

polly.loop_exit772.1962:                          ; preds = %vector.body1042
  %polly.indvar_next768.1960 = add nuw nsw i64 %polly.indvar767.1950, 1
  %exitcond918.1961.not = icmp eq i64 %polly.indvar_next768.1960, 32
  br i1 %exitcond918.1961.not, label %polly.loop_header764.1.1, label %polly.loop_header764.1951

polly.loop_header764.1.1:                         ; preds = %polly.loop_exit772.1962, %polly.loop_exit772.1.1
  %polly.indvar767.1.1 = phi i64 [ %polly.indvar_next768.1.1, %polly.loop_exit772.1.1 ], [ 0, %polly.loop_exit772.1962 ]
  %502 = add nuw nsw i64 %polly.indvar767.1.1, 32
  %503 = mul nuw nsw i64 %502, 640
  %504 = trunc i64 %502 to i32
  %broadcast.splatinsert1064 = insertelement <4 x i32> poison, i32 %504, i32 0
  %broadcast.splat1065 = shufflevector <4 x i32> %broadcast.splatinsert1064, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1056

vector.body1056:                                  ; preds = %vector.body1056, %polly.loop_header764.1.1
  %index1058 = phi i64 [ 0, %polly.loop_header764.1.1 ], [ %index.next1059, %vector.body1056 ]
  %vec.ind1062 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.1.1 ], [ %vec.ind.next1063, %vector.body1056 ]
  %505 = add nuw nsw <4 x i64> %vec.ind1062, <i64 32, i64 32, i64 32, i64 32>
  %506 = trunc <4 x i64> %505 to <4 x i32>
  %507 = mul <4 x i32> %broadcast.splat1065, %506
  %508 = add <4 x i32> %507, <i32 3, i32 3, i32 3, i32 3>
  %509 = urem <4 x i32> %508, <i32 80, i32 80, i32 80, i32 80>
  %510 = sitofp <4 x i32> %509 to <4 x double>
  %511 = fmul fast <4 x double> %510, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %512 = extractelement <4 x i64> %505, i32 0
  %513 = shl i64 %512, 3
  %514 = add nuw nsw i64 %513, %503
  %515 = getelementptr i8, i8* %call, i64 %514
  %516 = bitcast i8* %515 to <4 x double>*
  store <4 x double> %511, <4 x double>* %516, align 8, !alias.scope !99, !noalias !101
  %index.next1059 = add i64 %index1058, 4
  %vec.ind.next1063 = add <4 x i64> %vec.ind1062, <i64 4, i64 4, i64 4, i64 4>
  %517 = icmp eq i64 %index.next1059, 32
  br i1 %517, label %polly.loop_exit772.1.1, label %vector.body1056, !llvm.loop !122

polly.loop_exit772.1.1:                           ; preds = %vector.body1056
  %polly.indvar_next768.1.1 = add nuw nsw i64 %polly.indvar767.1.1, 1
  %exitcond918.1.1.not = icmp eq i64 %polly.indvar_next768.1.1, 32
  br i1 %exitcond918.1.1.not, label %polly.loop_header764.2.1, label %polly.loop_header764.1.1

polly.loop_header764.2.1:                         ; preds = %polly.loop_exit772.1.1, %polly.loop_exit772.2.1
  %polly.indvar767.2.1 = phi i64 [ %polly.indvar_next768.2.1, %polly.loop_exit772.2.1 ], [ 0, %polly.loop_exit772.1.1 ]
  %518 = add nuw nsw i64 %polly.indvar767.2.1, 32
  %519 = mul nuw nsw i64 %518, 640
  %520 = trunc i64 %518 to i32
  %broadcast.splatinsert1076 = insertelement <4 x i32> poison, i32 %520, i32 0
  %broadcast.splat1077 = shufflevector <4 x i32> %broadcast.splatinsert1076, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1068

vector.body1068:                                  ; preds = %vector.body1068, %polly.loop_header764.2.1
  %index1070 = phi i64 [ 0, %polly.loop_header764.2.1 ], [ %index.next1071, %vector.body1068 ]
  %vec.ind1074 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.2.1 ], [ %vec.ind.next1075, %vector.body1068 ]
  %521 = add nuw nsw <4 x i64> %vec.ind1074, <i64 64, i64 64, i64 64, i64 64>
  %522 = trunc <4 x i64> %521 to <4 x i32>
  %523 = mul <4 x i32> %broadcast.splat1077, %522
  %524 = add <4 x i32> %523, <i32 3, i32 3, i32 3, i32 3>
  %525 = urem <4 x i32> %524, <i32 80, i32 80, i32 80, i32 80>
  %526 = sitofp <4 x i32> %525 to <4 x double>
  %527 = fmul fast <4 x double> %526, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %528 = extractelement <4 x i64> %521, i32 0
  %529 = shl i64 %528, 3
  %530 = add nuw nsw i64 %529, %519
  %531 = getelementptr i8, i8* %call, i64 %530
  %532 = bitcast i8* %531 to <4 x double>*
  store <4 x double> %527, <4 x double>* %532, align 8, !alias.scope !99, !noalias !101
  %index.next1071 = add i64 %index1070, 4
  %vec.ind.next1075 = add <4 x i64> %vec.ind1074, <i64 4, i64 4, i64 4, i64 4>
  %533 = icmp eq i64 %index.next1071, 16
  br i1 %533, label %polly.loop_exit772.2.1, label %vector.body1068, !llvm.loop !123

polly.loop_exit772.2.1:                           ; preds = %vector.body1068
  %polly.indvar_next768.2.1 = add nuw nsw i64 %polly.indvar767.2.1, 1
  %exitcond918.2.1.not = icmp eq i64 %polly.indvar_next768.2.1, 32
  br i1 %exitcond918.2.1.not, label %polly.loop_header764.2965, label %polly.loop_header764.2.1

polly.loop_header764.2965:                        ; preds = %polly.loop_exit772.2.1, %polly.loop_exit772.2976
  %polly.indvar767.2964 = phi i64 [ %polly.indvar_next768.2974, %polly.loop_exit772.2976 ], [ 0, %polly.loop_exit772.2.1 ]
  %534 = add nuw nsw i64 %polly.indvar767.2964, 64
  %535 = mul nuw nsw i64 %534, 640
  %536 = trunc i64 %534 to i32
  %broadcast.splatinsert1090 = insertelement <4 x i32> poison, i32 %536, i32 0
  %broadcast.splat1091 = shufflevector <4 x i32> %broadcast.splatinsert1090, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %polly.loop_header764.2965
  %index1082 = phi i64 [ 0, %polly.loop_header764.2965 ], [ %index.next1083, %vector.body1080 ]
  %vec.ind1088 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header764.2965 ], [ %vec.ind.next1089, %vector.body1080 ]
  %537 = mul <4 x i32> %vec.ind1088, %broadcast.splat1091
  %538 = add <4 x i32> %537, <i32 3, i32 3, i32 3, i32 3>
  %539 = urem <4 x i32> %538, <i32 80, i32 80, i32 80, i32 80>
  %540 = sitofp <4 x i32> %539 to <4 x double>
  %541 = fmul fast <4 x double> %540, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %542 = shl i64 %index1082, 3
  %543 = add nuw nsw i64 %542, %535
  %544 = getelementptr i8, i8* %call, i64 %543
  %545 = bitcast i8* %544 to <4 x double>*
  store <4 x double> %541, <4 x double>* %545, align 8, !alias.scope !99, !noalias !101
  %index.next1083 = add i64 %index1082, 4
  %vec.ind.next1089 = add <4 x i32> %vec.ind1088, <i32 4, i32 4, i32 4, i32 4>
  %546 = icmp eq i64 %index.next1083, 32
  br i1 %546, label %polly.loop_exit772.2976, label %vector.body1080, !llvm.loop !124

polly.loop_exit772.2976:                          ; preds = %vector.body1080
  %polly.indvar_next768.2974 = add nuw nsw i64 %polly.indvar767.2964, 1
  %exitcond918.2975.not = icmp eq i64 %polly.indvar_next768.2974, 16
  br i1 %exitcond918.2975.not, label %polly.loop_header764.1.2, label %polly.loop_header764.2965

polly.loop_header764.1.2:                         ; preds = %polly.loop_exit772.2976, %polly.loop_exit772.1.2
  %polly.indvar767.1.2 = phi i64 [ %polly.indvar_next768.1.2, %polly.loop_exit772.1.2 ], [ 0, %polly.loop_exit772.2976 ]
  %547 = add nuw nsw i64 %polly.indvar767.1.2, 64
  %548 = mul nuw nsw i64 %547, 640
  %549 = trunc i64 %547 to i32
  %broadcast.splatinsert1102 = insertelement <4 x i32> poison, i32 %549, i32 0
  %broadcast.splat1103 = shufflevector <4 x i32> %broadcast.splatinsert1102, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1094

vector.body1094:                                  ; preds = %vector.body1094, %polly.loop_header764.1.2
  %index1096 = phi i64 [ 0, %polly.loop_header764.1.2 ], [ %index.next1097, %vector.body1094 ]
  %vec.ind1100 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.1.2 ], [ %vec.ind.next1101, %vector.body1094 ]
  %550 = add nuw nsw <4 x i64> %vec.ind1100, <i64 32, i64 32, i64 32, i64 32>
  %551 = trunc <4 x i64> %550 to <4 x i32>
  %552 = mul <4 x i32> %broadcast.splat1103, %551
  %553 = add <4 x i32> %552, <i32 3, i32 3, i32 3, i32 3>
  %554 = urem <4 x i32> %553, <i32 80, i32 80, i32 80, i32 80>
  %555 = sitofp <4 x i32> %554 to <4 x double>
  %556 = fmul fast <4 x double> %555, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %557 = extractelement <4 x i64> %550, i32 0
  %558 = shl i64 %557, 3
  %559 = add nuw nsw i64 %558, %548
  %560 = getelementptr i8, i8* %call, i64 %559
  %561 = bitcast i8* %560 to <4 x double>*
  store <4 x double> %556, <4 x double>* %561, align 8, !alias.scope !99, !noalias !101
  %index.next1097 = add i64 %index1096, 4
  %vec.ind.next1101 = add <4 x i64> %vec.ind1100, <i64 4, i64 4, i64 4, i64 4>
  %562 = icmp eq i64 %index.next1097, 32
  br i1 %562, label %polly.loop_exit772.1.2, label %vector.body1094, !llvm.loop !125

polly.loop_exit772.1.2:                           ; preds = %vector.body1094
  %polly.indvar_next768.1.2 = add nuw nsw i64 %polly.indvar767.1.2, 1
  %exitcond918.1.2.not = icmp eq i64 %polly.indvar_next768.1.2, 16
  br i1 %exitcond918.1.2.not, label %polly.loop_header764.2.2, label %polly.loop_header764.1.2

polly.loop_header764.2.2:                         ; preds = %polly.loop_exit772.1.2, %polly.loop_exit772.2.2
  %polly.indvar767.2.2 = phi i64 [ %polly.indvar_next768.2.2, %polly.loop_exit772.2.2 ], [ 0, %polly.loop_exit772.1.2 ]
  %563 = add nuw nsw i64 %polly.indvar767.2.2, 64
  %564 = mul nuw nsw i64 %563, 640
  %565 = trunc i64 %563 to i32
  %broadcast.splatinsert1114 = insertelement <4 x i32> poison, i32 %565, i32 0
  %broadcast.splat1115 = shufflevector <4 x i32> %broadcast.splatinsert1114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %polly.loop_header764.2.2
  %index1108 = phi i64 [ 0, %polly.loop_header764.2.2 ], [ %index.next1109, %vector.body1106 ]
  %vec.ind1112 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.2.2 ], [ %vec.ind.next1113, %vector.body1106 ]
  %566 = add nuw nsw <4 x i64> %vec.ind1112, <i64 64, i64 64, i64 64, i64 64>
  %567 = trunc <4 x i64> %566 to <4 x i32>
  %568 = mul <4 x i32> %broadcast.splat1115, %567
  %569 = add <4 x i32> %568, <i32 3, i32 3, i32 3, i32 3>
  %570 = urem <4 x i32> %569, <i32 80, i32 80, i32 80, i32 80>
  %571 = sitofp <4 x i32> %570 to <4 x double>
  %572 = fmul fast <4 x double> %571, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %573 = extractelement <4 x i64> %566, i32 0
  %574 = shl i64 %573, 3
  %575 = add nuw nsw i64 %574, %564
  %576 = getelementptr i8, i8* %call, i64 %575
  %577 = bitcast i8* %576 to <4 x double>*
  store <4 x double> %572, <4 x double>* %577, align 8, !alias.scope !99, !noalias !101
  %index.next1109 = add i64 %index1108, 4
  %vec.ind.next1113 = add <4 x i64> %vec.ind1112, <i64 4, i64 4, i64 4, i64 4>
  %578 = icmp eq i64 %index.next1109, 16
  br i1 %578, label %polly.loop_exit772.2.2, label %vector.body1106, !llvm.loop !126

polly.loop_exit772.2.2:                           ; preds = %vector.body1106
  %polly.indvar_next768.2.2 = add nuw nsw i64 %polly.indvar767.2.2, 1
  %exitcond918.2.2.not = icmp eq i64 %polly.indvar_next768.2.2, 16
  br i1 %exitcond918.2.2.not, label %polly.loop_header791, label %polly.loop_header764.2.2
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 32}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !57}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 50}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51, !52}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.loop.interchange.enable", i1 true}
!50 = !{!"llvm.loop.interchange.depth", i32 5}
!51 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!52 = !{!"llvm.loop.interchange.followup_interchanged", !53}
!53 = distinct !{!53, !12, !23, !48, !54, !55, !56}
!54 = !{!"llvm.data.pack.enable", i1 true}
!55 = !{!"llvm.data.pack.array", !21}
!56 = !{!"llvm.data.pack.allocate", !"malloc"}
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
!73 = distinct !{!73, !69, !"polly.alias.scope.Packed_MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !76, !13}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!68, !71, !73}
!78 = !{!68, !72, !73}
!79 = distinct !{!79, !80, !"polly.alias.scope.MemRef_call"}
!80 = distinct !{!80, !"polly.alias.scope.domain"}
!81 = !{!82, !83, !84}
!82 = distinct !{!82, !80, !"polly.alias.scope.MemRef_call1"}
!83 = distinct !{!83, !80, !"polly.alias.scope.MemRef_call2"}
!84 = distinct !{!84, !80, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !76, !13}
!87 = !{!79, !82, !84}
!88 = !{!79, !83, !84}
!89 = distinct !{!89, !90, !"polly.alias.scope.MemRef_call"}
!90 = distinct !{!90, !"polly.alias.scope.domain"}
!91 = !{!92, !93, !94}
!92 = distinct !{!92, !90, !"polly.alias.scope.MemRef_call1"}
!93 = distinct !{!93, !90, !"polly.alias.scope.MemRef_call2"}
!94 = distinct !{!94, !90, !"polly.alias.scope.Packed_MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !76, !13}
!97 = !{!89, !92, !94}
!98 = !{!89, !93, !94}
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
