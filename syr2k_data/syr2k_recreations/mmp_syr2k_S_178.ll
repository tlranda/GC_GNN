; ModuleID = 'syr2k_recreations//mmp_syr2k_S_178.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_178.c"
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
  %call870 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1722 = bitcast i8* %call1 to double*
  %polly.access.call1731 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2732 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1731, %call2
  %polly.access.call2751 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2751, %call1
  %2 = or i1 %0, %1
  %polly.access.call771 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call771, %call2
  %4 = icmp ule i8* %polly.access.call2751, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call771, %call1
  %8 = icmp ule i8* %polly.access.call1731, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header856, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1193 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1192 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1191 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1190 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1190, %scevgep1193
  %bound1 = icmp ult i8* %scevgep1192, %scevgep1191
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
  br i1 %exitcond18.not.i, label %vector.ph1197, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1197:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1204 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1205 = shufflevector <4 x i64> %broadcast.splatinsert1204, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1196

vector.body1196:                                  ; preds = %vector.body1196, %vector.ph1197
  %index1198 = phi i64 [ 0, %vector.ph1197 ], [ %index.next1199, %vector.body1196 ]
  %vec.ind1202 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1197 ], [ %vec.ind.next1203, %vector.body1196 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1202, %broadcast.splat1205
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv7.i, i64 %index1198
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1199 = add i64 %index1198, 4
  %vec.ind.next1203 = add <4 x i64> %vec.ind1202, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1199, 80
  br i1 %40, label %for.inc41.i, label %vector.body1196, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1196
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1197, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit917.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start510, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1687, label %vector.ph1479

vector.ph1479:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1478

vector.body1478:                                  ; preds = %vector.body1478, %vector.ph1479
  %index1480 = phi i64 [ 0, %vector.ph1479 ], [ %index.next1481, %vector.body1478 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i, i64 %index1480
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1481 = add i64 %index1480, 4
  %46 = icmp eq i64 %index.next1481, %n.vec
  br i1 %46, label %middle.block1476, label %vector.body1478, !llvm.loop !18

middle.block1476:                                 ; preds = %vector.body1478
  %cmp.n1483 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1483, label %for.inc6.i, label %for.body3.i46.preheader1687

for.body3.i46.preheader1687:                      ; preds = %for.body3.i46.preheader, %middle.block1476
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1476 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1687, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1687 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1476, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !23

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting511
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start300, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1542 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1542, label %for.body3.i60.preheader1684, label %vector.ph1543

vector.ph1543:                                    ; preds = %for.body3.i60.preheader
  %n.vec1545 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1541

vector.body1541:                                  ; preds = %vector.body1541, %vector.ph1543
  %index1546 = phi i64 [ 0, %vector.ph1543 ], [ %index.next1547, %vector.body1541 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i52, i64 %index1546
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1550 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1550, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1547 = add i64 %index1546, 4
  %57 = icmp eq i64 %index.next1547, %n.vec1545
  br i1 %57, label %middle.block1539, label %vector.body1541, !llvm.loop !56

middle.block1539:                                 ; preds = %vector.body1541
  %cmp.n1549 = icmp eq i64 %indvars.iv21.i52, %n.vec1545
  br i1 %cmp.n1549, label %for.inc6.i63, label %for.body3.i60.preheader1684

for.body3.i60.preheader1684:                      ; preds = %for.body3.i60.preheader, %middle.block1539
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1545, %middle.block1539 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1684, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1684 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1539, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !23

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting301
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1612 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1612, label %for.body3.i99.preheader1681, label %vector.ph1613

vector.ph1613:                                    ; preds = %for.body3.i99.preheader
  %n.vec1615 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1611

vector.body1611:                                  ; preds = %vector.body1611, %vector.ph1613
  %index1616 = phi i64 [ 0, %vector.ph1613 ], [ %index.next1617, %vector.body1611 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i91, i64 %index1616
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1620 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1620, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1617 = add i64 %index1616, 4
  %68 = icmp eq i64 %index.next1617, %n.vec1615
  br i1 %68, label %middle.block1609, label %vector.body1611, !llvm.loop !58

middle.block1609:                                 ; preds = %vector.body1611
  %cmp.n1619 = icmp eq i64 %indvars.iv21.i91, %n.vec1615
  br i1 %cmp.n1619, label %for.inc6.i102, label %for.body3.i99.preheader1681

for.body3.i99.preheader1681:                      ; preds = %for.body3.i99.preheader, %middle.block1609
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1615, %middle.block1609 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1681, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1681 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1609, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !23

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

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
  %75 = load i8*, i8** %argv, align 8, !tbaa !60
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call870, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !62

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !63

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit230.1
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1624 = phi i64 [ %indvar.next1625, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1624, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1626 = icmp ult i64 %88, 4
  br i1 %min.iters.check1626, label %polly.loop_header192.preheader, label %vector.ph1627

vector.ph1627:                                    ; preds = %polly.loop_header
  %n.vec1629 = and i64 %88, -4
  br label %vector.body1623

vector.body1623:                                  ; preds = %vector.body1623, %vector.ph1627
  %index1630 = phi i64 [ 0, %vector.ph1627 ], [ %index.next1631, %vector.body1623 ]
  %90 = shl nuw nsw i64 %index1630, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1634 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1634, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1631 = add i64 %index1630, 4
  %95 = icmp eq i64 %index.next1631, %n.vec1629
  br i1 %95, label %middle.block1621, label %vector.body1623, !llvm.loop !71

middle.block1621:                                 ; preds = %vector.body1623
  %cmp.n1633 = icmp eq i64 %88, %n.vec1629
  br i1 %cmp.n1633, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1621
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1629, %middle.block1621 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1621
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1047.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1625 = add i64 %indvar1624, 1
  br i1 %exitcond1047.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1046.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond1045.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 60
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1044.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond1044.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit230.1
  %97 = phi i1 [ false, %polly.loop_exit230.1 ], [ true, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ 1, %polly.loop_exit230.1 ], [ 0, %polly.loop_exit208 ]
  %98 = shl nuw nsw i64 %polly.indvar219, 1
  %99 = or i64 %98, 1
  %100 = mul nuw nsw i64 %polly.indvar219, -50
  %101 = icmp slt i64 %100, -30
  %102 = select i1 %101, i64 %100, i64 -30
  %103 = add nsw i64 %102, 79
  %104 = mul nuw nsw i64 %polly.indvar219, 50
  %.op = add nuw nsw i64 %99, 1
  %105 = select i1 %97, i64 %.op, i64 3
  br label %polly.loop_header228

polly.loop_header228:                             ; preds = %polly.loop_exit236, %polly.loop_header216
  %indvars.iv1034 = phi i64 [ %indvars.iv.next1035, %polly.loop_exit236 ], [ %104, %polly.loop_header216 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit236 ], [ %100, %polly.loop_header216 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit236 ], [ 0, %polly.loop_header216 ]
  %106 = shl i64 %polly.indvar231, 5
  %107 = add i64 %100, %106
  %smax1660 = call i64 @llvm.smax.i64(i64 %107, i64 0)
  %108 = mul i64 %polly.indvar231, -32
  %109 = add i64 %104, %108
  %110 = add i64 %smax1660, %109
  %111 = shl nsw i64 %polly.indvar231, 5
  %112 = add nsw i64 %111, %100
  %113 = icmp sgt i64 %112, 0
  %114 = select i1 %113, i64 %112, i64 0
  %polly.loop_guard.not = icmp sgt i64 %114, %103
  br i1 %polly.loop_guard.not, label %polly.loop_exit236, label %polly.loop_header234.preheader

polly.loop_header234.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 0)
  %115 = add i64 %smax, %indvars.iv1034
  %116 = sub nsw i64 %104, %111
  %117 = add nuw nsw i64 %111, 32
  br label %polly.loop_header234

polly.loop_exit236:                               ; preds = %polly.loop_exit267, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 32
  %indvars.iv.next1035 = add nsw i64 %indvars.iv1034, -32
  %exitcond1043.not = icmp eq i64 %polly.indvar_next232, %105
  br i1 %exitcond1043.not, label %polly.loop_header228.1, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header234.preheader, %polly.loop_exit267
  %indvar1661 = phi i64 [ 0, %polly.loop_header234.preheader ], [ %indvar.next1662, %polly.loop_exit267 ]
  %indvars.iv1036 = phi i64 [ %115, %polly.loop_header234.preheader ], [ %indvars.iv.next1037, %polly.loop_exit267 ]
  %polly.indvar237 = phi i64 [ %114, %polly.loop_header234.preheader ], [ %polly.indvar_next238, %polly.loop_exit267 ]
  %118 = add i64 %110, %indvar1661
  %smin1663 = call i64 @llvm.smin.i64(i64 %118, i64 31)
  %119 = add nsw i64 %smin1663, 1
  %smin1040 = call i64 @llvm.smin.i64(i64 %indvars.iv1036, i64 31)
  %120 = add nsw i64 %polly.indvar237, %116
  %polly.loop_guard2501168 = icmp sgt i64 %120, -1
  %121 = add nuw nsw i64 %polly.indvar237, %104
  %.not = icmp ult i64 %121, %117
  %polly.access.mul.call1259 = mul nsw i64 %121, 60
  br i1 %polly.loop_guard2501168, label %polly.loop_header240.us, label %polly.loop_header234.split

polly.loop_header240.us:                          ; preds = %polly.loop_header234, %polly.merge.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.merge.us ], [ 0, %polly.loop_header234 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar243.us, 80
  br label %polly.loop_header247.us

polly.loop_header247.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header247.us
  %polly.indvar251.us = phi i64 [ %polly.indvar_next252.us, %polly.loop_header247.us ], [ 0, %polly.loop_header240.us ]
  %122 = add nuw nsw i64 %polly.indvar251.us, %111
  %polly.access.mul.call1255.us = mul nuw nsw i64 %122, 60
  %polly.access.add.call1256.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.call1255.us
  %polly.access.call1257.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1256.us
  %polly.access.call1257.load.us = load double, double* %polly.access.call1257.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar251.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1257.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next252.us = add nuw nsw i64 %polly.indvar251.us, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar251.us, %smin1040
  br i1 %exitcond1038.not, label %polly.cond.loopexit.us, label %polly.loop_header247.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1260.us = add nuw nsw i64 %polly.access.mul.call1259, %polly.indvar243.us
  %polly.access.call1261.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.us
  %polly.access.call1261.load.us = load double, double* %polly.access.call1261.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1263.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %120
  %polly.access.Packed_MemRef_call1264.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us
  store double %polly.access.call1261.load.us, double* %polly.access.Packed_MemRef_call1264.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next244.us, 32
  br i1 %exitcond1039.not, label %polly.loop_header265.preheader, label %polly.loop_header240.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header247.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header234.split:                       ; preds = %polly.loop_header234
  br i1 %.not, label %polly.loop_exit267, label %polly.loop_header240

polly.loop_exit267:                               ; preds = %polly.loop_exit274.loopexit.us, %polly.loop_header234.split, %polly.loop_header265.preheader
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %polly.loop_cond239.not.not = icmp ult i64 %polly.indvar237, %103
  %indvars.iv.next1037 = add i64 %indvars.iv1036, 1
  %indvar.next1662 = add i64 %indvar1661, 1
  br i1 %polly.loop_cond239.not.not, label %polly.loop_header234, label %polly.loop_exit236

polly.loop_header240:                             ; preds = %polly.loop_header234.split, %polly.loop_header240
  %polly.indvar243 = phi i64 [ %polly.indvar_next244, %polly.loop_header240 ], [ 0, %polly.loop_header234.split ]
  %polly.access.add.call1260 = add nuw nsw i64 %polly.access.mul.call1259, %polly.indvar243
  %polly.access.call1261 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260
  %polly.access.call1261.load = load double, double* %polly.access.call1261, align 8, !alias.scope !67, !noalias !75
  %polly.access.mul.Packed_MemRef_call1262 = mul nuw nsw i64 %polly.indvar243, 80
  %polly.access.add.Packed_MemRef_call1263 = add nsw i64 %polly.access.mul.Packed_MemRef_call1262, %120
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263
  store double %polly.access.call1261.load, double* %polly.access.Packed_MemRef_call1264, align 8
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next244, 32
  br i1 %exitcond.not, label %polly.loop_header265.preheader, label %polly.loop_header240

polly.loop_header265.preheader:                   ; preds = %polly.loop_header240, %polly.merge.us
  %123 = mul i64 %121, 640
  br i1 %polly.loop_guard2501168, label %polly.loop_header265.us, label %polly.loop_exit267

polly.loop_header265.us:                          ; preds = %polly.loop_header265.preheader, %polly.loop_exit274.loopexit.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_exit274.loopexit.us ], [ 0, %polly.loop_header265.preheader ]
  %polly.access.mul.Packed_MemRef_call1279.us = mul nuw nsw i64 %polly.indvar268.us, 80
  %polly.access.add.Packed_MemRef_call2284.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1279.us, %121
  %polly.access.Packed_MemRef_call2285.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call2285.us, align 8
  %polly.access.add.Packed_MemRef_call1292.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1279.us, %120
  %polly.access.Packed_MemRef_call1293.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us
  %_p_scalar_294.us = load double, double* %polly.access.Packed_MemRef_call1293.us, align 8
  %min.iters.check1664 = icmp ult i64 %119, 4
  br i1 %min.iters.check1664, label %polly.loop_header272.us.preheader, label %vector.ph1665

vector.ph1665:                                    ; preds = %polly.loop_header265.us
  %n.vec1667 = and i64 %119, -4
  %broadcast.splatinsert1673 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1674 = shufflevector <4 x double> %broadcast.splatinsert1673, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1676 = insertelement <4 x double> poison, double %_p_scalar_294.us, i32 0
  %broadcast.splat1677 = shufflevector <4 x double> %broadcast.splatinsert1676, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1659

vector.body1659:                                  ; preds = %vector.body1659, %vector.ph1665
  %index1668 = phi i64 [ 0, %vector.ph1665 ], [ %index.next1669, %vector.body1659 ]
  %124 = add nuw nsw i64 %index1668, %111
  %125 = add nuw nsw i64 %index1668, %polly.access.mul.Packed_MemRef_call1279.us
  %126 = getelementptr double, double* %Packed_MemRef_call1, i64 %125
  %127 = bitcast double* %126 to <4 x double>*
  %wide.load1672 = load <4 x double>, <4 x double>* %127, align 8
  %128 = fmul fast <4 x double> %broadcast.splat1674, %wide.load1672
  %129 = add nuw nsw i64 %124, %polly.access.mul.Packed_MemRef_call1279.us
  %130 = getelementptr double, double* %Packed_MemRef_call2, i64 %129
  %131 = bitcast double* %130 to <4 x double>*
  %wide.load1675 = load <4 x double>, <4 x double>* %131, align 8
  %132 = fmul fast <4 x double> %broadcast.splat1677, %wide.load1675
  %133 = shl i64 %124, 3
  %134 = add i64 %133, %123
  %135 = getelementptr i8, i8* %call, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1678 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !64, !noalias !66
  %137 = fadd fast <4 x double> %132, %128
  %138 = fmul fast <4 x double> %137, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %139 = fadd fast <4 x double> %138, %wide.load1678
  %140 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %139, <4 x double>* %140, align 8, !alias.scope !64, !noalias !66
  %index.next1669 = add i64 %index1668, 4
  %141 = icmp eq i64 %index.next1669, %n.vec1667
  br i1 %141, label %middle.block1657, label %vector.body1659, !llvm.loop !76

middle.block1657:                                 ; preds = %vector.body1659
  %cmp.n1671 = icmp eq i64 %119, %n.vec1667
  br i1 %cmp.n1671, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us.preheader

polly.loop_header272.us.preheader:                ; preds = %polly.loop_header265.us, %middle.block1657
  %polly.indvar276.us.ph = phi i64 [ 0, %polly.loop_header265.us ], [ %n.vec1667, %middle.block1657 ]
  br label %polly.loop_header272.us

polly.loop_header272.us:                          ; preds = %polly.loop_header272.us.preheader, %polly.loop_header272.us
  %polly.indvar276.us = phi i64 [ %polly.indvar_next277.us, %polly.loop_header272.us ], [ %polly.indvar276.us.ph, %polly.loop_header272.us.preheader ]
  %142 = add nuw nsw i64 %polly.indvar276.us, %111
  %polly.access.add.Packed_MemRef_call1280.us = add nuw nsw i64 %polly.indvar276.us, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call1281.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call1281.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %polly.access.add.Packed_MemRef_call2288.us = add nuw nsw i64 %142, %polly.access.mul.Packed_MemRef_call1279.us
  %polly.access.Packed_MemRef_call2289.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us
  %_p_scalar_290.us = load double, double* %polly.access.Packed_MemRef_call2289.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_294.us, %_p_scalar_290.us
  %143 = shl i64 %142, 3
  %144 = add i64 %143, %123
  %scevgep295.us = getelementptr i8, i8* %call, i64 %144
  %scevgep295296.us = bitcast i8* %scevgep295.us to double*
  %_p_scalar_297.us = load double, double* %scevgep295296.us, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_297.us
  store double %p_add42.i118.us, double* %scevgep295296.us, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next277.us = add nuw nsw i64 %polly.indvar276.us, 1
  %exitcond1041.not = icmp eq i64 %polly.indvar276.us, %smin1040
  br i1 %exitcond1041.not, label %polly.loop_exit274.loopexit.us, label %polly.loop_header272.us, !llvm.loop !77

polly.loop_exit274.loopexit.us:                   ; preds = %polly.loop_header272.us, %middle.block1657
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next269.us, 32
  br i1 %exitcond1042.not, label %polly.loop_exit267, label %polly.loop_header265.us

polly.start300:                                   ; preds = %kernel_syr2k.exit
  %malloccall302 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  %malloccall304 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header388

polly.exiting301:                                 ; preds = %polly.loop_exit434.1
  tail call void @free(i8* %malloccall302)
  tail call void @free(i8* %malloccall304)
  br label %kernel_syr2k.exit90

polly.loop_header388:                             ; preds = %polly.loop_exit396, %polly.start300
  %indvar1554 = phi i64 [ %indvar.next1555, %polly.loop_exit396 ], [ 0, %polly.start300 ]
  %polly.indvar391 = phi i64 [ %polly.indvar_next392, %polly.loop_exit396 ], [ 1, %polly.start300 ]
  %145 = add i64 %indvar1554, 1
  %146 = mul nuw nsw i64 %polly.indvar391, 640
  %scevgep400 = getelementptr i8, i8* %call, i64 %146
  %min.iters.check1556 = icmp ult i64 %145, 4
  br i1 %min.iters.check1556, label %polly.loop_header394.preheader, label %vector.ph1557

vector.ph1557:                                    ; preds = %polly.loop_header388
  %n.vec1559 = and i64 %145, -4
  br label %vector.body1553

vector.body1553:                                  ; preds = %vector.body1553, %vector.ph1557
  %index1560 = phi i64 [ 0, %vector.ph1557 ], [ %index.next1561, %vector.body1553 ]
  %147 = shl nuw nsw i64 %index1560, 3
  %148 = getelementptr i8, i8* %scevgep400, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  %wide.load1564 = load <4 x double>, <4 x double>* %149, align 8, !alias.scope !78, !noalias !80
  %150 = fmul fast <4 x double> %wide.load1564, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %151 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %150, <4 x double>* %151, align 8, !alias.scope !78, !noalias !80
  %index.next1561 = add i64 %index1560, 4
  %152 = icmp eq i64 %index.next1561, %n.vec1559
  br i1 %152, label %middle.block1551, label %vector.body1553, !llvm.loop !85

middle.block1551:                                 ; preds = %vector.body1553
  %cmp.n1563 = icmp eq i64 %145, %n.vec1559
  br i1 %cmp.n1563, label %polly.loop_exit396, label %polly.loop_header394.preheader

polly.loop_header394.preheader:                   ; preds = %polly.loop_header388, %middle.block1551
  %polly.indvar397.ph = phi i64 [ 0, %polly.loop_header388 ], [ %n.vec1559, %middle.block1551 ]
  br label %polly.loop_header394

polly.loop_exit396:                               ; preds = %polly.loop_header394, %middle.block1551
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next392, 80
  %indvar.next1555 = add i64 %indvar1554, 1
  br i1 %exitcond1066.not, label %polly.loop_header404.preheader, label %polly.loop_header388

polly.loop_header404.preheader:                   ; preds = %polly.loop_exit396
  %Packed_MemRef_call1303 = bitcast i8* %malloccall302 to double*
  %Packed_MemRef_call2305 = bitcast i8* %malloccall304 to double*
  br label %polly.loop_header404

polly.loop_header394:                             ; preds = %polly.loop_header394.preheader, %polly.loop_header394
  %polly.indvar397 = phi i64 [ %polly.indvar_next398, %polly.loop_header394 ], [ %polly.indvar397.ph, %polly.loop_header394.preheader ]
  %153 = shl nuw nsw i64 %polly.indvar397, 3
  %scevgep401 = getelementptr i8, i8* %scevgep400, i64 %153
  %scevgep401402 = bitcast i8* %scevgep401 to double*
  %_p_scalar_403 = load double, double* %scevgep401402, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_403, 1.200000e+00
  store double %p_mul.i57, double* %scevgep401402, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next398 = add nuw nsw i64 %polly.indvar397, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next398, %polly.indvar391
  br i1 %exitcond1065.not, label %polly.loop_exit396, label %polly.loop_header394, !llvm.loop !86

polly.loop_header404:                             ; preds = %polly.loop_header404.preheader, %polly.loop_exit412
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit412 ], [ 0, %polly.loop_header404.preheader ]
  %polly.access.mul.Packed_MemRef_call2305 = mul nuw nsw i64 %polly.indvar407, 80
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next408, 60
  br i1 %exitcond1064.not, label %polly.loop_header420, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_header410, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_header410 ]
  %polly.access.mul.call2417 = mul nuw nsw i64 %polly.indvar413, 60
  %polly.access.add.call2418 = add nuw nsw i64 %polly.access.mul.call2417, %polly.indvar407
  %polly.access.call2419 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2418
  %polly.access.call2419.load = load double, double* %polly.access.call2419, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call2305 = add nuw nsw i64 %polly.indvar413, %polly.access.mul.Packed_MemRef_call2305
  %polly.access.Packed_MemRef_call2305 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305
  store double %polly.access.call2419.load, double* %polly.access.Packed_MemRef_call2305, align 8
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next414, 80
  br i1 %exitcond1063.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header420:                             ; preds = %polly.loop_exit412, %polly.loop_exit434.1
  %154 = phi i1 [ false, %polly.loop_exit434.1 ], [ true, %polly.loop_exit412 ]
  %polly.indvar423 = phi i64 [ 1, %polly.loop_exit434.1 ], [ 0, %polly.loop_exit412 ]
  %155 = shl nuw nsw i64 %polly.indvar423, 1
  %156 = or i64 %155, 1
  %157 = mul nuw nsw i64 %polly.indvar423, -50
  %158 = icmp slt i64 %157, -30
  %159 = select i1 %158, i64 %157, i64 -30
  %160 = add nsw i64 %159, 79
  %161 = mul nuw nsw i64 %polly.indvar423, 50
  %.op1170 = add nuw nsw i64 %156, 1
  %162 = select i1 %154, i64 %.op1170, i64 3
  br label %polly.loop_header432

polly.loop_header432:                             ; preds = %polly.loop_exit441, %polly.loop_header420
  %indvars.iv1052 = phi i64 [ %indvars.iv.next1053, %polly.loop_exit441 ], [ %161, %polly.loop_header420 ]
  %indvars.iv1049 = phi i64 [ %indvars.iv.next1050, %polly.loop_exit441 ], [ %157, %polly.loop_header420 ]
  %polly.indvar435 = phi i64 [ %polly.indvar_next436, %polly.loop_exit441 ], [ 0, %polly.loop_header420 ]
  %163 = shl i64 %polly.indvar435, 5
  %164 = add i64 %157, %163
  %smax1590 = call i64 @llvm.smax.i64(i64 %164, i64 0)
  %165 = mul i64 %polly.indvar435, -32
  %166 = add i64 %161, %165
  %167 = add i64 %smax1590, %166
  %168 = shl nsw i64 %polly.indvar435, 5
  %169 = add nsw i64 %168, %157
  %170 = icmp sgt i64 %169, 0
  %171 = select i1 %170, i64 %169, i64 0
  %polly.loop_guard442.not = icmp sgt i64 %171, %160
  br i1 %polly.loop_guard442.not, label %polly.loop_exit441, label %polly.loop_header439.preheader

polly.loop_header439.preheader:                   ; preds = %polly.loop_header432
  %smax1051 = call i64 @llvm.smax.i64(i64 %indvars.iv1049, i64 0)
  %172 = add i64 %smax1051, %indvars.iv1052
  %173 = sub nsw i64 %161, %168
  %174 = add nuw nsw i64 %168, 32
  br label %polly.loop_header439

polly.loop_exit441:                               ; preds = %polly.loop_exit477, %polly.loop_header432
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %indvars.iv.next1050 = add nsw i64 %indvars.iv1049, 32
  %indvars.iv.next1053 = add nsw i64 %indvars.iv1052, -32
  %exitcond1062.not = icmp eq i64 %polly.indvar_next436, %162
  br i1 %exitcond1062.not, label %polly.loop_header432.1, label %polly.loop_header432

polly.loop_header439:                             ; preds = %polly.loop_header439.preheader, %polly.loop_exit477
  %indvar1591 = phi i64 [ 0, %polly.loop_header439.preheader ], [ %indvar.next1592, %polly.loop_exit477 ]
  %indvars.iv1054 = phi i64 [ %172, %polly.loop_header439.preheader ], [ %indvars.iv.next1055, %polly.loop_exit477 ]
  %polly.indvar443 = phi i64 [ %171, %polly.loop_header439.preheader ], [ %polly.indvar_next444, %polly.loop_exit477 ]
  %175 = add i64 %167, %indvar1591
  %smin1593 = call i64 @llvm.smin.i64(i64 %175, i64 31)
  %176 = add nsw i64 %smin1593, 1
  %smin1059 = call i64 @llvm.smin.i64(i64 %indvars.iv1054, i64 31)
  %177 = add nsw i64 %polly.indvar443, %173
  %polly.loop_guard4561171 = icmp sgt i64 %177, -1
  %178 = add nuw nsw i64 %polly.indvar443, %161
  %.not924 = icmp ult i64 %178, %174
  %polly.access.mul.call1469 = mul nsw i64 %178, 60
  br i1 %polly.loop_guard4561171, label %polly.loop_header446.us, label %polly.loop_header439.split

polly.loop_header446.us:                          ; preds = %polly.loop_header439, %polly.merge465.us
  %polly.indvar449.us = phi i64 [ %polly.indvar_next450.us, %polly.merge465.us ], [ 0, %polly.loop_header439 ]
  %polly.access.mul.Packed_MemRef_call1303.us = mul nuw nsw i64 %polly.indvar449.us, 80
  br label %polly.loop_header453.us

polly.loop_header453.us:                          ; preds = %polly.loop_header446.us, %polly.loop_header453.us
  %polly.indvar457.us = phi i64 [ %polly.indvar_next458.us, %polly.loop_header453.us ], [ 0, %polly.loop_header446.us ]
  %179 = add nuw nsw i64 %polly.indvar457.us, %168
  %polly.access.mul.call1461.us = mul nuw nsw i64 %179, 60
  %polly.access.add.call1462.us = add nuw nsw i64 %polly.indvar449.us, %polly.access.mul.call1461.us
  %polly.access.call1463.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us
  %polly.access.call1463.load.us = load double, double* %polly.access.call1463.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1303.us = add nuw nsw i64 %polly.indvar457.us, %polly.access.mul.Packed_MemRef_call1303.us
  %polly.access.Packed_MemRef_call1303.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us
  store double %polly.access.call1463.load.us, double* %polly.access.Packed_MemRef_call1303.us, align 8
  %polly.indvar_next458.us = add nuw nsw i64 %polly.indvar457.us, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar457.us, %smin1059
  br i1 %exitcond1057.not, label %polly.cond464.loopexit.us, label %polly.loop_header453.us

polly.then466.us:                                 ; preds = %polly.cond464.loopexit.us
  %polly.access.add.call1470.us = add nuw nsw i64 %polly.access.mul.call1469, %polly.indvar449.us
  %polly.access.call1471.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.us
  %polly.access.call1471.load.us = load double, double* %polly.access.call1471.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1303473.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303.us, %177
  %polly.access.Packed_MemRef_call1303474.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.us
  store double %polly.access.call1471.load.us, double* %polly.access.Packed_MemRef_call1303474.us, align 8
  br label %polly.merge465.us

polly.merge465.us:                                ; preds = %polly.then466.us, %polly.cond464.loopexit.us
  %polly.indvar_next450.us = add nuw nsw i64 %polly.indvar449.us, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next450.us, 32
  br i1 %exitcond1058.not, label %polly.loop_header475.preheader, label %polly.loop_header446.us

polly.cond464.loopexit.us:                        ; preds = %polly.loop_header453.us
  br i1 %.not924, label %polly.merge465.us, label %polly.then466.us

polly.loop_header439.split:                       ; preds = %polly.loop_header439
  br i1 %.not924, label %polly.loop_exit477, label %polly.loop_header446

polly.loop_exit477:                               ; preds = %polly.loop_exit484.loopexit.us, %polly.loop_header439.split, %polly.loop_header475.preheader
  %polly.indvar_next444 = add nuw nsw i64 %polly.indvar443, 1
  %polly.loop_cond445.not.not = icmp ult i64 %polly.indvar443, %160
  %indvars.iv.next1055 = add i64 %indvars.iv1054, 1
  %indvar.next1592 = add i64 %indvar1591, 1
  br i1 %polly.loop_cond445.not.not, label %polly.loop_header439, label %polly.loop_exit441

polly.loop_header446:                             ; preds = %polly.loop_header439.split, %polly.loop_header446
  %polly.indvar449 = phi i64 [ %polly.indvar_next450, %polly.loop_header446 ], [ 0, %polly.loop_header439.split ]
  %polly.access.add.call1470 = add nuw nsw i64 %polly.access.mul.call1469, %polly.indvar449
  %polly.access.call1471 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470
  %polly.access.call1471.load = load double, double* %polly.access.call1471, align 8, !alias.scope !81, !noalias !88
  %polly.access.mul.Packed_MemRef_call1303472 = mul nuw nsw i64 %polly.indvar449, 80
  %polly.access.add.Packed_MemRef_call1303473 = add nsw i64 %polly.access.mul.Packed_MemRef_call1303472, %177
  %polly.access.Packed_MemRef_call1303474 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473
  store double %polly.access.call1471.load, double* %polly.access.Packed_MemRef_call1303474, align 8
  %polly.indvar_next450 = add nuw nsw i64 %polly.indvar449, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar_next450, 32
  br i1 %exitcond1048.not, label %polly.loop_header475.preheader, label %polly.loop_header446

polly.loop_header475.preheader:                   ; preds = %polly.loop_header446, %polly.merge465.us
  %180 = mul i64 %178, 640
  br i1 %polly.loop_guard4561171, label %polly.loop_header475.us, label %polly.loop_exit477

polly.loop_header475.us:                          ; preds = %polly.loop_header475.preheader, %polly.loop_exit484.loopexit.us
  %polly.indvar478.us = phi i64 [ %polly.indvar_next479.us, %polly.loop_exit484.loopexit.us ], [ 0, %polly.loop_header475.preheader ]
  %polly.access.mul.Packed_MemRef_call1303489.us = mul nuw nsw i64 %polly.indvar478.us, 80
  %polly.access.add.Packed_MemRef_call2305494.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1303489.us, %178
  %polly.access.Packed_MemRef_call2305495.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us
  %_p_scalar_496.us = load double, double* %polly.access.Packed_MemRef_call2305495.us, align 8
  %polly.access.add.Packed_MemRef_call1303502.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1303489.us, %177
  %polly.access.Packed_MemRef_call1303503.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303502.us
  %_p_scalar_504.us = load double, double* %polly.access.Packed_MemRef_call1303503.us, align 8
  %min.iters.check1594 = icmp ult i64 %176, 4
  br i1 %min.iters.check1594, label %polly.loop_header482.us.preheader, label %vector.ph1595

vector.ph1595:                                    ; preds = %polly.loop_header475.us
  %n.vec1597 = and i64 %176, -4
  %broadcast.splatinsert1603 = insertelement <4 x double> poison, double %_p_scalar_496.us, i32 0
  %broadcast.splat1604 = shufflevector <4 x double> %broadcast.splatinsert1603, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1606 = insertelement <4 x double> poison, double %_p_scalar_504.us, i32 0
  %broadcast.splat1607 = shufflevector <4 x double> %broadcast.splatinsert1606, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1589

vector.body1589:                                  ; preds = %vector.body1589, %vector.ph1595
  %index1598 = phi i64 [ 0, %vector.ph1595 ], [ %index.next1599, %vector.body1589 ]
  %181 = add nuw nsw i64 %index1598, %168
  %182 = add nuw nsw i64 %index1598, %polly.access.mul.Packed_MemRef_call1303489.us
  %183 = getelementptr double, double* %Packed_MemRef_call1303, i64 %182
  %184 = bitcast double* %183 to <4 x double>*
  %wide.load1602 = load <4 x double>, <4 x double>* %184, align 8
  %185 = fmul fast <4 x double> %broadcast.splat1604, %wide.load1602
  %186 = add nuw nsw i64 %181, %polly.access.mul.Packed_MemRef_call1303489.us
  %187 = getelementptr double, double* %Packed_MemRef_call2305, i64 %186
  %188 = bitcast double* %187 to <4 x double>*
  %wide.load1605 = load <4 x double>, <4 x double>* %188, align 8
  %189 = fmul fast <4 x double> %broadcast.splat1607, %wide.load1605
  %190 = shl i64 %181, 3
  %191 = add i64 %190, %180
  %192 = getelementptr i8, i8* %call, i64 %191
  %193 = bitcast i8* %192 to <4 x double>*
  %wide.load1608 = load <4 x double>, <4 x double>* %193, align 8, !alias.scope !78, !noalias !80
  %194 = fadd fast <4 x double> %189, %185
  %195 = fmul fast <4 x double> %194, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %196 = fadd fast <4 x double> %195, %wide.load1608
  %197 = bitcast i8* %192 to <4 x double>*
  store <4 x double> %196, <4 x double>* %197, align 8, !alias.scope !78, !noalias !80
  %index.next1599 = add i64 %index1598, 4
  %198 = icmp eq i64 %index.next1599, %n.vec1597
  br i1 %198, label %middle.block1587, label %vector.body1589, !llvm.loop !89

middle.block1587:                                 ; preds = %vector.body1589
  %cmp.n1601 = icmp eq i64 %176, %n.vec1597
  br i1 %cmp.n1601, label %polly.loop_exit484.loopexit.us, label %polly.loop_header482.us.preheader

polly.loop_header482.us.preheader:                ; preds = %polly.loop_header475.us, %middle.block1587
  %polly.indvar486.us.ph = phi i64 [ 0, %polly.loop_header475.us ], [ %n.vec1597, %middle.block1587 ]
  br label %polly.loop_header482.us

polly.loop_header482.us:                          ; preds = %polly.loop_header482.us.preheader, %polly.loop_header482.us
  %polly.indvar486.us = phi i64 [ %polly.indvar_next487.us, %polly.loop_header482.us ], [ %polly.indvar486.us.ph, %polly.loop_header482.us.preheader ]
  %199 = add nuw nsw i64 %polly.indvar486.us, %168
  %polly.access.add.Packed_MemRef_call1303490.us = add nuw nsw i64 %polly.indvar486.us, %polly.access.mul.Packed_MemRef_call1303489.us
  %polly.access.Packed_MemRef_call1303491.us = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303490.us
  %_p_scalar_492.us = load double, double* %polly.access.Packed_MemRef_call1303491.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_496.us, %_p_scalar_492.us
  %polly.access.add.Packed_MemRef_call2305498.us = add nuw nsw i64 %199, %polly.access.mul.Packed_MemRef_call1303489.us
  %polly.access.Packed_MemRef_call2305499.us = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us
  %_p_scalar_500.us = load double, double* %polly.access.Packed_MemRef_call2305499.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_504.us, %_p_scalar_500.us
  %200 = shl i64 %199, 3
  %201 = add i64 %200, %180
  %scevgep505.us = getelementptr i8, i8* %call, i64 %201
  %scevgep505506.us = bitcast i8* %scevgep505.us to double*
  %_p_scalar_507.us = load double, double* %scevgep505506.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_507.us
  store double %p_add42.i79.us, double* %scevgep505506.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next487.us = add nuw nsw i64 %polly.indvar486.us, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar486.us, %smin1059
  br i1 %exitcond1060.not, label %polly.loop_exit484.loopexit.us, label %polly.loop_header482.us, !llvm.loop !90

polly.loop_exit484.loopexit.us:                   ; preds = %polly.loop_header482.us, %middle.block1587
  %polly.indvar_next479.us = add nuw nsw i64 %polly.indvar478.us, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next479.us, 32
  br i1 %exitcond1061.not, label %polly.loop_exit477, label %polly.loop_header475.us

polly.start510:                                   ; preds = %init_array.exit
  %malloccall512 = tail call dereferenceable_or_null(20480) i8* @malloc(i64 20480) #6
  %malloccall514 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header598

polly.exiting511:                                 ; preds = %polly.loop_exit644.1
  tail call void @free(i8* %malloccall512)
  tail call void @free(i8* %malloccall514)
  br label %kernel_syr2k.exit

polly.loop_header598:                             ; preds = %polly.loop_exit606, %polly.start510
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit606 ], [ 0, %polly.start510 ]
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_exit606 ], [ 1, %polly.start510 ]
  %202 = add i64 %indvar, 1
  %203 = mul nuw nsw i64 %polly.indvar601, 640
  %scevgep610 = getelementptr i8, i8* %call, i64 %203
  %min.iters.check1487 = icmp ult i64 %202, 4
  br i1 %min.iters.check1487, label %polly.loop_header604.preheader, label %vector.ph1488

vector.ph1488:                                    ; preds = %polly.loop_header598
  %n.vec1490 = and i64 %202, -4
  br label %vector.body1486

vector.body1486:                                  ; preds = %vector.body1486, %vector.ph1488
  %index1491 = phi i64 [ 0, %vector.ph1488 ], [ %index.next1492, %vector.body1486 ]
  %204 = shl nuw nsw i64 %index1491, 3
  %205 = getelementptr i8, i8* %scevgep610, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  %wide.load1495 = load <4 x double>, <4 x double>* %206, align 8, !alias.scope !91, !noalias !93
  %207 = fmul fast <4 x double> %wide.load1495, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %208 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %207, <4 x double>* %208, align 8, !alias.scope !91, !noalias !93
  %index.next1492 = add i64 %index1491, 4
  %209 = icmp eq i64 %index.next1492, %n.vec1490
  br i1 %209, label %middle.block1484, label %vector.body1486, !llvm.loop !98

middle.block1484:                                 ; preds = %vector.body1486
  %cmp.n1494 = icmp eq i64 %202, %n.vec1490
  br i1 %cmp.n1494, label %polly.loop_exit606, label %polly.loop_header604.preheader

polly.loop_header604.preheader:                   ; preds = %polly.loop_header598, %middle.block1484
  %polly.indvar607.ph = phi i64 [ 0, %polly.loop_header598 ], [ %n.vec1490, %middle.block1484 ]
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604, %middle.block1484
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next602, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1085.not, label %polly.loop_header614.preheader, label %polly.loop_header598

polly.loop_header614.preheader:                   ; preds = %polly.loop_exit606
  %Packed_MemRef_call1513 = bitcast i8* %malloccall512 to double*
  %Packed_MemRef_call2515 = bitcast i8* %malloccall514 to double*
  br label %polly.loop_header614

polly.loop_header604:                             ; preds = %polly.loop_header604.preheader, %polly.loop_header604
  %polly.indvar607 = phi i64 [ %polly.indvar_next608, %polly.loop_header604 ], [ %polly.indvar607.ph, %polly.loop_header604.preheader ]
  %210 = shl nuw nsw i64 %polly.indvar607, 3
  %scevgep611 = getelementptr i8, i8* %scevgep610, i64 %210
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !91, !noalias !93
  %p_mul.i = fmul fast double %_p_scalar_613, 1.200000e+00
  store double %p_mul.i, double* %scevgep611612, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next608, %polly.indvar601
  br i1 %exitcond1084.not, label %polly.loop_exit606, label %polly.loop_header604, !llvm.loop !99

polly.loop_header614:                             ; preds = %polly.loop_header614.preheader, %polly.loop_exit622
  %polly.indvar617 = phi i64 [ %polly.indvar_next618, %polly.loop_exit622 ], [ 0, %polly.loop_header614.preheader ]
  %polly.access.mul.Packed_MemRef_call2515 = mul nuw nsw i64 %polly.indvar617, 80
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_header620
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next618, 60
  br i1 %exitcond1083.not, label %polly.loop_header630, label %polly.loop_header614

polly.loop_header620:                             ; preds = %polly.loop_header620, %polly.loop_header614
  %polly.indvar623 = phi i64 [ 0, %polly.loop_header614 ], [ %polly.indvar_next624, %polly.loop_header620 ]
  %polly.access.mul.call2627 = mul nuw nsw i64 %polly.indvar623, 60
  %polly.access.add.call2628 = add nuw nsw i64 %polly.access.mul.call2627, %polly.indvar617
  %polly.access.call2629 = getelementptr double, double* %polly.access.cast.call2732, i64 %polly.access.add.call2628
  %polly.access.call2629.load = load double, double* %polly.access.call2629, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2515 = add nuw nsw i64 %polly.indvar623, %polly.access.mul.Packed_MemRef_call2515
  %polly.access.Packed_MemRef_call2515 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515
  store double %polly.access.call2629.load, double* %polly.access.Packed_MemRef_call2515, align 8
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next624, 80
  br i1 %exitcond1082.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header630:                             ; preds = %polly.loop_exit622, %polly.loop_exit644.1
  %211 = phi i1 [ false, %polly.loop_exit644.1 ], [ true, %polly.loop_exit622 ]
  %polly.indvar633 = phi i64 [ 1, %polly.loop_exit644.1 ], [ 0, %polly.loop_exit622 ]
  %212 = shl nuw nsw i64 %polly.indvar633, 1
  %213 = or i64 %212, 1
  %214 = mul nuw nsw i64 %polly.indvar633, -50
  %215 = icmp slt i64 %214, -30
  %216 = select i1 %215, i64 %214, i64 -30
  %217 = add nsw i64 %216, 79
  %218 = mul nuw nsw i64 %polly.indvar633, 50
  %.op1173 = add nuw nsw i64 %213, 1
  %219 = select i1 %211, i64 %.op1173, i64 3
  br label %polly.loop_header642

polly.loop_header642:                             ; preds = %polly.loop_exit651, %polly.loop_header630
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit651 ], [ %218, %polly.loop_header630 ]
  %indvars.iv1068 = phi i64 [ %indvars.iv.next1069, %polly.loop_exit651 ], [ %214, %polly.loop_header630 ]
  %polly.indvar645 = phi i64 [ %polly.indvar_next646, %polly.loop_exit651 ], [ 0, %polly.loop_header630 ]
  %220 = shl i64 %polly.indvar645, 5
  %221 = add i64 %214, %220
  %smax1520 = call i64 @llvm.smax.i64(i64 %221, i64 0)
  %222 = mul i64 %polly.indvar645, -32
  %223 = add i64 %218, %222
  %224 = add i64 %smax1520, %223
  %225 = shl nsw i64 %polly.indvar645, 5
  %226 = add nsw i64 %225, %214
  %227 = icmp sgt i64 %226, 0
  %228 = select i1 %227, i64 %226, i64 0
  %polly.loop_guard652.not = icmp sgt i64 %228, %217
  br i1 %polly.loop_guard652.not, label %polly.loop_exit651, label %polly.loop_header649.preheader

polly.loop_header649.preheader:                   ; preds = %polly.loop_header642
  %smax1070 = call i64 @llvm.smax.i64(i64 %indvars.iv1068, i64 0)
  %229 = add i64 %smax1070, %indvars.iv1071
  %230 = sub nsw i64 %218, %225
  %231 = add nuw nsw i64 %225, 32
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit687, %polly.loop_header642
  %polly.indvar_next646 = add nuw nsw i64 %polly.indvar645, 1
  %indvars.iv.next1069 = add nsw i64 %indvars.iv1068, 32
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, -32
  %exitcond1081.not = icmp eq i64 %polly.indvar_next646, %219
  br i1 %exitcond1081.not, label %polly.loop_header642.1, label %polly.loop_header642

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit687
  %indvar1521 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %indvar.next1522, %polly.loop_exit687 ]
  %indvars.iv1073 = phi i64 [ %229, %polly.loop_header649.preheader ], [ %indvars.iv.next1074, %polly.loop_exit687 ]
  %polly.indvar653 = phi i64 [ %228, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit687 ]
  %232 = add i64 %224, %indvar1521
  %smin1523 = call i64 @llvm.smin.i64(i64 %232, i64 31)
  %233 = add nsw i64 %smin1523, 1
  %smin1078 = call i64 @llvm.smin.i64(i64 %indvars.iv1073, i64 31)
  %234 = add nsw i64 %polly.indvar653, %230
  %polly.loop_guard6661174 = icmp sgt i64 %234, -1
  %235 = add nuw nsw i64 %polly.indvar653, %218
  %.not925 = icmp ult i64 %235, %231
  %polly.access.mul.call1679 = mul nsw i64 %235, 60
  br i1 %polly.loop_guard6661174, label %polly.loop_header656.us, label %polly.loop_header649.split

polly.loop_header656.us:                          ; preds = %polly.loop_header649, %polly.merge675.us
  %polly.indvar659.us = phi i64 [ %polly.indvar_next660.us, %polly.merge675.us ], [ 0, %polly.loop_header649 ]
  %polly.access.mul.Packed_MemRef_call1513.us = mul nuw nsw i64 %polly.indvar659.us, 80
  br label %polly.loop_header663.us

polly.loop_header663.us:                          ; preds = %polly.loop_header656.us, %polly.loop_header663.us
  %polly.indvar667.us = phi i64 [ %polly.indvar_next668.us, %polly.loop_header663.us ], [ 0, %polly.loop_header656.us ]
  %236 = add nuw nsw i64 %polly.indvar667.us, %225
  %polly.access.mul.call1671.us = mul nuw nsw i64 %236, 60
  %polly.access.add.call1672.us = add nuw nsw i64 %polly.indvar659.us, %polly.access.mul.call1671.us
  %polly.access.call1673.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us
  %polly.access.call1673.load.us = load double, double* %polly.access.call1673.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1513.us = add nuw nsw i64 %polly.indvar667.us, %polly.access.mul.Packed_MemRef_call1513.us
  %polly.access.Packed_MemRef_call1513.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us
  store double %polly.access.call1673.load.us, double* %polly.access.Packed_MemRef_call1513.us, align 8
  %polly.indvar_next668.us = add nuw nsw i64 %polly.indvar667.us, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar667.us, %smin1078
  br i1 %exitcond1076.not, label %polly.cond674.loopexit.us, label %polly.loop_header663.us

polly.then676.us:                                 ; preds = %polly.cond674.loopexit.us
  %polly.access.add.call1680.us = add nuw nsw i64 %polly.access.mul.call1679, %polly.indvar659.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1513683.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1513.us, %234
  %polly.access.Packed_MemRef_call1513684.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1513684.us, align 8
  br label %polly.merge675.us

polly.merge675.us:                                ; preds = %polly.then676.us, %polly.cond674.loopexit.us
  %polly.indvar_next660.us = add nuw nsw i64 %polly.indvar659.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next660.us, 32
  br i1 %exitcond1077.not, label %polly.loop_header685.preheader, label %polly.loop_header656.us

polly.cond674.loopexit.us:                        ; preds = %polly.loop_header663.us
  br i1 %.not925, label %polly.merge675.us, label %polly.then676.us

polly.loop_header649.split:                       ; preds = %polly.loop_header649
  br i1 %.not925, label %polly.loop_exit687, label %polly.loop_header656

polly.loop_exit687:                               ; preds = %polly.loop_exit694.loopexit.us, %polly.loop_header649.split, %polly.loop_header685.preheader
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %polly.loop_cond655.not.not = icmp ult i64 %polly.indvar653, %217
  %indvars.iv.next1074 = add i64 %indvars.iv1073, 1
  %indvar.next1522 = add i64 %indvar1521, 1
  br i1 %polly.loop_cond655.not.not, label %polly.loop_header649, label %polly.loop_exit651

polly.loop_header656:                             ; preds = %polly.loop_header649.split, %polly.loop_header656
  %polly.indvar659 = phi i64 [ %polly.indvar_next660, %polly.loop_header656 ], [ 0, %polly.loop_header649.split ]
  %polly.access.add.call1680 = add nuw nsw i64 %polly.access.mul.call1679, %polly.indvar659
  %polly.access.call1681 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680
  %polly.access.call1681.load = load double, double* %polly.access.call1681, align 8, !alias.scope !94, !noalias !101
  %polly.access.mul.Packed_MemRef_call1513682 = mul nuw nsw i64 %polly.indvar659, 80
  %polly.access.add.Packed_MemRef_call1513683 = add nsw i64 %polly.access.mul.Packed_MemRef_call1513682, %234
  %polly.access.Packed_MemRef_call1513684 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683
  store double %polly.access.call1681.load, double* %polly.access.Packed_MemRef_call1513684, align 8
  %polly.indvar_next660 = add nuw nsw i64 %polly.indvar659, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next660, 32
  br i1 %exitcond1067.not, label %polly.loop_header685.preheader, label %polly.loop_header656

polly.loop_header685.preheader:                   ; preds = %polly.loop_header656, %polly.merge675.us
  %237 = mul i64 %235, 640
  br i1 %polly.loop_guard6661174, label %polly.loop_header685.us, label %polly.loop_exit687

polly.loop_header685.us:                          ; preds = %polly.loop_header685.preheader, %polly.loop_exit694.loopexit.us
  %polly.indvar688.us = phi i64 [ %polly.indvar_next689.us, %polly.loop_exit694.loopexit.us ], [ 0, %polly.loop_header685.preheader ]
  %polly.access.mul.Packed_MemRef_call1513699.us = mul nuw nsw i64 %polly.indvar688.us, 80
  %polly.access.add.Packed_MemRef_call2515704.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1513699.us, %235
  %polly.access.Packed_MemRef_call2515705.us = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us
  %_p_scalar_706.us = load double, double* %polly.access.Packed_MemRef_call2515705.us, align 8
  %polly.access.add.Packed_MemRef_call1513712.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1513699.us, %234
  %polly.access.Packed_MemRef_call1513713.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call1513713.us, align 8
  %min.iters.check1524 = icmp ult i64 %233, 4
  br i1 %min.iters.check1524, label %polly.loop_header692.us.preheader, label %vector.ph1525

vector.ph1525:                                    ; preds = %polly.loop_header685.us
  %n.vec1527 = and i64 %233, -4
  %broadcast.splatinsert1533 = insertelement <4 x double> poison, double %_p_scalar_706.us, i32 0
  %broadcast.splat1534 = shufflevector <4 x double> %broadcast.splatinsert1533, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1536 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1537 = shufflevector <4 x double> %broadcast.splatinsert1536, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1519

vector.body1519:                                  ; preds = %vector.body1519, %vector.ph1525
  %index1528 = phi i64 [ 0, %vector.ph1525 ], [ %index.next1529, %vector.body1519 ]
  %238 = add nuw nsw i64 %index1528, %225
  %239 = add nuw nsw i64 %index1528, %polly.access.mul.Packed_MemRef_call1513699.us
  %240 = getelementptr double, double* %Packed_MemRef_call1513, i64 %239
  %241 = bitcast double* %240 to <4 x double>*
  %wide.load1532 = load <4 x double>, <4 x double>* %241, align 8
  %242 = fmul fast <4 x double> %broadcast.splat1534, %wide.load1532
  %243 = add nuw nsw i64 %238, %polly.access.mul.Packed_MemRef_call1513699.us
  %244 = getelementptr double, double* %Packed_MemRef_call2515, i64 %243
  %245 = bitcast double* %244 to <4 x double>*
  %wide.load1535 = load <4 x double>, <4 x double>* %245, align 8
  %246 = fmul fast <4 x double> %broadcast.splat1537, %wide.load1535
  %247 = shl i64 %238, 3
  %248 = add i64 %247, %237
  %249 = getelementptr i8, i8* %call, i64 %248
  %250 = bitcast i8* %249 to <4 x double>*
  %wide.load1538 = load <4 x double>, <4 x double>* %250, align 8, !alias.scope !91, !noalias !93
  %251 = fadd fast <4 x double> %246, %242
  %252 = fmul fast <4 x double> %251, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %253 = fadd fast <4 x double> %252, %wide.load1538
  %254 = bitcast i8* %249 to <4 x double>*
  store <4 x double> %253, <4 x double>* %254, align 8, !alias.scope !91, !noalias !93
  %index.next1529 = add i64 %index1528, 4
  %255 = icmp eq i64 %index.next1529, %n.vec1527
  br i1 %255, label %middle.block1517, label %vector.body1519, !llvm.loop !102

middle.block1517:                                 ; preds = %vector.body1519
  %cmp.n1531 = icmp eq i64 %233, %n.vec1527
  br i1 %cmp.n1531, label %polly.loop_exit694.loopexit.us, label %polly.loop_header692.us.preheader

polly.loop_header692.us.preheader:                ; preds = %polly.loop_header685.us, %middle.block1517
  %polly.indvar696.us.ph = phi i64 [ 0, %polly.loop_header685.us ], [ %n.vec1527, %middle.block1517 ]
  br label %polly.loop_header692.us

polly.loop_header692.us:                          ; preds = %polly.loop_header692.us.preheader, %polly.loop_header692.us
  %polly.indvar696.us = phi i64 [ %polly.indvar_next697.us, %polly.loop_header692.us ], [ %polly.indvar696.us.ph, %polly.loop_header692.us.preheader ]
  %256 = add nuw nsw i64 %polly.indvar696.us, %225
  %polly.access.add.Packed_MemRef_call1513700.us = add nuw nsw i64 %polly.indvar696.us, %polly.access.mul.Packed_MemRef_call1513699.us
  %polly.access.Packed_MemRef_call1513701.us = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us
  %_p_scalar_702.us = load double, double* %polly.access.Packed_MemRef_call1513701.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_706.us, %_p_scalar_702.us
  %polly.access.add.Packed_MemRef_call2515708.us = add nuw nsw i64 %256, %polly.access.mul.Packed_MemRef_call1513699.us
  %polly.access.Packed_MemRef_call2515709.us = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call2515709.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %257 = shl i64 %256, 3
  %258 = add i64 %257, %237
  %scevgep715.us = getelementptr i8, i8* %call, i64 %258
  %scevgep715716.us = bitcast i8* %scevgep715.us to double*
  %_p_scalar_717.us = load double, double* %scevgep715716.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_717.us
  store double %p_add42.i.us, double* %scevgep715716.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next697.us = add nuw nsw i64 %polly.indvar696.us, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar696.us, %smin1078
  br i1 %exitcond1079.not, label %polly.loop_exit694.loopexit.us, label %polly.loop_header692.us, !llvm.loop !103

polly.loop_exit694.loopexit.us:                   ; preds = %polly.loop_header692.us, %middle.block1517
  %polly.indvar_next689.us = add nuw nsw i64 %polly.indvar688.us, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next689.us, 32
  br i1 %exitcond1080.not, label %polly.loop_exit687, label %polly.loop_header685.us

polly.loop_header856:                             ; preds = %entry, %polly.loop_exit864
  %polly.indvar859 = phi i64 [ %polly.indvar_next860, %polly.loop_exit864 ], [ 0, %entry ]
  %259 = mul nuw nsw i64 %polly.indvar859, 640
  %260 = trunc i64 %polly.indvar859 to i32
  %broadcast.splatinsert1218 = insertelement <4 x i32> poison, i32 %260, i32 0
  %broadcast.splat1219 = shufflevector <4 x i32> %broadcast.splatinsert1218, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %polly.loop_header856
  %index1210 = phi i64 [ 0, %polly.loop_header856 ], [ %index.next1211, %vector.body1208 ]
  %vec.ind1216 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header856 ], [ %vec.ind.next1217, %vector.body1208 ]
  %261 = mul <4 x i32> %vec.ind1216, %broadcast.splat1219
  %262 = add <4 x i32> %261, <i32 3, i32 3, i32 3, i32 3>
  %263 = urem <4 x i32> %262, <i32 80, i32 80, i32 80, i32 80>
  %264 = sitofp <4 x i32> %263 to <4 x double>
  %265 = fmul fast <4 x double> %264, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %266 = shl i64 %index1210, 3
  %267 = add nuw nsw i64 %266, %259
  %268 = getelementptr i8, i8* %call, i64 %267
  %269 = bitcast i8* %268 to <4 x double>*
  store <4 x double> %265, <4 x double>* %269, align 8, !alias.scope !104, !noalias !106
  %index.next1211 = add i64 %index1210, 4
  %vec.ind.next1217 = add <4 x i32> %vec.ind1216, <i32 4, i32 4, i32 4, i32 4>
  %270 = icmp eq i64 %index.next1211, 32
  br i1 %270, label %polly.loop_exit864, label %vector.body1208, !llvm.loop !109

polly.loop_exit864:                               ; preds = %vector.body1208
  %polly.indvar_next860 = add nuw nsw i64 %polly.indvar859, 1
  %exitcond1105.not = icmp eq i64 %polly.indvar_next860, 32
  br i1 %exitcond1105.not, label %polly.loop_header856.1, label %polly.loop_header856

polly.loop_header883:                             ; preds = %polly.loop_exit864.2.2, %polly.loop_exit891
  %polly.indvar886 = phi i64 [ %polly.indvar_next887, %polly.loop_exit891 ], [ 0, %polly.loop_exit864.2.2 ]
  %271 = mul nuw nsw i64 %polly.indvar886, 480
  %272 = trunc i64 %polly.indvar886 to i32
  %broadcast.splatinsert1332 = insertelement <4 x i32> poison, i32 %272, i32 0
  %broadcast.splat1333 = shufflevector <4 x i32> %broadcast.splatinsert1332, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1322

vector.body1322:                                  ; preds = %vector.body1322, %polly.loop_header883
  %index1324 = phi i64 [ 0, %polly.loop_header883 ], [ %index.next1325, %vector.body1322 ]
  %vec.ind1330 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header883 ], [ %vec.ind.next1331, %vector.body1322 ]
  %273 = mul <4 x i32> %vec.ind1330, %broadcast.splat1333
  %274 = add <4 x i32> %273, <i32 2, i32 2, i32 2, i32 2>
  %275 = urem <4 x i32> %274, <i32 60, i32 60, i32 60, i32 60>
  %276 = sitofp <4 x i32> %275 to <4 x double>
  %277 = fmul fast <4 x double> %276, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %278 = shl i64 %index1324, 3
  %279 = add i64 %278, %271
  %280 = getelementptr i8, i8* %call2, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %277, <4 x double>* %281, align 8, !alias.scope !108, !noalias !110
  %index.next1325 = add i64 %index1324, 4
  %vec.ind.next1331 = add <4 x i32> %vec.ind1330, <i32 4, i32 4, i32 4, i32 4>
  %282 = icmp eq i64 %index.next1325, 32
  br i1 %282, label %polly.loop_exit891, label %vector.body1322, !llvm.loop !111

polly.loop_exit891:                               ; preds = %vector.body1322
  %polly.indvar_next887 = add nuw nsw i64 %polly.indvar886, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next887, 32
  br i1 %exitcond1096.not, label %polly.loop_header883.1, label %polly.loop_header883

polly.loop_header909:                             ; preds = %polly.loop_exit891.1.2, %polly.loop_exit917
  %polly.indvar912 = phi i64 [ %polly.indvar_next913, %polly.loop_exit917 ], [ 0, %polly.loop_exit891.1.2 ]
  %283 = mul nuw nsw i64 %polly.indvar912, 480
  %284 = trunc i64 %polly.indvar912 to i32
  %broadcast.splatinsert1410 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1411 = shufflevector <4 x i32> %broadcast.splatinsert1410, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1400

vector.body1400:                                  ; preds = %vector.body1400, %polly.loop_header909
  %index1402 = phi i64 [ 0, %polly.loop_header909 ], [ %index.next1403, %vector.body1400 ]
  %vec.ind1408 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header909 ], [ %vec.ind.next1409, %vector.body1400 ]
  %285 = mul <4 x i32> %vec.ind1408, %broadcast.splat1411
  %286 = add <4 x i32> %285, <i32 1, i32 1, i32 1, i32 1>
  %287 = urem <4 x i32> %286, <i32 80, i32 80, i32 80, i32 80>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %290 = shl i64 %index1402, 3
  %291 = add i64 %290, %283
  %292 = getelementptr i8, i8* %call1, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %289, <4 x double>* %293, align 8, !alias.scope !107, !noalias !112
  %index.next1403 = add i64 %index1402, 4
  %vec.ind.next1409 = add <4 x i32> %vec.ind1408, <i32 4, i32 4, i32 4, i32 4>
  %294 = icmp eq i64 %index.next1403, 32
  br i1 %294, label %polly.loop_exit917, label %vector.body1400, !llvm.loop !113

polly.loop_exit917:                               ; preds = %vector.body1400
  %polly.indvar_next913 = add nuw nsw i64 %polly.indvar912, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next913, 32
  br i1 %exitcond1090.not, label %polly.loop_header909.1, label %polly.loop_header909

polly.loop_header228.1:                           ; preds = %polly.loop_exit236, %polly.loop_exit236.1
  %indvars.iv1034.1 = phi i64 [ %indvars.iv.next1035.1, %polly.loop_exit236.1 ], [ %104, %polly.loop_exit236 ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit236.1 ], [ %100, %polly.loop_exit236 ]
  %polly.indvar231.1 = phi i64 [ %polly.indvar_next232.1, %polly.loop_exit236.1 ], [ 0, %polly.loop_exit236 ]
  %295 = shl i64 %polly.indvar231.1, 5
  %296 = add i64 %100, %295
  %smax1638 = call i64 @llvm.smax.i64(i64 %296, i64 0)
  %297 = mul i64 %polly.indvar231.1, -32
  %298 = add i64 %104, %297
  %299 = add i64 %smax1638, %298
  %300 = shl nsw i64 %polly.indvar231.1, 5
  %301 = add nsw i64 %300, %100
  %302 = icmp sgt i64 %301, 0
  %303 = select i1 %302, i64 %301, i64 0
  %polly.loop_guard.not.1 = icmp sgt i64 %303, %103
  br i1 %polly.loop_guard.not.1, label %polly.loop_exit236.1, label %polly.loop_header234.preheader.1

polly.loop_header234.preheader.1:                 ; preds = %polly.loop_header228.1
  %smax.1 = call i64 @llvm.smax.i64(i64 %indvars.iv.1, i64 0)
  %304 = add i64 %smax.1, %indvars.iv1034.1
  %305 = sub nsw i64 %104, %300
  %306 = add nuw nsw i64 %300, 32
  br label %polly.loop_header234.1

polly.loop_header234.1:                           ; preds = %polly.loop_exit267.1, %polly.loop_header234.preheader.1
  %indvar1639 = phi i64 [ %indvar.next1640, %polly.loop_exit267.1 ], [ 0, %polly.loop_header234.preheader.1 ]
  %indvars.iv1036.1 = phi i64 [ %indvars.iv.next1037.1, %polly.loop_exit267.1 ], [ %304, %polly.loop_header234.preheader.1 ]
  %polly.indvar237.1 = phi i64 [ %polly.indvar_next238.1, %polly.loop_exit267.1 ], [ %303, %polly.loop_header234.preheader.1 ]
  %307 = add i64 %299, %indvar1639
  %smin1641 = call i64 @llvm.smin.i64(i64 %307, i64 31)
  %308 = add nsw i64 %smin1641, 1
  %smin1040.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1036.1, i64 31)
  %309 = add nsw i64 %polly.indvar237.1, %305
  %polly.loop_guard250.11169 = icmp sgt i64 %309, -1
  %310 = add nuw nsw i64 %polly.indvar237.1, %104
  %.not.1 = icmp ult i64 %310, %306
  %polly.access.mul.call1259.1 = mul nsw i64 %310, 60
  %311 = add nuw i64 %polly.access.mul.call1259.1, 32
  br i1 %polly.loop_guard250.11169, label %polly.loop_header240.us.1, label %polly.loop_header234.split.1

polly.loop_header234.split.1:                     ; preds = %polly.loop_header234.1
  br i1 %.not.1, label %polly.loop_exit267.1, label %polly.loop_header240.1

polly.loop_header240.1:                           ; preds = %polly.loop_header234.split.1, %polly.loop_header240.1
  %polly.indvar243.1 = phi i64 [ %polly.indvar_next244.1, %polly.loop_header240.1 ], [ 0, %polly.loop_header234.split.1 ]
  %polly.access.add.call1260.1 = add nuw nsw i64 %311, %polly.indvar243.1
  %polly.access.call1261.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.1
  %polly.access.call1261.load.1 = load double, double* %polly.access.call1261.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.mul.Packed_MemRef_call1262.1 = mul nuw nsw i64 %polly.indvar243.1, 80
  %polly.access.add.Packed_MemRef_call1263.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1262.1, %309
  %polly.access.Packed_MemRef_call1264.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.1
  store double %polly.access.call1261.load.1, double* %polly.access.Packed_MemRef_call1264.1, align 8
  %polly.indvar_next244.1 = add nuw nsw i64 %polly.indvar243.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next244.1, 28
  br i1 %exitcond.1.not, label %polly.loop_header265.preheader.1, label %polly.loop_header240.1

polly.loop_header240.us.1:                        ; preds = %polly.loop_header234.1, %polly.merge.us.1
  %polly.indvar243.us.1 = phi i64 [ %polly.indvar_next244.us.1, %polly.merge.us.1 ], [ 0, %polly.loop_header234.1 ]
  %312 = add nuw nsw i64 %polly.indvar243.us.1, 32
  %polly.access.mul.Packed_MemRef_call1.us.1 = mul nuw nsw i64 %polly.indvar243.us.1, 80
  br label %polly.loop_header247.us.1

polly.loop_header247.us.1:                        ; preds = %polly.loop_header247.us.1, %polly.loop_header240.us.1
  %polly.indvar251.us.1 = phi i64 [ %polly.indvar_next252.us.1, %polly.loop_header247.us.1 ], [ 0, %polly.loop_header240.us.1 ]
  %313 = add nuw nsw i64 %polly.indvar251.us.1, %300
  %polly.access.mul.call1255.us.1 = mul nuw nsw i64 %313, 60
  %polly.access.add.call1256.us.1 = add nuw nsw i64 %312, %polly.access.mul.call1255.us.1
  %polly.access.call1257.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1256.us.1
  %polly.access.call1257.load.us.1 = load double, double* %polly.access.call1257.us.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar251.us.1, %polly.access.mul.Packed_MemRef_call1.us.1
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1257.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next252.us.1 = add nuw nsw i64 %polly.indvar251.us.1, 1
  %exitcond1038.1.not = icmp eq i64 %polly.indvar251.us.1, %smin1040.1
  br i1 %exitcond1038.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header247.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header247.us.1
  br i1 %.not.1, label %polly.merge.us.1, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1260.us.1 = add nuw nsw i64 %311, %polly.indvar243.us.1
  %polly.access.call1261.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1260.us.1
  %polly.access.call1261.load.us.1 = load double, double* %polly.access.call1261.us.1, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1263.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us.1, %309
  %polly.access.Packed_MemRef_call1264.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1263.us.1
  store double %polly.access.call1261.load.us.1, double* %polly.access.Packed_MemRef_call1264.us.1, align 8
  br label %polly.merge.us.1

polly.merge.us.1:                                 ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  %polly.indvar_next244.us.1 = add nuw nsw i64 %polly.indvar243.us.1, 1
  %exitcond1039.1.not = icmp eq i64 %polly.indvar_next244.us.1, 28
  br i1 %exitcond1039.1.not, label %polly.loop_header265.preheader.1, label %polly.loop_header240.us.1

polly.loop_header265.preheader.1:                 ; preds = %polly.loop_header240.1, %polly.merge.us.1
  %314 = mul i64 %310, 640
  br i1 %polly.loop_guard250.11169, label %polly.loop_header265.us.1, label %polly.loop_exit267.1

polly.loop_header265.us.1:                        ; preds = %polly.loop_header265.preheader.1, %polly.loop_exit274.loopexit.us.1
  %polly.indvar268.us.1 = phi i64 [ %polly.indvar_next269.us.1, %polly.loop_exit274.loopexit.us.1 ], [ 0, %polly.loop_header265.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1279.us.1 = mul nuw nsw i64 %polly.indvar268.us.1, 80
  %315 = mul i64 %polly.indvar268.us.1, 80
  %polly.access.mul.Packed_MemRef_call2283.us.1 = add i64 %315, 2560
  %polly.access.add.Packed_MemRef_call2284.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283.us.1, %310
  %polly.access.Packed_MemRef_call2285.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2284.us.1
  %_p_scalar_286.us.1 = load double, double* %polly.access.Packed_MemRef_call2285.us.1, align 8
  %polly.access.add.Packed_MemRef_call1292.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1279.us.1, %309
  %polly.access.Packed_MemRef_call1293.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1292.us.1
  %_p_scalar_294.us.1 = load double, double* %polly.access.Packed_MemRef_call1293.us.1, align 8
  %min.iters.check1642 = icmp ult i64 %308, 4
  br i1 %min.iters.check1642, label %polly.loop_header272.us.1.preheader, label %vector.ph1643

vector.ph1643:                                    ; preds = %polly.loop_header265.us.1
  %n.vec1645 = and i64 %308, -4
  %broadcast.splatinsert1651 = insertelement <4 x double> poison, double %_p_scalar_286.us.1, i32 0
  %broadcast.splat1652 = shufflevector <4 x double> %broadcast.splatinsert1651, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1654 = insertelement <4 x double> poison, double %_p_scalar_294.us.1, i32 0
  %broadcast.splat1655 = shufflevector <4 x double> %broadcast.splatinsert1654, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1637

vector.body1637:                                  ; preds = %vector.body1637, %vector.ph1643
  %index1646 = phi i64 [ 0, %vector.ph1643 ], [ %index.next1647, %vector.body1637 ]
  %316 = add nuw nsw i64 %index1646, %300
  %317 = add nuw nsw i64 %index1646, %polly.access.mul.Packed_MemRef_call1279.us.1
  %318 = getelementptr double, double* %Packed_MemRef_call1, i64 %317
  %319 = bitcast double* %318 to <4 x double>*
  %wide.load1650 = load <4 x double>, <4 x double>* %319, align 8
  %320 = fmul fast <4 x double> %broadcast.splat1652, %wide.load1650
  %321 = add nuw nsw i64 %316, %polly.access.mul.Packed_MemRef_call2283.us.1
  %322 = getelementptr double, double* %Packed_MemRef_call2, i64 %321
  %323 = bitcast double* %322 to <4 x double>*
  %wide.load1653 = load <4 x double>, <4 x double>* %323, align 8
  %324 = fmul fast <4 x double> %broadcast.splat1655, %wide.load1653
  %325 = shl i64 %316, 3
  %326 = add i64 %325, %314
  %327 = getelementptr i8, i8* %call, i64 %326
  %328 = bitcast i8* %327 to <4 x double>*
  %wide.load1656 = load <4 x double>, <4 x double>* %328, align 8, !alias.scope !64, !noalias !66
  %329 = fadd fast <4 x double> %324, %320
  %330 = fmul fast <4 x double> %329, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %331 = fadd fast <4 x double> %330, %wide.load1656
  %332 = bitcast i8* %327 to <4 x double>*
  store <4 x double> %331, <4 x double>* %332, align 8, !alias.scope !64, !noalias !66
  %index.next1647 = add i64 %index1646, 4
  %333 = icmp eq i64 %index.next1647, %n.vec1645
  br i1 %333, label %middle.block1635, label %vector.body1637, !llvm.loop !114

middle.block1635:                                 ; preds = %vector.body1637
  %cmp.n1649 = icmp eq i64 %308, %n.vec1645
  br i1 %cmp.n1649, label %polly.loop_exit274.loopexit.us.1, label %polly.loop_header272.us.1.preheader

polly.loop_header272.us.1.preheader:              ; preds = %polly.loop_header265.us.1, %middle.block1635
  %polly.indvar276.us.1.ph = phi i64 [ 0, %polly.loop_header265.us.1 ], [ %n.vec1645, %middle.block1635 ]
  br label %polly.loop_header272.us.1

polly.loop_header272.us.1:                        ; preds = %polly.loop_header272.us.1.preheader, %polly.loop_header272.us.1
  %polly.indvar276.us.1 = phi i64 [ %polly.indvar_next277.us.1, %polly.loop_header272.us.1 ], [ %polly.indvar276.us.1.ph, %polly.loop_header272.us.1.preheader ]
  %334 = add nuw nsw i64 %polly.indvar276.us.1, %300
  %polly.access.add.Packed_MemRef_call1280.us.1 = add nuw nsw i64 %polly.indvar276.us.1, %polly.access.mul.Packed_MemRef_call1279.us.1
  %polly.access.Packed_MemRef_call1281.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1280.us.1
  %_p_scalar_282.us.1 = load double, double* %polly.access.Packed_MemRef_call1281.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_286.us.1, %_p_scalar_282.us.1
  %polly.access.add.Packed_MemRef_call2288.us.1 = add nuw nsw i64 %334, %polly.access.mul.Packed_MemRef_call2283.us.1
  %polly.access.Packed_MemRef_call2289.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2288.us.1
  %_p_scalar_290.us.1 = load double, double* %polly.access.Packed_MemRef_call2289.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_294.us.1, %_p_scalar_290.us.1
  %335 = shl i64 %334, 3
  %336 = add i64 %335, %314
  %scevgep295.us.1 = getelementptr i8, i8* %call, i64 %336
  %scevgep295296.us.1 = bitcast i8* %scevgep295.us.1 to double*
  %_p_scalar_297.us.1 = load double, double* %scevgep295296.us.1, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_297.us.1
  store double %p_add42.i118.us.1, double* %scevgep295296.us.1, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next277.us.1 = add nuw nsw i64 %polly.indvar276.us.1, 1
  %exitcond1041.1.not = icmp eq i64 %polly.indvar276.us.1, %smin1040.1
  br i1 %exitcond1041.1.not, label %polly.loop_exit274.loopexit.us.1, label %polly.loop_header272.us.1, !llvm.loop !115

polly.loop_exit274.loopexit.us.1:                 ; preds = %polly.loop_header272.us.1, %middle.block1635
  %polly.indvar_next269.us.1 = add nuw nsw i64 %polly.indvar268.us.1, 1
  %exitcond1042.1.not = icmp eq i64 %polly.indvar_next269.us.1, 28
  br i1 %exitcond1042.1.not, label %polly.loop_exit267.1, label %polly.loop_header265.us.1

polly.loop_exit267.1:                             ; preds = %polly.loop_exit274.loopexit.us.1, %polly.loop_header234.split.1, %polly.loop_header265.preheader.1
  %polly.indvar_next238.1 = add nuw nsw i64 %polly.indvar237.1, 1
  %polly.loop_cond239.not.not.1 = icmp ult i64 %polly.indvar237.1, %103
  %indvars.iv.next1037.1 = add i64 %indvars.iv1036.1, 1
  %indvar.next1640 = add i64 %indvar1639, 1
  br i1 %polly.loop_cond239.not.not.1, label %polly.loop_header234.1, label %polly.loop_exit236.1

polly.loop_exit236.1:                             ; preds = %polly.loop_exit267.1, %polly.loop_header228.1
  %polly.indvar_next232.1 = add nuw nsw i64 %polly.indvar231.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 32
  %indvars.iv.next1035.1 = add nsw i64 %indvars.iv1034.1, -32
  %exitcond1043.1.not = icmp eq i64 %polly.indvar_next232.1, %105
  br i1 %exitcond1043.1.not, label %polly.loop_exit230.1, label %polly.loop_header228.1

polly.loop_exit230.1:                             ; preds = %polly.loop_exit236.1
  br i1 %97, label %polly.loop_header216, label %polly.exiting

polly.loop_header432.1:                           ; preds = %polly.loop_exit441, %polly.loop_exit441.1
  %indvars.iv1052.1 = phi i64 [ %indvars.iv.next1053.1, %polly.loop_exit441.1 ], [ %161, %polly.loop_exit441 ]
  %indvars.iv1049.1 = phi i64 [ %indvars.iv.next1050.1, %polly.loop_exit441.1 ], [ %157, %polly.loop_exit441 ]
  %polly.indvar435.1 = phi i64 [ %polly.indvar_next436.1, %polly.loop_exit441.1 ], [ 0, %polly.loop_exit441 ]
  %337 = shl i64 %polly.indvar435.1, 5
  %338 = add i64 %157, %337
  %smax1568 = call i64 @llvm.smax.i64(i64 %338, i64 0)
  %339 = mul i64 %polly.indvar435.1, -32
  %340 = add i64 %161, %339
  %341 = add i64 %smax1568, %340
  %342 = shl nsw i64 %polly.indvar435.1, 5
  %343 = add nsw i64 %342, %157
  %344 = icmp sgt i64 %343, 0
  %345 = select i1 %344, i64 %343, i64 0
  %polly.loop_guard442.not.1 = icmp sgt i64 %345, %160
  br i1 %polly.loop_guard442.not.1, label %polly.loop_exit441.1, label %polly.loop_header439.preheader.1

polly.loop_header439.preheader.1:                 ; preds = %polly.loop_header432.1
  %smax1051.1 = call i64 @llvm.smax.i64(i64 %indvars.iv1049.1, i64 0)
  %346 = add i64 %smax1051.1, %indvars.iv1052.1
  %347 = sub nsw i64 %161, %342
  %348 = add nuw nsw i64 %342, 32
  br label %polly.loop_header439.1

polly.loop_header439.1:                           ; preds = %polly.loop_exit477.1, %polly.loop_header439.preheader.1
  %indvar1569 = phi i64 [ %indvar.next1570, %polly.loop_exit477.1 ], [ 0, %polly.loop_header439.preheader.1 ]
  %indvars.iv1054.1 = phi i64 [ %indvars.iv.next1055.1, %polly.loop_exit477.1 ], [ %346, %polly.loop_header439.preheader.1 ]
  %polly.indvar443.1 = phi i64 [ %polly.indvar_next444.1, %polly.loop_exit477.1 ], [ %345, %polly.loop_header439.preheader.1 ]
  %349 = add i64 %341, %indvar1569
  %smin1571 = call i64 @llvm.smin.i64(i64 %349, i64 31)
  %350 = add nsw i64 %smin1571, 1
  %smin1059.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1054.1, i64 31)
  %351 = add nsw i64 %polly.indvar443.1, %347
  %polly.loop_guard456.11172 = icmp sgt i64 %351, -1
  %352 = add nuw nsw i64 %polly.indvar443.1, %161
  %.not924.1 = icmp ult i64 %352, %348
  %polly.access.mul.call1469.1 = mul nsw i64 %352, 60
  %353 = add nuw i64 %polly.access.mul.call1469.1, 32
  br i1 %polly.loop_guard456.11172, label %polly.loop_header446.us.1, label %polly.loop_header439.split.1

polly.loop_header439.split.1:                     ; preds = %polly.loop_header439.1
  br i1 %.not924.1, label %polly.loop_exit477.1, label %polly.loop_header446.1

polly.loop_header446.1:                           ; preds = %polly.loop_header439.split.1, %polly.loop_header446.1
  %polly.indvar449.1 = phi i64 [ %polly.indvar_next450.1, %polly.loop_header446.1 ], [ 0, %polly.loop_header439.split.1 ]
  %polly.access.add.call1470.1 = add nuw nsw i64 %353, %polly.indvar449.1
  %polly.access.call1471.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.1
  %polly.access.call1471.load.1 = load double, double* %polly.access.call1471.1, align 8, !alias.scope !81, !noalias !88
  %polly.access.mul.Packed_MemRef_call1303472.1 = mul nuw nsw i64 %polly.indvar449.1, 80
  %polly.access.add.Packed_MemRef_call1303473.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1303472.1, %351
  %polly.access.Packed_MemRef_call1303474.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.1
  store double %polly.access.call1471.load.1, double* %polly.access.Packed_MemRef_call1303474.1, align 8
  %polly.indvar_next450.1 = add nuw nsw i64 %polly.indvar449.1, 1
  %exitcond1048.1.not = icmp eq i64 %polly.indvar_next450.1, 28
  br i1 %exitcond1048.1.not, label %polly.loop_header475.preheader.1, label %polly.loop_header446.1

polly.loop_header446.us.1:                        ; preds = %polly.loop_header439.1, %polly.merge465.us.1
  %polly.indvar449.us.1 = phi i64 [ %polly.indvar_next450.us.1, %polly.merge465.us.1 ], [ 0, %polly.loop_header439.1 ]
  %354 = add nuw nsw i64 %polly.indvar449.us.1, 32
  %polly.access.mul.Packed_MemRef_call1303.us.1 = mul nuw nsw i64 %polly.indvar449.us.1, 80
  br label %polly.loop_header453.us.1

polly.loop_header453.us.1:                        ; preds = %polly.loop_header453.us.1, %polly.loop_header446.us.1
  %polly.indvar457.us.1 = phi i64 [ %polly.indvar_next458.us.1, %polly.loop_header453.us.1 ], [ 0, %polly.loop_header446.us.1 ]
  %355 = add nuw nsw i64 %polly.indvar457.us.1, %342
  %polly.access.mul.call1461.us.1 = mul nuw nsw i64 %355, 60
  %polly.access.add.call1462.us.1 = add nuw nsw i64 %354, %polly.access.mul.call1461.us.1
  %polly.access.call1463.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1462.us.1
  %polly.access.call1463.load.us.1 = load double, double* %polly.access.call1463.us.1, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1303.us.1 = add nuw nsw i64 %polly.indvar457.us.1, %polly.access.mul.Packed_MemRef_call1303.us.1
  %polly.access.Packed_MemRef_call1303.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303.us.1
  store double %polly.access.call1463.load.us.1, double* %polly.access.Packed_MemRef_call1303.us.1, align 8
  %polly.indvar_next458.us.1 = add nuw nsw i64 %polly.indvar457.us.1, 1
  %exitcond1057.1.not = icmp eq i64 %polly.indvar457.us.1, %smin1059.1
  br i1 %exitcond1057.1.not, label %polly.cond464.loopexit.us.1, label %polly.loop_header453.us.1

polly.cond464.loopexit.us.1:                      ; preds = %polly.loop_header453.us.1
  br i1 %.not924.1, label %polly.merge465.us.1, label %polly.then466.us.1

polly.then466.us.1:                               ; preds = %polly.cond464.loopexit.us.1
  %polly.access.add.call1470.us.1 = add nuw nsw i64 %353, %polly.indvar449.us.1
  %polly.access.call1471.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1470.us.1
  %polly.access.call1471.load.us.1 = load double, double* %polly.access.call1471.us.1, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1303473.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1303.us.1, %351
  %polly.access.Packed_MemRef_call1303474.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303473.us.1
  store double %polly.access.call1471.load.us.1, double* %polly.access.Packed_MemRef_call1303474.us.1, align 8
  br label %polly.merge465.us.1

polly.merge465.us.1:                              ; preds = %polly.then466.us.1, %polly.cond464.loopexit.us.1
  %polly.indvar_next450.us.1 = add nuw nsw i64 %polly.indvar449.us.1, 1
  %exitcond1058.1.not = icmp eq i64 %polly.indvar_next450.us.1, 28
  br i1 %exitcond1058.1.not, label %polly.loop_header475.preheader.1, label %polly.loop_header446.us.1

polly.loop_header475.preheader.1:                 ; preds = %polly.loop_header446.1, %polly.merge465.us.1
  %356 = mul i64 %352, 640
  br i1 %polly.loop_guard456.11172, label %polly.loop_header475.us.1, label %polly.loop_exit477.1

polly.loop_header475.us.1:                        ; preds = %polly.loop_header475.preheader.1, %polly.loop_exit484.loopexit.us.1
  %polly.indvar478.us.1 = phi i64 [ %polly.indvar_next479.us.1, %polly.loop_exit484.loopexit.us.1 ], [ 0, %polly.loop_header475.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1303489.us.1 = mul nuw nsw i64 %polly.indvar478.us.1, 80
  %357 = mul i64 %polly.indvar478.us.1, 80
  %polly.access.mul.Packed_MemRef_call2305493.us.1 = add i64 %357, 2560
  %polly.access.add.Packed_MemRef_call2305494.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2305493.us.1, %352
  %polly.access.Packed_MemRef_call2305495.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305494.us.1
  %_p_scalar_496.us.1 = load double, double* %polly.access.Packed_MemRef_call2305495.us.1, align 8
  %polly.access.add.Packed_MemRef_call1303502.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1303489.us.1, %351
  %polly.access.Packed_MemRef_call1303503.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303502.us.1
  %_p_scalar_504.us.1 = load double, double* %polly.access.Packed_MemRef_call1303503.us.1, align 8
  %min.iters.check1572 = icmp ult i64 %350, 4
  br i1 %min.iters.check1572, label %polly.loop_header482.us.1.preheader, label %vector.ph1573

vector.ph1573:                                    ; preds = %polly.loop_header475.us.1
  %n.vec1575 = and i64 %350, -4
  %broadcast.splatinsert1581 = insertelement <4 x double> poison, double %_p_scalar_496.us.1, i32 0
  %broadcast.splat1582 = shufflevector <4 x double> %broadcast.splatinsert1581, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1584 = insertelement <4 x double> poison, double %_p_scalar_504.us.1, i32 0
  %broadcast.splat1585 = shufflevector <4 x double> %broadcast.splatinsert1584, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1567

vector.body1567:                                  ; preds = %vector.body1567, %vector.ph1573
  %index1576 = phi i64 [ 0, %vector.ph1573 ], [ %index.next1577, %vector.body1567 ]
  %358 = add nuw nsw i64 %index1576, %342
  %359 = add nuw nsw i64 %index1576, %polly.access.mul.Packed_MemRef_call1303489.us.1
  %360 = getelementptr double, double* %Packed_MemRef_call1303, i64 %359
  %361 = bitcast double* %360 to <4 x double>*
  %wide.load1580 = load <4 x double>, <4 x double>* %361, align 8
  %362 = fmul fast <4 x double> %broadcast.splat1582, %wide.load1580
  %363 = add nuw nsw i64 %358, %polly.access.mul.Packed_MemRef_call2305493.us.1
  %364 = getelementptr double, double* %Packed_MemRef_call2305, i64 %363
  %365 = bitcast double* %364 to <4 x double>*
  %wide.load1583 = load <4 x double>, <4 x double>* %365, align 8
  %366 = fmul fast <4 x double> %broadcast.splat1585, %wide.load1583
  %367 = shl i64 %358, 3
  %368 = add i64 %367, %356
  %369 = getelementptr i8, i8* %call, i64 %368
  %370 = bitcast i8* %369 to <4 x double>*
  %wide.load1586 = load <4 x double>, <4 x double>* %370, align 8, !alias.scope !78, !noalias !80
  %371 = fadd fast <4 x double> %366, %362
  %372 = fmul fast <4 x double> %371, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %373 = fadd fast <4 x double> %372, %wide.load1586
  %374 = bitcast i8* %369 to <4 x double>*
  store <4 x double> %373, <4 x double>* %374, align 8, !alias.scope !78, !noalias !80
  %index.next1577 = add i64 %index1576, 4
  %375 = icmp eq i64 %index.next1577, %n.vec1575
  br i1 %375, label %middle.block1565, label %vector.body1567, !llvm.loop !116

middle.block1565:                                 ; preds = %vector.body1567
  %cmp.n1579 = icmp eq i64 %350, %n.vec1575
  br i1 %cmp.n1579, label %polly.loop_exit484.loopexit.us.1, label %polly.loop_header482.us.1.preheader

polly.loop_header482.us.1.preheader:              ; preds = %polly.loop_header475.us.1, %middle.block1565
  %polly.indvar486.us.1.ph = phi i64 [ 0, %polly.loop_header475.us.1 ], [ %n.vec1575, %middle.block1565 ]
  br label %polly.loop_header482.us.1

polly.loop_header482.us.1:                        ; preds = %polly.loop_header482.us.1.preheader, %polly.loop_header482.us.1
  %polly.indvar486.us.1 = phi i64 [ %polly.indvar_next487.us.1, %polly.loop_header482.us.1 ], [ %polly.indvar486.us.1.ph, %polly.loop_header482.us.1.preheader ]
  %376 = add nuw nsw i64 %polly.indvar486.us.1, %342
  %polly.access.add.Packed_MemRef_call1303490.us.1 = add nuw nsw i64 %polly.indvar486.us.1, %polly.access.mul.Packed_MemRef_call1303489.us.1
  %polly.access.Packed_MemRef_call1303491.us.1 = getelementptr double, double* %Packed_MemRef_call1303, i64 %polly.access.add.Packed_MemRef_call1303490.us.1
  %_p_scalar_492.us.1 = load double, double* %polly.access.Packed_MemRef_call1303491.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_496.us.1, %_p_scalar_492.us.1
  %polly.access.add.Packed_MemRef_call2305498.us.1 = add nuw nsw i64 %376, %polly.access.mul.Packed_MemRef_call2305493.us.1
  %polly.access.Packed_MemRef_call2305499.us.1 = getelementptr double, double* %Packed_MemRef_call2305, i64 %polly.access.add.Packed_MemRef_call2305498.us.1
  %_p_scalar_500.us.1 = load double, double* %polly.access.Packed_MemRef_call2305499.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_504.us.1, %_p_scalar_500.us.1
  %377 = shl i64 %376, 3
  %378 = add i64 %377, %356
  %scevgep505.us.1 = getelementptr i8, i8* %call, i64 %378
  %scevgep505506.us.1 = bitcast i8* %scevgep505.us.1 to double*
  %_p_scalar_507.us.1 = load double, double* %scevgep505506.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_507.us.1
  store double %p_add42.i79.us.1, double* %scevgep505506.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next487.us.1 = add nuw nsw i64 %polly.indvar486.us.1, 1
  %exitcond1060.1.not = icmp eq i64 %polly.indvar486.us.1, %smin1059.1
  br i1 %exitcond1060.1.not, label %polly.loop_exit484.loopexit.us.1, label %polly.loop_header482.us.1, !llvm.loop !117

polly.loop_exit484.loopexit.us.1:                 ; preds = %polly.loop_header482.us.1, %middle.block1565
  %polly.indvar_next479.us.1 = add nuw nsw i64 %polly.indvar478.us.1, 1
  %exitcond1061.1.not = icmp eq i64 %polly.indvar_next479.us.1, 28
  br i1 %exitcond1061.1.not, label %polly.loop_exit477.1, label %polly.loop_header475.us.1

polly.loop_exit477.1:                             ; preds = %polly.loop_exit484.loopexit.us.1, %polly.loop_header439.split.1, %polly.loop_header475.preheader.1
  %polly.indvar_next444.1 = add nuw nsw i64 %polly.indvar443.1, 1
  %polly.loop_cond445.not.not.1 = icmp ult i64 %polly.indvar443.1, %160
  %indvars.iv.next1055.1 = add i64 %indvars.iv1054.1, 1
  %indvar.next1570 = add i64 %indvar1569, 1
  br i1 %polly.loop_cond445.not.not.1, label %polly.loop_header439.1, label %polly.loop_exit441.1

polly.loop_exit441.1:                             ; preds = %polly.loop_exit477.1, %polly.loop_header432.1
  %polly.indvar_next436.1 = add nuw nsw i64 %polly.indvar435.1, 1
  %indvars.iv.next1050.1 = add nsw i64 %indvars.iv1049.1, 32
  %indvars.iv.next1053.1 = add nsw i64 %indvars.iv1052.1, -32
  %exitcond1062.1.not = icmp eq i64 %polly.indvar_next436.1, %162
  br i1 %exitcond1062.1.not, label %polly.loop_exit434.1, label %polly.loop_header432.1

polly.loop_exit434.1:                             ; preds = %polly.loop_exit441.1
  br i1 %154, label %polly.loop_header420, label %polly.exiting301

polly.loop_header642.1:                           ; preds = %polly.loop_exit651, %polly.loop_exit651.1
  %indvars.iv1071.1 = phi i64 [ %indvars.iv.next1072.1, %polly.loop_exit651.1 ], [ %218, %polly.loop_exit651 ]
  %indvars.iv1068.1 = phi i64 [ %indvars.iv.next1069.1, %polly.loop_exit651.1 ], [ %214, %polly.loop_exit651 ]
  %polly.indvar645.1 = phi i64 [ %polly.indvar_next646.1, %polly.loop_exit651.1 ], [ 0, %polly.loop_exit651 ]
  %379 = shl i64 %polly.indvar645.1, 5
  %380 = add i64 %214, %379
  %smax1499 = call i64 @llvm.smax.i64(i64 %380, i64 0)
  %381 = mul i64 %polly.indvar645.1, -32
  %382 = add i64 %218, %381
  %383 = add i64 %smax1499, %382
  %384 = shl nsw i64 %polly.indvar645.1, 5
  %385 = add nsw i64 %384, %214
  %386 = icmp sgt i64 %385, 0
  %387 = select i1 %386, i64 %385, i64 0
  %polly.loop_guard652.not.1 = icmp sgt i64 %387, %217
  br i1 %polly.loop_guard652.not.1, label %polly.loop_exit651.1, label %polly.loop_header649.preheader.1

polly.loop_header649.preheader.1:                 ; preds = %polly.loop_header642.1
  %smax1070.1 = call i64 @llvm.smax.i64(i64 %indvars.iv1068.1, i64 0)
  %388 = add i64 %smax1070.1, %indvars.iv1071.1
  %389 = sub nsw i64 %218, %384
  %390 = add nuw nsw i64 %384, 32
  br label %polly.loop_header649.1

polly.loop_header649.1:                           ; preds = %polly.loop_exit687.1, %polly.loop_header649.preheader.1
  %indvar1500 = phi i64 [ %indvar.next1501, %polly.loop_exit687.1 ], [ 0, %polly.loop_header649.preheader.1 ]
  %indvars.iv1073.1 = phi i64 [ %indvars.iv.next1074.1, %polly.loop_exit687.1 ], [ %388, %polly.loop_header649.preheader.1 ]
  %polly.indvar653.1 = phi i64 [ %polly.indvar_next654.1, %polly.loop_exit687.1 ], [ %387, %polly.loop_header649.preheader.1 ]
  %391 = add i64 %383, %indvar1500
  %smin = call i64 @llvm.smin.i64(i64 %391, i64 31)
  %392 = add nsw i64 %smin, 1
  %smin1078.1 = call i64 @llvm.smin.i64(i64 %indvars.iv1073.1, i64 31)
  %393 = add nsw i64 %polly.indvar653.1, %389
  %polly.loop_guard666.11175 = icmp sgt i64 %393, -1
  %394 = add nuw nsw i64 %polly.indvar653.1, %218
  %.not925.1 = icmp ult i64 %394, %390
  %polly.access.mul.call1679.1 = mul nsw i64 %394, 60
  %395 = add nuw i64 %polly.access.mul.call1679.1, 32
  br i1 %polly.loop_guard666.11175, label %polly.loop_header656.us.1, label %polly.loop_header649.split.1

polly.loop_header649.split.1:                     ; preds = %polly.loop_header649.1
  br i1 %.not925.1, label %polly.loop_exit687.1, label %polly.loop_header656.1

polly.loop_header656.1:                           ; preds = %polly.loop_header649.split.1, %polly.loop_header656.1
  %polly.indvar659.1 = phi i64 [ %polly.indvar_next660.1, %polly.loop_header656.1 ], [ 0, %polly.loop_header649.split.1 ]
  %polly.access.add.call1680.1 = add nuw nsw i64 %395, %polly.indvar659.1
  %polly.access.call1681.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.1
  %polly.access.call1681.load.1 = load double, double* %polly.access.call1681.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.mul.Packed_MemRef_call1513682.1 = mul nuw nsw i64 %polly.indvar659.1, 80
  %polly.access.add.Packed_MemRef_call1513683.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1513682.1, %393
  %polly.access.Packed_MemRef_call1513684.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.1
  store double %polly.access.call1681.load.1, double* %polly.access.Packed_MemRef_call1513684.1, align 8
  %polly.indvar_next660.1 = add nuw nsw i64 %polly.indvar659.1, 1
  %exitcond1067.1.not = icmp eq i64 %polly.indvar_next660.1, 28
  br i1 %exitcond1067.1.not, label %polly.loop_header685.preheader.1, label %polly.loop_header656.1

polly.loop_header656.us.1:                        ; preds = %polly.loop_header649.1, %polly.merge675.us.1
  %polly.indvar659.us.1 = phi i64 [ %polly.indvar_next660.us.1, %polly.merge675.us.1 ], [ 0, %polly.loop_header649.1 ]
  %396 = add nuw nsw i64 %polly.indvar659.us.1, 32
  %polly.access.mul.Packed_MemRef_call1513.us.1 = mul nuw nsw i64 %polly.indvar659.us.1, 80
  br label %polly.loop_header663.us.1

polly.loop_header663.us.1:                        ; preds = %polly.loop_header663.us.1, %polly.loop_header656.us.1
  %polly.indvar667.us.1 = phi i64 [ %polly.indvar_next668.us.1, %polly.loop_header663.us.1 ], [ 0, %polly.loop_header656.us.1 ]
  %397 = add nuw nsw i64 %polly.indvar667.us.1, %384
  %polly.access.mul.call1671.us.1 = mul nuw nsw i64 %397, 60
  %polly.access.add.call1672.us.1 = add nuw nsw i64 %396, %polly.access.mul.call1671.us.1
  %polly.access.call1673.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1672.us.1
  %polly.access.call1673.load.us.1 = load double, double* %polly.access.call1673.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1513.us.1 = add nuw nsw i64 %polly.indvar667.us.1, %polly.access.mul.Packed_MemRef_call1513.us.1
  %polly.access.Packed_MemRef_call1513.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513.us.1
  store double %polly.access.call1673.load.us.1, double* %polly.access.Packed_MemRef_call1513.us.1, align 8
  %polly.indvar_next668.us.1 = add nuw nsw i64 %polly.indvar667.us.1, 1
  %exitcond1076.1.not = icmp eq i64 %polly.indvar667.us.1, %smin1078.1
  br i1 %exitcond1076.1.not, label %polly.cond674.loopexit.us.1, label %polly.loop_header663.us.1

polly.cond674.loopexit.us.1:                      ; preds = %polly.loop_header663.us.1
  br i1 %.not925.1, label %polly.merge675.us.1, label %polly.then676.us.1

polly.then676.us.1:                               ; preds = %polly.cond674.loopexit.us.1
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %395, %polly.indvar659.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1722, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1513683.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1513.us.1, %393
  %polly.access.Packed_MemRef_call1513684.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513683.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1513684.us.1, align 8
  br label %polly.merge675.us.1

polly.merge675.us.1:                              ; preds = %polly.then676.us.1, %polly.cond674.loopexit.us.1
  %polly.indvar_next660.us.1 = add nuw nsw i64 %polly.indvar659.us.1, 1
  %exitcond1077.1.not = icmp eq i64 %polly.indvar_next660.us.1, 28
  br i1 %exitcond1077.1.not, label %polly.loop_header685.preheader.1, label %polly.loop_header656.us.1

polly.loop_header685.preheader.1:                 ; preds = %polly.loop_header656.1, %polly.merge675.us.1
  %398 = mul i64 %394, 640
  br i1 %polly.loop_guard666.11175, label %polly.loop_header685.us.1, label %polly.loop_exit687.1

polly.loop_header685.us.1:                        ; preds = %polly.loop_header685.preheader.1, %polly.loop_exit694.loopexit.us.1
  %polly.indvar688.us.1 = phi i64 [ %polly.indvar_next689.us.1, %polly.loop_exit694.loopexit.us.1 ], [ 0, %polly.loop_header685.preheader.1 ]
  %polly.access.mul.Packed_MemRef_call1513699.us.1 = mul nuw nsw i64 %polly.indvar688.us.1, 80
  %399 = mul i64 %polly.indvar688.us.1, 80
  %polly.access.mul.Packed_MemRef_call2515703.us.1 = add i64 %399, 2560
  %polly.access.add.Packed_MemRef_call2515704.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2515703.us.1, %394
  %polly.access.Packed_MemRef_call2515705.us.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515704.us.1
  %_p_scalar_706.us.1 = load double, double* %polly.access.Packed_MemRef_call2515705.us.1, align 8
  %polly.access.add.Packed_MemRef_call1513712.us.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call1513699.us.1, %393
  %polly.access.Packed_MemRef_call1513713.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513712.us.1
  %_p_scalar_714.us.1 = load double, double* %polly.access.Packed_MemRef_call1513713.us.1, align 8
  %min.iters.check1502 = icmp ult i64 %392, 4
  br i1 %min.iters.check1502, label %polly.loop_header692.us.1.preheader, label %vector.ph1503

vector.ph1503:                                    ; preds = %polly.loop_header685.us.1
  %n.vec1505 = and i64 %392, -4
  %broadcast.splatinsert1511 = insertelement <4 x double> poison, double %_p_scalar_706.us.1, i32 0
  %broadcast.splat1512 = shufflevector <4 x double> %broadcast.splatinsert1511, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1514 = insertelement <4 x double> poison, double %_p_scalar_714.us.1, i32 0
  %broadcast.splat1515 = shufflevector <4 x double> %broadcast.splatinsert1514, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1498

vector.body1498:                                  ; preds = %vector.body1498, %vector.ph1503
  %index1506 = phi i64 [ 0, %vector.ph1503 ], [ %index.next1507, %vector.body1498 ]
  %400 = add nuw nsw i64 %index1506, %384
  %401 = add nuw nsw i64 %index1506, %polly.access.mul.Packed_MemRef_call1513699.us.1
  %402 = getelementptr double, double* %Packed_MemRef_call1513, i64 %401
  %403 = bitcast double* %402 to <4 x double>*
  %wide.load1510 = load <4 x double>, <4 x double>* %403, align 8
  %404 = fmul fast <4 x double> %broadcast.splat1512, %wide.load1510
  %405 = add nuw nsw i64 %400, %polly.access.mul.Packed_MemRef_call2515703.us.1
  %406 = getelementptr double, double* %Packed_MemRef_call2515, i64 %405
  %407 = bitcast double* %406 to <4 x double>*
  %wide.load1513 = load <4 x double>, <4 x double>* %407, align 8
  %408 = fmul fast <4 x double> %broadcast.splat1515, %wide.load1513
  %409 = shl i64 %400, 3
  %410 = add i64 %409, %398
  %411 = getelementptr i8, i8* %call, i64 %410
  %412 = bitcast i8* %411 to <4 x double>*
  %wide.load1516 = load <4 x double>, <4 x double>* %412, align 8, !alias.scope !91, !noalias !93
  %413 = fadd fast <4 x double> %408, %404
  %414 = fmul fast <4 x double> %413, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %415 = fadd fast <4 x double> %414, %wide.load1516
  %416 = bitcast i8* %411 to <4 x double>*
  store <4 x double> %415, <4 x double>* %416, align 8, !alias.scope !91, !noalias !93
  %index.next1507 = add i64 %index1506, 4
  %417 = icmp eq i64 %index.next1507, %n.vec1505
  br i1 %417, label %middle.block1496, label %vector.body1498, !llvm.loop !118

middle.block1496:                                 ; preds = %vector.body1498
  %cmp.n1509 = icmp eq i64 %392, %n.vec1505
  br i1 %cmp.n1509, label %polly.loop_exit694.loopexit.us.1, label %polly.loop_header692.us.1.preheader

polly.loop_header692.us.1.preheader:              ; preds = %polly.loop_header685.us.1, %middle.block1496
  %polly.indvar696.us.1.ph = phi i64 [ 0, %polly.loop_header685.us.1 ], [ %n.vec1505, %middle.block1496 ]
  br label %polly.loop_header692.us.1

polly.loop_header692.us.1:                        ; preds = %polly.loop_header692.us.1.preheader, %polly.loop_header692.us.1
  %polly.indvar696.us.1 = phi i64 [ %polly.indvar_next697.us.1, %polly.loop_header692.us.1 ], [ %polly.indvar696.us.1.ph, %polly.loop_header692.us.1.preheader ]
  %418 = add nuw nsw i64 %polly.indvar696.us.1, %384
  %polly.access.add.Packed_MemRef_call1513700.us.1 = add nuw nsw i64 %polly.indvar696.us.1, %polly.access.mul.Packed_MemRef_call1513699.us.1
  %polly.access.Packed_MemRef_call1513701.us.1 = getelementptr double, double* %Packed_MemRef_call1513, i64 %polly.access.add.Packed_MemRef_call1513700.us.1
  %_p_scalar_702.us.1 = load double, double* %polly.access.Packed_MemRef_call1513701.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_706.us.1, %_p_scalar_702.us.1
  %polly.access.add.Packed_MemRef_call2515708.us.1 = add nuw nsw i64 %418, %polly.access.mul.Packed_MemRef_call2515703.us.1
  %polly.access.Packed_MemRef_call2515709.us.1 = getelementptr double, double* %Packed_MemRef_call2515, i64 %polly.access.add.Packed_MemRef_call2515708.us.1
  %_p_scalar_710.us.1 = load double, double* %polly.access.Packed_MemRef_call2515709.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_714.us.1, %_p_scalar_710.us.1
  %419 = shl i64 %418, 3
  %420 = add i64 %419, %398
  %scevgep715.us.1 = getelementptr i8, i8* %call, i64 %420
  %scevgep715716.us.1 = bitcast i8* %scevgep715.us.1 to double*
  %_p_scalar_717.us.1 = load double, double* %scevgep715716.us.1, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_717.us.1
  store double %p_add42.i.us.1, double* %scevgep715716.us.1, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next697.us.1 = add nuw nsw i64 %polly.indvar696.us.1, 1
  %exitcond1079.1.not = icmp eq i64 %polly.indvar696.us.1, %smin1078.1
  br i1 %exitcond1079.1.not, label %polly.loop_exit694.loopexit.us.1, label %polly.loop_header692.us.1, !llvm.loop !119

polly.loop_exit694.loopexit.us.1:                 ; preds = %polly.loop_header692.us.1, %middle.block1496
  %polly.indvar_next689.us.1 = add nuw nsw i64 %polly.indvar688.us.1, 1
  %exitcond1080.1.not = icmp eq i64 %polly.indvar_next689.us.1, 28
  br i1 %exitcond1080.1.not, label %polly.loop_exit687.1, label %polly.loop_header685.us.1

polly.loop_exit687.1:                             ; preds = %polly.loop_exit694.loopexit.us.1, %polly.loop_header649.split.1, %polly.loop_header685.preheader.1
  %polly.indvar_next654.1 = add nuw nsw i64 %polly.indvar653.1, 1
  %polly.loop_cond655.not.not.1 = icmp ult i64 %polly.indvar653.1, %217
  %indvars.iv.next1074.1 = add i64 %indvars.iv1073.1, 1
  %indvar.next1501 = add i64 %indvar1500, 1
  br i1 %polly.loop_cond655.not.not.1, label %polly.loop_header649.1, label %polly.loop_exit651.1

polly.loop_exit651.1:                             ; preds = %polly.loop_exit687.1, %polly.loop_header642.1
  %polly.indvar_next646.1 = add nuw nsw i64 %polly.indvar645.1, 1
  %indvars.iv.next1069.1 = add nsw i64 %indvars.iv1068.1, 32
  %indvars.iv.next1072.1 = add nsw i64 %indvars.iv1071.1, -32
  %exitcond1081.1.not = icmp eq i64 %polly.indvar_next646.1, %219
  br i1 %exitcond1081.1.not, label %polly.loop_exit644.1, label %polly.loop_header642.1

polly.loop_exit644.1:                             ; preds = %polly.loop_exit651.1
  br i1 %211, label %polly.loop_header630, label %polly.exiting511

polly.loop_header909.1:                           ; preds = %polly.loop_exit917, %polly.loop_exit917.1
  %polly.indvar912.1 = phi i64 [ %polly.indvar_next913.1, %polly.loop_exit917.1 ], [ 0, %polly.loop_exit917 ]
  %421 = mul nuw nsw i64 %polly.indvar912.1, 480
  %422 = trunc i64 %polly.indvar912.1 to i32
  %broadcast.splatinsert1422 = insertelement <4 x i32> poison, i32 %422, i32 0
  %broadcast.splat1423 = shufflevector <4 x i32> %broadcast.splatinsert1422, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1414

vector.body1414:                                  ; preds = %vector.body1414, %polly.loop_header909.1
  %index1416 = phi i64 [ 0, %polly.loop_header909.1 ], [ %index.next1417, %vector.body1414 ]
  %vec.ind1420 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header909.1 ], [ %vec.ind.next1421, %vector.body1414 ]
  %423 = add nuw nsw <4 x i64> %vec.ind1420, <i64 32, i64 32, i64 32, i64 32>
  %424 = trunc <4 x i64> %423 to <4 x i32>
  %425 = mul <4 x i32> %broadcast.splat1423, %424
  %426 = add <4 x i32> %425, <i32 1, i32 1, i32 1, i32 1>
  %427 = urem <4 x i32> %426, <i32 80, i32 80, i32 80, i32 80>
  %428 = sitofp <4 x i32> %427 to <4 x double>
  %429 = fmul fast <4 x double> %428, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %430 = extractelement <4 x i64> %423, i32 0
  %431 = shl i64 %430, 3
  %432 = add i64 %431, %421
  %433 = getelementptr i8, i8* %call1, i64 %432
  %434 = bitcast i8* %433 to <4 x double>*
  store <4 x double> %429, <4 x double>* %434, align 8, !alias.scope !107, !noalias !112
  %index.next1417 = add i64 %index1416, 4
  %vec.ind.next1421 = add <4 x i64> %vec.ind1420, <i64 4, i64 4, i64 4, i64 4>
  %435 = icmp eq i64 %index.next1417, 28
  br i1 %435, label %polly.loop_exit917.1, label %vector.body1414, !llvm.loop !120

polly.loop_exit917.1:                             ; preds = %vector.body1414
  %polly.indvar_next913.1 = add nuw nsw i64 %polly.indvar912.1, 1
  %exitcond1090.1.not = icmp eq i64 %polly.indvar_next913.1, 32
  br i1 %exitcond1090.1.not, label %polly.loop_header909.11113, label %polly.loop_header909.1

polly.loop_header909.11113:                       ; preds = %polly.loop_exit917.1, %polly.loop_exit917.11124
  %polly.indvar912.11112 = phi i64 [ %polly.indvar_next913.11122, %polly.loop_exit917.11124 ], [ 0, %polly.loop_exit917.1 ]
  %436 = add nuw nsw i64 %polly.indvar912.11112, 32
  %437 = mul nuw nsw i64 %436, 480
  %438 = trunc i64 %436 to i32
  %broadcast.splatinsert1436 = insertelement <4 x i32> poison, i32 %438, i32 0
  %broadcast.splat1437 = shufflevector <4 x i32> %broadcast.splatinsert1436, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1426

vector.body1426:                                  ; preds = %vector.body1426, %polly.loop_header909.11113
  %index1428 = phi i64 [ 0, %polly.loop_header909.11113 ], [ %index.next1429, %vector.body1426 ]
  %vec.ind1434 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header909.11113 ], [ %vec.ind.next1435, %vector.body1426 ]
  %439 = mul <4 x i32> %vec.ind1434, %broadcast.splat1437
  %440 = add <4 x i32> %439, <i32 1, i32 1, i32 1, i32 1>
  %441 = urem <4 x i32> %440, <i32 80, i32 80, i32 80, i32 80>
  %442 = sitofp <4 x i32> %441 to <4 x double>
  %443 = fmul fast <4 x double> %442, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %444 = shl i64 %index1428, 3
  %445 = add i64 %444, %437
  %446 = getelementptr i8, i8* %call1, i64 %445
  %447 = bitcast i8* %446 to <4 x double>*
  store <4 x double> %443, <4 x double>* %447, align 8, !alias.scope !107, !noalias !112
  %index.next1429 = add i64 %index1428, 4
  %vec.ind.next1435 = add <4 x i32> %vec.ind1434, <i32 4, i32 4, i32 4, i32 4>
  %448 = icmp eq i64 %index.next1429, 32
  br i1 %448, label %polly.loop_exit917.11124, label %vector.body1426, !llvm.loop !121

polly.loop_exit917.11124:                         ; preds = %vector.body1426
  %polly.indvar_next913.11122 = add nuw nsw i64 %polly.indvar912.11112, 1
  %exitcond1090.11123.not = icmp eq i64 %polly.indvar_next913.11122, 32
  br i1 %exitcond1090.11123.not, label %polly.loop_header909.1.1, label %polly.loop_header909.11113

polly.loop_header909.1.1:                         ; preds = %polly.loop_exit917.11124, %polly.loop_exit917.1.1
  %polly.indvar912.1.1 = phi i64 [ %polly.indvar_next913.1.1, %polly.loop_exit917.1.1 ], [ 0, %polly.loop_exit917.11124 ]
  %449 = add nuw nsw i64 %polly.indvar912.1.1, 32
  %450 = mul nuw nsw i64 %449, 480
  %451 = trunc i64 %449 to i32
  %broadcast.splatinsert1448 = insertelement <4 x i32> poison, i32 %451, i32 0
  %broadcast.splat1449 = shufflevector <4 x i32> %broadcast.splatinsert1448, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1440

vector.body1440:                                  ; preds = %vector.body1440, %polly.loop_header909.1.1
  %index1442 = phi i64 [ 0, %polly.loop_header909.1.1 ], [ %index.next1443, %vector.body1440 ]
  %vec.ind1446 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header909.1.1 ], [ %vec.ind.next1447, %vector.body1440 ]
  %452 = add nuw nsw <4 x i64> %vec.ind1446, <i64 32, i64 32, i64 32, i64 32>
  %453 = trunc <4 x i64> %452 to <4 x i32>
  %454 = mul <4 x i32> %broadcast.splat1449, %453
  %455 = add <4 x i32> %454, <i32 1, i32 1, i32 1, i32 1>
  %456 = urem <4 x i32> %455, <i32 80, i32 80, i32 80, i32 80>
  %457 = sitofp <4 x i32> %456 to <4 x double>
  %458 = fmul fast <4 x double> %457, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %459 = extractelement <4 x i64> %452, i32 0
  %460 = shl i64 %459, 3
  %461 = add i64 %460, %450
  %462 = getelementptr i8, i8* %call1, i64 %461
  %463 = bitcast i8* %462 to <4 x double>*
  store <4 x double> %458, <4 x double>* %463, align 8, !alias.scope !107, !noalias !112
  %index.next1443 = add i64 %index1442, 4
  %vec.ind.next1447 = add <4 x i64> %vec.ind1446, <i64 4, i64 4, i64 4, i64 4>
  %464 = icmp eq i64 %index.next1443, 28
  br i1 %464, label %polly.loop_exit917.1.1, label %vector.body1440, !llvm.loop !122

polly.loop_exit917.1.1:                           ; preds = %vector.body1440
  %polly.indvar_next913.1.1 = add nuw nsw i64 %polly.indvar912.1.1, 1
  %exitcond1090.1.1.not = icmp eq i64 %polly.indvar_next913.1.1, 32
  br i1 %exitcond1090.1.1.not, label %polly.loop_header909.2, label %polly.loop_header909.1.1

polly.loop_header909.2:                           ; preds = %polly.loop_exit917.1.1, %polly.loop_exit917.2
  %polly.indvar912.2 = phi i64 [ %polly.indvar_next913.2, %polly.loop_exit917.2 ], [ 0, %polly.loop_exit917.1.1 ]
  %465 = add nuw nsw i64 %polly.indvar912.2, 64
  %466 = mul nuw nsw i64 %465, 480
  %467 = trunc i64 %465 to i32
  %broadcast.splatinsert1462 = insertelement <4 x i32> poison, i32 %467, i32 0
  %broadcast.splat1463 = shufflevector <4 x i32> %broadcast.splatinsert1462, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1452

vector.body1452:                                  ; preds = %vector.body1452, %polly.loop_header909.2
  %index1454 = phi i64 [ 0, %polly.loop_header909.2 ], [ %index.next1455, %vector.body1452 ]
  %vec.ind1460 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header909.2 ], [ %vec.ind.next1461, %vector.body1452 ]
  %468 = mul <4 x i32> %vec.ind1460, %broadcast.splat1463
  %469 = add <4 x i32> %468, <i32 1, i32 1, i32 1, i32 1>
  %470 = urem <4 x i32> %469, <i32 80, i32 80, i32 80, i32 80>
  %471 = sitofp <4 x i32> %470 to <4 x double>
  %472 = fmul fast <4 x double> %471, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %473 = shl i64 %index1454, 3
  %474 = add i64 %473, %466
  %475 = getelementptr i8, i8* %call1, i64 %474
  %476 = bitcast i8* %475 to <4 x double>*
  store <4 x double> %472, <4 x double>* %476, align 8, !alias.scope !107, !noalias !112
  %index.next1455 = add i64 %index1454, 4
  %vec.ind.next1461 = add <4 x i32> %vec.ind1460, <i32 4, i32 4, i32 4, i32 4>
  %477 = icmp eq i64 %index.next1455, 32
  br i1 %477, label %polly.loop_exit917.2, label %vector.body1452, !llvm.loop !123

polly.loop_exit917.2:                             ; preds = %vector.body1452
  %polly.indvar_next913.2 = add nuw nsw i64 %polly.indvar912.2, 1
  %exitcond1090.2.not = icmp eq i64 %polly.indvar_next913.2, 16
  br i1 %exitcond1090.2.not, label %polly.loop_header909.1.2, label %polly.loop_header909.2

polly.loop_header909.1.2:                         ; preds = %polly.loop_exit917.2, %polly.loop_exit917.1.2
  %polly.indvar912.1.2 = phi i64 [ %polly.indvar_next913.1.2, %polly.loop_exit917.1.2 ], [ 0, %polly.loop_exit917.2 ]
  %478 = add nuw nsw i64 %polly.indvar912.1.2, 64
  %479 = mul nuw nsw i64 %478, 480
  %480 = trunc i64 %478 to i32
  %broadcast.splatinsert1474 = insertelement <4 x i32> poison, i32 %480, i32 0
  %broadcast.splat1475 = shufflevector <4 x i32> %broadcast.splatinsert1474, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1466

vector.body1466:                                  ; preds = %vector.body1466, %polly.loop_header909.1.2
  %index1468 = phi i64 [ 0, %polly.loop_header909.1.2 ], [ %index.next1469, %vector.body1466 ]
  %vec.ind1472 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header909.1.2 ], [ %vec.ind.next1473, %vector.body1466 ]
  %481 = add nuw nsw <4 x i64> %vec.ind1472, <i64 32, i64 32, i64 32, i64 32>
  %482 = trunc <4 x i64> %481 to <4 x i32>
  %483 = mul <4 x i32> %broadcast.splat1475, %482
  %484 = add <4 x i32> %483, <i32 1, i32 1, i32 1, i32 1>
  %485 = urem <4 x i32> %484, <i32 80, i32 80, i32 80, i32 80>
  %486 = sitofp <4 x i32> %485 to <4 x double>
  %487 = fmul fast <4 x double> %486, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %488 = extractelement <4 x i64> %481, i32 0
  %489 = shl i64 %488, 3
  %490 = add i64 %489, %479
  %491 = getelementptr i8, i8* %call1, i64 %490
  %492 = bitcast i8* %491 to <4 x double>*
  store <4 x double> %487, <4 x double>* %492, align 8, !alias.scope !107, !noalias !112
  %index.next1469 = add i64 %index1468, 4
  %vec.ind.next1473 = add <4 x i64> %vec.ind1472, <i64 4, i64 4, i64 4, i64 4>
  %493 = icmp eq i64 %index.next1469, 28
  br i1 %493, label %polly.loop_exit917.1.2, label %vector.body1466, !llvm.loop !124

polly.loop_exit917.1.2:                           ; preds = %vector.body1466
  %polly.indvar_next913.1.2 = add nuw nsw i64 %polly.indvar912.1.2, 1
  %exitcond1090.1.2.not = icmp eq i64 %polly.indvar_next913.1.2, 16
  br i1 %exitcond1090.1.2.not, label %init_array.exit, label %polly.loop_header909.1.2

polly.loop_header883.1:                           ; preds = %polly.loop_exit891, %polly.loop_exit891.1
  %polly.indvar886.1 = phi i64 [ %polly.indvar_next887.1, %polly.loop_exit891.1 ], [ 0, %polly.loop_exit891 ]
  %494 = mul nuw nsw i64 %polly.indvar886.1, 480
  %495 = trunc i64 %polly.indvar886.1 to i32
  %broadcast.splatinsert1344 = insertelement <4 x i32> poison, i32 %495, i32 0
  %broadcast.splat1345 = shufflevector <4 x i32> %broadcast.splatinsert1344, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1336

vector.body1336:                                  ; preds = %vector.body1336, %polly.loop_header883.1
  %index1338 = phi i64 [ 0, %polly.loop_header883.1 ], [ %index.next1339, %vector.body1336 ]
  %vec.ind1342 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header883.1 ], [ %vec.ind.next1343, %vector.body1336 ]
  %496 = add nuw nsw <4 x i64> %vec.ind1342, <i64 32, i64 32, i64 32, i64 32>
  %497 = trunc <4 x i64> %496 to <4 x i32>
  %498 = mul <4 x i32> %broadcast.splat1345, %497
  %499 = add <4 x i32> %498, <i32 2, i32 2, i32 2, i32 2>
  %500 = urem <4 x i32> %499, <i32 60, i32 60, i32 60, i32 60>
  %501 = sitofp <4 x i32> %500 to <4 x double>
  %502 = fmul fast <4 x double> %501, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %503 = extractelement <4 x i64> %496, i32 0
  %504 = shl i64 %503, 3
  %505 = add i64 %504, %494
  %506 = getelementptr i8, i8* %call2, i64 %505
  %507 = bitcast i8* %506 to <4 x double>*
  store <4 x double> %502, <4 x double>* %507, align 8, !alias.scope !108, !noalias !110
  %index.next1339 = add i64 %index1338, 4
  %vec.ind.next1343 = add <4 x i64> %vec.ind1342, <i64 4, i64 4, i64 4, i64 4>
  %508 = icmp eq i64 %index.next1339, 28
  br i1 %508, label %polly.loop_exit891.1, label %vector.body1336, !llvm.loop !125

polly.loop_exit891.1:                             ; preds = %vector.body1336
  %polly.indvar_next887.1 = add nuw nsw i64 %polly.indvar886.1, 1
  %exitcond1096.1.not = icmp eq i64 %polly.indvar_next887.1, 32
  br i1 %exitcond1096.1.not, label %polly.loop_header883.11127, label %polly.loop_header883.1

polly.loop_header883.11127:                       ; preds = %polly.loop_exit891.1, %polly.loop_exit891.11138
  %polly.indvar886.11126 = phi i64 [ %polly.indvar_next887.11136, %polly.loop_exit891.11138 ], [ 0, %polly.loop_exit891.1 ]
  %509 = add nuw nsw i64 %polly.indvar886.11126, 32
  %510 = mul nuw nsw i64 %509, 480
  %511 = trunc i64 %509 to i32
  %broadcast.splatinsert1358 = insertelement <4 x i32> poison, i32 %511, i32 0
  %broadcast.splat1359 = shufflevector <4 x i32> %broadcast.splatinsert1358, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1348

vector.body1348:                                  ; preds = %vector.body1348, %polly.loop_header883.11127
  %index1350 = phi i64 [ 0, %polly.loop_header883.11127 ], [ %index.next1351, %vector.body1348 ]
  %vec.ind1356 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header883.11127 ], [ %vec.ind.next1357, %vector.body1348 ]
  %512 = mul <4 x i32> %vec.ind1356, %broadcast.splat1359
  %513 = add <4 x i32> %512, <i32 2, i32 2, i32 2, i32 2>
  %514 = urem <4 x i32> %513, <i32 60, i32 60, i32 60, i32 60>
  %515 = sitofp <4 x i32> %514 to <4 x double>
  %516 = fmul fast <4 x double> %515, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %517 = shl i64 %index1350, 3
  %518 = add i64 %517, %510
  %519 = getelementptr i8, i8* %call2, i64 %518
  %520 = bitcast i8* %519 to <4 x double>*
  store <4 x double> %516, <4 x double>* %520, align 8, !alias.scope !108, !noalias !110
  %index.next1351 = add i64 %index1350, 4
  %vec.ind.next1357 = add <4 x i32> %vec.ind1356, <i32 4, i32 4, i32 4, i32 4>
  %521 = icmp eq i64 %index.next1351, 32
  br i1 %521, label %polly.loop_exit891.11138, label %vector.body1348, !llvm.loop !126

polly.loop_exit891.11138:                         ; preds = %vector.body1348
  %polly.indvar_next887.11136 = add nuw nsw i64 %polly.indvar886.11126, 1
  %exitcond1096.11137.not = icmp eq i64 %polly.indvar_next887.11136, 32
  br i1 %exitcond1096.11137.not, label %polly.loop_header883.1.1, label %polly.loop_header883.11127

polly.loop_header883.1.1:                         ; preds = %polly.loop_exit891.11138, %polly.loop_exit891.1.1
  %polly.indvar886.1.1 = phi i64 [ %polly.indvar_next887.1.1, %polly.loop_exit891.1.1 ], [ 0, %polly.loop_exit891.11138 ]
  %522 = add nuw nsw i64 %polly.indvar886.1.1, 32
  %523 = mul nuw nsw i64 %522, 480
  %524 = trunc i64 %522 to i32
  %broadcast.splatinsert1370 = insertelement <4 x i32> poison, i32 %524, i32 0
  %broadcast.splat1371 = shufflevector <4 x i32> %broadcast.splatinsert1370, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1362

vector.body1362:                                  ; preds = %vector.body1362, %polly.loop_header883.1.1
  %index1364 = phi i64 [ 0, %polly.loop_header883.1.1 ], [ %index.next1365, %vector.body1362 ]
  %vec.ind1368 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header883.1.1 ], [ %vec.ind.next1369, %vector.body1362 ]
  %525 = add nuw nsw <4 x i64> %vec.ind1368, <i64 32, i64 32, i64 32, i64 32>
  %526 = trunc <4 x i64> %525 to <4 x i32>
  %527 = mul <4 x i32> %broadcast.splat1371, %526
  %528 = add <4 x i32> %527, <i32 2, i32 2, i32 2, i32 2>
  %529 = urem <4 x i32> %528, <i32 60, i32 60, i32 60, i32 60>
  %530 = sitofp <4 x i32> %529 to <4 x double>
  %531 = fmul fast <4 x double> %530, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %532 = extractelement <4 x i64> %525, i32 0
  %533 = shl i64 %532, 3
  %534 = add i64 %533, %523
  %535 = getelementptr i8, i8* %call2, i64 %534
  %536 = bitcast i8* %535 to <4 x double>*
  store <4 x double> %531, <4 x double>* %536, align 8, !alias.scope !108, !noalias !110
  %index.next1365 = add i64 %index1364, 4
  %vec.ind.next1369 = add <4 x i64> %vec.ind1368, <i64 4, i64 4, i64 4, i64 4>
  %537 = icmp eq i64 %index.next1365, 28
  br i1 %537, label %polly.loop_exit891.1.1, label %vector.body1362, !llvm.loop !127

polly.loop_exit891.1.1:                           ; preds = %vector.body1362
  %polly.indvar_next887.1.1 = add nuw nsw i64 %polly.indvar886.1.1, 1
  %exitcond1096.1.1.not = icmp eq i64 %polly.indvar_next887.1.1, 32
  br i1 %exitcond1096.1.1.not, label %polly.loop_header883.2, label %polly.loop_header883.1.1

polly.loop_header883.2:                           ; preds = %polly.loop_exit891.1.1, %polly.loop_exit891.2
  %polly.indvar886.2 = phi i64 [ %polly.indvar_next887.2, %polly.loop_exit891.2 ], [ 0, %polly.loop_exit891.1.1 ]
  %538 = add nuw nsw i64 %polly.indvar886.2, 64
  %539 = mul nuw nsw i64 %538, 480
  %540 = trunc i64 %538 to i32
  %broadcast.splatinsert1384 = insertelement <4 x i32> poison, i32 %540, i32 0
  %broadcast.splat1385 = shufflevector <4 x i32> %broadcast.splatinsert1384, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %polly.loop_header883.2
  %index1376 = phi i64 [ 0, %polly.loop_header883.2 ], [ %index.next1377, %vector.body1374 ]
  %vec.ind1382 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header883.2 ], [ %vec.ind.next1383, %vector.body1374 ]
  %541 = mul <4 x i32> %vec.ind1382, %broadcast.splat1385
  %542 = add <4 x i32> %541, <i32 2, i32 2, i32 2, i32 2>
  %543 = urem <4 x i32> %542, <i32 60, i32 60, i32 60, i32 60>
  %544 = sitofp <4 x i32> %543 to <4 x double>
  %545 = fmul fast <4 x double> %544, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %546 = shl i64 %index1376, 3
  %547 = add i64 %546, %539
  %548 = getelementptr i8, i8* %call2, i64 %547
  %549 = bitcast i8* %548 to <4 x double>*
  store <4 x double> %545, <4 x double>* %549, align 8, !alias.scope !108, !noalias !110
  %index.next1377 = add i64 %index1376, 4
  %vec.ind.next1383 = add <4 x i32> %vec.ind1382, <i32 4, i32 4, i32 4, i32 4>
  %550 = icmp eq i64 %index.next1377, 32
  br i1 %550, label %polly.loop_exit891.2, label %vector.body1374, !llvm.loop !128

polly.loop_exit891.2:                             ; preds = %vector.body1374
  %polly.indvar_next887.2 = add nuw nsw i64 %polly.indvar886.2, 1
  %exitcond1096.2.not = icmp eq i64 %polly.indvar_next887.2, 16
  br i1 %exitcond1096.2.not, label %polly.loop_header883.1.2, label %polly.loop_header883.2

polly.loop_header883.1.2:                         ; preds = %polly.loop_exit891.2, %polly.loop_exit891.1.2
  %polly.indvar886.1.2 = phi i64 [ %polly.indvar_next887.1.2, %polly.loop_exit891.1.2 ], [ 0, %polly.loop_exit891.2 ]
  %551 = add nuw nsw i64 %polly.indvar886.1.2, 64
  %552 = mul nuw nsw i64 %551, 480
  %553 = trunc i64 %551 to i32
  %broadcast.splatinsert1396 = insertelement <4 x i32> poison, i32 %553, i32 0
  %broadcast.splat1397 = shufflevector <4 x i32> %broadcast.splatinsert1396, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1388

vector.body1388:                                  ; preds = %vector.body1388, %polly.loop_header883.1.2
  %index1390 = phi i64 [ 0, %polly.loop_header883.1.2 ], [ %index.next1391, %vector.body1388 ]
  %vec.ind1394 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header883.1.2 ], [ %vec.ind.next1395, %vector.body1388 ]
  %554 = add nuw nsw <4 x i64> %vec.ind1394, <i64 32, i64 32, i64 32, i64 32>
  %555 = trunc <4 x i64> %554 to <4 x i32>
  %556 = mul <4 x i32> %broadcast.splat1397, %555
  %557 = add <4 x i32> %556, <i32 2, i32 2, i32 2, i32 2>
  %558 = urem <4 x i32> %557, <i32 60, i32 60, i32 60, i32 60>
  %559 = sitofp <4 x i32> %558 to <4 x double>
  %560 = fmul fast <4 x double> %559, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %561 = extractelement <4 x i64> %554, i32 0
  %562 = shl i64 %561, 3
  %563 = add i64 %562, %552
  %564 = getelementptr i8, i8* %call2, i64 %563
  %565 = bitcast i8* %564 to <4 x double>*
  store <4 x double> %560, <4 x double>* %565, align 8, !alias.scope !108, !noalias !110
  %index.next1391 = add i64 %index1390, 4
  %vec.ind.next1395 = add <4 x i64> %vec.ind1394, <i64 4, i64 4, i64 4, i64 4>
  %566 = icmp eq i64 %index.next1391, 28
  br i1 %566, label %polly.loop_exit891.1.2, label %vector.body1388, !llvm.loop !129

polly.loop_exit891.1.2:                           ; preds = %vector.body1388
  %polly.indvar_next887.1.2 = add nuw nsw i64 %polly.indvar886.1.2, 1
  %exitcond1096.1.2.not = icmp eq i64 %polly.indvar_next887.1.2, 16
  br i1 %exitcond1096.1.2.not, label %polly.loop_header909, label %polly.loop_header883.1.2

polly.loop_header856.1:                           ; preds = %polly.loop_exit864, %polly.loop_exit864.1
  %polly.indvar859.1 = phi i64 [ %polly.indvar_next860.1, %polly.loop_exit864.1 ], [ 0, %polly.loop_exit864 ]
  %567 = mul nuw nsw i64 %polly.indvar859.1, 640
  %568 = trunc i64 %polly.indvar859.1 to i32
  %broadcast.splatinsert1230 = insertelement <4 x i32> poison, i32 %568, i32 0
  %broadcast.splat1231 = shufflevector <4 x i32> %broadcast.splatinsert1230, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %polly.loop_header856.1
  %index1224 = phi i64 [ 0, %polly.loop_header856.1 ], [ %index.next1225, %vector.body1222 ]
  %vec.ind1228 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.1 ], [ %vec.ind.next1229, %vector.body1222 ]
  %569 = add nuw nsw <4 x i64> %vec.ind1228, <i64 32, i64 32, i64 32, i64 32>
  %570 = trunc <4 x i64> %569 to <4 x i32>
  %571 = mul <4 x i32> %broadcast.splat1231, %570
  %572 = add <4 x i32> %571, <i32 3, i32 3, i32 3, i32 3>
  %573 = urem <4 x i32> %572, <i32 80, i32 80, i32 80, i32 80>
  %574 = sitofp <4 x i32> %573 to <4 x double>
  %575 = fmul fast <4 x double> %574, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %576 = extractelement <4 x i64> %569, i32 0
  %577 = shl i64 %576, 3
  %578 = add nuw nsw i64 %577, %567
  %579 = getelementptr i8, i8* %call, i64 %578
  %580 = bitcast i8* %579 to <4 x double>*
  store <4 x double> %575, <4 x double>* %580, align 8, !alias.scope !104, !noalias !106
  %index.next1225 = add i64 %index1224, 4
  %vec.ind.next1229 = add <4 x i64> %vec.ind1228, <i64 4, i64 4, i64 4, i64 4>
  %581 = icmp eq i64 %index.next1225, 32
  br i1 %581, label %polly.loop_exit864.1, label %vector.body1222, !llvm.loop !130

polly.loop_exit864.1:                             ; preds = %vector.body1222
  %polly.indvar_next860.1 = add nuw nsw i64 %polly.indvar859.1, 1
  %exitcond1105.1.not = icmp eq i64 %polly.indvar_next860.1, 32
  br i1 %exitcond1105.1.not, label %polly.loop_header856.2, label %polly.loop_header856.1

polly.loop_header856.2:                           ; preds = %polly.loop_exit864.1, %polly.loop_exit864.2
  %polly.indvar859.2 = phi i64 [ %polly.indvar_next860.2, %polly.loop_exit864.2 ], [ 0, %polly.loop_exit864.1 ]
  %582 = mul nuw nsw i64 %polly.indvar859.2, 640
  %583 = trunc i64 %polly.indvar859.2 to i32
  %broadcast.splatinsert1242 = insertelement <4 x i32> poison, i32 %583, i32 0
  %broadcast.splat1243 = shufflevector <4 x i32> %broadcast.splatinsert1242, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %polly.loop_header856.2
  %index1236 = phi i64 [ 0, %polly.loop_header856.2 ], [ %index.next1237, %vector.body1234 ]
  %vec.ind1240 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.2 ], [ %vec.ind.next1241, %vector.body1234 ]
  %584 = add nuw nsw <4 x i64> %vec.ind1240, <i64 64, i64 64, i64 64, i64 64>
  %585 = trunc <4 x i64> %584 to <4 x i32>
  %586 = mul <4 x i32> %broadcast.splat1243, %585
  %587 = add <4 x i32> %586, <i32 3, i32 3, i32 3, i32 3>
  %588 = urem <4 x i32> %587, <i32 80, i32 80, i32 80, i32 80>
  %589 = sitofp <4 x i32> %588 to <4 x double>
  %590 = fmul fast <4 x double> %589, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %591 = extractelement <4 x i64> %584, i32 0
  %592 = shl i64 %591, 3
  %593 = add nuw nsw i64 %592, %582
  %594 = getelementptr i8, i8* %call, i64 %593
  %595 = bitcast i8* %594 to <4 x double>*
  store <4 x double> %590, <4 x double>* %595, align 8, !alias.scope !104, !noalias !106
  %index.next1237 = add i64 %index1236, 4
  %vec.ind.next1241 = add <4 x i64> %vec.ind1240, <i64 4, i64 4, i64 4, i64 4>
  %596 = icmp eq i64 %index.next1237, 16
  br i1 %596, label %polly.loop_exit864.2, label %vector.body1234, !llvm.loop !131

polly.loop_exit864.2:                             ; preds = %vector.body1234
  %polly.indvar_next860.2 = add nuw nsw i64 %polly.indvar859.2, 1
  %exitcond1105.2.not = icmp eq i64 %polly.indvar_next860.2, 32
  br i1 %exitcond1105.2.not, label %polly.loop_header856.11141, label %polly.loop_header856.2

polly.loop_header856.11141:                       ; preds = %polly.loop_exit864.2, %polly.loop_exit864.11152
  %polly.indvar859.11140 = phi i64 [ %polly.indvar_next860.11150, %polly.loop_exit864.11152 ], [ 0, %polly.loop_exit864.2 ]
  %597 = add nuw nsw i64 %polly.indvar859.11140, 32
  %598 = mul nuw nsw i64 %597, 640
  %599 = trunc i64 %597 to i32
  %broadcast.splatinsert1256 = insertelement <4 x i32> poison, i32 %599, i32 0
  %broadcast.splat1257 = shufflevector <4 x i32> %broadcast.splatinsert1256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %polly.loop_header856.11141
  %index1248 = phi i64 [ 0, %polly.loop_header856.11141 ], [ %index.next1249, %vector.body1246 ]
  %vec.ind1254 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header856.11141 ], [ %vec.ind.next1255, %vector.body1246 ]
  %600 = mul <4 x i32> %vec.ind1254, %broadcast.splat1257
  %601 = add <4 x i32> %600, <i32 3, i32 3, i32 3, i32 3>
  %602 = urem <4 x i32> %601, <i32 80, i32 80, i32 80, i32 80>
  %603 = sitofp <4 x i32> %602 to <4 x double>
  %604 = fmul fast <4 x double> %603, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %605 = shl i64 %index1248, 3
  %606 = add nuw nsw i64 %605, %598
  %607 = getelementptr i8, i8* %call, i64 %606
  %608 = bitcast i8* %607 to <4 x double>*
  store <4 x double> %604, <4 x double>* %608, align 8, !alias.scope !104, !noalias !106
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1255 = add <4 x i32> %vec.ind1254, <i32 4, i32 4, i32 4, i32 4>
  %609 = icmp eq i64 %index.next1249, 32
  br i1 %609, label %polly.loop_exit864.11152, label %vector.body1246, !llvm.loop !132

polly.loop_exit864.11152:                         ; preds = %vector.body1246
  %polly.indvar_next860.11150 = add nuw nsw i64 %polly.indvar859.11140, 1
  %exitcond1105.11151.not = icmp eq i64 %polly.indvar_next860.11150, 32
  br i1 %exitcond1105.11151.not, label %polly.loop_header856.1.1, label %polly.loop_header856.11141

polly.loop_header856.1.1:                         ; preds = %polly.loop_exit864.11152, %polly.loop_exit864.1.1
  %polly.indvar859.1.1 = phi i64 [ %polly.indvar_next860.1.1, %polly.loop_exit864.1.1 ], [ 0, %polly.loop_exit864.11152 ]
  %610 = add nuw nsw i64 %polly.indvar859.1.1, 32
  %611 = mul nuw nsw i64 %610, 640
  %612 = trunc i64 %610 to i32
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %612, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %polly.loop_header856.1.1
  %index1262 = phi i64 [ 0, %polly.loop_header856.1.1 ], [ %index.next1263, %vector.body1260 ]
  %vec.ind1266 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.1.1 ], [ %vec.ind.next1267, %vector.body1260 ]
  %613 = add nuw nsw <4 x i64> %vec.ind1266, <i64 32, i64 32, i64 32, i64 32>
  %614 = trunc <4 x i64> %613 to <4 x i32>
  %615 = mul <4 x i32> %broadcast.splat1269, %614
  %616 = add <4 x i32> %615, <i32 3, i32 3, i32 3, i32 3>
  %617 = urem <4 x i32> %616, <i32 80, i32 80, i32 80, i32 80>
  %618 = sitofp <4 x i32> %617 to <4 x double>
  %619 = fmul fast <4 x double> %618, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %620 = extractelement <4 x i64> %613, i32 0
  %621 = shl i64 %620, 3
  %622 = add nuw nsw i64 %621, %611
  %623 = getelementptr i8, i8* %call, i64 %622
  %624 = bitcast i8* %623 to <4 x double>*
  store <4 x double> %619, <4 x double>* %624, align 8, !alias.scope !104, !noalias !106
  %index.next1263 = add i64 %index1262, 4
  %vec.ind.next1267 = add <4 x i64> %vec.ind1266, <i64 4, i64 4, i64 4, i64 4>
  %625 = icmp eq i64 %index.next1263, 32
  br i1 %625, label %polly.loop_exit864.1.1, label %vector.body1260, !llvm.loop !133

polly.loop_exit864.1.1:                           ; preds = %vector.body1260
  %polly.indvar_next860.1.1 = add nuw nsw i64 %polly.indvar859.1.1, 1
  %exitcond1105.1.1.not = icmp eq i64 %polly.indvar_next860.1.1, 32
  br i1 %exitcond1105.1.1.not, label %polly.loop_header856.2.1, label %polly.loop_header856.1.1

polly.loop_header856.2.1:                         ; preds = %polly.loop_exit864.1.1, %polly.loop_exit864.2.1
  %polly.indvar859.2.1 = phi i64 [ %polly.indvar_next860.2.1, %polly.loop_exit864.2.1 ], [ 0, %polly.loop_exit864.1.1 ]
  %626 = add nuw nsw i64 %polly.indvar859.2.1, 32
  %627 = mul nuw nsw i64 %626, 640
  %628 = trunc i64 %626 to i32
  %broadcast.splatinsert1280 = insertelement <4 x i32> poison, i32 %628, i32 0
  %broadcast.splat1281 = shufflevector <4 x i32> %broadcast.splatinsert1280, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %polly.loop_header856.2.1
  %index1274 = phi i64 [ 0, %polly.loop_header856.2.1 ], [ %index.next1275, %vector.body1272 ]
  %vec.ind1278 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.2.1 ], [ %vec.ind.next1279, %vector.body1272 ]
  %629 = add nuw nsw <4 x i64> %vec.ind1278, <i64 64, i64 64, i64 64, i64 64>
  %630 = trunc <4 x i64> %629 to <4 x i32>
  %631 = mul <4 x i32> %broadcast.splat1281, %630
  %632 = add <4 x i32> %631, <i32 3, i32 3, i32 3, i32 3>
  %633 = urem <4 x i32> %632, <i32 80, i32 80, i32 80, i32 80>
  %634 = sitofp <4 x i32> %633 to <4 x double>
  %635 = fmul fast <4 x double> %634, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %636 = extractelement <4 x i64> %629, i32 0
  %637 = shl i64 %636, 3
  %638 = add nuw nsw i64 %637, %627
  %639 = getelementptr i8, i8* %call, i64 %638
  %640 = bitcast i8* %639 to <4 x double>*
  store <4 x double> %635, <4 x double>* %640, align 8, !alias.scope !104, !noalias !106
  %index.next1275 = add i64 %index1274, 4
  %vec.ind.next1279 = add <4 x i64> %vec.ind1278, <i64 4, i64 4, i64 4, i64 4>
  %641 = icmp eq i64 %index.next1275, 16
  br i1 %641, label %polly.loop_exit864.2.1, label %vector.body1272, !llvm.loop !134

polly.loop_exit864.2.1:                           ; preds = %vector.body1272
  %polly.indvar_next860.2.1 = add nuw nsw i64 %polly.indvar859.2.1, 1
  %exitcond1105.2.1.not = icmp eq i64 %polly.indvar_next860.2.1, 32
  br i1 %exitcond1105.2.1.not, label %polly.loop_header856.21155, label %polly.loop_header856.2.1

polly.loop_header856.21155:                       ; preds = %polly.loop_exit864.2.1, %polly.loop_exit864.21166
  %polly.indvar859.21154 = phi i64 [ %polly.indvar_next860.21164, %polly.loop_exit864.21166 ], [ 0, %polly.loop_exit864.2.1 ]
  %642 = add nuw nsw i64 %polly.indvar859.21154, 64
  %643 = mul nuw nsw i64 %642, 640
  %644 = trunc i64 %642 to i32
  %broadcast.splatinsert1294 = insertelement <4 x i32> poison, i32 %644, i32 0
  %broadcast.splat1295 = shufflevector <4 x i32> %broadcast.splatinsert1294, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1284

vector.body1284:                                  ; preds = %vector.body1284, %polly.loop_header856.21155
  %index1286 = phi i64 [ 0, %polly.loop_header856.21155 ], [ %index.next1287, %vector.body1284 ]
  %vec.ind1292 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header856.21155 ], [ %vec.ind.next1293, %vector.body1284 ]
  %645 = mul <4 x i32> %vec.ind1292, %broadcast.splat1295
  %646 = add <4 x i32> %645, <i32 3, i32 3, i32 3, i32 3>
  %647 = urem <4 x i32> %646, <i32 80, i32 80, i32 80, i32 80>
  %648 = sitofp <4 x i32> %647 to <4 x double>
  %649 = fmul fast <4 x double> %648, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %650 = shl i64 %index1286, 3
  %651 = add nuw nsw i64 %650, %643
  %652 = getelementptr i8, i8* %call, i64 %651
  %653 = bitcast i8* %652 to <4 x double>*
  store <4 x double> %649, <4 x double>* %653, align 8, !alias.scope !104, !noalias !106
  %index.next1287 = add i64 %index1286, 4
  %vec.ind.next1293 = add <4 x i32> %vec.ind1292, <i32 4, i32 4, i32 4, i32 4>
  %654 = icmp eq i64 %index.next1287, 32
  br i1 %654, label %polly.loop_exit864.21166, label %vector.body1284, !llvm.loop !135

polly.loop_exit864.21166:                         ; preds = %vector.body1284
  %polly.indvar_next860.21164 = add nuw nsw i64 %polly.indvar859.21154, 1
  %exitcond1105.21165.not = icmp eq i64 %polly.indvar_next860.21164, 16
  br i1 %exitcond1105.21165.not, label %polly.loop_header856.1.2, label %polly.loop_header856.21155

polly.loop_header856.1.2:                         ; preds = %polly.loop_exit864.21166, %polly.loop_exit864.1.2
  %polly.indvar859.1.2 = phi i64 [ %polly.indvar_next860.1.2, %polly.loop_exit864.1.2 ], [ 0, %polly.loop_exit864.21166 ]
  %655 = add nuw nsw i64 %polly.indvar859.1.2, 64
  %656 = mul nuw nsw i64 %655, 640
  %657 = trunc i64 %655 to i32
  %broadcast.splatinsert1306 = insertelement <4 x i32> poison, i32 %657, i32 0
  %broadcast.splat1307 = shufflevector <4 x i32> %broadcast.splatinsert1306, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %polly.loop_header856.1.2
  %index1300 = phi i64 [ 0, %polly.loop_header856.1.2 ], [ %index.next1301, %vector.body1298 ]
  %vec.ind1304 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.1.2 ], [ %vec.ind.next1305, %vector.body1298 ]
  %658 = add nuw nsw <4 x i64> %vec.ind1304, <i64 32, i64 32, i64 32, i64 32>
  %659 = trunc <4 x i64> %658 to <4 x i32>
  %660 = mul <4 x i32> %broadcast.splat1307, %659
  %661 = add <4 x i32> %660, <i32 3, i32 3, i32 3, i32 3>
  %662 = urem <4 x i32> %661, <i32 80, i32 80, i32 80, i32 80>
  %663 = sitofp <4 x i32> %662 to <4 x double>
  %664 = fmul fast <4 x double> %663, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %665 = extractelement <4 x i64> %658, i32 0
  %666 = shl i64 %665, 3
  %667 = add nuw nsw i64 %666, %656
  %668 = getelementptr i8, i8* %call, i64 %667
  %669 = bitcast i8* %668 to <4 x double>*
  store <4 x double> %664, <4 x double>* %669, align 8, !alias.scope !104, !noalias !106
  %index.next1301 = add i64 %index1300, 4
  %vec.ind.next1305 = add <4 x i64> %vec.ind1304, <i64 4, i64 4, i64 4, i64 4>
  %670 = icmp eq i64 %index.next1301, 32
  br i1 %670, label %polly.loop_exit864.1.2, label %vector.body1298, !llvm.loop !136

polly.loop_exit864.1.2:                           ; preds = %vector.body1298
  %polly.indvar_next860.1.2 = add nuw nsw i64 %polly.indvar859.1.2, 1
  %exitcond1105.1.2.not = icmp eq i64 %polly.indvar_next860.1.2, 16
  br i1 %exitcond1105.1.2.not, label %polly.loop_header856.2.2, label %polly.loop_header856.1.2

polly.loop_header856.2.2:                         ; preds = %polly.loop_exit864.1.2, %polly.loop_exit864.2.2
  %polly.indvar859.2.2 = phi i64 [ %polly.indvar_next860.2.2, %polly.loop_exit864.2.2 ], [ 0, %polly.loop_exit864.1.2 ]
  %671 = add nuw nsw i64 %polly.indvar859.2.2, 64
  %672 = mul nuw nsw i64 %671, 640
  %673 = trunc i64 %671 to i32
  %broadcast.splatinsert1318 = insertelement <4 x i32> poison, i32 %673, i32 0
  %broadcast.splat1319 = shufflevector <4 x i32> %broadcast.splatinsert1318, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %polly.loop_header856.2.2
  %index1312 = phi i64 [ 0, %polly.loop_header856.2.2 ], [ %index.next1313, %vector.body1310 ]
  %vec.ind1316 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header856.2.2 ], [ %vec.ind.next1317, %vector.body1310 ]
  %674 = add nuw nsw <4 x i64> %vec.ind1316, <i64 64, i64 64, i64 64, i64 64>
  %675 = trunc <4 x i64> %674 to <4 x i32>
  %676 = mul <4 x i32> %broadcast.splat1319, %675
  %677 = add <4 x i32> %676, <i32 3, i32 3, i32 3, i32 3>
  %678 = urem <4 x i32> %677, <i32 80, i32 80, i32 80, i32 80>
  %679 = sitofp <4 x i32> %678 to <4 x double>
  %680 = fmul fast <4 x double> %679, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %681 = extractelement <4 x i64> %674, i32 0
  %682 = shl i64 %681, 3
  %683 = add nuw nsw i64 %682, %672
  %684 = getelementptr i8, i8* %call, i64 %683
  %685 = bitcast i8* %684 to <4 x double>*
  store <4 x double> %680, <4 x double>* %685, align 8, !alias.scope !104, !noalias !106
  %index.next1313 = add i64 %index1312, 4
  %vec.ind.next1317 = add <4 x i64> %vec.ind1316, <i64 4, i64 4, i64 4, i64 4>
  %686 = icmp eq i64 %index.next1313, 16
  br i1 %686, label %polly.loop_exit864.2.2, label %vector.body1310, !llvm.loop !137

polly.loop_exit864.2.2:                           ; preds = %vector.body1310
  %polly.indvar_next860.2.2 = add nuw nsw i64 %polly.indvar859.2.2, 1
  %exitcond1105.2.2.not = icmp eq i64 %polly.indvar_next860.2.2, 16
  br i1 %exitcond1105.2.2.not, label %polly.loop_header883, label %polly.loop_header856.2.2
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 32}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !26, !35, !38}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !24, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !24, !45, !46, !47, !48, !49, !53}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 50}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !24, !51, !41, !52, !43}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.data.pack.array", !22}
!53 = !{!"llvm.loop.tile.followup_tile", !54}
!54 = distinct !{!54, !12, !55}
!55 = !{!"llvm.loop.id", !"i2"}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !4, i64 0}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !65, !"polly.alias.scope.MemRef_call"}
!65 = distinct !{!65, !"polly.alias.scope.domain"}
!66 = !{!67, !68, !69, !70}
!67 = distinct !{!67, !65, !"polly.alias.scope.MemRef_call1"}
!68 = distinct !{!68, !65, !"polly.alias.scope.MemRef_call2"}
!69 = distinct !{!69, !65, !"polly.alias.scope.Packed_MemRef_call1"}
!70 = distinct !{!70, !65, !"polly.alias.scope.Packed_MemRef_call2"}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !73, !13}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!64, !67, !69, !70}
!75 = !{!64, !68, !69, !70}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !73, !13}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83, !84}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call1"}
!84 = distinct !{!84, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !73, !13}
!87 = !{!78, !81, !83, !84}
!88 = !{!78, !82, !83, !84}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !73, !13}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95, !96, !97}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !92, !"polly.alias.scope.Packed_MemRef_call1"}
!97 = distinct !{!97, !92, !"polly.alias.scope.Packed_MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !73, !13}
!100 = !{!91, !94, !96, !97}
!101 = !{!91, !95, !96, !97}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !73, !13}
!104 = distinct !{!104, !105, !"polly.alias.scope.MemRef_call"}
!105 = distinct !{!105, !"polly.alias.scope.domain"}
!106 = !{!107, !108}
!107 = distinct !{!107, !105, !"polly.alias.scope.MemRef_call1"}
!108 = distinct !{!108, !105, !"polly.alias.scope.MemRef_call2"}
!109 = distinct !{!109, !13}
!110 = !{!107, !104}
!111 = distinct !{!111, !13}
!112 = !{!108, !104}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !73, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !73, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !73, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = distinct !{!137, !13}
