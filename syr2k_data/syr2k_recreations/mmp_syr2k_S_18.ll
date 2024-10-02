; ModuleID = 'syr2k_recreations//mmp_syr2k_S_18.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_18.c"
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
  %scevgep1147 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1146 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1145 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1144 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1144, %scevgep1147
  %bound1 = icmp ult i8* %scevgep1146, %scevgep1145
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
  br i1 %exitcond18.not.i, label %vector.ph1151, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1151:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1158 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1159 = shufflevector <4 x i64> %broadcast.splatinsert1158, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %vector.ph1151
  %index1152 = phi i64 [ 0, %vector.ph1151 ], [ %index.next1153, %vector.body1150 ]
  %vec.ind1156 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1151 ], [ %vec.ind.next1157, %vector.body1150 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1156, %broadcast.splat1159
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv7.i, i64 %index1152
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1153 = add i64 %index1152, 4
  %vec.ind.next1157 = add <4 x i64> %vec.ind1156, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1153, 80
  br i1 %40, label %for.inc41.i, label %vector.body1150, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1150
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1151, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1510, label %vector.ph1433

vector.ph1433:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1432

vector.body1432:                                  ; preds = %vector.body1432, %vector.ph1433
  %index1434 = phi i64 [ 0, %vector.ph1433 ], [ %index.next1435, %vector.body1432 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i, i64 %index1434
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1435 = add i64 %index1434, 4
  %46 = icmp eq i64 %index.next1435, %n.vec
  br i1 %46, label %middle.block1430, label %vector.body1432, !llvm.loop !18

middle.block1430:                                 ; preds = %vector.body1432
  %cmp.n1437 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1437, label %for.inc6.i, label %for.body3.i46.preheader1510

for.body3.i46.preheader1510:                      ; preds = %for.body3.i46.preheader, %middle.block1430
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1430 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1510, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1510 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1430, %for.cond1.preheader.i45
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

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
  %min.iters.check1453 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1453, label %for.body3.i60.preheader1507, label %vector.ph1454

vector.ph1454:                                    ; preds = %for.body3.i60.preheader
  %n.vec1456 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1452

vector.body1452:                                  ; preds = %vector.body1452, %vector.ph1454
  %index1457 = phi i64 [ 0, %vector.ph1454 ], [ %index.next1458, %vector.body1452 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i52, i64 %index1457
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1461 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1461, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1458 = add i64 %index1457, 4
  %57 = icmp eq i64 %index.next1458, %n.vec1456
  br i1 %57, label %middle.block1450, label %vector.body1452, !llvm.loop !55

middle.block1450:                                 ; preds = %vector.body1452
  %cmp.n1460 = icmp eq i64 %indvars.iv21.i52, %n.vec1456
  br i1 %cmp.n1460, label %for.inc6.i63, label %for.body3.i60.preheader1507

for.body3.i60.preheader1507:                      ; preds = %for.body3.i60.preheader, %middle.block1450
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1456, %middle.block1450 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1507, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1507 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1450, %for.cond1.preheader.i54
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

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
  %min.iters.check1479 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1479, label %for.body3.i99.preheader1504, label %vector.ph1480

vector.ph1480:                                    ; preds = %for.body3.i99.preheader
  %n.vec1482 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1480
  %index1483 = phi i64 [ 0, %vector.ph1480 ], [ %index.next1484, %vector.body1478 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i91, i64 %index1483
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1487 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1487, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1484 = add i64 %index1483, 4
  %68 = icmp eq i64 %index.next1484, %n.vec1482
  br i1 %68, label %middle.block1476, label %vector.body1478, !llvm.loop !57

middle.block1476:                                 ; preds = %vector.body1478
  %cmp.n1486 = icmp eq i64 %indvars.iv21.i91, %n.vec1482
  br i1 %cmp.n1486, label %for.inc6.i102, label %for.body3.i99.preheader1504

for.body3.i99.preheader1504:                      ; preds = %for.body3.i99.preheader, %middle.block1476
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1482, %middle.block1476 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1504, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1504 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1476, %for.cond1.preheader.i93
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !59
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call811, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !61

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !62

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !59
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1491 = phi i64 [ %indvar.next1492, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1491, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1493 = icmp ult i64 %88, 4
  br i1 %min.iters.check1493, label %polly.loop_header191.preheader, label %vector.ph1494

vector.ph1494:                                    ; preds = %polly.loop_header
  %n.vec1496 = and i64 %88, -4
  br label %vector.body1490

vector.body1490:                                  ; preds = %vector.body1490, %vector.ph1494
  %index1497 = phi i64 [ 0, %vector.ph1494 ], [ %index.next1498, %vector.body1490 ]
  %90 = shl nuw nsw i64 %index1497, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1501 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1501, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1498 = add i64 %index1497, 4
  %95 = icmp eq i64 %index.next1498, %n.vec1496
  br i1 %95, label %middle.block1488, label %vector.body1490, !llvm.loop !69

middle.block1488:                                 ; preds = %vector.body1490
  %cmp.n1500 = icmp eq i64 %88, %n.vec1496
  br i1 %cmp.n1500, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1488
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1496, %middle.block1488 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1488
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond995.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1492 = add i64 %indvar1491, 1
  br i1 %exitcond995.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  br label %polly.loop_header205

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond994.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond994.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199.preheader ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ 0, %polly.loop_header199.preheader ]
  %smin990 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -52)
  %97 = add nsw i64 %smin990, 60
  %98 = shl nsw i64 %polly.indvar208, 3
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %exitcond993.not = icmp eq i64 %polly.indvar_next209, 8
  br i1 %exitcond993.not, label %polly.loop_header205.1, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %indvars.iv980 = phi i64 [ %indvars.iv.next981, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %indvars.iv978 = phi i64 [ %indvars.iv.next979, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_header205 ]
  %99 = mul i64 %polly.indvar214, 20
  %polly.loop_guard.not = icmp sgt i64 %99, 49
  br i1 %polly.loop_guard.not, label %polly.loop_exit219, label %polly.loop_header217.preheader

polly.loop_header217.preheader:                   ; preds = %polly.loop_header211
  %100 = add i64 %indvars.iv978, %indvars.iv980
  %101 = add nuw nsw i64 %99, 20
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit250, %polly.loop_header211
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next979 = add nuw nsw i64 %indvars.iv978, 20
  %indvars.iv.next981 = add nsw i64 %indvars.iv980, -20
  %exitcond992.not = icmp eq i64 %polly.indvar_next215, 3
  br i1 %exitcond992.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217.preheader, %polly.loop_exit250
  %indvars.iv982 = phi i64 [ %100, %polly.loop_header217.preheader ], [ %indvars.iv.next983, %polly.loop_exit250 ]
  %polly.indvar220 = phi i64 [ %99, %polly.loop_header217.preheader ], [ %polly.indvar_next221, %polly.loop_exit250 ]
  %smin988 = call i64 @llvm.smin.i64(i64 %indvars.iv982, i64 19)
  %102 = sub i64 %polly.indvar220, %99
  %polly.loop_guard2331124 = icmp sgt i64 %102, -1
  %.not865 = icmp ult i64 %polly.indvar220, %101
  %polly.access.mul.call1242 = mul nsw i64 %polly.indvar220, 60
  %103 = add nuw i64 %polly.access.mul.call1242, %98
  br i1 %polly.loop_guard2331124, label %polly.loop_header223.us, label %polly.loop_header217.split

polly.loop_header223.us:                          ; preds = %polly.loop_header217, %polly.merge.us
  %polly.indvar226.us = phi i64 [ %polly.indvar_next227.us, %polly.merge.us ], [ 0, %polly.loop_header217 ]
  %104 = add nuw nsw i64 %polly.indvar226.us, %98
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar226.us, 80
  br label %polly.loop_header230.us

polly.loop_header230.us:                          ; preds = %polly.loop_header223.us, %polly.loop_header230.us
  %polly.indvar234.us = phi i64 [ %polly.indvar_next235.us, %polly.loop_header230.us ], [ 0, %polly.loop_header223.us ]
  %105 = add nuw nsw i64 %polly.indvar234.us, %99
  %polly.access.mul.call1238.us = mul nuw nsw i64 %105, 60
  %polly.access.add.call1239.us = add nuw nsw i64 %104, %polly.access.mul.call1238.us
  %polly.access.call1240.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1239.us
  %polly.access.call1240.load.us = load double, double* %polly.access.call1240.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar234.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1240.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next235.us = add nuw nsw i64 %polly.indvar234.us, 1
  %exitcond985.not = icmp eq i64 %polly.indvar234.us, %smin988
  br i1 %exitcond985.not, label %polly.cond.loopexit.us, label %polly.loop_header230.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1243.us = add nuw nsw i64 %103, %polly.indvar226.us
  %polly.access.call1244.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.us
  %polly.access.call1244.load.us = load double, double* %polly.access.call1244.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %102
  %polly.access.Packed_MemRef_call1247.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us
  store double %polly.access.call1244.load.us, double* %polly.access.Packed_MemRef_call1247.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next227.us = add nuw nsw i64 %polly.indvar226.us, 1
  %exitcond987.not = icmp eq i64 %polly.indvar_next227.us, %97
  br i1 %exitcond987.not, label %polly.loop_header248.preheader, label %polly.loop_header223.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header230.us
  br i1 %.not865, label %polly.merge.us, label %polly.then.us

polly.loop_header217.split:                       ; preds = %polly.loop_header217
  br i1 %.not865, label %polly.loop_exit250, label %polly.loop_header223

polly.loop_exit250:                               ; preds = %polly.loop_exit257.loopexit.us, %polly.loop_header217.split, %polly.loop_header248.preheader
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %polly.loop_cond222.not.not = icmp ult i64 %polly.indvar220, 49
  %indvars.iv.next983 = add i64 %indvars.iv982, 1
  br i1 %polly.loop_cond222.not.not, label %polly.loop_header217, label %polly.loop_exit219

polly.loop_header223:                             ; preds = %polly.loop_header217.split, %polly.loop_header223
  %polly.indvar226 = phi i64 [ %polly.indvar_next227, %polly.loop_header223 ], [ 0, %polly.loop_header217.split ]
  %polly.access.add.call1243 = add nuw nsw i64 %103, %polly.indvar226
  %polly.access.call1244 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243
  %polly.access.call1244.load = load double, double* %polly.access.call1244, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1245 = mul nuw nsw i64 %polly.indvar226, 80
  %polly.access.add.Packed_MemRef_call1246 = add nsw i64 %polly.access.mul.Packed_MemRef_call1245, %102
  %polly.access.Packed_MemRef_call1247 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246
  store double %polly.access.call1244.load, double* %polly.access.Packed_MemRef_call1247, align 8
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, %97
  br i1 %exitcond.not, label %polly.loop_header248.preheader, label %polly.loop_header223

polly.loop_header248.preheader:                   ; preds = %polly.loop_header223, %polly.merge.us
  %106 = mul i64 %polly.indvar220, 480
  %107 = mul i64 %polly.indvar220, 640
  br i1 %polly.loop_guard2331124, label %polly.loop_header248.us, label %polly.loop_exit250

polly.loop_header248.us:                          ; preds = %polly.loop_header248.preheader, %polly.loop_exit257.loopexit.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_exit257.loopexit.us ], [ 0, %polly.loop_header248.preheader ]
  %108 = add nuw nsw i64 %polly.indvar251.us, %98
  %polly.access.mul.Packed_MemRef_call1262.us = mul nuw nsw i64 %polly.indvar251.us, 80
  %109 = shl i64 %108, 3
  %110 = add i64 %109, %106
  %scevgep266.us = getelementptr i8, i8* %call2, i64 %110
  %scevgep266267.us = bitcast i8* %scevgep266.us to double*
  %_p_scalar_268.us = load double, double* %scevgep266267.us, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1262.us, %102
  %polly.access.Packed_MemRef_call1274.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us
  %_p_scalar_275.us = load double, double* %polly.access.Packed_MemRef_call1274.us, align 8
  br label %polly.loop_header255.us

polly.loop_header255.us:                          ; preds = %polly.loop_header248.us, %polly.loop_header255.us
  %polly.indvar259.us = phi i64 [ %polly.indvar_next260.us, %polly.loop_header255.us ], [ 0, %polly.loop_header248.us ]
  %111 = add nuw nsw i64 %polly.indvar259.us, %99
  %polly.access.add.Packed_MemRef_call1263.us = add nuw nsw i64 %polly.indvar259.us, %polly.access.mul.Packed_MemRef_call1262.us
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  %_p_scalar_265.us = load double, double* %polly.access.Packed_MemRef_call1264.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_268.us, %_p_scalar_265.us
  %112 = mul nuw nsw i64 %111, 480
  %113 = add nuw nsw i64 %112, %109
  %scevgep269.us = getelementptr i8, i8* %call2, i64 %113
  %scevgep269270.us = bitcast i8* %scevgep269.us to double*
  %_p_scalar_271.us = load double, double* %scevgep269270.us, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us = fmul fast double %_p_scalar_275.us, %_p_scalar_271.us
  %114 = shl i64 %111, 3
  %115 = add i64 %114, %107
  %scevgep276.us = getelementptr i8, i8* %call, i64 %115
  %scevgep276277.us = bitcast i8* %scevgep276.us to double*
  %_p_scalar_278.us = load double, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_278.us
  store double %p_add42.i118.us, double* %scevgep276277.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us = add nuw nsw i64 %polly.indvar259.us, 1
  %exitcond989.not = icmp eq i64 %polly.indvar259.us, %smin988
  br i1 %exitcond989.not, label %polly.loop_exit257.loopexit.us, label %polly.loop_header255.us

polly.loop_exit257.loopexit.us:                   ; preds = %polly.loop_header255.us
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond991.not = icmp eq i64 %polly.indvar_next252.us, %97
  br i1 %exitcond991.not, label %polly.loop_exit250, label %polly.loop_header248.us

polly.start281:                                   ; preds = %kernel_syr2k.exit
  %malloccall283 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header367

polly.loop_header367:                             ; preds = %polly.loop_exit375, %polly.start281
  %indvar1465 = phi i64 [ %indvar.next1466, %polly.loop_exit375 ], [ 0, %polly.start281 ]
  %polly.indvar370 = phi i64 [ %polly.indvar_next371, %polly.loop_exit375 ], [ 1, %polly.start281 ]
  %116 = add i64 %indvar1465, 1
  %117 = mul nuw nsw i64 %polly.indvar370, 640
  %scevgep379 = getelementptr i8, i8* %call, i64 %117
  %min.iters.check1467 = icmp ult i64 %116, 4
  br i1 %min.iters.check1467, label %polly.loop_header373.preheader, label %vector.ph1468

vector.ph1468:                                    ; preds = %polly.loop_header367
  %n.vec1470 = and i64 %116, -4
  br label %vector.body1464

vector.body1464:                                  ; preds = %vector.body1464, %vector.ph1468
  %index1471 = phi i64 [ 0, %vector.ph1468 ], [ %index.next1472, %vector.body1464 ]
  %118 = shl nuw nsw i64 %index1471, 3
  %119 = getelementptr i8, i8* %scevgep379, i64 %118
  %120 = bitcast i8* %119 to <4 x double>*
  %wide.load1475 = load <4 x double>, <4 x double>* %120, align 8, !alias.scope !74, !noalias !76
  %121 = fmul fast <4 x double> %wide.load1475, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %122 = bitcast i8* %119 to <4 x double>*
  store <4 x double> %121, <4 x double>* %122, align 8, !alias.scope !74, !noalias !76
  %index.next1472 = add i64 %index1471, 4
  %123 = icmp eq i64 %index.next1472, %n.vec1470
  br i1 %123, label %middle.block1462, label %vector.body1464, !llvm.loop !80

middle.block1462:                                 ; preds = %vector.body1464
  %cmp.n1474 = icmp eq i64 %116, %n.vec1470
  br i1 %cmp.n1474, label %polly.loop_exit375, label %polly.loop_header373.preheader

polly.loop_header373.preheader:                   ; preds = %polly.loop_header367, %middle.block1462
  %polly.indvar376.ph = phi i64 [ 0, %polly.loop_header367 ], [ %n.vec1470, %middle.block1462 ]
  br label %polly.loop_header373

polly.loop_exit375:                               ; preds = %polly.loop_header373, %middle.block1462
  %polly.indvar_next371 = add nuw nsw i64 %polly.indvar370, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next371, 80
  %indvar.next1466 = add i64 %indvar1465, 1
  br i1 %exitcond1018.not, label %polly.loop_header383.preheader, label %polly.loop_header367

polly.loop_header383.preheader:                   ; preds = %polly.loop_exit375
  %Packed_MemRef_call1284 = bitcast i8* %malloccall283 to double*
  br label %polly.loop_header389

polly.loop_header373:                             ; preds = %polly.loop_header373.preheader, %polly.loop_header373
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_header373 ], [ %polly.indvar376.ph, %polly.loop_header373.preheader ]
  %124 = shl nuw nsw i64 %polly.indvar376, 3
  %scevgep380 = getelementptr i8, i8* %scevgep379, i64 %124
  %scevgep380381 = bitcast i8* %scevgep380 to double*
  %_p_scalar_382 = load double, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_382, 1.200000e+00
  store double %p_mul.i57, double* %scevgep380381, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1017.not = icmp eq i64 %polly.indvar_next377, %polly.indvar370
  br i1 %exitcond1017.not, label %polly.loop_exit375, label %polly.loop_header373, !llvm.loop !81

polly.loop_header389:                             ; preds = %polly.loop_exit397, %polly.loop_header383.preheader
  %indvars.iv996 = phi i64 [ %indvars.iv.next997, %polly.loop_exit397 ], [ 0, %polly.loop_header383.preheader ]
  %polly.indvar392 = phi i64 [ %polly.indvar_next393, %polly.loop_exit397 ], [ 0, %polly.loop_header383.preheader ]
  %smin1013 = call i64 @llvm.smin.i64(i64 %indvars.iv996, i64 -52)
  %125 = add nsw i64 %smin1013, 60
  %126 = shl nsw i64 %polly.indvar392, 3
  br label %polly.loop_header395

polly.loop_exit397:                               ; preds = %polly.loop_exit404
  %polly.indvar_next393 = add nuw nsw i64 %polly.indvar392, 1
  %indvars.iv.next997 = add nsw i64 %indvars.iv996, -8
  %exitcond1016.not = icmp eq i64 %polly.indvar_next393, 8
  br i1 %exitcond1016.not, label %polly.loop_header389.1, label %polly.loop_header389

polly.loop_header395:                             ; preds = %polly.loop_exit404, %polly.loop_header389
  %indvars.iv1003 = phi i64 [ %indvars.iv.next1004, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %indvars.iv1000 = phi i64 [ %indvars.iv.next1001, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %polly.indvar398 = phi i64 [ %polly.indvar_next399, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %127 = mul i64 %polly.indvar398, 20
  %polly.loop_guard405.not = icmp sgt i64 %127, 49
  br i1 %polly.loop_guard405.not, label %polly.loop_exit404, label %polly.loop_header402.preheader

polly.loop_header402.preheader:                   ; preds = %polly.loop_header395
  %128 = add i64 %indvars.iv1000, %indvars.iv1003
  %129 = add nuw nsw i64 %127, 20
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit440, %polly.loop_header395
  %polly.indvar_next399 = add nuw nsw i64 %polly.indvar398, 1
  %indvars.iv.next1001 = add nuw nsw i64 %indvars.iv1000, 20
  %indvars.iv.next1004 = add nsw i64 %indvars.iv1003, -20
  %exitcond1015.not = icmp eq i64 %polly.indvar_next399, 3
  br i1 %exitcond1015.not, label %polly.loop_exit397, label %polly.loop_header395

polly.loop_header402:                             ; preds = %polly.loop_header402.preheader, %polly.loop_exit440
  %indvars.iv1005 = phi i64 [ %128, %polly.loop_header402.preheader ], [ %indvars.iv.next1006, %polly.loop_exit440 ]
  %polly.indvar406 = phi i64 [ %127, %polly.loop_header402.preheader ], [ %polly.indvar_next407, %polly.loop_exit440 ]
  %smin1011 = call i64 @llvm.smin.i64(i64 %indvars.iv1005, i64 19)
  %130 = sub i64 %polly.indvar406, %127
  %polly.loop_guard4191126 = icmp sgt i64 %130, -1
  %.not867 = icmp ult i64 %polly.indvar406, %129
  %polly.access.mul.call1432 = mul nsw i64 %polly.indvar406, 60
  %131 = add nuw i64 %polly.access.mul.call1432, %126
  br i1 %polly.loop_guard4191126, label %polly.loop_header409.us, label %polly.loop_header402.split

polly.loop_header409.us:                          ; preds = %polly.loop_header402, %polly.merge428.us
  %polly.indvar412.us = phi i64 [ %polly.indvar_next413.us, %polly.merge428.us ], [ 0, %polly.loop_header402 ]
  %132 = add nuw nsw i64 %polly.indvar412.us, %126
  %polly.access.mul.Packed_MemRef_call1284.us = mul nuw nsw i64 %polly.indvar412.us, 80
  br label %polly.loop_header416.us

polly.loop_header416.us:                          ; preds = %polly.loop_header409.us, %polly.loop_header416.us
  %polly.indvar420.us = phi i64 [ %polly.indvar_next421.us, %polly.loop_header416.us ], [ 0, %polly.loop_header409.us ]
  %133 = add nuw nsw i64 %polly.indvar420.us, %127
  %polly.access.mul.call1424.us = mul nuw nsw i64 %133, 60
  %polly.access.add.call1425.us = add nuw nsw i64 %132, %polly.access.mul.call1424.us
  %polly.access.call1426.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1425.us
  %polly.access.call1426.load.us = load double, double* %polly.access.call1426.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us = add nuw nsw i64 %polly.indvar420.us, %polly.access.mul.Packed_MemRef_call1284.us
  %polly.access.Packed_MemRef_call1284.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us
  store double %polly.access.call1426.load.us, double* %polly.access.Packed_MemRef_call1284.us, align 8
  %polly.indvar_next421.us = add nuw nsw i64 %polly.indvar420.us, 1
  %exitcond1008.not = icmp eq i64 %polly.indvar420.us, %smin1011
  br i1 %exitcond1008.not, label %polly.cond427.loopexit.us, label %polly.loop_header416.us

polly.then429.us:                                 ; preds = %polly.cond427.loopexit.us
  %polly.access.add.call1433.us = add nuw nsw i64 %131, %polly.indvar412.us
  %polly.access.call1434.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.us
  %polly.access.call1434.load.us = load double, double* %polly.access.call1434.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284.us, %130
  %polly.access.Packed_MemRef_call1284437.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.us
  store double %polly.access.call1434.load.us, double* %polly.access.Packed_MemRef_call1284437.us, align 8
  br label %polly.merge428.us

polly.merge428.us:                                ; preds = %polly.then429.us, %polly.cond427.loopexit.us
  %polly.indvar_next413.us = add nuw nsw i64 %polly.indvar412.us, 1
  %exitcond1010.not = icmp eq i64 %polly.indvar_next413.us, %125
  br i1 %exitcond1010.not, label %polly.loop_header438.preheader, label %polly.loop_header409.us

polly.cond427.loopexit.us:                        ; preds = %polly.loop_header416.us
  br i1 %.not867, label %polly.merge428.us, label %polly.then429.us

polly.loop_header402.split:                       ; preds = %polly.loop_header402
  br i1 %.not867, label %polly.loop_exit440, label %polly.loop_header409

polly.loop_exit440:                               ; preds = %polly.loop_exit447.loopexit.us, %polly.loop_header402.split, %polly.loop_header438.preheader
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %polly.loop_cond408.not.not = icmp ult i64 %polly.indvar406, 49
  %indvars.iv.next1006 = add i64 %indvars.iv1005, 1
  br i1 %polly.loop_cond408.not.not, label %polly.loop_header402, label %polly.loop_exit404

polly.loop_header409:                             ; preds = %polly.loop_header402.split, %polly.loop_header409
  %polly.indvar412 = phi i64 [ %polly.indvar_next413, %polly.loop_header409 ], [ 0, %polly.loop_header402.split ]
  %polly.access.add.call1433 = add nuw nsw i64 %131, %polly.indvar412
  %polly.access.call1434 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433
  %polly.access.call1434.load = load double, double* %polly.access.call1434, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1284435 = mul nuw nsw i64 %polly.indvar412, 80
  %polly.access.add.Packed_MemRef_call1284436 = add nsw i64 %polly.access.mul.Packed_MemRef_call1284435, %130
  %polly.access.Packed_MemRef_call1284437 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436
  store double %polly.access.call1434.load, double* %polly.access.Packed_MemRef_call1284437, align 8
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond999.not = icmp eq i64 %polly.indvar_next413, %125
  br i1 %exitcond999.not, label %polly.loop_header438.preheader, label %polly.loop_header409

polly.loop_header438.preheader:                   ; preds = %polly.loop_header409, %polly.merge428.us
  %134 = mul i64 %polly.indvar406, 480
  %135 = mul i64 %polly.indvar406, 640
  br i1 %polly.loop_guard4191126, label %polly.loop_header438.us, label %polly.loop_exit440

polly.loop_header438.us:                          ; preds = %polly.loop_header438.preheader, %polly.loop_exit447.loopexit.us
  %polly.indvar441.us = phi i64 [ %polly.indvar_next442.us, %polly.loop_exit447.loopexit.us ], [ 0, %polly.loop_header438.preheader ]
  %136 = add nuw nsw i64 %polly.indvar441.us, %126
  %polly.access.mul.Packed_MemRef_call1284452.us = mul nuw nsw i64 %polly.indvar441.us, 80
  %137 = shl i64 %136, 3
  %138 = add i64 %137, %134
  %scevgep456.us = getelementptr i8, i8* %call2, i64 %138
  %scevgep456457.us = bitcast i8* %scevgep456.us to double*
  %_p_scalar_458.us = load double, double* %scevgep456457.us, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284463.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1284452.us, %130
  %polly.access.Packed_MemRef_call1284464.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284463.us
  %_p_scalar_465.us = load double, double* %polly.access.Packed_MemRef_call1284464.us, align 8
  br label %polly.loop_header445.us

polly.loop_header445.us:                          ; preds = %polly.loop_header438.us, %polly.loop_header445.us
  %polly.indvar449.us = phi i64 [ %polly.indvar_next450.us, %polly.loop_header445.us ], [ 0, %polly.loop_header438.us ]
  %139 = add nuw nsw i64 %polly.indvar449.us, %127
  %polly.access.add.Packed_MemRef_call1284453.us = add nuw nsw i64 %polly.indvar449.us, %polly.access.mul.Packed_MemRef_call1284452.us
  %polly.access.Packed_MemRef_call1284454.us = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284453.us
  %_p_scalar_455.us = load double, double* %polly.access.Packed_MemRef_call1284454.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_458.us, %_p_scalar_455.us
  %140 = mul nuw nsw i64 %139, 480
  %141 = add nuw nsw i64 %140, %137
  %scevgep459.us = getelementptr i8, i8* %call2, i64 %141
  %scevgep459460.us = bitcast i8* %scevgep459.us to double*
  %_p_scalar_461.us = load double, double* %scevgep459460.us, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us = fmul fast double %_p_scalar_465.us, %_p_scalar_461.us
  %142 = shl i64 %139, 3
  %143 = add i64 %142, %135
  %scevgep466.us = getelementptr i8, i8* %call, i64 %143
  %scevgep466467.us = bitcast i8* %scevgep466.us to double*
  %_p_scalar_468.us = load double, double* %scevgep466467.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_468.us
  store double %p_add42.i79.us, double* %scevgep466467.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next450.us = add nuw nsw i64 %polly.indvar449.us, 1
  %exitcond1012.not = icmp eq i64 %polly.indvar449.us, %smin1011
  br i1 %exitcond1012.not, label %polly.loop_exit447.loopexit.us, label %polly.loop_header445.us

polly.loop_exit447.loopexit.us:                   ; preds = %polly.loop_header445.us
  %polly.indvar_next442.us = add nuw nsw i64 %polly.indvar441.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next442.us, %125
  br i1 %exitcond1014.not, label %polly.loop_exit440, label %polly.loop_header438.us

polly.start471:                                   ; preds = %init_array.exit
  %malloccall473 = tail call dereferenceable_or_null(5120) i8* @malloc(i64 5120) #6
  br label %polly.loop_header557

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.start471
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit565 ], [ 0, %polly.start471 ]
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.loop_exit565 ], [ 1, %polly.start471 ]
  %144 = add i64 %indvar, 1
  %145 = mul nuw nsw i64 %polly.indvar560, 640
  %scevgep569 = getelementptr i8, i8* %call, i64 %145
  %min.iters.check1441 = icmp ult i64 %144, 4
  br i1 %min.iters.check1441, label %polly.loop_header563.preheader, label %vector.ph1442

vector.ph1442:                                    ; preds = %polly.loop_header557
  %n.vec1444 = and i64 %144, -4
  br label %vector.body1440

vector.body1440:                                  ; preds = %vector.body1440, %vector.ph1442
  %index1445 = phi i64 [ 0, %vector.ph1442 ], [ %index.next1446, %vector.body1440 ]
  %146 = shl nuw nsw i64 %index1445, 3
  %147 = getelementptr i8, i8* %scevgep569, i64 %146
  %148 = bitcast i8* %147 to <4 x double>*
  %wide.load1449 = load <4 x double>, <4 x double>* %148, align 8, !alias.scope !84, !noalias !86
  %149 = fmul fast <4 x double> %wide.load1449, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %150 = bitcast i8* %147 to <4 x double>*
  store <4 x double> %149, <4 x double>* %150, align 8, !alias.scope !84, !noalias !86
  %index.next1446 = add i64 %index1445, 4
  %151 = icmp eq i64 %index.next1446, %n.vec1444
  br i1 %151, label %middle.block1438, label %vector.body1440, !llvm.loop !90

middle.block1438:                                 ; preds = %vector.body1440
  %cmp.n1448 = icmp eq i64 %144, %n.vec1444
  br i1 %cmp.n1448, label %polly.loop_exit565, label %polly.loop_header563.preheader

polly.loop_header563.preheader:                   ; preds = %polly.loop_header557, %middle.block1438
  %polly.indvar566.ph = phi i64 [ 0, %polly.loop_header557 ], [ %n.vec1444, %middle.block1438 ]
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563, %middle.block1438
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar_next561, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1041.not, label %polly.loop_header573.preheader, label %polly.loop_header557

polly.loop_header573.preheader:                   ; preds = %polly.loop_exit565
  %Packed_MemRef_call1474 = bitcast i8* %malloccall473 to double*
  br label %polly.loop_header579

polly.loop_header563:                             ; preds = %polly.loop_header563.preheader, %polly.loop_header563
  %polly.indvar566 = phi i64 [ %polly.indvar_next567, %polly.loop_header563 ], [ %polly.indvar566.ph, %polly.loop_header563.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar566, 3
  %scevgep570 = getelementptr i8, i8* %scevgep569, i64 %152
  %scevgep570571 = bitcast i8* %scevgep570 to double*
  %_p_scalar_572 = load double, double* %scevgep570571, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_572, 1.200000e+00
  store double %p_mul.i, double* %scevgep570571, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond1040.not = icmp eq i64 %polly.indvar_next567, %polly.indvar560
  br i1 %exitcond1040.not, label %polly.loop_exit565, label %polly.loop_header563, !llvm.loop !91

polly.loop_header579:                             ; preds = %polly.loop_exit587, %polly.loop_header573.preheader
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020, %polly.loop_exit587 ], [ 0, %polly.loop_header573.preheader ]
  %polly.indvar582 = phi i64 [ %polly.indvar_next583, %polly.loop_exit587 ], [ 0, %polly.loop_header573.preheader ]
  %smin1036 = call i64 @llvm.smin.i64(i64 %indvars.iv1019, i64 -52)
  %153 = add nsw i64 %smin1036, 60
  %154 = shl nsw i64 %polly.indvar582, 3
  br label %polly.loop_header585

polly.loop_exit587:                               ; preds = %polly.loop_exit594
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %indvars.iv.next1020 = add nsw i64 %indvars.iv1019, -8
  %exitcond1039.not = icmp eq i64 %polly.indvar_next583, 8
  br i1 %exitcond1039.not, label %polly.loop_header579.1, label %polly.loop_header579

polly.loop_header585:                             ; preds = %polly.loop_exit594, %polly.loop_header579
  %indvars.iv1026 = phi i64 [ %indvars.iv.next1027, %polly.loop_exit594 ], [ 0, %polly.loop_header579 ]
  %indvars.iv1023 = phi i64 [ %indvars.iv.next1024, %polly.loop_exit594 ], [ 0, %polly.loop_header579 ]
  %polly.indvar588 = phi i64 [ %polly.indvar_next589, %polly.loop_exit594 ], [ 0, %polly.loop_header579 ]
  %155 = mul i64 %polly.indvar588, 20
  %polly.loop_guard595.not = icmp sgt i64 %155, 49
  br i1 %polly.loop_guard595.not, label %polly.loop_exit594, label %polly.loop_header592.preheader

polly.loop_header592.preheader:                   ; preds = %polly.loop_header585
  %156 = add i64 %indvars.iv1023, %indvars.iv1026
  %157 = add nuw nsw i64 %155, 20
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit630, %polly.loop_header585
  %polly.indvar_next589 = add nuw nsw i64 %polly.indvar588, 1
  %indvars.iv.next1024 = add nuw nsw i64 %indvars.iv1023, 20
  %indvars.iv.next1027 = add nsw i64 %indvars.iv1026, -20
  %exitcond1038.not = icmp eq i64 %polly.indvar_next589, 3
  br i1 %exitcond1038.not, label %polly.loop_exit587, label %polly.loop_header585

polly.loop_header592:                             ; preds = %polly.loop_header592.preheader, %polly.loop_exit630
  %indvars.iv1028 = phi i64 [ %156, %polly.loop_header592.preheader ], [ %indvars.iv.next1029, %polly.loop_exit630 ]
  %polly.indvar596 = phi i64 [ %155, %polly.loop_header592.preheader ], [ %polly.indvar_next597, %polly.loop_exit630 ]
  %smin1034 = call i64 @llvm.smin.i64(i64 %indvars.iv1028, i64 19)
  %158 = sub i64 %polly.indvar596, %155
  %polly.loop_guard6091128 = icmp sgt i64 %158, -1
  %.not869 = icmp ult i64 %polly.indvar596, %157
  %polly.access.mul.call1622 = mul nsw i64 %polly.indvar596, 60
  %159 = add nuw i64 %polly.access.mul.call1622, %154
  br i1 %polly.loop_guard6091128, label %polly.loop_header599.us, label %polly.loop_header592.split

polly.loop_header599.us:                          ; preds = %polly.loop_header592, %polly.merge618.us
  %polly.indvar602.us = phi i64 [ %polly.indvar_next603.us, %polly.merge618.us ], [ 0, %polly.loop_header592 ]
  %160 = add nuw nsw i64 %polly.indvar602.us, %154
  %polly.access.mul.Packed_MemRef_call1474.us = mul nuw nsw i64 %polly.indvar602.us, 80
  br label %polly.loop_header606.us

polly.loop_header606.us:                          ; preds = %polly.loop_header599.us, %polly.loop_header606.us
  %polly.indvar610.us = phi i64 [ %polly.indvar_next611.us, %polly.loop_header606.us ], [ 0, %polly.loop_header599.us ]
  %161 = add nuw nsw i64 %polly.indvar610.us, %155
  %polly.access.mul.call1614.us = mul nuw nsw i64 %161, 60
  %polly.access.add.call1615.us = add nuw nsw i64 %160, %polly.access.mul.call1614.us
  %polly.access.call1616.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1615.us
  %polly.access.call1616.load.us = load double, double* %polly.access.call1616.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474.us = add nuw nsw i64 %polly.indvar610.us, %polly.access.mul.Packed_MemRef_call1474.us
  %polly.access.Packed_MemRef_call1474.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us
  store double %polly.access.call1616.load.us, double* %polly.access.Packed_MemRef_call1474.us, align 8
  %polly.indvar_next611.us = add nuw nsw i64 %polly.indvar610.us, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar610.us, %smin1034
  br i1 %exitcond1031.not, label %polly.cond617.loopexit.us, label %polly.loop_header606.us

polly.then619.us:                                 ; preds = %polly.cond617.loopexit.us
  %polly.access.add.call1623.us = add nuw nsw i64 %159, %polly.indvar602.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1474.us, %158
  %polly.access.Packed_MemRef_call1474627.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1474627.us, align 8
  br label %polly.merge618.us

polly.merge618.us:                                ; preds = %polly.then619.us, %polly.cond617.loopexit.us
  %polly.indvar_next603.us = add nuw nsw i64 %polly.indvar602.us, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next603.us, %153
  br i1 %exitcond1033.not, label %polly.loop_header628.preheader, label %polly.loop_header599.us

polly.cond617.loopexit.us:                        ; preds = %polly.loop_header606.us
  br i1 %.not869, label %polly.merge618.us, label %polly.then619.us

polly.loop_header592.split:                       ; preds = %polly.loop_header592
  br i1 %.not869, label %polly.loop_exit630, label %polly.loop_header599

polly.loop_exit630:                               ; preds = %polly.loop_exit637.loopexit.us, %polly.loop_header592.split, %polly.loop_header628.preheader
  %polly.indvar_next597 = add nuw nsw i64 %polly.indvar596, 1
  %polly.loop_cond598.not.not = icmp ult i64 %polly.indvar596, 49
  %indvars.iv.next1029 = add i64 %indvars.iv1028, 1
  br i1 %polly.loop_cond598.not.not, label %polly.loop_header592, label %polly.loop_exit594

polly.loop_header599:                             ; preds = %polly.loop_header592.split, %polly.loop_header599
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_header599 ], [ 0, %polly.loop_header592.split ]
  %polly.access.add.call1623 = add nuw nsw i64 %159, %polly.indvar602
  %polly.access.call1624 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623
  %polly.access.call1624.load = load double, double* %polly.access.call1624, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1474625 = mul nuw nsw i64 %polly.indvar602, 80
  %polly.access.add.Packed_MemRef_call1474626 = add nsw i64 %polly.access.mul.Packed_MemRef_call1474625, %158
  %polly.access.Packed_MemRef_call1474627 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626
  store double %polly.access.call1624.load, double* %polly.access.Packed_MemRef_call1474627, align 8
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %exitcond1022.not = icmp eq i64 %polly.indvar_next603, %153
  br i1 %exitcond1022.not, label %polly.loop_header628.preheader, label %polly.loop_header599

polly.loop_header628.preheader:                   ; preds = %polly.loop_header599, %polly.merge618.us
  %162 = mul i64 %polly.indvar596, 480
  %163 = mul i64 %polly.indvar596, 640
  br i1 %polly.loop_guard6091128, label %polly.loop_header628.us, label %polly.loop_exit630

polly.loop_header628.us:                          ; preds = %polly.loop_header628.preheader, %polly.loop_exit637.loopexit.us
  %polly.indvar631.us = phi i64 [ %polly.indvar_next632.us, %polly.loop_exit637.loopexit.us ], [ 0, %polly.loop_header628.preheader ]
  %164 = add nuw nsw i64 %polly.indvar631.us, %154
  %polly.access.mul.Packed_MemRef_call1474642.us = mul nuw nsw i64 %polly.indvar631.us, 80
  %165 = shl i64 %164, 3
  %166 = add i64 %165, %162
  %scevgep646.us = getelementptr i8, i8* %call2, i64 %166
  %scevgep646647.us = bitcast i8* %scevgep646.us to double*
  %_p_scalar_648.us = load double, double* %scevgep646647.us, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1474653.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1474642.us, %158
  %polly.access.Packed_MemRef_call1474654.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474653.us
  %_p_scalar_655.us = load double, double* %polly.access.Packed_MemRef_call1474654.us, align 8
  br label %polly.loop_header635.us

polly.loop_header635.us:                          ; preds = %polly.loop_header628.us, %polly.loop_header635.us
  %polly.indvar639.us = phi i64 [ %polly.indvar_next640.us, %polly.loop_header635.us ], [ 0, %polly.loop_header628.us ]
  %167 = add nuw nsw i64 %polly.indvar639.us, %155
  %polly.access.add.Packed_MemRef_call1474643.us = add nuw nsw i64 %polly.indvar639.us, %polly.access.mul.Packed_MemRef_call1474642.us
  %polly.access.Packed_MemRef_call1474644.us = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474643.us
  %_p_scalar_645.us = load double, double* %polly.access.Packed_MemRef_call1474644.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_648.us, %_p_scalar_645.us
  %168 = mul nuw nsw i64 %167, 480
  %169 = add nuw nsw i64 %168, %165
  %scevgep649.us = getelementptr i8, i8* %call2, i64 %169
  %scevgep649650.us = bitcast i8* %scevgep649.us to double*
  %_p_scalar_651.us = load double, double* %scevgep649650.us, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us = fmul fast double %_p_scalar_655.us, %_p_scalar_651.us
  %170 = shl i64 %167, 3
  %171 = add i64 %170, %163
  %scevgep656.us = getelementptr i8, i8* %call, i64 %171
  %scevgep656657.us = bitcast i8* %scevgep656.us to double*
  %_p_scalar_658.us = load double, double* %scevgep656657.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_658.us
  store double %p_add42.i.us, double* %scevgep656657.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next640.us = add nuw nsw i64 %polly.indvar639.us, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar639.us, %smin1034
  br i1 %exitcond1035.not, label %polly.loop_exit637.loopexit.us, label %polly.loop_header635.us

polly.loop_exit637.loopexit.us:                   ; preds = %polly.loop_header635.us
  %polly.indvar_next632.us = add nuw nsw i64 %polly.indvar631.us, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next632.us, %153
  br i1 %exitcond1037.not, label %polly.loop_exit630, label %polly.loop_header628.us

polly.loop_header797:                             ; preds = %entry, %polly.loop_exit805
  %polly.indvar800 = phi i64 [ %polly.indvar_next801, %polly.loop_exit805 ], [ 0, %entry ]
  %172 = mul nuw nsw i64 %polly.indvar800, 640
  %173 = trunc i64 %polly.indvar800 to i32
  %broadcast.splatinsert1172 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat1173 = shufflevector <4 x i32> %broadcast.splatinsert1172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1162

vector.body1162:                                  ; preds = %vector.body1162, %polly.loop_header797
  %index1164 = phi i64 [ 0, %polly.loop_header797 ], [ %index.next1165, %vector.body1162 ]
  %vec.ind1170 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header797 ], [ %vec.ind.next1171, %vector.body1162 ]
  %174 = mul <4 x i32> %vec.ind1170, %broadcast.splat1173
  %175 = add <4 x i32> %174, <i32 3, i32 3, i32 3, i32 3>
  %176 = urem <4 x i32> %175, <i32 80, i32 80, i32 80, i32 80>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %179 = shl i64 %index1164, 3
  %180 = add nuw nsw i64 %179, %172
  %181 = getelementptr i8, i8* %call, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !94, !noalias !96
  %index.next1165 = add i64 %index1164, 4
  %vec.ind.next1171 = add <4 x i32> %vec.ind1170, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next1165, 32
  br i1 %183, label %polly.loop_exit805, label %vector.body1162, !llvm.loop !99

polly.loop_exit805:                               ; preds = %vector.body1162
  %polly.indvar_next801 = add nuw nsw i64 %polly.indvar800, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next801, 32
  br i1 %exitcond1061.not, label %polly.loop_header797.1, label %polly.loop_header797

polly.loop_header824:                             ; preds = %polly.loop_exit805.2.2, %polly.loop_exit832
  %polly.indvar827 = phi i64 [ %polly.indvar_next828, %polly.loop_exit832 ], [ 0, %polly.loop_exit805.2.2 ]
  %184 = mul nuw nsw i64 %polly.indvar827, 480
  %185 = trunc i64 %polly.indvar827 to i32
  %broadcast.splatinsert1286 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1287 = shufflevector <4 x i32> %broadcast.splatinsert1286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1276

vector.body1276:                                  ; preds = %vector.body1276, %polly.loop_header824
  %index1278 = phi i64 [ 0, %polly.loop_header824 ], [ %index.next1279, %vector.body1276 ]
  %vec.ind1284 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header824 ], [ %vec.ind.next1285, %vector.body1276 ]
  %186 = mul <4 x i32> %vec.ind1284, %broadcast.splat1287
  %187 = add <4 x i32> %186, <i32 2, i32 2, i32 2, i32 2>
  %188 = urem <4 x i32> %187, <i32 60, i32 60, i32 60, i32 60>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %191 = shl i64 %index1278, 3
  %192 = add i64 %191, %184
  %193 = getelementptr i8, i8* %call2, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %190, <4 x double>* %194, align 8, !alias.scope !98, !noalias !100
  %index.next1279 = add i64 %index1278, 4
  %vec.ind.next1285 = add <4 x i32> %vec.ind1284, <i32 4, i32 4, i32 4, i32 4>
  %195 = icmp eq i64 %index.next1279, 32
  br i1 %195, label %polly.loop_exit832, label %vector.body1276, !llvm.loop !101

polly.loop_exit832:                               ; preds = %vector.body1276
  %polly.indvar_next828 = add nuw nsw i64 %polly.indvar827, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next828, 32
  br i1 %exitcond1052.not, label %polly.loop_header824.1, label %polly.loop_header824

polly.loop_header850:                             ; preds = %polly.loop_exit832.1.2, %polly.loop_exit858
  %polly.indvar853 = phi i64 [ %polly.indvar_next854, %polly.loop_exit858 ], [ 0, %polly.loop_exit832.1.2 ]
  %196 = mul nuw nsw i64 %polly.indvar853, 480
  %197 = trunc i64 %polly.indvar853 to i32
  %broadcast.splatinsert1364 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1365 = shufflevector <4 x i32> %broadcast.splatinsert1364, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %polly.loop_header850
  %index1356 = phi i64 [ 0, %polly.loop_header850 ], [ %index.next1357, %vector.body1354 ]
  %vec.ind1362 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header850 ], [ %vec.ind.next1363, %vector.body1354 ]
  %198 = mul <4 x i32> %vec.ind1362, %broadcast.splat1365
  %199 = add <4 x i32> %198, <i32 1, i32 1, i32 1, i32 1>
  %200 = urem <4 x i32> %199, <i32 80, i32 80, i32 80, i32 80>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %203 = shl i64 %index1356, 3
  %204 = add i64 %203, %196
  %205 = getelementptr i8, i8* %call1, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !97, !noalias !102
  %index.next1357 = add i64 %index1356, 4
  %vec.ind.next1363 = add <4 x i32> %vec.ind1362, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next1357, 32
  br i1 %207, label %polly.loop_exit858, label %vector.body1354, !llvm.loop !103

polly.loop_exit858:                               ; preds = %vector.body1354
  %polly.indvar_next854 = add nuw nsw i64 %polly.indvar853, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next854, 32
  br i1 %exitcond1046.not, label %polly.loop_header850.1, label %polly.loop_header850

polly.loop_header205.1:                           ; preds = %polly.loop_exit213, %polly.loop_exit213.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit213 ]
  %polly.indvar208.1 = phi i64 [ %polly.indvar_next209.1, %polly.loop_exit213.1 ], [ 0, %polly.loop_exit213 ]
  %smin990.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.1, i64 -52)
  %208 = add nsw i64 %smin990.1, 60
  %209 = shl nsw i64 %polly.indvar208.1, 3
  br label %polly.loop_header211.1

polly.loop_header211.1:                           ; preds = %polly.loop_exit219.1, %polly.loop_header205.1
  %indvars.iv980.1 = phi i64 [ %indvars.iv.next981.1, %polly.loop_exit219.1 ], [ 50, %polly.loop_header205.1 ]
  %indvars.iv978.1 = phi i64 [ %indvars.iv.next979.1, %polly.loop_exit219.1 ], [ -50, %polly.loop_header205.1 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_header205.1 ]
  %210 = mul nuw nsw i64 %polly.indvar214.1, 20
  %211 = icmp ugt i64 %210, 50
  %212 = select i1 %211, i64 %210, i64 50
  %polly.loop_guard.not.1 = icmp sgt i64 %212, 79
  br i1 %polly.loop_guard.not.1, label %polly.loop_exit219.1, label %polly.loop_header217.preheader.1

polly.loop_header217.preheader.1:                 ; preds = %polly.loop_header211.1
  %213 = add nsw i64 %212, -50
  %smax.1 = call i64 @llvm.smax.i64(i64 %indvars.iv978.1, i64 0)
  %214 = add i64 %smax.1, %indvars.iv980.1
  %215 = sub nsw i64 50, %210
  %216 = add nuw nsw i64 %210, 20
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit250.1, %polly.loop_header217.preheader.1
  %indvars.iv982.1 = phi i64 [ %214, %polly.loop_header217.preheader.1 ], [ %indvars.iv.next983.1, %polly.loop_exit250.1 ]
  %polly.indvar220.1 = phi i64 [ %213, %polly.loop_header217.preheader.1 ], [ %polly.indvar_next221.1, %polly.loop_exit250.1 ]
  %smin988.1 = call i64 @llvm.smin.i64(i64 %indvars.iv982.1, i64 19)
  %217 = add nsw i64 %polly.indvar220.1, %215
  %polly.loop_guard233.11125 = icmp sgt i64 %217, -1
  %218 = add nuw nsw i64 %polly.indvar220.1, 50
  %.not865.1 = icmp ult i64 %218, %216
  %polly.access.mul.call1242.1 = mul nsw i64 %218, 60
  %219 = add nuw i64 %polly.access.mul.call1242.1, %209
  br i1 %polly.loop_guard233.11125, label %polly.loop_header223.us.1, label %polly.loop_header217.split.1

polly.loop_header217.split.1:                     ; preds = %polly.loop_header217.1
  br i1 %.not865.1, label %polly.loop_exit250.1, label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header217.split.1, %polly.loop_header223.1
  %polly.indvar226.1 = phi i64 [ %polly.indvar_next227.1, %polly.loop_header223.1 ], [ 0, %polly.loop_header217.split.1 ]
  %polly.access.add.call1243.1 = add nuw nsw i64 %219, %polly.indvar226.1
  %polly.access.call1244.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.1
  %polly.access.call1244.load.1 = load double, double* %polly.access.call1244.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.mul.Packed_MemRef_call1245.1 = mul nuw nsw i64 %polly.indvar226.1, 80
  %polly.access.add.Packed_MemRef_call1246.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1245.1, %217
  %polly.access.Packed_MemRef_call1247.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.1
  store double %polly.access.call1244.load.1, double* %polly.access.Packed_MemRef_call1247.1, align 8
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next227.1, %208
  br i1 %exitcond.1.not, label %polly.loop_header248.preheader.1, label %polly.loop_header223.1

polly.loop_header223.us.1:                        ; preds = %polly.loop_header217.1, %polly.merge.us.1
  %polly.indvar226.us.1 = phi i64 [ %polly.indvar_next227.us.1, %polly.merge.us.1 ], [ 0, %polly.loop_header217.1 ]
  %220 = add nuw nsw i64 %polly.indvar226.us.1, %209
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar226.us.1, 80
  br label %polly.loop_header230.us.1

polly.loop_header230.us.1:                        ; preds = %polly.loop_header230.us.1, %polly.loop_header223.us.1
  %polly.indvar234.us.1 = phi i64 [ %polly.indvar_next235.us.1, %polly.loop_header230.us.1 ], [ 0, %polly.loop_header223.us.1 ]
  %221 = add nuw nsw i64 %polly.indvar234.us.1, %210
  %polly.access.mul.call1238.us.1 = mul nuw nsw i64 %221, 60
  %polly.access.add.call1239.us.1 = add nuw nsw i64 %220, %polly.access.mul.call1238.us.1
  %polly.access.call1240.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1239.us.1
  %polly.access.call1240.load.us.1 = load double, double* %polly.access.call1240.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar234.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1240.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next235.us.1 = add nuw nsw i64 %polly.indvar234.us.1, 1
  %exitcond985.1.not = icmp eq i64 %polly.indvar234.us.1, %smin988.1
  br i1 %exitcond985.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header230.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header230.us.1
  br i1 %.not865.1, label %polly.merge.us.1, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1243.us.1 = add nuw nsw i64 %219, %polly.indvar226.us.1
  %polly.access.call1244.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1243.us.1
  %polly.access.call1244.load.us.1 = load double, double* %polly.access.call1244.us.1, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1246.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us.1, %217
  %polly.access.Packed_MemRef_call1247.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1246.us.1
  store double %polly.access.call1244.load.us.1, double* %polly.access.Packed_MemRef_call1247.us.1, align 8
  br label %polly.merge.us.1

polly.merge.us.1:                                 ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  %polly.indvar_next227.us.1 = add nuw nsw i64 %polly.indvar226.us.1, 1
  %exitcond987.1.not = icmp eq i64 %polly.indvar_next227.us.1, %208
  br i1 %exitcond987.1.not, label %polly.loop_header248.preheader.1, label %polly.loop_header223.us.1

polly.loop_header248.preheader.1:                 ; preds = %polly.loop_header223.1, %polly.merge.us.1
  %222 = mul i64 %218, 480
  %223 = mul i64 %218, 640
  br i1 %polly.loop_guard233.11125, label %polly.loop_header248.us.1, label %polly.loop_exit250.1

polly.loop_header248.us.1:                        ; preds = %polly.loop_header248.preheader.1, %polly.loop_exit257.loopexit.us.1
  %polly.indvar251.us.1 = phi i64 [ %polly.indvar_next252.us.1, %polly.loop_exit257.loopexit.us.1 ], [ 0, %polly.loop_header248.preheader.1 ]
  %224 = add nuw nsw i64 %polly.indvar251.us.1, %209
  %polly.access.mul.Packed_MemRef_call1262.us.1 = mul nuw nsw i64 %polly.indvar251.us.1, 80
  %225 = shl i64 %224, 3
  %226 = add i64 %225, %222
  %scevgep266.us.1 = getelementptr i8, i8* %call2, i64 %226
  %scevgep266267.us.1 = bitcast i8* %scevgep266.us.1 to double*
  %_p_scalar_268.us.1 = load double, double* %scevgep266267.us.1, align 8, !alias.scope !67, !noalias !73
  %polly.access.add.Packed_MemRef_call1273.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1262.us.1, %217
  %polly.access.Packed_MemRef_call1274.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1273.us.1
  %_p_scalar_275.us.1 = load double, double* %polly.access.Packed_MemRef_call1274.us.1, align 8
  br label %polly.loop_header255.us.1

polly.loop_header255.us.1:                        ; preds = %polly.loop_header255.us.1, %polly.loop_header248.us.1
  %polly.indvar259.us.1 = phi i64 [ %polly.indvar_next260.us.1, %polly.loop_header255.us.1 ], [ 0, %polly.loop_header248.us.1 ]
  %227 = add nuw nsw i64 %polly.indvar259.us.1, %210
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nuw nsw i64 %polly.indvar259.us.1, %polly.access.mul.Packed_MemRef_call1262.us.1
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  %_p_scalar_265.us.1 = load double, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_268.us.1, %_p_scalar_265.us.1
  %228 = mul nuw nsw i64 %227, 480
  %229 = add nuw nsw i64 %228, %225
  %scevgep269.us.1 = getelementptr i8, i8* %call2, i64 %229
  %scevgep269270.us.1 = bitcast i8* %scevgep269.us.1 to double*
  %_p_scalar_271.us.1 = load double, double* %scevgep269270.us.1, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_275.us.1, %_p_scalar_271.us.1
  %230 = shl i64 %227, 3
  %231 = add i64 %230, %223
  %scevgep276.us.1 = getelementptr i8, i8* %call, i64 %231
  %scevgep276277.us.1 = bitcast i8* %scevgep276.us.1 to double*
  %_p_scalar_278.us.1 = load double, double* %scevgep276277.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_278.us.1
  store double %p_add42.i118.us.1, double* %scevgep276277.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next260.us.1 = add nuw nsw i64 %polly.indvar259.us.1, 1
  %exitcond989.1.not = icmp eq i64 %polly.indvar259.us.1, %smin988.1
  br i1 %exitcond989.1.not, label %polly.loop_exit257.loopexit.us.1, label %polly.loop_header255.us.1

polly.loop_exit257.loopexit.us.1:                 ; preds = %polly.loop_header255.us.1
  %polly.indvar_next252.us.1 = add nuw nsw i64 %polly.indvar251.us.1, 1
  %exitcond991.1.not = icmp eq i64 %polly.indvar_next252.us.1, %208
  br i1 %exitcond991.1.not, label %polly.loop_exit250.1, label %polly.loop_header248.us.1

polly.loop_exit250.1:                             ; preds = %polly.loop_exit257.loopexit.us.1, %polly.loop_header217.split.1, %polly.loop_header248.preheader.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %polly.loop_cond222.not.not.1 = icmp ult i64 %polly.indvar220.1, 29
  %indvars.iv.next983.1 = add i64 %indvars.iv982.1, 1
  br i1 %polly.loop_cond222.not.not.1, label %polly.loop_header217.1, label %polly.loop_exit219.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit250.1, %polly.loop_header211.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next979.1 = add nsw i64 %indvars.iv978.1, 20
  %indvars.iv.next981.1 = add nsw i64 %indvars.iv980.1, -20
  %exitcond992.1.not = icmp eq i64 %polly.indvar_next215.1, 4
  br i1 %exitcond992.1.not, label %polly.loop_exit213.1, label %polly.loop_header211.1

polly.loop_exit213.1:                             ; preds = %polly.loop_exit219.1
  %polly.indvar_next209.1 = add nuw nsw i64 %polly.indvar208.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -8
  %exitcond993.1.not = icmp eq i64 %polly.indvar_next209.1, 8
  br i1 %exitcond993.1.not, label %polly.loop_exit207.1, label %polly.loop_header205.1

polly.loop_exit207.1:                             ; preds = %polly.loop_exit213.1
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header389.1:                           ; preds = %polly.loop_exit397, %polly.loop_exit397.1
  %indvars.iv996.1 = phi i64 [ %indvars.iv.next997.1, %polly.loop_exit397.1 ], [ 0, %polly.loop_exit397 ]
  %polly.indvar392.1 = phi i64 [ %polly.indvar_next393.1, %polly.loop_exit397.1 ], [ 0, %polly.loop_exit397 ]
  %smin1013.1 = call i64 @llvm.smin.i64(i64 %indvars.iv996.1, i64 -52)
  %232 = add nsw i64 %smin1013.1, 60
  %233 = shl nsw i64 %polly.indvar392.1, 3
  br label %polly.loop_header395.1

polly.loop_header395.1:                           ; preds = %polly.loop_exit404.1, %polly.loop_header389.1
  %indvars.iv1003.1 = phi i64 [ %indvars.iv.next1004.1, %polly.loop_exit404.1 ], [ 50, %polly.loop_header389.1 ]
  %indvars.iv1000.1 = phi i64 [ %indvars.iv.next1001.1, %polly.loop_exit404.1 ], [ -50, %polly.loop_header389.1 ]
  %polly.indvar398.1 = phi i64 [ %polly.indvar_next399.1, %polly.loop_exit404.1 ], [ 0, %polly.loop_header389.1 ]
  %234 = mul nuw nsw i64 %polly.indvar398.1, 20
  %235 = icmp ugt i64 %234, 50
  %236 = select i1 %235, i64 %234, i64 50
  %polly.loop_guard405.not.1 = icmp sgt i64 %236, 79
  br i1 %polly.loop_guard405.not.1, label %polly.loop_exit404.1, label %polly.loop_header402.preheader.1

polly.loop_header402.preheader.1:                 ; preds = %polly.loop_header395.1
  %237 = add nsw i64 %236, -50
  %smax1002.1 = call i64 @llvm.smax.i64(i64 %indvars.iv1000.1, i64 0)
  %238 = add i64 %smax1002.1, %indvars.iv1003.1
  %239 = sub nsw i64 50, %234
  %240 = add nuw nsw i64 %234, 20
  br label %polly.loop_header402.1

polly.loop_header402.1:                           ; preds = %polly.loop_exit440.1, %polly.loop_header402.preheader.1
  %indvars.iv1005.1 = phi i64 [ %238, %polly.loop_header402.preheader.1 ], [ %indvars.iv.next1006.1, %polly.loop_exit440.1 ]
  %polly.indvar406.1 = phi i64 [ %237, %polly.loop_header402.preheader.1 ], [ %polly.indvar_next407.1, %polly.loop_exit440.1 ]
  %smin1011.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1005.1, i64 19)
  %241 = add nsw i64 %polly.indvar406.1, %239
  %polly.loop_guard419.11127 = icmp sgt i64 %241, -1
  %242 = add nuw nsw i64 %polly.indvar406.1, 50
  %.not867.1 = icmp ult i64 %242, %240
  %polly.access.mul.call1432.1 = mul nsw i64 %242, 60
  %243 = add nuw i64 %polly.access.mul.call1432.1, %233
  br i1 %polly.loop_guard419.11127, label %polly.loop_header409.us.1, label %polly.loop_header402.split.1

polly.loop_header402.split.1:                     ; preds = %polly.loop_header402.1
  br i1 %.not867.1, label %polly.loop_exit440.1, label %polly.loop_header409.1

polly.loop_header409.1:                           ; preds = %polly.loop_header402.split.1, %polly.loop_header409.1
  %polly.indvar412.1 = phi i64 [ %polly.indvar_next413.1, %polly.loop_header409.1 ], [ 0, %polly.loop_header402.split.1 ]
  %polly.access.add.call1433.1 = add nuw nsw i64 %243, %polly.indvar412.1
  %polly.access.call1434.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.1
  %polly.access.call1434.load.1 = load double, double* %polly.access.call1434.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.mul.Packed_MemRef_call1284435.1 = mul nuw nsw i64 %polly.indvar412.1, 80
  %polly.access.add.Packed_MemRef_call1284436.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1284435.1, %241
  %polly.access.Packed_MemRef_call1284437.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.1
  store double %polly.access.call1434.load.1, double* %polly.access.Packed_MemRef_call1284437.1, align 8
  %polly.indvar_next413.1 = add nuw nsw i64 %polly.indvar412.1, 1
  %exitcond999.1.not = icmp eq i64 %polly.indvar_next413.1, %232
  br i1 %exitcond999.1.not, label %polly.loop_header438.preheader.1, label %polly.loop_header409.1

polly.loop_header409.us.1:                        ; preds = %polly.loop_header402.1, %polly.merge428.us.1
  %polly.indvar412.us.1 = phi i64 [ %polly.indvar_next413.us.1, %polly.merge428.us.1 ], [ 0, %polly.loop_header402.1 ]
  %244 = add nuw nsw i64 %polly.indvar412.us.1, %233
  %polly.access.mul.Packed_MemRef_call1284.us.1 = mul nuw nsw i64 %polly.indvar412.us.1, 80
  br label %polly.loop_header416.us.1

polly.loop_header416.us.1:                        ; preds = %polly.loop_header416.us.1, %polly.loop_header409.us.1
  %polly.indvar420.us.1 = phi i64 [ %polly.indvar_next421.us.1, %polly.loop_header416.us.1 ], [ 0, %polly.loop_header409.us.1 ]
  %245 = add nuw nsw i64 %polly.indvar420.us.1, %234
  %polly.access.mul.call1424.us.1 = mul nuw nsw i64 %245, 60
  %polly.access.add.call1425.us.1 = add nuw nsw i64 %244, %polly.access.mul.call1424.us.1
  %polly.access.call1426.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1425.us.1
  %polly.access.call1426.load.us.1 = load double, double* %polly.access.call1426.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284.us.1 = add nuw nsw i64 %polly.indvar420.us.1, %polly.access.mul.Packed_MemRef_call1284.us.1
  %polly.access.Packed_MemRef_call1284.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284.us.1
  store double %polly.access.call1426.load.us.1, double* %polly.access.Packed_MemRef_call1284.us.1, align 8
  %polly.indvar_next421.us.1 = add nuw nsw i64 %polly.indvar420.us.1, 1
  %exitcond1008.1.not = icmp eq i64 %polly.indvar420.us.1, %smin1011.1
  br i1 %exitcond1008.1.not, label %polly.cond427.loopexit.us.1, label %polly.loop_header416.us.1

polly.cond427.loopexit.us.1:                      ; preds = %polly.loop_header416.us.1
  br i1 %.not867.1, label %polly.merge428.us.1, label %polly.then429.us.1

polly.then429.us.1:                               ; preds = %polly.cond427.loopexit.us.1
  %polly.access.add.call1433.us.1 = add nuw nsw i64 %243, %polly.indvar412.us.1
  %polly.access.call1434.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1433.us.1
  %polly.access.call1434.load.us.1 = load double, double* %polly.access.call1434.us.1, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1284436.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1284.us.1, %241
  %polly.access.Packed_MemRef_call1284437.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284436.us.1
  store double %polly.access.call1434.load.us.1, double* %polly.access.Packed_MemRef_call1284437.us.1, align 8
  br label %polly.merge428.us.1

polly.merge428.us.1:                              ; preds = %polly.then429.us.1, %polly.cond427.loopexit.us.1
  %polly.indvar_next413.us.1 = add nuw nsw i64 %polly.indvar412.us.1, 1
  %exitcond1010.1.not = icmp eq i64 %polly.indvar_next413.us.1, %232
  br i1 %exitcond1010.1.not, label %polly.loop_header438.preheader.1, label %polly.loop_header409.us.1

polly.loop_header438.preheader.1:                 ; preds = %polly.loop_header409.1, %polly.merge428.us.1
  %246 = mul i64 %242, 480
  %247 = mul i64 %242, 640
  br i1 %polly.loop_guard419.11127, label %polly.loop_header438.us.1, label %polly.loop_exit440.1

polly.loop_header438.us.1:                        ; preds = %polly.loop_header438.preheader.1, %polly.loop_exit447.loopexit.us.1
  %polly.indvar441.us.1 = phi i64 [ %polly.indvar_next442.us.1, %polly.loop_exit447.loopexit.us.1 ], [ 0, %polly.loop_header438.preheader.1 ]
  %248 = add nuw nsw i64 %polly.indvar441.us.1, %233
  %polly.access.mul.Packed_MemRef_call1284452.us.1 = mul nuw nsw i64 %polly.indvar441.us.1, 80
  %249 = shl i64 %248, 3
  %250 = add i64 %249, %246
  %scevgep456.us.1 = getelementptr i8, i8* %call2, i64 %250
  %scevgep456457.us.1 = bitcast i8* %scevgep456.us.1 to double*
  %_p_scalar_458.us.1 = load double, double* %scevgep456457.us.1, align 8, !alias.scope !78, !noalias !83
  %polly.access.add.Packed_MemRef_call1284463.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1284452.us.1, %241
  %polly.access.Packed_MemRef_call1284464.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284463.us.1
  %_p_scalar_465.us.1 = load double, double* %polly.access.Packed_MemRef_call1284464.us.1, align 8
  br label %polly.loop_header445.us.1

polly.loop_header445.us.1:                        ; preds = %polly.loop_header445.us.1, %polly.loop_header438.us.1
  %polly.indvar449.us.1 = phi i64 [ %polly.indvar_next450.us.1, %polly.loop_header445.us.1 ], [ 0, %polly.loop_header438.us.1 ]
  %251 = add nuw nsw i64 %polly.indvar449.us.1, %234
  %polly.access.add.Packed_MemRef_call1284453.us.1 = add nuw nsw i64 %polly.indvar449.us.1, %polly.access.mul.Packed_MemRef_call1284452.us.1
  %polly.access.Packed_MemRef_call1284454.us.1 = getelementptr double, double* %Packed_MemRef_call1284, i64 %polly.access.add.Packed_MemRef_call1284453.us.1
  %_p_scalar_455.us.1 = load double, double* %polly.access.Packed_MemRef_call1284454.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_458.us.1, %_p_scalar_455.us.1
  %252 = mul nuw nsw i64 %251, 480
  %253 = add nuw nsw i64 %252, %249
  %scevgep459.us.1 = getelementptr i8, i8* %call2, i64 %253
  %scevgep459460.us.1 = bitcast i8* %scevgep459.us.1 to double*
  %_p_scalar_461.us.1 = load double, double* %scevgep459460.us.1, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_465.us.1, %_p_scalar_461.us.1
  %254 = shl i64 %251, 3
  %255 = add i64 %254, %247
  %scevgep466.us.1 = getelementptr i8, i8* %call, i64 %255
  %scevgep466467.us.1 = bitcast i8* %scevgep466.us.1 to double*
  %_p_scalar_468.us.1 = load double, double* %scevgep466467.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_468.us.1
  store double %p_add42.i79.us.1, double* %scevgep466467.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next450.us.1 = add nuw nsw i64 %polly.indvar449.us.1, 1
  %exitcond1012.1.not = icmp eq i64 %polly.indvar449.us.1, %smin1011.1
  br i1 %exitcond1012.1.not, label %polly.loop_exit447.loopexit.us.1, label %polly.loop_header445.us.1

polly.loop_exit447.loopexit.us.1:                 ; preds = %polly.loop_header445.us.1
  %polly.indvar_next442.us.1 = add nuw nsw i64 %polly.indvar441.us.1, 1
  %exitcond1014.1.not = icmp eq i64 %polly.indvar_next442.us.1, %232
  br i1 %exitcond1014.1.not, label %polly.loop_exit440.1, label %polly.loop_header438.us.1

polly.loop_exit440.1:                             ; preds = %polly.loop_exit447.loopexit.us.1, %polly.loop_header402.split.1, %polly.loop_header438.preheader.1
  %polly.indvar_next407.1 = add nuw nsw i64 %polly.indvar406.1, 1
  %polly.loop_cond408.not.not.1 = icmp ult i64 %polly.indvar406.1, 29
  %indvars.iv.next1006.1 = add i64 %indvars.iv1005.1, 1
  br i1 %polly.loop_cond408.not.not.1, label %polly.loop_header402.1, label %polly.loop_exit404.1

polly.loop_exit404.1:                             ; preds = %polly.loop_exit440.1, %polly.loop_header395.1
  %polly.indvar_next399.1 = add nuw nsw i64 %polly.indvar398.1, 1
  %indvars.iv.next1001.1 = add nsw i64 %indvars.iv1000.1, 20
  %indvars.iv.next1004.1 = add nsw i64 %indvars.iv1003.1, -20
  %exitcond1015.1.not = icmp eq i64 %polly.indvar_next399.1, 4
  br i1 %exitcond1015.1.not, label %polly.loop_exit397.1, label %polly.loop_header395.1

polly.loop_exit397.1:                             ; preds = %polly.loop_exit404.1
  %polly.indvar_next393.1 = add nuw nsw i64 %polly.indvar392.1, 1
  %indvars.iv.next997.1 = add nsw i64 %indvars.iv996.1, -8
  %exitcond1016.1.not = icmp eq i64 %polly.indvar_next393.1, 8
  br i1 %exitcond1016.1.not, label %polly.loop_exit391.1, label %polly.loop_header389.1

polly.loop_exit391.1:                             ; preds = %polly.loop_exit397.1
  tail call void @free(i8* %malloccall283)
  br label %kernel_syr2k.exit90

polly.loop_header579.1:                           ; preds = %polly.loop_exit587, %polly.loop_exit587.1
  %indvars.iv1019.1 = phi i64 [ %indvars.iv.next1020.1, %polly.loop_exit587.1 ], [ 0, %polly.loop_exit587 ]
  %polly.indvar582.1 = phi i64 [ %polly.indvar_next583.1, %polly.loop_exit587.1 ], [ 0, %polly.loop_exit587 ]
  %smin1036.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1019.1, i64 -52)
  %256 = add nsw i64 %smin1036.1, 60
  %257 = shl nsw i64 %polly.indvar582.1, 3
  br label %polly.loop_header585.1

polly.loop_header585.1:                           ; preds = %polly.loop_exit594.1, %polly.loop_header579.1
  %indvars.iv1026.1 = phi i64 [ %indvars.iv.next1027.1, %polly.loop_exit594.1 ], [ 50, %polly.loop_header579.1 ]
  %indvars.iv1023.1 = phi i64 [ %indvars.iv.next1024.1, %polly.loop_exit594.1 ], [ -50, %polly.loop_header579.1 ]
  %polly.indvar588.1 = phi i64 [ %polly.indvar_next589.1, %polly.loop_exit594.1 ], [ 0, %polly.loop_header579.1 ]
  %258 = mul nuw nsw i64 %polly.indvar588.1, 20
  %259 = icmp ugt i64 %258, 50
  %260 = select i1 %259, i64 %258, i64 50
  %polly.loop_guard595.not.1 = icmp sgt i64 %260, 79
  br i1 %polly.loop_guard595.not.1, label %polly.loop_exit594.1, label %polly.loop_header592.preheader.1

polly.loop_header592.preheader.1:                 ; preds = %polly.loop_header585.1
  %261 = add nsw i64 %260, -50
  %smax1025.1 = call i64 @llvm.smax.i64(i64 %indvars.iv1023.1, i64 0)
  %262 = add i64 %smax1025.1, %indvars.iv1026.1
  %263 = sub nsw i64 50, %258
  %264 = add nuw nsw i64 %258, 20
  br label %polly.loop_header592.1

polly.loop_header592.1:                           ; preds = %polly.loop_exit630.1, %polly.loop_header592.preheader.1
  %indvars.iv1028.1 = phi i64 [ %262, %polly.loop_header592.preheader.1 ], [ %indvars.iv.next1029.1, %polly.loop_exit630.1 ]
  %polly.indvar596.1 = phi i64 [ %261, %polly.loop_header592.preheader.1 ], [ %polly.indvar_next597.1, %polly.loop_exit630.1 ]
  %smin1034.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1028.1, i64 19)
  %265 = add nsw i64 %polly.indvar596.1, %263
  %polly.loop_guard609.11129 = icmp sgt i64 %265, -1
  %266 = add nuw nsw i64 %polly.indvar596.1, 50
  %.not869.1 = icmp ult i64 %266, %264
  %polly.access.mul.call1622.1 = mul nsw i64 %266, 60
  %267 = add nuw i64 %polly.access.mul.call1622.1, %257
  br i1 %polly.loop_guard609.11129, label %polly.loop_header599.us.1, label %polly.loop_header592.split.1

polly.loop_header592.split.1:                     ; preds = %polly.loop_header592.1
  br i1 %.not869.1, label %polly.loop_exit630.1, label %polly.loop_header599.1

polly.loop_header599.1:                           ; preds = %polly.loop_header592.split.1, %polly.loop_header599.1
  %polly.indvar602.1 = phi i64 [ %polly.indvar_next603.1, %polly.loop_header599.1 ], [ 0, %polly.loop_header592.split.1 ]
  %polly.access.add.call1623.1 = add nuw nsw i64 %267, %polly.indvar602.1
  %polly.access.call1624.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.1
  %polly.access.call1624.load.1 = load double, double* %polly.access.call1624.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.mul.Packed_MemRef_call1474625.1 = mul nuw nsw i64 %polly.indvar602.1, 80
  %polly.access.add.Packed_MemRef_call1474626.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1474625.1, %265
  %polly.access.Packed_MemRef_call1474627.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.1
  store double %polly.access.call1624.load.1, double* %polly.access.Packed_MemRef_call1474627.1, align 8
  %polly.indvar_next603.1 = add nuw nsw i64 %polly.indvar602.1, 1
  %exitcond1022.1.not = icmp eq i64 %polly.indvar_next603.1, %256
  br i1 %exitcond1022.1.not, label %polly.loop_header628.preheader.1, label %polly.loop_header599.1

polly.loop_header599.us.1:                        ; preds = %polly.loop_header592.1, %polly.merge618.us.1
  %polly.indvar602.us.1 = phi i64 [ %polly.indvar_next603.us.1, %polly.merge618.us.1 ], [ 0, %polly.loop_header592.1 ]
  %268 = add nuw nsw i64 %polly.indvar602.us.1, %257
  %polly.access.mul.Packed_MemRef_call1474.us.1 = mul nuw nsw i64 %polly.indvar602.us.1, 80
  br label %polly.loop_header606.us.1

polly.loop_header606.us.1:                        ; preds = %polly.loop_header606.us.1, %polly.loop_header599.us.1
  %polly.indvar610.us.1 = phi i64 [ %polly.indvar_next611.us.1, %polly.loop_header606.us.1 ], [ 0, %polly.loop_header599.us.1 ]
  %269 = add nuw nsw i64 %polly.indvar610.us.1, %258
  %polly.access.mul.call1614.us.1 = mul nuw nsw i64 %269, 60
  %polly.access.add.call1615.us.1 = add nuw nsw i64 %268, %polly.access.mul.call1614.us.1
  %polly.access.call1616.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1615.us.1
  %polly.access.call1616.load.us.1 = load double, double* %polly.access.call1616.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474.us.1 = add nuw nsw i64 %polly.indvar610.us.1, %polly.access.mul.Packed_MemRef_call1474.us.1
  %polly.access.Packed_MemRef_call1474.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474.us.1
  store double %polly.access.call1616.load.us.1, double* %polly.access.Packed_MemRef_call1474.us.1, align 8
  %polly.indvar_next611.us.1 = add nuw nsw i64 %polly.indvar610.us.1, 1
  %exitcond1031.1.not = icmp eq i64 %polly.indvar610.us.1, %smin1034.1
  br i1 %exitcond1031.1.not, label %polly.cond617.loopexit.us.1, label %polly.loop_header606.us.1

polly.cond617.loopexit.us.1:                      ; preds = %polly.loop_header606.us.1
  br i1 %.not869.1, label %polly.merge618.us.1, label %polly.then619.us.1

polly.then619.us.1:                               ; preds = %polly.cond617.loopexit.us.1
  %polly.access.add.call1623.us.1 = add nuw nsw i64 %267, %polly.indvar602.us.1
  %polly.access.call1624.us.1 = getelementptr double, double* %polly.access.cast.call1663, i64 %polly.access.add.call1623.us.1
  %polly.access.call1624.load.us.1 = load double, double* %polly.access.call1624.us.1, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1474626.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1474.us.1, %265
  %polly.access.Packed_MemRef_call1474627.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474626.us.1
  store double %polly.access.call1624.load.us.1, double* %polly.access.Packed_MemRef_call1474627.us.1, align 8
  br label %polly.merge618.us.1

polly.merge618.us.1:                              ; preds = %polly.then619.us.1, %polly.cond617.loopexit.us.1
  %polly.indvar_next603.us.1 = add nuw nsw i64 %polly.indvar602.us.1, 1
  %exitcond1033.1.not = icmp eq i64 %polly.indvar_next603.us.1, %256
  br i1 %exitcond1033.1.not, label %polly.loop_header628.preheader.1, label %polly.loop_header599.us.1

polly.loop_header628.preheader.1:                 ; preds = %polly.loop_header599.1, %polly.merge618.us.1
  %270 = mul i64 %266, 480
  %271 = mul i64 %266, 640
  br i1 %polly.loop_guard609.11129, label %polly.loop_header628.us.1, label %polly.loop_exit630.1

polly.loop_header628.us.1:                        ; preds = %polly.loop_header628.preheader.1, %polly.loop_exit637.loopexit.us.1
  %polly.indvar631.us.1 = phi i64 [ %polly.indvar_next632.us.1, %polly.loop_exit637.loopexit.us.1 ], [ 0, %polly.loop_header628.preheader.1 ]
  %272 = add nuw nsw i64 %polly.indvar631.us.1, %257
  %polly.access.mul.Packed_MemRef_call1474642.us.1 = mul nuw nsw i64 %polly.indvar631.us.1, 80
  %273 = shl i64 %272, 3
  %274 = add i64 %273, %270
  %scevgep646.us.1 = getelementptr i8, i8* %call2, i64 %274
  %scevgep646647.us.1 = bitcast i8* %scevgep646.us.1 to double*
  %_p_scalar_648.us.1 = load double, double* %scevgep646647.us.1, align 8, !alias.scope !88, !noalias !93
  %polly.access.add.Packed_MemRef_call1474653.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1474642.us.1, %265
  %polly.access.Packed_MemRef_call1474654.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474653.us.1
  %_p_scalar_655.us.1 = load double, double* %polly.access.Packed_MemRef_call1474654.us.1, align 8
  br label %polly.loop_header635.us.1

polly.loop_header635.us.1:                        ; preds = %polly.loop_header635.us.1, %polly.loop_header628.us.1
  %polly.indvar639.us.1 = phi i64 [ %polly.indvar_next640.us.1, %polly.loop_header635.us.1 ], [ 0, %polly.loop_header628.us.1 ]
  %275 = add nuw nsw i64 %polly.indvar639.us.1, %258
  %polly.access.add.Packed_MemRef_call1474643.us.1 = add nuw nsw i64 %polly.indvar639.us.1, %polly.access.mul.Packed_MemRef_call1474642.us.1
  %polly.access.Packed_MemRef_call1474644.us.1 = getelementptr double, double* %Packed_MemRef_call1474, i64 %polly.access.add.Packed_MemRef_call1474643.us.1
  %_p_scalar_645.us.1 = load double, double* %polly.access.Packed_MemRef_call1474644.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_648.us.1, %_p_scalar_645.us.1
  %276 = mul nuw nsw i64 %275, 480
  %277 = add nuw nsw i64 %276, %273
  %scevgep649.us.1 = getelementptr i8, i8* %call2, i64 %277
  %scevgep649650.us.1 = bitcast i8* %scevgep649.us.1 to double*
  %_p_scalar_651.us.1 = load double, double* %scevgep649650.us.1, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_655.us.1, %_p_scalar_651.us.1
  %278 = shl i64 %275, 3
  %279 = add i64 %278, %271
  %scevgep656.us.1 = getelementptr i8, i8* %call, i64 %279
  %scevgep656657.us.1 = bitcast i8* %scevgep656.us.1 to double*
  %_p_scalar_658.us.1 = load double, double* %scevgep656657.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_658.us.1
  store double %p_add42.i.us.1, double* %scevgep656657.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next640.us.1 = add nuw nsw i64 %polly.indvar639.us.1, 1
  %exitcond1035.1.not = icmp eq i64 %polly.indvar639.us.1, %smin1034.1
  br i1 %exitcond1035.1.not, label %polly.loop_exit637.loopexit.us.1, label %polly.loop_header635.us.1

polly.loop_exit637.loopexit.us.1:                 ; preds = %polly.loop_header635.us.1
  %polly.indvar_next632.us.1 = add nuw nsw i64 %polly.indvar631.us.1, 1
  %exitcond1037.1.not = icmp eq i64 %polly.indvar_next632.us.1, %256
  br i1 %exitcond1037.1.not, label %polly.loop_exit630.1, label %polly.loop_header628.us.1

polly.loop_exit630.1:                             ; preds = %polly.loop_exit637.loopexit.us.1, %polly.loop_header592.split.1, %polly.loop_header628.preheader.1
  %polly.indvar_next597.1 = add nuw nsw i64 %polly.indvar596.1, 1
  %polly.loop_cond598.not.not.1 = icmp ult i64 %polly.indvar596.1, 29
  %indvars.iv.next1029.1 = add i64 %indvars.iv1028.1, 1
  br i1 %polly.loop_cond598.not.not.1, label %polly.loop_header592.1, label %polly.loop_exit594.1

polly.loop_exit594.1:                             ; preds = %polly.loop_exit630.1, %polly.loop_header585.1
  %polly.indvar_next589.1 = add nuw nsw i64 %polly.indvar588.1, 1
  %indvars.iv.next1024.1 = add nsw i64 %indvars.iv1023.1, 20
  %indvars.iv.next1027.1 = add nsw i64 %indvars.iv1026.1, -20
  %exitcond1038.1.not = icmp eq i64 %polly.indvar_next589.1, 4
  br i1 %exitcond1038.1.not, label %polly.loop_exit587.1, label %polly.loop_header585.1

polly.loop_exit587.1:                             ; preds = %polly.loop_exit594.1
  %polly.indvar_next583.1 = add nuw nsw i64 %polly.indvar582.1, 1
  %indvars.iv.next1020.1 = add nsw i64 %indvars.iv1019.1, -8
  %exitcond1039.1.not = icmp eq i64 %polly.indvar_next583.1, 8
  br i1 %exitcond1039.1.not, label %polly.loop_exit581.1, label %polly.loop_header579.1

polly.loop_exit581.1:                             ; preds = %polly.loop_exit587.1
  tail call void @free(i8* %malloccall473)
  br label %kernel_syr2k.exit

polly.loop_header850.1:                           ; preds = %polly.loop_exit858, %polly.loop_exit858.1
  %polly.indvar853.1 = phi i64 [ %polly.indvar_next854.1, %polly.loop_exit858.1 ], [ 0, %polly.loop_exit858 ]
  %280 = mul nuw nsw i64 %polly.indvar853.1, 480
  %281 = trunc i64 %polly.indvar853.1 to i32
  %broadcast.splatinsert1376 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1377 = shufflevector <4 x i32> %broadcast.splatinsert1376, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1368

vector.body1368:                                  ; preds = %vector.body1368, %polly.loop_header850.1
  %index1370 = phi i64 [ 0, %polly.loop_header850.1 ], [ %index.next1371, %vector.body1368 ]
  %vec.ind1374 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.1 ], [ %vec.ind.next1375, %vector.body1368 ]
  %282 = add nuw nsw <4 x i64> %vec.ind1374, <i64 32, i64 32, i64 32, i64 32>
  %283 = trunc <4 x i64> %282 to <4 x i32>
  %284 = mul <4 x i32> %broadcast.splat1377, %283
  %285 = add <4 x i32> %284, <i32 1, i32 1, i32 1, i32 1>
  %286 = urem <4 x i32> %285, <i32 80, i32 80, i32 80, i32 80>
  %287 = sitofp <4 x i32> %286 to <4 x double>
  %288 = fmul fast <4 x double> %287, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %289 = extractelement <4 x i64> %282, i32 0
  %290 = shl i64 %289, 3
  %291 = add i64 %290, %280
  %292 = getelementptr i8, i8* %call1, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %288, <4 x double>* %293, align 8, !alias.scope !97, !noalias !102
  %index.next1371 = add i64 %index1370, 4
  %vec.ind.next1375 = add <4 x i64> %vec.ind1374, <i64 4, i64 4, i64 4, i64 4>
  %294 = icmp eq i64 %index.next1371, 28
  br i1 %294, label %polly.loop_exit858.1, label %vector.body1368, !llvm.loop !104

polly.loop_exit858.1:                             ; preds = %vector.body1368
  %polly.indvar_next854.1 = add nuw nsw i64 %polly.indvar853.1, 1
  %exitcond1046.1.not = icmp eq i64 %polly.indvar_next854.1, 32
  br i1 %exitcond1046.1.not, label %polly.loop_header850.11069, label %polly.loop_header850.1

polly.loop_header850.11069:                       ; preds = %polly.loop_exit858.1, %polly.loop_exit858.11080
  %polly.indvar853.11068 = phi i64 [ %polly.indvar_next854.11078, %polly.loop_exit858.11080 ], [ 0, %polly.loop_exit858.1 ]
  %295 = add nuw nsw i64 %polly.indvar853.11068, 32
  %296 = mul nuw nsw i64 %295, 480
  %297 = trunc i64 %295 to i32
  %broadcast.splatinsert1390 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1391 = shufflevector <4 x i32> %broadcast.splatinsert1390, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1380

vector.body1380:                                  ; preds = %vector.body1380, %polly.loop_header850.11069
  %index1382 = phi i64 [ 0, %polly.loop_header850.11069 ], [ %index.next1383, %vector.body1380 ]
  %vec.ind1388 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header850.11069 ], [ %vec.ind.next1389, %vector.body1380 ]
  %298 = mul <4 x i32> %vec.ind1388, %broadcast.splat1391
  %299 = add <4 x i32> %298, <i32 1, i32 1, i32 1, i32 1>
  %300 = urem <4 x i32> %299, <i32 80, i32 80, i32 80, i32 80>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %303 = shl i64 %index1382, 3
  %304 = add i64 %303, %296
  %305 = getelementptr i8, i8* %call1, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %302, <4 x double>* %306, align 8, !alias.scope !97, !noalias !102
  %index.next1383 = add i64 %index1382, 4
  %vec.ind.next1389 = add <4 x i32> %vec.ind1388, <i32 4, i32 4, i32 4, i32 4>
  %307 = icmp eq i64 %index.next1383, 32
  br i1 %307, label %polly.loop_exit858.11080, label %vector.body1380, !llvm.loop !105

polly.loop_exit858.11080:                         ; preds = %vector.body1380
  %polly.indvar_next854.11078 = add nuw nsw i64 %polly.indvar853.11068, 1
  %exitcond1046.11079.not = icmp eq i64 %polly.indvar_next854.11078, 32
  br i1 %exitcond1046.11079.not, label %polly.loop_header850.1.1, label %polly.loop_header850.11069

polly.loop_header850.1.1:                         ; preds = %polly.loop_exit858.11080, %polly.loop_exit858.1.1
  %polly.indvar853.1.1 = phi i64 [ %polly.indvar_next854.1.1, %polly.loop_exit858.1.1 ], [ 0, %polly.loop_exit858.11080 ]
  %308 = add nuw nsw i64 %polly.indvar853.1.1, 32
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1402 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1403 = shufflevector <4 x i32> %broadcast.splatinsert1402, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1394

vector.body1394:                                  ; preds = %vector.body1394, %polly.loop_header850.1.1
  %index1396 = phi i64 [ 0, %polly.loop_header850.1.1 ], [ %index.next1397, %vector.body1394 ]
  %vec.ind1400 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.1.1 ], [ %vec.ind.next1401, %vector.body1394 ]
  %311 = add nuw nsw <4 x i64> %vec.ind1400, <i64 32, i64 32, i64 32, i64 32>
  %312 = trunc <4 x i64> %311 to <4 x i32>
  %313 = mul <4 x i32> %broadcast.splat1403, %312
  %314 = add <4 x i32> %313, <i32 1, i32 1, i32 1, i32 1>
  %315 = urem <4 x i32> %314, <i32 80, i32 80, i32 80, i32 80>
  %316 = sitofp <4 x i32> %315 to <4 x double>
  %317 = fmul fast <4 x double> %316, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %318 = extractelement <4 x i64> %311, i32 0
  %319 = shl i64 %318, 3
  %320 = add i64 %319, %309
  %321 = getelementptr i8, i8* %call1, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %317, <4 x double>* %322, align 8, !alias.scope !97, !noalias !102
  %index.next1397 = add i64 %index1396, 4
  %vec.ind.next1401 = add <4 x i64> %vec.ind1400, <i64 4, i64 4, i64 4, i64 4>
  %323 = icmp eq i64 %index.next1397, 28
  br i1 %323, label %polly.loop_exit858.1.1, label %vector.body1394, !llvm.loop !106

polly.loop_exit858.1.1:                           ; preds = %vector.body1394
  %polly.indvar_next854.1.1 = add nuw nsw i64 %polly.indvar853.1.1, 1
  %exitcond1046.1.1.not = icmp eq i64 %polly.indvar_next854.1.1, 32
  br i1 %exitcond1046.1.1.not, label %polly.loop_header850.2, label %polly.loop_header850.1.1

polly.loop_header850.2:                           ; preds = %polly.loop_exit858.1.1, %polly.loop_exit858.2
  %polly.indvar853.2 = phi i64 [ %polly.indvar_next854.2, %polly.loop_exit858.2 ], [ 0, %polly.loop_exit858.1.1 ]
  %324 = add nuw nsw i64 %polly.indvar853.2, 64
  %325 = mul nuw nsw i64 %324, 480
  %326 = trunc i64 %324 to i32
  %broadcast.splatinsert1416 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1417 = shufflevector <4 x i32> %broadcast.splatinsert1416, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1406

vector.body1406:                                  ; preds = %vector.body1406, %polly.loop_header850.2
  %index1408 = phi i64 [ 0, %polly.loop_header850.2 ], [ %index.next1409, %vector.body1406 ]
  %vec.ind1414 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header850.2 ], [ %vec.ind.next1415, %vector.body1406 ]
  %327 = mul <4 x i32> %vec.ind1414, %broadcast.splat1417
  %328 = add <4 x i32> %327, <i32 1, i32 1, i32 1, i32 1>
  %329 = urem <4 x i32> %328, <i32 80, i32 80, i32 80, i32 80>
  %330 = sitofp <4 x i32> %329 to <4 x double>
  %331 = fmul fast <4 x double> %330, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %332 = shl i64 %index1408, 3
  %333 = add i64 %332, %325
  %334 = getelementptr i8, i8* %call1, i64 %333
  %335 = bitcast i8* %334 to <4 x double>*
  store <4 x double> %331, <4 x double>* %335, align 8, !alias.scope !97, !noalias !102
  %index.next1409 = add i64 %index1408, 4
  %vec.ind.next1415 = add <4 x i32> %vec.ind1414, <i32 4, i32 4, i32 4, i32 4>
  %336 = icmp eq i64 %index.next1409, 32
  br i1 %336, label %polly.loop_exit858.2, label %vector.body1406, !llvm.loop !107

polly.loop_exit858.2:                             ; preds = %vector.body1406
  %polly.indvar_next854.2 = add nuw nsw i64 %polly.indvar853.2, 1
  %exitcond1046.2.not = icmp eq i64 %polly.indvar_next854.2, 16
  br i1 %exitcond1046.2.not, label %polly.loop_header850.1.2, label %polly.loop_header850.2

polly.loop_header850.1.2:                         ; preds = %polly.loop_exit858.2, %polly.loop_exit858.1.2
  %polly.indvar853.1.2 = phi i64 [ %polly.indvar_next854.1.2, %polly.loop_exit858.1.2 ], [ 0, %polly.loop_exit858.2 ]
  %337 = add nuw nsw i64 %polly.indvar853.1.2, 64
  %338 = mul nuw nsw i64 %337, 480
  %339 = trunc i64 %337 to i32
  %broadcast.splatinsert1428 = insertelement <4 x i32> poison, i32 %339, i32 0
  %broadcast.splat1429 = shufflevector <4 x i32> %broadcast.splatinsert1428, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1420

vector.body1420:                                  ; preds = %vector.body1420, %polly.loop_header850.1.2
  %index1422 = phi i64 [ 0, %polly.loop_header850.1.2 ], [ %index.next1423, %vector.body1420 ]
  %vec.ind1426 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header850.1.2 ], [ %vec.ind.next1427, %vector.body1420 ]
  %340 = add nuw nsw <4 x i64> %vec.ind1426, <i64 32, i64 32, i64 32, i64 32>
  %341 = trunc <4 x i64> %340 to <4 x i32>
  %342 = mul <4 x i32> %broadcast.splat1429, %341
  %343 = add <4 x i32> %342, <i32 1, i32 1, i32 1, i32 1>
  %344 = urem <4 x i32> %343, <i32 80, i32 80, i32 80, i32 80>
  %345 = sitofp <4 x i32> %344 to <4 x double>
  %346 = fmul fast <4 x double> %345, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %347 = extractelement <4 x i64> %340, i32 0
  %348 = shl i64 %347, 3
  %349 = add i64 %348, %338
  %350 = getelementptr i8, i8* %call1, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %346, <4 x double>* %351, align 8, !alias.scope !97, !noalias !102
  %index.next1423 = add i64 %index1422, 4
  %vec.ind.next1427 = add <4 x i64> %vec.ind1426, <i64 4, i64 4, i64 4, i64 4>
  %352 = icmp eq i64 %index.next1423, 28
  br i1 %352, label %polly.loop_exit858.1.2, label %vector.body1420, !llvm.loop !108

polly.loop_exit858.1.2:                           ; preds = %vector.body1420
  %polly.indvar_next854.1.2 = add nuw nsw i64 %polly.indvar853.1.2, 1
  %exitcond1046.1.2.not = icmp eq i64 %polly.indvar_next854.1.2, 16
  br i1 %exitcond1046.1.2.not, label %init_array.exit, label %polly.loop_header850.1.2

polly.loop_header824.1:                           ; preds = %polly.loop_exit832, %polly.loop_exit832.1
  %polly.indvar827.1 = phi i64 [ %polly.indvar_next828.1, %polly.loop_exit832.1 ], [ 0, %polly.loop_exit832 ]
  %353 = mul nuw nsw i64 %polly.indvar827.1, 480
  %354 = trunc i64 %polly.indvar827.1 to i32
  %broadcast.splatinsert1298 = insertelement <4 x i32> poison, i32 %354, i32 0
  %broadcast.splat1299 = shufflevector <4 x i32> %broadcast.splatinsert1298, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %polly.loop_header824.1
  %index1292 = phi i64 [ 0, %polly.loop_header824.1 ], [ %index.next1293, %vector.body1290 ]
  %vec.ind1296 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header824.1 ], [ %vec.ind.next1297, %vector.body1290 ]
  %355 = add nuw nsw <4 x i64> %vec.ind1296, <i64 32, i64 32, i64 32, i64 32>
  %356 = trunc <4 x i64> %355 to <4 x i32>
  %357 = mul <4 x i32> %broadcast.splat1299, %356
  %358 = add <4 x i32> %357, <i32 2, i32 2, i32 2, i32 2>
  %359 = urem <4 x i32> %358, <i32 60, i32 60, i32 60, i32 60>
  %360 = sitofp <4 x i32> %359 to <4 x double>
  %361 = fmul fast <4 x double> %360, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %362 = extractelement <4 x i64> %355, i32 0
  %363 = shl i64 %362, 3
  %364 = add i64 %363, %353
  %365 = getelementptr i8, i8* %call2, i64 %364
  %366 = bitcast i8* %365 to <4 x double>*
  store <4 x double> %361, <4 x double>* %366, align 8, !alias.scope !98, !noalias !100
  %index.next1293 = add i64 %index1292, 4
  %vec.ind.next1297 = add <4 x i64> %vec.ind1296, <i64 4, i64 4, i64 4, i64 4>
  %367 = icmp eq i64 %index.next1293, 28
  br i1 %367, label %polly.loop_exit832.1, label %vector.body1290, !llvm.loop !109

polly.loop_exit832.1:                             ; preds = %vector.body1290
  %polly.indvar_next828.1 = add nuw nsw i64 %polly.indvar827.1, 1
  %exitcond1052.1.not = icmp eq i64 %polly.indvar_next828.1, 32
  br i1 %exitcond1052.1.not, label %polly.loop_header824.11083, label %polly.loop_header824.1

polly.loop_header824.11083:                       ; preds = %polly.loop_exit832.1, %polly.loop_exit832.11094
  %polly.indvar827.11082 = phi i64 [ %polly.indvar_next828.11092, %polly.loop_exit832.11094 ], [ 0, %polly.loop_exit832.1 ]
  %368 = add nuw nsw i64 %polly.indvar827.11082, 32
  %369 = mul nuw nsw i64 %368, 480
  %370 = trunc i64 %368 to i32
  %broadcast.splatinsert1312 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1313 = shufflevector <4 x i32> %broadcast.splatinsert1312, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1302

vector.body1302:                                  ; preds = %vector.body1302, %polly.loop_header824.11083
  %index1304 = phi i64 [ 0, %polly.loop_header824.11083 ], [ %index.next1305, %vector.body1302 ]
  %vec.ind1310 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header824.11083 ], [ %vec.ind.next1311, %vector.body1302 ]
  %371 = mul <4 x i32> %vec.ind1310, %broadcast.splat1313
  %372 = add <4 x i32> %371, <i32 2, i32 2, i32 2, i32 2>
  %373 = urem <4 x i32> %372, <i32 60, i32 60, i32 60, i32 60>
  %374 = sitofp <4 x i32> %373 to <4 x double>
  %375 = fmul fast <4 x double> %374, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %376 = shl i64 %index1304, 3
  %377 = add i64 %376, %369
  %378 = getelementptr i8, i8* %call2, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %375, <4 x double>* %379, align 8, !alias.scope !98, !noalias !100
  %index.next1305 = add i64 %index1304, 4
  %vec.ind.next1311 = add <4 x i32> %vec.ind1310, <i32 4, i32 4, i32 4, i32 4>
  %380 = icmp eq i64 %index.next1305, 32
  br i1 %380, label %polly.loop_exit832.11094, label %vector.body1302, !llvm.loop !110

polly.loop_exit832.11094:                         ; preds = %vector.body1302
  %polly.indvar_next828.11092 = add nuw nsw i64 %polly.indvar827.11082, 1
  %exitcond1052.11093.not = icmp eq i64 %polly.indvar_next828.11092, 32
  br i1 %exitcond1052.11093.not, label %polly.loop_header824.1.1, label %polly.loop_header824.11083

polly.loop_header824.1.1:                         ; preds = %polly.loop_exit832.11094, %polly.loop_exit832.1.1
  %polly.indvar827.1.1 = phi i64 [ %polly.indvar_next828.1.1, %polly.loop_exit832.1.1 ], [ 0, %polly.loop_exit832.11094 ]
  %381 = add nuw nsw i64 %polly.indvar827.1.1, 32
  %382 = mul nuw nsw i64 %381, 480
  %383 = trunc i64 %381 to i32
  %broadcast.splatinsert1324 = insertelement <4 x i32> poison, i32 %383, i32 0
  %broadcast.splat1325 = shufflevector <4 x i32> %broadcast.splatinsert1324, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %polly.loop_header824.1.1
  %index1318 = phi i64 [ 0, %polly.loop_header824.1.1 ], [ %index.next1319, %vector.body1316 ]
  %vec.ind1322 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header824.1.1 ], [ %vec.ind.next1323, %vector.body1316 ]
  %384 = add nuw nsw <4 x i64> %vec.ind1322, <i64 32, i64 32, i64 32, i64 32>
  %385 = trunc <4 x i64> %384 to <4 x i32>
  %386 = mul <4 x i32> %broadcast.splat1325, %385
  %387 = add <4 x i32> %386, <i32 2, i32 2, i32 2, i32 2>
  %388 = urem <4 x i32> %387, <i32 60, i32 60, i32 60, i32 60>
  %389 = sitofp <4 x i32> %388 to <4 x double>
  %390 = fmul fast <4 x double> %389, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %391 = extractelement <4 x i64> %384, i32 0
  %392 = shl i64 %391, 3
  %393 = add i64 %392, %382
  %394 = getelementptr i8, i8* %call2, i64 %393
  %395 = bitcast i8* %394 to <4 x double>*
  store <4 x double> %390, <4 x double>* %395, align 8, !alias.scope !98, !noalias !100
  %index.next1319 = add i64 %index1318, 4
  %vec.ind.next1323 = add <4 x i64> %vec.ind1322, <i64 4, i64 4, i64 4, i64 4>
  %396 = icmp eq i64 %index.next1319, 28
  br i1 %396, label %polly.loop_exit832.1.1, label %vector.body1316, !llvm.loop !111

polly.loop_exit832.1.1:                           ; preds = %vector.body1316
  %polly.indvar_next828.1.1 = add nuw nsw i64 %polly.indvar827.1.1, 1
  %exitcond1052.1.1.not = icmp eq i64 %polly.indvar_next828.1.1, 32
  br i1 %exitcond1052.1.1.not, label %polly.loop_header824.2, label %polly.loop_header824.1.1

polly.loop_header824.2:                           ; preds = %polly.loop_exit832.1.1, %polly.loop_exit832.2
  %polly.indvar827.2 = phi i64 [ %polly.indvar_next828.2, %polly.loop_exit832.2 ], [ 0, %polly.loop_exit832.1.1 ]
  %397 = add nuw nsw i64 %polly.indvar827.2, 64
  %398 = mul nuw nsw i64 %397, 480
  %399 = trunc i64 %397 to i32
  %broadcast.splatinsert1338 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1339 = shufflevector <4 x i32> %broadcast.splatinsert1338, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.body1328, %polly.loop_header824.2
  %index1330 = phi i64 [ 0, %polly.loop_header824.2 ], [ %index.next1331, %vector.body1328 ]
  %vec.ind1336 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header824.2 ], [ %vec.ind.next1337, %vector.body1328 ]
  %400 = mul <4 x i32> %vec.ind1336, %broadcast.splat1339
  %401 = add <4 x i32> %400, <i32 2, i32 2, i32 2, i32 2>
  %402 = urem <4 x i32> %401, <i32 60, i32 60, i32 60, i32 60>
  %403 = sitofp <4 x i32> %402 to <4 x double>
  %404 = fmul fast <4 x double> %403, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %405 = shl i64 %index1330, 3
  %406 = add i64 %405, %398
  %407 = getelementptr i8, i8* %call2, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %404, <4 x double>* %408, align 8, !alias.scope !98, !noalias !100
  %index.next1331 = add i64 %index1330, 4
  %vec.ind.next1337 = add <4 x i32> %vec.ind1336, <i32 4, i32 4, i32 4, i32 4>
  %409 = icmp eq i64 %index.next1331, 32
  br i1 %409, label %polly.loop_exit832.2, label %vector.body1328, !llvm.loop !112

polly.loop_exit832.2:                             ; preds = %vector.body1328
  %polly.indvar_next828.2 = add nuw nsw i64 %polly.indvar827.2, 1
  %exitcond1052.2.not = icmp eq i64 %polly.indvar_next828.2, 16
  br i1 %exitcond1052.2.not, label %polly.loop_header824.1.2, label %polly.loop_header824.2

polly.loop_header824.1.2:                         ; preds = %polly.loop_exit832.2, %polly.loop_exit832.1.2
  %polly.indvar827.1.2 = phi i64 [ %polly.indvar_next828.1.2, %polly.loop_exit832.1.2 ], [ 0, %polly.loop_exit832.2 ]
  %410 = add nuw nsw i64 %polly.indvar827.1.2, 64
  %411 = mul nuw nsw i64 %410, 480
  %412 = trunc i64 %410 to i32
  %broadcast.splatinsert1350 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1351 = shufflevector <4 x i32> %broadcast.splatinsert1350, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %polly.loop_header824.1.2
  %index1344 = phi i64 [ 0, %polly.loop_header824.1.2 ], [ %index.next1345, %vector.body1342 ]
  %vec.ind1348 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header824.1.2 ], [ %vec.ind.next1349, %vector.body1342 ]
  %413 = add nuw nsw <4 x i64> %vec.ind1348, <i64 32, i64 32, i64 32, i64 32>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat1351, %414
  %416 = add <4 x i32> %415, <i32 2, i32 2, i32 2, i32 2>
  %417 = urem <4 x i32> %416, <i32 60, i32 60, i32 60, i32 60>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add i64 %421, %411
  %423 = getelementptr i8, i8* %call2, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !98, !noalias !100
  %index.next1345 = add i64 %index1344, 4
  %vec.ind.next1349 = add <4 x i64> %vec.ind1348, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next1345, 28
  br i1 %425, label %polly.loop_exit832.1.2, label %vector.body1342, !llvm.loop !113

polly.loop_exit832.1.2:                           ; preds = %vector.body1342
  %polly.indvar_next828.1.2 = add nuw nsw i64 %polly.indvar827.1.2, 1
  %exitcond1052.1.2.not = icmp eq i64 %polly.indvar_next828.1.2, 16
  br i1 %exitcond1052.1.2.not, label %polly.loop_header850, label %polly.loop_header824.1.2

polly.loop_header797.1:                           ; preds = %polly.loop_exit805, %polly.loop_exit805.1
  %polly.indvar800.1 = phi i64 [ %polly.indvar_next801.1, %polly.loop_exit805.1 ], [ 0, %polly.loop_exit805 ]
  %426 = mul nuw nsw i64 %polly.indvar800.1, 640
  %427 = trunc i64 %polly.indvar800.1 to i32
  %broadcast.splatinsert1184 = insertelement <4 x i32> poison, i32 %427, i32 0
  %broadcast.splat1185 = shufflevector <4 x i32> %broadcast.splatinsert1184, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %polly.loop_header797.1
  %index1178 = phi i64 [ 0, %polly.loop_header797.1 ], [ %index.next1179, %vector.body1176 ]
  %vec.ind1182 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.1 ], [ %vec.ind.next1183, %vector.body1176 ]
  %428 = add nuw nsw <4 x i64> %vec.ind1182, <i64 32, i64 32, i64 32, i64 32>
  %429 = trunc <4 x i64> %428 to <4 x i32>
  %430 = mul <4 x i32> %broadcast.splat1185, %429
  %431 = add <4 x i32> %430, <i32 3, i32 3, i32 3, i32 3>
  %432 = urem <4 x i32> %431, <i32 80, i32 80, i32 80, i32 80>
  %433 = sitofp <4 x i32> %432 to <4 x double>
  %434 = fmul fast <4 x double> %433, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %435 = extractelement <4 x i64> %428, i32 0
  %436 = shl i64 %435, 3
  %437 = add nuw nsw i64 %436, %426
  %438 = getelementptr i8, i8* %call, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %434, <4 x double>* %439, align 8, !alias.scope !94, !noalias !96
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1183 = add <4 x i64> %vec.ind1182, <i64 4, i64 4, i64 4, i64 4>
  %440 = icmp eq i64 %index.next1179, 32
  br i1 %440, label %polly.loop_exit805.1, label %vector.body1176, !llvm.loop !114

polly.loop_exit805.1:                             ; preds = %vector.body1176
  %polly.indvar_next801.1 = add nuw nsw i64 %polly.indvar800.1, 1
  %exitcond1061.1.not = icmp eq i64 %polly.indvar_next801.1, 32
  br i1 %exitcond1061.1.not, label %polly.loop_header797.2, label %polly.loop_header797.1

polly.loop_header797.2:                           ; preds = %polly.loop_exit805.1, %polly.loop_exit805.2
  %polly.indvar800.2 = phi i64 [ %polly.indvar_next801.2, %polly.loop_exit805.2 ], [ 0, %polly.loop_exit805.1 ]
  %441 = mul nuw nsw i64 %polly.indvar800.2, 640
  %442 = trunc i64 %polly.indvar800.2 to i32
  %broadcast.splatinsert1196 = insertelement <4 x i32> poison, i32 %442, i32 0
  %broadcast.splat1197 = shufflevector <4 x i32> %broadcast.splatinsert1196, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %polly.loop_header797.2
  %index1190 = phi i64 [ 0, %polly.loop_header797.2 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1194 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.2 ], [ %vec.ind.next1195, %vector.body1188 ]
  %443 = add nuw nsw <4 x i64> %vec.ind1194, <i64 64, i64 64, i64 64, i64 64>
  %444 = trunc <4 x i64> %443 to <4 x i32>
  %445 = mul <4 x i32> %broadcast.splat1197, %444
  %446 = add <4 x i32> %445, <i32 3, i32 3, i32 3, i32 3>
  %447 = urem <4 x i32> %446, <i32 80, i32 80, i32 80, i32 80>
  %448 = sitofp <4 x i32> %447 to <4 x double>
  %449 = fmul fast <4 x double> %448, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %450 = extractelement <4 x i64> %443, i32 0
  %451 = shl i64 %450, 3
  %452 = add nuw nsw i64 %451, %441
  %453 = getelementptr i8, i8* %call, i64 %452
  %454 = bitcast i8* %453 to <4 x double>*
  store <4 x double> %449, <4 x double>* %454, align 8, !alias.scope !94, !noalias !96
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1195 = add <4 x i64> %vec.ind1194, <i64 4, i64 4, i64 4, i64 4>
  %455 = icmp eq i64 %index.next1191, 16
  br i1 %455, label %polly.loop_exit805.2, label %vector.body1188, !llvm.loop !115

polly.loop_exit805.2:                             ; preds = %vector.body1188
  %polly.indvar_next801.2 = add nuw nsw i64 %polly.indvar800.2, 1
  %exitcond1061.2.not = icmp eq i64 %polly.indvar_next801.2, 32
  br i1 %exitcond1061.2.not, label %polly.loop_header797.11097, label %polly.loop_header797.2

polly.loop_header797.11097:                       ; preds = %polly.loop_exit805.2, %polly.loop_exit805.11108
  %polly.indvar800.11096 = phi i64 [ %polly.indvar_next801.11106, %polly.loop_exit805.11108 ], [ 0, %polly.loop_exit805.2 ]
  %456 = add nuw nsw i64 %polly.indvar800.11096, 32
  %457 = mul nuw nsw i64 %456, 640
  %458 = trunc i64 %456 to i32
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %458, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %polly.loop_header797.11097
  %index1202 = phi i64 [ 0, %polly.loop_header797.11097 ], [ %index.next1203, %vector.body1200 ]
  %vec.ind1208 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header797.11097 ], [ %vec.ind.next1209, %vector.body1200 ]
  %459 = mul <4 x i32> %vec.ind1208, %broadcast.splat1211
  %460 = add <4 x i32> %459, <i32 3, i32 3, i32 3, i32 3>
  %461 = urem <4 x i32> %460, <i32 80, i32 80, i32 80, i32 80>
  %462 = sitofp <4 x i32> %461 to <4 x double>
  %463 = fmul fast <4 x double> %462, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %464 = shl i64 %index1202, 3
  %465 = add nuw nsw i64 %464, %457
  %466 = getelementptr i8, i8* %call, i64 %465
  %467 = bitcast i8* %466 to <4 x double>*
  store <4 x double> %463, <4 x double>* %467, align 8, !alias.scope !94, !noalias !96
  %index.next1203 = add i64 %index1202, 4
  %vec.ind.next1209 = add <4 x i32> %vec.ind1208, <i32 4, i32 4, i32 4, i32 4>
  %468 = icmp eq i64 %index.next1203, 32
  br i1 %468, label %polly.loop_exit805.11108, label %vector.body1200, !llvm.loop !116

polly.loop_exit805.11108:                         ; preds = %vector.body1200
  %polly.indvar_next801.11106 = add nuw nsw i64 %polly.indvar800.11096, 1
  %exitcond1061.11107.not = icmp eq i64 %polly.indvar_next801.11106, 32
  br i1 %exitcond1061.11107.not, label %polly.loop_header797.1.1, label %polly.loop_header797.11097

polly.loop_header797.1.1:                         ; preds = %polly.loop_exit805.11108, %polly.loop_exit805.1.1
  %polly.indvar800.1.1 = phi i64 [ %polly.indvar_next801.1.1, %polly.loop_exit805.1.1 ], [ 0, %polly.loop_exit805.11108 ]
  %469 = add nuw nsw i64 %polly.indvar800.1.1, 32
  %470 = mul nuw nsw i64 %469, 640
  %471 = trunc i64 %469 to i32
  %broadcast.splatinsert1222 = insertelement <4 x i32> poison, i32 %471, i32 0
  %broadcast.splat1223 = shufflevector <4 x i32> %broadcast.splatinsert1222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %polly.loop_header797.1.1
  %index1216 = phi i64 [ 0, %polly.loop_header797.1.1 ], [ %index.next1217, %vector.body1214 ]
  %vec.ind1220 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.1.1 ], [ %vec.ind.next1221, %vector.body1214 ]
  %472 = add nuw nsw <4 x i64> %vec.ind1220, <i64 32, i64 32, i64 32, i64 32>
  %473 = trunc <4 x i64> %472 to <4 x i32>
  %474 = mul <4 x i32> %broadcast.splat1223, %473
  %475 = add <4 x i32> %474, <i32 3, i32 3, i32 3, i32 3>
  %476 = urem <4 x i32> %475, <i32 80, i32 80, i32 80, i32 80>
  %477 = sitofp <4 x i32> %476 to <4 x double>
  %478 = fmul fast <4 x double> %477, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %479 = extractelement <4 x i64> %472, i32 0
  %480 = shl i64 %479, 3
  %481 = add nuw nsw i64 %480, %470
  %482 = getelementptr i8, i8* %call, i64 %481
  %483 = bitcast i8* %482 to <4 x double>*
  store <4 x double> %478, <4 x double>* %483, align 8, !alias.scope !94, !noalias !96
  %index.next1217 = add i64 %index1216, 4
  %vec.ind.next1221 = add <4 x i64> %vec.ind1220, <i64 4, i64 4, i64 4, i64 4>
  %484 = icmp eq i64 %index.next1217, 32
  br i1 %484, label %polly.loop_exit805.1.1, label %vector.body1214, !llvm.loop !117

polly.loop_exit805.1.1:                           ; preds = %vector.body1214
  %polly.indvar_next801.1.1 = add nuw nsw i64 %polly.indvar800.1.1, 1
  %exitcond1061.1.1.not = icmp eq i64 %polly.indvar_next801.1.1, 32
  br i1 %exitcond1061.1.1.not, label %polly.loop_header797.2.1, label %polly.loop_header797.1.1

polly.loop_header797.2.1:                         ; preds = %polly.loop_exit805.1.1, %polly.loop_exit805.2.1
  %polly.indvar800.2.1 = phi i64 [ %polly.indvar_next801.2.1, %polly.loop_exit805.2.1 ], [ 0, %polly.loop_exit805.1.1 ]
  %485 = add nuw nsw i64 %polly.indvar800.2.1, 32
  %486 = mul nuw nsw i64 %485, 640
  %487 = trunc i64 %485 to i32
  %broadcast.splatinsert1234 = insertelement <4 x i32> poison, i32 %487, i32 0
  %broadcast.splat1235 = shufflevector <4 x i32> %broadcast.splatinsert1234, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %polly.loop_header797.2.1
  %index1228 = phi i64 [ 0, %polly.loop_header797.2.1 ], [ %index.next1229, %vector.body1226 ]
  %vec.ind1232 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.2.1 ], [ %vec.ind.next1233, %vector.body1226 ]
  %488 = add nuw nsw <4 x i64> %vec.ind1232, <i64 64, i64 64, i64 64, i64 64>
  %489 = trunc <4 x i64> %488 to <4 x i32>
  %490 = mul <4 x i32> %broadcast.splat1235, %489
  %491 = add <4 x i32> %490, <i32 3, i32 3, i32 3, i32 3>
  %492 = urem <4 x i32> %491, <i32 80, i32 80, i32 80, i32 80>
  %493 = sitofp <4 x i32> %492 to <4 x double>
  %494 = fmul fast <4 x double> %493, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %495 = extractelement <4 x i64> %488, i32 0
  %496 = shl i64 %495, 3
  %497 = add nuw nsw i64 %496, %486
  %498 = getelementptr i8, i8* %call, i64 %497
  %499 = bitcast i8* %498 to <4 x double>*
  store <4 x double> %494, <4 x double>* %499, align 8, !alias.scope !94, !noalias !96
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1233 = add <4 x i64> %vec.ind1232, <i64 4, i64 4, i64 4, i64 4>
  %500 = icmp eq i64 %index.next1229, 16
  br i1 %500, label %polly.loop_exit805.2.1, label %vector.body1226, !llvm.loop !118

polly.loop_exit805.2.1:                           ; preds = %vector.body1226
  %polly.indvar_next801.2.1 = add nuw nsw i64 %polly.indvar800.2.1, 1
  %exitcond1061.2.1.not = icmp eq i64 %polly.indvar_next801.2.1, 32
  br i1 %exitcond1061.2.1.not, label %polly.loop_header797.21111, label %polly.loop_header797.2.1

polly.loop_header797.21111:                       ; preds = %polly.loop_exit805.2.1, %polly.loop_exit805.21122
  %polly.indvar800.21110 = phi i64 [ %polly.indvar_next801.21120, %polly.loop_exit805.21122 ], [ 0, %polly.loop_exit805.2.1 ]
  %501 = add nuw nsw i64 %polly.indvar800.21110, 64
  %502 = mul nuw nsw i64 %501, 640
  %503 = trunc i64 %501 to i32
  %broadcast.splatinsert1248 = insertelement <4 x i32> poison, i32 %503, i32 0
  %broadcast.splat1249 = shufflevector <4 x i32> %broadcast.splatinsert1248, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %polly.loop_header797.21111
  %index1240 = phi i64 [ 0, %polly.loop_header797.21111 ], [ %index.next1241, %vector.body1238 ]
  %vec.ind1246 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header797.21111 ], [ %vec.ind.next1247, %vector.body1238 ]
  %504 = mul <4 x i32> %vec.ind1246, %broadcast.splat1249
  %505 = add <4 x i32> %504, <i32 3, i32 3, i32 3, i32 3>
  %506 = urem <4 x i32> %505, <i32 80, i32 80, i32 80, i32 80>
  %507 = sitofp <4 x i32> %506 to <4 x double>
  %508 = fmul fast <4 x double> %507, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %509 = shl i64 %index1240, 3
  %510 = add nuw nsw i64 %509, %502
  %511 = getelementptr i8, i8* %call, i64 %510
  %512 = bitcast i8* %511 to <4 x double>*
  store <4 x double> %508, <4 x double>* %512, align 8, !alias.scope !94, !noalias !96
  %index.next1241 = add i64 %index1240, 4
  %vec.ind.next1247 = add <4 x i32> %vec.ind1246, <i32 4, i32 4, i32 4, i32 4>
  %513 = icmp eq i64 %index.next1241, 32
  br i1 %513, label %polly.loop_exit805.21122, label %vector.body1238, !llvm.loop !119

polly.loop_exit805.21122:                         ; preds = %vector.body1238
  %polly.indvar_next801.21120 = add nuw nsw i64 %polly.indvar800.21110, 1
  %exitcond1061.21121.not = icmp eq i64 %polly.indvar_next801.21120, 16
  br i1 %exitcond1061.21121.not, label %polly.loop_header797.1.2, label %polly.loop_header797.21111

polly.loop_header797.1.2:                         ; preds = %polly.loop_exit805.21122, %polly.loop_exit805.1.2
  %polly.indvar800.1.2 = phi i64 [ %polly.indvar_next801.1.2, %polly.loop_exit805.1.2 ], [ 0, %polly.loop_exit805.21122 ]
  %514 = add nuw nsw i64 %polly.indvar800.1.2, 64
  %515 = mul nuw nsw i64 %514, 640
  %516 = trunc i64 %514 to i32
  %broadcast.splatinsert1260 = insertelement <4 x i32> poison, i32 %516, i32 0
  %broadcast.splat1261 = shufflevector <4 x i32> %broadcast.splatinsert1260, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %polly.loop_header797.1.2
  %index1254 = phi i64 [ 0, %polly.loop_header797.1.2 ], [ %index.next1255, %vector.body1252 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.1.2 ], [ %vec.ind.next1259, %vector.body1252 ]
  %517 = add nuw nsw <4 x i64> %vec.ind1258, <i64 32, i64 32, i64 32, i64 32>
  %518 = trunc <4 x i64> %517 to <4 x i32>
  %519 = mul <4 x i32> %broadcast.splat1261, %518
  %520 = add <4 x i32> %519, <i32 3, i32 3, i32 3, i32 3>
  %521 = urem <4 x i32> %520, <i32 80, i32 80, i32 80, i32 80>
  %522 = sitofp <4 x i32> %521 to <4 x double>
  %523 = fmul fast <4 x double> %522, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %524 = extractelement <4 x i64> %517, i32 0
  %525 = shl i64 %524, 3
  %526 = add nuw nsw i64 %525, %515
  %527 = getelementptr i8, i8* %call, i64 %526
  %528 = bitcast i8* %527 to <4 x double>*
  store <4 x double> %523, <4 x double>* %528, align 8, !alias.scope !94, !noalias !96
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %529 = icmp eq i64 %index.next1255, 32
  br i1 %529, label %polly.loop_exit805.1.2, label %vector.body1252, !llvm.loop !120

polly.loop_exit805.1.2:                           ; preds = %vector.body1252
  %polly.indvar_next801.1.2 = add nuw nsw i64 %polly.indvar800.1.2, 1
  %exitcond1061.1.2.not = icmp eq i64 %polly.indvar_next801.1.2, 16
  br i1 %exitcond1061.1.2.not, label %polly.loop_header797.2.2, label %polly.loop_header797.1.2

polly.loop_header797.2.2:                         ; preds = %polly.loop_exit805.1.2, %polly.loop_exit805.2.2
  %polly.indvar800.2.2 = phi i64 [ %polly.indvar_next801.2.2, %polly.loop_exit805.2.2 ], [ 0, %polly.loop_exit805.1.2 ]
  %530 = add nuw nsw i64 %polly.indvar800.2.2, 64
  %531 = mul nuw nsw i64 %530, 640
  %532 = trunc i64 %530 to i32
  %broadcast.splatinsert1272 = insertelement <4 x i32> poison, i32 %532, i32 0
  %broadcast.splat1273 = shufflevector <4 x i32> %broadcast.splatinsert1272, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %polly.loop_header797.2.2
  %index1266 = phi i64 [ 0, %polly.loop_header797.2.2 ], [ %index.next1267, %vector.body1264 ]
  %vec.ind1270 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header797.2.2 ], [ %vec.ind.next1271, %vector.body1264 ]
  %533 = add nuw nsw <4 x i64> %vec.ind1270, <i64 64, i64 64, i64 64, i64 64>
  %534 = trunc <4 x i64> %533 to <4 x i32>
  %535 = mul <4 x i32> %broadcast.splat1273, %534
  %536 = add <4 x i32> %535, <i32 3, i32 3, i32 3, i32 3>
  %537 = urem <4 x i32> %536, <i32 80, i32 80, i32 80, i32 80>
  %538 = sitofp <4 x i32> %537 to <4 x double>
  %539 = fmul fast <4 x double> %538, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %540 = extractelement <4 x i64> %533, i32 0
  %541 = shl i64 %540, 3
  %542 = add nuw nsw i64 %541, %531
  %543 = getelementptr i8, i8* %call, i64 %542
  %544 = bitcast i8* %543 to <4 x double>*
  store <4 x double> %539, <4 x double>* %544, align 8, !alias.scope !94, !noalias !96
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1271 = add <4 x i64> %vec.ind1270, <i64 4, i64 4, i64 4, i64 4>
  %545 = icmp eq i64 %index.next1267, 16
  br i1 %545, label %polly.loop_exit805.2.2, label %vector.body1264, !llvm.loop !121

polly.loop_exit805.2.2:                           ; preds = %vector.body1264
  %polly.indvar_next801.2.2 = add nuw nsw i64 %polly.indvar800.2.2, 1
  %exitcond1061.2.2.not = icmp eq i64 %polly.indvar_next801.2.2, 16
  br i1 %exitcond1061.2.2.not, label %polly.loop_header824, label %polly.loop_header797.2.2
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
!34 = !{!"llvm.loop.tile.size", i32 8}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !48, !49, !52}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 50}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !51}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.loop.tile.followup_tile", !53}
!53 = distinct !{!53, !12, !54}
!54 = !{!"llvm.loop.id", !"i2"}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = !{!60, !60, i64 0}
!60 = !{!"any pointer", !4, i64 0}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !64, !"polly.alias.scope.MemRef_call"}
!64 = distinct !{!64, !"polly.alias.scope.domain"}
!65 = !{!66, !67, !68}
!66 = distinct !{!66, !64, !"polly.alias.scope.MemRef_call1"}
!67 = distinct !{!67, !64, !"polly.alias.scope.MemRef_call2"}
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call1"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !67, !68}
!73 = !{!63, !66, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call1"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !78, !79}
!83 = !{!74, !77, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !88, !89}
!93 = !{!84, !87, !89}
!94 = distinct !{!94, !95, !"polly.alias.scope.MemRef_call"}
!95 = distinct !{!95, !"polly.alias.scope.domain"}
!96 = !{!97, !98}
!97 = distinct !{!97, !95, !"polly.alias.scope.MemRef_call1"}
!98 = distinct !{!98, !95, !"polly.alias.scope.MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = !{!97, !94}
!101 = distinct !{!101, !13}
!102 = !{!98, !94}
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
!121 = distinct !{!121, !13}
