; ModuleID = 'syr2k_recreations//mmp_syr2k_S_128.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_128.c"
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
  %call831 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1683 = bitcast i8* %call1 to double*
  %polly.access.call1692 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1692, %call2
  %polly.access.call2712 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2712, %call1
  %2 = or i1 %0, %1
  %polly.access.call732 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call732, %call2
  %4 = icmp ule i8* %polly.access.call2712, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call732, %call1
  %8 = icmp ule i8* %polly.access.call1692, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header817, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1173 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1172 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1171 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1170 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1170, %scevgep1173
  %bound1 = icmp ult i8* %scevgep1172, %scevgep1171
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
  br i1 %exitcond18.not.i, label %vector.ph1177, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1177:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1184 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1185 = shufflevector <4 x i64> %broadcast.splatinsert1184, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %vector.ph1177
  %index1178 = phi i64 [ 0, %vector.ph1177 ], [ %index.next1179, %vector.body1176 ]
  %vec.ind1182 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1177 ], [ %vec.ind.next1183, %vector.body1176 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1182, %broadcast.splat1185
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv7.i, i64 %index1178
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1183 = add <4 x i64> %vec.ind1182, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1179, 80
  br i1 %40, label %for.inc41.i, label %vector.body1176, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1176
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1177, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit878.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start484, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1536, label %vector.ph1459

vector.ph1459:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1458

vector.body1458:                                  ; preds = %vector.body1458, %vector.ph1459
  %index1460 = phi i64 [ 0, %vector.ph1459 ], [ %index.next1461, %vector.body1458 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv21.i, i64 %index1460
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1461 = add i64 %index1460, 4
  %46 = icmp eq i64 %index.next1461, %n.vec
  br i1 %46, label %middle.block1456, label %vector.body1458, !llvm.loop !18

middle.block1456:                                 ; preds = %vector.body1458
  %cmp.n1463 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1463, label %for.inc6.i, label %for.body3.i46.preheader1536

for.body3.i46.preheader1536:                      ; preds = %for.body3.i46.preheader, %middle.block1456
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1456 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1536, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1536 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1456, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting485
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start287, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1479 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1479, label %for.body3.i60.preheader1533, label %vector.ph1480

vector.ph1480:                                    ; preds = %for.body3.i60.preheader
  %n.vec1482 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1480
  %index1483 = phi i64 [ 0, %vector.ph1480 ], [ %index.next1484, %vector.body1478 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv21.i52, i64 %index1483
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1487 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1487, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1484 = add i64 %index1483, 4
  %57 = icmp eq i64 %index.next1484, %n.vec1482
  br i1 %57, label %middle.block1476, label %vector.body1478, !llvm.loop !60

middle.block1476:                                 ; preds = %vector.body1478
  %cmp.n1486 = icmp eq i64 %indvars.iv21.i52, %n.vec1482
  br i1 %cmp.n1486, label %for.inc6.i63, label %for.body3.i60.preheader1533

for.body3.i60.preheader1533:                      ; preds = %for.body3.i60.preheader, %middle.block1476
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1482, %middle.block1476 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1533, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1533 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1476, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting288
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1505 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1505, label %for.body3.i99.preheader1530, label %vector.ph1506

vector.ph1506:                                    ; preds = %for.body3.i99.preheader
  %n.vec1508 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1504

vector.body1504:                                  ; preds = %vector.body1504, %vector.ph1506
  %index1509 = phi i64 [ 0, %vector.ph1506 ], [ %index.next1510, %vector.body1504 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv21.i91, i64 %index1509
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1513 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1513, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1510 = add i64 %index1509, 4
  %68 = icmp eq i64 %index.next1510, %n.vec1508
  br i1 %68, label %middle.block1502, label %vector.body1504, !llvm.loop !62

middle.block1502:                                 ; preds = %vector.body1504
  %cmp.n1512 = icmp eq i64 %indvars.iv21.i91, %n.vec1508
  br i1 %cmp.n1512, label %for.inc6.i102, label %for.body3.i99.preheader1530

for.body3.i99.preheader1530:                      ; preds = %for.body3.i99.preheader, %middle.block1502
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1508, %middle.block1502 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1530, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1530 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1502, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call831, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1517 = phi i64 [ %indvar.next1518, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1517, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1519 = icmp ult i64 %88, 4
  br i1 %min.iters.check1519, label %polly.loop_header191.preheader, label %vector.ph1520

vector.ph1520:                                    ; preds = %polly.loop_header
  %n.vec1522 = and i64 %88, -4
  br label %vector.body1516

vector.body1516:                                  ; preds = %vector.body1516, %vector.ph1520
  %index1523 = phi i64 [ 0, %vector.ph1520 ], [ %index.next1524, %vector.body1516 ]
  %90 = shl nuw nsw i64 %index1523, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1527 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1527, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1524 = add i64 %index1523, 4
  %95 = icmp eq i64 %index.next1524, %n.vec1522
  br i1 %95, label %middle.block1514, label %vector.body1516, !llvm.loop !74

middle.block1514:                                 ; preds = %vector.body1516
  %cmp.n1526 = icmp eq i64 %88, %n.vec1522
  br i1 %cmp.n1526, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1514
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1522, %middle.block1514 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1514
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1518 = add i64 %indvar1517, 1
  br i1 %exitcond1028.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond1027.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond1027.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.loop_cond204 = phi i1 [ false, %polly.loop_exit207 ], [ true, %polly.loop_header199.preheader ]
  %polly.indvar202 = phi i64 [ 1, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, -50
  %98 = icmp slt i64 %97, -10
  %99 = select i1 %98, i64 %97, i64 -10
  %100 = mul nuw nsw i64 %polly.indvar202, 50
  %101 = add nsw i64 %99, 60
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  br i1 %polly.loop_cond204, label %polly.loop_header199, label %polly.exiting

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv1017 = phi i64 [ %indvars.iv.next1018, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %116, %polly.loop_exit213 ], [ 0, %polly.loop_header199 ]
  %102 = lshr i64 %polly.indvar208, 2
  %103 = shl nuw nsw i64 %102, 5
  %104 = sub nsw i64 %indvars.iv, %103
  %105 = add i64 %indvars.iv1017, %103
  %106 = shl nsw i64 %polly.indvar208, 3
  %107 = mul nsw i64 %polly.indvar208, -8
  %108 = add nsw i64 %107, 79
  %polly.access.mul.call1230.us = mul nsw i64 %polly.indvar208, 480
  %109 = or i64 %106, 1
  %polly.access.mul.call1230.us.1 = mul nuw nsw i64 %109, 60
  %110 = or i64 %106, 2
  %polly.access.mul.call1230.us.2 = mul nuw nsw i64 %110, 60
  %111 = or i64 %106, 3
  %polly.access.mul.call1230.us.3 = mul nuw nsw i64 %111, 60
  %112 = or i64 %106, 4
  %polly.access.mul.call1230.us.4 = mul nuw nsw i64 %112, 60
  %113 = or i64 %106, 5
  %polly.access.mul.call1230.us.5 = mul nuw nsw i64 %113, 60
  %114 = or i64 %106, 6
  %polly.access.mul.call1230.us.6 = mul nuw nsw i64 %114, 60
  %115 = or i64 %106, 7
  %polly.access.mul.call1230.us.7 = mul nuw nsw i64 %115, 60
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit248
  %116 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %indvars.iv.next1018 = add nsw i64 %indvars.iv1017, -8
  %exitcond1026.not = icmp eq i64 %116, 10
  br i1 %exitcond1026.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit248, %polly.loop_header205
  %indvars.iv1019 = phi i64 [ %indvars.iv.next1020, %polly.loop_exit248 ], [ %105, %polly.loop_header205 ]
  %indvars.iv1015 = phi i64 [ %indvars.iv.next1016, %polly.loop_exit248 ], [ %104, %polly.loop_header205 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit248 ], [ %102, %polly.loop_header205 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1015, i64 0)
  %117 = add i64 %smax, %indvars.iv1019
  %118 = shl nsw i64 %polly.indvar214, 2
  %.not.not = icmp ugt i64 %118, %polly.indvar208
  %119 = shl nsw i64 %polly.indvar214, 5
  %120 = add nsw i64 %119, %107
  %121 = icmp sgt i64 %120, 0
  %122 = select i1 %121, i64 %120, i64 0
  %123 = add nsw i64 %120, 31
  %124 = icmp slt i64 %108, %123
  %125 = select i1 %124, i64 %108, i64 %123
  %polly.loop_guard.not = icmp sgt i64 %122, %125
  br i1 %.not.not, label %polly.loop_header217.us, label %polly.loop_header211.split

polly.loop_header217.us:                          ; preds = %polly.loop_header211, %polly.loop_exit235.us
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit235.us ], [ 0, %polly.loop_header211 ]
  %126 = add nuw nsw i64 %polly.indvar220.us, %100
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar220.us, 80
  %polly.access.add.call1231.us = add nuw nsw i64 %126, %polly.access.mul.call1230.us
  %polly.access.call1232.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us
  %polly.access.call1232.load.us = load double, double* %polly.access.call1232.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1.us
  store double %polly.access.call1232.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.access.add.call1231.us.1 = add nuw nsw i64 %126, %polly.access.mul.call1230.us.1
  %polly.access.call1232.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.1
  %polly.access.call1232.load.us.1 = load double, double* %polly.access.call1232.us.1, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1232.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.access.add.call1231.us.2 = add nuw nsw i64 %126, %polly.access.mul.call1230.us.2
  %polly.access.call1232.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.2
  %polly.access.call1232.load.us.2 = load double, double* %polly.access.call1232.us.2, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 2
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1232.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.access.add.call1231.us.3 = add nuw nsw i64 %126, %polly.access.mul.call1230.us.3
  %polly.access.call1232.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.3
  %polly.access.call1232.load.us.3 = load double, double* %polly.access.call1232.us.3, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 3
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1232.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.access.add.call1231.us.4 = add nuw nsw i64 %126, %polly.access.mul.call1230.us.4
  %polly.access.call1232.us.4 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.4
  %polly.access.call1232.load.us.4 = load double, double* %polly.access.call1232.us.4, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 4
  %polly.access.Packed_MemRef_call1.us.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.4
  store double %polly.access.call1232.load.us.4, double* %polly.access.Packed_MemRef_call1.us.4, align 8
  %polly.access.add.call1231.us.5 = add nuw nsw i64 %126, %polly.access.mul.call1230.us.5
  %polly.access.call1232.us.5 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.5
  %polly.access.call1232.load.us.5 = load double, double* %polly.access.call1232.us.5, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 5
  %polly.access.Packed_MemRef_call1.us.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.5
  store double %polly.access.call1232.load.us.5, double* %polly.access.Packed_MemRef_call1.us.5, align 8
  %polly.access.add.call1231.us.6 = add nuw nsw i64 %126, %polly.access.mul.call1230.us.6
  %polly.access.call1232.us.6 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.6
  %polly.access.call1232.load.us.6 = load double, double* %polly.access.call1232.us.6, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 6
  %polly.access.Packed_MemRef_call1.us.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.6
  store double %polly.access.call1232.load.us.6, double* %polly.access.Packed_MemRef_call1.us.6, align 8
  %polly.access.add.call1231.us.7 = add nuw nsw i64 %126, %polly.access.mul.call1230.us.7
  %polly.access.call1232.us.7 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1231.us.7
  %polly.access.call1232.load.us.7 = load double, double* %polly.access.call1232.us.7, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1.us, 7
  %polly.access.Packed_MemRef_call1.us.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.7
  store double %polly.access.call1232.load.us.7, double* %polly.access.Packed_MemRef_call1.us.7, align 8
  br i1 %polly.loop_guard.not, label %polly.loop_exit235.us, label %polly.loop_header233.us

polly.loop_header233.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header233.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_header233.us ], [ %122, %polly.loop_header217.us ]
  %127 = add nuw nsw i64 %polly.indvar236.us, %106
  %polly.access.mul.call1240.us = mul nsw i64 %127, 60
  %polly.access.add.call1241.us = add nuw nsw i64 %126, %polly.access.mul.call1240.us
  %polly.access.call1242.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1241.us
  %polly.access.call1242.load.us = load double, double* %polly.access.call1242.us, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1244.us = add nuw nsw i64 %polly.indvar236.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1245.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244.us
  store double %polly.access.call1242.load.us, double* %polly.access.Packed_MemRef_call1245.us, align 8
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %polly.loop_cond238.not.not.us = icmp slt i64 %polly.indvar236.us, %125
  br i1 %polly.loop_cond238.not.not.us, label %polly.loop_header233.us, label %polly.loop_exit235.us

polly.loop_exit235.us:                            ; preds = %polly.loop_header233.us, %polly.loop_header217.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond1014.not = icmp eq i64 %polly.indvar_next221.us, %101
  br i1 %exitcond1014.not, label %polly.loop_header246.preheader, label %polly.loop_header217.us

polly.loop_header211.split:                       ; preds = %polly.loop_header211
  br i1 %polly.loop_guard.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_exit248:                               ; preds = %polly.loop_exit255, %polly.loop_header246.preheader
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next1016 = add i64 %indvars.iv1015, -32
  %indvars.iv.next1020 = add i64 %indvars.iv1019, 32
  %exitcond1025.not = icmp eq i64 %polly.indvar_next215, 3
  br i1 %exitcond1025.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header211.split, %polly.loop_exit235
  %polly.indvar220 = phi i64 [ %polly.indvar_next221, %polly.loop_exit235 ], [ 0, %polly.loop_header211.split ]
  %128 = add nuw nsw i64 %polly.indvar220, %100
  %polly.access.mul.Packed_MemRef_call1243 = mul nuw nsw i64 %polly.indvar220, 80
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_header233
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %101
  br i1 %exitcond.not, label %polly.loop_header246.preheader, label %polly.loop_header217

polly.loop_header246.preheader:                   ; preds = %polly.loop_exit235, %polly.loop_exit235.us, %polly.loop_header211.split
  %129 = sub nsw i64 %106, %119
  %130 = icmp sgt i64 %129, 0
  %131 = select i1 %130, i64 %129, i64 0
  %132 = mul nsw i64 %polly.indvar214, -32
  %133 = icmp slt i64 %132, -48
  %134 = select i1 %133, i64 %132, i64 -48
  %135 = add nsw i64 %134, 79
  %polly.loop_guard256.not = icmp sgt i64 %131, %135
  br i1 %polly.loop_guard256.not, label %polly.loop_exit248, label %polly.loop_header246

polly.loop_header233:                             ; preds = %polly.loop_header217, %polly.loop_header233
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_header233 ], [ %122, %polly.loop_header217 ]
  %136 = add nuw nsw i64 %polly.indvar236, %106
  %polly.access.mul.call1240 = mul nsw i64 %136, 60
  %polly.access.add.call1241 = add nuw nsw i64 %128, %polly.access.mul.call1240
  %polly.access.call1242 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1241
  %polly.access.call1242.load = load double, double* %polly.access.call1242, align 8, !alias.scope !71, !noalias !77
  %polly.access.add.Packed_MemRef_call1244 = add nuw nsw i64 %polly.indvar236, %polly.access.mul.Packed_MemRef_call1243
  %polly.access.Packed_MemRef_call1245 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1244
  store double %polly.access.call1242.load, double* %polly.access.Packed_MemRef_call1245, align 8
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp slt i64 %polly.indvar236, %125
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header246:                             ; preds = %polly.loop_header246.preheader, %polly.loop_exit255
  %polly.indvar249 = phi i64 [ %polly.indvar_next250, %polly.loop_exit255 ], [ 0, %polly.loop_header246.preheader ]
  %137 = add nuw nsw i64 %polly.indvar249, %100
  %polly.access.mul.Packed_MemRef_call1268 = mul nuw nsw i64 %polly.indvar249, 80
  %138 = shl i64 %137, 3
  br label %polly.loop_header253

polly.loop_exit255:                               ; preds = %polly.loop_exit263
  %polly.indvar_next250 = add nuw nsw i64 %polly.indvar249, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next250, %101
  br i1 %exitcond1024.not, label %polly.loop_exit248, label %polly.loop_header246

polly.loop_header253:                             ; preds = %polly.loop_header246, %polly.loop_exit263
  %indvars.iv1021 = phi i64 [ %117, %polly.loop_header246 ], [ %indvars.iv.next1022, %polly.loop_exit263 ]
  %polly.indvar257 = phi i64 [ %131, %polly.loop_header246 ], [ %polly.indvar_next258, %polly.loop_exit263 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1021, i64 7)
  %139 = add nsw i64 %polly.indvar257, %120
  %polly.loop_guard2641156 = icmp sgt i64 %139, -1
  br i1 %polly.loop_guard2641156, label %polly.loop_header261.preheader, label %polly.loop_exit263

polly.loop_header261.preheader:                   ; preds = %polly.loop_header253
  %140 = add nuw nsw i64 %polly.indvar257, %119
  %141 = mul i64 %140, 480
  %142 = add i64 %141, %138
  %scevgep272 = getelementptr i8, i8* %call2, i64 %142
  %scevgep272273 = bitcast i8* %scevgep272 to double*
  %_p_scalar_274 = load double, double* %scevgep272273, align 8, !alias.scope !72, !noalias !78
  %polly.access.add.Packed_MemRef_call1279 = add nsw i64 %139, %polly.access.mul.Packed_MemRef_call1268
  %polly.access.Packed_MemRef_call1280 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1279
  %_p_scalar_281 = load double, double* %polly.access.Packed_MemRef_call1280, align 8
  %143 = mul i64 %140, 640
  br label %polly.loop_header261

polly.loop_exit263:                               ; preds = %polly.loop_header261, %polly.loop_header253
  %polly.indvar_next258 = add nuw nsw i64 %polly.indvar257, 1
  %polly.loop_cond259.not.not = icmp slt i64 %polly.indvar257, %135
  %indvars.iv.next1022 = add i64 %indvars.iv1021, 1
  br i1 %polly.loop_cond259.not.not, label %polly.loop_header253, label %polly.loop_exit255

polly.loop_header261:                             ; preds = %polly.loop_header261.preheader, %polly.loop_header261
  %polly.indvar265 = phi i64 [ %polly.indvar_next266, %polly.loop_header261 ], [ 0, %polly.loop_header261.preheader ]
  %144 = add nuw nsw i64 %polly.indvar265, %106
  %polly.access.add.Packed_MemRef_call1269 = add nuw nsw i64 %polly.indvar265, %polly.access.mul.Packed_MemRef_call1268
  %polly.access.Packed_MemRef_call1270 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269
  %_p_scalar_271 = load double, double* %polly.access.Packed_MemRef_call1270, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_274, %_p_scalar_271
  %145 = mul nuw nsw i64 %144, 480
  %146 = add nuw nsw i64 %145, %138
  %scevgep275 = getelementptr i8, i8* %call2, i64 %146
  %scevgep275276 = bitcast i8* %scevgep275 to double*
  %_p_scalar_277 = load double, double* %scevgep275276, align 8, !alias.scope !72, !noalias !78
  %p_mul37.i114 = fmul fast double %_p_scalar_281, %_p_scalar_277
  %147 = shl i64 %144, 3
  %148 = add i64 %147, %143
  %scevgep282 = getelementptr i8, i8* %call, i64 %148
  %scevgep282283 = bitcast i8* %scevgep282 to double*
  %_p_scalar_284 = load double, double* %scevgep282283, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_284
  store double %p_add42.i118, double* %scevgep282283, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next266 = add nuw nsw i64 %polly.indvar265, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar265, %smin
  br i1 %exitcond1023.not, label %polly.loop_exit263, label %polly.loop_header261

polly.start287:                                   ; preds = %kernel_syr2k.exit
  %malloccall289 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header373

polly.exiting288:                                 ; preds = %polly.loop_exit397
  tail call void @free(i8* %malloccall289)
  br label %kernel_syr2k.exit90

polly.loop_header373:                             ; preds = %polly.loop_exit381, %polly.start287
  %indvar1491 = phi i64 [ %indvar.next1492, %polly.loop_exit381 ], [ 0, %polly.start287 ]
  %polly.indvar376 = phi i64 [ %polly.indvar_next377, %polly.loop_exit381 ], [ 1, %polly.start287 ]
  %149 = add i64 %indvar1491, 1
  %150 = mul nuw nsw i64 %polly.indvar376, 640
  %scevgep385 = getelementptr i8, i8* %call, i64 %150
  %min.iters.check1493 = icmp ult i64 %149, 4
  br i1 %min.iters.check1493, label %polly.loop_header379.preheader, label %vector.ph1494

vector.ph1494:                                    ; preds = %polly.loop_header373
  %n.vec1496 = and i64 %149, -4
  br label %vector.body1490

vector.body1490:                                  ; preds = %vector.body1490, %vector.ph1494
  %index1497 = phi i64 [ 0, %vector.ph1494 ], [ %index.next1498, %vector.body1490 ]
  %151 = shl nuw nsw i64 %index1497, 3
  %152 = getelementptr i8, i8* %scevgep385, i64 %151
  %153 = bitcast i8* %152 to <4 x double>*
  %wide.load1501 = load <4 x double>, <4 x double>* %153, align 8, !alias.scope !79, !noalias !81
  %154 = fmul fast <4 x double> %wide.load1501, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %155 = bitcast i8* %152 to <4 x double>*
  store <4 x double> %154, <4 x double>* %155, align 8, !alias.scope !79, !noalias !81
  %index.next1498 = add i64 %index1497, 4
  %156 = icmp eq i64 %index.next1498, %n.vec1496
  br i1 %156, label %middle.block1488, label %vector.body1490, !llvm.loop !85

middle.block1488:                                 ; preds = %vector.body1490
  %cmp.n1500 = icmp eq i64 %149, %n.vec1496
  br i1 %cmp.n1500, label %polly.loop_exit381, label %polly.loop_header379.preheader

polly.loop_header379.preheader:                   ; preds = %polly.loop_header373, %middle.block1488
  %polly.indvar382.ph = phi i64 [ 0, %polly.loop_header373 ], [ %n.vec1496, %middle.block1488 ]
  br label %polly.loop_header379

polly.loop_exit381:                               ; preds = %polly.loop_header379, %middle.block1488
  %polly.indvar_next377 = add nuw nsw i64 %polly.indvar376, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next377, 80
  %indvar.next1492 = add i64 %indvar1491, 1
  br i1 %exitcond1049.not, label %polly.loop_header389.preheader, label %polly.loop_header373

polly.loop_header389.preheader:                   ; preds = %polly.loop_exit381
  %Packed_MemRef_call1290 = bitcast i8* %malloccall289 to double*
  br label %polly.loop_header389

polly.loop_header379:                             ; preds = %polly.loop_header379.preheader, %polly.loop_header379
  %polly.indvar382 = phi i64 [ %polly.indvar_next383, %polly.loop_header379 ], [ %polly.indvar382.ph, %polly.loop_header379.preheader ]
  %157 = shl nuw nsw i64 %polly.indvar382, 3
  %scevgep386 = getelementptr i8, i8* %scevgep385, i64 %157
  %scevgep386387 = bitcast i8* %scevgep386 to double*
  %_p_scalar_388 = load double, double* %scevgep386387, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_388, 1.200000e+00
  store double %p_mul.i57, double* %scevgep386387, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next383 = add nuw nsw i64 %polly.indvar382, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next383, %polly.indvar376
  br i1 %exitcond1048.not, label %polly.loop_exit381, label %polly.loop_header379, !llvm.loop !86

polly.loop_header389:                             ; preds = %polly.loop_header389.preheader, %polly.loop_exit397
  %polly.loop_cond394 = phi i1 [ false, %polly.loop_exit397 ], [ true, %polly.loop_header389.preheader ]
  %polly.indvar392 = phi i64 [ 1, %polly.loop_exit397 ], [ 0, %polly.loop_header389.preheader ]
  %158 = mul nuw nsw i64 %polly.indvar392, -50
  %159 = icmp slt i64 %158, -10
  %160 = select i1 %159, i64 %158, i64 -10
  %161 = mul nuw nsw i64 %polly.indvar392, 50
  %162 = add nsw i64 %160, 60
  br label %polly.loop_header395

polly.loop_exit397:                               ; preds = %polly.loop_exit404
  br i1 %polly.loop_cond394, label %polly.loop_header389, label %polly.exiting288

polly.loop_header395:                             ; preds = %polly.loop_exit404, %polly.loop_header389
  %indvars.iv1037 = phi i64 [ %indvars.iv.next1038, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %indvars.iv1032 = phi i64 [ %indvars.iv.next1033, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %polly.indvar398 = phi i64 [ %177, %polly.loop_exit404 ], [ 0, %polly.loop_header389 ]
  %163 = lshr i64 %polly.indvar398, 2
  %164 = shl nuw nsw i64 %163, 5
  %165 = sub nsw i64 %indvars.iv1032, %164
  %166 = add i64 %indvars.iv1037, %164
  %167 = shl nsw i64 %polly.indvar398, 3
  %168 = mul nsw i64 %polly.indvar398, -8
  %169 = add nsw i64 %168, 79
  %polly.access.mul.call1425.us = mul nsw i64 %polly.indvar398, 480
  %170 = or i64 %167, 1
  %polly.access.mul.call1425.us.1 = mul nuw nsw i64 %170, 60
  %171 = or i64 %167, 2
  %polly.access.mul.call1425.us.2 = mul nuw nsw i64 %171, 60
  %172 = or i64 %167, 3
  %polly.access.mul.call1425.us.3 = mul nuw nsw i64 %172, 60
  %173 = or i64 %167, 4
  %polly.access.mul.call1425.us.4 = mul nuw nsw i64 %173, 60
  %174 = or i64 %167, 5
  %polly.access.mul.call1425.us.5 = mul nuw nsw i64 %174, 60
  %175 = or i64 %167, 6
  %polly.access.mul.call1425.us.6 = mul nuw nsw i64 %175, 60
  %176 = or i64 %167, 7
  %polly.access.mul.call1425.us.7 = mul nuw nsw i64 %176, 60
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_exit445
  %177 = add nuw nsw i64 %polly.indvar398, 1
  %indvars.iv.next1033 = add nuw nsw i64 %indvars.iv1032, 8
  %indvars.iv.next1038 = add nsw i64 %indvars.iv1037, -8
  %exitcond1047.not = icmp eq i64 %177, 10
  br i1 %exitcond1047.not, label %polly.loop_exit397, label %polly.loop_header395

polly.loop_header402:                             ; preds = %polly.loop_exit445, %polly.loop_header395
  %indvars.iv1039 = phi i64 [ %indvars.iv.next1040, %polly.loop_exit445 ], [ %166, %polly.loop_header395 ]
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit445 ], [ %165, %polly.loop_header395 ]
  %polly.indvar405 = phi i64 [ %polly.indvar_next406, %polly.loop_exit445 ], [ %163, %polly.loop_header395 ]
  %smax1036 = call i64 @llvm.smax.i64(i64 %indvars.iv1034, i64 0)
  %178 = add i64 %smax1036, %indvars.iv1039
  %179 = shl nsw i64 %polly.indvar405, 2
  %.not.not885 = icmp ugt i64 %179, %polly.indvar398
  %180 = shl nsw i64 %polly.indvar405, 5
  %181 = add nsw i64 %180, %168
  %182 = icmp sgt i64 %181, 0
  %183 = select i1 %182, i64 %181, i64 0
  %184 = add nsw i64 %181, 31
  %185 = icmp slt i64 %169, %184
  %186 = select i1 %185, i64 %169, i64 %184
  %polly.loop_guard432.not = icmp sgt i64 %183, %186
  br i1 %.not.not885, label %polly.loop_header408.us, label %polly.loop_header402.split

polly.loop_header408.us:                          ; preds = %polly.loop_header402, %polly.loop_exit431.us
  %polly.indvar411.us = phi i64 [ %polly.indvar_next412.us, %polly.loop_exit431.us ], [ 0, %polly.loop_header402 ]
  %187 = add nuw nsw i64 %polly.indvar411.us, %161
  %polly.access.mul.Packed_MemRef_call1290.us = mul nuw nsw i64 %polly.indvar411.us, 80
  %polly.access.add.call1426.us = add nuw nsw i64 %187, %polly.access.mul.call1425.us
  %polly.access.call1427.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us
  %polly.access.call1427.load.us = load double, double* %polly.access.call1427.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.Packed_MemRef_call1290.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.mul.Packed_MemRef_call1290.us
  store double %polly.access.call1427.load.us, double* %polly.access.Packed_MemRef_call1290.us, align 8
  %polly.access.add.call1426.us.1 = add nuw nsw i64 %187, %polly.access.mul.call1425.us.1
  %polly.access.call1427.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.1
  %polly.access.call1427.load.us.1 = load double, double* %polly.access.call1427.us.1, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 1
  %polly.access.Packed_MemRef_call1290.us.1 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.1
  store double %polly.access.call1427.load.us.1, double* %polly.access.Packed_MemRef_call1290.us.1, align 8
  %polly.access.add.call1426.us.2 = add nuw nsw i64 %187, %polly.access.mul.call1425.us.2
  %polly.access.call1427.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.2
  %polly.access.call1427.load.us.2 = load double, double* %polly.access.call1427.us.2, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 2
  %polly.access.Packed_MemRef_call1290.us.2 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.2
  store double %polly.access.call1427.load.us.2, double* %polly.access.Packed_MemRef_call1290.us.2, align 8
  %polly.access.add.call1426.us.3 = add nuw nsw i64 %187, %polly.access.mul.call1425.us.3
  %polly.access.call1427.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.3
  %polly.access.call1427.load.us.3 = load double, double* %polly.access.call1427.us.3, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 3
  %polly.access.Packed_MemRef_call1290.us.3 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.3
  store double %polly.access.call1427.load.us.3, double* %polly.access.Packed_MemRef_call1290.us.3, align 8
  %polly.access.add.call1426.us.4 = add nuw nsw i64 %187, %polly.access.mul.call1425.us.4
  %polly.access.call1427.us.4 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.4
  %polly.access.call1427.load.us.4 = load double, double* %polly.access.call1427.us.4, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 4
  %polly.access.Packed_MemRef_call1290.us.4 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.4
  store double %polly.access.call1427.load.us.4, double* %polly.access.Packed_MemRef_call1290.us.4, align 8
  %polly.access.add.call1426.us.5 = add nuw nsw i64 %187, %polly.access.mul.call1425.us.5
  %polly.access.call1427.us.5 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.5
  %polly.access.call1427.load.us.5 = load double, double* %polly.access.call1427.us.5, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 5
  %polly.access.Packed_MemRef_call1290.us.5 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.5
  store double %polly.access.call1427.load.us.5, double* %polly.access.Packed_MemRef_call1290.us.5, align 8
  %polly.access.add.call1426.us.6 = add nuw nsw i64 %187, %polly.access.mul.call1425.us.6
  %polly.access.call1427.us.6 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.6
  %polly.access.call1427.load.us.6 = load double, double* %polly.access.call1427.us.6, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 6
  %polly.access.Packed_MemRef_call1290.us.6 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.6
  store double %polly.access.call1427.load.us.6, double* %polly.access.Packed_MemRef_call1290.us.6, align 8
  %polly.access.add.call1426.us.7 = add nuw nsw i64 %187, %polly.access.mul.call1425.us.7
  %polly.access.call1427.us.7 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1426.us.7
  %polly.access.call1427.load.us.7 = load double, double* %polly.access.call1427.us.7, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1290.us, 7
  %polly.access.Packed_MemRef_call1290.us.7 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290.us.7
  store double %polly.access.call1427.load.us.7, double* %polly.access.Packed_MemRef_call1290.us.7, align 8
  br i1 %polly.loop_guard432.not, label %polly.loop_exit431.us, label %polly.loop_header429.us

polly.loop_header429.us:                          ; preds = %polly.loop_header408.us, %polly.loop_header429.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.loop_header429.us ], [ %183, %polly.loop_header408.us ]
  %188 = add nuw nsw i64 %polly.indvar433.us, %167
  %polly.access.mul.call1437.us = mul nsw i64 %188, 60
  %polly.access.add.call1438.us = add nuw nsw i64 %187, %polly.access.mul.call1437.us
  %polly.access.call1439.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1438.us
  %polly.access.call1439.load.us = load double, double* %polly.access.call1439.us, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290441.us = add nuw nsw i64 %polly.indvar433.us, %polly.access.mul.Packed_MemRef_call1290.us
  %polly.access.Packed_MemRef_call1290442.us = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290441.us
  store double %polly.access.call1439.load.us, double* %polly.access.Packed_MemRef_call1290442.us, align 8
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %polly.loop_cond435.not.not.us = icmp slt i64 %polly.indvar433.us, %186
  br i1 %polly.loop_cond435.not.not.us, label %polly.loop_header429.us, label %polly.loop_exit431.us

polly.loop_exit431.us:                            ; preds = %polly.loop_header429.us, %polly.loop_header408.us
  %polly.indvar_next412.us = add nuw nsw i64 %polly.indvar411.us, 1
  %exitcond1031.not = icmp eq i64 %polly.indvar_next412.us, %162
  br i1 %exitcond1031.not, label %polly.loop_header443.preheader, label %polly.loop_header408.us

polly.loop_header402.split:                       ; preds = %polly.loop_header402
  br i1 %polly.loop_guard432.not, label %polly.loop_header443.preheader, label %polly.loop_header408

polly.loop_exit445:                               ; preds = %polly.loop_exit452, %polly.loop_header443.preheader
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %indvars.iv.next1035 = add i64 %indvars.iv1034, -32
  %indvars.iv.next1040 = add i64 %indvars.iv1039, 32
  %exitcond1046.not = icmp eq i64 %polly.indvar_next406, 3
  br i1 %exitcond1046.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header408:                             ; preds = %polly.loop_header402.split, %polly.loop_exit431
  %polly.indvar411 = phi i64 [ %polly.indvar_next412, %polly.loop_exit431 ], [ 0, %polly.loop_header402.split ]
  %189 = add nuw nsw i64 %polly.indvar411, %161
  %polly.access.mul.Packed_MemRef_call1290440 = mul nuw nsw i64 %polly.indvar411, 80
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_header429
  %polly.indvar_next412 = add nuw nsw i64 %polly.indvar411, 1
  %exitcond1029.not = icmp eq i64 %polly.indvar_next412, %162
  br i1 %exitcond1029.not, label %polly.loop_header443.preheader, label %polly.loop_header408

polly.loop_header443.preheader:                   ; preds = %polly.loop_exit431, %polly.loop_exit431.us, %polly.loop_header402.split
  %190 = sub nsw i64 %167, %180
  %191 = icmp sgt i64 %190, 0
  %192 = select i1 %191, i64 %190, i64 0
  %193 = mul nsw i64 %polly.indvar405, -32
  %194 = icmp slt i64 %193, -48
  %195 = select i1 %194, i64 %193, i64 -48
  %196 = add nsw i64 %195, 79
  %polly.loop_guard453.not = icmp sgt i64 %192, %196
  br i1 %polly.loop_guard453.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header429:                             ; preds = %polly.loop_header408, %polly.loop_header429
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_header429 ], [ %183, %polly.loop_header408 ]
  %197 = add nuw nsw i64 %polly.indvar433, %167
  %polly.access.mul.call1437 = mul nsw i64 %197, 60
  %polly.access.add.call1438 = add nuw nsw i64 %189, %polly.access.mul.call1437
  %polly.access.call1439 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1438
  %polly.access.call1439.load = load double, double* %polly.access.call1439, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call1290441 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.Packed_MemRef_call1290440
  %polly.access.Packed_MemRef_call1290442 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290441
  store double %polly.access.call1439.load, double* %polly.access.Packed_MemRef_call1290442, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %polly.loop_cond435.not.not = icmp slt i64 %polly.indvar433, %186
  br i1 %polly.loop_cond435.not.not, label %polly.loop_header429, label %polly.loop_exit431

polly.loop_header443:                             ; preds = %polly.loop_header443.preheader, %polly.loop_exit452
  %polly.indvar446 = phi i64 [ %polly.indvar_next447, %polly.loop_exit452 ], [ 0, %polly.loop_header443.preheader ]
  %198 = add nuw nsw i64 %polly.indvar446, %161
  %polly.access.mul.Packed_MemRef_call1290465 = mul nuw nsw i64 %polly.indvar446, 80
  %199 = shl i64 %198, 3
  br label %polly.loop_header450

polly.loop_exit452:                               ; preds = %polly.loop_exit460
  %polly.indvar_next447 = add nuw nsw i64 %polly.indvar446, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next447, %162
  br i1 %exitcond1045.not, label %polly.loop_exit445, label %polly.loop_header443

polly.loop_header450:                             ; preds = %polly.loop_header443, %polly.loop_exit460
  %indvars.iv1041 = phi i64 [ %178, %polly.loop_header443 ], [ %indvars.iv.next1042, %polly.loop_exit460 ]
  %polly.indvar454 = phi i64 [ %192, %polly.loop_header443 ], [ %polly.indvar_next455, %polly.loop_exit460 ]
  %smin1043 = call i64 @llvm.smin.i64(i64 %indvars.iv1041, i64 7)
  %200 = add nsw i64 %polly.indvar454, %181
  %polly.loop_guard4611157 = icmp sgt i64 %200, -1
  br i1 %polly.loop_guard4611157, label %polly.loop_header458.preheader, label %polly.loop_exit460

polly.loop_header458.preheader:                   ; preds = %polly.loop_header450
  %201 = add nuw nsw i64 %polly.indvar454, %180
  %202 = mul i64 %201, 480
  %203 = add i64 %202, %199
  %scevgep469 = getelementptr i8, i8* %call2, i64 %203
  %scevgep469470 = bitcast i8* %scevgep469 to double*
  %_p_scalar_471 = load double, double* %scevgep469470, align 8, !alias.scope !83, !noalias !88
  %polly.access.add.Packed_MemRef_call1290476 = add nsw i64 %200, %polly.access.mul.Packed_MemRef_call1290465
  %polly.access.Packed_MemRef_call1290477 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290476
  %_p_scalar_478 = load double, double* %polly.access.Packed_MemRef_call1290477, align 8
  %204 = mul i64 %201, 640
  br label %polly.loop_header458

polly.loop_exit460:                               ; preds = %polly.loop_header458, %polly.loop_header450
  %polly.indvar_next455 = add nuw nsw i64 %polly.indvar454, 1
  %polly.loop_cond456.not.not = icmp slt i64 %polly.indvar454, %196
  %indvars.iv.next1042 = add i64 %indvars.iv1041, 1
  br i1 %polly.loop_cond456.not.not, label %polly.loop_header450, label %polly.loop_exit452

polly.loop_header458:                             ; preds = %polly.loop_header458.preheader, %polly.loop_header458
  %polly.indvar462 = phi i64 [ %polly.indvar_next463, %polly.loop_header458 ], [ 0, %polly.loop_header458.preheader ]
  %205 = add nuw nsw i64 %polly.indvar462, %167
  %polly.access.add.Packed_MemRef_call1290466 = add nuw nsw i64 %polly.indvar462, %polly.access.mul.Packed_MemRef_call1290465
  %polly.access.Packed_MemRef_call1290467 = getelementptr double, double* %Packed_MemRef_call1290, i64 %polly.access.add.Packed_MemRef_call1290466
  %_p_scalar_468 = load double, double* %polly.access.Packed_MemRef_call1290467, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_471, %_p_scalar_468
  %206 = mul nuw nsw i64 %205, 480
  %207 = add nuw nsw i64 %206, %199
  %scevgep472 = getelementptr i8, i8* %call2, i64 %207
  %scevgep472473 = bitcast i8* %scevgep472 to double*
  %_p_scalar_474 = load double, double* %scevgep472473, align 8, !alias.scope !83, !noalias !88
  %p_mul37.i75 = fmul fast double %_p_scalar_478, %_p_scalar_474
  %208 = shl i64 %205, 3
  %209 = add i64 %208, %204
  %scevgep479 = getelementptr i8, i8* %call, i64 %209
  %scevgep479480 = bitcast i8* %scevgep479 to double*
  %_p_scalar_481 = load double, double* %scevgep479480, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_481
  store double %p_add42.i79, double* %scevgep479480, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next463 = add nuw nsw i64 %polly.indvar462, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar462, %smin1043
  br i1 %exitcond1044.not, label %polly.loop_exit460, label %polly.loop_header458

polly.start484:                                   ; preds = %init_array.exit
  %malloccall486 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header570

polly.exiting485:                                 ; preds = %polly.loop_exit594
  tail call void @free(i8* %malloccall486)
  br label %kernel_syr2k.exit

polly.loop_header570:                             ; preds = %polly.loop_exit578, %polly.start484
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit578 ], [ 0, %polly.start484 ]
  %polly.indvar573 = phi i64 [ %polly.indvar_next574, %polly.loop_exit578 ], [ 1, %polly.start484 ]
  %210 = add i64 %indvar, 1
  %211 = mul nuw nsw i64 %polly.indvar573, 640
  %scevgep582 = getelementptr i8, i8* %call, i64 %211
  %min.iters.check1467 = icmp ult i64 %210, 4
  br i1 %min.iters.check1467, label %polly.loop_header576.preheader, label %vector.ph1468

vector.ph1468:                                    ; preds = %polly.loop_header570
  %n.vec1470 = and i64 %210, -4
  br label %vector.body1466

vector.body1466:                                  ; preds = %vector.body1466, %vector.ph1468
  %index1471 = phi i64 [ 0, %vector.ph1468 ], [ %index.next1472, %vector.body1466 ]
  %212 = shl nuw nsw i64 %index1471, 3
  %213 = getelementptr i8, i8* %scevgep582, i64 %212
  %214 = bitcast i8* %213 to <4 x double>*
  %wide.load1475 = load <4 x double>, <4 x double>* %214, align 8, !alias.scope !89, !noalias !91
  %215 = fmul fast <4 x double> %wide.load1475, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %216 = bitcast i8* %213 to <4 x double>*
  store <4 x double> %215, <4 x double>* %216, align 8, !alias.scope !89, !noalias !91
  %index.next1472 = add i64 %index1471, 4
  %217 = icmp eq i64 %index.next1472, %n.vec1470
  br i1 %217, label %middle.block1464, label %vector.body1466, !llvm.loop !95

middle.block1464:                                 ; preds = %vector.body1466
  %cmp.n1474 = icmp eq i64 %210, %n.vec1470
  br i1 %cmp.n1474, label %polly.loop_exit578, label %polly.loop_header576.preheader

polly.loop_header576.preheader:                   ; preds = %polly.loop_header570, %middle.block1464
  %polly.indvar579.ph = phi i64 [ 0, %polly.loop_header570 ], [ %n.vec1470, %middle.block1464 ]
  br label %polly.loop_header576

polly.loop_exit578:                               ; preds = %polly.loop_header576, %middle.block1464
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next574, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1070.not, label %polly.loop_header586.preheader, label %polly.loop_header570

polly.loop_header586.preheader:                   ; preds = %polly.loop_exit578
  %Packed_MemRef_call1487 = bitcast i8* %malloccall486 to double*
  br label %polly.loop_header586

polly.loop_header576:                             ; preds = %polly.loop_header576.preheader, %polly.loop_header576
  %polly.indvar579 = phi i64 [ %polly.indvar_next580, %polly.loop_header576 ], [ %polly.indvar579.ph, %polly.loop_header576.preheader ]
  %218 = shl nuw nsw i64 %polly.indvar579, 3
  %scevgep583 = getelementptr i8, i8* %scevgep582, i64 %218
  %scevgep583584 = bitcast i8* %scevgep583 to double*
  %_p_scalar_585 = load double, double* %scevgep583584, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_585, 1.200000e+00
  store double %p_mul.i, double* %scevgep583584, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next580 = add nuw nsw i64 %polly.indvar579, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next580, %polly.indvar573
  br i1 %exitcond1069.not, label %polly.loop_exit578, label %polly.loop_header576, !llvm.loop !96

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_exit594
  %polly.loop_cond591 = phi i1 [ false, %polly.loop_exit594 ], [ true, %polly.loop_header586.preheader ]
  %polly.indvar589 = phi i64 [ 1, %polly.loop_exit594 ], [ 0, %polly.loop_header586.preheader ]
  %219 = mul nuw nsw i64 %polly.indvar589, -50
  %220 = icmp slt i64 %219, -10
  %221 = select i1 %220, i64 %219, i64 -10
  %222 = mul nuw nsw i64 %polly.indvar589, 50
  %223 = add nsw i64 %221, 60
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_exit601
  br i1 %polly.loop_cond591, label %polly.loop_header586, label %polly.exiting485

polly.loop_header592:                             ; preds = %polly.loop_exit601, %polly.loop_header586
  %indvars.iv1058 = phi i64 [ %indvars.iv.next1059, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %indvars.iv1053 = phi i64 [ %indvars.iv.next1054, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %polly.indvar595 = phi i64 [ %238, %polly.loop_exit601 ], [ 0, %polly.loop_header586 ]
  %224 = lshr i64 %polly.indvar595, 2
  %225 = shl nuw nsw i64 %224, 5
  %226 = sub nsw i64 %indvars.iv1053, %225
  %227 = add i64 %indvars.iv1058, %225
  %228 = shl nsw i64 %polly.indvar595, 3
  %229 = mul nsw i64 %polly.indvar595, -8
  %230 = add nsw i64 %229, 79
  %polly.access.mul.call1622.us = mul nsw i64 %polly.indvar595, 480
  %231 = or i64 %228, 1
  %polly.access.mul.call1622.us.1 = mul nuw nsw i64 %231, 60
  %232 = or i64 %228, 2
  %polly.access.mul.call1622.us.2 = mul nuw nsw i64 %232, 60
  %233 = or i64 %228, 3
  %polly.access.mul.call1622.us.3 = mul nuw nsw i64 %233, 60
  %234 = or i64 %228, 4
  %polly.access.mul.call1622.us.4 = mul nuw nsw i64 %234, 60
  %235 = or i64 %228, 5
  %polly.access.mul.call1622.us.5 = mul nuw nsw i64 %235, 60
  %236 = or i64 %228, 6
  %polly.access.mul.call1622.us.6 = mul nuw nsw i64 %236, 60
  %237 = or i64 %228, 7
  %polly.access.mul.call1622.us.7 = mul nuw nsw i64 %237, 60
  br label %polly.loop_header599

polly.loop_exit601:                               ; preds = %polly.loop_exit642
  %238 = add nuw nsw i64 %polly.indvar595, 1
  %indvars.iv.next1054 = add nuw nsw i64 %indvars.iv1053, 8
  %indvars.iv.next1059 = add nsw i64 %indvars.iv1058, -8
  %exitcond1068.not = icmp eq i64 %238, 10
  br i1 %exitcond1068.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header599:                             ; preds = %polly.loop_exit642, %polly.loop_header592
  %indvars.iv1060 = phi i64 [ %indvars.iv.next1061, %polly.loop_exit642 ], [ %227, %polly.loop_header592 ]
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit642 ], [ %226, %polly.loop_header592 ]
  %polly.indvar602 = phi i64 [ %polly.indvar_next603, %polly.loop_exit642 ], [ %224, %polly.loop_header592 ]
  %smax1057 = call i64 @llvm.smax.i64(i64 %indvars.iv1055, i64 0)
  %239 = add i64 %smax1057, %indvars.iv1060
  %240 = shl nsw i64 %polly.indvar602, 2
  %.not.not886 = icmp ugt i64 %240, %polly.indvar595
  %241 = shl nsw i64 %polly.indvar602, 5
  %242 = add nsw i64 %241, %229
  %243 = icmp sgt i64 %242, 0
  %244 = select i1 %243, i64 %242, i64 0
  %245 = add nsw i64 %242, 31
  %246 = icmp slt i64 %230, %245
  %247 = select i1 %246, i64 %230, i64 %245
  %polly.loop_guard629.not = icmp sgt i64 %244, %247
  br i1 %.not.not886, label %polly.loop_header605.us, label %polly.loop_header599.split

polly.loop_header605.us:                          ; preds = %polly.loop_header599, %polly.loop_exit628.us
  %polly.indvar608.us = phi i64 [ %polly.indvar_next609.us, %polly.loop_exit628.us ], [ 0, %polly.loop_header599 ]
  %248 = add nuw nsw i64 %polly.indvar608.us, %222
  %polly.access.mul.Packed_MemRef_call1487.us = mul nuw nsw i64 %polly.indvar608.us, 80
  %polly.access.add.call1623.us = add nuw nsw i64 %248, %polly.access.mul.call1622.us
  %polly.access.call1624.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us
  %polly.access.call1624.load.us = load double, double* %polly.access.call1624.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.Packed_MemRef_call1487.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.mul.Packed_MemRef_call1487.us
  store double %polly.access.call1624.load.us, double* %polly.access.Packed_MemRef_call1487.us, align 8
  %polly.access.add.call1623.us.1 = add nuw nsw i64 %248, %polly.access.mul.call1622.us.1
  %polly.access.call1624.us.1 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.1
  %polly.access.call1624.load.us.1 = load double, double* %polly.access.call1624.us.1, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.1 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 1
  %polly.access.Packed_MemRef_call1487.us.1 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.1
  store double %polly.access.call1624.load.us.1, double* %polly.access.Packed_MemRef_call1487.us.1, align 8
  %polly.access.add.call1623.us.2 = add nuw nsw i64 %248, %polly.access.mul.call1622.us.2
  %polly.access.call1624.us.2 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.2
  %polly.access.call1624.load.us.2 = load double, double* %polly.access.call1624.us.2, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.2 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 2
  %polly.access.Packed_MemRef_call1487.us.2 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.2
  store double %polly.access.call1624.load.us.2, double* %polly.access.Packed_MemRef_call1487.us.2, align 8
  %polly.access.add.call1623.us.3 = add nuw nsw i64 %248, %polly.access.mul.call1622.us.3
  %polly.access.call1624.us.3 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.3
  %polly.access.call1624.load.us.3 = load double, double* %polly.access.call1624.us.3, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.3 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 3
  %polly.access.Packed_MemRef_call1487.us.3 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.3
  store double %polly.access.call1624.load.us.3, double* %polly.access.Packed_MemRef_call1487.us.3, align 8
  %polly.access.add.call1623.us.4 = add nuw nsw i64 %248, %polly.access.mul.call1622.us.4
  %polly.access.call1624.us.4 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.4
  %polly.access.call1624.load.us.4 = load double, double* %polly.access.call1624.us.4, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.4 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 4
  %polly.access.Packed_MemRef_call1487.us.4 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.4
  store double %polly.access.call1624.load.us.4, double* %polly.access.Packed_MemRef_call1487.us.4, align 8
  %polly.access.add.call1623.us.5 = add nuw nsw i64 %248, %polly.access.mul.call1622.us.5
  %polly.access.call1624.us.5 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.5
  %polly.access.call1624.load.us.5 = load double, double* %polly.access.call1624.us.5, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.5 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 5
  %polly.access.Packed_MemRef_call1487.us.5 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.5
  store double %polly.access.call1624.load.us.5, double* %polly.access.Packed_MemRef_call1487.us.5, align 8
  %polly.access.add.call1623.us.6 = add nuw nsw i64 %248, %polly.access.mul.call1622.us.6
  %polly.access.call1624.us.6 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.6
  %polly.access.call1624.load.us.6 = load double, double* %polly.access.call1624.us.6, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.6 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 6
  %polly.access.Packed_MemRef_call1487.us.6 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.6
  store double %polly.access.call1624.load.us.6, double* %polly.access.Packed_MemRef_call1487.us.6, align 8
  %polly.access.add.call1623.us.7 = add nuw nsw i64 %248, %polly.access.mul.call1622.us.7
  %polly.access.call1624.us.7 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1623.us.7
  %polly.access.call1624.load.us.7 = load double, double* %polly.access.call1624.us.7, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487.us.7 = or i64 %polly.access.mul.Packed_MemRef_call1487.us, 7
  %polly.access.Packed_MemRef_call1487.us.7 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487.us.7
  store double %polly.access.call1624.load.us.7, double* %polly.access.Packed_MemRef_call1487.us.7, align 8
  br i1 %polly.loop_guard629.not, label %polly.loop_exit628.us, label %polly.loop_header626.us

polly.loop_header626.us:                          ; preds = %polly.loop_header605.us, %polly.loop_header626.us
  %polly.indvar630.us = phi i64 [ %polly.indvar_next631.us, %polly.loop_header626.us ], [ %244, %polly.loop_header605.us ]
  %249 = add nuw nsw i64 %polly.indvar630.us, %228
  %polly.access.mul.call1634.us = mul nsw i64 %249, 60
  %polly.access.add.call1635.us = add nuw nsw i64 %248, %polly.access.mul.call1634.us
  %polly.access.call1636.us = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1635.us
  %polly.access.call1636.load.us = load double, double* %polly.access.call1636.us, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487638.us = add nuw nsw i64 %polly.indvar630.us, %polly.access.mul.Packed_MemRef_call1487.us
  %polly.access.Packed_MemRef_call1487639.us = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487638.us
  store double %polly.access.call1636.load.us, double* %polly.access.Packed_MemRef_call1487639.us, align 8
  %polly.indvar_next631.us = add nuw nsw i64 %polly.indvar630.us, 1
  %polly.loop_cond632.not.not.us = icmp slt i64 %polly.indvar630.us, %247
  br i1 %polly.loop_cond632.not.not.us, label %polly.loop_header626.us, label %polly.loop_exit628.us

polly.loop_exit628.us:                            ; preds = %polly.loop_header626.us, %polly.loop_header605.us
  %polly.indvar_next609.us = add nuw nsw i64 %polly.indvar608.us, 1
  %exitcond1052.not = icmp eq i64 %polly.indvar_next609.us, %223
  br i1 %exitcond1052.not, label %polly.loop_header640.preheader, label %polly.loop_header605.us

polly.loop_header599.split:                       ; preds = %polly.loop_header599
  br i1 %polly.loop_guard629.not, label %polly.loop_header640.preheader, label %polly.loop_header605

polly.loop_exit642:                               ; preds = %polly.loop_exit649, %polly.loop_header640.preheader
  %polly.indvar_next603 = add nuw nsw i64 %polly.indvar602, 1
  %indvars.iv.next1056 = add i64 %indvars.iv1055, -32
  %indvars.iv.next1061 = add i64 %indvars.iv1060, 32
  %exitcond1067.not = icmp eq i64 %polly.indvar_next603, 3
  br i1 %exitcond1067.not, label %polly.loop_exit601, label %polly.loop_header599

polly.loop_header605:                             ; preds = %polly.loop_header599.split, %polly.loop_exit628
  %polly.indvar608 = phi i64 [ %polly.indvar_next609, %polly.loop_exit628 ], [ 0, %polly.loop_header599.split ]
  %250 = add nuw nsw i64 %polly.indvar608, %222
  %polly.access.mul.Packed_MemRef_call1487637 = mul nuw nsw i64 %polly.indvar608, 80
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_header626
  %polly.indvar_next609 = add nuw nsw i64 %polly.indvar608, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next609, %223
  br i1 %exitcond1050.not, label %polly.loop_header640.preheader, label %polly.loop_header605

polly.loop_header640.preheader:                   ; preds = %polly.loop_exit628, %polly.loop_exit628.us, %polly.loop_header599.split
  %251 = sub nsw i64 %228, %241
  %252 = icmp sgt i64 %251, 0
  %253 = select i1 %252, i64 %251, i64 0
  %254 = mul nsw i64 %polly.indvar602, -32
  %255 = icmp slt i64 %254, -48
  %256 = select i1 %255, i64 %254, i64 -48
  %257 = add nsw i64 %256, 79
  %polly.loop_guard650.not = icmp sgt i64 %253, %257
  br i1 %polly.loop_guard650.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header626:                             ; preds = %polly.loop_header605, %polly.loop_header626
  %polly.indvar630 = phi i64 [ %polly.indvar_next631, %polly.loop_header626 ], [ %244, %polly.loop_header605 ]
  %258 = add nuw nsw i64 %polly.indvar630, %228
  %polly.access.mul.call1634 = mul nsw i64 %258, 60
  %polly.access.add.call1635 = add nuw nsw i64 %250, %polly.access.mul.call1634
  %polly.access.call1636 = getelementptr double, double* %polly.access.cast.call1683, i64 %polly.access.add.call1635
  %polly.access.call1636.load = load double, double* %polly.access.call1636, align 8, !alias.scope !92, !noalias !97
  %polly.access.add.Packed_MemRef_call1487638 = add nuw nsw i64 %polly.indvar630, %polly.access.mul.Packed_MemRef_call1487637
  %polly.access.Packed_MemRef_call1487639 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487638
  store double %polly.access.call1636.load, double* %polly.access.Packed_MemRef_call1487639, align 8
  %polly.indvar_next631 = add nuw nsw i64 %polly.indvar630, 1
  %polly.loop_cond632.not.not = icmp slt i64 %polly.indvar630, %247
  br i1 %polly.loop_cond632.not.not, label %polly.loop_header626, label %polly.loop_exit628

polly.loop_header640:                             ; preds = %polly.loop_header640.preheader, %polly.loop_exit649
  %polly.indvar643 = phi i64 [ %polly.indvar_next644, %polly.loop_exit649 ], [ 0, %polly.loop_header640.preheader ]
  %259 = add nuw nsw i64 %polly.indvar643, %222
  %polly.access.mul.Packed_MemRef_call1487662 = mul nuw nsw i64 %polly.indvar643, 80
  %260 = shl i64 %259, 3
  br label %polly.loop_header647

polly.loop_exit649:                               ; preds = %polly.loop_exit657
  %polly.indvar_next644 = add nuw nsw i64 %polly.indvar643, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next644, %223
  br i1 %exitcond1066.not, label %polly.loop_exit642, label %polly.loop_header640

polly.loop_header647:                             ; preds = %polly.loop_header640, %polly.loop_exit657
  %indvars.iv1062 = phi i64 [ %239, %polly.loop_header640 ], [ %indvars.iv.next1063, %polly.loop_exit657 ]
  %polly.indvar651 = phi i64 [ %253, %polly.loop_header640 ], [ %polly.indvar_next652, %polly.loop_exit657 ]
  %smin1064 = call i64 @llvm.smin.i64(i64 %indvars.iv1062, i64 7)
  %261 = add nsw i64 %polly.indvar651, %242
  %polly.loop_guard6581158 = icmp sgt i64 %261, -1
  br i1 %polly.loop_guard6581158, label %polly.loop_header655.preheader, label %polly.loop_exit657

polly.loop_header655.preheader:                   ; preds = %polly.loop_header647
  %262 = add nuw nsw i64 %polly.indvar651, %241
  %263 = mul i64 %262, 480
  %264 = add i64 %263, %260
  %scevgep666 = getelementptr i8, i8* %call2, i64 %264
  %scevgep666667 = bitcast i8* %scevgep666 to double*
  %_p_scalar_668 = load double, double* %scevgep666667, align 8, !alias.scope !93, !noalias !98
  %polly.access.add.Packed_MemRef_call1487673 = add nsw i64 %261, %polly.access.mul.Packed_MemRef_call1487662
  %polly.access.Packed_MemRef_call1487674 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487673
  %_p_scalar_675 = load double, double* %polly.access.Packed_MemRef_call1487674, align 8
  %265 = mul i64 %262, 640
  br label %polly.loop_header655

polly.loop_exit657:                               ; preds = %polly.loop_header655, %polly.loop_header647
  %polly.indvar_next652 = add nuw nsw i64 %polly.indvar651, 1
  %polly.loop_cond653.not.not = icmp slt i64 %polly.indvar651, %257
  %indvars.iv.next1063 = add i64 %indvars.iv1062, 1
  br i1 %polly.loop_cond653.not.not, label %polly.loop_header647, label %polly.loop_exit649

polly.loop_header655:                             ; preds = %polly.loop_header655.preheader, %polly.loop_header655
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_header655 ], [ 0, %polly.loop_header655.preheader ]
  %266 = add nuw nsw i64 %polly.indvar659, %228
  %polly.access.add.Packed_MemRef_call1487663 = add nuw nsw i64 %polly.indvar659, %polly.access.mul.Packed_MemRef_call1487662
  %polly.access.Packed_MemRef_call1487664 = getelementptr double, double* %Packed_MemRef_call1487, i64 %polly.access.add.Packed_MemRef_call1487663
  %_p_scalar_665 = load double, double* %polly.access.Packed_MemRef_call1487664, align 8
  %p_mul27.i = fmul fast double %_p_scalar_668, %_p_scalar_665
  %267 = mul nuw nsw i64 %266, 480
  %268 = add nuw nsw i64 %267, %260
  %scevgep669 = getelementptr i8, i8* %call2, i64 %268
  %scevgep669670 = bitcast i8* %scevgep669 to double*
  %_p_scalar_671 = load double, double* %scevgep669670, align 8, !alias.scope !93, !noalias !98
  %p_mul37.i = fmul fast double %_p_scalar_675, %_p_scalar_671
  %269 = shl i64 %266, 3
  %270 = add i64 %269, %265
  %scevgep676 = getelementptr i8, i8* %call, i64 %270
  %scevgep676677 = bitcast i8* %scevgep676 to double*
  %_p_scalar_678 = load double, double* %scevgep676677, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_678
  store double %p_add42.i, double* %scevgep676677, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar659, %smin1064
  br i1 %exitcond1065.not, label %polly.loop_exit657, label %polly.loop_header655

polly.loop_header817:                             ; preds = %entry, %polly.loop_exit825
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_exit825 ], [ 0, %entry ]
  %271 = mul nuw nsw i64 %polly.indvar820, 640
  %272 = trunc i64 %polly.indvar820 to i32
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %272, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %polly.loop_header817
  %index1190 = phi i64 [ 0, %polly.loop_header817 ], [ %index.next1191, %vector.body1188 ]
  %vec.ind1196 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817 ], [ %vec.ind.next1197, %vector.body1188 ]
  %273 = mul <4 x i32> %vec.ind1196, %broadcast.splat1199
  %274 = add <4 x i32> %273, <i32 3, i32 3, i32 3, i32 3>
  %275 = urem <4 x i32> %274, <i32 80, i32 80, i32 80, i32 80>
  %276 = sitofp <4 x i32> %275 to <4 x double>
  %277 = fmul fast <4 x double> %276, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %278 = shl i64 %index1190, 3
  %279 = add nuw nsw i64 %278, %271
  %280 = getelementptr i8, i8* %call, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %277, <4 x double>* %281, align 8, !alias.scope !99, !noalias !101
  %index.next1191 = add i64 %index1190, 4
  %vec.ind.next1197 = add <4 x i32> %vec.ind1196, <i32 4, i32 4, i32 4, i32 4>
  %282 = icmp eq i64 %index.next1191, 32
  br i1 %282, label %polly.loop_exit825, label %vector.body1188, !llvm.loop !104

polly.loop_exit825:                               ; preds = %vector.body1188
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next821, 32
  br i1 %exitcond1090.not, label %polly.loop_header817.1, label %polly.loop_header817

polly.loop_header844:                             ; preds = %polly.loop_exit825.2.2, %polly.loop_exit852
  %polly.indvar847 = phi i64 [ %polly.indvar_next848, %polly.loop_exit852 ], [ 0, %polly.loop_exit825.2.2 ]
  %283 = mul nuw nsw i64 %polly.indvar847, 480
  %284 = trunc i64 %polly.indvar847 to i32
  %broadcast.splatinsert1312 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1313 = shufflevector <4 x i32> %broadcast.splatinsert1312, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1302

vector.body1302:                                  ; preds = %vector.body1302, %polly.loop_header844
  %index1304 = phi i64 [ 0, %polly.loop_header844 ], [ %index.next1305, %vector.body1302 ]
  %vec.ind1310 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header844 ], [ %vec.ind.next1311, %vector.body1302 ]
  %285 = mul <4 x i32> %vec.ind1310, %broadcast.splat1313
  %286 = add <4 x i32> %285, <i32 2, i32 2, i32 2, i32 2>
  %287 = urem <4 x i32> %286, <i32 60, i32 60, i32 60, i32 60>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %290 = shl i64 %index1304, 3
  %291 = add i64 %290, %283
  %292 = getelementptr i8, i8* %call2, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %289, <4 x double>* %293, align 8, !alias.scope !103, !noalias !105
  %index.next1305 = add i64 %index1304, 4
  %vec.ind.next1311 = add <4 x i32> %vec.ind1310, <i32 4, i32 4, i32 4, i32 4>
  %294 = icmp eq i64 %index.next1305, 32
  br i1 %294, label %polly.loop_exit852, label %vector.body1302, !llvm.loop !106

polly.loop_exit852:                               ; preds = %vector.body1302
  %polly.indvar_next848 = add nuw nsw i64 %polly.indvar847, 1
  %exitcond1081.not = icmp eq i64 %polly.indvar_next848, 32
  br i1 %exitcond1081.not, label %polly.loop_header844.1, label %polly.loop_header844

polly.loop_header870:                             ; preds = %polly.loop_exit852.1.2, %polly.loop_exit878
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_exit878 ], [ 0, %polly.loop_exit852.1.2 ]
  %295 = mul nuw nsw i64 %polly.indvar873, 480
  %296 = trunc i64 %polly.indvar873 to i32
  %broadcast.splatinsert1390 = insertelement <4 x i32> poison, i32 %296, i32 0
  %broadcast.splat1391 = shufflevector <4 x i32> %broadcast.splatinsert1390, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1380

vector.body1380:                                  ; preds = %vector.body1380, %polly.loop_header870
  %index1382 = phi i64 [ 0, %polly.loop_header870 ], [ %index.next1383, %vector.body1380 ]
  %vec.ind1388 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header870 ], [ %vec.ind.next1389, %vector.body1380 ]
  %297 = mul <4 x i32> %vec.ind1388, %broadcast.splat1391
  %298 = add <4 x i32> %297, <i32 1, i32 1, i32 1, i32 1>
  %299 = urem <4 x i32> %298, <i32 80, i32 80, i32 80, i32 80>
  %300 = sitofp <4 x i32> %299 to <4 x double>
  %301 = fmul fast <4 x double> %300, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %302 = shl i64 %index1382, 3
  %303 = add i64 %302, %295
  %304 = getelementptr i8, i8* %call1, i64 %303
  %305 = bitcast i8* %304 to <4 x double>*
  store <4 x double> %301, <4 x double>* %305, align 8, !alias.scope !102, !noalias !107
  %index.next1383 = add i64 %index1382, 4
  %vec.ind.next1389 = add <4 x i32> %vec.ind1388, <i32 4, i32 4, i32 4, i32 4>
  %306 = icmp eq i64 %index.next1383, 32
  br i1 %306, label %polly.loop_exit878, label %vector.body1380, !llvm.loop !108

polly.loop_exit878:                               ; preds = %vector.body1380
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %exitcond1075.not = icmp eq i64 %polly.indvar_next874, 32
  br i1 %exitcond1075.not, label %polly.loop_header870.1, label %polly.loop_header870

polly.loop_header870.1:                           ; preds = %polly.loop_exit878, %polly.loop_exit878.1
  %polly.indvar873.1 = phi i64 [ %polly.indvar_next874.1, %polly.loop_exit878.1 ], [ 0, %polly.loop_exit878 ]
  %307 = mul nuw nsw i64 %polly.indvar873.1, 480
  %308 = trunc i64 %polly.indvar873.1 to i32
  %broadcast.splatinsert1402 = insertelement <4 x i32> poison, i32 %308, i32 0
  %broadcast.splat1403 = shufflevector <4 x i32> %broadcast.splatinsert1402, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1394

vector.body1394:                                  ; preds = %vector.body1394, %polly.loop_header870.1
  %index1396 = phi i64 [ 0, %polly.loop_header870.1 ], [ %index.next1397, %vector.body1394 ]
  %vec.ind1400 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header870.1 ], [ %vec.ind.next1401, %vector.body1394 ]
  %309 = add nuw nsw <4 x i64> %vec.ind1400, <i64 32, i64 32, i64 32, i64 32>
  %310 = trunc <4 x i64> %309 to <4 x i32>
  %311 = mul <4 x i32> %broadcast.splat1403, %310
  %312 = add <4 x i32> %311, <i32 1, i32 1, i32 1, i32 1>
  %313 = urem <4 x i32> %312, <i32 80, i32 80, i32 80, i32 80>
  %314 = sitofp <4 x i32> %313 to <4 x double>
  %315 = fmul fast <4 x double> %314, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %316 = extractelement <4 x i64> %309, i32 0
  %317 = shl i64 %316, 3
  %318 = add i64 %317, %307
  %319 = getelementptr i8, i8* %call1, i64 %318
  %320 = bitcast i8* %319 to <4 x double>*
  store <4 x double> %315, <4 x double>* %320, align 8, !alias.scope !102, !noalias !107
  %index.next1397 = add i64 %index1396, 4
  %vec.ind.next1401 = add <4 x i64> %vec.ind1400, <i64 4, i64 4, i64 4, i64 4>
  %321 = icmp eq i64 %index.next1397, 28
  br i1 %321, label %polly.loop_exit878.1, label %vector.body1394, !llvm.loop !109

polly.loop_exit878.1:                             ; preds = %vector.body1394
  %polly.indvar_next874.1 = add nuw nsw i64 %polly.indvar873.1, 1
  %exitcond1075.1.not = icmp eq i64 %polly.indvar_next874.1, 32
  br i1 %exitcond1075.1.not, label %polly.loop_header870.11101, label %polly.loop_header870.1

polly.loop_header870.11101:                       ; preds = %polly.loop_exit878.1, %polly.loop_exit878.11112
  %polly.indvar873.11100 = phi i64 [ %polly.indvar_next874.11110, %polly.loop_exit878.11112 ], [ 0, %polly.loop_exit878.1 ]
  %322 = add nuw nsw i64 %polly.indvar873.11100, 32
  %323 = mul nuw nsw i64 %322, 480
  %324 = trunc i64 %322 to i32
  %broadcast.splatinsert1416 = insertelement <4 x i32> poison, i32 %324, i32 0
  %broadcast.splat1417 = shufflevector <4 x i32> %broadcast.splatinsert1416, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1406

vector.body1406:                                  ; preds = %vector.body1406, %polly.loop_header870.11101
  %index1408 = phi i64 [ 0, %polly.loop_header870.11101 ], [ %index.next1409, %vector.body1406 ]
  %vec.ind1414 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header870.11101 ], [ %vec.ind.next1415, %vector.body1406 ]
  %325 = mul <4 x i32> %vec.ind1414, %broadcast.splat1417
  %326 = add <4 x i32> %325, <i32 1, i32 1, i32 1, i32 1>
  %327 = urem <4 x i32> %326, <i32 80, i32 80, i32 80, i32 80>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %330 = shl i64 %index1408, 3
  %331 = add i64 %330, %323
  %332 = getelementptr i8, i8* %call1, i64 %331
  %333 = bitcast i8* %332 to <4 x double>*
  store <4 x double> %329, <4 x double>* %333, align 8, !alias.scope !102, !noalias !107
  %index.next1409 = add i64 %index1408, 4
  %vec.ind.next1415 = add <4 x i32> %vec.ind1414, <i32 4, i32 4, i32 4, i32 4>
  %334 = icmp eq i64 %index.next1409, 32
  br i1 %334, label %polly.loop_exit878.11112, label %vector.body1406, !llvm.loop !110

polly.loop_exit878.11112:                         ; preds = %vector.body1406
  %polly.indvar_next874.11110 = add nuw nsw i64 %polly.indvar873.11100, 1
  %exitcond1075.11111.not = icmp eq i64 %polly.indvar_next874.11110, 32
  br i1 %exitcond1075.11111.not, label %polly.loop_header870.1.1, label %polly.loop_header870.11101

polly.loop_header870.1.1:                         ; preds = %polly.loop_exit878.11112, %polly.loop_exit878.1.1
  %polly.indvar873.1.1 = phi i64 [ %polly.indvar_next874.1.1, %polly.loop_exit878.1.1 ], [ 0, %polly.loop_exit878.11112 ]
  %335 = add nuw nsw i64 %polly.indvar873.1.1, 32
  %336 = mul nuw nsw i64 %335, 480
  %337 = trunc i64 %335 to i32
  %broadcast.splatinsert1428 = insertelement <4 x i32> poison, i32 %337, i32 0
  %broadcast.splat1429 = shufflevector <4 x i32> %broadcast.splatinsert1428, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1420

vector.body1420:                                  ; preds = %vector.body1420, %polly.loop_header870.1.1
  %index1422 = phi i64 [ 0, %polly.loop_header870.1.1 ], [ %index.next1423, %vector.body1420 ]
  %vec.ind1426 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header870.1.1 ], [ %vec.ind.next1427, %vector.body1420 ]
  %338 = add nuw nsw <4 x i64> %vec.ind1426, <i64 32, i64 32, i64 32, i64 32>
  %339 = trunc <4 x i64> %338 to <4 x i32>
  %340 = mul <4 x i32> %broadcast.splat1429, %339
  %341 = add <4 x i32> %340, <i32 1, i32 1, i32 1, i32 1>
  %342 = urem <4 x i32> %341, <i32 80, i32 80, i32 80, i32 80>
  %343 = sitofp <4 x i32> %342 to <4 x double>
  %344 = fmul fast <4 x double> %343, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %345 = extractelement <4 x i64> %338, i32 0
  %346 = shl i64 %345, 3
  %347 = add i64 %346, %336
  %348 = getelementptr i8, i8* %call1, i64 %347
  %349 = bitcast i8* %348 to <4 x double>*
  store <4 x double> %344, <4 x double>* %349, align 8, !alias.scope !102, !noalias !107
  %index.next1423 = add i64 %index1422, 4
  %vec.ind.next1427 = add <4 x i64> %vec.ind1426, <i64 4, i64 4, i64 4, i64 4>
  %350 = icmp eq i64 %index.next1423, 28
  br i1 %350, label %polly.loop_exit878.1.1, label %vector.body1420, !llvm.loop !111

polly.loop_exit878.1.1:                           ; preds = %vector.body1420
  %polly.indvar_next874.1.1 = add nuw nsw i64 %polly.indvar873.1.1, 1
  %exitcond1075.1.1.not = icmp eq i64 %polly.indvar_next874.1.1, 32
  br i1 %exitcond1075.1.1.not, label %polly.loop_header870.2, label %polly.loop_header870.1.1

polly.loop_header870.2:                           ; preds = %polly.loop_exit878.1.1, %polly.loop_exit878.2
  %polly.indvar873.2 = phi i64 [ %polly.indvar_next874.2, %polly.loop_exit878.2 ], [ 0, %polly.loop_exit878.1.1 ]
  %351 = add nuw nsw i64 %polly.indvar873.2, 64
  %352 = mul nuw nsw i64 %351, 480
  %353 = trunc i64 %351 to i32
  %broadcast.splatinsert1442 = insertelement <4 x i32> poison, i32 %353, i32 0
  %broadcast.splat1443 = shufflevector <4 x i32> %broadcast.splatinsert1442, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1432

vector.body1432:                                  ; preds = %vector.body1432, %polly.loop_header870.2
  %index1434 = phi i64 [ 0, %polly.loop_header870.2 ], [ %index.next1435, %vector.body1432 ]
  %vec.ind1440 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header870.2 ], [ %vec.ind.next1441, %vector.body1432 ]
  %354 = mul <4 x i32> %vec.ind1440, %broadcast.splat1443
  %355 = add <4 x i32> %354, <i32 1, i32 1, i32 1, i32 1>
  %356 = urem <4 x i32> %355, <i32 80, i32 80, i32 80, i32 80>
  %357 = sitofp <4 x i32> %356 to <4 x double>
  %358 = fmul fast <4 x double> %357, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %359 = shl i64 %index1434, 3
  %360 = add i64 %359, %352
  %361 = getelementptr i8, i8* %call1, i64 %360
  %362 = bitcast i8* %361 to <4 x double>*
  store <4 x double> %358, <4 x double>* %362, align 8, !alias.scope !102, !noalias !107
  %index.next1435 = add i64 %index1434, 4
  %vec.ind.next1441 = add <4 x i32> %vec.ind1440, <i32 4, i32 4, i32 4, i32 4>
  %363 = icmp eq i64 %index.next1435, 32
  br i1 %363, label %polly.loop_exit878.2, label %vector.body1432, !llvm.loop !112

polly.loop_exit878.2:                             ; preds = %vector.body1432
  %polly.indvar_next874.2 = add nuw nsw i64 %polly.indvar873.2, 1
  %exitcond1075.2.not = icmp eq i64 %polly.indvar_next874.2, 16
  br i1 %exitcond1075.2.not, label %polly.loop_header870.1.2, label %polly.loop_header870.2

polly.loop_header870.1.2:                         ; preds = %polly.loop_exit878.2, %polly.loop_exit878.1.2
  %polly.indvar873.1.2 = phi i64 [ %polly.indvar_next874.1.2, %polly.loop_exit878.1.2 ], [ 0, %polly.loop_exit878.2 ]
  %364 = add nuw nsw i64 %polly.indvar873.1.2, 64
  %365 = mul nuw nsw i64 %364, 480
  %366 = trunc i64 %364 to i32
  %broadcast.splatinsert1454 = insertelement <4 x i32> poison, i32 %366, i32 0
  %broadcast.splat1455 = shufflevector <4 x i32> %broadcast.splatinsert1454, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1446

vector.body1446:                                  ; preds = %vector.body1446, %polly.loop_header870.1.2
  %index1448 = phi i64 [ 0, %polly.loop_header870.1.2 ], [ %index.next1449, %vector.body1446 ]
  %vec.ind1452 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header870.1.2 ], [ %vec.ind.next1453, %vector.body1446 ]
  %367 = add nuw nsw <4 x i64> %vec.ind1452, <i64 32, i64 32, i64 32, i64 32>
  %368 = trunc <4 x i64> %367 to <4 x i32>
  %369 = mul <4 x i32> %broadcast.splat1455, %368
  %370 = add <4 x i32> %369, <i32 1, i32 1, i32 1, i32 1>
  %371 = urem <4 x i32> %370, <i32 80, i32 80, i32 80, i32 80>
  %372 = sitofp <4 x i32> %371 to <4 x double>
  %373 = fmul fast <4 x double> %372, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %374 = extractelement <4 x i64> %367, i32 0
  %375 = shl i64 %374, 3
  %376 = add i64 %375, %365
  %377 = getelementptr i8, i8* %call1, i64 %376
  %378 = bitcast i8* %377 to <4 x double>*
  store <4 x double> %373, <4 x double>* %378, align 8, !alias.scope !102, !noalias !107
  %index.next1449 = add i64 %index1448, 4
  %vec.ind.next1453 = add <4 x i64> %vec.ind1452, <i64 4, i64 4, i64 4, i64 4>
  %379 = icmp eq i64 %index.next1449, 28
  br i1 %379, label %polly.loop_exit878.1.2, label %vector.body1446, !llvm.loop !113

polly.loop_exit878.1.2:                           ; preds = %vector.body1446
  %polly.indvar_next874.1.2 = add nuw nsw i64 %polly.indvar873.1.2, 1
  %exitcond1075.1.2.not = icmp eq i64 %polly.indvar_next874.1.2, 16
  br i1 %exitcond1075.1.2.not, label %init_array.exit, label %polly.loop_header870.1.2

polly.loop_header844.1:                           ; preds = %polly.loop_exit852, %polly.loop_exit852.1
  %polly.indvar847.1 = phi i64 [ %polly.indvar_next848.1, %polly.loop_exit852.1 ], [ 0, %polly.loop_exit852 ]
  %380 = mul nuw nsw i64 %polly.indvar847.1, 480
  %381 = trunc i64 %polly.indvar847.1 to i32
  %broadcast.splatinsert1324 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat1325 = shufflevector <4 x i32> %broadcast.splatinsert1324, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1316

vector.body1316:                                  ; preds = %vector.body1316, %polly.loop_header844.1
  %index1318 = phi i64 [ 0, %polly.loop_header844.1 ], [ %index.next1319, %vector.body1316 ]
  %vec.ind1322 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header844.1 ], [ %vec.ind.next1323, %vector.body1316 ]
  %382 = add nuw nsw <4 x i64> %vec.ind1322, <i64 32, i64 32, i64 32, i64 32>
  %383 = trunc <4 x i64> %382 to <4 x i32>
  %384 = mul <4 x i32> %broadcast.splat1325, %383
  %385 = add <4 x i32> %384, <i32 2, i32 2, i32 2, i32 2>
  %386 = urem <4 x i32> %385, <i32 60, i32 60, i32 60, i32 60>
  %387 = sitofp <4 x i32> %386 to <4 x double>
  %388 = fmul fast <4 x double> %387, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %389 = extractelement <4 x i64> %382, i32 0
  %390 = shl i64 %389, 3
  %391 = add i64 %390, %380
  %392 = getelementptr i8, i8* %call2, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %388, <4 x double>* %393, align 8, !alias.scope !103, !noalias !105
  %index.next1319 = add i64 %index1318, 4
  %vec.ind.next1323 = add <4 x i64> %vec.ind1322, <i64 4, i64 4, i64 4, i64 4>
  %394 = icmp eq i64 %index.next1319, 28
  br i1 %394, label %polly.loop_exit852.1, label %vector.body1316, !llvm.loop !114

polly.loop_exit852.1:                             ; preds = %vector.body1316
  %polly.indvar_next848.1 = add nuw nsw i64 %polly.indvar847.1, 1
  %exitcond1081.1.not = icmp eq i64 %polly.indvar_next848.1, 32
  br i1 %exitcond1081.1.not, label %polly.loop_header844.11115, label %polly.loop_header844.1

polly.loop_header844.11115:                       ; preds = %polly.loop_exit852.1, %polly.loop_exit852.11126
  %polly.indvar847.11114 = phi i64 [ %polly.indvar_next848.11124, %polly.loop_exit852.11126 ], [ 0, %polly.loop_exit852.1 ]
  %395 = add nuw nsw i64 %polly.indvar847.11114, 32
  %396 = mul nuw nsw i64 %395, 480
  %397 = trunc i64 %395 to i32
  %broadcast.splatinsert1338 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat1339 = shufflevector <4 x i32> %broadcast.splatinsert1338, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1328

vector.body1328:                                  ; preds = %vector.body1328, %polly.loop_header844.11115
  %index1330 = phi i64 [ 0, %polly.loop_header844.11115 ], [ %index.next1331, %vector.body1328 ]
  %vec.ind1336 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header844.11115 ], [ %vec.ind.next1337, %vector.body1328 ]
  %398 = mul <4 x i32> %vec.ind1336, %broadcast.splat1339
  %399 = add <4 x i32> %398, <i32 2, i32 2, i32 2, i32 2>
  %400 = urem <4 x i32> %399, <i32 60, i32 60, i32 60, i32 60>
  %401 = sitofp <4 x i32> %400 to <4 x double>
  %402 = fmul fast <4 x double> %401, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %403 = shl i64 %index1330, 3
  %404 = add i64 %403, %396
  %405 = getelementptr i8, i8* %call2, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %402, <4 x double>* %406, align 8, !alias.scope !103, !noalias !105
  %index.next1331 = add i64 %index1330, 4
  %vec.ind.next1337 = add <4 x i32> %vec.ind1336, <i32 4, i32 4, i32 4, i32 4>
  %407 = icmp eq i64 %index.next1331, 32
  br i1 %407, label %polly.loop_exit852.11126, label %vector.body1328, !llvm.loop !115

polly.loop_exit852.11126:                         ; preds = %vector.body1328
  %polly.indvar_next848.11124 = add nuw nsw i64 %polly.indvar847.11114, 1
  %exitcond1081.11125.not = icmp eq i64 %polly.indvar_next848.11124, 32
  br i1 %exitcond1081.11125.not, label %polly.loop_header844.1.1, label %polly.loop_header844.11115

polly.loop_header844.1.1:                         ; preds = %polly.loop_exit852.11126, %polly.loop_exit852.1.1
  %polly.indvar847.1.1 = phi i64 [ %polly.indvar_next848.1.1, %polly.loop_exit852.1.1 ], [ 0, %polly.loop_exit852.11126 ]
  %408 = add nuw nsw i64 %polly.indvar847.1.1, 32
  %409 = mul nuw nsw i64 %408, 480
  %410 = trunc i64 %408 to i32
  %broadcast.splatinsert1350 = insertelement <4 x i32> poison, i32 %410, i32 0
  %broadcast.splat1351 = shufflevector <4 x i32> %broadcast.splatinsert1350, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %polly.loop_header844.1.1
  %index1344 = phi i64 [ 0, %polly.loop_header844.1.1 ], [ %index.next1345, %vector.body1342 ]
  %vec.ind1348 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header844.1.1 ], [ %vec.ind.next1349, %vector.body1342 ]
  %411 = add nuw nsw <4 x i64> %vec.ind1348, <i64 32, i64 32, i64 32, i64 32>
  %412 = trunc <4 x i64> %411 to <4 x i32>
  %413 = mul <4 x i32> %broadcast.splat1351, %412
  %414 = add <4 x i32> %413, <i32 2, i32 2, i32 2, i32 2>
  %415 = urem <4 x i32> %414, <i32 60, i32 60, i32 60, i32 60>
  %416 = sitofp <4 x i32> %415 to <4 x double>
  %417 = fmul fast <4 x double> %416, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %418 = extractelement <4 x i64> %411, i32 0
  %419 = shl i64 %418, 3
  %420 = add i64 %419, %409
  %421 = getelementptr i8, i8* %call2, i64 %420
  %422 = bitcast i8* %421 to <4 x double>*
  store <4 x double> %417, <4 x double>* %422, align 8, !alias.scope !103, !noalias !105
  %index.next1345 = add i64 %index1344, 4
  %vec.ind.next1349 = add <4 x i64> %vec.ind1348, <i64 4, i64 4, i64 4, i64 4>
  %423 = icmp eq i64 %index.next1345, 28
  br i1 %423, label %polly.loop_exit852.1.1, label %vector.body1342, !llvm.loop !116

polly.loop_exit852.1.1:                           ; preds = %vector.body1342
  %polly.indvar_next848.1.1 = add nuw nsw i64 %polly.indvar847.1.1, 1
  %exitcond1081.1.1.not = icmp eq i64 %polly.indvar_next848.1.1, 32
  br i1 %exitcond1081.1.1.not, label %polly.loop_header844.2, label %polly.loop_header844.1.1

polly.loop_header844.2:                           ; preds = %polly.loop_exit852.1.1, %polly.loop_exit852.2
  %polly.indvar847.2 = phi i64 [ %polly.indvar_next848.2, %polly.loop_exit852.2 ], [ 0, %polly.loop_exit852.1.1 ]
  %424 = add nuw nsw i64 %polly.indvar847.2, 64
  %425 = mul nuw nsw i64 %424, 480
  %426 = trunc i64 %424 to i32
  %broadcast.splatinsert1364 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat1365 = shufflevector <4 x i32> %broadcast.splatinsert1364, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %polly.loop_header844.2
  %index1356 = phi i64 [ 0, %polly.loop_header844.2 ], [ %index.next1357, %vector.body1354 ]
  %vec.ind1362 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header844.2 ], [ %vec.ind.next1363, %vector.body1354 ]
  %427 = mul <4 x i32> %vec.ind1362, %broadcast.splat1365
  %428 = add <4 x i32> %427, <i32 2, i32 2, i32 2, i32 2>
  %429 = urem <4 x i32> %428, <i32 60, i32 60, i32 60, i32 60>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %432 = shl i64 %index1356, 3
  %433 = add i64 %432, %425
  %434 = getelementptr i8, i8* %call2, i64 %433
  %435 = bitcast i8* %434 to <4 x double>*
  store <4 x double> %431, <4 x double>* %435, align 8, !alias.scope !103, !noalias !105
  %index.next1357 = add i64 %index1356, 4
  %vec.ind.next1363 = add <4 x i32> %vec.ind1362, <i32 4, i32 4, i32 4, i32 4>
  %436 = icmp eq i64 %index.next1357, 32
  br i1 %436, label %polly.loop_exit852.2, label %vector.body1354, !llvm.loop !117

polly.loop_exit852.2:                             ; preds = %vector.body1354
  %polly.indvar_next848.2 = add nuw nsw i64 %polly.indvar847.2, 1
  %exitcond1081.2.not = icmp eq i64 %polly.indvar_next848.2, 16
  br i1 %exitcond1081.2.not, label %polly.loop_header844.1.2, label %polly.loop_header844.2

polly.loop_header844.1.2:                         ; preds = %polly.loop_exit852.2, %polly.loop_exit852.1.2
  %polly.indvar847.1.2 = phi i64 [ %polly.indvar_next848.1.2, %polly.loop_exit852.1.2 ], [ 0, %polly.loop_exit852.2 ]
  %437 = add nuw nsw i64 %polly.indvar847.1.2, 64
  %438 = mul nuw nsw i64 %437, 480
  %439 = trunc i64 %437 to i32
  %broadcast.splatinsert1376 = insertelement <4 x i32> poison, i32 %439, i32 0
  %broadcast.splat1377 = shufflevector <4 x i32> %broadcast.splatinsert1376, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1368

vector.body1368:                                  ; preds = %vector.body1368, %polly.loop_header844.1.2
  %index1370 = phi i64 [ 0, %polly.loop_header844.1.2 ], [ %index.next1371, %vector.body1368 ]
  %vec.ind1374 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header844.1.2 ], [ %vec.ind.next1375, %vector.body1368 ]
  %440 = add nuw nsw <4 x i64> %vec.ind1374, <i64 32, i64 32, i64 32, i64 32>
  %441 = trunc <4 x i64> %440 to <4 x i32>
  %442 = mul <4 x i32> %broadcast.splat1377, %441
  %443 = add <4 x i32> %442, <i32 2, i32 2, i32 2, i32 2>
  %444 = urem <4 x i32> %443, <i32 60, i32 60, i32 60, i32 60>
  %445 = sitofp <4 x i32> %444 to <4 x double>
  %446 = fmul fast <4 x double> %445, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %447 = extractelement <4 x i64> %440, i32 0
  %448 = shl i64 %447, 3
  %449 = add i64 %448, %438
  %450 = getelementptr i8, i8* %call2, i64 %449
  %451 = bitcast i8* %450 to <4 x double>*
  store <4 x double> %446, <4 x double>* %451, align 8, !alias.scope !103, !noalias !105
  %index.next1371 = add i64 %index1370, 4
  %vec.ind.next1375 = add <4 x i64> %vec.ind1374, <i64 4, i64 4, i64 4, i64 4>
  %452 = icmp eq i64 %index.next1371, 28
  br i1 %452, label %polly.loop_exit852.1.2, label %vector.body1368, !llvm.loop !118

polly.loop_exit852.1.2:                           ; preds = %vector.body1368
  %polly.indvar_next848.1.2 = add nuw nsw i64 %polly.indvar847.1.2, 1
  %exitcond1081.1.2.not = icmp eq i64 %polly.indvar_next848.1.2, 16
  br i1 %exitcond1081.1.2.not, label %polly.loop_header870, label %polly.loop_header844.1.2

polly.loop_header817.1:                           ; preds = %polly.loop_exit825, %polly.loop_exit825.1
  %polly.indvar820.1 = phi i64 [ %polly.indvar_next821.1, %polly.loop_exit825.1 ], [ 0, %polly.loop_exit825 ]
  %453 = mul nuw nsw i64 %polly.indvar820.1, 640
  %454 = trunc i64 %polly.indvar820.1 to i32
  %broadcast.splatinsert1210 = insertelement <4 x i32> poison, i32 %454, i32 0
  %broadcast.splat1211 = shufflevector <4 x i32> %broadcast.splatinsert1210, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %polly.loop_header817.1
  %index1204 = phi i64 [ 0, %polly.loop_header817.1 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1208 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1 ], [ %vec.ind.next1209, %vector.body1202 ]
  %455 = add nuw nsw <4 x i64> %vec.ind1208, <i64 32, i64 32, i64 32, i64 32>
  %456 = trunc <4 x i64> %455 to <4 x i32>
  %457 = mul <4 x i32> %broadcast.splat1211, %456
  %458 = add <4 x i32> %457, <i32 3, i32 3, i32 3, i32 3>
  %459 = urem <4 x i32> %458, <i32 80, i32 80, i32 80, i32 80>
  %460 = sitofp <4 x i32> %459 to <4 x double>
  %461 = fmul fast <4 x double> %460, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %462 = extractelement <4 x i64> %455, i32 0
  %463 = shl i64 %462, 3
  %464 = add nuw nsw i64 %463, %453
  %465 = getelementptr i8, i8* %call, i64 %464
  %466 = bitcast i8* %465 to <4 x double>*
  store <4 x double> %461, <4 x double>* %466, align 8, !alias.scope !99, !noalias !101
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1209 = add <4 x i64> %vec.ind1208, <i64 4, i64 4, i64 4, i64 4>
  %467 = icmp eq i64 %index.next1205, 32
  br i1 %467, label %polly.loop_exit825.1, label %vector.body1202, !llvm.loop !119

polly.loop_exit825.1:                             ; preds = %vector.body1202
  %polly.indvar_next821.1 = add nuw nsw i64 %polly.indvar820.1, 1
  %exitcond1090.1.not = icmp eq i64 %polly.indvar_next821.1, 32
  br i1 %exitcond1090.1.not, label %polly.loop_header817.2, label %polly.loop_header817.1

polly.loop_header817.2:                           ; preds = %polly.loop_exit825.1, %polly.loop_exit825.2
  %polly.indvar820.2 = phi i64 [ %polly.indvar_next821.2, %polly.loop_exit825.2 ], [ 0, %polly.loop_exit825.1 ]
  %468 = mul nuw nsw i64 %polly.indvar820.2, 640
  %469 = trunc i64 %polly.indvar820.2 to i32
  %broadcast.splatinsert1222 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1223 = shufflevector <4 x i32> %broadcast.splatinsert1222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.body1214, %polly.loop_header817.2
  %index1216 = phi i64 [ 0, %polly.loop_header817.2 ], [ %index.next1217, %vector.body1214 ]
  %vec.ind1220 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.2 ], [ %vec.ind.next1221, %vector.body1214 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1220, <i64 64, i64 64, i64 64, i64 64>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1223, %471
  %473 = add <4 x i32> %472, <i32 3, i32 3, i32 3, i32 3>
  %474 = urem <4 x i32> %473, <i32 80, i32 80, i32 80, i32 80>
  %475 = sitofp <4 x i32> %474 to <4 x double>
  %476 = fmul fast <4 x double> %475, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %477 = extractelement <4 x i64> %470, i32 0
  %478 = shl i64 %477, 3
  %479 = add nuw nsw i64 %478, %468
  %480 = getelementptr i8, i8* %call, i64 %479
  %481 = bitcast i8* %480 to <4 x double>*
  store <4 x double> %476, <4 x double>* %481, align 8, !alias.scope !99, !noalias !101
  %index.next1217 = add i64 %index1216, 4
  %vec.ind.next1221 = add <4 x i64> %vec.ind1220, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1217, 16
  br i1 %482, label %polly.loop_exit825.2, label %vector.body1214, !llvm.loop !120

polly.loop_exit825.2:                             ; preds = %vector.body1214
  %polly.indvar_next821.2 = add nuw nsw i64 %polly.indvar820.2, 1
  %exitcond1090.2.not = icmp eq i64 %polly.indvar_next821.2, 32
  br i1 %exitcond1090.2.not, label %polly.loop_header817.11129, label %polly.loop_header817.2

polly.loop_header817.11129:                       ; preds = %polly.loop_exit825.2, %polly.loop_exit825.11140
  %polly.indvar820.11128 = phi i64 [ %polly.indvar_next821.11138, %polly.loop_exit825.11140 ], [ 0, %polly.loop_exit825.2 ]
  %483 = add nuw nsw i64 %polly.indvar820.11128, 32
  %484 = mul nuw nsw i64 %483, 640
  %485 = trunc i64 %483 to i32
  %broadcast.splatinsert1236 = insertelement <4 x i32> poison, i32 %485, i32 0
  %broadcast.splat1237 = shufflevector <4 x i32> %broadcast.splatinsert1236, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %polly.loop_header817.11129
  %index1228 = phi i64 [ 0, %polly.loop_header817.11129 ], [ %index.next1229, %vector.body1226 ]
  %vec.ind1234 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817.11129 ], [ %vec.ind.next1235, %vector.body1226 ]
  %486 = mul <4 x i32> %vec.ind1234, %broadcast.splat1237
  %487 = add <4 x i32> %486, <i32 3, i32 3, i32 3, i32 3>
  %488 = urem <4 x i32> %487, <i32 80, i32 80, i32 80, i32 80>
  %489 = sitofp <4 x i32> %488 to <4 x double>
  %490 = fmul fast <4 x double> %489, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %491 = shl i64 %index1228, 3
  %492 = add nuw nsw i64 %491, %484
  %493 = getelementptr i8, i8* %call, i64 %492
  %494 = bitcast i8* %493 to <4 x double>*
  store <4 x double> %490, <4 x double>* %494, align 8, !alias.scope !99, !noalias !101
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1235 = add <4 x i32> %vec.ind1234, <i32 4, i32 4, i32 4, i32 4>
  %495 = icmp eq i64 %index.next1229, 32
  br i1 %495, label %polly.loop_exit825.11140, label %vector.body1226, !llvm.loop !121

polly.loop_exit825.11140:                         ; preds = %vector.body1226
  %polly.indvar_next821.11138 = add nuw nsw i64 %polly.indvar820.11128, 1
  %exitcond1090.11139.not = icmp eq i64 %polly.indvar_next821.11138, 32
  br i1 %exitcond1090.11139.not, label %polly.loop_header817.1.1, label %polly.loop_header817.11129

polly.loop_header817.1.1:                         ; preds = %polly.loop_exit825.11140, %polly.loop_exit825.1.1
  %polly.indvar820.1.1 = phi i64 [ %polly.indvar_next821.1.1, %polly.loop_exit825.1.1 ], [ 0, %polly.loop_exit825.11140 ]
  %496 = add nuw nsw i64 %polly.indvar820.1.1, 32
  %497 = mul nuw nsw i64 %496, 640
  %498 = trunc i64 %496 to i32
  %broadcast.splatinsert1248 = insertelement <4 x i32> poison, i32 %498, i32 0
  %broadcast.splat1249 = shufflevector <4 x i32> %broadcast.splatinsert1248, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1240

vector.body1240:                                  ; preds = %vector.body1240, %polly.loop_header817.1.1
  %index1242 = phi i64 [ 0, %polly.loop_header817.1.1 ], [ %index.next1243, %vector.body1240 ]
  %vec.ind1246 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1.1 ], [ %vec.ind.next1247, %vector.body1240 ]
  %499 = add nuw nsw <4 x i64> %vec.ind1246, <i64 32, i64 32, i64 32, i64 32>
  %500 = trunc <4 x i64> %499 to <4 x i32>
  %501 = mul <4 x i32> %broadcast.splat1249, %500
  %502 = add <4 x i32> %501, <i32 3, i32 3, i32 3, i32 3>
  %503 = urem <4 x i32> %502, <i32 80, i32 80, i32 80, i32 80>
  %504 = sitofp <4 x i32> %503 to <4 x double>
  %505 = fmul fast <4 x double> %504, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %506 = extractelement <4 x i64> %499, i32 0
  %507 = shl i64 %506, 3
  %508 = add nuw nsw i64 %507, %497
  %509 = getelementptr i8, i8* %call, i64 %508
  %510 = bitcast i8* %509 to <4 x double>*
  store <4 x double> %505, <4 x double>* %510, align 8, !alias.scope !99, !noalias !101
  %index.next1243 = add i64 %index1242, 4
  %vec.ind.next1247 = add <4 x i64> %vec.ind1246, <i64 4, i64 4, i64 4, i64 4>
  %511 = icmp eq i64 %index.next1243, 32
  br i1 %511, label %polly.loop_exit825.1.1, label %vector.body1240, !llvm.loop !122

polly.loop_exit825.1.1:                           ; preds = %vector.body1240
  %polly.indvar_next821.1.1 = add nuw nsw i64 %polly.indvar820.1.1, 1
  %exitcond1090.1.1.not = icmp eq i64 %polly.indvar_next821.1.1, 32
  br i1 %exitcond1090.1.1.not, label %polly.loop_header817.2.1, label %polly.loop_header817.1.1

polly.loop_header817.2.1:                         ; preds = %polly.loop_exit825.1.1, %polly.loop_exit825.2.1
  %polly.indvar820.2.1 = phi i64 [ %polly.indvar_next821.2.1, %polly.loop_exit825.2.1 ], [ 0, %polly.loop_exit825.1.1 ]
  %512 = add nuw nsw i64 %polly.indvar820.2.1, 32
  %513 = mul nuw nsw i64 %512, 640
  %514 = trunc i64 %512 to i32
  %broadcast.splatinsert1260 = insertelement <4 x i32> poison, i32 %514, i32 0
  %broadcast.splat1261 = shufflevector <4 x i32> %broadcast.splatinsert1260, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %polly.loop_header817.2.1
  %index1254 = phi i64 [ 0, %polly.loop_header817.2.1 ], [ %index.next1255, %vector.body1252 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.2.1 ], [ %vec.ind.next1259, %vector.body1252 ]
  %515 = add nuw nsw <4 x i64> %vec.ind1258, <i64 64, i64 64, i64 64, i64 64>
  %516 = trunc <4 x i64> %515 to <4 x i32>
  %517 = mul <4 x i32> %broadcast.splat1261, %516
  %518 = add <4 x i32> %517, <i32 3, i32 3, i32 3, i32 3>
  %519 = urem <4 x i32> %518, <i32 80, i32 80, i32 80, i32 80>
  %520 = sitofp <4 x i32> %519 to <4 x double>
  %521 = fmul fast <4 x double> %520, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %522 = extractelement <4 x i64> %515, i32 0
  %523 = shl i64 %522, 3
  %524 = add nuw nsw i64 %523, %513
  %525 = getelementptr i8, i8* %call, i64 %524
  %526 = bitcast i8* %525 to <4 x double>*
  store <4 x double> %521, <4 x double>* %526, align 8, !alias.scope !99, !noalias !101
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %527 = icmp eq i64 %index.next1255, 16
  br i1 %527, label %polly.loop_exit825.2.1, label %vector.body1252, !llvm.loop !123

polly.loop_exit825.2.1:                           ; preds = %vector.body1252
  %polly.indvar_next821.2.1 = add nuw nsw i64 %polly.indvar820.2.1, 1
  %exitcond1090.2.1.not = icmp eq i64 %polly.indvar_next821.2.1, 32
  br i1 %exitcond1090.2.1.not, label %polly.loop_header817.21143, label %polly.loop_header817.2.1

polly.loop_header817.21143:                       ; preds = %polly.loop_exit825.2.1, %polly.loop_exit825.21154
  %polly.indvar820.21142 = phi i64 [ %polly.indvar_next821.21152, %polly.loop_exit825.21154 ], [ 0, %polly.loop_exit825.2.1 ]
  %528 = add nuw nsw i64 %polly.indvar820.21142, 64
  %529 = mul nuw nsw i64 %528, 640
  %530 = trunc i64 %528 to i32
  %broadcast.splatinsert1274 = insertelement <4 x i32> poison, i32 %530, i32 0
  %broadcast.splat1275 = shufflevector <4 x i32> %broadcast.splatinsert1274, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %polly.loop_header817.21143
  %index1266 = phi i64 [ 0, %polly.loop_header817.21143 ], [ %index.next1267, %vector.body1264 ]
  %vec.ind1272 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817.21143 ], [ %vec.ind.next1273, %vector.body1264 ]
  %531 = mul <4 x i32> %vec.ind1272, %broadcast.splat1275
  %532 = add <4 x i32> %531, <i32 3, i32 3, i32 3, i32 3>
  %533 = urem <4 x i32> %532, <i32 80, i32 80, i32 80, i32 80>
  %534 = sitofp <4 x i32> %533 to <4 x double>
  %535 = fmul fast <4 x double> %534, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %536 = shl i64 %index1266, 3
  %537 = add nuw nsw i64 %536, %529
  %538 = getelementptr i8, i8* %call, i64 %537
  %539 = bitcast i8* %538 to <4 x double>*
  store <4 x double> %535, <4 x double>* %539, align 8, !alias.scope !99, !noalias !101
  %index.next1267 = add i64 %index1266, 4
  %vec.ind.next1273 = add <4 x i32> %vec.ind1272, <i32 4, i32 4, i32 4, i32 4>
  %540 = icmp eq i64 %index.next1267, 32
  br i1 %540, label %polly.loop_exit825.21154, label %vector.body1264, !llvm.loop !124

polly.loop_exit825.21154:                         ; preds = %vector.body1264
  %polly.indvar_next821.21152 = add nuw nsw i64 %polly.indvar820.21142, 1
  %exitcond1090.21153.not = icmp eq i64 %polly.indvar_next821.21152, 16
  br i1 %exitcond1090.21153.not, label %polly.loop_header817.1.2, label %polly.loop_header817.21143

polly.loop_header817.1.2:                         ; preds = %polly.loop_exit825.21154, %polly.loop_exit825.1.2
  %polly.indvar820.1.2 = phi i64 [ %polly.indvar_next821.1.2, %polly.loop_exit825.1.2 ], [ 0, %polly.loop_exit825.21154 ]
  %541 = add nuw nsw i64 %polly.indvar820.1.2, 64
  %542 = mul nuw nsw i64 %541, 640
  %543 = trunc i64 %541 to i32
  %broadcast.splatinsert1286 = insertelement <4 x i32> poison, i32 %543, i32 0
  %broadcast.splat1287 = shufflevector <4 x i32> %broadcast.splatinsert1286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1278

vector.body1278:                                  ; preds = %vector.body1278, %polly.loop_header817.1.2
  %index1280 = phi i64 [ 0, %polly.loop_header817.1.2 ], [ %index.next1281, %vector.body1278 ]
  %vec.ind1284 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1.2 ], [ %vec.ind.next1285, %vector.body1278 ]
  %544 = add nuw nsw <4 x i64> %vec.ind1284, <i64 32, i64 32, i64 32, i64 32>
  %545 = trunc <4 x i64> %544 to <4 x i32>
  %546 = mul <4 x i32> %broadcast.splat1287, %545
  %547 = add <4 x i32> %546, <i32 3, i32 3, i32 3, i32 3>
  %548 = urem <4 x i32> %547, <i32 80, i32 80, i32 80, i32 80>
  %549 = sitofp <4 x i32> %548 to <4 x double>
  %550 = fmul fast <4 x double> %549, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %551 = extractelement <4 x i64> %544, i32 0
  %552 = shl i64 %551, 3
  %553 = add nuw nsw i64 %552, %542
  %554 = getelementptr i8, i8* %call, i64 %553
  %555 = bitcast i8* %554 to <4 x double>*
  store <4 x double> %550, <4 x double>* %555, align 8, !alias.scope !99, !noalias !101
  %index.next1281 = add i64 %index1280, 4
  %vec.ind.next1285 = add <4 x i64> %vec.ind1284, <i64 4, i64 4, i64 4, i64 4>
  %556 = icmp eq i64 %index.next1281, 32
  br i1 %556, label %polly.loop_exit825.1.2, label %vector.body1278, !llvm.loop !125

polly.loop_exit825.1.2:                           ; preds = %vector.body1278
  %polly.indvar_next821.1.2 = add nuw nsw i64 %polly.indvar820.1.2, 1
  %exitcond1090.1.2.not = icmp eq i64 %polly.indvar_next821.1.2, 16
  br i1 %exitcond1090.1.2.not, label %polly.loop_header817.2.2, label %polly.loop_header817.1.2

polly.loop_header817.2.2:                         ; preds = %polly.loop_exit825.1.2, %polly.loop_exit825.2.2
  %polly.indvar820.2.2 = phi i64 [ %polly.indvar_next821.2.2, %polly.loop_exit825.2.2 ], [ 0, %polly.loop_exit825.1.2 ]
  %557 = add nuw nsw i64 %polly.indvar820.2.2, 64
  %558 = mul nuw nsw i64 %557, 640
  %559 = trunc i64 %557 to i32
  %broadcast.splatinsert1298 = insertelement <4 x i32> poison, i32 %559, i32 0
  %broadcast.splat1299 = shufflevector <4 x i32> %broadcast.splatinsert1298, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1290

vector.body1290:                                  ; preds = %vector.body1290, %polly.loop_header817.2.2
  %index1292 = phi i64 [ 0, %polly.loop_header817.2.2 ], [ %index.next1293, %vector.body1290 ]
  %vec.ind1296 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.2.2 ], [ %vec.ind.next1297, %vector.body1290 ]
  %560 = add nuw nsw <4 x i64> %vec.ind1296, <i64 64, i64 64, i64 64, i64 64>
  %561 = trunc <4 x i64> %560 to <4 x i32>
  %562 = mul <4 x i32> %broadcast.splat1299, %561
  %563 = add <4 x i32> %562, <i32 3, i32 3, i32 3, i32 3>
  %564 = urem <4 x i32> %563, <i32 80, i32 80, i32 80, i32 80>
  %565 = sitofp <4 x i32> %564 to <4 x double>
  %566 = fmul fast <4 x double> %565, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %567 = extractelement <4 x i64> %560, i32 0
  %568 = shl i64 %567, 3
  %569 = add nuw nsw i64 %568, %558
  %570 = getelementptr i8, i8* %call, i64 %569
  %571 = bitcast i8* %570 to <4 x double>*
  store <4 x double> %566, <4 x double>* %571, align 8, !alias.scope !99, !noalias !101
  %index.next1293 = add i64 %index1292, 4
  %vec.ind.next1297 = add <4 x i64> %vec.ind1296, <i64 4, i64 4, i64 4, i64 4>
  %572 = icmp eq i64 %index.next1293, 16
  br i1 %572, label %polly.loop_exit825.2.2, label %vector.body1290, !llvm.loop !126

polly.loop_exit825.2.2:                           ; preds = %vector.body1290
  %polly.indvar_next821.2.2 = add nuw nsw i64 %polly.indvar820.2.2, 1
  %exitcond1090.2.2.not = icmp eq i64 %polly.indvar_next821.2.2, 16
  br i1 %exitcond1090.2.2.not, label %polly.loop_header844, label %polly.loop_header817.2.2
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
!34 = !{!"llvm.loop.tile.size", i32 50}
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
!50 = !{!"llvm.loop.tile.size", i32 32}
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
