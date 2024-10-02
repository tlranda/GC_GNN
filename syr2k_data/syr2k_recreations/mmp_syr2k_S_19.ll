; ModuleID = 'syr2k_recreations//mmp_syr2k_S_19.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_19.c"
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
  %exitcond869.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1349 = add i64 %indvar1348, 1
  br i1 %exitcond869.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond868.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond868.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199.preheader
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit229 ], [ 0, %polly.loop_header199.preheader ]
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit229 ], [ 0, %polly.loop_header199.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 80, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199.preheader ]
  %97 = lshr i64 %polly.indvar208, 1
  %98 = shl nuw nsw i64 %97, 3
  %99 = sub nsw i64 %indvars.iv854, %98
  %100 = add i64 %indvars.iv858, %98
  %101 = shl nsw i64 %polly.indvar208, 2
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %102 = mul nsw i64 %polly.indvar208, -4
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 4
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -4
  %exitcond867.not = icmp eq i64 %polly.indvar_next209, 20
  br i1 %exitcond867.not, label %polly.loop_header205.1, label %polly.loop_header205

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
  %103 = add nuw nsw i64 %polly.indvar220, %101
  %polly.access.mul.call2224 = mul nuw nsw i64 %103, 60
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
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit235 ], [ %100, %polly.loop_exit213 ]
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit235 ], [ %99, %polly.loop_exit213 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %97, %polly.loop_exit213 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv856, i64 0)
  %104 = add i64 %smax, %indvars.iv860
  %105 = shl nsw i64 %polly.indvar230, 3
  %106 = sub nsw i64 %101, %105
  %107 = icmp sgt i64 %106, 0
  %108 = select i1 %107, i64 %106, i64 0
  %polly.loop_guard = icmp slt i64 %108, 8
  br i1 %polly.loop_guard, label %polly.loop_header233.us, label %polly.loop_exit235

polly.loop_header233.us:                          ; preds = %polly.loop_header227, %polly.loop_exit241.loopexit.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit241.loopexit.us ], [ 0, %polly.loop_header227 ]
  %109 = shl i64 %polly.indvar236.us, 3
  %polly.access.mul.Packed_MemRef_call2256.us = mul nuw nsw i64 %polly.indvar236.us, 80
  br label %polly.loop_header239.us

polly.loop_header239.us:                          ; preds = %polly.loop_header233.us, %polly.loop_exit248.us
  %indvars.iv862 = phi i64 [ %104, %polly.loop_header233.us ], [ %indvars.iv.next863, %polly.loop_exit248.us ]
  %polly.indvar242.us = phi i64 [ %108, %polly.loop_header233.us ], [ %polly.indvar_next243.us, %polly.loop_exit248.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv862, i64 3)
  %110 = add nuw i64 %polly.indvar242.us, %105
  %111 = add i64 %110, %102
  %polly.loop_guard249.us994 = icmp sgt i64 %111, -1
  br i1 %polly.loop_guard249.us994, label %polly.loop_header246.preheader.us, label %polly.loop_exit248.us

polly.loop_header246.us:                          ; preds = %polly.loop_header246.preheader.us, %polly.loop_header246.us
  %polly.indvar250.us = phi i64 [ %polly.indvar_next251.us, %polly.loop_header246.us ], [ 0, %polly.loop_header246.preheader.us ]
  %112 = add nuw nsw i64 %polly.indvar250.us, %101
  %113 = mul nuw nsw i64 %112, 480
  %114 = add nuw nsw i64 %113, %109
  %scevgep253.us = getelementptr i8, i8* %call1, i64 %114
  %scevgep253254.us = bitcast i8* %scevgep253.us to double*
  %_p_scalar_255.us = load double, double* %scevgep253254.us, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.us = fmul fast double %_p_scalar_259.us, %_p_scalar_255.us
  %polly.access.add.Packed_MemRef_call2261.us = add nuw nsw i64 %polly.indvar250.us, %polly.access.mul.Packed_MemRef_call2256.us
  %polly.access.Packed_MemRef_call2262.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call2262.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %115 = shl i64 %112, 3
  %116 = add i64 %115, %119
  %scevgep267.us = getelementptr i8, i8* %call, i64 %116
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_269.us
  store double %p_add42.i118.us, double* %scevgep267268.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251.us = add nuw nsw i64 %polly.indvar250.us, 1
  %exitcond864.not = icmp eq i64 %polly.indvar250.us, %smin
  br i1 %exitcond864.not, label %polly.loop_exit248.us, label %polly.loop_header246.us

polly.loop_exit248.us:                            ; preds = %polly.loop_header246.us, %polly.loop_header239.us
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %polly.loop_cond244.us = icmp ult i64 %polly.indvar242.us, 7
  %indvars.iv.next863 = add i64 %indvars.iv862, 1
  br i1 %polly.loop_cond244.us, label %polly.loop_header239.us, label %polly.loop_exit241.loopexit.us

polly.loop_header246.preheader.us:                ; preds = %polly.loop_header239.us
  %polly.access.add.Packed_MemRef_call2257.us = add nsw i64 %polly.access.mul.Packed_MemRef_call2256.us, %111
  %polly.access.Packed_MemRef_call2258.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call2258.us, align 8
  %117 = mul i64 %110, 480
  %118 = add i64 %117, %109
  %scevgep264.us = getelementptr i8, i8* %call1, i64 %118
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !71, !noalias !78
  %119 = mul i64 %110, 640
  br label %polly.loop_header246.us

polly.loop_exit241.loopexit.us:                   ; preds = %polly.loop_exit248.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next237.us, 32
  br i1 %exitcond865.not, label %polly.loop_exit235, label %polly.loop_header233.us

polly.loop_exit235:                               ; preds = %polly.loop_exit241.loopexit.us, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next857 = add i64 %indvars.iv856, -8
  %indvars.iv.next861 = add i64 %indvars.iv860, 8
  %exitcond866.not = icmp eq i64 %polly.indvar_next231, 10
  br i1 %exitcond866.not, label %polly.loop_exit229, label %polly.loop_header227

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header358

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1322 = phi i64 [ %indvar.next1323, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %120 = add i64 %indvar1322, 1
  %121 = mul nuw nsw i64 %polly.indvar361, 640
  %scevgep370 = getelementptr i8, i8* %call, i64 %121
  %min.iters.check1324 = icmp ult i64 %120, 4
  br i1 %min.iters.check1324, label %polly.loop_header364.preheader, label %vector.ph1325

vector.ph1325:                                    ; preds = %polly.loop_header358
  %n.vec1327 = and i64 %120, -4
  br label %vector.body1321

vector.body1321:                                  ; preds = %vector.body1321, %vector.ph1325
  %index1328 = phi i64 [ 0, %vector.ph1325 ], [ %index.next1329, %vector.body1321 ]
  %122 = shl nuw nsw i64 %index1328, 3
  %123 = getelementptr i8, i8* %scevgep370, i64 %122
  %124 = bitcast i8* %123 to <4 x double>*
  %wide.load1332 = load <4 x double>, <4 x double>* %124, align 8, !alias.scope !79, !noalias !81
  %125 = fmul fast <4 x double> %wide.load1332, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %126 = bitcast i8* %123 to <4 x double>*
  store <4 x double> %125, <4 x double>* %126, align 8, !alias.scope !79, !noalias !81
  %index.next1329 = add i64 %index1328, 4
  %127 = icmp eq i64 %index.next1329, %n.vec1327
  br i1 %127, label %middle.block1319, label %vector.body1321, !llvm.loop !85

middle.block1319:                                 ; preds = %vector.body1321
  %cmp.n1331 = icmp eq i64 %120, %n.vec1327
  br i1 %cmp.n1331, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1319
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1327, %middle.block1319 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1319
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next362, 80
  %indvar.next1323 = add i64 %indvar1322, 1
  br i1 %exitcond891.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header380

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %128 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %128
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond890.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !86

polly.loop_header380:                             ; preds = %polly.loop_exit405, %polly.loop_header374.preheader
  %indvars.iv879 = phi i64 [ %indvars.iv.next880, %polly.loop_exit405 ], [ 0, %polly.loop_header374.preheader ]
  %indvars.iv874 = phi i64 [ %indvars.iv.next875, %polly.loop_exit405 ], [ 0, %polly.loop_header374.preheader ]
  %indvars.iv870 = phi i64 [ %indvars.iv.next871, %polly.loop_exit405 ], [ 80, %polly.loop_header374.preheader ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit405 ], [ 0, %polly.loop_header374.preheader ]
  %129 = lshr i64 %polly.indvar383, 1
  %130 = shl nuw nsw i64 %129, 3
  %131 = sub nsw i64 %indvars.iv874, %130
  %132 = add i64 %indvars.iv879, %130
  %133 = shl nsw i64 %polly.indvar383, 2
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_exit394
  %134 = mul nsw i64 %polly.indvar383, -4
  br label %polly.loop_header403

polly.loop_exit405:                               ; preds = %polly.loop_exit411
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %indvars.iv.next871 = add nsw i64 %indvars.iv870, -4
  %indvars.iv.next875 = add nuw nsw i64 %indvars.iv874, 4
  %indvars.iv.next880 = add nsw i64 %indvars.iv879, -4
  %exitcond889.not = icmp eq i64 %polly.indvar_next384, 20
  br i1 %exitcond889.not, label %polly.loop_header380.1, label %polly.loop_header380

polly.loop_header386:                             ; preds = %polly.loop_exit394, %polly.loop_header380
  %polly.indvar389 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next390, %polly.loop_exit394 ]
  %polly.access.mul.Packed_MemRef_call2275 = mul nuw nsw i64 %polly.indvar389, 80
  br label %polly.loop_header392

polly.loop_exit394:                               ; preds = %polly.loop_header392
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next390, 32
  br i1 %exitcond873.not, label %polly.loop_exit388, label %polly.loop_header386

polly.loop_header392:                             ; preds = %polly.loop_header392, %polly.loop_header386
  %polly.indvar395 = phi i64 [ 0, %polly.loop_header386 ], [ %polly.indvar_next396, %polly.loop_header392 ]
  %135 = add nuw nsw i64 %polly.indvar395, %133
  %polly.access.mul.call2399 = mul nuw nsw i64 %135, 60
  %polly.access.add.call2400 = add nuw nsw i64 %polly.indvar389, %polly.access.mul.call2399
  %polly.access.call2401 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400
  %polly.access.call2401.load = load double, double* %polly.access.call2401, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2275 = add nuw nsw i64 %polly.indvar395, %polly.access.mul.Packed_MemRef_call2275
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275
  store double %polly.access.call2401.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next396, %indvars.iv870
  br i1 %exitcond872.not, label %polly.loop_exit394, label %polly.loop_header392

polly.loop_header403:                             ; preds = %polly.loop_exit411, %polly.loop_exit388
  %indvars.iv881 = phi i64 [ %indvars.iv.next882, %polly.loop_exit411 ], [ %132, %polly.loop_exit388 ]
  %indvars.iv876 = phi i64 [ %indvars.iv.next877, %polly.loop_exit411 ], [ %131, %polly.loop_exit388 ]
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit411 ], [ %129, %polly.loop_exit388 ]
  %smax878 = call i64 @llvm.smax.i64(i64 %indvars.iv876, i64 0)
  %136 = add i64 %smax878, %indvars.iv881
  %137 = shl nsw i64 %polly.indvar406, 3
  %138 = sub nsw i64 %133, %137
  %139 = icmp sgt i64 %138, 0
  %140 = select i1 %139, i64 %138, i64 0
  %polly.loop_guard419 = icmp slt i64 %140, 8
  br i1 %polly.loop_guard419, label %polly.loop_header409.us, label %polly.loop_exit411

polly.loop_header409.us:                          ; preds = %polly.loop_header403, %polly.loop_exit418.loopexit.us
  %polly.indvar412.us = phi i64 [ %polly.indvar_next413.us, %polly.loop_exit418.loopexit.us ], [ 0, %polly.loop_header403 ]
  %141 = shl i64 %polly.indvar412.us, 3
  %polly.access.mul.Packed_MemRef_call2275434.us = mul nuw nsw i64 %polly.indvar412.us, 80
  br label %polly.loop_header416.us

polly.loop_header416.us:                          ; preds = %polly.loop_header409.us, %polly.loop_exit426.us
  %indvars.iv883 = phi i64 [ %136, %polly.loop_header409.us ], [ %indvars.iv.next884, %polly.loop_exit426.us ]
  %polly.indvar420.us = phi i64 [ %140, %polly.loop_header409.us ], [ %polly.indvar_next421.us, %polly.loop_exit426.us ]
  %smin885 = call i64 @llvm.smin.i64(i64 %indvars.iv883, i64 3)
  %142 = add nuw i64 %polly.indvar420.us, %137
  %143 = add i64 %142, %134
  %polly.loop_guard427.us996 = icmp sgt i64 %143, -1
  br i1 %polly.loop_guard427.us996, label %polly.loop_header424.preheader.us, label %polly.loop_exit426.us

polly.loop_header424.us:                          ; preds = %polly.loop_header424.preheader.us, %polly.loop_header424.us
  %polly.indvar428.us = phi i64 [ %polly.indvar_next429.us, %polly.loop_header424.us ], [ 0, %polly.loop_header424.preheader.us ]
  %144 = add nuw nsw i64 %polly.indvar428.us, %133
  %145 = mul nuw nsw i64 %144, 480
  %146 = add nuw nsw i64 %145, %141
  %scevgep431.us = getelementptr i8, i8* %call1, i64 %146
  %scevgep431432.us = bitcast i8* %scevgep431.us to double*
  %_p_scalar_433.us = load double, double* %scevgep431432.us, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.us = fmul fast double %_p_scalar_437.us, %_p_scalar_433.us
  %polly.access.add.Packed_MemRef_call2275439.us = add nuw nsw i64 %polly.indvar428.us, %polly.access.mul.Packed_MemRef_call2275434.us
  %polly.access.Packed_MemRef_call2275440.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.us
  %_p_scalar_441.us = load double, double* %polly.access.Packed_MemRef_call2275440.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_444.us, %_p_scalar_441.us
  %147 = shl i64 %144, 3
  %148 = add i64 %147, %151
  %scevgep445.us = getelementptr i8, i8* %call, i64 %148
  %scevgep445446.us = bitcast i8* %scevgep445.us to double*
  %_p_scalar_447.us = load double, double* %scevgep445446.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_447.us
  store double %p_add42.i79.us, double* %scevgep445446.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next429.us = add nuw nsw i64 %polly.indvar428.us, 1
  %exitcond886.not = icmp eq i64 %polly.indvar428.us, %smin885
  br i1 %exitcond886.not, label %polly.loop_exit426.us, label %polly.loop_header424.us

polly.loop_exit426.us:                            ; preds = %polly.loop_header424.us, %polly.loop_header416.us
  %polly.indvar_next421.us = add nuw nsw i64 %polly.indvar420.us, 1
  %polly.loop_cond422.us = icmp ult i64 %polly.indvar420.us, 7
  %indvars.iv.next884 = add i64 %indvars.iv883, 1
  br i1 %polly.loop_cond422.us, label %polly.loop_header416.us, label %polly.loop_exit418.loopexit.us

polly.loop_header424.preheader.us:                ; preds = %polly.loop_header416.us
  %polly.access.add.Packed_MemRef_call2275435.us = add nsw i64 %polly.access.mul.Packed_MemRef_call2275434.us, %143
  %polly.access.Packed_MemRef_call2275436.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.us
  %_p_scalar_437.us = load double, double* %polly.access.Packed_MemRef_call2275436.us, align 8
  %149 = mul i64 %142, 480
  %150 = add i64 %149, %141
  %scevgep442.us = getelementptr i8, i8* %call1, i64 %150
  %scevgep442443.us = bitcast i8* %scevgep442.us to double*
  %_p_scalar_444.us = load double, double* %scevgep442443.us, align 8, !alias.scope !82, !noalias !88
  %151 = mul i64 %142, 640
  br label %polly.loop_header424.us

polly.loop_exit418.loopexit.us:                   ; preds = %polly.loop_exit426.us
  %polly.indvar_next413.us = add nuw nsw i64 %polly.indvar412.us, 1
  %exitcond887.not = icmp eq i64 %polly.indvar_next413.us, 32
  br i1 %exitcond887.not, label %polly.loop_exit411, label %polly.loop_header409.us

polly.loop_exit411:                               ; preds = %polly.loop_exit418.loopexit.us, %polly.loop_header403
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %indvars.iv.next877 = add i64 %indvars.iv876, -8
  %indvars.iv.next882 = add i64 %indvars.iv881, 8
  %exitcond888.not = icmp eq i64 %polly.indvar_next407, 10
  br i1 %exitcond888.not, label %polly.loop_exit405, label %polly.loop_header403

polly.start450:                                   ; preds = %init_array.exit
  %malloccall452 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  br label %polly.loop_header536

polly.loop_header536:                             ; preds = %polly.loop_exit544, %polly.start450
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit544 ], [ 0, %polly.start450 ]
  %polly.indvar539 = phi i64 [ %polly.indvar_next540, %polly.loop_exit544 ], [ 1, %polly.start450 ]
  %152 = add i64 %indvar, 1
  %153 = mul nuw nsw i64 %polly.indvar539, 640
  %scevgep548 = getelementptr i8, i8* %call, i64 %153
  %min.iters.check1298 = icmp ult i64 %152, 4
  br i1 %min.iters.check1298, label %polly.loop_header542.preheader, label %vector.ph1299

vector.ph1299:                                    ; preds = %polly.loop_header536
  %n.vec1301 = and i64 %152, -4
  br label %vector.body1297

vector.body1297:                                  ; preds = %vector.body1297, %vector.ph1299
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1303, %vector.body1297 ]
  %154 = shl nuw nsw i64 %index1302, 3
  %155 = getelementptr i8, i8* %scevgep548, i64 %154
  %156 = bitcast i8* %155 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %156, align 8, !alias.scope !89, !noalias !91
  %157 = fmul fast <4 x double> %wide.load1306, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %158 = bitcast i8* %155 to <4 x double>*
  store <4 x double> %157, <4 x double>* %158, align 8, !alias.scope !89, !noalias !91
  %index.next1303 = add i64 %index1302, 4
  %159 = icmp eq i64 %index.next1303, %n.vec1301
  br i1 %159, label %middle.block1295, label %vector.body1297, !llvm.loop !95

middle.block1295:                                 ; preds = %vector.body1297
  %cmp.n1305 = icmp eq i64 %152, %n.vec1301
  br i1 %cmp.n1305, label %polly.loop_exit544, label %polly.loop_header542.preheader

polly.loop_header542.preheader:                   ; preds = %polly.loop_header536, %middle.block1295
  %polly.indvar545.ph = phi i64 [ 0, %polly.loop_header536 ], [ %n.vec1301, %middle.block1295 ]
  br label %polly.loop_header542

polly.loop_exit544:                               ; preds = %polly.loop_header542, %middle.block1295
  %polly.indvar_next540 = add nuw nsw i64 %polly.indvar539, 1
  %exitcond913.not = icmp eq i64 %polly.indvar_next540, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond913.not, label %polly.loop_header552.preheader, label %polly.loop_header536

polly.loop_header552.preheader:                   ; preds = %polly.loop_exit544
  %Packed_MemRef_call2453 = bitcast i8* %malloccall452 to double*
  br label %polly.loop_header558

polly.loop_header542:                             ; preds = %polly.loop_header542.preheader, %polly.loop_header542
  %polly.indvar545 = phi i64 [ %polly.indvar_next546, %polly.loop_header542 ], [ %polly.indvar545.ph, %polly.loop_header542.preheader ]
  %160 = shl nuw nsw i64 %polly.indvar545, 3
  %scevgep549 = getelementptr i8, i8* %scevgep548, i64 %160
  %scevgep549550 = bitcast i8* %scevgep549 to double*
  %_p_scalar_551 = load double, double* %scevgep549550, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_551, 1.200000e+00
  store double %p_mul.i, double* %scevgep549550, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next546 = add nuw nsw i64 %polly.indvar545, 1
  %exitcond912.not = icmp eq i64 %polly.indvar_next546, %polly.indvar539
  br i1 %exitcond912.not, label %polly.loop_exit544, label %polly.loop_header542, !llvm.loop !96

polly.loop_header558:                             ; preds = %polly.loop_exit583, %polly.loop_header552.preheader
  %indvars.iv901 = phi i64 [ %indvars.iv.next902, %polly.loop_exit583 ], [ 0, %polly.loop_header552.preheader ]
  %indvars.iv896 = phi i64 [ %indvars.iv.next897, %polly.loop_exit583 ], [ 0, %polly.loop_header552.preheader ]
  %indvars.iv892 = phi i64 [ %indvars.iv.next893, %polly.loop_exit583 ], [ 80, %polly.loop_header552.preheader ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit583 ], [ 0, %polly.loop_header552.preheader ]
  %161 = lshr i64 %polly.indvar561, 1
  %162 = shl nuw nsw i64 %161, 3
  %163 = sub nsw i64 %indvars.iv896, %162
  %164 = add i64 %indvars.iv901, %162
  %165 = shl nsw i64 %polly.indvar561, 2
  br label %polly.loop_header564

polly.loop_exit566:                               ; preds = %polly.loop_exit572
  %166 = mul nsw i64 %polly.indvar561, -4
  br label %polly.loop_header581

polly.loop_exit583:                               ; preds = %polly.loop_exit589
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %indvars.iv.next893 = add nsw i64 %indvars.iv892, -4
  %indvars.iv.next897 = add nuw nsw i64 %indvars.iv896, 4
  %indvars.iv.next902 = add nsw i64 %indvars.iv901, -4
  %exitcond911.not = icmp eq i64 %polly.indvar_next562, 20
  br i1 %exitcond911.not, label %polly.loop_header558.1, label %polly.loop_header558

polly.loop_header564:                             ; preds = %polly.loop_exit572, %polly.loop_header558
  %polly.indvar567 = phi i64 [ 0, %polly.loop_header558 ], [ %polly.indvar_next568, %polly.loop_exit572 ]
  %polly.access.mul.Packed_MemRef_call2453 = mul nuw nsw i64 %polly.indvar567, 80
  br label %polly.loop_header570

polly.loop_exit572:                               ; preds = %polly.loop_header570
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next568, 32
  br i1 %exitcond895.not, label %polly.loop_exit566, label %polly.loop_header564

polly.loop_header570:                             ; preds = %polly.loop_header570, %polly.loop_header564
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header564 ], [ %polly.indvar_next574, %polly.loop_header570 ]
  %167 = add nuw nsw i64 %polly.indvar573, %165
  %polly.access.mul.call2577 = mul nuw nsw i64 %167, 60
  %polly.access.add.call2578 = add nuw nsw i64 %polly.indvar567, %polly.access.mul.call2577
  %polly.access.call2579 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578
  %polly.access.call2579.load = load double, double* %polly.access.call2579, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2453 = add nuw nsw i64 %polly.indvar573, %polly.access.mul.Packed_MemRef_call2453
  %polly.access.Packed_MemRef_call2453 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453
  store double %polly.access.call2579.load, double* %polly.access.Packed_MemRef_call2453, align 8
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond894.not = icmp eq i64 %polly.indvar_next574, %indvars.iv892
  br i1 %exitcond894.not, label %polly.loop_exit572, label %polly.loop_header570

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_exit566
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %polly.loop_exit589 ], [ %164, %polly.loop_exit566 ]
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit589 ], [ %163, %polly.loop_exit566 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit589 ], [ %161, %polly.loop_exit566 ]
  %smax900 = call i64 @llvm.smax.i64(i64 %indvars.iv898, i64 0)
  %168 = add i64 %smax900, %indvars.iv903
  %169 = shl nsw i64 %polly.indvar584, 3
  %170 = sub nsw i64 %165, %169
  %171 = icmp sgt i64 %170, 0
  %172 = select i1 %171, i64 %170, i64 0
  %polly.loop_guard597 = icmp slt i64 %172, 8
  br i1 %polly.loop_guard597, label %polly.loop_header587.us, label %polly.loop_exit589

polly.loop_header587.us:                          ; preds = %polly.loop_header581, %polly.loop_exit596.loopexit.us
  %polly.indvar590.us = phi i64 [ %polly.indvar_next591.us, %polly.loop_exit596.loopexit.us ], [ 0, %polly.loop_header581 ]
  %173 = shl i64 %polly.indvar590.us, 3
  %polly.access.mul.Packed_MemRef_call2453612.us = mul nuw nsw i64 %polly.indvar590.us, 80
  br label %polly.loop_header594.us

polly.loop_header594.us:                          ; preds = %polly.loop_header587.us, %polly.loop_exit604.us
  %indvars.iv905 = phi i64 [ %168, %polly.loop_header587.us ], [ %indvars.iv.next906, %polly.loop_exit604.us ]
  %polly.indvar598.us = phi i64 [ %172, %polly.loop_header587.us ], [ %polly.indvar_next599.us, %polly.loop_exit604.us ]
  %smin907 = call i64 @llvm.smin.i64(i64 %indvars.iv905, i64 3)
  %174 = add nuw i64 %polly.indvar598.us, %169
  %175 = add i64 %174, %166
  %polly.loop_guard605.us998 = icmp sgt i64 %175, -1
  br i1 %polly.loop_guard605.us998, label %polly.loop_header602.preheader.us, label %polly.loop_exit604.us

polly.loop_header602.us:                          ; preds = %polly.loop_header602.preheader.us, %polly.loop_header602.us
  %polly.indvar606.us = phi i64 [ %polly.indvar_next607.us, %polly.loop_header602.us ], [ 0, %polly.loop_header602.preheader.us ]
  %176 = add nuw nsw i64 %polly.indvar606.us, %165
  %177 = mul nuw nsw i64 %176, 480
  %178 = add nuw nsw i64 %177, %173
  %scevgep609.us = getelementptr i8, i8* %call1, i64 %178
  %scevgep609610.us = bitcast i8* %scevgep609.us to double*
  %_p_scalar_611.us = load double, double* %scevgep609610.us, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.us = fmul fast double %_p_scalar_615.us, %_p_scalar_611.us
  %polly.access.add.Packed_MemRef_call2453617.us = add nuw nsw i64 %polly.indvar606.us, %polly.access.mul.Packed_MemRef_call2453612.us
  %polly.access.Packed_MemRef_call2453618.us = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.us
  %_p_scalar_619.us = load double, double* %polly.access.Packed_MemRef_call2453618.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_622.us, %_p_scalar_619.us
  %179 = shl i64 %176, 3
  %180 = add i64 %179, %183
  %scevgep623.us = getelementptr i8, i8* %call, i64 %180
  %scevgep623624.us = bitcast i8* %scevgep623.us to double*
  %_p_scalar_625.us = load double, double* %scevgep623624.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_625.us
  store double %p_add42.i.us, double* %scevgep623624.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next607.us = add nuw nsw i64 %polly.indvar606.us, 1
  %exitcond908.not = icmp eq i64 %polly.indvar606.us, %smin907
  br i1 %exitcond908.not, label %polly.loop_exit604.us, label %polly.loop_header602.us

polly.loop_exit604.us:                            ; preds = %polly.loop_header602.us, %polly.loop_header594.us
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %polly.loop_cond600.us = icmp ult i64 %polly.indvar598.us, 7
  %indvars.iv.next906 = add i64 %indvars.iv905, 1
  br i1 %polly.loop_cond600.us, label %polly.loop_header594.us, label %polly.loop_exit596.loopexit.us

polly.loop_header602.preheader.us:                ; preds = %polly.loop_header594.us
  %polly.access.add.Packed_MemRef_call2453613.us = add nsw i64 %polly.access.mul.Packed_MemRef_call2453612.us, %175
  %polly.access.Packed_MemRef_call2453614.us = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.us
  %_p_scalar_615.us = load double, double* %polly.access.Packed_MemRef_call2453614.us, align 8
  %181 = mul i64 %174, 480
  %182 = add i64 %181, %173
  %scevgep620.us = getelementptr i8, i8* %call1, i64 %182
  %scevgep620621.us = bitcast i8* %scevgep620.us to double*
  %_p_scalar_622.us = load double, double* %scevgep620621.us, align 8, !alias.scope !92, !noalias !98
  %183 = mul i64 %174, 640
  br label %polly.loop_header602.us

polly.loop_exit596.loopexit.us:                   ; preds = %polly.loop_exit604.us
  %polly.indvar_next591.us = add nuw nsw i64 %polly.indvar590.us, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next591.us, 32
  br i1 %exitcond909.not, label %polly.loop_exit589, label %polly.loop_header587.us

polly.loop_exit589:                               ; preds = %polly.loop_exit596.loopexit.us, %polly.loop_header581
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %indvars.iv.next899 = add i64 %indvars.iv898, -8
  %indvars.iv.next904 = add i64 %indvars.iv903, 8
  %exitcond910.not = icmp eq i64 %polly.indvar_next585, 10
  br i1 %exitcond910.not, label %polly.loop_exit583, label %polly.loop_header581

polly.loop_header764:                             ; preds = %entry, %polly.loop_exit772
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_exit772 ], [ 0, %entry ]
  %184 = mul nuw nsw i64 %polly.indvar767, 640
  %185 = trunc i64 %polly.indvar767 to i32
  %broadcast.splatinsert1029 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1030 = shufflevector <4 x i32> %broadcast.splatinsert1029, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %polly.loop_header764
  %index1021 = phi i64 [ 0, %polly.loop_header764 ], [ %index.next1022, %vector.body1019 ]
  %vec.ind1027 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header764 ], [ %vec.ind.next1028, %vector.body1019 ]
  %186 = mul <4 x i32> %vec.ind1027, %broadcast.splat1030
  %187 = add <4 x i32> %186, <i32 3, i32 3, i32 3, i32 3>
  %188 = urem <4 x i32> %187, <i32 80, i32 80, i32 80, i32 80>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %191 = shl i64 %index1021, 3
  %192 = add nuw nsw i64 %191, %184
  %193 = getelementptr i8, i8* %call, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %190, <4 x double>* %194, align 8, !alias.scope !99, !noalias !101
  %index.next1022 = add i64 %index1021, 4
  %vec.ind.next1028 = add <4 x i32> %vec.ind1027, <i32 4, i32 4, i32 4, i32 4>
  %195 = icmp eq i64 %index.next1022, 32
  br i1 %195, label %polly.loop_exit772, label %vector.body1019, !llvm.loop !104

polly.loop_exit772:                               ; preds = %vector.body1019
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond933.not = icmp eq i64 %polly.indvar_next768, 32
  br i1 %exitcond933.not, label %polly.loop_header764.1, label %polly.loop_header764

polly.loop_header791:                             ; preds = %polly.loop_exit772.2.2, %polly.loop_exit799
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_exit772.2.2 ]
  %196 = mul nuw nsw i64 %polly.indvar794, 480
  %197 = trunc i64 %polly.indvar794 to i32
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1133

vector.body1133:                                  ; preds = %vector.body1133, %polly.loop_header791
  %index1135 = phi i64 [ 0, %polly.loop_header791 ], [ %index.next1136, %vector.body1133 ]
  %vec.ind1141 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791 ], [ %vec.ind.next1142, %vector.body1133 ]
  %198 = mul <4 x i32> %vec.ind1141, %broadcast.splat1144
  %199 = add <4 x i32> %198, <i32 2, i32 2, i32 2, i32 2>
  %200 = urem <4 x i32> %199, <i32 60, i32 60, i32 60, i32 60>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %203 = shl i64 %index1135, 3
  %204 = add i64 %203, %196
  %205 = getelementptr i8, i8* %call2, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !103, !noalias !105
  %index.next1136 = add i64 %index1135, 4
  %vec.ind.next1142 = add <4 x i32> %vec.ind1141, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next1136, 32
  br i1 %207, label %polly.loop_exit799, label %vector.body1133, !llvm.loop !106

polly.loop_exit799:                               ; preds = %vector.body1133
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond924.not = icmp eq i64 %polly.indvar_next795, 32
  br i1 %exitcond924.not, label %polly.loop_header791.1, label %polly.loop_header791

polly.loop_header817:                             ; preds = %polly.loop_exit799.1.2, %polly.loop_exit825
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_exit825 ], [ 0, %polly.loop_exit799.1.2 ]
  %208 = mul nuw nsw i64 %polly.indvar820, 480
  %209 = trunc i64 %polly.indvar820 to i32
  %broadcast.splatinsert1221 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1222 = shufflevector <4 x i32> %broadcast.splatinsert1221, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1211

vector.body1211:                                  ; preds = %vector.body1211, %polly.loop_header817
  %index1213 = phi i64 [ 0, %polly.loop_header817 ], [ %index.next1214, %vector.body1211 ]
  %vec.ind1219 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817 ], [ %vec.ind.next1220, %vector.body1211 ]
  %210 = mul <4 x i32> %vec.ind1219, %broadcast.splat1222
  %211 = add <4 x i32> %210, <i32 1, i32 1, i32 1, i32 1>
  %212 = urem <4 x i32> %211, <i32 80, i32 80, i32 80, i32 80>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %215 = shl i64 %index1213, 3
  %216 = add i64 %215, %208
  %217 = getelementptr i8, i8* %call1, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %214, <4 x double>* %218, align 8, !alias.scope !102, !noalias !107
  %index.next1214 = add i64 %index1213, 4
  %vec.ind.next1220 = add <4 x i32> %vec.ind1219, <i32 4, i32 4, i32 4, i32 4>
  %219 = icmp eq i64 %index.next1214, 32
  br i1 %219, label %polly.loop_exit825, label %vector.body1211, !llvm.loop !108

polly.loop_exit825:                               ; preds = %vector.body1211
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond918.not = icmp eq i64 %polly.indvar_next821, 32
  br i1 %exitcond918.not, label %polly.loop_header817.1, label %polly.loop_header817

polly.loop_header205.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv858.1 = phi i64 [ %indvars.iv.next859.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %indvars.iv854.1 = phi i64 [ %indvars.iv.next855.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit229.1 ], [ 80, %polly.loop_exit229 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %220 = lshr i64 %polly.indvar208.1, 1
  %221 = shl nuw nsw i64 %220, 3
  %222 = sub nsw i64 %indvars.iv854.1, %221
  %223 = add i64 %indvars.iv858.1, %221
  %224 = shl nsw i64 %polly.indvar208.1, 2
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_header205.1
  %polly.indvar214.1 = phi i64 [ 0, %polly.loop_header205.1 ], [ %polly.indvar_next215.1, %polly.loop_exit219.1 ]
  %225 = add nuw nsw i64 %polly.indvar214.1, 32
  %polly.access.mul.Packed_MemRef_call2.1 = mul nuw nsw i64 %polly.indvar214.1, 80
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_header217.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_header217.1 ]
  %226 = add nuw nsw i64 %polly.indvar220.1, %224
  %polly.access.mul.call2224.1 = mul nuw nsw i64 %226, 60
  %polly.access.add.call2225.1 = add nuw nsw i64 %225, %polly.access.mul.call2224.1
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
  %227 = mul nsw i64 %polly.indvar208.1, -4
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_exit213.1
  %indvars.iv860.1 = phi i64 [ %indvars.iv.next861.1, %polly.loop_exit235.1 ], [ %223, %polly.loop_exit213.1 ]
  %indvars.iv856.1 = phi i64 [ %indvars.iv.next857.1, %polly.loop_exit235.1 ], [ %222, %polly.loop_exit213.1 ]
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ %220, %polly.loop_exit213.1 ]
  %smax.1 = call i64 @llvm.smax.i64(i64 %indvars.iv856.1, i64 0)
  %228 = add i64 %smax.1, %indvars.iv860.1
  %229 = shl nsw i64 %polly.indvar230.1, 3
  %230 = sub nsw i64 %224, %229
  %231 = icmp sgt i64 %230, 0
  %232 = select i1 %231, i64 %230, i64 0
  %polly.loop_guard.1 = icmp slt i64 %232, 8
  br i1 %polly.loop_guard.1, label %polly.loop_header233.us.1, label %polly.loop_exit235.1

polly.loop_header233.us.1:                        ; preds = %polly.loop_header227.1, %polly.loop_exit241.loopexit.us.1
  %polly.indvar236.us.1 = phi i64 [ %polly.indvar_next237.us.1, %polly.loop_exit241.loopexit.us.1 ], [ 0, %polly.loop_header227.1 ]
  %233 = shl i64 %polly.indvar236.us.1, 3
  %234 = add i64 %233, 256
  %polly.access.mul.Packed_MemRef_call2256.us.1 = mul nuw nsw i64 %polly.indvar236.us.1, 80
  br label %polly.loop_header239.us.1

polly.loop_header239.us.1:                        ; preds = %polly.loop_exit248.us.1, %polly.loop_header233.us.1
  %indvars.iv862.1 = phi i64 [ %228, %polly.loop_header233.us.1 ], [ %indvars.iv.next863.1, %polly.loop_exit248.us.1 ]
  %polly.indvar242.us.1 = phi i64 [ %232, %polly.loop_header233.us.1 ], [ %polly.indvar_next243.us.1, %polly.loop_exit248.us.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv862.1, i64 3)
  %235 = add nuw i64 %polly.indvar242.us.1, %229
  %236 = add i64 %235, %227
  %polly.loop_guard249.us.1993 = icmp sgt i64 %236, -1
  br i1 %polly.loop_guard249.us.1993, label %polly.loop_header246.preheader.us.1, label %polly.loop_exit248.us.1

polly.loop_header246.preheader.us.1:              ; preds = %polly.loop_header239.us.1
  %polly.access.add.Packed_MemRef_call2257.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2256.us.1, %236
  %polly.access.Packed_MemRef_call2258.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us.1
  %_p_scalar_259.us.1 = load double, double* %polly.access.Packed_MemRef_call2258.us.1, align 8
  %237 = mul i64 %235, 480
  %238 = add i64 %237, %234
  %scevgep264.us.1 = getelementptr i8, i8* %call1, i64 %238
  %scevgep264265.us.1 = bitcast i8* %scevgep264.us.1 to double*
  %_p_scalar_266.us.1 = load double, double* %scevgep264265.us.1, align 8, !alias.scope !71, !noalias !78
  %239 = mul i64 %235, 640
  br label %polly.loop_header246.us.1

polly.loop_header246.us.1:                        ; preds = %polly.loop_header246.us.1, %polly.loop_header246.preheader.us.1
  %polly.indvar250.us.1 = phi i64 [ %polly.indvar_next251.us.1, %polly.loop_header246.us.1 ], [ 0, %polly.loop_header246.preheader.us.1 ]
  %240 = add nuw nsw i64 %polly.indvar250.us.1, %224
  %241 = mul nuw nsw i64 %240, 480
  %242 = add nuw nsw i64 %241, %234
  %scevgep253.us.1 = getelementptr i8, i8* %call1, i64 %242
  %scevgep253254.us.1 = bitcast i8* %scevgep253.us.1 to double*
  %_p_scalar_255.us.1 = load double, double* %scevgep253254.us.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_259.us.1, %_p_scalar_255.us.1
  %polly.access.add.Packed_MemRef_call2261.us.1 = add nuw nsw i64 %polly.indvar250.us.1, %polly.access.mul.Packed_MemRef_call2256.us.1
  %polly.access.Packed_MemRef_call2262.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us.1
  %_p_scalar_263.us.1 = load double, double* %polly.access.Packed_MemRef_call2262.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_266.us.1, %_p_scalar_263.us.1
  %243 = shl i64 %240, 3
  %244 = add i64 %243, %239
  %scevgep267.us.1 = getelementptr i8, i8* %call, i64 %244
  %scevgep267268.us.1 = bitcast i8* %scevgep267.us.1 to double*
  %_p_scalar_269.us.1 = load double, double* %scevgep267268.us.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_269.us.1
  store double %p_add42.i118.us.1, double* %scevgep267268.us.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next251.us.1 = add nuw nsw i64 %polly.indvar250.us.1, 1
  %exitcond864.1.not = icmp eq i64 %polly.indvar250.us.1, %smin.1
  br i1 %exitcond864.1.not, label %polly.loop_exit248.us.1, label %polly.loop_header246.us.1

polly.loop_exit248.us.1:                          ; preds = %polly.loop_header246.us.1, %polly.loop_header239.us.1
  %polly.indvar_next243.us.1 = add nuw nsw i64 %polly.indvar242.us.1, 1
  %polly.loop_cond244.us.1 = icmp ult i64 %polly.indvar242.us.1, 7
  %indvars.iv.next863.1 = add i64 %indvars.iv862.1, 1
  br i1 %polly.loop_cond244.us.1, label %polly.loop_header239.us.1, label %polly.loop_exit241.loopexit.us.1

polly.loop_exit241.loopexit.us.1:                 ; preds = %polly.loop_exit248.us.1
  %polly.indvar_next237.us.1 = add nuw nsw i64 %polly.indvar236.us.1, 1
  %exitcond865.1.not = icmp eq i64 %polly.indvar_next237.us.1, 28
  br i1 %exitcond865.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.us.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit241.loopexit.us.1, %polly.loop_header227.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %indvars.iv.next857.1 = add i64 %indvars.iv856.1, -8
  %indvars.iv.next861.1 = add i64 %indvars.iv860.1, 8
  %exitcond866.1.not = icmp eq i64 %polly.indvar_next231.1, 10
  br i1 %exitcond866.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -4
  %indvars.iv.next855.1 = add nuw nsw i64 %indvars.iv854.1, 4
  %indvars.iv.next859.1 = add nsw i64 %indvars.iv858.1, -4
  %exitcond867.1.not = icmp eq i64 %polly.indvar_next209.1, 20
  br i1 %exitcond867.1.not, label %polly.loop_exit207.1, label %polly.loop_header205.1

polly.loop_exit207.1:                             ; preds = %polly.loop_exit229.1
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header380.1:                           ; preds = %polly.loop_exit405, %polly.loop_exit405.1
  %indvars.iv879.1 = phi i64 [ %indvars.iv.next880.1, %polly.loop_exit405.1 ], [ 0, %polly.loop_exit405 ]
  %indvars.iv874.1 = phi i64 [ %indvars.iv.next875.1, %polly.loop_exit405.1 ], [ 0, %polly.loop_exit405 ]
  %indvars.iv870.1 = phi i64 [ %indvars.iv.next871.1, %polly.loop_exit405.1 ], [ 80, %polly.loop_exit405 ]
  %polly.indvar383.1 = phi i64 [ %polly.indvar_next384.1, %polly.loop_exit405.1 ], [ 0, %polly.loop_exit405 ]
  %245 = lshr i64 %polly.indvar383.1, 1
  %246 = shl nuw nsw i64 %245, 3
  %247 = sub nsw i64 %indvars.iv874.1, %246
  %248 = add i64 %indvars.iv879.1, %246
  %249 = shl nsw i64 %polly.indvar383.1, 2
  br label %polly.loop_header386.1

polly.loop_header386.1:                           ; preds = %polly.loop_exit394.1, %polly.loop_header380.1
  %polly.indvar389.1 = phi i64 [ 0, %polly.loop_header380.1 ], [ %polly.indvar_next390.1, %polly.loop_exit394.1 ]
  %250 = add nuw nsw i64 %polly.indvar389.1, 32
  %polly.access.mul.Packed_MemRef_call2275.1 = mul nuw nsw i64 %polly.indvar389.1, 80
  br label %polly.loop_header392.1

polly.loop_header392.1:                           ; preds = %polly.loop_header392.1, %polly.loop_header386.1
  %polly.indvar395.1 = phi i64 [ 0, %polly.loop_header386.1 ], [ %polly.indvar_next396.1, %polly.loop_header392.1 ]
  %251 = add nuw nsw i64 %polly.indvar395.1, %249
  %polly.access.mul.call2399.1 = mul nuw nsw i64 %251, 60
  %polly.access.add.call2400.1 = add nuw nsw i64 %250, %polly.access.mul.call2399.1
  %polly.access.call2401.1 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400.1
  %polly.access.call2401.load.1 = load double, double* %polly.access.call2401.1, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2275.1 = add nuw nsw i64 %polly.indvar395.1, %polly.access.mul.Packed_MemRef_call2275.1
  %polly.access.Packed_MemRef_call2275.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275.1
  store double %polly.access.call2401.load.1, double* %polly.access.Packed_MemRef_call2275.1, align 8
  %polly.indvar_next396.1 = add nuw nsw i64 %polly.indvar395.1, 1
  %exitcond872.1.not = icmp eq i64 %polly.indvar_next396.1, %indvars.iv870.1
  br i1 %exitcond872.1.not, label %polly.loop_exit394.1, label %polly.loop_header392.1

polly.loop_exit394.1:                             ; preds = %polly.loop_header392.1
  %polly.indvar_next390.1 = add nuw nsw i64 %polly.indvar389.1, 1
  %exitcond873.1.not = icmp eq i64 %polly.indvar_next390.1, 28
  br i1 %exitcond873.1.not, label %polly.loop_exit388.1, label %polly.loop_header386.1

polly.loop_exit388.1:                             ; preds = %polly.loop_exit394.1
  %252 = mul nsw i64 %polly.indvar383.1, -4
  br label %polly.loop_header403.1

polly.loop_header403.1:                           ; preds = %polly.loop_exit411.1, %polly.loop_exit388.1
  %indvars.iv881.1 = phi i64 [ %indvars.iv.next882.1, %polly.loop_exit411.1 ], [ %248, %polly.loop_exit388.1 ]
  %indvars.iv876.1 = phi i64 [ %indvars.iv.next877.1, %polly.loop_exit411.1 ], [ %247, %polly.loop_exit388.1 ]
  %polly.indvar406.1 = phi i64 [ %polly.indvar_next407.1, %polly.loop_exit411.1 ], [ %245, %polly.loop_exit388.1 ]
  %smax878.1 = call i64 @llvm.smax.i64(i64 %indvars.iv876.1, i64 0)
  %253 = add i64 %smax878.1, %indvars.iv881.1
  %254 = shl nsw i64 %polly.indvar406.1, 3
  %255 = sub nsw i64 %249, %254
  %256 = icmp sgt i64 %255, 0
  %257 = select i1 %256, i64 %255, i64 0
  %polly.loop_guard419.1 = icmp slt i64 %257, 8
  br i1 %polly.loop_guard419.1, label %polly.loop_header409.us.1, label %polly.loop_exit411.1

polly.loop_header409.us.1:                        ; preds = %polly.loop_header403.1, %polly.loop_exit418.loopexit.us.1
  %polly.indvar412.us.1 = phi i64 [ %polly.indvar_next413.us.1, %polly.loop_exit418.loopexit.us.1 ], [ 0, %polly.loop_header403.1 ]
  %258 = shl i64 %polly.indvar412.us.1, 3
  %259 = add i64 %258, 256
  %polly.access.mul.Packed_MemRef_call2275434.us.1 = mul nuw nsw i64 %polly.indvar412.us.1, 80
  br label %polly.loop_header416.us.1

polly.loop_header416.us.1:                        ; preds = %polly.loop_exit426.us.1, %polly.loop_header409.us.1
  %indvars.iv883.1 = phi i64 [ %253, %polly.loop_header409.us.1 ], [ %indvars.iv.next884.1, %polly.loop_exit426.us.1 ]
  %polly.indvar420.us.1 = phi i64 [ %257, %polly.loop_header409.us.1 ], [ %polly.indvar_next421.us.1, %polly.loop_exit426.us.1 ]
  %smin885.1 = call i64 @llvm.smin.i64(i64 %indvars.iv883.1, i64 3)
  %260 = add nuw i64 %polly.indvar420.us.1, %254
  %261 = add i64 %260, %252
  %polly.loop_guard427.us.1995 = icmp sgt i64 %261, -1
  br i1 %polly.loop_guard427.us.1995, label %polly.loop_header424.preheader.us.1, label %polly.loop_exit426.us.1

polly.loop_header424.preheader.us.1:              ; preds = %polly.loop_header416.us.1
  %polly.access.add.Packed_MemRef_call2275435.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2275434.us.1, %261
  %polly.access.Packed_MemRef_call2275436.us.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.us.1
  %_p_scalar_437.us.1 = load double, double* %polly.access.Packed_MemRef_call2275436.us.1, align 8
  %262 = mul i64 %260, 480
  %263 = add i64 %262, %259
  %scevgep442.us.1 = getelementptr i8, i8* %call1, i64 %263
  %scevgep442443.us.1 = bitcast i8* %scevgep442.us.1 to double*
  %_p_scalar_444.us.1 = load double, double* %scevgep442443.us.1, align 8, !alias.scope !82, !noalias !88
  %264 = mul i64 %260, 640
  br label %polly.loop_header424.us.1

polly.loop_header424.us.1:                        ; preds = %polly.loop_header424.us.1, %polly.loop_header424.preheader.us.1
  %polly.indvar428.us.1 = phi i64 [ %polly.indvar_next429.us.1, %polly.loop_header424.us.1 ], [ 0, %polly.loop_header424.preheader.us.1 ]
  %265 = add nuw nsw i64 %polly.indvar428.us.1, %249
  %266 = mul nuw nsw i64 %265, 480
  %267 = add nuw nsw i64 %266, %259
  %scevgep431.us.1 = getelementptr i8, i8* %call1, i64 %267
  %scevgep431432.us.1 = bitcast i8* %scevgep431.us.1 to double*
  %_p_scalar_433.us.1 = load double, double* %scevgep431432.us.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_437.us.1, %_p_scalar_433.us.1
  %polly.access.add.Packed_MemRef_call2275439.us.1 = add nuw nsw i64 %polly.indvar428.us.1, %polly.access.mul.Packed_MemRef_call2275434.us.1
  %polly.access.Packed_MemRef_call2275440.us.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.us.1
  %_p_scalar_441.us.1 = load double, double* %polly.access.Packed_MemRef_call2275440.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_444.us.1, %_p_scalar_441.us.1
  %268 = shl i64 %265, 3
  %269 = add i64 %268, %264
  %scevgep445.us.1 = getelementptr i8, i8* %call, i64 %269
  %scevgep445446.us.1 = bitcast i8* %scevgep445.us.1 to double*
  %_p_scalar_447.us.1 = load double, double* %scevgep445446.us.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_447.us.1
  store double %p_add42.i79.us.1, double* %scevgep445446.us.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next429.us.1 = add nuw nsw i64 %polly.indvar428.us.1, 1
  %exitcond886.1.not = icmp eq i64 %polly.indvar428.us.1, %smin885.1
  br i1 %exitcond886.1.not, label %polly.loop_exit426.us.1, label %polly.loop_header424.us.1

polly.loop_exit426.us.1:                          ; preds = %polly.loop_header424.us.1, %polly.loop_header416.us.1
  %polly.indvar_next421.us.1 = add nuw nsw i64 %polly.indvar420.us.1, 1
  %polly.loop_cond422.us.1 = icmp ult i64 %polly.indvar420.us.1, 7
  %indvars.iv.next884.1 = add i64 %indvars.iv883.1, 1
  br i1 %polly.loop_cond422.us.1, label %polly.loop_header416.us.1, label %polly.loop_exit418.loopexit.us.1

polly.loop_exit418.loopexit.us.1:                 ; preds = %polly.loop_exit426.us.1
  %polly.indvar_next413.us.1 = add nuw nsw i64 %polly.indvar412.us.1, 1
  %exitcond887.1.not = icmp eq i64 %polly.indvar_next413.us.1, 28
  br i1 %exitcond887.1.not, label %polly.loop_exit411.1, label %polly.loop_header409.us.1

polly.loop_exit411.1:                             ; preds = %polly.loop_exit418.loopexit.us.1, %polly.loop_header403.1
  %polly.indvar_next407.1 = add nuw nsw i64 %polly.indvar406.1, 1
  %indvars.iv.next877.1 = add i64 %indvars.iv876.1, -8
  %indvars.iv.next882.1 = add i64 %indvars.iv881.1, 8
  %exitcond888.1.not = icmp eq i64 %polly.indvar_next407.1, 10
  br i1 %exitcond888.1.not, label %polly.loop_exit405.1, label %polly.loop_header403.1

polly.loop_exit405.1:                             ; preds = %polly.loop_exit411.1
  %polly.indvar_next384.1 = add nuw nsw i64 %polly.indvar383.1, 1
  %indvars.iv.next871.1 = add nsw i64 %indvars.iv870.1, -4
  %indvars.iv.next875.1 = add nuw nsw i64 %indvars.iv874.1, 4
  %indvars.iv.next880.1 = add nsw i64 %indvars.iv879.1, -4
  %exitcond889.1.not = icmp eq i64 %polly.indvar_next384.1, 20
  br i1 %exitcond889.1.not, label %polly.loop_exit382.1, label %polly.loop_header380.1

polly.loop_exit382.1:                             ; preds = %polly.loop_exit405.1
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header558.1:                           ; preds = %polly.loop_exit583, %polly.loop_exit583.1
  %indvars.iv901.1 = phi i64 [ %indvars.iv.next902.1, %polly.loop_exit583.1 ], [ 0, %polly.loop_exit583 ]
  %indvars.iv896.1 = phi i64 [ %indvars.iv.next897.1, %polly.loop_exit583.1 ], [ 0, %polly.loop_exit583 ]
  %indvars.iv892.1 = phi i64 [ %indvars.iv.next893.1, %polly.loop_exit583.1 ], [ 80, %polly.loop_exit583 ]
  %polly.indvar561.1 = phi i64 [ %polly.indvar_next562.1, %polly.loop_exit583.1 ], [ 0, %polly.loop_exit583 ]
  %270 = lshr i64 %polly.indvar561.1, 1
  %271 = shl nuw nsw i64 %270, 3
  %272 = sub nsw i64 %indvars.iv896.1, %271
  %273 = add i64 %indvars.iv901.1, %271
  %274 = shl nsw i64 %polly.indvar561.1, 2
  br label %polly.loop_header564.1

polly.loop_header564.1:                           ; preds = %polly.loop_exit572.1, %polly.loop_header558.1
  %polly.indvar567.1 = phi i64 [ 0, %polly.loop_header558.1 ], [ %polly.indvar_next568.1, %polly.loop_exit572.1 ]
  %275 = add nuw nsw i64 %polly.indvar567.1, 32
  %polly.access.mul.Packed_MemRef_call2453.1 = mul nuw nsw i64 %polly.indvar567.1, 80
  br label %polly.loop_header570.1

polly.loop_header570.1:                           ; preds = %polly.loop_header570.1, %polly.loop_header564.1
  %polly.indvar573.1 = phi i64 [ 0, %polly.loop_header564.1 ], [ %polly.indvar_next574.1, %polly.loop_header570.1 ]
  %276 = add nuw nsw i64 %polly.indvar573.1, %274
  %polly.access.mul.call2577.1 = mul nuw nsw i64 %276, 60
  %polly.access.add.call2578.1 = add nuw nsw i64 %275, %polly.access.mul.call2577.1
  %polly.access.call2579.1 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578.1
  %polly.access.call2579.load.1 = load double, double* %polly.access.call2579.1, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2453.1 = add nuw nsw i64 %polly.indvar573.1, %polly.access.mul.Packed_MemRef_call2453.1
  %polly.access.Packed_MemRef_call2453.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453.1
  store double %polly.access.call2579.load.1, double* %polly.access.Packed_MemRef_call2453.1, align 8
  %polly.indvar_next574.1 = add nuw nsw i64 %polly.indvar573.1, 1
  %exitcond894.1.not = icmp eq i64 %polly.indvar_next574.1, %indvars.iv892.1
  br i1 %exitcond894.1.not, label %polly.loop_exit572.1, label %polly.loop_header570.1

polly.loop_exit572.1:                             ; preds = %polly.loop_header570.1
  %polly.indvar_next568.1 = add nuw nsw i64 %polly.indvar567.1, 1
  %exitcond895.1.not = icmp eq i64 %polly.indvar_next568.1, 28
  br i1 %exitcond895.1.not, label %polly.loop_exit566.1, label %polly.loop_header564.1

polly.loop_exit566.1:                             ; preds = %polly.loop_exit572.1
  %277 = mul nsw i64 %polly.indvar561.1, -4
  br label %polly.loop_header581.1

polly.loop_header581.1:                           ; preds = %polly.loop_exit589.1, %polly.loop_exit566.1
  %indvars.iv903.1 = phi i64 [ %indvars.iv.next904.1, %polly.loop_exit589.1 ], [ %273, %polly.loop_exit566.1 ]
  %indvars.iv898.1 = phi i64 [ %indvars.iv.next899.1, %polly.loop_exit589.1 ], [ %272, %polly.loop_exit566.1 ]
  %polly.indvar584.1 = phi i64 [ %polly.indvar_next585.1, %polly.loop_exit589.1 ], [ %270, %polly.loop_exit566.1 ]
  %smax900.1 = call i64 @llvm.smax.i64(i64 %indvars.iv898.1, i64 0)
  %278 = add i64 %smax900.1, %indvars.iv903.1
  %279 = shl nsw i64 %polly.indvar584.1, 3
  %280 = sub nsw i64 %274, %279
  %281 = icmp sgt i64 %280, 0
  %282 = select i1 %281, i64 %280, i64 0
  %polly.loop_guard597.1 = icmp slt i64 %282, 8
  br i1 %polly.loop_guard597.1, label %polly.loop_header587.us.1, label %polly.loop_exit589.1

polly.loop_header587.us.1:                        ; preds = %polly.loop_header581.1, %polly.loop_exit596.loopexit.us.1
  %polly.indvar590.us.1 = phi i64 [ %polly.indvar_next591.us.1, %polly.loop_exit596.loopexit.us.1 ], [ 0, %polly.loop_header581.1 ]
  %283 = shl i64 %polly.indvar590.us.1, 3
  %284 = add i64 %283, 256
  %polly.access.mul.Packed_MemRef_call2453612.us.1 = mul nuw nsw i64 %polly.indvar590.us.1, 80
  br label %polly.loop_header594.us.1

polly.loop_header594.us.1:                        ; preds = %polly.loop_exit604.us.1, %polly.loop_header587.us.1
  %indvars.iv905.1 = phi i64 [ %278, %polly.loop_header587.us.1 ], [ %indvars.iv.next906.1, %polly.loop_exit604.us.1 ]
  %polly.indvar598.us.1 = phi i64 [ %282, %polly.loop_header587.us.1 ], [ %polly.indvar_next599.us.1, %polly.loop_exit604.us.1 ]
  %smin907.1 = call i64 @llvm.smin.i64(i64 %indvars.iv905.1, i64 3)
  %285 = add nuw i64 %polly.indvar598.us.1, %279
  %286 = add i64 %285, %277
  %polly.loop_guard605.us.1997 = icmp sgt i64 %286, -1
  br i1 %polly.loop_guard605.us.1997, label %polly.loop_header602.preheader.us.1, label %polly.loop_exit604.us.1

polly.loop_header602.preheader.us.1:              ; preds = %polly.loop_header594.us.1
  %polly.access.add.Packed_MemRef_call2453613.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2453612.us.1, %286
  %polly.access.Packed_MemRef_call2453614.us.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.us.1
  %_p_scalar_615.us.1 = load double, double* %polly.access.Packed_MemRef_call2453614.us.1, align 8
  %287 = mul i64 %285, 480
  %288 = add i64 %287, %284
  %scevgep620.us.1 = getelementptr i8, i8* %call1, i64 %288
  %scevgep620621.us.1 = bitcast i8* %scevgep620.us.1 to double*
  %_p_scalar_622.us.1 = load double, double* %scevgep620621.us.1, align 8, !alias.scope !92, !noalias !98
  %289 = mul i64 %285, 640
  br label %polly.loop_header602.us.1

polly.loop_header602.us.1:                        ; preds = %polly.loop_header602.us.1, %polly.loop_header602.preheader.us.1
  %polly.indvar606.us.1 = phi i64 [ %polly.indvar_next607.us.1, %polly.loop_header602.us.1 ], [ 0, %polly.loop_header602.preheader.us.1 ]
  %290 = add nuw nsw i64 %polly.indvar606.us.1, %274
  %291 = mul nuw nsw i64 %290, 480
  %292 = add nuw nsw i64 %291, %284
  %scevgep609.us.1 = getelementptr i8, i8* %call1, i64 %292
  %scevgep609610.us.1 = bitcast i8* %scevgep609.us.1 to double*
  %_p_scalar_611.us.1 = load double, double* %scevgep609610.us.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_615.us.1, %_p_scalar_611.us.1
  %polly.access.add.Packed_MemRef_call2453617.us.1 = add nuw nsw i64 %polly.indvar606.us.1, %polly.access.mul.Packed_MemRef_call2453612.us.1
  %polly.access.Packed_MemRef_call2453618.us.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.us.1
  %_p_scalar_619.us.1 = load double, double* %polly.access.Packed_MemRef_call2453618.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_622.us.1, %_p_scalar_619.us.1
  %293 = shl i64 %290, 3
  %294 = add i64 %293, %289
  %scevgep623.us.1 = getelementptr i8, i8* %call, i64 %294
  %scevgep623624.us.1 = bitcast i8* %scevgep623.us.1 to double*
  %_p_scalar_625.us.1 = load double, double* %scevgep623624.us.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_625.us.1
  store double %p_add42.i.us.1, double* %scevgep623624.us.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next607.us.1 = add nuw nsw i64 %polly.indvar606.us.1, 1
  %exitcond908.1.not = icmp eq i64 %polly.indvar606.us.1, %smin907.1
  br i1 %exitcond908.1.not, label %polly.loop_exit604.us.1, label %polly.loop_header602.us.1

polly.loop_exit604.us.1:                          ; preds = %polly.loop_header602.us.1, %polly.loop_header594.us.1
  %polly.indvar_next599.us.1 = add nuw nsw i64 %polly.indvar598.us.1, 1
  %polly.loop_cond600.us.1 = icmp ult i64 %polly.indvar598.us.1, 7
  %indvars.iv.next906.1 = add i64 %indvars.iv905.1, 1
  br i1 %polly.loop_cond600.us.1, label %polly.loop_header594.us.1, label %polly.loop_exit596.loopexit.us.1

polly.loop_exit596.loopexit.us.1:                 ; preds = %polly.loop_exit604.us.1
  %polly.indvar_next591.us.1 = add nuw nsw i64 %polly.indvar590.us.1, 1
  %exitcond909.1.not = icmp eq i64 %polly.indvar_next591.us.1, 28
  br i1 %exitcond909.1.not, label %polly.loop_exit589.1, label %polly.loop_header587.us.1

polly.loop_exit589.1:                             ; preds = %polly.loop_exit596.loopexit.us.1, %polly.loop_header581.1
  %polly.indvar_next585.1 = add nuw nsw i64 %polly.indvar584.1, 1
  %indvars.iv.next899.1 = add i64 %indvars.iv898.1, -8
  %indvars.iv.next904.1 = add i64 %indvars.iv903.1, 8
  %exitcond910.1.not = icmp eq i64 %polly.indvar_next585.1, 10
  br i1 %exitcond910.1.not, label %polly.loop_exit583.1, label %polly.loop_header581.1

polly.loop_exit583.1:                             ; preds = %polly.loop_exit589.1
  %polly.indvar_next562.1 = add nuw nsw i64 %polly.indvar561.1, 1
  %indvars.iv.next893.1 = add nsw i64 %indvars.iv892.1, -4
  %indvars.iv.next897.1 = add nuw nsw i64 %indvars.iv896.1, 4
  %indvars.iv.next902.1 = add nsw i64 %indvars.iv901.1, -4
  %exitcond911.1.not = icmp eq i64 %polly.indvar_next562.1, 20
  br i1 %exitcond911.1.not, label %polly.loop_exit560.1, label %polly.loop_header558.1

polly.loop_exit560.1:                             ; preds = %polly.loop_exit583.1
  tail call void @free(i8* %malloccall452)
  br label %kernel_syr2k.exit

polly.loop_header817.1:                           ; preds = %polly.loop_exit825, %polly.loop_exit825.1
  %polly.indvar820.1 = phi i64 [ %polly.indvar_next821.1, %polly.loop_exit825.1 ], [ 0, %polly.loop_exit825 ]
  %295 = mul nuw nsw i64 %polly.indvar820.1, 480
  %296 = trunc i64 %polly.indvar820.1 to i32
  %broadcast.splatinsert1233 = insertelement <4 x i32> poison, i32 %296, i32 0
  %broadcast.splat1234 = shufflevector <4 x i32> %broadcast.splatinsert1233, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %polly.loop_header817.1
  %index1227 = phi i64 [ 0, %polly.loop_header817.1 ], [ %index.next1228, %vector.body1225 ]
  %vec.ind1231 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1 ], [ %vec.ind.next1232, %vector.body1225 ]
  %297 = add nuw nsw <4 x i64> %vec.ind1231, <i64 32, i64 32, i64 32, i64 32>
  %298 = trunc <4 x i64> %297 to <4 x i32>
  %299 = mul <4 x i32> %broadcast.splat1234, %298
  %300 = add <4 x i32> %299, <i32 1, i32 1, i32 1, i32 1>
  %301 = urem <4 x i32> %300, <i32 80, i32 80, i32 80, i32 80>
  %302 = sitofp <4 x i32> %301 to <4 x double>
  %303 = fmul fast <4 x double> %302, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %304 = extractelement <4 x i64> %297, i32 0
  %305 = shl i64 %304, 3
  %306 = add i64 %305, %295
  %307 = getelementptr i8, i8* %call1, i64 %306
  %308 = bitcast i8* %307 to <4 x double>*
  store <4 x double> %303, <4 x double>* %308, align 8, !alias.scope !102, !noalias !107
  %index.next1228 = add i64 %index1227, 4
  %vec.ind.next1232 = add <4 x i64> %vec.ind1231, <i64 4, i64 4, i64 4, i64 4>
  %309 = icmp eq i64 %index.next1228, 28
  br i1 %309, label %polly.loop_exit825.1, label %vector.body1225, !llvm.loop !109

polly.loop_exit825.1:                             ; preds = %vector.body1225
  %polly.indvar_next821.1 = add nuw nsw i64 %polly.indvar820.1, 1
  %exitcond918.1.not = icmp eq i64 %polly.indvar_next821.1, 32
  br i1 %exitcond918.1.not, label %polly.loop_header817.1938, label %polly.loop_header817.1

polly.loop_header817.1938:                        ; preds = %polly.loop_exit825.1, %polly.loop_exit825.1949
  %polly.indvar820.1937 = phi i64 [ %polly.indvar_next821.1947, %polly.loop_exit825.1949 ], [ 0, %polly.loop_exit825.1 ]
  %310 = add nuw nsw i64 %polly.indvar820.1937, 32
  %311 = mul nuw nsw i64 %310, 480
  %312 = trunc i64 %310 to i32
  %broadcast.splatinsert1247 = insertelement <4 x i32> poison, i32 %312, i32 0
  %broadcast.splat1248 = shufflevector <4 x i32> %broadcast.splatinsert1247, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1237

vector.body1237:                                  ; preds = %vector.body1237, %polly.loop_header817.1938
  %index1239 = phi i64 [ 0, %polly.loop_header817.1938 ], [ %index.next1240, %vector.body1237 ]
  %vec.ind1245 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817.1938 ], [ %vec.ind.next1246, %vector.body1237 ]
  %313 = mul <4 x i32> %vec.ind1245, %broadcast.splat1248
  %314 = add <4 x i32> %313, <i32 1, i32 1, i32 1, i32 1>
  %315 = urem <4 x i32> %314, <i32 80, i32 80, i32 80, i32 80>
  %316 = sitofp <4 x i32> %315 to <4 x double>
  %317 = fmul fast <4 x double> %316, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %318 = shl i64 %index1239, 3
  %319 = add i64 %318, %311
  %320 = getelementptr i8, i8* %call1, i64 %319
  %321 = bitcast i8* %320 to <4 x double>*
  store <4 x double> %317, <4 x double>* %321, align 8, !alias.scope !102, !noalias !107
  %index.next1240 = add i64 %index1239, 4
  %vec.ind.next1246 = add <4 x i32> %vec.ind1245, <i32 4, i32 4, i32 4, i32 4>
  %322 = icmp eq i64 %index.next1240, 32
  br i1 %322, label %polly.loop_exit825.1949, label %vector.body1237, !llvm.loop !110

polly.loop_exit825.1949:                          ; preds = %vector.body1237
  %polly.indvar_next821.1947 = add nuw nsw i64 %polly.indvar820.1937, 1
  %exitcond918.1948.not = icmp eq i64 %polly.indvar_next821.1947, 32
  br i1 %exitcond918.1948.not, label %polly.loop_header817.1.1, label %polly.loop_header817.1938

polly.loop_header817.1.1:                         ; preds = %polly.loop_exit825.1949, %polly.loop_exit825.1.1
  %polly.indvar820.1.1 = phi i64 [ %polly.indvar_next821.1.1, %polly.loop_exit825.1.1 ], [ 0, %polly.loop_exit825.1949 ]
  %323 = add nuw nsw i64 %polly.indvar820.1.1, 32
  %324 = mul nuw nsw i64 %323, 480
  %325 = trunc i64 %323 to i32
  %broadcast.splatinsert1259 = insertelement <4 x i32> poison, i32 %325, i32 0
  %broadcast.splat1260 = shufflevector <4 x i32> %broadcast.splatinsert1259, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %polly.loop_header817.1.1
  %index1253 = phi i64 [ 0, %polly.loop_header817.1.1 ], [ %index.next1254, %vector.body1251 ]
  %vec.ind1257 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1.1 ], [ %vec.ind.next1258, %vector.body1251 ]
  %326 = add nuw nsw <4 x i64> %vec.ind1257, <i64 32, i64 32, i64 32, i64 32>
  %327 = trunc <4 x i64> %326 to <4 x i32>
  %328 = mul <4 x i32> %broadcast.splat1260, %327
  %329 = add <4 x i32> %328, <i32 1, i32 1, i32 1, i32 1>
  %330 = urem <4 x i32> %329, <i32 80, i32 80, i32 80, i32 80>
  %331 = sitofp <4 x i32> %330 to <4 x double>
  %332 = fmul fast <4 x double> %331, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %333 = extractelement <4 x i64> %326, i32 0
  %334 = shl i64 %333, 3
  %335 = add i64 %334, %324
  %336 = getelementptr i8, i8* %call1, i64 %335
  %337 = bitcast i8* %336 to <4 x double>*
  store <4 x double> %332, <4 x double>* %337, align 8, !alias.scope !102, !noalias !107
  %index.next1254 = add i64 %index1253, 4
  %vec.ind.next1258 = add <4 x i64> %vec.ind1257, <i64 4, i64 4, i64 4, i64 4>
  %338 = icmp eq i64 %index.next1254, 28
  br i1 %338, label %polly.loop_exit825.1.1, label %vector.body1251, !llvm.loop !111

polly.loop_exit825.1.1:                           ; preds = %vector.body1251
  %polly.indvar_next821.1.1 = add nuw nsw i64 %polly.indvar820.1.1, 1
  %exitcond918.1.1.not = icmp eq i64 %polly.indvar_next821.1.1, 32
  br i1 %exitcond918.1.1.not, label %polly.loop_header817.2, label %polly.loop_header817.1.1

polly.loop_header817.2:                           ; preds = %polly.loop_exit825.1.1, %polly.loop_exit825.2
  %polly.indvar820.2 = phi i64 [ %polly.indvar_next821.2, %polly.loop_exit825.2 ], [ 0, %polly.loop_exit825.1.1 ]
  %339 = add nuw nsw i64 %polly.indvar820.2, 64
  %340 = mul nuw nsw i64 %339, 480
  %341 = trunc i64 %339 to i32
  %broadcast.splatinsert1273 = insertelement <4 x i32> poison, i32 %341, i32 0
  %broadcast.splat1274 = shufflevector <4 x i32> %broadcast.splatinsert1273, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1263

vector.body1263:                                  ; preds = %vector.body1263, %polly.loop_header817.2
  %index1265 = phi i64 [ 0, %polly.loop_header817.2 ], [ %index.next1266, %vector.body1263 ]
  %vec.ind1271 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817.2 ], [ %vec.ind.next1272, %vector.body1263 ]
  %342 = mul <4 x i32> %vec.ind1271, %broadcast.splat1274
  %343 = add <4 x i32> %342, <i32 1, i32 1, i32 1, i32 1>
  %344 = urem <4 x i32> %343, <i32 80, i32 80, i32 80, i32 80>
  %345 = sitofp <4 x i32> %344 to <4 x double>
  %346 = fmul fast <4 x double> %345, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %347 = shl i64 %index1265, 3
  %348 = add i64 %347, %340
  %349 = getelementptr i8, i8* %call1, i64 %348
  %350 = bitcast i8* %349 to <4 x double>*
  store <4 x double> %346, <4 x double>* %350, align 8, !alias.scope !102, !noalias !107
  %index.next1266 = add i64 %index1265, 4
  %vec.ind.next1272 = add <4 x i32> %vec.ind1271, <i32 4, i32 4, i32 4, i32 4>
  %351 = icmp eq i64 %index.next1266, 32
  br i1 %351, label %polly.loop_exit825.2, label %vector.body1263, !llvm.loop !112

polly.loop_exit825.2:                             ; preds = %vector.body1263
  %polly.indvar_next821.2 = add nuw nsw i64 %polly.indvar820.2, 1
  %exitcond918.2.not = icmp eq i64 %polly.indvar_next821.2, 16
  br i1 %exitcond918.2.not, label %polly.loop_header817.1.2, label %polly.loop_header817.2

polly.loop_header817.1.2:                         ; preds = %polly.loop_exit825.2, %polly.loop_exit825.1.2
  %polly.indvar820.1.2 = phi i64 [ %polly.indvar_next821.1.2, %polly.loop_exit825.1.2 ], [ 0, %polly.loop_exit825.2 ]
  %352 = add nuw nsw i64 %polly.indvar820.1.2, 64
  %353 = mul nuw nsw i64 %352, 480
  %354 = trunc i64 %352 to i32
  %broadcast.splatinsert1285 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1286 = shufflevector <4 x i32> %broadcast.splatinsert1285, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1277

vector.body1277:                                  ; preds = %vector.body1277, %polly.loop_header817.1.2
  %index1279 = phi i64 [ 0, %polly.loop_header817.1.2 ], [ %index.next1280, %vector.body1277 ]
  %vec.ind1283 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1.2 ], [ %vec.ind.next1284, %vector.body1277 ]
  %355 = add nuw nsw <4 x i64> %vec.ind1283, <i64 32, i64 32, i64 32, i64 32>
  %356 = trunc <4 x i64> %355 to <4 x i32>
  %357 = mul <4 x i32> %broadcast.splat1286, %356
  %358 = add <4 x i32> %357, <i32 1, i32 1, i32 1, i32 1>
  %359 = urem <4 x i32> %358, <i32 80, i32 80, i32 80, i32 80>
  %360 = sitofp <4 x i32> %359 to <4 x double>
  %361 = fmul fast <4 x double> %360, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %362 = extractelement <4 x i64> %355, i32 0
  %363 = shl i64 %362, 3
  %364 = add i64 %363, %353
  %365 = getelementptr i8, i8* %call1, i64 %364
  %366 = bitcast i8* %365 to <4 x double>*
  store <4 x double> %361, <4 x double>* %366, align 8, !alias.scope !102, !noalias !107
  %index.next1280 = add i64 %index1279, 4
  %vec.ind.next1284 = add <4 x i64> %vec.ind1283, <i64 4, i64 4, i64 4, i64 4>
  %367 = icmp eq i64 %index.next1280, 28
  br i1 %367, label %polly.loop_exit825.1.2, label %vector.body1277, !llvm.loop !113

polly.loop_exit825.1.2:                           ; preds = %vector.body1277
  %polly.indvar_next821.1.2 = add nuw nsw i64 %polly.indvar820.1.2, 1
  %exitcond918.1.2.not = icmp eq i64 %polly.indvar_next821.1.2, 16
  br i1 %exitcond918.1.2.not, label %init_array.exit, label %polly.loop_header817.1.2

polly.loop_header791.1:                           ; preds = %polly.loop_exit799, %polly.loop_exit799.1
  %polly.indvar794.1 = phi i64 [ %polly.indvar_next795.1, %polly.loop_exit799.1 ], [ 0, %polly.loop_exit799 ]
  %368 = mul nuw nsw i64 %polly.indvar794.1, 480
  %369 = trunc i64 %polly.indvar794.1 to i32
  %broadcast.splatinsert1155 = insertelement <4 x i32> poison, i32 %369, i32 0
  %broadcast.splat1156 = shufflevector <4 x i32> %broadcast.splatinsert1155, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header791.1
  %index1149 = phi i64 [ 0, %polly.loop_header791.1 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1153 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1 ], [ %vec.ind.next1154, %vector.body1147 ]
  %370 = add nuw nsw <4 x i64> %vec.ind1153, <i64 32, i64 32, i64 32, i64 32>
  %371 = trunc <4 x i64> %370 to <4 x i32>
  %372 = mul <4 x i32> %broadcast.splat1156, %371
  %373 = add <4 x i32> %372, <i32 2, i32 2, i32 2, i32 2>
  %374 = urem <4 x i32> %373, <i32 60, i32 60, i32 60, i32 60>
  %375 = sitofp <4 x i32> %374 to <4 x double>
  %376 = fmul fast <4 x double> %375, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %377 = extractelement <4 x i64> %370, i32 0
  %378 = shl i64 %377, 3
  %379 = add i64 %378, %368
  %380 = getelementptr i8, i8* %call2, i64 %379
  %381 = bitcast i8* %380 to <4 x double>*
  store <4 x double> %376, <4 x double>* %381, align 8, !alias.scope !103, !noalias !105
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1154 = add <4 x i64> %vec.ind1153, <i64 4, i64 4, i64 4, i64 4>
  %382 = icmp eq i64 %index.next1150, 28
  br i1 %382, label %polly.loop_exit799.1, label %vector.body1147, !llvm.loop !114

polly.loop_exit799.1:                             ; preds = %vector.body1147
  %polly.indvar_next795.1 = add nuw nsw i64 %polly.indvar794.1, 1
  %exitcond924.1.not = icmp eq i64 %polly.indvar_next795.1, 32
  br i1 %exitcond924.1.not, label %polly.loop_header791.1952, label %polly.loop_header791.1

polly.loop_header791.1952:                        ; preds = %polly.loop_exit799.1, %polly.loop_exit799.1963
  %polly.indvar794.1951 = phi i64 [ %polly.indvar_next795.1961, %polly.loop_exit799.1963 ], [ 0, %polly.loop_exit799.1 ]
  %383 = add nuw nsw i64 %polly.indvar794.1951, 32
  %384 = mul nuw nsw i64 %383, 480
  %385 = trunc i64 %383 to i32
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1159

vector.body1159:                                  ; preds = %vector.body1159, %polly.loop_header791.1952
  %index1161 = phi i64 [ 0, %polly.loop_header791.1952 ], [ %index.next1162, %vector.body1159 ]
  %vec.ind1167 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791.1952 ], [ %vec.ind.next1168, %vector.body1159 ]
  %386 = mul <4 x i32> %vec.ind1167, %broadcast.splat1170
  %387 = add <4 x i32> %386, <i32 2, i32 2, i32 2, i32 2>
  %388 = urem <4 x i32> %387, <i32 60, i32 60, i32 60, i32 60>
  %389 = sitofp <4 x i32> %388 to <4 x double>
  %390 = fmul fast <4 x double> %389, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %391 = shl i64 %index1161, 3
  %392 = add i64 %391, %384
  %393 = getelementptr i8, i8* %call2, i64 %392
  %394 = bitcast i8* %393 to <4 x double>*
  store <4 x double> %390, <4 x double>* %394, align 8, !alias.scope !103, !noalias !105
  %index.next1162 = add i64 %index1161, 4
  %vec.ind.next1168 = add <4 x i32> %vec.ind1167, <i32 4, i32 4, i32 4, i32 4>
  %395 = icmp eq i64 %index.next1162, 32
  br i1 %395, label %polly.loop_exit799.1963, label %vector.body1159, !llvm.loop !115

polly.loop_exit799.1963:                          ; preds = %vector.body1159
  %polly.indvar_next795.1961 = add nuw nsw i64 %polly.indvar794.1951, 1
  %exitcond924.1962.not = icmp eq i64 %polly.indvar_next795.1961, 32
  br i1 %exitcond924.1962.not, label %polly.loop_header791.1.1, label %polly.loop_header791.1952

polly.loop_header791.1.1:                         ; preds = %polly.loop_exit799.1963, %polly.loop_exit799.1.1
  %polly.indvar794.1.1 = phi i64 [ %polly.indvar_next795.1.1, %polly.loop_exit799.1.1 ], [ 0, %polly.loop_exit799.1963 ]
  %396 = add nuw nsw i64 %polly.indvar794.1.1, 32
  %397 = mul nuw nsw i64 %396, 480
  %398 = trunc i64 %396 to i32
  %broadcast.splatinsert1181 = insertelement <4 x i32> poison, i32 %398, i32 0
  %broadcast.splat1182 = shufflevector <4 x i32> %broadcast.splatinsert1181, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %polly.loop_header791.1.1
  %index1175 = phi i64 [ 0, %polly.loop_header791.1.1 ], [ %index.next1176, %vector.body1173 ]
  %vec.ind1179 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1.1 ], [ %vec.ind.next1180, %vector.body1173 ]
  %399 = add nuw nsw <4 x i64> %vec.ind1179, <i64 32, i64 32, i64 32, i64 32>
  %400 = trunc <4 x i64> %399 to <4 x i32>
  %401 = mul <4 x i32> %broadcast.splat1182, %400
  %402 = add <4 x i32> %401, <i32 2, i32 2, i32 2, i32 2>
  %403 = urem <4 x i32> %402, <i32 60, i32 60, i32 60, i32 60>
  %404 = sitofp <4 x i32> %403 to <4 x double>
  %405 = fmul fast <4 x double> %404, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %406 = extractelement <4 x i64> %399, i32 0
  %407 = shl i64 %406, 3
  %408 = add i64 %407, %397
  %409 = getelementptr i8, i8* %call2, i64 %408
  %410 = bitcast i8* %409 to <4 x double>*
  store <4 x double> %405, <4 x double>* %410, align 8, !alias.scope !103, !noalias !105
  %index.next1176 = add i64 %index1175, 4
  %vec.ind.next1180 = add <4 x i64> %vec.ind1179, <i64 4, i64 4, i64 4, i64 4>
  %411 = icmp eq i64 %index.next1176, 28
  br i1 %411, label %polly.loop_exit799.1.1, label %vector.body1173, !llvm.loop !116

polly.loop_exit799.1.1:                           ; preds = %vector.body1173
  %polly.indvar_next795.1.1 = add nuw nsw i64 %polly.indvar794.1.1, 1
  %exitcond924.1.1.not = icmp eq i64 %polly.indvar_next795.1.1, 32
  br i1 %exitcond924.1.1.not, label %polly.loop_header791.2, label %polly.loop_header791.1.1

polly.loop_header791.2:                           ; preds = %polly.loop_exit799.1.1, %polly.loop_exit799.2
  %polly.indvar794.2 = phi i64 [ %polly.indvar_next795.2, %polly.loop_exit799.2 ], [ 0, %polly.loop_exit799.1.1 ]
  %412 = add nuw nsw i64 %polly.indvar794.2, 64
  %413 = mul nuw nsw i64 %412, 480
  %414 = trunc i64 %412 to i32
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %414, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1185

vector.body1185:                                  ; preds = %vector.body1185, %polly.loop_header791.2
  %index1187 = phi i64 [ 0, %polly.loop_header791.2 ], [ %index.next1188, %vector.body1185 ]
  %vec.ind1193 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791.2 ], [ %vec.ind.next1194, %vector.body1185 ]
  %415 = mul <4 x i32> %vec.ind1193, %broadcast.splat1196
  %416 = add <4 x i32> %415, <i32 2, i32 2, i32 2, i32 2>
  %417 = urem <4 x i32> %416, <i32 60, i32 60, i32 60, i32 60>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = shl i64 %index1187, 3
  %421 = add i64 %420, %413
  %422 = getelementptr i8, i8* %call2, i64 %421
  %423 = bitcast i8* %422 to <4 x double>*
  store <4 x double> %419, <4 x double>* %423, align 8, !alias.scope !103, !noalias !105
  %index.next1188 = add i64 %index1187, 4
  %vec.ind.next1194 = add <4 x i32> %vec.ind1193, <i32 4, i32 4, i32 4, i32 4>
  %424 = icmp eq i64 %index.next1188, 32
  br i1 %424, label %polly.loop_exit799.2, label %vector.body1185, !llvm.loop !117

polly.loop_exit799.2:                             ; preds = %vector.body1185
  %polly.indvar_next795.2 = add nuw nsw i64 %polly.indvar794.2, 1
  %exitcond924.2.not = icmp eq i64 %polly.indvar_next795.2, 16
  br i1 %exitcond924.2.not, label %polly.loop_header791.1.2, label %polly.loop_header791.2

polly.loop_header791.1.2:                         ; preds = %polly.loop_exit799.2, %polly.loop_exit799.1.2
  %polly.indvar794.1.2 = phi i64 [ %polly.indvar_next795.1.2, %polly.loop_exit799.1.2 ], [ 0, %polly.loop_exit799.2 ]
  %425 = add nuw nsw i64 %polly.indvar794.1.2, 64
  %426 = mul nuw nsw i64 %425, 480
  %427 = trunc i64 %425 to i32
  %broadcast.splatinsert1207 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1208 = shufflevector <4 x i32> %broadcast.splatinsert1207, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %polly.loop_header791.1.2
  %index1201 = phi i64 [ 0, %polly.loop_header791.1.2 ], [ %index.next1202, %vector.body1199 ]
  %vec.ind1205 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1.2 ], [ %vec.ind.next1206, %vector.body1199 ]
  %428 = add nuw nsw <4 x i64> %vec.ind1205, <i64 32, i64 32, i64 32, i64 32>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1208, %429
  %431 = add <4 x i32> %430, <i32 2, i32 2, i32 2, i32 2>
  %432 = urem <4 x i32> %431, <i32 60, i32 60, i32 60, i32 60>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add i64 %436, %426
  %438 = getelementptr i8, i8* %call2, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !103, !noalias !105
  %index.next1202 = add i64 %index1201, 4
  %vec.ind.next1206 = add <4 x i64> %vec.ind1205, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next1202, 28
  br i1 %440, label %polly.loop_exit799.1.2, label %vector.body1199, !llvm.loop !118

polly.loop_exit799.1.2:                           ; preds = %vector.body1199
  %polly.indvar_next795.1.2 = add nuw nsw i64 %polly.indvar794.1.2, 1
  %exitcond924.1.2.not = icmp eq i64 %polly.indvar_next795.1.2, 16
  br i1 %exitcond924.1.2.not, label %polly.loop_header817, label %polly.loop_header791.1.2

polly.loop_header764.1:                           ; preds = %polly.loop_exit772, %polly.loop_exit772.1
  %polly.indvar767.1 = phi i64 [ %polly.indvar_next768.1, %polly.loop_exit772.1 ], [ 0, %polly.loop_exit772 ]
  %441 = mul nuw nsw i64 %polly.indvar767.1, 640
  %442 = trunc i64 %polly.indvar767.1 to i32
  %broadcast.splatinsert1041 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1042 = shufflevector <4 x i32> %broadcast.splatinsert1041, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %polly.loop_header764.1
  %index1035 = phi i64 [ 0, %polly.loop_header764.1 ], [ %index.next1036, %vector.body1033 ]
  %vec.ind1039 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.1 ], [ %vec.ind.next1040, %vector.body1033 ]
  %443 = add nuw nsw <4 x i64> %vec.ind1039, <i64 32, i64 32, i64 32, i64 32>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat1042, %444
  %446 = add <4 x i32> %445, <i32 3, i32 3, i32 3, i32 3>
  %447 = urem <4 x i32> %446, <i32 80, i32 80, i32 80, i32 80>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = extractelement <4 x i64> %443, i32 0
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %441
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %449, <4 x double>* %454, align 8, !alias.scope !99, !noalias !101
  %index.next1036 = add i64 %index1035, 4
  %vec.ind.next1040 = add <4 x i64> %vec.ind1039, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next1036, 32
  br i1 %455, label %polly.loop_exit772.1, label %vector.body1033, !llvm.loop !119

polly.loop_exit772.1:                             ; preds = %vector.body1033
  %polly.indvar_next768.1 = add nuw nsw i64 %polly.indvar767.1, 1
  %exitcond933.1.not = icmp eq i64 %polly.indvar_next768.1, 32
  br i1 %exitcond933.1.not, label %polly.loop_header764.2, label %polly.loop_header764.1

polly.loop_header764.2:                           ; preds = %polly.loop_exit772.1, %polly.loop_exit772.2
  %polly.indvar767.2 = phi i64 [ %polly.indvar_next768.2, %polly.loop_exit772.2 ], [ 0, %polly.loop_exit772.1 ]
  %456 = mul nuw nsw i64 %polly.indvar767.2, 640
  %457 = trunc i64 %polly.indvar767.2 to i32
  %broadcast.splatinsert1053 = insertelement <4 x i32> poison, i32 %457, i32 0
  %broadcast.splat1054 = shufflevector <4 x i32> %broadcast.splatinsert1053, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %polly.loop_header764.2
  %index1047 = phi i64 [ 0, %polly.loop_header764.2 ], [ %index.next1048, %vector.body1045 ]
  %vec.ind1051 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.2 ], [ %vec.ind.next1052, %vector.body1045 ]
  %458 = add nuw nsw <4 x i64> %vec.ind1051, <i64 64, i64 64, i64 64, i64 64>
  %459 = trunc <4 x i64> %458 to <4 x i32>
  %460 = mul <4 x i32> %broadcast.splat1054, %459
  %461 = add <4 x i32> %460, <i32 3, i32 3, i32 3, i32 3>
  %462 = urem <4 x i32> %461, <i32 80, i32 80, i32 80, i32 80>
  %463 = sitofp <4 x i32> %462 to <4 x double>
  %464 = fmul fast <4 x double> %463, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %465 = extractelement <4 x i64> %458, i32 0
  %466 = shl i64 %465, 3
  %467 = add nuw nsw i64 %466, %456
  %468 = getelementptr i8, i8* %call, i64 %467
  %469 = bitcast i8* %468 to <4 x double>*
  store <4 x double> %464, <4 x double>* %469, align 8, !alias.scope !99, !noalias !101
  %index.next1048 = add i64 %index1047, 4
  %vec.ind.next1052 = add <4 x i64> %vec.ind1051, <i64 4, i64 4, i64 4, i64 4>
  %470 = icmp eq i64 %index.next1048, 16
  br i1 %470, label %polly.loop_exit772.2, label %vector.body1045, !llvm.loop !120

polly.loop_exit772.2:                             ; preds = %vector.body1045
  %polly.indvar_next768.2 = add nuw nsw i64 %polly.indvar767.2, 1
  %exitcond933.2.not = icmp eq i64 %polly.indvar_next768.2, 32
  br i1 %exitcond933.2.not, label %polly.loop_header764.1966, label %polly.loop_header764.2

polly.loop_header764.1966:                        ; preds = %polly.loop_exit772.2, %polly.loop_exit772.1977
  %polly.indvar767.1965 = phi i64 [ %polly.indvar_next768.1975, %polly.loop_exit772.1977 ], [ 0, %polly.loop_exit772.2 ]
  %471 = add nuw nsw i64 %polly.indvar767.1965, 32
  %472 = mul nuw nsw i64 %471, 640
  %473 = trunc i64 %471 to i32
  %broadcast.splatinsert1067 = insertelement <4 x i32> poison, i32 %473, i32 0
  %broadcast.splat1068 = shufflevector <4 x i32> %broadcast.splatinsert1067, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %polly.loop_header764.1966
  %index1059 = phi i64 [ 0, %polly.loop_header764.1966 ], [ %index.next1060, %vector.body1057 ]
  %vec.ind1065 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header764.1966 ], [ %vec.ind.next1066, %vector.body1057 ]
  %474 = mul <4 x i32> %vec.ind1065, %broadcast.splat1068
  %475 = add <4 x i32> %474, <i32 3, i32 3, i32 3, i32 3>
  %476 = urem <4 x i32> %475, <i32 80, i32 80, i32 80, i32 80>
  %477 = sitofp <4 x i32> %476 to <4 x double>
  %478 = fmul fast <4 x double> %477, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %479 = shl i64 %index1059, 3
  %480 = add nuw nsw i64 %479, %472
  %481 = getelementptr i8, i8* %call, i64 %480
  %482 = bitcast i8* %481 to <4 x double>*
  store <4 x double> %478, <4 x double>* %482, align 8, !alias.scope !99, !noalias !101
  %index.next1060 = add i64 %index1059, 4
  %vec.ind.next1066 = add <4 x i32> %vec.ind1065, <i32 4, i32 4, i32 4, i32 4>
  %483 = icmp eq i64 %index.next1060, 32
  br i1 %483, label %polly.loop_exit772.1977, label %vector.body1057, !llvm.loop !121

polly.loop_exit772.1977:                          ; preds = %vector.body1057
  %polly.indvar_next768.1975 = add nuw nsw i64 %polly.indvar767.1965, 1
  %exitcond933.1976.not = icmp eq i64 %polly.indvar_next768.1975, 32
  br i1 %exitcond933.1976.not, label %polly.loop_header764.1.1, label %polly.loop_header764.1966

polly.loop_header764.1.1:                         ; preds = %polly.loop_exit772.1977, %polly.loop_exit772.1.1
  %polly.indvar767.1.1 = phi i64 [ %polly.indvar_next768.1.1, %polly.loop_exit772.1.1 ], [ 0, %polly.loop_exit772.1977 ]
  %484 = add nuw nsw i64 %polly.indvar767.1.1, 32
  %485 = mul nuw nsw i64 %484, 640
  %486 = trunc i64 %484 to i32
  %broadcast.splatinsert1079 = insertelement <4 x i32> poison, i32 %486, i32 0
  %broadcast.splat1080 = shufflevector <4 x i32> %broadcast.splatinsert1079, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %polly.loop_header764.1.1
  %index1073 = phi i64 [ 0, %polly.loop_header764.1.1 ], [ %index.next1074, %vector.body1071 ]
  %vec.ind1077 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.1.1 ], [ %vec.ind.next1078, %vector.body1071 ]
  %487 = add nuw nsw <4 x i64> %vec.ind1077, <i64 32, i64 32, i64 32, i64 32>
  %488 = trunc <4 x i64> %487 to <4 x i32>
  %489 = mul <4 x i32> %broadcast.splat1080, %488
  %490 = add <4 x i32> %489, <i32 3, i32 3, i32 3, i32 3>
  %491 = urem <4 x i32> %490, <i32 80, i32 80, i32 80, i32 80>
  %492 = sitofp <4 x i32> %491 to <4 x double>
  %493 = fmul fast <4 x double> %492, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %494 = extractelement <4 x i64> %487, i32 0
  %495 = shl i64 %494, 3
  %496 = add nuw nsw i64 %495, %485
  %497 = getelementptr i8, i8* %call, i64 %496
  %498 = bitcast i8* %497 to <4 x double>*
  store <4 x double> %493, <4 x double>* %498, align 8, !alias.scope !99, !noalias !101
  %index.next1074 = add i64 %index1073, 4
  %vec.ind.next1078 = add <4 x i64> %vec.ind1077, <i64 4, i64 4, i64 4, i64 4>
  %499 = icmp eq i64 %index.next1074, 32
  br i1 %499, label %polly.loop_exit772.1.1, label %vector.body1071, !llvm.loop !122

polly.loop_exit772.1.1:                           ; preds = %vector.body1071
  %polly.indvar_next768.1.1 = add nuw nsw i64 %polly.indvar767.1.1, 1
  %exitcond933.1.1.not = icmp eq i64 %polly.indvar_next768.1.1, 32
  br i1 %exitcond933.1.1.not, label %polly.loop_header764.2.1, label %polly.loop_header764.1.1

polly.loop_header764.2.1:                         ; preds = %polly.loop_exit772.1.1, %polly.loop_exit772.2.1
  %polly.indvar767.2.1 = phi i64 [ %polly.indvar_next768.2.1, %polly.loop_exit772.2.1 ], [ 0, %polly.loop_exit772.1.1 ]
  %500 = add nuw nsw i64 %polly.indvar767.2.1, 32
  %501 = mul nuw nsw i64 %500, 640
  %502 = trunc i64 %500 to i32
  %broadcast.splatinsert1091 = insertelement <4 x i32> poison, i32 %502, i32 0
  %broadcast.splat1092 = shufflevector <4 x i32> %broadcast.splatinsert1091, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %polly.loop_header764.2.1
  %index1085 = phi i64 [ 0, %polly.loop_header764.2.1 ], [ %index.next1086, %vector.body1083 ]
  %vec.ind1089 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.2.1 ], [ %vec.ind.next1090, %vector.body1083 ]
  %503 = add nuw nsw <4 x i64> %vec.ind1089, <i64 64, i64 64, i64 64, i64 64>
  %504 = trunc <4 x i64> %503 to <4 x i32>
  %505 = mul <4 x i32> %broadcast.splat1092, %504
  %506 = add <4 x i32> %505, <i32 3, i32 3, i32 3, i32 3>
  %507 = urem <4 x i32> %506, <i32 80, i32 80, i32 80, i32 80>
  %508 = sitofp <4 x i32> %507 to <4 x double>
  %509 = fmul fast <4 x double> %508, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %510 = extractelement <4 x i64> %503, i32 0
  %511 = shl i64 %510, 3
  %512 = add nuw nsw i64 %511, %501
  %513 = getelementptr i8, i8* %call, i64 %512
  %514 = bitcast i8* %513 to <4 x double>*
  store <4 x double> %509, <4 x double>* %514, align 8, !alias.scope !99, !noalias !101
  %index.next1086 = add i64 %index1085, 4
  %vec.ind.next1090 = add <4 x i64> %vec.ind1089, <i64 4, i64 4, i64 4, i64 4>
  %515 = icmp eq i64 %index.next1086, 16
  br i1 %515, label %polly.loop_exit772.2.1, label %vector.body1083, !llvm.loop !123

polly.loop_exit772.2.1:                           ; preds = %vector.body1083
  %polly.indvar_next768.2.1 = add nuw nsw i64 %polly.indvar767.2.1, 1
  %exitcond933.2.1.not = icmp eq i64 %polly.indvar_next768.2.1, 32
  br i1 %exitcond933.2.1.not, label %polly.loop_header764.2980, label %polly.loop_header764.2.1

polly.loop_header764.2980:                        ; preds = %polly.loop_exit772.2.1, %polly.loop_exit772.2991
  %polly.indvar767.2979 = phi i64 [ %polly.indvar_next768.2989, %polly.loop_exit772.2991 ], [ 0, %polly.loop_exit772.2.1 ]
  %516 = add nuw nsw i64 %polly.indvar767.2979, 64
  %517 = mul nuw nsw i64 %516, 640
  %518 = trunc i64 %516 to i32
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %518, i32 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %polly.loop_header764.2980
  %index1097 = phi i64 [ 0, %polly.loop_header764.2980 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1103 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header764.2980 ], [ %vec.ind.next1104, %vector.body1095 ]
  %519 = mul <4 x i32> %vec.ind1103, %broadcast.splat1106
  %520 = add <4 x i32> %519, <i32 3, i32 3, i32 3, i32 3>
  %521 = urem <4 x i32> %520, <i32 80, i32 80, i32 80, i32 80>
  %522 = sitofp <4 x i32> %521 to <4 x double>
  %523 = fmul fast <4 x double> %522, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %524 = shl i64 %index1097, 3
  %525 = add nuw nsw i64 %524, %517
  %526 = getelementptr i8, i8* %call, i64 %525
  %527 = bitcast i8* %526 to <4 x double>*
  store <4 x double> %523, <4 x double>* %527, align 8, !alias.scope !99, !noalias !101
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1104 = add <4 x i32> %vec.ind1103, <i32 4, i32 4, i32 4, i32 4>
  %528 = icmp eq i64 %index.next1098, 32
  br i1 %528, label %polly.loop_exit772.2991, label %vector.body1095, !llvm.loop !124

polly.loop_exit772.2991:                          ; preds = %vector.body1095
  %polly.indvar_next768.2989 = add nuw nsw i64 %polly.indvar767.2979, 1
  %exitcond933.2990.not = icmp eq i64 %polly.indvar_next768.2989, 16
  br i1 %exitcond933.2990.not, label %polly.loop_header764.1.2, label %polly.loop_header764.2980

polly.loop_header764.1.2:                         ; preds = %polly.loop_exit772.2991, %polly.loop_exit772.1.2
  %polly.indvar767.1.2 = phi i64 [ %polly.indvar_next768.1.2, %polly.loop_exit772.1.2 ], [ 0, %polly.loop_exit772.2991 ]
  %529 = add nuw nsw i64 %polly.indvar767.1.2, 64
  %530 = mul nuw nsw i64 %529, 640
  %531 = trunc i64 %529 to i32
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %531, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %polly.loop_header764.1.2
  %index1111 = phi i64 [ 0, %polly.loop_header764.1.2 ], [ %index.next1112, %vector.body1109 ]
  %vec.ind1115 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.1.2 ], [ %vec.ind.next1116, %vector.body1109 ]
  %532 = add nuw nsw <4 x i64> %vec.ind1115, <i64 32, i64 32, i64 32, i64 32>
  %533 = trunc <4 x i64> %532 to <4 x i32>
  %534 = mul <4 x i32> %broadcast.splat1118, %533
  %535 = add <4 x i32> %534, <i32 3, i32 3, i32 3, i32 3>
  %536 = urem <4 x i32> %535, <i32 80, i32 80, i32 80, i32 80>
  %537 = sitofp <4 x i32> %536 to <4 x double>
  %538 = fmul fast <4 x double> %537, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %539 = extractelement <4 x i64> %532, i32 0
  %540 = shl i64 %539, 3
  %541 = add nuw nsw i64 %540, %530
  %542 = getelementptr i8, i8* %call, i64 %541
  %543 = bitcast i8* %542 to <4 x double>*
  store <4 x double> %538, <4 x double>* %543, align 8, !alias.scope !99, !noalias !101
  %index.next1112 = add i64 %index1111, 4
  %vec.ind.next1116 = add <4 x i64> %vec.ind1115, <i64 4, i64 4, i64 4, i64 4>
  %544 = icmp eq i64 %index.next1112, 32
  br i1 %544, label %polly.loop_exit772.1.2, label %vector.body1109, !llvm.loop !125

polly.loop_exit772.1.2:                           ; preds = %vector.body1109
  %polly.indvar_next768.1.2 = add nuw nsw i64 %polly.indvar767.1.2, 1
  %exitcond933.1.2.not = icmp eq i64 %polly.indvar_next768.1.2, 16
  br i1 %exitcond933.1.2.not, label %polly.loop_header764.2.2, label %polly.loop_header764.1.2

polly.loop_header764.2.2:                         ; preds = %polly.loop_exit772.1.2, %polly.loop_exit772.2.2
  %polly.indvar767.2.2 = phi i64 [ %polly.indvar_next768.2.2, %polly.loop_exit772.2.2 ], [ 0, %polly.loop_exit772.1.2 ]
  %545 = add nuw nsw i64 %polly.indvar767.2.2, 64
  %546 = mul nuw nsw i64 %545, 640
  %547 = trunc i64 %545 to i32
  %broadcast.splatinsert1129 = insertelement <4 x i32> poison, i32 %547, i32 0
  %broadcast.splat1130 = shufflevector <4 x i32> %broadcast.splatinsert1129, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %polly.loop_header764.2.2
  %index1123 = phi i64 [ 0, %polly.loop_header764.2.2 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1127 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.2.2 ], [ %vec.ind.next1128, %vector.body1121 ]
  %548 = add nuw nsw <4 x i64> %vec.ind1127, <i64 64, i64 64, i64 64, i64 64>
  %549 = trunc <4 x i64> %548 to <4 x i32>
  %550 = mul <4 x i32> %broadcast.splat1130, %549
  %551 = add <4 x i32> %550, <i32 3, i32 3, i32 3, i32 3>
  %552 = urem <4 x i32> %551, <i32 80, i32 80, i32 80, i32 80>
  %553 = sitofp <4 x i32> %552 to <4 x double>
  %554 = fmul fast <4 x double> %553, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %555 = extractelement <4 x i64> %548, i32 0
  %556 = shl i64 %555, 3
  %557 = add nuw nsw i64 %556, %546
  %558 = getelementptr i8, i8* %call, i64 %557
  %559 = bitcast i8* %558 to <4 x double>*
  store <4 x double> %554, <4 x double>* %559, align 8, !alias.scope !99, !noalias !101
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1128 = add <4 x i64> %vec.ind1127, <i64 4, i64 4, i64 4, i64 4>
  %560 = icmp eq i64 %index.next1124, 16
  br i1 %560, label %polly.loop_exit772.2.2, label %vector.body1121, !llvm.loop !126

polly.loop_exit772.2.2:                           ; preds = %vector.body1121
  %polly.indvar_next768.2.2 = add nuw nsw i64 %polly.indvar767.2.2, 1
  %exitcond933.2.2.not = icmp eq i64 %polly.indvar_next768.2.2, 16
  br i1 %exitcond933.2.2.not, label %polly.loop_header791, label %polly.loop_header764.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 4}
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
!45 = !{!"llvm.loop.tile.size", i32 8}
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
