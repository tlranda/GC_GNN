; ModuleID = 'syr2k_recreations//mmp_syr2k_S_168.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_168.c"
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
  %call766 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1627 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2628 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1627, %call2
  %polly.access.call2647 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2647, %call1
  %2 = or i1 %0, %1
  %polly.access.call667 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call667, %call2
  %4 = icmp ule i8* %polly.access.call2647, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call667, %call1
  %8 = icmp ule i8* %polly.access.call1627, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header752, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep986 = getelementptr i8, i8* %call2, i64 %12
  %scevgep985 = getelementptr i8, i8* %call2, i64 %11
  %scevgep984 = getelementptr i8, i8* %call1, i64 %12
  %scevgep983 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep983, %scevgep986
  %bound1 = icmp ult i8* %scevgep985, %scevgep984
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
  br i1 %exitcond18.not.i, label %vector.ph990, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph990:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert997 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat998 = shufflevector <4 x i64> %broadcast.splatinsert997, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body989

vector.body989:                                   ; preds = %vector.body989, %vector.ph990
  %index991 = phi i64 [ 0, %vector.ph990 ], [ %index.next992, %vector.body989 ]
  %vec.ind995 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph990 ], [ %vec.ind.next996, %vector.body989 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind995, %broadcast.splat998
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv7.i, i64 %index991
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next992 = add i64 %index991, 4
  %vec.ind.next996 = add <4 x i64> %vec.ind995, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next992, 80
  br i1 %40, label %for.inc41.i, label %vector.body989, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body989
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph990, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit813.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start442, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1343, label %vector.ph1272

vector.ph1272:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1272
  %index1273 = phi i64 [ 0, %vector.ph1272 ], [ %index.next1274, %vector.body1271 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i, i64 %index1273
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1274 = add i64 %index1273, 4
  %46 = icmp eq i64 %index.next1274, %n.vec
  br i1 %46, label %middle.block1269, label %vector.body1271, !llvm.loop !18

middle.block1269:                                 ; preds = %vector.body1271
  %cmp.n1276 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1276, label %for.inc6.i, label %for.body3.i46.preheader1343

for.body3.i46.preheader1343:                      ; preds = %for.body3.i46.preheader, %middle.block1269
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1269 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1343, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1343 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1269, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting443
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start268, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1292 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1292, label %for.body3.i60.preheader1342, label %vector.ph1293

vector.ph1293:                                    ; preds = %for.body3.i60.preheader
  %n.vec1295 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %vector.ph1293
  %index1296 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1297, %vector.body1291 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i52, i64 %index1296
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1300, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1297 = add i64 %index1296, 4
  %57 = icmp eq i64 %index.next1297, %n.vec1295
  br i1 %57, label %middle.block1289, label %vector.body1291, !llvm.loop !60

middle.block1289:                                 ; preds = %vector.body1291
  %cmp.n1299 = icmp eq i64 %indvars.iv21.i52, %n.vec1295
  br i1 %cmp.n1299, label %for.inc6.i63, label %for.body3.i60.preheader1342

for.body3.i60.preheader1342:                      ; preds = %for.body3.i60.preheader, %middle.block1289
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1295, %middle.block1289 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1342, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1342 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1289, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting269
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1318 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1318, label %for.body3.i99.preheader1341, label %vector.ph1319

vector.ph1319:                                    ; preds = %for.body3.i99.preheader
  %n.vec1321 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1317

vector.body1317:                                  ; preds = %vector.body1317, %vector.ph1319
  %index1322 = phi i64 [ 0, %vector.ph1319 ], [ %index.next1323, %vector.body1317 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i91, i64 %index1322
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1326 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1326, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1323 = add i64 %index1322, 4
  %68 = icmp eq i64 %index.next1323, %n.vec1321
  br i1 %68, label %middle.block1315, label %vector.body1317, !llvm.loop !62

middle.block1315:                                 ; preds = %vector.body1317
  %cmp.n1325 = icmp eq i64 %indvars.iv21.i91, %n.vec1321
  br i1 %cmp.n1325, label %for.inc6.i102, label %for.body3.i99.preheader1341

for.body3.i99.preheader1341:                      ; preds = %for.body3.i99.preheader, %middle.block1315
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1321, %middle.block1315 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1341, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1341 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1315, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit223
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1330 = phi i64 [ %indvar.next1331, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1330, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1332 = icmp ult i64 %88, 4
  br i1 %min.iters.check1332, label %polly.loop_header191.preheader, label %vector.ph1333

vector.ph1333:                                    ; preds = %polly.loop_header
  %n.vec1335 = and i64 %88, -4
  br label %vector.body1329

vector.body1329:                                  ; preds = %vector.body1329, %vector.ph1333
  %index1336 = phi i64 [ 0, %vector.ph1333 ], [ %index.next1337, %vector.body1329 ]
  %90 = shl nuw nsw i64 %index1336, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1340 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1340, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1337 = add i64 %index1336, 4
  %95 = icmp eq i64 %index.next1337, %n.vec1335
  br i1 %95, label %middle.block1327, label %vector.body1329, !llvm.loop !74

middle.block1327:                                 ; preds = %vector.body1329
  %cmp.n1339 = icmp eq i64 %88, %n.vec1335
  br i1 %cmp.n1339, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1327
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1335, %middle.block1327 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1327
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1331 = add i64 %indvar1330, 1
  br i1 %exitcond852.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond851.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond851.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %indvars.iv842 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next843, %polly.loop_exit223 ]
  %indvars.iv838 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next839, %polly.loop_exit223 ]
  %indvars.iv836 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next837, %polly.loop_exit223 ]
  %indvars.iv = phi i64 [ 80, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit223 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit223 ]
  %97 = udiv i64 %indvars.iv838, 5
  %98 = mul nuw nsw i64 %97, 20
  %99 = sub nsw i64 %indvars.iv836, %98
  %100 = add i64 %indvars.iv842, %98
  %101 = shl nsw i64 %polly.indvar202, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %102 = mul nsw i64 %polly.indvar202, -8
  %103 = shl nuw nsw i64 %polly.indvar202, 1
  %pexp.p_div_q = udiv i64 %103, 5
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -8
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 8
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 2
  %indvars.iv.next843 = add nsw i64 %indvars.iv842, -8
  %exitcond850.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond850.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar208, 80
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond835.not = icmp eq i64 %polly.indvar_next209, 60
  br i1 %exitcond835.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %104 = add nuw nsw i64 %polly.indvar214, %101
  %polly.access.mul.call2218 = mul nuw nsw i64 %104, 60
  %polly.access.add.call2219 = add nuw nsw i64 %polly.access.mul.call2218, %polly.indvar208
  %polly.access.call2220 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2219
  %polly.access.call2220.load = load double, double* %polly.access.call2220, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2220.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header221:                             ; preds = %polly.loop_exit229, %polly.loop_exit207
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit229 ], [ %100, %polly.loop_exit207 ]
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit229 ], [ %99, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ %pexp.p_div_q, %polly.loop_exit207 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv840, i64 0)
  %105 = add i64 %smax, %indvars.iv844
  %106 = mul nuw nsw i64 %polly.indvar224, 20
  %107 = sub nsw i64 %101, %106
  %108 = icmp sgt i64 %107, 0
  %109 = select i1 %108, i64 %107, i64 0
  %polly.loop_guard = icmp slt i64 %109, 20
  br i1 %polly.loop_guard, label %polly.loop_header227.us, label %polly.loop_exit229

polly.loop_header227.us:                          ; preds = %polly.loop_header221, %polly.loop_exit235.loopexit.us
  %polly.indvar230.us = phi i64 [ %polly.indvar_next231.us, %polly.loop_exit235.loopexit.us ], [ 0, %polly.loop_header221 ]
  %110 = shl nuw nsw i64 %polly.indvar230.us, 3
  %scevgep247.us = getelementptr i8, i8* %call1, i64 %110
  %polly.access.mul.Packed_MemRef_call2251.us = mul nuw nsw i64 %polly.indvar230.us, 80
  br label %polly.loop_header233.us

polly.loop_header233.us:                          ; preds = %polly.loop_exit242.us, %polly.loop_header227.us
  %indvars.iv846 = phi i64 [ %indvars.iv.next847, %polly.loop_exit242.us ], [ %105, %polly.loop_header227.us ]
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit242.us ], [ %109, %polly.loop_header227.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv846, i64 7)
  %111 = add nuw i64 %polly.indvar236.us, %106
  %112 = add i64 %111, %102
  %polly.loop_guard243.us978 = icmp sgt i64 %112, -1
  br i1 %polly.loop_guard243.us978, label %polly.loop_header240.preheader.us, label %polly.loop_exit242.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.preheader.us, %polly.loop_header240.us
  %polly.indvar244.us = phi i64 [ %polly.indvar_next245.us, %polly.loop_header240.us ], [ 0, %polly.loop_header240.preheader.us ]
  %113 = add nuw nsw i64 %polly.indvar244.us, %101
  %114 = mul nuw nsw i64 %113, 480
  %scevgep248.us = getelementptr i8, i8* %scevgep247.us, i64 %114
  %scevgep248249.us = bitcast i8* %scevgep248.us to double*
  %_p_scalar_250.us = load double, double* %scevgep248249.us, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.us = fmul fast double %_p_scalar_254.us, %_p_scalar_250.us
  %polly.access.add.Packed_MemRef_call2256.us = add nuw nsw i64 %polly.indvar244.us, %polly.access.mul.Packed_MemRef_call2251.us
  %polly.access.Packed_MemRef_call2257.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.us
  %_p_scalar_258.us = load double, double* %polly.access.Packed_MemRef_call2257.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_262.us, %_p_scalar_258.us
  %115 = shl i64 %113, 3
  %116 = add i64 %115, %118
  %scevgep263.us = getelementptr i8, i8* %call, i64 %116
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_265.us
  store double %p_add42.i118.us, double* %scevgep263264.us, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next245.us = add nuw nsw i64 %polly.indvar244.us, 1
  %exitcond848.not = icmp eq i64 %polly.indvar244.us, %smin
  br i1 %exitcond848.not, label %polly.loop_exit242.us, label %polly.loop_header240.us

polly.loop_exit242.us:                            ; preds = %polly.loop_header240.us, %polly.loop_header233.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %polly.loop_cond238.us = icmp ult i64 %polly.indvar236.us, 19
  %indvars.iv.next847 = add i64 %indvars.iv846, 1
  br i1 %polly.loop_cond238.us, label %polly.loop_header233.us, label %polly.loop_exit235.loopexit.us

polly.loop_header240.preheader.us:                ; preds = %polly.loop_header233.us
  %polly.access.add.Packed_MemRef_call2252.us = add nsw i64 %polly.access.mul.Packed_MemRef_call2251.us, %112
  %polly.access.Packed_MemRef_call2253.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.us
  %_p_scalar_254.us = load double, double* %polly.access.Packed_MemRef_call2253.us, align 8
  %117 = mul i64 %111, 480
  %scevgep260.us = getelementptr i8, i8* %scevgep247.us, i64 %117
  %scevgep260261.us = bitcast i8* %scevgep260.us to double*
  %_p_scalar_262.us = load double, double* %scevgep260261.us, align 8, !alias.scope !71, !noalias !78
  %118 = mul i64 %111, 640
  br label %polly.loop_header240.us

polly.loop_exit235.loopexit.us:                   ; preds = %polly.loop_exit242.us
  %polly.indvar_next231.us = add nuw nsw i64 %polly.indvar230.us, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next231.us, 60
  br i1 %exitcond849.not, label %polly.loop_exit229, label %polly.loop_header227.us

polly.loop_exit229:                               ; preds = %polly.loop_exit235.loopexit.us, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %polly.loop_cond226 = icmp ult i64 %polly.indvar224, 3
  %indvars.iv.next841 = add i64 %indvars.iv840, -20
  %indvars.iv.next845 = add i64 %indvars.iv844, 20
  br i1 %polly.loop_cond226, label %polly.loop_header221, label %polly.loop_exit223

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit395
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1304 = phi i64 [ %indvar.next1305, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %119 = add i64 %indvar1304, 1
  %120 = mul nuw nsw i64 %polly.indvar357, 640
  %scevgep366 = getelementptr i8, i8* %call, i64 %120
  %min.iters.check1306 = icmp ult i64 %119, 4
  br i1 %min.iters.check1306, label %polly.loop_header360.preheader, label %vector.ph1307

vector.ph1307:                                    ; preds = %polly.loop_header354
  %n.vec1309 = and i64 %119, -4
  br label %vector.body1303

vector.body1303:                                  ; preds = %vector.body1303, %vector.ph1307
  %index1310 = phi i64 [ 0, %vector.ph1307 ], [ %index.next1311, %vector.body1303 ]
  %121 = shl nuw nsw i64 %index1310, 3
  %122 = getelementptr i8, i8* %scevgep366, i64 %121
  %123 = bitcast i8* %122 to <4 x double>*
  %wide.load1314 = load <4 x double>, <4 x double>* %123, align 8, !alias.scope !79, !noalias !81
  %124 = fmul fast <4 x double> %wide.load1314, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %125 = bitcast i8* %122 to <4 x double>*
  store <4 x double> %124, <4 x double>* %125, align 8, !alias.scope !79, !noalias !81
  %index.next1311 = add i64 %index1310, 4
  %126 = icmp eq i64 %index.next1311, %n.vec1309
  br i1 %126, label %middle.block1301, label %vector.body1303, !llvm.loop !85

middle.block1301:                                 ; preds = %vector.body1303
  %cmp.n1313 = icmp eq i64 %119, %n.vec1309
  br i1 %cmp.n1313, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1301
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1309, %middle.block1301 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1301
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next358, 80
  %indvar.next1305 = add i64 %indvar1304, 1
  br i1 %exitcond875.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %127 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %127
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond874.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !86

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit395
  %indvars.iv864 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next865, %polly.loop_exit395 ]
  %indvars.iv859 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next860, %polly.loop_exit395 ]
  %indvars.iv857 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next858, %polly.loop_exit395 ]
  %indvars.iv853 = phi i64 [ 80, %polly.loop_header370.preheader ], [ %indvars.iv.next854, %polly.loop_exit395 ]
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %polly.indvar_next374, %polly.loop_exit395 ]
  %128 = udiv i64 %indvars.iv859, 5
  %129 = mul nuw nsw i64 %128, 20
  %130 = sub nsw i64 %indvars.iv857, %129
  %131 = add i64 %indvars.iv864, %129
  %132 = shl nsw i64 %polly.indvar373, 3
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_exit384
  %133 = mul nsw i64 %polly.indvar373, -8
  %134 = shl nuw nsw i64 %polly.indvar373, 1
  %pexp.p_div_q392 = udiv i64 %134, 5
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit401
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %indvars.iv.next854 = add nsw i64 %indvars.iv853, -8
  %indvars.iv.next858 = add nuw nsw i64 %indvars.iv857, 8
  %indvars.iv.next860 = add nuw nsw i64 %indvars.iv859, 2
  %indvars.iv.next865 = add nsw i64 %indvars.iv864, -8
  %exitcond873.not = icmp eq i64 %polly.indvar_next374, 10
  br i1 %exitcond873.not, label %polly.exiting269, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_exit384, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_exit384 ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar379, 80
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next380, 60
  br i1 %exitcond856.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header376
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header376 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %135 = add nuw nsw i64 %polly.indvar385, %132
  %polly.access.mul.call2389 = mul nuw nsw i64 %135, 60
  %polly.access.add.call2390 = add nuw nsw i64 %polly.access.mul.call2389, %polly.indvar379
  %polly.access.call2391 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2390
  %polly.access.call2391.load = load double, double* %polly.access.call2391, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar385, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2391.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next386, %indvars.iv853
  br i1 %exitcond855.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header393:                             ; preds = %polly.loop_exit401, %polly.loop_exit378
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %polly.loop_exit401 ], [ %131, %polly.loop_exit378 ]
  %indvars.iv861 = phi i64 [ %indvars.iv.next862, %polly.loop_exit401 ], [ %130, %polly.loop_exit378 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit401 ], [ %pexp.p_div_q392, %polly.loop_exit378 ]
  %smax863 = call i64 @llvm.smax.i64(i64 %indvars.iv861, i64 0)
  %136 = add i64 %smax863, %indvars.iv866
  %137 = mul nuw nsw i64 %polly.indvar396, 20
  %138 = sub nsw i64 %132, %137
  %139 = icmp sgt i64 %138, 0
  %140 = select i1 %139, i64 %138, i64 0
  %polly.loop_guard409 = icmp slt i64 %140, 20
  br i1 %polly.loop_guard409, label %polly.loop_header399.us, label %polly.loop_exit401

polly.loop_header399.us:                          ; preds = %polly.loop_header393, %polly.loop_exit408.loopexit.us
  %polly.indvar402.us = phi i64 [ %polly.indvar_next403.us, %polly.loop_exit408.loopexit.us ], [ 0, %polly.loop_header393 ]
  %141 = shl nuw nsw i64 %polly.indvar402.us, 3
  %scevgep421.us = getelementptr i8, i8* %call1, i64 %141
  %polly.access.mul.Packed_MemRef_call2271425.us = mul nuw nsw i64 %polly.indvar402.us, 80
  br label %polly.loop_header406.us

polly.loop_header406.us:                          ; preds = %polly.loop_exit416.us, %polly.loop_header399.us
  %indvars.iv868 = phi i64 [ %indvars.iv.next869, %polly.loop_exit416.us ], [ %136, %polly.loop_header399.us ]
  %polly.indvar410.us = phi i64 [ %polly.indvar_next411.us, %polly.loop_exit416.us ], [ %140, %polly.loop_header399.us ]
  %smin870 = call i64 @llvm.smin.i64(i64 %indvars.iv868, i64 7)
  %142 = add nuw i64 %polly.indvar410.us, %137
  %143 = add i64 %142, %133
  %polly.loop_guard417.us979 = icmp sgt i64 %143, -1
  br i1 %polly.loop_guard417.us979, label %polly.loop_header414.preheader.us, label %polly.loop_exit416.us

polly.loop_header414.us:                          ; preds = %polly.loop_header414.preheader.us, %polly.loop_header414.us
  %polly.indvar418.us = phi i64 [ %polly.indvar_next419.us, %polly.loop_header414.us ], [ 0, %polly.loop_header414.preheader.us ]
  %144 = add nuw nsw i64 %polly.indvar418.us, %132
  %145 = mul nuw nsw i64 %144, 480
  %scevgep422.us = getelementptr i8, i8* %scevgep421.us, i64 %145
  %scevgep422423.us = bitcast i8* %scevgep422.us to double*
  %_p_scalar_424.us = load double, double* %scevgep422423.us, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.us = fmul fast double %_p_scalar_428.us, %_p_scalar_424.us
  %polly.access.add.Packed_MemRef_call2271430.us = add nuw nsw i64 %polly.indvar418.us, %polly.access.mul.Packed_MemRef_call2271425.us
  %polly.access.Packed_MemRef_call2271431.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271430.us
  %_p_scalar_432.us = load double, double* %polly.access.Packed_MemRef_call2271431.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_436.us, %_p_scalar_432.us
  %146 = shl i64 %144, 3
  %147 = add i64 %146, %149
  %scevgep437.us = getelementptr i8, i8* %call, i64 %147
  %scevgep437438.us = bitcast i8* %scevgep437.us to double*
  %_p_scalar_439.us = load double, double* %scevgep437438.us, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_439.us
  store double %p_add42.i79.us, double* %scevgep437438.us, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next419.us = add nuw nsw i64 %polly.indvar418.us, 1
  %exitcond871.not = icmp eq i64 %polly.indvar418.us, %smin870
  br i1 %exitcond871.not, label %polly.loop_exit416.us, label %polly.loop_header414.us

polly.loop_exit416.us:                            ; preds = %polly.loop_header414.us, %polly.loop_header406.us
  %polly.indvar_next411.us = add nuw nsw i64 %polly.indvar410.us, 1
  %polly.loop_cond412.us = icmp ult i64 %polly.indvar410.us, 19
  %indvars.iv.next869 = add i64 %indvars.iv868, 1
  br i1 %polly.loop_cond412.us, label %polly.loop_header406.us, label %polly.loop_exit408.loopexit.us

polly.loop_header414.preheader.us:                ; preds = %polly.loop_header406.us
  %polly.access.add.Packed_MemRef_call2271426.us = add nsw i64 %polly.access.mul.Packed_MemRef_call2271425.us, %143
  %polly.access.Packed_MemRef_call2271427.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271426.us
  %_p_scalar_428.us = load double, double* %polly.access.Packed_MemRef_call2271427.us, align 8
  %148 = mul i64 %142, 480
  %scevgep434.us = getelementptr i8, i8* %scevgep421.us, i64 %148
  %scevgep434435.us = bitcast i8* %scevgep434.us to double*
  %_p_scalar_436.us = load double, double* %scevgep434435.us, align 8, !alias.scope !82, !noalias !88
  %149 = mul i64 %142, 640
  br label %polly.loop_header414.us

polly.loop_exit408.loopexit.us:                   ; preds = %polly.loop_exit416.us
  %polly.indvar_next403.us = add nuw nsw i64 %polly.indvar402.us, 1
  %exitcond872.not = icmp eq i64 %polly.indvar_next403.us, 60
  br i1 %exitcond872.not, label %polly.loop_exit401, label %polly.loop_header399.us

polly.loop_exit401:                               ; preds = %polly.loop_exit408.loopexit.us, %polly.loop_header393
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %polly.loop_cond398 = icmp ult i64 %polly.indvar396, 3
  %indvars.iv.next862 = add i64 %indvars.iv861, -20
  %indvars.iv.next867 = add i64 %indvars.iv866, 20
  br i1 %polly.loop_cond398, label %polly.loop_header393, label %polly.loop_exit395

polly.start442:                                   ; preds = %init_array.exit
  %malloccall444 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header528

polly.exiting443:                                 ; preds = %polly.loop_exit569
  tail call void @free(i8* %malloccall444)
  br label %kernel_syr2k.exit

polly.loop_header528:                             ; preds = %polly.loop_exit536, %polly.start442
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit536 ], [ 0, %polly.start442 ]
  %polly.indvar531 = phi i64 [ %polly.indvar_next532, %polly.loop_exit536 ], [ 1, %polly.start442 ]
  %150 = add i64 %indvar, 1
  %151 = mul nuw nsw i64 %polly.indvar531, 640
  %scevgep540 = getelementptr i8, i8* %call, i64 %151
  %min.iters.check1280 = icmp ult i64 %150, 4
  br i1 %min.iters.check1280, label %polly.loop_header534.preheader, label %vector.ph1281

vector.ph1281:                                    ; preds = %polly.loop_header528
  %n.vec1283 = and i64 %150, -4
  br label %vector.body1279

vector.body1279:                                  ; preds = %vector.body1279, %vector.ph1281
  %index1284 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1285, %vector.body1279 ]
  %152 = shl nuw nsw i64 %index1284, 3
  %153 = getelementptr i8, i8* %scevgep540, i64 %152
  %154 = bitcast i8* %153 to <4 x double>*
  %wide.load1288 = load <4 x double>, <4 x double>* %154, align 8, !alias.scope !89, !noalias !91
  %155 = fmul fast <4 x double> %wide.load1288, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %156 = bitcast i8* %153 to <4 x double>*
  store <4 x double> %155, <4 x double>* %156, align 8, !alias.scope !89, !noalias !91
  %index.next1285 = add i64 %index1284, 4
  %157 = icmp eq i64 %index.next1285, %n.vec1283
  br i1 %157, label %middle.block1277, label %vector.body1279, !llvm.loop !95

middle.block1277:                                 ; preds = %vector.body1279
  %cmp.n1287 = icmp eq i64 %150, %n.vec1283
  br i1 %cmp.n1287, label %polly.loop_exit536, label %polly.loop_header534.preheader

polly.loop_header534.preheader:                   ; preds = %polly.loop_header528, %middle.block1277
  %polly.indvar537.ph = phi i64 [ 0, %polly.loop_header528 ], [ %n.vec1283, %middle.block1277 ]
  br label %polly.loop_header534

polly.loop_exit536:                               ; preds = %polly.loop_header534, %middle.block1277
  %polly.indvar_next532 = add nuw nsw i64 %polly.indvar531, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next532, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond898.not, label %polly.loop_header544.preheader, label %polly.loop_header528

polly.loop_header544.preheader:                   ; preds = %polly.loop_exit536
  %Packed_MemRef_call2445 = bitcast i8* %malloccall444 to double*
  br label %polly.loop_header544

polly.loop_header534:                             ; preds = %polly.loop_header534.preheader, %polly.loop_header534
  %polly.indvar537 = phi i64 [ %polly.indvar_next538, %polly.loop_header534 ], [ %polly.indvar537.ph, %polly.loop_header534.preheader ]
  %158 = shl nuw nsw i64 %polly.indvar537, 3
  %scevgep541 = getelementptr i8, i8* %scevgep540, i64 %158
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_543, 1.200000e+00
  store double %p_mul.i, double* %scevgep541542, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next538 = add nuw nsw i64 %polly.indvar537, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next538, %polly.indvar531
  br i1 %exitcond897.not, label %polly.loop_exit536, label %polly.loop_header534, !llvm.loop !96

polly.loop_header544:                             ; preds = %polly.loop_header544.preheader, %polly.loop_exit569
  %indvars.iv887 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %indvars.iv.next888, %polly.loop_exit569 ]
  %indvars.iv882 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %indvars.iv.next883, %polly.loop_exit569 ]
  %indvars.iv880 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %indvars.iv.next881, %polly.loop_exit569 ]
  %indvars.iv876 = phi i64 [ 80, %polly.loop_header544.preheader ], [ %indvars.iv.next877, %polly.loop_exit569 ]
  %polly.indvar547 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %polly.indvar_next548, %polly.loop_exit569 ]
  %159 = udiv i64 %indvars.iv882, 5
  %160 = mul nuw nsw i64 %159, 20
  %161 = sub nsw i64 %indvars.iv880, %160
  %162 = add i64 %indvars.iv887, %160
  %163 = shl nsw i64 %polly.indvar547, 3
  br label %polly.loop_header550

polly.loop_exit552:                               ; preds = %polly.loop_exit558
  %164 = mul nsw i64 %polly.indvar547, -8
  %165 = shl nuw nsw i64 %polly.indvar547, 1
  %pexp.p_div_q566 = udiv i64 %165, 5
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next548 = add nuw nsw i64 %polly.indvar547, 1
  %indvars.iv.next877 = add nsw i64 %indvars.iv876, -8
  %indvars.iv.next881 = add nuw nsw i64 %indvars.iv880, 8
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 2
  %indvars.iv.next888 = add nsw i64 %indvars.iv887, -8
  %exitcond896.not = icmp eq i64 %polly.indvar_next548, 10
  br i1 %exitcond896.not, label %polly.exiting443, label %polly.loop_header544

polly.loop_header550:                             ; preds = %polly.loop_exit558, %polly.loop_header544
  %polly.indvar553 = phi i64 [ 0, %polly.loop_header544 ], [ %polly.indvar_next554, %polly.loop_exit558 ]
  %polly.access.mul.Packed_MemRef_call2445 = mul nuw nsw i64 %polly.indvar553, 80
  br label %polly.loop_header556

polly.loop_exit558:                               ; preds = %polly.loop_header556
  %polly.indvar_next554 = add nuw nsw i64 %polly.indvar553, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next554, 60
  br i1 %exitcond879.not, label %polly.loop_exit552, label %polly.loop_header550

polly.loop_header556:                             ; preds = %polly.loop_header556, %polly.loop_header550
  %polly.indvar559 = phi i64 [ 0, %polly.loop_header550 ], [ %polly.indvar_next560, %polly.loop_header556 ]
  %166 = add nuw nsw i64 %polly.indvar559, %163
  %polly.access.mul.call2563 = mul nuw nsw i64 %166, 60
  %polly.access.add.call2564 = add nuw nsw i64 %polly.access.mul.call2563, %polly.indvar553
  %polly.access.call2565 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2564
  %polly.access.call2565.load = load double, double* %polly.access.call2565, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2445 = add nuw nsw i64 %polly.indvar559, %polly.access.mul.Packed_MemRef_call2445
  %polly.access.Packed_MemRef_call2445 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445
  store double %polly.access.call2565.load, double* %polly.access.Packed_MemRef_call2445, align 8
  %polly.indvar_next560 = add nuw nsw i64 %polly.indvar559, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next560, %indvars.iv876
  br i1 %exitcond878.not, label %polly.loop_exit558, label %polly.loop_header556

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_exit552
  %indvars.iv889 = phi i64 [ %indvars.iv.next890, %polly.loop_exit575 ], [ %162, %polly.loop_exit552 ]
  %indvars.iv884 = phi i64 [ %indvars.iv.next885, %polly.loop_exit575 ], [ %161, %polly.loop_exit552 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit575 ], [ %pexp.p_div_q566, %polly.loop_exit552 ]
  %smax886 = call i64 @llvm.smax.i64(i64 %indvars.iv884, i64 0)
  %167 = add i64 %smax886, %indvars.iv889
  %168 = mul nuw nsw i64 %polly.indvar570, 20
  %169 = sub nsw i64 %163, %168
  %170 = icmp sgt i64 %169, 0
  %171 = select i1 %170, i64 %169, i64 0
  %polly.loop_guard583 = icmp slt i64 %171, 20
  br i1 %polly.loop_guard583, label %polly.loop_header573.us, label %polly.loop_exit575

polly.loop_header573.us:                          ; preds = %polly.loop_header567, %polly.loop_exit582.loopexit.us
  %polly.indvar576.us = phi i64 [ %polly.indvar_next577.us, %polly.loop_exit582.loopexit.us ], [ 0, %polly.loop_header567 ]
  %172 = shl nuw nsw i64 %polly.indvar576.us, 3
  %scevgep595.us = getelementptr i8, i8* %call1, i64 %172
  %polly.access.mul.Packed_MemRef_call2445599.us = mul nuw nsw i64 %polly.indvar576.us, 80
  br label %polly.loop_header580.us

polly.loop_header580.us:                          ; preds = %polly.loop_exit590.us, %polly.loop_header573.us
  %indvars.iv891 = phi i64 [ %indvars.iv.next892, %polly.loop_exit590.us ], [ %167, %polly.loop_header573.us ]
  %polly.indvar584.us = phi i64 [ %polly.indvar_next585.us, %polly.loop_exit590.us ], [ %171, %polly.loop_header573.us ]
  %smin893 = call i64 @llvm.smin.i64(i64 %indvars.iv891, i64 7)
  %173 = add nuw i64 %polly.indvar584.us, %168
  %174 = add i64 %173, %164
  %polly.loop_guard591.us980 = icmp sgt i64 %174, -1
  br i1 %polly.loop_guard591.us980, label %polly.loop_header588.preheader.us, label %polly.loop_exit590.us

polly.loop_header588.us:                          ; preds = %polly.loop_header588.preheader.us, %polly.loop_header588.us
  %polly.indvar592.us = phi i64 [ %polly.indvar_next593.us, %polly.loop_header588.us ], [ 0, %polly.loop_header588.preheader.us ]
  %175 = add nuw nsw i64 %polly.indvar592.us, %163
  %176 = mul nuw nsw i64 %175, 480
  %scevgep596.us = getelementptr i8, i8* %scevgep595.us, i64 %176
  %scevgep596597.us = bitcast i8* %scevgep596.us to double*
  %_p_scalar_598.us = load double, double* %scevgep596597.us, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.us = fmul fast double %_p_scalar_602.us, %_p_scalar_598.us
  %polly.access.add.Packed_MemRef_call2445604.us = add nuw nsw i64 %polly.indvar592.us, %polly.access.mul.Packed_MemRef_call2445599.us
  %polly.access.Packed_MemRef_call2445605.us = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445604.us
  %_p_scalar_606.us = load double, double* %polly.access.Packed_MemRef_call2445605.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_610.us, %_p_scalar_606.us
  %177 = shl i64 %175, 3
  %178 = add i64 %177, %180
  %scevgep611.us = getelementptr i8, i8* %call, i64 %178
  %scevgep611612.us = bitcast i8* %scevgep611.us to double*
  %_p_scalar_613.us = load double, double* %scevgep611612.us, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_613.us
  store double %p_add42.i.us, double* %scevgep611612.us, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond894.not = icmp eq i64 %polly.indvar592.us, %smin893
  br i1 %exitcond894.not, label %polly.loop_exit590.us, label %polly.loop_header588.us

polly.loop_exit590.us:                            ; preds = %polly.loop_header588.us, %polly.loop_header580.us
  %polly.indvar_next585.us = add nuw nsw i64 %polly.indvar584.us, 1
  %polly.loop_cond586.us = icmp ult i64 %polly.indvar584.us, 19
  %indvars.iv.next892 = add i64 %indvars.iv891, 1
  br i1 %polly.loop_cond586.us, label %polly.loop_header580.us, label %polly.loop_exit582.loopexit.us

polly.loop_header588.preheader.us:                ; preds = %polly.loop_header580.us
  %polly.access.add.Packed_MemRef_call2445600.us = add nsw i64 %polly.access.mul.Packed_MemRef_call2445599.us, %174
  %polly.access.Packed_MemRef_call2445601.us = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445600.us
  %_p_scalar_602.us = load double, double* %polly.access.Packed_MemRef_call2445601.us, align 8
  %179 = mul i64 %173, 480
  %scevgep608.us = getelementptr i8, i8* %scevgep595.us, i64 %179
  %scevgep608609.us = bitcast i8* %scevgep608.us to double*
  %_p_scalar_610.us = load double, double* %scevgep608609.us, align 8, !alias.scope !92, !noalias !98
  %180 = mul i64 %173, 640
  br label %polly.loop_header588.us

polly.loop_exit582.loopexit.us:                   ; preds = %polly.loop_exit590.us
  %polly.indvar_next577.us = add nuw nsw i64 %polly.indvar576.us, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next577.us, 60
  br i1 %exitcond895.not, label %polly.loop_exit575, label %polly.loop_header573.us

polly.loop_exit575:                               ; preds = %polly.loop_exit582.loopexit.us, %polly.loop_header567
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %polly.loop_cond572 = icmp ult i64 %polly.indvar570, 3
  %indvars.iv.next885 = add i64 %indvars.iv884, -20
  %indvars.iv.next890 = add i64 %indvars.iv889, 20
  br i1 %polly.loop_cond572, label %polly.loop_header567, label %polly.loop_exit569

polly.loop_header752:                             ; preds = %entry, %polly.loop_exit760
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %entry ]
  %181 = mul nuw nsw i64 %polly.indvar755, 640
  %182 = trunc i64 %polly.indvar755 to i32
  %broadcast.splatinsert1011 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1012 = shufflevector <4 x i32> %broadcast.splatinsert1011, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1001

vector.body1001:                                  ; preds = %vector.body1001, %polly.loop_header752
  %index1003 = phi i64 [ 0, %polly.loop_header752 ], [ %index.next1004, %vector.body1001 ]
  %vec.ind1009 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752 ], [ %vec.ind.next1010, %vector.body1001 ]
  %183 = mul <4 x i32> %vec.ind1009, %broadcast.splat1012
  %184 = add <4 x i32> %183, <i32 3, i32 3, i32 3, i32 3>
  %185 = urem <4 x i32> %184, <i32 80, i32 80, i32 80, i32 80>
  %186 = sitofp <4 x i32> %185 to <4 x double>
  %187 = fmul fast <4 x double> %186, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %188 = shl i64 %index1003, 3
  %189 = add nuw nsw i64 %188, %181
  %190 = getelementptr i8, i8* %call, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %187, <4 x double>* %191, align 8, !alias.scope !99, !noalias !101
  %index.next1004 = add i64 %index1003, 4
  %vec.ind.next1010 = add <4 x i32> %vec.ind1009, <i32 4, i32 4, i32 4, i32 4>
  %192 = icmp eq i64 %index.next1004, 32
  br i1 %192, label %polly.loop_exit760, label %vector.body1001, !llvm.loop !104

polly.loop_exit760:                               ; preds = %vector.body1001
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond918.not = icmp eq i64 %polly.indvar_next756, 32
  br i1 %exitcond918.not, label %polly.loop_header752.1, label %polly.loop_header752

polly.loop_header779:                             ; preds = %polly.loop_exit760.2.2, %polly.loop_exit787
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_exit760.2.2 ]
  %193 = mul nuw nsw i64 %polly.indvar782, 480
  %194 = trunc i64 %polly.indvar782 to i32
  %broadcast.splatinsert1125 = insertelement <4 x i32> poison, i32 %194, i32 0
  %broadcast.splat1126 = shufflevector <4 x i32> %broadcast.splatinsert1125, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1115

vector.body1115:                                  ; preds = %vector.body1115, %polly.loop_header779
  %index1117 = phi i64 [ 0, %polly.loop_header779 ], [ %index.next1118, %vector.body1115 ]
  %vec.ind1123 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779 ], [ %vec.ind.next1124, %vector.body1115 ]
  %195 = mul <4 x i32> %vec.ind1123, %broadcast.splat1126
  %196 = add <4 x i32> %195, <i32 2, i32 2, i32 2, i32 2>
  %197 = urem <4 x i32> %196, <i32 60, i32 60, i32 60, i32 60>
  %198 = sitofp <4 x i32> %197 to <4 x double>
  %199 = fmul fast <4 x double> %198, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %200 = shl i64 %index1117, 3
  %201 = add i64 %200, %193
  %202 = getelementptr i8, i8* %call2, i64 %201
  %203 = bitcast i8* %202 to <4 x double>*
  store <4 x double> %199, <4 x double>* %203, align 8, !alias.scope !103, !noalias !105
  %index.next1118 = add i64 %index1117, 4
  %vec.ind.next1124 = add <4 x i32> %vec.ind1123, <i32 4, i32 4, i32 4, i32 4>
  %204 = icmp eq i64 %index.next1118, 32
  br i1 %204, label %polly.loop_exit787, label %vector.body1115, !llvm.loop !106

polly.loop_exit787:                               ; preds = %vector.body1115
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond909.not = icmp eq i64 %polly.indvar_next783, 32
  br i1 %exitcond909.not, label %polly.loop_header779.1, label %polly.loop_header779

polly.loop_header805:                             ; preds = %polly.loop_exit787.1.2, %polly.loop_exit813
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_exit787.1.2 ]
  %205 = mul nuw nsw i64 %polly.indvar808, 480
  %206 = trunc i64 %polly.indvar808 to i32
  %broadcast.splatinsert1203 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1204 = shufflevector <4 x i32> %broadcast.splatinsert1203, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1193

vector.body1193:                                  ; preds = %vector.body1193, %polly.loop_header805
  %index1195 = phi i64 [ 0, %polly.loop_header805 ], [ %index.next1196, %vector.body1193 ]
  %vec.ind1201 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805 ], [ %vec.ind.next1202, %vector.body1193 ]
  %207 = mul <4 x i32> %vec.ind1201, %broadcast.splat1204
  %208 = add <4 x i32> %207, <i32 1, i32 1, i32 1, i32 1>
  %209 = urem <4 x i32> %208, <i32 80, i32 80, i32 80, i32 80>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %212 = shl i64 %index1195, 3
  %213 = add i64 %212, %205
  %214 = getelementptr i8, i8* %call1, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %211, <4 x double>* %215, align 8, !alias.scope !102, !noalias !107
  %index.next1196 = add i64 %index1195, 4
  %vec.ind.next1202 = add <4 x i32> %vec.ind1201, <i32 4, i32 4, i32 4, i32 4>
  %216 = icmp eq i64 %index.next1196, 32
  br i1 %216, label %polly.loop_exit813, label %vector.body1193, !llvm.loop !108

polly.loop_exit813:                               ; preds = %vector.body1193
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond903.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond903.not, label %polly.loop_header805.1, label %polly.loop_header805

polly.loop_header805.1:                           ; preds = %polly.loop_exit813, %polly.loop_exit813.1
  %polly.indvar808.1 = phi i64 [ %polly.indvar_next809.1, %polly.loop_exit813.1 ], [ 0, %polly.loop_exit813 ]
  %217 = mul nuw nsw i64 %polly.indvar808.1, 480
  %218 = trunc i64 %polly.indvar808.1 to i32
  %broadcast.splatinsert1215 = insertelement <4 x i32> poison, i32 %218, i32 0
  %broadcast.splat1216 = shufflevector <4 x i32> %broadcast.splatinsert1215, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1207

vector.body1207:                                  ; preds = %vector.body1207, %polly.loop_header805.1
  %index1209 = phi i64 [ 0, %polly.loop_header805.1 ], [ %index.next1210, %vector.body1207 ]
  %vec.ind1213 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1 ], [ %vec.ind.next1214, %vector.body1207 ]
  %219 = add nuw nsw <4 x i64> %vec.ind1213, <i64 32, i64 32, i64 32, i64 32>
  %220 = trunc <4 x i64> %219 to <4 x i32>
  %221 = mul <4 x i32> %broadcast.splat1216, %220
  %222 = add <4 x i32> %221, <i32 1, i32 1, i32 1, i32 1>
  %223 = urem <4 x i32> %222, <i32 80, i32 80, i32 80, i32 80>
  %224 = sitofp <4 x i32> %223 to <4 x double>
  %225 = fmul fast <4 x double> %224, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %226 = extractelement <4 x i64> %219, i32 0
  %227 = shl i64 %226, 3
  %228 = add i64 %227, %217
  %229 = getelementptr i8, i8* %call1, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %225, <4 x double>* %230, align 8, !alias.scope !102, !noalias !107
  %index.next1210 = add i64 %index1209, 4
  %vec.ind.next1214 = add <4 x i64> %vec.ind1213, <i64 4, i64 4, i64 4, i64 4>
  %231 = icmp eq i64 %index.next1210, 28
  br i1 %231, label %polly.loop_exit813.1, label %vector.body1207, !llvm.loop !109

polly.loop_exit813.1:                             ; preds = %vector.body1207
  %polly.indvar_next809.1 = add nuw nsw i64 %polly.indvar808.1, 1
  %exitcond903.1.not = icmp eq i64 %polly.indvar_next809.1, 32
  br i1 %exitcond903.1.not, label %polly.loop_header805.1923, label %polly.loop_header805.1

polly.loop_header805.1923:                        ; preds = %polly.loop_exit813.1, %polly.loop_exit813.1934
  %polly.indvar808.1922 = phi i64 [ %polly.indvar_next809.1932, %polly.loop_exit813.1934 ], [ 0, %polly.loop_exit813.1 ]
  %232 = add nuw nsw i64 %polly.indvar808.1922, 32
  %233 = mul nuw nsw i64 %232, 480
  %234 = trunc i64 %232 to i32
  %broadcast.splatinsert1229 = insertelement <4 x i32> poison, i32 %234, i32 0
  %broadcast.splat1230 = shufflevector <4 x i32> %broadcast.splatinsert1229, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1219

vector.body1219:                                  ; preds = %vector.body1219, %polly.loop_header805.1923
  %index1221 = phi i64 [ 0, %polly.loop_header805.1923 ], [ %index.next1222, %vector.body1219 ]
  %vec.ind1227 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.1923 ], [ %vec.ind.next1228, %vector.body1219 ]
  %235 = mul <4 x i32> %vec.ind1227, %broadcast.splat1230
  %236 = add <4 x i32> %235, <i32 1, i32 1, i32 1, i32 1>
  %237 = urem <4 x i32> %236, <i32 80, i32 80, i32 80, i32 80>
  %238 = sitofp <4 x i32> %237 to <4 x double>
  %239 = fmul fast <4 x double> %238, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %240 = shl i64 %index1221, 3
  %241 = add i64 %240, %233
  %242 = getelementptr i8, i8* %call1, i64 %241
  %243 = bitcast i8* %242 to <4 x double>*
  store <4 x double> %239, <4 x double>* %243, align 8, !alias.scope !102, !noalias !107
  %index.next1222 = add i64 %index1221, 4
  %vec.ind.next1228 = add <4 x i32> %vec.ind1227, <i32 4, i32 4, i32 4, i32 4>
  %244 = icmp eq i64 %index.next1222, 32
  br i1 %244, label %polly.loop_exit813.1934, label %vector.body1219, !llvm.loop !110

polly.loop_exit813.1934:                          ; preds = %vector.body1219
  %polly.indvar_next809.1932 = add nuw nsw i64 %polly.indvar808.1922, 1
  %exitcond903.1933.not = icmp eq i64 %polly.indvar_next809.1932, 32
  br i1 %exitcond903.1933.not, label %polly.loop_header805.1.1, label %polly.loop_header805.1923

polly.loop_header805.1.1:                         ; preds = %polly.loop_exit813.1934, %polly.loop_exit813.1.1
  %polly.indvar808.1.1 = phi i64 [ %polly.indvar_next809.1.1, %polly.loop_exit813.1.1 ], [ 0, %polly.loop_exit813.1934 ]
  %245 = add nuw nsw i64 %polly.indvar808.1.1, 32
  %246 = mul nuw nsw i64 %245, 480
  %247 = trunc i64 %245 to i32
  %broadcast.splatinsert1241 = insertelement <4 x i32> poison, i32 %247, i32 0
  %broadcast.splat1242 = shufflevector <4 x i32> %broadcast.splatinsert1241, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1233

vector.body1233:                                  ; preds = %vector.body1233, %polly.loop_header805.1.1
  %index1235 = phi i64 [ 0, %polly.loop_header805.1.1 ], [ %index.next1236, %vector.body1233 ]
  %vec.ind1239 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.1 ], [ %vec.ind.next1240, %vector.body1233 ]
  %248 = add nuw nsw <4 x i64> %vec.ind1239, <i64 32, i64 32, i64 32, i64 32>
  %249 = trunc <4 x i64> %248 to <4 x i32>
  %250 = mul <4 x i32> %broadcast.splat1242, %249
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 80, i32 80, i32 80, i32 80>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %255 = extractelement <4 x i64> %248, i32 0
  %256 = shl i64 %255, 3
  %257 = add i64 %256, %246
  %258 = getelementptr i8, i8* %call1, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %254, <4 x double>* %259, align 8, !alias.scope !102, !noalias !107
  %index.next1236 = add i64 %index1235, 4
  %vec.ind.next1240 = add <4 x i64> %vec.ind1239, <i64 4, i64 4, i64 4, i64 4>
  %260 = icmp eq i64 %index.next1236, 28
  br i1 %260, label %polly.loop_exit813.1.1, label %vector.body1233, !llvm.loop !111

polly.loop_exit813.1.1:                           ; preds = %vector.body1233
  %polly.indvar_next809.1.1 = add nuw nsw i64 %polly.indvar808.1.1, 1
  %exitcond903.1.1.not = icmp eq i64 %polly.indvar_next809.1.1, 32
  br i1 %exitcond903.1.1.not, label %polly.loop_header805.2, label %polly.loop_header805.1.1

polly.loop_header805.2:                           ; preds = %polly.loop_exit813.1.1, %polly.loop_exit813.2
  %polly.indvar808.2 = phi i64 [ %polly.indvar_next809.2, %polly.loop_exit813.2 ], [ 0, %polly.loop_exit813.1.1 ]
  %261 = add nuw nsw i64 %polly.indvar808.2, 64
  %262 = mul nuw nsw i64 %261, 480
  %263 = trunc i64 %261 to i32
  %broadcast.splatinsert1255 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1256 = shufflevector <4 x i32> %broadcast.splatinsert1255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1245

vector.body1245:                                  ; preds = %vector.body1245, %polly.loop_header805.2
  %index1247 = phi i64 [ 0, %polly.loop_header805.2 ], [ %index.next1248, %vector.body1245 ]
  %vec.ind1253 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.2 ], [ %vec.ind.next1254, %vector.body1245 ]
  %264 = mul <4 x i32> %vec.ind1253, %broadcast.splat1256
  %265 = add <4 x i32> %264, <i32 1, i32 1, i32 1, i32 1>
  %266 = urem <4 x i32> %265, <i32 80, i32 80, i32 80, i32 80>
  %267 = sitofp <4 x i32> %266 to <4 x double>
  %268 = fmul fast <4 x double> %267, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %269 = shl i64 %index1247, 3
  %270 = add i64 %269, %262
  %271 = getelementptr i8, i8* %call1, i64 %270
  %272 = bitcast i8* %271 to <4 x double>*
  store <4 x double> %268, <4 x double>* %272, align 8, !alias.scope !102, !noalias !107
  %index.next1248 = add i64 %index1247, 4
  %vec.ind.next1254 = add <4 x i32> %vec.ind1253, <i32 4, i32 4, i32 4, i32 4>
  %273 = icmp eq i64 %index.next1248, 32
  br i1 %273, label %polly.loop_exit813.2, label %vector.body1245, !llvm.loop !112

polly.loop_exit813.2:                             ; preds = %vector.body1245
  %polly.indvar_next809.2 = add nuw nsw i64 %polly.indvar808.2, 1
  %exitcond903.2.not = icmp eq i64 %polly.indvar_next809.2, 16
  br i1 %exitcond903.2.not, label %polly.loop_header805.1.2, label %polly.loop_header805.2

polly.loop_header805.1.2:                         ; preds = %polly.loop_exit813.2, %polly.loop_exit813.1.2
  %polly.indvar808.1.2 = phi i64 [ %polly.indvar_next809.1.2, %polly.loop_exit813.1.2 ], [ 0, %polly.loop_exit813.2 ]
  %274 = add nuw nsw i64 %polly.indvar808.1.2, 64
  %275 = mul nuw nsw i64 %274, 480
  %276 = trunc i64 %274 to i32
  %broadcast.splatinsert1267 = insertelement <4 x i32> poison, i32 %276, i32 0
  %broadcast.splat1268 = shufflevector <4 x i32> %broadcast.splatinsert1267, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %polly.loop_header805.1.2
  %index1261 = phi i64 [ 0, %polly.loop_header805.1.2 ], [ %index.next1262, %vector.body1259 ]
  %vec.ind1265 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.2 ], [ %vec.ind.next1266, %vector.body1259 ]
  %277 = add nuw nsw <4 x i64> %vec.ind1265, <i64 32, i64 32, i64 32, i64 32>
  %278 = trunc <4 x i64> %277 to <4 x i32>
  %279 = mul <4 x i32> %broadcast.splat1268, %278
  %280 = add <4 x i32> %279, <i32 1, i32 1, i32 1, i32 1>
  %281 = urem <4 x i32> %280, <i32 80, i32 80, i32 80, i32 80>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %284 = extractelement <4 x i64> %277, i32 0
  %285 = shl i64 %284, 3
  %286 = add i64 %285, %275
  %287 = getelementptr i8, i8* %call1, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %283, <4 x double>* %288, align 8, !alias.scope !102, !noalias !107
  %index.next1262 = add i64 %index1261, 4
  %vec.ind.next1266 = add <4 x i64> %vec.ind1265, <i64 4, i64 4, i64 4, i64 4>
  %289 = icmp eq i64 %index.next1262, 28
  br i1 %289, label %polly.loop_exit813.1.2, label %vector.body1259, !llvm.loop !113

polly.loop_exit813.1.2:                           ; preds = %vector.body1259
  %polly.indvar_next809.1.2 = add nuw nsw i64 %polly.indvar808.1.2, 1
  %exitcond903.1.2.not = icmp eq i64 %polly.indvar_next809.1.2, 16
  br i1 %exitcond903.1.2.not, label %init_array.exit, label %polly.loop_header805.1.2

polly.loop_header779.1:                           ; preds = %polly.loop_exit787, %polly.loop_exit787.1
  %polly.indvar782.1 = phi i64 [ %polly.indvar_next783.1, %polly.loop_exit787.1 ], [ 0, %polly.loop_exit787 ]
  %290 = mul nuw nsw i64 %polly.indvar782.1, 480
  %291 = trunc i64 %polly.indvar782.1 to i32
  %broadcast.splatinsert1137 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1138 = shufflevector <4 x i32> %broadcast.splatinsert1137, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1129

vector.body1129:                                  ; preds = %vector.body1129, %polly.loop_header779.1
  %index1131 = phi i64 [ 0, %polly.loop_header779.1 ], [ %index.next1132, %vector.body1129 ]
  %vec.ind1135 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1 ], [ %vec.ind.next1136, %vector.body1129 ]
  %292 = add nuw nsw <4 x i64> %vec.ind1135, <i64 32, i64 32, i64 32, i64 32>
  %293 = trunc <4 x i64> %292 to <4 x i32>
  %294 = mul <4 x i32> %broadcast.splat1138, %293
  %295 = add <4 x i32> %294, <i32 2, i32 2, i32 2, i32 2>
  %296 = urem <4 x i32> %295, <i32 60, i32 60, i32 60, i32 60>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %299 = extractelement <4 x i64> %292, i32 0
  %300 = shl i64 %299, 3
  %301 = add i64 %300, %290
  %302 = getelementptr i8, i8* %call2, i64 %301
  %303 = bitcast i8* %302 to <4 x double>*
  store <4 x double> %298, <4 x double>* %303, align 8, !alias.scope !103, !noalias !105
  %index.next1132 = add i64 %index1131, 4
  %vec.ind.next1136 = add <4 x i64> %vec.ind1135, <i64 4, i64 4, i64 4, i64 4>
  %304 = icmp eq i64 %index.next1132, 28
  br i1 %304, label %polly.loop_exit787.1, label %vector.body1129, !llvm.loop !114

polly.loop_exit787.1:                             ; preds = %vector.body1129
  %polly.indvar_next783.1 = add nuw nsw i64 %polly.indvar782.1, 1
  %exitcond909.1.not = icmp eq i64 %polly.indvar_next783.1, 32
  br i1 %exitcond909.1.not, label %polly.loop_header779.1937, label %polly.loop_header779.1

polly.loop_header779.1937:                        ; preds = %polly.loop_exit787.1, %polly.loop_exit787.1948
  %polly.indvar782.1936 = phi i64 [ %polly.indvar_next783.1946, %polly.loop_exit787.1948 ], [ 0, %polly.loop_exit787.1 ]
  %305 = add nuw nsw i64 %polly.indvar782.1936, 32
  %306 = mul nuw nsw i64 %305, 480
  %307 = trunc i64 %305 to i32
  %broadcast.splatinsert1151 = insertelement <4 x i32> poison, i32 %307, i32 0
  %broadcast.splat1152 = shufflevector <4 x i32> %broadcast.splatinsert1151, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %polly.loop_header779.1937
  %index1143 = phi i64 [ 0, %polly.loop_header779.1937 ], [ %index.next1144, %vector.body1141 ]
  %vec.ind1149 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779.1937 ], [ %vec.ind.next1150, %vector.body1141 ]
  %308 = mul <4 x i32> %vec.ind1149, %broadcast.splat1152
  %309 = add <4 x i32> %308, <i32 2, i32 2, i32 2, i32 2>
  %310 = urem <4 x i32> %309, <i32 60, i32 60, i32 60, i32 60>
  %311 = sitofp <4 x i32> %310 to <4 x double>
  %312 = fmul fast <4 x double> %311, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %313 = shl i64 %index1143, 3
  %314 = add i64 %313, %306
  %315 = getelementptr i8, i8* %call2, i64 %314
  %316 = bitcast i8* %315 to <4 x double>*
  store <4 x double> %312, <4 x double>* %316, align 8, !alias.scope !103, !noalias !105
  %index.next1144 = add i64 %index1143, 4
  %vec.ind.next1150 = add <4 x i32> %vec.ind1149, <i32 4, i32 4, i32 4, i32 4>
  %317 = icmp eq i64 %index.next1144, 32
  br i1 %317, label %polly.loop_exit787.1948, label %vector.body1141, !llvm.loop !115

polly.loop_exit787.1948:                          ; preds = %vector.body1141
  %polly.indvar_next783.1946 = add nuw nsw i64 %polly.indvar782.1936, 1
  %exitcond909.1947.not = icmp eq i64 %polly.indvar_next783.1946, 32
  br i1 %exitcond909.1947.not, label %polly.loop_header779.1.1, label %polly.loop_header779.1937

polly.loop_header779.1.1:                         ; preds = %polly.loop_exit787.1948, %polly.loop_exit787.1.1
  %polly.indvar782.1.1 = phi i64 [ %polly.indvar_next783.1.1, %polly.loop_exit787.1.1 ], [ 0, %polly.loop_exit787.1948 ]
  %318 = add nuw nsw i64 %polly.indvar782.1.1, 32
  %319 = mul nuw nsw i64 %318, 480
  %320 = trunc i64 %318 to i32
  %broadcast.splatinsert1163 = insertelement <4 x i32> poison, i32 %320, i32 0
  %broadcast.splat1164 = shufflevector <4 x i32> %broadcast.splatinsert1163, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1155

vector.body1155:                                  ; preds = %vector.body1155, %polly.loop_header779.1.1
  %index1157 = phi i64 [ 0, %polly.loop_header779.1.1 ], [ %index.next1158, %vector.body1155 ]
  %vec.ind1161 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1.1 ], [ %vec.ind.next1162, %vector.body1155 ]
  %321 = add nuw nsw <4 x i64> %vec.ind1161, <i64 32, i64 32, i64 32, i64 32>
  %322 = trunc <4 x i64> %321 to <4 x i32>
  %323 = mul <4 x i32> %broadcast.splat1164, %322
  %324 = add <4 x i32> %323, <i32 2, i32 2, i32 2, i32 2>
  %325 = urem <4 x i32> %324, <i32 60, i32 60, i32 60, i32 60>
  %326 = sitofp <4 x i32> %325 to <4 x double>
  %327 = fmul fast <4 x double> %326, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %328 = extractelement <4 x i64> %321, i32 0
  %329 = shl i64 %328, 3
  %330 = add i64 %329, %319
  %331 = getelementptr i8, i8* %call2, i64 %330
  %332 = bitcast i8* %331 to <4 x double>*
  store <4 x double> %327, <4 x double>* %332, align 8, !alias.scope !103, !noalias !105
  %index.next1158 = add i64 %index1157, 4
  %vec.ind.next1162 = add <4 x i64> %vec.ind1161, <i64 4, i64 4, i64 4, i64 4>
  %333 = icmp eq i64 %index.next1158, 28
  br i1 %333, label %polly.loop_exit787.1.1, label %vector.body1155, !llvm.loop !116

polly.loop_exit787.1.1:                           ; preds = %vector.body1155
  %polly.indvar_next783.1.1 = add nuw nsw i64 %polly.indvar782.1.1, 1
  %exitcond909.1.1.not = icmp eq i64 %polly.indvar_next783.1.1, 32
  br i1 %exitcond909.1.1.not, label %polly.loop_header779.2, label %polly.loop_header779.1.1

polly.loop_header779.2:                           ; preds = %polly.loop_exit787.1.1, %polly.loop_exit787.2
  %polly.indvar782.2 = phi i64 [ %polly.indvar_next783.2, %polly.loop_exit787.2 ], [ 0, %polly.loop_exit787.1.1 ]
  %334 = add nuw nsw i64 %polly.indvar782.2, 64
  %335 = mul nuw nsw i64 %334, 480
  %336 = trunc i64 %334 to i32
  %broadcast.splatinsert1177 = insertelement <4 x i32> poison, i32 %336, i32 0
  %broadcast.splat1178 = shufflevector <4 x i32> %broadcast.splatinsert1177, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1167

vector.body1167:                                  ; preds = %vector.body1167, %polly.loop_header779.2
  %index1169 = phi i64 [ 0, %polly.loop_header779.2 ], [ %index.next1170, %vector.body1167 ]
  %vec.ind1175 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779.2 ], [ %vec.ind.next1176, %vector.body1167 ]
  %337 = mul <4 x i32> %vec.ind1175, %broadcast.splat1178
  %338 = add <4 x i32> %337, <i32 2, i32 2, i32 2, i32 2>
  %339 = urem <4 x i32> %338, <i32 60, i32 60, i32 60, i32 60>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %342 = shl i64 %index1169, 3
  %343 = add i64 %342, %335
  %344 = getelementptr i8, i8* %call2, i64 %343
  %345 = bitcast i8* %344 to <4 x double>*
  store <4 x double> %341, <4 x double>* %345, align 8, !alias.scope !103, !noalias !105
  %index.next1170 = add i64 %index1169, 4
  %vec.ind.next1176 = add <4 x i32> %vec.ind1175, <i32 4, i32 4, i32 4, i32 4>
  %346 = icmp eq i64 %index.next1170, 32
  br i1 %346, label %polly.loop_exit787.2, label %vector.body1167, !llvm.loop !117

polly.loop_exit787.2:                             ; preds = %vector.body1167
  %polly.indvar_next783.2 = add nuw nsw i64 %polly.indvar782.2, 1
  %exitcond909.2.not = icmp eq i64 %polly.indvar_next783.2, 16
  br i1 %exitcond909.2.not, label %polly.loop_header779.1.2, label %polly.loop_header779.2

polly.loop_header779.1.2:                         ; preds = %polly.loop_exit787.2, %polly.loop_exit787.1.2
  %polly.indvar782.1.2 = phi i64 [ %polly.indvar_next783.1.2, %polly.loop_exit787.1.2 ], [ 0, %polly.loop_exit787.2 ]
  %347 = add nuw nsw i64 %polly.indvar782.1.2, 64
  %348 = mul nuw nsw i64 %347, 480
  %349 = trunc i64 %347 to i32
  %broadcast.splatinsert1189 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat1190 = shufflevector <4 x i32> %broadcast.splatinsert1189, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %polly.loop_header779.1.2
  %index1183 = phi i64 [ 0, %polly.loop_header779.1.2 ], [ %index.next1184, %vector.body1181 ]
  %vec.ind1187 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1.2 ], [ %vec.ind.next1188, %vector.body1181 ]
  %350 = add nuw nsw <4 x i64> %vec.ind1187, <i64 32, i64 32, i64 32, i64 32>
  %351 = trunc <4 x i64> %350 to <4 x i32>
  %352 = mul <4 x i32> %broadcast.splat1190, %351
  %353 = add <4 x i32> %352, <i32 2, i32 2, i32 2, i32 2>
  %354 = urem <4 x i32> %353, <i32 60, i32 60, i32 60, i32 60>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %357 = extractelement <4 x i64> %350, i32 0
  %358 = shl i64 %357, 3
  %359 = add i64 %358, %348
  %360 = getelementptr i8, i8* %call2, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %356, <4 x double>* %361, align 8, !alias.scope !103, !noalias !105
  %index.next1184 = add i64 %index1183, 4
  %vec.ind.next1188 = add <4 x i64> %vec.ind1187, <i64 4, i64 4, i64 4, i64 4>
  %362 = icmp eq i64 %index.next1184, 28
  br i1 %362, label %polly.loop_exit787.1.2, label %vector.body1181, !llvm.loop !118

polly.loop_exit787.1.2:                           ; preds = %vector.body1181
  %polly.indvar_next783.1.2 = add nuw nsw i64 %polly.indvar782.1.2, 1
  %exitcond909.1.2.not = icmp eq i64 %polly.indvar_next783.1.2, 16
  br i1 %exitcond909.1.2.not, label %polly.loop_header805, label %polly.loop_header779.1.2

polly.loop_header752.1:                           ; preds = %polly.loop_exit760, %polly.loop_exit760.1
  %polly.indvar755.1 = phi i64 [ %polly.indvar_next756.1, %polly.loop_exit760.1 ], [ 0, %polly.loop_exit760 ]
  %363 = mul nuw nsw i64 %polly.indvar755.1, 640
  %364 = trunc i64 %polly.indvar755.1 to i32
  %broadcast.splatinsert1023 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1024 = shufflevector <4 x i32> %broadcast.splatinsert1023, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1015

vector.body1015:                                  ; preds = %vector.body1015, %polly.loop_header752.1
  %index1017 = phi i64 [ 0, %polly.loop_header752.1 ], [ %index.next1018, %vector.body1015 ]
  %vec.ind1021 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1 ], [ %vec.ind.next1022, %vector.body1015 ]
  %365 = add nuw nsw <4 x i64> %vec.ind1021, <i64 32, i64 32, i64 32, i64 32>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat1024, %366
  %368 = add <4 x i32> %367, <i32 3, i32 3, i32 3, i32 3>
  %369 = urem <4 x i32> %368, <i32 80, i32 80, i32 80, i32 80>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add nuw nsw i64 %373, %363
  %375 = getelementptr i8, i8* %call, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !99, !noalias !101
  %index.next1018 = add i64 %index1017, 4
  %vec.ind.next1022 = add <4 x i64> %vec.ind1021, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next1018, 32
  br i1 %377, label %polly.loop_exit760.1, label %vector.body1015, !llvm.loop !119

polly.loop_exit760.1:                             ; preds = %vector.body1015
  %polly.indvar_next756.1 = add nuw nsw i64 %polly.indvar755.1, 1
  %exitcond918.1.not = icmp eq i64 %polly.indvar_next756.1, 32
  br i1 %exitcond918.1.not, label %polly.loop_header752.2, label %polly.loop_header752.1

polly.loop_header752.2:                           ; preds = %polly.loop_exit760.1, %polly.loop_exit760.2
  %polly.indvar755.2 = phi i64 [ %polly.indvar_next756.2, %polly.loop_exit760.2 ], [ 0, %polly.loop_exit760.1 ]
  %378 = mul nuw nsw i64 %polly.indvar755.2, 640
  %379 = trunc i64 %polly.indvar755.2 to i32
  %broadcast.splatinsert1035 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat1036 = shufflevector <4 x i32> %broadcast.splatinsert1035, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %polly.loop_header752.2
  %index1029 = phi i64 [ 0, %polly.loop_header752.2 ], [ %index.next1030, %vector.body1027 ]
  %vec.ind1033 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2 ], [ %vec.ind.next1034, %vector.body1027 ]
  %380 = add nuw nsw <4 x i64> %vec.ind1033, <i64 64, i64 64, i64 64, i64 64>
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1036, %381
  %383 = add <4 x i32> %382, <i32 3, i32 3, i32 3, i32 3>
  %384 = urem <4 x i32> %383, <i32 80, i32 80, i32 80, i32 80>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %378
  %390 = getelementptr i8, i8* %call, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !99, !noalias !101
  %index.next1030 = add i64 %index1029, 4
  %vec.ind.next1034 = add <4 x i64> %vec.ind1033, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next1030, 16
  br i1 %392, label %polly.loop_exit760.2, label %vector.body1027, !llvm.loop !120

polly.loop_exit760.2:                             ; preds = %vector.body1027
  %polly.indvar_next756.2 = add nuw nsw i64 %polly.indvar755.2, 1
  %exitcond918.2.not = icmp eq i64 %polly.indvar_next756.2, 32
  br i1 %exitcond918.2.not, label %polly.loop_header752.1951, label %polly.loop_header752.2

polly.loop_header752.1951:                        ; preds = %polly.loop_exit760.2, %polly.loop_exit760.1962
  %polly.indvar755.1950 = phi i64 [ %polly.indvar_next756.1960, %polly.loop_exit760.1962 ], [ 0, %polly.loop_exit760.2 ]
  %393 = add nuw nsw i64 %polly.indvar755.1950, 32
  %394 = mul nuw nsw i64 %393, 640
  %395 = trunc i64 %393 to i32
  %broadcast.splatinsert1049 = insertelement <4 x i32> poison, i32 %395, i32 0
  %broadcast.splat1050 = shufflevector <4 x i32> %broadcast.splatinsert1049, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1039

vector.body1039:                                  ; preds = %vector.body1039, %polly.loop_header752.1951
  %index1041 = phi i64 [ 0, %polly.loop_header752.1951 ], [ %index.next1042, %vector.body1039 ]
  %vec.ind1047 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.1951 ], [ %vec.ind.next1048, %vector.body1039 ]
  %396 = mul <4 x i32> %vec.ind1047, %broadcast.splat1050
  %397 = add <4 x i32> %396, <i32 3, i32 3, i32 3, i32 3>
  %398 = urem <4 x i32> %397, <i32 80, i32 80, i32 80, i32 80>
  %399 = sitofp <4 x i32> %398 to <4 x double>
  %400 = fmul fast <4 x double> %399, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %401 = shl i64 %index1041, 3
  %402 = add nuw nsw i64 %401, %394
  %403 = getelementptr i8, i8* %call, i64 %402
  %404 = bitcast i8* %403 to <4 x double>*
  store <4 x double> %400, <4 x double>* %404, align 8, !alias.scope !99, !noalias !101
  %index.next1042 = add i64 %index1041, 4
  %vec.ind.next1048 = add <4 x i32> %vec.ind1047, <i32 4, i32 4, i32 4, i32 4>
  %405 = icmp eq i64 %index.next1042, 32
  br i1 %405, label %polly.loop_exit760.1962, label %vector.body1039, !llvm.loop !121

polly.loop_exit760.1962:                          ; preds = %vector.body1039
  %polly.indvar_next756.1960 = add nuw nsw i64 %polly.indvar755.1950, 1
  %exitcond918.1961.not = icmp eq i64 %polly.indvar_next756.1960, 32
  br i1 %exitcond918.1961.not, label %polly.loop_header752.1.1, label %polly.loop_header752.1951

polly.loop_header752.1.1:                         ; preds = %polly.loop_exit760.1962, %polly.loop_exit760.1.1
  %polly.indvar755.1.1 = phi i64 [ %polly.indvar_next756.1.1, %polly.loop_exit760.1.1 ], [ 0, %polly.loop_exit760.1962 ]
  %406 = add nuw nsw i64 %polly.indvar755.1.1, 32
  %407 = mul nuw nsw i64 %406, 640
  %408 = trunc i64 %406 to i32
  %broadcast.splatinsert1061 = insertelement <4 x i32> poison, i32 %408, i32 0
  %broadcast.splat1062 = shufflevector <4 x i32> %broadcast.splatinsert1061, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %polly.loop_header752.1.1
  %index1055 = phi i64 [ 0, %polly.loop_header752.1.1 ], [ %index.next1056, %vector.body1053 ]
  %vec.ind1059 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.1 ], [ %vec.ind.next1060, %vector.body1053 ]
  %409 = add nuw nsw <4 x i64> %vec.ind1059, <i64 32, i64 32, i64 32, i64 32>
  %410 = trunc <4 x i64> %409 to <4 x i32>
  %411 = mul <4 x i32> %broadcast.splat1062, %410
  %412 = add <4 x i32> %411, <i32 3, i32 3, i32 3, i32 3>
  %413 = urem <4 x i32> %412, <i32 80, i32 80, i32 80, i32 80>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = extractelement <4 x i64> %409, i32 0
  %417 = shl i64 %416, 3
  %418 = add nuw nsw i64 %417, %407
  %419 = getelementptr i8, i8* %call, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %415, <4 x double>* %420, align 8, !alias.scope !99, !noalias !101
  %index.next1056 = add i64 %index1055, 4
  %vec.ind.next1060 = add <4 x i64> %vec.ind1059, <i64 4, i64 4, i64 4, i64 4>
  %421 = icmp eq i64 %index.next1056, 32
  br i1 %421, label %polly.loop_exit760.1.1, label %vector.body1053, !llvm.loop !122

polly.loop_exit760.1.1:                           ; preds = %vector.body1053
  %polly.indvar_next756.1.1 = add nuw nsw i64 %polly.indvar755.1.1, 1
  %exitcond918.1.1.not = icmp eq i64 %polly.indvar_next756.1.1, 32
  br i1 %exitcond918.1.1.not, label %polly.loop_header752.2.1, label %polly.loop_header752.1.1

polly.loop_header752.2.1:                         ; preds = %polly.loop_exit760.1.1, %polly.loop_exit760.2.1
  %polly.indvar755.2.1 = phi i64 [ %polly.indvar_next756.2.1, %polly.loop_exit760.2.1 ], [ 0, %polly.loop_exit760.1.1 ]
  %422 = add nuw nsw i64 %polly.indvar755.2.1, 32
  %423 = mul nuw nsw i64 %422, 640
  %424 = trunc i64 %422 to i32
  %broadcast.splatinsert1073 = insertelement <4 x i32> poison, i32 %424, i32 0
  %broadcast.splat1074 = shufflevector <4 x i32> %broadcast.splatinsert1073, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1065

vector.body1065:                                  ; preds = %vector.body1065, %polly.loop_header752.2.1
  %index1067 = phi i64 [ 0, %polly.loop_header752.2.1 ], [ %index.next1068, %vector.body1065 ]
  %vec.ind1071 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2.1 ], [ %vec.ind.next1072, %vector.body1065 ]
  %425 = add nuw nsw <4 x i64> %vec.ind1071, <i64 64, i64 64, i64 64, i64 64>
  %426 = trunc <4 x i64> %425 to <4 x i32>
  %427 = mul <4 x i32> %broadcast.splat1074, %426
  %428 = add <4 x i32> %427, <i32 3, i32 3, i32 3, i32 3>
  %429 = urem <4 x i32> %428, <i32 80, i32 80, i32 80, i32 80>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %432 = extractelement <4 x i64> %425, i32 0
  %433 = shl i64 %432, 3
  %434 = add nuw nsw i64 %433, %423
  %435 = getelementptr i8, i8* %call, i64 %434
  %436 = bitcast i8* %435 to <4 x double>*
  store <4 x double> %431, <4 x double>* %436, align 8, !alias.scope !99, !noalias !101
  %index.next1068 = add i64 %index1067, 4
  %vec.ind.next1072 = add <4 x i64> %vec.ind1071, <i64 4, i64 4, i64 4, i64 4>
  %437 = icmp eq i64 %index.next1068, 16
  br i1 %437, label %polly.loop_exit760.2.1, label %vector.body1065, !llvm.loop !123

polly.loop_exit760.2.1:                           ; preds = %vector.body1065
  %polly.indvar_next756.2.1 = add nuw nsw i64 %polly.indvar755.2.1, 1
  %exitcond918.2.1.not = icmp eq i64 %polly.indvar_next756.2.1, 32
  br i1 %exitcond918.2.1.not, label %polly.loop_header752.2965, label %polly.loop_header752.2.1

polly.loop_header752.2965:                        ; preds = %polly.loop_exit760.2.1, %polly.loop_exit760.2976
  %polly.indvar755.2964 = phi i64 [ %polly.indvar_next756.2974, %polly.loop_exit760.2976 ], [ 0, %polly.loop_exit760.2.1 ]
  %438 = add nuw nsw i64 %polly.indvar755.2964, 64
  %439 = mul nuw nsw i64 %438, 640
  %440 = trunc i64 %438 to i32
  %broadcast.splatinsert1087 = insertelement <4 x i32> poison, i32 %440, i32 0
  %broadcast.splat1088 = shufflevector <4 x i32> %broadcast.splatinsert1087, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %polly.loop_header752.2965
  %index1079 = phi i64 [ 0, %polly.loop_header752.2965 ], [ %index.next1080, %vector.body1077 ]
  %vec.ind1085 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.2965 ], [ %vec.ind.next1086, %vector.body1077 ]
  %441 = mul <4 x i32> %vec.ind1085, %broadcast.splat1088
  %442 = add <4 x i32> %441, <i32 3, i32 3, i32 3, i32 3>
  %443 = urem <4 x i32> %442, <i32 80, i32 80, i32 80, i32 80>
  %444 = sitofp <4 x i32> %443 to <4 x double>
  %445 = fmul fast <4 x double> %444, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %446 = shl i64 %index1079, 3
  %447 = add nuw nsw i64 %446, %439
  %448 = getelementptr i8, i8* %call, i64 %447
  %449 = bitcast i8* %448 to <4 x double>*
  store <4 x double> %445, <4 x double>* %449, align 8, !alias.scope !99, !noalias !101
  %index.next1080 = add i64 %index1079, 4
  %vec.ind.next1086 = add <4 x i32> %vec.ind1085, <i32 4, i32 4, i32 4, i32 4>
  %450 = icmp eq i64 %index.next1080, 32
  br i1 %450, label %polly.loop_exit760.2976, label %vector.body1077, !llvm.loop !124

polly.loop_exit760.2976:                          ; preds = %vector.body1077
  %polly.indvar_next756.2974 = add nuw nsw i64 %polly.indvar755.2964, 1
  %exitcond918.2975.not = icmp eq i64 %polly.indvar_next756.2974, 16
  br i1 %exitcond918.2975.not, label %polly.loop_header752.1.2, label %polly.loop_header752.2965

polly.loop_header752.1.2:                         ; preds = %polly.loop_exit760.2976, %polly.loop_exit760.1.2
  %polly.indvar755.1.2 = phi i64 [ %polly.indvar_next756.1.2, %polly.loop_exit760.1.2 ], [ 0, %polly.loop_exit760.2976 ]
  %451 = add nuw nsw i64 %polly.indvar755.1.2, 64
  %452 = mul nuw nsw i64 %451, 640
  %453 = trunc i64 %451 to i32
  %broadcast.splatinsert1099 = insertelement <4 x i32> poison, i32 %453, i32 0
  %broadcast.splat1100 = shufflevector <4 x i32> %broadcast.splatinsert1099, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1091

vector.body1091:                                  ; preds = %vector.body1091, %polly.loop_header752.1.2
  %index1093 = phi i64 [ 0, %polly.loop_header752.1.2 ], [ %index.next1094, %vector.body1091 ]
  %vec.ind1097 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.2 ], [ %vec.ind.next1098, %vector.body1091 ]
  %454 = add nuw nsw <4 x i64> %vec.ind1097, <i64 32, i64 32, i64 32, i64 32>
  %455 = trunc <4 x i64> %454 to <4 x i32>
  %456 = mul <4 x i32> %broadcast.splat1100, %455
  %457 = add <4 x i32> %456, <i32 3, i32 3, i32 3, i32 3>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %461 = extractelement <4 x i64> %454, i32 0
  %462 = shl i64 %461, 3
  %463 = add nuw nsw i64 %462, %452
  %464 = getelementptr i8, i8* %call, i64 %463
  %465 = bitcast i8* %464 to <4 x double>*
  store <4 x double> %460, <4 x double>* %465, align 8, !alias.scope !99, !noalias !101
  %index.next1094 = add i64 %index1093, 4
  %vec.ind.next1098 = add <4 x i64> %vec.ind1097, <i64 4, i64 4, i64 4, i64 4>
  %466 = icmp eq i64 %index.next1094, 32
  br i1 %466, label %polly.loop_exit760.1.2, label %vector.body1091, !llvm.loop !125

polly.loop_exit760.1.2:                           ; preds = %vector.body1091
  %polly.indvar_next756.1.2 = add nuw nsw i64 %polly.indvar755.1.2, 1
  %exitcond918.1.2.not = icmp eq i64 %polly.indvar_next756.1.2, 16
  br i1 %exitcond918.1.2.not, label %polly.loop_header752.2.2, label %polly.loop_header752.1.2

polly.loop_header752.2.2:                         ; preds = %polly.loop_exit760.1.2, %polly.loop_exit760.2.2
  %polly.indvar755.2.2 = phi i64 [ %polly.indvar_next756.2.2, %polly.loop_exit760.2.2 ], [ 0, %polly.loop_exit760.1.2 ]
  %467 = add nuw nsw i64 %polly.indvar755.2.2, 64
  %468 = mul nuw nsw i64 %467, 640
  %469 = trunc i64 %467 to i32
  %broadcast.splatinsert1111 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1112 = shufflevector <4 x i32> %broadcast.splatinsert1111, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1103

vector.body1103:                                  ; preds = %vector.body1103, %polly.loop_header752.2.2
  %index1105 = phi i64 [ 0, %polly.loop_header752.2.2 ], [ %index.next1106, %vector.body1103 ]
  %vec.ind1109 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2.2 ], [ %vec.ind.next1110, %vector.body1103 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1109, <i64 64, i64 64, i64 64, i64 64>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1112, %471
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
  %index.next1106 = add i64 %index1105, 4
  %vec.ind.next1110 = add <4 x i64> %vec.ind1109, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1106, 16
  br i1 %482, label %polly.loop_exit760.2.2, label %vector.body1103, !llvm.loop !126

polly.loop_exit760.2.2:                           ; preds = %vector.body1103
  %polly.indvar_next756.2.2 = add nuw nsw i64 %polly.indvar755.2.2, 1
  %exitcond918.2.2.not = icmp eq i64 %polly.indvar_next756.2.2, 16
  br i1 %exitcond918.2.2.not, label %polly.loop_header779, label %polly.loop_header752.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 8}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 128}
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
!45 = !{!"llvm.loop.tile.size", i32 20}
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
