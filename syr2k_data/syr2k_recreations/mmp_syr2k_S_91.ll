; ModuleID = 'syr2k_recreations//mmp_syr2k_S_91.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_91.c"
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
  %call929 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1781 = bitcast i8* %call1 to double*
  %polly.access.call1790 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2791 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1790, %call2
  %polly.access.call2810 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2810, %call1
  %2 = or i1 %0, %1
  %polly.access.call830 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call830, %call2
  %4 = icmp ule i8* %polly.access.call2810, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call830, %call1
  %8 = icmp ule i8* %polly.access.call1790, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header915, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1194 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1193 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1192 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1191 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1191, %scevgep1194
  %bound1 = icmp ult i8* %scevgep1193, %scevgep1192
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
  br i1 %exitcond18.not.i, label %vector.ph1198, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1198:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1205 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1206 = shufflevector <4 x i64> %broadcast.splatinsert1205, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1197

vector.body1197:                                  ; preds = %vector.body1197, %vector.ph1198
  %index1199 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1200, %vector.body1197 ]
  %vec.ind1203 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1198 ], [ %vec.ind.next1204, %vector.body1197 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1203, %broadcast.splat1206
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call929, i64 %indvars.iv7.i, i64 %index1199
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1200 = add i64 %index1199, 4
  %vec.ind.next1204 = add <4 x i64> %vec.ind1203, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1200, 80
  br i1 %40, label %for.inc41.i, label %vector.body1197, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1197
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1198, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit976.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start549, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1656, label %vector.ph1480

vector.ph1480:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1479

vector.body1479:                                  ; preds = %vector.body1479, %vector.ph1480
  %index1481 = phi i64 [ 0, %vector.ph1480 ], [ %index.next1482, %vector.body1479 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call929, i64 %indvars.iv21.i, i64 %index1481
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1482 = add i64 %index1481, 4
  %46 = icmp eq i64 %index.next1482, %n.vec
  br i1 %46, label %middle.block1477, label %vector.body1479, !llvm.loop !18

middle.block1477:                                 ; preds = %vector.body1479
  %cmp.n1484 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1484, label %for.inc6.i, label %for.body3.i46.preheader1656

for.body3.i46.preheader1656:                      ; preds = %for.body3.i46.preheader, %middle.block1477
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1477 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1656, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1656 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call929, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1477, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call929, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !47

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting550
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start319, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1533 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1533, label %for.body3.i60.preheader1653, label %vector.ph1534

vector.ph1534:                                    ; preds = %for.body3.i60.preheader
  %n.vec1536 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.body1532, %vector.ph1534
  %index1537 = phi i64 [ 0, %vector.ph1534 ], [ %index.next1538, %vector.body1532 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call929, i64 %indvars.iv21.i52, i64 %index1537
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1541 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1541, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1538 = add i64 %index1537, 4
  %57 = icmp eq i64 %index.next1538, %n.vec1536
  br i1 %57, label %middle.block1530, label %vector.body1532, !llvm.loop !64

middle.block1530:                                 ; preds = %vector.body1532
  %cmp.n1540 = icmp eq i64 %indvars.iv21.i52, %n.vec1536
  br i1 %cmp.n1540, label %for.inc6.i63, label %for.body3.i60.preheader1653

for.body3.i60.preheader1653:                      ; preds = %for.body3.i60.preheader, %middle.block1530
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1536, %middle.block1530 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1653, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1653 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call929, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1530, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call929, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !47

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting320
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1592 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1592, label %for.body3.i99.preheader1650, label %vector.ph1593

vector.ph1593:                                    ; preds = %for.body3.i99.preheader
  %n.vec1595 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1591

vector.body1591:                                  ; preds = %vector.body1591, %vector.ph1593
  %index1596 = phi i64 [ 0, %vector.ph1593 ], [ %index.next1597, %vector.body1591 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call929, i64 %indvars.iv21.i91, i64 %index1596
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1600 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1600, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1597 = add i64 %index1596, 4
  %68 = icmp eq i64 %index.next1597, %n.vec1595
  br i1 %68, label %middle.block1589, label %vector.body1591, !llvm.loop !66

middle.block1589:                                 ; preds = %vector.body1591
  %cmp.n1599 = icmp eq i64 %indvars.iv21.i91, %n.vec1595
  br i1 %cmp.n1599, label %for.inc6.i102, label %for.body3.i99.preheader1650

for.body3.i99.preheader1650:                      ; preds = %for.body3.i99.preheader, %middle.block1589
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1595, %middle.block1589 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1650, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1650 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call929, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1589, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call929, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !47

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !68
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call929, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !70

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !71

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !68
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1604 = phi i64 [ %indvar.next1605, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1604, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1606 = icmp ult i64 %88, 4
  br i1 %min.iters.check1606, label %polly.loop_header192.preheader, label %vector.ph1607

vector.ph1607:                                    ; preds = %polly.loop_header
  %n.vec1609 = and i64 %88, -4
  br label %vector.body1603

vector.body1603:                                  ; preds = %vector.body1603, %vector.ph1607
  %index1610 = phi i64 [ 0, %vector.ph1607 ], [ %index.next1611, %vector.body1603 ]
  %90 = shl nuw nsw i64 %index1610, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1614 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1614, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1611 = add i64 %index1610, 4
  %95 = icmp eq i64 %index.next1611, %n.vec1609
  br i1 %95, label %middle.block1601, label %vector.body1603, !llvm.loop !79

middle.block1601:                                 ; preds = %vector.body1603
  %cmp.n1613 = icmp eq i64 %88, %n.vec1609
  br i1 %cmp.n1613, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1601
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1609, %middle.block1601 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1601
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1039.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1605 = add i64 %indvar1604, 1
  br i1 %exitcond1039.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1038.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1038.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit224
  %indvars.iv1030 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1031, %polly.loop_exit224 ]
  %indvars.iv1028 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %indvars.iv.next1029, %polly.loop_exit224 ]
  %indvars.iv1021 = phi i64 [ 63, %polly.loop_header200.preheader ], [ %indvars.iv.next1022, %polly.loop_exit224 ]
  %indvars.iv1019 = phi i64 [ 79, %polly.loop_header200.preheader ], [ %indvars.iv.next1020, %polly.loop_exit224 ]
  %indvars.iv = phi i64 [ 80, %polly.loop_header200.preheader ], [ %indvars.iv.next, %polly.loop_exit224 ]
  %polly.indvar203 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next204, %polly.loop_exit224 ]
  %97 = shl nuw nsw i64 %polly.indvar203, 6
  %98 = or i64 %97, 8
  %99 = mul nsw i64 %polly.indvar203, -8
  %100 = shl nsw i64 %polly.indvar203, 3
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_exit214
  %101 = add nsw i64 %99, 79
  %pexp.p_div_q = lshr i64 %polly.indvar203, 3
  %102 = add nsw i64 %99, 63
  %103 = add nsw i64 %99, 64
  %104 = add nsw i64 %103, %100
  %polly.access.mul.call1270 = mul nuw nsw i64 %104, 60
  %polly.access.mul.call1257 = mul nsw i64 %polly.indvar203, 480
  %105 = or i64 %100, 1
  %polly.access.mul.call1257.1 = mul nuw nsw i64 %105, 60
  %106 = or i64 %100, 2
  %polly.access.mul.call1257.2 = mul nuw nsw i64 %106, 60
  %107 = or i64 %100, 3
  %polly.access.mul.call1257.3 = mul nuw nsw i64 %107, 60
  %108 = or i64 %100, 4
  %polly.access.mul.call1257.4 = mul nuw nsw i64 %108, 60
  %109 = or i64 %100, 5
  %polly.access.mul.call1257.5 = mul nuw nsw i64 %109, 60
  %110 = or i64 %100, 6
  %polly.access.mul.call1257.6 = mul nuw nsw i64 %110, 60
  %111 = or i64 %100, 7
  %polly.access.mul.call1257.7 = mul nuw nsw i64 %111, 60
  %polly.indvar_next267 = add nsw i64 %99, 65
  %112 = add nsw i64 %polly.indvar_next267, %100
  %polly.access.mul.call1270.1 = mul nuw nsw i64 %112, 60
  %polly.indvar_next267.1 = add nsw i64 %99, 66
  %113 = add nsw i64 %polly.indvar_next267.1, %100
  %polly.access.mul.call1270.2 = mul nuw nsw i64 %113, 60
  %polly.indvar_next267.2 = add nsw i64 %99, 67
  %114 = add nsw i64 %polly.indvar_next267.2, %100
  %polly.access.mul.call1270.3 = mul nuw nsw i64 %114, 60
  %polly.indvar_next267.3 = add nsw i64 %99, 68
  %115 = add nsw i64 %polly.indvar_next267.3, %100
  %polly.access.mul.call1270.4 = mul nuw nsw i64 %115, 60
  %polly.indvar_next267.4 = add nsw i64 %99, 69
  %116 = add nsw i64 %polly.indvar_next267.4, %100
  %polly.access.mul.call1270.5 = mul nuw nsw i64 %116, 60
  %polly.indvar_next267.5 = add nsw i64 %99, 70
  %117 = add nsw i64 %polly.indvar_next267.5, %100
  %polly.access.mul.call1270.6 = mul nuw nsw i64 %117, 60
  %polly.indvar_next267.6 = add nsw i64 %99, 71
  %118 = add nsw i64 %polly.indvar_next267.6, %100
  %polly.access.mul.call1270.7 = mul nuw nsw i64 %118, 60
  %polly.indvar_next267.7 = add nsw i64 %99, 72
  %119 = add nsw i64 %polly.indvar_next267.7, %100
  %polly.access.mul.call1270.8 = mul nuw nsw i64 %119, 60
  %polly.indvar_next267.8 = add nsw i64 %99, 73
  %120 = add nsw i64 %polly.indvar_next267.8, %100
  %polly.access.mul.call1270.9 = mul nuw nsw i64 %120, 60
  %polly.indvar_next267.9 = add nsw i64 %99, 74
  %121 = add nsw i64 %polly.indvar_next267.9, %100
  %polly.access.mul.call1270.10 = mul nuw nsw i64 %121, 60
  %polly.indvar_next267.10 = add nsw i64 %99, 75
  %122 = add nsw i64 %polly.indvar_next267.10, %100
  %polly.access.mul.call1270.11 = mul nuw nsw i64 %122, 60
  %polly.indvar_next267.11 = add nsw i64 %99, 76
  %123 = add nsw i64 %polly.indvar_next267.11, %100
  %polly.access.mul.call1270.12 = mul nuw nsw i64 %123, 60
  %polly.indvar_next267.12 = add nsw i64 %99, 77
  %124 = add nsw i64 %polly.indvar_next267.12, %100
  %polly.access.mul.call1270.13 = mul nuw nsw i64 %124, 60
  %polly.indvar_next267.13 = add nsw i64 %99, 78
  %125 = add nsw i64 %polly.indvar_next267.13, %100
  %polly.access.mul.call1270.14 = mul nuw nsw i64 %125, 60
  %polly.indvar_next267.14 = add nsw i64 %99, 79
  %126 = add nsw i64 %polly.indvar_next267.14, %100
  %polly.access.mul.call1270.15 = mul nuw nsw i64 %126, 60
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit278
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next1020 = add nsw i64 %indvars.iv1019, -8
  %indvars.iv.next1022 = add nsw i64 %indvars.iv1021, -8
  %indvars.iv.next1029 = add nsw i64 %indvars.iv1028, -8
  %indvars.iv.next1031 = add nuw nsw i64 %indvars.iv1030, 8
  %exitcond1037.not = icmp eq i64 %polly.indvar_next204, 10
  br i1 %exitcond1037.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_exit214, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_exit214 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar209, 80
  br label %polly.loop_header212

polly.loop_exit214:                               ; preds = %polly.loop_header212
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1018.not = icmp eq i64 %polly.indvar_next210, 60
  br i1 %exitcond1018.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header212:                             ; preds = %polly.loop_header212, %polly.loop_header206
  %polly.indvar215 = phi i64 [ 0, %polly.loop_header206 ], [ %polly.indvar_next216, %polly.loop_header212 ]
  %127 = add nuw nsw i64 %polly.indvar215, %100
  %polly.access.mul.call2219 = mul nuw nsw i64 %127, 60
  %polly.access.add.call2220 = add nuw nsw i64 %polly.access.mul.call2219, %polly.indvar209
  %polly.access.call2221 = getelementptr double, double* %polly.access.cast.call2791, i64 %polly.access.add.call2220
  %polly.access.call2221.load = load double, double* %polly.access.call2221, align 8, !alias.scope !76, !noalias !82
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar215, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2221.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next216 = add nuw nsw i64 %polly.indvar215, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next216, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit214, label %polly.loop_header212

polly.loop_header222:                             ; preds = %polly.loop_exit278, %polly.loop_exit208
  %polly.indvar225 = phi i64 [ %pexp.p_div_q, %polly.loop_exit208 ], [ 1, %polly.loop_exit278 ]
  %128 = shl nuw nsw i64 %polly.indvar225, 3
  %.not = icmp ult i64 %polly.indvar203, %128
  br i1 %.not, label %polly.loop_header244, label %polly.loop_header228.preheader

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %129 = shl nsw i64 %polly.indvar225, 6
  %130 = add i64 %102, %129
  %131 = icmp slt i64 %101, %130
  %132 = select i1 %131, i64 %101, i64 %130
  %polly.loop_guard = icmp sgt i64 %132, -1
  br i1 %polly.loop_guard, label %polly.loop_header228.us.preheader, label %polly.loop_preheader277

polly.loop_header228.us.preheader:                ; preds = %polly.loop_header228.preheader
  %133 = add i64 %indvars.iv1021, %129
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv1019, i64 %133)
  br label %polly.loop_header228.us

polly.loop_header228.us:                          ; preds = %polly.loop_header228.us.preheader, %polly.loop_exit236.loopexit.us
  %polly.indvar231.us = phi i64 [ %polly.indvar_next232.us, %polly.loop_exit236.loopexit.us ], [ 0, %polly.loop_header228.us.preheader ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar231.us, 80
  br label %polly.loop_header234.us

polly.loop_header234.us:                          ; preds = %polly.loop_header228.us, %polly.loop_header234.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.loop_header234.us ], [ 0, %polly.loop_header228.us ]
  %134 = add nuw nsw i64 %polly.indvar237.us, %100
  %polly.access.mul.call1241.us = mul nuw nsw i64 %134, 60
  %polly.access.add.call1242.us = add nuw nsw i64 %polly.access.mul.call1241.us, %polly.indvar231.us
  %polly.access.call1243.us = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1242.us
  %polly.access.call1243.load.us = load double, double* %polly.access.call1243.us, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1243.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar237.us, %smin
  br i1 %exitcond1023.not, label %polly.loop_exit236.loopexit.us, label %polly.loop_header234.us

polly.loop_exit236.loopexit.us:                   ; preds = %polly.loop_header234.us
  %polly.indvar_next232.us = add nuw nsw i64 %polly.indvar231.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next232.us, 60
  br i1 %exitcond1024.not, label %polly.loop_preheader277, label %polly.loop_header228.us

polly.loop_exit278:                               ; preds = %polly.loop_exit285, %polly.loop_preheader277
  %polly.loop_cond227 = icmp eq i64 %polly.indvar225, 0
  br i1 %polly.loop_cond227, label %polly.loop_header222, label %polly.loop_exit224

polly.loop_header244:                             ; preds = %polly.loop_header222, %polly.loop_header244
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_header244 ], [ 0, %polly.loop_header222 ]
  %polly.access.mul.Packed_MemRef_call1260 = mul nuw nsw i64 %polly.indvar247, 80
  %polly.access.add.call1258 = add nuw nsw i64 %polly.access.mul.call1257, %polly.indvar247
  %polly.access.call1259 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1258
  %polly.access.call1259.load = load double, double* %polly.access.call1259, align 8, !alias.scope !75, !noalias !83
  %polly.access.Packed_MemRef_call1262 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1260
  store double %polly.access.call1259.load, double* %polly.access.Packed_MemRef_call1262, align 8
  %polly.access.add.call1258.1 = add nuw nsw i64 %polly.access.mul.call1257.1, %polly.indvar247
  %polly.access.call1259.1 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1258.1
  %polly.access.call1259.load.1 = load double, double* %polly.access.call1259.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.1 = or i64 %polly.access.mul.Packed_MemRef_call1260, 1
  %polly.access.Packed_MemRef_call1262.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.1
  store double %polly.access.call1259.load.1, double* %polly.access.Packed_MemRef_call1262.1, align 8
  %polly.access.add.call1258.2 = add nuw nsw i64 %polly.access.mul.call1257.2, %polly.indvar247
  %polly.access.call1259.2 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1258.2
  %polly.access.call1259.load.2 = load double, double* %polly.access.call1259.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.2 = or i64 %polly.access.mul.Packed_MemRef_call1260, 2
  %polly.access.Packed_MemRef_call1262.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.2
  store double %polly.access.call1259.load.2, double* %polly.access.Packed_MemRef_call1262.2, align 8
  %polly.access.add.call1258.3 = add nuw nsw i64 %polly.access.mul.call1257.3, %polly.indvar247
  %polly.access.call1259.3 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1258.3
  %polly.access.call1259.load.3 = load double, double* %polly.access.call1259.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.3 = or i64 %polly.access.mul.Packed_MemRef_call1260, 3
  %polly.access.Packed_MemRef_call1262.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.3
  store double %polly.access.call1259.load.3, double* %polly.access.Packed_MemRef_call1262.3, align 8
  %polly.access.add.call1258.4 = add nuw nsw i64 %polly.access.mul.call1257.4, %polly.indvar247
  %polly.access.call1259.4 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1258.4
  %polly.access.call1259.load.4 = load double, double* %polly.access.call1259.4, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.4 = or i64 %polly.access.mul.Packed_MemRef_call1260, 4
  %polly.access.Packed_MemRef_call1262.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.4
  store double %polly.access.call1259.load.4, double* %polly.access.Packed_MemRef_call1262.4, align 8
  %polly.access.add.call1258.5 = add nuw nsw i64 %polly.access.mul.call1257.5, %polly.indvar247
  %polly.access.call1259.5 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1258.5
  %polly.access.call1259.load.5 = load double, double* %polly.access.call1259.5, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.5 = or i64 %polly.access.mul.Packed_MemRef_call1260, 5
  %polly.access.Packed_MemRef_call1262.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.5
  store double %polly.access.call1259.load.5, double* %polly.access.Packed_MemRef_call1262.5, align 8
  %polly.access.add.call1258.6 = add nuw nsw i64 %polly.access.mul.call1257.6, %polly.indvar247
  %polly.access.call1259.6 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1258.6
  %polly.access.call1259.load.6 = load double, double* %polly.access.call1259.6, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.6 = or i64 %polly.access.mul.Packed_MemRef_call1260, 6
  %polly.access.Packed_MemRef_call1262.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.6
  store double %polly.access.call1259.load.6, double* %polly.access.Packed_MemRef_call1262.6, align 8
  %polly.access.add.call1258.7 = add nuw nsw i64 %polly.access.mul.call1257.7, %polly.indvar247
  %polly.access.call1259.7 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1258.7
  %polly.access.call1259.load.7 = load double, double* %polly.access.call1259.7, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1261.7 = or i64 %polly.access.mul.Packed_MemRef_call1260, 7
  %polly.access.Packed_MemRef_call1262.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1261.7
  store double %polly.access.call1259.load.7, double* %polly.access.Packed_MemRef_call1262.7, align 8
  %polly.access.add.call1271 = add nuw nsw i64 %polly.access.mul.call1270, %polly.indvar247
  %polly.access.call1272 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271
  %polly.access.call1272.load = load double, double* %polly.access.call1272, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274 = add nsw i64 %103, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274
  store double %polly.access.call1272.load, double* %polly.access.Packed_MemRef_call1275, align 8
  %polly.access.add.call1271.1 = add nuw nsw i64 %polly.access.mul.call1270.1, %polly.indvar247
  %polly.access.call1272.1 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.1
  %polly.access.call1272.load.1 = load double, double* %polly.access.call1272.1, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.1 = add nsw i64 %polly.indvar_next267, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.1
  store double %polly.access.call1272.load.1, double* %polly.access.Packed_MemRef_call1275.1, align 8
  %polly.access.add.call1271.2 = add nuw nsw i64 %polly.access.mul.call1270.2, %polly.indvar247
  %polly.access.call1272.2 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.2
  %polly.access.call1272.load.2 = load double, double* %polly.access.call1272.2, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.2 = add nsw i64 %polly.indvar_next267.1, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.2
  store double %polly.access.call1272.load.2, double* %polly.access.Packed_MemRef_call1275.2, align 8
  %polly.access.add.call1271.3 = add nuw nsw i64 %polly.access.mul.call1270.3, %polly.indvar247
  %polly.access.call1272.3 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.3
  %polly.access.call1272.load.3 = load double, double* %polly.access.call1272.3, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.3 = add nsw i64 %polly.indvar_next267.2, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.3
  store double %polly.access.call1272.load.3, double* %polly.access.Packed_MemRef_call1275.3, align 8
  %polly.access.add.call1271.4 = add nuw nsw i64 %polly.access.mul.call1270.4, %polly.indvar247
  %polly.access.call1272.4 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.4
  %polly.access.call1272.load.4 = load double, double* %polly.access.call1272.4, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.4 = add nsw i64 %polly.indvar_next267.3, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.4 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.4
  store double %polly.access.call1272.load.4, double* %polly.access.Packed_MemRef_call1275.4, align 8
  %polly.access.add.call1271.5 = add nuw nsw i64 %polly.access.mul.call1270.5, %polly.indvar247
  %polly.access.call1272.5 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.5
  %polly.access.call1272.load.5 = load double, double* %polly.access.call1272.5, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.5 = add nsw i64 %polly.indvar_next267.4, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.5 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.5
  store double %polly.access.call1272.load.5, double* %polly.access.Packed_MemRef_call1275.5, align 8
  %polly.access.add.call1271.6 = add nuw nsw i64 %polly.access.mul.call1270.6, %polly.indvar247
  %polly.access.call1272.6 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.6
  %polly.access.call1272.load.6 = load double, double* %polly.access.call1272.6, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.6 = add nsw i64 %polly.indvar_next267.5, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.6 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.6
  store double %polly.access.call1272.load.6, double* %polly.access.Packed_MemRef_call1275.6, align 8
  %polly.access.add.call1271.7 = add nuw nsw i64 %polly.access.mul.call1270.7, %polly.indvar247
  %polly.access.call1272.7 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.7
  %polly.access.call1272.load.7 = load double, double* %polly.access.call1272.7, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.7 = add nsw i64 %polly.indvar_next267.6, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.7 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.7
  store double %polly.access.call1272.load.7, double* %polly.access.Packed_MemRef_call1275.7, align 8
  %polly.access.add.call1271.8 = add nuw nsw i64 %polly.access.mul.call1270.8, %polly.indvar247
  %polly.access.call1272.8 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.8
  %polly.access.call1272.load.8 = load double, double* %polly.access.call1272.8, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.8 = add nsw i64 %polly.indvar_next267.7, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.8 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.8
  store double %polly.access.call1272.load.8, double* %polly.access.Packed_MemRef_call1275.8, align 8
  %polly.access.add.call1271.9 = add nuw nsw i64 %polly.access.mul.call1270.9, %polly.indvar247
  %polly.access.call1272.9 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.9
  %polly.access.call1272.load.9 = load double, double* %polly.access.call1272.9, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.9 = add nsw i64 %polly.indvar_next267.8, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.9 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.9
  store double %polly.access.call1272.load.9, double* %polly.access.Packed_MemRef_call1275.9, align 8
  %polly.access.add.call1271.10 = add nuw nsw i64 %polly.access.mul.call1270.10, %polly.indvar247
  %polly.access.call1272.10 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.10
  %polly.access.call1272.load.10 = load double, double* %polly.access.call1272.10, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.10 = add nsw i64 %polly.indvar_next267.9, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.10 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.10
  store double %polly.access.call1272.load.10, double* %polly.access.Packed_MemRef_call1275.10, align 8
  %polly.access.add.call1271.11 = add nuw nsw i64 %polly.access.mul.call1270.11, %polly.indvar247
  %polly.access.call1272.11 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.11
  %polly.access.call1272.load.11 = load double, double* %polly.access.call1272.11, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.11 = add nsw i64 %polly.indvar_next267.10, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.11 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.11
  store double %polly.access.call1272.load.11, double* %polly.access.Packed_MemRef_call1275.11, align 8
  %polly.access.add.call1271.12 = add nuw nsw i64 %polly.access.mul.call1270.12, %polly.indvar247
  %polly.access.call1272.12 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.12
  %polly.access.call1272.load.12 = load double, double* %polly.access.call1272.12, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.12 = add nsw i64 %polly.indvar_next267.11, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.12 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.12
  store double %polly.access.call1272.load.12, double* %polly.access.Packed_MemRef_call1275.12, align 8
  %polly.access.add.call1271.13 = add nuw nsw i64 %polly.access.mul.call1270.13, %polly.indvar247
  %polly.access.call1272.13 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.13
  %polly.access.call1272.load.13 = load double, double* %polly.access.call1272.13, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.13 = add nsw i64 %polly.indvar_next267.12, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.13 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.13
  store double %polly.access.call1272.load.13, double* %polly.access.Packed_MemRef_call1275.13, align 8
  %polly.access.add.call1271.14 = add nuw nsw i64 %polly.access.mul.call1270.14, %polly.indvar247
  %polly.access.call1272.14 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.14
  %polly.access.call1272.load.14 = load double, double* %polly.access.call1272.14, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.14 = add nsw i64 %polly.indvar_next267.13, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.14 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.14
  store double %polly.access.call1272.load.14, double* %polly.access.Packed_MemRef_call1275.14, align 8
  %polly.access.add.call1271.15 = add nuw nsw i64 %polly.access.mul.call1270.15, %polly.indvar247
  %polly.access.call1272.15 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1271.15
  %polly.access.call1272.load.15 = load double, double* %polly.access.call1272.15, align 8, !alias.scope !75, !noalias !83
  %polly.access.add.Packed_MemRef_call1274.15 = add nsw i64 %polly.indvar_next267.14, %polly.access.mul.Packed_MemRef_call1260
  %polly.access.Packed_MemRef_call1275.15 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1274.15
  store double %polly.access.call1272.load.15, double* %polly.access.Packed_MemRef_call1275.15, align 8
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %exitcond1027.not = icmp eq i64 %polly.indvar_next248, 60
  br i1 %exitcond1027.not, label %polly.loop_preheader277.loopexit, label %polly.loop_header244

polly.loop_header276:                             ; preds = %polly.loop_header276.preheader, %polly.loop_exit285
  %polly.indvar279 = phi i64 [ %polly.indvar_next280, %polly.loop_exit285 ], [ 0, %polly.loop_header276.preheader ]
  %135 = mul nuw nsw i64 %polly.indvar279, 640
  %scevgep1622 = getelementptr i8, i8* %malloccall, i64 %135
  %136 = or i64 %135, 8
  %scevgep1623 = getelementptr i8, i8* %malloccall, i64 %136
  %polly.access.mul.Packed_MemRef_call1298 = mul nuw nsw i64 %polly.indvar279, 80
  br label %polly.loop_header283

polly.loop_exit285:                               ; preds = %polly.loop_exit293
  %polly.indvar_next280 = add nuw nsw i64 %polly.indvar279, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next280, 60
  br i1 %exitcond1036.not, label %polly.loop_exit278, label %polly.loop_header276

polly.loop_preheader277.loopexit:                 ; preds = %polly.loop_header244
  %.pre1178 = shl nsw i64 %polly.indvar225, 6
  br label %polly.loop_preheader277

polly.loop_preheader277:                          ; preds = %polly.loop_exit236.loopexit.us, %polly.loop_preheader277.loopexit, %polly.loop_header228.preheader
  %.pre-phi1179 = phi i64 [ %.pre1178, %polly.loop_preheader277.loopexit ], [ %129, %polly.loop_header228.preheader ], [ %129, %polly.loop_exit236.loopexit.us ]
  %137 = sub nsw i64 %100, %.pre-phi1179
  %138 = icmp sgt i64 %137, 0
  %139 = select i1 %138, i64 %137, i64 0
  %140 = mul nuw nsw i64 %polly.indvar225, -64
  %141 = icmp slt i64 %140, -16
  %142 = select i1 %141, i64 %140, i64 -16
  %143 = add nsw i64 %142, 79
  %polly.loop_guard286.not = icmp sgt i64 %139, %143
  br i1 %polly.loop_guard286.not, label %polly.loop_exit278, label %polly.loop_header276.preheader

polly.loop_header276.preheader:                   ; preds = %polly.loop_preheader277
  %144 = sub i64 %indvars.iv1030, %.pre-phi1179
  %smax = call i64 @llvm.smax.i64(i64 %144, i64 0)
  %145 = add i64 %indvars.iv1028, %smax
  %146 = add i64 %145, %.pre-phi1179
  %147 = add i64 %.pre-phi1179, %smax
  %148 = mul nsw i64 %147, 640
  %149 = add i64 %97, %148
  %150 = add i64 %98, %148
  br label %polly.loop_header276

polly.loop_header283:                             ; preds = %polly.loop_header276, %polly.loop_exit293
  %indvar1616 = phi i64 [ 0, %polly.loop_header276 ], [ %indvar.next1617, %polly.loop_exit293 ]
  %indvars.iv1032 = phi i64 [ %146, %polly.loop_header276 ], [ %indvars.iv.next1033, %polly.loop_exit293 ]
  %polly.indvar287 = phi i64 [ %139, %polly.loop_header276 ], [ %polly.indvar_next288, %polly.loop_exit293 ]
  %151 = add i64 %146, %indvar1616
  %smin1632 = call i64 @llvm.smin.i64(i64 %151, i64 7)
  %152 = add nsw i64 %smin1632, 1
  %153 = mul i64 %indvar1616, 640
  %154 = add i64 %149, %153
  %scevgep1618 = getelementptr i8, i8* %call, i64 %154
  %155 = add i64 %150, %153
  %scevgep1619 = getelementptr i8, i8* %call, i64 %155
  %156 = add i64 %146, %indvar1616
  %smin1620 = call i64 @llvm.smin.i64(i64 %156, i64 7)
  %157 = shl i64 %smin1620, 3
  %scevgep1621 = getelementptr i8, i8* %scevgep1619, i64 %157
  %scevgep1624 = getelementptr i8, i8* %scevgep1623, i64 %157
  %smin1034 = call i64 @llvm.smin.i64(i64 %indvars.iv1032, i64 7)
  %158 = add nuw i64 %polly.indvar287, %.pre-phi1179
  %159 = add i64 %158, %99
  %polly.loop_guard2941180 = icmp sgt i64 %159, -1
  br i1 %polly.loop_guard2941180, label %polly.loop_header291.preheader, label %polly.loop_exit293

polly.loop_header291.preheader:                   ; preds = %polly.loop_header283
  %polly.access.add.Packed_MemRef_call2303 = add nsw i64 %polly.access.mul.Packed_MemRef_call1298, %159
  %polly.access.Packed_MemRef_call2304 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2303
  %_p_scalar_305 = load double, double* %polly.access.Packed_MemRef_call2304, align 8
  %polly.access.Packed_MemRef_call1312 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2303
  %_p_scalar_313 = load double, double* %polly.access.Packed_MemRef_call1312, align 8
  %160 = mul i64 %158, 640
  %min.iters.check1633 = icmp ult i64 %152, 4
  br i1 %min.iters.check1633, label %polly.loop_header291.preheader1648, label %vector.memcheck1615

vector.memcheck1615:                              ; preds = %polly.loop_header291.preheader
  %bound01625 = icmp ult i8* %scevgep1618, %scevgep1624
  %bound11626 = icmp ult i8* %scevgep1622, %scevgep1621
  %found.conflict1627 = and i1 %bound01625, %bound11626
  br i1 %found.conflict1627, label %polly.loop_header291.preheader1648, label %vector.ph1634

vector.ph1634:                                    ; preds = %vector.memcheck1615
  %n.vec1636 = and i64 %152, -4
  %broadcast.splatinsert1642 = insertelement <4 x double> poison, double %_p_scalar_305, i32 0
  %broadcast.splat1643 = shufflevector <4 x double> %broadcast.splatinsert1642, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1645 = insertelement <4 x double> poison, double %_p_scalar_313, i32 0
  %broadcast.splat1646 = shufflevector <4 x double> %broadcast.splatinsert1645, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1631

vector.body1631:                                  ; preds = %vector.body1631, %vector.ph1634
  %index1637 = phi i64 [ 0, %vector.ph1634 ], [ %index.next1638, %vector.body1631 ]
  %161 = add nuw nsw i64 %index1637, %100
  %162 = add nuw nsw i64 %index1637, %polly.access.mul.Packed_MemRef_call1298
  %163 = getelementptr double, double* %Packed_MemRef_call1, i64 %162
  %164 = bitcast double* %163 to <4 x double>*
  %wide.load1641 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !84
  %165 = fmul fast <4 x double> %broadcast.splat1643, %wide.load1641
  %166 = getelementptr double, double* %Packed_MemRef_call2, i64 %162
  %167 = bitcast double* %166 to <4 x double>*
  %wide.load1644 = load <4 x double>, <4 x double>* %167, align 8
  %168 = fmul fast <4 x double> %broadcast.splat1646, %wide.load1644
  %169 = shl i64 %161, 3
  %170 = add i64 %169, %160
  %171 = getelementptr i8, i8* %call, i64 %170
  %172 = bitcast i8* %171 to <4 x double>*
  %wide.load1647 = load <4 x double>, <4 x double>* %172, align 8, !alias.scope !87, !noalias !89
  %173 = fadd fast <4 x double> %168, %165
  %174 = fmul fast <4 x double> %173, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %175 = fadd fast <4 x double> %174, %wide.load1647
  %176 = bitcast i8* %171 to <4 x double>*
  store <4 x double> %175, <4 x double>* %176, align 8, !alias.scope !87, !noalias !89
  %index.next1638 = add i64 %index1637, 4
  %177 = icmp eq i64 %index.next1638, %n.vec1636
  br i1 %177, label %middle.block1629, label %vector.body1631, !llvm.loop !90

middle.block1629:                                 ; preds = %vector.body1631
  %cmp.n1640 = icmp eq i64 %152, %n.vec1636
  br i1 %cmp.n1640, label %polly.loop_exit293, label %polly.loop_header291.preheader1648

polly.loop_header291.preheader1648:               ; preds = %vector.memcheck1615, %polly.loop_header291.preheader, %middle.block1629
  %polly.indvar295.ph = phi i64 [ 0, %vector.memcheck1615 ], [ 0, %polly.loop_header291.preheader ], [ %n.vec1636, %middle.block1629 ]
  br label %polly.loop_header291

polly.loop_exit293:                               ; preds = %polly.loop_header291, %middle.block1629, %polly.loop_header283
  %polly.indvar_next288 = add nuw nsw i64 %polly.indvar287, 1
  %polly.loop_cond289.not.not = icmp ult i64 %polly.indvar287, %143
  %indvars.iv.next1033 = add i64 %indvars.iv1032, 1
  %indvar.next1617 = add i64 %indvar1616, 1
  br i1 %polly.loop_cond289.not.not, label %polly.loop_header283, label %polly.loop_exit285

polly.loop_header291:                             ; preds = %polly.loop_header291.preheader1648, %polly.loop_header291
  %polly.indvar295 = phi i64 [ %polly.indvar_next296, %polly.loop_header291 ], [ %polly.indvar295.ph, %polly.loop_header291.preheader1648 ]
  %178 = add nuw nsw i64 %polly.indvar295, %100
  %polly.access.add.Packed_MemRef_call1299 = add nuw nsw i64 %polly.indvar295, %polly.access.mul.Packed_MemRef_call1298
  %polly.access.Packed_MemRef_call1300 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1299
  %_p_scalar_301 = load double, double* %polly.access.Packed_MemRef_call1300, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_305, %_p_scalar_301
  %polly.access.Packed_MemRef_call2308 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1299
  %_p_scalar_309 = load double, double* %polly.access.Packed_MemRef_call2308, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_313, %_p_scalar_309
  %179 = shl i64 %178, 3
  %180 = add i64 %179, %160
  %scevgep314 = getelementptr i8, i8* %call, i64 %180
  %scevgep314315 = bitcast i8* %scevgep314 to double*
  %_p_scalar_316 = load double, double* %scevgep314315, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_316
  store double %p_add42.i118, double* %scevgep314315, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next296 = add nuw nsw i64 %polly.indvar295, 1
  %exitcond1035.not = icmp eq i64 %polly.indvar295, %smin1034
  br i1 %exitcond1035.not, label %polly.loop_exit293, label %polly.loop_header291, !llvm.loop !91

polly.start319:                                   ; preds = %kernel_syr2k.exit
  %malloccall321 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall323 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header407

polly.exiting320:                                 ; preds = %polly.loop_exit448
  tail call void @free(i8* %malloccall321)
  tail call void @free(i8* %malloccall323)
  br label %kernel_syr2k.exit90

polly.loop_header407:                             ; preds = %polly.loop_exit415, %polly.start319
  %indvar1545 = phi i64 [ %indvar.next1546, %polly.loop_exit415 ], [ 0, %polly.start319 ]
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit415 ], [ 1, %polly.start319 ]
  %181 = add i64 %indvar1545, 1
  %182 = mul nuw nsw i64 %polly.indvar410, 640
  %scevgep419 = getelementptr i8, i8* %call, i64 %182
  %min.iters.check1547 = icmp ult i64 %181, 4
  br i1 %min.iters.check1547, label %polly.loop_header413.preheader, label %vector.ph1548

vector.ph1548:                                    ; preds = %polly.loop_header407
  %n.vec1550 = and i64 %181, -4
  br label %vector.body1544

vector.body1544:                                  ; preds = %vector.body1544, %vector.ph1548
  %index1551 = phi i64 [ 0, %vector.ph1548 ], [ %index.next1552, %vector.body1544 ]
  %183 = shl nuw nsw i64 %index1551, 3
  %184 = getelementptr i8, i8* %scevgep419, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  %wide.load1555 = load <4 x double>, <4 x double>* %185, align 8, !alias.scope !92, !noalias !94
  %186 = fmul fast <4 x double> %wide.load1555, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %187 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %186, <4 x double>* %187, align 8, !alias.scope !92, !noalias !94
  %index.next1552 = add i64 %index1551, 4
  %188 = icmp eq i64 %index.next1552, %n.vec1550
  br i1 %188, label %middle.block1542, label %vector.body1544, !llvm.loop !99

middle.block1542:                                 ; preds = %vector.body1544
  %cmp.n1554 = icmp eq i64 %181, %n.vec1550
  br i1 %cmp.n1554, label %polly.loop_exit415, label %polly.loop_header413.preheader

polly.loop_header413.preheader:                   ; preds = %polly.loop_header407, %middle.block1542
  %polly.indvar416.ph = phi i64 [ 0, %polly.loop_header407 ], [ %n.vec1550, %middle.block1542 ]
  br label %polly.loop_header413

polly.loop_exit415:                               ; preds = %polly.loop_header413, %middle.block1542
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %exitcond1066.not = icmp eq i64 %polly.indvar_next411, 80
  %indvar.next1546 = add i64 %indvar1545, 1
  br i1 %exitcond1066.not, label %polly.loop_header423.preheader, label %polly.loop_header407

polly.loop_header423.preheader:                   ; preds = %polly.loop_exit415
  %Packed_MemRef_call1322 = bitcast i8* %malloccall321 to double*
  %Packed_MemRef_call2324 = bitcast i8* %malloccall323 to double*
  br label %polly.loop_header423

polly.loop_header413:                             ; preds = %polly.loop_header413.preheader, %polly.loop_header413
  %polly.indvar416 = phi i64 [ %polly.indvar_next417, %polly.loop_header413 ], [ %polly.indvar416.ph, %polly.loop_header413.preheader ]
  %189 = shl nuw nsw i64 %polly.indvar416, 3
  %scevgep420 = getelementptr i8, i8* %scevgep419, i64 %189
  %scevgep420421 = bitcast i8* %scevgep420 to double*
  %_p_scalar_422 = load double, double* %scevgep420421, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_422, 1.200000e+00
  store double %p_mul.i57, double* %scevgep420421, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next417 = add nuw nsw i64 %polly.indvar416, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next417, %polly.indvar410
  br i1 %exitcond1065.not, label %polly.loop_exit415, label %polly.loop_header413, !llvm.loop !100

polly.loop_header423:                             ; preds = %polly.loop_header423.preheader, %polly.loop_exit448
  %indvars.iv1056 = phi i64 [ 0, %polly.loop_header423.preheader ], [ %indvars.iv.next1057, %polly.loop_exit448 ]
  %indvars.iv1054 = phi i64 [ 0, %polly.loop_header423.preheader ], [ %indvars.iv.next1055, %polly.loop_exit448 ]
  %indvars.iv1046 = phi i64 [ 63, %polly.loop_header423.preheader ], [ %indvars.iv.next1047, %polly.loop_exit448 ]
  %indvars.iv1044 = phi i64 [ 79, %polly.loop_header423.preheader ], [ %indvars.iv.next1045, %polly.loop_exit448 ]
  %indvars.iv1040 = phi i64 [ 80, %polly.loop_header423.preheader ], [ %indvars.iv.next1041, %polly.loop_exit448 ]
  %polly.indvar426 = phi i64 [ 0, %polly.loop_header423.preheader ], [ %polly.indvar_next427, %polly.loop_exit448 ]
  %190 = shl nuw nsw i64 %polly.indvar426, 6
  %191 = or i64 %190, 8
  %192 = mul nsw i64 %polly.indvar426, -8
  %193 = shl nsw i64 %polly.indvar426, 3
  br label %polly.loop_header429

polly.loop_exit431:                               ; preds = %polly.loop_exit437
  %194 = add nsw i64 %192, 79
  %pexp.p_div_q445 = lshr i64 %polly.indvar426, 3
  %195 = add nsw i64 %192, 63
  %196 = add nsw i64 %192, 64
  %197 = add nsw i64 %196, %193
  %polly.access.mul.call1500 = mul nuw nsw i64 %197, 60
  %polly.access.mul.call1487 = mul nsw i64 %polly.indvar426, 480
  %198 = or i64 %193, 1
  %polly.access.mul.call1487.1 = mul nuw nsw i64 %198, 60
  %199 = or i64 %193, 2
  %polly.access.mul.call1487.2 = mul nuw nsw i64 %199, 60
  %200 = or i64 %193, 3
  %polly.access.mul.call1487.3 = mul nuw nsw i64 %200, 60
  %201 = or i64 %193, 4
  %polly.access.mul.call1487.4 = mul nuw nsw i64 %201, 60
  %202 = or i64 %193, 5
  %polly.access.mul.call1487.5 = mul nuw nsw i64 %202, 60
  %203 = or i64 %193, 6
  %polly.access.mul.call1487.6 = mul nuw nsw i64 %203, 60
  %204 = or i64 %193, 7
  %polly.access.mul.call1487.7 = mul nuw nsw i64 %204, 60
  %polly.indvar_next497 = add nsw i64 %192, 65
  %205 = add nsw i64 %polly.indvar_next497, %193
  %polly.access.mul.call1500.1 = mul nuw nsw i64 %205, 60
  %polly.indvar_next497.1 = add nsw i64 %192, 66
  %206 = add nsw i64 %polly.indvar_next497.1, %193
  %polly.access.mul.call1500.2 = mul nuw nsw i64 %206, 60
  %polly.indvar_next497.2 = add nsw i64 %192, 67
  %207 = add nsw i64 %polly.indvar_next497.2, %193
  %polly.access.mul.call1500.3 = mul nuw nsw i64 %207, 60
  %polly.indvar_next497.3 = add nsw i64 %192, 68
  %208 = add nsw i64 %polly.indvar_next497.3, %193
  %polly.access.mul.call1500.4 = mul nuw nsw i64 %208, 60
  %polly.indvar_next497.4 = add nsw i64 %192, 69
  %209 = add nsw i64 %polly.indvar_next497.4, %193
  %polly.access.mul.call1500.5 = mul nuw nsw i64 %209, 60
  %polly.indvar_next497.5 = add nsw i64 %192, 70
  %210 = add nsw i64 %polly.indvar_next497.5, %193
  %polly.access.mul.call1500.6 = mul nuw nsw i64 %210, 60
  %polly.indvar_next497.6 = add nsw i64 %192, 71
  %211 = add nsw i64 %polly.indvar_next497.6, %193
  %polly.access.mul.call1500.7 = mul nuw nsw i64 %211, 60
  %polly.indvar_next497.7 = add nsw i64 %192, 72
  %212 = add nsw i64 %polly.indvar_next497.7, %193
  %polly.access.mul.call1500.8 = mul nuw nsw i64 %212, 60
  %polly.indvar_next497.8 = add nsw i64 %192, 73
  %213 = add nsw i64 %polly.indvar_next497.8, %193
  %polly.access.mul.call1500.9 = mul nuw nsw i64 %213, 60
  %polly.indvar_next497.9 = add nsw i64 %192, 74
  %214 = add nsw i64 %polly.indvar_next497.9, %193
  %polly.access.mul.call1500.10 = mul nuw nsw i64 %214, 60
  %polly.indvar_next497.10 = add nsw i64 %192, 75
  %215 = add nsw i64 %polly.indvar_next497.10, %193
  %polly.access.mul.call1500.11 = mul nuw nsw i64 %215, 60
  %polly.indvar_next497.11 = add nsw i64 %192, 76
  %216 = add nsw i64 %polly.indvar_next497.11, %193
  %polly.access.mul.call1500.12 = mul nuw nsw i64 %216, 60
  %polly.indvar_next497.12 = add nsw i64 %192, 77
  %217 = add nsw i64 %polly.indvar_next497.12, %193
  %polly.access.mul.call1500.13 = mul nuw nsw i64 %217, 60
  %polly.indvar_next497.13 = add nsw i64 %192, 78
  %218 = add nsw i64 %polly.indvar_next497.13, %193
  %polly.access.mul.call1500.14 = mul nuw nsw i64 %218, 60
  %polly.indvar_next497.14 = add nsw i64 %192, 79
  %219 = add nsw i64 %polly.indvar_next497.14, %193
  %polly.access.mul.call1500.15 = mul nuw nsw i64 %219, 60
  br label %polly.loop_header446

polly.loop_exit448:                               ; preds = %polly.loop_exit508
  %polly.indvar_next427 = add nuw nsw i64 %polly.indvar426, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -8
  %indvars.iv.next1045 = add nsw i64 %indvars.iv1044, -8
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -8
  %indvars.iv.next1055 = add nsw i64 %indvars.iv1054, -8
  %indvars.iv.next1057 = add nuw nsw i64 %indvars.iv1056, 8
  %exitcond1064.not = icmp eq i64 %polly.indvar_next427, 10
  br i1 %exitcond1064.not, label %polly.exiting320, label %polly.loop_header423

polly.loop_header429:                             ; preds = %polly.loop_exit437, %polly.loop_header423
  %polly.indvar432 = phi i64 [ 0, %polly.loop_header423 ], [ %polly.indvar_next433, %polly.loop_exit437 ]
  %polly.access.mul.Packed_MemRef_call2324 = mul nuw nsw i64 %polly.indvar432, 80
  br label %polly.loop_header435

polly.loop_exit437:                               ; preds = %polly.loop_header435
  %polly.indvar_next433 = add nuw nsw i64 %polly.indvar432, 1
  %exitcond1043.not = icmp eq i64 %polly.indvar_next433, 60
  br i1 %exitcond1043.not, label %polly.loop_exit431, label %polly.loop_header429

polly.loop_header435:                             ; preds = %polly.loop_header435, %polly.loop_header429
  %polly.indvar438 = phi i64 [ 0, %polly.loop_header429 ], [ %polly.indvar_next439, %polly.loop_header435 ]
  %220 = add nuw nsw i64 %polly.indvar438, %193
  %polly.access.mul.call2442 = mul nuw nsw i64 %220, 60
  %polly.access.add.call2443 = add nuw nsw i64 %polly.access.mul.call2442, %polly.indvar432
  %polly.access.call2444 = getelementptr double, double* %polly.access.cast.call2791, i64 %polly.access.add.call2443
  %polly.access.call2444.load = load double, double* %polly.access.call2444, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2324 = add nuw nsw i64 %polly.indvar438, %polly.access.mul.Packed_MemRef_call2324
  %polly.access.Packed_MemRef_call2324 = getelementptr double, double* %Packed_MemRef_call2324, i64 %polly.access.add.Packed_MemRef_call2324
  store double %polly.access.call2444.load, double* %polly.access.Packed_MemRef_call2324, align 8
  %polly.indvar_next439 = add nuw nsw i64 %polly.indvar438, 1
  %exitcond1042.not = icmp eq i64 %polly.indvar_next439, %indvars.iv1040
  br i1 %exitcond1042.not, label %polly.loop_exit437, label %polly.loop_header435

polly.loop_header446:                             ; preds = %polly.loop_exit508, %polly.loop_exit431
  %polly.indvar449 = phi i64 [ %pexp.p_div_q445, %polly.loop_exit431 ], [ 1, %polly.loop_exit508 ]
  %221 = shl nuw nsw i64 %polly.indvar449, 3
  %.not983 = icmp ult i64 %polly.indvar426, %221
  br i1 %.not983, label %polly.loop_header474, label %polly.loop_header456.preheader

polly.loop_header456.preheader:                   ; preds = %polly.loop_header446
  %222 = shl nsw i64 %polly.indvar449, 6
  %223 = add i64 %195, %222
  %224 = icmp slt i64 %194, %223
  %225 = select i1 %224, i64 %194, i64 %223
  %polly.loop_guard466 = icmp sgt i64 %225, -1
  br i1 %polly.loop_guard466, label %polly.loop_header456.us.preheader, label %polly.loop_preheader507

polly.loop_header456.us.preheader:                ; preds = %polly.loop_header456.preheader
  %226 = add i64 %indvars.iv1046, %222
  %smin1048 = call i64 @llvm.smin.i64(i64 %indvars.iv1044, i64 %226)
  br label %polly.loop_header456.us

polly.loop_header456.us:                          ; preds = %polly.loop_header456.us.preheader, %polly.loop_exit465.loopexit.us
  %polly.indvar459.us = phi i64 [ %polly.indvar_next460.us, %polly.loop_exit465.loopexit.us ], [ 0, %polly.loop_header456.us.preheader ]
  %polly.access.mul.Packed_MemRef_call1322.us = mul nuw nsw i64 %polly.indvar459.us, 80
  br label %polly.loop_header463.us

polly.loop_header463.us:                          ; preds = %polly.loop_header456.us, %polly.loop_header463.us
  %polly.indvar467.us = phi i64 [ %polly.indvar_next468.us, %polly.loop_header463.us ], [ 0, %polly.loop_header456.us ]
  %227 = add nuw nsw i64 %polly.indvar467.us, %193
  %polly.access.mul.call1471.us = mul nuw nsw i64 %227, 60
  %polly.access.add.call1472.us = add nuw nsw i64 %polly.access.mul.call1471.us, %polly.indvar459.us
  %polly.access.call1473.us = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1472.us
  %polly.access.call1473.load.us = load double, double* %polly.access.call1473.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322.us = add nuw nsw i64 %polly.indvar467.us, %polly.access.mul.Packed_MemRef_call1322.us
  %polly.access.Packed_MemRef_call1322.us = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322.us
  store double %polly.access.call1473.load.us, double* %polly.access.Packed_MemRef_call1322.us, align 8
  %polly.indvar_next468.us = add nuw nsw i64 %polly.indvar467.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar467.us, %smin1048
  br i1 %exitcond1049.not, label %polly.loop_exit465.loopexit.us, label %polly.loop_header463.us

polly.loop_exit465.loopexit.us:                   ; preds = %polly.loop_header463.us
  %polly.indvar_next460.us = add nuw nsw i64 %polly.indvar459.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar_next460.us, 60
  br i1 %exitcond1050.not, label %polly.loop_preheader507, label %polly.loop_header456.us

polly.loop_exit508:                               ; preds = %polly.loop_exit515, %polly.loop_preheader507
  %polly.loop_cond451 = icmp eq i64 %polly.indvar449, 0
  br i1 %polly.loop_cond451, label %polly.loop_header446, label %polly.loop_exit448

polly.loop_header474:                             ; preds = %polly.loop_header446, %polly.loop_header474
  %polly.indvar477 = phi i64 [ %polly.indvar_next478, %polly.loop_header474 ], [ 0, %polly.loop_header446 ]
  %polly.access.mul.Packed_MemRef_call1322490 = mul nuw nsw i64 %polly.indvar477, 80
  %polly.access.add.call1488 = add nuw nsw i64 %polly.access.mul.call1487, %polly.indvar477
  %polly.access.call1489 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1488
  %polly.access.call1489.load = load double, double* %polly.access.call1489, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1322492 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.mul.Packed_MemRef_call1322490
  store double %polly.access.call1489.load, double* %polly.access.Packed_MemRef_call1322492, align 8
  %polly.access.add.call1488.1 = add nuw nsw i64 %polly.access.mul.call1487.1, %polly.indvar477
  %polly.access.call1489.1 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1488.1
  %polly.access.call1489.load.1 = load double, double* %polly.access.call1489.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322491.1 = or i64 %polly.access.mul.Packed_MemRef_call1322490, 1
  %polly.access.Packed_MemRef_call1322492.1 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322491.1
  store double %polly.access.call1489.load.1, double* %polly.access.Packed_MemRef_call1322492.1, align 8
  %polly.access.add.call1488.2 = add nuw nsw i64 %polly.access.mul.call1487.2, %polly.indvar477
  %polly.access.call1489.2 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1488.2
  %polly.access.call1489.load.2 = load double, double* %polly.access.call1489.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322491.2 = or i64 %polly.access.mul.Packed_MemRef_call1322490, 2
  %polly.access.Packed_MemRef_call1322492.2 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322491.2
  store double %polly.access.call1489.load.2, double* %polly.access.Packed_MemRef_call1322492.2, align 8
  %polly.access.add.call1488.3 = add nuw nsw i64 %polly.access.mul.call1487.3, %polly.indvar477
  %polly.access.call1489.3 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1488.3
  %polly.access.call1489.load.3 = load double, double* %polly.access.call1489.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322491.3 = or i64 %polly.access.mul.Packed_MemRef_call1322490, 3
  %polly.access.Packed_MemRef_call1322492.3 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322491.3
  store double %polly.access.call1489.load.3, double* %polly.access.Packed_MemRef_call1322492.3, align 8
  %polly.access.add.call1488.4 = add nuw nsw i64 %polly.access.mul.call1487.4, %polly.indvar477
  %polly.access.call1489.4 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1488.4
  %polly.access.call1489.load.4 = load double, double* %polly.access.call1489.4, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322491.4 = or i64 %polly.access.mul.Packed_MemRef_call1322490, 4
  %polly.access.Packed_MemRef_call1322492.4 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322491.4
  store double %polly.access.call1489.load.4, double* %polly.access.Packed_MemRef_call1322492.4, align 8
  %polly.access.add.call1488.5 = add nuw nsw i64 %polly.access.mul.call1487.5, %polly.indvar477
  %polly.access.call1489.5 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1488.5
  %polly.access.call1489.load.5 = load double, double* %polly.access.call1489.5, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322491.5 = or i64 %polly.access.mul.Packed_MemRef_call1322490, 5
  %polly.access.Packed_MemRef_call1322492.5 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322491.5
  store double %polly.access.call1489.load.5, double* %polly.access.Packed_MemRef_call1322492.5, align 8
  %polly.access.add.call1488.6 = add nuw nsw i64 %polly.access.mul.call1487.6, %polly.indvar477
  %polly.access.call1489.6 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1488.6
  %polly.access.call1489.load.6 = load double, double* %polly.access.call1489.6, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322491.6 = or i64 %polly.access.mul.Packed_MemRef_call1322490, 6
  %polly.access.Packed_MemRef_call1322492.6 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322491.6
  store double %polly.access.call1489.load.6, double* %polly.access.Packed_MemRef_call1322492.6, align 8
  %polly.access.add.call1488.7 = add nuw nsw i64 %polly.access.mul.call1487.7, %polly.indvar477
  %polly.access.call1489.7 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1488.7
  %polly.access.call1489.load.7 = load double, double* %polly.access.call1489.7, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322491.7 = or i64 %polly.access.mul.Packed_MemRef_call1322490, 7
  %polly.access.Packed_MemRef_call1322492.7 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322491.7
  store double %polly.access.call1489.load.7, double* %polly.access.Packed_MemRef_call1322492.7, align 8
  %polly.access.add.call1501 = add nuw nsw i64 %polly.access.mul.call1500, %polly.indvar477
  %polly.access.call1502 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501
  %polly.access.call1502.load = load double, double* %polly.access.call1502, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504 = add nsw i64 %196, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504
  store double %polly.access.call1502.load, double* %polly.access.Packed_MemRef_call1322505, align 8
  %polly.access.add.call1501.1 = add nuw nsw i64 %polly.access.mul.call1500.1, %polly.indvar477
  %polly.access.call1502.1 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.1
  %polly.access.call1502.load.1 = load double, double* %polly.access.call1502.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.1 = add nsw i64 %polly.indvar_next497, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.1 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.1
  store double %polly.access.call1502.load.1, double* %polly.access.Packed_MemRef_call1322505.1, align 8
  %polly.access.add.call1501.2 = add nuw nsw i64 %polly.access.mul.call1500.2, %polly.indvar477
  %polly.access.call1502.2 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.2
  %polly.access.call1502.load.2 = load double, double* %polly.access.call1502.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.2 = add nsw i64 %polly.indvar_next497.1, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.2 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.2
  store double %polly.access.call1502.load.2, double* %polly.access.Packed_MemRef_call1322505.2, align 8
  %polly.access.add.call1501.3 = add nuw nsw i64 %polly.access.mul.call1500.3, %polly.indvar477
  %polly.access.call1502.3 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.3
  %polly.access.call1502.load.3 = load double, double* %polly.access.call1502.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.3 = add nsw i64 %polly.indvar_next497.2, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.3 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.3
  store double %polly.access.call1502.load.3, double* %polly.access.Packed_MemRef_call1322505.3, align 8
  %polly.access.add.call1501.4 = add nuw nsw i64 %polly.access.mul.call1500.4, %polly.indvar477
  %polly.access.call1502.4 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.4
  %polly.access.call1502.load.4 = load double, double* %polly.access.call1502.4, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.4 = add nsw i64 %polly.indvar_next497.3, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.4 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.4
  store double %polly.access.call1502.load.4, double* %polly.access.Packed_MemRef_call1322505.4, align 8
  %polly.access.add.call1501.5 = add nuw nsw i64 %polly.access.mul.call1500.5, %polly.indvar477
  %polly.access.call1502.5 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.5
  %polly.access.call1502.load.5 = load double, double* %polly.access.call1502.5, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.5 = add nsw i64 %polly.indvar_next497.4, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.5 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.5
  store double %polly.access.call1502.load.5, double* %polly.access.Packed_MemRef_call1322505.5, align 8
  %polly.access.add.call1501.6 = add nuw nsw i64 %polly.access.mul.call1500.6, %polly.indvar477
  %polly.access.call1502.6 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.6
  %polly.access.call1502.load.6 = load double, double* %polly.access.call1502.6, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.6 = add nsw i64 %polly.indvar_next497.5, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.6 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.6
  store double %polly.access.call1502.load.6, double* %polly.access.Packed_MemRef_call1322505.6, align 8
  %polly.access.add.call1501.7 = add nuw nsw i64 %polly.access.mul.call1500.7, %polly.indvar477
  %polly.access.call1502.7 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.7
  %polly.access.call1502.load.7 = load double, double* %polly.access.call1502.7, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.7 = add nsw i64 %polly.indvar_next497.6, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.7 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.7
  store double %polly.access.call1502.load.7, double* %polly.access.Packed_MemRef_call1322505.7, align 8
  %polly.access.add.call1501.8 = add nuw nsw i64 %polly.access.mul.call1500.8, %polly.indvar477
  %polly.access.call1502.8 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.8
  %polly.access.call1502.load.8 = load double, double* %polly.access.call1502.8, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.8 = add nsw i64 %polly.indvar_next497.7, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.8 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.8
  store double %polly.access.call1502.load.8, double* %polly.access.Packed_MemRef_call1322505.8, align 8
  %polly.access.add.call1501.9 = add nuw nsw i64 %polly.access.mul.call1500.9, %polly.indvar477
  %polly.access.call1502.9 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.9
  %polly.access.call1502.load.9 = load double, double* %polly.access.call1502.9, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.9 = add nsw i64 %polly.indvar_next497.8, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.9 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.9
  store double %polly.access.call1502.load.9, double* %polly.access.Packed_MemRef_call1322505.9, align 8
  %polly.access.add.call1501.10 = add nuw nsw i64 %polly.access.mul.call1500.10, %polly.indvar477
  %polly.access.call1502.10 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.10
  %polly.access.call1502.load.10 = load double, double* %polly.access.call1502.10, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.10 = add nsw i64 %polly.indvar_next497.9, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.10 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.10
  store double %polly.access.call1502.load.10, double* %polly.access.Packed_MemRef_call1322505.10, align 8
  %polly.access.add.call1501.11 = add nuw nsw i64 %polly.access.mul.call1500.11, %polly.indvar477
  %polly.access.call1502.11 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.11
  %polly.access.call1502.load.11 = load double, double* %polly.access.call1502.11, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.11 = add nsw i64 %polly.indvar_next497.10, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.11 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.11
  store double %polly.access.call1502.load.11, double* %polly.access.Packed_MemRef_call1322505.11, align 8
  %polly.access.add.call1501.12 = add nuw nsw i64 %polly.access.mul.call1500.12, %polly.indvar477
  %polly.access.call1502.12 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.12
  %polly.access.call1502.load.12 = load double, double* %polly.access.call1502.12, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.12 = add nsw i64 %polly.indvar_next497.11, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.12 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.12
  store double %polly.access.call1502.load.12, double* %polly.access.Packed_MemRef_call1322505.12, align 8
  %polly.access.add.call1501.13 = add nuw nsw i64 %polly.access.mul.call1500.13, %polly.indvar477
  %polly.access.call1502.13 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.13
  %polly.access.call1502.load.13 = load double, double* %polly.access.call1502.13, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.13 = add nsw i64 %polly.indvar_next497.12, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.13 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.13
  store double %polly.access.call1502.load.13, double* %polly.access.Packed_MemRef_call1322505.13, align 8
  %polly.access.add.call1501.14 = add nuw nsw i64 %polly.access.mul.call1500.14, %polly.indvar477
  %polly.access.call1502.14 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.14
  %polly.access.call1502.load.14 = load double, double* %polly.access.call1502.14, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.14 = add nsw i64 %polly.indvar_next497.13, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.14 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.14
  store double %polly.access.call1502.load.14, double* %polly.access.Packed_MemRef_call1322505.14, align 8
  %polly.access.add.call1501.15 = add nuw nsw i64 %polly.access.mul.call1500.15, %polly.indvar477
  %polly.access.call1502.15 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1501.15
  %polly.access.call1502.load.15 = load double, double* %polly.access.call1502.15, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1322504.15 = add nsw i64 %polly.indvar_next497.14, %polly.access.mul.Packed_MemRef_call1322490
  %polly.access.Packed_MemRef_call1322505.15 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322504.15
  store double %polly.access.call1502.load.15, double* %polly.access.Packed_MemRef_call1322505.15, align 8
  %polly.indvar_next478 = add nuw nsw i64 %polly.indvar477, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar_next478, 60
  br i1 %exitcond1053.not, label %polly.loop_preheader507.loopexit, label %polly.loop_header474

polly.loop_header506:                             ; preds = %polly.loop_header506.preheader, %polly.loop_exit515
  %polly.indvar509 = phi i64 [ %polly.indvar_next510, %polly.loop_exit515 ], [ 0, %polly.loop_header506.preheader ]
  %228 = mul nuw nsw i64 %polly.indvar509, 640
  %scevgep1563 = getelementptr i8, i8* %malloccall321, i64 %228
  %229 = or i64 %228, 8
  %scevgep1564 = getelementptr i8, i8* %malloccall321, i64 %229
  %polly.access.mul.Packed_MemRef_call1322528 = mul nuw nsw i64 %polly.indvar509, 80
  br label %polly.loop_header513

polly.loop_exit515:                               ; preds = %polly.loop_exit523
  %polly.indvar_next510 = add nuw nsw i64 %polly.indvar509, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next510, 60
  br i1 %exitcond1063.not, label %polly.loop_exit508, label %polly.loop_header506

polly.loop_preheader507.loopexit:                 ; preds = %polly.loop_header474
  %.pre1176 = shl nsw i64 %polly.indvar449, 6
  br label %polly.loop_preheader507

polly.loop_preheader507:                          ; preds = %polly.loop_exit465.loopexit.us, %polly.loop_preheader507.loopexit, %polly.loop_header456.preheader
  %.pre-phi1177 = phi i64 [ %.pre1176, %polly.loop_preheader507.loopexit ], [ %222, %polly.loop_header456.preheader ], [ %222, %polly.loop_exit465.loopexit.us ]
  %230 = sub nsw i64 %193, %.pre-phi1177
  %231 = icmp sgt i64 %230, 0
  %232 = select i1 %231, i64 %230, i64 0
  %233 = mul nuw nsw i64 %polly.indvar449, -64
  %234 = icmp slt i64 %233, -16
  %235 = select i1 %234, i64 %233, i64 -16
  %236 = add nsw i64 %235, 79
  %polly.loop_guard516.not = icmp sgt i64 %232, %236
  br i1 %polly.loop_guard516.not, label %polly.loop_exit508, label %polly.loop_header506.preheader

polly.loop_header506.preheader:                   ; preds = %polly.loop_preheader507
  %237 = sub i64 %indvars.iv1056, %.pre-phi1177
  %smax1058 = call i64 @llvm.smax.i64(i64 %237, i64 0)
  %238 = add i64 %indvars.iv1054, %smax1058
  %239 = add i64 %238, %.pre-phi1177
  %240 = add i64 %.pre-phi1177, %smax1058
  %241 = mul nsw i64 %240, 640
  %242 = add i64 %190, %241
  %243 = add i64 %191, %241
  br label %polly.loop_header506

polly.loop_header513:                             ; preds = %polly.loop_header506, %polly.loop_exit523
  %indvar1557 = phi i64 [ 0, %polly.loop_header506 ], [ %indvar.next1558, %polly.loop_exit523 ]
  %indvars.iv1059 = phi i64 [ %239, %polly.loop_header506 ], [ %indvars.iv.next1060, %polly.loop_exit523 ]
  %polly.indvar517 = phi i64 [ %232, %polly.loop_header506 ], [ %polly.indvar_next518, %polly.loop_exit523 ]
  %244 = add i64 %239, %indvar1557
  %smin1573 = call i64 @llvm.smin.i64(i64 %244, i64 7)
  %245 = add nsw i64 %smin1573, 1
  %246 = mul i64 %indvar1557, 640
  %247 = add i64 %242, %246
  %scevgep1559 = getelementptr i8, i8* %call, i64 %247
  %248 = add i64 %243, %246
  %scevgep1560 = getelementptr i8, i8* %call, i64 %248
  %249 = add i64 %239, %indvar1557
  %smin1561 = call i64 @llvm.smin.i64(i64 %249, i64 7)
  %250 = shl i64 %smin1561, 3
  %scevgep1562 = getelementptr i8, i8* %scevgep1560, i64 %250
  %scevgep1565 = getelementptr i8, i8* %scevgep1564, i64 %250
  %smin1061 = call i64 @llvm.smin.i64(i64 %indvars.iv1059, i64 7)
  %251 = add nuw i64 %polly.indvar517, %.pre-phi1177
  %252 = add i64 %251, %192
  %polly.loop_guard5241181 = icmp sgt i64 %252, -1
  br i1 %polly.loop_guard5241181, label %polly.loop_header521.preheader, label %polly.loop_exit523

polly.loop_header521.preheader:                   ; preds = %polly.loop_header513
  %polly.access.add.Packed_MemRef_call2324533 = add nsw i64 %polly.access.mul.Packed_MemRef_call1322528, %252
  %polly.access.Packed_MemRef_call2324534 = getelementptr double, double* %Packed_MemRef_call2324, i64 %polly.access.add.Packed_MemRef_call2324533
  %_p_scalar_535 = load double, double* %polly.access.Packed_MemRef_call2324534, align 8
  %polly.access.Packed_MemRef_call1322542 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call2324533
  %_p_scalar_543 = load double, double* %polly.access.Packed_MemRef_call1322542, align 8
  %253 = mul i64 %251, 640
  %min.iters.check1574 = icmp ult i64 %245, 4
  br i1 %min.iters.check1574, label %polly.loop_header521.preheader1651, label %vector.memcheck1556

vector.memcheck1556:                              ; preds = %polly.loop_header521.preheader
  %bound01566 = icmp ult i8* %scevgep1559, %scevgep1565
  %bound11567 = icmp ult i8* %scevgep1563, %scevgep1562
  %found.conflict1568 = and i1 %bound01566, %bound11567
  br i1 %found.conflict1568, label %polly.loop_header521.preheader1651, label %vector.ph1575

vector.ph1575:                                    ; preds = %vector.memcheck1556
  %n.vec1577 = and i64 %245, -4
  %broadcast.splatinsert1583 = insertelement <4 x double> poison, double %_p_scalar_535, i32 0
  %broadcast.splat1584 = shufflevector <4 x double> %broadcast.splatinsert1583, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1586 = insertelement <4 x double> poison, double %_p_scalar_543, i32 0
  %broadcast.splat1587 = shufflevector <4 x double> %broadcast.splatinsert1586, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1572

vector.body1572:                                  ; preds = %vector.body1572, %vector.ph1575
  %index1578 = phi i64 [ 0, %vector.ph1575 ], [ %index.next1579, %vector.body1572 ]
  %254 = add nuw nsw i64 %index1578, %193
  %255 = add nuw nsw i64 %index1578, %polly.access.mul.Packed_MemRef_call1322528
  %256 = getelementptr double, double* %Packed_MemRef_call1322, i64 %255
  %257 = bitcast double* %256 to <4 x double>*
  %wide.load1582 = load <4 x double>, <4 x double>* %257, align 8, !alias.scope !103
  %258 = fmul fast <4 x double> %broadcast.splat1584, %wide.load1582
  %259 = getelementptr double, double* %Packed_MemRef_call2324, i64 %255
  %260 = bitcast double* %259 to <4 x double>*
  %wide.load1585 = load <4 x double>, <4 x double>* %260, align 8
  %261 = fmul fast <4 x double> %broadcast.splat1587, %wide.load1585
  %262 = shl i64 %254, 3
  %263 = add i64 %262, %253
  %264 = getelementptr i8, i8* %call, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  %wide.load1588 = load <4 x double>, <4 x double>* %265, align 8, !alias.scope !106, !noalias !108
  %266 = fadd fast <4 x double> %261, %258
  %267 = fmul fast <4 x double> %266, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %268 = fadd fast <4 x double> %267, %wide.load1588
  %269 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %268, <4 x double>* %269, align 8, !alias.scope !106, !noalias !108
  %index.next1579 = add i64 %index1578, 4
  %270 = icmp eq i64 %index.next1579, %n.vec1577
  br i1 %270, label %middle.block1570, label %vector.body1572, !llvm.loop !109

middle.block1570:                                 ; preds = %vector.body1572
  %cmp.n1581 = icmp eq i64 %245, %n.vec1577
  br i1 %cmp.n1581, label %polly.loop_exit523, label %polly.loop_header521.preheader1651

polly.loop_header521.preheader1651:               ; preds = %vector.memcheck1556, %polly.loop_header521.preheader, %middle.block1570
  %polly.indvar525.ph = phi i64 [ 0, %vector.memcheck1556 ], [ 0, %polly.loop_header521.preheader ], [ %n.vec1577, %middle.block1570 ]
  br label %polly.loop_header521

polly.loop_exit523:                               ; preds = %polly.loop_header521, %middle.block1570, %polly.loop_header513
  %polly.indvar_next518 = add nuw nsw i64 %polly.indvar517, 1
  %polly.loop_cond519.not.not = icmp ult i64 %polly.indvar517, %236
  %indvars.iv.next1060 = add i64 %indvars.iv1059, 1
  %indvar.next1558 = add i64 %indvar1557, 1
  br i1 %polly.loop_cond519.not.not, label %polly.loop_header513, label %polly.loop_exit515

polly.loop_header521:                             ; preds = %polly.loop_header521.preheader1651, %polly.loop_header521
  %polly.indvar525 = phi i64 [ %polly.indvar_next526, %polly.loop_header521 ], [ %polly.indvar525.ph, %polly.loop_header521.preheader1651 ]
  %271 = add nuw nsw i64 %polly.indvar525, %193
  %polly.access.add.Packed_MemRef_call1322529 = add nuw nsw i64 %polly.indvar525, %polly.access.mul.Packed_MemRef_call1322528
  %polly.access.Packed_MemRef_call1322530 = getelementptr double, double* %Packed_MemRef_call1322, i64 %polly.access.add.Packed_MemRef_call1322529
  %_p_scalar_531 = load double, double* %polly.access.Packed_MemRef_call1322530, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_535, %_p_scalar_531
  %polly.access.Packed_MemRef_call2324538 = getelementptr double, double* %Packed_MemRef_call2324, i64 %polly.access.add.Packed_MemRef_call1322529
  %_p_scalar_539 = load double, double* %polly.access.Packed_MemRef_call2324538, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_543, %_p_scalar_539
  %272 = shl i64 %271, 3
  %273 = add i64 %272, %253
  %scevgep544 = getelementptr i8, i8* %call, i64 %273
  %scevgep544545 = bitcast i8* %scevgep544 to double*
  %_p_scalar_546 = load double, double* %scevgep544545, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_546
  store double %p_add42.i79, double* %scevgep544545, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next526 = add nuw nsw i64 %polly.indvar525, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar525, %smin1061
  br i1 %exitcond1062.not, label %polly.loop_exit523, label %polly.loop_header521, !llvm.loop !110

polly.start549:                                   ; preds = %init_array.exit
  %malloccall551 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall553 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header637

polly.exiting550:                                 ; preds = %polly.loop_exit678
  tail call void @free(i8* %malloccall551)
  tail call void @free(i8* %malloccall553)
  br label %kernel_syr2k.exit

polly.loop_header637:                             ; preds = %polly.loop_exit645, %polly.start549
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit645 ], [ 0, %polly.start549 ]
  %polly.indvar640 = phi i64 [ %polly.indvar_next641, %polly.loop_exit645 ], [ 1, %polly.start549 ]
  %274 = add i64 %indvar, 1
  %275 = mul nuw nsw i64 %polly.indvar640, 640
  %scevgep649 = getelementptr i8, i8* %call, i64 %275
  %min.iters.check1488 = icmp ult i64 %274, 4
  br i1 %min.iters.check1488, label %polly.loop_header643.preheader, label %vector.ph1489

vector.ph1489:                                    ; preds = %polly.loop_header637
  %n.vec1491 = and i64 %274, -4
  br label %vector.body1487

vector.body1487:                                  ; preds = %vector.body1487, %vector.ph1489
  %index1492 = phi i64 [ 0, %vector.ph1489 ], [ %index.next1493, %vector.body1487 ]
  %276 = shl nuw nsw i64 %index1492, 3
  %277 = getelementptr i8, i8* %scevgep649, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  %wide.load1496 = load <4 x double>, <4 x double>* %278, align 8, !alias.scope !111, !noalias !113
  %279 = fmul fast <4 x double> %wide.load1496, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %280 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %279, <4 x double>* %280, align 8, !alias.scope !111, !noalias !113
  %index.next1493 = add i64 %index1492, 4
  %281 = icmp eq i64 %index.next1493, %n.vec1491
  br i1 %281, label %middle.block1485, label %vector.body1487, !llvm.loop !118

middle.block1485:                                 ; preds = %vector.body1487
  %cmp.n1495 = icmp eq i64 %274, %n.vec1491
  br i1 %cmp.n1495, label %polly.loop_exit645, label %polly.loop_header643.preheader

polly.loop_header643.preheader:                   ; preds = %polly.loop_header637, %middle.block1485
  %polly.indvar646.ph = phi i64 [ 0, %polly.loop_header637 ], [ %n.vec1491, %middle.block1485 ]
  br label %polly.loop_header643

polly.loop_exit645:                               ; preds = %polly.loop_header643, %middle.block1485
  %polly.indvar_next641 = add nuw nsw i64 %polly.indvar640, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next641, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1093.not, label %polly.loop_header653.preheader, label %polly.loop_header637

polly.loop_header653.preheader:                   ; preds = %polly.loop_exit645
  %Packed_MemRef_call1552 = bitcast i8* %malloccall551 to double*
  %Packed_MemRef_call2554 = bitcast i8* %malloccall553 to double*
  br label %polly.loop_header653

polly.loop_header643:                             ; preds = %polly.loop_header643.preheader, %polly.loop_header643
  %polly.indvar646 = phi i64 [ %polly.indvar_next647, %polly.loop_header643 ], [ %polly.indvar646.ph, %polly.loop_header643.preheader ]
  %282 = shl nuw nsw i64 %polly.indvar646, 3
  %scevgep650 = getelementptr i8, i8* %scevgep649, i64 %282
  %scevgep650651 = bitcast i8* %scevgep650 to double*
  %_p_scalar_652 = load double, double* %scevgep650651, align 8, !alias.scope !111, !noalias !113
  %p_mul.i = fmul fast double %_p_scalar_652, 1.200000e+00
  store double %p_mul.i, double* %scevgep650651, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next647 = add nuw nsw i64 %polly.indvar646, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next647, %polly.indvar640
  br i1 %exitcond1092.not, label %polly.loop_exit645, label %polly.loop_header643, !llvm.loop !119

polly.loop_header653:                             ; preds = %polly.loop_header653.preheader, %polly.loop_exit678
  %indvars.iv1083 = phi i64 [ 0, %polly.loop_header653.preheader ], [ %indvars.iv.next1084, %polly.loop_exit678 ]
  %indvars.iv1081 = phi i64 [ 0, %polly.loop_header653.preheader ], [ %indvars.iv.next1082, %polly.loop_exit678 ]
  %indvars.iv1073 = phi i64 [ 63, %polly.loop_header653.preheader ], [ %indvars.iv.next1074, %polly.loop_exit678 ]
  %indvars.iv1071 = phi i64 [ 79, %polly.loop_header653.preheader ], [ %indvars.iv.next1072, %polly.loop_exit678 ]
  %indvars.iv1067 = phi i64 [ 80, %polly.loop_header653.preheader ], [ %indvars.iv.next1068, %polly.loop_exit678 ]
  %polly.indvar656 = phi i64 [ 0, %polly.loop_header653.preheader ], [ %polly.indvar_next657, %polly.loop_exit678 ]
  %283 = shl nuw nsw i64 %polly.indvar656, 6
  %284 = or i64 %283, 8
  %285 = mul nsw i64 %polly.indvar656, -8
  %286 = shl nsw i64 %polly.indvar656, 3
  br label %polly.loop_header659

polly.loop_exit661:                               ; preds = %polly.loop_exit667
  %287 = add nsw i64 %285, 79
  %pexp.p_div_q675 = lshr i64 %polly.indvar656, 3
  %288 = add nsw i64 %285, 63
  %289 = add nsw i64 %285, 64
  %290 = add nsw i64 %289, %286
  %polly.access.mul.call1730 = mul nuw nsw i64 %290, 60
  %polly.access.mul.call1717 = mul nsw i64 %polly.indvar656, 480
  %291 = or i64 %286, 1
  %polly.access.mul.call1717.1 = mul nuw nsw i64 %291, 60
  %292 = or i64 %286, 2
  %polly.access.mul.call1717.2 = mul nuw nsw i64 %292, 60
  %293 = or i64 %286, 3
  %polly.access.mul.call1717.3 = mul nuw nsw i64 %293, 60
  %294 = or i64 %286, 4
  %polly.access.mul.call1717.4 = mul nuw nsw i64 %294, 60
  %295 = or i64 %286, 5
  %polly.access.mul.call1717.5 = mul nuw nsw i64 %295, 60
  %296 = or i64 %286, 6
  %polly.access.mul.call1717.6 = mul nuw nsw i64 %296, 60
  %297 = or i64 %286, 7
  %polly.access.mul.call1717.7 = mul nuw nsw i64 %297, 60
  %polly.indvar_next727 = add nsw i64 %285, 65
  %298 = add nsw i64 %polly.indvar_next727, %286
  %polly.access.mul.call1730.1 = mul nuw nsw i64 %298, 60
  %polly.indvar_next727.1 = add nsw i64 %285, 66
  %299 = add nsw i64 %polly.indvar_next727.1, %286
  %polly.access.mul.call1730.2 = mul nuw nsw i64 %299, 60
  %polly.indvar_next727.2 = add nsw i64 %285, 67
  %300 = add nsw i64 %polly.indvar_next727.2, %286
  %polly.access.mul.call1730.3 = mul nuw nsw i64 %300, 60
  %polly.indvar_next727.3 = add nsw i64 %285, 68
  %301 = add nsw i64 %polly.indvar_next727.3, %286
  %polly.access.mul.call1730.4 = mul nuw nsw i64 %301, 60
  %polly.indvar_next727.4 = add nsw i64 %285, 69
  %302 = add nsw i64 %polly.indvar_next727.4, %286
  %polly.access.mul.call1730.5 = mul nuw nsw i64 %302, 60
  %polly.indvar_next727.5 = add nsw i64 %285, 70
  %303 = add nsw i64 %polly.indvar_next727.5, %286
  %polly.access.mul.call1730.6 = mul nuw nsw i64 %303, 60
  %polly.indvar_next727.6 = add nsw i64 %285, 71
  %304 = add nsw i64 %polly.indvar_next727.6, %286
  %polly.access.mul.call1730.7 = mul nuw nsw i64 %304, 60
  %polly.indvar_next727.7 = add nsw i64 %285, 72
  %305 = add nsw i64 %polly.indvar_next727.7, %286
  %polly.access.mul.call1730.8 = mul nuw nsw i64 %305, 60
  %polly.indvar_next727.8 = add nsw i64 %285, 73
  %306 = add nsw i64 %polly.indvar_next727.8, %286
  %polly.access.mul.call1730.9 = mul nuw nsw i64 %306, 60
  %polly.indvar_next727.9 = add nsw i64 %285, 74
  %307 = add nsw i64 %polly.indvar_next727.9, %286
  %polly.access.mul.call1730.10 = mul nuw nsw i64 %307, 60
  %polly.indvar_next727.10 = add nsw i64 %285, 75
  %308 = add nsw i64 %polly.indvar_next727.10, %286
  %polly.access.mul.call1730.11 = mul nuw nsw i64 %308, 60
  %polly.indvar_next727.11 = add nsw i64 %285, 76
  %309 = add nsw i64 %polly.indvar_next727.11, %286
  %polly.access.mul.call1730.12 = mul nuw nsw i64 %309, 60
  %polly.indvar_next727.12 = add nsw i64 %285, 77
  %310 = add nsw i64 %polly.indvar_next727.12, %286
  %polly.access.mul.call1730.13 = mul nuw nsw i64 %310, 60
  %polly.indvar_next727.13 = add nsw i64 %285, 78
  %311 = add nsw i64 %polly.indvar_next727.13, %286
  %polly.access.mul.call1730.14 = mul nuw nsw i64 %311, 60
  %polly.indvar_next727.14 = add nsw i64 %285, 79
  %312 = add nsw i64 %polly.indvar_next727.14, %286
  %polly.access.mul.call1730.15 = mul nuw nsw i64 %312, 60
  br label %polly.loop_header676

polly.loop_exit678:                               ; preds = %polly.loop_exit738
  %polly.indvar_next657 = add nuw nsw i64 %polly.indvar656, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, -8
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, -8
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, -8
  %indvars.iv.next1082 = add nsw i64 %indvars.iv1081, -8
  %indvars.iv.next1084 = add nuw nsw i64 %indvars.iv1083, 8
  %exitcond1091.not = icmp eq i64 %polly.indvar_next657, 10
  br i1 %exitcond1091.not, label %polly.exiting550, label %polly.loop_header653

polly.loop_header659:                             ; preds = %polly.loop_exit667, %polly.loop_header653
  %polly.indvar662 = phi i64 [ 0, %polly.loop_header653 ], [ %polly.indvar_next663, %polly.loop_exit667 ]
  %polly.access.mul.Packed_MemRef_call2554 = mul nuw nsw i64 %polly.indvar662, 80
  br label %polly.loop_header665

polly.loop_exit667:                               ; preds = %polly.loop_header665
  %polly.indvar_next663 = add nuw nsw i64 %polly.indvar662, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar_next663, 60
  br i1 %exitcond1070.not, label %polly.loop_exit661, label %polly.loop_header659

polly.loop_header665:                             ; preds = %polly.loop_header665, %polly.loop_header659
  %polly.indvar668 = phi i64 [ 0, %polly.loop_header659 ], [ %polly.indvar_next669, %polly.loop_header665 ]
  %313 = add nuw nsw i64 %polly.indvar668, %286
  %polly.access.mul.call2672 = mul nuw nsw i64 %313, 60
  %polly.access.add.call2673 = add nuw nsw i64 %polly.access.mul.call2672, %polly.indvar662
  %polly.access.call2674 = getelementptr double, double* %polly.access.cast.call2791, i64 %polly.access.add.call2673
  %polly.access.call2674.load = load double, double* %polly.access.call2674, align 8, !alias.scope !115, !noalias !120
  %polly.access.add.Packed_MemRef_call2554 = add nuw nsw i64 %polly.indvar668, %polly.access.mul.Packed_MemRef_call2554
  %polly.access.Packed_MemRef_call2554 = getelementptr double, double* %Packed_MemRef_call2554, i64 %polly.access.add.Packed_MemRef_call2554
  store double %polly.access.call2674.load, double* %polly.access.Packed_MemRef_call2554, align 8
  %polly.indvar_next669 = add nuw nsw i64 %polly.indvar668, 1
  %exitcond1069.not = icmp eq i64 %polly.indvar_next669, %indvars.iv1067
  br i1 %exitcond1069.not, label %polly.loop_exit667, label %polly.loop_header665

polly.loop_header676:                             ; preds = %polly.loop_exit738, %polly.loop_exit661
  %polly.indvar679 = phi i64 [ %pexp.p_div_q675, %polly.loop_exit661 ], [ 1, %polly.loop_exit738 ]
  %314 = shl nuw nsw i64 %polly.indvar679, 3
  %.not984 = icmp ult i64 %polly.indvar656, %314
  br i1 %.not984, label %polly.loop_header704, label %polly.loop_header686.preheader

polly.loop_header686.preheader:                   ; preds = %polly.loop_header676
  %315 = shl nsw i64 %polly.indvar679, 6
  %316 = add i64 %288, %315
  %317 = icmp slt i64 %287, %316
  %318 = select i1 %317, i64 %287, i64 %316
  %polly.loop_guard696 = icmp sgt i64 %318, -1
  br i1 %polly.loop_guard696, label %polly.loop_header686.us.preheader, label %polly.loop_preheader737

polly.loop_header686.us.preheader:                ; preds = %polly.loop_header686.preheader
  %319 = add i64 %indvars.iv1073, %315
  %smin1075 = call i64 @llvm.smin.i64(i64 %indvars.iv1071, i64 %319)
  br label %polly.loop_header686.us

polly.loop_header686.us:                          ; preds = %polly.loop_header686.us.preheader, %polly.loop_exit695.loopexit.us
  %polly.indvar689.us = phi i64 [ %polly.indvar_next690.us, %polly.loop_exit695.loopexit.us ], [ 0, %polly.loop_header686.us.preheader ]
  %polly.access.mul.Packed_MemRef_call1552.us = mul nuw nsw i64 %polly.indvar689.us, 80
  br label %polly.loop_header693.us

polly.loop_header693.us:                          ; preds = %polly.loop_header686.us, %polly.loop_header693.us
  %polly.indvar697.us = phi i64 [ %polly.indvar_next698.us, %polly.loop_header693.us ], [ 0, %polly.loop_header686.us ]
  %320 = add nuw nsw i64 %polly.indvar697.us, %286
  %polly.access.mul.call1701.us = mul nuw nsw i64 %320, 60
  %polly.access.add.call1702.us = add nuw nsw i64 %polly.access.mul.call1701.us, %polly.indvar689.us
  %polly.access.call1703.us = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1702.us
  %polly.access.call1703.load.us = load double, double* %polly.access.call1703.us, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552.us = add nuw nsw i64 %polly.indvar697.us, %polly.access.mul.Packed_MemRef_call1552.us
  %polly.access.Packed_MemRef_call1552.us = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552.us
  store double %polly.access.call1703.load.us, double* %polly.access.Packed_MemRef_call1552.us, align 8
  %polly.indvar_next698.us = add nuw nsw i64 %polly.indvar697.us, 1
  %exitcond1076.not = icmp eq i64 %polly.indvar697.us, %smin1075
  br i1 %exitcond1076.not, label %polly.loop_exit695.loopexit.us, label %polly.loop_header693.us

polly.loop_exit695.loopexit.us:                   ; preds = %polly.loop_header693.us
  %polly.indvar_next690.us = add nuw nsw i64 %polly.indvar689.us, 1
  %exitcond1077.not = icmp eq i64 %polly.indvar_next690.us, 60
  br i1 %exitcond1077.not, label %polly.loop_preheader737, label %polly.loop_header686.us

polly.loop_exit738:                               ; preds = %polly.loop_exit745, %polly.loop_preheader737
  %polly.loop_cond681 = icmp eq i64 %polly.indvar679, 0
  br i1 %polly.loop_cond681, label %polly.loop_header676, label %polly.loop_exit678

polly.loop_header704:                             ; preds = %polly.loop_header676, %polly.loop_header704
  %polly.indvar707 = phi i64 [ %polly.indvar_next708, %polly.loop_header704 ], [ 0, %polly.loop_header676 ]
  %polly.access.mul.Packed_MemRef_call1552720 = mul nuw nsw i64 %polly.indvar707, 80
  %polly.access.add.call1718 = add nuw nsw i64 %polly.access.mul.call1717, %polly.indvar707
  %polly.access.call1719 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1718
  %polly.access.call1719.load = load double, double* %polly.access.call1719, align 8, !alias.scope !114, !noalias !121
  %polly.access.Packed_MemRef_call1552722 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.mul.Packed_MemRef_call1552720
  store double %polly.access.call1719.load, double* %polly.access.Packed_MemRef_call1552722, align 8
  %polly.access.add.call1718.1 = add nuw nsw i64 %polly.access.mul.call1717.1, %polly.indvar707
  %polly.access.call1719.1 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1718.1
  %polly.access.call1719.load.1 = load double, double* %polly.access.call1719.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552721.1 = or i64 %polly.access.mul.Packed_MemRef_call1552720, 1
  %polly.access.Packed_MemRef_call1552722.1 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552721.1
  store double %polly.access.call1719.load.1, double* %polly.access.Packed_MemRef_call1552722.1, align 8
  %polly.access.add.call1718.2 = add nuw nsw i64 %polly.access.mul.call1717.2, %polly.indvar707
  %polly.access.call1719.2 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1718.2
  %polly.access.call1719.load.2 = load double, double* %polly.access.call1719.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552721.2 = or i64 %polly.access.mul.Packed_MemRef_call1552720, 2
  %polly.access.Packed_MemRef_call1552722.2 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552721.2
  store double %polly.access.call1719.load.2, double* %polly.access.Packed_MemRef_call1552722.2, align 8
  %polly.access.add.call1718.3 = add nuw nsw i64 %polly.access.mul.call1717.3, %polly.indvar707
  %polly.access.call1719.3 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1718.3
  %polly.access.call1719.load.3 = load double, double* %polly.access.call1719.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552721.3 = or i64 %polly.access.mul.Packed_MemRef_call1552720, 3
  %polly.access.Packed_MemRef_call1552722.3 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552721.3
  store double %polly.access.call1719.load.3, double* %polly.access.Packed_MemRef_call1552722.3, align 8
  %polly.access.add.call1718.4 = add nuw nsw i64 %polly.access.mul.call1717.4, %polly.indvar707
  %polly.access.call1719.4 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1718.4
  %polly.access.call1719.load.4 = load double, double* %polly.access.call1719.4, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552721.4 = or i64 %polly.access.mul.Packed_MemRef_call1552720, 4
  %polly.access.Packed_MemRef_call1552722.4 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552721.4
  store double %polly.access.call1719.load.4, double* %polly.access.Packed_MemRef_call1552722.4, align 8
  %polly.access.add.call1718.5 = add nuw nsw i64 %polly.access.mul.call1717.5, %polly.indvar707
  %polly.access.call1719.5 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1718.5
  %polly.access.call1719.load.5 = load double, double* %polly.access.call1719.5, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552721.5 = or i64 %polly.access.mul.Packed_MemRef_call1552720, 5
  %polly.access.Packed_MemRef_call1552722.5 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552721.5
  store double %polly.access.call1719.load.5, double* %polly.access.Packed_MemRef_call1552722.5, align 8
  %polly.access.add.call1718.6 = add nuw nsw i64 %polly.access.mul.call1717.6, %polly.indvar707
  %polly.access.call1719.6 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1718.6
  %polly.access.call1719.load.6 = load double, double* %polly.access.call1719.6, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552721.6 = or i64 %polly.access.mul.Packed_MemRef_call1552720, 6
  %polly.access.Packed_MemRef_call1552722.6 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552721.6
  store double %polly.access.call1719.load.6, double* %polly.access.Packed_MemRef_call1552722.6, align 8
  %polly.access.add.call1718.7 = add nuw nsw i64 %polly.access.mul.call1717.7, %polly.indvar707
  %polly.access.call1719.7 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1718.7
  %polly.access.call1719.load.7 = load double, double* %polly.access.call1719.7, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552721.7 = or i64 %polly.access.mul.Packed_MemRef_call1552720, 7
  %polly.access.Packed_MemRef_call1552722.7 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552721.7
  store double %polly.access.call1719.load.7, double* %polly.access.Packed_MemRef_call1552722.7, align 8
  %polly.access.add.call1731 = add nuw nsw i64 %polly.access.mul.call1730, %polly.indvar707
  %polly.access.call1732 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731
  %polly.access.call1732.load = load double, double* %polly.access.call1732, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734 = add nsw i64 %289, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734
  store double %polly.access.call1732.load, double* %polly.access.Packed_MemRef_call1552735, align 8
  %polly.access.add.call1731.1 = add nuw nsw i64 %polly.access.mul.call1730.1, %polly.indvar707
  %polly.access.call1732.1 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.1
  %polly.access.call1732.load.1 = load double, double* %polly.access.call1732.1, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.1 = add nsw i64 %polly.indvar_next727, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.1 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.1
  store double %polly.access.call1732.load.1, double* %polly.access.Packed_MemRef_call1552735.1, align 8
  %polly.access.add.call1731.2 = add nuw nsw i64 %polly.access.mul.call1730.2, %polly.indvar707
  %polly.access.call1732.2 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.2
  %polly.access.call1732.load.2 = load double, double* %polly.access.call1732.2, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.2 = add nsw i64 %polly.indvar_next727.1, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.2 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.2
  store double %polly.access.call1732.load.2, double* %polly.access.Packed_MemRef_call1552735.2, align 8
  %polly.access.add.call1731.3 = add nuw nsw i64 %polly.access.mul.call1730.3, %polly.indvar707
  %polly.access.call1732.3 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.3
  %polly.access.call1732.load.3 = load double, double* %polly.access.call1732.3, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.3 = add nsw i64 %polly.indvar_next727.2, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.3 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.3
  store double %polly.access.call1732.load.3, double* %polly.access.Packed_MemRef_call1552735.3, align 8
  %polly.access.add.call1731.4 = add nuw nsw i64 %polly.access.mul.call1730.4, %polly.indvar707
  %polly.access.call1732.4 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.4
  %polly.access.call1732.load.4 = load double, double* %polly.access.call1732.4, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.4 = add nsw i64 %polly.indvar_next727.3, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.4 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.4
  store double %polly.access.call1732.load.4, double* %polly.access.Packed_MemRef_call1552735.4, align 8
  %polly.access.add.call1731.5 = add nuw nsw i64 %polly.access.mul.call1730.5, %polly.indvar707
  %polly.access.call1732.5 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.5
  %polly.access.call1732.load.5 = load double, double* %polly.access.call1732.5, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.5 = add nsw i64 %polly.indvar_next727.4, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.5 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.5
  store double %polly.access.call1732.load.5, double* %polly.access.Packed_MemRef_call1552735.5, align 8
  %polly.access.add.call1731.6 = add nuw nsw i64 %polly.access.mul.call1730.6, %polly.indvar707
  %polly.access.call1732.6 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.6
  %polly.access.call1732.load.6 = load double, double* %polly.access.call1732.6, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.6 = add nsw i64 %polly.indvar_next727.5, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.6 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.6
  store double %polly.access.call1732.load.6, double* %polly.access.Packed_MemRef_call1552735.6, align 8
  %polly.access.add.call1731.7 = add nuw nsw i64 %polly.access.mul.call1730.7, %polly.indvar707
  %polly.access.call1732.7 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.7
  %polly.access.call1732.load.7 = load double, double* %polly.access.call1732.7, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.7 = add nsw i64 %polly.indvar_next727.6, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.7 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.7
  store double %polly.access.call1732.load.7, double* %polly.access.Packed_MemRef_call1552735.7, align 8
  %polly.access.add.call1731.8 = add nuw nsw i64 %polly.access.mul.call1730.8, %polly.indvar707
  %polly.access.call1732.8 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.8
  %polly.access.call1732.load.8 = load double, double* %polly.access.call1732.8, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.8 = add nsw i64 %polly.indvar_next727.7, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.8 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.8
  store double %polly.access.call1732.load.8, double* %polly.access.Packed_MemRef_call1552735.8, align 8
  %polly.access.add.call1731.9 = add nuw nsw i64 %polly.access.mul.call1730.9, %polly.indvar707
  %polly.access.call1732.9 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.9
  %polly.access.call1732.load.9 = load double, double* %polly.access.call1732.9, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.9 = add nsw i64 %polly.indvar_next727.8, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.9 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.9
  store double %polly.access.call1732.load.9, double* %polly.access.Packed_MemRef_call1552735.9, align 8
  %polly.access.add.call1731.10 = add nuw nsw i64 %polly.access.mul.call1730.10, %polly.indvar707
  %polly.access.call1732.10 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.10
  %polly.access.call1732.load.10 = load double, double* %polly.access.call1732.10, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.10 = add nsw i64 %polly.indvar_next727.9, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.10 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.10
  store double %polly.access.call1732.load.10, double* %polly.access.Packed_MemRef_call1552735.10, align 8
  %polly.access.add.call1731.11 = add nuw nsw i64 %polly.access.mul.call1730.11, %polly.indvar707
  %polly.access.call1732.11 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.11
  %polly.access.call1732.load.11 = load double, double* %polly.access.call1732.11, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.11 = add nsw i64 %polly.indvar_next727.10, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.11 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.11
  store double %polly.access.call1732.load.11, double* %polly.access.Packed_MemRef_call1552735.11, align 8
  %polly.access.add.call1731.12 = add nuw nsw i64 %polly.access.mul.call1730.12, %polly.indvar707
  %polly.access.call1732.12 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.12
  %polly.access.call1732.load.12 = load double, double* %polly.access.call1732.12, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.12 = add nsw i64 %polly.indvar_next727.11, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.12 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.12
  store double %polly.access.call1732.load.12, double* %polly.access.Packed_MemRef_call1552735.12, align 8
  %polly.access.add.call1731.13 = add nuw nsw i64 %polly.access.mul.call1730.13, %polly.indvar707
  %polly.access.call1732.13 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.13
  %polly.access.call1732.load.13 = load double, double* %polly.access.call1732.13, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.13 = add nsw i64 %polly.indvar_next727.12, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.13 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.13
  store double %polly.access.call1732.load.13, double* %polly.access.Packed_MemRef_call1552735.13, align 8
  %polly.access.add.call1731.14 = add nuw nsw i64 %polly.access.mul.call1730.14, %polly.indvar707
  %polly.access.call1732.14 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.14
  %polly.access.call1732.load.14 = load double, double* %polly.access.call1732.14, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.14 = add nsw i64 %polly.indvar_next727.13, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.14 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.14
  store double %polly.access.call1732.load.14, double* %polly.access.Packed_MemRef_call1552735.14, align 8
  %polly.access.add.call1731.15 = add nuw nsw i64 %polly.access.mul.call1730.15, %polly.indvar707
  %polly.access.call1732.15 = getelementptr double, double* %polly.access.cast.call1781, i64 %polly.access.add.call1731.15
  %polly.access.call1732.load.15 = load double, double* %polly.access.call1732.15, align 8, !alias.scope !114, !noalias !121
  %polly.access.add.Packed_MemRef_call1552734.15 = add nsw i64 %polly.indvar_next727.14, %polly.access.mul.Packed_MemRef_call1552720
  %polly.access.Packed_MemRef_call1552735.15 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552734.15
  store double %polly.access.call1732.load.15, double* %polly.access.Packed_MemRef_call1552735.15, align 8
  %polly.indvar_next708 = add nuw nsw i64 %polly.indvar707, 1
  %exitcond1080.not = icmp eq i64 %polly.indvar_next708, 60
  br i1 %exitcond1080.not, label %polly.loop_preheader737.loopexit, label %polly.loop_header704

polly.loop_header736:                             ; preds = %polly.loop_header736.preheader, %polly.loop_exit745
  %polly.indvar739 = phi i64 [ %polly.indvar_next740, %polly.loop_exit745 ], [ 0, %polly.loop_header736.preheader ]
  %321 = mul nuw nsw i64 %polly.indvar739, 640
  %scevgep1504 = getelementptr i8, i8* %malloccall551, i64 %321
  %322 = or i64 %321, 8
  %scevgep1505 = getelementptr i8, i8* %malloccall551, i64 %322
  %polly.access.mul.Packed_MemRef_call1552758 = mul nuw nsw i64 %polly.indvar739, 80
  br label %polly.loop_header743

polly.loop_exit745:                               ; preds = %polly.loop_exit753
  %polly.indvar_next740 = add nuw nsw i64 %polly.indvar739, 1
  %exitcond1090.not = icmp eq i64 %polly.indvar_next740, 60
  br i1 %exitcond1090.not, label %polly.loop_exit738, label %polly.loop_header736

polly.loop_preheader737.loopexit:                 ; preds = %polly.loop_header704
  %.pre = shl nsw i64 %polly.indvar679, 6
  br label %polly.loop_preheader737

polly.loop_preheader737:                          ; preds = %polly.loop_exit695.loopexit.us, %polly.loop_preheader737.loopexit, %polly.loop_header686.preheader
  %.pre-phi = phi i64 [ %.pre, %polly.loop_preheader737.loopexit ], [ %315, %polly.loop_header686.preheader ], [ %315, %polly.loop_exit695.loopexit.us ]
  %323 = sub nsw i64 %286, %.pre-phi
  %324 = icmp sgt i64 %323, 0
  %325 = select i1 %324, i64 %323, i64 0
  %326 = mul nuw nsw i64 %polly.indvar679, -64
  %327 = icmp slt i64 %326, -16
  %328 = select i1 %327, i64 %326, i64 -16
  %329 = add nsw i64 %328, 79
  %polly.loop_guard746.not = icmp sgt i64 %325, %329
  br i1 %polly.loop_guard746.not, label %polly.loop_exit738, label %polly.loop_header736.preheader

polly.loop_header736.preheader:                   ; preds = %polly.loop_preheader737
  %330 = sub i64 %indvars.iv1083, %.pre-phi
  %smax1085 = call i64 @llvm.smax.i64(i64 %330, i64 0)
  %331 = add i64 %indvars.iv1081, %smax1085
  %332 = add i64 %331, %.pre-phi
  %333 = add i64 %.pre-phi, %smax1085
  %334 = mul nsw i64 %333, 640
  %335 = add i64 %283, %334
  %336 = add i64 %284, %334
  br label %polly.loop_header736

polly.loop_header743:                             ; preds = %polly.loop_header736, %polly.loop_exit753
  %indvar1498 = phi i64 [ 0, %polly.loop_header736 ], [ %indvar.next1499, %polly.loop_exit753 ]
  %indvars.iv1086 = phi i64 [ %332, %polly.loop_header736 ], [ %indvars.iv.next1087, %polly.loop_exit753 ]
  %polly.indvar747 = phi i64 [ %325, %polly.loop_header736 ], [ %polly.indvar_next748, %polly.loop_exit753 ]
  %337 = add i64 %332, %indvar1498
  %smin1514 = call i64 @llvm.smin.i64(i64 %337, i64 7)
  %338 = add nsw i64 %smin1514, 1
  %339 = mul i64 %indvar1498, 640
  %340 = add i64 %335, %339
  %scevgep1500 = getelementptr i8, i8* %call, i64 %340
  %341 = add i64 %336, %339
  %scevgep1501 = getelementptr i8, i8* %call, i64 %341
  %342 = add i64 %332, %indvar1498
  %smin1502 = call i64 @llvm.smin.i64(i64 %342, i64 7)
  %343 = shl i64 %smin1502, 3
  %scevgep1503 = getelementptr i8, i8* %scevgep1501, i64 %343
  %scevgep1506 = getelementptr i8, i8* %scevgep1505, i64 %343
  %smin1088 = call i64 @llvm.smin.i64(i64 %indvars.iv1086, i64 7)
  %344 = add nuw i64 %polly.indvar747, %.pre-phi
  %345 = add i64 %344, %285
  %polly.loop_guard7541182 = icmp sgt i64 %345, -1
  br i1 %polly.loop_guard7541182, label %polly.loop_header751.preheader, label %polly.loop_exit753

polly.loop_header751.preheader:                   ; preds = %polly.loop_header743
  %polly.access.add.Packed_MemRef_call2554763 = add nsw i64 %polly.access.mul.Packed_MemRef_call1552758, %345
  %polly.access.Packed_MemRef_call2554764 = getelementptr double, double* %Packed_MemRef_call2554, i64 %polly.access.add.Packed_MemRef_call2554763
  %_p_scalar_765 = load double, double* %polly.access.Packed_MemRef_call2554764, align 8
  %polly.access.Packed_MemRef_call1552772 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call2554763
  %_p_scalar_773 = load double, double* %polly.access.Packed_MemRef_call1552772, align 8
  %346 = mul i64 %344, 640
  %min.iters.check1515 = icmp ult i64 %338, 4
  br i1 %min.iters.check1515, label %polly.loop_header751.preheader1654, label %vector.memcheck1497

vector.memcheck1497:                              ; preds = %polly.loop_header751.preheader
  %bound01507 = icmp ult i8* %scevgep1500, %scevgep1506
  %bound11508 = icmp ult i8* %scevgep1504, %scevgep1503
  %found.conflict1509 = and i1 %bound01507, %bound11508
  br i1 %found.conflict1509, label %polly.loop_header751.preheader1654, label %vector.ph1516

vector.ph1516:                                    ; preds = %vector.memcheck1497
  %n.vec1518 = and i64 %338, -4
  %broadcast.splatinsert1524 = insertelement <4 x double> poison, double %_p_scalar_765, i32 0
  %broadcast.splat1525 = shufflevector <4 x double> %broadcast.splatinsert1524, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1527 = insertelement <4 x double> poison, double %_p_scalar_773, i32 0
  %broadcast.splat1528 = shufflevector <4 x double> %broadcast.splatinsert1527, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1513

vector.body1513:                                  ; preds = %vector.body1513, %vector.ph1516
  %index1519 = phi i64 [ 0, %vector.ph1516 ], [ %index.next1520, %vector.body1513 ]
  %347 = add nuw nsw i64 %index1519, %286
  %348 = add nuw nsw i64 %index1519, %polly.access.mul.Packed_MemRef_call1552758
  %349 = getelementptr double, double* %Packed_MemRef_call1552, i64 %348
  %350 = bitcast double* %349 to <4 x double>*
  %wide.load1523 = load <4 x double>, <4 x double>* %350, align 8, !alias.scope !122
  %351 = fmul fast <4 x double> %broadcast.splat1525, %wide.load1523
  %352 = getelementptr double, double* %Packed_MemRef_call2554, i64 %348
  %353 = bitcast double* %352 to <4 x double>*
  %wide.load1526 = load <4 x double>, <4 x double>* %353, align 8
  %354 = fmul fast <4 x double> %broadcast.splat1528, %wide.load1526
  %355 = shl i64 %347, 3
  %356 = add i64 %355, %346
  %357 = getelementptr i8, i8* %call, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  %wide.load1529 = load <4 x double>, <4 x double>* %358, align 8, !alias.scope !125, !noalias !127
  %359 = fadd fast <4 x double> %354, %351
  %360 = fmul fast <4 x double> %359, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %361 = fadd fast <4 x double> %360, %wide.load1529
  %362 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %361, <4 x double>* %362, align 8, !alias.scope !125, !noalias !127
  %index.next1520 = add i64 %index1519, 4
  %363 = icmp eq i64 %index.next1520, %n.vec1518
  br i1 %363, label %middle.block1511, label %vector.body1513, !llvm.loop !128

middle.block1511:                                 ; preds = %vector.body1513
  %cmp.n1522 = icmp eq i64 %338, %n.vec1518
  br i1 %cmp.n1522, label %polly.loop_exit753, label %polly.loop_header751.preheader1654

polly.loop_header751.preheader1654:               ; preds = %vector.memcheck1497, %polly.loop_header751.preheader, %middle.block1511
  %polly.indvar755.ph = phi i64 [ 0, %vector.memcheck1497 ], [ 0, %polly.loop_header751.preheader ], [ %n.vec1518, %middle.block1511 ]
  br label %polly.loop_header751

polly.loop_exit753:                               ; preds = %polly.loop_header751, %middle.block1511, %polly.loop_header743
  %polly.indvar_next748 = add nuw nsw i64 %polly.indvar747, 1
  %polly.loop_cond749.not.not = icmp ult i64 %polly.indvar747, %329
  %indvars.iv.next1087 = add i64 %indvars.iv1086, 1
  %indvar.next1499 = add i64 %indvar1498, 1
  br i1 %polly.loop_cond749.not.not, label %polly.loop_header743, label %polly.loop_exit745

polly.loop_header751:                             ; preds = %polly.loop_header751.preheader1654, %polly.loop_header751
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_header751 ], [ %polly.indvar755.ph, %polly.loop_header751.preheader1654 ]
  %364 = add nuw nsw i64 %polly.indvar755, %286
  %polly.access.add.Packed_MemRef_call1552759 = add nuw nsw i64 %polly.indvar755, %polly.access.mul.Packed_MemRef_call1552758
  %polly.access.Packed_MemRef_call1552760 = getelementptr double, double* %Packed_MemRef_call1552, i64 %polly.access.add.Packed_MemRef_call1552759
  %_p_scalar_761 = load double, double* %polly.access.Packed_MemRef_call1552760, align 8
  %p_mul27.i = fmul fast double %_p_scalar_765, %_p_scalar_761
  %polly.access.Packed_MemRef_call2554768 = getelementptr double, double* %Packed_MemRef_call2554, i64 %polly.access.add.Packed_MemRef_call1552759
  %_p_scalar_769 = load double, double* %polly.access.Packed_MemRef_call2554768, align 8
  %p_mul37.i = fmul fast double %_p_scalar_773, %_p_scalar_769
  %365 = shl i64 %364, 3
  %366 = add i64 %365, %346
  %scevgep774 = getelementptr i8, i8* %call, i64 %366
  %scevgep774775 = bitcast i8* %scevgep774 to double*
  %_p_scalar_776 = load double, double* %scevgep774775, align 8, !alias.scope !111, !noalias !113
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_776
  store double %p_add42.i, double* %scevgep774775, align 8, !alias.scope !111, !noalias !113
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar755, %smin1088
  br i1 %exitcond1089.not, label %polly.loop_exit753, label %polly.loop_header751, !llvm.loop !129

polly.loop_header915:                             ; preds = %entry, %polly.loop_exit923
  %polly.indvar918 = phi i64 [ %polly.indvar_next919, %polly.loop_exit923 ], [ 0, %entry ]
  %367 = mul nuw nsw i64 %polly.indvar918, 640
  %368 = trunc i64 %polly.indvar918 to i32
  %broadcast.splatinsert1219 = insertelement <4 x i32> poison, i32 %368, i32 0
  %broadcast.splat1220 = shufflevector <4 x i32> %broadcast.splatinsert1219, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %polly.loop_header915
  %index1211 = phi i64 [ 0, %polly.loop_header915 ], [ %index.next1212, %vector.body1209 ]
  %vec.ind1217 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header915 ], [ %vec.ind.next1218, %vector.body1209 ]
  %369 = mul <4 x i32> %vec.ind1217, %broadcast.splat1220
  %370 = add <4 x i32> %369, <i32 3, i32 3, i32 3, i32 3>
  %371 = urem <4 x i32> %370, <i32 80, i32 80, i32 80, i32 80>
  %372 = sitofp <4 x i32> %371 to <4 x double>
  %373 = fmul fast <4 x double> %372, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %374 = shl i64 %index1211, 3
  %375 = add nuw nsw i64 %374, %367
  %376 = getelementptr i8, i8* %call, i64 %375
  %377 = bitcast i8* %376 to <4 x double>*
  store <4 x double> %373, <4 x double>* %377, align 8, !alias.scope !130, !noalias !132
  %index.next1212 = add i64 %index1211, 4
  %vec.ind.next1218 = add <4 x i32> %vec.ind1217, <i32 4, i32 4, i32 4, i32 4>
  %378 = icmp eq i64 %index.next1212, 32
  br i1 %378, label %polly.loop_exit923, label %vector.body1209, !llvm.loop !135

polly.loop_exit923:                               ; preds = %vector.body1209
  %polly.indvar_next919 = add nuw nsw i64 %polly.indvar918, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar_next919, 32
  br i1 %exitcond1113.not, label %polly.loop_header915.1, label %polly.loop_header915

polly.loop_header942:                             ; preds = %polly.loop_exit923.2.2, %polly.loop_exit950
  %polly.indvar945 = phi i64 [ %polly.indvar_next946, %polly.loop_exit950 ], [ 0, %polly.loop_exit923.2.2 ]
  %379 = mul nuw nsw i64 %polly.indvar945, 480
  %380 = trunc i64 %polly.indvar945 to i32
  %broadcast.splatinsert1333 = insertelement <4 x i32> poison, i32 %380, i32 0
  %broadcast.splat1334 = shufflevector <4 x i32> %broadcast.splatinsert1333, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1323

vector.body1323:                                  ; preds = %vector.body1323, %polly.loop_header942
  %index1325 = phi i64 [ 0, %polly.loop_header942 ], [ %index.next1326, %vector.body1323 ]
  %vec.ind1331 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header942 ], [ %vec.ind.next1332, %vector.body1323 ]
  %381 = mul <4 x i32> %vec.ind1331, %broadcast.splat1334
  %382 = add <4 x i32> %381, <i32 2, i32 2, i32 2, i32 2>
  %383 = urem <4 x i32> %382, <i32 60, i32 60, i32 60, i32 60>
  %384 = sitofp <4 x i32> %383 to <4 x double>
  %385 = fmul fast <4 x double> %384, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %386 = shl i64 %index1325, 3
  %387 = add i64 %386, %379
  %388 = getelementptr i8, i8* %call2, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %385, <4 x double>* %389, align 8, !alias.scope !134, !noalias !136
  %index.next1326 = add i64 %index1325, 4
  %vec.ind.next1332 = add <4 x i32> %vec.ind1331, <i32 4, i32 4, i32 4, i32 4>
  %390 = icmp eq i64 %index.next1326, 32
  br i1 %390, label %polly.loop_exit950, label %vector.body1323, !llvm.loop !137

polly.loop_exit950:                               ; preds = %vector.body1323
  %polly.indvar_next946 = add nuw nsw i64 %polly.indvar945, 1
  %exitcond1104.not = icmp eq i64 %polly.indvar_next946, 32
  br i1 %exitcond1104.not, label %polly.loop_header942.1, label %polly.loop_header942

polly.loop_header968:                             ; preds = %polly.loop_exit950.1.2, %polly.loop_exit976
  %polly.indvar971 = phi i64 [ %polly.indvar_next972, %polly.loop_exit976 ], [ 0, %polly.loop_exit950.1.2 ]
  %391 = mul nuw nsw i64 %polly.indvar971, 480
  %392 = trunc i64 %polly.indvar971 to i32
  %broadcast.splatinsert1411 = insertelement <4 x i32> poison, i32 %392, i32 0
  %broadcast.splat1412 = shufflevector <4 x i32> %broadcast.splatinsert1411, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1401

vector.body1401:                                  ; preds = %vector.body1401, %polly.loop_header968
  %index1403 = phi i64 [ 0, %polly.loop_header968 ], [ %index.next1404, %vector.body1401 ]
  %vec.ind1409 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header968 ], [ %vec.ind.next1410, %vector.body1401 ]
  %393 = mul <4 x i32> %vec.ind1409, %broadcast.splat1412
  %394 = add <4 x i32> %393, <i32 1, i32 1, i32 1, i32 1>
  %395 = urem <4 x i32> %394, <i32 80, i32 80, i32 80, i32 80>
  %396 = sitofp <4 x i32> %395 to <4 x double>
  %397 = fmul fast <4 x double> %396, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %398 = shl i64 %index1403, 3
  %399 = add i64 %398, %391
  %400 = getelementptr i8, i8* %call1, i64 %399
  %401 = bitcast i8* %400 to <4 x double>*
  store <4 x double> %397, <4 x double>* %401, align 8, !alias.scope !133, !noalias !138
  %index.next1404 = add i64 %index1403, 4
  %vec.ind.next1410 = add <4 x i32> %vec.ind1409, <i32 4, i32 4, i32 4, i32 4>
  %402 = icmp eq i64 %index.next1404, 32
  br i1 %402, label %polly.loop_exit976, label %vector.body1401, !llvm.loop !139

polly.loop_exit976:                               ; preds = %vector.body1401
  %polly.indvar_next972 = add nuw nsw i64 %polly.indvar971, 1
  %exitcond1098.not = icmp eq i64 %polly.indvar_next972, 32
  br i1 %exitcond1098.not, label %polly.loop_header968.1, label %polly.loop_header968

polly.loop_header968.1:                           ; preds = %polly.loop_exit976, %polly.loop_exit976.1
  %polly.indvar971.1 = phi i64 [ %polly.indvar_next972.1, %polly.loop_exit976.1 ], [ 0, %polly.loop_exit976 ]
  %403 = mul nuw nsw i64 %polly.indvar971.1, 480
  %404 = trunc i64 %polly.indvar971.1 to i32
  %broadcast.splatinsert1423 = insertelement <4 x i32> poison, i32 %404, i32 0
  %broadcast.splat1424 = shufflevector <4 x i32> %broadcast.splatinsert1423, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.body1415, %polly.loop_header968.1
  %index1417 = phi i64 [ 0, %polly.loop_header968.1 ], [ %index.next1418, %vector.body1415 ]
  %vec.ind1421 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header968.1 ], [ %vec.ind.next1422, %vector.body1415 ]
  %405 = add nuw nsw <4 x i64> %vec.ind1421, <i64 32, i64 32, i64 32, i64 32>
  %406 = trunc <4 x i64> %405 to <4 x i32>
  %407 = mul <4 x i32> %broadcast.splat1424, %406
  %408 = add <4 x i32> %407, <i32 1, i32 1, i32 1, i32 1>
  %409 = urem <4 x i32> %408, <i32 80, i32 80, i32 80, i32 80>
  %410 = sitofp <4 x i32> %409 to <4 x double>
  %411 = fmul fast <4 x double> %410, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %412 = extractelement <4 x i64> %405, i32 0
  %413 = shl i64 %412, 3
  %414 = add i64 %413, %403
  %415 = getelementptr i8, i8* %call1, i64 %414
  %416 = bitcast i8* %415 to <4 x double>*
  store <4 x double> %411, <4 x double>* %416, align 8, !alias.scope !133, !noalias !138
  %index.next1418 = add i64 %index1417, 4
  %vec.ind.next1422 = add <4 x i64> %vec.ind1421, <i64 4, i64 4, i64 4, i64 4>
  %417 = icmp eq i64 %index.next1418, 28
  br i1 %417, label %polly.loop_exit976.1, label %vector.body1415, !llvm.loop !140

polly.loop_exit976.1:                             ; preds = %vector.body1415
  %polly.indvar_next972.1 = add nuw nsw i64 %polly.indvar971.1, 1
  %exitcond1098.1.not = icmp eq i64 %polly.indvar_next972.1, 32
  br i1 %exitcond1098.1.not, label %polly.loop_header968.11121, label %polly.loop_header968.1

polly.loop_header968.11121:                       ; preds = %polly.loop_exit976.1, %polly.loop_exit976.11132
  %polly.indvar971.11120 = phi i64 [ %polly.indvar_next972.11130, %polly.loop_exit976.11132 ], [ 0, %polly.loop_exit976.1 ]
  %418 = add nuw nsw i64 %polly.indvar971.11120, 32
  %419 = mul nuw nsw i64 %418, 480
  %420 = trunc i64 %418 to i32
  %broadcast.splatinsert1437 = insertelement <4 x i32> poison, i32 %420, i32 0
  %broadcast.splat1438 = shufflevector <4 x i32> %broadcast.splatinsert1437, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1427

vector.body1427:                                  ; preds = %vector.body1427, %polly.loop_header968.11121
  %index1429 = phi i64 [ 0, %polly.loop_header968.11121 ], [ %index.next1430, %vector.body1427 ]
  %vec.ind1435 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header968.11121 ], [ %vec.ind.next1436, %vector.body1427 ]
  %421 = mul <4 x i32> %vec.ind1435, %broadcast.splat1438
  %422 = add <4 x i32> %421, <i32 1, i32 1, i32 1, i32 1>
  %423 = urem <4 x i32> %422, <i32 80, i32 80, i32 80, i32 80>
  %424 = sitofp <4 x i32> %423 to <4 x double>
  %425 = fmul fast <4 x double> %424, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %426 = shl i64 %index1429, 3
  %427 = add i64 %426, %419
  %428 = getelementptr i8, i8* %call1, i64 %427
  %429 = bitcast i8* %428 to <4 x double>*
  store <4 x double> %425, <4 x double>* %429, align 8, !alias.scope !133, !noalias !138
  %index.next1430 = add i64 %index1429, 4
  %vec.ind.next1436 = add <4 x i32> %vec.ind1435, <i32 4, i32 4, i32 4, i32 4>
  %430 = icmp eq i64 %index.next1430, 32
  br i1 %430, label %polly.loop_exit976.11132, label %vector.body1427, !llvm.loop !141

polly.loop_exit976.11132:                         ; preds = %vector.body1427
  %polly.indvar_next972.11130 = add nuw nsw i64 %polly.indvar971.11120, 1
  %exitcond1098.11131.not = icmp eq i64 %polly.indvar_next972.11130, 32
  br i1 %exitcond1098.11131.not, label %polly.loop_header968.1.1, label %polly.loop_header968.11121

polly.loop_header968.1.1:                         ; preds = %polly.loop_exit976.11132, %polly.loop_exit976.1.1
  %polly.indvar971.1.1 = phi i64 [ %polly.indvar_next972.1.1, %polly.loop_exit976.1.1 ], [ 0, %polly.loop_exit976.11132 ]
  %431 = add nuw nsw i64 %polly.indvar971.1.1, 32
  %432 = mul nuw nsw i64 %431, 480
  %433 = trunc i64 %431 to i32
  %broadcast.splatinsert1449 = insertelement <4 x i32> poison, i32 %433, i32 0
  %broadcast.splat1450 = shufflevector <4 x i32> %broadcast.splatinsert1449, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1441

vector.body1441:                                  ; preds = %vector.body1441, %polly.loop_header968.1.1
  %index1443 = phi i64 [ 0, %polly.loop_header968.1.1 ], [ %index.next1444, %vector.body1441 ]
  %vec.ind1447 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header968.1.1 ], [ %vec.ind.next1448, %vector.body1441 ]
  %434 = add nuw nsw <4 x i64> %vec.ind1447, <i64 32, i64 32, i64 32, i64 32>
  %435 = trunc <4 x i64> %434 to <4 x i32>
  %436 = mul <4 x i32> %broadcast.splat1450, %435
  %437 = add <4 x i32> %436, <i32 1, i32 1, i32 1, i32 1>
  %438 = urem <4 x i32> %437, <i32 80, i32 80, i32 80, i32 80>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %441 = extractelement <4 x i64> %434, i32 0
  %442 = shl i64 %441, 3
  %443 = add i64 %442, %432
  %444 = getelementptr i8, i8* %call1, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %440, <4 x double>* %445, align 8, !alias.scope !133, !noalias !138
  %index.next1444 = add i64 %index1443, 4
  %vec.ind.next1448 = add <4 x i64> %vec.ind1447, <i64 4, i64 4, i64 4, i64 4>
  %446 = icmp eq i64 %index.next1444, 28
  br i1 %446, label %polly.loop_exit976.1.1, label %vector.body1441, !llvm.loop !142

polly.loop_exit976.1.1:                           ; preds = %vector.body1441
  %polly.indvar_next972.1.1 = add nuw nsw i64 %polly.indvar971.1.1, 1
  %exitcond1098.1.1.not = icmp eq i64 %polly.indvar_next972.1.1, 32
  br i1 %exitcond1098.1.1.not, label %polly.loop_header968.2, label %polly.loop_header968.1.1

polly.loop_header968.2:                           ; preds = %polly.loop_exit976.1.1, %polly.loop_exit976.2
  %polly.indvar971.2 = phi i64 [ %polly.indvar_next972.2, %polly.loop_exit976.2 ], [ 0, %polly.loop_exit976.1.1 ]
  %447 = add nuw nsw i64 %polly.indvar971.2, 64
  %448 = mul nuw nsw i64 %447, 480
  %449 = trunc i64 %447 to i32
  %broadcast.splatinsert1463 = insertelement <4 x i32> poison, i32 %449, i32 0
  %broadcast.splat1464 = shufflevector <4 x i32> %broadcast.splatinsert1463, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1453

vector.body1453:                                  ; preds = %vector.body1453, %polly.loop_header968.2
  %index1455 = phi i64 [ 0, %polly.loop_header968.2 ], [ %index.next1456, %vector.body1453 ]
  %vec.ind1461 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header968.2 ], [ %vec.ind.next1462, %vector.body1453 ]
  %450 = mul <4 x i32> %vec.ind1461, %broadcast.splat1464
  %451 = add <4 x i32> %450, <i32 1, i32 1, i32 1, i32 1>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %455 = shl i64 %index1455, 3
  %456 = add i64 %455, %448
  %457 = getelementptr i8, i8* %call1, i64 %456
  %458 = bitcast i8* %457 to <4 x double>*
  store <4 x double> %454, <4 x double>* %458, align 8, !alias.scope !133, !noalias !138
  %index.next1456 = add i64 %index1455, 4
  %vec.ind.next1462 = add <4 x i32> %vec.ind1461, <i32 4, i32 4, i32 4, i32 4>
  %459 = icmp eq i64 %index.next1456, 32
  br i1 %459, label %polly.loop_exit976.2, label %vector.body1453, !llvm.loop !143

polly.loop_exit976.2:                             ; preds = %vector.body1453
  %polly.indvar_next972.2 = add nuw nsw i64 %polly.indvar971.2, 1
  %exitcond1098.2.not = icmp eq i64 %polly.indvar_next972.2, 16
  br i1 %exitcond1098.2.not, label %polly.loop_header968.1.2, label %polly.loop_header968.2

polly.loop_header968.1.2:                         ; preds = %polly.loop_exit976.2, %polly.loop_exit976.1.2
  %polly.indvar971.1.2 = phi i64 [ %polly.indvar_next972.1.2, %polly.loop_exit976.1.2 ], [ 0, %polly.loop_exit976.2 ]
  %460 = add nuw nsw i64 %polly.indvar971.1.2, 64
  %461 = mul nuw nsw i64 %460, 480
  %462 = trunc i64 %460 to i32
  %broadcast.splatinsert1475 = insertelement <4 x i32> poison, i32 %462, i32 0
  %broadcast.splat1476 = shufflevector <4 x i32> %broadcast.splatinsert1475, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1467

vector.body1467:                                  ; preds = %vector.body1467, %polly.loop_header968.1.2
  %index1469 = phi i64 [ 0, %polly.loop_header968.1.2 ], [ %index.next1470, %vector.body1467 ]
  %vec.ind1473 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header968.1.2 ], [ %vec.ind.next1474, %vector.body1467 ]
  %463 = add nuw nsw <4 x i64> %vec.ind1473, <i64 32, i64 32, i64 32, i64 32>
  %464 = trunc <4 x i64> %463 to <4 x i32>
  %465 = mul <4 x i32> %broadcast.splat1476, %464
  %466 = add <4 x i32> %465, <i32 1, i32 1, i32 1, i32 1>
  %467 = urem <4 x i32> %466, <i32 80, i32 80, i32 80, i32 80>
  %468 = sitofp <4 x i32> %467 to <4 x double>
  %469 = fmul fast <4 x double> %468, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %470 = extractelement <4 x i64> %463, i32 0
  %471 = shl i64 %470, 3
  %472 = add i64 %471, %461
  %473 = getelementptr i8, i8* %call1, i64 %472
  %474 = bitcast i8* %473 to <4 x double>*
  store <4 x double> %469, <4 x double>* %474, align 8, !alias.scope !133, !noalias !138
  %index.next1470 = add i64 %index1469, 4
  %vec.ind.next1474 = add <4 x i64> %vec.ind1473, <i64 4, i64 4, i64 4, i64 4>
  %475 = icmp eq i64 %index.next1470, 28
  br i1 %475, label %polly.loop_exit976.1.2, label %vector.body1467, !llvm.loop !144

polly.loop_exit976.1.2:                           ; preds = %vector.body1467
  %polly.indvar_next972.1.2 = add nuw nsw i64 %polly.indvar971.1.2, 1
  %exitcond1098.1.2.not = icmp eq i64 %polly.indvar_next972.1.2, 16
  br i1 %exitcond1098.1.2.not, label %init_array.exit, label %polly.loop_header968.1.2

polly.loop_header942.1:                           ; preds = %polly.loop_exit950, %polly.loop_exit950.1
  %polly.indvar945.1 = phi i64 [ %polly.indvar_next946.1, %polly.loop_exit950.1 ], [ 0, %polly.loop_exit950 ]
  %476 = mul nuw nsw i64 %polly.indvar945.1, 480
  %477 = trunc i64 %polly.indvar945.1 to i32
  %broadcast.splatinsert1345 = insertelement <4 x i32> poison, i32 %477, i32 0
  %broadcast.splat1346 = shufflevector <4 x i32> %broadcast.splatinsert1345, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1337

vector.body1337:                                  ; preds = %vector.body1337, %polly.loop_header942.1
  %index1339 = phi i64 [ 0, %polly.loop_header942.1 ], [ %index.next1340, %vector.body1337 ]
  %vec.ind1343 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header942.1 ], [ %vec.ind.next1344, %vector.body1337 ]
  %478 = add nuw nsw <4 x i64> %vec.ind1343, <i64 32, i64 32, i64 32, i64 32>
  %479 = trunc <4 x i64> %478 to <4 x i32>
  %480 = mul <4 x i32> %broadcast.splat1346, %479
  %481 = add <4 x i32> %480, <i32 2, i32 2, i32 2, i32 2>
  %482 = urem <4 x i32> %481, <i32 60, i32 60, i32 60, i32 60>
  %483 = sitofp <4 x i32> %482 to <4 x double>
  %484 = fmul fast <4 x double> %483, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %485 = extractelement <4 x i64> %478, i32 0
  %486 = shl i64 %485, 3
  %487 = add i64 %486, %476
  %488 = getelementptr i8, i8* %call2, i64 %487
  %489 = bitcast i8* %488 to <4 x double>*
  store <4 x double> %484, <4 x double>* %489, align 8, !alias.scope !134, !noalias !136
  %index.next1340 = add i64 %index1339, 4
  %vec.ind.next1344 = add <4 x i64> %vec.ind1343, <i64 4, i64 4, i64 4, i64 4>
  %490 = icmp eq i64 %index.next1340, 28
  br i1 %490, label %polly.loop_exit950.1, label %vector.body1337, !llvm.loop !145

polly.loop_exit950.1:                             ; preds = %vector.body1337
  %polly.indvar_next946.1 = add nuw nsw i64 %polly.indvar945.1, 1
  %exitcond1104.1.not = icmp eq i64 %polly.indvar_next946.1, 32
  br i1 %exitcond1104.1.not, label %polly.loop_header942.11135, label %polly.loop_header942.1

polly.loop_header942.11135:                       ; preds = %polly.loop_exit950.1, %polly.loop_exit950.11146
  %polly.indvar945.11134 = phi i64 [ %polly.indvar_next946.11144, %polly.loop_exit950.11146 ], [ 0, %polly.loop_exit950.1 ]
  %491 = add nuw nsw i64 %polly.indvar945.11134, 32
  %492 = mul nuw nsw i64 %491, 480
  %493 = trunc i64 %491 to i32
  %broadcast.splatinsert1359 = insertelement <4 x i32> poison, i32 %493, i32 0
  %broadcast.splat1360 = shufflevector <4 x i32> %broadcast.splatinsert1359, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1349

vector.body1349:                                  ; preds = %vector.body1349, %polly.loop_header942.11135
  %index1351 = phi i64 [ 0, %polly.loop_header942.11135 ], [ %index.next1352, %vector.body1349 ]
  %vec.ind1357 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header942.11135 ], [ %vec.ind.next1358, %vector.body1349 ]
  %494 = mul <4 x i32> %vec.ind1357, %broadcast.splat1360
  %495 = add <4 x i32> %494, <i32 2, i32 2, i32 2, i32 2>
  %496 = urem <4 x i32> %495, <i32 60, i32 60, i32 60, i32 60>
  %497 = sitofp <4 x i32> %496 to <4 x double>
  %498 = fmul fast <4 x double> %497, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %499 = shl i64 %index1351, 3
  %500 = add i64 %499, %492
  %501 = getelementptr i8, i8* %call2, i64 %500
  %502 = bitcast i8* %501 to <4 x double>*
  store <4 x double> %498, <4 x double>* %502, align 8, !alias.scope !134, !noalias !136
  %index.next1352 = add i64 %index1351, 4
  %vec.ind.next1358 = add <4 x i32> %vec.ind1357, <i32 4, i32 4, i32 4, i32 4>
  %503 = icmp eq i64 %index.next1352, 32
  br i1 %503, label %polly.loop_exit950.11146, label %vector.body1349, !llvm.loop !146

polly.loop_exit950.11146:                         ; preds = %vector.body1349
  %polly.indvar_next946.11144 = add nuw nsw i64 %polly.indvar945.11134, 1
  %exitcond1104.11145.not = icmp eq i64 %polly.indvar_next946.11144, 32
  br i1 %exitcond1104.11145.not, label %polly.loop_header942.1.1, label %polly.loop_header942.11135

polly.loop_header942.1.1:                         ; preds = %polly.loop_exit950.11146, %polly.loop_exit950.1.1
  %polly.indvar945.1.1 = phi i64 [ %polly.indvar_next946.1.1, %polly.loop_exit950.1.1 ], [ 0, %polly.loop_exit950.11146 ]
  %504 = add nuw nsw i64 %polly.indvar945.1.1, 32
  %505 = mul nuw nsw i64 %504, 480
  %506 = trunc i64 %504 to i32
  %broadcast.splatinsert1371 = insertelement <4 x i32> poison, i32 %506, i32 0
  %broadcast.splat1372 = shufflevector <4 x i32> %broadcast.splatinsert1371, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1363

vector.body1363:                                  ; preds = %vector.body1363, %polly.loop_header942.1.1
  %index1365 = phi i64 [ 0, %polly.loop_header942.1.1 ], [ %index.next1366, %vector.body1363 ]
  %vec.ind1369 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header942.1.1 ], [ %vec.ind.next1370, %vector.body1363 ]
  %507 = add nuw nsw <4 x i64> %vec.ind1369, <i64 32, i64 32, i64 32, i64 32>
  %508 = trunc <4 x i64> %507 to <4 x i32>
  %509 = mul <4 x i32> %broadcast.splat1372, %508
  %510 = add <4 x i32> %509, <i32 2, i32 2, i32 2, i32 2>
  %511 = urem <4 x i32> %510, <i32 60, i32 60, i32 60, i32 60>
  %512 = sitofp <4 x i32> %511 to <4 x double>
  %513 = fmul fast <4 x double> %512, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %514 = extractelement <4 x i64> %507, i32 0
  %515 = shl i64 %514, 3
  %516 = add i64 %515, %505
  %517 = getelementptr i8, i8* %call2, i64 %516
  %518 = bitcast i8* %517 to <4 x double>*
  store <4 x double> %513, <4 x double>* %518, align 8, !alias.scope !134, !noalias !136
  %index.next1366 = add i64 %index1365, 4
  %vec.ind.next1370 = add <4 x i64> %vec.ind1369, <i64 4, i64 4, i64 4, i64 4>
  %519 = icmp eq i64 %index.next1366, 28
  br i1 %519, label %polly.loop_exit950.1.1, label %vector.body1363, !llvm.loop !147

polly.loop_exit950.1.1:                           ; preds = %vector.body1363
  %polly.indvar_next946.1.1 = add nuw nsw i64 %polly.indvar945.1.1, 1
  %exitcond1104.1.1.not = icmp eq i64 %polly.indvar_next946.1.1, 32
  br i1 %exitcond1104.1.1.not, label %polly.loop_header942.2, label %polly.loop_header942.1.1

polly.loop_header942.2:                           ; preds = %polly.loop_exit950.1.1, %polly.loop_exit950.2
  %polly.indvar945.2 = phi i64 [ %polly.indvar_next946.2, %polly.loop_exit950.2 ], [ 0, %polly.loop_exit950.1.1 ]
  %520 = add nuw nsw i64 %polly.indvar945.2, 64
  %521 = mul nuw nsw i64 %520, 480
  %522 = trunc i64 %520 to i32
  %broadcast.splatinsert1385 = insertelement <4 x i32> poison, i32 %522, i32 0
  %broadcast.splat1386 = shufflevector <4 x i32> %broadcast.splatinsert1385, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1375

vector.body1375:                                  ; preds = %vector.body1375, %polly.loop_header942.2
  %index1377 = phi i64 [ 0, %polly.loop_header942.2 ], [ %index.next1378, %vector.body1375 ]
  %vec.ind1383 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header942.2 ], [ %vec.ind.next1384, %vector.body1375 ]
  %523 = mul <4 x i32> %vec.ind1383, %broadcast.splat1386
  %524 = add <4 x i32> %523, <i32 2, i32 2, i32 2, i32 2>
  %525 = urem <4 x i32> %524, <i32 60, i32 60, i32 60, i32 60>
  %526 = sitofp <4 x i32> %525 to <4 x double>
  %527 = fmul fast <4 x double> %526, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %528 = shl i64 %index1377, 3
  %529 = add i64 %528, %521
  %530 = getelementptr i8, i8* %call2, i64 %529
  %531 = bitcast i8* %530 to <4 x double>*
  store <4 x double> %527, <4 x double>* %531, align 8, !alias.scope !134, !noalias !136
  %index.next1378 = add i64 %index1377, 4
  %vec.ind.next1384 = add <4 x i32> %vec.ind1383, <i32 4, i32 4, i32 4, i32 4>
  %532 = icmp eq i64 %index.next1378, 32
  br i1 %532, label %polly.loop_exit950.2, label %vector.body1375, !llvm.loop !148

polly.loop_exit950.2:                             ; preds = %vector.body1375
  %polly.indvar_next946.2 = add nuw nsw i64 %polly.indvar945.2, 1
  %exitcond1104.2.not = icmp eq i64 %polly.indvar_next946.2, 16
  br i1 %exitcond1104.2.not, label %polly.loop_header942.1.2, label %polly.loop_header942.2

polly.loop_header942.1.2:                         ; preds = %polly.loop_exit950.2, %polly.loop_exit950.1.2
  %polly.indvar945.1.2 = phi i64 [ %polly.indvar_next946.1.2, %polly.loop_exit950.1.2 ], [ 0, %polly.loop_exit950.2 ]
  %533 = add nuw nsw i64 %polly.indvar945.1.2, 64
  %534 = mul nuw nsw i64 %533, 480
  %535 = trunc i64 %533 to i32
  %broadcast.splatinsert1397 = insertelement <4 x i32> poison, i32 %535, i32 0
  %broadcast.splat1398 = shufflevector <4 x i32> %broadcast.splatinsert1397, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1389

vector.body1389:                                  ; preds = %vector.body1389, %polly.loop_header942.1.2
  %index1391 = phi i64 [ 0, %polly.loop_header942.1.2 ], [ %index.next1392, %vector.body1389 ]
  %vec.ind1395 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header942.1.2 ], [ %vec.ind.next1396, %vector.body1389 ]
  %536 = add nuw nsw <4 x i64> %vec.ind1395, <i64 32, i64 32, i64 32, i64 32>
  %537 = trunc <4 x i64> %536 to <4 x i32>
  %538 = mul <4 x i32> %broadcast.splat1398, %537
  %539 = add <4 x i32> %538, <i32 2, i32 2, i32 2, i32 2>
  %540 = urem <4 x i32> %539, <i32 60, i32 60, i32 60, i32 60>
  %541 = sitofp <4 x i32> %540 to <4 x double>
  %542 = fmul fast <4 x double> %541, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %543 = extractelement <4 x i64> %536, i32 0
  %544 = shl i64 %543, 3
  %545 = add i64 %544, %534
  %546 = getelementptr i8, i8* %call2, i64 %545
  %547 = bitcast i8* %546 to <4 x double>*
  store <4 x double> %542, <4 x double>* %547, align 8, !alias.scope !134, !noalias !136
  %index.next1392 = add i64 %index1391, 4
  %vec.ind.next1396 = add <4 x i64> %vec.ind1395, <i64 4, i64 4, i64 4, i64 4>
  %548 = icmp eq i64 %index.next1392, 28
  br i1 %548, label %polly.loop_exit950.1.2, label %vector.body1389, !llvm.loop !149

polly.loop_exit950.1.2:                           ; preds = %vector.body1389
  %polly.indvar_next946.1.2 = add nuw nsw i64 %polly.indvar945.1.2, 1
  %exitcond1104.1.2.not = icmp eq i64 %polly.indvar_next946.1.2, 16
  br i1 %exitcond1104.1.2.not, label %polly.loop_header968, label %polly.loop_header942.1.2

polly.loop_header915.1:                           ; preds = %polly.loop_exit923, %polly.loop_exit923.1
  %polly.indvar918.1 = phi i64 [ %polly.indvar_next919.1, %polly.loop_exit923.1 ], [ 0, %polly.loop_exit923 ]
  %549 = mul nuw nsw i64 %polly.indvar918.1, 640
  %550 = trunc i64 %polly.indvar918.1 to i32
  %broadcast.splatinsert1231 = insertelement <4 x i32> poison, i32 %550, i32 0
  %broadcast.splat1232 = shufflevector <4 x i32> %broadcast.splatinsert1231, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %polly.loop_header915.1
  %index1225 = phi i64 [ 0, %polly.loop_header915.1 ], [ %index.next1226, %vector.body1223 ]
  %vec.ind1229 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header915.1 ], [ %vec.ind.next1230, %vector.body1223 ]
  %551 = add nuw nsw <4 x i64> %vec.ind1229, <i64 32, i64 32, i64 32, i64 32>
  %552 = trunc <4 x i64> %551 to <4 x i32>
  %553 = mul <4 x i32> %broadcast.splat1232, %552
  %554 = add <4 x i32> %553, <i32 3, i32 3, i32 3, i32 3>
  %555 = urem <4 x i32> %554, <i32 80, i32 80, i32 80, i32 80>
  %556 = sitofp <4 x i32> %555 to <4 x double>
  %557 = fmul fast <4 x double> %556, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %558 = extractelement <4 x i64> %551, i32 0
  %559 = shl i64 %558, 3
  %560 = add nuw nsw i64 %559, %549
  %561 = getelementptr i8, i8* %call, i64 %560
  %562 = bitcast i8* %561 to <4 x double>*
  store <4 x double> %557, <4 x double>* %562, align 8, !alias.scope !130, !noalias !132
  %index.next1226 = add i64 %index1225, 4
  %vec.ind.next1230 = add <4 x i64> %vec.ind1229, <i64 4, i64 4, i64 4, i64 4>
  %563 = icmp eq i64 %index.next1226, 32
  br i1 %563, label %polly.loop_exit923.1, label %vector.body1223, !llvm.loop !150

polly.loop_exit923.1:                             ; preds = %vector.body1223
  %polly.indvar_next919.1 = add nuw nsw i64 %polly.indvar918.1, 1
  %exitcond1113.1.not = icmp eq i64 %polly.indvar_next919.1, 32
  br i1 %exitcond1113.1.not, label %polly.loop_header915.2, label %polly.loop_header915.1

polly.loop_header915.2:                           ; preds = %polly.loop_exit923.1, %polly.loop_exit923.2
  %polly.indvar918.2 = phi i64 [ %polly.indvar_next919.2, %polly.loop_exit923.2 ], [ 0, %polly.loop_exit923.1 ]
  %564 = mul nuw nsw i64 %polly.indvar918.2, 640
  %565 = trunc i64 %polly.indvar918.2 to i32
  %broadcast.splatinsert1243 = insertelement <4 x i32> poison, i32 %565, i32 0
  %broadcast.splat1244 = shufflevector <4 x i32> %broadcast.splatinsert1243, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %polly.loop_header915.2
  %index1237 = phi i64 [ 0, %polly.loop_header915.2 ], [ %index.next1238, %vector.body1235 ]
  %vec.ind1241 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header915.2 ], [ %vec.ind.next1242, %vector.body1235 ]
  %566 = add nuw nsw <4 x i64> %vec.ind1241, <i64 64, i64 64, i64 64, i64 64>
  %567 = trunc <4 x i64> %566 to <4 x i32>
  %568 = mul <4 x i32> %broadcast.splat1244, %567
  %569 = add <4 x i32> %568, <i32 3, i32 3, i32 3, i32 3>
  %570 = urem <4 x i32> %569, <i32 80, i32 80, i32 80, i32 80>
  %571 = sitofp <4 x i32> %570 to <4 x double>
  %572 = fmul fast <4 x double> %571, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %573 = extractelement <4 x i64> %566, i32 0
  %574 = shl i64 %573, 3
  %575 = add nuw nsw i64 %574, %564
  %576 = getelementptr i8, i8* %call, i64 %575
  %577 = bitcast i8* %576 to <4 x double>*
  store <4 x double> %572, <4 x double>* %577, align 8, !alias.scope !130, !noalias !132
  %index.next1238 = add i64 %index1237, 4
  %vec.ind.next1242 = add <4 x i64> %vec.ind1241, <i64 4, i64 4, i64 4, i64 4>
  %578 = icmp eq i64 %index.next1238, 16
  br i1 %578, label %polly.loop_exit923.2, label %vector.body1235, !llvm.loop !151

polly.loop_exit923.2:                             ; preds = %vector.body1235
  %polly.indvar_next919.2 = add nuw nsw i64 %polly.indvar918.2, 1
  %exitcond1113.2.not = icmp eq i64 %polly.indvar_next919.2, 32
  br i1 %exitcond1113.2.not, label %polly.loop_header915.11149, label %polly.loop_header915.2

polly.loop_header915.11149:                       ; preds = %polly.loop_exit923.2, %polly.loop_exit923.11160
  %polly.indvar918.11148 = phi i64 [ %polly.indvar_next919.11158, %polly.loop_exit923.11160 ], [ 0, %polly.loop_exit923.2 ]
  %579 = add nuw nsw i64 %polly.indvar918.11148, 32
  %580 = mul nuw nsw i64 %579, 640
  %581 = trunc i64 %579 to i32
  %broadcast.splatinsert1257 = insertelement <4 x i32> poison, i32 %581, i32 0
  %broadcast.splat1258 = shufflevector <4 x i32> %broadcast.splatinsert1257, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %polly.loop_header915.11149
  %index1249 = phi i64 [ 0, %polly.loop_header915.11149 ], [ %index.next1250, %vector.body1247 ]
  %vec.ind1255 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header915.11149 ], [ %vec.ind.next1256, %vector.body1247 ]
  %582 = mul <4 x i32> %vec.ind1255, %broadcast.splat1258
  %583 = add <4 x i32> %582, <i32 3, i32 3, i32 3, i32 3>
  %584 = urem <4 x i32> %583, <i32 80, i32 80, i32 80, i32 80>
  %585 = sitofp <4 x i32> %584 to <4 x double>
  %586 = fmul fast <4 x double> %585, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %587 = shl i64 %index1249, 3
  %588 = add nuw nsw i64 %587, %580
  %589 = getelementptr i8, i8* %call, i64 %588
  %590 = bitcast i8* %589 to <4 x double>*
  store <4 x double> %586, <4 x double>* %590, align 8, !alias.scope !130, !noalias !132
  %index.next1250 = add i64 %index1249, 4
  %vec.ind.next1256 = add <4 x i32> %vec.ind1255, <i32 4, i32 4, i32 4, i32 4>
  %591 = icmp eq i64 %index.next1250, 32
  br i1 %591, label %polly.loop_exit923.11160, label %vector.body1247, !llvm.loop !152

polly.loop_exit923.11160:                         ; preds = %vector.body1247
  %polly.indvar_next919.11158 = add nuw nsw i64 %polly.indvar918.11148, 1
  %exitcond1113.11159.not = icmp eq i64 %polly.indvar_next919.11158, 32
  br i1 %exitcond1113.11159.not, label %polly.loop_header915.1.1, label %polly.loop_header915.11149

polly.loop_header915.1.1:                         ; preds = %polly.loop_exit923.11160, %polly.loop_exit923.1.1
  %polly.indvar918.1.1 = phi i64 [ %polly.indvar_next919.1.1, %polly.loop_exit923.1.1 ], [ 0, %polly.loop_exit923.11160 ]
  %592 = add nuw nsw i64 %polly.indvar918.1.1, 32
  %593 = mul nuw nsw i64 %592, 640
  %594 = trunc i64 %592 to i32
  %broadcast.splatinsert1269 = insertelement <4 x i32> poison, i32 %594, i32 0
  %broadcast.splat1270 = shufflevector <4 x i32> %broadcast.splatinsert1269, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %polly.loop_header915.1.1
  %index1263 = phi i64 [ 0, %polly.loop_header915.1.1 ], [ %index.next1264, %vector.body1261 ]
  %vec.ind1267 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header915.1.1 ], [ %vec.ind.next1268, %vector.body1261 ]
  %595 = add nuw nsw <4 x i64> %vec.ind1267, <i64 32, i64 32, i64 32, i64 32>
  %596 = trunc <4 x i64> %595 to <4 x i32>
  %597 = mul <4 x i32> %broadcast.splat1270, %596
  %598 = add <4 x i32> %597, <i32 3, i32 3, i32 3, i32 3>
  %599 = urem <4 x i32> %598, <i32 80, i32 80, i32 80, i32 80>
  %600 = sitofp <4 x i32> %599 to <4 x double>
  %601 = fmul fast <4 x double> %600, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %602 = extractelement <4 x i64> %595, i32 0
  %603 = shl i64 %602, 3
  %604 = add nuw nsw i64 %603, %593
  %605 = getelementptr i8, i8* %call, i64 %604
  %606 = bitcast i8* %605 to <4 x double>*
  store <4 x double> %601, <4 x double>* %606, align 8, !alias.scope !130, !noalias !132
  %index.next1264 = add i64 %index1263, 4
  %vec.ind.next1268 = add <4 x i64> %vec.ind1267, <i64 4, i64 4, i64 4, i64 4>
  %607 = icmp eq i64 %index.next1264, 32
  br i1 %607, label %polly.loop_exit923.1.1, label %vector.body1261, !llvm.loop !153

polly.loop_exit923.1.1:                           ; preds = %vector.body1261
  %polly.indvar_next919.1.1 = add nuw nsw i64 %polly.indvar918.1.1, 1
  %exitcond1113.1.1.not = icmp eq i64 %polly.indvar_next919.1.1, 32
  br i1 %exitcond1113.1.1.not, label %polly.loop_header915.2.1, label %polly.loop_header915.1.1

polly.loop_header915.2.1:                         ; preds = %polly.loop_exit923.1.1, %polly.loop_exit923.2.1
  %polly.indvar918.2.1 = phi i64 [ %polly.indvar_next919.2.1, %polly.loop_exit923.2.1 ], [ 0, %polly.loop_exit923.1.1 ]
  %608 = add nuw nsw i64 %polly.indvar918.2.1, 32
  %609 = mul nuw nsw i64 %608, 640
  %610 = trunc i64 %608 to i32
  %broadcast.splatinsert1281 = insertelement <4 x i32> poison, i32 %610, i32 0
  %broadcast.splat1282 = shufflevector <4 x i32> %broadcast.splatinsert1281, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %polly.loop_header915.2.1
  %index1275 = phi i64 [ 0, %polly.loop_header915.2.1 ], [ %index.next1276, %vector.body1273 ]
  %vec.ind1279 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header915.2.1 ], [ %vec.ind.next1280, %vector.body1273 ]
  %611 = add nuw nsw <4 x i64> %vec.ind1279, <i64 64, i64 64, i64 64, i64 64>
  %612 = trunc <4 x i64> %611 to <4 x i32>
  %613 = mul <4 x i32> %broadcast.splat1282, %612
  %614 = add <4 x i32> %613, <i32 3, i32 3, i32 3, i32 3>
  %615 = urem <4 x i32> %614, <i32 80, i32 80, i32 80, i32 80>
  %616 = sitofp <4 x i32> %615 to <4 x double>
  %617 = fmul fast <4 x double> %616, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %618 = extractelement <4 x i64> %611, i32 0
  %619 = shl i64 %618, 3
  %620 = add nuw nsw i64 %619, %609
  %621 = getelementptr i8, i8* %call, i64 %620
  %622 = bitcast i8* %621 to <4 x double>*
  store <4 x double> %617, <4 x double>* %622, align 8, !alias.scope !130, !noalias !132
  %index.next1276 = add i64 %index1275, 4
  %vec.ind.next1280 = add <4 x i64> %vec.ind1279, <i64 4, i64 4, i64 4, i64 4>
  %623 = icmp eq i64 %index.next1276, 16
  br i1 %623, label %polly.loop_exit923.2.1, label %vector.body1273, !llvm.loop !154

polly.loop_exit923.2.1:                           ; preds = %vector.body1273
  %polly.indvar_next919.2.1 = add nuw nsw i64 %polly.indvar918.2.1, 1
  %exitcond1113.2.1.not = icmp eq i64 %polly.indvar_next919.2.1, 32
  br i1 %exitcond1113.2.1.not, label %polly.loop_header915.21163, label %polly.loop_header915.2.1

polly.loop_header915.21163:                       ; preds = %polly.loop_exit923.2.1, %polly.loop_exit923.21174
  %polly.indvar918.21162 = phi i64 [ %polly.indvar_next919.21172, %polly.loop_exit923.21174 ], [ 0, %polly.loop_exit923.2.1 ]
  %624 = add nuw nsw i64 %polly.indvar918.21162, 64
  %625 = mul nuw nsw i64 %624, 640
  %626 = trunc i64 %624 to i32
  %broadcast.splatinsert1295 = insertelement <4 x i32> poison, i32 %626, i32 0
  %broadcast.splat1296 = shufflevector <4 x i32> %broadcast.splatinsert1295, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.body1285, %polly.loop_header915.21163
  %index1287 = phi i64 [ 0, %polly.loop_header915.21163 ], [ %index.next1288, %vector.body1285 ]
  %vec.ind1293 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header915.21163 ], [ %vec.ind.next1294, %vector.body1285 ]
  %627 = mul <4 x i32> %vec.ind1293, %broadcast.splat1296
  %628 = add <4 x i32> %627, <i32 3, i32 3, i32 3, i32 3>
  %629 = urem <4 x i32> %628, <i32 80, i32 80, i32 80, i32 80>
  %630 = sitofp <4 x i32> %629 to <4 x double>
  %631 = fmul fast <4 x double> %630, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %632 = shl i64 %index1287, 3
  %633 = add nuw nsw i64 %632, %625
  %634 = getelementptr i8, i8* %call, i64 %633
  %635 = bitcast i8* %634 to <4 x double>*
  store <4 x double> %631, <4 x double>* %635, align 8, !alias.scope !130, !noalias !132
  %index.next1288 = add i64 %index1287, 4
  %vec.ind.next1294 = add <4 x i32> %vec.ind1293, <i32 4, i32 4, i32 4, i32 4>
  %636 = icmp eq i64 %index.next1288, 32
  br i1 %636, label %polly.loop_exit923.21174, label %vector.body1285, !llvm.loop !155

polly.loop_exit923.21174:                         ; preds = %vector.body1285
  %polly.indvar_next919.21172 = add nuw nsw i64 %polly.indvar918.21162, 1
  %exitcond1113.21173.not = icmp eq i64 %polly.indvar_next919.21172, 16
  br i1 %exitcond1113.21173.not, label %polly.loop_header915.1.2, label %polly.loop_header915.21163

polly.loop_header915.1.2:                         ; preds = %polly.loop_exit923.21174, %polly.loop_exit923.1.2
  %polly.indvar918.1.2 = phi i64 [ %polly.indvar_next919.1.2, %polly.loop_exit923.1.2 ], [ 0, %polly.loop_exit923.21174 ]
  %637 = add nuw nsw i64 %polly.indvar918.1.2, 64
  %638 = mul nuw nsw i64 %637, 640
  %639 = trunc i64 %637 to i32
  %broadcast.splatinsert1307 = insertelement <4 x i32> poison, i32 %639, i32 0
  %broadcast.splat1308 = shufflevector <4 x i32> %broadcast.splatinsert1307, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %polly.loop_header915.1.2
  %index1301 = phi i64 [ 0, %polly.loop_header915.1.2 ], [ %index.next1302, %vector.body1299 ]
  %vec.ind1305 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header915.1.2 ], [ %vec.ind.next1306, %vector.body1299 ]
  %640 = add nuw nsw <4 x i64> %vec.ind1305, <i64 32, i64 32, i64 32, i64 32>
  %641 = trunc <4 x i64> %640 to <4 x i32>
  %642 = mul <4 x i32> %broadcast.splat1308, %641
  %643 = add <4 x i32> %642, <i32 3, i32 3, i32 3, i32 3>
  %644 = urem <4 x i32> %643, <i32 80, i32 80, i32 80, i32 80>
  %645 = sitofp <4 x i32> %644 to <4 x double>
  %646 = fmul fast <4 x double> %645, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %647 = extractelement <4 x i64> %640, i32 0
  %648 = shl i64 %647, 3
  %649 = add nuw nsw i64 %648, %638
  %650 = getelementptr i8, i8* %call, i64 %649
  %651 = bitcast i8* %650 to <4 x double>*
  store <4 x double> %646, <4 x double>* %651, align 8, !alias.scope !130, !noalias !132
  %index.next1302 = add i64 %index1301, 4
  %vec.ind.next1306 = add <4 x i64> %vec.ind1305, <i64 4, i64 4, i64 4, i64 4>
  %652 = icmp eq i64 %index.next1302, 32
  br i1 %652, label %polly.loop_exit923.1.2, label %vector.body1299, !llvm.loop !156

polly.loop_exit923.1.2:                           ; preds = %vector.body1299
  %polly.indvar_next919.1.2 = add nuw nsw i64 %polly.indvar918.1.2, 1
  %exitcond1113.1.2.not = icmp eq i64 %polly.indvar_next919.1.2, 16
  br i1 %exitcond1113.1.2.not, label %polly.loop_header915.2.2, label %polly.loop_header915.1.2

polly.loop_header915.2.2:                         ; preds = %polly.loop_exit923.1.2, %polly.loop_exit923.2.2
  %polly.indvar918.2.2 = phi i64 [ %polly.indvar_next919.2.2, %polly.loop_exit923.2.2 ], [ 0, %polly.loop_exit923.1.2 ]
  %653 = add nuw nsw i64 %polly.indvar918.2.2, 64
  %654 = mul nuw nsw i64 %653, 640
  %655 = trunc i64 %653 to i32
  %broadcast.splatinsert1319 = insertelement <4 x i32> poison, i32 %655, i32 0
  %broadcast.splat1320 = shufflevector <4 x i32> %broadcast.splatinsert1319, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %polly.loop_header915.2.2
  %index1313 = phi i64 [ 0, %polly.loop_header915.2.2 ], [ %index.next1314, %vector.body1311 ]
  %vec.ind1317 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header915.2.2 ], [ %vec.ind.next1318, %vector.body1311 ]
  %656 = add nuw nsw <4 x i64> %vec.ind1317, <i64 64, i64 64, i64 64, i64 64>
  %657 = trunc <4 x i64> %656 to <4 x i32>
  %658 = mul <4 x i32> %broadcast.splat1320, %657
  %659 = add <4 x i32> %658, <i32 3, i32 3, i32 3, i32 3>
  %660 = urem <4 x i32> %659, <i32 80, i32 80, i32 80, i32 80>
  %661 = sitofp <4 x i32> %660 to <4 x double>
  %662 = fmul fast <4 x double> %661, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %663 = extractelement <4 x i64> %656, i32 0
  %664 = shl i64 %663, 3
  %665 = add nuw nsw i64 %664, %654
  %666 = getelementptr i8, i8* %call, i64 %665
  %667 = bitcast i8* %666 to <4 x double>*
  store <4 x double> %662, <4 x double>* %667, align 8, !alias.scope !130, !noalias !132
  %index.next1314 = add i64 %index1313, 4
  %vec.ind.next1318 = add <4 x i64> %vec.ind1317, <i64 4, i64 4, i64 4, i64 4>
  %668 = icmp eq i64 %index.next1314, 16
  br i1 %668, label %polly.loop_exit923.2.2, label %vector.body1311, !llvm.loop !157

polly.loop_exit923.2.2:                           ; preds = %vector.body1311
  %polly.indvar_next919.2.2 = add nuw nsw i64 %polly.indvar918.2.2, 1
  %exitcond1113.2.2.not = icmp eq i64 %polly.indvar_next919.2.2, 16
  br i1 %exitcond1113.2.2.not, label %polly.loop_header942, label %polly.loop_header915.2.2
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
!22 = distinct !{!"B"}
!23 = distinct !{!23, !12, !24, !25, !26, !27, !30}
!24 = !{!"llvm.loop.disable_nonforced"}
!25 = !{!"llvm.loop.id", !"k"}
!26 = !{!"llvm.loop.tile.size", i32 8}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 128}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !24, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.loop.interchange.followup_interchanged", !43}
!43 = distinct !{!43, !12, !24, !41, !44, !45, !46}
!44 = !{!"llvm.data.pack.enable", i1 true}
!45 = !{!"llvm.data.pack.array", !21}
!46 = !{!"llvm.data.pack.allocate", !"malloc"}
!47 = distinct !{!47, !12, !24, !48, !49, !50, !51, !52, !61}
!48 = !{!"llvm.loop.id", !"i"}
!49 = !{!"llvm.loop.tile.enable", i1 true}
!50 = !{!"llvm.loop.tile.depth", i32 3}
!51 = !{!"llvm.loop.tile.size", i32 64}
!52 = !{!"llvm.loop.tile.followup_floor", !53}
!53 = distinct !{!53, !12, !24, !54, !55, !56, !57, !58}
!54 = !{!"llvm.loop.id", !"i1"}
!55 = !{!"llvm.loop.interchange.enable", i1 true}
!56 = !{!"llvm.loop.interchange.depth", i32 5}
!57 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!58 = !{!"llvm.loop.interchange.followup_interchanged", !59}
!59 = distinct !{!59, !12, !24, !54, !44, !60, !46}
!60 = !{!"llvm.data.pack.array", !22}
!61 = !{!"llvm.loop.tile.followup_tile", !62}
!62 = distinct !{!62, !12, !24, !63}
!63 = !{!"llvm.loop.id", !"i2"}
!64 = distinct !{!64, !12, !13}
!65 = distinct !{!65, !12, !13}
!66 = distinct !{!66, !12, !13}
!67 = distinct !{!67, !12, !13}
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !4, i64 0}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76, !77, !78}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !73, !"polly.alias.scope.Packed_MemRef_call1"}
!78 = distinct !{!78, !73, !"polly.alias.scope.Packed_MemRef_call2"}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !81, !13}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = !{!72, !75, !77, !78}
!83 = !{!72, !76, !77, !78}
!84 = !{!85}
!85 = distinct !{!85, !86}
!86 = distinct !{!86, !"LVerDomain"}
!87 = !{!72, !73, !"polly.alias.scope.MemRef_call", !88}
!88 = distinct !{!88, !86}
!89 = !{!75, !76, !77, !78, !85}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !81, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!92, !93, !"polly.alias.scope.MemRef_call", !107}
!107 = distinct !{!107, !105}
!108 = !{!95, !96, !97, !98, !104}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !112, !"polly.alias.scope.MemRef_call"}
!112 = distinct !{!112, !"polly.alias.scope.domain"}
!113 = !{!114, !115, !116, !117}
!114 = distinct !{!114, !112, !"polly.alias.scope.MemRef_call1"}
!115 = distinct !{!115, !112, !"polly.alias.scope.MemRef_call2"}
!116 = distinct !{!116, !112, !"polly.alias.scope.Packed_MemRef_call1"}
!117 = distinct !{!117, !112, !"polly.alias.scope.Packed_MemRef_call2"}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !81, !13}
!120 = !{!111, !114, !116, !117}
!121 = !{!111, !115, !116, !117}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!111, !112, !"polly.alias.scope.MemRef_call", !126}
!126 = distinct !{!126, !124}
!127 = !{!114, !115, !116, !117, !123}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !131, !"polly.alias.scope.MemRef_call"}
!131 = distinct !{!131, !"polly.alias.scope.domain"}
!132 = !{!133, !134}
!133 = distinct !{!133, !131, !"polly.alias.scope.MemRef_call1"}
!134 = distinct !{!134, !131, !"polly.alias.scope.MemRef_call2"}
!135 = distinct !{!135, !13}
!136 = !{!133, !130}
!137 = distinct !{!137, !13}
!138 = !{!134, !130}
!139 = distinct !{!139, !13}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
!146 = distinct !{!146, !13}
!147 = distinct !{!147, !13}
!148 = distinct !{!148, !13}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !13}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !13}
!154 = distinct !{!154, !13}
!155 = distinct !{!155, !13}
!156 = distinct !{!156, !13}
!157 = distinct !{!157, !13}
