; ModuleID = 'syr2k_recreations//mmp_syr2k_S_36.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_36.c"
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
  %scevgep1004 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1003 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1002 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1001 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1001, %scevgep1004
  %bound1 = icmp ult i8* %scevgep1003, %scevgep1002
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
  br i1 %exitcond18.not.i, label %vector.ph1008, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1008:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1015 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1016 = shufflevector <4 x i64> %broadcast.splatinsert1015, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %vector.ph1008
  %index1009 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1010, %vector.body1007 ]
  %vec.ind1013 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1008 ], [ %vec.ind.next1014, %vector.body1007 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1013, %broadcast.splat1016
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv7.i, i64 %index1009
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1010 = add i64 %index1009, 4
  %vec.ind.next1014 = add <4 x i64> %vec.ind1013, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1010, 80
  br i1 %40, label %for.inc41.i, label %vector.body1007, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1007
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1008, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1361, label %vector.ph1290

vector.ph1290:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %vector.ph1290
  %index1291 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1292, %vector.body1289 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i, i64 %index1291
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1292 = add i64 %index1291, 4
  %46 = icmp eq i64 %index.next1292, %n.vec
  br i1 %46, label %middle.block1287, label %vector.body1289, !llvm.loop !18

middle.block1287:                                 ; preds = %vector.body1289
  %cmp.n1294 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1294, label %for.inc6.i, label %for.body3.i46.preheader1361

for.body3.i46.preheader1361:                      ; preds = %for.body3.i46.preheader, %middle.block1287
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1287 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1361, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1361 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1287, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting451
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start272, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1310 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1310, label %for.body3.i60.preheader1360, label %vector.ph1311

vector.ph1311:                                    ; preds = %for.body3.i60.preheader
  %n.vec1313 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1309

vector.body1309:                                  ; preds = %vector.body1309, %vector.ph1311
  %index1314 = phi i64 [ 0, %vector.ph1311 ], [ %index.next1315, %vector.body1309 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i52, i64 %index1314
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1318 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1318, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1315 = add i64 %index1314, 4
  %57 = icmp eq i64 %index.next1315, %n.vec1313
  br i1 %57, label %middle.block1307, label %vector.body1309, !llvm.loop !60

middle.block1307:                                 ; preds = %vector.body1309
  %cmp.n1317 = icmp eq i64 %indvars.iv21.i52, %n.vec1313
  br i1 %cmp.n1317, label %for.inc6.i63, label %for.body3.i60.preheader1360

for.body3.i60.preheader1360:                      ; preds = %for.body3.i60.preheader, %middle.block1307
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1313, %middle.block1307 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1360, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1360 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1307, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting273
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1336 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1336, label %for.body3.i99.preheader1359, label %vector.ph1337

vector.ph1337:                                    ; preds = %for.body3.i99.preheader
  %n.vec1339 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1335

vector.body1335:                                  ; preds = %vector.body1335, %vector.ph1337
  %index1340 = phi i64 [ 0, %vector.ph1337 ], [ %index.next1341, %vector.body1335 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i91, i64 %index1340
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1344 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1344, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1341 = add i64 %index1340, 4
  %68 = icmp eq i64 %index.next1341, %n.vec1339
  br i1 %68, label %middle.block1333, label %vector.body1335, !llvm.loop !62

middle.block1333:                                 ; preds = %vector.body1335
  %cmp.n1343 = icmp eq i64 %indvars.iv21.i91, %n.vec1339
  br i1 %cmp.n1343, label %for.inc6.i102, label %for.body3.i99.preheader1359

for.body3.i99.preheader1359:                      ; preds = %for.body3.i99.preheader, %middle.block1333
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1339, %middle.block1333 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1359, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1359 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1333, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1348 = phi i64 [ %indvar.next1349, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1348, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1350 = icmp ult i64 %88, 4
  br i1 %min.iters.check1350, label %polly.loop_header191.preheader, label %vector.ph1351

vector.ph1351:                                    ; preds = %polly.loop_header
  %n.vec1353 = and i64 %88, -4
  br label %vector.body1347

vector.body1347:                                  ; preds = %vector.body1347, %vector.ph1351
  %index1354 = phi i64 [ 0, %vector.ph1351 ], [ %index.next1355, %vector.body1347 ]
  %90 = shl nuw nsw i64 %index1354, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1358 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1358, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1355 = add i64 %index1354, 4
  %95 = icmp eq i64 %index.next1355, %n.vec1353
  br i1 %95, label %middle.block1345, label %vector.body1347, !llvm.loop !74

middle.block1345:                                 ; preds = %vector.body1347
  %cmp.n1357 = icmp eq i64 %88, %n.vec1353
  br i1 %cmp.n1357, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1345
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1353, %middle.block1345 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1345
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1349 = add i64 %indvar1348, 1
  br i1 %exitcond870.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
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
  %exitcond869.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond869.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next203, 3
  br i1 %exitcond868.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 80, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %98 = lshr i64 %polly.indvar208, 1
  %99 = shl nuw nsw i64 %98, 5
  %100 = sub nsw i64 %indvars.iv854, %99
  %101 = add i64 %indvars.iv858, %99
  %102 = shl nsw i64 %polly.indvar208, 4
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %103 = mul nsw i64 %polly.indvar208, -16
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 16
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -16
  %exitcond867.not = icmp eq i64 %polly.indvar_next209, 5
  br i1 %exitcond867.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %104 = add nuw nsw i64 %polly.indvar214, %97
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next215, 20
  br i1 %exitcond853.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %105 = add nuw nsw i64 %polly.indvar220, %102
  %polly.access.mul.call2224 = mul nuw nsw i64 %105, 60
  %polly.access.add.call2225 = add nuw nsw i64 %104, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_exit213
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit235 ], [ %101, %polly.loop_exit213 ]
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit235 ], [ %100, %polly.loop_exit213 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %98, %polly.loop_exit213 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv856, i64 0)
  %106 = add i64 %smax, %indvars.iv860
  %107 = shl nsw i64 %polly.indvar230, 5
  %108 = sub nsw i64 %102, %107
  %109 = icmp sgt i64 %108, 0
  %110 = select i1 %109, i64 %108, i64 0
  %111 = mul nsw i64 %polly.indvar230, -32
  %112 = icmp slt i64 %111, -48
  %113 = select i1 %112, i64 %111, i64 -48
  %114 = add nsw i64 %113, 79
  %polly.loop_guard.not = icmp sgt i64 %110, %114
  br i1 %polly.loop_guard.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit241, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next857 = add i64 %indvars.iv856, -32
  %indvars.iv.next861 = add i64 %indvars.iv860, 32
  %exitcond866.not = icmp eq i64 %polly.indvar_next231, 3
  br i1 %exitcond866.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_header227, %polly.loop_exit241
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit241 ], [ 0, %polly.loop_header227 ]
  %115 = add nuw nsw i64 %polly.indvar236, %97
  %116 = shl i64 %115, 3
  %polly.access.mul.Packed_MemRef_call2256 = mul nuw nsw i64 %polly.indvar236, 80
  br label %polly.loop_header239

polly.loop_exit241:                               ; preds = %polly.loop_exit248
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next237, 20
  br i1 %exitcond865.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header239:                             ; preds = %polly.loop_header233, %polly.loop_exit248
  %indvars.iv862 = phi i64 [ %106, %polly.loop_header233 ], [ %indvars.iv.next863, %polly.loop_exit248 ]
  %polly.indvar242 = phi i64 [ %110, %polly.loop_header233 ], [ %polly.indvar_next243, %polly.loop_exit248 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv862, i64 15)
  %117 = add nuw i64 %polly.indvar242, %107
  %118 = add i64 %117, %103
  %polly.loop_guard249996 = icmp sgt i64 %118, -1
  br i1 %polly.loop_guard249996, label %polly.loop_header246.preheader, label %polly.loop_exit248

polly.loop_header246.preheader:                   ; preds = %polly.loop_header239
  %polly.access.add.Packed_MemRef_call2257 = add nsw i64 %polly.access.mul.Packed_MemRef_call2256, %118
  %polly.access.Packed_MemRef_call2258 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257
  %_p_scalar_259 = load double, double* %polly.access.Packed_MemRef_call2258, align 8
  %119 = mul i64 %117, 480
  %120 = add i64 %119, %116
  %scevgep264 = getelementptr i8, i8* %call1, i64 %120
  %scevgep264265 = bitcast i8* %scevgep264 to double*
  %_p_scalar_266 = load double, double* %scevgep264265, align 8, !alias.scope !71, !noalias !78
  %121 = mul i64 %117, 640
  br label %polly.loop_header246

polly.loop_exit248:                               ; preds = %polly.loop_header246, %polly.loop_header239
  %polly.indvar_next243 = add nuw nsw i64 %polly.indvar242, 1
  %polly.loop_cond244.not.not = icmp slt i64 %polly.indvar242, %114
  %indvars.iv.next863 = add i64 %indvars.iv862, 1
  br i1 %polly.loop_cond244.not.not, label %polly.loop_header239, label %polly.loop_exit241

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_header246
  %polly.indvar250 = phi i64 [ %polly.indvar_next251, %polly.loop_header246 ], [ 0, %polly.loop_header246.preheader ]
  %122 = add nuw nsw i64 %polly.indvar250, %102
  %123 = mul nuw nsw i64 %122, 480
  %124 = add nuw nsw i64 %123, %116
  %scevgep253 = getelementptr i8, i8* %call1, i64 %124
  %scevgep253254 = bitcast i8* %scevgep253 to double*
  %_p_scalar_255 = load double, double* %scevgep253254, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_259, %_p_scalar_255
  %polly.access.add.Packed_MemRef_call2261 = add nuw nsw i64 %polly.indvar250, %polly.access.mul.Packed_MemRef_call2256
  %polly.access.Packed_MemRef_call2262 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261
  %_p_scalar_263 = load double, double* %polly.access.Packed_MemRef_call2262, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_266, %_p_scalar_263
  %125 = shl i64 %122, 3
  %126 = add i64 %125, %121
  %scevgep267 = getelementptr i8, i8* %call, i64 %126
  %scevgep267268 = bitcast i8* %scevgep267 to double*
  %_p_scalar_269 = load double, double* %scevgep267268, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_269
  store double %p_add42.i118, double* %scevgep267268, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251 = add nuw nsw i64 %polly.indvar250, 1
  %exitcond864.not = icmp eq i64 %polly.indvar250, %smin
  br i1 %exitcond864.not, label %polly.loop_exit248, label %polly.loop_header246

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header358

polly.exiting273:                                 ; preds = %polly.loop_exit382
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1322 = phi i64 [ %indvar.next1323, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %127 = add i64 %indvar1322, 1
  %128 = mul nuw nsw i64 %polly.indvar361, 640
  %scevgep370 = getelementptr i8, i8* %call, i64 %128
  %min.iters.check1324 = icmp ult i64 %127, 4
  br i1 %min.iters.check1324, label %polly.loop_header364.preheader, label %vector.ph1325

vector.ph1325:                                    ; preds = %polly.loop_header358
  %n.vec1327 = and i64 %127, -4
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %vector.ph1325
  %index1328 = phi i64 [ 0, %vector.ph1325 ], [ %index.next1329, %vector.body1321 ]
  %129 = shl nuw nsw i64 %index1328, 3
  %130 = getelementptr i8, i8* %scevgep370, i64 %129
  %131 = bitcast i8* %130 to <4 x double>*
  %wide.load1332 = load <4 x double>, <4 x double>* %131, align 8, !alias.scope !79, !noalias !81
  %132 = fmul fast <4 x double> %wide.load1332, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %133 = bitcast i8* %130 to <4 x double>*
  store <4 x double> %132, <4 x double>* %133, align 8, !alias.scope !79, !noalias !81
  %index.next1329 = add i64 %index1328, 4
  %134 = icmp eq i64 %index.next1329, %n.vec1327
  br i1 %134, label %middle.block1319, label %vector.body1321, !llvm.loop !85

middle.block1319:                                 ; preds = %vector.body1321
  %cmp.n1331 = icmp eq i64 %127, %n.vec1327
  br i1 %cmp.n1331, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1319
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1327, %middle.block1319 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1319
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next362, 80
  %indvar.next1323 = add i64 %indvar1322, 1
  br i1 %exitcond893.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header374

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %135 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %135
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond892.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !86

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit382
  %polly.indvar377 = phi i64 [ %polly.indvar_next378, %polly.loop_exit382 ], [ 0, %polly.loop_header374.preheader ]
  %136 = mul nuw nsw i64 %polly.indvar377, 20
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_exit405
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next378, 3
  br i1 %exitcond891.not, label %polly.exiting273, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_exit405, %polly.loop_header374
  %indvars.iv880 = phi i64 [ %indvars.iv.next881, %polly.loop_exit405 ], [ 0, %polly.loop_header374 ]
  %indvars.iv875 = phi i64 [ %indvars.iv.next876, %polly.loop_exit405 ], [ 0, %polly.loop_header374 ]
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %polly.loop_exit405 ], [ 80, %polly.loop_header374 ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit405 ], [ 0, %polly.loop_header374 ]
  %137 = lshr i64 %polly.indvar383, 1
  %138 = shl nuw nsw i64 %137, 5
  %139 = sub nsw i64 %indvars.iv875, %138
  %140 = add i64 %indvars.iv880, %138
  %141 = shl nsw i64 %polly.indvar383, 4
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_exit394
  %142 = mul nsw i64 %polly.indvar383, -16
  br label %polly.loop_header403

polly.loop_exit405:                               ; preds = %polly.loop_exit411
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, -16
  %indvars.iv.next876 = add nuw nsw i64 %indvars.iv875, 16
  %indvars.iv.next881 = add nsw i64 %indvars.iv880, -16
  %exitcond890.not = icmp eq i64 %polly.indvar_next384, 5
  br i1 %exitcond890.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.loop_header380
  %polly.indvar389 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next390, %polly.loop_exit394 ]
  %143 = add nuw nsw i64 %polly.indvar389, %136
  %polly.access.mul.Packed_MemRef_call2275 = mul nuw nsw i64 %polly.indvar389, 80
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next390, 20
  br i1 %exitcond874.not, label %polly.loop_exit388, label %polly.loop_header386

polly.loop_header392:                             ; preds = %polly.loop_header392, %polly.loop_header386
  %polly.indvar395 = phi i64 [ 0, %polly.loop_header386 ], [ %polly.indvar_next396, %polly.loop_header392 ]
  %144 = add nuw nsw i64 %polly.indvar395, %141
  %polly.access.mul.call2399 = mul nuw nsw i64 %144, 60
  %polly.access.add.call2400 = add nuw nsw i64 %143, %polly.access.mul.call2399
  %polly.access.call2401 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400
  %polly.access.call2401.load = load double, double* %polly.access.call2401, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2275 = add nuw nsw i64 %polly.indvar395, %polly.access.mul.Packed_MemRef_call2275
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275
  store double %polly.access.call2401.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next396, %indvars.iv871
  br i1 %exitcond873.not, label %polly.loop_exit394, label %polly.loop_header392

polly.loop_header403:                             ; preds = %polly.loop_exit411, %polly.loop_exit388
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %polly.loop_exit411 ], [ %140, %polly.loop_exit388 ]
  %indvars.iv877 = phi i64 [ %indvars.iv.next878, %polly.loop_exit411 ], [ %139, %polly.loop_exit388 ]
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit411 ], [ %137, %polly.loop_exit388 ]
  %smax879 = call i64 @llvm.smax.i64(i64 %indvars.iv877, i64 0)
  %145 = add i64 %smax879, %indvars.iv882
  %146 = shl nsw i64 %polly.indvar406, 5
  %147 = sub nsw i64 %141, %146
  %148 = icmp sgt i64 %147, 0
  %149 = select i1 %148, i64 %147, i64 0
  %150 = mul nsw i64 %polly.indvar406, -32
  %151 = icmp slt i64 %150, -48
  %152 = select i1 %151, i64 %150, i64 -48
  %153 = add nsw i64 %152, 79
  %polly.loop_guard419.not = icmp sgt i64 %149, %153
  br i1 %polly.loop_guard419.not, label %polly.loop_exit411, label %polly.loop_header409

polly.loop_exit411:                               ; preds = %polly.loop_exit418, %polly.loop_header403
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %indvars.iv.next878 = add i64 %indvars.iv877, -32
  %indvars.iv.next883 = add i64 %indvars.iv882, 32
  %exitcond889.not = icmp eq i64 %polly.indvar_next407, 3
  br i1 %exitcond889.not, label %polly.loop_exit405, label %polly.loop_header403

polly.loop_header409:                             ; preds = %polly.loop_header403, %polly.loop_exit418
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_exit418 ], [ 0, %polly.loop_header403 ]
  %154 = add nuw nsw i64 %polly.indvar412, %136
  %155 = shl i64 %154, 3
  %polly.access.mul.Packed_MemRef_call2275434 = mul nuw nsw i64 %polly.indvar412, 80
  br label %polly.loop_header416

polly.loop_exit418:                               ; preds = %polly.loop_exit426
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond888.not = icmp eq i64 %polly.indvar_next413, 20
  br i1 %exitcond888.not, label %polly.loop_exit411, label %polly.loop_header409

polly.loop_header416:                             ; preds = %polly.loop_header409, %polly.loop_exit426
  %indvars.iv884 = phi i64 [ %145, %polly.loop_header409 ], [ %indvars.iv.next885, %polly.loop_exit426 ]
  %polly.indvar420 = phi i64 [ %149, %polly.loop_header409 ], [ %polly.indvar_next421, %polly.loop_exit426 ]
  %smin886 = call i64 @llvm.smin.i64(i64 %indvars.iv884, i64 15)
  %156 = add nuw i64 %polly.indvar420, %146
  %157 = add i64 %156, %142
  %polly.loop_guard427997 = icmp sgt i64 %157, -1
  br i1 %polly.loop_guard427997, label %polly.loop_header424.preheader, label %polly.loop_exit426

polly.loop_header424.preheader:                   ; preds = %polly.loop_header416
  %polly.access.add.Packed_MemRef_call2275435 = add nsw i64 %polly.access.mul.Packed_MemRef_call2275434, %157
  %polly.access.Packed_MemRef_call2275436 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435
  %_p_scalar_437 = load double, double* %polly.access.Packed_MemRef_call2275436, align 8
  %158 = mul i64 %156, 480
  %159 = add i64 %158, %155
  %scevgep442 = getelementptr i8, i8* %call1, i64 %159
  %scevgep442443 = bitcast i8* %scevgep442 to double*
  %_p_scalar_444 = load double, double* %scevgep442443, align 8, !alias.scope !82, !noalias !88
  %160 = mul i64 %156, 640
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_header424, %polly.loop_header416
  %polly.indvar_next421 = add nuw nsw i64 %polly.indvar420, 1
  %polly.loop_cond422.not.not = icmp slt i64 %polly.indvar420, %153
  %indvars.iv.next885 = add i64 %indvars.iv884, 1
  br i1 %polly.loop_cond422.not.not, label %polly.loop_header416, label %polly.loop_exit418

polly.loop_header424:                             ; preds = %polly.loop_header424.preheader, %polly.loop_header424
  %polly.indvar428 = phi i64 [ %polly.indvar_next429, %polly.loop_header424 ], [ 0, %polly.loop_header424.preheader ]
  %161 = add nuw nsw i64 %polly.indvar428, %141
  %162 = mul nuw nsw i64 %161, 480
  %163 = add nuw nsw i64 %162, %155
  %scevgep431 = getelementptr i8, i8* %call1, i64 %163
  %scevgep431432 = bitcast i8* %scevgep431 to double*
  %_p_scalar_433 = load double, double* %scevgep431432, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_437, %_p_scalar_433
  %polly.access.add.Packed_MemRef_call2275439 = add nuw nsw i64 %polly.indvar428, %polly.access.mul.Packed_MemRef_call2275434
  %polly.access.Packed_MemRef_call2275440 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439
  %_p_scalar_441 = load double, double* %polly.access.Packed_MemRef_call2275440, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_444, %_p_scalar_441
  %164 = shl i64 %161, 3
  %165 = add i64 %164, %160
  %scevgep445 = getelementptr i8, i8* %call, i64 %165
  %scevgep445446 = bitcast i8* %scevgep445 to double*
  %_p_scalar_447 = load double, double* %scevgep445446, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_447
  store double %p_add42.i79, double* %scevgep445446, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %exitcond887.not = icmp eq i64 %polly.indvar428, %smin886
  br i1 %exitcond887.not, label %polly.loop_exit426, label %polly.loop_header424

polly.start450:                                   ; preds = %init_array.exit
  %malloccall452 = tail call dereferenceable_or_null(12800) i8* @malloc(i64 12800) #6
  br label %polly.loop_header536

polly.exiting451:                                 ; preds = %polly.loop_exit560
  tail call void @free(i8* %malloccall452)
  br label %kernel_syr2k.exit

polly.loop_header536:                             ; preds = %polly.loop_exit544, %polly.start450
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit544 ], [ 0, %polly.start450 ]
  %polly.indvar539 = phi i64 [ %polly.indvar_next540, %polly.loop_exit544 ], [ 1, %polly.start450 ]
  %166 = add i64 %indvar, 1
  %167 = mul nuw nsw i64 %polly.indvar539, 640
  %scevgep548 = getelementptr i8, i8* %call, i64 %167
  %min.iters.check1298 = icmp ult i64 %166, 4
  br i1 %min.iters.check1298, label %polly.loop_header542.preheader, label %vector.ph1299

vector.ph1299:                                    ; preds = %polly.loop_header536
  %n.vec1301 = and i64 %166, -4
  br label %vector.body1297

vector.body1297:                                  ; preds = %vector.body1297, %vector.ph1299
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1303, %vector.body1297 ]
  %168 = shl nuw nsw i64 %index1302, 3
  %169 = getelementptr i8, i8* %scevgep548, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %170, align 8, !alias.scope !89, !noalias !91
  %171 = fmul fast <4 x double> %wide.load1306, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %172 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %171, <4 x double>* %172, align 8, !alias.scope !89, !noalias !91
  %index.next1303 = add i64 %index1302, 4
  %173 = icmp eq i64 %index.next1303, %n.vec1301
  br i1 %173, label %middle.block1295, label %vector.body1297, !llvm.loop !95

middle.block1295:                                 ; preds = %vector.body1297
  %cmp.n1305 = icmp eq i64 %166, %n.vec1301
  br i1 %cmp.n1305, label %polly.loop_exit544, label %polly.loop_header542.preheader

polly.loop_header542.preheader:                   ; preds = %polly.loop_header536, %middle.block1295
  %polly.indvar545.ph = phi i64 [ 0, %polly.loop_header536 ], [ %n.vec1301, %middle.block1295 ]
  br label %polly.loop_header542

polly.loop_exit544:                               ; preds = %polly.loop_header542, %middle.block1295
  %polly.indvar_next540 = add nuw nsw i64 %polly.indvar539, 1
  %exitcond916.not = icmp eq i64 %polly.indvar_next540, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond916.not, label %polly.loop_header552.preheader, label %polly.loop_header536

polly.loop_header552.preheader:                   ; preds = %polly.loop_exit544
  %Packed_MemRef_call2453 = bitcast i8* %malloccall452 to double*
  br label %polly.loop_header552

polly.loop_header542:                             ; preds = %polly.loop_header542.preheader, %polly.loop_header542
  %polly.indvar545 = phi i64 [ %polly.indvar_next546, %polly.loop_header542 ], [ %polly.indvar545.ph, %polly.loop_header542.preheader ]
  %174 = shl nuw nsw i64 %polly.indvar545, 3
  %scevgep549 = getelementptr i8, i8* %scevgep548, i64 %174
  %scevgep549550 = bitcast i8* %scevgep549 to double*
  %_p_scalar_551 = load double, double* %scevgep549550, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_551, 1.200000e+00
  store double %p_mul.i, double* %scevgep549550, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next546 = add nuw nsw i64 %polly.indvar545, 1
  %exitcond915.not = icmp eq i64 %polly.indvar_next546, %polly.indvar539
  br i1 %exitcond915.not, label %polly.loop_exit544, label %polly.loop_header542, !llvm.loop !96

polly.loop_header552:                             ; preds = %polly.loop_header552.preheader, %polly.loop_exit560
  %polly.indvar555 = phi i64 [ %polly.indvar_next556, %polly.loop_exit560 ], [ 0, %polly.loop_header552.preheader ]
  %175 = mul nuw nsw i64 %polly.indvar555, 20
  br label %polly.loop_header558

polly.loop_exit560:                               ; preds = %polly.loop_exit583
  %polly.indvar_next556 = add nuw nsw i64 %polly.indvar555, 1
  %exitcond914.not = icmp eq i64 %polly.indvar_next556, 3
  br i1 %exitcond914.not, label %polly.exiting451, label %polly.loop_header552

polly.loop_header558:                             ; preds = %polly.loop_exit583, %polly.loop_header552
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %polly.loop_exit583 ], [ 0, %polly.loop_header552 ]
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit583 ], [ 0, %polly.loop_header552 ]
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %polly.loop_exit583 ], [ 80, %polly.loop_header552 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit583 ], [ 0, %polly.loop_header552 ]
  %176 = lshr i64 %polly.indvar561, 1
  %177 = shl nuw nsw i64 %176, 5
  %178 = sub nsw i64 %indvars.iv898, %177
  %179 = add i64 %indvars.iv903, %177
  %180 = shl nsw i64 %polly.indvar561, 4
  br label %polly.loop_header564

polly.loop_exit566:                               ; preds = %polly.loop_exit572
  %181 = mul nsw i64 %polly.indvar561, -16
  br label %polly.loop_header581

polly.loop_exit583:                               ; preds = %polly.loop_exit589
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %indvars.iv.next895 = add nsw i64 %indvars.iv894, -16
  %indvars.iv.next899 = add nuw nsw i64 %indvars.iv898, 16
  %indvars.iv.next904 = add nsw i64 %indvars.iv903, -16
  %exitcond913.not = icmp eq i64 %polly.indvar_next562, 5
  br i1 %exitcond913.not, label %polly.loop_exit560, label %polly.loop_header558

polly.loop_header564:                             ; preds = %polly.loop_exit572, %polly.loop_header558
  %polly.indvar567 = phi i64 [ 0, %polly.loop_header558 ], [ %polly.indvar_next568, %polly.loop_exit572 ]
  %182 = add nuw nsw i64 %polly.indvar567, %175
  %polly.access.mul.Packed_MemRef_call2453 = mul nuw nsw i64 %polly.indvar567, 80
  br label %polly.loop_header570

polly.loop_exit572:                               ; preds = %polly.loop_header570
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next568, 20
  br i1 %exitcond897.not, label %polly.loop_exit566, label %polly.loop_header564

polly.loop_header570:                             ; preds = %polly.loop_header570, %polly.loop_header564
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header564 ], [ %polly.indvar_next574, %polly.loop_header570 ]
  %183 = add nuw nsw i64 %polly.indvar573, %180
  %polly.access.mul.call2577 = mul nuw nsw i64 %183, 60
  %polly.access.add.call2578 = add nuw nsw i64 %182, %polly.access.mul.call2577
  %polly.access.call2579 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578
  %polly.access.call2579.load = load double, double* %polly.access.call2579, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2453 = add nuw nsw i64 %polly.indvar573, %polly.access.mul.Packed_MemRef_call2453
  %polly.access.Packed_MemRef_call2453 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453
  store double %polly.access.call2579.load, double* %polly.access.Packed_MemRef_call2453, align 8
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next574, %indvars.iv894
  br i1 %exitcond896.not, label %polly.loop_exit572, label %polly.loop_header570

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_exit566
  %indvars.iv905 = phi i64 [ %indvars.iv.next906, %polly.loop_exit589 ], [ %179, %polly.loop_exit566 ]
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit589 ], [ %178, %polly.loop_exit566 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit589 ], [ %176, %polly.loop_exit566 ]
  %smax902 = call i64 @llvm.smax.i64(i64 %indvars.iv900, i64 0)
  %184 = add i64 %smax902, %indvars.iv905
  %185 = shl nsw i64 %polly.indvar584, 5
  %186 = sub nsw i64 %180, %185
  %187 = icmp sgt i64 %186, 0
  %188 = select i1 %187, i64 %186, i64 0
  %189 = mul nsw i64 %polly.indvar584, -32
  %190 = icmp slt i64 %189, -48
  %191 = select i1 %190, i64 %189, i64 -48
  %192 = add nsw i64 %191, 79
  %polly.loop_guard597.not = icmp sgt i64 %188, %192
  br i1 %polly.loop_guard597.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit596, %polly.loop_header581
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %indvars.iv.next901 = add i64 %indvars.iv900, -32
  %indvars.iv.next906 = add i64 %indvars.iv905, 32
  %exitcond912.not = icmp eq i64 %polly.indvar_next585, 3
  br i1 %exitcond912.not, label %polly.loop_exit583, label %polly.loop_header581

polly.loop_header587:                             ; preds = %polly.loop_header581, %polly.loop_exit596
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit596 ], [ 0, %polly.loop_header581 ]
  %193 = add nuw nsw i64 %polly.indvar590, %175
  %194 = shl i64 %193, 3
  %polly.access.mul.Packed_MemRef_call2453612 = mul nuw nsw i64 %polly.indvar590, 80
  br label %polly.loop_header594

polly.loop_exit596:                               ; preds = %polly.loop_exit604
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %exitcond911.not = icmp eq i64 %polly.indvar_next591, 20
  br i1 %exitcond911.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header594:                             ; preds = %polly.loop_header587, %polly.loop_exit604
  %indvars.iv907 = phi i64 [ %184, %polly.loop_header587 ], [ %indvars.iv.next908, %polly.loop_exit604 ]
  %polly.indvar598 = phi i64 [ %188, %polly.loop_header587 ], [ %polly.indvar_next599, %polly.loop_exit604 ]
  %smin909 = call i64 @llvm.smin.i64(i64 %indvars.iv907, i64 15)
  %195 = add nuw i64 %polly.indvar598, %185
  %196 = add i64 %195, %181
  %polly.loop_guard605998 = icmp sgt i64 %196, -1
  br i1 %polly.loop_guard605998, label %polly.loop_header602.preheader, label %polly.loop_exit604

polly.loop_header602.preheader:                   ; preds = %polly.loop_header594
  %polly.access.add.Packed_MemRef_call2453613 = add nsw i64 %polly.access.mul.Packed_MemRef_call2453612, %196
  %polly.access.Packed_MemRef_call2453614 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613
  %_p_scalar_615 = load double, double* %polly.access.Packed_MemRef_call2453614, align 8
  %197 = mul i64 %195, 480
  %198 = add i64 %197, %194
  %scevgep620 = getelementptr i8, i8* %call1, i64 %198
  %scevgep620621 = bitcast i8* %scevgep620 to double*
  %_p_scalar_622 = load double, double* %scevgep620621, align 8, !alias.scope !92, !noalias !98
  %199 = mul i64 %195, 640
  br label %polly.loop_header602

polly.loop_exit604:                               ; preds = %polly.loop_header602, %polly.loop_header594
  %polly.indvar_next599 = add nuw nsw i64 %polly.indvar598, 1
  %polly.loop_cond600.not.not = icmp slt i64 %polly.indvar598, %192
  %indvars.iv.next908 = add i64 %indvars.iv907, 1
  br i1 %polly.loop_cond600.not.not, label %polly.loop_header594, label %polly.loop_exit596

polly.loop_header602:                             ; preds = %polly.loop_header602.preheader, %polly.loop_header602
  %polly.indvar606 = phi i64 [ %polly.indvar_next607, %polly.loop_header602 ], [ 0, %polly.loop_header602.preheader ]
  %200 = add nuw nsw i64 %polly.indvar606, %180
  %201 = mul nuw nsw i64 %200, 480
  %202 = add nuw nsw i64 %201, %194
  %scevgep609 = getelementptr i8, i8* %call1, i64 %202
  %scevgep609610 = bitcast i8* %scevgep609 to double*
  %_p_scalar_611 = load double, double* %scevgep609610, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_615, %_p_scalar_611
  %polly.access.add.Packed_MemRef_call2453617 = add nuw nsw i64 %polly.indvar606, %polly.access.mul.Packed_MemRef_call2453612
  %polly.access.Packed_MemRef_call2453618 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617
  %_p_scalar_619 = load double, double* %polly.access.Packed_MemRef_call2453618, align 8
  %p_mul37.i = fmul fast double %_p_scalar_622, %_p_scalar_619
  %203 = shl i64 %200, 3
  %204 = add i64 %203, %199
  %scevgep623 = getelementptr i8, i8* %call, i64 %204
  %scevgep623624 = bitcast i8* %scevgep623 to double*
  %_p_scalar_625 = load double, double* %scevgep623624, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_625
  store double %p_add42.i, double* %scevgep623624, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond910.not = icmp eq i64 %polly.indvar606, %smin909
  br i1 %exitcond910.not, label %polly.loop_exit604, label %polly.loop_header602

polly.loop_header764:                             ; preds = %entry, %polly.loop_exit772
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_exit772 ], [ 0, %entry ]
  %205 = mul nuw nsw i64 %polly.indvar767, 640
  %206 = trunc i64 %polly.indvar767 to i32
  %broadcast.splatinsert1029 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1030 = shufflevector <4 x i32> %broadcast.splatinsert1029, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %polly.loop_header764
  %index1021 = phi i64 [ 0, %polly.loop_header764 ], [ %index.next1022, %vector.body1019 ]
  %vec.ind1027 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header764 ], [ %vec.ind.next1028, %vector.body1019 ]
  %207 = mul <4 x i32> %vec.ind1027, %broadcast.splat1030
  %208 = add <4 x i32> %207, <i32 3, i32 3, i32 3, i32 3>
  %209 = urem <4 x i32> %208, <i32 80, i32 80, i32 80, i32 80>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %212 = shl i64 %index1021, 3
  %213 = add nuw nsw i64 %212, %205
  %214 = getelementptr i8, i8* %call, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %211, <4 x double>* %215, align 8, !alias.scope !99, !noalias !101
  %index.next1022 = add i64 %index1021, 4
  %vec.ind.next1028 = add <4 x i32> %vec.ind1027, <i32 4, i32 4, i32 4, i32 4>
  %216 = icmp eq i64 %index.next1022, 32
  br i1 %216, label %polly.loop_exit772, label %vector.body1019, !llvm.loop !104

polly.loop_exit772:                               ; preds = %vector.body1019
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond936.not = icmp eq i64 %polly.indvar_next768, 32
  br i1 %exitcond936.not, label %polly.loop_header764.1, label %polly.loop_header764

polly.loop_header791:                             ; preds = %polly.loop_exit772.2.2, %polly.loop_exit799
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_exit772.2.2 ]
  %217 = mul nuw nsw i64 %polly.indvar794, 480
  %218 = trunc i64 %polly.indvar794 to i32
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header791
  %index1135 = phi i64 [ 0, %polly.loop_header791 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1141 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791 ], [ %vec.ind.next1142, %vector.body1133 ]
  %219 = mul <4 x i32> %vec.ind1141, %broadcast.splat1144
  %220 = add <4 x i32> %219, <i32 2, i32 2, i32 2, i32 2>
  %221 = urem <4 x i32> %220, <i32 60, i32 60, i32 60, i32 60>
  %222 = sitofp <4 x i32> %221 to <4 x double>
  %223 = fmul fast <4 x double> %222, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %224 = shl i64 %index1135, 3
  %225 = add i64 %224, %217
  %226 = getelementptr i8, i8* %call2, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %223, <4 x double>* %227, align 8, !alias.scope !103, !noalias !105
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1142 = add <4 x i32> %vec.ind1141, <i32 4, i32 4, i32 4, i32 4>
  %228 = icmp eq i64 %index.next1136, 32
  br i1 %228, label %polly.loop_exit799, label %vector.body1133, !llvm.loop !106

polly.loop_exit799:                               ; preds = %vector.body1133
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond927.not = icmp eq i64 %polly.indvar_next795, 32
  br i1 %exitcond927.not, label %polly.loop_header791.1, label %polly.loop_header791

polly.loop_header817:                             ; preds = %polly.loop_exit799.1.2, %polly.loop_exit825
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_exit825 ], [ 0, %polly.loop_exit799.1.2 ]
  %229 = mul nuw nsw i64 %polly.indvar820, 480
  %230 = trunc i64 %polly.indvar820 to i32
  %broadcast.splatinsert1221 = insertelement <4 x i32> poison, i32 %230, i32 0
  %broadcast.splat1222 = shufflevector <4 x i32> %broadcast.splatinsert1221, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %polly.loop_header817
  %index1213 = phi i64 [ 0, %polly.loop_header817 ], [ %index.next1214, %vector.body1211 ]
  %vec.ind1219 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817 ], [ %vec.ind.next1220, %vector.body1211 ]
  %231 = mul <4 x i32> %vec.ind1219, %broadcast.splat1222
  %232 = add <4 x i32> %231, <i32 1, i32 1, i32 1, i32 1>
  %233 = urem <4 x i32> %232, <i32 80, i32 80, i32 80, i32 80>
  %234 = sitofp <4 x i32> %233 to <4 x double>
  %235 = fmul fast <4 x double> %234, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %236 = shl i64 %index1213, 3
  %237 = add i64 %236, %229
  %238 = getelementptr i8, i8* %call1, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %235, <4 x double>* %239, align 8, !alias.scope !102, !noalias !107
  %index.next1214 = add i64 %index1213, 4
  %vec.ind.next1220 = add <4 x i32> %vec.ind1219, <i32 4, i32 4, i32 4, i32 4>
  %240 = icmp eq i64 %index.next1214, 32
  br i1 %240, label %polly.loop_exit825, label %vector.body1211, !llvm.loop !108

polly.loop_exit825:                               ; preds = %vector.body1211
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond921.not = icmp eq i64 %polly.indvar_next821, 32
  br i1 %exitcond921.not, label %polly.loop_header817.1, label %polly.loop_header817

polly.loop_header817.1:                           ; preds = %polly.loop_exit825, %polly.loop_exit825.1
  %polly.indvar820.1 = phi i64 [ %polly.indvar_next821.1, %polly.loop_exit825.1 ], [ 0, %polly.loop_exit825 ]
  %241 = mul nuw nsw i64 %polly.indvar820.1, 480
  %242 = trunc i64 %polly.indvar820.1 to i32
  %broadcast.splatinsert1233 = insertelement <4 x i32> poison, i32 %242, i32 0
  %broadcast.splat1234 = shufflevector <4 x i32> %broadcast.splatinsert1233, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %polly.loop_header817.1
  %index1227 = phi i64 [ 0, %polly.loop_header817.1 ], [ %index.next1228, %vector.body1225 ]
  %vec.ind1231 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1 ], [ %vec.ind.next1232, %vector.body1225 ]
  %243 = add nuw nsw <4 x i64> %vec.ind1231, <i64 32, i64 32, i64 32, i64 32>
  %244 = trunc <4 x i64> %243 to <4 x i32>
  %245 = mul <4 x i32> %broadcast.splat1234, %244
  %246 = add <4 x i32> %245, <i32 1, i32 1, i32 1, i32 1>
  %247 = urem <4 x i32> %246, <i32 80, i32 80, i32 80, i32 80>
  %248 = sitofp <4 x i32> %247 to <4 x double>
  %249 = fmul fast <4 x double> %248, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %250 = extractelement <4 x i64> %243, i32 0
  %251 = shl i64 %250, 3
  %252 = add i64 %251, %241
  %253 = getelementptr i8, i8* %call1, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %249, <4 x double>* %254, align 8, !alias.scope !102, !noalias !107
  %index.next1228 = add i64 %index1227, 4
  %vec.ind.next1232 = add <4 x i64> %vec.ind1231, <i64 4, i64 4, i64 4, i64 4>
  %255 = icmp eq i64 %index.next1228, 28
  br i1 %255, label %polly.loop_exit825.1, label %vector.body1225, !llvm.loop !109

polly.loop_exit825.1:                             ; preds = %vector.body1225
  %polly.indvar_next821.1 = add nuw nsw i64 %polly.indvar820.1, 1
  %exitcond921.1.not = icmp eq i64 %polly.indvar_next821.1, 32
  br i1 %exitcond921.1.not, label %polly.loop_header817.1941, label %polly.loop_header817.1

polly.loop_header817.1941:                        ; preds = %polly.loop_exit825.1, %polly.loop_exit825.1952
  %polly.indvar820.1940 = phi i64 [ %polly.indvar_next821.1950, %polly.loop_exit825.1952 ], [ 0, %polly.loop_exit825.1 ]
  %256 = add nuw nsw i64 %polly.indvar820.1940, 32
  %257 = mul nuw nsw i64 %256, 480
  %258 = trunc i64 %256 to i32
  %broadcast.splatinsert1247 = insertelement <4 x i32> poison, i32 %258, i32 0
  %broadcast.splat1248 = shufflevector <4 x i32> %broadcast.splatinsert1247, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %polly.loop_header817.1941
  %index1239 = phi i64 [ 0, %polly.loop_header817.1941 ], [ %index.next1240, %vector.body1237 ]
  %vec.ind1245 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817.1941 ], [ %vec.ind.next1246, %vector.body1237 ]
  %259 = mul <4 x i32> %vec.ind1245, %broadcast.splat1248
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 80, i32 80, i32 80, i32 80>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %264 = shl i64 %index1239, 3
  %265 = add i64 %264, %257
  %266 = getelementptr i8, i8* %call1, i64 %265
  %267 = bitcast i8* %266 to <4 x double>*
  store <4 x double> %263, <4 x double>* %267, align 8, !alias.scope !102, !noalias !107
  %index.next1240 = add i64 %index1239, 4
  %vec.ind.next1246 = add <4 x i32> %vec.ind1245, <i32 4, i32 4, i32 4, i32 4>
  %268 = icmp eq i64 %index.next1240, 32
  br i1 %268, label %polly.loop_exit825.1952, label %vector.body1237, !llvm.loop !110

polly.loop_exit825.1952:                          ; preds = %vector.body1237
  %polly.indvar_next821.1950 = add nuw nsw i64 %polly.indvar820.1940, 1
  %exitcond921.1951.not = icmp eq i64 %polly.indvar_next821.1950, 32
  br i1 %exitcond921.1951.not, label %polly.loop_header817.1.1, label %polly.loop_header817.1941

polly.loop_header817.1.1:                         ; preds = %polly.loop_exit825.1952, %polly.loop_exit825.1.1
  %polly.indvar820.1.1 = phi i64 [ %polly.indvar_next821.1.1, %polly.loop_exit825.1.1 ], [ 0, %polly.loop_exit825.1952 ]
  %269 = add nuw nsw i64 %polly.indvar820.1.1, 32
  %270 = mul nuw nsw i64 %269, 480
  %271 = trunc i64 %269 to i32
  %broadcast.splatinsert1259 = insertelement <4 x i32> poison, i32 %271, i32 0
  %broadcast.splat1260 = shufflevector <4 x i32> %broadcast.splatinsert1259, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %polly.loop_header817.1.1
  %index1253 = phi i64 [ 0, %polly.loop_header817.1.1 ], [ %index.next1254, %vector.body1251 ]
  %vec.ind1257 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1.1 ], [ %vec.ind.next1258, %vector.body1251 ]
  %272 = add nuw nsw <4 x i64> %vec.ind1257, <i64 32, i64 32, i64 32, i64 32>
  %273 = trunc <4 x i64> %272 to <4 x i32>
  %274 = mul <4 x i32> %broadcast.splat1260, %273
  %275 = add <4 x i32> %274, <i32 1, i32 1, i32 1, i32 1>
  %276 = urem <4 x i32> %275, <i32 80, i32 80, i32 80, i32 80>
  %277 = sitofp <4 x i32> %276 to <4 x double>
  %278 = fmul fast <4 x double> %277, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %279 = extractelement <4 x i64> %272, i32 0
  %280 = shl i64 %279, 3
  %281 = add i64 %280, %270
  %282 = getelementptr i8, i8* %call1, i64 %281
  %283 = bitcast i8* %282 to <4 x double>*
  store <4 x double> %278, <4 x double>* %283, align 8, !alias.scope !102, !noalias !107
  %index.next1254 = add i64 %index1253, 4
  %vec.ind.next1258 = add <4 x i64> %vec.ind1257, <i64 4, i64 4, i64 4, i64 4>
  %284 = icmp eq i64 %index.next1254, 28
  br i1 %284, label %polly.loop_exit825.1.1, label %vector.body1251, !llvm.loop !111

polly.loop_exit825.1.1:                           ; preds = %vector.body1251
  %polly.indvar_next821.1.1 = add nuw nsw i64 %polly.indvar820.1.1, 1
  %exitcond921.1.1.not = icmp eq i64 %polly.indvar_next821.1.1, 32
  br i1 %exitcond921.1.1.not, label %polly.loop_header817.2, label %polly.loop_header817.1.1

polly.loop_header817.2:                           ; preds = %polly.loop_exit825.1.1, %polly.loop_exit825.2
  %polly.indvar820.2 = phi i64 [ %polly.indvar_next821.2, %polly.loop_exit825.2 ], [ 0, %polly.loop_exit825.1.1 ]
  %285 = add nuw nsw i64 %polly.indvar820.2, 64
  %286 = mul nuw nsw i64 %285, 480
  %287 = trunc i64 %285 to i32
  %broadcast.splatinsert1273 = insertelement <4 x i32> poison, i32 %287, i32 0
  %broadcast.splat1274 = shufflevector <4 x i32> %broadcast.splatinsert1273, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %polly.loop_header817.2
  %index1265 = phi i64 [ 0, %polly.loop_header817.2 ], [ %index.next1266, %vector.body1263 ]
  %vec.ind1271 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817.2 ], [ %vec.ind.next1272, %vector.body1263 ]
  %288 = mul <4 x i32> %vec.ind1271, %broadcast.splat1274
  %289 = add <4 x i32> %288, <i32 1, i32 1, i32 1, i32 1>
  %290 = urem <4 x i32> %289, <i32 80, i32 80, i32 80, i32 80>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %293 = shl i64 %index1265, 3
  %294 = add i64 %293, %286
  %295 = getelementptr i8, i8* %call1, i64 %294
  %296 = bitcast i8* %295 to <4 x double>*
  store <4 x double> %292, <4 x double>* %296, align 8, !alias.scope !102, !noalias !107
  %index.next1266 = add i64 %index1265, 4
  %vec.ind.next1272 = add <4 x i32> %vec.ind1271, <i32 4, i32 4, i32 4, i32 4>
  %297 = icmp eq i64 %index.next1266, 32
  br i1 %297, label %polly.loop_exit825.2, label %vector.body1263, !llvm.loop !112

polly.loop_exit825.2:                             ; preds = %vector.body1263
  %polly.indvar_next821.2 = add nuw nsw i64 %polly.indvar820.2, 1
  %exitcond921.2.not = icmp eq i64 %polly.indvar_next821.2, 16
  br i1 %exitcond921.2.not, label %polly.loop_header817.1.2, label %polly.loop_header817.2

polly.loop_header817.1.2:                         ; preds = %polly.loop_exit825.2, %polly.loop_exit825.1.2
  %polly.indvar820.1.2 = phi i64 [ %polly.indvar_next821.1.2, %polly.loop_exit825.1.2 ], [ 0, %polly.loop_exit825.2 ]
  %298 = add nuw nsw i64 %polly.indvar820.1.2, 64
  %299 = mul nuw nsw i64 %298, 480
  %300 = trunc i64 %298 to i32
  %broadcast.splatinsert1285 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1286 = shufflevector <4 x i32> %broadcast.splatinsert1285, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %polly.loop_header817.1.2
  %index1279 = phi i64 [ 0, %polly.loop_header817.1.2 ], [ %index.next1280, %vector.body1277 ]
  %vec.ind1283 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1.2 ], [ %vec.ind.next1284, %vector.body1277 ]
  %301 = add nuw nsw <4 x i64> %vec.ind1283, <i64 32, i64 32, i64 32, i64 32>
  %302 = trunc <4 x i64> %301 to <4 x i32>
  %303 = mul <4 x i32> %broadcast.splat1286, %302
  %304 = add <4 x i32> %303, <i32 1, i32 1, i32 1, i32 1>
  %305 = urem <4 x i32> %304, <i32 80, i32 80, i32 80, i32 80>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %308 = extractelement <4 x i64> %301, i32 0
  %309 = shl i64 %308, 3
  %310 = add i64 %309, %299
  %311 = getelementptr i8, i8* %call1, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %307, <4 x double>* %312, align 8, !alias.scope !102, !noalias !107
  %index.next1280 = add i64 %index1279, 4
  %vec.ind.next1284 = add <4 x i64> %vec.ind1283, <i64 4, i64 4, i64 4, i64 4>
  %313 = icmp eq i64 %index.next1280, 28
  br i1 %313, label %polly.loop_exit825.1.2, label %vector.body1277, !llvm.loop !113

polly.loop_exit825.1.2:                           ; preds = %vector.body1277
  %polly.indvar_next821.1.2 = add nuw nsw i64 %polly.indvar820.1.2, 1
  %exitcond921.1.2.not = icmp eq i64 %polly.indvar_next821.1.2, 16
  br i1 %exitcond921.1.2.not, label %init_array.exit, label %polly.loop_header817.1.2

polly.loop_header791.1:                           ; preds = %polly.loop_exit799, %polly.loop_exit799.1
  %polly.indvar794.1 = phi i64 [ %polly.indvar_next795.1, %polly.loop_exit799.1 ], [ 0, %polly.loop_exit799 ]
  %314 = mul nuw nsw i64 %polly.indvar794.1, 480
  %315 = trunc i64 %polly.indvar794.1 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %315, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header791.1
  %index1149 = phi i64 [ 0, %polly.loop_header791.1 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1153 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1 ], [ %vec.ind.next1154, %vector.body1147 ]
  %316 = add nuw nsw <4 x i64> %vec.ind1153, <i64 32, i64 32, i64 32, i64 32>
  %317 = trunc <4 x i64> %316 to <4 x i32>
  %318 = mul <4 x i32> %broadcast.splat1156, %317
  %319 = add <4 x i32> %318, <i32 2, i32 2, i32 2, i32 2>
  %320 = urem <4 x i32> %319, <i32 60, i32 60, i32 60, i32 60>
  %321 = sitofp <4 x i32> %320 to <4 x double>
  %322 = fmul fast <4 x double> %321, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %323 = extractelement <4 x i64> %316, i32 0
  %324 = shl i64 %323, 3
  %325 = add i64 %324, %314
  %326 = getelementptr i8, i8* %call2, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %322, <4 x double>* %327, align 8, !alias.scope !103, !noalias !105
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1154 = add <4 x i64> %vec.ind1153, <i64 4, i64 4, i64 4, i64 4>
  %328 = icmp eq i64 %index.next1150, 28
  br i1 %328, label %polly.loop_exit799.1, label %vector.body1147, !llvm.loop !114

polly.loop_exit799.1:                             ; preds = %vector.body1147
  %polly.indvar_next795.1 = add nuw nsw i64 %polly.indvar794.1, 1
  %exitcond927.1.not = icmp eq i64 %polly.indvar_next795.1, 32
  br i1 %exitcond927.1.not, label %polly.loop_header791.1955, label %polly.loop_header791.1

polly.loop_header791.1955:                        ; preds = %polly.loop_exit799.1, %polly.loop_exit799.1966
  %polly.indvar794.1954 = phi i64 [ %polly.indvar_next795.1964, %polly.loop_exit799.1966 ], [ 0, %polly.loop_exit799.1 ]
  %329 = add nuw nsw i64 %polly.indvar794.1954, 32
  %330 = mul nuw nsw i64 %329, 480
  %331 = trunc i64 %329 to i32
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %331, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %polly.loop_header791.1955
  %index1161 = phi i64 [ 0, %polly.loop_header791.1955 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1167 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791.1955 ], [ %vec.ind.next1168, %vector.body1159 ]
  %332 = mul <4 x i32> %vec.ind1167, %broadcast.splat1170
  %333 = add <4 x i32> %332, <i32 2, i32 2, i32 2, i32 2>
  %334 = urem <4 x i32> %333, <i32 60, i32 60, i32 60, i32 60>
  %335 = sitofp <4 x i32> %334 to <4 x double>
  %336 = fmul fast <4 x double> %335, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %337 = shl i64 %index1161, 3
  %338 = add i64 %337, %330
  %339 = getelementptr i8, i8* %call2, i64 %338
  %340 = bitcast i8* %339 to <4 x double>*
  store <4 x double> %336, <4 x double>* %340, align 8, !alias.scope !103, !noalias !105
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1168 = add <4 x i32> %vec.ind1167, <i32 4, i32 4, i32 4, i32 4>
  %341 = icmp eq i64 %index.next1162, 32
  br i1 %341, label %polly.loop_exit799.1966, label %vector.body1159, !llvm.loop !115

polly.loop_exit799.1966:                          ; preds = %vector.body1159
  %polly.indvar_next795.1964 = add nuw nsw i64 %polly.indvar794.1954, 1
  %exitcond927.1965.not = icmp eq i64 %polly.indvar_next795.1964, 32
  br i1 %exitcond927.1965.not, label %polly.loop_header791.1.1, label %polly.loop_header791.1955

polly.loop_header791.1.1:                         ; preds = %polly.loop_exit799.1966, %polly.loop_exit799.1.1
  %polly.indvar794.1.1 = phi i64 [ %polly.indvar_next795.1.1, %polly.loop_exit799.1.1 ], [ 0, %polly.loop_exit799.1966 ]
  %342 = add nuw nsw i64 %polly.indvar794.1.1, 32
  %343 = mul nuw nsw i64 %342, 480
  %344 = trunc i64 %342 to i32
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %344, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %polly.loop_header791.1.1
  %index1175 = phi i64 [ 0, %polly.loop_header791.1.1 ], [ %index.next1176, %vector.body1173 ]
  %vec.ind1179 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1.1 ], [ %vec.ind.next1180, %vector.body1173 ]
  %345 = add nuw nsw <4 x i64> %vec.ind1179, <i64 32, i64 32, i64 32, i64 32>
  %346 = trunc <4 x i64> %345 to <4 x i32>
  %347 = mul <4 x i32> %broadcast.splat1182, %346
  %348 = add <4 x i32> %347, <i32 2, i32 2, i32 2, i32 2>
  %349 = urem <4 x i32> %348, <i32 60, i32 60, i32 60, i32 60>
  %350 = sitofp <4 x i32> %349 to <4 x double>
  %351 = fmul fast <4 x double> %350, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %352 = extractelement <4 x i64> %345, i32 0
  %353 = shl i64 %352, 3
  %354 = add i64 %353, %343
  %355 = getelementptr i8, i8* %call2, i64 %354
  %356 = bitcast i8* %355 to <4 x double>*
  store <4 x double> %351, <4 x double>* %356, align 8, !alias.scope !103, !noalias !105
  %index.next1176 = add i64 %index1175, 4
  %vec.ind.next1180 = add <4 x i64> %vec.ind1179, <i64 4, i64 4, i64 4, i64 4>
  %357 = icmp eq i64 %index.next1176, 28
  br i1 %357, label %polly.loop_exit799.1.1, label %vector.body1173, !llvm.loop !116

polly.loop_exit799.1.1:                           ; preds = %vector.body1173
  %polly.indvar_next795.1.1 = add nuw nsw i64 %polly.indvar794.1.1, 1
  %exitcond927.1.1.not = icmp eq i64 %polly.indvar_next795.1.1, 32
  br i1 %exitcond927.1.1.not, label %polly.loop_header791.2, label %polly.loop_header791.1.1

polly.loop_header791.2:                           ; preds = %polly.loop_exit799.1.1, %polly.loop_exit799.2
  %polly.indvar794.2 = phi i64 [ %polly.indvar_next795.2, %polly.loop_exit799.2 ], [ 0, %polly.loop_exit799.1.1 ]
  %358 = add nuw nsw i64 %polly.indvar794.2, 64
  %359 = mul nuw nsw i64 %358, 480
  %360 = trunc i64 %358 to i32
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %360, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %polly.loop_header791.2
  %index1187 = phi i64 [ 0, %polly.loop_header791.2 ], [ %index.next1188, %vector.body1185 ]
  %vec.ind1193 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791.2 ], [ %vec.ind.next1194, %vector.body1185 ]
  %361 = mul <4 x i32> %vec.ind1193, %broadcast.splat1196
  %362 = add <4 x i32> %361, <i32 2, i32 2, i32 2, i32 2>
  %363 = urem <4 x i32> %362, <i32 60, i32 60, i32 60, i32 60>
  %364 = sitofp <4 x i32> %363 to <4 x double>
  %365 = fmul fast <4 x double> %364, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %366 = shl i64 %index1187, 3
  %367 = add i64 %366, %359
  %368 = getelementptr i8, i8* %call2, i64 %367
  %369 = bitcast i8* %368 to <4 x double>*
  store <4 x double> %365, <4 x double>* %369, align 8, !alias.scope !103, !noalias !105
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1194 = add <4 x i32> %vec.ind1193, <i32 4, i32 4, i32 4, i32 4>
  %370 = icmp eq i64 %index.next1188, 32
  br i1 %370, label %polly.loop_exit799.2, label %vector.body1185, !llvm.loop !117

polly.loop_exit799.2:                             ; preds = %vector.body1185
  %polly.indvar_next795.2 = add nuw nsw i64 %polly.indvar794.2, 1
  %exitcond927.2.not = icmp eq i64 %polly.indvar_next795.2, 16
  br i1 %exitcond927.2.not, label %polly.loop_header791.1.2, label %polly.loop_header791.2

polly.loop_header791.1.2:                         ; preds = %polly.loop_exit799.2, %polly.loop_exit799.1.2
  %polly.indvar794.1.2 = phi i64 [ %polly.indvar_next795.1.2, %polly.loop_exit799.1.2 ], [ 0, %polly.loop_exit799.2 ]
  %371 = add nuw nsw i64 %polly.indvar794.1.2, 64
  %372 = mul nuw nsw i64 %371, 480
  %373 = trunc i64 %371 to i32
  %broadcast.splatinsert1207 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat1208 = shufflevector <4 x i32> %broadcast.splatinsert1207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %polly.loop_header791.1.2
  %index1201 = phi i64 [ 0, %polly.loop_header791.1.2 ], [ %index.next1202, %vector.body1199 ]
  %vec.ind1205 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1.2 ], [ %vec.ind.next1206, %vector.body1199 ]
  %374 = add nuw nsw <4 x i64> %vec.ind1205, <i64 32, i64 32, i64 32, i64 32>
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat1208, %375
  %377 = add <4 x i32> %376, <i32 2, i32 2, i32 2, i32 2>
  %378 = urem <4 x i32> %377, <i32 60, i32 60, i32 60, i32 60>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add i64 %382, %372
  %384 = getelementptr i8, i8* %call2, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !103, !noalias !105
  %index.next1202 = add i64 %index1201, 4
  %vec.ind.next1206 = add <4 x i64> %vec.ind1205, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next1202, 28
  br i1 %386, label %polly.loop_exit799.1.2, label %vector.body1199, !llvm.loop !118

polly.loop_exit799.1.2:                           ; preds = %vector.body1199
  %polly.indvar_next795.1.2 = add nuw nsw i64 %polly.indvar794.1.2, 1
  %exitcond927.1.2.not = icmp eq i64 %polly.indvar_next795.1.2, 16
  br i1 %exitcond927.1.2.not, label %polly.loop_header817, label %polly.loop_header791.1.2

polly.loop_header764.1:                           ; preds = %polly.loop_exit772, %polly.loop_exit772.1
  %polly.indvar767.1 = phi i64 [ %polly.indvar_next768.1, %polly.loop_exit772.1 ], [ 0, %polly.loop_exit772 ]
  %387 = mul nuw nsw i64 %polly.indvar767.1, 640
  %388 = trunc i64 %polly.indvar767.1 to i32
  %broadcast.splatinsert1041 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1042 = shufflevector <4 x i32> %broadcast.splatinsert1041, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %polly.loop_header764.1
  %index1035 = phi i64 [ 0, %polly.loop_header764.1 ], [ %index.next1036, %vector.body1033 ]
  %vec.ind1039 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.1 ], [ %vec.ind.next1040, %vector.body1033 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1039, <i64 32, i64 32, i64 32, i64 32>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1042, %390
  %392 = add <4 x i32> %391, <i32 3, i32 3, i32 3, i32 3>
  %393 = urem <4 x i32> %392, <i32 80, i32 80, i32 80, i32 80>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add nuw nsw i64 %397, %387
  %399 = getelementptr i8, i8* %call, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !99, !noalias !101
  %index.next1036 = add i64 %index1035, 4
  %vec.ind.next1040 = add <4 x i64> %vec.ind1039, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1036, 32
  br i1 %401, label %polly.loop_exit772.1, label %vector.body1033, !llvm.loop !119

polly.loop_exit772.1:                             ; preds = %vector.body1033
  %polly.indvar_next768.1 = add nuw nsw i64 %polly.indvar767.1, 1
  %exitcond936.1.not = icmp eq i64 %polly.indvar_next768.1, 32
  br i1 %exitcond936.1.not, label %polly.loop_header764.2, label %polly.loop_header764.1

polly.loop_header764.2:                           ; preds = %polly.loop_exit772.1, %polly.loop_exit772.2
  %polly.indvar767.2 = phi i64 [ %polly.indvar_next768.2, %polly.loop_exit772.2 ], [ 0, %polly.loop_exit772.1 ]
  %402 = mul nuw nsw i64 %polly.indvar767.2, 640
  %403 = trunc i64 %polly.indvar767.2 to i32
  %broadcast.splatinsert1053 = insertelement <4 x i32> poison, i32 %403, i32 0
  %broadcast.splat1054 = shufflevector <4 x i32> %broadcast.splatinsert1053, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %polly.loop_header764.2
  %index1047 = phi i64 [ 0, %polly.loop_header764.2 ], [ %index.next1048, %vector.body1045 ]
  %vec.ind1051 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.2 ], [ %vec.ind.next1052, %vector.body1045 ]
  %404 = add nuw nsw <4 x i64> %vec.ind1051, <i64 64, i64 64, i64 64, i64 64>
  %405 = trunc <4 x i64> %404 to <4 x i32>
  %406 = mul <4 x i32> %broadcast.splat1054, %405
  %407 = add <4 x i32> %406, <i32 3, i32 3, i32 3, i32 3>
  %408 = urem <4 x i32> %407, <i32 80, i32 80, i32 80, i32 80>
  %409 = sitofp <4 x i32> %408 to <4 x double>
  %410 = fmul fast <4 x double> %409, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %411 = extractelement <4 x i64> %404, i32 0
  %412 = shl i64 %411, 3
  %413 = add nuw nsw i64 %412, %402
  %414 = getelementptr i8, i8* %call, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %410, <4 x double>* %415, align 8, !alias.scope !99, !noalias !101
  %index.next1048 = add i64 %index1047, 4
  %vec.ind.next1052 = add <4 x i64> %vec.ind1051, <i64 4, i64 4, i64 4, i64 4>
  %416 = icmp eq i64 %index.next1048, 16
  br i1 %416, label %polly.loop_exit772.2, label %vector.body1045, !llvm.loop !120

polly.loop_exit772.2:                             ; preds = %vector.body1045
  %polly.indvar_next768.2 = add nuw nsw i64 %polly.indvar767.2, 1
  %exitcond936.2.not = icmp eq i64 %polly.indvar_next768.2, 32
  br i1 %exitcond936.2.not, label %polly.loop_header764.1969, label %polly.loop_header764.2

polly.loop_header764.1969:                        ; preds = %polly.loop_exit772.2, %polly.loop_exit772.1980
  %polly.indvar767.1968 = phi i64 [ %polly.indvar_next768.1978, %polly.loop_exit772.1980 ], [ 0, %polly.loop_exit772.2 ]
  %417 = add nuw nsw i64 %polly.indvar767.1968, 32
  %418 = mul nuw nsw i64 %417, 640
  %419 = trunc i64 %417 to i32
  %broadcast.splatinsert1067 = insertelement <4 x i32> poison, i32 %419, i32 0
  %broadcast.splat1068 = shufflevector <4 x i32> %broadcast.splatinsert1067, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %polly.loop_header764.1969
  %index1059 = phi i64 [ 0, %polly.loop_header764.1969 ], [ %index.next1060, %vector.body1057 ]
  %vec.ind1065 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header764.1969 ], [ %vec.ind.next1066, %vector.body1057 ]
  %420 = mul <4 x i32> %vec.ind1065, %broadcast.splat1068
  %421 = add <4 x i32> %420, <i32 3, i32 3, i32 3, i32 3>
  %422 = urem <4 x i32> %421, <i32 80, i32 80, i32 80, i32 80>
  %423 = sitofp <4 x i32> %422 to <4 x double>
  %424 = fmul fast <4 x double> %423, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %425 = shl i64 %index1059, 3
  %426 = add nuw nsw i64 %425, %418
  %427 = getelementptr i8, i8* %call, i64 %426
  %428 = bitcast i8* %427 to <4 x double>*
  store <4 x double> %424, <4 x double>* %428, align 8, !alias.scope !99, !noalias !101
  %index.next1060 = add i64 %index1059, 4
  %vec.ind.next1066 = add <4 x i32> %vec.ind1065, <i32 4, i32 4, i32 4, i32 4>
  %429 = icmp eq i64 %index.next1060, 32
  br i1 %429, label %polly.loop_exit772.1980, label %vector.body1057, !llvm.loop !121

polly.loop_exit772.1980:                          ; preds = %vector.body1057
  %polly.indvar_next768.1978 = add nuw nsw i64 %polly.indvar767.1968, 1
  %exitcond936.1979.not = icmp eq i64 %polly.indvar_next768.1978, 32
  br i1 %exitcond936.1979.not, label %polly.loop_header764.1.1, label %polly.loop_header764.1969

polly.loop_header764.1.1:                         ; preds = %polly.loop_exit772.1980, %polly.loop_exit772.1.1
  %polly.indvar767.1.1 = phi i64 [ %polly.indvar_next768.1.1, %polly.loop_exit772.1.1 ], [ 0, %polly.loop_exit772.1980 ]
  %430 = add nuw nsw i64 %polly.indvar767.1.1, 32
  %431 = mul nuw nsw i64 %430, 640
  %432 = trunc i64 %430 to i32
  %broadcast.splatinsert1079 = insertelement <4 x i32> poison, i32 %432, i32 0
  %broadcast.splat1080 = shufflevector <4 x i32> %broadcast.splatinsert1079, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %polly.loop_header764.1.1
  %index1073 = phi i64 [ 0, %polly.loop_header764.1.1 ], [ %index.next1074, %vector.body1071 ]
  %vec.ind1077 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.1.1 ], [ %vec.ind.next1078, %vector.body1071 ]
  %433 = add nuw nsw <4 x i64> %vec.ind1077, <i64 32, i64 32, i64 32, i64 32>
  %434 = trunc <4 x i64> %433 to <4 x i32>
  %435 = mul <4 x i32> %broadcast.splat1080, %434
  %436 = add <4 x i32> %435, <i32 3, i32 3, i32 3, i32 3>
  %437 = urem <4 x i32> %436, <i32 80, i32 80, i32 80, i32 80>
  %438 = sitofp <4 x i32> %437 to <4 x double>
  %439 = fmul fast <4 x double> %438, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %440 = extractelement <4 x i64> %433, i32 0
  %441 = shl i64 %440, 3
  %442 = add nuw nsw i64 %441, %431
  %443 = getelementptr i8, i8* %call, i64 %442
  %444 = bitcast i8* %443 to <4 x double>*
  store <4 x double> %439, <4 x double>* %444, align 8, !alias.scope !99, !noalias !101
  %index.next1074 = add i64 %index1073, 4
  %vec.ind.next1078 = add <4 x i64> %vec.ind1077, <i64 4, i64 4, i64 4, i64 4>
  %445 = icmp eq i64 %index.next1074, 32
  br i1 %445, label %polly.loop_exit772.1.1, label %vector.body1071, !llvm.loop !122

polly.loop_exit772.1.1:                           ; preds = %vector.body1071
  %polly.indvar_next768.1.1 = add nuw nsw i64 %polly.indvar767.1.1, 1
  %exitcond936.1.1.not = icmp eq i64 %polly.indvar_next768.1.1, 32
  br i1 %exitcond936.1.1.not, label %polly.loop_header764.2.1, label %polly.loop_header764.1.1

polly.loop_header764.2.1:                         ; preds = %polly.loop_exit772.1.1, %polly.loop_exit772.2.1
  %polly.indvar767.2.1 = phi i64 [ %polly.indvar_next768.2.1, %polly.loop_exit772.2.1 ], [ 0, %polly.loop_exit772.1.1 ]
  %446 = add nuw nsw i64 %polly.indvar767.2.1, 32
  %447 = mul nuw nsw i64 %446, 640
  %448 = trunc i64 %446 to i32
  %broadcast.splatinsert1091 = insertelement <4 x i32> poison, i32 %448, i32 0
  %broadcast.splat1092 = shufflevector <4 x i32> %broadcast.splatinsert1091, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %polly.loop_header764.2.1
  %index1085 = phi i64 [ 0, %polly.loop_header764.2.1 ], [ %index.next1086, %vector.body1083 ]
  %vec.ind1089 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.2.1 ], [ %vec.ind.next1090, %vector.body1083 ]
  %449 = add nuw nsw <4 x i64> %vec.ind1089, <i64 64, i64 64, i64 64, i64 64>
  %450 = trunc <4 x i64> %449 to <4 x i32>
  %451 = mul <4 x i32> %broadcast.splat1092, %450
  %452 = add <4 x i32> %451, <i32 3, i32 3, i32 3, i32 3>
  %453 = urem <4 x i32> %452, <i32 80, i32 80, i32 80, i32 80>
  %454 = sitofp <4 x i32> %453 to <4 x double>
  %455 = fmul fast <4 x double> %454, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %456 = extractelement <4 x i64> %449, i32 0
  %457 = shl i64 %456, 3
  %458 = add nuw nsw i64 %457, %447
  %459 = getelementptr i8, i8* %call, i64 %458
  %460 = bitcast i8* %459 to <4 x double>*
  store <4 x double> %455, <4 x double>* %460, align 8, !alias.scope !99, !noalias !101
  %index.next1086 = add i64 %index1085, 4
  %vec.ind.next1090 = add <4 x i64> %vec.ind1089, <i64 4, i64 4, i64 4, i64 4>
  %461 = icmp eq i64 %index.next1086, 16
  br i1 %461, label %polly.loop_exit772.2.1, label %vector.body1083, !llvm.loop !123

polly.loop_exit772.2.1:                           ; preds = %vector.body1083
  %polly.indvar_next768.2.1 = add nuw nsw i64 %polly.indvar767.2.1, 1
  %exitcond936.2.1.not = icmp eq i64 %polly.indvar_next768.2.1, 32
  br i1 %exitcond936.2.1.not, label %polly.loop_header764.2983, label %polly.loop_header764.2.1

polly.loop_header764.2983:                        ; preds = %polly.loop_exit772.2.1, %polly.loop_exit772.2994
  %polly.indvar767.2982 = phi i64 [ %polly.indvar_next768.2992, %polly.loop_exit772.2994 ], [ 0, %polly.loop_exit772.2.1 ]
  %462 = add nuw nsw i64 %polly.indvar767.2982, 64
  %463 = mul nuw nsw i64 %462, 640
  %464 = trunc i64 %462 to i32
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %464, i32 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %polly.loop_header764.2983
  %index1097 = phi i64 [ 0, %polly.loop_header764.2983 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1103 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header764.2983 ], [ %vec.ind.next1104, %vector.body1095 ]
  %465 = mul <4 x i32> %vec.ind1103, %broadcast.splat1106
  %466 = add <4 x i32> %465, <i32 3, i32 3, i32 3, i32 3>
  %467 = urem <4 x i32> %466, <i32 80, i32 80, i32 80, i32 80>
  %468 = sitofp <4 x i32> %467 to <4 x double>
  %469 = fmul fast <4 x double> %468, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %470 = shl i64 %index1097, 3
  %471 = add nuw nsw i64 %470, %463
  %472 = getelementptr i8, i8* %call, i64 %471
  %473 = bitcast i8* %472 to <4 x double>*
  store <4 x double> %469, <4 x double>* %473, align 8, !alias.scope !99, !noalias !101
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1104 = add <4 x i32> %vec.ind1103, <i32 4, i32 4, i32 4, i32 4>
  %474 = icmp eq i64 %index.next1098, 32
  br i1 %474, label %polly.loop_exit772.2994, label %vector.body1095, !llvm.loop !124

polly.loop_exit772.2994:                          ; preds = %vector.body1095
  %polly.indvar_next768.2992 = add nuw nsw i64 %polly.indvar767.2982, 1
  %exitcond936.2993.not = icmp eq i64 %polly.indvar_next768.2992, 16
  br i1 %exitcond936.2993.not, label %polly.loop_header764.1.2, label %polly.loop_header764.2983

polly.loop_header764.1.2:                         ; preds = %polly.loop_exit772.2994, %polly.loop_exit772.1.2
  %polly.indvar767.1.2 = phi i64 [ %polly.indvar_next768.1.2, %polly.loop_exit772.1.2 ], [ 0, %polly.loop_exit772.2994 ]
  %475 = add nuw nsw i64 %polly.indvar767.1.2, 64
  %476 = mul nuw nsw i64 %475, 640
  %477 = trunc i64 %475 to i32
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %477, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %polly.loop_header764.1.2
  %index1111 = phi i64 [ 0, %polly.loop_header764.1.2 ], [ %index.next1112, %vector.body1109 ]
  %vec.ind1115 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.1.2 ], [ %vec.ind.next1116, %vector.body1109 ]
  %478 = add nuw nsw <4 x i64> %vec.ind1115, <i64 32, i64 32, i64 32, i64 32>
  %479 = trunc <4 x i64> %478 to <4 x i32>
  %480 = mul <4 x i32> %broadcast.splat1118, %479
  %481 = add <4 x i32> %480, <i32 3, i32 3, i32 3, i32 3>
  %482 = urem <4 x i32> %481, <i32 80, i32 80, i32 80, i32 80>
  %483 = sitofp <4 x i32> %482 to <4 x double>
  %484 = fmul fast <4 x double> %483, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %485 = extractelement <4 x i64> %478, i32 0
  %486 = shl i64 %485, 3
  %487 = add nuw nsw i64 %486, %476
  %488 = getelementptr i8, i8* %call, i64 %487
  %489 = bitcast i8* %488 to <4 x double>*
  store <4 x double> %484, <4 x double>* %489, align 8, !alias.scope !99, !noalias !101
  %index.next1112 = add i64 %index1111, 4
  %vec.ind.next1116 = add <4 x i64> %vec.ind1115, <i64 4, i64 4, i64 4, i64 4>
  %490 = icmp eq i64 %index.next1112, 32
  br i1 %490, label %polly.loop_exit772.1.2, label %vector.body1109, !llvm.loop !125

polly.loop_exit772.1.2:                           ; preds = %vector.body1109
  %polly.indvar_next768.1.2 = add nuw nsw i64 %polly.indvar767.1.2, 1
  %exitcond936.1.2.not = icmp eq i64 %polly.indvar_next768.1.2, 16
  br i1 %exitcond936.1.2.not, label %polly.loop_header764.2.2, label %polly.loop_header764.1.2

polly.loop_header764.2.2:                         ; preds = %polly.loop_exit772.1.2, %polly.loop_exit772.2.2
  %polly.indvar767.2.2 = phi i64 [ %polly.indvar_next768.2.2, %polly.loop_exit772.2.2 ], [ 0, %polly.loop_exit772.1.2 ]
  %491 = add nuw nsw i64 %polly.indvar767.2.2, 64
  %492 = mul nuw nsw i64 %491, 640
  %493 = trunc i64 %491 to i32
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %493, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %polly.loop_header764.2.2
  %index1123 = phi i64 [ 0, %polly.loop_header764.2.2 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1127 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.2.2 ], [ %vec.ind.next1128, %vector.body1121 ]
  %494 = add nuw nsw <4 x i64> %vec.ind1127, <i64 64, i64 64, i64 64, i64 64>
  %495 = trunc <4 x i64> %494 to <4 x i32>
  %496 = mul <4 x i32> %broadcast.splat1130, %495
  %497 = add <4 x i32> %496, <i32 3, i32 3, i32 3, i32 3>
  %498 = urem <4 x i32> %497, <i32 80, i32 80, i32 80, i32 80>
  %499 = sitofp <4 x i32> %498 to <4 x double>
  %500 = fmul fast <4 x double> %499, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %501 = extractelement <4 x i64> %494, i32 0
  %502 = shl i64 %501, 3
  %503 = add nuw nsw i64 %502, %492
  %504 = getelementptr i8, i8* %call, i64 %503
  %505 = bitcast i8* %504 to <4 x double>*
  store <4 x double> %500, <4 x double>* %505, align 8, !alias.scope !99, !noalias !101
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1128 = add <4 x i64> %vec.ind1127, <i64 4, i64 4, i64 4, i64 4>
  %506 = icmp eq i64 %index.next1124, 16
  br i1 %506, label %polly.loop_exit772.2.2, label %vector.body1121, !llvm.loop !126

polly.loop_exit772.2.2:                           ; preds = %vector.body1121
  %polly.indvar_next768.2.2 = add nuw nsw i64 %polly.indvar767.2.2, 1
  %exitcond936.2.2.not = icmp eq i64 %polly.indvar_next768.2.2, 16
  br i1 %exitcond936.2.2.not, label %polly.loop_header791, label %polly.loop_header764.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 16}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 20}
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
!45 = !{!"llvm.loop.tile.size", i32 32}
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
