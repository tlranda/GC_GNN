; ModuleID = 'syr2k_recreations//mmp_syr2k_S_147.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_147.c"
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
  %call764 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1625 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2626 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1625, %call2
  %polly.access.call2645 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2645, %call1
  %2 = or i1 %0, %1
  %polly.access.call665 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call665, %call2
  %4 = icmp ule i8* %polly.access.call2645, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call665, %call1
  %8 = icmp ule i8* %polly.access.call1625, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header750, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep953 = getelementptr i8, i8* %call2, i64 %12
  %scevgep952 = getelementptr i8, i8* %call2, i64 %11
  %scevgep951 = getelementptr i8, i8* %call1, i64 %12
  %scevgep950 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep950, %scevgep953
  %bound1 = icmp ult i8* %scevgep952, %scevgep951
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
  br i1 %exitcond18.not.i, label %vector.ph957, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph957:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert964 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat965 = shufflevector <4 x i64> %broadcast.splatinsert964, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body956

vector.body956:                                   ; preds = %vector.body956, %vector.ph957
  %index958 = phi i64 [ 0, %vector.ph957 ], [ %index.next959, %vector.body956 ]
  %vec.ind962 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph957 ], [ %vec.ind.next963, %vector.body956 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind962, %broadcast.splat965
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv7.i, i64 %index958
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next959 = add i64 %index958, 4
  %vec.ind.next963 = add <4 x i64> %vec.ind962, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next959, 80
  br i1 %40, label %for.inc41.i, label %vector.body956, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body956
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph957, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit811.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start441, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1310, label %vector.ph1239

vector.ph1239:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %vector.ph1239
  %index1240 = phi i64 [ 0, %vector.ph1239 ], [ %index.next1241, %vector.body1238 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i, i64 %index1240
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1241 = add i64 %index1240, 4
  %46 = icmp eq i64 %index.next1241, %n.vec
  br i1 %46, label %middle.block1236, label %vector.body1238, !llvm.loop !18

middle.block1236:                                 ; preds = %vector.body1238
  %cmp.n1243 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1243, label %for.inc6.i, label %for.body3.i46.preheader1310

for.body3.i46.preheader1310:                      ; preds = %for.body3.i46.preheader, %middle.block1236
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1236 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1310, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1310 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1236, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit567.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start268, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1259 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1259, label %for.body3.i60.preheader1309, label %vector.ph1260

vector.ph1260:                                    ; preds = %for.body3.i60.preheader
  %n.vec1262 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1258

vector.body1258:                                  ; preds = %vector.body1258, %vector.ph1260
  %index1263 = phi i64 [ 0, %vector.ph1260 ], [ %index.next1264, %vector.body1258 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i52, i64 %index1263
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1267 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1267, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1264 = add i64 %index1263, 4
  %57 = icmp eq i64 %index.next1264, %n.vec1262
  br i1 %57, label %middle.block1256, label %vector.body1258, !llvm.loop !55

middle.block1256:                                 ; preds = %vector.body1258
  %cmp.n1266 = icmp eq i64 %indvars.iv21.i52, %n.vec1262
  br i1 %cmp.n1266, label %for.inc6.i63, label %for.body3.i60.preheader1309

for.body3.i60.preheader1309:                      ; preds = %for.body3.i60.preheader, %middle.block1256
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1262, %middle.block1256 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1309, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1309 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1256, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit394.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1285 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1285, label %for.body3.i99.preheader1308, label %vector.ph1286

vector.ph1286:                                    ; preds = %for.body3.i99.preheader
  %n.vec1288 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1284

vector.body1284:                                  ; preds = %vector.body1284, %vector.ph1286
  %index1289 = phi i64 [ 0, %vector.ph1286 ], [ %index.next1290, %vector.body1284 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i91, i64 %index1289
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1293 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1293, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1290 = add i64 %index1289, 4
  %68 = icmp eq i64 %index.next1290, %n.vec1288
  br i1 %68, label %middle.block1282, label %vector.body1284, !llvm.loop !57

middle.block1282:                                 ; preds = %vector.body1284
  %cmp.n1292 = icmp eq i64 %indvars.iv21.i91, %n.vec1288
  br i1 %cmp.n1292, label %for.inc6.i102, label %for.body3.i99.preheader1308

for.body3.i99.preheader1308:                      ; preds = %for.body3.i99.preheader, %middle.block1282
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1288, %middle.block1282 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1308, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1308 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1282, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit223.1
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1297 = phi i64 [ %indvar.next1298, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1297, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1299 = icmp ult i64 %88, 4
  br i1 %min.iters.check1299, label %polly.loop_header191.preheader, label %vector.ph1300

vector.ph1300:                                    ; preds = %polly.loop_header
  %n.vec1302 = and i64 %88, -4
  br label %vector.body1296

vector.body1296:                                  ; preds = %vector.body1296, %vector.ph1300
  %index1303 = phi i64 [ 0, %vector.ph1300 ], [ %index.next1304, %vector.body1296 ]
  %90 = shl nuw nsw i64 %index1303, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1307 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1307, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1304 = add i64 %index1303, 4
  %95 = icmp eq i64 %index.next1304, %n.vec1302
  br i1 %95, label %middle.block1294, label %vector.body1296, !llvm.loop !69

middle.block1294:                                 ; preds = %vector.body1296
  %cmp.n1306 = icmp eq i64 %88, %n.vec1302
  br i1 %cmp.n1306, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1294
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1302, %middle.block1294 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1294
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1298 = add i64 %indvar1297, 1
  br i1 %exitcond832.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond831.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond831.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond830.not, label %polly.loop_header221, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 60
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond829.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond829.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header221:                             ; preds = %polly.loop_exit207, %polly.loop_exit229
  %indvars.iv823 = phi i64 [ %indvars.iv.next824, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %97 = shl i64 %polly.indvar224, 3
  %polly.loop_guard.not = icmp sgt i64 %97, 49
  br i1 %polly.loop_guard.not, label %polly.loop_exit229, label %polly.loop_header227.preheader

polly.loop_header227.preheader:                   ; preds = %polly.loop_header221
  %98 = add i64 %indvars.iv, %indvars.iv823
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %indvars.iv.next824 = add nsw i64 %indvars.iv823, -8
  %exitcond828.not = icmp eq i64 %polly.indvar_next225, 7
  br i1 %exitcond828.not, label %polly.loop_header221.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %indvars.iv825 = phi i64 [ %98, %polly.loop_header227.preheader ], [ %indvars.iv.next826, %polly.loop_exit235 ]
  %polly.indvar230 = phi i64 [ %97, %polly.loop_header227.preheader ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv825, i64 7)
  %99 = sub i64 %polly.indvar230, %97
  %polly.loop_guard243942 = icmp sgt i64 %99, -1
  %100 = mul i64 %polly.indvar230, 480
  %101 = mul i64 %polly.indvar230, 640
  br i1 %polly.loop_guard243942, label %polly.loop_header233.us, label %polly.loop_exit235

polly.loop_header233.us:                          ; preds = %polly.loop_header227, %polly.loop_exit242.loopexit.us
  %polly.indvar236.us = phi i64 [ %polly.indvar_next237.us, %polly.loop_exit242.loopexit.us ], [ 0, %polly.loop_header227 ]
  %102 = shl nuw nsw i64 %polly.indvar236.us, 3
  %scevgep247.us = getelementptr i8, i8* %call1, i64 %102
  %polly.access.mul.Packed_MemRef_call2251.us = mul nuw nsw i64 %polly.indvar236.us, 80
  %polly.access.add.Packed_MemRef_call2252.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2251.us, %polly.indvar230
  %polly.access.Packed_MemRef_call2253.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.us
  %_p_scalar_254.us = load double, double* %polly.access.Packed_MemRef_call2253.us, align 8
  %scevgep260.us = getelementptr i8, i8* %scevgep247.us, i64 %100
  %scevgep260261.us = bitcast i8* %scevgep260.us to double*
  %_p_scalar_262.us = load double, double* %scevgep260261.us, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header240.us

polly.loop_header240.us:                          ; preds = %polly.loop_header240.us, %polly.loop_header233.us
  %polly.indvar244.us = phi i64 [ 0, %polly.loop_header233.us ], [ %polly.indvar_next245.us, %polly.loop_header240.us ]
  %103 = add nuw nsw i64 %polly.indvar244.us, %97
  %104 = mul nuw nsw i64 %103, 480
  %scevgep248.us = getelementptr i8, i8* %scevgep247.us, i64 %104
  %scevgep248249.us = bitcast i8* %scevgep248.us to double*
  %_p_scalar_250.us = load double, double* %scevgep248249.us, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us = fmul fast double %_p_scalar_254.us, %_p_scalar_250.us
  %polly.access.add.Packed_MemRef_call2256.us = add nuw nsw i64 %103, %polly.access.mul.Packed_MemRef_call2251.us
  %polly.access.Packed_MemRef_call2257.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.us
  %_p_scalar_258.us = load double, double* %polly.access.Packed_MemRef_call2257.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_262.us, %_p_scalar_258.us
  %105 = shl i64 %103, 3
  %106 = add i64 %105, %101
  %scevgep263.us = getelementptr i8, i8* %call, i64 %106
  %scevgep263264.us = bitcast i8* %scevgep263.us to double*
  %_p_scalar_265.us = load double, double* %scevgep263264.us, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_265.us
  store double %p_add42.i118.us, double* %scevgep263264.us, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next245.us = add nuw nsw i64 %polly.indvar244.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar244.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit242.loopexit.us, label %polly.loop_header240.us

polly.loop_exit242.loopexit.us:                   ; preds = %polly.loop_header240.us
  %polly.indvar_next237.us = add nuw nsw i64 %polly.indvar236.us, 1
  %exitcond827.not = icmp eq i64 %polly.indvar_next237.us, 60
  br i1 %exitcond827.not, label %polly.loop_exit235, label %polly.loop_header233.us

polly.loop_exit235:                               ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232.not.not = icmp ult i64 %polly.indvar230, 49
  %indvars.iv.next826 = add i64 %indvars.iv825, 1
  br i1 %polly.loop_cond232.not.not, label %polly.loop_header227, label %polly.loop_exit229

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header354

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1271 = phi i64 [ %indvar.next1272, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %107 = add i64 %indvar1271, 1
  %108 = mul nuw nsw i64 %polly.indvar357, 640
  %scevgep366 = getelementptr i8, i8* %call, i64 %108
  %min.iters.check1273 = icmp ult i64 %107, 4
  br i1 %min.iters.check1273, label %polly.loop_header360.preheader, label %vector.ph1274

vector.ph1274:                                    ; preds = %polly.loop_header354
  %n.vec1276 = and i64 %107, -4
  br label %vector.body1270

vector.body1270:                                  ; preds = %vector.body1270, %vector.ph1274
  %index1277 = phi i64 [ 0, %vector.ph1274 ], [ %index.next1278, %vector.body1270 ]
  %109 = shl nuw nsw i64 %index1277, 3
  %110 = getelementptr i8, i8* %scevgep366, i64 %109
  %111 = bitcast i8* %110 to <4 x double>*
  %wide.load1281 = load <4 x double>, <4 x double>* %111, align 8, !alias.scope !74, !noalias !76
  %112 = fmul fast <4 x double> %wide.load1281, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %113 = bitcast i8* %110 to <4 x double>*
  store <4 x double> %112, <4 x double>* %113, align 8, !alias.scope !74, !noalias !76
  %index.next1278 = add i64 %index1277, 4
  %114 = icmp eq i64 %index.next1278, %n.vec1276
  br i1 %114, label %middle.block1268, label %vector.body1270, !llvm.loop !80

middle.block1268:                                 ; preds = %vector.body1270
  %cmp.n1280 = icmp eq i64 %107, %n.vec1276
  br i1 %cmp.n1280, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1268
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1276, %middle.block1268 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1268
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next358, 80
  %indvar.next1272 = add i64 %indvar1271, 1
  br i1 %exitcond847.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %115 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %115
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond846.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !81

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit378
  %polly.indvar373 = phi i64 [ %polly.indvar_next374, %polly.loop_exit378 ], [ 0, %polly.loop_header370.preheader ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar373, 80
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_header376
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next374, 60
  br i1 %exitcond845.not, label %polly.loop_header392, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_header376, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_header376 ]
  %polly.access.mul.call2383 = mul nuw nsw i64 %polly.indvar379, 60
  %polly.access.add.call2384 = add nuw nsw i64 %polly.access.mul.call2383, %polly.indvar373
  %polly.access.call2385 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2384
  %polly.access.call2385.load = load double, double* %polly.access.call2385, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar379, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2385.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next380, 80
  br i1 %exitcond844.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header392:                             ; preds = %polly.loop_exit378, %polly.loop_exit401
  %indvars.iv836 = phi i64 [ %indvars.iv.next837, %polly.loop_exit401 ], [ 0, %polly.loop_exit378 ]
  %indvars.iv833 = phi i64 [ %indvars.iv.next834, %polly.loop_exit401 ], [ 0, %polly.loop_exit378 ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit401 ], [ 0, %polly.loop_exit378 ]
  %116 = shl i64 %polly.indvar395, 3
  %polly.loop_guard402.not = icmp sgt i64 %116, 49
  br i1 %polly.loop_guard402.not, label %polly.loop_exit401, label %polly.loop_header399.preheader

polly.loop_header399.preheader:                   ; preds = %polly.loop_header392
  %117 = add i64 %indvars.iv833, %indvars.iv836
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit408, %polly.loop_header392
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %indvars.iv.next834 = add nuw nsw i64 %indvars.iv833, 8
  %indvars.iv.next837 = add nsw i64 %indvars.iv836, -8
  %exitcond843.not = icmp eq i64 %polly.indvar_next396, 7
  br i1 %exitcond843.not, label %polly.loop_header392.1, label %polly.loop_header392

polly.loop_header399:                             ; preds = %polly.loop_header399.preheader, %polly.loop_exit408
  %indvars.iv838 = phi i64 [ %117, %polly.loop_header399.preheader ], [ %indvars.iv.next839, %polly.loop_exit408 ]
  %polly.indvar403 = phi i64 [ %116, %polly.loop_header399.preheader ], [ %polly.indvar_next404, %polly.loop_exit408 ]
  %smin840 = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 7)
  %118 = sub i64 %polly.indvar403, %116
  %polly.loop_guard416944 = icmp sgt i64 %118, -1
  %119 = mul i64 %polly.indvar403, 480
  %120 = mul i64 %polly.indvar403, 640
  br i1 %polly.loop_guard416944, label %polly.loop_header406.us, label %polly.loop_exit408

polly.loop_header406.us:                          ; preds = %polly.loop_header399, %polly.loop_exit415.loopexit.us
  %polly.indvar409.us = phi i64 [ %polly.indvar_next410.us, %polly.loop_exit415.loopexit.us ], [ 0, %polly.loop_header399 ]
  %121 = shl nuw nsw i64 %polly.indvar409.us, 3
  %scevgep420.us = getelementptr i8, i8* %call1, i64 %121
  %polly.access.mul.Packed_MemRef_call2271424.us = mul nuw nsw i64 %polly.indvar409.us, 80
  %polly.access.add.Packed_MemRef_call2271425.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2271424.us, %polly.indvar403
  %polly.access.Packed_MemRef_call2271426.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271425.us
  %_p_scalar_427.us = load double, double* %polly.access.Packed_MemRef_call2271426.us, align 8
  %scevgep433.us = getelementptr i8, i8* %scevgep420.us, i64 %119
  %scevgep433434.us = bitcast i8* %scevgep433.us to double*
  %_p_scalar_435.us = load double, double* %scevgep433434.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header413.us

polly.loop_header413.us:                          ; preds = %polly.loop_header413.us, %polly.loop_header406.us
  %polly.indvar417.us = phi i64 [ 0, %polly.loop_header406.us ], [ %polly.indvar_next418.us, %polly.loop_header413.us ]
  %122 = add nuw nsw i64 %polly.indvar417.us, %116
  %123 = mul nuw nsw i64 %122, 480
  %scevgep421.us = getelementptr i8, i8* %scevgep420.us, i64 %123
  %scevgep421422.us = bitcast i8* %scevgep421.us to double*
  %_p_scalar_423.us = load double, double* %scevgep421422.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_427.us, %_p_scalar_423.us
  %polly.access.add.Packed_MemRef_call2271429.us = add nuw nsw i64 %122, %polly.access.mul.Packed_MemRef_call2271424.us
  %polly.access.Packed_MemRef_call2271430.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271429.us
  %_p_scalar_431.us = load double, double* %polly.access.Packed_MemRef_call2271430.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_435.us, %_p_scalar_431.us
  %124 = shl i64 %122, 3
  %125 = add i64 %124, %120
  %scevgep436.us = getelementptr i8, i8* %call, i64 %125
  %scevgep436437.us = bitcast i8* %scevgep436.us to double*
  %_p_scalar_438.us = load double, double* %scevgep436437.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_438.us
  store double %p_add42.i79.us, double* %scevgep436437.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next418.us = add nuw nsw i64 %polly.indvar417.us, 1
  %exitcond841.not = icmp eq i64 %polly.indvar417.us, %smin840
  br i1 %exitcond841.not, label %polly.loop_exit415.loopexit.us, label %polly.loop_header413.us

polly.loop_exit415.loopexit.us:                   ; preds = %polly.loop_header413.us
  %polly.indvar_next410.us = add nuw nsw i64 %polly.indvar409.us, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next410.us, 60
  br i1 %exitcond842.not, label %polly.loop_exit408, label %polly.loop_header406.us

polly.loop_exit408:                               ; preds = %polly.loop_exit415.loopexit.us, %polly.loop_header399
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %polly.loop_cond405.not.not = icmp ult i64 %polly.indvar403, 49
  %indvars.iv.next839 = add i64 %indvars.iv838, 1
  br i1 %polly.loop_cond405.not.not, label %polly.loop_header399, label %polly.loop_exit401

polly.start441:                                   ; preds = %init_array.exit
  %malloccall443 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header527

polly.loop_header527:                             ; preds = %polly.loop_exit535, %polly.start441
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit535 ], [ 0, %polly.start441 ]
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit535 ], [ 1, %polly.start441 ]
  %126 = add i64 %indvar, 1
  %127 = mul nuw nsw i64 %polly.indvar530, 640
  %scevgep539 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1247 = icmp ult i64 %126, 4
  br i1 %min.iters.check1247, label %polly.loop_header533.preheader, label %vector.ph1248

vector.ph1248:                                    ; preds = %polly.loop_header527
  %n.vec1250 = and i64 %126, -4
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %vector.ph1248
  %index1251 = phi i64 [ 0, %vector.ph1248 ], [ %index.next1252, %vector.body1246 ]
  %128 = shl nuw nsw i64 %index1251, 3
  %129 = getelementptr i8, i8* %scevgep539, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1255 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !84, !noalias !86
  %131 = fmul fast <4 x double> %wide.load1255, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !84, !noalias !86
  %index.next1252 = add i64 %index1251, 4
  %133 = icmp eq i64 %index.next1252, %n.vec1250
  br i1 %133, label %middle.block1244, label %vector.body1246, !llvm.loop !90

middle.block1244:                                 ; preds = %vector.body1246
  %cmp.n1254 = icmp eq i64 %126, %n.vec1250
  br i1 %cmp.n1254, label %polly.loop_exit535, label %polly.loop_header533.preheader

polly.loop_header533.preheader:                   ; preds = %polly.loop_header527, %middle.block1244
  %polly.indvar536.ph = phi i64 [ 0, %polly.loop_header527 ], [ %n.vec1250, %middle.block1244 ]
  br label %polly.loop_header533

polly.loop_exit535:                               ; preds = %polly.loop_header533, %middle.block1244
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next531, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond862.not, label %polly.loop_header543.preheader, label %polly.loop_header527

polly.loop_header543.preheader:                   ; preds = %polly.loop_exit535
  %Packed_MemRef_call2444 = bitcast i8* %malloccall443 to double*
  br label %polly.loop_header543

polly.loop_header533:                             ; preds = %polly.loop_header533.preheader, %polly.loop_header533
  %polly.indvar536 = phi i64 [ %polly.indvar_next537, %polly.loop_header533 ], [ %polly.indvar536.ph, %polly.loop_header533.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar536, 3
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %134
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_542, 1.200000e+00
  store double %p_mul.i, double* %scevgep540541, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next537, %polly.indvar530
  br i1 %exitcond861.not, label %polly.loop_exit535, label %polly.loop_header533, !llvm.loop !91

polly.loop_header543:                             ; preds = %polly.loop_header543.preheader, %polly.loop_exit551
  %polly.indvar546 = phi i64 [ %polly.indvar_next547, %polly.loop_exit551 ], [ 0, %polly.loop_header543.preheader ]
  %polly.access.mul.Packed_MemRef_call2444 = mul nuw nsw i64 %polly.indvar546, 80
  br label %polly.loop_header549

polly.loop_exit551:                               ; preds = %polly.loop_header549
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next547, 60
  br i1 %exitcond860.not, label %polly.loop_header565, label %polly.loop_header543

polly.loop_header549:                             ; preds = %polly.loop_header549, %polly.loop_header543
  %polly.indvar552 = phi i64 [ 0, %polly.loop_header543 ], [ %polly.indvar_next553, %polly.loop_header549 ]
  %polly.access.mul.call2556 = mul nuw nsw i64 %polly.indvar552, 60
  %polly.access.add.call2557 = add nuw nsw i64 %polly.access.mul.call2556, %polly.indvar546
  %polly.access.call2558 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2557
  %polly.access.call2558.load = load double, double* %polly.access.call2558, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2444 = add nuw nsw i64 %polly.indvar552, %polly.access.mul.Packed_MemRef_call2444
  %polly.access.Packed_MemRef_call2444 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444
  store double %polly.access.call2558.load, double* %polly.access.Packed_MemRef_call2444, align 8
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next553, 80
  br i1 %exitcond859.not, label %polly.loop_exit551, label %polly.loop_header549

polly.loop_header565:                             ; preds = %polly.loop_exit551, %polly.loop_exit574
  %indvars.iv851 = phi i64 [ %indvars.iv.next852, %polly.loop_exit574 ], [ 0, %polly.loop_exit551 ]
  %indvars.iv848 = phi i64 [ %indvars.iv.next849, %polly.loop_exit574 ], [ 0, %polly.loop_exit551 ]
  %polly.indvar568 = phi i64 [ %polly.indvar_next569, %polly.loop_exit574 ], [ 0, %polly.loop_exit551 ]
  %135 = shl i64 %polly.indvar568, 3
  %polly.loop_guard575.not = icmp sgt i64 %135, 49
  br i1 %polly.loop_guard575.not, label %polly.loop_exit574, label %polly.loop_header572.preheader

polly.loop_header572.preheader:                   ; preds = %polly.loop_header565
  %136 = add i64 %indvars.iv848, %indvars.iv851
  br label %polly.loop_header572

polly.loop_exit574:                               ; preds = %polly.loop_exit581, %polly.loop_header565
  %polly.indvar_next569 = add nuw nsw i64 %polly.indvar568, 1
  %indvars.iv.next849 = add nuw nsw i64 %indvars.iv848, 8
  %indvars.iv.next852 = add nsw i64 %indvars.iv851, -8
  %exitcond858.not = icmp eq i64 %polly.indvar_next569, 7
  br i1 %exitcond858.not, label %polly.loop_header565.1, label %polly.loop_header565

polly.loop_header572:                             ; preds = %polly.loop_header572.preheader, %polly.loop_exit581
  %indvars.iv853 = phi i64 [ %136, %polly.loop_header572.preheader ], [ %indvars.iv.next854, %polly.loop_exit581 ]
  %polly.indvar576 = phi i64 [ %135, %polly.loop_header572.preheader ], [ %polly.indvar_next577, %polly.loop_exit581 ]
  %smin855 = call i64 @llvm.smin.i64(i64 %indvars.iv853, i64 7)
  %137 = sub i64 %polly.indvar576, %135
  %polly.loop_guard589946 = icmp sgt i64 %137, -1
  %138 = mul i64 %polly.indvar576, 480
  %139 = mul i64 %polly.indvar576, 640
  br i1 %polly.loop_guard589946, label %polly.loop_header579.us, label %polly.loop_exit581

polly.loop_header579.us:                          ; preds = %polly.loop_header572, %polly.loop_exit588.loopexit.us
  %polly.indvar582.us = phi i64 [ %polly.indvar_next583.us, %polly.loop_exit588.loopexit.us ], [ 0, %polly.loop_header572 ]
  %140 = shl nuw nsw i64 %polly.indvar582.us, 3
  %scevgep593.us = getelementptr i8, i8* %call1, i64 %140
  %polly.access.mul.Packed_MemRef_call2444597.us = mul nuw nsw i64 %polly.indvar582.us, 80
  %polly.access.add.Packed_MemRef_call2444598.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2444597.us, %polly.indvar576
  %polly.access.Packed_MemRef_call2444599.us = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444598.us
  %_p_scalar_600.us = load double, double* %polly.access.Packed_MemRef_call2444599.us, align 8
  %scevgep606.us = getelementptr i8, i8* %scevgep593.us, i64 %138
  %scevgep606607.us = bitcast i8* %scevgep606.us to double*
  %_p_scalar_608.us = load double, double* %scevgep606607.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header586.us

polly.loop_header586.us:                          ; preds = %polly.loop_header586.us, %polly.loop_header579.us
  %polly.indvar590.us = phi i64 [ 0, %polly.loop_header579.us ], [ %polly.indvar_next591.us, %polly.loop_header586.us ]
  %141 = add nuw nsw i64 %polly.indvar590.us, %135
  %142 = mul nuw nsw i64 %141, 480
  %scevgep594.us = getelementptr i8, i8* %scevgep593.us, i64 %142
  %scevgep594595.us = bitcast i8* %scevgep594.us to double*
  %_p_scalar_596.us = load double, double* %scevgep594595.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_600.us, %_p_scalar_596.us
  %polly.access.add.Packed_MemRef_call2444602.us = add nuw nsw i64 %141, %polly.access.mul.Packed_MemRef_call2444597.us
  %polly.access.Packed_MemRef_call2444603.us = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444602.us
  %_p_scalar_604.us = load double, double* %polly.access.Packed_MemRef_call2444603.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_608.us, %_p_scalar_604.us
  %143 = shl i64 %141, 3
  %144 = add i64 %143, %139
  %scevgep609.us = getelementptr i8, i8* %call, i64 %144
  %scevgep609610.us = bitcast i8* %scevgep609.us to double*
  %_p_scalar_611.us = load double, double* %scevgep609610.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_611.us
  store double %p_add42.i.us, double* %scevgep609610.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next591.us = add nuw nsw i64 %polly.indvar590.us, 1
  %exitcond856.not = icmp eq i64 %polly.indvar590.us, %smin855
  br i1 %exitcond856.not, label %polly.loop_exit588.loopexit.us, label %polly.loop_header586.us

polly.loop_exit588.loopexit.us:                   ; preds = %polly.loop_header586.us
  %polly.indvar_next583.us = add nuw nsw i64 %polly.indvar582.us, 1
  %exitcond857.not = icmp eq i64 %polly.indvar_next583.us, 60
  br i1 %exitcond857.not, label %polly.loop_exit581, label %polly.loop_header579.us

polly.loop_exit581:                               ; preds = %polly.loop_exit588.loopexit.us, %polly.loop_header572
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %polly.loop_cond578.not.not = icmp ult i64 %polly.indvar576, 49
  %indvars.iv.next854 = add i64 %indvars.iv853, 1
  br i1 %polly.loop_cond578.not.not, label %polly.loop_header572, label %polly.loop_exit574

polly.loop_header750:                             ; preds = %entry, %polly.loop_exit758
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_exit758 ], [ 0, %entry ]
  %145 = mul nuw nsw i64 %polly.indvar753, 640
  %146 = trunc i64 %polly.indvar753 to i32
  %broadcast.splatinsert978 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat979 = shufflevector <4 x i32> %broadcast.splatinsert978, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body968

vector.body968:                                   ; preds = %vector.body968, %polly.loop_header750
  %index970 = phi i64 [ 0, %polly.loop_header750 ], [ %index.next971, %vector.body968 ]
  %vec.ind976 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header750 ], [ %vec.ind.next977, %vector.body968 ]
  %147 = mul <4 x i32> %vec.ind976, %broadcast.splat979
  %148 = add <4 x i32> %147, <i32 3, i32 3, i32 3, i32 3>
  %149 = urem <4 x i32> %148, <i32 80, i32 80, i32 80, i32 80>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index970, 3
  %153 = add nuw nsw i64 %152, %145
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !94, !noalias !96
  %index.next971 = add i64 %index970, 4
  %vec.ind.next977 = add <4 x i32> %vec.ind976, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next971, 32
  br i1 %156, label %polly.loop_exit758, label %vector.body968, !llvm.loop !99

polly.loop_exit758:                               ; preds = %vector.body968
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next754, 32
  br i1 %exitcond882.not, label %polly.loop_header750.1, label %polly.loop_header750

polly.loop_header777:                             ; preds = %polly.loop_exit758.2.2, %polly.loop_exit785
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %polly.loop_exit758.2.2 ]
  %157 = mul nuw nsw i64 %polly.indvar780, 480
  %158 = trunc i64 %polly.indvar780 to i32
  %broadcast.splatinsert1092 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1093 = shufflevector <4 x i32> %broadcast.splatinsert1092, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1082

vector.body1082:                                  ; preds = %vector.body1082, %polly.loop_header777
  %index1084 = phi i64 [ 0, %polly.loop_header777 ], [ %index.next1085, %vector.body1082 ]
  %vec.ind1090 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header777 ], [ %vec.ind.next1091, %vector.body1082 ]
  %159 = mul <4 x i32> %vec.ind1090, %broadcast.splat1093
  %160 = add <4 x i32> %159, <i32 2, i32 2, i32 2, i32 2>
  %161 = urem <4 x i32> %160, <i32 60, i32 60, i32 60, i32 60>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %164 = shl i64 %index1084, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call2, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !98, !noalias !100
  %index.next1085 = add i64 %index1084, 4
  %vec.ind.next1091 = add <4 x i32> %vec.ind1090, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1085, 32
  br i1 %168, label %polly.loop_exit785, label %vector.body1082, !llvm.loop !101

polly.loop_exit785:                               ; preds = %vector.body1082
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next781, 32
  br i1 %exitcond873.not, label %polly.loop_header777.1, label %polly.loop_header777

polly.loop_header803:                             ; preds = %polly.loop_exit785.1.2, %polly.loop_exit811
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %polly.loop_exit785.1.2 ]
  %169 = mul nuw nsw i64 %polly.indvar806, 480
  %170 = trunc i64 %polly.indvar806 to i32
  %broadcast.splatinsert1170 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1171 = shufflevector <4 x i32> %broadcast.splatinsert1170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %polly.loop_header803
  %index1162 = phi i64 [ 0, %polly.loop_header803 ], [ %index.next1163, %vector.body1160 ]
  %vec.ind1168 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header803 ], [ %vec.ind.next1169, %vector.body1160 ]
  %171 = mul <4 x i32> %vec.ind1168, %broadcast.splat1171
  %172 = add <4 x i32> %171, <i32 1, i32 1, i32 1, i32 1>
  %173 = urem <4 x i32> %172, <i32 80, i32 80, i32 80, i32 80>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %176 = shl i64 %index1162, 3
  %177 = add i64 %176, %169
  %178 = getelementptr i8, i8* %call1, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !97, !noalias !102
  %index.next1163 = add i64 %index1162, 4
  %vec.ind.next1169 = add <4 x i32> %vec.ind1168, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1163, 32
  br i1 %180, label %polly.loop_exit811, label %vector.body1160, !llvm.loop !103

polly.loop_exit811:                               ; preds = %vector.body1160
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next807, 32
  br i1 %exitcond867.not, label %polly.loop_header803.1, label %polly.loop_header803

polly.loop_header221.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv823.1 = phi i64 [ %indvars.iv.next824.1, %polly.loop_exit229.1 ], [ 50, %polly.loop_exit229 ]
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit229.1 ], [ -50, %polly.loop_exit229 ]
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %181 = shl nsw i64 %polly.indvar224.1, 3
  %182 = icmp ugt i64 %181, 50
  %183 = select i1 %182, i64 %181, i64 50
  %polly.loop_guard.not.1 = icmp sgt i64 %183, 79
  br i1 %polly.loop_guard.not.1, label %polly.loop_exit229.1, label %polly.loop_header227.preheader.1

polly.loop_header227.preheader.1:                 ; preds = %polly.loop_header221.1
  %184 = add nsw i64 %183, -50
  %smax.1 = call i64 @llvm.smax.i64(i64 %indvars.iv.1, i64 0)
  %185 = add i64 %smax.1, %indvars.iv823.1
  %186 = sub nsw i64 50, %181
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header227.preheader.1
  %indvars.iv825.1 = phi i64 [ %185, %polly.loop_header227.preheader.1 ], [ %indvars.iv.next826.1, %polly.loop_exit235.1 ]
  %polly.indvar230.1 = phi i64 [ %184, %polly.loop_header227.preheader.1 ], [ %polly.indvar_next231.1, %polly.loop_exit235.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv825.1, i64 7)
  %187 = add nsw i64 %polly.indvar230.1, %186
  %polly.loop_guard243.1943 = icmp sgt i64 %187, -1
  %188 = add nuw nsw i64 %polly.indvar230.1, 50
  %189 = mul i64 %188, 480
  %190 = mul i64 %188, 640
  br i1 %polly.loop_guard243.1943, label %polly.loop_header233.us.1, label %polly.loop_exit235.1

polly.loop_header233.us.1:                        ; preds = %polly.loop_header227.1, %polly.loop_exit242.loopexit.us.1
  %polly.indvar236.us.1 = phi i64 [ %polly.indvar_next237.us.1, %polly.loop_exit242.loopexit.us.1 ], [ 0, %polly.loop_header227.1 ]
  %191 = shl nuw nsw i64 %polly.indvar236.us.1, 3
  %scevgep247.us.1 = getelementptr i8, i8* %call1, i64 %191
  %polly.access.mul.Packed_MemRef_call2251.us.1 = mul nuw nsw i64 %polly.indvar236.us.1, 80
  %polly.access.add.Packed_MemRef_call2252.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2251.us.1, %188
  %polly.access.Packed_MemRef_call2253.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.us.1
  %_p_scalar_254.us.1 = load double, double* %polly.access.Packed_MemRef_call2253.us.1, align 8
  %scevgep260.us.1 = getelementptr i8, i8* %scevgep247.us.1, i64 %189
  %scevgep260261.us.1 = bitcast i8* %scevgep260.us.1 to double*
  %_p_scalar_262.us.1 = load double, double* %scevgep260261.us.1, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header240.us.1

polly.loop_header240.us.1:                        ; preds = %polly.loop_header240.us.1, %polly.loop_header233.us.1
  %polly.indvar244.us.1 = phi i64 [ 0, %polly.loop_header233.us.1 ], [ %polly.indvar_next245.us.1, %polly.loop_header240.us.1 ]
  %192 = add nuw nsw i64 %polly.indvar244.us.1, %181
  %193 = mul nuw nsw i64 %192, 480
  %scevgep248.us.1 = getelementptr i8, i8* %scevgep247.us.1, i64 %193
  %scevgep248249.us.1 = bitcast i8* %scevgep248.us.1 to double*
  %_p_scalar_250.us.1 = load double, double* %scevgep248249.us.1, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_254.us.1, %_p_scalar_250.us.1
  %polly.access.add.Packed_MemRef_call2256.us.1 = add nuw nsw i64 %192, %polly.access.mul.Packed_MemRef_call2251.us.1
  %polly.access.Packed_MemRef_call2257.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.us.1
  %_p_scalar_258.us.1 = load double, double* %polly.access.Packed_MemRef_call2257.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_262.us.1, %_p_scalar_258.us.1
  %194 = shl i64 %192, 3
  %195 = add i64 %194, %190
  %scevgep263.us.1 = getelementptr i8, i8* %call, i64 %195
  %scevgep263264.us.1 = bitcast i8* %scevgep263.us.1 to double*
  %_p_scalar_265.us.1 = load double, double* %scevgep263264.us.1, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_265.us.1
  store double %p_add42.i118.us.1, double* %scevgep263264.us.1, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next245.us.1 = add nuw nsw i64 %polly.indvar244.us.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar244.us.1, %smin.1
  br i1 %exitcond.1.not, label %polly.loop_exit242.loopexit.us.1, label %polly.loop_header240.us.1

polly.loop_exit242.loopexit.us.1:                 ; preds = %polly.loop_header240.us.1
  %polly.indvar_next237.us.1 = add nuw nsw i64 %polly.indvar236.us.1, 1
  %exitcond827.1.not = icmp eq i64 %polly.indvar_next237.us.1, 60
  br i1 %exitcond827.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.us.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit242.loopexit.us.1, %polly.loop_header227.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %polly.loop_cond232.not.not.1 = icmp ult i64 %polly.indvar230.1, 29
  %indvars.iv.next826.1 = add i64 %indvars.iv825.1, 1
  br i1 %polly.loop_cond232.not.not.1, label %polly.loop_header227.1, label %polly.loop_exit229.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1, %polly.loop_header221.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, 8
  %indvars.iv.next824.1 = add nsw i64 %indvars.iv823.1, -8
  %exitcond828.1.not = icmp eq i64 %polly.indvar_next225.1, 10
  br i1 %exitcond828.1.not, label %polly.loop_exit223.1, label %polly.loop_header221.1

polly.loop_exit223.1:                             ; preds = %polly.loop_exit229.1
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header392.1:                           ; preds = %polly.loop_exit401, %polly.loop_exit401.1
  %indvars.iv836.1 = phi i64 [ %indvars.iv.next837.1, %polly.loop_exit401.1 ], [ 50, %polly.loop_exit401 ]
  %indvars.iv833.1 = phi i64 [ %indvars.iv.next834.1, %polly.loop_exit401.1 ], [ -50, %polly.loop_exit401 ]
  %polly.indvar395.1 = phi i64 [ %polly.indvar_next396.1, %polly.loop_exit401.1 ], [ 0, %polly.loop_exit401 ]
  %196 = shl nsw i64 %polly.indvar395.1, 3
  %197 = icmp ugt i64 %196, 50
  %198 = select i1 %197, i64 %196, i64 50
  %polly.loop_guard402.not.1 = icmp sgt i64 %198, 79
  br i1 %polly.loop_guard402.not.1, label %polly.loop_exit401.1, label %polly.loop_header399.preheader.1

polly.loop_header399.preheader.1:                 ; preds = %polly.loop_header392.1
  %199 = add nsw i64 %198, -50
  %smax835.1 = call i64 @llvm.smax.i64(i64 %indvars.iv833.1, i64 0)
  %200 = add i64 %smax835.1, %indvars.iv836.1
  %201 = sub nsw i64 50, %196
  br label %polly.loop_header399.1

polly.loop_header399.1:                           ; preds = %polly.loop_exit408.1, %polly.loop_header399.preheader.1
  %indvars.iv838.1 = phi i64 [ %200, %polly.loop_header399.preheader.1 ], [ %indvars.iv.next839.1, %polly.loop_exit408.1 ]
  %polly.indvar403.1 = phi i64 [ %199, %polly.loop_header399.preheader.1 ], [ %polly.indvar_next404.1, %polly.loop_exit408.1 ]
  %smin840.1 = call i64 @llvm.smin.i64(i64 %indvars.iv838.1, i64 7)
  %202 = add nsw i64 %polly.indvar403.1, %201
  %polly.loop_guard416.1945 = icmp sgt i64 %202, -1
  %203 = add nuw nsw i64 %polly.indvar403.1, 50
  %204 = mul i64 %203, 480
  %205 = mul i64 %203, 640
  br i1 %polly.loop_guard416.1945, label %polly.loop_header406.us.1, label %polly.loop_exit408.1

polly.loop_header406.us.1:                        ; preds = %polly.loop_header399.1, %polly.loop_exit415.loopexit.us.1
  %polly.indvar409.us.1 = phi i64 [ %polly.indvar_next410.us.1, %polly.loop_exit415.loopexit.us.1 ], [ 0, %polly.loop_header399.1 ]
  %206 = shl nuw nsw i64 %polly.indvar409.us.1, 3
  %scevgep420.us.1 = getelementptr i8, i8* %call1, i64 %206
  %polly.access.mul.Packed_MemRef_call2271424.us.1 = mul nuw nsw i64 %polly.indvar409.us.1, 80
  %polly.access.add.Packed_MemRef_call2271425.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2271424.us.1, %203
  %polly.access.Packed_MemRef_call2271426.us.1 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271425.us.1
  %_p_scalar_427.us.1 = load double, double* %polly.access.Packed_MemRef_call2271426.us.1, align 8
  %scevgep433.us.1 = getelementptr i8, i8* %scevgep420.us.1, i64 %204
  %scevgep433434.us.1 = bitcast i8* %scevgep433.us.1 to double*
  %_p_scalar_435.us.1 = load double, double* %scevgep433434.us.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header413.us.1

polly.loop_header413.us.1:                        ; preds = %polly.loop_header413.us.1, %polly.loop_header406.us.1
  %polly.indvar417.us.1 = phi i64 [ 0, %polly.loop_header406.us.1 ], [ %polly.indvar_next418.us.1, %polly.loop_header413.us.1 ]
  %207 = add nuw nsw i64 %polly.indvar417.us.1, %196
  %208 = mul nuw nsw i64 %207, 480
  %scevgep421.us.1 = getelementptr i8, i8* %scevgep420.us.1, i64 %208
  %scevgep421422.us.1 = bitcast i8* %scevgep421.us.1 to double*
  %_p_scalar_423.us.1 = load double, double* %scevgep421422.us.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_427.us.1, %_p_scalar_423.us.1
  %polly.access.add.Packed_MemRef_call2271429.us.1 = add nuw nsw i64 %207, %polly.access.mul.Packed_MemRef_call2271424.us.1
  %polly.access.Packed_MemRef_call2271430.us.1 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271429.us.1
  %_p_scalar_431.us.1 = load double, double* %polly.access.Packed_MemRef_call2271430.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_435.us.1, %_p_scalar_431.us.1
  %209 = shl i64 %207, 3
  %210 = add i64 %209, %205
  %scevgep436.us.1 = getelementptr i8, i8* %call, i64 %210
  %scevgep436437.us.1 = bitcast i8* %scevgep436.us.1 to double*
  %_p_scalar_438.us.1 = load double, double* %scevgep436437.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_438.us.1
  store double %p_add42.i79.us.1, double* %scevgep436437.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next418.us.1 = add nuw nsw i64 %polly.indvar417.us.1, 1
  %exitcond841.1.not = icmp eq i64 %polly.indvar417.us.1, %smin840.1
  br i1 %exitcond841.1.not, label %polly.loop_exit415.loopexit.us.1, label %polly.loop_header413.us.1

polly.loop_exit415.loopexit.us.1:                 ; preds = %polly.loop_header413.us.1
  %polly.indvar_next410.us.1 = add nuw nsw i64 %polly.indvar409.us.1, 1
  %exitcond842.1.not = icmp eq i64 %polly.indvar_next410.us.1, 60
  br i1 %exitcond842.1.not, label %polly.loop_exit408.1, label %polly.loop_header406.us.1

polly.loop_exit408.1:                             ; preds = %polly.loop_exit415.loopexit.us.1, %polly.loop_header399.1
  %polly.indvar_next404.1 = add nuw nsw i64 %polly.indvar403.1, 1
  %polly.loop_cond405.not.not.1 = icmp ult i64 %polly.indvar403.1, 29
  %indvars.iv.next839.1 = add i64 %indvars.iv838.1, 1
  br i1 %polly.loop_cond405.not.not.1, label %polly.loop_header399.1, label %polly.loop_exit401.1

polly.loop_exit401.1:                             ; preds = %polly.loop_exit408.1, %polly.loop_header392.1
  %polly.indvar_next396.1 = add nuw nsw i64 %polly.indvar395.1, 1
  %indvars.iv.next834.1 = add nsw i64 %indvars.iv833.1, 8
  %indvars.iv.next837.1 = add nsw i64 %indvars.iv836.1, -8
  %exitcond843.1.not = icmp eq i64 %polly.indvar_next396.1, 10
  br i1 %exitcond843.1.not, label %polly.loop_exit394.1, label %polly.loop_header392.1

polly.loop_exit394.1:                             ; preds = %polly.loop_exit401.1
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header565.1:                           ; preds = %polly.loop_exit574, %polly.loop_exit574.1
  %indvars.iv851.1 = phi i64 [ %indvars.iv.next852.1, %polly.loop_exit574.1 ], [ 50, %polly.loop_exit574 ]
  %indvars.iv848.1 = phi i64 [ %indvars.iv.next849.1, %polly.loop_exit574.1 ], [ -50, %polly.loop_exit574 ]
  %polly.indvar568.1 = phi i64 [ %polly.indvar_next569.1, %polly.loop_exit574.1 ], [ 0, %polly.loop_exit574 ]
  %211 = shl nsw i64 %polly.indvar568.1, 3
  %212 = icmp ugt i64 %211, 50
  %213 = select i1 %212, i64 %211, i64 50
  %polly.loop_guard575.not.1 = icmp sgt i64 %213, 79
  br i1 %polly.loop_guard575.not.1, label %polly.loop_exit574.1, label %polly.loop_header572.preheader.1

polly.loop_header572.preheader.1:                 ; preds = %polly.loop_header565.1
  %214 = add nsw i64 %213, -50
  %smax850.1 = call i64 @llvm.smax.i64(i64 %indvars.iv848.1, i64 0)
  %215 = add i64 %smax850.1, %indvars.iv851.1
  %216 = sub nsw i64 50, %211
  br label %polly.loop_header572.1

polly.loop_header572.1:                           ; preds = %polly.loop_exit581.1, %polly.loop_header572.preheader.1
  %indvars.iv853.1 = phi i64 [ %215, %polly.loop_header572.preheader.1 ], [ %indvars.iv.next854.1, %polly.loop_exit581.1 ]
  %polly.indvar576.1 = phi i64 [ %214, %polly.loop_header572.preheader.1 ], [ %polly.indvar_next577.1, %polly.loop_exit581.1 ]
  %smin855.1 = call i64 @llvm.smin.i64(i64 %indvars.iv853.1, i64 7)
  %217 = add nsw i64 %polly.indvar576.1, %216
  %polly.loop_guard589.1947 = icmp sgt i64 %217, -1
  %218 = add nuw nsw i64 %polly.indvar576.1, 50
  %219 = mul i64 %218, 480
  %220 = mul i64 %218, 640
  br i1 %polly.loop_guard589.1947, label %polly.loop_header579.us.1, label %polly.loop_exit581.1

polly.loop_header579.us.1:                        ; preds = %polly.loop_header572.1, %polly.loop_exit588.loopexit.us.1
  %polly.indvar582.us.1 = phi i64 [ %polly.indvar_next583.us.1, %polly.loop_exit588.loopexit.us.1 ], [ 0, %polly.loop_header572.1 ]
  %221 = shl nuw nsw i64 %polly.indvar582.us.1, 3
  %scevgep593.us.1 = getelementptr i8, i8* %call1, i64 %221
  %polly.access.mul.Packed_MemRef_call2444597.us.1 = mul nuw nsw i64 %polly.indvar582.us.1, 80
  %polly.access.add.Packed_MemRef_call2444598.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2444597.us.1, %218
  %polly.access.Packed_MemRef_call2444599.us.1 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444598.us.1
  %_p_scalar_600.us.1 = load double, double* %polly.access.Packed_MemRef_call2444599.us.1, align 8
  %scevgep606.us.1 = getelementptr i8, i8* %scevgep593.us.1, i64 %219
  %scevgep606607.us.1 = bitcast i8* %scevgep606.us.1 to double*
  %_p_scalar_608.us.1 = load double, double* %scevgep606607.us.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header586.us.1

polly.loop_header586.us.1:                        ; preds = %polly.loop_header586.us.1, %polly.loop_header579.us.1
  %polly.indvar590.us.1 = phi i64 [ 0, %polly.loop_header579.us.1 ], [ %polly.indvar_next591.us.1, %polly.loop_header586.us.1 ]
  %222 = add nuw nsw i64 %polly.indvar590.us.1, %211
  %223 = mul nuw nsw i64 %222, 480
  %scevgep594.us.1 = getelementptr i8, i8* %scevgep593.us.1, i64 %223
  %scevgep594595.us.1 = bitcast i8* %scevgep594.us.1 to double*
  %_p_scalar_596.us.1 = load double, double* %scevgep594595.us.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_600.us.1, %_p_scalar_596.us.1
  %polly.access.add.Packed_MemRef_call2444602.us.1 = add nuw nsw i64 %222, %polly.access.mul.Packed_MemRef_call2444597.us.1
  %polly.access.Packed_MemRef_call2444603.us.1 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444602.us.1
  %_p_scalar_604.us.1 = load double, double* %polly.access.Packed_MemRef_call2444603.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_608.us.1, %_p_scalar_604.us.1
  %224 = shl i64 %222, 3
  %225 = add i64 %224, %220
  %scevgep609.us.1 = getelementptr i8, i8* %call, i64 %225
  %scevgep609610.us.1 = bitcast i8* %scevgep609.us.1 to double*
  %_p_scalar_611.us.1 = load double, double* %scevgep609610.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_611.us.1
  store double %p_add42.i.us.1, double* %scevgep609610.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next591.us.1 = add nuw nsw i64 %polly.indvar590.us.1, 1
  %exitcond856.1.not = icmp eq i64 %polly.indvar590.us.1, %smin855.1
  br i1 %exitcond856.1.not, label %polly.loop_exit588.loopexit.us.1, label %polly.loop_header586.us.1

polly.loop_exit588.loopexit.us.1:                 ; preds = %polly.loop_header586.us.1
  %polly.indvar_next583.us.1 = add nuw nsw i64 %polly.indvar582.us.1, 1
  %exitcond857.1.not = icmp eq i64 %polly.indvar_next583.us.1, 60
  br i1 %exitcond857.1.not, label %polly.loop_exit581.1, label %polly.loop_header579.us.1

polly.loop_exit581.1:                             ; preds = %polly.loop_exit588.loopexit.us.1, %polly.loop_header572.1
  %polly.indvar_next577.1 = add nuw nsw i64 %polly.indvar576.1, 1
  %polly.loop_cond578.not.not.1 = icmp ult i64 %polly.indvar576.1, 29
  %indvars.iv.next854.1 = add i64 %indvars.iv853.1, 1
  br i1 %polly.loop_cond578.not.not.1, label %polly.loop_header572.1, label %polly.loop_exit574.1

polly.loop_exit574.1:                             ; preds = %polly.loop_exit581.1, %polly.loop_header565.1
  %polly.indvar_next569.1 = add nuw nsw i64 %polly.indvar568.1, 1
  %indvars.iv.next849.1 = add nsw i64 %indvars.iv848.1, 8
  %indvars.iv.next852.1 = add nsw i64 %indvars.iv851.1, -8
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next569.1, 10
  br i1 %exitcond858.1.not, label %polly.loop_exit567.1, label %polly.loop_header565.1

polly.loop_exit567.1:                             ; preds = %polly.loop_exit574.1
  tail call void @free(i8* %malloccall443)
  br label %kernel_syr2k.exit

polly.loop_header803.1:                           ; preds = %polly.loop_exit811, %polly.loop_exit811.1
  %polly.indvar806.1 = phi i64 [ %polly.indvar_next807.1, %polly.loop_exit811.1 ], [ 0, %polly.loop_exit811 ]
  %226 = mul nuw nsw i64 %polly.indvar806.1, 480
  %227 = trunc i64 %polly.indvar806.1 to i32
  %broadcast.splatinsert1182 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1183 = shufflevector <4 x i32> %broadcast.splatinsert1182, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %polly.loop_header803.1
  %index1176 = phi i64 [ 0, %polly.loop_header803.1 ], [ %index.next1177, %vector.body1174 ]
  %vec.ind1180 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.1 ], [ %vec.ind.next1181, %vector.body1174 ]
  %228 = add nuw nsw <4 x i64> %vec.ind1180, <i64 32, i64 32, i64 32, i64 32>
  %229 = trunc <4 x i64> %228 to <4 x i32>
  %230 = mul <4 x i32> %broadcast.splat1183, %229
  %231 = add <4 x i32> %230, <i32 1, i32 1, i32 1, i32 1>
  %232 = urem <4 x i32> %231, <i32 80, i32 80, i32 80, i32 80>
  %233 = sitofp <4 x i32> %232 to <4 x double>
  %234 = fmul fast <4 x double> %233, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %235 = extractelement <4 x i64> %228, i32 0
  %236 = shl i64 %235, 3
  %237 = add i64 %236, %226
  %238 = getelementptr i8, i8* %call1, i64 %237
  %239 = bitcast i8* %238 to <4 x double>*
  store <4 x double> %234, <4 x double>* %239, align 8, !alias.scope !97, !noalias !102
  %index.next1177 = add i64 %index1176, 4
  %vec.ind.next1181 = add <4 x i64> %vec.ind1180, <i64 4, i64 4, i64 4, i64 4>
  %240 = icmp eq i64 %index.next1177, 28
  br i1 %240, label %polly.loop_exit811.1, label %vector.body1174, !llvm.loop !104

polly.loop_exit811.1:                             ; preds = %vector.body1174
  %polly.indvar_next807.1 = add nuw nsw i64 %polly.indvar806.1, 1
  %exitcond867.1.not = icmp eq i64 %polly.indvar_next807.1, 32
  br i1 %exitcond867.1.not, label %polly.loop_header803.1887, label %polly.loop_header803.1

polly.loop_header803.1887:                        ; preds = %polly.loop_exit811.1, %polly.loop_exit811.1898
  %polly.indvar806.1886 = phi i64 [ %polly.indvar_next807.1896, %polly.loop_exit811.1898 ], [ 0, %polly.loop_exit811.1 ]
  %241 = add nuw nsw i64 %polly.indvar806.1886, 32
  %242 = mul nuw nsw i64 %241, 480
  %243 = trunc i64 %241 to i32
  %broadcast.splatinsert1196 = insertelement <4 x i32> poison, i32 %243, i32 0
  %broadcast.splat1197 = shufflevector <4 x i32> %broadcast.splatinsert1196, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %polly.loop_header803.1887
  %index1188 = phi i64 [ 0, %polly.loop_header803.1887 ], [ %index.next1189, %vector.body1186 ]
  %vec.ind1194 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header803.1887 ], [ %vec.ind.next1195, %vector.body1186 ]
  %244 = mul <4 x i32> %vec.ind1194, %broadcast.splat1197
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 80, i32 80, i32 80, i32 80>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %249 = shl i64 %index1188, 3
  %250 = add i64 %249, %242
  %251 = getelementptr i8, i8* %call1, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %248, <4 x double>* %252, align 8, !alias.scope !97, !noalias !102
  %index.next1189 = add i64 %index1188, 4
  %vec.ind.next1195 = add <4 x i32> %vec.ind1194, <i32 4, i32 4, i32 4, i32 4>
  %253 = icmp eq i64 %index.next1189, 32
  br i1 %253, label %polly.loop_exit811.1898, label %vector.body1186, !llvm.loop !105

polly.loop_exit811.1898:                          ; preds = %vector.body1186
  %polly.indvar_next807.1896 = add nuw nsw i64 %polly.indvar806.1886, 1
  %exitcond867.1897.not = icmp eq i64 %polly.indvar_next807.1896, 32
  br i1 %exitcond867.1897.not, label %polly.loop_header803.1.1, label %polly.loop_header803.1887

polly.loop_header803.1.1:                         ; preds = %polly.loop_exit811.1898, %polly.loop_exit811.1.1
  %polly.indvar806.1.1 = phi i64 [ %polly.indvar_next807.1.1, %polly.loop_exit811.1.1 ], [ 0, %polly.loop_exit811.1898 ]
  %254 = add nuw nsw i64 %polly.indvar806.1.1, 32
  %255 = mul nuw nsw i64 %254, 480
  %256 = trunc i64 %254 to i32
  %broadcast.splatinsert1208 = insertelement <4 x i32> poison, i32 %256, i32 0
  %broadcast.splat1209 = shufflevector <4 x i32> %broadcast.splatinsert1208, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %polly.loop_header803.1.1
  %index1202 = phi i64 [ 0, %polly.loop_header803.1.1 ], [ %index.next1203, %vector.body1200 ]
  %vec.ind1206 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.1.1 ], [ %vec.ind.next1207, %vector.body1200 ]
  %257 = add nuw nsw <4 x i64> %vec.ind1206, <i64 32, i64 32, i64 32, i64 32>
  %258 = trunc <4 x i64> %257 to <4 x i32>
  %259 = mul <4 x i32> %broadcast.splat1209, %258
  %260 = add <4 x i32> %259, <i32 1, i32 1, i32 1, i32 1>
  %261 = urem <4 x i32> %260, <i32 80, i32 80, i32 80, i32 80>
  %262 = sitofp <4 x i32> %261 to <4 x double>
  %263 = fmul fast <4 x double> %262, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %264 = extractelement <4 x i64> %257, i32 0
  %265 = shl i64 %264, 3
  %266 = add i64 %265, %255
  %267 = getelementptr i8, i8* %call1, i64 %266
  %268 = bitcast i8* %267 to <4 x double>*
  store <4 x double> %263, <4 x double>* %268, align 8, !alias.scope !97, !noalias !102
  %index.next1203 = add i64 %index1202, 4
  %vec.ind.next1207 = add <4 x i64> %vec.ind1206, <i64 4, i64 4, i64 4, i64 4>
  %269 = icmp eq i64 %index.next1203, 28
  br i1 %269, label %polly.loop_exit811.1.1, label %vector.body1200, !llvm.loop !106

polly.loop_exit811.1.1:                           ; preds = %vector.body1200
  %polly.indvar_next807.1.1 = add nuw nsw i64 %polly.indvar806.1.1, 1
  %exitcond867.1.1.not = icmp eq i64 %polly.indvar_next807.1.1, 32
  br i1 %exitcond867.1.1.not, label %polly.loop_header803.2, label %polly.loop_header803.1.1

polly.loop_header803.2:                           ; preds = %polly.loop_exit811.1.1, %polly.loop_exit811.2
  %polly.indvar806.2 = phi i64 [ %polly.indvar_next807.2, %polly.loop_exit811.2 ], [ 0, %polly.loop_exit811.1.1 ]
  %270 = add nuw nsw i64 %polly.indvar806.2, 64
  %271 = mul nuw nsw i64 %270, 480
  %272 = trunc i64 %270 to i32
  %broadcast.splatinsert1222 = insertelement <4 x i32> poison, i32 %272, i32 0
  %broadcast.splat1223 = shufflevector <4 x i32> %broadcast.splatinsert1222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %polly.loop_header803.2
  %index1214 = phi i64 [ 0, %polly.loop_header803.2 ], [ %index.next1215, %vector.body1212 ]
  %vec.ind1220 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header803.2 ], [ %vec.ind.next1221, %vector.body1212 ]
  %273 = mul <4 x i32> %vec.ind1220, %broadcast.splat1223
  %274 = add <4 x i32> %273, <i32 1, i32 1, i32 1, i32 1>
  %275 = urem <4 x i32> %274, <i32 80, i32 80, i32 80, i32 80>
  %276 = sitofp <4 x i32> %275 to <4 x double>
  %277 = fmul fast <4 x double> %276, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %278 = shl i64 %index1214, 3
  %279 = add i64 %278, %271
  %280 = getelementptr i8, i8* %call1, i64 %279
  %281 = bitcast i8* %280 to <4 x double>*
  store <4 x double> %277, <4 x double>* %281, align 8, !alias.scope !97, !noalias !102
  %index.next1215 = add i64 %index1214, 4
  %vec.ind.next1221 = add <4 x i32> %vec.ind1220, <i32 4, i32 4, i32 4, i32 4>
  %282 = icmp eq i64 %index.next1215, 32
  br i1 %282, label %polly.loop_exit811.2, label %vector.body1212, !llvm.loop !107

polly.loop_exit811.2:                             ; preds = %vector.body1212
  %polly.indvar_next807.2 = add nuw nsw i64 %polly.indvar806.2, 1
  %exitcond867.2.not = icmp eq i64 %polly.indvar_next807.2, 16
  br i1 %exitcond867.2.not, label %polly.loop_header803.1.2, label %polly.loop_header803.2

polly.loop_header803.1.2:                         ; preds = %polly.loop_exit811.2, %polly.loop_exit811.1.2
  %polly.indvar806.1.2 = phi i64 [ %polly.indvar_next807.1.2, %polly.loop_exit811.1.2 ], [ 0, %polly.loop_exit811.2 ]
  %283 = add nuw nsw i64 %polly.indvar806.1.2, 64
  %284 = mul nuw nsw i64 %283, 480
  %285 = trunc i64 %283 to i32
  %broadcast.splatinsert1234 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1235 = shufflevector <4 x i32> %broadcast.splatinsert1234, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %polly.loop_header803.1.2
  %index1228 = phi i64 [ 0, %polly.loop_header803.1.2 ], [ %index.next1229, %vector.body1226 ]
  %vec.ind1232 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.1.2 ], [ %vec.ind.next1233, %vector.body1226 ]
  %286 = add nuw nsw <4 x i64> %vec.ind1232, <i64 32, i64 32, i64 32, i64 32>
  %287 = trunc <4 x i64> %286 to <4 x i32>
  %288 = mul <4 x i32> %broadcast.splat1235, %287
  %289 = add <4 x i32> %288, <i32 1, i32 1, i32 1, i32 1>
  %290 = urem <4 x i32> %289, <i32 80, i32 80, i32 80, i32 80>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %293 = extractelement <4 x i64> %286, i32 0
  %294 = shl i64 %293, 3
  %295 = add i64 %294, %284
  %296 = getelementptr i8, i8* %call1, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %292, <4 x double>* %297, align 8, !alias.scope !97, !noalias !102
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1233 = add <4 x i64> %vec.ind1232, <i64 4, i64 4, i64 4, i64 4>
  %298 = icmp eq i64 %index.next1229, 28
  br i1 %298, label %polly.loop_exit811.1.2, label %vector.body1226, !llvm.loop !108

polly.loop_exit811.1.2:                           ; preds = %vector.body1226
  %polly.indvar_next807.1.2 = add nuw nsw i64 %polly.indvar806.1.2, 1
  %exitcond867.1.2.not = icmp eq i64 %polly.indvar_next807.1.2, 16
  br i1 %exitcond867.1.2.not, label %init_array.exit, label %polly.loop_header803.1.2

polly.loop_header777.1:                           ; preds = %polly.loop_exit785, %polly.loop_exit785.1
  %polly.indvar780.1 = phi i64 [ %polly.indvar_next781.1, %polly.loop_exit785.1 ], [ 0, %polly.loop_exit785 ]
  %299 = mul nuw nsw i64 %polly.indvar780.1, 480
  %300 = trunc i64 %polly.indvar780.1 to i32
  %broadcast.splatinsert1104 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1105 = shufflevector <4 x i32> %broadcast.splatinsert1104, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %polly.loop_header777.1
  %index1098 = phi i64 [ 0, %polly.loop_header777.1 ], [ %index.next1099, %vector.body1096 ]
  %vec.ind1102 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header777.1 ], [ %vec.ind.next1103, %vector.body1096 ]
  %301 = add nuw nsw <4 x i64> %vec.ind1102, <i64 32, i64 32, i64 32, i64 32>
  %302 = trunc <4 x i64> %301 to <4 x i32>
  %303 = mul <4 x i32> %broadcast.splat1105, %302
  %304 = add <4 x i32> %303, <i32 2, i32 2, i32 2, i32 2>
  %305 = urem <4 x i32> %304, <i32 60, i32 60, i32 60, i32 60>
  %306 = sitofp <4 x i32> %305 to <4 x double>
  %307 = fmul fast <4 x double> %306, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %308 = extractelement <4 x i64> %301, i32 0
  %309 = shl i64 %308, 3
  %310 = add i64 %309, %299
  %311 = getelementptr i8, i8* %call2, i64 %310
  %312 = bitcast i8* %311 to <4 x double>*
  store <4 x double> %307, <4 x double>* %312, align 8, !alias.scope !98, !noalias !100
  %index.next1099 = add i64 %index1098, 4
  %vec.ind.next1103 = add <4 x i64> %vec.ind1102, <i64 4, i64 4, i64 4, i64 4>
  %313 = icmp eq i64 %index.next1099, 28
  br i1 %313, label %polly.loop_exit785.1, label %vector.body1096, !llvm.loop !109

polly.loop_exit785.1:                             ; preds = %vector.body1096
  %polly.indvar_next781.1 = add nuw nsw i64 %polly.indvar780.1, 1
  %exitcond873.1.not = icmp eq i64 %polly.indvar_next781.1, 32
  br i1 %exitcond873.1.not, label %polly.loop_header777.1901, label %polly.loop_header777.1

polly.loop_header777.1901:                        ; preds = %polly.loop_exit785.1, %polly.loop_exit785.1912
  %polly.indvar780.1900 = phi i64 [ %polly.indvar_next781.1910, %polly.loop_exit785.1912 ], [ 0, %polly.loop_exit785.1 ]
  %314 = add nuw nsw i64 %polly.indvar780.1900, 32
  %315 = mul nuw nsw i64 %314, 480
  %316 = trunc i64 %314 to i32
  %broadcast.splatinsert1118 = insertelement <4 x i32> poison, i32 %316, i32 0
  %broadcast.splat1119 = shufflevector <4 x i32> %broadcast.splatinsert1118, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1108

vector.body1108:                                  ; preds = %vector.body1108, %polly.loop_header777.1901
  %index1110 = phi i64 [ 0, %polly.loop_header777.1901 ], [ %index.next1111, %vector.body1108 ]
  %vec.ind1116 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header777.1901 ], [ %vec.ind.next1117, %vector.body1108 ]
  %317 = mul <4 x i32> %vec.ind1116, %broadcast.splat1119
  %318 = add <4 x i32> %317, <i32 2, i32 2, i32 2, i32 2>
  %319 = urem <4 x i32> %318, <i32 60, i32 60, i32 60, i32 60>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %322 = shl i64 %index1110, 3
  %323 = add i64 %322, %315
  %324 = getelementptr i8, i8* %call2, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %321, <4 x double>* %325, align 8, !alias.scope !98, !noalias !100
  %index.next1111 = add i64 %index1110, 4
  %vec.ind.next1117 = add <4 x i32> %vec.ind1116, <i32 4, i32 4, i32 4, i32 4>
  %326 = icmp eq i64 %index.next1111, 32
  br i1 %326, label %polly.loop_exit785.1912, label %vector.body1108, !llvm.loop !110

polly.loop_exit785.1912:                          ; preds = %vector.body1108
  %polly.indvar_next781.1910 = add nuw nsw i64 %polly.indvar780.1900, 1
  %exitcond873.1911.not = icmp eq i64 %polly.indvar_next781.1910, 32
  br i1 %exitcond873.1911.not, label %polly.loop_header777.1.1, label %polly.loop_header777.1901

polly.loop_header777.1.1:                         ; preds = %polly.loop_exit785.1912, %polly.loop_exit785.1.1
  %polly.indvar780.1.1 = phi i64 [ %polly.indvar_next781.1.1, %polly.loop_exit785.1.1 ], [ 0, %polly.loop_exit785.1912 ]
  %327 = add nuw nsw i64 %polly.indvar780.1.1, 32
  %328 = mul nuw nsw i64 %327, 480
  %329 = trunc i64 %327 to i32
  %broadcast.splatinsert1130 = insertelement <4 x i32> poison, i32 %329, i32 0
  %broadcast.splat1131 = shufflevector <4 x i32> %broadcast.splatinsert1130, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %polly.loop_header777.1.1
  %index1124 = phi i64 [ 0, %polly.loop_header777.1.1 ], [ %index.next1125, %vector.body1122 ]
  %vec.ind1128 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header777.1.1 ], [ %vec.ind.next1129, %vector.body1122 ]
  %330 = add nuw nsw <4 x i64> %vec.ind1128, <i64 32, i64 32, i64 32, i64 32>
  %331 = trunc <4 x i64> %330 to <4 x i32>
  %332 = mul <4 x i32> %broadcast.splat1131, %331
  %333 = add <4 x i32> %332, <i32 2, i32 2, i32 2, i32 2>
  %334 = urem <4 x i32> %333, <i32 60, i32 60, i32 60, i32 60>
  %335 = sitofp <4 x i32> %334 to <4 x double>
  %336 = fmul fast <4 x double> %335, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %337 = extractelement <4 x i64> %330, i32 0
  %338 = shl i64 %337, 3
  %339 = add i64 %338, %328
  %340 = getelementptr i8, i8* %call2, i64 %339
  %341 = bitcast i8* %340 to <4 x double>*
  store <4 x double> %336, <4 x double>* %341, align 8, !alias.scope !98, !noalias !100
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1129 = add <4 x i64> %vec.ind1128, <i64 4, i64 4, i64 4, i64 4>
  %342 = icmp eq i64 %index.next1125, 28
  br i1 %342, label %polly.loop_exit785.1.1, label %vector.body1122, !llvm.loop !111

polly.loop_exit785.1.1:                           ; preds = %vector.body1122
  %polly.indvar_next781.1.1 = add nuw nsw i64 %polly.indvar780.1.1, 1
  %exitcond873.1.1.not = icmp eq i64 %polly.indvar_next781.1.1, 32
  br i1 %exitcond873.1.1.not, label %polly.loop_header777.2, label %polly.loop_header777.1.1

polly.loop_header777.2:                           ; preds = %polly.loop_exit785.1.1, %polly.loop_exit785.2
  %polly.indvar780.2 = phi i64 [ %polly.indvar_next781.2, %polly.loop_exit785.2 ], [ 0, %polly.loop_exit785.1.1 ]
  %343 = add nuw nsw i64 %polly.indvar780.2, 64
  %344 = mul nuw nsw i64 %343, 480
  %345 = trunc i64 %343 to i32
  %broadcast.splatinsert1144 = insertelement <4 x i32> poison, i32 %345, i32 0
  %broadcast.splat1145 = shufflevector <4 x i32> %broadcast.splatinsert1144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1134

vector.body1134:                                  ; preds = %vector.body1134, %polly.loop_header777.2
  %index1136 = phi i64 [ 0, %polly.loop_header777.2 ], [ %index.next1137, %vector.body1134 ]
  %vec.ind1142 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header777.2 ], [ %vec.ind.next1143, %vector.body1134 ]
  %346 = mul <4 x i32> %vec.ind1142, %broadcast.splat1145
  %347 = add <4 x i32> %346, <i32 2, i32 2, i32 2, i32 2>
  %348 = urem <4 x i32> %347, <i32 60, i32 60, i32 60, i32 60>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %351 = shl i64 %index1136, 3
  %352 = add i64 %351, %344
  %353 = getelementptr i8, i8* %call2, i64 %352
  %354 = bitcast i8* %353 to <4 x double>*
  store <4 x double> %350, <4 x double>* %354, align 8, !alias.scope !98, !noalias !100
  %index.next1137 = add i64 %index1136, 4
  %vec.ind.next1143 = add <4 x i32> %vec.ind1142, <i32 4, i32 4, i32 4, i32 4>
  %355 = icmp eq i64 %index.next1137, 32
  br i1 %355, label %polly.loop_exit785.2, label %vector.body1134, !llvm.loop !112

polly.loop_exit785.2:                             ; preds = %vector.body1134
  %polly.indvar_next781.2 = add nuw nsw i64 %polly.indvar780.2, 1
  %exitcond873.2.not = icmp eq i64 %polly.indvar_next781.2, 16
  br i1 %exitcond873.2.not, label %polly.loop_header777.1.2, label %polly.loop_header777.2

polly.loop_header777.1.2:                         ; preds = %polly.loop_exit785.2, %polly.loop_exit785.1.2
  %polly.indvar780.1.2 = phi i64 [ %polly.indvar_next781.1.2, %polly.loop_exit785.1.2 ], [ 0, %polly.loop_exit785.2 ]
  %356 = add nuw nsw i64 %polly.indvar780.1.2, 64
  %357 = mul nuw nsw i64 %356, 480
  %358 = trunc i64 %356 to i32
  %broadcast.splatinsert1156 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat1157 = shufflevector <4 x i32> %broadcast.splatinsert1156, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %polly.loop_header777.1.2
  %index1150 = phi i64 [ 0, %polly.loop_header777.1.2 ], [ %index.next1151, %vector.body1148 ]
  %vec.ind1154 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header777.1.2 ], [ %vec.ind.next1155, %vector.body1148 ]
  %359 = add nuw nsw <4 x i64> %vec.ind1154, <i64 32, i64 32, i64 32, i64 32>
  %360 = trunc <4 x i64> %359 to <4 x i32>
  %361 = mul <4 x i32> %broadcast.splat1157, %360
  %362 = add <4 x i32> %361, <i32 2, i32 2, i32 2, i32 2>
  %363 = urem <4 x i32> %362, <i32 60, i32 60, i32 60, i32 60>
  %364 = sitofp <4 x i32> %363 to <4 x double>
  %365 = fmul fast <4 x double> %364, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %366 = extractelement <4 x i64> %359, i32 0
  %367 = shl i64 %366, 3
  %368 = add i64 %367, %357
  %369 = getelementptr i8, i8* %call2, i64 %368
  %370 = bitcast i8* %369 to <4 x double>*
  store <4 x double> %365, <4 x double>* %370, align 8, !alias.scope !98, !noalias !100
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1155 = add <4 x i64> %vec.ind1154, <i64 4, i64 4, i64 4, i64 4>
  %371 = icmp eq i64 %index.next1151, 28
  br i1 %371, label %polly.loop_exit785.1.2, label %vector.body1148, !llvm.loop !113

polly.loop_exit785.1.2:                           ; preds = %vector.body1148
  %polly.indvar_next781.1.2 = add nuw nsw i64 %polly.indvar780.1.2, 1
  %exitcond873.1.2.not = icmp eq i64 %polly.indvar_next781.1.2, 16
  br i1 %exitcond873.1.2.not, label %polly.loop_header803, label %polly.loop_header777.1.2

polly.loop_header750.1:                           ; preds = %polly.loop_exit758, %polly.loop_exit758.1
  %polly.indvar753.1 = phi i64 [ %polly.indvar_next754.1, %polly.loop_exit758.1 ], [ 0, %polly.loop_exit758 ]
  %372 = mul nuw nsw i64 %polly.indvar753.1, 640
  %373 = trunc i64 %polly.indvar753.1 to i32
  %broadcast.splatinsert990 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat991 = shufflevector <4 x i32> %broadcast.splatinsert990, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body982

vector.body982:                                   ; preds = %vector.body982, %polly.loop_header750.1
  %index984 = phi i64 [ 0, %polly.loop_header750.1 ], [ %index.next985, %vector.body982 ]
  %vec.ind988 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.1 ], [ %vec.ind.next989, %vector.body982 ]
  %374 = add nuw nsw <4 x i64> %vec.ind988, <i64 32, i64 32, i64 32, i64 32>
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat991, %375
  %377 = add <4 x i32> %376, <i32 3, i32 3, i32 3, i32 3>
  %378 = urem <4 x i32> %377, <i32 80, i32 80, i32 80, i32 80>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add nuw nsw i64 %382, %372
  %384 = getelementptr i8, i8* %call, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !94, !noalias !96
  %index.next985 = add i64 %index984, 4
  %vec.ind.next989 = add <4 x i64> %vec.ind988, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next985, 32
  br i1 %386, label %polly.loop_exit758.1, label %vector.body982, !llvm.loop !114

polly.loop_exit758.1:                             ; preds = %vector.body982
  %polly.indvar_next754.1 = add nuw nsw i64 %polly.indvar753.1, 1
  %exitcond882.1.not = icmp eq i64 %polly.indvar_next754.1, 32
  br i1 %exitcond882.1.not, label %polly.loop_header750.2, label %polly.loop_header750.1

polly.loop_header750.2:                           ; preds = %polly.loop_exit758.1, %polly.loop_exit758.2
  %polly.indvar753.2 = phi i64 [ %polly.indvar_next754.2, %polly.loop_exit758.2 ], [ 0, %polly.loop_exit758.1 ]
  %387 = mul nuw nsw i64 %polly.indvar753.2, 640
  %388 = trunc i64 %polly.indvar753.2 to i32
  %broadcast.splatinsert1002 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1003 = shufflevector <4 x i32> %broadcast.splatinsert1002, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %polly.loop_header750.2
  %index996 = phi i64 [ 0, %polly.loop_header750.2 ], [ %index.next997, %vector.body994 ]
  %vec.ind1000 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.2 ], [ %vec.ind.next1001, %vector.body994 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1000, <i64 64, i64 64, i64 64, i64 64>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1003, %390
  %392 = add <4 x i32> %391, <i32 3, i32 3, i32 3, i32 3>
  %393 = urem <4 x i32> %392, <i32 80, i32 80, i32 80, i32 80>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add nuw nsw i64 %397, %387
  %399 = getelementptr i8, i8* %call, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !94, !noalias !96
  %index.next997 = add i64 %index996, 4
  %vec.ind.next1001 = add <4 x i64> %vec.ind1000, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next997, 16
  br i1 %401, label %polly.loop_exit758.2, label %vector.body994, !llvm.loop !115

polly.loop_exit758.2:                             ; preds = %vector.body994
  %polly.indvar_next754.2 = add nuw nsw i64 %polly.indvar753.2, 1
  %exitcond882.2.not = icmp eq i64 %polly.indvar_next754.2, 32
  br i1 %exitcond882.2.not, label %polly.loop_header750.1915, label %polly.loop_header750.2

polly.loop_header750.1915:                        ; preds = %polly.loop_exit758.2, %polly.loop_exit758.1926
  %polly.indvar753.1914 = phi i64 [ %polly.indvar_next754.1924, %polly.loop_exit758.1926 ], [ 0, %polly.loop_exit758.2 ]
  %402 = add nuw nsw i64 %polly.indvar753.1914, 32
  %403 = mul nuw nsw i64 %402, 640
  %404 = trunc i64 %402 to i32
  %broadcast.splatinsert1016 = insertelement <4 x i32> poison, i32 %404, i32 0
  %broadcast.splat1017 = shufflevector <4 x i32> %broadcast.splatinsert1016, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1006

vector.body1006:                                  ; preds = %vector.body1006, %polly.loop_header750.1915
  %index1008 = phi i64 [ 0, %polly.loop_header750.1915 ], [ %index.next1009, %vector.body1006 ]
  %vec.ind1014 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header750.1915 ], [ %vec.ind.next1015, %vector.body1006 ]
  %405 = mul <4 x i32> %vec.ind1014, %broadcast.splat1017
  %406 = add <4 x i32> %405, <i32 3, i32 3, i32 3, i32 3>
  %407 = urem <4 x i32> %406, <i32 80, i32 80, i32 80, i32 80>
  %408 = sitofp <4 x i32> %407 to <4 x double>
  %409 = fmul fast <4 x double> %408, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %410 = shl i64 %index1008, 3
  %411 = add nuw nsw i64 %410, %403
  %412 = getelementptr i8, i8* %call, i64 %411
  %413 = bitcast i8* %412 to <4 x double>*
  store <4 x double> %409, <4 x double>* %413, align 8, !alias.scope !94, !noalias !96
  %index.next1009 = add i64 %index1008, 4
  %vec.ind.next1015 = add <4 x i32> %vec.ind1014, <i32 4, i32 4, i32 4, i32 4>
  %414 = icmp eq i64 %index.next1009, 32
  br i1 %414, label %polly.loop_exit758.1926, label %vector.body1006, !llvm.loop !116

polly.loop_exit758.1926:                          ; preds = %vector.body1006
  %polly.indvar_next754.1924 = add nuw nsw i64 %polly.indvar753.1914, 1
  %exitcond882.1925.not = icmp eq i64 %polly.indvar_next754.1924, 32
  br i1 %exitcond882.1925.not, label %polly.loop_header750.1.1, label %polly.loop_header750.1915

polly.loop_header750.1.1:                         ; preds = %polly.loop_exit758.1926, %polly.loop_exit758.1.1
  %polly.indvar753.1.1 = phi i64 [ %polly.indvar_next754.1.1, %polly.loop_exit758.1.1 ], [ 0, %polly.loop_exit758.1926 ]
  %415 = add nuw nsw i64 %polly.indvar753.1.1, 32
  %416 = mul nuw nsw i64 %415, 640
  %417 = trunc i64 %415 to i32
  %broadcast.splatinsert1028 = insertelement <4 x i32> poison, i32 %417, i32 0
  %broadcast.splat1029 = shufflevector <4 x i32> %broadcast.splatinsert1028, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %polly.loop_header750.1.1
  %index1022 = phi i64 [ 0, %polly.loop_header750.1.1 ], [ %index.next1023, %vector.body1020 ]
  %vec.ind1026 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.1.1 ], [ %vec.ind.next1027, %vector.body1020 ]
  %418 = add nuw nsw <4 x i64> %vec.ind1026, <i64 32, i64 32, i64 32, i64 32>
  %419 = trunc <4 x i64> %418 to <4 x i32>
  %420 = mul <4 x i32> %broadcast.splat1029, %419
  %421 = add <4 x i32> %420, <i32 3, i32 3, i32 3, i32 3>
  %422 = urem <4 x i32> %421, <i32 80, i32 80, i32 80, i32 80>
  %423 = sitofp <4 x i32> %422 to <4 x double>
  %424 = fmul fast <4 x double> %423, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %425 = extractelement <4 x i64> %418, i32 0
  %426 = shl i64 %425, 3
  %427 = add nuw nsw i64 %426, %416
  %428 = getelementptr i8, i8* %call, i64 %427
  %429 = bitcast i8* %428 to <4 x double>*
  store <4 x double> %424, <4 x double>* %429, align 8, !alias.scope !94, !noalias !96
  %index.next1023 = add i64 %index1022, 4
  %vec.ind.next1027 = add <4 x i64> %vec.ind1026, <i64 4, i64 4, i64 4, i64 4>
  %430 = icmp eq i64 %index.next1023, 32
  br i1 %430, label %polly.loop_exit758.1.1, label %vector.body1020, !llvm.loop !117

polly.loop_exit758.1.1:                           ; preds = %vector.body1020
  %polly.indvar_next754.1.1 = add nuw nsw i64 %polly.indvar753.1.1, 1
  %exitcond882.1.1.not = icmp eq i64 %polly.indvar_next754.1.1, 32
  br i1 %exitcond882.1.1.not, label %polly.loop_header750.2.1, label %polly.loop_header750.1.1

polly.loop_header750.2.1:                         ; preds = %polly.loop_exit758.1.1, %polly.loop_exit758.2.1
  %polly.indvar753.2.1 = phi i64 [ %polly.indvar_next754.2.1, %polly.loop_exit758.2.1 ], [ 0, %polly.loop_exit758.1.1 ]
  %431 = add nuw nsw i64 %polly.indvar753.2.1, 32
  %432 = mul nuw nsw i64 %431, 640
  %433 = trunc i64 %431 to i32
  %broadcast.splatinsert1040 = insertelement <4 x i32> poison, i32 %433, i32 0
  %broadcast.splat1041 = shufflevector <4 x i32> %broadcast.splatinsert1040, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %polly.loop_header750.2.1
  %index1034 = phi i64 [ 0, %polly.loop_header750.2.1 ], [ %index.next1035, %vector.body1032 ]
  %vec.ind1038 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.2.1 ], [ %vec.ind.next1039, %vector.body1032 ]
  %434 = add nuw nsw <4 x i64> %vec.ind1038, <i64 64, i64 64, i64 64, i64 64>
  %435 = trunc <4 x i64> %434 to <4 x i32>
  %436 = mul <4 x i32> %broadcast.splat1041, %435
  %437 = add <4 x i32> %436, <i32 3, i32 3, i32 3, i32 3>
  %438 = urem <4 x i32> %437, <i32 80, i32 80, i32 80, i32 80>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = extractelement <4 x i64> %434, i32 0
  %442 = shl i64 %441, 3
  %443 = add nuw nsw i64 %442, %432
  %444 = getelementptr i8, i8* %call, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %440, <4 x double>* %445, align 8, !alias.scope !94, !noalias !96
  %index.next1035 = add i64 %index1034, 4
  %vec.ind.next1039 = add <4 x i64> %vec.ind1038, <i64 4, i64 4, i64 4, i64 4>
  %446 = icmp eq i64 %index.next1035, 16
  br i1 %446, label %polly.loop_exit758.2.1, label %vector.body1032, !llvm.loop !118

polly.loop_exit758.2.1:                           ; preds = %vector.body1032
  %polly.indvar_next754.2.1 = add nuw nsw i64 %polly.indvar753.2.1, 1
  %exitcond882.2.1.not = icmp eq i64 %polly.indvar_next754.2.1, 32
  br i1 %exitcond882.2.1.not, label %polly.loop_header750.2929, label %polly.loop_header750.2.1

polly.loop_header750.2929:                        ; preds = %polly.loop_exit758.2.1, %polly.loop_exit758.2940
  %polly.indvar753.2928 = phi i64 [ %polly.indvar_next754.2938, %polly.loop_exit758.2940 ], [ 0, %polly.loop_exit758.2.1 ]
  %447 = add nuw nsw i64 %polly.indvar753.2928, 64
  %448 = mul nuw nsw i64 %447, 640
  %449 = trunc i64 %447 to i32
  %broadcast.splatinsert1054 = insertelement <4 x i32> poison, i32 %449, i32 0
  %broadcast.splat1055 = shufflevector <4 x i32> %broadcast.splatinsert1054, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1044

vector.body1044:                                  ; preds = %vector.body1044, %polly.loop_header750.2929
  %index1046 = phi i64 [ 0, %polly.loop_header750.2929 ], [ %index.next1047, %vector.body1044 ]
  %vec.ind1052 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header750.2929 ], [ %vec.ind.next1053, %vector.body1044 ]
  %450 = mul <4 x i32> %vec.ind1052, %broadcast.splat1055
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = shl i64 %index1046, 3
  %456 = add nuw nsw i64 %455, %448
  %457 = getelementptr i8, i8* %call, i64 %456
  %458 = bitcast i8* %457 to <4 x double>*
  store <4 x double> %454, <4 x double>* %458, align 8, !alias.scope !94, !noalias !96
  %index.next1047 = add i64 %index1046, 4
  %vec.ind.next1053 = add <4 x i32> %vec.ind1052, <i32 4, i32 4, i32 4, i32 4>
  %459 = icmp eq i64 %index.next1047, 32
  br i1 %459, label %polly.loop_exit758.2940, label %vector.body1044, !llvm.loop !119

polly.loop_exit758.2940:                          ; preds = %vector.body1044
  %polly.indvar_next754.2938 = add nuw nsw i64 %polly.indvar753.2928, 1
  %exitcond882.2939.not = icmp eq i64 %polly.indvar_next754.2938, 16
  br i1 %exitcond882.2939.not, label %polly.loop_header750.1.2, label %polly.loop_header750.2929

polly.loop_header750.1.2:                         ; preds = %polly.loop_exit758.2940, %polly.loop_exit758.1.2
  %polly.indvar753.1.2 = phi i64 [ %polly.indvar_next754.1.2, %polly.loop_exit758.1.2 ], [ 0, %polly.loop_exit758.2940 ]
  %460 = add nuw nsw i64 %polly.indvar753.1.2, 64
  %461 = mul nuw nsw i64 %460, 640
  %462 = trunc i64 %460 to i32
  %broadcast.splatinsert1066 = insertelement <4 x i32> poison, i32 %462, i32 0
  %broadcast.splat1067 = shufflevector <4 x i32> %broadcast.splatinsert1066, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %polly.loop_header750.1.2
  %index1060 = phi i64 [ 0, %polly.loop_header750.1.2 ], [ %index.next1061, %vector.body1058 ]
  %vec.ind1064 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.1.2 ], [ %vec.ind.next1065, %vector.body1058 ]
  %463 = add nuw nsw <4 x i64> %vec.ind1064, <i64 32, i64 32, i64 32, i64 32>
  %464 = trunc <4 x i64> %463 to <4 x i32>
  %465 = mul <4 x i32> %broadcast.splat1067, %464
  %466 = add <4 x i32> %465, <i32 3, i32 3, i32 3, i32 3>
  %467 = urem <4 x i32> %466, <i32 80, i32 80, i32 80, i32 80>
  %468 = sitofp <4 x i32> %467 to <4 x double>
  %469 = fmul fast <4 x double> %468, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %470 = extractelement <4 x i64> %463, i32 0
  %471 = shl i64 %470, 3
  %472 = add nuw nsw i64 %471, %461
  %473 = getelementptr i8, i8* %call, i64 %472
  %474 = bitcast i8* %473 to <4 x double>*
  store <4 x double> %469, <4 x double>* %474, align 8, !alias.scope !94, !noalias !96
  %index.next1061 = add i64 %index1060, 4
  %vec.ind.next1065 = add <4 x i64> %vec.ind1064, <i64 4, i64 4, i64 4, i64 4>
  %475 = icmp eq i64 %index.next1061, 32
  br i1 %475, label %polly.loop_exit758.1.2, label %vector.body1058, !llvm.loop !120

polly.loop_exit758.1.2:                           ; preds = %vector.body1058
  %polly.indvar_next754.1.2 = add nuw nsw i64 %polly.indvar753.1.2, 1
  %exitcond882.1.2.not = icmp eq i64 %polly.indvar_next754.1.2, 16
  br i1 %exitcond882.1.2.not, label %polly.loop_header750.2.2, label %polly.loop_header750.1.2

polly.loop_header750.2.2:                         ; preds = %polly.loop_exit758.1.2, %polly.loop_exit758.2.2
  %polly.indvar753.2.2 = phi i64 [ %polly.indvar_next754.2.2, %polly.loop_exit758.2.2 ], [ 0, %polly.loop_exit758.1.2 ]
  %476 = add nuw nsw i64 %polly.indvar753.2.2, 64
  %477 = mul nuw nsw i64 %476, 640
  %478 = trunc i64 %476 to i32
  %broadcast.splatinsert1078 = insertelement <4 x i32> poison, i32 %478, i32 0
  %broadcast.splat1079 = shufflevector <4 x i32> %broadcast.splatinsert1078, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1070

vector.body1070:                                  ; preds = %vector.body1070, %polly.loop_header750.2.2
  %index1072 = phi i64 [ 0, %polly.loop_header750.2.2 ], [ %index.next1073, %vector.body1070 ]
  %vec.ind1076 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.2.2 ], [ %vec.ind.next1077, %vector.body1070 ]
  %479 = add nuw nsw <4 x i64> %vec.ind1076, <i64 64, i64 64, i64 64, i64 64>
  %480 = trunc <4 x i64> %479 to <4 x i32>
  %481 = mul <4 x i32> %broadcast.splat1079, %480
  %482 = add <4 x i32> %481, <i32 3, i32 3, i32 3, i32 3>
  %483 = urem <4 x i32> %482, <i32 80, i32 80, i32 80, i32 80>
  %484 = sitofp <4 x i32> %483 to <4 x double>
  %485 = fmul fast <4 x double> %484, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %486 = extractelement <4 x i64> %479, i32 0
  %487 = shl i64 %486, 3
  %488 = add nuw nsw i64 %487, %477
  %489 = getelementptr i8, i8* %call, i64 %488
  %490 = bitcast i8* %489 to <4 x double>*
  store <4 x double> %485, <4 x double>* %490, align 8, !alias.scope !94, !noalias !96
  %index.next1073 = add i64 %index1072, 4
  %vec.ind.next1077 = add <4 x i64> %vec.ind1076, <i64 4, i64 4, i64 4, i64 4>
  %491 = icmp eq i64 %index.next1073, 16
  br i1 %491, label %polly.loop_exit758.2.2, label %vector.body1070, !llvm.loop !121

polly.loop_exit758.2.2:                           ; preds = %vector.body1070
  %polly.indvar_next754.2.2 = add nuw nsw i64 %polly.indvar753.2.2, 1
  %exitcond882.2.2.not = icmp eq i64 %polly.indvar_next754.2.2, 16
  br i1 %exitcond882.2.2.not, label %polly.loop_header777, label %polly.loop_header750.2.2
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
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 64}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !52}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 50}
!46 = !{!"llvm.loop.tile.followup_floor", !47}
!47 = distinct !{!47, !12, !23, !48, !49, !50, !51}
!48 = !{!"llvm.loop.id", !"i1"}
!49 = !{!"llvm.data.pack.enable", i1 true}
!50 = !{!"llvm.data.pack.array", !21}
!51 = !{!"llvm.data.pack.allocate", !"malloc"}
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
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call2"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !66, !68}
!73 = !{!63, !67, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call2"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !77, !79}
!83 = !{!74, !78, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !87, !89}
!93 = !{!84, !88, !89}
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
