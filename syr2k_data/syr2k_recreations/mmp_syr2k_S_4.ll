; ModuleID = 'syr2k_recreations//mmp_syr2k_S_4.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_4.c"
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
  %call792 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1653 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1653, %call2
  %polly.access.call2673 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2673, %call1
  %2 = or i1 %0, %1
  %polly.access.call693 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call693, %call2
  %4 = icmp ule i8* %polly.access.call2673, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call693, %call1
  %8 = icmp ule i8* %polly.access.call1653, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header778, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep979 = getelementptr i8, i8* %call2, i64 %12
  %scevgep978 = getelementptr i8, i8* %call2, i64 %11
  %scevgep977 = getelementptr i8, i8* %call1, i64 %12
  %scevgep976 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep976, %scevgep979
  %bound1 = icmp ult i8* %scevgep978, %scevgep977
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
  br i1 %exitcond18.not.i, label %vector.ph983, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph983:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert990 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat991 = shufflevector <4 x i64> %broadcast.splatinsert990, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body982

vector.body982:                                   ; preds = %vector.body982, %vector.ph983
  %index984 = phi i64 [ 0, %vector.ph983 ], [ %index.next985, %vector.body982 ]
  %vec.ind988 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph983 ], [ %vec.ind.next989, %vector.body982 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind988, %broadcast.splat991
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv7.i, i64 %index984
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next985 = add i64 %index984, 4
  %vec.ind.next989 = add <4 x i64> %vec.ind988, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next985, 80
  br i1 %40, label %for.inc41.i, label %vector.body982, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body982
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph983, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit839.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start460, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1574, label %vector.ph1265

vector.ph1265:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %vector.ph1265
  %index1266 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1267, %vector.body1264 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i, i64 %index1266
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1267 = add i64 %index1266, 4
  %46 = icmp eq i64 %index.next1267, %n.vec
  br i1 %46, label %middle.block1262, label %vector.body1264, !llvm.loop !18

middle.block1262:                                 ; preds = %vector.body1264
  %cmp.n1269 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1269, label %for.inc6.i, label %for.body3.i46.preheader1574

for.body3.i46.preheader1574:                      ; preds = %for.body3.i46.preheader, %middle.block1262
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1262 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1574, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1574 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1262, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting461
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start278, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1363 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1363, label %for.body3.i60.preheader1573, label %vector.ph1364

vector.ph1364:                                    ; preds = %for.body3.i60.preheader
  %n.vec1366 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1362

vector.body1362:                                  ; preds = %vector.body1362, %vector.ph1364
  %index1367 = phi i64 [ 0, %vector.ph1364 ], [ %index.next1368, %vector.body1362 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i52, i64 %index1367
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1371, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1368 = add i64 %index1367, 4
  %57 = icmp eq i64 %index.next1368, %n.vec1366
  br i1 %57, label %middle.block1360, label %vector.body1362, !llvm.loop !64

middle.block1360:                                 ; preds = %vector.body1362
  %cmp.n1370 = icmp eq i64 %indvars.iv21.i52, %n.vec1366
  br i1 %cmp.n1370, label %for.inc6.i63, label %for.body3.i60.preheader1573

for.body3.i60.preheader1573:                      ; preds = %for.body3.i60.preheader, %middle.block1360
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1366, %middle.block1360 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1573, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1573 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1360, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting279
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1469 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1469, label %for.body3.i99.preheader1572, label %vector.ph1470

vector.ph1470:                                    ; preds = %for.body3.i99.preheader
  %n.vec1472 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1468

vector.body1468:                                  ; preds = %vector.body1468, %vector.ph1470
  %index1473 = phi i64 [ 0, %vector.ph1470 ], [ %index.next1474, %vector.body1468 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i91, i64 %index1473
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1477 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1477, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1474 = add i64 %index1473, 4
  %68 = icmp eq i64 %index.next1474, %n.vec1472
  br i1 %68, label %middle.block1466, label %vector.body1468, !llvm.loop !66

middle.block1466:                                 ; preds = %vector.body1468
  %cmp.n1476 = icmp eq i64 %indvars.iv21.i91, %n.vec1472
  br i1 %cmp.n1476, label %for.inc6.i102, label %for.body3.i99.preheader1572

for.body3.i99.preheader1572:                      ; preds = %for.body3.i99.preheader, %middle.block1466
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1472, %middle.block1466 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1572, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1572 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1466, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  %malloccall136 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit246.3
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1481 = phi i64 [ %indvar.next1482, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1481, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1483 = icmp ult i64 %88, 4
  br i1 %min.iters.check1483, label %polly.loop_header192.preheader, label %vector.ph1484

vector.ph1484:                                    ; preds = %polly.loop_header
  %n.vec1486 = and i64 %88, -4
  br label %vector.body1480

vector.body1480:                                  ; preds = %vector.body1480, %vector.ph1484
  %index1487 = phi i64 [ 0, %vector.ph1484 ], [ %index.next1488, %vector.body1480 ]
  %90 = shl nuw nsw i64 %index1487, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1491 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1491, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1488 = add i64 %index1487, 4
  %95 = icmp eq i64 %index.next1488, %n.vec1486
  br i1 %95, label %middle.block1478, label %vector.body1480, !llvm.loop !79

middle.block1478:                                 ; preds = %vector.body1480
  %cmp.n1490 = icmp eq i64 %88, %n.vec1486
  br i1 %cmp.n1490, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1478
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1486, %middle.block1478 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1478
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1482 = add i64 %indvar1481, 1
  br i1 %exitcond863.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond862.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond862.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit246.3
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit246.3 ], [ 0, %polly.loop_header200.preheader ]
  %97 = shl nuw nsw i64 %polly.indvar203, 5
  br label %polly.loop_header206

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %98 = shl nuw nsw i64 %polly.indvar209, 5
  %scevgep852 = getelementptr i8, i8* %malloccall136, i64 %98
  %99 = mul nuw nsw i64 %polly.indvar209, 480
  %100 = add nuw nsw i64 %97, %99
  %scevgep853 = getelementptr i8, i8* %call2, i64 %100
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep852, i8* noundef nonnull align 8 dereferenceable(32) %scevgep853, i64 32, i1 false)
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next210, 80
  br i1 %exitcond.not, label %polly.loop_header222, label %polly.loop_header206

polly.loop_header222:                             ; preds = %polly.loop_header206, %polly.loop_header222
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_header222 ], [ 0, %polly.loop_header206 ]
  %101 = shl nuw nsw i64 %polly.indvar225, 5
  %scevgep855 = getelementptr i8, i8* %malloccall, i64 %101
  %102 = mul nuw nsw i64 %polly.indvar225, 480
  %103 = add nuw nsw i64 %97, %102
  %scevgep856 = getelementptr i8, i8* %call1, i64 %103
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep855, i8* noundef nonnull align 8 dereferenceable(32) %scevgep856, i64 32, i1 false)
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next226, 80
  br i1 %exitcond857.not, label %polly.loop_header244, label %polly.loop_header222

polly.loop_header244:                             ; preds = %polly.loop_header222, %polly.loop_exit252
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit252 ], [ 1, %polly.loop_header222 ]
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_exit252 ], [ 0, %polly.loop_header222 ]
  %104 = add nuw i64 %polly.indvar247, 1
  %105 = mul nuw nsw i64 %polly.indvar247, 640
  %scevgep272 = getelementptr i8, i8* %call, i64 %105
  %polly.access.mul.Packed_MemRef_call2260 = shl nsw i64 %polly.indvar247, 2
  %polly.access.Packed_MemRef_call2262 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.mul.Packed_MemRef_call2260
  %_p_scalar_263 = load double, double* %polly.access.Packed_MemRef_call2262, align 8
  %polly.access.Packed_MemRef_call1270 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call2260
  %_p_scalar_271 = load double, double* %polly.access.Packed_MemRef_call1270, align 8
  %min.iters.check1555 = icmp ult i64 %polly.indvar247, 4
  br i1 %min.iters.check1555, label %polly.loop_header250.preheader, label %vector.ph1556

polly.loop_header250.preheader:                   ; preds = %vector.body1554, %polly.loop_header244
  %polly.indvar253.ph = phi i64 [ 0, %polly.loop_header244 ], [ %n.vec1558, %vector.body1554 ]
  br label %polly.loop_header250

vector.ph1556:                                    ; preds = %polly.loop_header244
  %n.mod.vf1557 = and i64 %104, 3
  %106 = icmp eq i64 %n.mod.vf1557, 0
  %107 = select i1 %106, i64 4, i64 %n.mod.vf1557
  %n.vec1558 = sub i64 %104, %107
  %broadcast.splatinsert1565 = insertelement <4 x double> poison, double %_p_scalar_263, i32 0
  %broadcast.splat1566 = shufflevector <4 x double> %broadcast.splatinsert1565, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1569 = insertelement <4 x double> poison, double %_p_scalar_271, i32 0
  %broadcast.splat1570 = shufflevector <4 x double> %broadcast.splatinsert1569, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1554

vector.body1554:                                  ; preds = %vector.body1554, %vector.ph1556
  %index1559 = phi i64 [ 0, %vector.ph1556 ], [ %index.next1560, %vector.body1554 ]
  %108 = shl nsw i64 %index1559, 2
  %109 = getelementptr double, double* %Packed_MemRef_call1, i64 %108
  %110 = bitcast double* %109 to <16 x double>*
  %wide.vec1563 = load <16 x double>, <16 x double>* %110, align 8
  %strided.vec1564 = shufflevector <16 x double> %wide.vec1563, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %111 = fmul fast <4 x double> %broadcast.splat1566, %strided.vec1564
  %112 = getelementptr double, double* %Packed_MemRef_call2, i64 %108
  %113 = bitcast double* %112 to <16 x double>*
  %wide.vec1567 = load <16 x double>, <16 x double>* %113, align 8
  %strided.vec1568 = shufflevector <16 x double> %wide.vec1567, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %114 = fmul fast <4 x double> %broadcast.splat1570, %strided.vec1568
  %115 = shl nuw nsw i64 %index1559, 3
  %116 = getelementptr i8, i8* %scevgep272, i64 %115
  %117 = bitcast i8* %116 to <4 x double>*
  %wide.load1571 = load <4 x double>, <4 x double>* %117, align 8, !alias.scope !72, !noalias !74
  %118 = fadd fast <4 x double> %114, %111
  %119 = fmul fast <4 x double> %118, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %120 = fadd fast <4 x double> %119, %wide.load1571
  %121 = bitcast i8* %116 to <4 x double>*
  store <4 x double> %120, <4 x double>* %121, align 8, !alias.scope !72, !noalias !74
  %index.next1560 = add i64 %index1559, 4
  %122 = icmp eq i64 %index.next1560, %n.vec1558
  br i1 %122, label %polly.loop_header250.preheader, label %vector.body1554, !llvm.loop !82

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next248, 80
  br i1 %exitcond859.not, label %polly.loop_header244.1, label %polly.loop_header244

polly.loop_header250:                             ; preds = %polly.loop_header250.preheader, %polly.loop_header250
  %polly.indvar253 = phi i64 [ %polly.indvar_next254, %polly.loop_header250 ], [ %polly.indvar253.ph, %polly.loop_header250.preheader ]
  %polly.access.mul.Packed_MemRef_call1256 = shl nsw i64 %polly.indvar253, 2
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.mul.Packed_MemRef_call1256
  %_p_scalar_259 = load double, double* %polly.access.Packed_MemRef_call1258, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_263, %_p_scalar_259
  %polly.access.Packed_MemRef_call2266 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.mul.Packed_MemRef_call1256
  %_p_scalar_267 = load double, double* %polly.access.Packed_MemRef_call2266, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_271, %_p_scalar_267
  %123 = shl nuw nsw i64 %polly.indvar253, 3
  %scevgep273 = getelementptr i8, i8* %scevgep272, i64 %123
  %scevgep273274 = bitcast i8* %scevgep273 to double*
  %_p_scalar_275 = load double, double* %scevgep273274, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_275
  store double %p_add42.i118, double* %scevgep273274, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next254, %indvars.iv
  br i1 %exitcond858.not, label %polly.loop_exit252, label %polly.loop_header250, !llvm.loop !83

polly.start278:                                   ; preds = %kernel_syr2k.exit
  %malloccall280 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  %malloccall282 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header366

polly.exiting279:                                 ; preds = %polly.loop_exit428.3
  tail call void @free(i8* nonnull %malloccall280)
  tail call void @free(i8* nonnull %malloccall282)
  br label %kernel_syr2k.exit90

polly.loop_header366:                             ; preds = %polly.loop_exit374, %polly.start278
  %indvar1375 = phi i64 [ %indvar.next1376, %polly.loop_exit374 ], [ 0, %polly.start278 ]
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_exit374 ], [ 1, %polly.start278 ]
  %124 = add i64 %indvar1375, 1
  %125 = mul nuw nsw i64 %polly.indvar369, 640
  %scevgep378 = getelementptr i8, i8* %call, i64 %125
  %min.iters.check1377 = icmp ult i64 %124, 4
  br i1 %min.iters.check1377, label %polly.loop_header372.preheader, label %vector.ph1378

vector.ph1378:                                    ; preds = %polly.loop_header366
  %n.vec1380 = and i64 %124, -4
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %vector.ph1378
  %index1381 = phi i64 [ 0, %vector.ph1378 ], [ %index.next1382, %vector.body1374 ]
  %126 = shl nuw nsw i64 %index1381, 3
  %127 = getelementptr i8, i8* %scevgep378, i64 %126
  %128 = bitcast i8* %127 to <4 x double>*
  %wide.load1385 = load <4 x double>, <4 x double>* %128, align 8, !alias.scope !84, !noalias !86
  %129 = fmul fast <4 x double> %wide.load1385, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %130 = bitcast i8* %127 to <4 x double>*
  store <4 x double> %129, <4 x double>* %130, align 8, !alias.scope !84, !noalias !86
  %index.next1382 = add i64 %index1381, 4
  %131 = icmp eq i64 %index.next1382, %n.vec1380
  br i1 %131, label %middle.block1372, label %vector.body1374, !llvm.loop !91

middle.block1372:                                 ; preds = %vector.body1374
  %cmp.n1384 = icmp eq i64 %124, %n.vec1380
  br i1 %cmp.n1384, label %polly.loop_exit374, label %polly.loop_header372.preheader

polly.loop_header372.preheader:                   ; preds = %polly.loop_header366, %middle.block1372
  %polly.indvar375.ph = phi i64 [ 0, %polly.loop_header366 ], [ %n.vec1380, %middle.block1372 ]
  br label %polly.loop_header372

polly.loop_exit374:                               ; preds = %polly.loop_header372, %middle.block1372
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next370, 80
  %indvar.next1376 = add i64 %indvar1375, 1
  br i1 %exitcond879.not, label %polly.loop_header382.preheader, label %polly.loop_header366

polly.loop_header382.preheader:                   ; preds = %polly.loop_exit374
  %Packed_MemRef_call1281 = bitcast i8* %malloccall280 to double*
  %Packed_MemRef_call2283 = bitcast i8* %malloccall282 to double*
  br label %polly.loop_header382

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_header372
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_header372 ], [ %polly.indvar375.ph, %polly.loop_header372.preheader ]
  %132 = shl nuw nsw i64 %polly.indvar375, 3
  %scevgep379 = getelementptr i8, i8* %scevgep378, i64 %132
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !84, !noalias !86
  %p_mul.i57 = fmul fast double %_p_scalar_381, 1.200000e+00
  store double %p_mul.i57, double* %scevgep379380, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next376, %polly.indvar369
  br i1 %exitcond878.not, label %polly.loop_exit374, label %polly.loop_header372, !llvm.loop !92

polly.loop_header382:                             ; preds = %polly.loop_header382.preheader, %polly.loop_exit428.3
  %polly.indvar385 = phi i64 [ %polly.indvar_next386, %polly.loop_exit428.3 ], [ 0, %polly.loop_header382.preheader ]
  %133 = shl nuw nsw i64 %polly.indvar385, 5
  br label %polly.loop_header388

polly.loop_header388:                             ; preds = %polly.loop_header388, %polly.loop_header382
  %polly.indvar391 = phi i64 [ 0, %polly.loop_header382 ], [ %polly.indvar_next392, %polly.loop_header388 ]
  %134 = shl nuw nsw i64 %polly.indvar391, 5
  %scevgep865 = getelementptr i8, i8* %malloccall282, i64 %134
  %135 = mul nuw nsw i64 %polly.indvar391, 480
  %136 = add nuw nsw i64 %133, %135
  %scevgep866 = getelementptr i8, i8* %call2, i64 %136
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep865, i8* noundef nonnull align 8 dereferenceable(32) %scevgep866, i64 32, i1 false)
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next392, 80
  br i1 %exitcond867.not, label %polly.loop_header404, label %polly.loop_header388

polly.loop_header404:                             ; preds = %polly.loop_header388, %polly.loop_header404
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_header404 ], [ 0, %polly.loop_header388 ]
  %137 = shl nuw nsw i64 %polly.indvar407, 5
  %scevgep869 = getelementptr i8, i8* %malloccall280, i64 %137
  %138 = mul nuw nsw i64 %polly.indvar407, 480
  %139 = add nuw nsw i64 %133, %138
  %scevgep870 = getelementptr i8, i8* %call1, i64 %139
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep869, i8* noundef nonnull align 8 dereferenceable(32) %scevgep870, i64 32, i1 false)
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %exitcond871.not = icmp eq i64 %polly.indvar_next408, 80
  br i1 %exitcond871.not, label %polly.loop_header426, label %polly.loop_header404

polly.loop_header426:                             ; preds = %polly.loop_header404, %polly.loop_exit434
  %indvars.iv872 = phi i64 [ %indvars.iv.next873, %polly.loop_exit434 ], [ 1, %polly.loop_header404 ]
  %polly.indvar429 = phi i64 [ %polly.indvar_next430, %polly.loop_exit434 ], [ 0, %polly.loop_header404 ]
  %140 = add nuw i64 %polly.indvar429, 1
  %141 = mul nuw nsw i64 %polly.indvar429, 640
  %scevgep454 = getelementptr i8, i8* %call, i64 %141
  %polly.access.mul.Packed_MemRef_call2283442 = shl nsw i64 %polly.indvar429, 2
  %polly.access.Packed_MemRef_call2283444 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.mul.Packed_MemRef_call2283442
  %_p_scalar_445 = load double, double* %polly.access.Packed_MemRef_call2283444, align 8
  %polly.access.Packed_MemRef_call1281452 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.mul.Packed_MemRef_call2283442
  %_p_scalar_453 = load double, double* %polly.access.Packed_MemRef_call1281452, align 8
  %min.iters.check1449 = icmp ult i64 %polly.indvar429, 4
  br i1 %min.iters.check1449, label %polly.loop_header432.preheader, label %vector.ph1450

polly.loop_header432.preheader:                   ; preds = %vector.body1448, %polly.loop_header426
  %polly.indvar435.ph = phi i64 [ 0, %polly.loop_header426 ], [ %n.vec1452, %vector.body1448 ]
  br label %polly.loop_header432

vector.ph1450:                                    ; preds = %polly.loop_header426
  %n.mod.vf1451 = and i64 %140, 3
  %142 = icmp eq i64 %n.mod.vf1451, 0
  %143 = select i1 %142, i64 4, i64 %n.mod.vf1451
  %n.vec1452 = sub i64 %140, %143
  %broadcast.splatinsert1459 = insertelement <4 x double> poison, double %_p_scalar_445, i32 0
  %broadcast.splat1460 = shufflevector <4 x double> %broadcast.splatinsert1459, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1463 = insertelement <4 x double> poison, double %_p_scalar_453, i32 0
  %broadcast.splat1464 = shufflevector <4 x double> %broadcast.splatinsert1463, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1448

vector.body1448:                                  ; preds = %vector.body1448, %vector.ph1450
  %index1453 = phi i64 [ 0, %vector.ph1450 ], [ %index.next1454, %vector.body1448 ]
  %144 = shl nsw i64 %index1453, 2
  %145 = getelementptr double, double* %Packed_MemRef_call1281, i64 %144
  %146 = bitcast double* %145 to <16 x double>*
  %wide.vec1457 = load <16 x double>, <16 x double>* %146, align 8
  %strided.vec1458 = shufflevector <16 x double> %wide.vec1457, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %147 = fmul fast <4 x double> %broadcast.splat1460, %strided.vec1458
  %148 = getelementptr double, double* %Packed_MemRef_call2283, i64 %144
  %149 = bitcast double* %148 to <16 x double>*
  %wide.vec1461 = load <16 x double>, <16 x double>* %149, align 8
  %strided.vec1462 = shufflevector <16 x double> %wide.vec1461, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %150 = fmul fast <4 x double> %broadcast.splat1464, %strided.vec1462
  %151 = shl nuw nsw i64 %index1453, 3
  %152 = getelementptr i8, i8* %scevgep454, i64 %151
  %153 = bitcast i8* %152 to <4 x double>*
  %wide.load1465 = load <4 x double>, <4 x double>* %153, align 8, !alias.scope !84, !noalias !86
  %154 = fadd fast <4 x double> %150, %147
  %155 = fmul fast <4 x double> %154, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %156 = fadd fast <4 x double> %155, %wide.load1465
  %157 = bitcast i8* %152 to <4 x double>*
  store <4 x double> %156, <4 x double>* %157, align 8, !alias.scope !84, !noalias !86
  %index.next1454 = add i64 %index1453, 4
  %158 = icmp eq i64 %index.next1454, %n.vec1452
  br i1 %158, label %polly.loop_header432.preheader, label %vector.body1448, !llvm.loop !93

polly.loop_exit434:                               ; preds = %polly.loop_header432
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %indvars.iv.next873 = add nuw nsw i64 %indvars.iv872, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next430, 80
  br i1 %exitcond875.not, label %polly.loop_header426.1, label %polly.loop_header426

polly.loop_header432:                             ; preds = %polly.loop_header432.preheader, %polly.loop_header432
  %polly.indvar435 = phi i64 [ %polly.indvar_next436, %polly.loop_header432 ], [ %polly.indvar435.ph, %polly.loop_header432.preheader ]
  %polly.access.mul.Packed_MemRef_call1281438 = shl nsw i64 %polly.indvar435, 2
  %polly.access.Packed_MemRef_call1281440 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.mul.Packed_MemRef_call1281438
  %_p_scalar_441 = load double, double* %polly.access.Packed_MemRef_call1281440, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_445, %_p_scalar_441
  %polly.access.Packed_MemRef_call2283448 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.mul.Packed_MemRef_call1281438
  %_p_scalar_449 = load double, double* %polly.access.Packed_MemRef_call2283448, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_453, %_p_scalar_449
  %159 = shl nuw nsw i64 %polly.indvar435, 3
  %scevgep455 = getelementptr i8, i8* %scevgep454, i64 %159
  %scevgep455456 = bitcast i8* %scevgep455 to double*
  %_p_scalar_457 = load double, double* %scevgep455456, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_457
  store double %p_add42.i79, double* %scevgep455456, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next436, %indvars.iv872
  br i1 %exitcond874.not, label %polly.loop_exit434, label %polly.loop_header432, !llvm.loop !94

polly.start460:                                   ; preds = %init_array.exit
  %malloccall462 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  %malloccall464 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header548

polly.exiting461:                                 ; preds = %polly.loop_exit610.3
  tail call void @free(i8* nonnull %malloccall462)
  tail call void @free(i8* nonnull %malloccall464)
  br label %kernel_syr2k.exit

polly.loop_header548:                             ; preds = %polly.loop_exit556, %polly.start460
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit556 ], [ 0, %polly.start460 ]
  %polly.indvar551 = phi i64 [ %polly.indvar_next552, %polly.loop_exit556 ], [ 1, %polly.start460 ]
  %160 = add i64 %indvar, 1
  %161 = mul nuw nsw i64 %polly.indvar551, 640
  %scevgep560 = getelementptr i8, i8* %call, i64 %161
  %min.iters.check1273 = icmp ult i64 %160, 4
  br i1 %min.iters.check1273, label %polly.loop_header554.preheader, label %vector.ph1274

vector.ph1274:                                    ; preds = %polly.loop_header548
  %n.vec1276 = and i64 %160, -4
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %vector.ph1274
  %index1277 = phi i64 [ 0, %vector.ph1274 ], [ %index.next1278, %vector.body1272 ]
  %162 = shl nuw nsw i64 %index1277, 3
  %163 = getelementptr i8, i8* %scevgep560, i64 %162
  %164 = bitcast i8* %163 to <4 x double>*
  %wide.load1281 = load <4 x double>, <4 x double>* %164, align 8, !alias.scope !95, !noalias !97
  %165 = fmul fast <4 x double> %wide.load1281, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %166 = bitcast i8* %163 to <4 x double>*
  store <4 x double> %165, <4 x double>* %166, align 8, !alias.scope !95, !noalias !97
  %index.next1278 = add i64 %index1277, 4
  %167 = icmp eq i64 %index.next1278, %n.vec1276
  br i1 %167, label %middle.block1270, label %vector.body1272, !llvm.loop !102

middle.block1270:                                 ; preds = %vector.body1272
  %cmp.n1280 = icmp eq i64 %160, %n.vec1276
  br i1 %cmp.n1280, label %polly.loop_exit556, label %polly.loop_header554.preheader

polly.loop_header554.preheader:                   ; preds = %polly.loop_header548, %middle.block1270
  %polly.indvar557.ph = phi i64 [ 0, %polly.loop_header548 ], [ %n.vec1276, %middle.block1270 ]
  br label %polly.loop_header554

polly.loop_exit556:                               ; preds = %polly.loop_header554, %middle.block1270
  %polly.indvar_next552 = add nuw nsw i64 %polly.indvar551, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next552, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond895.not, label %polly.loop_header564.preheader, label %polly.loop_header548

polly.loop_header564.preheader:                   ; preds = %polly.loop_exit556
  %Packed_MemRef_call1463 = bitcast i8* %malloccall462 to double*
  %Packed_MemRef_call2465 = bitcast i8* %malloccall464 to double*
  br label %polly.loop_header564

polly.loop_header554:                             ; preds = %polly.loop_header554.preheader, %polly.loop_header554
  %polly.indvar557 = phi i64 [ %polly.indvar_next558, %polly.loop_header554 ], [ %polly.indvar557.ph, %polly.loop_header554.preheader ]
  %168 = shl nuw nsw i64 %polly.indvar557, 3
  %scevgep561 = getelementptr i8, i8* %scevgep560, i64 %168
  %scevgep561562 = bitcast i8* %scevgep561 to double*
  %_p_scalar_563 = load double, double* %scevgep561562, align 8, !alias.scope !95, !noalias !97
  %p_mul.i = fmul fast double %_p_scalar_563, 1.200000e+00
  store double %p_mul.i, double* %scevgep561562, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond894.not = icmp eq i64 %polly.indvar_next558, %polly.indvar551
  br i1 %exitcond894.not, label %polly.loop_exit556, label %polly.loop_header554, !llvm.loop !103

polly.loop_header564:                             ; preds = %polly.loop_header564.preheader, %polly.loop_exit610.3
  %polly.indvar567 = phi i64 [ %polly.indvar_next568, %polly.loop_exit610.3 ], [ 0, %polly.loop_header564.preheader ]
  %169 = shl nuw nsw i64 %polly.indvar567, 5
  br label %polly.loop_header570

polly.loop_header570:                             ; preds = %polly.loop_header570, %polly.loop_header564
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header564 ], [ %polly.indvar_next574, %polly.loop_header570 ]
  %170 = shl nuw nsw i64 %polly.indvar573, 5
  %scevgep881 = getelementptr i8, i8* %malloccall464, i64 %170
  %171 = mul nuw nsw i64 %polly.indvar573, 480
  %172 = add nuw nsw i64 %169, %171
  %scevgep882 = getelementptr i8, i8* %call2, i64 %172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep881, i8* noundef nonnull align 8 dereferenceable(32) %scevgep882, i64 32, i1 false)
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next574, 80
  br i1 %exitcond883.not, label %polly.loop_header586, label %polly.loop_header570

polly.loop_header586:                             ; preds = %polly.loop_header570, %polly.loop_header586
  %polly.indvar589 = phi i64 [ %polly.indvar_next590, %polly.loop_header586 ], [ 0, %polly.loop_header570 ]
  %173 = shl nuw nsw i64 %polly.indvar589, 5
  %scevgep885 = getelementptr i8, i8* %malloccall462, i64 %173
  %174 = mul nuw nsw i64 %polly.indvar589, 480
  %175 = add nuw nsw i64 %169, %174
  %scevgep886 = getelementptr i8, i8* %call1, i64 %175
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %scevgep885, i8* noundef nonnull align 8 dereferenceable(32) %scevgep886, i64 32, i1 false)
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %exitcond887.not = icmp eq i64 %polly.indvar_next590, 80
  br i1 %exitcond887.not, label %polly.loop_header608, label %polly.loop_header586

polly.loop_header608:                             ; preds = %polly.loop_header586, %polly.loop_exit616
  %indvars.iv888 = phi i64 [ %indvars.iv.next889, %polly.loop_exit616 ], [ 1, %polly.loop_header586 ]
  %polly.indvar611 = phi i64 [ %polly.indvar_next612, %polly.loop_exit616 ], [ 0, %polly.loop_header586 ]
  %176 = add nuw i64 %polly.indvar611, 1
  %177 = mul nuw nsw i64 %polly.indvar611, 640
  %scevgep636 = getelementptr i8, i8* %call, i64 %177
  %polly.access.mul.Packed_MemRef_call2465624 = shl nsw i64 %polly.indvar611, 2
  %polly.access.Packed_MemRef_call2465626 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.mul.Packed_MemRef_call2465624
  %_p_scalar_627 = load double, double* %polly.access.Packed_MemRef_call2465626, align 8
  %polly.access.Packed_MemRef_call1463634 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.mul.Packed_MemRef_call2465624
  %_p_scalar_635 = load double, double* %polly.access.Packed_MemRef_call1463634, align 8
  %min.iters.check1343 = icmp ult i64 %polly.indvar611, 4
  br i1 %min.iters.check1343, label %polly.loop_header614.preheader, label %vector.ph1344

polly.loop_header614.preheader:                   ; preds = %vector.body1342, %polly.loop_header608
  %polly.indvar617.ph = phi i64 [ 0, %polly.loop_header608 ], [ %n.vec1346, %vector.body1342 ]
  br label %polly.loop_header614

vector.ph1344:                                    ; preds = %polly.loop_header608
  %n.mod.vf1345 = and i64 %176, 3
  %178 = icmp eq i64 %n.mod.vf1345, 0
  %179 = select i1 %178, i64 4, i64 %n.mod.vf1345
  %n.vec1346 = sub i64 %176, %179
  %broadcast.splatinsert1353 = insertelement <4 x double> poison, double %_p_scalar_627, i32 0
  %broadcast.splat1354 = shufflevector <4 x double> %broadcast.splatinsert1353, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1357 = insertelement <4 x double> poison, double %_p_scalar_635, i32 0
  %broadcast.splat1358 = shufflevector <4 x double> %broadcast.splatinsert1357, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1342

vector.body1342:                                  ; preds = %vector.body1342, %vector.ph1344
  %index1347 = phi i64 [ 0, %vector.ph1344 ], [ %index.next1348, %vector.body1342 ]
  %180 = shl nsw i64 %index1347, 2
  %181 = getelementptr double, double* %Packed_MemRef_call1463, i64 %180
  %182 = bitcast double* %181 to <16 x double>*
  %wide.vec1351 = load <16 x double>, <16 x double>* %182, align 8
  %strided.vec1352 = shufflevector <16 x double> %wide.vec1351, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %183 = fmul fast <4 x double> %broadcast.splat1354, %strided.vec1352
  %184 = getelementptr double, double* %Packed_MemRef_call2465, i64 %180
  %185 = bitcast double* %184 to <16 x double>*
  %wide.vec1355 = load <16 x double>, <16 x double>* %185, align 8
  %strided.vec1356 = shufflevector <16 x double> %wide.vec1355, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %186 = fmul fast <4 x double> %broadcast.splat1358, %strided.vec1356
  %187 = shl nuw nsw i64 %index1347, 3
  %188 = getelementptr i8, i8* %scevgep636, i64 %187
  %189 = bitcast i8* %188 to <4 x double>*
  %wide.load1359 = load <4 x double>, <4 x double>* %189, align 8, !alias.scope !95, !noalias !97
  %190 = fadd fast <4 x double> %186, %183
  %191 = fmul fast <4 x double> %190, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %192 = fadd fast <4 x double> %191, %wide.load1359
  %193 = bitcast i8* %188 to <4 x double>*
  store <4 x double> %192, <4 x double>* %193, align 8, !alias.scope !95, !noalias !97
  %index.next1348 = add i64 %index1347, 4
  %194 = icmp eq i64 %index.next1348, %n.vec1346
  br i1 %194, label %polly.loop_header614.preheader, label %vector.body1342, !llvm.loop !104

polly.loop_exit616:                               ; preds = %polly.loop_header614
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %indvars.iv.next889 = add nuw nsw i64 %indvars.iv888, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next612, 80
  br i1 %exitcond891.not, label %polly.loop_header608.1, label %polly.loop_header608

polly.loop_header614:                             ; preds = %polly.loop_header614.preheader, %polly.loop_header614
  %polly.indvar617 = phi i64 [ %polly.indvar_next618, %polly.loop_header614 ], [ %polly.indvar617.ph, %polly.loop_header614.preheader ]
  %polly.access.mul.Packed_MemRef_call1463620 = shl nsw i64 %polly.indvar617, 2
  %polly.access.Packed_MemRef_call1463622 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.mul.Packed_MemRef_call1463620
  %_p_scalar_623 = load double, double* %polly.access.Packed_MemRef_call1463622, align 8
  %p_mul27.i = fmul fast double %_p_scalar_627, %_p_scalar_623
  %polly.access.Packed_MemRef_call2465630 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.mul.Packed_MemRef_call1463620
  %_p_scalar_631 = load double, double* %polly.access.Packed_MemRef_call2465630, align 8
  %p_mul37.i = fmul fast double %_p_scalar_635, %_p_scalar_631
  %195 = shl nuw nsw i64 %polly.indvar617, 3
  %scevgep637 = getelementptr i8, i8* %scevgep636, i64 %195
  %scevgep637638 = bitcast i8* %scevgep637 to double*
  %_p_scalar_639 = load double, double* %scevgep637638, align 8, !alias.scope !95, !noalias !97
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_639
  store double %p_add42.i, double* %scevgep637638, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next618, %indvars.iv888
  br i1 %exitcond890.not, label %polly.loop_exit616, label %polly.loop_header614, !llvm.loop !105

polly.loop_header778:                             ; preds = %entry, %polly.loop_exit786
  %polly.indvar781 = phi i64 [ %polly.indvar_next782, %polly.loop_exit786 ], [ 0, %entry ]
  %196 = mul nuw nsw i64 %polly.indvar781, 640
  %197 = trunc i64 %polly.indvar781 to i32
  %broadcast.splatinsert1004 = insertelement <4 x i32> poison, i32 %197, i32 0
  %broadcast.splat1005 = shufflevector <4 x i32> %broadcast.splatinsert1004, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %polly.loop_header778
  %index996 = phi i64 [ 0, %polly.loop_header778 ], [ %index.next997, %vector.body994 ]
  %vec.ind1002 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778 ], [ %vec.ind.next1003, %vector.body994 ]
  %198 = mul <4 x i32> %vec.ind1002, %broadcast.splat1005
  %199 = add <4 x i32> %198, <i32 3, i32 3, i32 3, i32 3>
  %200 = urem <4 x i32> %199, <i32 80, i32 80, i32 80, i32 80>
  %201 = sitofp <4 x i32> %200 to <4 x double>
  %202 = fmul fast <4 x double> %201, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %203 = shl i64 %index996, 3
  %204 = add nuw nsw i64 %203, %196
  %205 = getelementptr i8, i8* %call, i64 %204
  %206 = bitcast i8* %205 to <4 x double>*
  store <4 x double> %202, <4 x double>* %206, align 8, !alias.scope !106, !noalias !108
  %index.next997 = add i64 %index996, 4
  %vec.ind.next1003 = add <4 x i32> %vec.ind1002, <i32 4, i32 4, i32 4, i32 4>
  %207 = icmp eq i64 %index.next997, 32
  br i1 %207, label %polly.loop_exit786, label %vector.body994, !llvm.loop !111

polly.loop_exit786:                               ; preds = %vector.body994
  %polly.indvar_next782 = add nuw nsw i64 %polly.indvar781, 1
  %exitcond914.not = icmp eq i64 %polly.indvar_next782, 32
  br i1 %exitcond914.not, label %polly.loop_header778.1, label %polly.loop_header778

polly.loop_header805:                             ; preds = %polly.loop_exit786.2.2, %polly.loop_exit813
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_exit786.2.2 ]
  %208 = mul nuw nsw i64 %polly.indvar808, 480
  %209 = trunc i64 %polly.indvar808 to i32
  %broadcast.splatinsert1118 = insertelement <4 x i32> poison, i32 %209, i32 0
  %broadcast.splat1119 = shufflevector <4 x i32> %broadcast.splatinsert1118, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1108

vector.body1108:                                  ; preds = %vector.body1108, %polly.loop_header805
  %index1110 = phi i64 [ 0, %polly.loop_header805 ], [ %index.next1111, %vector.body1108 ]
  %vec.ind1116 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805 ], [ %vec.ind.next1117, %vector.body1108 ]
  %210 = mul <4 x i32> %vec.ind1116, %broadcast.splat1119
  %211 = add <4 x i32> %210, <i32 2, i32 2, i32 2, i32 2>
  %212 = urem <4 x i32> %211, <i32 60, i32 60, i32 60, i32 60>
  %213 = sitofp <4 x i32> %212 to <4 x double>
  %214 = fmul fast <4 x double> %213, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %215 = shl i64 %index1110, 3
  %216 = add i64 %215, %208
  %217 = getelementptr i8, i8* %call2, i64 %216
  %218 = bitcast i8* %217 to <4 x double>*
  store <4 x double> %214, <4 x double>* %218, align 8, !alias.scope !110, !noalias !112
  %index.next1111 = add i64 %index1110, 4
  %vec.ind.next1117 = add <4 x i32> %vec.ind1116, <i32 4, i32 4, i32 4, i32 4>
  %219 = icmp eq i64 %index.next1111, 32
  br i1 %219, label %polly.loop_exit813, label %vector.body1108, !llvm.loop !113

polly.loop_exit813:                               ; preds = %vector.body1108
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond905.not, label %polly.loop_header805.1, label %polly.loop_header805

polly.loop_header831:                             ; preds = %polly.loop_exit813.1.2, %polly.loop_exit839
  %polly.indvar834 = phi i64 [ %polly.indvar_next835, %polly.loop_exit839 ], [ 0, %polly.loop_exit813.1.2 ]
  %220 = mul nuw nsw i64 %polly.indvar834, 480
  %221 = trunc i64 %polly.indvar834 to i32
  %broadcast.splatinsert1196 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat1197 = shufflevector <4 x i32> %broadcast.splatinsert1196, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %polly.loop_header831
  %index1188 = phi i64 [ 0, %polly.loop_header831 ], [ %index.next1189, %vector.body1186 ]
  %vec.ind1194 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header831 ], [ %vec.ind.next1195, %vector.body1186 ]
  %222 = mul <4 x i32> %vec.ind1194, %broadcast.splat1197
  %223 = add <4 x i32> %222, <i32 1, i32 1, i32 1, i32 1>
  %224 = urem <4 x i32> %223, <i32 80, i32 80, i32 80, i32 80>
  %225 = sitofp <4 x i32> %224 to <4 x double>
  %226 = fmul fast <4 x double> %225, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %227 = shl i64 %index1188, 3
  %228 = add i64 %227, %220
  %229 = getelementptr i8, i8* %call1, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %226, <4 x double>* %230, align 8, !alias.scope !109, !noalias !114
  %index.next1189 = add i64 %index1188, 4
  %vec.ind.next1195 = add <4 x i32> %vec.ind1194, <i32 4, i32 4, i32 4, i32 4>
  %231 = icmp eq i64 %index.next1189, 32
  br i1 %231, label %polly.loop_exit839, label %vector.body1186, !llvm.loop !115

polly.loop_exit839:                               ; preds = %vector.body1186
  %polly.indvar_next835 = add nuw nsw i64 %polly.indvar834, 1
  %exitcond899.not = icmp eq i64 %polly.indvar_next835, 32
  br i1 %exitcond899.not, label %polly.loop_header831.1, label %polly.loop_header831

polly.loop_header244.1:                           ; preds = %polly.loop_exit252, %polly.loop_exit252.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit252.1 ], [ 1, %polly.loop_exit252 ]
  %polly.indvar247.1 = phi i64 [ %polly.indvar_next248.1, %polly.loop_exit252.1 ], [ 0, %polly.loop_exit252 ]
  %232 = add nuw i64 %polly.indvar247.1, 1
  %233 = mul nuw nsw i64 %polly.indvar247.1, 640
  %scevgep272.1 = getelementptr i8, i8* %call, i64 %233
  %polly.access.mul.Packed_MemRef_call2260.1 = shl nsw i64 %polly.indvar247.1, 2
  %polly.access.add.Packed_MemRef_call2261.1 = or i64 %polly.access.mul.Packed_MemRef_call2260.1, 1
  %polly.access.Packed_MemRef_call2262.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.1
  %_p_scalar_263.1 = load double, double* %polly.access.Packed_MemRef_call2262.1, align 8
  %polly.access.Packed_MemRef_call1270.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2261.1
  %_p_scalar_271.1 = load double, double* %polly.access.Packed_MemRef_call1270.1, align 8
  %min.iters.check1535 = icmp ult i64 %polly.indvar247.1, 4
  br i1 %min.iters.check1535, label %polly.loop_header250.1.preheader, label %vector.ph1536

vector.ph1536:                                    ; preds = %polly.loop_header244.1
  %n.mod.vf1537 = and i64 %232, 3
  %234 = icmp eq i64 %n.mod.vf1537, 0
  %235 = select i1 %234, i64 4, i64 %n.mod.vf1537
  %n.vec1538 = sub i64 %232, %235
  %broadcast.splatinsert1545 = insertelement <4 x double> poison, double %_p_scalar_263.1, i32 0
  %broadcast.splat1546 = shufflevector <4 x double> %broadcast.splatinsert1545, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1549 = insertelement <4 x double> poison, double %_p_scalar_271.1, i32 0
  %broadcast.splat1550 = shufflevector <4 x double> %broadcast.splatinsert1549, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1534

vector.body1534:                                  ; preds = %vector.body1534, %vector.ph1536
  %index1539 = phi i64 [ 0, %vector.ph1536 ], [ %index.next1540, %vector.body1534 ]
  %236 = shl nsw i64 %index1539, 2
  %237 = or i64 %236, 1
  %238 = getelementptr double, double* %Packed_MemRef_call1, i64 %237
  %239 = bitcast double* %238 to <16 x double>*
  %wide.vec1543 = load <16 x double>, <16 x double>* %239, align 8
  %strided.vec1544 = shufflevector <16 x double> %wide.vec1543, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %240 = fmul fast <4 x double> %broadcast.splat1546, %strided.vec1544
  %241 = getelementptr double, double* %Packed_MemRef_call2, i64 %237
  %242 = bitcast double* %241 to <16 x double>*
  %wide.vec1547 = load <16 x double>, <16 x double>* %242, align 8
  %strided.vec1548 = shufflevector <16 x double> %wide.vec1547, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %243 = fmul fast <4 x double> %broadcast.splat1550, %strided.vec1548
  %244 = shl nuw nsw i64 %index1539, 3
  %245 = getelementptr i8, i8* %scevgep272.1, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  %wide.load1551 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !72, !noalias !74
  %247 = fadd fast <4 x double> %243, %240
  %248 = fmul fast <4 x double> %247, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %249 = fadd fast <4 x double> %248, %wide.load1551
  %250 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %249, <4 x double>* %250, align 8, !alias.scope !72, !noalias !74
  %index.next1540 = add i64 %index1539, 4
  %251 = icmp eq i64 %index.next1540, %n.vec1538
  br i1 %251, label %polly.loop_header250.1.preheader, label %vector.body1534, !llvm.loop !116

polly.loop_header250.1.preheader:                 ; preds = %vector.body1534, %polly.loop_header244.1
  %polly.indvar253.1.ph = phi i64 [ 0, %polly.loop_header244.1 ], [ %n.vec1538, %vector.body1534 ]
  br label %polly.loop_header250.1

polly.loop_header250.1:                           ; preds = %polly.loop_header250.1.preheader, %polly.loop_header250.1
  %polly.indvar253.1 = phi i64 [ %polly.indvar_next254.1, %polly.loop_header250.1 ], [ %polly.indvar253.1.ph, %polly.loop_header250.1.preheader ]
  %polly.access.mul.Packed_MemRef_call1256.1 = shl nsw i64 %polly.indvar253.1, 2
  %polly.access.add.Packed_MemRef_call1257.1 = or i64 %polly.access.mul.Packed_MemRef_call1256.1, 1
  %polly.access.Packed_MemRef_call1258.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.1
  %_p_scalar_259.1 = load double, double* %polly.access.Packed_MemRef_call1258.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_263.1, %_p_scalar_259.1
  %polly.access.Packed_MemRef_call2266.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1257.1
  %_p_scalar_267.1 = load double, double* %polly.access.Packed_MemRef_call2266.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_271.1, %_p_scalar_267.1
  %252 = shl nuw nsw i64 %polly.indvar253.1, 3
  %scevgep273.1 = getelementptr i8, i8* %scevgep272.1, i64 %252
  %scevgep273274.1 = bitcast i8* %scevgep273.1 to double*
  %_p_scalar_275.1 = load double, double* %scevgep273274.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_275.1
  store double %p_add42.i118.1, double* %scevgep273274.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next254.1, %indvars.iv.1
  br i1 %exitcond858.1.not, label %polly.loop_exit252.1, label %polly.loop_header250.1, !llvm.loop !117

polly.loop_exit252.1:                             ; preds = %polly.loop_header250.1
  %polly.indvar_next248.1 = add nuw nsw i64 %polly.indvar247.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond859.1.not = icmp eq i64 %polly.indvar_next248.1, 80
  br i1 %exitcond859.1.not, label %polly.loop_header244.2, label %polly.loop_header244.1

polly.loop_header244.2:                           ; preds = %polly.loop_exit252.1, %polly.loop_exit252.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %polly.loop_exit252.2 ], [ 1, %polly.loop_exit252.1 ]
  %polly.indvar247.2 = phi i64 [ %polly.indvar_next248.2, %polly.loop_exit252.2 ], [ 0, %polly.loop_exit252.1 ]
  %253 = add nuw i64 %polly.indvar247.2, 1
  %254 = mul nuw nsw i64 %polly.indvar247.2, 640
  %scevgep272.2 = getelementptr i8, i8* %call, i64 %254
  %polly.access.mul.Packed_MemRef_call2260.2 = shl nsw i64 %polly.indvar247.2, 2
  %polly.access.add.Packed_MemRef_call2261.2 = or i64 %polly.access.mul.Packed_MemRef_call2260.2, 2
  %polly.access.Packed_MemRef_call2262.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.2
  %_p_scalar_263.2 = load double, double* %polly.access.Packed_MemRef_call2262.2, align 8
  %polly.access.Packed_MemRef_call1270.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2261.2
  %_p_scalar_271.2 = load double, double* %polly.access.Packed_MemRef_call1270.2, align 8
  %min.iters.check1515 = icmp ult i64 %polly.indvar247.2, 4
  br i1 %min.iters.check1515, label %polly.loop_header250.2.preheader, label %vector.ph1516

vector.ph1516:                                    ; preds = %polly.loop_header244.2
  %n.mod.vf1517 = and i64 %253, 3
  %255 = icmp eq i64 %n.mod.vf1517, 0
  %256 = select i1 %255, i64 4, i64 %n.mod.vf1517
  %n.vec1518 = sub i64 %253, %256
  %broadcast.splatinsert1525 = insertelement <4 x double> poison, double %_p_scalar_263.2, i32 0
  %broadcast.splat1526 = shufflevector <4 x double> %broadcast.splatinsert1525, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1529 = insertelement <4 x double> poison, double %_p_scalar_271.2, i32 0
  %broadcast.splat1530 = shufflevector <4 x double> %broadcast.splatinsert1529, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1514

vector.body1514:                                  ; preds = %vector.body1514, %vector.ph1516
  %index1519 = phi i64 [ 0, %vector.ph1516 ], [ %index.next1520, %vector.body1514 ]
  %257 = shl nsw i64 %index1519, 2
  %258 = or i64 %257, 2
  %259 = getelementptr double, double* %Packed_MemRef_call1, i64 %258
  %260 = bitcast double* %259 to <16 x double>*
  %wide.vec1523 = load <16 x double>, <16 x double>* %260, align 8
  %strided.vec1524 = shufflevector <16 x double> %wide.vec1523, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %261 = fmul fast <4 x double> %broadcast.splat1526, %strided.vec1524
  %262 = getelementptr double, double* %Packed_MemRef_call2, i64 %258
  %263 = bitcast double* %262 to <16 x double>*
  %wide.vec1527 = load <16 x double>, <16 x double>* %263, align 8
  %strided.vec1528 = shufflevector <16 x double> %wide.vec1527, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %264 = fmul fast <4 x double> %broadcast.splat1530, %strided.vec1528
  %265 = shl nuw nsw i64 %index1519, 3
  %266 = getelementptr i8, i8* %scevgep272.2, i64 %265
  %267 = bitcast i8* %266 to <4 x double>*
  %wide.load1531 = load <4 x double>, <4 x double>* %267, align 8, !alias.scope !72, !noalias !74
  %268 = fadd fast <4 x double> %264, %261
  %269 = fmul fast <4 x double> %268, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %270 = fadd fast <4 x double> %269, %wide.load1531
  %271 = bitcast i8* %266 to <4 x double>*
  store <4 x double> %270, <4 x double>* %271, align 8, !alias.scope !72, !noalias !74
  %index.next1520 = add i64 %index1519, 4
  %272 = icmp eq i64 %index.next1520, %n.vec1518
  br i1 %272, label %polly.loop_header250.2.preheader, label %vector.body1514, !llvm.loop !118

polly.loop_header250.2.preheader:                 ; preds = %vector.body1514, %polly.loop_header244.2
  %polly.indvar253.2.ph = phi i64 [ 0, %polly.loop_header244.2 ], [ %n.vec1518, %vector.body1514 ]
  br label %polly.loop_header250.2

polly.loop_header250.2:                           ; preds = %polly.loop_header250.2.preheader, %polly.loop_header250.2
  %polly.indvar253.2 = phi i64 [ %polly.indvar_next254.2, %polly.loop_header250.2 ], [ %polly.indvar253.2.ph, %polly.loop_header250.2.preheader ]
  %polly.access.mul.Packed_MemRef_call1256.2 = shl nsw i64 %polly.indvar253.2, 2
  %polly.access.add.Packed_MemRef_call1257.2 = or i64 %polly.access.mul.Packed_MemRef_call1256.2, 2
  %polly.access.Packed_MemRef_call1258.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.2
  %_p_scalar_259.2 = load double, double* %polly.access.Packed_MemRef_call1258.2, align 8
  %p_mul27.i112.2 = fmul fast double %_p_scalar_263.2, %_p_scalar_259.2
  %polly.access.Packed_MemRef_call2266.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1257.2
  %_p_scalar_267.2 = load double, double* %polly.access.Packed_MemRef_call2266.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_271.2, %_p_scalar_267.2
  %273 = shl nuw nsw i64 %polly.indvar253.2, 3
  %scevgep273.2 = getelementptr i8, i8* %scevgep272.2, i64 %273
  %scevgep273274.2 = bitcast i8* %scevgep273.2 to double*
  %_p_scalar_275.2 = load double, double* %scevgep273274.2, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_275.2
  store double %p_add42.i118.2, double* %scevgep273274.2, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next254.2 = add nuw nsw i64 %polly.indvar253.2, 1
  %exitcond858.2.not = icmp eq i64 %polly.indvar_next254.2, %indvars.iv.2
  br i1 %exitcond858.2.not, label %polly.loop_exit252.2, label %polly.loop_header250.2, !llvm.loop !119

polly.loop_exit252.2:                             ; preds = %polly.loop_header250.2
  %polly.indvar_next248.2 = add nuw nsw i64 %polly.indvar247.2, 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond859.2.not = icmp eq i64 %polly.indvar_next248.2, 80
  br i1 %exitcond859.2.not, label %polly.loop_header244.3, label %polly.loop_header244.2

polly.loop_header244.3:                           ; preds = %polly.loop_exit252.2, %polly.loop_exit252.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %polly.loop_exit252.3 ], [ 1, %polly.loop_exit252.2 ]
  %polly.indvar247.3 = phi i64 [ %polly.indvar_next248.3, %polly.loop_exit252.3 ], [ 0, %polly.loop_exit252.2 ]
  %274 = add nuw i64 %polly.indvar247.3, 1
  %275 = mul nuw nsw i64 %polly.indvar247.3, 640
  %scevgep272.3 = getelementptr i8, i8* %call, i64 %275
  %polly.access.mul.Packed_MemRef_call2260.3 = shl nsw i64 %polly.indvar247.3, 2
  %polly.access.add.Packed_MemRef_call2261.3 = or i64 %polly.access.mul.Packed_MemRef_call2260.3, 3
  %polly.access.Packed_MemRef_call2262.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.3
  %_p_scalar_263.3 = load double, double* %polly.access.Packed_MemRef_call2262.3, align 8
  %polly.access.Packed_MemRef_call1270.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2261.3
  %_p_scalar_271.3 = load double, double* %polly.access.Packed_MemRef_call1270.3, align 8
  %min.iters.check1495 = icmp ult i64 %polly.indvar247.3, 4
  br i1 %min.iters.check1495, label %polly.loop_header250.3.preheader, label %vector.ph1496

vector.ph1496:                                    ; preds = %polly.loop_header244.3
  %n.mod.vf1497 = and i64 %274, 3
  %276 = icmp eq i64 %n.mod.vf1497, 0
  %277 = select i1 %276, i64 4, i64 %n.mod.vf1497
  %n.vec1498 = sub i64 %274, %277
  %broadcast.splatinsert1505 = insertelement <4 x double> poison, double %_p_scalar_263.3, i32 0
  %broadcast.splat1506 = shufflevector <4 x double> %broadcast.splatinsert1505, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1509 = insertelement <4 x double> poison, double %_p_scalar_271.3, i32 0
  %broadcast.splat1510 = shufflevector <4 x double> %broadcast.splatinsert1509, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1494

vector.body1494:                                  ; preds = %vector.body1494, %vector.ph1496
  %index1499 = phi i64 [ 0, %vector.ph1496 ], [ %index.next1500, %vector.body1494 ]
  %278 = shl nsw i64 %index1499, 2
  %279 = or i64 %278, 3
  %280 = getelementptr double, double* %Packed_MemRef_call1, i64 %279
  %281 = bitcast double* %280 to <16 x double>*
  %wide.vec1503 = load <16 x double>, <16 x double>* %281, align 8
  %strided.vec1504 = shufflevector <16 x double> %wide.vec1503, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %282 = fmul fast <4 x double> %broadcast.splat1506, %strided.vec1504
  %283 = getelementptr double, double* %Packed_MemRef_call2, i64 %279
  %284 = bitcast double* %283 to <16 x double>*
  %wide.vec1507 = load <16 x double>, <16 x double>* %284, align 8
  %strided.vec1508 = shufflevector <16 x double> %wide.vec1507, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %285 = fmul fast <4 x double> %broadcast.splat1510, %strided.vec1508
  %286 = shl nuw nsw i64 %index1499, 3
  %287 = getelementptr i8, i8* %scevgep272.3, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  %wide.load1511 = load <4 x double>, <4 x double>* %288, align 8, !alias.scope !72, !noalias !74
  %289 = fadd fast <4 x double> %285, %282
  %290 = fmul fast <4 x double> %289, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %291 = fadd fast <4 x double> %290, %wide.load1511
  %292 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %291, <4 x double>* %292, align 8, !alias.scope !72, !noalias !74
  %index.next1500 = add i64 %index1499, 4
  %293 = icmp eq i64 %index.next1500, %n.vec1498
  br i1 %293, label %polly.loop_header250.3.preheader, label %vector.body1494, !llvm.loop !120

polly.loop_header250.3.preheader:                 ; preds = %vector.body1494, %polly.loop_header244.3
  %polly.indvar253.3.ph = phi i64 [ 0, %polly.loop_header244.3 ], [ %n.vec1498, %vector.body1494 ]
  br label %polly.loop_header250.3

polly.loop_header250.3:                           ; preds = %polly.loop_header250.3.preheader, %polly.loop_header250.3
  %polly.indvar253.3 = phi i64 [ %polly.indvar_next254.3, %polly.loop_header250.3 ], [ %polly.indvar253.3.ph, %polly.loop_header250.3.preheader ]
  %polly.access.mul.Packed_MemRef_call1256.3 = shl nsw i64 %polly.indvar253.3, 2
  %polly.access.add.Packed_MemRef_call1257.3 = or i64 %polly.access.mul.Packed_MemRef_call1256.3, 3
  %polly.access.Packed_MemRef_call1258.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.3
  %_p_scalar_259.3 = load double, double* %polly.access.Packed_MemRef_call1258.3, align 8
  %p_mul27.i112.3 = fmul fast double %_p_scalar_263.3, %_p_scalar_259.3
  %polly.access.Packed_MemRef_call2266.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1257.3
  %_p_scalar_267.3 = load double, double* %polly.access.Packed_MemRef_call2266.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_271.3, %_p_scalar_267.3
  %294 = shl nuw nsw i64 %polly.indvar253.3, 3
  %scevgep273.3 = getelementptr i8, i8* %scevgep272.3, i64 %294
  %scevgep273274.3 = bitcast i8* %scevgep273.3 to double*
  %_p_scalar_275.3 = load double, double* %scevgep273274.3, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_275.3
  store double %p_add42.i118.3, double* %scevgep273274.3, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next254.3 = add nuw nsw i64 %polly.indvar253.3, 1
  %exitcond858.3.not = icmp eq i64 %polly.indvar_next254.3, %indvars.iv.3
  br i1 %exitcond858.3.not, label %polly.loop_exit252.3, label %polly.loop_header250.3, !llvm.loop !121

polly.loop_exit252.3:                             ; preds = %polly.loop_header250.3
  %polly.indvar_next248.3 = add nuw nsw i64 %polly.indvar247.3, 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond859.3.not = icmp eq i64 %polly.indvar_next248.3, 80
  br i1 %exitcond859.3.not, label %polly.loop_exit246.3, label %polly.loop_header244.3

polly.loop_exit246.3:                             ; preds = %polly.loop_exit252.3
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next204, 15
  br i1 %exitcond861.not, label %polly.exiting, label %polly.loop_header200

polly.loop_header426.1:                           ; preds = %polly.loop_exit434, %polly.loop_exit434.1
  %indvars.iv872.1 = phi i64 [ %indvars.iv.next873.1, %polly.loop_exit434.1 ], [ 1, %polly.loop_exit434 ]
  %polly.indvar429.1 = phi i64 [ %polly.indvar_next430.1, %polly.loop_exit434.1 ], [ 0, %polly.loop_exit434 ]
  %295 = add nuw i64 %polly.indvar429.1, 1
  %296 = mul nuw nsw i64 %polly.indvar429.1, 640
  %scevgep454.1 = getelementptr i8, i8* %call, i64 %296
  %polly.access.mul.Packed_MemRef_call2283442.1 = shl nsw i64 %polly.indvar429.1, 2
  %polly.access.add.Packed_MemRef_call2283443.1 = or i64 %polly.access.mul.Packed_MemRef_call2283442.1, 1
  %polly.access.Packed_MemRef_call2283444.1 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.add.Packed_MemRef_call2283443.1
  %_p_scalar_445.1 = load double, double* %polly.access.Packed_MemRef_call2283444.1, align 8
  %polly.access.Packed_MemRef_call1281452.1 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.add.Packed_MemRef_call2283443.1
  %_p_scalar_453.1 = load double, double* %polly.access.Packed_MemRef_call1281452.1, align 8
  %min.iters.check1429 = icmp ult i64 %polly.indvar429.1, 4
  br i1 %min.iters.check1429, label %polly.loop_header432.1.preheader, label %vector.ph1430

vector.ph1430:                                    ; preds = %polly.loop_header426.1
  %n.mod.vf1431 = and i64 %295, 3
  %297 = icmp eq i64 %n.mod.vf1431, 0
  %298 = select i1 %297, i64 4, i64 %n.mod.vf1431
  %n.vec1432 = sub i64 %295, %298
  %broadcast.splatinsert1439 = insertelement <4 x double> poison, double %_p_scalar_445.1, i32 0
  %broadcast.splat1440 = shufflevector <4 x double> %broadcast.splatinsert1439, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1443 = insertelement <4 x double> poison, double %_p_scalar_453.1, i32 0
  %broadcast.splat1444 = shufflevector <4 x double> %broadcast.splatinsert1443, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1428

vector.body1428:                                  ; preds = %vector.body1428, %vector.ph1430
  %index1433 = phi i64 [ 0, %vector.ph1430 ], [ %index.next1434, %vector.body1428 ]
  %299 = shl nsw i64 %index1433, 2
  %300 = or i64 %299, 1
  %301 = getelementptr double, double* %Packed_MemRef_call1281, i64 %300
  %302 = bitcast double* %301 to <16 x double>*
  %wide.vec1437 = load <16 x double>, <16 x double>* %302, align 8
  %strided.vec1438 = shufflevector <16 x double> %wide.vec1437, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %303 = fmul fast <4 x double> %broadcast.splat1440, %strided.vec1438
  %304 = getelementptr double, double* %Packed_MemRef_call2283, i64 %300
  %305 = bitcast double* %304 to <16 x double>*
  %wide.vec1441 = load <16 x double>, <16 x double>* %305, align 8
  %strided.vec1442 = shufflevector <16 x double> %wide.vec1441, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %306 = fmul fast <4 x double> %broadcast.splat1444, %strided.vec1442
  %307 = shl nuw nsw i64 %index1433, 3
  %308 = getelementptr i8, i8* %scevgep454.1, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  %wide.load1445 = load <4 x double>, <4 x double>* %309, align 8, !alias.scope !84, !noalias !86
  %310 = fadd fast <4 x double> %306, %303
  %311 = fmul fast <4 x double> %310, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %312 = fadd fast <4 x double> %311, %wide.load1445
  %313 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %312, <4 x double>* %313, align 8, !alias.scope !84, !noalias !86
  %index.next1434 = add i64 %index1433, 4
  %314 = icmp eq i64 %index.next1434, %n.vec1432
  br i1 %314, label %polly.loop_header432.1.preheader, label %vector.body1428, !llvm.loop !122

polly.loop_header432.1.preheader:                 ; preds = %vector.body1428, %polly.loop_header426.1
  %polly.indvar435.1.ph = phi i64 [ 0, %polly.loop_header426.1 ], [ %n.vec1432, %vector.body1428 ]
  br label %polly.loop_header432.1

polly.loop_header432.1:                           ; preds = %polly.loop_header432.1.preheader, %polly.loop_header432.1
  %polly.indvar435.1 = phi i64 [ %polly.indvar_next436.1, %polly.loop_header432.1 ], [ %polly.indvar435.1.ph, %polly.loop_header432.1.preheader ]
  %polly.access.mul.Packed_MemRef_call1281438.1 = shl nsw i64 %polly.indvar435.1, 2
  %polly.access.add.Packed_MemRef_call1281439.1 = or i64 %polly.access.mul.Packed_MemRef_call1281438.1, 1
  %polly.access.Packed_MemRef_call1281440.1 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.add.Packed_MemRef_call1281439.1
  %_p_scalar_441.1 = load double, double* %polly.access.Packed_MemRef_call1281440.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_445.1, %_p_scalar_441.1
  %polly.access.Packed_MemRef_call2283448.1 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.add.Packed_MemRef_call1281439.1
  %_p_scalar_449.1 = load double, double* %polly.access.Packed_MemRef_call2283448.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_453.1, %_p_scalar_449.1
  %315 = shl nuw nsw i64 %polly.indvar435.1, 3
  %scevgep455.1 = getelementptr i8, i8* %scevgep454.1, i64 %315
  %scevgep455456.1 = bitcast i8* %scevgep455.1 to double*
  %_p_scalar_457.1 = load double, double* %scevgep455456.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_457.1
  store double %p_add42.i79.1, double* %scevgep455456.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next436.1 = add nuw nsw i64 %polly.indvar435.1, 1
  %exitcond874.1.not = icmp eq i64 %polly.indvar_next436.1, %indvars.iv872.1
  br i1 %exitcond874.1.not, label %polly.loop_exit434.1, label %polly.loop_header432.1, !llvm.loop !123

polly.loop_exit434.1:                             ; preds = %polly.loop_header432.1
  %polly.indvar_next430.1 = add nuw nsw i64 %polly.indvar429.1, 1
  %indvars.iv.next873.1 = add nuw nsw i64 %indvars.iv872.1, 1
  %exitcond875.1.not = icmp eq i64 %polly.indvar_next430.1, 80
  br i1 %exitcond875.1.not, label %polly.loop_header426.2, label %polly.loop_header426.1

polly.loop_header426.2:                           ; preds = %polly.loop_exit434.1, %polly.loop_exit434.2
  %indvars.iv872.2 = phi i64 [ %indvars.iv.next873.2, %polly.loop_exit434.2 ], [ 1, %polly.loop_exit434.1 ]
  %polly.indvar429.2 = phi i64 [ %polly.indvar_next430.2, %polly.loop_exit434.2 ], [ 0, %polly.loop_exit434.1 ]
  %316 = add nuw i64 %polly.indvar429.2, 1
  %317 = mul nuw nsw i64 %polly.indvar429.2, 640
  %scevgep454.2 = getelementptr i8, i8* %call, i64 %317
  %polly.access.mul.Packed_MemRef_call2283442.2 = shl nsw i64 %polly.indvar429.2, 2
  %polly.access.add.Packed_MemRef_call2283443.2 = or i64 %polly.access.mul.Packed_MemRef_call2283442.2, 2
  %polly.access.Packed_MemRef_call2283444.2 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.add.Packed_MemRef_call2283443.2
  %_p_scalar_445.2 = load double, double* %polly.access.Packed_MemRef_call2283444.2, align 8
  %polly.access.Packed_MemRef_call1281452.2 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.add.Packed_MemRef_call2283443.2
  %_p_scalar_453.2 = load double, double* %polly.access.Packed_MemRef_call1281452.2, align 8
  %min.iters.check1409 = icmp ult i64 %polly.indvar429.2, 4
  br i1 %min.iters.check1409, label %polly.loop_header432.2.preheader, label %vector.ph1410

vector.ph1410:                                    ; preds = %polly.loop_header426.2
  %n.mod.vf1411 = and i64 %316, 3
  %318 = icmp eq i64 %n.mod.vf1411, 0
  %319 = select i1 %318, i64 4, i64 %n.mod.vf1411
  %n.vec1412 = sub i64 %316, %319
  %broadcast.splatinsert1419 = insertelement <4 x double> poison, double %_p_scalar_445.2, i32 0
  %broadcast.splat1420 = shufflevector <4 x double> %broadcast.splatinsert1419, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1423 = insertelement <4 x double> poison, double %_p_scalar_453.2, i32 0
  %broadcast.splat1424 = shufflevector <4 x double> %broadcast.splatinsert1423, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1408

vector.body1408:                                  ; preds = %vector.body1408, %vector.ph1410
  %index1413 = phi i64 [ 0, %vector.ph1410 ], [ %index.next1414, %vector.body1408 ]
  %320 = shl nsw i64 %index1413, 2
  %321 = or i64 %320, 2
  %322 = getelementptr double, double* %Packed_MemRef_call1281, i64 %321
  %323 = bitcast double* %322 to <16 x double>*
  %wide.vec1417 = load <16 x double>, <16 x double>* %323, align 8
  %strided.vec1418 = shufflevector <16 x double> %wide.vec1417, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %324 = fmul fast <4 x double> %broadcast.splat1420, %strided.vec1418
  %325 = getelementptr double, double* %Packed_MemRef_call2283, i64 %321
  %326 = bitcast double* %325 to <16 x double>*
  %wide.vec1421 = load <16 x double>, <16 x double>* %326, align 8
  %strided.vec1422 = shufflevector <16 x double> %wide.vec1421, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %327 = fmul fast <4 x double> %broadcast.splat1424, %strided.vec1422
  %328 = shl nuw nsw i64 %index1413, 3
  %329 = getelementptr i8, i8* %scevgep454.2, i64 %328
  %330 = bitcast i8* %329 to <4 x double>*
  %wide.load1425 = load <4 x double>, <4 x double>* %330, align 8, !alias.scope !84, !noalias !86
  %331 = fadd fast <4 x double> %327, %324
  %332 = fmul fast <4 x double> %331, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %333 = fadd fast <4 x double> %332, %wide.load1425
  %334 = bitcast i8* %329 to <4 x double>*
  store <4 x double> %333, <4 x double>* %334, align 8, !alias.scope !84, !noalias !86
  %index.next1414 = add i64 %index1413, 4
  %335 = icmp eq i64 %index.next1414, %n.vec1412
  br i1 %335, label %polly.loop_header432.2.preheader, label %vector.body1408, !llvm.loop !124

polly.loop_header432.2.preheader:                 ; preds = %vector.body1408, %polly.loop_header426.2
  %polly.indvar435.2.ph = phi i64 [ 0, %polly.loop_header426.2 ], [ %n.vec1412, %vector.body1408 ]
  br label %polly.loop_header432.2

polly.loop_header432.2:                           ; preds = %polly.loop_header432.2.preheader, %polly.loop_header432.2
  %polly.indvar435.2 = phi i64 [ %polly.indvar_next436.2, %polly.loop_header432.2 ], [ %polly.indvar435.2.ph, %polly.loop_header432.2.preheader ]
  %polly.access.mul.Packed_MemRef_call1281438.2 = shl nsw i64 %polly.indvar435.2, 2
  %polly.access.add.Packed_MemRef_call1281439.2 = or i64 %polly.access.mul.Packed_MemRef_call1281438.2, 2
  %polly.access.Packed_MemRef_call1281440.2 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.add.Packed_MemRef_call1281439.2
  %_p_scalar_441.2 = load double, double* %polly.access.Packed_MemRef_call1281440.2, align 8
  %p_mul27.i73.2 = fmul fast double %_p_scalar_445.2, %_p_scalar_441.2
  %polly.access.Packed_MemRef_call2283448.2 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.add.Packed_MemRef_call1281439.2
  %_p_scalar_449.2 = load double, double* %polly.access.Packed_MemRef_call2283448.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_453.2, %_p_scalar_449.2
  %336 = shl nuw nsw i64 %polly.indvar435.2, 3
  %scevgep455.2 = getelementptr i8, i8* %scevgep454.2, i64 %336
  %scevgep455456.2 = bitcast i8* %scevgep455.2 to double*
  %_p_scalar_457.2 = load double, double* %scevgep455456.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_457.2
  store double %p_add42.i79.2, double* %scevgep455456.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next436.2 = add nuw nsw i64 %polly.indvar435.2, 1
  %exitcond874.2.not = icmp eq i64 %polly.indvar_next436.2, %indvars.iv872.2
  br i1 %exitcond874.2.not, label %polly.loop_exit434.2, label %polly.loop_header432.2, !llvm.loop !125

polly.loop_exit434.2:                             ; preds = %polly.loop_header432.2
  %polly.indvar_next430.2 = add nuw nsw i64 %polly.indvar429.2, 1
  %indvars.iv.next873.2 = add nuw nsw i64 %indvars.iv872.2, 1
  %exitcond875.2.not = icmp eq i64 %polly.indvar_next430.2, 80
  br i1 %exitcond875.2.not, label %polly.loop_header426.3, label %polly.loop_header426.2

polly.loop_header426.3:                           ; preds = %polly.loop_exit434.2, %polly.loop_exit434.3
  %indvars.iv872.3 = phi i64 [ %indvars.iv.next873.3, %polly.loop_exit434.3 ], [ 1, %polly.loop_exit434.2 ]
  %polly.indvar429.3 = phi i64 [ %polly.indvar_next430.3, %polly.loop_exit434.3 ], [ 0, %polly.loop_exit434.2 ]
  %337 = add nuw i64 %polly.indvar429.3, 1
  %338 = mul nuw nsw i64 %polly.indvar429.3, 640
  %scevgep454.3 = getelementptr i8, i8* %call, i64 %338
  %polly.access.mul.Packed_MemRef_call2283442.3 = shl nsw i64 %polly.indvar429.3, 2
  %polly.access.add.Packed_MemRef_call2283443.3 = or i64 %polly.access.mul.Packed_MemRef_call2283442.3, 3
  %polly.access.Packed_MemRef_call2283444.3 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.add.Packed_MemRef_call2283443.3
  %_p_scalar_445.3 = load double, double* %polly.access.Packed_MemRef_call2283444.3, align 8
  %polly.access.Packed_MemRef_call1281452.3 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.add.Packed_MemRef_call2283443.3
  %_p_scalar_453.3 = load double, double* %polly.access.Packed_MemRef_call1281452.3, align 8
  %min.iters.check1389 = icmp ult i64 %polly.indvar429.3, 4
  br i1 %min.iters.check1389, label %polly.loop_header432.3.preheader, label %vector.ph1390

vector.ph1390:                                    ; preds = %polly.loop_header426.3
  %n.mod.vf1391 = and i64 %337, 3
  %339 = icmp eq i64 %n.mod.vf1391, 0
  %340 = select i1 %339, i64 4, i64 %n.mod.vf1391
  %n.vec1392 = sub i64 %337, %340
  %broadcast.splatinsert1399 = insertelement <4 x double> poison, double %_p_scalar_445.3, i32 0
  %broadcast.splat1400 = shufflevector <4 x double> %broadcast.splatinsert1399, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1403 = insertelement <4 x double> poison, double %_p_scalar_453.3, i32 0
  %broadcast.splat1404 = shufflevector <4 x double> %broadcast.splatinsert1403, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1388

vector.body1388:                                  ; preds = %vector.body1388, %vector.ph1390
  %index1393 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1394, %vector.body1388 ]
  %341 = shl nsw i64 %index1393, 2
  %342 = or i64 %341, 3
  %343 = getelementptr double, double* %Packed_MemRef_call1281, i64 %342
  %344 = bitcast double* %343 to <16 x double>*
  %wide.vec1397 = load <16 x double>, <16 x double>* %344, align 8
  %strided.vec1398 = shufflevector <16 x double> %wide.vec1397, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %345 = fmul fast <4 x double> %broadcast.splat1400, %strided.vec1398
  %346 = getelementptr double, double* %Packed_MemRef_call2283, i64 %342
  %347 = bitcast double* %346 to <16 x double>*
  %wide.vec1401 = load <16 x double>, <16 x double>* %347, align 8
  %strided.vec1402 = shufflevector <16 x double> %wide.vec1401, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %348 = fmul fast <4 x double> %broadcast.splat1404, %strided.vec1402
  %349 = shl nuw nsw i64 %index1393, 3
  %350 = getelementptr i8, i8* %scevgep454.3, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  %wide.load1405 = load <4 x double>, <4 x double>* %351, align 8, !alias.scope !84, !noalias !86
  %352 = fadd fast <4 x double> %348, %345
  %353 = fmul fast <4 x double> %352, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %354 = fadd fast <4 x double> %353, %wide.load1405
  %355 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %354, <4 x double>* %355, align 8, !alias.scope !84, !noalias !86
  %index.next1394 = add i64 %index1393, 4
  %356 = icmp eq i64 %index.next1394, %n.vec1392
  br i1 %356, label %polly.loop_header432.3.preheader, label %vector.body1388, !llvm.loop !126

polly.loop_header432.3.preheader:                 ; preds = %vector.body1388, %polly.loop_header426.3
  %polly.indvar435.3.ph = phi i64 [ 0, %polly.loop_header426.3 ], [ %n.vec1392, %vector.body1388 ]
  br label %polly.loop_header432.3

polly.loop_header432.3:                           ; preds = %polly.loop_header432.3.preheader, %polly.loop_header432.3
  %polly.indvar435.3 = phi i64 [ %polly.indvar_next436.3, %polly.loop_header432.3 ], [ %polly.indvar435.3.ph, %polly.loop_header432.3.preheader ]
  %polly.access.mul.Packed_MemRef_call1281438.3 = shl nsw i64 %polly.indvar435.3, 2
  %polly.access.add.Packed_MemRef_call1281439.3 = or i64 %polly.access.mul.Packed_MemRef_call1281438.3, 3
  %polly.access.Packed_MemRef_call1281440.3 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.add.Packed_MemRef_call1281439.3
  %_p_scalar_441.3 = load double, double* %polly.access.Packed_MemRef_call1281440.3, align 8
  %p_mul27.i73.3 = fmul fast double %_p_scalar_445.3, %_p_scalar_441.3
  %polly.access.Packed_MemRef_call2283448.3 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.add.Packed_MemRef_call1281439.3
  %_p_scalar_449.3 = load double, double* %polly.access.Packed_MemRef_call2283448.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_453.3, %_p_scalar_449.3
  %357 = shl nuw nsw i64 %polly.indvar435.3, 3
  %scevgep455.3 = getelementptr i8, i8* %scevgep454.3, i64 %357
  %scevgep455456.3 = bitcast i8* %scevgep455.3 to double*
  %_p_scalar_457.3 = load double, double* %scevgep455456.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_457.3
  store double %p_add42.i79.3, double* %scevgep455456.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next436.3 = add nuw nsw i64 %polly.indvar435.3, 1
  %exitcond874.3.not = icmp eq i64 %polly.indvar_next436.3, %indvars.iv872.3
  br i1 %exitcond874.3.not, label %polly.loop_exit434.3, label %polly.loop_header432.3, !llvm.loop !127

polly.loop_exit434.3:                             ; preds = %polly.loop_header432.3
  %polly.indvar_next430.3 = add nuw nsw i64 %polly.indvar429.3, 1
  %indvars.iv.next873.3 = add nuw nsw i64 %indvars.iv872.3, 1
  %exitcond875.3.not = icmp eq i64 %polly.indvar_next430.3, 80
  br i1 %exitcond875.3.not, label %polly.loop_exit428.3, label %polly.loop_header426.3

polly.loop_exit428.3:                             ; preds = %polly.loop_exit434.3
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next386, 15
  br i1 %exitcond877.not, label %polly.exiting279, label %polly.loop_header382

polly.loop_header608.1:                           ; preds = %polly.loop_exit616, %polly.loop_exit616.1
  %indvars.iv888.1 = phi i64 [ %indvars.iv.next889.1, %polly.loop_exit616.1 ], [ 1, %polly.loop_exit616 ]
  %polly.indvar611.1 = phi i64 [ %polly.indvar_next612.1, %polly.loop_exit616.1 ], [ 0, %polly.loop_exit616 ]
  %358 = add nuw i64 %polly.indvar611.1, 1
  %359 = mul nuw nsw i64 %polly.indvar611.1, 640
  %scevgep636.1 = getelementptr i8, i8* %call, i64 %359
  %polly.access.mul.Packed_MemRef_call2465624.1 = shl nsw i64 %polly.indvar611.1, 2
  %polly.access.add.Packed_MemRef_call2465625.1 = or i64 %polly.access.mul.Packed_MemRef_call2465624.1, 1
  %polly.access.Packed_MemRef_call2465626.1 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.add.Packed_MemRef_call2465625.1
  %_p_scalar_627.1 = load double, double* %polly.access.Packed_MemRef_call2465626.1, align 8
  %polly.access.Packed_MemRef_call1463634.1 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call2465625.1
  %_p_scalar_635.1 = load double, double* %polly.access.Packed_MemRef_call1463634.1, align 8
  %min.iters.check1323 = icmp ult i64 %polly.indvar611.1, 4
  br i1 %min.iters.check1323, label %polly.loop_header614.1.preheader, label %vector.ph1324

vector.ph1324:                                    ; preds = %polly.loop_header608.1
  %n.mod.vf1325 = and i64 %358, 3
  %360 = icmp eq i64 %n.mod.vf1325, 0
  %361 = select i1 %360, i64 4, i64 %n.mod.vf1325
  %n.vec1326 = sub i64 %358, %361
  %broadcast.splatinsert1333 = insertelement <4 x double> poison, double %_p_scalar_627.1, i32 0
  %broadcast.splat1334 = shufflevector <4 x double> %broadcast.splatinsert1333, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_635.1, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1322

vector.body1322:                                  ; preds = %vector.body1322, %vector.ph1324
  %index1327 = phi i64 [ 0, %vector.ph1324 ], [ %index.next1328, %vector.body1322 ]
  %362 = shl nsw i64 %index1327, 2
  %363 = or i64 %362, 1
  %364 = getelementptr double, double* %Packed_MemRef_call1463, i64 %363
  %365 = bitcast double* %364 to <16 x double>*
  %wide.vec1331 = load <16 x double>, <16 x double>* %365, align 8
  %strided.vec1332 = shufflevector <16 x double> %wide.vec1331, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %366 = fmul fast <4 x double> %broadcast.splat1334, %strided.vec1332
  %367 = getelementptr double, double* %Packed_MemRef_call2465, i64 %363
  %368 = bitcast double* %367 to <16 x double>*
  %wide.vec1335 = load <16 x double>, <16 x double>* %368, align 8
  %strided.vec1336 = shufflevector <16 x double> %wide.vec1335, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %369 = fmul fast <4 x double> %broadcast.splat1338, %strided.vec1336
  %370 = shl nuw nsw i64 %index1327, 3
  %371 = getelementptr i8, i8* %scevgep636.1, i64 %370
  %372 = bitcast i8* %371 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %372, align 8, !alias.scope !95, !noalias !97
  %373 = fadd fast <4 x double> %369, %366
  %374 = fmul fast <4 x double> %373, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %375 = fadd fast <4 x double> %374, %wide.load1339
  %376 = bitcast i8* %371 to <4 x double>*
  store <4 x double> %375, <4 x double>* %376, align 8, !alias.scope !95, !noalias !97
  %index.next1328 = add i64 %index1327, 4
  %377 = icmp eq i64 %index.next1328, %n.vec1326
  br i1 %377, label %polly.loop_header614.1.preheader, label %vector.body1322, !llvm.loop !128

polly.loop_header614.1.preheader:                 ; preds = %vector.body1322, %polly.loop_header608.1
  %polly.indvar617.1.ph = phi i64 [ 0, %polly.loop_header608.1 ], [ %n.vec1326, %vector.body1322 ]
  br label %polly.loop_header614.1

polly.loop_header614.1:                           ; preds = %polly.loop_header614.1.preheader, %polly.loop_header614.1
  %polly.indvar617.1 = phi i64 [ %polly.indvar_next618.1, %polly.loop_header614.1 ], [ %polly.indvar617.1.ph, %polly.loop_header614.1.preheader ]
  %polly.access.mul.Packed_MemRef_call1463620.1 = shl nsw i64 %polly.indvar617.1, 2
  %polly.access.add.Packed_MemRef_call1463621.1 = or i64 %polly.access.mul.Packed_MemRef_call1463620.1, 1
  %polly.access.Packed_MemRef_call1463622.1 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463621.1
  %_p_scalar_623.1 = load double, double* %polly.access.Packed_MemRef_call1463622.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_627.1, %_p_scalar_623.1
  %polly.access.Packed_MemRef_call2465630.1 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.add.Packed_MemRef_call1463621.1
  %_p_scalar_631.1 = load double, double* %polly.access.Packed_MemRef_call2465630.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_635.1, %_p_scalar_631.1
  %378 = shl nuw nsw i64 %polly.indvar617.1, 3
  %scevgep637.1 = getelementptr i8, i8* %scevgep636.1, i64 %378
  %scevgep637638.1 = bitcast i8* %scevgep637.1 to double*
  %_p_scalar_639.1 = load double, double* %scevgep637638.1, align 8, !alias.scope !95, !noalias !97
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_639.1
  store double %p_add42.i.1, double* %scevgep637638.1, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next618.1 = add nuw nsw i64 %polly.indvar617.1, 1
  %exitcond890.1.not = icmp eq i64 %polly.indvar_next618.1, %indvars.iv888.1
  br i1 %exitcond890.1.not, label %polly.loop_exit616.1, label %polly.loop_header614.1, !llvm.loop !129

polly.loop_exit616.1:                             ; preds = %polly.loop_header614.1
  %polly.indvar_next612.1 = add nuw nsw i64 %polly.indvar611.1, 1
  %indvars.iv.next889.1 = add nuw nsw i64 %indvars.iv888.1, 1
  %exitcond891.1.not = icmp eq i64 %polly.indvar_next612.1, 80
  br i1 %exitcond891.1.not, label %polly.loop_header608.2, label %polly.loop_header608.1

polly.loop_header608.2:                           ; preds = %polly.loop_exit616.1, %polly.loop_exit616.2
  %indvars.iv888.2 = phi i64 [ %indvars.iv.next889.2, %polly.loop_exit616.2 ], [ 1, %polly.loop_exit616.1 ]
  %polly.indvar611.2 = phi i64 [ %polly.indvar_next612.2, %polly.loop_exit616.2 ], [ 0, %polly.loop_exit616.1 ]
  %379 = add nuw i64 %polly.indvar611.2, 1
  %380 = mul nuw nsw i64 %polly.indvar611.2, 640
  %scevgep636.2 = getelementptr i8, i8* %call, i64 %380
  %polly.access.mul.Packed_MemRef_call2465624.2 = shl nsw i64 %polly.indvar611.2, 2
  %polly.access.add.Packed_MemRef_call2465625.2 = or i64 %polly.access.mul.Packed_MemRef_call2465624.2, 2
  %polly.access.Packed_MemRef_call2465626.2 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.add.Packed_MemRef_call2465625.2
  %_p_scalar_627.2 = load double, double* %polly.access.Packed_MemRef_call2465626.2, align 8
  %polly.access.Packed_MemRef_call1463634.2 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call2465625.2
  %_p_scalar_635.2 = load double, double* %polly.access.Packed_MemRef_call1463634.2, align 8
  %min.iters.check1303 = icmp ult i64 %polly.indvar611.2, 4
  br i1 %min.iters.check1303, label %polly.loop_header614.2.preheader, label %vector.ph1304

vector.ph1304:                                    ; preds = %polly.loop_header608.2
  %n.mod.vf1305 = and i64 %379, 3
  %381 = icmp eq i64 %n.mod.vf1305, 0
  %382 = select i1 %381, i64 4, i64 %n.mod.vf1305
  %n.vec1306 = sub i64 %379, %382
  %broadcast.splatinsert1313 = insertelement <4 x double> poison, double %_p_scalar_627.2, i32 0
  %broadcast.splat1314 = shufflevector <4 x double> %broadcast.splatinsert1313, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1317 = insertelement <4 x double> poison, double %_p_scalar_635.2, i32 0
  %broadcast.splat1318 = shufflevector <4 x double> %broadcast.splatinsert1317, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1302

vector.body1302:                                  ; preds = %vector.body1302, %vector.ph1304
  %index1307 = phi i64 [ 0, %vector.ph1304 ], [ %index.next1308, %vector.body1302 ]
  %383 = shl nsw i64 %index1307, 2
  %384 = or i64 %383, 2
  %385 = getelementptr double, double* %Packed_MemRef_call1463, i64 %384
  %386 = bitcast double* %385 to <16 x double>*
  %wide.vec1311 = load <16 x double>, <16 x double>* %386, align 8
  %strided.vec1312 = shufflevector <16 x double> %wide.vec1311, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %387 = fmul fast <4 x double> %broadcast.splat1314, %strided.vec1312
  %388 = getelementptr double, double* %Packed_MemRef_call2465, i64 %384
  %389 = bitcast double* %388 to <16 x double>*
  %wide.vec1315 = load <16 x double>, <16 x double>* %389, align 8
  %strided.vec1316 = shufflevector <16 x double> %wide.vec1315, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %390 = fmul fast <4 x double> %broadcast.splat1318, %strided.vec1316
  %391 = shl nuw nsw i64 %index1307, 3
  %392 = getelementptr i8, i8* %scevgep636.2, i64 %391
  %393 = bitcast i8* %392 to <4 x double>*
  %wide.load1319 = load <4 x double>, <4 x double>* %393, align 8, !alias.scope !95, !noalias !97
  %394 = fadd fast <4 x double> %390, %387
  %395 = fmul fast <4 x double> %394, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %396 = fadd fast <4 x double> %395, %wide.load1319
  %397 = bitcast i8* %392 to <4 x double>*
  store <4 x double> %396, <4 x double>* %397, align 8, !alias.scope !95, !noalias !97
  %index.next1308 = add i64 %index1307, 4
  %398 = icmp eq i64 %index.next1308, %n.vec1306
  br i1 %398, label %polly.loop_header614.2.preheader, label %vector.body1302, !llvm.loop !130

polly.loop_header614.2.preheader:                 ; preds = %vector.body1302, %polly.loop_header608.2
  %polly.indvar617.2.ph = phi i64 [ 0, %polly.loop_header608.2 ], [ %n.vec1306, %vector.body1302 ]
  br label %polly.loop_header614.2

polly.loop_header614.2:                           ; preds = %polly.loop_header614.2.preheader, %polly.loop_header614.2
  %polly.indvar617.2 = phi i64 [ %polly.indvar_next618.2, %polly.loop_header614.2 ], [ %polly.indvar617.2.ph, %polly.loop_header614.2.preheader ]
  %polly.access.mul.Packed_MemRef_call1463620.2 = shl nsw i64 %polly.indvar617.2, 2
  %polly.access.add.Packed_MemRef_call1463621.2 = or i64 %polly.access.mul.Packed_MemRef_call1463620.2, 2
  %polly.access.Packed_MemRef_call1463622.2 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463621.2
  %_p_scalar_623.2 = load double, double* %polly.access.Packed_MemRef_call1463622.2, align 8
  %p_mul27.i.2 = fmul fast double %_p_scalar_627.2, %_p_scalar_623.2
  %polly.access.Packed_MemRef_call2465630.2 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.add.Packed_MemRef_call1463621.2
  %_p_scalar_631.2 = load double, double* %polly.access.Packed_MemRef_call2465630.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_635.2, %_p_scalar_631.2
  %399 = shl nuw nsw i64 %polly.indvar617.2, 3
  %scevgep637.2 = getelementptr i8, i8* %scevgep636.2, i64 %399
  %scevgep637638.2 = bitcast i8* %scevgep637.2 to double*
  %_p_scalar_639.2 = load double, double* %scevgep637638.2, align 8, !alias.scope !95, !noalias !97
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_639.2
  store double %p_add42.i.2, double* %scevgep637638.2, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next618.2 = add nuw nsw i64 %polly.indvar617.2, 1
  %exitcond890.2.not = icmp eq i64 %polly.indvar_next618.2, %indvars.iv888.2
  br i1 %exitcond890.2.not, label %polly.loop_exit616.2, label %polly.loop_header614.2, !llvm.loop !131

polly.loop_exit616.2:                             ; preds = %polly.loop_header614.2
  %polly.indvar_next612.2 = add nuw nsw i64 %polly.indvar611.2, 1
  %indvars.iv.next889.2 = add nuw nsw i64 %indvars.iv888.2, 1
  %exitcond891.2.not = icmp eq i64 %polly.indvar_next612.2, 80
  br i1 %exitcond891.2.not, label %polly.loop_header608.3, label %polly.loop_header608.2

polly.loop_header608.3:                           ; preds = %polly.loop_exit616.2, %polly.loop_exit616.3
  %indvars.iv888.3 = phi i64 [ %indvars.iv.next889.3, %polly.loop_exit616.3 ], [ 1, %polly.loop_exit616.2 ]
  %polly.indvar611.3 = phi i64 [ %polly.indvar_next612.3, %polly.loop_exit616.3 ], [ 0, %polly.loop_exit616.2 ]
  %400 = add nuw i64 %polly.indvar611.3, 1
  %401 = mul nuw nsw i64 %polly.indvar611.3, 640
  %scevgep636.3 = getelementptr i8, i8* %call, i64 %401
  %polly.access.mul.Packed_MemRef_call2465624.3 = shl nsw i64 %polly.indvar611.3, 2
  %polly.access.add.Packed_MemRef_call2465625.3 = or i64 %polly.access.mul.Packed_MemRef_call2465624.3, 3
  %polly.access.Packed_MemRef_call2465626.3 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.add.Packed_MemRef_call2465625.3
  %_p_scalar_627.3 = load double, double* %polly.access.Packed_MemRef_call2465626.3, align 8
  %polly.access.Packed_MemRef_call1463634.3 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call2465625.3
  %_p_scalar_635.3 = load double, double* %polly.access.Packed_MemRef_call1463634.3, align 8
  %min.iters.check1285 = icmp ult i64 %polly.indvar611.3, 4
  br i1 %min.iters.check1285, label %polly.loop_header614.3.preheader, label %vector.ph1286

vector.ph1286:                                    ; preds = %polly.loop_header608.3
  %n.mod.vf1287 = and i64 %400, 3
  %402 = icmp eq i64 %n.mod.vf1287, 0
  %403 = select i1 %402, i64 4, i64 %n.mod.vf1287
  %n.vec1288 = sub i64 %400, %403
  %broadcast.splatinsert1293 = insertelement <4 x double> poison, double %_p_scalar_627.3, i32 0
  %broadcast.splat1294 = shufflevector <4 x double> %broadcast.splatinsert1293, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1297 = insertelement <4 x double> poison, double %_p_scalar_635.3, i32 0
  %broadcast.splat1298 = shufflevector <4 x double> %broadcast.splatinsert1297, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1284

vector.body1284:                                  ; preds = %vector.body1284, %vector.ph1286
  %index1289 = phi i64 [ 0, %vector.ph1286 ], [ %index.next1290, %vector.body1284 ]
  %404 = shl nsw i64 %index1289, 2
  %405 = or i64 %404, 3
  %406 = getelementptr double, double* %Packed_MemRef_call1463, i64 %405
  %407 = bitcast double* %406 to <16 x double>*
  %wide.vec = load <16 x double>, <16 x double>* %407, align 8
  %strided.vec = shufflevector <16 x double> %wide.vec, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %408 = fmul fast <4 x double> %broadcast.splat1294, %strided.vec
  %409 = getelementptr double, double* %Packed_MemRef_call2465, i64 %405
  %410 = bitcast double* %409 to <16 x double>*
  %wide.vec1295 = load <16 x double>, <16 x double>* %410, align 8
  %strided.vec1296 = shufflevector <16 x double> %wide.vec1295, <16 x double> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %411 = fmul fast <4 x double> %broadcast.splat1298, %strided.vec1296
  %412 = shl nuw nsw i64 %index1289, 3
  %413 = getelementptr i8, i8* %scevgep636.3, i64 %412
  %414 = bitcast i8* %413 to <4 x double>*
  %wide.load1299 = load <4 x double>, <4 x double>* %414, align 8, !alias.scope !95, !noalias !97
  %415 = fadd fast <4 x double> %411, %408
  %416 = fmul fast <4 x double> %415, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %417 = fadd fast <4 x double> %416, %wide.load1299
  %418 = bitcast i8* %413 to <4 x double>*
  store <4 x double> %417, <4 x double>* %418, align 8, !alias.scope !95, !noalias !97
  %index.next1290 = add i64 %index1289, 4
  %419 = icmp eq i64 %index.next1290, %n.vec1288
  br i1 %419, label %polly.loop_header614.3.preheader, label %vector.body1284, !llvm.loop !132

polly.loop_header614.3.preheader:                 ; preds = %vector.body1284, %polly.loop_header608.3
  %polly.indvar617.3.ph = phi i64 [ 0, %polly.loop_header608.3 ], [ %n.vec1288, %vector.body1284 ]
  br label %polly.loop_header614.3

polly.loop_header614.3:                           ; preds = %polly.loop_header614.3.preheader, %polly.loop_header614.3
  %polly.indvar617.3 = phi i64 [ %polly.indvar_next618.3, %polly.loop_header614.3 ], [ %polly.indvar617.3.ph, %polly.loop_header614.3.preheader ]
  %polly.access.mul.Packed_MemRef_call1463620.3 = shl nsw i64 %polly.indvar617.3, 2
  %polly.access.add.Packed_MemRef_call1463621.3 = or i64 %polly.access.mul.Packed_MemRef_call1463620.3, 3
  %polly.access.Packed_MemRef_call1463622.3 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463621.3
  %_p_scalar_623.3 = load double, double* %polly.access.Packed_MemRef_call1463622.3, align 8
  %p_mul27.i.3 = fmul fast double %_p_scalar_627.3, %_p_scalar_623.3
  %polly.access.Packed_MemRef_call2465630.3 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.add.Packed_MemRef_call1463621.3
  %_p_scalar_631.3 = load double, double* %polly.access.Packed_MemRef_call2465630.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_635.3, %_p_scalar_631.3
  %420 = shl nuw nsw i64 %polly.indvar617.3, 3
  %scevgep637.3 = getelementptr i8, i8* %scevgep636.3, i64 %420
  %scevgep637638.3 = bitcast i8* %scevgep637.3 to double*
  %_p_scalar_639.3 = load double, double* %scevgep637638.3, align 8, !alias.scope !95, !noalias !97
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_639.3
  store double %p_add42.i.3, double* %scevgep637638.3, align 8, !alias.scope !95, !noalias !97
  %polly.indvar_next618.3 = add nuw nsw i64 %polly.indvar617.3, 1
  %exitcond890.3.not = icmp eq i64 %polly.indvar_next618.3, %indvars.iv888.3
  br i1 %exitcond890.3.not, label %polly.loop_exit616.3, label %polly.loop_header614.3, !llvm.loop !133

polly.loop_exit616.3:                             ; preds = %polly.loop_header614.3
  %polly.indvar_next612.3 = add nuw nsw i64 %polly.indvar611.3, 1
  %indvars.iv.next889.3 = add nuw nsw i64 %indvars.iv888.3, 1
  %exitcond891.3.not = icmp eq i64 %polly.indvar_next612.3, 80
  br i1 %exitcond891.3.not, label %polly.loop_exit610.3, label %polly.loop_header608.3

polly.loop_exit610.3:                             ; preds = %polly.loop_exit616.3
  %polly.indvar_next568 = add nuw nsw i64 %polly.indvar567, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next568, 15
  br i1 %exitcond893.not, label %polly.exiting461, label %polly.loop_header564

polly.loop_header831.1:                           ; preds = %polly.loop_exit839, %polly.loop_exit839.1
  %polly.indvar834.1 = phi i64 [ %polly.indvar_next835.1, %polly.loop_exit839.1 ], [ 0, %polly.loop_exit839 ]
  %421 = mul nuw nsw i64 %polly.indvar834.1, 480
  %422 = trunc i64 %polly.indvar834.1 to i32
  %broadcast.splatinsert1208 = insertelement <4 x i32> poison, i32 %422, i32 0
  %broadcast.splat1209 = shufflevector <4 x i32> %broadcast.splatinsert1208, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %polly.loop_header831.1
  %index1202 = phi i64 [ 0, %polly.loop_header831.1 ], [ %index.next1203, %vector.body1200 ]
  %vec.ind1206 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header831.1 ], [ %vec.ind.next1207, %vector.body1200 ]
  %423 = add nuw nsw <4 x i64> %vec.ind1206, <i64 32, i64 32, i64 32, i64 32>
  %424 = trunc <4 x i64> %423 to <4 x i32>
  %425 = mul <4 x i32> %broadcast.splat1209, %424
  %426 = add <4 x i32> %425, <i32 1, i32 1, i32 1, i32 1>
  %427 = urem <4 x i32> %426, <i32 80, i32 80, i32 80, i32 80>
  %428 = sitofp <4 x i32> %427 to <4 x double>
  %429 = fmul fast <4 x double> %428, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %430 = extractelement <4 x i64> %423, i32 0
  %431 = shl i64 %430, 3
  %432 = add i64 %431, %421
  %433 = getelementptr i8, i8* %call1, i64 %432
  %434 = bitcast i8* %433 to <4 x double>*
  store <4 x double> %429, <4 x double>* %434, align 8, !alias.scope !109, !noalias !114
  %index.next1203 = add i64 %index1202, 4
  %vec.ind.next1207 = add <4 x i64> %vec.ind1206, <i64 4, i64 4, i64 4, i64 4>
  %435 = icmp eq i64 %index.next1203, 28
  br i1 %435, label %polly.loop_exit839.1, label %vector.body1200, !llvm.loop !134

polly.loop_exit839.1:                             ; preds = %vector.body1200
  %polly.indvar_next835.1 = add nuw nsw i64 %polly.indvar834.1, 1
  %exitcond899.1.not = icmp eq i64 %polly.indvar_next835.1, 32
  br i1 %exitcond899.1.not, label %polly.loop_header831.1919, label %polly.loop_header831.1

polly.loop_header831.1919:                        ; preds = %polly.loop_exit839.1, %polly.loop_exit839.1930
  %polly.indvar834.1918 = phi i64 [ %polly.indvar_next835.1928, %polly.loop_exit839.1930 ], [ 0, %polly.loop_exit839.1 ]
  %436 = add nuw nsw i64 %polly.indvar834.1918, 32
  %437 = mul nuw nsw i64 %436, 480
  %438 = trunc i64 %436 to i32
  %broadcast.splatinsert1222 = insertelement <4 x i32> poison, i32 %438, i32 0
  %broadcast.splat1223 = shufflevector <4 x i32> %broadcast.splatinsert1222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %polly.loop_header831.1919
  %index1214 = phi i64 [ 0, %polly.loop_header831.1919 ], [ %index.next1215, %vector.body1212 ]
  %vec.ind1220 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header831.1919 ], [ %vec.ind.next1221, %vector.body1212 ]
  %439 = mul <4 x i32> %vec.ind1220, %broadcast.splat1223
  %440 = add <4 x i32> %439, <i32 1, i32 1, i32 1, i32 1>
  %441 = urem <4 x i32> %440, <i32 80, i32 80, i32 80, i32 80>
  %442 = sitofp <4 x i32> %441 to <4 x double>
  %443 = fmul fast <4 x double> %442, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %444 = shl i64 %index1214, 3
  %445 = add i64 %444, %437
  %446 = getelementptr i8, i8* %call1, i64 %445
  %447 = bitcast i8* %446 to <4 x double>*
  store <4 x double> %443, <4 x double>* %447, align 8, !alias.scope !109, !noalias !114
  %index.next1215 = add i64 %index1214, 4
  %vec.ind.next1221 = add <4 x i32> %vec.ind1220, <i32 4, i32 4, i32 4, i32 4>
  %448 = icmp eq i64 %index.next1215, 32
  br i1 %448, label %polly.loop_exit839.1930, label %vector.body1212, !llvm.loop !135

polly.loop_exit839.1930:                          ; preds = %vector.body1212
  %polly.indvar_next835.1928 = add nuw nsw i64 %polly.indvar834.1918, 1
  %exitcond899.1929.not = icmp eq i64 %polly.indvar_next835.1928, 32
  br i1 %exitcond899.1929.not, label %polly.loop_header831.1.1, label %polly.loop_header831.1919

polly.loop_header831.1.1:                         ; preds = %polly.loop_exit839.1930, %polly.loop_exit839.1.1
  %polly.indvar834.1.1 = phi i64 [ %polly.indvar_next835.1.1, %polly.loop_exit839.1.1 ], [ 0, %polly.loop_exit839.1930 ]
  %449 = add nuw nsw i64 %polly.indvar834.1.1, 32
  %450 = mul nuw nsw i64 %449, 480
  %451 = trunc i64 %449 to i32
  %broadcast.splatinsert1234 = insertelement <4 x i32> poison, i32 %451, i32 0
  %broadcast.splat1235 = shufflevector <4 x i32> %broadcast.splatinsert1234, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %polly.loop_header831.1.1
  %index1228 = phi i64 [ 0, %polly.loop_header831.1.1 ], [ %index.next1229, %vector.body1226 ]
  %vec.ind1232 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header831.1.1 ], [ %vec.ind.next1233, %vector.body1226 ]
  %452 = add nuw nsw <4 x i64> %vec.ind1232, <i64 32, i64 32, i64 32, i64 32>
  %453 = trunc <4 x i64> %452 to <4 x i32>
  %454 = mul <4 x i32> %broadcast.splat1235, %453
  %455 = add <4 x i32> %454, <i32 1, i32 1, i32 1, i32 1>
  %456 = urem <4 x i32> %455, <i32 80, i32 80, i32 80, i32 80>
  %457 = sitofp <4 x i32> %456 to <4 x double>
  %458 = fmul fast <4 x double> %457, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %459 = extractelement <4 x i64> %452, i32 0
  %460 = shl i64 %459, 3
  %461 = add i64 %460, %450
  %462 = getelementptr i8, i8* %call1, i64 %461
  %463 = bitcast i8* %462 to <4 x double>*
  store <4 x double> %458, <4 x double>* %463, align 8, !alias.scope !109, !noalias !114
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1233 = add <4 x i64> %vec.ind1232, <i64 4, i64 4, i64 4, i64 4>
  %464 = icmp eq i64 %index.next1229, 28
  br i1 %464, label %polly.loop_exit839.1.1, label %vector.body1226, !llvm.loop !136

polly.loop_exit839.1.1:                           ; preds = %vector.body1226
  %polly.indvar_next835.1.1 = add nuw nsw i64 %polly.indvar834.1.1, 1
  %exitcond899.1.1.not = icmp eq i64 %polly.indvar_next835.1.1, 32
  br i1 %exitcond899.1.1.not, label %polly.loop_header831.2, label %polly.loop_header831.1.1

polly.loop_header831.2:                           ; preds = %polly.loop_exit839.1.1, %polly.loop_exit839.2
  %polly.indvar834.2 = phi i64 [ %polly.indvar_next835.2, %polly.loop_exit839.2 ], [ 0, %polly.loop_exit839.1.1 ]
  %465 = add nuw nsw i64 %polly.indvar834.2, 64
  %466 = mul nuw nsw i64 %465, 480
  %467 = trunc i64 %465 to i32
  %broadcast.splatinsert1248 = insertelement <4 x i32> poison, i32 %467, i32 0
  %broadcast.splat1249 = shufflevector <4 x i32> %broadcast.splatinsert1248, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %polly.loop_header831.2
  %index1240 = phi i64 [ 0, %polly.loop_header831.2 ], [ %index.next1241, %vector.body1238 ]
  %vec.ind1246 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header831.2 ], [ %vec.ind.next1247, %vector.body1238 ]
  %468 = mul <4 x i32> %vec.ind1246, %broadcast.splat1249
  %469 = add <4 x i32> %468, <i32 1, i32 1, i32 1, i32 1>
  %470 = urem <4 x i32> %469, <i32 80, i32 80, i32 80, i32 80>
  %471 = sitofp <4 x i32> %470 to <4 x double>
  %472 = fmul fast <4 x double> %471, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %473 = shl i64 %index1240, 3
  %474 = add i64 %473, %466
  %475 = getelementptr i8, i8* %call1, i64 %474
  %476 = bitcast i8* %475 to <4 x double>*
  store <4 x double> %472, <4 x double>* %476, align 8, !alias.scope !109, !noalias !114
  %index.next1241 = add i64 %index1240, 4
  %vec.ind.next1247 = add <4 x i32> %vec.ind1246, <i32 4, i32 4, i32 4, i32 4>
  %477 = icmp eq i64 %index.next1241, 32
  br i1 %477, label %polly.loop_exit839.2, label %vector.body1238, !llvm.loop !137

polly.loop_exit839.2:                             ; preds = %vector.body1238
  %polly.indvar_next835.2 = add nuw nsw i64 %polly.indvar834.2, 1
  %exitcond899.2.not = icmp eq i64 %polly.indvar_next835.2, 16
  br i1 %exitcond899.2.not, label %polly.loop_header831.1.2, label %polly.loop_header831.2

polly.loop_header831.1.2:                         ; preds = %polly.loop_exit839.2, %polly.loop_exit839.1.2
  %polly.indvar834.1.2 = phi i64 [ %polly.indvar_next835.1.2, %polly.loop_exit839.1.2 ], [ 0, %polly.loop_exit839.2 ]
  %478 = add nuw nsw i64 %polly.indvar834.1.2, 64
  %479 = mul nuw nsw i64 %478, 480
  %480 = trunc i64 %478 to i32
  %broadcast.splatinsert1260 = insertelement <4 x i32> poison, i32 %480, i32 0
  %broadcast.splat1261 = shufflevector <4 x i32> %broadcast.splatinsert1260, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %polly.loop_header831.1.2
  %index1254 = phi i64 [ 0, %polly.loop_header831.1.2 ], [ %index.next1255, %vector.body1252 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header831.1.2 ], [ %vec.ind.next1259, %vector.body1252 ]
  %481 = add nuw nsw <4 x i64> %vec.ind1258, <i64 32, i64 32, i64 32, i64 32>
  %482 = trunc <4 x i64> %481 to <4 x i32>
  %483 = mul <4 x i32> %broadcast.splat1261, %482
  %484 = add <4 x i32> %483, <i32 1, i32 1, i32 1, i32 1>
  %485 = urem <4 x i32> %484, <i32 80, i32 80, i32 80, i32 80>
  %486 = sitofp <4 x i32> %485 to <4 x double>
  %487 = fmul fast <4 x double> %486, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %488 = extractelement <4 x i64> %481, i32 0
  %489 = shl i64 %488, 3
  %490 = add i64 %489, %479
  %491 = getelementptr i8, i8* %call1, i64 %490
  %492 = bitcast i8* %491 to <4 x double>*
  store <4 x double> %487, <4 x double>* %492, align 8, !alias.scope !109, !noalias !114
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %493 = icmp eq i64 %index.next1255, 28
  br i1 %493, label %polly.loop_exit839.1.2, label %vector.body1252, !llvm.loop !138

polly.loop_exit839.1.2:                           ; preds = %vector.body1252
  %polly.indvar_next835.1.2 = add nuw nsw i64 %polly.indvar834.1.2, 1
  %exitcond899.1.2.not = icmp eq i64 %polly.indvar_next835.1.2, 16
  br i1 %exitcond899.1.2.not, label %init_array.exit, label %polly.loop_header831.1.2

polly.loop_header805.1:                           ; preds = %polly.loop_exit813, %polly.loop_exit813.1
  %polly.indvar808.1 = phi i64 [ %polly.indvar_next809.1, %polly.loop_exit813.1 ], [ 0, %polly.loop_exit813 ]
  %494 = mul nuw nsw i64 %polly.indvar808.1, 480
  %495 = trunc i64 %polly.indvar808.1 to i32
  %broadcast.splatinsert1130 = insertelement <4 x i32> poison, i32 %495, i32 0
  %broadcast.splat1131 = shufflevector <4 x i32> %broadcast.splatinsert1130, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %polly.loop_header805.1
  %index1124 = phi i64 [ 0, %polly.loop_header805.1 ], [ %index.next1125, %vector.body1122 ]
  %vec.ind1128 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1 ], [ %vec.ind.next1129, %vector.body1122 ]
  %496 = add nuw nsw <4 x i64> %vec.ind1128, <i64 32, i64 32, i64 32, i64 32>
  %497 = trunc <4 x i64> %496 to <4 x i32>
  %498 = mul <4 x i32> %broadcast.splat1131, %497
  %499 = add <4 x i32> %498, <i32 2, i32 2, i32 2, i32 2>
  %500 = urem <4 x i32> %499, <i32 60, i32 60, i32 60, i32 60>
  %501 = sitofp <4 x i32> %500 to <4 x double>
  %502 = fmul fast <4 x double> %501, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %503 = extractelement <4 x i64> %496, i32 0
  %504 = shl i64 %503, 3
  %505 = add i64 %504, %494
  %506 = getelementptr i8, i8* %call2, i64 %505
  %507 = bitcast i8* %506 to <4 x double>*
  store <4 x double> %502, <4 x double>* %507, align 8, !alias.scope !110, !noalias !112
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1129 = add <4 x i64> %vec.ind1128, <i64 4, i64 4, i64 4, i64 4>
  %508 = icmp eq i64 %index.next1125, 28
  br i1 %508, label %polly.loop_exit813.1, label %vector.body1122, !llvm.loop !139

polly.loop_exit813.1:                             ; preds = %vector.body1122
  %polly.indvar_next809.1 = add nuw nsw i64 %polly.indvar808.1, 1
  %exitcond905.1.not = icmp eq i64 %polly.indvar_next809.1, 32
  br i1 %exitcond905.1.not, label %polly.loop_header805.1933, label %polly.loop_header805.1

polly.loop_header805.1933:                        ; preds = %polly.loop_exit813.1, %polly.loop_exit813.1944
  %polly.indvar808.1932 = phi i64 [ %polly.indvar_next809.1942, %polly.loop_exit813.1944 ], [ 0, %polly.loop_exit813.1 ]
  %509 = add nuw nsw i64 %polly.indvar808.1932, 32
  %510 = mul nuw nsw i64 %509, 480
  %511 = trunc i64 %509 to i32
  %broadcast.splatinsert1144 = insertelement <4 x i32> poison, i32 %511, i32 0
  %broadcast.splat1145 = shufflevector <4 x i32> %broadcast.splatinsert1144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1134

vector.body1134:                                  ; preds = %vector.body1134, %polly.loop_header805.1933
  %index1136 = phi i64 [ 0, %polly.loop_header805.1933 ], [ %index.next1137, %vector.body1134 ]
  %vec.ind1142 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.1933 ], [ %vec.ind.next1143, %vector.body1134 ]
  %512 = mul <4 x i32> %vec.ind1142, %broadcast.splat1145
  %513 = add <4 x i32> %512, <i32 2, i32 2, i32 2, i32 2>
  %514 = urem <4 x i32> %513, <i32 60, i32 60, i32 60, i32 60>
  %515 = sitofp <4 x i32> %514 to <4 x double>
  %516 = fmul fast <4 x double> %515, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %517 = shl i64 %index1136, 3
  %518 = add i64 %517, %510
  %519 = getelementptr i8, i8* %call2, i64 %518
  %520 = bitcast i8* %519 to <4 x double>*
  store <4 x double> %516, <4 x double>* %520, align 8, !alias.scope !110, !noalias !112
  %index.next1137 = add i64 %index1136, 4
  %vec.ind.next1143 = add <4 x i32> %vec.ind1142, <i32 4, i32 4, i32 4, i32 4>
  %521 = icmp eq i64 %index.next1137, 32
  br i1 %521, label %polly.loop_exit813.1944, label %vector.body1134, !llvm.loop !140

polly.loop_exit813.1944:                          ; preds = %vector.body1134
  %polly.indvar_next809.1942 = add nuw nsw i64 %polly.indvar808.1932, 1
  %exitcond905.1943.not = icmp eq i64 %polly.indvar_next809.1942, 32
  br i1 %exitcond905.1943.not, label %polly.loop_header805.1.1, label %polly.loop_header805.1933

polly.loop_header805.1.1:                         ; preds = %polly.loop_exit813.1944, %polly.loop_exit813.1.1
  %polly.indvar808.1.1 = phi i64 [ %polly.indvar_next809.1.1, %polly.loop_exit813.1.1 ], [ 0, %polly.loop_exit813.1944 ]
  %522 = add nuw nsw i64 %polly.indvar808.1.1, 32
  %523 = mul nuw nsw i64 %522, 480
  %524 = trunc i64 %522 to i32
  %broadcast.splatinsert1156 = insertelement <4 x i32> poison, i32 %524, i32 0
  %broadcast.splat1157 = shufflevector <4 x i32> %broadcast.splatinsert1156, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %polly.loop_header805.1.1
  %index1150 = phi i64 [ 0, %polly.loop_header805.1.1 ], [ %index.next1151, %vector.body1148 ]
  %vec.ind1154 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.1 ], [ %vec.ind.next1155, %vector.body1148 ]
  %525 = add nuw nsw <4 x i64> %vec.ind1154, <i64 32, i64 32, i64 32, i64 32>
  %526 = trunc <4 x i64> %525 to <4 x i32>
  %527 = mul <4 x i32> %broadcast.splat1157, %526
  %528 = add <4 x i32> %527, <i32 2, i32 2, i32 2, i32 2>
  %529 = urem <4 x i32> %528, <i32 60, i32 60, i32 60, i32 60>
  %530 = sitofp <4 x i32> %529 to <4 x double>
  %531 = fmul fast <4 x double> %530, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %532 = extractelement <4 x i64> %525, i32 0
  %533 = shl i64 %532, 3
  %534 = add i64 %533, %523
  %535 = getelementptr i8, i8* %call2, i64 %534
  %536 = bitcast i8* %535 to <4 x double>*
  store <4 x double> %531, <4 x double>* %536, align 8, !alias.scope !110, !noalias !112
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1155 = add <4 x i64> %vec.ind1154, <i64 4, i64 4, i64 4, i64 4>
  %537 = icmp eq i64 %index.next1151, 28
  br i1 %537, label %polly.loop_exit813.1.1, label %vector.body1148, !llvm.loop !141

polly.loop_exit813.1.1:                           ; preds = %vector.body1148
  %polly.indvar_next809.1.1 = add nuw nsw i64 %polly.indvar808.1.1, 1
  %exitcond905.1.1.not = icmp eq i64 %polly.indvar_next809.1.1, 32
  br i1 %exitcond905.1.1.not, label %polly.loop_header805.2, label %polly.loop_header805.1.1

polly.loop_header805.2:                           ; preds = %polly.loop_exit813.1.1, %polly.loop_exit813.2
  %polly.indvar808.2 = phi i64 [ %polly.indvar_next809.2, %polly.loop_exit813.2 ], [ 0, %polly.loop_exit813.1.1 ]
  %538 = add nuw nsw i64 %polly.indvar808.2, 64
  %539 = mul nuw nsw i64 %538, 480
  %540 = trunc i64 %538 to i32
  %broadcast.splatinsert1170 = insertelement <4 x i32> poison, i32 %540, i32 0
  %broadcast.splat1171 = shufflevector <4 x i32> %broadcast.splatinsert1170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %polly.loop_header805.2
  %index1162 = phi i64 [ 0, %polly.loop_header805.2 ], [ %index.next1163, %vector.body1160 ]
  %vec.ind1168 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.2 ], [ %vec.ind.next1169, %vector.body1160 ]
  %541 = mul <4 x i32> %vec.ind1168, %broadcast.splat1171
  %542 = add <4 x i32> %541, <i32 2, i32 2, i32 2, i32 2>
  %543 = urem <4 x i32> %542, <i32 60, i32 60, i32 60, i32 60>
  %544 = sitofp <4 x i32> %543 to <4 x double>
  %545 = fmul fast <4 x double> %544, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %546 = shl i64 %index1162, 3
  %547 = add i64 %546, %539
  %548 = getelementptr i8, i8* %call2, i64 %547
  %549 = bitcast i8* %548 to <4 x double>*
  store <4 x double> %545, <4 x double>* %549, align 8, !alias.scope !110, !noalias !112
  %index.next1163 = add i64 %index1162, 4
  %vec.ind.next1169 = add <4 x i32> %vec.ind1168, <i32 4, i32 4, i32 4, i32 4>
  %550 = icmp eq i64 %index.next1163, 32
  br i1 %550, label %polly.loop_exit813.2, label %vector.body1160, !llvm.loop !142

polly.loop_exit813.2:                             ; preds = %vector.body1160
  %polly.indvar_next809.2 = add nuw nsw i64 %polly.indvar808.2, 1
  %exitcond905.2.not = icmp eq i64 %polly.indvar_next809.2, 16
  br i1 %exitcond905.2.not, label %polly.loop_header805.1.2, label %polly.loop_header805.2

polly.loop_header805.1.2:                         ; preds = %polly.loop_exit813.2, %polly.loop_exit813.1.2
  %polly.indvar808.1.2 = phi i64 [ %polly.indvar_next809.1.2, %polly.loop_exit813.1.2 ], [ 0, %polly.loop_exit813.2 ]
  %551 = add nuw nsw i64 %polly.indvar808.1.2, 64
  %552 = mul nuw nsw i64 %551, 480
  %553 = trunc i64 %551 to i32
  %broadcast.splatinsert1182 = insertelement <4 x i32> poison, i32 %553, i32 0
  %broadcast.splat1183 = shufflevector <4 x i32> %broadcast.splatinsert1182, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %polly.loop_header805.1.2
  %index1176 = phi i64 [ 0, %polly.loop_header805.1.2 ], [ %index.next1177, %vector.body1174 ]
  %vec.ind1180 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.2 ], [ %vec.ind.next1181, %vector.body1174 ]
  %554 = add nuw nsw <4 x i64> %vec.ind1180, <i64 32, i64 32, i64 32, i64 32>
  %555 = trunc <4 x i64> %554 to <4 x i32>
  %556 = mul <4 x i32> %broadcast.splat1183, %555
  %557 = add <4 x i32> %556, <i32 2, i32 2, i32 2, i32 2>
  %558 = urem <4 x i32> %557, <i32 60, i32 60, i32 60, i32 60>
  %559 = sitofp <4 x i32> %558 to <4 x double>
  %560 = fmul fast <4 x double> %559, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %561 = extractelement <4 x i64> %554, i32 0
  %562 = shl i64 %561, 3
  %563 = add i64 %562, %552
  %564 = getelementptr i8, i8* %call2, i64 %563
  %565 = bitcast i8* %564 to <4 x double>*
  store <4 x double> %560, <4 x double>* %565, align 8, !alias.scope !110, !noalias !112
  %index.next1177 = add i64 %index1176, 4
  %vec.ind.next1181 = add <4 x i64> %vec.ind1180, <i64 4, i64 4, i64 4, i64 4>
  %566 = icmp eq i64 %index.next1177, 28
  br i1 %566, label %polly.loop_exit813.1.2, label %vector.body1174, !llvm.loop !143

polly.loop_exit813.1.2:                           ; preds = %vector.body1174
  %polly.indvar_next809.1.2 = add nuw nsw i64 %polly.indvar808.1.2, 1
  %exitcond905.1.2.not = icmp eq i64 %polly.indvar_next809.1.2, 16
  br i1 %exitcond905.1.2.not, label %polly.loop_header831, label %polly.loop_header805.1.2

polly.loop_header778.1:                           ; preds = %polly.loop_exit786, %polly.loop_exit786.1
  %polly.indvar781.1 = phi i64 [ %polly.indvar_next782.1, %polly.loop_exit786.1 ], [ 0, %polly.loop_exit786 ]
  %567 = mul nuw nsw i64 %polly.indvar781.1, 640
  %568 = trunc i64 %polly.indvar781.1 to i32
  %broadcast.splatinsert1016 = insertelement <4 x i32> poison, i32 %568, i32 0
  %broadcast.splat1017 = shufflevector <4 x i32> %broadcast.splatinsert1016, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %polly.loop_header778.1
  %index1010 = phi i64 [ 0, %polly.loop_header778.1 ], [ %index.next1011, %vector.body1008 ]
  %vec.ind1014 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1 ], [ %vec.ind.next1015, %vector.body1008 ]
  %569 = add nuw nsw <4 x i64> %vec.ind1014, <i64 32, i64 32, i64 32, i64 32>
  %570 = trunc <4 x i64> %569 to <4 x i32>
  %571 = mul <4 x i32> %broadcast.splat1017, %570
  %572 = add <4 x i32> %571, <i32 3, i32 3, i32 3, i32 3>
  %573 = urem <4 x i32> %572, <i32 80, i32 80, i32 80, i32 80>
  %574 = sitofp <4 x i32> %573 to <4 x double>
  %575 = fmul fast <4 x double> %574, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %576 = extractelement <4 x i64> %569, i32 0
  %577 = shl i64 %576, 3
  %578 = add nuw nsw i64 %577, %567
  %579 = getelementptr i8, i8* %call, i64 %578
  %580 = bitcast i8* %579 to <4 x double>*
  store <4 x double> %575, <4 x double>* %580, align 8, !alias.scope !106, !noalias !108
  %index.next1011 = add i64 %index1010, 4
  %vec.ind.next1015 = add <4 x i64> %vec.ind1014, <i64 4, i64 4, i64 4, i64 4>
  %581 = icmp eq i64 %index.next1011, 32
  br i1 %581, label %polly.loop_exit786.1, label %vector.body1008, !llvm.loop !144

polly.loop_exit786.1:                             ; preds = %vector.body1008
  %polly.indvar_next782.1 = add nuw nsw i64 %polly.indvar781.1, 1
  %exitcond914.1.not = icmp eq i64 %polly.indvar_next782.1, 32
  br i1 %exitcond914.1.not, label %polly.loop_header778.2, label %polly.loop_header778.1

polly.loop_header778.2:                           ; preds = %polly.loop_exit786.1, %polly.loop_exit786.2
  %polly.indvar781.2 = phi i64 [ %polly.indvar_next782.2, %polly.loop_exit786.2 ], [ 0, %polly.loop_exit786.1 ]
  %582 = mul nuw nsw i64 %polly.indvar781.2, 640
  %583 = trunc i64 %polly.indvar781.2 to i32
  %broadcast.splatinsert1028 = insertelement <4 x i32> poison, i32 %583, i32 0
  %broadcast.splat1029 = shufflevector <4 x i32> %broadcast.splatinsert1028, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %polly.loop_header778.2
  %index1022 = phi i64 [ 0, %polly.loop_header778.2 ], [ %index.next1023, %vector.body1020 ]
  %vec.ind1026 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.2 ], [ %vec.ind.next1027, %vector.body1020 ]
  %584 = add nuw nsw <4 x i64> %vec.ind1026, <i64 64, i64 64, i64 64, i64 64>
  %585 = trunc <4 x i64> %584 to <4 x i32>
  %586 = mul <4 x i32> %broadcast.splat1029, %585
  %587 = add <4 x i32> %586, <i32 3, i32 3, i32 3, i32 3>
  %588 = urem <4 x i32> %587, <i32 80, i32 80, i32 80, i32 80>
  %589 = sitofp <4 x i32> %588 to <4 x double>
  %590 = fmul fast <4 x double> %589, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %591 = extractelement <4 x i64> %584, i32 0
  %592 = shl i64 %591, 3
  %593 = add nuw nsw i64 %592, %582
  %594 = getelementptr i8, i8* %call, i64 %593
  %595 = bitcast i8* %594 to <4 x double>*
  store <4 x double> %590, <4 x double>* %595, align 8, !alias.scope !106, !noalias !108
  %index.next1023 = add i64 %index1022, 4
  %vec.ind.next1027 = add <4 x i64> %vec.ind1026, <i64 4, i64 4, i64 4, i64 4>
  %596 = icmp eq i64 %index.next1023, 16
  br i1 %596, label %polly.loop_exit786.2, label %vector.body1020, !llvm.loop !145

polly.loop_exit786.2:                             ; preds = %vector.body1020
  %polly.indvar_next782.2 = add nuw nsw i64 %polly.indvar781.2, 1
  %exitcond914.2.not = icmp eq i64 %polly.indvar_next782.2, 32
  br i1 %exitcond914.2.not, label %polly.loop_header778.1947, label %polly.loop_header778.2

polly.loop_header778.1947:                        ; preds = %polly.loop_exit786.2, %polly.loop_exit786.1958
  %polly.indvar781.1946 = phi i64 [ %polly.indvar_next782.1956, %polly.loop_exit786.1958 ], [ 0, %polly.loop_exit786.2 ]
  %597 = add nuw nsw i64 %polly.indvar781.1946, 32
  %598 = mul nuw nsw i64 %597, 640
  %599 = trunc i64 %597 to i32
  %broadcast.splatinsert1042 = insertelement <4 x i32> poison, i32 %599, i32 0
  %broadcast.splat1043 = shufflevector <4 x i32> %broadcast.splatinsert1042, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %polly.loop_header778.1947
  %index1034 = phi i64 [ 0, %polly.loop_header778.1947 ], [ %index.next1035, %vector.body1032 ]
  %vec.ind1040 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.1947 ], [ %vec.ind.next1041, %vector.body1032 ]
  %600 = mul <4 x i32> %vec.ind1040, %broadcast.splat1043
  %601 = add <4 x i32> %600, <i32 3, i32 3, i32 3, i32 3>
  %602 = urem <4 x i32> %601, <i32 80, i32 80, i32 80, i32 80>
  %603 = sitofp <4 x i32> %602 to <4 x double>
  %604 = fmul fast <4 x double> %603, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %605 = shl i64 %index1034, 3
  %606 = add nuw nsw i64 %605, %598
  %607 = getelementptr i8, i8* %call, i64 %606
  %608 = bitcast i8* %607 to <4 x double>*
  store <4 x double> %604, <4 x double>* %608, align 8, !alias.scope !106, !noalias !108
  %index.next1035 = add i64 %index1034, 4
  %vec.ind.next1041 = add <4 x i32> %vec.ind1040, <i32 4, i32 4, i32 4, i32 4>
  %609 = icmp eq i64 %index.next1035, 32
  br i1 %609, label %polly.loop_exit786.1958, label %vector.body1032, !llvm.loop !146

polly.loop_exit786.1958:                          ; preds = %vector.body1032
  %polly.indvar_next782.1956 = add nuw nsw i64 %polly.indvar781.1946, 1
  %exitcond914.1957.not = icmp eq i64 %polly.indvar_next782.1956, 32
  br i1 %exitcond914.1957.not, label %polly.loop_header778.1.1, label %polly.loop_header778.1947

polly.loop_header778.1.1:                         ; preds = %polly.loop_exit786.1958, %polly.loop_exit786.1.1
  %polly.indvar781.1.1 = phi i64 [ %polly.indvar_next782.1.1, %polly.loop_exit786.1.1 ], [ 0, %polly.loop_exit786.1958 ]
  %610 = add nuw nsw i64 %polly.indvar781.1.1, 32
  %611 = mul nuw nsw i64 %610, 640
  %612 = trunc i64 %610 to i32
  %broadcast.splatinsert1054 = insertelement <4 x i32> poison, i32 %612, i32 0
  %broadcast.splat1055 = shufflevector <4 x i32> %broadcast.splatinsert1054, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %polly.loop_header778.1.1
  %index1048 = phi i64 [ 0, %polly.loop_header778.1.1 ], [ %index.next1049, %vector.body1046 ]
  %vec.ind1052 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.1 ], [ %vec.ind.next1053, %vector.body1046 ]
  %613 = add nuw nsw <4 x i64> %vec.ind1052, <i64 32, i64 32, i64 32, i64 32>
  %614 = trunc <4 x i64> %613 to <4 x i32>
  %615 = mul <4 x i32> %broadcast.splat1055, %614
  %616 = add <4 x i32> %615, <i32 3, i32 3, i32 3, i32 3>
  %617 = urem <4 x i32> %616, <i32 80, i32 80, i32 80, i32 80>
  %618 = sitofp <4 x i32> %617 to <4 x double>
  %619 = fmul fast <4 x double> %618, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %620 = extractelement <4 x i64> %613, i32 0
  %621 = shl i64 %620, 3
  %622 = add nuw nsw i64 %621, %611
  %623 = getelementptr i8, i8* %call, i64 %622
  %624 = bitcast i8* %623 to <4 x double>*
  store <4 x double> %619, <4 x double>* %624, align 8, !alias.scope !106, !noalias !108
  %index.next1049 = add i64 %index1048, 4
  %vec.ind.next1053 = add <4 x i64> %vec.ind1052, <i64 4, i64 4, i64 4, i64 4>
  %625 = icmp eq i64 %index.next1049, 32
  br i1 %625, label %polly.loop_exit786.1.1, label %vector.body1046, !llvm.loop !147

polly.loop_exit786.1.1:                           ; preds = %vector.body1046
  %polly.indvar_next782.1.1 = add nuw nsw i64 %polly.indvar781.1.1, 1
  %exitcond914.1.1.not = icmp eq i64 %polly.indvar_next782.1.1, 32
  br i1 %exitcond914.1.1.not, label %polly.loop_header778.2.1, label %polly.loop_header778.1.1

polly.loop_header778.2.1:                         ; preds = %polly.loop_exit786.1.1, %polly.loop_exit786.2.1
  %polly.indvar781.2.1 = phi i64 [ %polly.indvar_next782.2.1, %polly.loop_exit786.2.1 ], [ 0, %polly.loop_exit786.1.1 ]
  %626 = add nuw nsw i64 %polly.indvar781.2.1, 32
  %627 = mul nuw nsw i64 %626, 640
  %628 = trunc i64 %626 to i32
  %broadcast.splatinsert1066 = insertelement <4 x i32> poison, i32 %628, i32 0
  %broadcast.splat1067 = shufflevector <4 x i32> %broadcast.splatinsert1066, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %polly.loop_header778.2.1
  %index1060 = phi i64 [ 0, %polly.loop_header778.2.1 ], [ %index.next1061, %vector.body1058 ]
  %vec.ind1064 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.2.1 ], [ %vec.ind.next1065, %vector.body1058 ]
  %629 = add nuw nsw <4 x i64> %vec.ind1064, <i64 64, i64 64, i64 64, i64 64>
  %630 = trunc <4 x i64> %629 to <4 x i32>
  %631 = mul <4 x i32> %broadcast.splat1067, %630
  %632 = add <4 x i32> %631, <i32 3, i32 3, i32 3, i32 3>
  %633 = urem <4 x i32> %632, <i32 80, i32 80, i32 80, i32 80>
  %634 = sitofp <4 x i32> %633 to <4 x double>
  %635 = fmul fast <4 x double> %634, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %636 = extractelement <4 x i64> %629, i32 0
  %637 = shl i64 %636, 3
  %638 = add nuw nsw i64 %637, %627
  %639 = getelementptr i8, i8* %call, i64 %638
  %640 = bitcast i8* %639 to <4 x double>*
  store <4 x double> %635, <4 x double>* %640, align 8, !alias.scope !106, !noalias !108
  %index.next1061 = add i64 %index1060, 4
  %vec.ind.next1065 = add <4 x i64> %vec.ind1064, <i64 4, i64 4, i64 4, i64 4>
  %641 = icmp eq i64 %index.next1061, 16
  br i1 %641, label %polly.loop_exit786.2.1, label %vector.body1058, !llvm.loop !148

polly.loop_exit786.2.1:                           ; preds = %vector.body1058
  %polly.indvar_next782.2.1 = add nuw nsw i64 %polly.indvar781.2.1, 1
  %exitcond914.2.1.not = icmp eq i64 %polly.indvar_next782.2.1, 32
  br i1 %exitcond914.2.1.not, label %polly.loop_header778.2961, label %polly.loop_header778.2.1

polly.loop_header778.2961:                        ; preds = %polly.loop_exit786.2.1, %polly.loop_exit786.2972
  %polly.indvar781.2960 = phi i64 [ %polly.indvar_next782.2970, %polly.loop_exit786.2972 ], [ 0, %polly.loop_exit786.2.1 ]
  %642 = add nuw nsw i64 %polly.indvar781.2960, 64
  %643 = mul nuw nsw i64 %642, 640
  %644 = trunc i64 %642 to i32
  %broadcast.splatinsert1080 = insertelement <4 x i32> poison, i32 %644, i32 0
  %broadcast.splat1081 = shufflevector <4 x i32> %broadcast.splatinsert1080, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1070

vector.body1070:                                  ; preds = %vector.body1070, %polly.loop_header778.2961
  %index1072 = phi i64 [ 0, %polly.loop_header778.2961 ], [ %index.next1073, %vector.body1070 ]
  %vec.ind1078 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.2961 ], [ %vec.ind.next1079, %vector.body1070 ]
  %645 = mul <4 x i32> %vec.ind1078, %broadcast.splat1081
  %646 = add <4 x i32> %645, <i32 3, i32 3, i32 3, i32 3>
  %647 = urem <4 x i32> %646, <i32 80, i32 80, i32 80, i32 80>
  %648 = sitofp <4 x i32> %647 to <4 x double>
  %649 = fmul fast <4 x double> %648, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %650 = shl i64 %index1072, 3
  %651 = add nuw nsw i64 %650, %643
  %652 = getelementptr i8, i8* %call, i64 %651
  %653 = bitcast i8* %652 to <4 x double>*
  store <4 x double> %649, <4 x double>* %653, align 8, !alias.scope !106, !noalias !108
  %index.next1073 = add i64 %index1072, 4
  %vec.ind.next1079 = add <4 x i32> %vec.ind1078, <i32 4, i32 4, i32 4, i32 4>
  %654 = icmp eq i64 %index.next1073, 32
  br i1 %654, label %polly.loop_exit786.2972, label %vector.body1070, !llvm.loop !149

polly.loop_exit786.2972:                          ; preds = %vector.body1070
  %polly.indvar_next782.2970 = add nuw nsw i64 %polly.indvar781.2960, 1
  %exitcond914.2971.not = icmp eq i64 %polly.indvar_next782.2970, 16
  br i1 %exitcond914.2971.not, label %polly.loop_header778.1.2, label %polly.loop_header778.2961

polly.loop_header778.1.2:                         ; preds = %polly.loop_exit786.2972, %polly.loop_exit786.1.2
  %polly.indvar781.1.2 = phi i64 [ %polly.indvar_next782.1.2, %polly.loop_exit786.1.2 ], [ 0, %polly.loop_exit786.2972 ]
  %655 = add nuw nsw i64 %polly.indvar781.1.2, 64
  %656 = mul nuw nsw i64 %655, 640
  %657 = trunc i64 %655 to i32
  %broadcast.splatinsert1092 = insertelement <4 x i32> poison, i32 %657, i32 0
  %broadcast.splat1093 = shufflevector <4 x i32> %broadcast.splatinsert1092, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %polly.loop_header778.1.2
  %index1086 = phi i64 [ 0, %polly.loop_header778.1.2 ], [ %index.next1087, %vector.body1084 ]
  %vec.ind1090 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.2 ], [ %vec.ind.next1091, %vector.body1084 ]
  %658 = add nuw nsw <4 x i64> %vec.ind1090, <i64 32, i64 32, i64 32, i64 32>
  %659 = trunc <4 x i64> %658 to <4 x i32>
  %660 = mul <4 x i32> %broadcast.splat1093, %659
  %661 = add <4 x i32> %660, <i32 3, i32 3, i32 3, i32 3>
  %662 = urem <4 x i32> %661, <i32 80, i32 80, i32 80, i32 80>
  %663 = sitofp <4 x i32> %662 to <4 x double>
  %664 = fmul fast <4 x double> %663, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %665 = extractelement <4 x i64> %658, i32 0
  %666 = shl i64 %665, 3
  %667 = add nuw nsw i64 %666, %656
  %668 = getelementptr i8, i8* %call, i64 %667
  %669 = bitcast i8* %668 to <4 x double>*
  store <4 x double> %664, <4 x double>* %669, align 8, !alias.scope !106, !noalias !108
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1091 = add <4 x i64> %vec.ind1090, <i64 4, i64 4, i64 4, i64 4>
  %670 = icmp eq i64 %index.next1087, 32
  br i1 %670, label %polly.loop_exit786.1.2, label %vector.body1084, !llvm.loop !150

polly.loop_exit786.1.2:                           ; preds = %vector.body1084
  %polly.indvar_next782.1.2 = add nuw nsw i64 %polly.indvar781.1.2, 1
  %exitcond914.1.2.not = icmp eq i64 %polly.indvar_next782.1.2, 16
  br i1 %exitcond914.1.2.not, label %polly.loop_header778.2.2, label %polly.loop_header778.1.2

polly.loop_header778.2.2:                         ; preds = %polly.loop_exit786.1.2, %polly.loop_exit786.2.2
  %polly.indvar781.2.2 = phi i64 [ %polly.indvar_next782.2.2, %polly.loop_exit786.2.2 ], [ 0, %polly.loop_exit786.1.2 ]
  %671 = add nuw nsw i64 %polly.indvar781.2.2, 64
  %672 = mul nuw nsw i64 %671, 640
  %673 = trunc i64 %671 to i32
  %broadcast.splatinsert1104 = insertelement <4 x i32> poison, i32 %673, i32 0
  %broadcast.splat1105 = shufflevector <4 x i32> %broadcast.splatinsert1104, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %polly.loop_header778.2.2
  %index1098 = phi i64 [ 0, %polly.loop_header778.2.2 ], [ %index.next1099, %vector.body1096 ]
  %vec.ind1102 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.2.2 ], [ %vec.ind.next1103, %vector.body1096 ]
  %674 = add nuw nsw <4 x i64> %vec.ind1102, <i64 64, i64 64, i64 64, i64 64>
  %675 = trunc <4 x i64> %674 to <4 x i32>
  %676 = mul <4 x i32> %broadcast.splat1105, %675
  %677 = add <4 x i32> %676, <i32 3, i32 3, i32 3, i32 3>
  %678 = urem <4 x i32> %677, <i32 80, i32 80, i32 80, i32 80>
  %679 = sitofp <4 x i32> %678 to <4 x double>
  %680 = fmul fast <4 x double> %679, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %681 = extractelement <4 x i64> %674, i32 0
  %682 = shl i64 %681, 3
  %683 = add nuw nsw i64 %682, %672
  %684 = getelementptr i8, i8* %call, i64 %683
  %685 = bitcast i8* %684 to <4 x double>*
  store <4 x double> %680, <4 x double>* %685, align 8, !alias.scope !106, !noalias !108
  %index.next1099 = add i64 %index1098, 4
  %vec.ind.next1103 = add <4 x i64> %vec.ind1102, <i64 4, i64 4, i64 4, i64 4>
  %686 = icmp eq i64 %index.next1099, 16
  br i1 %686, label %polly.loop_exit786.2.2, label %vector.body1096, !llvm.loop !151

polly.loop_exit786.2.2:                           ; preds = %vector.body1096
  %polly.indvar_next782.2.2 = add nuw nsw i64 %polly.indvar781.2.2, 1
  %exitcond914.2.2.not = icmp eq i64 %polly.indvar_next782.2.2, 16
  br i1 %exitcond914.2.2.not, label %polly.loop_header805, label %polly.loop_header778.2.2
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
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
!26 = !{!"llvm.loop.tile.size", i32 80}
!27 = !{!"llvm.loop.tile.followup_floor", !28}
!28 = distinct !{!28, !12, !24, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 4}
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
!51 = !{!"llvm.loop.tile.size", i32 100}
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
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !81, !13}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89, !90}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !81, !13}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !81, !13}
!95 = distinct !{!95, !96, !"polly.alias.scope.MemRef_call"}
!96 = distinct !{!96, !"polly.alias.scope.domain"}
!97 = !{!98, !99, !100, !101}
!98 = distinct !{!98, !96, !"polly.alias.scope.MemRef_call1"}
!99 = distinct !{!99, !96, !"polly.alias.scope.MemRef_call2"}
!100 = distinct !{!100, !96, !"polly.alias.scope.Packed_MemRef_call1"}
!101 = distinct !{!101, !96, !"polly.alias.scope.Packed_MemRef_call2"}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !81, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !81, !13}
!106 = distinct !{!106, !107, !"polly.alias.scope.MemRef_call"}
!107 = distinct !{!107, !"polly.alias.scope.domain"}
!108 = !{!109, !110}
!109 = distinct !{!109, !107, !"polly.alias.scope.MemRef_call1"}
!110 = distinct !{!110, !107, !"polly.alias.scope.MemRef_call2"}
!111 = distinct !{!111, !13}
!112 = !{!109, !106}
!113 = distinct !{!113, !13}
!114 = !{!110, !106}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !81, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !81, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !81, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !81, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !81, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !81, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !81, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !81, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !81, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = distinct !{!137, !13}
!138 = distinct !{!138, !13}
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
