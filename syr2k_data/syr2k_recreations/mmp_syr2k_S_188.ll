; ModuleID = 'syr2k_recreations//mmp_syr2k_S_188.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_188.c"
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
  %call805 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1657 = bitcast i8* %call1 to double*
  %polly.access.call1666 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1666, %call2
  %polly.access.call2686 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2686, %call1
  %2 = or i1 %0, %1
  %polly.access.call706 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call706, %call2
  %4 = icmp ule i8* %polly.access.call2686, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call706, %call1
  %8 = icmp ule i8* %polly.access.call1666, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header791, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1145 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1144 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1143 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1142 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1142, %scevgep1145
  %bound1 = icmp ult i8* %scevgep1144, %scevgep1143
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
  br i1 %exitcond18.not.i, label %vector.ph1149, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1149:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1156 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1157 = shufflevector <4 x i64> %broadcast.splatinsert1156, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %vector.ph1149
  %index1150 = phi i64 [ 0, %vector.ph1149 ], [ %index.next1151, %vector.body1148 ]
  %vec.ind1154 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1149 ], [ %vec.ind.next1155, %vector.body1148 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1154, %broadcast.splat1157
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv7.i, i64 %index1150
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1155 = add <4 x i64> %vec.ind1154, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1151, 80
  br i1 %40, label %for.inc41.i, label %vector.body1148, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1148
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1149, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit852.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start467, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1505, label %vector.ph1431

vector.ph1431:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1430

vector.body1430:                                  ; preds = %vector.body1430, %vector.ph1431
  %index1432 = phi i64 [ 0, %vector.ph1431 ], [ %index.next1433, %vector.body1430 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv21.i, i64 %index1432
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1433 = add i64 %index1432, 4
  %46 = icmp eq i64 %index.next1433, %n.vec
  br i1 %46, label %middle.block1428, label %vector.body1430, !llvm.loop !18

middle.block1428:                                 ; preds = %vector.body1430
  %cmp.n1435 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1435, label %for.inc6.i, label %for.body3.i46.preheader1505

for.body3.i46.preheader1505:                      ; preds = %for.body3.i46.preheader, %middle.block1428
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1428 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1505, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1505 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1428, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting468
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start279, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1451 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1451, label %for.body3.i60.preheader1503, label %vector.ph1452

vector.ph1452:                                    ; preds = %for.body3.i60.preheader
  %n.vec1454 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1450

vector.body1450:                                  ; preds = %vector.body1450, %vector.ph1452
  %index1455 = phi i64 [ 0, %vector.ph1452 ], [ %index.next1456, %vector.body1450 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv21.i52, i64 %index1455
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1459 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1459, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1456 = add i64 %index1455, 4
  %57 = icmp eq i64 %index.next1456, %n.vec1454
  br i1 %57, label %middle.block1448, label %vector.body1450, !llvm.loop !54

middle.block1448:                                 ; preds = %vector.body1450
  %cmp.n1458 = icmp eq i64 %indvars.iv21.i52, %n.vec1454
  br i1 %cmp.n1458, label %for.inc6.i63, label %for.body3.i60.preheader1503

for.body3.i60.preheader1503:                      ; preds = %for.body3.i60.preheader, %middle.block1448
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1454, %middle.block1448 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1503, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1503 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1448, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting280
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1477 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1477, label %for.body3.i99.preheader1501, label %vector.ph1478

vector.ph1478:                                    ; preds = %for.body3.i99.preheader
  %n.vec1480 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1476

vector.body1476:                                  ; preds = %vector.body1476, %vector.ph1478
  %index1481 = phi i64 [ 0, %vector.ph1478 ], [ %index.next1482, %vector.body1476 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv21.i91, i64 %index1481
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1485 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1485, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1482 = add i64 %index1481, 4
  %68 = icmp eq i64 %index.next1482, %n.vec1480
  br i1 %68, label %middle.block1474, label %vector.body1476, !llvm.loop !56

middle.block1474:                                 ; preds = %vector.body1476
  %cmp.n1484 = icmp eq i64 %indvars.iv21.i91, %n.vec1480
  br i1 %cmp.n1484, label %for.inc6.i102, label %for.body3.i99.preheader1501

for.body3.i99.preheader1501:                      ; preds = %for.body3.i99.preheader, %middle.block1474
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1480, %middle.block1474 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1501, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1501 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1474, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call805, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1489 = phi i64 [ %indvar.next1490, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1489, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1491 = icmp ult i64 %88, 4
  br i1 %min.iters.check1491, label %polly.loop_header191.preheader, label %vector.ph1492

vector.ph1492:                                    ; preds = %polly.loop_header
  %n.vec1494 = and i64 %88, -4
  br label %vector.body1488

vector.body1488:                                  ; preds = %vector.body1488, %vector.ph1492
  %index1495 = phi i64 [ 0, %vector.ph1492 ], [ %index.next1496, %vector.body1488 ]
  %90 = shl nuw nsw i64 %index1495, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1499 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1499, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1496 = add i64 %index1495, 4
  %95 = icmp eq i64 %index.next1496, %n.vec1494
  br i1 %95, label %middle.block1486, label %vector.body1488, !llvm.loop !68

middle.block1486:                                 ; preds = %vector.body1488
  %cmp.n1498 = icmp eq i64 %88, %n.vec1494
  br i1 %cmp.n1498, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1486
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1494, %middle.block1486 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1486
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond996.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1490 = add i64 %indvar1489, 1
  br i1 %exitcond996.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond995.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond995.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !69

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv990 = phi i64 [ 1, %polly.loop_header199.preheader ], [ %indvars.iv.next991, %polly.loop_exit207 ]
  %indvars.iv975 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next976, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 20
  %indvars.iv.next991 = add nuw nsw i64 %indvars.iv990, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next203, 4
  br i1 %exitcond994.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %smin987 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -44)
  %98 = add nsw i64 %smin987, 60
  %99 = shl nsw i64 %polly.indvar208, 4
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -16
  %exitcond993.not = icmp eq i64 %polly.indvar_next209, 4
  br i1 %exitcond993.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv977 = phi i64 [ %indvars.iv.next978, %polly.loop_exit219 ], [ %indvars.iv975, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %100 = mul nuw nsw i64 %polly.indvar214, 20
  %101 = sub nsw i64 %97, %100
  %102 = add nuw nsw i64 %100, 20
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit248
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next978 = add nsw i64 %indvars.iv977, -20
  %exitcond992.not = icmp eq i64 %polly.indvar_next215, %indvars.iv990
  br i1 %exitcond992.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit248, %polly.loop_header211
  %indvars.iv979 = phi i64 [ %indvars.iv.next980, %polly.loop_exit248 ], [ %indvars.iv977, %polly.loop_header211 ]
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit248 ], [ 0, %polly.loop_header211 ]
  %smin985 = call i64 @llvm.smin.i64(i64 %indvars.iv979, i64 19)
  %103 = add nsw i64 %polly.indvar220, %101
  %polly.loop_guard1131 = icmp sgt i64 %103, -1
  %104 = add nuw nsw i64 %polly.indvar220, %97
  %.not = icmp ult i64 %104, %102
  %polly.access.mul.call1240 = mul nuw nsw i64 %104, 60
  %105 = add nuw nsw i64 %polly.access.mul.call1240, %99
  br i1 %polly.loop_guard1131, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %106 = add nuw nsw i64 %polly.indvar226.us, %99
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 80
  br label %polly.loop_header229.us

polly.loop_header229.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header229.us
  %polly.indvar232.us = phi i64 [ %polly.indvar_next233.us, %polly.loop_header229.us ], [ 0, %polly.loop_header223.us ]
  %107 = add nuw nsw i64 %polly.indvar232.us, %100
  %polly.access.mul.call1236.us = mul nuw nsw i64 %107, 60
  %polly.access.add.call1237.us = add nuw nsw i64 %106, %polly.access.mul.call1236.us
  %polly.access.call1238.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1237.us
  %polly.access.call1238.load.us = load double, double* %polly.access.call1238.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar232.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1238.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next233.us = add nuw nsw i64 %polly.indvar232.us, 1
  %exitcond982.not = icmp eq i64 %polly.indvar232.us, %smin985
  br i1 %exitcond982.not, label %polly.cond.loopexit.us, label %polly.loop_header229.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1241.us = add nuw nsw i64 %105, %polly.indvar226.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !65, !noalias !71
  %polly.access.add.Packed_MemRef_call1244.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %103
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond984.not = icmp eq i64 %polly.indvar_next227.us, %98
  br i1 %exitcond984.not, label %polly.loop_header246.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header229.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not, label %polly.loop_exit248, label %polly.loop_header223

polly.loop_exit248:                               ; preds = %polly.loop_exit255.loopexit.us, %polly.loop_header217.split, %polly.loop_header246.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %indvars.iv.next980 = add nsw i64 %indvars.iv979, 1
  %exitcond989.not = icmp eq i64 %polly.indvar_next221, 20
  br i1 %exitcond989.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header217.split, %polly.loop_header223
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_header223 ], [ 0, %polly.loop_header217.split ]
  %polly.access.add.call1241 = add nuw nsw i64 %105, %polly.indvar226
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !65, !noalias !71
  %polly.access.mul.Packed_MemRef_call1243 = mul nuw nsw i64 %polly.indvar226, 80
  %polly.access.add.Packed_MemRef_call1244 = add nsw i64 %polly.access.mul.Packed_MemRef_call1243, %103
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, %98
  br i1 %exitcond.not, label %polly.loop_header246.preheader, label %polly.loop_header223

polly.loop_header246.preheader:                   ; preds = %polly.loop_header223, %polly.merge.us
  %108 = mul nuw nsw i64 %104, 480
  %109 = mul nuw nsw i64 %104, 640
  br i1 %polly.loop_guard1131, label %polly.loop_header246.us, label %polly.loop_exit248

polly.loop_header246.us:                          ; preds = %polly.loop_header246.preheader, %polly.loop_exit255.loopexit.us
  %polly.indvar249.us = phi i64 [ %polly.indvar_next250.us, %polly.loop_exit255.loopexit.us ], [ 0, %polly.loop_header246.preheader ]
  %110 = add nuw nsw i64 %polly.indvar249.us, %99
  %polly.access.mul.Packed_MemRef_call1260.us = mul nuw nsw i64 %polly.indvar249.us, 80
  %111 = shl i64 %110, 3
  %112 = add nuw nsw i64 %111, %108
  %scevgep264.us = getelementptr i8, i8* %call2, i64 %112
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1271.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1260.us, %103
  %polly.access.Packed_MemRef_call1272.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1271.us
  %_p_scalar_273.us = load double, double* %polly.access.Packed_MemRef_call1272.us, align 8
  br label %polly.loop_header253.us

polly.loop_header253.us:                          ; preds = %polly.loop_header246.us, %polly.loop_header253.us
  %polly.indvar257.us = phi i64 [ %polly.indvar_next258.us, %polly.loop_header253.us ], [ 0, %polly.loop_header246.us ]
  %113 = add nuw nsw i64 %polly.indvar257.us, %100
  %polly.access.add.Packed_MemRef_call1261.us = add nuw nsw i64 %polly.indvar257.us, %polly.access.mul.Packed_MemRef_call1260.us
  %polly.access.Packed_MemRef_call1262.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call1262.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %114 = mul nuw nsw i64 %113, 480
  %115 = add nuw nsw i64 %114, %111
  %scevgep267.us = getelementptr i8, i8* %call2, i64 %115
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !66, !noalias !72
  %p_mul37.i114.us = fmul fast double %_p_scalar_273.us, %_p_scalar_269.us
  %116 = shl i64 %113, 3
  %117 = add nuw nsw i64 %116, %109
  %scevgep274.us = getelementptr i8, i8* %call, i64 %117
  %scevgep274275.us = bitcast i8* %scevgep274.us to double*
  %_p_scalar_276.us = load double, double* %scevgep274275.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_276.us
  store double %p_add42.i118.us, double* %scevgep274275.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next258.us = add nuw nsw i64 %polly.indvar257.us, 1
  %exitcond986.not = icmp eq i64 %polly.indvar257.us, %smin985
  br i1 %exitcond986.not, label %polly.loop_exit255.loopexit.us, label %polly.loop_header253.us

polly.loop_exit255.loopexit.us:                   ; preds = %polly.loop_header253.us
  %polly.indvar_next250.us = add nuw nsw i64 %polly.indvar249.us, 1
  %exitcond988.not = icmp eq i64 %polly.indvar_next250.us, %98
  br i1 %exitcond988.not, label %polly.loop_exit248, label %polly.loop_header246.us

polly.start279:                                   ; preds = %kernel_syr2k.exit
  %malloccall281 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header365

polly.exiting280:                                 ; preds = %polly.loop_exit389
  tail call void @free(i8* %malloccall281)
  br label %kernel_syr2k.exit90

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.start279
  %indvar1463 = phi i64 [ %indvar.next1464, %polly.loop_exit373 ], [ 0, %polly.start279 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 1, %polly.start279 ]
  %118 = add i64 %indvar1463, 1
  %119 = mul nuw nsw i64 %polly.indvar368, 640
  %scevgep377 = getelementptr i8, i8* %call, i64 %119
  %min.iters.check1465 = icmp ult i64 %118, 4
  br i1 %min.iters.check1465, label %polly.loop_header371.preheader, label %vector.ph1466

vector.ph1466:                                    ; preds = %polly.loop_header365
  %n.vec1468 = and i64 %118, -4
  br label %vector.body1462

vector.body1462:                                  ; preds = %vector.body1462, %vector.ph1466
  %index1469 = phi i64 [ 0, %vector.ph1466 ], [ %index.next1470, %vector.body1462 ]
  %120 = shl nuw nsw i64 %index1469, 3
  %121 = getelementptr i8, i8* %scevgep377, i64 %120
  %122 = bitcast i8* %121 to <4 x double>*
  %wide.load1473 = load <4 x double>, <4 x double>* %122, align 8, !alias.scope !73, !noalias !75
  %123 = fmul fast <4 x double> %wide.load1473, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %124 = bitcast i8* %121 to <4 x double>*
  store <4 x double> %123, <4 x double>* %124, align 8, !alias.scope !73, !noalias !75
  %index.next1470 = add i64 %index1469, 4
  %125 = icmp eq i64 %index.next1470, %n.vec1468
  br i1 %125, label %middle.block1460, label %vector.body1462, !llvm.loop !79

middle.block1460:                                 ; preds = %vector.body1462
  %cmp.n1472 = icmp eq i64 %118, %n.vec1468
  br i1 %cmp.n1472, label %polly.loop_exit373, label %polly.loop_header371.preheader

polly.loop_header371.preheader:                   ; preds = %polly.loop_header365, %middle.block1460
  %polly.indvar374.ph = phi i64 [ 0, %polly.loop_header365 ], [ %n.vec1468, %middle.block1460 ]
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_header371, %middle.block1460
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next369, 80
  %indvar.next1464 = add i64 %indvar1463, 1
  br i1 %exitcond1022.not, label %polly.loop_header381.preheader, label %polly.loop_header365

polly.loop_header381.preheader:                   ; preds = %polly.loop_exit373
  %Packed_MemRef_call1282 = bitcast i8* %malloccall281 to double*
  br label %polly.loop_header381

polly.loop_header371:                             ; preds = %polly.loop_header371.preheader, %polly.loop_header371
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_header371 ], [ %polly.indvar374.ph, %polly.loop_header371.preheader ]
  %126 = shl nuw nsw i64 %polly.indvar374, 3
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %126
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !73, !noalias !75
  %p_mul.i57 = fmul fast double %_p_scalar_380, 1.200000e+00
  store double %p_mul.i57, double* %scevgep378379, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next375, %polly.indvar368
  br i1 %exitcond1021.not, label %polly.loop_exit373, label %polly.loop_header371, !llvm.loop !80

polly.loop_header381:                             ; preds = %polly.loop_header381.preheader, %polly.loop_exit389
  %indvars.iv1016 = phi i64 [ 1, %polly.loop_header381.preheader ], [ %indvars.iv.next1017, %polly.loop_exit389 ]
  %indvars.iv1001 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %indvars.iv.next1002, %polly.loop_exit389 ]
  %polly.indvar384 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %polly.indvar_next385, %polly.loop_exit389 ]
  %127 = mul nuw nsw i64 %polly.indvar384, 20
  br label %polly.loop_header387

polly.loop_exit389:                               ; preds = %polly.loop_exit395
  %polly.indvar_next385 = add nuw nsw i64 %polly.indvar384, 1
  %indvars.iv.next1002 = add nuw nsw i64 %indvars.iv1001, 20
  %indvars.iv.next1017 = add nuw nsw i64 %indvars.iv1016, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar_next385, 4
  br i1 %exitcond1020.not, label %polly.exiting280, label %polly.loop_header381

polly.loop_header387:                             ; preds = %polly.loop_exit395, %polly.loop_header381
  %indvars.iv997 = phi i64 [ %indvars.iv.next998, %polly.loop_exit395 ], [ 0, %polly.loop_header381 ]
  %polly.indvar390 = phi i64 [ %polly.indvar_next391, %polly.loop_exit395 ], [ 0, %polly.loop_header381 ]
  %smin1013 = call i64 @llvm.smin.i64(i64 %indvars.iv997, i64 -44)
  %128 = add nsw i64 %smin1013, 60
  %129 = shl nsw i64 %polly.indvar390, 4
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit401
  %polly.indvar_next391 = add nuw nsw i64 %polly.indvar390, 1
  %indvars.iv.next998 = add nsw i64 %indvars.iv997, -16
  %exitcond1019.not = icmp eq i64 %polly.indvar_next391, 4
  br i1 %exitcond1019.not, label %polly.loop_exit389, label %polly.loop_header387

polly.loop_header393:                             ; preds = %polly.loop_exit401, %polly.loop_header387
  %indvars.iv1003 = phi i64 [ %indvars.iv.next1004, %polly.loop_exit401 ], [ %indvars.iv1001, %polly.loop_header387 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit401 ], [ 0, %polly.loop_header387 ]
  %130 = mul nuw nsw i64 %polly.indvar396, 20
  %131 = sub nsw i64 %127, %130
  %132 = add nuw nsw i64 %130, 20
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit436
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %indvars.iv.next1004 = add nsw i64 %indvars.iv1003, -20
  %exitcond1018.not = icmp eq i64 %polly.indvar_next397, %indvars.iv1016
  br i1 %exitcond1018.not, label %polly.loop_exit395, label %polly.loop_header393

polly.loop_header399:                             ; preds = %polly.loop_exit436, %polly.loop_header393
  %indvars.iv1005 = phi i64 [ %indvars.iv.next1006, %polly.loop_exit436 ], [ %indvars.iv1003, %polly.loop_header393 ]
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_exit436 ], [ 0, %polly.loop_header393 ]
  %smin1011 = call i64 @llvm.smin.i64(i64 %indvars.iv1005, i64 19)
  %133 = add nsw i64 %polly.indvar402, %131
  %polly.loop_guard4151132 = icmp sgt i64 %133, -1
  %134 = add nuw nsw i64 %polly.indvar402, %127
  %.not859 = icmp ult i64 %134, %132
  %polly.access.mul.call1428 = mul nuw nsw i64 %134, 60
  %135 = add nuw nsw i64 %polly.access.mul.call1428, %129
  br i1 %polly.loop_guard4151132, label %polly.loop_header405.us, label %polly.loop_header399.split

polly.loop_header405.us:                          ; preds = %polly.loop_header399, %polly.merge424.us
  %polly.indvar408.us = phi i64 [ %polly.indvar_next409.us, %polly.merge424.us ], [ 0, %polly.loop_header399 ]
  %136 = add nuw nsw i64 %polly.indvar408.us, %129
  %polly.access.mul.Packed_MemRef_call1282.us = mul nuw nsw i64 %polly.indvar408.us, 80
  br label %polly.loop_header412.us

polly.loop_header412.us:                          ; preds = %polly.loop_header405.us, %polly.loop_header412.us
  %polly.indvar416.us = phi i64 [ %polly.indvar_next417.us, %polly.loop_header412.us ], [ 0, %polly.loop_header405.us ]
  %137 = add nuw nsw i64 %polly.indvar416.us, %130
  %polly.access.mul.call1420.us = mul nuw nsw i64 %137, 60
  %polly.access.add.call1421.us = add nuw nsw i64 %136, %polly.access.mul.call1420.us
  %polly.access.call1422.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1421.us
  %polly.access.call1422.load.us = load double, double* %polly.access.call1422.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282.us = add nuw nsw i64 %polly.indvar416.us, %polly.access.mul.Packed_MemRef_call1282.us
  %polly.access.Packed_MemRef_call1282.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282.us
  store double %polly.access.call1422.load.us, double* %polly.access.Packed_MemRef_call1282.us, align 8
  %polly.indvar_next417.us = add nuw nsw i64 %polly.indvar416.us, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar416.us, %smin1011
  br i1 %exitcond1008.not, label %polly.cond423.loopexit.us, label %polly.loop_header412.us

polly.then425.us:                                 ; preds = %polly.cond423.loopexit.us
  %polly.access.add.call1429.us = add nuw nsw i64 %135, %polly.indvar408.us
  %polly.access.call1430.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1429.us
  %polly.access.call1430.load.us = load double, double* %polly.access.call1430.us, align 8, !alias.scope !76, !noalias !81
  %polly.access.add.Packed_MemRef_call1282432.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282.us, %133
  %polly.access.Packed_MemRef_call1282433.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282432.us
  store double %polly.access.call1430.load.us, double* %polly.access.Packed_MemRef_call1282433.us, align 8
  br label %polly.merge424.us

polly.merge424.us:                                ; preds = %polly.then425.us, %polly.cond423.loopexit.us
  %polly.indvar_next409.us = add nuw nsw i64 %polly.indvar408.us, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next409.us, %128
  br i1 %exitcond1010.not, label %polly.loop_header434.preheader, label %polly.loop_header405.us

polly.cond423.loopexit.us:                        ; preds = %polly.loop_header412.us
  br i1 %.not859, label %polly.merge424.us, label %polly.then425.us

polly.loop_header399.split:                       ; preds = %polly.loop_header399
  br i1 %.not859, label %polly.loop_exit436, label %polly.loop_header405

polly.loop_exit436:                               ; preds = %polly.loop_exit443.loopexit.us, %polly.loop_header399.split, %polly.loop_header434.preheader
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %indvars.iv.next1006 = add nsw i64 %indvars.iv1005, 1
  %exitcond1015.not = icmp eq i64 %polly.indvar_next403, 20
  br i1 %exitcond1015.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header405:                             ; preds = %polly.loop_header399.split, %polly.loop_header405
  %polly.indvar408 = phi i64 [ %polly.indvar_next409, %polly.loop_header405 ], [ 0, %polly.loop_header399.split ]
  %polly.access.add.call1429 = add nuw nsw i64 %135, %polly.indvar408
  %polly.access.call1430 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1429
  %polly.access.call1430.load = load double, double* %polly.access.call1430, align 8, !alias.scope !76, !noalias !81
  %polly.access.mul.Packed_MemRef_call1282431 = mul nuw nsw i64 %polly.indvar408, 80
  %polly.access.add.Packed_MemRef_call1282432 = add nsw i64 %polly.access.mul.Packed_MemRef_call1282431, %133
  %polly.access.Packed_MemRef_call1282433 = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282432
  store double %polly.access.call1430.load, double* %polly.access.Packed_MemRef_call1282433, align 8
  %polly.indvar_next409 = add nuw nsw i64 %polly.indvar408, 1
  %exitcond1000.not = icmp eq i64 %polly.indvar_next409, %128
  br i1 %exitcond1000.not, label %polly.loop_header434.preheader, label %polly.loop_header405

polly.loop_header434.preheader:                   ; preds = %polly.loop_header405, %polly.merge424.us
  %138 = mul nuw nsw i64 %134, 480
  %139 = mul nuw nsw i64 %134, 640
  br i1 %polly.loop_guard4151132, label %polly.loop_header434.us, label %polly.loop_exit436

polly.loop_header434.us:                          ; preds = %polly.loop_header434.preheader, %polly.loop_exit443.loopexit.us
  %polly.indvar437.us = phi i64 [ %polly.indvar_next438.us, %polly.loop_exit443.loopexit.us ], [ 0, %polly.loop_header434.preheader ]
  %140 = add nuw nsw i64 %polly.indvar437.us, %129
  %polly.access.mul.Packed_MemRef_call1282448.us = mul nuw nsw i64 %polly.indvar437.us, 80
  %141 = shl i64 %140, 3
  %142 = add nuw nsw i64 %141, %138
  %scevgep452.us = getelementptr i8, i8* %call2, i64 %142
  %scevgep452453.us = bitcast i8* %scevgep452.us to double*
  %_p_scalar_454.us = load double, double* %scevgep452453.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1282459.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1282448.us, %133
  %polly.access.Packed_MemRef_call1282460.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282459.us
  %_p_scalar_461.us = load double, double* %polly.access.Packed_MemRef_call1282460.us, align 8
  br label %polly.loop_header441.us

polly.loop_header441.us:                          ; preds = %polly.loop_header434.us, %polly.loop_header441.us
  %polly.indvar445.us = phi i64 [ %polly.indvar_next446.us, %polly.loop_header441.us ], [ 0, %polly.loop_header434.us ]
  %143 = add nuw nsw i64 %polly.indvar445.us, %130
  %polly.access.add.Packed_MemRef_call1282449.us = add nuw nsw i64 %polly.indvar445.us, %polly.access.mul.Packed_MemRef_call1282448.us
  %polly.access.Packed_MemRef_call1282450.us = getelementptr double, double* %Packed_MemRef_call1282, i64 %polly.access.add.Packed_MemRef_call1282449.us
  %_p_scalar_451.us = load double, double* %polly.access.Packed_MemRef_call1282450.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_454.us, %_p_scalar_451.us
  %144 = mul nuw nsw i64 %143, 480
  %145 = add nuw nsw i64 %144, %141
  %scevgep455.us = getelementptr i8, i8* %call2, i64 %145
  %scevgep455456.us = bitcast i8* %scevgep455.us to double*
  %_p_scalar_457.us = load double, double* %scevgep455456.us, align 8, !alias.scope !77, !noalias !82
  %p_mul37.i75.us = fmul fast double %_p_scalar_461.us, %_p_scalar_457.us
  %146 = shl i64 %143, 3
  %147 = add nuw nsw i64 %146, %139
  %scevgep462.us = getelementptr i8, i8* %call, i64 %147
  %scevgep462463.us = bitcast i8* %scevgep462.us to double*
  %_p_scalar_464.us = load double, double* %scevgep462463.us, align 8, !alias.scope !73, !noalias !75
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_464.us
  store double %p_add42.i79.us, double* %scevgep462463.us, align 8, !alias.scope !73, !noalias !75
  %polly.indvar_next446.us = add nuw nsw i64 %polly.indvar445.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar445.us, %smin1011
  br i1 %exitcond1012.not, label %polly.loop_exit443.loopexit.us, label %polly.loop_header441.us

polly.loop_exit443.loopexit.us:                   ; preds = %polly.loop_header441.us
  %polly.indvar_next438.us = add nuw nsw i64 %polly.indvar437.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next438.us, %128
  br i1 %exitcond1014.not, label %polly.loop_exit436, label %polly.loop_header434.us

polly.start467:                                   ; preds = %init_array.exit
  %malloccall469 = tail call dereferenceable_or_null(10240) i8* @malloc(i64 10240) #6
  br label %polly.loop_header553

polly.exiting468:                                 ; preds = %polly.loop_exit577
  tail call void @free(i8* %malloccall469)
  br label %kernel_syr2k.exit

polly.loop_header553:                             ; preds = %polly.loop_exit561, %polly.start467
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit561 ], [ 0, %polly.start467 ]
  %polly.indvar556 = phi i64 [ %polly.indvar_next557, %polly.loop_exit561 ], [ 1, %polly.start467 ]
  %148 = add i64 %indvar, 1
  %149 = mul nuw nsw i64 %polly.indvar556, 640
  %scevgep565 = getelementptr i8, i8* %call, i64 %149
  %min.iters.check1439 = icmp ult i64 %148, 4
  br i1 %min.iters.check1439, label %polly.loop_header559.preheader, label %vector.ph1440

vector.ph1440:                                    ; preds = %polly.loop_header553
  %n.vec1442 = and i64 %148, -4
  br label %vector.body1438

vector.body1438:                                  ; preds = %vector.body1438, %vector.ph1440
  %index1443 = phi i64 [ 0, %vector.ph1440 ], [ %index.next1444, %vector.body1438 ]
  %150 = shl nuw nsw i64 %index1443, 3
  %151 = getelementptr i8, i8* %scevgep565, i64 %150
  %152 = bitcast i8* %151 to <4 x double>*
  %wide.load1447 = load <4 x double>, <4 x double>* %152, align 8, !alias.scope !83, !noalias !85
  %153 = fmul fast <4 x double> %wide.load1447, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %154 = bitcast i8* %151 to <4 x double>*
  store <4 x double> %153, <4 x double>* %154, align 8, !alias.scope !83, !noalias !85
  %index.next1444 = add i64 %index1443, 4
  %155 = icmp eq i64 %index.next1444, %n.vec1442
  br i1 %155, label %middle.block1436, label %vector.body1438, !llvm.loop !89

middle.block1436:                                 ; preds = %vector.body1438
  %cmp.n1446 = icmp eq i64 %148, %n.vec1442
  br i1 %cmp.n1446, label %polly.loop_exit561, label %polly.loop_header559.preheader

polly.loop_header559.preheader:                   ; preds = %polly.loop_header553, %middle.block1436
  %polly.indvar562.ph = phi i64 [ 0, %polly.loop_header553 ], [ %n.vec1442, %middle.block1436 ]
  br label %polly.loop_header559

polly.loop_exit561:                               ; preds = %polly.loop_header559, %middle.block1436
  %polly.indvar_next557 = add nuw nsw i64 %polly.indvar556, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next557, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1048.not, label %polly.loop_header569.preheader, label %polly.loop_header553

polly.loop_header569.preheader:                   ; preds = %polly.loop_exit561
  %Packed_MemRef_call1470 = bitcast i8* %malloccall469 to double*
  br label %polly.loop_header569

polly.loop_header559:                             ; preds = %polly.loop_header559.preheader, %polly.loop_header559
  %polly.indvar562 = phi i64 [ %polly.indvar_next563, %polly.loop_header559 ], [ %polly.indvar562.ph, %polly.loop_header559.preheader ]
  %156 = shl nuw nsw i64 %polly.indvar562, 3
  %scevgep566 = getelementptr i8, i8* %scevgep565, i64 %156
  %scevgep566567 = bitcast i8* %scevgep566 to double*
  %_p_scalar_568 = load double, double* %scevgep566567, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_568, 1.200000e+00
  store double %p_mul.i, double* %scevgep566567, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next563 = add nuw nsw i64 %polly.indvar562, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next563, %polly.indvar556
  br i1 %exitcond1047.not, label %polly.loop_exit561, label %polly.loop_header559, !llvm.loop !90

polly.loop_header569:                             ; preds = %polly.loop_header569.preheader, %polly.loop_exit577
  %indvars.iv1042 = phi i64 [ 1, %polly.loop_header569.preheader ], [ %indvars.iv.next1043, %polly.loop_exit577 ]
  %indvars.iv1027 = phi i64 [ 0, %polly.loop_header569.preheader ], [ %indvars.iv.next1028, %polly.loop_exit577 ]
  %polly.indvar572 = phi i64 [ 0, %polly.loop_header569.preheader ], [ %polly.indvar_next573, %polly.loop_exit577 ]
  %157 = mul nuw nsw i64 %polly.indvar572, 20
  br label %polly.loop_header575

polly.loop_exit577:                               ; preds = %polly.loop_exit583
  %polly.indvar_next573 = add nuw nsw i64 %polly.indvar572, 1
  %indvars.iv.next1028 = add nuw nsw i64 %indvars.iv1027, 20
  %indvars.iv.next1043 = add nuw nsw i64 %indvars.iv1042, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next573, 4
  br i1 %exitcond1046.not, label %polly.exiting468, label %polly.loop_header569

polly.loop_header575:                             ; preds = %polly.loop_exit583, %polly.loop_header569
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit583 ], [ 0, %polly.loop_header569 ]
  %polly.indvar578 = phi i64 [ %polly.indvar_next579, %polly.loop_exit583 ], [ 0, %polly.loop_header569 ]
  %smin1039 = call i64 @llvm.smin.i64(i64 %indvars.iv1023, i64 -44)
  %158 = add nsw i64 %smin1039, 60
  %159 = shl nsw i64 %polly.indvar578, 4
  br label %polly.loop_header581

polly.loop_exit583:                               ; preds = %polly.loop_exit589
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %indvars.iv.next1024 = add nsw i64 %indvars.iv1023, -16
  %exitcond1045.not = icmp eq i64 %polly.indvar_next579, 4
  br i1 %exitcond1045.not, label %polly.loop_exit577, label %polly.loop_header575

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_header575
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit589 ], [ %indvars.iv1027, %polly.loop_header575 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit589 ], [ 0, %polly.loop_header575 ]
  %160 = mul nuw nsw i64 %polly.indvar584, 20
  %161 = sub nsw i64 %157, %160
  %162 = add nuw nsw i64 %160, 20
  br label %polly.loop_header587

polly.loop_exit589:                               ; preds = %polly.loop_exit624
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %indvars.iv.next1030 = add nsw i64 %indvars.iv1029, -20
  %exitcond1044.not = icmp eq i64 %polly.indvar_next585, %indvars.iv1042
  br i1 %exitcond1044.not, label %polly.loop_exit583, label %polly.loop_header581

polly.loop_header587:                             ; preds = %polly.loop_exit624, %polly.loop_header581
  %indvars.iv1031 = phi i64 [ %indvars.iv.next1032, %polly.loop_exit624 ], [ %indvars.iv1029, %polly.loop_header581 ]
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_exit624 ], [ 0, %polly.loop_header581 ]
  %smin1037 = call i64 @llvm.smin.i64(i64 %indvars.iv1031, i64 19)
  %163 = add nsw i64 %polly.indvar590, %161
  %polly.loop_guard6031133 = icmp sgt i64 %163, -1
  %164 = add nuw nsw i64 %polly.indvar590, %157
  %.not860 = icmp ult i64 %164, %162
  %polly.access.mul.call1616 = mul nuw nsw i64 %164, 60
  %165 = add nuw nsw i64 %polly.access.mul.call1616, %159
  br i1 %polly.loop_guard6031133, label %polly.loop_header593.us, label %polly.loop_header587.split

polly.loop_header593.us:                          ; preds = %polly.loop_header587, %polly.merge612.us
  %polly.indvar596.us = phi i64 [ %polly.indvar_next597.us, %polly.merge612.us ], [ 0, %polly.loop_header587 ]
  %166 = add nuw nsw i64 %polly.indvar596.us, %159
  %polly.access.mul.Packed_MemRef_call1470.us = mul nuw nsw i64 %polly.indvar596.us, 80
  br label %polly.loop_header600.us

polly.loop_header600.us:                          ; preds = %polly.loop_header593.us, %polly.loop_header600.us
  %polly.indvar604.us = phi i64 [ %polly.indvar_next605.us, %polly.loop_header600.us ], [ 0, %polly.loop_header593.us ]
  %167 = add nuw nsw i64 %polly.indvar604.us, %160
  %polly.access.mul.call1608.us = mul nuw nsw i64 %167, 60
  %polly.access.add.call1609.us = add nuw nsw i64 %166, %polly.access.mul.call1608.us
  %polly.access.call1610.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1609.us
  %polly.access.call1610.load.us = load double, double* %polly.access.call1610.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1470.us = add nuw nsw i64 %polly.indvar604.us, %polly.access.mul.Packed_MemRef_call1470.us
  %polly.access.Packed_MemRef_call1470.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470.us
  store double %polly.access.call1610.load.us, double* %polly.access.Packed_MemRef_call1470.us, align 8
  %polly.indvar_next605.us = add nuw nsw i64 %polly.indvar604.us, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar604.us, %smin1037
  br i1 %exitcond1034.not, label %polly.cond611.loopexit.us, label %polly.loop_header600.us

polly.then613.us:                                 ; preds = %polly.cond611.loopexit.us
  %polly.access.add.call1617.us = add nuw nsw i64 %165, %polly.indvar596.us
  %polly.access.call1618.us = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1617.us
  %polly.access.call1618.load.us = load double, double* %polly.access.call1618.us, align 8, !alias.scope !86, !noalias !91
  %polly.access.add.Packed_MemRef_call1470620.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1470.us, %163
  %polly.access.Packed_MemRef_call1470621.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470620.us
  store double %polly.access.call1618.load.us, double* %polly.access.Packed_MemRef_call1470621.us, align 8
  br label %polly.merge612.us

polly.merge612.us:                                ; preds = %polly.then613.us, %polly.cond611.loopexit.us
  %polly.indvar_next597.us = add nuw nsw i64 %polly.indvar596.us, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next597.us, %158
  br i1 %exitcond1036.not, label %polly.loop_header622.preheader, label %polly.loop_header593.us

polly.cond611.loopexit.us:                        ; preds = %polly.loop_header600.us
  br i1 %.not860, label %polly.merge612.us, label %polly.then613.us

polly.loop_header587.split:                       ; preds = %polly.loop_header587
  br i1 %.not860, label %polly.loop_exit624, label %polly.loop_header593

polly.loop_exit624:                               ; preds = %polly.loop_exit631.loopexit.us, %polly.loop_header587.split, %polly.loop_header622.preheader
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %indvars.iv.next1032 = add nsw i64 %indvars.iv1031, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next591, 20
  br i1 %exitcond1041.not, label %polly.loop_exit589, label %polly.loop_header587

polly.loop_header593:                             ; preds = %polly.loop_header587.split, %polly.loop_header593
  %polly.indvar596 = phi i64 [ %polly.indvar_next597, %polly.loop_header593 ], [ 0, %polly.loop_header587.split ]
  %polly.access.add.call1617 = add nuw nsw i64 %165, %polly.indvar596
  %polly.access.call1618 = getelementptr double, double* %polly.access.cast.call1657, i64 %polly.access.add.call1617
  %polly.access.call1618.load = load double, double* %polly.access.call1618, align 8, !alias.scope !86, !noalias !91
  %polly.access.mul.Packed_MemRef_call1470619 = mul nuw nsw i64 %polly.indvar596, 80
  %polly.access.add.Packed_MemRef_call1470620 = add nsw i64 %polly.access.mul.Packed_MemRef_call1470619, %163
  %polly.access.Packed_MemRef_call1470621 = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470620
  store double %polly.access.call1618.load, double* %polly.access.Packed_MemRef_call1470621, align 8
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %exitcond1026.not = icmp eq i64 %polly.indvar_next597, %158
  br i1 %exitcond1026.not, label %polly.loop_header622.preheader, label %polly.loop_header593

polly.loop_header622.preheader:                   ; preds = %polly.loop_header593, %polly.merge612.us
  %168 = mul nuw nsw i64 %164, 480
  %169 = mul nuw nsw i64 %164, 640
  br i1 %polly.loop_guard6031133, label %polly.loop_header622.us, label %polly.loop_exit624

polly.loop_header622.us:                          ; preds = %polly.loop_header622.preheader, %polly.loop_exit631.loopexit.us
  %polly.indvar625.us = phi i64 [ %polly.indvar_next626.us, %polly.loop_exit631.loopexit.us ], [ 0, %polly.loop_header622.preheader ]
  %170 = add nuw nsw i64 %polly.indvar625.us, %159
  %polly.access.mul.Packed_MemRef_call1470636.us = mul nuw nsw i64 %polly.indvar625.us, 80
  %171 = shl i64 %170, 3
  %172 = add nuw nsw i64 %171, %168
  %scevgep640.us = getelementptr i8, i8* %call2, i64 %172
  %scevgep640641.us = bitcast i8* %scevgep640.us to double*
  %_p_scalar_642.us = load double, double* %scevgep640641.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1470647.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1470636.us, %163
  %polly.access.Packed_MemRef_call1470648.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470647.us
  %_p_scalar_649.us = load double, double* %polly.access.Packed_MemRef_call1470648.us, align 8
  br label %polly.loop_header629.us

polly.loop_header629.us:                          ; preds = %polly.loop_header622.us, %polly.loop_header629.us
  %polly.indvar633.us = phi i64 [ %polly.indvar_next634.us, %polly.loop_header629.us ], [ 0, %polly.loop_header622.us ]
  %173 = add nuw nsw i64 %polly.indvar633.us, %160
  %polly.access.add.Packed_MemRef_call1470637.us = add nuw nsw i64 %polly.indvar633.us, %polly.access.mul.Packed_MemRef_call1470636.us
  %polly.access.Packed_MemRef_call1470638.us = getelementptr double, double* %Packed_MemRef_call1470, i64 %polly.access.add.Packed_MemRef_call1470637.us
  %_p_scalar_639.us = load double, double* %polly.access.Packed_MemRef_call1470638.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_642.us, %_p_scalar_639.us
  %174 = mul nuw nsw i64 %173, 480
  %175 = add nuw nsw i64 %174, %171
  %scevgep643.us = getelementptr i8, i8* %call2, i64 %175
  %scevgep643644.us = bitcast i8* %scevgep643.us to double*
  %_p_scalar_645.us = load double, double* %scevgep643644.us, align 8, !alias.scope !87, !noalias !92
  %p_mul37.i.us = fmul fast double %_p_scalar_649.us, %_p_scalar_645.us
  %176 = shl i64 %173, 3
  %177 = add nuw nsw i64 %176, %169
  %scevgep650.us = getelementptr i8, i8* %call, i64 %177
  %scevgep650651.us = bitcast i8* %scevgep650.us to double*
  %_p_scalar_652.us = load double, double* %scevgep650651.us, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_652.us
  store double %p_add42.i.us, double* %scevgep650651.us, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next634.us = add nuw nsw i64 %polly.indvar633.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar633.us, %smin1037
  br i1 %exitcond1038.not, label %polly.loop_exit631.loopexit.us, label %polly.loop_header629.us

polly.loop_exit631.loopexit.us:                   ; preds = %polly.loop_header629.us
  %polly.indvar_next626.us = add nuw nsw i64 %polly.indvar625.us, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next626.us, %158
  br i1 %exitcond1040.not, label %polly.loop_exit624, label %polly.loop_header622.us

polly.loop_header791:                             ; preds = %entry, %polly.loop_exit799
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %entry ]
  %178 = mul nuw nsw i64 %polly.indvar794, 640
  %179 = trunc i64 %polly.indvar794 to i32
  %broadcast.splatinsert1170 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1171 = shufflevector <4 x i32> %broadcast.splatinsert1170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %polly.loop_header791
  %index1162 = phi i64 [ 0, %polly.loop_header791 ], [ %index.next1163, %vector.body1160 ]
  %vec.ind1168 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791 ], [ %vec.ind.next1169, %vector.body1160 ]
  %180 = mul <4 x i32> %vec.ind1168, %broadcast.splat1171
  %181 = add <4 x i32> %180, <i32 3, i32 3, i32 3, i32 3>
  %182 = urem <4 x i32> %181, <i32 80, i32 80, i32 80, i32 80>
  %183 = sitofp <4 x i32> %182 to <4 x double>
  %184 = fmul fast <4 x double> %183, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %185 = shl i64 %index1162, 3
  %186 = add nuw nsw i64 %185, %178
  %187 = getelementptr i8, i8* %call, i64 %186
  %188 = bitcast i8* %187 to <4 x double>*
  store <4 x double> %184, <4 x double>* %188, align 8, !alias.scope !93, !noalias !95
  %index.next1163 = add i64 %index1162, 4
  %vec.ind.next1169 = add <4 x i32> %vec.ind1168, <i32 4, i32 4, i32 4, i32 4>
  %189 = icmp eq i64 %index.next1163, 32
  br i1 %189, label %polly.loop_exit799, label %vector.body1160, !llvm.loop !98

polly.loop_exit799:                               ; preds = %vector.body1160
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond1068.not = icmp eq i64 %polly.indvar_next795, 32
  br i1 %exitcond1068.not, label %polly.loop_header791.1, label %polly.loop_header791

polly.loop_header818:                             ; preds = %polly.loop_exit799.2.2, %polly.loop_exit826
  %polly.indvar821 = phi i64 [ %polly.indvar_next822, %polly.loop_exit826 ], [ 0, %polly.loop_exit799.2.2 ]
  %190 = mul nuw nsw i64 %polly.indvar821, 480
  %191 = trunc i64 %polly.indvar821 to i32
  %broadcast.splatinsert1284 = insertelement <4 x i32> poison, i32 %191, i32 0
  %broadcast.splat1285 = shufflevector <4 x i32> %broadcast.splatinsert1284, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %polly.loop_header818
  %index1276 = phi i64 [ 0, %polly.loop_header818 ], [ %index.next1277, %vector.body1274 ]
  %vec.ind1282 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header818 ], [ %vec.ind.next1283, %vector.body1274 ]
  %192 = mul <4 x i32> %vec.ind1282, %broadcast.splat1285
  %193 = add <4 x i32> %192, <i32 2, i32 2, i32 2, i32 2>
  %194 = urem <4 x i32> %193, <i32 60, i32 60, i32 60, i32 60>
  %195 = sitofp <4 x i32> %194 to <4 x double>
  %196 = fmul fast <4 x double> %195, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %197 = shl i64 %index1276, 3
  %198 = add i64 %197, %190
  %199 = getelementptr i8, i8* %call2, i64 %198
  %200 = bitcast i8* %199 to <4 x double>*
  store <4 x double> %196, <4 x double>* %200, align 8, !alias.scope !97, !noalias !99
  %index.next1277 = add i64 %index1276, 4
  %vec.ind.next1283 = add <4 x i32> %vec.ind1282, <i32 4, i32 4, i32 4, i32 4>
  %201 = icmp eq i64 %index.next1277, 32
  br i1 %201, label %polly.loop_exit826, label %vector.body1274, !llvm.loop !100

polly.loop_exit826:                               ; preds = %vector.body1274
  %polly.indvar_next822 = add nuw nsw i64 %polly.indvar821, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next822, 32
  br i1 %exitcond1059.not, label %polly.loop_header818.1, label %polly.loop_header818

polly.loop_header844:                             ; preds = %polly.loop_exit826.1.2, %polly.loop_exit852
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_exit826.1.2 ]
  %202 = mul nuw nsw i64 %polly.indvar847, 480
  %203 = trunc i64 %polly.indvar847 to i32
  %broadcast.splatinsert1362 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat1363 = shufflevector <4 x i32> %broadcast.splatinsert1362, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1352

vector.body1352:                                  ; preds = %vector.body1352, %polly.loop_header844
  %index1354 = phi i64 [ 0, %polly.loop_header844 ], [ %index.next1355, %vector.body1352 ]
  %vec.ind1360 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header844 ], [ %vec.ind.next1361, %vector.body1352 ]
  %204 = mul <4 x i32> %vec.ind1360, %broadcast.splat1363
  %205 = add <4 x i32> %204, <i32 1, i32 1, i32 1, i32 1>
  %206 = urem <4 x i32> %205, <i32 80, i32 80, i32 80, i32 80>
  %207 = sitofp <4 x i32> %206 to <4 x double>
  %208 = fmul fast <4 x double> %207, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %209 = shl i64 %index1354, 3
  %210 = add i64 %209, %202
  %211 = getelementptr i8, i8* %call1, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %208, <4 x double>* %212, align 8, !alias.scope !96, !noalias !101
  %index.next1355 = add i64 %index1354, 4
  %vec.ind.next1361 = add <4 x i32> %vec.ind1360, <i32 4, i32 4, i32 4, i32 4>
  %213 = icmp eq i64 %index.next1355, 32
  br i1 %213, label %polly.loop_exit852, label %vector.body1352, !llvm.loop !102

polly.loop_exit852:                               ; preds = %vector.body1352
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next848, 32
  br i1 %exitcond1053.not, label %polly.loop_header844.1, label %polly.loop_header844

polly.loop_header844.1:                           ; preds = %polly.loop_exit852, %polly.loop_exit852.1
  %polly.indvar847.1 = phi i64 [ %polly.indvar_next848.1, %polly.loop_exit852.1 ], [ 0, %polly.loop_exit852 ]
  %214 = mul nuw nsw i64 %polly.indvar847.1, 480
  %215 = trunc i64 %polly.indvar847.1 to i32
  %broadcast.splatinsert1374 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat1375 = shufflevector <4 x i32> %broadcast.splatinsert1374, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1366

vector.body1366:                                  ; preds = %vector.body1366, %polly.loop_header844.1
  %index1368 = phi i64 [ 0, %polly.loop_header844.1 ], [ %index.next1369, %vector.body1366 ]
  %vec.ind1372 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header844.1 ], [ %vec.ind.next1373, %vector.body1366 ]
  %216 = add nuw nsw <4 x i64> %vec.ind1372, <i64 32, i64 32, i64 32, i64 32>
  %217 = trunc <4 x i64> %216 to <4 x i32>
  %218 = mul <4 x i32> %broadcast.splat1375, %217
  %219 = add <4 x i32> %218, <i32 1, i32 1, i32 1, i32 1>
  %220 = urem <4 x i32> %219, <i32 80, i32 80, i32 80, i32 80>
  %221 = sitofp <4 x i32> %220 to <4 x double>
  %222 = fmul fast <4 x double> %221, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %223 = extractelement <4 x i64> %216, i32 0
  %224 = shl i64 %223, 3
  %225 = add i64 %224, %214
  %226 = getelementptr i8, i8* %call1, i64 %225
  %227 = bitcast i8* %226 to <4 x double>*
  store <4 x double> %222, <4 x double>* %227, align 8, !alias.scope !96, !noalias !101
  %index.next1369 = add i64 %index1368, 4
  %vec.ind.next1373 = add <4 x i64> %vec.ind1372, <i64 4, i64 4, i64 4, i64 4>
  %228 = icmp eq i64 %index.next1369, 28
  br i1 %228, label %polly.loop_exit852.1, label %vector.body1366, !llvm.loop !103

polly.loop_exit852.1:                             ; preds = %vector.body1366
  %polly.indvar_next848.1 = add nuw nsw i64 %polly.indvar847.1, 1
  %exitcond1053.1.not = icmp eq i64 %polly.indvar_next848.1, 32
  br i1 %exitcond1053.1.not, label %polly.loop_header844.11076, label %polly.loop_header844.1

polly.loop_header844.11076:                       ; preds = %polly.loop_exit852.1, %polly.loop_exit852.11087
  %polly.indvar847.11075 = phi i64 [ %polly.indvar_next848.11085, %polly.loop_exit852.11087 ], [ 0, %polly.loop_exit852.1 ]
  %229 = add nuw nsw i64 %polly.indvar847.11075, 32
  %230 = mul nuw nsw i64 %229, 480
  %231 = trunc i64 %229 to i32
  %broadcast.splatinsert1388 = insertelement <4 x i32> poison, i32 %231, i32 0
  %broadcast.splat1389 = shufflevector <4 x i32> %broadcast.splatinsert1388, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %polly.loop_header844.11076
  %index1380 = phi i64 [ 0, %polly.loop_header844.11076 ], [ %index.next1381, %vector.body1378 ]
  %vec.ind1386 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header844.11076 ], [ %vec.ind.next1387, %vector.body1378 ]
  %232 = mul <4 x i32> %vec.ind1386, %broadcast.splat1389
  %233 = add <4 x i32> %232, <i32 1, i32 1, i32 1, i32 1>
  %234 = urem <4 x i32> %233, <i32 80, i32 80, i32 80, i32 80>
  %235 = sitofp <4 x i32> %234 to <4 x double>
  %236 = fmul fast <4 x double> %235, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %237 = shl i64 %index1380, 3
  %238 = add i64 %237, %230
  %239 = getelementptr i8, i8* %call1, i64 %238
  %240 = bitcast i8* %239 to <4 x double>*
  store <4 x double> %236, <4 x double>* %240, align 8, !alias.scope !96, !noalias !101
  %index.next1381 = add i64 %index1380, 4
  %vec.ind.next1387 = add <4 x i32> %vec.ind1386, <i32 4, i32 4, i32 4, i32 4>
  %241 = icmp eq i64 %index.next1381, 32
  br i1 %241, label %polly.loop_exit852.11087, label %vector.body1378, !llvm.loop !104

polly.loop_exit852.11087:                         ; preds = %vector.body1378
  %polly.indvar_next848.11085 = add nuw nsw i64 %polly.indvar847.11075, 1
  %exitcond1053.11086.not = icmp eq i64 %polly.indvar_next848.11085, 32
  br i1 %exitcond1053.11086.not, label %polly.loop_header844.1.1, label %polly.loop_header844.11076

polly.loop_header844.1.1:                         ; preds = %polly.loop_exit852.11087, %polly.loop_exit852.1.1
  %polly.indvar847.1.1 = phi i64 [ %polly.indvar_next848.1.1, %polly.loop_exit852.1.1 ], [ 0, %polly.loop_exit852.11087 ]
  %242 = add nuw nsw i64 %polly.indvar847.1.1, 32
  %243 = mul nuw nsw i64 %242, 480
  %244 = trunc i64 %242 to i32
  %broadcast.splatinsert1400 = insertelement <4 x i32> poison, i32 %244, i32 0
  %broadcast.splat1401 = shufflevector <4 x i32> %broadcast.splatinsert1400, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1392

vector.body1392:                                  ; preds = %vector.body1392, %polly.loop_header844.1.1
  %index1394 = phi i64 [ 0, %polly.loop_header844.1.1 ], [ %index.next1395, %vector.body1392 ]
  %vec.ind1398 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header844.1.1 ], [ %vec.ind.next1399, %vector.body1392 ]
  %245 = add nuw nsw <4 x i64> %vec.ind1398, <i64 32, i64 32, i64 32, i64 32>
  %246 = trunc <4 x i64> %245 to <4 x i32>
  %247 = mul <4 x i32> %broadcast.splat1401, %246
  %248 = add <4 x i32> %247, <i32 1, i32 1, i32 1, i32 1>
  %249 = urem <4 x i32> %248, <i32 80, i32 80, i32 80, i32 80>
  %250 = sitofp <4 x i32> %249 to <4 x double>
  %251 = fmul fast <4 x double> %250, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %252 = extractelement <4 x i64> %245, i32 0
  %253 = shl i64 %252, 3
  %254 = add i64 %253, %243
  %255 = getelementptr i8, i8* %call1, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %251, <4 x double>* %256, align 8, !alias.scope !96, !noalias !101
  %index.next1395 = add i64 %index1394, 4
  %vec.ind.next1399 = add <4 x i64> %vec.ind1398, <i64 4, i64 4, i64 4, i64 4>
  %257 = icmp eq i64 %index.next1395, 28
  br i1 %257, label %polly.loop_exit852.1.1, label %vector.body1392, !llvm.loop !105

polly.loop_exit852.1.1:                           ; preds = %vector.body1392
  %polly.indvar_next848.1.1 = add nuw nsw i64 %polly.indvar847.1.1, 1
  %exitcond1053.1.1.not = icmp eq i64 %polly.indvar_next848.1.1, 32
  br i1 %exitcond1053.1.1.not, label %polly.loop_header844.2, label %polly.loop_header844.1.1

polly.loop_header844.2:                           ; preds = %polly.loop_exit852.1.1, %polly.loop_exit852.2
  %polly.indvar847.2 = phi i64 [ %polly.indvar_next848.2, %polly.loop_exit852.2 ], [ 0, %polly.loop_exit852.1.1 ]
  %258 = add nuw nsw i64 %polly.indvar847.2, 64
  %259 = mul nuw nsw i64 %258, 480
  %260 = trunc i64 %258 to i32
  %broadcast.splatinsert1414 = insertelement <4 x i32> poison, i32 %260, i32 0
  %broadcast.splat1415 = shufflevector <4 x i32> %broadcast.splatinsert1414, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %polly.loop_header844.2
  %index1406 = phi i64 [ 0, %polly.loop_header844.2 ], [ %index.next1407, %vector.body1404 ]
  %vec.ind1412 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header844.2 ], [ %vec.ind.next1413, %vector.body1404 ]
  %261 = mul <4 x i32> %vec.ind1412, %broadcast.splat1415
  %262 = add <4 x i32> %261, <i32 1, i32 1, i32 1, i32 1>
  %263 = urem <4 x i32> %262, <i32 80, i32 80, i32 80, i32 80>
  %264 = sitofp <4 x i32> %263 to <4 x double>
  %265 = fmul fast <4 x double> %264, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %266 = shl i64 %index1406, 3
  %267 = add i64 %266, %259
  %268 = getelementptr i8, i8* %call1, i64 %267
  %269 = bitcast i8* %268 to <4 x double>*
  store <4 x double> %265, <4 x double>* %269, align 8, !alias.scope !96, !noalias !101
  %index.next1407 = add i64 %index1406, 4
  %vec.ind.next1413 = add <4 x i32> %vec.ind1412, <i32 4, i32 4, i32 4, i32 4>
  %270 = icmp eq i64 %index.next1407, 32
  br i1 %270, label %polly.loop_exit852.2, label %vector.body1404, !llvm.loop !106

polly.loop_exit852.2:                             ; preds = %vector.body1404
  %polly.indvar_next848.2 = add nuw nsw i64 %polly.indvar847.2, 1
  %exitcond1053.2.not = icmp eq i64 %polly.indvar_next848.2, 16
  br i1 %exitcond1053.2.not, label %polly.loop_header844.1.2, label %polly.loop_header844.2

polly.loop_header844.1.2:                         ; preds = %polly.loop_exit852.2, %polly.loop_exit852.1.2
  %polly.indvar847.1.2 = phi i64 [ %polly.indvar_next848.1.2, %polly.loop_exit852.1.2 ], [ 0, %polly.loop_exit852.2 ]
  %271 = add nuw nsw i64 %polly.indvar847.1.2, 64
  %272 = mul nuw nsw i64 %271, 480
  %273 = trunc i64 %271 to i32
  %broadcast.splatinsert1426 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat1427 = shufflevector <4 x i32> %broadcast.splatinsert1426, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1418

vector.body1418:                                  ; preds = %vector.body1418, %polly.loop_header844.1.2
  %index1420 = phi i64 [ 0, %polly.loop_header844.1.2 ], [ %index.next1421, %vector.body1418 ]
  %vec.ind1424 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header844.1.2 ], [ %vec.ind.next1425, %vector.body1418 ]
  %274 = add nuw nsw <4 x i64> %vec.ind1424, <i64 32, i64 32, i64 32, i64 32>
  %275 = trunc <4 x i64> %274 to <4 x i32>
  %276 = mul <4 x i32> %broadcast.splat1427, %275
  %277 = add <4 x i32> %276, <i32 1, i32 1, i32 1, i32 1>
  %278 = urem <4 x i32> %277, <i32 80, i32 80, i32 80, i32 80>
  %279 = sitofp <4 x i32> %278 to <4 x double>
  %280 = fmul fast <4 x double> %279, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %281 = extractelement <4 x i64> %274, i32 0
  %282 = shl i64 %281, 3
  %283 = add i64 %282, %272
  %284 = getelementptr i8, i8* %call1, i64 %283
  %285 = bitcast i8* %284 to <4 x double>*
  store <4 x double> %280, <4 x double>* %285, align 8, !alias.scope !96, !noalias !101
  %index.next1421 = add i64 %index1420, 4
  %vec.ind.next1425 = add <4 x i64> %vec.ind1424, <i64 4, i64 4, i64 4, i64 4>
  %286 = icmp eq i64 %index.next1421, 28
  br i1 %286, label %polly.loop_exit852.1.2, label %vector.body1418, !llvm.loop !107

polly.loop_exit852.1.2:                           ; preds = %vector.body1418
  %polly.indvar_next848.1.2 = add nuw nsw i64 %polly.indvar847.1.2, 1
  %exitcond1053.1.2.not = icmp eq i64 %polly.indvar_next848.1.2, 16
  br i1 %exitcond1053.1.2.not, label %init_array.exit, label %polly.loop_header844.1.2

polly.loop_header818.1:                           ; preds = %polly.loop_exit826, %polly.loop_exit826.1
  %polly.indvar821.1 = phi i64 [ %polly.indvar_next822.1, %polly.loop_exit826.1 ], [ 0, %polly.loop_exit826 ]
  %287 = mul nuw nsw i64 %polly.indvar821.1, 480
  %288 = trunc i64 %polly.indvar821.1 to i32
  %broadcast.splatinsert1296 = insertelement <4 x i32> poison, i32 %288, i32 0
  %broadcast.splat1297 = shufflevector <4 x i32> %broadcast.splatinsert1296, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1288

vector.body1288:                                  ; preds = %vector.body1288, %polly.loop_header818.1
  %index1290 = phi i64 [ 0, %polly.loop_header818.1 ], [ %index.next1291, %vector.body1288 ]
  %vec.ind1294 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header818.1 ], [ %vec.ind.next1295, %vector.body1288 ]
  %289 = add nuw nsw <4 x i64> %vec.ind1294, <i64 32, i64 32, i64 32, i64 32>
  %290 = trunc <4 x i64> %289 to <4 x i32>
  %291 = mul <4 x i32> %broadcast.splat1297, %290
  %292 = add <4 x i32> %291, <i32 2, i32 2, i32 2, i32 2>
  %293 = urem <4 x i32> %292, <i32 60, i32 60, i32 60, i32 60>
  %294 = sitofp <4 x i32> %293 to <4 x double>
  %295 = fmul fast <4 x double> %294, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %296 = extractelement <4 x i64> %289, i32 0
  %297 = shl i64 %296, 3
  %298 = add i64 %297, %287
  %299 = getelementptr i8, i8* %call2, i64 %298
  %300 = bitcast i8* %299 to <4 x double>*
  store <4 x double> %295, <4 x double>* %300, align 8, !alias.scope !97, !noalias !99
  %index.next1291 = add i64 %index1290, 4
  %vec.ind.next1295 = add <4 x i64> %vec.ind1294, <i64 4, i64 4, i64 4, i64 4>
  %301 = icmp eq i64 %index.next1291, 28
  br i1 %301, label %polly.loop_exit826.1, label %vector.body1288, !llvm.loop !108

polly.loop_exit826.1:                             ; preds = %vector.body1288
  %polly.indvar_next822.1 = add nuw nsw i64 %polly.indvar821.1, 1
  %exitcond1059.1.not = icmp eq i64 %polly.indvar_next822.1, 32
  br i1 %exitcond1059.1.not, label %polly.loop_header818.11090, label %polly.loop_header818.1

polly.loop_header818.11090:                       ; preds = %polly.loop_exit826.1, %polly.loop_exit826.11101
  %polly.indvar821.11089 = phi i64 [ %polly.indvar_next822.11099, %polly.loop_exit826.11101 ], [ 0, %polly.loop_exit826.1 ]
  %302 = add nuw nsw i64 %polly.indvar821.11089, 32
  %303 = mul nuw nsw i64 %302, 480
  %304 = trunc i64 %302 to i32
  %broadcast.splatinsert1310 = insertelement <4 x i32> poison, i32 %304, i32 0
  %broadcast.splat1311 = shufflevector <4 x i32> %broadcast.splatinsert1310, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1300

vector.body1300:                                  ; preds = %vector.body1300, %polly.loop_header818.11090
  %index1302 = phi i64 [ 0, %polly.loop_header818.11090 ], [ %index.next1303, %vector.body1300 ]
  %vec.ind1308 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header818.11090 ], [ %vec.ind.next1309, %vector.body1300 ]
  %305 = mul <4 x i32> %vec.ind1308, %broadcast.splat1311
  %306 = add <4 x i32> %305, <i32 2, i32 2, i32 2, i32 2>
  %307 = urem <4 x i32> %306, <i32 60, i32 60, i32 60, i32 60>
  %308 = sitofp <4 x i32> %307 to <4 x double>
  %309 = fmul fast <4 x double> %308, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %310 = shl i64 %index1302, 3
  %311 = add i64 %310, %303
  %312 = getelementptr i8, i8* %call2, i64 %311
  %313 = bitcast i8* %312 to <4 x double>*
  store <4 x double> %309, <4 x double>* %313, align 8, !alias.scope !97, !noalias !99
  %index.next1303 = add i64 %index1302, 4
  %vec.ind.next1309 = add <4 x i32> %vec.ind1308, <i32 4, i32 4, i32 4, i32 4>
  %314 = icmp eq i64 %index.next1303, 32
  br i1 %314, label %polly.loop_exit826.11101, label %vector.body1300, !llvm.loop !109

polly.loop_exit826.11101:                         ; preds = %vector.body1300
  %polly.indvar_next822.11099 = add nuw nsw i64 %polly.indvar821.11089, 1
  %exitcond1059.11100.not = icmp eq i64 %polly.indvar_next822.11099, 32
  br i1 %exitcond1059.11100.not, label %polly.loop_header818.1.1, label %polly.loop_header818.11090

polly.loop_header818.1.1:                         ; preds = %polly.loop_exit826.11101, %polly.loop_exit826.1.1
  %polly.indvar821.1.1 = phi i64 [ %polly.indvar_next822.1.1, %polly.loop_exit826.1.1 ], [ 0, %polly.loop_exit826.11101 ]
  %315 = add nuw nsw i64 %polly.indvar821.1.1, 32
  %316 = mul nuw nsw i64 %315, 480
  %317 = trunc i64 %315 to i32
  %broadcast.splatinsert1322 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1323 = shufflevector <4 x i32> %broadcast.splatinsert1322, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1314

vector.body1314:                                  ; preds = %vector.body1314, %polly.loop_header818.1.1
  %index1316 = phi i64 [ 0, %polly.loop_header818.1.1 ], [ %index.next1317, %vector.body1314 ]
  %vec.ind1320 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header818.1.1 ], [ %vec.ind.next1321, %vector.body1314 ]
  %318 = add nuw nsw <4 x i64> %vec.ind1320, <i64 32, i64 32, i64 32, i64 32>
  %319 = trunc <4 x i64> %318 to <4 x i32>
  %320 = mul <4 x i32> %broadcast.splat1323, %319
  %321 = add <4 x i32> %320, <i32 2, i32 2, i32 2, i32 2>
  %322 = urem <4 x i32> %321, <i32 60, i32 60, i32 60, i32 60>
  %323 = sitofp <4 x i32> %322 to <4 x double>
  %324 = fmul fast <4 x double> %323, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %325 = extractelement <4 x i64> %318, i32 0
  %326 = shl i64 %325, 3
  %327 = add i64 %326, %316
  %328 = getelementptr i8, i8* %call2, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %324, <4 x double>* %329, align 8, !alias.scope !97, !noalias !99
  %index.next1317 = add i64 %index1316, 4
  %vec.ind.next1321 = add <4 x i64> %vec.ind1320, <i64 4, i64 4, i64 4, i64 4>
  %330 = icmp eq i64 %index.next1317, 28
  br i1 %330, label %polly.loop_exit826.1.1, label %vector.body1314, !llvm.loop !110

polly.loop_exit826.1.1:                           ; preds = %vector.body1314
  %polly.indvar_next822.1.1 = add nuw nsw i64 %polly.indvar821.1.1, 1
  %exitcond1059.1.1.not = icmp eq i64 %polly.indvar_next822.1.1, 32
  br i1 %exitcond1059.1.1.not, label %polly.loop_header818.2, label %polly.loop_header818.1.1

polly.loop_header818.2:                           ; preds = %polly.loop_exit826.1.1, %polly.loop_exit826.2
  %polly.indvar821.2 = phi i64 [ %polly.indvar_next822.2, %polly.loop_exit826.2 ], [ 0, %polly.loop_exit826.1.1 ]
  %331 = add nuw nsw i64 %polly.indvar821.2, 64
  %332 = mul nuw nsw i64 %331, 480
  %333 = trunc i64 %331 to i32
  %broadcast.splatinsert1336 = insertelement <4 x i32> poison, i32 %333, i32 0
  %broadcast.splat1337 = shufflevector <4 x i32> %broadcast.splatinsert1336, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1326

vector.body1326:                                  ; preds = %vector.body1326, %polly.loop_header818.2
  %index1328 = phi i64 [ 0, %polly.loop_header818.2 ], [ %index.next1329, %vector.body1326 ]
  %vec.ind1334 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header818.2 ], [ %vec.ind.next1335, %vector.body1326 ]
  %334 = mul <4 x i32> %vec.ind1334, %broadcast.splat1337
  %335 = add <4 x i32> %334, <i32 2, i32 2, i32 2, i32 2>
  %336 = urem <4 x i32> %335, <i32 60, i32 60, i32 60, i32 60>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %339 = shl i64 %index1328, 3
  %340 = add i64 %339, %332
  %341 = getelementptr i8, i8* %call2, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %338, <4 x double>* %342, align 8, !alias.scope !97, !noalias !99
  %index.next1329 = add i64 %index1328, 4
  %vec.ind.next1335 = add <4 x i32> %vec.ind1334, <i32 4, i32 4, i32 4, i32 4>
  %343 = icmp eq i64 %index.next1329, 32
  br i1 %343, label %polly.loop_exit826.2, label %vector.body1326, !llvm.loop !111

polly.loop_exit826.2:                             ; preds = %vector.body1326
  %polly.indvar_next822.2 = add nuw nsw i64 %polly.indvar821.2, 1
  %exitcond1059.2.not = icmp eq i64 %polly.indvar_next822.2, 16
  br i1 %exitcond1059.2.not, label %polly.loop_header818.1.2, label %polly.loop_header818.2

polly.loop_header818.1.2:                         ; preds = %polly.loop_exit826.2, %polly.loop_exit826.1.2
  %polly.indvar821.1.2 = phi i64 [ %polly.indvar_next822.1.2, %polly.loop_exit826.1.2 ], [ 0, %polly.loop_exit826.2 ]
  %344 = add nuw nsw i64 %polly.indvar821.1.2, 64
  %345 = mul nuw nsw i64 %344, 480
  %346 = trunc i64 %344 to i32
  %broadcast.splatinsert1348 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1349 = shufflevector <4 x i32> %broadcast.splatinsert1348, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %polly.loop_header818.1.2
  %index1342 = phi i64 [ 0, %polly.loop_header818.1.2 ], [ %index.next1343, %vector.body1340 ]
  %vec.ind1346 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header818.1.2 ], [ %vec.ind.next1347, %vector.body1340 ]
  %347 = add nuw nsw <4 x i64> %vec.ind1346, <i64 32, i64 32, i64 32, i64 32>
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat1349, %348
  %350 = add <4 x i32> %349, <i32 2, i32 2, i32 2, i32 2>
  %351 = urem <4 x i32> %350, <i32 60, i32 60, i32 60, i32 60>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add i64 %355, %345
  %357 = getelementptr i8, i8* %call2, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !97, !noalias !99
  %index.next1343 = add i64 %index1342, 4
  %vec.ind.next1347 = add <4 x i64> %vec.ind1346, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next1343, 28
  br i1 %359, label %polly.loop_exit826.1.2, label %vector.body1340, !llvm.loop !112

polly.loop_exit826.1.2:                           ; preds = %vector.body1340
  %polly.indvar_next822.1.2 = add nuw nsw i64 %polly.indvar821.1.2, 1
  %exitcond1059.1.2.not = icmp eq i64 %polly.indvar_next822.1.2, 16
  br i1 %exitcond1059.1.2.not, label %polly.loop_header844, label %polly.loop_header818.1.2

polly.loop_header791.1:                           ; preds = %polly.loop_exit799, %polly.loop_exit799.1
  %polly.indvar794.1 = phi i64 [ %polly.indvar_next795.1, %polly.loop_exit799.1 ], [ 0, %polly.loop_exit799 ]
  %360 = mul nuw nsw i64 %polly.indvar794.1, 640
  %361 = trunc i64 %polly.indvar794.1 to i32
  %broadcast.splatinsert1182 = insertelement <4 x i32> poison, i32 %361, i32 0
  %broadcast.splat1183 = shufflevector <4 x i32> %broadcast.splatinsert1182, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %polly.loop_header791.1
  %index1176 = phi i64 [ 0, %polly.loop_header791.1 ], [ %index.next1177, %vector.body1174 ]
  %vec.ind1180 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1 ], [ %vec.ind.next1181, %vector.body1174 ]
  %362 = add nuw nsw <4 x i64> %vec.ind1180, <i64 32, i64 32, i64 32, i64 32>
  %363 = trunc <4 x i64> %362 to <4 x i32>
  %364 = mul <4 x i32> %broadcast.splat1183, %363
  %365 = add <4 x i32> %364, <i32 3, i32 3, i32 3, i32 3>
  %366 = urem <4 x i32> %365, <i32 80, i32 80, i32 80, i32 80>
  %367 = sitofp <4 x i32> %366 to <4 x double>
  %368 = fmul fast <4 x double> %367, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %369 = extractelement <4 x i64> %362, i32 0
  %370 = shl i64 %369, 3
  %371 = add nuw nsw i64 %370, %360
  %372 = getelementptr i8, i8* %call, i64 %371
  %373 = bitcast i8* %372 to <4 x double>*
  store <4 x double> %368, <4 x double>* %373, align 8, !alias.scope !93, !noalias !95
  %index.next1177 = add i64 %index1176, 4
  %vec.ind.next1181 = add <4 x i64> %vec.ind1180, <i64 4, i64 4, i64 4, i64 4>
  %374 = icmp eq i64 %index.next1177, 32
  br i1 %374, label %polly.loop_exit799.1, label %vector.body1174, !llvm.loop !113

polly.loop_exit799.1:                             ; preds = %vector.body1174
  %polly.indvar_next795.1 = add nuw nsw i64 %polly.indvar794.1, 1
  %exitcond1068.1.not = icmp eq i64 %polly.indvar_next795.1, 32
  br i1 %exitcond1068.1.not, label %polly.loop_header791.2, label %polly.loop_header791.1

polly.loop_header791.2:                           ; preds = %polly.loop_exit799.1, %polly.loop_exit799.2
  %polly.indvar794.2 = phi i64 [ %polly.indvar_next795.2, %polly.loop_exit799.2 ], [ 0, %polly.loop_exit799.1 ]
  %375 = mul nuw nsw i64 %polly.indvar794.2, 640
  %376 = trunc i64 %polly.indvar794.2 to i32
  %broadcast.splatinsert1194 = insertelement <4 x i32> poison, i32 %376, i32 0
  %broadcast.splat1195 = shufflevector <4 x i32> %broadcast.splatinsert1194, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %polly.loop_header791.2
  %index1188 = phi i64 [ 0, %polly.loop_header791.2 ], [ %index.next1189, %vector.body1186 ]
  %vec.ind1192 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.2 ], [ %vec.ind.next1193, %vector.body1186 ]
  %377 = add nuw nsw <4 x i64> %vec.ind1192, <i64 64, i64 64, i64 64, i64 64>
  %378 = trunc <4 x i64> %377 to <4 x i32>
  %379 = mul <4 x i32> %broadcast.splat1195, %378
  %380 = add <4 x i32> %379, <i32 3, i32 3, i32 3, i32 3>
  %381 = urem <4 x i32> %380, <i32 80, i32 80, i32 80, i32 80>
  %382 = sitofp <4 x i32> %381 to <4 x double>
  %383 = fmul fast <4 x double> %382, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %384 = extractelement <4 x i64> %377, i32 0
  %385 = shl i64 %384, 3
  %386 = add nuw nsw i64 %385, %375
  %387 = getelementptr i8, i8* %call, i64 %386
  %388 = bitcast i8* %387 to <4 x double>*
  store <4 x double> %383, <4 x double>* %388, align 8, !alias.scope !93, !noalias !95
  %index.next1189 = add i64 %index1188, 4
  %vec.ind.next1193 = add <4 x i64> %vec.ind1192, <i64 4, i64 4, i64 4, i64 4>
  %389 = icmp eq i64 %index.next1189, 16
  br i1 %389, label %polly.loop_exit799.2, label %vector.body1186, !llvm.loop !114

polly.loop_exit799.2:                             ; preds = %vector.body1186
  %polly.indvar_next795.2 = add nuw nsw i64 %polly.indvar794.2, 1
  %exitcond1068.2.not = icmp eq i64 %polly.indvar_next795.2, 32
  br i1 %exitcond1068.2.not, label %polly.loop_header791.11104, label %polly.loop_header791.2

polly.loop_header791.11104:                       ; preds = %polly.loop_exit799.2, %polly.loop_exit799.11115
  %polly.indvar794.11103 = phi i64 [ %polly.indvar_next795.11113, %polly.loop_exit799.11115 ], [ 0, %polly.loop_exit799.2 ]
  %390 = add nuw nsw i64 %polly.indvar794.11103, 32
  %391 = mul nuw nsw i64 %390, 640
  %392 = trunc i64 %390 to i32
  %broadcast.splatinsert1208 = insertelement <4 x i32> poison, i32 %392, i32 0
  %broadcast.splat1209 = shufflevector <4 x i32> %broadcast.splatinsert1208, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %polly.loop_header791.11104
  %index1200 = phi i64 [ 0, %polly.loop_header791.11104 ], [ %index.next1201, %vector.body1198 ]
  %vec.ind1206 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791.11104 ], [ %vec.ind.next1207, %vector.body1198 ]
  %393 = mul <4 x i32> %vec.ind1206, %broadcast.splat1209
  %394 = add <4 x i32> %393, <i32 3, i32 3, i32 3, i32 3>
  %395 = urem <4 x i32> %394, <i32 80, i32 80, i32 80, i32 80>
  %396 = sitofp <4 x i32> %395 to <4 x double>
  %397 = fmul fast <4 x double> %396, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %398 = shl i64 %index1200, 3
  %399 = add nuw nsw i64 %398, %391
  %400 = getelementptr i8, i8* %call, i64 %399
  %401 = bitcast i8* %400 to <4 x double>*
  store <4 x double> %397, <4 x double>* %401, align 8, !alias.scope !93, !noalias !95
  %index.next1201 = add i64 %index1200, 4
  %vec.ind.next1207 = add <4 x i32> %vec.ind1206, <i32 4, i32 4, i32 4, i32 4>
  %402 = icmp eq i64 %index.next1201, 32
  br i1 %402, label %polly.loop_exit799.11115, label %vector.body1198, !llvm.loop !115

polly.loop_exit799.11115:                         ; preds = %vector.body1198
  %polly.indvar_next795.11113 = add nuw nsw i64 %polly.indvar794.11103, 1
  %exitcond1068.11114.not = icmp eq i64 %polly.indvar_next795.11113, 32
  br i1 %exitcond1068.11114.not, label %polly.loop_header791.1.1, label %polly.loop_header791.11104

polly.loop_header791.1.1:                         ; preds = %polly.loop_exit799.11115, %polly.loop_exit799.1.1
  %polly.indvar794.1.1 = phi i64 [ %polly.indvar_next795.1.1, %polly.loop_exit799.1.1 ], [ 0, %polly.loop_exit799.11115 ]
  %403 = add nuw nsw i64 %polly.indvar794.1.1, 32
  %404 = mul nuw nsw i64 %403, 640
  %405 = trunc i64 %403 to i32
  %broadcast.splatinsert1220 = insertelement <4 x i32> poison, i32 %405, i32 0
  %broadcast.splat1221 = shufflevector <4 x i32> %broadcast.splatinsert1220, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %polly.loop_header791.1.1
  %index1214 = phi i64 [ 0, %polly.loop_header791.1.1 ], [ %index.next1215, %vector.body1212 ]
  %vec.ind1218 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1.1 ], [ %vec.ind.next1219, %vector.body1212 ]
  %406 = add nuw nsw <4 x i64> %vec.ind1218, <i64 32, i64 32, i64 32, i64 32>
  %407 = trunc <4 x i64> %406 to <4 x i32>
  %408 = mul <4 x i32> %broadcast.splat1221, %407
  %409 = add <4 x i32> %408, <i32 3, i32 3, i32 3, i32 3>
  %410 = urem <4 x i32> %409, <i32 80, i32 80, i32 80, i32 80>
  %411 = sitofp <4 x i32> %410 to <4 x double>
  %412 = fmul fast <4 x double> %411, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %413 = extractelement <4 x i64> %406, i32 0
  %414 = shl i64 %413, 3
  %415 = add nuw nsw i64 %414, %404
  %416 = getelementptr i8, i8* %call, i64 %415
  %417 = bitcast i8* %416 to <4 x double>*
  store <4 x double> %412, <4 x double>* %417, align 8, !alias.scope !93, !noalias !95
  %index.next1215 = add i64 %index1214, 4
  %vec.ind.next1219 = add <4 x i64> %vec.ind1218, <i64 4, i64 4, i64 4, i64 4>
  %418 = icmp eq i64 %index.next1215, 32
  br i1 %418, label %polly.loop_exit799.1.1, label %vector.body1212, !llvm.loop !116

polly.loop_exit799.1.1:                           ; preds = %vector.body1212
  %polly.indvar_next795.1.1 = add nuw nsw i64 %polly.indvar794.1.1, 1
  %exitcond1068.1.1.not = icmp eq i64 %polly.indvar_next795.1.1, 32
  br i1 %exitcond1068.1.1.not, label %polly.loop_header791.2.1, label %polly.loop_header791.1.1

polly.loop_header791.2.1:                         ; preds = %polly.loop_exit799.1.1, %polly.loop_exit799.2.1
  %polly.indvar794.2.1 = phi i64 [ %polly.indvar_next795.2.1, %polly.loop_exit799.2.1 ], [ 0, %polly.loop_exit799.1.1 ]
  %419 = add nuw nsw i64 %polly.indvar794.2.1, 32
  %420 = mul nuw nsw i64 %419, 640
  %421 = trunc i64 %419 to i32
  %broadcast.splatinsert1232 = insertelement <4 x i32> poison, i32 %421, i32 0
  %broadcast.splat1233 = shufflevector <4 x i32> %broadcast.splatinsert1232, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %polly.loop_header791.2.1
  %index1226 = phi i64 [ 0, %polly.loop_header791.2.1 ], [ %index.next1227, %vector.body1224 ]
  %vec.ind1230 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.2.1 ], [ %vec.ind.next1231, %vector.body1224 ]
  %422 = add nuw nsw <4 x i64> %vec.ind1230, <i64 64, i64 64, i64 64, i64 64>
  %423 = trunc <4 x i64> %422 to <4 x i32>
  %424 = mul <4 x i32> %broadcast.splat1233, %423
  %425 = add <4 x i32> %424, <i32 3, i32 3, i32 3, i32 3>
  %426 = urem <4 x i32> %425, <i32 80, i32 80, i32 80, i32 80>
  %427 = sitofp <4 x i32> %426 to <4 x double>
  %428 = fmul fast <4 x double> %427, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %429 = extractelement <4 x i64> %422, i32 0
  %430 = shl i64 %429, 3
  %431 = add nuw nsw i64 %430, %420
  %432 = getelementptr i8, i8* %call, i64 %431
  %433 = bitcast i8* %432 to <4 x double>*
  store <4 x double> %428, <4 x double>* %433, align 8, !alias.scope !93, !noalias !95
  %index.next1227 = add i64 %index1226, 4
  %vec.ind.next1231 = add <4 x i64> %vec.ind1230, <i64 4, i64 4, i64 4, i64 4>
  %434 = icmp eq i64 %index.next1227, 16
  br i1 %434, label %polly.loop_exit799.2.1, label %vector.body1224, !llvm.loop !117

polly.loop_exit799.2.1:                           ; preds = %vector.body1224
  %polly.indvar_next795.2.1 = add nuw nsw i64 %polly.indvar794.2.1, 1
  %exitcond1068.2.1.not = icmp eq i64 %polly.indvar_next795.2.1, 32
  br i1 %exitcond1068.2.1.not, label %polly.loop_header791.21118, label %polly.loop_header791.2.1

polly.loop_header791.21118:                       ; preds = %polly.loop_exit799.2.1, %polly.loop_exit799.21129
  %polly.indvar794.21117 = phi i64 [ %polly.indvar_next795.21127, %polly.loop_exit799.21129 ], [ 0, %polly.loop_exit799.2.1 ]
  %435 = add nuw nsw i64 %polly.indvar794.21117, 64
  %436 = mul nuw nsw i64 %435, 640
  %437 = trunc i64 %435 to i32
  %broadcast.splatinsert1246 = insertelement <4 x i32> poison, i32 %437, i32 0
  %broadcast.splat1247 = shufflevector <4 x i32> %broadcast.splatinsert1246, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %polly.loop_header791.21118
  %index1238 = phi i64 [ 0, %polly.loop_header791.21118 ], [ %index.next1239, %vector.body1236 ]
  %vec.ind1244 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791.21118 ], [ %vec.ind.next1245, %vector.body1236 ]
  %438 = mul <4 x i32> %vec.ind1244, %broadcast.splat1247
  %439 = add <4 x i32> %438, <i32 3, i32 3, i32 3, i32 3>
  %440 = urem <4 x i32> %439, <i32 80, i32 80, i32 80, i32 80>
  %441 = sitofp <4 x i32> %440 to <4 x double>
  %442 = fmul fast <4 x double> %441, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %443 = shl i64 %index1238, 3
  %444 = add nuw nsw i64 %443, %436
  %445 = getelementptr i8, i8* %call, i64 %444
  %446 = bitcast i8* %445 to <4 x double>*
  store <4 x double> %442, <4 x double>* %446, align 8, !alias.scope !93, !noalias !95
  %index.next1239 = add i64 %index1238, 4
  %vec.ind.next1245 = add <4 x i32> %vec.ind1244, <i32 4, i32 4, i32 4, i32 4>
  %447 = icmp eq i64 %index.next1239, 32
  br i1 %447, label %polly.loop_exit799.21129, label %vector.body1236, !llvm.loop !118

polly.loop_exit799.21129:                         ; preds = %vector.body1236
  %polly.indvar_next795.21127 = add nuw nsw i64 %polly.indvar794.21117, 1
  %exitcond1068.21128.not = icmp eq i64 %polly.indvar_next795.21127, 16
  br i1 %exitcond1068.21128.not, label %polly.loop_header791.1.2, label %polly.loop_header791.21118

polly.loop_header791.1.2:                         ; preds = %polly.loop_exit799.21129, %polly.loop_exit799.1.2
  %polly.indvar794.1.2 = phi i64 [ %polly.indvar_next795.1.2, %polly.loop_exit799.1.2 ], [ 0, %polly.loop_exit799.21129 ]
  %448 = add nuw nsw i64 %polly.indvar794.1.2, 64
  %449 = mul nuw nsw i64 %448, 640
  %450 = trunc i64 %448 to i32
  %broadcast.splatinsert1258 = insertelement <4 x i32> poison, i32 %450, i32 0
  %broadcast.splat1259 = shufflevector <4 x i32> %broadcast.splatinsert1258, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %polly.loop_header791.1.2
  %index1252 = phi i64 [ 0, %polly.loop_header791.1.2 ], [ %index.next1253, %vector.body1250 ]
  %vec.ind1256 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1.2 ], [ %vec.ind.next1257, %vector.body1250 ]
  %451 = add nuw nsw <4 x i64> %vec.ind1256, <i64 32, i64 32, i64 32, i64 32>
  %452 = trunc <4 x i64> %451 to <4 x i32>
  %453 = mul <4 x i32> %broadcast.splat1259, %452
  %454 = add <4 x i32> %453, <i32 3, i32 3, i32 3, i32 3>
  %455 = urem <4 x i32> %454, <i32 80, i32 80, i32 80, i32 80>
  %456 = sitofp <4 x i32> %455 to <4 x double>
  %457 = fmul fast <4 x double> %456, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %458 = extractelement <4 x i64> %451, i32 0
  %459 = shl i64 %458, 3
  %460 = add nuw nsw i64 %459, %449
  %461 = getelementptr i8, i8* %call, i64 %460
  %462 = bitcast i8* %461 to <4 x double>*
  store <4 x double> %457, <4 x double>* %462, align 8, !alias.scope !93, !noalias !95
  %index.next1253 = add i64 %index1252, 4
  %vec.ind.next1257 = add <4 x i64> %vec.ind1256, <i64 4, i64 4, i64 4, i64 4>
  %463 = icmp eq i64 %index.next1253, 32
  br i1 %463, label %polly.loop_exit799.1.2, label %vector.body1250, !llvm.loop !119

polly.loop_exit799.1.2:                           ; preds = %vector.body1250
  %polly.indvar_next795.1.2 = add nuw nsw i64 %polly.indvar794.1.2, 1
  %exitcond1068.1.2.not = icmp eq i64 %polly.indvar_next795.1.2, 16
  br i1 %exitcond1068.1.2.not, label %polly.loop_header791.2.2, label %polly.loop_header791.1.2

polly.loop_header791.2.2:                         ; preds = %polly.loop_exit799.1.2, %polly.loop_exit799.2.2
  %polly.indvar794.2.2 = phi i64 [ %polly.indvar_next795.2.2, %polly.loop_exit799.2.2 ], [ 0, %polly.loop_exit799.1.2 ]
  %464 = add nuw nsw i64 %polly.indvar794.2.2, 64
  %465 = mul nuw nsw i64 %464, 640
  %466 = trunc i64 %464 to i32
  %broadcast.splatinsert1270 = insertelement <4 x i32> poison, i32 %466, i32 0
  %broadcast.splat1271 = shufflevector <4 x i32> %broadcast.splatinsert1270, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %polly.loop_header791.2.2
  %index1264 = phi i64 [ 0, %polly.loop_header791.2.2 ], [ %index.next1265, %vector.body1262 ]
  %vec.ind1268 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.2.2 ], [ %vec.ind.next1269, %vector.body1262 ]
  %467 = add nuw nsw <4 x i64> %vec.ind1268, <i64 64, i64 64, i64 64, i64 64>
  %468 = trunc <4 x i64> %467 to <4 x i32>
  %469 = mul <4 x i32> %broadcast.splat1271, %468
  %470 = add <4 x i32> %469, <i32 3, i32 3, i32 3, i32 3>
  %471 = urem <4 x i32> %470, <i32 80, i32 80, i32 80, i32 80>
  %472 = sitofp <4 x i32> %471 to <4 x double>
  %473 = fmul fast <4 x double> %472, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %474 = extractelement <4 x i64> %467, i32 0
  %475 = shl i64 %474, 3
  %476 = add nuw nsw i64 %475, %465
  %477 = getelementptr i8, i8* %call, i64 %476
  %478 = bitcast i8* %477 to <4 x double>*
  store <4 x double> %473, <4 x double>* %478, align 8, !alias.scope !93, !noalias !95
  %index.next1265 = add i64 %index1264, 4
  %vec.ind.next1269 = add <4 x i64> %vec.ind1268, <i64 4, i64 4, i64 4, i64 4>
  %479 = icmp eq i64 %index.next1265, 16
  br i1 %479, label %polly.loop_exit799.2.2, label %vector.body1262, !llvm.loop !120

polly.loop_exit799.2.2:                           ; preds = %vector.body1262
  %polly.indvar_next795.2.2 = add nuw nsw i64 %polly.indvar794.2.2, 1
  %exitcond1068.2.2.not = icmp eq i64 %polly.indvar_next795.2.2, 16
  br i1 %exitcond1068.2.2.not, label %polly.loop_header818, label %polly.loop_header791.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 16}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !25, !48, !51}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.followup_floor", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i1"}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !53}
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
!64 = !{!65, !66, !67}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !63, !"polly.alias.scope.Packed_MemRef_call1"}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !70, !13}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!62, !66, !67}
!72 = !{!62, !65, !67}
!73 = distinct !{!73, !74, !"polly.alias.scope.MemRef_call"}
!74 = distinct !{!74, !"polly.alias.scope.domain"}
!75 = !{!76, !77, !78}
!76 = distinct !{!76, !74, !"polly.alias.scope.MemRef_call1"}
!77 = distinct !{!77, !74, !"polly.alias.scope.MemRef_call2"}
!78 = distinct !{!78, !74, !"polly.alias.scope.Packed_MemRef_call1"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !70, !13}
!81 = !{!73, !77, !78}
!82 = !{!73, !76, !78}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !70, !13}
!91 = !{!83, !87, !88}
!92 = !{!83, !86, !88}
!93 = distinct !{!93, !94, !"polly.alias.scope.MemRef_call"}
!94 = distinct !{!94, !"polly.alias.scope.domain"}
!95 = !{!96, !97}
!96 = distinct !{!96, !94, !"polly.alias.scope.MemRef_call1"}
!97 = distinct !{!97, !94, !"polly.alias.scope.MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = !{!96, !93}
!100 = distinct !{!100, !13}
!101 = !{!97, !93}
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
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
