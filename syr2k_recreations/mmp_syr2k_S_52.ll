; ModuleID = 'syr2k_recreations//mmp_syr2k_S_52.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_52.c"
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
  %call846 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1698 = bitcast i8* %call1 to double*
  %polly.access.call1707 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2708 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1707, %call2
  %polly.access.call2727 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2727, %call1
  %2 = or i1 %0, %1
  %polly.access.call747 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call747, %call2
  %4 = icmp ule i8* %polly.access.call2727, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call747, %call1
  %8 = icmp ule i8* %polly.access.call1707, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header832, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1183 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1182 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1181 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1180 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1180, %scevgep1183
  %bound1 = icmp ult i8* %scevgep1182, %scevgep1181
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
  br i1 %exitcond18.not.i, label %vector.ph1187, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1187:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1194 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1195 = shufflevector <4 x i64> %broadcast.splatinsert1194, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %vector.ph1187
  %index1188 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1189, %vector.body1186 ]
  %vec.ind1192 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1187 ], [ %vec.ind.next1193, %vector.body1186 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1192, %broadcast.splat1195
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call846, i64 %indvars.iv7.i, i64 %index1188
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1189 = add i64 %index1188, 4
  %vec.ind.next1193 = add <4 x i64> %vec.ind1192, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1189, 80
  br i1 %40, label %for.inc41.i, label %vector.body1186, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1186
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1187, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit893.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start494, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1599, label %vector.ph1469

vector.ph1469:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1468

vector.body1468:                                  ; preds = %vector.body1468, %vector.ph1469
  %index1470 = phi i64 [ 0, %vector.ph1469 ], [ %index.next1471, %vector.body1468 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call846, i64 %indvars.iv21.i, i64 %index1470
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1471 = add i64 %index1470, 4
  %46 = icmp eq i64 %index.next1471, %n.vec
  br i1 %46, label %middle.block1466, label %vector.body1468, !llvm.loop !18

middle.block1466:                                 ; preds = %vector.body1468
  %cmp.n1473 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1473, label %for.inc6.i, label %for.body3.i46.preheader1599

for.body3.i46.preheader1599:                      ; preds = %for.body3.i46.preheader, %middle.block1466
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1466 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1599, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1599 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call846, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1466, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call846, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting495
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start292, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1507 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1507, label %for.body3.i60.preheader1597, label %vector.ph1508

vector.ph1508:                                    ; preds = %for.body3.i60.preheader
  %n.vec1510 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1506

vector.body1506:                                  ; preds = %vector.body1506, %vector.ph1508
  %index1511 = phi i64 [ 0, %vector.ph1508 ], [ %index.next1512, %vector.body1506 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call846, i64 %indvars.iv21.i52, i64 %index1511
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1515 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1515, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1512 = add i64 %index1511, 4
  %57 = icmp eq i64 %index.next1512, %n.vec1510
  br i1 %57, label %middle.block1504, label %vector.body1506, !llvm.loop !56

middle.block1504:                                 ; preds = %vector.body1506
  %cmp.n1514 = icmp eq i64 %indvars.iv21.i52, %n.vec1510
  br i1 %cmp.n1514, label %for.inc6.i63, label %for.body3.i60.preheader1597

for.body3.i60.preheader1597:                      ; preds = %for.body3.i60.preheader, %middle.block1504
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1510, %middle.block1504 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1597, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1597 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call846, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1504, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call846, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting293
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1552 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1552, label %for.body3.i99.preheader1595, label %vector.ph1553

vector.ph1553:                                    ; preds = %for.body3.i99.preheader
  %n.vec1555 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1551

vector.body1551:                                  ; preds = %vector.body1551, %vector.ph1553
  %index1556 = phi i64 [ 0, %vector.ph1553 ], [ %index.next1557, %vector.body1551 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call846, i64 %indvars.iv21.i91, i64 %index1556
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1560 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1560, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1557 = add i64 %index1556, 4
  %68 = icmp eq i64 %index.next1557, %n.vec1555
  br i1 %68, label %middle.block1549, label %vector.body1551, !llvm.loop !58

middle.block1549:                                 ; preds = %vector.body1551
  %cmp.n1559 = icmp eq i64 %indvars.iv21.i91, %n.vec1555
  br i1 %cmp.n1559, label %for.inc6.i102, label %for.body3.i99.preheader1595

for.body3.i99.preheader1595:                      ; preds = %for.body3.i99.preheader, %middle.block1549
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1555, %middle.block1549 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1595, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1595 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call846, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1549, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call846, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call846, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1564 = phi i64 [ %indvar.next1565, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1564, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1566 = icmp ult i64 %88, 4
  br i1 %min.iters.check1566, label %polly.loop_header192.preheader, label %vector.ph1567

vector.ph1567:                                    ; preds = %polly.loop_header
  %n.vec1569 = and i64 %88, -4
  br label %vector.body1563

vector.body1563:                                  ; preds = %vector.body1563, %vector.ph1567
  %index1570 = phi i64 [ 0, %vector.ph1567 ], [ %index.next1571, %vector.body1563 ]
  %90 = shl nuw nsw i64 %index1570, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1574 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1574, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1571 = add i64 %index1570, 4
  %95 = icmp eq i64 %index.next1571, %n.vec1569
  br i1 %95, label %middle.block1561, label %vector.body1563, !llvm.loop !71

middle.block1561:                                 ; preds = %vector.body1563
  %cmp.n1573 = icmp eq i64 %88, %n.vec1569
  br i1 %cmp.n1573, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1561
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1569, %middle.block1561 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1561
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1036.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1565 = add i64 %indvar1564, 1
  br i1 %exitcond1036.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1035.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1035.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 80
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1034.not = icmp eq i64 %polly.indvar_next204, 60
  br i1 %exitcond1034.not, label %polly.loop_header216, label %polly.loop_header200

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 60
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2708, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !68, !noalias !74
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1033.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond1033.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_exit208, %polly.loop_exit224
  %indvars.iv1029 = phi i64 [ %indvars.iv.next1030, %polly.loop_exit224 ], [ 1, %polly.loop_exit208 ]
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_exit208 ]
  %97 = shl nuw nsw i64 %polly.indvar219, 5
  %smin1027 = call i64 @llvm.smin.i64(i64 %indvars.iv1025, i64 -48)
  %98 = shl nsw i64 %polly.indvar219, 5
  %99 = add nsw i64 %smin1027, 79
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %indvars.iv.next1026 = add nsw i64 %indvars.iv1025, -32
  %indvars.iv.next1030 = add nuw nsw i64 %indvars.iv1029, 1
  %exitcond1032.not = icmp eq i64 %polly.indvar_next220, 3
  br i1 %exitcond1032.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %indvars.iv1016 = phi i64 [ %indvars.iv.next1017, %polly.loop_exit230 ], [ %indvars.iv, %polly.loop_header216 ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit230 ], [ 0, %polly.loop_header216 ]
  %100 = mul nsw i64 %polly.indvar225, -32
  %101 = add i64 %97, %100
  %102 = shl nsw i64 %polly.indvar225, 5
  %103 = sub nsw i64 %98, %102
  %104 = add nuw nsw i64 %102, 32
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit259
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, -32
  %exitcond1031.not = icmp eq i64 %polly.indvar_next226, %indvars.iv1029
  br i1 %exitcond1031.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_exit259, %polly.loop_header222
  %indvars.iv1018 = phi i64 [ %indvars.iv.next1019, %polly.loop_exit259 ], [ %indvars.iv1016, %polly.loop_header222 ]
  %polly.indvar231 = phi i64 [ %polly.indvar_next232, %polly.loop_exit259 ], [ 0, %polly.loop_header222 ]
  %105 = add i64 %101, %polly.indvar231
  %smin1578 = call i64 @llvm.smin.i64(i64 %105, i64 31)
  %106 = add nsw i64 %smin1578, 1
  %smin1022 = call i64 @llvm.smin.i64(i64 %indvars.iv1018, i64 31)
  %107 = add nsw i64 %polly.indvar231, %103
  %polly.loop_guard1169 = icmp sgt i64 %107, -1
  %108 = add nuw nsw i64 %polly.indvar231, %98
  %.not = icmp ult i64 %108, %104
  %polly.access.mul.call1251 = mul nuw nsw i64 %108, 60
  br i1 %polly.loop_guard1169, label %polly.loop_header234.us, label %polly.loop_header228.split

polly.loop_header234.us:                          ; preds = %polly.loop_header228, %polly.merge.us
  %polly.indvar237.us = phi i64 [ %polly.indvar_next238.us, %polly.merge.us ], [ 0, %polly.loop_header228 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar237.us, 80
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header234.us, %polly.loop_header240.us
  %polly.indvar243.us = phi i64 [ %polly.indvar_next244.us, %polly.loop_header240.us ], [ 0, %polly.loop_header234.us ]
  %109 = add nuw nsw i64 %polly.indvar243.us, %102
  %polly.access.mul.call1247.us = mul nuw nsw i64 %109, 60
  %polly.access.add.call1248.us = add nuw nsw i64 %polly.access.mul.call1247.us, %polly.indvar237.us
  %polly.access.call1249.us = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1248.us
  %polly.access.call1249.load.us = load double, double* %polly.access.call1249.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar243.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1249.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next244.us = add nuw nsw i64 %polly.indvar243.us, 1
  %exitcond1020.not = icmp eq i64 %polly.indvar243.us, %smin1022
  br i1 %exitcond1020.not, label %polly.cond.loopexit.us, label %polly.loop_header240.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.add.call1252.us = add nuw nsw i64 %polly.indvar237.us, %polly.access.mul.call1251
  %polly.access.call1253.us = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1252.us
  %polly.access.call1253.load.us = load double, double* %polly.access.call1253.us, align 8, !alias.scope !67, !noalias !75
  %polly.access.add.Packed_MemRef_call1255.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1.us, %107
  %polly.access.Packed_MemRef_call1256.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255.us
  store double %polly.access.call1253.load.us, double* %polly.access.Packed_MemRef_call1256.us, align 8
  br label %polly.merge.us

polly.merge.us:                                   ; preds = %polly.then.us, %polly.cond.loopexit.us
  %polly.indvar_next238.us = add nuw nsw i64 %polly.indvar237.us, 1
  %exitcond1021.not = icmp eq i64 %polly.indvar_next238.us, 60
  br i1 %exitcond1021.not, label %polly.loop_header257.preheader, label %polly.loop_header234.us

polly.cond.loopexit.us:                           ; preds = %polly.loop_header240.us
  br i1 %.not, label %polly.merge.us, label %polly.then.us

polly.loop_header228.split:                       ; preds = %polly.loop_header228
  br i1 %.not, label %polly.loop_exit259, label %polly.loop_header234

polly.loop_exit259:                               ; preds = %polly.loop_exit266.loopexit.us, %polly.loop_header228.split, %polly.loop_header257.preheader
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1019 = add nsw i64 %indvars.iv1018, 1
  %exitcond1028.not = icmp eq i64 %polly.indvar231, %99
  br i1 %exitcond1028.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header234:                             ; preds = %polly.loop_header228.split, %polly.loop_header234
  %polly.indvar237 = phi i64 [ %polly.indvar_next238, %polly.loop_header234 ], [ 0, %polly.loop_header228.split ]
  %polly.access.add.call1252 = add nuw nsw i64 %polly.indvar237, %polly.access.mul.call1251
  %polly.access.call1253 = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1252
  %polly.access.call1253.load = load double, double* %polly.access.call1253, align 8, !alias.scope !67, !noalias !75
  %polly.access.mul.Packed_MemRef_call1254 = mul nuw nsw i64 %polly.indvar237, 80
  %polly.access.add.Packed_MemRef_call1255 = add nsw i64 %polly.access.mul.Packed_MemRef_call1254, %107
  %polly.access.Packed_MemRef_call1256 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1255
  store double %polly.access.call1253.load, double* %polly.access.Packed_MemRef_call1256, align 8
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next238, 60
  br i1 %exitcond.not, label %polly.loop_header257.preheader, label %polly.loop_header234

polly.loop_header257.preheader:                   ; preds = %polly.loop_header234, %polly.merge.us
  %110 = mul nuw nsw i64 %108, 640
  br i1 %polly.loop_guard1169, label %polly.loop_header257.us, label %polly.loop_exit259

polly.loop_header257.us:                          ; preds = %polly.loop_header257.preheader, %polly.loop_exit266.loopexit.us
  %polly.indvar260.us = phi i64 [ %polly.indvar_next261.us, %polly.loop_exit266.loopexit.us ], [ 0, %polly.loop_header257.preheader ]
  %polly.access.mul.Packed_MemRef_call1271.us = mul nuw nsw i64 %polly.indvar260.us, 80
  %polly.access.add.Packed_MemRef_call2276.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1271.us, %108
  %polly.access.Packed_MemRef_call2277.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2276.us
  %_p_scalar_278.us = load double, double* %polly.access.Packed_MemRef_call2277.us, align 8
  %polly.access.add.Packed_MemRef_call1284.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1271.us, %107
  %polly.access.Packed_MemRef_call1285.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1284.us
  %_p_scalar_286.us = load double, double* %polly.access.Packed_MemRef_call1285.us, align 8
  %min.iters.check1579 = icmp ult i64 %106, 4
  br i1 %min.iters.check1579, label %polly.loop_header264.us.preheader, label %vector.ph1580

vector.ph1580:                                    ; preds = %polly.loop_header257.us
  %n.vec1582 = and i64 %106, -4
  %broadcast.splatinsert1588 = insertelement <4 x double> poison, double %_p_scalar_278.us, i32 0
  %broadcast.splat1589 = shufflevector <4 x double> %broadcast.splatinsert1588, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1591 = insertelement <4 x double> poison, double %_p_scalar_286.us, i32 0
  %broadcast.splat1592 = shufflevector <4 x double> %broadcast.splatinsert1591, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1577

vector.body1577:                                  ; preds = %vector.body1577, %vector.ph1580
  %index1583 = phi i64 [ 0, %vector.ph1580 ], [ %index.next1584, %vector.body1577 ]
  %111 = add nuw nsw i64 %index1583, %102
  %112 = add nuw nsw i64 %index1583, %polly.access.mul.Packed_MemRef_call1271.us
  %113 = getelementptr double, double* %Packed_MemRef_call1, i64 %112
  %114 = bitcast double* %113 to <4 x double>*
  %wide.load1587 = load <4 x double>, <4 x double>* %114, align 8
  %115 = fmul fast <4 x double> %broadcast.splat1589, %wide.load1587
  %116 = add nuw nsw i64 %111, %polly.access.mul.Packed_MemRef_call1271.us
  %117 = getelementptr double, double* %Packed_MemRef_call2, i64 %116
  %118 = bitcast double* %117 to <4 x double>*
  %wide.load1590 = load <4 x double>, <4 x double>* %118, align 8
  %119 = fmul fast <4 x double> %broadcast.splat1592, %wide.load1590
  %120 = shl i64 %111, 3
  %121 = add nuw nsw i64 %120, %110
  %122 = getelementptr i8, i8* %call, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1593 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !64, !noalias !66
  %124 = fadd fast <4 x double> %119, %115
  %125 = fmul fast <4 x double> %124, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %126 = fadd fast <4 x double> %125, %wide.load1593
  %127 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !64, !noalias !66
  %index.next1584 = add i64 %index1583, 4
  %128 = icmp eq i64 %index.next1584, %n.vec1582
  br i1 %128, label %middle.block1575, label %vector.body1577, !llvm.loop !76

middle.block1575:                                 ; preds = %vector.body1577
  %cmp.n1586 = icmp eq i64 %106, %n.vec1582
  br i1 %cmp.n1586, label %polly.loop_exit266.loopexit.us, label %polly.loop_header264.us.preheader

polly.loop_header264.us.preheader:                ; preds = %polly.loop_header257.us, %middle.block1575
  %polly.indvar268.us.ph = phi i64 [ 0, %polly.loop_header257.us ], [ %n.vec1582, %middle.block1575 ]
  br label %polly.loop_header264.us

polly.loop_header264.us:                          ; preds = %polly.loop_header264.us.preheader, %polly.loop_header264.us
  %polly.indvar268.us = phi i64 [ %polly.indvar_next269.us, %polly.loop_header264.us ], [ %polly.indvar268.us.ph, %polly.loop_header264.us.preheader ]
  %129 = add nuw nsw i64 %polly.indvar268.us, %102
  %polly.access.add.Packed_MemRef_call1272.us = add nuw nsw i64 %polly.indvar268.us, %polly.access.mul.Packed_MemRef_call1271.us
  %polly.access.Packed_MemRef_call1273.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1272.us
  %_p_scalar_274.us = load double, double* %polly.access.Packed_MemRef_call1273.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_278.us, %_p_scalar_274.us
  %polly.access.add.Packed_MemRef_call2280.us = add nuw nsw i64 %129, %polly.access.mul.Packed_MemRef_call1271.us
  %polly.access.Packed_MemRef_call2281.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2280.us
  %_p_scalar_282.us = load double, double* %polly.access.Packed_MemRef_call2281.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_286.us, %_p_scalar_282.us
  %130 = shl i64 %129, 3
  %131 = add nuw nsw i64 %130, %110
  %scevgep287.us = getelementptr i8, i8* %call, i64 %131
  %scevgep287288.us = bitcast i8* %scevgep287.us to double*
  %_p_scalar_289.us = load double, double* %scevgep287288.us, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_289.us
  store double %p_add42.i118.us, double* %scevgep287288.us, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next269.us = add nuw nsw i64 %polly.indvar268.us, 1
  %exitcond1023.not = icmp eq i64 %polly.indvar268.us, %smin1022
  br i1 %exitcond1023.not, label %polly.loop_exit266.loopexit.us, label %polly.loop_header264.us, !llvm.loop !77

polly.loop_exit266.loopexit.us:                   ; preds = %polly.loop_header264.us, %middle.block1575
  %polly.indvar_next261.us = add nuw nsw i64 %polly.indvar260.us, 1
  %exitcond1024.not = icmp eq i64 %polly.indvar_next261.us, 60
  br i1 %exitcond1024.not, label %polly.loop_exit259, label %polly.loop_header257.us

polly.start292:                                   ; preds = %kernel_syr2k.exit
  %malloccall294 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall296 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header380

polly.exiting293:                                 ; preds = %polly.loop_exit420
  tail call void @free(i8* %malloccall294)
  tail call void @free(i8* %malloccall296)
  br label %kernel_syr2k.exit90

polly.loop_header380:                             ; preds = %polly.loop_exit388, %polly.start292
  %indvar1519 = phi i64 [ %indvar.next1520, %polly.loop_exit388 ], [ 0, %polly.start292 ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit388 ], [ 1, %polly.start292 ]
  %132 = add i64 %indvar1519, 1
  %133 = mul nuw nsw i64 %polly.indvar383, 640
  %scevgep392 = getelementptr i8, i8* %call, i64 %133
  %min.iters.check1521 = icmp ult i64 %132, 4
  br i1 %min.iters.check1521, label %polly.loop_header386.preheader, label %vector.ph1522

vector.ph1522:                                    ; preds = %polly.loop_header380
  %n.vec1524 = and i64 %132, -4
  br label %vector.body1518

vector.body1518:                                  ; preds = %vector.body1518, %vector.ph1522
  %index1525 = phi i64 [ 0, %vector.ph1522 ], [ %index.next1526, %vector.body1518 ]
  %134 = shl nuw nsw i64 %index1525, 3
  %135 = getelementptr i8, i8* %scevgep392, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1529 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !78, !noalias !80
  %137 = fmul fast <4 x double> %wide.load1529, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !78, !noalias !80
  %index.next1526 = add i64 %index1525, 4
  %139 = icmp eq i64 %index.next1526, %n.vec1524
  br i1 %139, label %middle.block1516, label %vector.body1518, !llvm.loop !85

middle.block1516:                                 ; preds = %vector.body1518
  %cmp.n1528 = icmp eq i64 %132, %n.vec1524
  br i1 %cmp.n1528, label %polly.loop_exit388, label %polly.loop_header386.preheader

polly.loop_header386.preheader:                   ; preds = %polly.loop_header380, %middle.block1516
  %polly.indvar389.ph = phi i64 [ 0, %polly.loop_header380 ], [ %n.vec1524, %middle.block1516 ]
  br label %polly.loop_header386

polly.loop_exit388:                               ; preds = %polly.loop_header386, %middle.block1516
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %exitcond1061.not = icmp eq i64 %polly.indvar_next384, 80
  %indvar.next1520 = add i64 %indvar1519, 1
  br i1 %exitcond1061.not, label %polly.loop_header396.preheader, label %polly.loop_header380

polly.loop_header396.preheader:                   ; preds = %polly.loop_exit388
  %Packed_MemRef_call1295 = bitcast i8* %malloccall294 to double*
  %Packed_MemRef_call2297 = bitcast i8* %malloccall296 to double*
  br label %polly.loop_header396

polly.loop_header386:                             ; preds = %polly.loop_header386.preheader, %polly.loop_header386
  %polly.indvar389 = phi i64 [ %polly.indvar_next390, %polly.loop_header386 ], [ %polly.indvar389.ph, %polly.loop_header386.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar389, 3
  %scevgep393 = getelementptr i8, i8* %scevgep392, i64 %140
  %scevgep393394 = bitcast i8* %scevgep393 to double*
  %_p_scalar_395 = load double, double* %scevgep393394, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_395, 1.200000e+00
  store double %p_mul.i57, double* %scevgep393394, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next390 = add nuw nsw i64 %polly.indvar389, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next390, %polly.indvar383
  br i1 %exitcond1060.not, label %polly.loop_exit388, label %polly.loop_header386, !llvm.loop !86

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_exit404
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_exit404 ], [ 0, %polly.loop_header396.preheader ]
  %polly.access.mul.Packed_MemRef_call2297 = mul nuw nsw i64 %polly.indvar399, 80
  br label %polly.loop_header402

polly.loop_exit404:                               ; preds = %polly.loop_header402
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar_next400, 60
  br i1 %exitcond1059.not, label %polly.loop_header412, label %polly.loop_header396

polly.loop_header402:                             ; preds = %polly.loop_header402, %polly.loop_header396
  %polly.indvar405 = phi i64 [ 0, %polly.loop_header396 ], [ %polly.indvar_next406, %polly.loop_header402 ]
  %polly.access.mul.call2409 = mul nuw nsw i64 %polly.indvar405, 60
  %polly.access.add.call2410 = add nuw nsw i64 %polly.access.mul.call2409, %polly.indvar399
  %polly.access.call2411 = getelementptr double, double* %polly.access.cast.call2708, i64 %polly.access.add.call2410
  %polly.access.call2411.load = load double, double* %polly.access.call2411, align 8, !alias.scope !82, !noalias !87
  %polly.access.add.Packed_MemRef_call2297 = add nuw nsw i64 %polly.indvar405, %polly.access.mul.Packed_MemRef_call2297
  %polly.access.Packed_MemRef_call2297 = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297
  store double %polly.access.call2411.load, double* %polly.access.Packed_MemRef_call2297, align 8
  %polly.indvar_next406 = add nuw nsw i64 %polly.indvar405, 1
  %exitcond1058.not = icmp eq i64 %polly.indvar_next406, 80
  br i1 %exitcond1058.not, label %polly.loop_exit404, label %polly.loop_header402

polly.loop_header412:                             ; preds = %polly.loop_exit404, %polly.loop_exit420
  %indvars.iv1054 = phi i64 [ %indvars.iv.next1055, %polly.loop_exit420 ], [ 1, %polly.loop_exit404 ]
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051, %polly.loop_exit420 ], [ 0, %polly.loop_exit404 ]
  %indvars.iv1038 = phi i64 [ %indvars.iv.next1039, %polly.loop_exit420 ], [ 0, %polly.loop_exit404 ]
  %polly.indvar415 = phi i64 [ %polly.indvar_next416, %polly.loop_exit420 ], [ 0, %polly.loop_exit404 ]
  %141 = shl nuw nsw i64 %polly.indvar415, 5
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1050, i64 -48)
  %142 = shl nsw i64 %polly.indvar415, 5
  %143 = add nsw i64 %smin1052, 79
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_exit426
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 32
  %indvars.iv.next1051 = add nsw i64 %indvars.iv1050, -32
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 1
  %exitcond1057.not = icmp eq i64 %polly.indvar_next416, 3
  br i1 %exitcond1057.not, label %polly.exiting293, label %polly.loop_header412

polly.loop_header418:                             ; preds = %polly.loop_exit426, %polly.loop_header412
  %indvars.iv1040 = phi i64 [ %indvars.iv.next1041, %polly.loop_exit426 ], [ %indvars.iv1038, %polly.loop_header412 ]
  %polly.indvar421 = phi i64 [ %polly.indvar_next422, %polly.loop_exit426 ], [ 0, %polly.loop_header412 ]
  %144 = mul nsw i64 %polly.indvar421, -32
  %145 = add i64 %141, %144
  %146 = shl nsw i64 %polly.indvar421, 5
  %147 = sub nsw i64 %142, %146
  %148 = add nuw nsw i64 %146, 32
  br label %polly.loop_header424

polly.loop_exit426:                               ; preds = %polly.loop_exit461
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %indvars.iv.next1041 = add nsw i64 %indvars.iv1040, -32
  %exitcond1056.not = icmp eq i64 %polly.indvar_next422, %indvars.iv1054
  br i1 %exitcond1056.not, label %polly.loop_exit420, label %polly.loop_header418

polly.loop_header424:                             ; preds = %polly.loop_exit461, %polly.loop_header418
  %indvars.iv1042 = phi i64 [ %indvars.iv.next1043, %polly.loop_exit461 ], [ %indvars.iv1040, %polly.loop_header418 ]
  %polly.indvar427 = phi i64 [ %polly.indvar_next428, %polly.loop_exit461 ], [ 0, %polly.loop_header418 ]
  %149 = add i64 %145, %polly.indvar427
  %smin1533 = call i64 @llvm.smin.i64(i64 %149, i64 31)
  %150 = add nsw i64 %smin1533, 1
  %smin1047 = call i64 @llvm.smin.i64(i64 %indvars.iv1042, i64 31)
  %151 = add nsw i64 %polly.indvar427, %147
  %polly.loop_guard4401170 = icmp sgt i64 %151, -1
  %152 = add nuw nsw i64 %polly.indvar427, %142
  %.not900 = icmp ult i64 %152, %148
  %polly.access.mul.call1453 = mul nuw nsw i64 %152, 60
  br i1 %polly.loop_guard4401170, label %polly.loop_header430.us, label %polly.loop_header424.split

polly.loop_header430.us:                          ; preds = %polly.loop_header424, %polly.merge449.us
  %polly.indvar433.us = phi i64 [ %polly.indvar_next434.us, %polly.merge449.us ], [ 0, %polly.loop_header424 ]
  %polly.access.mul.Packed_MemRef_call1295.us = mul nuw nsw i64 %polly.indvar433.us, 80
  br label %polly.loop_header437.us

polly.loop_header437.us:                          ; preds = %polly.loop_header430.us, %polly.loop_header437.us
  %polly.indvar441.us = phi i64 [ %polly.indvar_next442.us, %polly.loop_header437.us ], [ 0, %polly.loop_header430.us ]
  %153 = add nuw nsw i64 %polly.indvar441.us, %146
  %polly.access.mul.call1445.us = mul nuw nsw i64 %153, 60
  %polly.access.add.call1446.us = add nuw nsw i64 %polly.access.mul.call1445.us, %polly.indvar433.us
  %polly.access.call1447.us = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1446.us
  %polly.access.call1447.load.us = load double, double* %polly.access.call1447.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1295.us = add nuw nsw i64 %polly.indvar441.us, %polly.access.mul.Packed_MemRef_call1295.us
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295.us
  store double %polly.access.call1447.load.us, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %polly.indvar_next442.us = add nuw nsw i64 %polly.indvar441.us, 1
  %exitcond1045.not = icmp eq i64 %polly.indvar441.us, %smin1047
  br i1 %exitcond1045.not, label %polly.cond448.loopexit.us, label %polly.loop_header437.us

polly.then450.us:                                 ; preds = %polly.cond448.loopexit.us
  %polly.access.add.call1454.us = add nuw nsw i64 %polly.indvar433.us, %polly.access.mul.call1453
  %polly.access.call1455.us = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1454.us
  %polly.access.call1455.load.us = load double, double* %polly.access.call1455.us, align 8, !alias.scope !81, !noalias !88
  %polly.access.add.Packed_MemRef_call1295457.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1295.us, %151
  %polly.access.Packed_MemRef_call1295458.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295457.us
  store double %polly.access.call1455.load.us, double* %polly.access.Packed_MemRef_call1295458.us, align 8
  br label %polly.merge449.us

polly.merge449.us:                                ; preds = %polly.then450.us, %polly.cond448.loopexit.us
  %polly.indvar_next434.us = add nuw nsw i64 %polly.indvar433.us, 1
  %exitcond1046.not = icmp eq i64 %polly.indvar_next434.us, 60
  br i1 %exitcond1046.not, label %polly.loop_header459.preheader, label %polly.loop_header430.us

polly.cond448.loopexit.us:                        ; preds = %polly.loop_header437.us
  br i1 %.not900, label %polly.merge449.us, label %polly.then450.us

polly.loop_header424.split:                       ; preds = %polly.loop_header424
  br i1 %.not900, label %polly.loop_exit461, label %polly.loop_header430

polly.loop_exit461:                               ; preds = %polly.loop_exit468.loopexit.us, %polly.loop_header424.split, %polly.loop_header459.preheader
  %polly.indvar_next428 = add nuw nsw i64 %polly.indvar427, 1
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar427, %143
  br i1 %exitcond1053.not, label %polly.loop_exit426, label %polly.loop_header424

polly.loop_header430:                             ; preds = %polly.loop_header424.split, %polly.loop_header430
  %polly.indvar433 = phi i64 [ %polly.indvar_next434, %polly.loop_header430 ], [ 0, %polly.loop_header424.split ]
  %polly.access.add.call1454 = add nuw nsw i64 %polly.indvar433, %polly.access.mul.call1453
  %polly.access.call1455 = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1454
  %polly.access.call1455.load = load double, double* %polly.access.call1455, align 8, !alias.scope !81, !noalias !88
  %polly.access.mul.Packed_MemRef_call1295456 = mul nuw nsw i64 %polly.indvar433, 80
  %polly.access.add.Packed_MemRef_call1295457 = add nsw i64 %polly.access.mul.Packed_MemRef_call1295456, %151
  %polly.access.Packed_MemRef_call1295458 = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295457
  store double %polly.access.call1455.load, double* %polly.access.Packed_MemRef_call1295458, align 8
  %polly.indvar_next434 = add nuw nsw i64 %polly.indvar433, 1
  %exitcond1037.not = icmp eq i64 %polly.indvar_next434, 60
  br i1 %exitcond1037.not, label %polly.loop_header459.preheader, label %polly.loop_header430

polly.loop_header459.preheader:                   ; preds = %polly.loop_header430, %polly.merge449.us
  %154 = mul nuw nsw i64 %152, 640
  br i1 %polly.loop_guard4401170, label %polly.loop_header459.us, label %polly.loop_exit461

polly.loop_header459.us:                          ; preds = %polly.loop_header459.preheader, %polly.loop_exit468.loopexit.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_exit468.loopexit.us ], [ 0, %polly.loop_header459.preheader ]
  %polly.access.mul.Packed_MemRef_call1295473.us = mul nuw nsw i64 %polly.indvar462.us, 80
  %polly.access.add.Packed_MemRef_call2297478.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1295473.us, %152
  %polly.access.Packed_MemRef_call2297479.us = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297478.us
  %_p_scalar_480.us = load double, double* %polly.access.Packed_MemRef_call2297479.us, align 8
  %polly.access.add.Packed_MemRef_call1295486.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1295473.us, %151
  %polly.access.Packed_MemRef_call1295487.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295486.us
  %_p_scalar_488.us = load double, double* %polly.access.Packed_MemRef_call1295487.us, align 8
  %min.iters.check1534 = icmp ult i64 %150, 4
  br i1 %min.iters.check1534, label %polly.loop_header466.us.preheader, label %vector.ph1535

vector.ph1535:                                    ; preds = %polly.loop_header459.us
  %n.vec1537 = and i64 %150, -4
  %broadcast.splatinsert1543 = insertelement <4 x double> poison, double %_p_scalar_480.us, i32 0
  %broadcast.splat1544 = shufflevector <4 x double> %broadcast.splatinsert1543, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1546 = insertelement <4 x double> poison, double %_p_scalar_488.us, i32 0
  %broadcast.splat1547 = shufflevector <4 x double> %broadcast.splatinsert1546, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.body1532, %vector.ph1535
  %index1538 = phi i64 [ 0, %vector.ph1535 ], [ %index.next1539, %vector.body1532 ]
  %155 = add nuw nsw i64 %index1538, %146
  %156 = add nuw nsw i64 %index1538, %polly.access.mul.Packed_MemRef_call1295473.us
  %157 = getelementptr double, double* %Packed_MemRef_call1295, i64 %156
  %158 = bitcast double* %157 to <4 x double>*
  %wide.load1542 = load <4 x double>, <4 x double>* %158, align 8
  %159 = fmul fast <4 x double> %broadcast.splat1544, %wide.load1542
  %160 = add nuw nsw i64 %155, %polly.access.mul.Packed_MemRef_call1295473.us
  %161 = getelementptr double, double* %Packed_MemRef_call2297, i64 %160
  %162 = bitcast double* %161 to <4 x double>*
  %wide.load1545 = load <4 x double>, <4 x double>* %162, align 8
  %163 = fmul fast <4 x double> %broadcast.splat1547, %wide.load1545
  %164 = shl i64 %155, 3
  %165 = add nuw nsw i64 %164, %154
  %166 = getelementptr i8, i8* %call, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  %wide.load1548 = load <4 x double>, <4 x double>* %167, align 8, !alias.scope !78, !noalias !80
  %168 = fadd fast <4 x double> %163, %159
  %169 = fmul fast <4 x double> %168, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %170 = fadd fast <4 x double> %169, %wide.load1548
  %171 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %170, <4 x double>* %171, align 8, !alias.scope !78, !noalias !80
  %index.next1539 = add i64 %index1538, 4
  %172 = icmp eq i64 %index.next1539, %n.vec1537
  br i1 %172, label %middle.block1530, label %vector.body1532, !llvm.loop !89

middle.block1530:                                 ; preds = %vector.body1532
  %cmp.n1541 = icmp eq i64 %150, %n.vec1537
  br i1 %cmp.n1541, label %polly.loop_exit468.loopexit.us, label %polly.loop_header466.us.preheader

polly.loop_header466.us.preheader:                ; preds = %polly.loop_header459.us, %middle.block1530
  %polly.indvar470.us.ph = phi i64 [ 0, %polly.loop_header459.us ], [ %n.vec1537, %middle.block1530 ]
  br label %polly.loop_header466.us

polly.loop_header466.us:                          ; preds = %polly.loop_header466.us.preheader, %polly.loop_header466.us
  %polly.indvar470.us = phi i64 [ %polly.indvar_next471.us, %polly.loop_header466.us ], [ %polly.indvar470.us.ph, %polly.loop_header466.us.preheader ]
  %173 = add nuw nsw i64 %polly.indvar470.us, %146
  %polly.access.add.Packed_MemRef_call1295474.us = add nuw nsw i64 %polly.indvar470.us, %polly.access.mul.Packed_MemRef_call1295473.us
  %polly.access.Packed_MemRef_call1295475.us = getelementptr double, double* %Packed_MemRef_call1295, i64 %polly.access.add.Packed_MemRef_call1295474.us
  %_p_scalar_476.us = load double, double* %polly.access.Packed_MemRef_call1295475.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_480.us, %_p_scalar_476.us
  %polly.access.add.Packed_MemRef_call2297482.us = add nuw nsw i64 %173, %polly.access.mul.Packed_MemRef_call1295473.us
  %polly.access.Packed_MemRef_call2297483.us = getelementptr double, double* %Packed_MemRef_call2297, i64 %polly.access.add.Packed_MemRef_call2297482.us
  %_p_scalar_484.us = load double, double* %polly.access.Packed_MemRef_call2297483.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_488.us, %_p_scalar_484.us
  %174 = shl i64 %173, 3
  %175 = add nuw nsw i64 %174, %154
  %scevgep489.us = getelementptr i8, i8* %call, i64 %175
  %scevgep489490.us = bitcast i8* %scevgep489.us to double*
  %_p_scalar_491.us = load double, double* %scevgep489490.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_491.us
  store double %p_add42.i79.us, double* %scevgep489490.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next471.us = add nuw nsw i64 %polly.indvar470.us, 1
  %exitcond1048.not = icmp eq i64 %polly.indvar470.us, %smin1047
  br i1 %exitcond1048.not, label %polly.loop_exit468.loopexit.us, label %polly.loop_header466.us, !llvm.loop !90

polly.loop_exit468.loopexit.us:                   ; preds = %polly.loop_header466.us, %middle.block1530
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1049.not = icmp eq i64 %polly.indvar_next463.us, 60
  br i1 %exitcond1049.not, label %polly.loop_exit461, label %polly.loop_header459.us

polly.start494:                                   ; preds = %init_array.exit
  %malloccall496 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall498 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header582

polly.exiting495:                                 ; preds = %polly.loop_exit622
  tail call void @free(i8* %malloccall496)
  tail call void @free(i8* %malloccall498)
  br label %kernel_syr2k.exit

polly.loop_header582:                             ; preds = %polly.loop_exit590, %polly.start494
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit590 ], [ 0, %polly.start494 ]
  %polly.indvar585 = phi i64 [ %polly.indvar_next586, %polly.loop_exit590 ], [ 1, %polly.start494 ]
  %176 = add i64 %indvar, 1
  %177 = mul nuw nsw i64 %polly.indvar585, 640
  %scevgep594 = getelementptr i8, i8* %call, i64 %177
  %min.iters.check1477 = icmp ult i64 %176, 4
  br i1 %min.iters.check1477, label %polly.loop_header588.preheader, label %vector.ph1478

vector.ph1478:                                    ; preds = %polly.loop_header582
  %n.vec1480 = and i64 %176, -4
  br label %vector.body1476

vector.body1476:                                  ; preds = %vector.body1476, %vector.ph1478
  %index1481 = phi i64 [ 0, %vector.ph1478 ], [ %index.next1482, %vector.body1476 ]
  %178 = shl nuw nsw i64 %index1481, 3
  %179 = getelementptr i8, i8* %scevgep594, i64 %178
  %180 = bitcast i8* %179 to <4 x double>*
  %wide.load1485 = load <4 x double>, <4 x double>* %180, align 8, !alias.scope !91, !noalias !93
  %181 = fmul fast <4 x double> %wide.load1485, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %182 = bitcast i8* %179 to <4 x double>*
  store <4 x double> %181, <4 x double>* %182, align 8, !alias.scope !91, !noalias !93
  %index.next1482 = add i64 %index1481, 4
  %183 = icmp eq i64 %index.next1482, %n.vec1480
  br i1 %183, label %middle.block1474, label %vector.body1476, !llvm.loop !98

middle.block1474:                                 ; preds = %vector.body1476
  %cmp.n1484 = icmp eq i64 %176, %n.vec1480
  br i1 %cmp.n1484, label %polly.loop_exit590, label %polly.loop_header588.preheader

polly.loop_header588.preheader:                   ; preds = %polly.loop_header582, %middle.block1474
  %polly.indvar591.ph = phi i64 [ 0, %polly.loop_header582 ], [ %n.vec1480, %middle.block1474 ]
  br label %polly.loop_header588

polly.loop_exit590:                               ; preds = %polly.loop_header588, %middle.block1474
  %polly.indvar_next586 = add nuw nsw i64 %polly.indvar585, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar_next586, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1086.not, label %polly.loop_header598.preheader, label %polly.loop_header582

polly.loop_header598.preheader:                   ; preds = %polly.loop_exit590
  %Packed_MemRef_call1497 = bitcast i8* %malloccall496 to double*
  %Packed_MemRef_call2499 = bitcast i8* %malloccall498 to double*
  br label %polly.loop_header598

polly.loop_header588:                             ; preds = %polly.loop_header588.preheader, %polly.loop_header588
  %polly.indvar591 = phi i64 [ %polly.indvar_next592, %polly.loop_header588 ], [ %polly.indvar591.ph, %polly.loop_header588.preheader ]
  %184 = shl nuw nsw i64 %polly.indvar591, 3
  %scevgep595 = getelementptr i8, i8* %scevgep594, i64 %184
  %scevgep595596 = bitcast i8* %scevgep595 to double*
  %_p_scalar_597 = load double, double* %scevgep595596, align 8, !alias.scope !91, !noalias !93
  %p_mul.i = fmul fast double %_p_scalar_597, 1.200000e+00
  store double %p_mul.i, double* %scevgep595596, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next592 = add nuw nsw i64 %polly.indvar591, 1
  %exitcond1085.not = icmp eq i64 %polly.indvar_next592, %polly.indvar585
  br i1 %exitcond1085.not, label %polly.loop_exit590, label %polly.loop_header588, !llvm.loop !99

polly.loop_header598:                             ; preds = %polly.loop_header598.preheader, %polly.loop_exit606
  %polly.indvar601 = phi i64 [ %polly.indvar_next602, %polly.loop_exit606 ], [ 0, %polly.loop_header598.preheader ]
  %polly.access.mul.Packed_MemRef_call2499 = mul nuw nsw i64 %polly.indvar601, 80
  br label %polly.loop_header604

polly.loop_exit606:                               ; preds = %polly.loop_header604
  %polly.indvar_next602 = add nuw nsw i64 %polly.indvar601, 1
  %exitcond1084.not = icmp eq i64 %polly.indvar_next602, 60
  br i1 %exitcond1084.not, label %polly.loop_header614, label %polly.loop_header598

polly.loop_header604:                             ; preds = %polly.loop_header604, %polly.loop_header598
  %polly.indvar607 = phi i64 [ 0, %polly.loop_header598 ], [ %polly.indvar_next608, %polly.loop_header604 ]
  %polly.access.mul.call2611 = mul nuw nsw i64 %polly.indvar607, 60
  %polly.access.add.call2612 = add nuw nsw i64 %polly.access.mul.call2611, %polly.indvar601
  %polly.access.call2613 = getelementptr double, double* %polly.access.cast.call2708, i64 %polly.access.add.call2612
  %polly.access.call2613.load = load double, double* %polly.access.call2613, align 8, !alias.scope !95, !noalias !100
  %polly.access.add.Packed_MemRef_call2499 = add nuw nsw i64 %polly.indvar607, %polly.access.mul.Packed_MemRef_call2499
  %polly.access.Packed_MemRef_call2499 = getelementptr double, double* %Packed_MemRef_call2499, i64 %polly.access.add.Packed_MemRef_call2499
  store double %polly.access.call2613.load, double* %polly.access.Packed_MemRef_call2499, align 8
  %polly.indvar_next608 = add nuw nsw i64 %polly.indvar607, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar_next608, 80
  br i1 %exitcond1083.not, label %polly.loop_exit606, label %polly.loop_header604

polly.loop_header614:                             ; preds = %polly.loop_exit606, %polly.loop_exit622
  %indvars.iv1079 = phi i64 [ %indvars.iv.next1080, %polly.loop_exit622 ], [ 1, %polly.loop_exit606 ]
  %indvars.iv1075 = phi i64 [ %indvars.iv.next1076, %polly.loop_exit622 ], [ 0, %polly.loop_exit606 ]
  %indvars.iv1063 = phi i64 [ %indvars.iv.next1064, %polly.loop_exit622 ], [ 0, %polly.loop_exit606 ]
  %polly.indvar617 = phi i64 [ %polly.indvar_next618, %polly.loop_exit622 ], [ 0, %polly.loop_exit606 ]
  %185 = shl nuw nsw i64 %polly.indvar617, 5
  %smin1077 = call i64 @llvm.smin.i64(i64 %indvars.iv1075, i64 -48)
  %186 = shl nsw i64 %polly.indvar617, 5
  %187 = add nsw i64 %smin1077, 79
  br label %polly.loop_header620

polly.loop_exit622:                               ; preds = %polly.loop_exit628
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %indvars.iv.next1064 = add nuw nsw i64 %indvars.iv1063, 32
  %indvars.iv.next1076 = add nsw i64 %indvars.iv1075, -32
  %indvars.iv.next1080 = add nuw nsw i64 %indvars.iv1079, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar_next618, 3
  br i1 %exitcond1082.not, label %polly.exiting495, label %polly.loop_header614

polly.loop_header620:                             ; preds = %polly.loop_exit628, %polly.loop_header614
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066, %polly.loop_exit628 ], [ %indvars.iv1063, %polly.loop_header614 ]
  %polly.indvar623 = phi i64 [ %polly.indvar_next624, %polly.loop_exit628 ], [ 0, %polly.loop_header614 ]
  %188 = mul nsw i64 %polly.indvar623, -32
  %189 = add i64 %185, %188
  %190 = shl nsw i64 %polly.indvar623, 5
  %191 = sub nsw i64 %186, %190
  %192 = add nuw nsw i64 %190, 32
  br label %polly.loop_header626

polly.loop_exit628:                               ; preds = %polly.loop_exit663
  %polly.indvar_next624 = add nuw nsw i64 %polly.indvar623, 1
  %indvars.iv.next1066 = add nsw i64 %indvars.iv1065, -32
  %exitcond1081.not = icmp eq i64 %polly.indvar_next624, %indvars.iv1079
  br i1 %exitcond1081.not, label %polly.loop_exit622, label %polly.loop_header620

polly.loop_header626:                             ; preds = %polly.loop_exit663, %polly.loop_header620
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit663 ], [ %indvars.iv1065, %polly.loop_header620 ]
  %polly.indvar629 = phi i64 [ %polly.indvar_next630, %polly.loop_exit663 ], [ 0, %polly.loop_header620 ]
  %193 = add i64 %189, %polly.indvar629
  %smin = call i64 @llvm.smin.i64(i64 %193, i64 31)
  %194 = add nsw i64 %smin, 1
  %smin1072 = call i64 @llvm.smin.i64(i64 %indvars.iv1067, i64 31)
  %195 = add nsw i64 %polly.indvar629, %191
  %polly.loop_guard6421171 = icmp sgt i64 %195, -1
  %196 = add nuw nsw i64 %polly.indvar629, %186
  %.not901 = icmp ult i64 %196, %192
  %polly.access.mul.call1655 = mul nuw nsw i64 %196, 60
  br i1 %polly.loop_guard6421171, label %polly.loop_header632.us, label %polly.loop_header626.split

polly.loop_header632.us:                          ; preds = %polly.loop_header626, %polly.merge651.us
  %polly.indvar635.us = phi i64 [ %polly.indvar_next636.us, %polly.merge651.us ], [ 0, %polly.loop_header626 ]
  %polly.access.mul.Packed_MemRef_call1497.us = mul nuw nsw i64 %polly.indvar635.us, 80
  br label %polly.loop_header639.us

polly.loop_header639.us:                          ; preds = %polly.loop_header632.us, %polly.loop_header639.us
  %polly.indvar643.us = phi i64 [ %polly.indvar_next644.us, %polly.loop_header639.us ], [ 0, %polly.loop_header632.us ]
  %197 = add nuw nsw i64 %polly.indvar643.us, %190
  %polly.access.mul.call1647.us = mul nuw nsw i64 %197, 60
  %polly.access.add.call1648.us = add nuw nsw i64 %polly.access.mul.call1647.us, %polly.indvar635.us
  %polly.access.call1649.us = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1648.us
  %polly.access.call1649.load.us = load double, double* %polly.access.call1649.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1497.us = add nuw nsw i64 %polly.indvar643.us, %polly.access.mul.Packed_MemRef_call1497.us
  %polly.access.Packed_MemRef_call1497.us = getelementptr double, double* %Packed_MemRef_call1497, i64 %polly.access.add.Packed_MemRef_call1497.us
  store double %polly.access.call1649.load.us, double* %polly.access.Packed_MemRef_call1497.us, align 8
  %polly.indvar_next644.us = add nuw nsw i64 %polly.indvar643.us, 1
  %exitcond1070.not = icmp eq i64 %polly.indvar643.us, %smin1072
  br i1 %exitcond1070.not, label %polly.cond650.loopexit.us, label %polly.loop_header639.us

polly.then652.us:                                 ; preds = %polly.cond650.loopexit.us
  %polly.access.add.call1656.us = add nuw nsw i64 %polly.indvar635.us, %polly.access.mul.call1655
  %polly.access.call1657.us = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1656.us
  %polly.access.call1657.load.us = load double, double* %polly.access.call1657.us, align 8, !alias.scope !94, !noalias !101
  %polly.access.add.Packed_MemRef_call1497659.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1497.us, %195
  %polly.access.Packed_MemRef_call1497660.us = getelementptr double, double* %Packed_MemRef_call1497, i64 %polly.access.add.Packed_MemRef_call1497659.us
  store double %polly.access.call1657.load.us, double* %polly.access.Packed_MemRef_call1497660.us, align 8
  br label %polly.merge651.us

polly.merge651.us:                                ; preds = %polly.then652.us, %polly.cond650.loopexit.us
  %polly.indvar_next636.us = add nuw nsw i64 %polly.indvar635.us, 1
  %exitcond1071.not = icmp eq i64 %polly.indvar_next636.us, 60
  br i1 %exitcond1071.not, label %polly.loop_header661.preheader, label %polly.loop_header632.us

polly.cond650.loopexit.us:                        ; preds = %polly.loop_header639.us
  br i1 %.not901, label %polly.merge651.us, label %polly.then652.us

polly.loop_header626.split:                       ; preds = %polly.loop_header626
  br i1 %.not901, label %polly.loop_exit663, label %polly.loop_header632

polly.loop_exit663:                               ; preds = %polly.loop_exit670.loopexit.us, %polly.loop_header626.split, %polly.loop_header661.preheader
  %polly.indvar_next630 = add nuw nsw i64 %polly.indvar629, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, 1
  %exitcond1078.not = icmp eq i64 %polly.indvar629, %187
  br i1 %exitcond1078.not, label %polly.loop_exit628, label %polly.loop_header626

polly.loop_header632:                             ; preds = %polly.loop_header626.split, %polly.loop_header632
  %polly.indvar635 = phi i64 [ %polly.indvar_next636, %polly.loop_header632 ], [ 0, %polly.loop_header626.split ]
  %polly.access.add.call1656 = add nuw nsw i64 %polly.indvar635, %polly.access.mul.call1655
  %polly.access.call1657 = getelementptr double, double* %polly.access.cast.call1698, i64 %polly.access.add.call1656
  %polly.access.call1657.load = load double, double* %polly.access.call1657, align 8, !alias.scope !94, !noalias !101
  %polly.access.mul.Packed_MemRef_call1497658 = mul nuw nsw i64 %polly.indvar635, 80
  %polly.access.add.Packed_MemRef_call1497659 = add nsw i64 %polly.access.mul.Packed_MemRef_call1497658, %195
  %polly.access.Packed_MemRef_call1497660 = getelementptr double, double* %Packed_MemRef_call1497, i64 %polly.access.add.Packed_MemRef_call1497659
  store double %polly.access.call1657.load, double* %polly.access.Packed_MemRef_call1497660, align 8
  %polly.indvar_next636 = add nuw nsw i64 %polly.indvar635, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next636, 60
  br i1 %exitcond1062.not, label %polly.loop_header661.preheader, label %polly.loop_header632

polly.loop_header661.preheader:                   ; preds = %polly.loop_header632, %polly.merge651.us
  %198 = mul nuw nsw i64 %196, 640
  br i1 %polly.loop_guard6421171, label %polly.loop_header661.us, label %polly.loop_exit663

polly.loop_header661.us:                          ; preds = %polly.loop_header661.preheader, %polly.loop_exit670.loopexit.us
  %polly.indvar664.us = phi i64 [ %polly.indvar_next665.us, %polly.loop_exit670.loopexit.us ], [ 0, %polly.loop_header661.preheader ]
  %polly.access.mul.Packed_MemRef_call1497675.us = mul nuw nsw i64 %polly.indvar664.us, 80
  %polly.access.add.Packed_MemRef_call2499680.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1497675.us, %196
  %polly.access.Packed_MemRef_call2499681.us = getelementptr double, double* %Packed_MemRef_call2499, i64 %polly.access.add.Packed_MemRef_call2499680.us
  %_p_scalar_682.us = load double, double* %polly.access.Packed_MemRef_call2499681.us, align 8
  %polly.access.add.Packed_MemRef_call1497688.us = add nsw i64 %polly.access.mul.Packed_MemRef_call1497675.us, %195
  %polly.access.Packed_MemRef_call1497689.us = getelementptr double, double* %Packed_MemRef_call1497, i64 %polly.access.add.Packed_MemRef_call1497688.us
  %_p_scalar_690.us = load double, double* %polly.access.Packed_MemRef_call1497689.us, align 8
  %min.iters.check1489 = icmp ult i64 %194, 4
  br i1 %min.iters.check1489, label %polly.loop_header668.us.preheader, label %vector.ph1490

vector.ph1490:                                    ; preds = %polly.loop_header661.us
  %n.vec1492 = and i64 %194, -4
  %broadcast.splatinsert1498 = insertelement <4 x double> poison, double %_p_scalar_682.us, i32 0
  %broadcast.splat1499 = shufflevector <4 x double> %broadcast.splatinsert1498, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1501 = insertelement <4 x double> poison, double %_p_scalar_690.us, i32 0
  %broadcast.splat1502 = shufflevector <4 x double> %broadcast.splatinsert1501, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1488

vector.body1488:                                  ; preds = %vector.body1488, %vector.ph1490
  %index1493 = phi i64 [ 0, %vector.ph1490 ], [ %index.next1494, %vector.body1488 ]
  %199 = add nuw nsw i64 %index1493, %190
  %200 = add nuw nsw i64 %index1493, %polly.access.mul.Packed_MemRef_call1497675.us
  %201 = getelementptr double, double* %Packed_MemRef_call1497, i64 %200
  %202 = bitcast double* %201 to <4 x double>*
  %wide.load1497 = load <4 x double>, <4 x double>* %202, align 8
  %203 = fmul fast <4 x double> %broadcast.splat1499, %wide.load1497
  %204 = add nuw nsw i64 %199, %polly.access.mul.Packed_MemRef_call1497675.us
  %205 = getelementptr double, double* %Packed_MemRef_call2499, i64 %204
  %206 = bitcast double* %205 to <4 x double>*
  %wide.load1500 = load <4 x double>, <4 x double>* %206, align 8
  %207 = fmul fast <4 x double> %broadcast.splat1502, %wide.load1500
  %208 = shl i64 %199, 3
  %209 = add nuw nsw i64 %208, %198
  %210 = getelementptr i8, i8* %call, i64 %209
  %211 = bitcast i8* %210 to <4 x double>*
  %wide.load1503 = load <4 x double>, <4 x double>* %211, align 8, !alias.scope !91, !noalias !93
  %212 = fadd fast <4 x double> %207, %203
  %213 = fmul fast <4 x double> %212, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %214 = fadd fast <4 x double> %213, %wide.load1503
  %215 = bitcast i8* %210 to <4 x double>*
  store <4 x double> %214, <4 x double>* %215, align 8, !alias.scope !91, !noalias !93
  %index.next1494 = add i64 %index1493, 4
  %216 = icmp eq i64 %index.next1494, %n.vec1492
  br i1 %216, label %middle.block1486, label %vector.body1488, !llvm.loop !102

middle.block1486:                                 ; preds = %vector.body1488
  %cmp.n1496 = icmp eq i64 %194, %n.vec1492
  br i1 %cmp.n1496, label %polly.loop_exit670.loopexit.us, label %polly.loop_header668.us.preheader

polly.loop_header668.us.preheader:                ; preds = %polly.loop_header661.us, %middle.block1486
  %polly.indvar672.us.ph = phi i64 [ 0, %polly.loop_header661.us ], [ %n.vec1492, %middle.block1486 ]
  br label %polly.loop_header668.us

polly.loop_header668.us:                          ; preds = %polly.loop_header668.us.preheader, %polly.loop_header668.us
  %polly.indvar672.us = phi i64 [ %polly.indvar_next673.us, %polly.loop_header668.us ], [ %polly.indvar672.us.ph, %polly.loop_header668.us.preheader ]
  %217 = add nuw nsw i64 %polly.indvar672.us, %190
  %polly.access.add.Packed_MemRef_call1497676.us = add nuw nsw i64 %polly.indvar672.us, %polly.access.mul.Packed_MemRef_call1497675.us
  %polly.access.Packed_MemRef_call1497677.us = getelementptr double, double* %Packed_MemRef_call1497, i64 %polly.access.add.Packed_MemRef_call1497676.us
  %_p_scalar_678.us = load double, double* %polly.access.Packed_MemRef_call1497677.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_682.us, %_p_scalar_678.us
  %polly.access.add.Packed_MemRef_call2499684.us = add nuw nsw i64 %217, %polly.access.mul.Packed_MemRef_call1497675.us
  %polly.access.Packed_MemRef_call2499685.us = getelementptr double, double* %Packed_MemRef_call2499, i64 %polly.access.add.Packed_MemRef_call2499684.us
  %_p_scalar_686.us = load double, double* %polly.access.Packed_MemRef_call2499685.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_690.us, %_p_scalar_686.us
  %218 = shl i64 %217, 3
  %219 = add nuw nsw i64 %218, %198
  %scevgep691.us = getelementptr i8, i8* %call, i64 %219
  %scevgep691692.us = bitcast i8* %scevgep691.us to double*
  %_p_scalar_693.us = load double, double* %scevgep691692.us, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_693.us
  store double %p_add42.i.us, double* %scevgep691692.us, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next673.us = add nuw nsw i64 %polly.indvar672.us, 1
  %exitcond1073.not = icmp eq i64 %polly.indvar672.us, %smin1072
  br i1 %exitcond1073.not, label %polly.loop_exit670.loopexit.us, label %polly.loop_header668.us, !llvm.loop !103

polly.loop_exit670.loopexit.us:                   ; preds = %polly.loop_header668.us, %middle.block1486
  %polly.indvar_next665.us = add nuw nsw i64 %polly.indvar664.us, 1
  %exitcond1074.not = icmp eq i64 %polly.indvar_next665.us, 60
  br i1 %exitcond1074.not, label %polly.loop_exit663, label %polly.loop_header661.us

polly.loop_header832:                             ; preds = %entry, %polly.loop_exit840
  %polly.indvar835 = phi i64 [ %polly.indvar_next836, %polly.loop_exit840 ], [ 0, %entry ]
  %220 = mul nuw nsw i64 %polly.indvar835, 640
  %221 = trunc i64 %polly.indvar835 to i32
  %broadcast.splatinsert1208 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1209 = shufflevector <4 x i32> %broadcast.splatinsert1208, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1198

vector.body1198:                                  ; preds = %vector.body1198, %polly.loop_header832
  %index1200 = phi i64 [ 0, %polly.loop_header832 ], [ %index.next1201, %vector.body1198 ]
  %vec.ind1206 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header832 ], [ %vec.ind.next1207, %vector.body1198 ]
  %222 = mul <4 x i32> %vec.ind1206, %broadcast.splat1209
  %223 = add <4 x i32> %222, <i32 3, i32 3, i32 3, i32 3>
  %224 = urem <4 x i32> %223, <i32 80, i32 80, i32 80, i32 80>
  %225 = sitofp <4 x i32> %224 to <4 x double>
  %226 = fmul fast <4 x double> %225, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %227 = shl i64 %index1200, 3
  %228 = add nuw nsw i64 %227, %220
  %229 = getelementptr i8, i8* %call, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %226, <4 x double>* %230, align 8, !alias.scope !104, !noalias !106
  %index.next1201 = add i64 %index1200, 4
  %vec.ind.next1207 = add <4 x i32> %vec.ind1206, <i32 4, i32 4, i32 4, i32 4>
  %231 = icmp eq i64 %index.next1201, 32
  br i1 %231, label %polly.loop_exit840, label %vector.body1198, !llvm.loop !109

polly.loop_exit840:                               ; preds = %vector.body1198
  %polly.indvar_next836 = add nuw nsw i64 %polly.indvar835, 1
  %exitcond1106.not = icmp eq i64 %polly.indvar_next836, 32
  br i1 %exitcond1106.not, label %polly.loop_header832.1, label %polly.loop_header832

polly.loop_header859:                             ; preds = %polly.loop_exit840.2.2, %polly.loop_exit867
  %polly.indvar862 = phi i64 [ %polly.indvar_next863, %polly.loop_exit867 ], [ 0, %polly.loop_exit840.2.2 ]
  %232 = mul nuw nsw i64 %polly.indvar862, 480
  %233 = trunc i64 %polly.indvar862 to i32
  %broadcast.splatinsert1322 = insertelement <4 x i32> poison, i32 %233, i32 0
  %broadcast.splat1323 = shufflevector <4 x i32> %broadcast.splatinsert1322, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %polly.loop_header859
  %index1314 = phi i64 [ 0, %polly.loop_header859 ], [ %index.next1315, %vector.body1312 ]
  %vec.ind1320 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header859 ], [ %vec.ind.next1321, %vector.body1312 ]
  %234 = mul <4 x i32> %vec.ind1320, %broadcast.splat1323
  %235 = add <4 x i32> %234, <i32 2, i32 2, i32 2, i32 2>
  %236 = urem <4 x i32> %235, <i32 60, i32 60, i32 60, i32 60>
  %237 = sitofp <4 x i32> %236 to <4 x double>
  %238 = fmul fast <4 x double> %237, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %239 = shl i64 %index1314, 3
  %240 = add i64 %239, %232
  %241 = getelementptr i8, i8* %call2, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %238, <4 x double>* %242, align 8, !alias.scope !108, !noalias !110
  %index.next1315 = add i64 %index1314, 4
  %vec.ind.next1321 = add <4 x i32> %vec.ind1320, <i32 4, i32 4, i32 4, i32 4>
  %243 = icmp eq i64 %index.next1315, 32
  br i1 %243, label %polly.loop_exit867, label %vector.body1312, !llvm.loop !111

polly.loop_exit867:                               ; preds = %vector.body1312
  %polly.indvar_next863 = add nuw nsw i64 %polly.indvar862, 1
  %exitcond1097.not = icmp eq i64 %polly.indvar_next863, 32
  br i1 %exitcond1097.not, label %polly.loop_header859.1, label %polly.loop_header859

polly.loop_header885:                             ; preds = %polly.loop_exit867.1.2, %polly.loop_exit893
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_exit893 ], [ 0, %polly.loop_exit867.1.2 ]
  %244 = mul nuw nsw i64 %polly.indvar888, 480
  %245 = trunc i64 %polly.indvar888 to i32
  %broadcast.splatinsert1400 = insertelement <4 x i32> poison, i32 %245, i32 0
  %broadcast.splat1401 = shufflevector <4 x i32> %broadcast.splatinsert1400, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1390

vector.body1390:                                  ; preds = %vector.body1390, %polly.loop_header885
  %index1392 = phi i64 [ 0, %polly.loop_header885 ], [ %index.next1393, %vector.body1390 ]
  %vec.ind1398 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header885 ], [ %vec.ind.next1399, %vector.body1390 ]
  %246 = mul <4 x i32> %vec.ind1398, %broadcast.splat1401
  %247 = add <4 x i32> %246, <i32 1, i32 1, i32 1, i32 1>
  %248 = urem <4 x i32> %247, <i32 80, i32 80, i32 80, i32 80>
  %249 = sitofp <4 x i32> %248 to <4 x double>
  %250 = fmul fast <4 x double> %249, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %251 = shl i64 %index1392, 3
  %252 = add i64 %251, %244
  %253 = getelementptr i8, i8* %call1, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %250, <4 x double>* %254, align 8, !alias.scope !107, !noalias !112
  %index.next1393 = add i64 %index1392, 4
  %vec.ind.next1399 = add <4 x i32> %vec.ind1398, <i32 4, i32 4, i32 4, i32 4>
  %255 = icmp eq i64 %index.next1393, 32
  br i1 %255, label %polly.loop_exit893, label %vector.body1390, !llvm.loop !113

polly.loop_exit893:                               ; preds = %vector.body1390
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next889, 32
  br i1 %exitcond1091.not, label %polly.loop_header885.1, label %polly.loop_header885

polly.loop_header885.1:                           ; preds = %polly.loop_exit893, %polly.loop_exit893.1
  %polly.indvar888.1 = phi i64 [ %polly.indvar_next889.1, %polly.loop_exit893.1 ], [ 0, %polly.loop_exit893 ]
  %256 = mul nuw nsw i64 %polly.indvar888.1, 480
  %257 = trunc i64 %polly.indvar888.1 to i32
  %broadcast.splatinsert1412 = insertelement <4 x i32> poison, i32 %257, i32 0
  %broadcast.splat1413 = shufflevector <4 x i32> %broadcast.splatinsert1412, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1404

vector.body1404:                                  ; preds = %vector.body1404, %polly.loop_header885.1
  %index1406 = phi i64 [ 0, %polly.loop_header885.1 ], [ %index.next1407, %vector.body1404 ]
  %vec.ind1410 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header885.1 ], [ %vec.ind.next1411, %vector.body1404 ]
  %258 = add nuw nsw <4 x i64> %vec.ind1410, <i64 32, i64 32, i64 32, i64 32>
  %259 = trunc <4 x i64> %258 to <4 x i32>
  %260 = mul <4 x i32> %broadcast.splat1413, %259
  %261 = add <4 x i32> %260, <i32 1, i32 1, i32 1, i32 1>
  %262 = urem <4 x i32> %261, <i32 80, i32 80, i32 80, i32 80>
  %263 = sitofp <4 x i32> %262 to <4 x double>
  %264 = fmul fast <4 x double> %263, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %265 = extractelement <4 x i64> %258, i32 0
  %266 = shl i64 %265, 3
  %267 = add i64 %266, %256
  %268 = getelementptr i8, i8* %call1, i64 %267
  %269 = bitcast i8* %268 to <4 x double>*
  store <4 x double> %264, <4 x double>* %269, align 8, !alias.scope !107, !noalias !112
  %index.next1407 = add i64 %index1406, 4
  %vec.ind.next1411 = add <4 x i64> %vec.ind1410, <i64 4, i64 4, i64 4, i64 4>
  %270 = icmp eq i64 %index.next1407, 28
  br i1 %270, label %polly.loop_exit893.1, label %vector.body1404, !llvm.loop !114

polly.loop_exit893.1:                             ; preds = %vector.body1404
  %polly.indvar_next889.1 = add nuw nsw i64 %polly.indvar888.1, 1
  %exitcond1091.1.not = icmp eq i64 %polly.indvar_next889.1, 32
  br i1 %exitcond1091.1.not, label %polly.loop_header885.11114, label %polly.loop_header885.1

polly.loop_header885.11114:                       ; preds = %polly.loop_exit893.1, %polly.loop_exit893.11125
  %polly.indvar888.11113 = phi i64 [ %polly.indvar_next889.11123, %polly.loop_exit893.11125 ], [ 0, %polly.loop_exit893.1 ]
  %271 = add nuw nsw i64 %polly.indvar888.11113, 32
  %272 = mul nuw nsw i64 %271, 480
  %273 = trunc i64 %271 to i32
  %broadcast.splatinsert1426 = insertelement <4 x i32> poison, i32 %273, i32 0
  %broadcast.splat1427 = shufflevector <4 x i32> %broadcast.splatinsert1426, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1416

vector.body1416:                                  ; preds = %vector.body1416, %polly.loop_header885.11114
  %index1418 = phi i64 [ 0, %polly.loop_header885.11114 ], [ %index.next1419, %vector.body1416 ]
  %vec.ind1424 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header885.11114 ], [ %vec.ind.next1425, %vector.body1416 ]
  %274 = mul <4 x i32> %vec.ind1424, %broadcast.splat1427
  %275 = add <4 x i32> %274, <i32 1, i32 1, i32 1, i32 1>
  %276 = urem <4 x i32> %275, <i32 80, i32 80, i32 80, i32 80>
  %277 = sitofp <4 x i32> %276 to <4 x double>
  %278 = fmul fast <4 x double> %277, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %279 = shl i64 %index1418, 3
  %280 = add i64 %279, %272
  %281 = getelementptr i8, i8* %call1, i64 %280
  %282 = bitcast i8* %281 to <4 x double>*
  store <4 x double> %278, <4 x double>* %282, align 8, !alias.scope !107, !noalias !112
  %index.next1419 = add i64 %index1418, 4
  %vec.ind.next1425 = add <4 x i32> %vec.ind1424, <i32 4, i32 4, i32 4, i32 4>
  %283 = icmp eq i64 %index.next1419, 32
  br i1 %283, label %polly.loop_exit893.11125, label %vector.body1416, !llvm.loop !115

polly.loop_exit893.11125:                         ; preds = %vector.body1416
  %polly.indvar_next889.11123 = add nuw nsw i64 %polly.indvar888.11113, 1
  %exitcond1091.11124.not = icmp eq i64 %polly.indvar_next889.11123, 32
  br i1 %exitcond1091.11124.not, label %polly.loop_header885.1.1, label %polly.loop_header885.11114

polly.loop_header885.1.1:                         ; preds = %polly.loop_exit893.11125, %polly.loop_exit893.1.1
  %polly.indvar888.1.1 = phi i64 [ %polly.indvar_next889.1.1, %polly.loop_exit893.1.1 ], [ 0, %polly.loop_exit893.11125 ]
  %284 = add nuw nsw i64 %polly.indvar888.1.1, 32
  %285 = mul nuw nsw i64 %284, 480
  %286 = trunc i64 %284 to i32
  %broadcast.splatinsert1438 = insertelement <4 x i32> poison, i32 %286, i32 0
  %broadcast.splat1439 = shufflevector <4 x i32> %broadcast.splatinsert1438, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1430

vector.body1430:                                  ; preds = %vector.body1430, %polly.loop_header885.1.1
  %index1432 = phi i64 [ 0, %polly.loop_header885.1.1 ], [ %index.next1433, %vector.body1430 ]
  %vec.ind1436 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header885.1.1 ], [ %vec.ind.next1437, %vector.body1430 ]
  %287 = add nuw nsw <4 x i64> %vec.ind1436, <i64 32, i64 32, i64 32, i64 32>
  %288 = trunc <4 x i64> %287 to <4 x i32>
  %289 = mul <4 x i32> %broadcast.splat1439, %288
  %290 = add <4 x i32> %289, <i32 1, i32 1, i32 1, i32 1>
  %291 = urem <4 x i32> %290, <i32 80, i32 80, i32 80, i32 80>
  %292 = sitofp <4 x i32> %291 to <4 x double>
  %293 = fmul fast <4 x double> %292, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %294 = extractelement <4 x i64> %287, i32 0
  %295 = shl i64 %294, 3
  %296 = add i64 %295, %285
  %297 = getelementptr i8, i8* %call1, i64 %296
  %298 = bitcast i8* %297 to <4 x double>*
  store <4 x double> %293, <4 x double>* %298, align 8, !alias.scope !107, !noalias !112
  %index.next1433 = add i64 %index1432, 4
  %vec.ind.next1437 = add <4 x i64> %vec.ind1436, <i64 4, i64 4, i64 4, i64 4>
  %299 = icmp eq i64 %index.next1433, 28
  br i1 %299, label %polly.loop_exit893.1.1, label %vector.body1430, !llvm.loop !116

polly.loop_exit893.1.1:                           ; preds = %vector.body1430
  %polly.indvar_next889.1.1 = add nuw nsw i64 %polly.indvar888.1.1, 1
  %exitcond1091.1.1.not = icmp eq i64 %polly.indvar_next889.1.1, 32
  br i1 %exitcond1091.1.1.not, label %polly.loop_header885.2, label %polly.loop_header885.1.1

polly.loop_header885.2:                           ; preds = %polly.loop_exit893.1.1, %polly.loop_exit893.2
  %polly.indvar888.2 = phi i64 [ %polly.indvar_next889.2, %polly.loop_exit893.2 ], [ 0, %polly.loop_exit893.1.1 ]
  %300 = add nuw nsw i64 %polly.indvar888.2, 64
  %301 = mul nuw nsw i64 %300, 480
  %302 = trunc i64 %300 to i32
  %broadcast.splatinsert1452 = insertelement <4 x i32> poison, i32 %302, i32 0
  %broadcast.splat1453 = shufflevector <4 x i32> %broadcast.splatinsert1452, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1442

vector.body1442:                                  ; preds = %vector.body1442, %polly.loop_header885.2
  %index1444 = phi i64 [ 0, %polly.loop_header885.2 ], [ %index.next1445, %vector.body1442 ]
  %vec.ind1450 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header885.2 ], [ %vec.ind.next1451, %vector.body1442 ]
  %303 = mul <4 x i32> %vec.ind1450, %broadcast.splat1453
  %304 = add <4 x i32> %303, <i32 1, i32 1, i32 1, i32 1>
  %305 = urem <4 x i32> %304, <i32 80, i32 80, i32 80, i32 80>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %308 = shl i64 %index1444, 3
  %309 = add i64 %308, %301
  %310 = getelementptr i8, i8* %call1, i64 %309
  %311 = bitcast i8* %310 to <4 x double>*
  store <4 x double> %307, <4 x double>* %311, align 8, !alias.scope !107, !noalias !112
  %index.next1445 = add i64 %index1444, 4
  %vec.ind.next1451 = add <4 x i32> %vec.ind1450, <i32 4, i32 4, i32 4, i32 4>
  %312 = icmp eq i64 %index.next1445, 32
  br i1 %312, label %polly.loop_exit893.2, label %vector.body1442, !llvm.loop !117

polly.loop_exit893.2:                             ; preds = %vector.body1442
  %polly.indvar_next889.2 = add nuw nsw i64 %polly.indvar888.2, 1
  %exitcond1091.2.not = icmp eq i64 %polly.indvar_next889.2, 16
  br i1 %exitcond1091.2.not, label %polly.loop_header885.1.2, label %polly.loop_header885.2

polly.loop_header885.1.2:                         ; preds = %polly.loop_exit893.2, %polly.loop_exit893.1.2
  %polly.indvar888.1.2 = phi i64 [ %polly.indvar_next889.1.2, %polly.loop_exit893.1.2 ], [ 0, %polly.loop_exit893.2 ]
  %313 = add nuw nsw i64 %polly.indvar888.1.2, 64
  %314 = mul nuw nsw i64 %313, 480
  %315 = trunc i64 %313 to i32
  %broadcast.splatinsert1464 = insertelement <4 x i32> poison, i32 %315, i32 0
  %broadcast.splat1465 = shufflevector <4 x i32> %broadcast.splatinsert1464, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1456

vector.body1456:                                  ; preds = %vector.body1456, %polly.loop_header885.1.2
  %index1458 = phi i64 [ 0, %polly.loop_header885.1.2 ], [ %index.next1459, %vector.body1456 ]
  %vec.ind1462 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header885.1.2 ], [ %vec.ind.next1463, %vector.body1456 ]
  %316 = add nuw nsw <4 x i64> %vec.ind1462, <i64 32, i64 32, i64 32, i64 32>
  %317 = trunc <4 x i64> %316 to <4 x i32>
  %318 = mul <4 x i32> %broadcast.splat1465, %317
  %319 = add <4 x i32> %318, <i32 1, i32 1, i32 1, i32 1>
  %320 = urem <4 x i32> %319, <i32 80, i32 80, i32 80, i32 80>
  %321 = sitofp <4 x i32> %320 to <4 x double>
  %322 = fmul fast <4 x double> %321, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %323 = extractelement <4 x i64> %316, i32 0
  %324 = shl i64 %323, 3
  %325 = add i64 %324, %314
  %326 = getelementptr i8, i8* %call1, i64 %325
  %327 = bitcast i8* %326 to <4 x double>*
  store <4 x double> %322, <4 x double>* %327, align 8, !alias.scope !107, !noalias !112
  %index.next1459 = add i64 %index1458, 4
  %vec.ind.next1463 = add <4 x i64> %vec.ind1462, <i64 4, i64 4, i64 4, i64 4>
  %328 = icmp eq i64 %index.next1459, 28
  br i1 %328, label %polly.loop_exit893.1.2, label %vector.body1456, !llvm.loop !118

polly.loop_exit893.1.2:                           ; preds = %vector.body1456
  %polly.indvar_next889.1.2 = add nuw nsw i64 %polly.indvar888.1.2, 1
  %exitcond1091.1.2.not = icmp eq i64 %polly.indvar_next889.1.2, 16
  br i1 %exitcond1091.1.2.not, label %init_array.exit, label %polly.loop_header885.1.2

polly.loop_header859.1:                           ; preds = %polly.loop_exit867, %polly.loop_exit867.1
  %polly.indvar862.1 = phi i64 [ %polly.indvar_next863.1, %polly.loop_exit867.1 ], [ 0, %polly.loop_exit867 ]
  %329 = mul nuw nsw i64 %polly.indvar862.1, 480
  %330 = trunc i64 %polly.indvar862.1 to i32
  %broadcast.splatinsert1334 = insertelement <4 x i32> poison, i32 %330, i32 0
  %broadcast.splat1335 = shufflevector <4 x i32> %broadcast.splatinsert1334, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1326

vector.body1326:                                  ; preds = %vector.body1326, %polly.loop_header859.1
  %index1328 = phi i64 [ 0, %polly.loop_header859.1 ], [ %index.next1329, %vector.body1326 ]
  %vec.ind1332 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header859.1 ], [ %vec.ind.next1333, %vector.body1326 ]
  %331 = add nuw nsw <4 x i64> %vec.ind1332, <i64 32, i64 32, i64 32, i64 32>
  %332 = trunc <4 x i64> %331 to <4 x i32>
  %333 = mul <4 x i32> %broadcast.splat1335, %332
  %334 = add <4 x i32> %333, <i32 2, i32 2, i32 2, i32 2>
  %335 = urem <4 x i32> %334, <i32 60, i32 60, i32 60, i32 60>
  %336 = sitofp <4 x i32> %335 to <4 x double>
  %337 = fmul fast <4 x double> %336, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %338 = extractelement <4 x i64> %331, i32 0
  %339 = shl i64 %338, 3
  %340 = add i64 %339, %329
  %341 = getelementptr i8, i8* %call2, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %337, <4 x double>* %342, align 8, !alias.scope !108, !noalias !110
  %index.next1329 = add i64 %index1328, 4
  %vec.ind.next1333 = add <4 x i64> %vec.ind1332, <i64 4, i64 4, i64 4, i64 4>
  %343 = icmp eq i64 %index.next1329, 28
  br i1 %343, label %polly.loop_exit867.1, label %vector.body1326, !llvm.loop !119

polly.loop_exit867.1:                             ; preds = %vector.body1326
  %polly.indvar_next863.1 = add nuw nsw i64 %polly.indvar862.1, 1
  %exitcond1097.1.not = icmp eq i64 %polly.indvar_next863.1, 32
  br i1 %exitcond1097.1.not, label %polly.loop_header859.11128, label %polly.loop_header859.1

polly.loop_header859.11128:                       ; preds = %polly.loop_exit867.1, %polly.loop_exit867.11139
  %polly.indvar862.11127 = phi i64 [ %polly.indvar_next863.11137, %polly.loop_exit867.11139 ], [ 0, %polly.loop_exit867.1 ]
  %344 = add nuw nsw i64 %polly.indvar862.11127, 32
  %345 = mul nuw nsw i64 %344, 480
  %346 = trunc i64 %344 to i32
  %broadcast.splatinsert1348 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1349 = shufflevector <4 x i32> %broadcast.splatinsert1348, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1338

vector.body1338:                                  ; preds = %vector.body1338, %polly.loop_header859.11128
  %index1340 = phi i64 [ 0, %polly.loop_header859.11128 ], [ %index.next1341, %vector.body1338 ]
  %vec.ind1346 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header859.11128 ], [ %vec.ind.next1347, %vector.body1338 ]
  %347 = mul <4 x i32> %vec.ind1346, %broadcast.splat1349
  %348 = add <4 x i32> %347, <i32 2, i32 2, i32 2, i32 2>
  %349 = urem <4 x i32> %348, <i32 60, i32 60, i32 60, i32 60>
  %350 = sitofp <4 x i32> %349 to <4 x double>
  %351 = fmul fast <4 x double> %350, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %352 = shl i64 %index1340, 3
  %353 = add i64 %352, %345
  %354 = getelementptr i8, i8* %call2, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %351, <4 x double>* %355, align 8, !alias.scope !108, !noalias !110
  %index.next1341 = add i64 %index1340, 4
  %vec.ind.next1347 = add <4 x i32> %vec.ind1346, <i32 4, i32 4, i32 4, i32 4>
  %356 = icmp eq i64 %index.next1341, 32
  br i1 %356, label %polly.loop_exit867.11139, label %vector.body1338, !llvm.loop !120

polly.loop_exit867.11139:                         ; preds = %vector.body1338
  %polly.indvar_next863.11137 = add nuw nsw i64 %polly.indvar862.11127, 1
  %exitcond1097.11138.not = icmp eq i64 %polly.indvar_next863.11137, 32
  br i1 %exitcond1097.11138.not, label %polly.loop_header859.1.1, label %polly.loop_header859.11128

polly.loop_header859.1.1:                         ; preds = %polly.loop_exit867.11139, %polly.loop_exit867.1.1
  %polly.indvar862.1.1 = phi i64 [ %polly.indvar_next863.1.1, %polly.loop_exit867.1.1 ], [ 0, %polly.loop_exit867.11139 ]
  %357 = add nuw nsw i64 %polly.indvar862.1.1, 32
  %358 = mul nuw nsw i64 %357, 480
  %359 = trunc i64 %357 to i32
  %broadcast.splatinsert1360 = insertelement <4 x i32> poison, i32 %359, i32 0
  %broadcast.splat1361 = shufflevector <4 x i32> %broadcast.splatinsert1360, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1352

vector.body1352:                                  ; preds = %vector.body1352, %polly.loop_header859.1.1
  %index1354 = phi i64 [ 0, %polly.loop_header859.1.1 ], [ %index.next1355, %vector.body1352 ]
  %vec.ind1358 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header859.1.1 ], [ %vec.ind.next1359, %vector.body1352 ]
  %360 = add nuw nsw <4 x i64> %vec.ind1358, <i64 32, i64 32, i64 32, i64 32>
  %361 = trunc <4 x i64> %360 to <4 x i32>
  %362 = mul <4 x i32> %broadcast.splat1361, %361
  %363 = add <4 x i32> %362, <i32 2, i32 2, i32 2, i32 2>
  %364 = urem <4 x i32> %363, <i32 60, i32 60, i32 60, i32 60>
  %365 = sitofp <4 x i32> %364 to <4 x double>
  %366 = fmul fast <4 x double> %365, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %367 = extractelement <4 x i64> %360, i32 0
  %368 = shl i64 %367, 3
  %369 = add i64 %368, %358
  %370 = getelementptr i8, i8* %call2, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %366, <4 x double>* %371, align 8, !alias.scope !108, !noalias !110
  %index.next1355 = add i64 %index1354, 4
  %vec.ind.next1359 = add <4 x i64> %vec.ind1358, <i64 4, i64 4, i64 4, i64 4>
  %372 = icmp eq i64 %index.next1355, 28
  br i1 %372, label %polly.loop_exit867.1.1, label %vector.body1352, !llvm.loop !121

polly.loop_exit867.1.1:                           ; preds = %vector.body1352
  %polly.indvar_next863.1.1 = add nuw nsw i64 %polly.indvar862.1.1, 1
  %exitcond1097.1.1.not = icmp eq i64 %polly.indvar_next863.1.1, 32
  br i1 %exitcond1097.1.1.not, label %polly.loop_header859.2, label %polly.loop_header859.1.1

polly.loop_header859.2:                           ; preds = %polly.loop_exit867.1.1, %polly.loop_exit867.2
  %polly.indvar862.2 = phi i64 [ %polly.indvar_next863.2, %polly.loop_exit867.2 ], [ 0, %polly.loop_exit867.1.1 ]
  %373 = add nuw nsw i64 %polly.indvar862.2, 64
  %374 = mul nuw nsw i64 %373, 480
  %375 = trunc i64 %373 to i32
  %broadcast.splatinsert1374 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1375 = shufflevector <4 x i32> %broadcast.splatinsert1374, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1364

vector.body1364:                                  ; preds = %vector.body1364, %polly.loop_header859.2
  %index1366 = phi i64 [ 0, %polly.loop_header859.2 ], [ %index.next1367, %vector.body1364 ]
  %vec.ind1372 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header859.2 ], [ %vec.ind.next1373, %vector.body1364 ]
  %376 = mul <4 x i32> %vec.ind1372, %broadcast.splat1375
  %377 = add <4 x i32> %376, <i32 2, i32 2, i32 2, i32 2>
  %378 = urem <4 x i32> %377, <i32 60, i32 60, i32 60, i32 60>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = shl i64 %index1366, 3
  %382 = add i64 %381, %374
  %383 = getelementptr i8, i8* %call2, i64 %382
  %384 = bitcast i8* %383 to <4 x double>*
  store <4 x double> %380, <4 x double>* %384, align 8, !alias.scope !108, !noalias !110
  %index.next1367 = add i64 %index1366, 4
  %vec.ind.next1373 = add <4 x i32> %vec.ind1372, <i32 4, i32 4, i32 4, i32 4>
  %385 = icmp eq i64 %index.next1367, 32
  br i1 %385, label %polly.loop_exit867.2, label %vector.body1364, !llvm.loop !122

polly.loop_exit867.2:                             ; preds = %vector.body1364
  %polly.indvar_next863.2 = add nuw nsw i64 %polly.indvar862.2, 1
  %exitcond1097.2.not = icmp eq i64 %polly.indvar_next863.2, 16
  br i1 %exitcond1097.2.not, label %polly.loop_header859.1.2, label %polly.loop_header859.2

polly.loop_header859.1.2:                         ; preds = %polly.loop_exit867.2, %polly.loop_exit867.1.2
  %polly.indvar862.1.2 = phi i64 [ %polly.indvar_next863.1.2, %polly.loop_exit867.1.2 ], [ 0, %polly.loop_exit867.2 ]
  %386 = add nuw nsw i64 %polly.indvar862.1.2, 64
  %387 = mul nuw nsw i64 %386, 480
  %388 = trunc i64 %386 to i32
  %broadcast.splatinsert1386 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1387 = shufflevector <4 x i32> %broadcast.splatinsert1386, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1378

vector.body1378:                                  ; preds = %vector.body1378, %polly.loop_header859.1.2
  %index1380 = phi i64 [ 0, %polly.loop_header859.1.2 ], [ %index.next1381, %vector.body1378 ]
  %vec.ind1384 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header859.1.2 ], [ %vec.ind.next1385, %vector.body1378 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1384, <i64 32, i64 32, i64 32, i64 32>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1387, %390
  %392 = add <4 x i32> %391, <i32 2, i32 2, i32 2, i32 2>
  %393 = urem <4 x i32> %392, <i32 60, i32 60, i32 60, i32 60>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add i64 %397, %387
  %399 = getelementptr i8, i8* %call2, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !108, !noalias !110
  %index.next1381 = add i64 %index1380, 4
  %vec.ind.next1385 = add <4 x i64> %vec.ind1384, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1381, 28
  br i1 %401, label %polly.loop_exit867.1.2, label %vector.body1378, !llvm.loop !123

polly.loop_exit867.1.2:                           ; preds = %vector.body1378
  %polly.indvar_next863.1.2 = add nuw nsw i64 %polly.indvar862.1.2, 1
  %exitcond1097.1.2.not = icmp eq i64 %polly.indvar_next863.1.2, 16
  br i1 %exitcond1097.1.2.not, label %polly.loop_header885, label %polly.loop_header859.1.2

polly.loop_header832.1:                           ; preds = %polly.loop_exit840, %polly.loop_exit840.1
  %polly.indvar835.1 = phi i64 [ %polly.indvar_next836.1, %polly.loop_exit840.1 ], [ 0, %polly.loop_exit840 ]
  %402 = mul nuw nsw i64 %polly.indvar835.1, 640
  %403 = trunc i64 %polly.indvar835.1 to i32
  %broadcast.splatinsert1220 = insertelement <4 x i32> poison, i32 %403, i32 0
  %broadcast.splat1221 = shufflevector <4 x i32> %broadcast.splatinsert1220, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %polly.loop_header832.1
  %index1214 = phi i64 [ 0, %polly.loop_header832.1 ], [ %index.next1215, %vector.body1212 ]
  %vec.ind1218 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header832.1 ], [ %vec.ind.next1219, %vector.body1212 ]
  %404 = add nuw nsw <4 x i64> %vec.ind1218, <i64 32, i64 32, i64 32, i64 32>
  %405 = trunc <4 x i64> %404 to <4 x i32>
  %406 = mul <4 x i32> %broadcast.splat1221, %405
  %407 = add <4 x i32> %406, <i32 3, i32 3, i32 3, i32 3>
  %408 = urem <4 x i32> %407, <i32 80, i32 80, i32 80, i32 80>
  %409 = sitofp <4 x i32> %408 to <4 x double>
  %410 = fmul fast <4 x double> %409, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %411 = extractelement <4 x i64> %404, i32 0
  %412 = shl i64 %411, 3
  %413 = add nuw nsw i64 %412, %402
  %414 = getelementptr i8, i8* %call, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %410, <4 x double>* %415, align 8, !alias.scope !104, !noalias !106
  %index.next1215 = add i64 %index1214, 4
  %vec.ind.next1219 = add <4 x i64> %vec.ind1218, <i64 4, i64 4, i64 4, i64 4>
  %416 = icmp eq i64 %index.next1215, 32
  br i1 %416, label %polly.loop_exit840.1, label %vector.body1212, !llvm.loop !124

polly.loop_exit840.1:                             ; preds = %vector.body1212
  %polly.indvar_next836.1 = add nuw nsw i64 %polly.indvar835.1, 1
  %exitcond1106.1.not = icmp eq i64 %polly.indvar_next836.1, 32
  br i1 %exitcond1106.1.not, label %polly.loop_header832.2, label %polly.loop_header832.1

polly.loop_header832.2:                           ; preds = %polly.loop_exit840.1, %polly.loop_exit840.2
  %polly.indvar835.2 = phi i64 [ %polly.indvar_next836.2, %polly.loop_exit840.2 ], [ 0, %polly.loop_exit840.1 ]
  %417 = mul nuw nsw i64 %polly.indvar835.2, 640
  %418 = trunc i64 %polly.indvar835.2 to i32
  %broadcast.splatinsert1232 = insertelement <4 x i32> poison, i32 %418, i32 0
  %broadcast.splat1233 = shufflevector <4 x i32> %broadcast.splatinsert1232, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1224

vector.body1224:                                  ; preds = %vector.body1224, %polly.loop_header832.2
  %index1226 = phi i64 [ 0, %polly.loop_header832.2 ], [ %index.next1227, %vector.body1224 ]
  %vec.ind1230 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header832.2 ], [ %vec.ind.next1231, %vector.body1224 ]
  %419 = add nuw nsw <4 x i64> %vec.ind1230, <i64 64, i64 64, i64 64, i64 64>
  %420 = trunc <4 x i64> %419 to <4 x i32>
  %421 = mul <4 x i32> %broadcast.splat1233, %420
  %422 = add <4 x i32> %421, <i32 3, i32 3, i32 3, i32 3>
  %423 = urem <4 x i32> %422, <i32 80, i32 80, i32 80, i32 80>
  %424 = sitofp <4 x i32> %423 to <4 x double>
  %425 = fmul fast <4 x double> %424, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %426 = extractelement <4 x i64> %419, i32 0
  %427 = shl i64 %426, 3
  %428 = add nuw nsw i64 %427, %417
  %429 = getelementptr i8, i8* %call, i64 %428
  %430 = bitcast i8* %429 to <4 x double>*
  store <4 x double> %425, <4 x double>* %430, align 8, !alias.scope !104, !noalias !106
  %index.next1227 = add i64 %index1226, 4
  %vec.ind.next1231 = add <4 x i64> %vec.ind1230, <i64 4, i64 4, i64 4, i64 4>
  %431 = icmp eq i64 %index.next1227, 16
  br i1 %431, label %polly.loop_exit840.2, label %vector.body1224, !llvm.loop !125

polly.loop_exit840.2:                             ; preds = %vector.body1224
  %polly.indvar_next836.2 = add nuw nsw i64 %polly.indvar835.2, 1
  %exitcond1106.2.not = icmp eq i64 %polly.indvar_next836.2, 32
  br i1 %exitcond1106.2.not, label %polly.loop_header832.11142, label %polly.loop_header832.2

polly.loop_header832.11142:                       ; preds = %polly.loop_exit840.2, %polly.loop_exit840.11153
  %polly.indvar835.11141 = phi i64 [ %polly.indvar_next836.11151, %polly.loop_exit840.11153 ], [ 0, %polly.loop_exit840.2 ]
  %432 = add nuw nsw i64 %polly.indvar835.11141, 32
  %433 = mul nuw nsw i64 %432, 640
  %434 = trunc i64 %432 to i32
  %broadcast.splatinsert1246 = insertelement <4 x i32> poison, i32 %434, i32 0
  %broadcast.splat1247 = shufflevector <4 x i32> %broadcast.splatinsert1246, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1236

vector.body1236:                                  ; preds = %vector.body1236, %polly.loop_header832.11142
  %index1238 = phi i64 [ 0, %polly.loop_header832.11142 ], [ %index.next1239, %vector.body1236 ]
  %vec.ind1244 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header832.11142 ], [ %vec.ind.next1245, %vector.body1236 ]
  %435 = mul <4 x i32> %vec.ind1244, %broadcast.splat1247
  %436 = add <4 x i32> %435, <i32 3, i32 3, i32 3, i32 3>
  %437 = urem <4 x i32> %436, <i32 80, i32 80, i32 80, i32 80>
  %438 = sitofp <4 x i32> %437 to <4 x double>
  %439 = fmul fast <4 x double> %438, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %440 = shl i64 %index1238, 3
  %441 = add nuw nsw i64 %440, %433
  %442 = getelementptr i8, i8* %call, i64 %441
  %443 = bitcast i8* %442 to <4 x double>*
  store <4 x double> %439, <4 x double>* %443, align 8, !alias.scope !104, !noalias !106
  %index.next1239 = add i64 %index1238, 4
  %vec.ind.next1245 = add <4 x i32> %vec.ind1244, <i32 4, i32 4, i32 4, i32 4>
  %444 = icmp eq i64 %index.next1239, 32
  br i1 %444, label %polly.loop_exit840.11153, label %vector.body1236, !llvm.loop !126

polly.loop_exit840.11153:                         ; preds = %vector.body1236
  %polly.indvar_next836.11151 = add nuw nsw i64 %polly.indvar835.11141, 1
  %exitcond1106.11152.not = icmp eq i64 %polly.indvar_next836.11151, 32
  br i1 %exitcond1106.11152.not, label %polly.loop_header832.1.1, label %polly.loop_header832.11142

polly.loop_header832.1.1:                         ; preds = %polly.loop_exit840.11153, %polly.loop_exit840.1.1
  %polly.indvar835.1.1 = phi i64 [ %polly.indvar_next836.1.1, %polly.loop_exit840.1.1 ], [ 0, %polly.loop_exit840.11153 ]
  %445 = add nuw nsw i64 %polly.indvar835.1.1, 32
  %446 = mul nuw nsw i64 %445, 640
  %447 = trunc i64 %445 to i32
  %broadcast.splatinsert1258 = insertelement <4 x i32> poison, i32 %447, i32 0
  %broadcast.splat1259 = shufflevector <4 x i32> %broadcast.splatinsert1258, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1250

vector.body1250:                                  ; preds = %vector.body1250, %polly.loop_header832.1.1
  %index1252 = phi i64 [ 0, %polly.loop_header832.1.1 ], [ %index.next1253, %vector.body1250 ]
  %vec.ind1256 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header832.1.1 ], [ %vec.ind.next1257, %vector.body1250 ]
  %448 = add nuw nsw <4 x i64> %vec.ind1256, <i64 32, i64 32, i64 32, i64 32>
  %449 = trunc <4 x i64> %448 to <4 x i32>
  %450 = mul <4 x i32> %broadcast.splat1259, %449
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = extractelement <4 x i64> %448, i32 0
  %456 = shl i64 %455, 3
  %457 = add nuw nsw i64 %456, %446
  %458 = getelementptr i8, i8* %call, i64 %457
  %459 = bitcast i8* %458 to <4 x double>*
  store <4 x double> %454, <4 x double>* %459, align 8, !alias.scope !104, !noalias !106
  %index.next1253 = add i64 %index1252, 4
  %vec.ind.next1257 = add <4 x i64> %vec.ind1256, <i64 4, i64 4, i64 4, i64 4>
  %460 = icmp eq i64 %index.next1253, 32
  br i1 %460, label %polly.loop_exit840.1.1, label %vector.body1250, !llvm.loop !127

polly.loop_exit840.1.1:                           ; preds = %vector.body1250
  %polly.indvar_next836.1.1 = add nuw nsw i64 %polly.indvar835.1.1, 1
  %exitcond1106.1.1.not = icmp eq i64 %polly.indvar_next836.1.1, 32
  br i1 %exitcond1106.1.1.not, label %polly.loop_header832.2.1, label %polly.loop_header832.1.1

polly.loop_header832.2.1:                         ; preds = %polly.loop_exit840.1.1, %polly.loop_exit840.2.1
  %polly.indvar835.2.1 = phi i64 [ %polly.indvar_next836.2.1, %polly.loop_exit840.2.1 ], [ 0, %polly.loop_exit840.1.1 ]
  %461 = add nuw nsw i64 %polly.indvar835.2.1, 32
  %462 = mul nuw nsw i64 %461, 640
  %463 = trunc i64 %461 to i32
  %broadcast.splatinsert1270 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat1271 = shufflevector <4 x i32> %broadcast.splatinsert1270, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %polly.loop_header832.2.1
  %index1264 = phi i64 [ 0, %polly.loop_header832.2.1 ], [ %index.next1265, %vector.body1262 ]
  %vec.ind1268 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header832.2.1 ], [ %vec.ind.next1269, %vector.body1262 ]
  %464 = add nuw nsw <4 x i64> %vec.ind1268, <i64 64, i64 64, i64 64, i64 64>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat1271, %465
  %467 = add <4 x i32> %466, <i32 3, i32 3, i32 3, i32 3>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %462
  %474 = getelementptr i8, i8* %call, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !104, !noalias !106
  %index.next1265 = add i64 %index1264, 4
  %vec.ind.next1269 = add <4 x i64> %vec.ind1268, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next1265, 16
  br i1 %476, label %polly.loop_exit840.2.1, label %vector.body1262, !llvm.loop !128

polly.loop_exit840.2.1:                           ; preds = %vector.body1262
  %polly.indvar_next836.2.1 = add nuw nsw i64 %polly.indvar835.2.1, 1
  %exitcond1106.2.1.not = icmp eq i64 %polly.indvar_next836.2.1, 32
  br i1 %exitcond1106.2.1.not, label %polly.loop_header832.21156, label %polly.loop_header832.2.1

polly.loop_header832.21156:                       ; preds = %polly.loop_exit840.2.1, %polly.loop_exit840.21167
  %polly.indvar835.21155 = phi i64 [ %polly.indvar_next836.21165, %polly.loop_exit840.21167 ], [ 0, %polly.loop_exit840.2.1 ]
  %477 = add nuw nsw i64 %polly.indvar835.21155, 64
  %478 = mul nuw nsw i64 %477, 640
  %479 = trunc i64 %477 to i32
  %broadcast.splatinsert1284 = insertelement <4 x i32> poison, i32 %479, i32 0
  %broadcast.splat1285 = shufflevector <4 x i32> %broadcast.splatinsert1284, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %polly.loop_header832.21156
  %index1276 = phi i64 [ 0, %polly.loop_header832.21156 ], [ %index.next1277, %vector.body1274 ]
  %vec.ind1282 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header832.21156 ], [ %vec.ind.next1283, %vector.body1274 ]
  %480 = mul <4 x i32> %vec.ind1282, %broadcast.splat1285
  %481 = add <4 x i32> %480, <i32 3, i32 3, i32 3, i32 3>
  %482 = urem <4 x i32> %481, <i32 80, i32 80, i32 80, i32 80>
  %483 = sitofp <4 x i32> %482 to <4 x double>
  %484 = fmul fast <4 x double> %483, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %485 = shl i64 %index1276, 3
  %486 = add nuw nsw i64 %485, %478
  %487 = getelementptr i8, i8* %call, i64 %486
  %488 = bitcast i8* %487 to <4 x double>*
  store <4 x double> %484, <4 x double>* %488, align 8, !alias.scope !104, !noalias !106
  %index.next1277 = add i64 %index1276, 4
  %vec.ind.next1283 = add <4 x i32> %vec.ind1282, <i32 4, i32 4, i32 4, i32 4>
  %489 = icmp eq i64 %index.next1277, 32
  br i1 %489, label %polly.loop_exit840.21167, label %vector.body1274, !llvm.loop !129

polly.loop_exit840.21167:                         ; preds = %vector.body1274
  %polly.indvar_next836.21165 = add nuw nsw i64 %polly.indvar835.21155, 1
  %exitcond1106.21166.not = icmp eq i64 %polly.indvar_next836.21165, 16
  br i1 %exitcond1106.21166.not, label %polly.loop_header832.1.2, label %polly.loop_header832.21156

polly.loop_header832.1.2:                         ; preds = %polly.loop_exit840.21167, %polly.loop_exit840.1.2
  %polly.indvar835.1.2 = phi i64 [ %polly.indvar_next836.1.2, %polly.loop_exit840.1.2 ], [ 0, %polly.loop_exit840.21167 ]
  %490 = add nuw nsw i64 %polly.indvar835.1.2, 64
  %491 = mul nuw nsw i64 %490, 640
  %492 = trunc i64 %490 to i32
  %broadcast.splatinsert1296 = insertelement <4 x i32> poison, i32 %492, i32 0
  %broadcast.splat1297 = shufflevector <4 x i32> %broadcast.splatinsert1296, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1288

vector.body1288:                                  ; preds = %vector.body1288, %polly.loop_header832.1.2
  %index1290 = phi i64 [ 0, %polly.loop_header832.1.2 ], [ %index.next1291, %vector.body1288 ]
  %vec.ind1294 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header832.1.2 ], [ %vec.ind.next1295, %vector.body1288 ]
  %493 = add nuw nsw <4 x i64> %vec.ind1294, <i64 32, i64 32, i64 32, i64 32>
  %494 = trunc <4 x i64> %493 to <4 x i32>
  %495 = mul <4 x i32> %broadcast.splat1297, %494
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = extractelement <4 x i64> %493, i32 0
  %501 = shl i64 %500, 3
  %502 = add nuw nsw i64 %501, %491
  %503 = getelementptr i8, i8* %call, i64 %502
  %504 = bitcast i8* %503 to <4 x double>*
  store <4 x double> %499, <4 x double>* %504, align 8, !alias.scope !104, !noalias !106
  %index.next1291 = add i64 %index1290, 4
  %vec.ind.next1295 = add <4 x i64> %vec.ind1294, <i64 4, i64 4, i64 4, i64 4>
  %505 = icmp eq i64 %index.next1291, 32
  br i1 %505, label %polly.loop_exit840.1.2, label %vector.body1288, !llvm.loop !130

polly.loop_exit840.1.2:                           ; preds = %vector.body1288
  %polly.indvar_next836.1.2 = add nuw nsw i64 %polly.indvar835.1.2, 1
  %exitcond1106.1.2.not = icmp eq i64 %polly.indvar_next836.1.2, 16
  br i1 %exitcond1106.1.2.not, label %polly.loop_header832.2.2, label %polly.loop_header832.1.2

polly.loop_header832.2.2:                         ; preds = %polly.loop_exit840.1.2, %polly.loop_exit840.2.2
  %polly.indvar835.2.2 = phi i64 [ %polly.indvar_next836.2.2, %polly.loop_exit840.2.2 ], [ 0, %polly.loop_exit840.1.2 ]
  %506 = add nuw nsw i64 %polly.indvar835.2.2, 64
  %507 = mul nuw nsw i64 %506, 640
  %508 = trunc i64 %506 to i32
  %broadcast.splatinsert1308 = insertelement <4 x i32> poison, i32 %508, i32 0
  %broadcast.splat1309 = shufflevector <4 x i32> %broadcast.splatinsert1308, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1300

vector.body1300:                                  ; preds = %vector.body1300, %polly.loop_header832.2.2
  %index1302 = phi i64 [ 0, %polly.loop_header832.2.2 ], [ %index.next1303, %vector.body1300 ]
  %vec.ind1306 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header832.2.2 ], [ %vec.ind.next1307, %vector.body1300 ]
  %509 = add nuw nsw <4 x i64> %vec.ind1306, <i64 64, i64 64, i64 64, i64 64>
  %510 = trunc <4 x i64> %509 to <4 x i32>
  %511 = mul <4 x i32> %broadcast.splat1309, %510
  %512 = add <4 x i32> %511, <i32 3, i32 3, i32 3, i32 3>
  %513 = urem <4 x i32> %512, <i32 80, i32 80, i32 80, i32 80>
  %514 = sitofp <4 x i32> %513 to <4 x double>
  %515 = fmul fast <4 x double> %514, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %516 = extractelement <4 x i64> %509, i32 0
  %517 = shl i64 %516, 3
  %518 = add nuw nsw i64 %517, %507
  %519 = getelementptr i8, i8* %call, i64 %518
  %520 = bitcast i8* %519 to <4 x double>*
  store <4 x double> %515, <4 x double>* %520, align 8, !alias.scope !104, !noalias !106
  %index.next1303 = add i64 %index1302, 4
  %vec.ind.next1307 = add <4 x i64> %vec.ind1306, <i64 4, i64 4, i64 4, i64 4>
  %521 = icmp eq i64 %index.next1303, 16
  br i1 %521, label %polly.loop_exit840.2.2, label %vector.body1300, !llvm.loop !131

polly.loop_exit840.2.2:                           ; preds = %vector.body1300
  %polly.indvar_next836.2.2 = add nuw nsw i64 %polly.indvar835.2.2, 1
  %exitcond1106.2.2.not = icmp eq i64 %polly.indvar_next836.2.2, 16
  br i1 %exitcond1106.2.2.not, label %polly.loop_header859, label %polly.loop_header832.2.2
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
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 64}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !26, !49, !53}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !24, !51, !42, !52, !44}
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
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13}
