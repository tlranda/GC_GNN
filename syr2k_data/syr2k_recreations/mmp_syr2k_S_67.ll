; ModuleID = 'syr2k_recreations//mmp_syr2k_S_67.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_67.c"
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
  %call774 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1635 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1635, %call2
  %polly.access.call2655 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2655, %call1
  %2 = or i1 %0, %1
  %polly.access.call675 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call675, %call2
  %4 = icmp ule i8* %polly.access.call2655, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call675, %call1
  %8 = icmp ule i8* %polly.access.call1635, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header760, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep954 = getelementptr i8, i8* %call2, i64 %12
  %scevgep953 = getelementptr i8, i8* %call2, i64 %11
  %scevgep952 = getelementptr i8, i8* %call1, i64 %12
  %scevgep951 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep951, %scevgep954
  %bound1 = icmp ult i8* %scevgep953, %scevgep952
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
  br i1 %exitcond18.not.i, label %vector.ph958, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph958:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert965 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat966 = shufflevector <4 x i64> %broadcast.splatinsert965, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body957

vector.body957:                                   ; preds = %vector.body957, %vector.ph958
  %index959 = phi i64 [ 0, %vector.ph958 ], [ %index.next960, %vector.body957 ]
  %vec.ind963 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph958 ], [ %vec.ind.next964, %vector.body957 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind963, %broadcast.splat966
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call774, i64 %indvars.iv7.i, i64 %index959
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next960 = add i64 %index959, 4
  %vec.ind.next964 = add <4 x i64> %vec.ind963, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next960, 80
  br i1 %40, label %for.inc41.i, label %vector.body957, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body957
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph958, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit821.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start448, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1311, label %vector.ph1240

vector.ph1240:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1240
  %index1241 = phi i64 [ 0, %vector.ph1240 ], [ %index.next1242, %vector.body1239 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call774, i64 %indvars.iv21.i, i64 %index1241
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1242 = add i64 %index1241, 4
  %46 = icmp eq i64 %index.next1242, %n.vec
  br i1 %46, label %middle.block1237, label %vector.body1239, !llvm.loop !18

middle.block1237:                                 ; preds = %vector.body1239
  %cmp.n1244 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1244, label %for.inc6.i, label %for.body3.i46.preheader1311

for.body3.i46.preheader1311:                      ; preds = %for.body3.i46.preheader, %middle.block1237
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1237 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1311, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1311 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call774, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1237, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call774, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting449
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start272, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1260 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1260, label %for.body3.i60.preheader1310, label %vector.ph1261

vector.ph1261:                                    ; preds = %for.body3.i60.preheader
  %n.vec1263 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1261
  %index1264 = phi i64 [ 0, %vector.ph1261 ], [ %index.next1265, %vector.body1259 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call774, i64 %indvars.iv21.i52, i64 %index1264
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1268 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1268, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1265 = add i64 %index1264, 4
  %57 = icmp eq i64 %index.next1265, %n.vec1263
  br i1 %57, label %middle.block1257, label %vector.body1259, !llvm.loop !57

middle.block1257:                                 ; preds = %vector.body1259
  %cmp.n1267 = icmp eq i64 %indvars.iv21.i52, %n.vec1263
  br i1 %cmp.n1267, label %for.inc6.i63, label %for.body3.i60.preheader1310

for.body3.i60.preheader1310:                      ; preds = %for.body3.i60.preheader, %middle.block1257
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1263, %middle.block1257 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1310, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1310 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call774, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1257, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call774, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting273
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1286 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1286, label %for.body3.i99.preheader1309, label %vector.ph1287

vector.ph1287:                                    ; preds = %for.body3.i99.preheader
  %n.vec1289 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.body1285, %vector.ph1287
  %index1290 = phi i64 [ 0, %vector.ph1287 ], [ %index.next1291, %vector.body1285 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call774, i64 %indvars.iv21.i91, i64 %index1290
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1294 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1294, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1291 = add i64 %index1290, 4
  %68 = icmp eq i64 %index.next1291, %n.vec1289
  br i1 %68, label %middle.block1283, label %vector.body1285, !llvm.loop !59

middle.block1283:                                 ; preds = %vector.body1285
  %cmp.n1293 = icmp eq i64 %indvars.iv21.i91, %n.vec1289
  br i1 %cmp.n1293, label %for.inc6.i102, label %for.body3.i99.preheader1309

for.body3.i99.preheader1309:                      ; preds = %for.body3.i99.preheader, %middle.block1283
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1289, %middle.block1283 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1309, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1309 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call774, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1283, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call774, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %75 = load i8*, i8** %argv, align 8, !tbaa !61
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call774, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !64

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !61
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

polly.exiting:                                    ; preds = %polly.loop_exit240
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1298 = phi i64 [ %indvar.next1299, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1298, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1300 = icmp ult i64 %88, 4
  br i1 %min.iters.check1300, label %polly.loop_header192.preheader, label %vector.ph1301

vector.ph1301:                                    ; preds = %polly.loop_header
  %n.vec1303 = and i64 %88, -4
  br label %vector.body1297

vector.body1297:                                  ; preds = %vector.body1297, %vector.ph1301
  %index1304 = phi i64 [ 0, %vector.ph1301 ], [ %index.next1305, %vector.body1297 ]
  %90 = shl nuw nsw i64 %index1304, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1308 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1308, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1305 = add i64 %index1304, 4
  %95 = icmp eq i64 %index.next1305, %n.vec1303
  br i1 %95, label %middle.block1295, label %vector.body1297, !llvm.loop !72

middle.block1295:                                 ; preds = %vector.body1297
  %cmp.n1307 = icmp eq i64 %88, %n.vec1303
  br i1 %cmp.n1307, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1295
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1303, %middle.block1295 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1295
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond840.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1299 = add i64 %indvar1298, 1
  br i1 %exitcond840.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall136, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep836.1 = getelementptr i8, i8* %malloccall136, i64 480
  %scevgep837.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.1, i64 480, i1 false)
  %scevgep836.2 = getelementptr i8, i8* %malloccall136, i64 960
  %scevgep837.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.2, i64 480, i1 false)
  %scevgep836.3 = getelementptr i8, i8* %malloccall136, i64 1440
  %scevgep837.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.3, i64 480, i1 false)
  %scevgep836.4 = getelementptr i8, i8* %malloccall136, i64 1920
  %scevgep837.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.4, i64 480, i1 false)
  %scevgep836.5 = getelementptr i8, i8* %malloccall136, i64 2400
  %scevgep837.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.5, i64 480, i1 false)
  %scevgep836.6 = getelementptr i8, i8* %malloccall136, i64 2880
  %scevgep837.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.6, i64 480, i1 false)
  %scevgep836.7 = getelementptr i8, i8* %malloccall136, i64 3360
  %scevgep837.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.7, i64 480, i1 false)
  %scevgep836.8 = getelementptr i8, i8* %malloccall136, i64 3840
  %scevgep837.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.8, i64 480, i1 false)
  %scevgep836.9 = getelementptr i8, i8* %malloccall136, i64 4320
  %scevgep837.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.9, i64 480, i1 false)
  %scevgep836.10 = getelementptr i8, i8* %malloccall136, i64 4800
  %scevgep837.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.10, i64 480, i1 false)
  %scevgep836.11 = getelementptr i8, i8* %malloccall136, i64 5280
  %scevgep837.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.11, i64 480, i1 false)
  %scevgep836.12 = getelementptr i8, i8* %malloccall136, i64 5760
  %scevgep837.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.12, i64 480, i1 false)
  %scevgep836.13 = getelementptr i8, i8* %malloccall136, i64 6240
  %scevgep837.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.13, i64 480, i1 false)
  %scevgep836.14 = getelementptr i8, i8* %malloccall136, i64 6720
  %scevgep837.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.14, i64 480, i1 false)
  %scevgep836.15 = getelementptr i8, i8* %malloccall136, i64 7200
  %scevgep837.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.15, i64 480, i1 false)
  %scevgep836.16 = getelementptr i8, i8* %malloccall136, i64 7680
  %scevgep837.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.16, i64 480, i1 false)
  %scevgep836.17 = getelementptr i8, i8* %malloccall136, i64 8160
  %scevgep837.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.17, i64 480, i1 false)
  %scevgep836.18 = getelementptr i8, i8* %malloccall136, i64 8640
  %scevgep837.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.18, i64 480, i1 false)
  %scevgep836.19 = getelementptr i8, i8* %malloccall136, i64 9120
  %scevgep837.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.19, i64 480, i1 false)
  %scevgep836.20 = getelementptr i8, i8* %malloccall136, i64 9600
  %scevgep837.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.20, i64 480, i1 false)
  %scevgep836.21 = getelementptr i8, i8* %malloccall136, i64 10080
  %scevgep837.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.21, i64 480, i1 false)
  %scevgep836.22 = getelementptr i8, i8* %malloccall136, i64 10560
  %scevgep837.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.22, i64 480, i1 false)
  %scevgep836.23 = getelementptr i8, i8* %malloccall136, i64 11040
  %scevgep837.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.23, i64 480, i1 false)
  %scevgep836.24 = getelementptr i8, i8* %malloccall136, i64 11520
  %scevgep837.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.24, i64 480, i1 false)
  %scevgep836.25 = getelementptr i8, i8* %malloccall136, i64 12000
  %scevgep837.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.25, i64 480, i1 false)
  %scevgep836.26 = getelementptr i8, i8* %malloccall136, i64 12480
  %scevgep837.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.26, i64 480, i1 false)
  %scevgep836.27 = getelementptr i8, i8* %malloccall136, i64 12960
  %scevgep837.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.27, i64 480, i1 false)
  %scevgep836.28 = getelementptr i8, i8* %malloccall136, i64 13440
  %scevgep837.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.28, i64 480, i1 false)
  %scevgep836.29 = getelementptr i8, i8* %malloccall136, i64 13920
  %scevgep837.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.29, i64 480, i1 false)
  %scevgep836.30 = getelementptr i8, i8* %malloccall136, i64 14400
  %scevgep837.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.30, i64 480, i1 false)
  %scevgep836.31 = getelementptr i8, i8* %malloccall136, i64 14880
  %scevgep837.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.31, i64 480, i1 false)
  %scevgep836.32 = getelementptr i8, i8* %malloccall136, i64 15360
  %scevgep837.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.32, i64 480, i1 false)
  %scevgep836.33 = getelementptr i8, i8* %malloccall136, i64 15840
  %scevgep837.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.33, i64 480, i1 false)
  %scevgep836.34 = getelementptr i8, i8* %malloccall136, i64 16320
  %scevgep837.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.34, i64 480, i1 false)
  %scevgep836.35 = getelementptr i8, i8* %malloccall136, i64 16800
  %scevgep837.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.35, i64 480, i1 false)
  %scevgep836.36 = getelementptr i8, i8* %malloccall136, i64 17280
  %scevgep837.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.36, i64 480, i1 false)
  %scevgep836.37 = getelementptr i8, i8* %malloccall136, i64 17760
  %scevgep837.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.37, i64 480, i1 false)
  %scevgep836.38 = getelementptr i8, i8* %malloccall136, i64 18240
  %scevgep837.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.38, i64 480, i1 false)
  %scevgep836.39 = getelementptr i8, i8* %malloccall136, i64 18720
  %scevgep837.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.39, i64 480, i1 false)
  %scevgep836.40 = getelementptr i8, i8* %malloccall136, i64 19200
  %scevgep837.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.40, i64 480, i1 false)
  %scevgep836.41 = getelementptr i8, i8* %malloccall136, i64 19680
  %scevgep837.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.41, i64 480, i1 false)
  %scevgep836.42 = getelementptr i8, i8* %malloccall136, i64 20160
  %scevgep837.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.42, i64 480, i1 false)
  %scevgep836.43 = getelementptr i8, i8* %malloccall136, i64 20640
  %scevgep837.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.43, i64 480, i1 false)
  %scevgep836.44 = getelementptr i8, i8* %malloccall136, i64 21120
  %scevgep837.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.44, i64 480, i1 false)
  %scevgep836.45 = getelementptr i8, i8* %malloccall136, i64 21600
  %scevgep837.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.45, i64 480, i1 false)
  %scevgep836.46 = getelementptr i8, i8* %malloccall136, i64 22080
  %scevgep837.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.46, i64 480, i1 false)
  %scevgep836.47 = getelementptr i8, i8* %malloccall136, i64 22560
  %scevgep837.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.47, i64 480, i1 false)
  %scevgep836.48 = getelementptr i8, i8* %malloccall136, i64 23040
  %scevgep837.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.48, i64 480, i1 false)
  %scevgep836.49 = getelementptr i8, i8* %malloccall136, i64 23520
  %scevgep837.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.49, i64 480, i1 false)
  %scevgep836.50 = getelementptr i8, i8* %malloccall136, i64 24000
  %scevgep837.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.50, i64 480, i1 false)
  %scevgep836.51 = getelementptr i8, i8* %malloccall136, i64 24480
  %scevgep837.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.51, i64 480, i1 false)
  %scevgep836.52 = getelementptr i8, i8* %malloccall136, i64 24960
  %scevgep837.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.52, i64 480, i1 false)
  %scevgep836.53 = getelementptr i8, i8* %malloccall136, i64 25440
  %scevgep837.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.53, i64 480, i1 false)
  %scevgep836.54 = getelementptr i8, i8* %malloccall136, i64 25920
  %scevgep837.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.54, i64 480, i1 false)
  %scevgep836.55 = getelementptr i8, i8* %malloccall136, i64 26400
  %scevgep837.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.55, i64 480, i1 false)
  %scevgep836.56 = getelementptr i8, i8* %malloccall136, i64 26880
  %scevgep837.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.56, i64 480, i1 false)
  %scevgep836.57 = getelementptr i8, i8* %malloccall136, i64 27360
  %scevgep837.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.57, i64 480, i1 false)
  %scevgep836.58 = getelementptr i8, i8* %malloccall136, i64 27840
  %scevgep837.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.58, i64 480, i1 false)
  %scevgep836.59 = getelementptr i8, i8* %malloccall136, i64 28320
  %scevgep837.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.59, i64 480, i1 false)
  %scevgep836.60 = getelementptr i8, i8* %malloccall136, i64 28800
  %scevgep837.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.60, i64 480, i1 false)
  %scevgep836.61 = getelementptr i8, i8* %malloccall136, i64 29280
  %scevgep837.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.61, i64 480, i1 false)
  %scevgep836.62 = getelementptr i8, i8* %malloccall136, i64 29760
  %scevgep837.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.62, i64 480, i1 false)
  %scevgep836.63 = getelementptr i8, i8* %malloccall136, i64 30240
  %scevgep837.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.63, i64 480, i1 false)
  %scevgep836.64 = getelementptr i8, i8* %malloccall136, i64 30720
  %scevgep837.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.64, i64 480, i1 false)
  %scevgep836.65 = getelementptr i8, i8* %malloccall136, i64 31200
  %scevgep837.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.65, i64 480, i1 false)
  %scevgep836.66 = getelementptr i8, i8* %malloccall136, i64 31680
  %scevgep837.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.66, i64 480, i1 false)
  %scevgep836.67 = getelementptr i8, i8* %malloccall136, i64 32160
  %scevgep837.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.67, i64 480, i1 false)
  %scevgep836.68 = getelementptr i8, i8* %malloccall136, i64 32640
  %scevgep837.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.68, i64 480, i1 false)
  %scevgep836.69 = getelementptr i8, i8* %malloccall136, i64 33120
  %scevgep837.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.69, i64 480, i1 false)
  %scevgep836.70 = getelementptr i8, i8* %malloccall136, i64 33600
  %scevgep837.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.70, i64 480, i1 false)
  %scevgep836.71 = getelementptr i8, i8* %malloccall136, i64 34080
  %scevgep837.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.71, i64 480, i1 false)
  %scevgep836.72 = getelementptr i8, i8* %malloccall136, i64 34560
  %scevgep837.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.72, i64 480, i1 false)
  %scevgep836.73 = getelementptr i8, i8* %malloccall136, i64 35040
  %scevgep837.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.73, i64 480, i1 false)
  %scevgep836.74 = getelementptr i8, i8* %malloccall136, i64 35520
  %scevgep837.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.74, i64 480, i1 false)
  %scevgep836.75 = getelementptr i8, i8* %malloccall136, i64 36000
  %scevgep837.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.75, i64 480, i1 false)
  %scevgep836.76 = getelementptr i8, i8* %malloccall136, i64 36480
  %scevgep837.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.76, i64 480, i1 false)
  %scevgep836.77 = getelementptr i8, i8* %malloccall136, i64 36960
  %scevgep837.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.77, i64 480, i1 false)
  %scevgep836.78 = getelementptr i8, i8* %malloccall136, i64 37440
  %scevgep837.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.78, i64 480, i1 false)
  %scevgep836.79 = getelementptr i8, i8* %malloccall136, i64 37920
  %scevgep837.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep836.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep837.79, i64 480, i1 false)
  br label %polly.loop_header216

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond839.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header216:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit240
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit240 ], [ 1, %polly.loop_header200.preheader ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit240 ], [ 0, %polly.loop_header200.preheader ]
  br label %polly.loop_header222

polly.loop_exit240:                               ; preds = %polly.loop_exit246
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond834.not = icmp eq i64 %polly.indvar_next220, 80
  br i1 %exitcond834.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_header222, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_header222 ]
  %97 = mul nuw nsw i64 %polly.indvar225, 480
  %scevgep830 = getelementptr i8, i8* %malloccall, i64 %97
  %scevgep831 = getelementptr i8, i8* %call1, i64 %97
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep830, i8* noundef nonnull align 8 dereferenceable(480) %scevgep831, i64 480, i1 false)
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next226, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_preheader239, label %polly.loop_header222

polly.loop_header238:                             ; preds = %polly.loop_exit246, %polly.loop_preheader239
  %polly.indvar241 = phi i64 [ 0, %polly.loop_preheader239 ], [ %polly.indvar_next242, %polly.loop_exit246 ]
  %polly.access.add.Packed_MemRef_call2255 = add nuw nsw i64 %polly.indvar241, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2256 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255
  %_p_scalar_257 = load double, double* %polly.access.Packed_MemRef_call2256, align 8
  %polly.access.Packed_MemRef_call1264 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2255
  %_p_scalar_265 = load double, double* %polly.access.Packed_MemRef_call1264, align 8
  br label %polly.loop_header244

polly.loop_exit246:                               ; preds = %polly.loop_header244
  %polly.indvar_next242 = add nuw nsw i64 %polly.indvar241, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next242, 60
  br i1 %exitcond833.not, label %polly.loop_exit240, label %polly.loop_header238

polly.loop_preheader239:                          ; preds = %polly.loop_header222
  %98 = mul nuw nsw i64 %polly.indvar219, 640
  %scevgep266 = getelementptr i8, i8* %call, i64 %98
  %polly.access.mul.Packed_MemRef_call2254 = mul nuw nsw i64 %polly.indvar219, 60
  br label %polly.loop_header238

polly.loop_header244:                             ; preds = %polly.loop_header244, %polly.loop_header238
  %polly.indvar247 = phi i64 [ 0, %polly.loop_header238 ], [ %polly.indvar_next248, %polly.loop_header244 ]
  %polly.access.mul.Packed_MemRef_call1250 = mul nuw nsw i64 %polly.indvar247, 60
  %polly.access.add.Packed_MemRef_call1251 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1250, %polly.indvar241
  %polly.access.Packed_MemRef_call1252 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1251
  %_p_scalar_253 = load double, double* %polly.access.Packed_MemRef_call1252, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_257, %_p_scalar_253
  %polly.access.Packed_MemRef_call2260 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1251
  %_p_scalar_261 = load double, double* %polly.access.Packed_MemRef_call2260, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_265, %_p_scalar_261
  %99 = shl nuw nsw i64 %polly.indvar247, 3
  %scevgep267 = getelementptr i8, i8* %scevgep266, i64 %99
  %scevgep267268 = bitcast i8* %scevgep267 to double*
  %_p_scalar_269 = load double, double* %scevgep267268, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_269
  store double %p_add42.i118, double* %scevgep267268, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next248, %indvars.iv
  br i1 %exitcond832.not, label %polly.loop_exit246, label %polly.loop_header244

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall276 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header360

polly.exiting273:                                 ; preds = %polly.loop_exit416
  tail call void @free(i8* nonnull %malloccall274)
  tail call void @free(i8* nonnull %malloccall276)
  br label %kernel_syr2k.exit90

polly.loop_header360:                             ; preds = %polly.loop_exit368, %polly.start272
  %indvar1272 = phi i64 [ %indvar.next1273, %polly.loop_exit368 ], [ 0, %polly.start272 ]
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_exit368 ], [ 1, %polly.start272 ]
  %100 = add i64 %indvar1272, 1
  %101 = mul nuw nsw i64 %polly.indvar363, 640
  %scevgep372 = getelementptr i8, i8* %call, i64 %101
  %min.iters.check1274 = icmp ult i64 %100, 4
  br i1 %min.iters.check1274, label %polly.loop_header366.preheader, label %vector.ph1275

vector.ph1275:                                    ; preds = %polly.loop_header360
  %n.vec1277 = and i64 %100, -4
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1275
  %index1278 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1279, %vector.body1271 ]
  %102 = shl nuw nsw i64 %index1278, 3
  %103 = getelementptr i8, i8* %scevgep372, i64 %102
  %104 = bitcast i8* %103 to <4 x double>*
  %wide.load1282 = load <4 x double>, <4 x double>* %104, align 8, !alias.scope !75, !noalias !77
  %105 = fmul fast <4 x double> %wide.load1282, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %106 = bitcast i8* %103 to <4 x double>*
  store <4 x double> %105, <4 x double>* %106, align 8, !alias.scope !75, !noalias !77
  %index.next1279 = add i64 %index1278, 4
  %107 = icmp eq i64 %index.next1279, %n.vec1277
  br i1 %107, label %middle.block1269, label %vector.body1271, !llvm.loop !82

middle.block1269:                                 ; preds = %vector.body1271
  %cmp.n1281 = icmp eq i64 %100, %n.vec1277
  br i1 %cmp.n1281, label %polly.loop_exit368, label %polly.loop_header366.preheader

polly.loop_header366.preheader:                   ; preds = %polly.loop_header360, %middle.block1269
  %polly.indvar369.ph = phi i64 [ 0, %polly.loop_header360 ], [ %n.vec1277, %middle.block1269 ]
  br label %polly.loop_header366

polly.loop_exit368:                               ; preds = %polly.loop_header366, %middle.block1269
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next364, 80
  %indvar.next1273 = add i64 %indvar1272, 1
  br i1 %exitcond855.not, label %polly.loop_header376.preheader, label %polly.loop_header360

polly.loop_header376.preheader:                   ; preds = %polly.loop_exit368
  %Packed_MemRef_call1275 = bitcast i8* %malloccall274 to double*
  %Packed_MemRef_call2277 = bitcast i8* %malloccall276 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall276, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep851.1 = getelementptr i8, i8* %malloccall276, i64 480
  %scevgep852.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.1, i64 480, i1 false)
  %scevgep851.2 = getelementptr i8, i8* %malloccall276, i64 960
  %scevgep852.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.2, i64 480, i1 false)
  %scevgep851.3 = getelementptr i8, i8* %malloccall276, i64 1440
  %scevgep852.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.3, i64 480, i1 false)
  %scevgep851.4 = getelementptr i8, i8* %malloccall276, i64 1920
  %scevgep852.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.4, i64 480, i1 false)
  %scevgep851.5 = getelementptr i8, i8* %malloccall276, i64 2400
  %scevgep852.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.5, i64 480, i1 false)
  %scevgep851.6 = getelementptr i8, i8* %malloccall276, i64 2880
  %scevgep852.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.6, i64 480, i1 false)
  %scevgep851.7 = getelementptr i8, i8* %malloccall276, i64 3360
  %scevgep852.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.7, i64 480, i1 false)
  %scevgep851.8 = getelementptr i8, i8* %malloccall276, i64 3840
  %scevgep852.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.8, i64 480, i1 false)
  %scevgep851.9 = getelementptr i8, i8* %malloccall276, i64 4320
  %scevgep852.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.9, i64 480, i1 false)
  %scevgep851.10 = getelementptr i8, i8* %malloccall276, i64 4800
  %scevgep852.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.10, i64 480, i1 false)
  %scevgep851.11 = getelementptr i8, i8* %malloccall276, i64 5280
  %scevgep852.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.11, i64 480, i1 false)
  %scevgep851.12 = getelementptr i8, i8* %malloccall276, i64 5760
  %scevgep852.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.12, i64 480, i1 false)
  %scevgep851.13 = getelementptr i8, i8* %malloccall276, i64 6240
  %scevgep852.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.13, i64 480, i1 false)
  %scevgep851.14 = getelementptr i8, i8* %malloccall276, i64 6720
  %scevgep852.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.14, i64 480, i1 false)
  %scevgep851.15 = getelementptr i8, i8* %malloccall276, i64 7200
  %scevgep852.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.15, i64 480, i1 false)
  %scevgep851.16 = getelementptr i8, i8* %malloccall276, i64 7680
  %scevgep852.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.16, i64 480, i1 false)
  %scevgep851.17 = getelementptr i8, i8* %malloccall276, i64 8160
  %scevgep852.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.17, i64 480, i1 false)
  %scevgep851.18 = getelementptr i8, i8* %malloccall276, i64 8640
  %scevgep852.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.18, i64 480, i1 false)
  %scevgep851.19 = getelementptr i8, i8* %malloccall276, i64 9120
  %scevgep852.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.19, i64 480, i1 false)
  %scevgep851.20 = getelementptr i8, i8* %malloccall276, i64 9600
  %scevgep852.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.20, i64 480, i1 false)
  %scevgep851.21 = getelementptr i8, i8* %malloccall276, i64 10080
  %scevgep852.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.21, i64 480, i1 false)
  %scevgep851.22 = getelementptr i8, i8* %malloccall276, i64 10560
  %scevgep852.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.22, i64 480, i1 false)
  %scevgep851.23 = getelementptr i8, i8* %malloccall276, i64 11040
  %scevgep852.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.23, i64 480, i1 false)
  %scevgep851.24 = getelementptr i8, i8* %malloccall276, i64 11520
  %scevgep852.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.24, i64 480, i1 false)
  %scevgep851.25 = getelementptr i8, i8* %malloccall276, i64 12000
  %scevgep852.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.25, i64 480, i1 false)
  %scevgep851.26 = getelementptr i8, i8* %malloccall276, i64 12480
  %scevgep852.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.26, i64 480, i1 false)
  %scevgep851.27 = getelementptr i8, i8* %malloccall276, i64 12960
  %scevgep852.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.27, i64 480, i1 false)
  %scevgep851.28 = getelementptr i8, i8* %malloccall276, i64 13440
  %scevgep852.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.28, i64 480, i1 false)
  %scevgep851.29 = getelementptr i8, i8* %malloccall276, i64 13920
  %scevgep852.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.29, i64 480, i1 false)
  %scevgep851.30 = getelementptr i8, i8* %malloccall276, i64 14400
  %scevgep852.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.30, i64 480, i1 false)
  %scevgep851.31 = getelementptr i8, i8* %malloccall276, i64 14880
  %scevgep852.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.31, i64 480, i1 false)
  %scevgep851.32 = getelementptr i8, i8* %malloccall276, i64 15360
  %scevgep852.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.32, i64 480, i1 false)
  %scevgep851.33 = getelementptr i8, i8* %malloccall276, i64 15840
  %scevgep852.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.33, i64 480, i1 false)
  %scevgep851.34 = getelementptr i8, i8* %malloccall276, i64 16320
  %scevgep852.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.34, i64 480, i1 false)
  %scevgep851.35 = getelementptr i8, i8* %malloccall276, i64 16800
  %scevgep852.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.35, i64 480, i1 false)
  %scevgep851.36 = getelementptr i8, i8* %malloccall276, i64 17280
  %scevgep852.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.36, i64 480, i1 false)
  %scevgep851.37 = getelementptr i8, i8* %malloccall276, i64 17760
  %scevgep852.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.37, i64 480, i1 false)
  %scevgep851.38 = getelementptr i8, i8* %malloccall276, i64 18240
  %scevgep852.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.38, i64 480, i1 false)
  %scevgep851.39 = getelementptr i8, i8* %malloccall276, i64 18720
  %scevgep852.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.39, i64 480, i1 false)
  %scevgep851.40 = getelementptr i8, i8* %malloccall276, i64 19200
  %scevgep852.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.40, i64 480, i1 false)
  %scevgep851.41 = getelementptr i8, i8* %malloccall276, i64 19680
  %scevgep852.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.41, i64 480, i1 false)
  %scevgep851.42 = getelementptr i8, i8* %malloccall276, i64 20160
  %scevgep852.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.42, i64 480, i1 false)
  %scevgep851.43 = getelementptr i8, i8* %malloccall276, i64 20640
  %scevgep852.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.43, i64 480, i1 false)
  %scevgep851.44 = getelementptr i8, i8* %malloccall276, i64 21120
  %scevgep852.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.44, i64 480, i1 false)
  %scevgep851.45 = getelementptr i8, i8* %malloccall276, i64 21600
  %scevgep852.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.45, i64 480, i1 false)
  %scevgep851.46 = getelementptr i8, i8* %malloccall276, i64 22080
  %scevgep852.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.46, i64 480, i1 false)
  %scevgep851.47 = getelementptr i8, i8* %malloccall276, i64 22560
  %scevgep852.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.47, i64 480, i1 false)
  %scevgep851.48 = getelementptr i8, i8* %malloccall276, i64 23040
  %scevgep852.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.48, i64 480, i1 false)
  %scevgep851.49 = getelementptr i8, i8* %malloccall276, i64 23520
  %scevgep852.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.49, i64 480, i1 false)
  %scevgep851.50 = getelementptr i8, i8* %malloccall276, i64 24000
  %scevgep852.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.50, i64 480, i1 false)
  %scevgep851.51 = getelementptr i8, i8* %malloccall276, i64 24480
  %scevgep852.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.51, i64 480, i1 false)
  %scevgep851.52 = getelementptr i8, i8* %malloccall276, i64 24960
  %scevgep852.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.52, i64 480, i1 false)
  %scevgep851.53 = getelementptr i8, i8* %malloccall276, i64 25440
  %scevgep852.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.53, i64 480, i1 false)
  %scevgep851.54 = getelementptr i8, i8* %malloccall276, i64 25920
  %scevgep852.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.54, i64 480, i1 false)
  %scevgep851.55 = getelementptr i8, i8* %malloccall276, i64 26400
  %scevgep852.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.55, i64 480, i1 false)
  %scevgep851.56 = getelementptr i8, i8* %malloccall276, i64 26880
  %scevgep852.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.56, i64 480, i1 false)
  %scevgep851.57 = getelementptr i8, i8* %malloccall276, i64 27360
  %scevgep852.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.57, i64 480, i1 false)
  %scevgep851.58 = getelementptr i8, i8* %malloccall276, i64 27840
  %scevgep852.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.58, i64 480, i1 false)
  %scevgep851.59 = getelementptr i8, i8* %malloccall276, i64 28320
  %scevgep852.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.59, i64 480, i1 false)
  %scevgep851.60 = getelementptr i8, i8* %malloccall276, i64 28800
  %scevgep852.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.60, i64 480, i1 false)
  %scevgep851.61 = getelementptr i8, i8* %malloccall276, i64 29280
  %scevgep852.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.61, i64 480, i1 false)
  %scevgep851.62 = getelementptr i8, i8* %malloccall276, i64 29760
  %scevgep852.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.62, i64 480, i1 false)
  %scevgep851.63 = getelementptr i8, i8* %malloccall276, i64 30240
  %scevgep852.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.63, i64 480, i1 false)
  %scevgep851.64 = getelementptr i8, i8* %malloccall276, i64 30720
  %scevgep852.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.64, i64 480, i1 false)
  %scevgep851.65 = getelementptr i8, i8* %malloccall276, i64 31200
  %scevgep852.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.65, i64 480, i1 false)
  %scevgep851.66 = getelementptr i8, i8* %malloccall276, i64 31680
  %scevgep852.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.66, i64 480, i1 false)
  %scevgep851.67 = getelementptr i8, i8* %malloccall276, i64 32160
  %scevgep852.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.67, i64 480, i1 false)
  %scevgep851.68 = getelementptr i8, i8* %malloccall276, i64 32640
  %scevgep852.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.68, i64 480, i1 false)
  %scevgep851.69 = getelementptr i8, i8* %malloccall276, i64 33120
  %scevgep852.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.69, i64 480, i1 false)
  %scevgep851.70 = getelementptr i8, i8* %malloccall276, i64 33600
  %scevgep852.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.70, i64 480, i1 false)
  %scevgep851.71 = getelementptr i8, i8* %malloccall276, i64 34080
  %scevgep852.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.71, i64 480, i1 false)
  %scevgep851.72 = getelementptr i8, i8* %malloccall276, i64 34560
  %scevgep852.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.72, i64 480, i1 false)
  %scevgep851.73 = getelementptr i8, i8* %malloccall276, i64 35040
  %scevgep852.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.73, i64 480, i1 false)
  %scevgep851.74 = getelementptr i8, i8* %malloccall276, i64 35520
  %scevgep852.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.74, i64 480, i1 false)
  %scevgep851.75 = getelementptr i8, i8* %malloccall276, i64 36000
  %scevgep852.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.75, i64 480, i1 false)
  %scevgep851.76 = getelementptr i8, i8* %malloccall276, i64 36480
  %scevgep852.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.76, i64 480, i1 false)
  %scevgep851.77 = getelementptr i8, i8* %malloccall276, i64 36960
  %scevgep852.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.77, i64 480, i1 false)
  %scevgep851.78 = getelementptr i8, i8* %malloccall276, i64 37440
  %scevgep852.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.78, i64 480, i1 false)
  %scevgep851.79 = getelementptr i8, i8* %malloccall276, i64 37920
  %scevgep852.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.79, i64 480, i1 false)
  br label %polly.loop_header392

polly.loop_header366:                             ; preds = %polly.loop_header366.preheader, %polly.loop_header366
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_header366 ], [ %polly.indvar369.ph, %polly.loop_header366.preheader ]
  %108 = shl nuw nsw i64 %polly.indvar369, 3
  %scevgep373 = getelementptr i8, i8* %scevgep372, i64 %108
  %scevgep373374 = bitcast i8* %scevgep373 to double*
  %_p_scalar_375 = load double, double* %scevgep373374, align 8, !alias.scope !75, !noalias !77
  %p_mul.i57 = fmul fast double %_p_scalar_375, 1.200000e+00
  store double %p_mul.i57, double* %scevgep373374, align 8, !alias.scope !75, !noalias !77
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next370, %polly.indvar363
  br i1 %exitcond854.not, label %polly.loop_exit368, label %polly.loop_header366, !llvm.loop !83

polly.loop_header392:                             ; preds = %polly.loop_header376.preheader, %polly.loop_exit416
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit416 ], [ 1, %polly.loop_header376.preheader ]
  %polly.indvar395 = phi i64 [ %polly.indvar_next396, %polly.loop_exit416 ], [ 0, %polly.loop_header376.preheader ]
  br label %polly.loop_header398

polly.loop_exit416:                               ; preds = %polly.loop_exit422
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next396, 80
  br i1 %exitcond849.not, label %polly.exiting273, label %polly.loop_header392

polly.loop_header398:                             ; preds = %polly.loop_header398, %polly.loop_header392
  %polly.indvar401 = phi i64 [ 0, %polly.loop_header392 ], [ %polly.indvar_next402, %polly.loop_header398 ]
  %109 = mul nuw nsw i64 %polly.indvar401, 480
  %scevgep842 = getelementptr i8, i8* %malloccall274, i64 %109
  %scevgep843 = getelementptr i8, i8* %call1, i64 %109
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep842, i8* noundef nonnull align 8 dereferenceable(480) %scevgep843, i64 480, i1 false)
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next402, %indvars.iv844
  br i1 %exitcond846.not, label %polly.loop_preheader415, label %polly.loop_header398

polly.loop_header414:                             ; preds = %polly.loop_exit422, %polly.loop_preheader415
  %polly.indvar417 = phi i64 [ 0, %polly.loop_preheader415 ], [ %polly.indvar_next418, %polly.loop_exit422 ]
  %polly.access.add.Packed_MemRef_call2277431 = add nuw nsw i64 %polly.indvar417, %polly.access.mul.Packed_MemRef_call2277430
  %polly.access.Packed_MemRef_call2277432 = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call2277431
  %_p_scalar_433 = load double, double* %polly.access.Packed_MemRef_call2277432, align 8
  %polly.access.Packed_MemRef_call1275440 = getelementptr double, double* %Packed_MemRef_call1275, i64 %polly.access.add.Packed_MemRef_call2277431
  %_p_scalar_441 = load double, double* %polly.access.Packed_MemRef_call1275440, align 8
  br label %polly.loop_header420

polly.loop_exit422:                               ; preds = %polly.loop_header420
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next418, 60
  br i1 %exitcond848.not, label %polly.loop_exit416, label %polly.loop_header414

polly.loop_preheader415:                          ; preds = %polly.loop_header398
  %110 = mul nuw nsw i64 %polly.indvar395, 640
  %scevgep442 = getelementptr i8, i8* %call, i64 %110
  %polly.access.mul.Packed_MemRef_call2277430 = mul nuw nsw i64 %polly.indvar395, 60
  br label %polly.loop_header414

polly.loop_header420:                             ; preds = %polly.loop_header420, %polly.loop_header414
  %polly.indvar423 = phi i64 [ 0, %polly.loop_header414 ], [ %polly.indvar_next424, %polly.loop_header420 ]
  %polly.access.mul.Packed_MemRef_call1275426 = mul nuw nsw i64 %polly.indvar423, 60
  %polly.access.add.Packed_MemRef_call1275427 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1275426, %polly.indvar417
  %polly.access.Packed_MemRef_call1275428 = getelementptr double, double* %Packed_MemRef_call1275, i64 %polly.access.add.Packed_MemRef_call1275427
  %_p_scalar_429 = load double, double* %polly.access.Packed_MemRef_call1275428, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_433, %_p_scalar_429
  %polly.access.Packed_MemRef_call2277436 = getelementptr double, double* %Packed_MemRef_call2277, i64 %polly.access.add.Packed_MemRef_call1275427
  %_p_scalar_437 = load double, double* %polly.access.Packed_MemRef_call2277436, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_441, %_p_scalar_437
  %111 = shl nuw nsw i64 %polly.indvar423, 3
  %scevgep443 = getelementptr i8, i8* %scevgep442, i64 %111
  %scevgep443444 = bitcast i8* %scevgep443 to double*
  %_p_scalar_445 = load double, double* %scevgep443444, align 8, !alias.scope !75, !noalias !77
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_445
  store double %p_add42.i79, double* %scevgep443444, align 8, !alias.scope !75, !noalias !77
  %polly.indvar_next424 = add nuw nsw i64 %polly.indvar423, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next424, %indvars.iv844
  br i1 %exitcond847.not, label %polly.loop_exit422, label %polly.loop_header420

polly.start448:                                   ; preds = %init_array.exit
  %malloccall450 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall452 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header536

polly.exiting449:                                 ; preds = %polly.loop_exit592
  tail call void @free(i8* nonnull %malloccall450)
  tail call void @free(i8* nonnull %malloccall452)
  br label %kernel_syr2k.exit

polly.loop_header536:                             ; preds = %polly.loop_exit544, %polly.start448
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit544 ], [ 0, %polly.start448 ]
  %polly.indvar539 = phi i64 [ %polly.indvar_next540, %polly.loop_exit544 ], [ 1, %polly.start448 ]
  %112 = add i64 %indvar, 1
  %113 = mul nuw nsw i64 %polly.indvar539, 640
  %scevgep548 = getelementptr i8, i8* %call, i64 %113
  %min.iters.check1248 = icmp ult i64 %112, 4
  br i1 %min.iters.check1248, label %polly.loop_header542.preheader, label %vector.ph1249

vector.ph1249:                                    ; preds = %polly.loop_header536
  %n.vec1251 = and i64 %112, -4
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %vector.ph1249
  %index1252 = phi i64 [ 0, %vector.ph1249 ], [ %index.next1253, %vector.body1247 ]
  %114 = shl nuw nsw i64 %index1252, 3
  %115 = getelementptr i8, i8* %scevgep548, i64 %114
  %116 = bitcast i8* %115 to <4 x double>*
  %wide.load1256 = load <4 x double>, <4 x double>* %116, align 8, !alias.scope !84, !noalias !86
  %117 = fmul fast <4 x double> %wide.load1256, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %118 = bitcast i8* %115 to <4 x double>*
  store <4 x double> %117, <4 x double>* %118, align 8, !alias.scope !84, !noalias !86
  %index.next1253 = add i64 %index1252, 4
  %119 = icmp eq i64 %index.next1253, %n.vec1251
  br i1 %119, label %middle.block1245, label %vector.body1247, !llvm.loop !91

middle.block1245:                                 ; preds = %vector.body1247
  %cmp.n1255 = icmp eq i64 %112, %n.vec1251
  br i1 %cmp.n1255, label %polly.loop_exit544, label %polly.loop_header542.preheader

polly.loop_header542.preheader:                   ; preds = %polly.loop_header536, %middle.block1245
  %polly.indvar545.ph = phi i64 [ 0, %polly.loop_header536 ], [ %n.vec1251, %middle.block1245 ]
  br label %polly.loop_header542

polly.loop_exit544:                               ; preds = %polly.loop_header542, %middle.block1245
  %polly.indvar_next540 = add nuw nsw i64 %polly.indvar539, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next540, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond870.not, label %polly.loop_header552.preheader, label %polly.loop_header536

polly.loop_header552.preheader:                   ; preds = %polly.loop_exit544
  %Packed_MemRef_call1451 = bitcast i8* %malloccall450 to double*
  %Packed_MemRef_call2453 = bitcast i8* %malloccall452 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall452, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep866.1 = getelementptr i8, i8* %malloccall452, i64 480
  %scevgep867.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.1, i64 480, i1 false)
  %scevgep866.2 = getelementptr i8, i8* %malloccall452, i64 960
  %scevgep867.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.2, i64 480, i1 false)
  %scevgep866.3 = getelementptr i8, i8* %malloccall452, i64 1440
  %scevgep867.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.3, i64 480, i1 false)
  %scevgep866.4 = getelementptr i8, i8* %malloccall452, i64 1920
  %scevgep867.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.4, i64 480, i1 false)
  %scevgep866.5 = getelementptr i8, i8* %malloccall452, i64 2400
  %scevgep867.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.5, i64 480, i1 false)
  %scevgep866.6 = getelementptr i8, i8* %malloccall452, i64 2880
  %scevgep867.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.6, i64 480, i1 false)
  %scevgep866.7 = getelementptr i8, i8* %malloccall452, i64 3360
  %scevgep867.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.7, i64 480, i1 false)
  %scevgep866.8 = getelementptr i8, i8* %malloccall452, i64 3840
  %scevgep867.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.8, i64 480, i1 false)
  %scevgep866.9 = getelementptr i8, i8* %malloccall452, i64 4320
  %scevgep867.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.9, i64 480, i1 false)
  %scevgep866.10 = getelementptr i8, i8* %malloccall452, i64 4800
  %scevgep867.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.10, i64 480, i1 false)
  %scevgep866.11 = getelementptr i8, i8* %malloccall452, i64 5280
  %scevgep867.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.11, i64 480, i1 false)
  %scevgep866.12 = getelementptr i8, i8* %malloccall452, i64 5760
  %scevgep867.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.12, i64 480, i1 false)
  %scevgep866.13 = getelementptr i8, i8* %malloccall452, i64 6240
  %scevgep867.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.13, i64 480, i1 false)
  %scevgep866.14 = getelementptr i8, i8* %malloccall452, i64 6720
  %scevgep867.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.14, i64 480, i1 false)
  %scevgep866.15 = getelementptr i8, i8* %malloccall452, i64 7200
  %scevgep867.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.15, i64 480, i1 false)
  %scevgep866.16 = getelementptr i8, i8* %malloccall452, i64 7680
  %scevgep867.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.16, i64 480, i1 false)
  %scevgep866.17 = getelementptr i8, i8* %malloccall452, i64 8160
  %scevgep867.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.17, i64 480, i1 false)
  %scevgep866.18 = getelementptr i8, i8* %malloccall452, i64 8640
  %scevgep867.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.18, i64 480, i1 false)
  %scevgep866.19 = getelementptr i8, i8* %malloccall452, i64 9120
  %scevgep867.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.19, i64 480, i1 false)
  %scevgep866.20 = getelementptr i8, i8* %malloccall452, i64 9600
  %scevgep867.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.20, i64 480, i1 false)
  %scevgep866.21 = getelementptr i8, i8* %malloccall452, i64 10080
  %scevgep867.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.21, i64 480, i1 false)
  %scevgep866.22 = getelementptr i8, i8* %malloccall452, i64 10560
  %scevgep867.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.22, i64 480, i1 false)
  %scevgep866.23 = getelementptr i8, i8* %malloccall452, i64 11040
  %scevgep867.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.23, i64 480, i1 false)
  %scevgep866.24 = getelementptr i8, i8* %malloccall452, i64 11520
  %scevgep867.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.24, i64 480, i1 false)
  %scevgep866.25 = getelementptr i8, i8* %malloccall452, i64 12000
  %scevgep867.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.25, i64 480, i1 false)
  %scevgep866.26 = getelementptr i8, i8* %malloccall452, i64 12480
  %scevgep867.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.26, i64 480, i1 false)
  %scevgep866.27 = getelementptr i8, i8* %malloccall452, i64 12960
  %scevgep867.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.27, i64 480, i1 false)
  %scevgep866.28 = getelementptr i8, i8* %malloccall452, i64 13440
  %scevgep867.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.28, i64 480, i1 false)
  %scevgep866.29 = getelementptr i8, i8* %malloccall452, i64 13920
  %scevgep867.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.29, i64 480, i1 false)
  %scevgep866.30 = getelementptr i8, i8* %malloccall452, i64 14400
  %scevgep867.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.30, i64 480, i1 false)
  %scevgep866.31 = getelementptr i8, i8* %malloccall452, i64 14880
  %scevgep867.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.31, i64 480, i1 false)
  %scevgep866.32 = getelementptr i8, i8* %malloccall452, i64 15360
  %scevgep867.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.32, i64 480, i1 false)
  %scevgep866.33 = getelementptr i8, i8* %malloccall452, i64 15840
  %scevgep867.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.33, i64 480, i1 false)
  %scevgep866.34 = getelementptr i8, i8* %malloccall452, i64 16320
  %scevgep867.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.34, i64 480, i1 false)
  %scevgep866.35 = getelementptr i8, i8* %malloccall452, i64 16800
  %scevgep867.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.35, i64 480, i1 false)
  %scevgep866.36 = getelementptr i8, i8* %malloccall452, i64 17280
  %scevgep867.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.36, i64 480, i1 false)
  %scevgep866.37 = getelementptr i8, i8* %malloccall452, i64 17760
  %scevgep867.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.37, i64 480, i1 false)
  %scevgep866.38 = getelementptr i8, i8* %malloccall452, i64 18240
  %scevgep867.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.38, i64 480, i1 false)
  %scevgep866.39 = getelementptr i8, i8* %malloccall452, i64 18720
  %scevgep867.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.39, i64 480, i1 false)
  %scevgep866.40 = getelementptr i8, i8* %malloccall452, i64 19200
  %scevgep867.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.40, i64 480, i1 false)
  %scevgep866.41 = getelementptr i8, i8* %malloccall452, i64 19680
  %scevgep867.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.41, i64 480, i1 false)
  %scevgep866.42 = getelementptr i8, i8* %malloccall452, i64 20160
  %scevgep867.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.42, i64 480, i1 false)
  %scevgep866.43 = getelementptr i8, i8* %malloccall452, i64 20640
  %scevgep867.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.43, i64 480, i1 false)
  %scevgep866.44 = getelementptr i8, i8* %malloccall452, i64 21120
  %scevgep867.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.44, i64 480, i1 false)
  %scevgep866.45 = getelementptr i8, i8* %malloccall452, i64 21600
  %scevgep867.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.45, i64 480, i1 false)
  %scevgep866.46 = getelementptr i8, i8* %malloccall452, i64 22080
  %scevgep867.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.46, i64 480, i1 false)
  %scevgep866.47 = getelementptr i8, i8* %malloccall452, i64 22560
  %scevgep867.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.47, i64 480, i1 false)
  %scevgep866.48 = getelementptr i8, i8* %malloccall452, i64 23040
  %scevgep867.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.48, i64 480, i1 false)
  %scevgep866.49 = getelementptr i8, i8* %malloccall452, i64 23520
  %scevgep867.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.49, i64 480, i1 false)
  %scevgep866.50 = getelementptr i8, i8* %malloccall452, i64 24000
  %scevgep867.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.50, i64 480, i1 false)
  %scevgep866.51 = getelementptr i8, i8* %malloccall452, i64 24480
  %scevgep867.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.51, i64 480, i1 false)
  %scevgep866.52 = getelementptr i8, i8* %malloccall452, i64 24960
  %scevgep867.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.52, i64 480, i1 false)
  %scevgep866.53 = getelementptr i8, i8* %malloccall452, i64 25440
  %scevgep867.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.53, i64 480, i1 false)
  %scevgep866.54 = getelementptr i8, i8* %malloccall452, i64 25920
  %scevgep867.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.54, i64 480, i1 false)
  %scevgep866.55 = getelementptr i8, i8* %malloccall452, i64 26400
  %scevgep867.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.55, i64 480, i1 false)
  %scevgep866.56 = getelementptr i8, i8* %malloccall452, i64 26880
  %scevgep867.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.56, i64 480, i1 false)
  %scevgep866.57 = getelementptr i8, i8* %malloccall452, i64 27360
  %scevgep867.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.57, i64 480, i1 false)
  %scevgep866.58 = getelementptr i8, i8* %malloccall452, i64 27840
  %scevgep867.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.58, i64 480, i1 false)
  %scevgep866.59 = getelementptr i8, i8* %malloccall452, i64 28320
  %scevgep867.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.59, i64 480, i1 false)
  %scevgep866.60 = getelementptr i8, i8* %malloccall452, i64 28800
  %scevgep867.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.60, i64 480, i1 false)
  %scevgep866.61 = getelementptr i8, i8* %malloccall452, i64 29280
  %scevgep867.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.61, i64 480, i1 false)
  %scevgep866.62 = getelementptr i8, i8* %malloccall452, i64 29760
  %scevgep867.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.62, i64 480, i1 false)
  %scevgep866.63 = getelementptr i8, i8* %malloccall452, i64 30240
  %scevgep867.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.63, i64 480, i1 false)
  %scevgep866.64 = getelementptr i8, i8* %malloccall452, i64 30720
  %scevgep867.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.64, i64 480, i1 false)
  %scevgep866.65 = getelementptr i8, i8* %malloccall452, i64 31200
  %scevgep867.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.65, i64 480, i1 false)
  %scevgep866.66 = getelementptr i8, i8* %malloccall452, i64 31680
  %scevgep867.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.66, i64 480, i1 false)
  %scevgep866.67 = getelementptr i8, i8* %malloccall452, i64 32160
  %scevgep867.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.67, i64 480, i1 false)
  %scevgep866.68 = getelementptr i8, i8* %malloccall452, i64 32640
  %scevgep867.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.68, i64 480, i1 false)
  %scevgep866.69 = getelementptr i8, i8* %malloccall452, i64 33120
  %scevgep867.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.69, i64 480, i1 false)
  %scevgep866.70 = getelementptr i8, i8* %malloccall452, i64 33600
  %scevgep867.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.70, i64 480, i1 false)
  %scevgep866.71 = getelementptr i8, i8* %malloccall452, i64 34080
  %scevgep867.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.71, i64 480, i1 false)
  %scevgep866.72 = getelementptr i8, i8* %malloccall452, i64 34560
  %scevgep867.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.72, i64 480, i1 false)
  %scevgep866.73 = getelementptr i8, i8* %malloccall452, i64 35040
  %scevgep867.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.73, i64 480, i1 false)
  %scevgep866.74 = getelementptr i8, i8* %malloccall452, i64 35520
  %scevgep867.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.74, i64 480, i1 false)
  %scevgep866.75 = getelementptr i8, i8* %malloccall452, i64 36000
  %scevgep867.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.75, i64 480, i1 false)
  %scevgep866.76 = getelementptr i8, i8* %malloccall452, i64 36480
  %scevgep867.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.76, i64 480, i1 false)
  %scevgep866.77 = getelementptr i8, i8* %malloccall452, i64 36960
  %scevgep867.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.77, i64 480, i1 false)
  %scevgep866.78 = getelementptr i8, i8* %malloccall452, i64 37440
  %scevgep867.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.78, i64 480, i1 false)
  %scevgep866.79 = getelementptr i8, i8* %malloccall452, i64 37920
  %scevgep867.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.79, i64 480, i1 false)
  br label %polly.loop_header568

polly.loop_header542:                             ; preds = %polly.loop_header542.preheader, %polly.loop_header542
  %polly.indvar545 = phi i64 [ %polly.indvar_next546, %polly.loop_header542 ], [ %polly.indvar545.ph, %polly.loop_header542.preheader ]
  %120 = shl nuw nsw i64 %polly.indvar545, 3
  %scevgep549 = getelementptr i8, i8* %scevgep548, i64 %120
  %scevgep549550 = bitcast i8* %scevgep549 to double*
  %_p_scalar_551 = load double, double* %scevgep549550, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_551, 1.200000e+00
  store double %p_mul.i, double* %scevgep549550, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next546 = add nuw nsw i64 %polly.indvar545, 1
  %exitcond869.not = icmp eq i64 %polly.indvar_next546, %polly.indvar539
  br i1 %exitcond869.not, label %polly.loop_exit544, label %polly.loop_header542, !llvm.loop !92

polly.loop_header568:                             ; preds = %polly.loop_header552.preheader, %polly.loop_exit592
  %indvars.iv859 = phi i64 [ %indvars.iv.next860, %polly.loop_exit592 ], [ 1, %polly.loop_header552.preheader ]
  %polly.indvar571 = phi i64 [ %polly.indvar_next572, %polly.loop_exit592 ], [ 0, %polly.loop_header552.preheader ]
  br label %polly.loop_header574

polly.loop_exit592:                               ; preds = %polly.loop_exit598
  %polly.indvar_next572 = add nuw nsw i64 %polly.indvar571, 1
  %indvars.iv.next860 = add nuw nsw i64 %indvars.iv859, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next572, 80
  br i1 %exitcond864.not, label %polly.exiting449, label %polly.loop_header568

polly.loop_header574:                             ; preds = %polly.loop_header574, %polly.loop_header568
  %polly.indvar577 = phi i64 [ 0, %polly.loop_header568 ], [ %polly.indvar_next578, %polly.loop_header574 ]
  %121 = mul nuw nsw i64 %polly.indvar577, 480
  %scevgep857 = getelementptr i8, i8* %malloccall450, i64 %121
  %scevgep858 = getelementptr i8, i8* %call1, i64 %121
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep857, i8* noundef nonnull align 8 dereferenceable(480) %scevgep858, i64 480, i1 false)
  %polly.indvar_next578 = add nuw nsw i64 %polly.indvar577, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next578, %indvars.iv859
  br i1 %exitcond861.not, label %polly.loop_preheader591, label %polly.loop_header574

polly.loop_header590:                             ; preds = %polly.loop_exit598, %polly.loop_preheader591
  %polly.indvar593 = phi i64 [ 0, %polly.loop_preheader591 ], [ %polly.indvar_next594, %polly.loop_exit598 ]
  %polly.access.add.Packed_MemRef_call2453607 = add nuw nsw i64 %polly.indvar593, %polly.access.mul.Packed_MemRef_call2453606
  %polly.access.Packed_MemRef_call2453608 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453607
  %_p_scalar_609 = load double, double* %polly.access.Packed_MemRef_call2453608, align 8
  %polly.access.Packed_MemRef_call1451616 = getelementptr double, double* %Packed_MemRef_call1451, i64 %polly.access.add.Packed_MemRef_call2453607
  %_p_scalar_617 = load double, double* %polly.access.Packed_MemRef_call1451616, align 8
  br label %polly.loop_header596

polly.loop_exit598:                               ; preds = %polly.loop_header596
  %polly.indvar_next594 = add nuw nsw i64 %polly.indvar593, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next594, 60
  br i1 %exitcond863.not, label %polly.loop_exit592, label %polly.loop_header590

polly.loop_preheader591:                          ; preds = %polly.loop_header574
  %122 = mul nuw nsw i64 %polly.indvar571, 640
  %scevgep618 = getelementptr i8, i8* %call, i64 %122
  %polly.access.mul.Packed_MemRef_call2453606 = mul nuw nsw i64 %polly.indvar571, 60
  br label %polly.loop_header590

polly.loop_header596:                             ; preds = %polly.loop_header596, %polly.loop_header590
  %polly.indvar599 = phi i64 [ 0, %polly.loop_header590 ], [ %polly.indvar_next600, %polly.loop_header596 ]
  %polly.access.mul.Packed_MemRef_call1451602 = mul nuw nsw i64 %polly.indvar599, 60
  %polly.access.add.Packed_MemRef_call1451603 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1451602, %polly.indvar593
  %polly.access.Packed_MemRef_call1451604 = getelementptr double, double* %Packed_MemRef_call1451, i64 %polly.access.add.Packed_MemRef_call1451603
  %_p_scalar_605 = load double, double* %polly.access.Packed_MemRef_call1451604, align 8
  %p_mul27.i = fmul fast double %_p_scalar_609, %_p_scalar_605
  %polly.access.Packed_MemRef_call2453612 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call1451603
  %_p_scalar_613 = load double, double* %polly.access.Packed_MemRef_call2453612, align 8
  %p_mul37.i = fmul fast double %_p_scalar_617, %_p_scalar_613
  %123 = shl nuw nsw i64 %polly.indvar599, 3
  %scevgep619 = getelementptr i8, i8* %scevgep618, i64 %123
  %scevgep619620 = bitcast i8* %scevgep619 to double*
  %_p_scalar_621 = load double, double* %scevgep619620, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_621
  store double %p_add42.i, double* %scevgep619620, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next600 = add nuw nsw i64 %polly.indvar599, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next600, %indvars.iv859
  br i1 %exitcond862.not, label %polly.loop_exit598, label %polly.loop_header596

polly.loop_header760:                             ; preds = %entry, %polly.loop_exit768
  %polly.indvar763 = phi i64 [ %polly.indvar_next764, %polly.loop_exit768 ], [ 0, %entry ]
  %124 = mul nuw nsw i64 %polly.indvar763, 640
  %125 = trunc i64 %polly.indvar763 to i32
  %broadcast.splatinsert979 = insertelement <4 x i32> poison, i32 %125, i32 0
  %broadcast.splat980 = shufflevector <4 x i32> %broadcast.splatinsert979, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %polly.loop_header760
  %index971 = phi i64 [ 0, %polly.loop_header760 ], [ %index.next972, %vector.body969 ]
  %vec.ind977 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header760 ], [ %vec.ind.next978, %vector.body969 ]
  %126 = mul <4 x i32> %vec.ind977, %broadcast.splat980
  %127 = add <4 x i32> %126, <i32 3, i32 3, i32 3, i32 3>
  %128 = urem <4 x i32> %127, <i32 80, i32 80, i32 80, i32 80>
  %129 = sitofp <4 x i32> %128 to <4 x double>
  %130 = fmul fast <4 x double> %129, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %131 = shl i64 %index971, 3
  %132 = add nuw nsw i64 %131, %124
  %133 = getelementptr i8, i8* %call, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %130, <4 x double>* %134, align 8, !alias.scope !93, !noalias !95
  %index.next972 = add i64 %index971, 4
  %vec.ind.next978 = add <4 x i32> %vec.ind977, <i32 4, i32 4, i32 4, i32 4>
  %135 = icmp eq i64 %index.next972, 32
  br i1 %135, label %polly.loop_exit768, label %vector.body969, !llvm.loop !98

polly.loop_exit768:                               ; preds = %vector.body969
  %polly.indvar_next764 = add nuw nsw i64 %polly.indvar763, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next764, 32
  br i1 %exitcond889.not, label %polly.loop_header760.1, label %polly.loop_header760

polly.loop_header787:                             ; preds = %polly.loop_exit768.2.2, %polly.loop_exit795
  %polly.indvar790 = phi i64 [ %polly.indvar_next791, %polly.loop_exit795 ], [ 0, %polly.loop_exit768.2.2 ]
  %136 = mul nuw nsw i64 %polly.indvar790, 480
  %137 = trunc i64 %polly.indvar790 to i32
  %broadcast.splatinsert1093 = insertelement <4 x i32> poison, i32 %137, i32 0
  %broadcast.splat1094 = shufflevector <4 x i32> %broadcast.splatinsert1093, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %polly.loop_header787
  %index1085 = phi i64 [ 0, %polly.loop_header787 ], [ %index.next1086, %vector.body1083 ]
  %vec.ind1091 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787 ], [ %vec.ind.next1092, %vector.body1083 ]
  %138 = mul <4 x i32> %vec.ind1091, %broadcast.splat1094
  %139 = add <4 x i32> %138, <i32 2, i32 2, i32 2, i32 2>
  %140 = urem <4 x i32> %139, <i32 60, i32 60, i32 60, i32 60>
  %141 = sitofp <4 x i32> %140 to <4 x double>
  %142 = fmul fast <4 x double> %141, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %143 = shl i64 %index1085, 3
  %144 = add i64 %143, %136
  %145 = getelementptr i8, i8* %call2, i64 %144
  %146 = bitcast i8* %145 to <4 x double>*
  store <4 x double> %142, <4 x double>* %146, align 8, !alias.scope !97, !noalias !99
  %index.next1086 = add i64 %index1085, 4
  %vec.ind.next1092 = add <4 x i32> %vec.ind1091, <i32 4, i32 4, i32 4, i32 4>
  %147 = icmp eq i64 %index.next1086, 32
  br i1 %147, label %polly.loop_exit795, label %vector.body1083, !llvm.loop !100

polly.loop_exit795:                               ; preds = %vector.body1083
  %polly.indvar_next791 = add nuw nsw i64 %polly.indvar790, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next791, 32
  br i1 %exitcond880.not, label %polly.loop_header787.1, label %polly.loop_header787

polly.loop_header813:                             ; preds = %polly.loop_exit795.1.2, %polly.loop_exit821
  %polly.indvar816 = phi i64 [ %polly.indvar_next817, %polly.loop_exit821 ], [ 0, %polly.loop_exit795.1.2 ]
  %148 = mul nuw nsw i64 %polly.indvar816, 480
  %149 = trunc i64 %polly.indvar816 to i32
  %broadcast.splatinsert1171 = insertelement <4 x i32> poison, i32 %149, i32 0
  %broadcast.splat1172 = shufflevector <4 x i32> %broadcast.splatinsert1171, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %polly.loop_header813
  %index1163 = phi i64 [ 0, %polly.loop_header813 ], [ %index.next1164, %vector.body1161 ]
  %vec.ind1169 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header813 ], [ %vec.ind.next1170, %vector.body1161 ]
  %150 = mul <4 x i32> %vec.ind1169, %broadcast.splat1172
  %151 = add <4 x i32> %150, <i32 1, i32 1, i32 1, i32 1>
  %152 = urem <4 x i32> %151, <i32 80, i32 80, i32 80, i32 80>
  %153 = sitofp <4 x i32> %152 to <4 x double>
  %154 = fmul fast <4 x double> %153, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %155 = shl i64 %index1163, 3
  %156 = add i64 %155, %148
  %157 = getelementptr i8, i8* %call1, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %154, <4 x double>* %158, align 8, !alias.scope !96, !noalias !101
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1170 = add <4 x i32> %vec.ind1169, <i32 4, i32 4, i32 4, i32 4>
  %159 = icmp eq i64 %index.next1164, 32
  br i1 %159, label %polly.loop_exit821, label %vector.body1161, !llvm.loop !102

polly.loop_exit821:                               ; preds = %vector.body1161
  %polly.indvar_next817 = add nuw nsw i64 %polly.indvar816, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next817, 32
  br i1 %exitcond874.not, label %polly.loop_header813.1, label %polly.loop_header813

polly.loop_header813.1:                           ; preds = %polly.loop_exit821, %polly.loop_exit821.1
  %polly.indvar816.1 = phi i64 [ %polly.indvar_next817.1, %polly.loop_exit821.1 ], [ 0, %polly.loop_exit821 ]
  %160 = mul nuw nsw i64 %polly.indvar816.1, 480
  %161 = trunc i64 %polly.indvar816.1 to i32
  %broadcast.splatinsert1183 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat1184 = shufflevector <4 x i32> %broadcast.splatinsert1183, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %polly.loop_header813.1
  %index1177 = phi i64 [ 0, %polly.loop_header813.1 ], [ %index.next1178, %vector.body1175 ]
  %vec.ind1181 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header813.1 ], [ %vec.ind.next1182, %vector.body1175 ]
  %162 = add nuw nsw <4 x i64> %vec.ind1181, <i64 32, i64 32, i64 32, i64 32>
  %163 = trunc <4 x i64> %162 to <4 x i32>
  %164 = mul <4 x i32> %broadcast.splat1184, %163
  %165 = add <4 x i32> %164, <i32 1, i32 1, i32 1, i32 1>
  %166 = urem <4 x i32> %165, <i32 80, i32 80, i32 80, i32 80>
  %167 = sitofp <4 x i32> %166 to <4 x double>
  %168 = fmul fast <4 x double> %167, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %169 = extractelement <4 x i64> %162, i32 0
  %170 = shl i64 %169, 3
  %171 = add i64 %170, %160
  %172 = getelementptr i8, i8* %call1, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %168, <4 x double>* %173, align 8, !alias.scope !96, !noalias !101
  %index.next1178 = add i64 %index1177, 4
  %vec.ind.next1182 = add <4 x i64> %vec.ind1181, <i64 4, i64 4, i64 4, i64 4>
  %174 = icmp eq i64 %index.next1178, 28
  br i1 %174, label %polly.loop_exit821.1, label %vector.body1175, !llvm.loop !103

polly.loop_exit821.1:                             ; preds = %vector.body1175
  %polly.indvar_next817.1 = add nuw nsw i64 %polly.indvar816.1, 1
  %exitcond874.1.not = icmp eq i64 %polly.indvar_next817.1, 32
  br i1 %exitcond874.1.not, label %polly.loop_header813.1894, label %polly.loop_header813.1

polly.loop_header813.1894:                        ; preds = %polly.loop_exit821.1, %polly.loop_exit821.1905
  %polly.indvar816.1893 = phi i64 [ %polly.indvar_next817.1903, %polly.loop_exit821.1905 ], [ 0, %polly.loop_exit821.1 ]
  %175 = add nuw nsw i64 %polly.indvar816.1893, 32
  %176 = mul nuw nsw i64 %175, 480
  %177 = trunc i64 %175 to i32
  %broadcast.splatinsert1197 = insertelement <4 x i32> poison, i32 %177, i32 0
  %broadcast.splat1198 = shufflevector <4 x i32> %broadcast.splatinsert1197, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %polly.loop_header813.1894
  %index1189 = phi i64 [ 0, %polly.loop_header813.1894 ], [ %index.next1190, %vector.body1187 ]
  %vec.ind1195 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header813.1894 ], [ %vec.ind.next1196, %vector.body1187 ]
  %178 = mul <4 x i32> %vec.ind1195, %broadcast.splat1198
  %179 = add <4 x i32> %178, <i32 1, i32 1, i32 1, i32 1>
  %180 = urem <4 x i32> %179, <i32 80, i32 80, i32 80, i32 80>
  %181 = sitofp <4 x i32> %180 to <4 x double>
  %182 = fmul fast <4 x double> %181, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %183 = shl i64 %index1189, 3
  %184 = add i64 %183, %176
  %185 = getelementptr i8, i8* %call1, i64 %184
  %186 = bitcast i8* %185 to <4 x double>*
  store <4 x double> %182, <4 x double>* %186, align 8, !alias.scope !96, !noalias !101
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1196 = add <4 x i32> %vec.ind1195, <i32 4, i32 4, i32 4, i32 4>
  %187 = icmp eq i64 %index.next1190, 32
  br i1 %187, label %polly.loop_exit821.1905, label %vector.body1187, !llvm.loop !104

polly.loop_exit821.1905:                          ; preds = %vector.body1187
  %polly.indvar_next817.1903 = add nuw nsw i64 %polly.indvar816.1893, 1
  %exitcond874.1904.not = icmp eq i64 %polly.indvar_next817.1903, 32
  br i1 %exitcond874.1904.not, label %polly.loop_header813.1.1, label %polly.loop_header813.1894

polly.loop_header813.1.1:                         ; preds = %polly.loop_exit821.1905, %polly.loop_exit821.1.1
  %polly.indvar816.1.1 = phi i64 [ %polly.indvar_next817.1.1, %polly.loop_exit821.1.1 ], [ 0, %polly.loop_exit821.1905 ]
  %188 = add nuw nsw i64 %polly.indvar816.1.1, 32
  %189 = mul nuw nsw i64 %188, 480
  %190 = trunc i64 %188 to i32
  %broadcast.splatinsert1209 = insertelement <4 x i32> poison, i32 %190, i32 0
  %broadcast.splat1210 = shufflevector <4 x i32> %broadcast.splatinsert1209, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %polly.loop_header813.1.1
  %index1203 = phi i64 [ 0, %polly.loop_header813.1.1 ], [ %index.next1204, %vector.body1201 ]
  %vec.ind1207 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header813.1.1 ], [ %vec.ind.next1208, %vector.body1201 ]
  %191 = add nuw nsw <4 x i64> %vec.ind1207, <i64 32, i64 32, i64 32, i64 32>
  %192 = trunc <4 x i64> %191 to <4 x i32>
  %193 = mul <4 x i32> %broadcast.splat1210, %192
  %194 = add <4 x i32> %193, <i32 1, i32 1, i32 1, i32 1>
  %195 = urem <4 x i32> %194, <i32 80, i32 80, i32 80, i32 80>
  %196 = sitofp <4 x i32> %195 to <4 x double>
  %197 = fmul fast <4 x double> %196, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %198 = extractelement <4 x i64> %191, i32 0
  %199 = shl i64 %198, 3
  %200 = add i64 %199, %189
  %201 = getelementptr i8, i8* %call1, i64 %200
  %202 = bitcast i8* %201 to <4 x double>*
  store <4 x double> %197, <4 x double>* %202, align 8, !alias.scope !96, !noalias !101
  %index.next1204 = add i64 %index1203, 4
  %vec.ind.next1208 = add <4 x i64> %vec.ind1207, <i64 4, i64 4, i64 4, i64 4>
  %203 = icmp eq i64 %index.next1204, 28
  br i1 %203, label %polly.loop_exit821.1.1, label %vector.body1201, !llvm.loop !105

polly.loop_exit821.1.1:                           ; preds = %vector.body1201
  %polly.indvar_next817.1.1 = add nuw nsw i64 %polly.indvar816.1.1, 1
  %exitcond874.1.1.not = icmp eq i64 %polly.indvar_next817.1.1, 32
  br i1 %exitcond874.1.1.not, label %polly.loop_header813.2, label %polly.loop_header813.1.1

polly.loop_header813.2:                           ; preds = %polly.loop_exit821.1.1, %polly.loop_exit821.2
  %polly.indvar816.2 = phi i64 [ %polly.indvar_next817.2, %polly.loop_exit821.2 ], [ 0, %polly.loop_exit821.1.1 ]
  %204 = add nuw nsw i64 %polly.indvar816.2, 64
  %205 = mul nuw nsw i64 %204, 480
  %206 = trunc i64 %204 to i32
  %broadcast.splatinsert1223 = insertelement <4 x i32> poison, i32 %206, i32 0
  %broadcast.splat1224 = shufflevector <4 x i32> %broadcast.splatinsert1223, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %polly.loop_header813.2
  %index1215 = phi i64 [ 0, %polly.loop_header813.2 ], [ %index.next1216, %vector.body1213 ]
  %vec.ind1221 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header813.2 ], [ %vec.ind.next1222, %vector.body1213 ]
  %207 = mul <4 x i32> %vec.ind1221, %broadcast.splat1224
  %208 = add <4 x i32> %207, <i32 1, i32 1, i32 1, i32 1>
  %209 = urem <4 x i32> %208, <i32 80, i32 80, i32 80, i32 80>
  %210 = sitofp <4 x i32> %209 to <4 x double>
  %211 = fmul fast <4 x double> %210, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %212 = shl i64 %index1215, 3
  %213 = add i64 %212, %205
  %214 = getelementptr i8, i8* %call1, i64 %213
  %215 = bitcast i8* %214 to <4 x double>*
  store <4 x double> %211, <4 x double>* %215, align 8, !alias.scope !96, !noalias !101
  %index.next1216 = add i64 %index1215, 4
  %vec.ind.next1222 = add <4 x i32> %vec.ind1221, <i32 4, i32 4, i32 4, i32 4>
  %216 = icmp eq i64 %index.next1216, 32
  br i1 %216, label %polly.loop_exit821.2, label %vector.body1213, !llvm.loop !106

polly.loop_exit821.2:                             ; preds = %vector.body1213
  %polly.indvar_next817.2 = add nuw nsw i64 %polly.indvar816.2, 1
  %exitcond874.2.not = icmp eq i64 %polly.indvar_next817.2, 16
  br i1 %exitcond874.2.not, label %polly.loop_header813.1.2, label %polly.loop_header813.2

polly.loop_header813.1.2:                         ; preds = %polly.loop_exit821.2, %polly.loop_exit821.1.2
  %polly.indvar816.1.2 = phi i64 [ %polly.indvar_next817.1.2, %polly.loop_exit821.1.2 ], [ 0, %polly.loop_exit821.2 ]
  %217 = add nuw nsw i64 %polly.indvar816.1.2, 64
  %218 = mul nuw nsw i64 %217, 480
  %219 = trunc i64 %217 to i32
  %broadcast.splatinsert1235 = insertelement <4 x i32> poison, i32 %219, i32 0
  %broadcast.splat1236 = shufflevector <4 x i32> %broadcast.splatinsert1235, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %polly.loop_header813.1.2
  %index1229 = phi i64 [ 0, %polly.loop_header813.1.2 ], [ %index.next1230, %vector.body1227 ]
  %vec.ind1233 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header813.1.2 ], [ %vec.ind.next1234, %vector.body1227 ]
  %220 = add nuw nsw <4 x i64> %vec.ind1233, <i64 32, i64 32, i64 32, i64 32>
  %221 = trunc <4 x i64> %220 to <4 x i32>
  %222 = mul <4 x i32> %broadcast.splat1236, %221
  %223 = add <4 x i32> %222, <i32 1, i32 1, i32 1, i32 1>
  %224 = urem <4 x i32> %223, <i32 80, i32 80, i32 80, i32 80>
  %225 = sitofp <4 x i32> %224 to <4 x double>
  %226 = fmul fast <4 x double> %225, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %227 = extractelement <4 x i64> %220, i32 0
  %228 = shl i64 %227, 3
  %229 = add i64 %228, %218
  %230 = getelementptr i8, i8* %call1, i64 %229
  %231 = bitcast i8* %230 to <4 x double>*
  store <4 x double> %226, <4 x double>* %231, align 8, !alias.scope !96, !noalias !101
  %index.next1230 = add i64 %index1229, 4
  %vec.ind.next1234 = add <4 x i64> %vec.ind1233, <i64 4, i64 4, i64 4, i64 4>
  %232 = icmp eq i64 %index.next1230, 28
  br i1 %232, label %polly.loop_exit821.1.2, label %vector.body1227, !llvm.loop !107

polly.loop_exit821.1.2:                           ; preds = %vector.body1227
  %polly.indvar_next817.1.2 = add nuw nsw i64 %polly.indvar816.1.2, 1
  %exitcond874.1.2.not = icmp eq i64 %polly.indvar_next817.1.2, 16
  br i1 %exitcond874.1.2.not, label %init_array.exit, label %polly.loop_header813.1.2

polly.loop_header787.1:                           ; preds = %polly.loop_exit795, %polly.loop_exit795.1
  %polly.indvar790.1 = phi i64 [ %polly.indvar_next791.1, %polly.loop_exit795.1 ], [ 0, %polly.loop_exit795 ]
  %233 = mul nuw nsw i64 %polly.indvar790.1, 480
  %234 = trunc i64 %polly.indvar790.1 to i32
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %234, i32 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %polly.loop_header787.1
  %index1099 = phi i64 [ 0, %polly.loop_header787.1 ], [ %index.next1100, %vector.body1097 ]
  %vec.ind1103 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1 ], [ %vec.ind.next1104, %vector.body1097 ]
  %235 = add nuw nsw <4 x i64> %vec.ind1103, <i64 32, i64 32, i64 32, i64 32>
  %236 = trunc <4 x i64> %235 to <4 x i32>
  %237 = mul <4 x i32> %broadcast.splat1106, %236
  %238 = add <4 x i32> %237, <i32 2, i32 2, i32 2, i32 2>
  %239 = urem <4 x i32> %238, <i32 60, i32 60, i32 60, i32 60>
  %240 = sitofp <4 x i32> %239 to <4 x double>
  %241 = fmul fast <4 x double> %240, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %242 = extractelement <4 x i64> %235, i32 0
  %243 = shl i64 %242, 3
  %244 = add i64 %243, %233
  %245 = getelementptr i8, i8* %call2, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %241, <4 x double>* %246, align 8, !alias.scope !97, !noalias !99
  %index.next1100 = add i64 %index1099, 4
  %vec.ind.next1104 = add <4 x i64> %vec.ind1103, <i64 4, i64 4, i64 4, i64 4>
  %247 = icmp eq i64 %index.next1100, 28
  br i1 %247, label %polly.loop_exit795.1, label %vector.body1097, !llvm.loop !108

polly.loop_exit795.1:                             ; preds = %vector.body1097
  %polly.indvar_next791.1 = add nuw nsw i64 %polly.indvar790.1, 1
  %exitcond880.1.not = icmp eq i64 %polly.indvar_next791.1, 32
  br i1 %exitcond880.1.not, label %polly.loop_header787.1908, label %polly.loop_header787.1

polly.loop_header787.1908:                        ; preds = %polly.loop_exit795.1, %polly.loop_exit795.1919
  %polly.indvar790.1907 = phi i64 [ %polly.indvar_next791.1917, %polly.loop_exit795.1919 ], [ 0, %polly.loop_exit795.1 ]
  %248 = add nuw nsw i64 %polly.indvar790.1907, 32
  %249 = mul nuw nsw i64 %248, 480
  %250 = trunc i64 %248 to i32
  %broadcast.splatinsert1119 = insertelement <4 x i32> poison, i32 %250, i32 0
  %broadcast.splat1120 = shufflevector <4 x i32> %broadcast.splatinsert1119, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %polly.loop_header787.1908
  %index1111 = phi i64 [ 0, %polly.loop_header787.1908 ], [ %index.next1112, %vector.body1109 ]
  %vec.ind1117 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.1908 ], [ %vec.ind.next1118, %vector.body1109 ]
  %251 = mul <4 x i32> %vec.ind1117, %broadcast.splat1120
  %252 = add <4 x i32> %251, <i32 2, i32 2, i32 2, i32 2>
  %253 = urem <4 x i32> %252, <i32 60, i32 60, i32 60, i32 60>
  %254 = sitofp <4 x i32> %253 to <4 x double>
  %255 = fmul fast <4 x double> %254, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %256 = shl i64 %index1111, 3
  %257 = add i64 %256, %249
  %258 = getelementptr i8, i8* %call2, i64 %257
  %259 = bitcast i8* %258 to <4 x double>*
  store <4 x double> %255, <4 x double>* %259, align 8, !alias.scope !97, !noalias !99
  %index.next1112 = add i64 %index1111, 4
  %vec.ind.next1118 = add <4 x i32> %vec.ind1117, <i32 4, i32 4, i32 4, i32 4>
  %260 = icmp eq i64 %index.next1112, 32
  br i1 %260, label %polly.loop_exit795.1919, label %vector.body1109, !llvm.loop !109

polly.loop_exit795.1919:                          ; preds = %vector.body1109
  %polly.indvar_next791.1917 = add nuw nsw i64 %polly.indvar790.1907, 1
  %exitcond880.1918.not = icmp eq i64 %polly.indvar_next791.1917, 32
  br i1 %exitcond880.1918.not, label %polly.loop_header787.1.1, label %polly.loop_header787.1908

polly.loop_header787.1.1:                         ; preds = %polly.loop_exit795.1919, %polly.loop_exit795.1.1
  %polly.indvar790.1.1 = phi i64 [ %polly.indvar_next791.1.1, %polly.loop_exit795.1.1 ], [ 0, %polly.loop_exit795.1919 ]
  %261 = add nuw nsw i64 %polly.indvar790.1.1, 32
  %262 = mul nuw nsw i64 %261, 480
  %263 = trunc i64 %261 to i32
  %broadcast.splatinsert1131 = insertelement <4 x i32> poison, i32 %263, i32 0
  %broadcast.splat1132 = shufflevector <4 x i32> %broadcast.splatinsert1131, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1123

vector.body1123:                                  ; preds = %vector.body1123, %polly.loop_header787.1.1
  %index1125 = phi i64 [ 0, %polly.loop_header787.1.1 ], [ %index.next1126, %vector.body1123 ]
  %vec.ind1129 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.1 ], [ %vec.ind.next1130, %vector.body1123 ]
  %264 = add nuw nsw <4 x i64> %vec.ind1129, <i64 32, i64 32, i64 32, i64 32>
  %265 = trunc <4 x i64> %264 to <4 x i32>
  %266 = mul <4 x i32> %broadcast.splat1132, %265
  %267 = add <4 x i32> %266, <i32 2, i32 2, i32 2, i32 2>
  %268 = urem <4 x i32> %267, <i32 60, i32 60, i32 60, i32 60>
  %269 = sitofp <4 x i32> %268 to <4 x double>
  %270 = fmul fast <4 x double> %269, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %271 = extractelement <4 x i64> %264, i32 0
  %272 = shl i64 %271, 3
  %273 = add i64 %272, %262
  %274 = getelementptr i8, i8* %call2, i64 %273
  %275 = bitcast i8* %274 to <4 x double>*
  store <4 x double> %270, <4 x double>* %275, align 8, !alias.scope !97, !noalias !99
  %index.next1126 = add i64 %index1125, 4
  %vec.ind.next1130 = add <4 x i64> %vec.ind1129, <i64 4, i64 4, i64 4, i64 4>
  %276 = icmp eq i64 %index.next1126, 28
  br i1 %276, label %polly.loop_exit795.1.1, label %vector.body1123, !llvm.loop !110

polly.loop_exit795.1.1:                           ; preds = %vector.body1123
  %polly.indvar_next791.1.1 = add nuw nsw i64 %polly.indvar790.1.1, 1
  %exitcond880.1.1.not = icmp eq i64 %polly.indvar_next791.1.1, 32
  br i1 %exitcond880.1.1.not, label %polly.loop_header787.2, label %polly.loop_header787.1.1

polly.loop_header787.2:                           ; preds = %polly.loop_exit795.1.1, %polly.loop_exit795.2
  %polly.indvar790.2 = phi i64 [ %polly.indvar_next791.2, %polly.loop_exit795.2 ], [ 0, %polly.loop_exit795.1.1 ]
  %277 = add nuw nsw i64 %polly.indvar790.2, 64
  %278 = mul nuw nsw i64 %277, 480
  %279 = trunc i64 %277 to i32
  %broadcast.splatinsert1145 = insertelement <4 x i32> poison, i32 %279, i32 0
  %broadcast.splat1146 = shufflevector <4 x i32> %broadcast.splatinsert1145, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %polly.loop_header787.2
  %index1137 = phi i64 [ 0, %polly.loop_header787.2 ], [ %index.next1138, %vector.body1135 ]
  %vec.ind1143 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header787.2 ], [ %vec.ind.next1144, %vector.body1135 ]
  %280 = mul <4 x i32> %vec.ind1143, %broadcast.splat1146
  %281 = add <4 x i32> %280, <i32 2, i32 2, i32 2, i32 2>
  %282 = urem <4 x i32> %281, <i32 60, i32 60, i32 60, i32 60>
  %283 = sitofp <4 x i32> %282 to <4 x double>
  %284 = fmul fast <4 x double> %283, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %285 = shl i64 %index1137, 3
  %286 = add i64 %285, %278
  %287 = getelementptr i8, i8* %call2, i64 %286
  %288 = bitcast i8* %287 to <4 x double>*
  store <4 x double> %284, <4 x double>* %288, align 8, !alias.scope !97, !noalias !99
  %index.next1138 = add i64 %index1137, 4
  %vec.ind.next1144 = add <4 x i32> %vec.ind1143, <i32 4, i32 4, i32 4, i32 4>
  %289 = icmp eq i64 %index.next1138, 32
  br i1 %289, label %polly.loop_exit795.2, label %vector.body1135, !llvm.loop !111

polly.loop_exit795.2:                             ; preds = %vector.body1135
  %polly.indvar_next791.2 = add nuw nsw i64 %polly.indvar790.2, 1
  %exitcond880.2.not = icmp eq i64 %polly.indvar_next791.2, 16
  br i1 %exitcond880.2.not, label %polly.loop_header787.1.2, label %polly.loop_header787.2

polly.loop_header787.1.2:                         ; preds = %polly.loop_exit795.2, %polly.loop_exit795.1.2
  %polly.indvar790.1.2 = phi i64 [ %polly.indvar_next791.1.2, %polly.loop_exit795.1.2 ], [ 0, %polly.loop_exit795.2 ]
  %290 = add nuw nsw i64 %polly.indvar790.1.2, 64
  %291 = mul nuw nsw i64 %290, 480
  %292 = trunc i64 %290 to i32
  %broadcast.splatinsert1157 = insertelement <4 x i32> poison, i32 %292, i32 0
  %broadcast.splat1158 = shufflevector <4 x i32> %broadcast.splatinsert1157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1149

vector.body1149:                                  ; preds = %vector.body1149, %polly.loop_header787.1.2
  %index1151 = phi i64 [ 0, %polly.loop_header787.1.2 ], [ %index.next1152, %vector.body1149 ]
  %vec.ind1155 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header787.1.2 ], [ %vec.ind.next1156, %vector.body1149 ]
  %293 = add nuw nsw <4 x i64> %vec.ind1155, <i64 32, i64 32, i64 32, i64 32>
  %294 = trunc <4 x i64> %293 to <4 x i32>
  %295 = mul <4 x i32> %broadcast.splat1158, %294
  %296 = add <4 x i32> %295, <i32 2, i32 2, i32 2, i32 2>
  %297 = urem <4 x i32> %296, <i32 60, i32 60, i32 60, i32 60>
  %298 = sitofp <4 x i32> %297 to <4 x double>
  %299 = fmul fast <4 x double> %298, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %300 = extractelement <4 x i64> %293, i32 0
  %301 = shl i64 %300, 3
  %302 = add i64 %301, %291
  %303 = getelementptr i8, i8* %call2, i64 %302
  %304 = bitcast i8* %303 to <4 x double>*
  store <4 x double> %299, <4 x double>* %304, align 8, !alias.scope !97, !noalias !99
  %index.next1152 = add i64 %index1151, 4
  %vec.ind.next1156 = add <4 x i64> %vec.ind1155, <i64 4, i64 4, i64 4, i64 4>
  %305 = icmp eq i64 %index.next1152, 28
  br i1 %305, label %polly.loop_exit795.1.2, label %vector.body1149, !llvm.loop !112

polly.loop_exit795.1.2:                           ; preds = %vector.body1149
  %polly.indvar_next791.1.2 = add nuw nsw i64 %polly.indvar790.1.2, 1
  %exitcond880.1.2.not = icmp eq i64 %polly.indvar_next791.1.2, 16
  br i1 %exitcond880.1.2.not, label %polly.loop_header813, label %polly.loop_header787.1.2

polly.loop_header760.1:                           ; preds = %polly.loop_exit768, %polly.loop_exit768.1
  %polly.indvar763.1 = phi i64 [ %polly.indvar_next764.1, %polly.loop_exit768.1 ], [ 0, %polly.loop_exit768 ]
  %306 = mul nuw nsw i64 %polly.indvar763.1, 640
  %307 = trunc i64 %polly.indvar763.1 to i32
  %broadcast.splatinsert991 = insertelement <4 x i32> poison, i32 %307, i32 0
  %broadcast.splat992 = shufflevector <4 x i32> %broadcast.splatinsert991, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %polly.loop_header760.1
  %index985 = phi i64 [ 0, %polly.loop_header760.1 ], [ %index.next986, %vector.body983 ]
  %vec.ind989 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header760.1 ], [ %vec.ind.next990, %vector.body983 ]
  %308 = add nuw nsw <4 x i64> %vec.ind989, <i64 32, i64 32, i64 32, i64 32>
  %309 = trunc <4 x i64> %308 to <4 x i32>
  %310 = mul <4 x i32> %broadcast.splat992, %309
  %311 = add <4 x i32> %310, <i32 3, i32 3, i32 3, i32 3>
  %312 = urem <4 x i32> %311, <i32 80, i32 80, i32 80, i32 80>
  %313 = sitofp <4 x i32> %312 to <4 x double>
  %314 = fmul fast <4 x double> %313, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %315 = extractelement <4 x i64> %308, i32 0
  %316 = shl i64 %315, 3
  %317 = add nuw nsw i64 %316, %306
  %318 = getelementptr i8, i8* %call, i64 %317
  %319 = bitcast i8* %318 to <4 x double>*
  store <4 x double> %314, <4 x double>* %319, align 8, !alias.scope !93, !noalias !95
  %index.next986 = add i64 %index985, 4
  %vec.ind.next990 = add <4 x i64> %vec.ind989, <i64 4, i64 4, i64 4, i64 4>
  %320 = icmp eq i64 %index.next986, 32
  br i1 %320, label %polly.loop_exit768.1, label %vector.body983, !llvm.loop !113

polly.loop_exit768.1:                             ; preds = %vector.body983
  %polly.indvar_next764.1 = add nuw nsw i64 %polly.indvar763.1, 1
  %exitcond889.1.not = icmp eq i64 %polly.indvar_next764.1, 32
  br i1 %exitcond889.1.not, label %polly.loop_header760.2, label %polly.loop_header760.1

polly.loop_header760.2:                           ; preds = %polly.loop_exit768.1, %polly.loop_exit768.2
  %polly.indvar763.2 = phi i64 [ %polly.indvar_next764.2, %polly.loop_exit768.2 ], [ 0, %polly.loop_exit768.1 ]
  %321 = mul nuw nsw i64 %polly.indvar763.2, 640
  %322 = trunc i64 %polly.indvar763.2 to i32
  %broadcast.splatinsert1003 = insertelement <4 x i32> poison, i32 %322, i32 0
  %broadcast.splat1004 = shufflevector <4 x i32> %broadcast.splatinsert1003, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %polly.loop_header760.2
  %index997 = phi i64 [ 0, %polly.loop_header760.2 ], [ %index.next998, %vector.body995 ]
  %vec.ind1001 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header760.2 ], [ %vec.ind.next1002, %vector.body995 ]
  %323 = add nuw nsw <4 x i64> %vec.ind1001, <i64 64, i64 64, i64 64, i64 64>
  %324 = trunc <4 x i64> %323 to <4 x i32>
  %325 = mul <4 x i32> %broadcast.splat1004, %324
  %326 = add <4 x i32> %325, <i32 3, i32 3, i32 3, i32 3>
  %327 = urem <4 x i32> %326, <i32 80, i32 80, i32 80, i32 80>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %330 = extractelement <4 x i64> %323, i32 0
  %331 = shl i64 %330, 3
  %332 = add nuw nsw i64 %331, %321
  %333 = getelementptr i8, i8* %call, i64 %332
  %334 = bitcast i8* %333 to <4 x double>*
  store <4 x double> %329, <4 x double>* %334, align 8, !alias.scope !93, !noalias !95
  %index.next998 = add i64 %index997, 4
  %vec.ind.next1002 = add <4 x i64> %vec.ind1001, <i64 4, i64 4, i64 4, i64 4>
  %335 = icmp eq i64 %index.next998, 16
  br i1 %335, label %polly.loop_exit768.2, label %vector.body995, !llvm.loop !114

polly.loop_exit768.2:                             ; preds = %vector.body995
  %polly.indvar_next764.2 = add nuw nsw i64 %polly.indvar763.2, 1
  %exitcond889.2.not = icmp eq i64 %polly.indvar_next764.2, 32
  br i1 %exitcond889.2.not, label %polly.loop_header760.1922, label %polly.loop_header760.2

polly.loop_header760.1922:                        ; preds = %polly.loop_exit768.2, %polly.loop_exit768.1933
  %polly.indvar763.1921 = phi i64 [ %polly.indvar_next764.1931, %polly.loop_exit768.1933 ], [ 0, %polly.loop_exit768.2 ]
  %336 = add nuw nsw i64 %polly.indvar763.1921, 32
  %337 = mul nuw nsw i64 %336, 640
  %338 = trunc i64 %336 to i32
  %broadcast.splatinsert1017 = insertelement <4 x i32> poison, i32 %338, i32 0
  %broadcast.splat1018 = shufflevector <4 x i32> %broadcast.splatinsert1017, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %polly.loop_header760.1922
  %index1009 = phi i64 [ 0, %polly.loop_header760.1922 ], [ %index.next1010, %vector.body1007 ]
  %vec.ind1015 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header760.1922 ], [ %vec.ind.next1016, %vector.body1007 ]
  %339 = mul <4 x i32> %vec.ind1015, %broadcast.splat1018
  %340 = add <4 x i32> %339, <i32 3, i32 3, i32 3, i32 3>
  %341 = urem <4 x i32> %340, <i32 80, i32 80, i32 80, i32 80>
  %342 = sitofp <4 x i32> %341 to <4 x double>
  %343 = fmul fast <4 x double> %342, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %344 = shl i64 %index1009, 3
  %345 = add nuw nsw i64 %344, %337
  %346 = getelementptr i8, i8* %call, i64 %345
  %347 = bitcast i8* %346 to <4 x double>*
  store <4 x double> %343, <4 x double>* %347, align 8, !alias.scope !93, !noalias !95
  %index.next1010 = add i64 %index1009, 4
  %vec.ind.next1016 = add <4 x i32> %vec.ind1015, <i32 4, i32 4, i32 4, i32 4>
  %348 = icmp eq i64 %index.next1010, 32
  br i1 %348, label %polly.loop_exit768.1933, label %vector.body1007, !llvm.loop !115

polly.loop_exit768.1933:                          ; preds = %vector.body1007
  %polly.indvar_next764.1931 = add nuw nsw i64 %polly.indvar763.1921, 1
  %exitcond889.1932.not = icmp eq i64 %polly.indvar_next764.1931, 32
  br i1 %exitcond889.1932.not, label %polly.loop_header760.1.1, label %polly.loop_header760.1922

polly.loop_header760.1.1:                         ; preds = %polly.loop_exit768.1933, %polly.loop_exit768.1.1
  %polly.indvar763.1.1 = phi i64 [ %polly.indvar_next764.1.1, %polly.loop_exit768.1.1 ], [ 0, %polly.loop_exit768.1933 ]
  %349 = add nuw nsw i64 %polly.indvar763.1.1, 32
  %350 = mul nuw nsw i64 %349, 640
  %351 = trunc i64 %349 to i32
  %broadcast.splatinsert1029 = insertelement <4 x i32> poison, i32 %351, i32 0
  %broadcast.splat1030 = shufflevector <4 x i32> %broadcast.splatinsert1029, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %polly.loop_header760.1.1
  %index1023 = phi i64 [ 0, %polly.loop_header760.1.1 ], [ %index.next1024, %vector.body1021 ]
  %vec.ind1027 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header760.1.1 ], [ %vec.ind.next1028, %vector.body1021 ]
  %352 = add nuw nsw <4 x i64> %vec.ind1027, <i64 32, i64 32, i64 32, i64 32>
  %353 = trunc <4 x i64> %352 to <4 x i32>
  %354 = mul <4 x i32> %broadcast.splat1030, %353
  %355 = add <4 x i32> %354, <i32 3, i32 3, i32 3, i32 3>
  %356 = urem <4 x i32> %355, <i32 80, i32 80, i32 80, i32 80>
  %357 = sitofp <4 x i32> %356 to <4 x double>
  %358 = fmul fast <4 x double> %357, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %359 = extractelement <4 x i64> %352, i32 0
  %360 = shl i64 %359, 3
  %361 = add nuw nsw i64 %360, %350
  %362 = getelementptr i8, i8* %call, i64 %361
  %363 = bitcast i8* %362 to <4 x double>*
  store <4 x double> %358, <4 x double>* %363, align 8, !alias.scope !93, !noalias !95
  %index.next1024 = add i64 %index1023, 4
  %vec.ind.next1028 = add <4 x i64> %vec.ind1027, <i64 4, i64 4, i64 4, i64 4>
  %364 = icmp eq i64 %index.next1024, 32
  br i1 %364, label %polly.loop_exit768.1.1, label %vector.body1021, !llvm.loop !116

polly.loop_exit768.1.1:                           ; preds = %vector.body1021
  %polly.indvar_next764.1.1 = add nuw nsw i64 %polly.indvar763.1.1, 1
  %exitcond889.1.1.not = icmp eq i64 %polly.indvar_next764.1.1, 32
  br i1 %exitcond889.1.1.not, label %polly.loop_header760.2.1, label %polly.loop_header760.1.1

polly.loop_header760.2.1:                         ; preds = %polly.loop_exit768.1.1, %polly.loop_exit768.2.1
  %polly.indvar763.2.1 = phi i64 [ %polly.indvar_next764.2.1, %polly.loop_exit768.2.1 ], [ 0, %polly.loop_exit768.1.1 ]
  %365 = add nuw nsw i64 %polly.indvar763.2.1, 32
  %366 = mul nuw nsw i64 %365, 640
  %367 = trunc i64 %365 to i32
  %broadcast.splatinsert1041 = insertelement <4 x i32> poison, i32 %367, i32 0
  %broadcast.splat1042 = shufflevector <4 x i32> %broadcast.splatinsert1041, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %polly.loop_header760.2.1
  %index1035 = phi i64 [ 0, %polly.loop_header760.2.1 ], [ %index.next1036, %vector.body1033 ]
  %vec.ind1039 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header760.2.1 ], [ %vec.ind.next1040, %vector.body1033 ]
  %368 = add nuw nsw <4 x i64> %vec.ind1039, <i64 64, i64 64, i64 64, i64 64>
  %369 = trunc <4 x i64> %368 to <4 x i32>
  %370 = mul <4 x i32> %broadcast.splat1042, %369
  %371 = add <4 x i32> %370, <i32 3, i32 3, i32 3, i32 3>
  %372 = urem <4 x i32> %371, <i32 80, i32 80, i32 80, i32 80>
  %373 = sitofp <4 x i32> %372 to <4 x double>
  %374 = fmul fast <4 x double> %373, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %375 = extractelement <4 x i64> %368, i32 0
  %376 = shl i64 %375, 3
  %377 = add nuw nsw i64 %376, %366
  %378 = getelementptr i8, i8* %call, i64 %377
  %379 = bitcast i8* %378 to <4 x double>*
  store <4 x double> %374, <4 x double>* %379, align 8, !alias.scope !93, !noalias !95
  %index.next1036 = add i64 %index1035, 4
  %vec.ind.next1040 = add <4 x i64> %vec.ind1039, <i64 4, i64 4, i64 4, i64 4>
  %380 = icmp eq i64 %index.next1036, 16
  br i1 %380, label %polly.loop_exit768.2.1, label %vector.body1033, !llvm.loop !117

polly.loop_exit768.2.1:                           ; preds = %vector.body1033
  %polly.indvar_next764.2.1 = add nuw nsw i64 %polly.indvar763.2.1, 1
  %exitcond889.2.1.not = icmp eq i64 %polly.indvar_next764.2.1, 32
  br i1 %exitcond889.2.1.not, label %polly.loop_header760.2936, label %polly.loop_header760.2.1

polly.loop_header760.2936:                        ; preds = %polly.loop_exit768.2.1, %polly.loop_exit768.2947
  %polly.indvar763.2935 = phi i64 [ %polly.indvar_next764.2945, %polly.loop_exit768.2947 ], [ 0, %polly.loop_exit768.2.1 ]
  %381 = add nuw nsw i64 %polly.indvar763.2935, 64
  %382 = mul nuw nsw i64 %381, 640
  %383 = trunc i64 %381 to i32
  %broadcast.splatinsert1055 = insertelement <4 x i32> poison, i32 %383, i32 0
  %broadcast.splat1056 = shufflevector <4 x i32> %broadcast.splatinsert1055, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %polly.loop_header760.2936
  %index1047 = phi i64 [ 0, %polly.loop_header760.2936 ], [ %index.next1048, %vector.body1045 ]
  %vec.ind1053 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header760.2936 ], [ %vec.ind.next1054, %vector.body1045 ]
  %384 = mul <4 x i32> %vec.ind1053, %broadcast.splat1056
  %385 = add <4 x i32> %384, <i32 3, i32 3, i32 3, i32 3>
  %386 = urem <4 x i32> %385, <i32 80, i32 80, i32 80, i32 80>
  %387 = sitofp <4 x i32> %386 to <4 x double>
  %388 = fmul fast <4 x double> %387, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %389 = shl i64 %index1047, 3
  %390 = add nuw nsw i64 %389, %382
  %391 = getelementptr i8, i8* %call, i64 %390
  %392 = bitcast i8* %391 to <4 x double>*
  store <4 x double> %388, <4 x double>* %392, align 8, !alias.scope !93, !noalias !95
  %index.next1048 = add i64 %index1047, 4
  %vec.ind.next1054 = add <4 x i32> %vec.ind1053, <i32 4, i32 4, i32 4, i32 4>
  %393 = icmp eq i64 %index.next1048, 32
  br i1 %393, label %polly.loop_exit768.2947, label %vector.body1045, !llvm.loop !118

polly.loop_exit768.2947:                          ; preds = %vector.body1045
  %polly.indvar_next764.2945 = add nuw nsw i64 %polly.indvar763.2935, 1
  %exitcond889.2946.not = icmp eq i64 %polly.indvar_next764.2945, 16
  br i1 %exitcond889.2946.not, label %polly.loop_header760.1.2, label %polly.loop_header760.2936

polly.loop_header760.1.2:                         ; preds = %polly.loop_exit768.2947, %polly.loop_exit768.1.2
  %polly.indvar763.1.2 = phi i64 [ %polly.indvar_next764.1.2, %polly.loop_exit768.1.2 ], [ 0, %polly.loop_exit768.2947 ]
  %394 = add nuw nsw i64 %polly.indvar763.1.2, 64
  %395 = mul nuw nsw i64 %394, 640
  %396 = trunc i64 %394 to i32
  %broadcast.splatinsert1067 = insertelement <4 x i32> poison, i32 %396, i32 0
  %broadcast.splat1068 = shufflevector <4 x i32> %broadcast.splatinsert1067, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1059

vector.body1059:                                  ; preds = %vector.body1059, %polly.loop_header760.1.2
  %index1061 = phi i64 [ 0, %polly.loop_header760.1.2 ], [ %index.next1062, %vector.body1059 ]
  %vec.ind1065 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header760.1.2 ], [ %vec.ind.next1066, %vector.body1059 ]
  %397 = add nuw nsw <4 x i64> %vec.ind1065, <i64 32, i64 32, i64 32, i64 32>
  %398 = trunc <4 x i64> %397 to <4 x i32>
  %399 = mul <4 x i32> %broadcast.splat1068, %398
  %400 = add <4 x i32> %399, <i32 3, i32 3, i32 3, i32 3>
  %401 = urem <4 x i32> %400, <i32 80, i32 80, i32 80, i32 80>
  %402 = sitofp <4 x i32> %401 to <4 x double>
  %403 = fmul fast <4 x double> %402, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %404 = extractelement <4 x i64> %397, i32 0
  %405 = shl i64 %404, 3
  %406 = add nuw nsw i64 %405, %395
  %407 = getelementptr i8, i8* %call, i64 %406
  %408 = bitcast i8* %407 to <4 x double>*
  store <4 x double> %403, <4 x double>* %408, align 8, !alias.scope !93, !noalias !95
  %index.next1062 = add i64 %index1061, 4
  %vec.ind.next1066 = add <4 x i64> %vec.ind1065, <i64 4, i64 4, i64 4, i64 4>
  %409 = icmp eq i64 %index.next1062, 32
  br i1 %409, label %polly.loop_exit768.1.2, label %vector.body1059, !llvm.loop !119

polly.loop_exit768.1.2:                           ; preds = %vector.body1059
  %polly.indvar_next764.1.2 = add nuw nsw i64 %polly.indvar763.1.2, 1
  %exitcond889.1.2.not = icmp eq i64 %polly.indvar_next764.1.2, 16
  br i1 %exitcond889.1.2.not, label %polly.loop_header760.2.2, label %polly.loop_header760.1.2

polly.loop_header760.2.2:                         ; preds = %polly.loop_exit768.1.2, %polly.loop_exit768.2.2
  %polly.indvar763.2.2 = phi i64 [ %polly.indvar_next764.2.2, %polly.loop_exit768.2.2 ], [ 0, %polly.loop_exit768.1.2 ]
  %410 = add nuw nsw i64 %polly.indvar763.2.2, 64
  %411 = mul nuw nsw i64 %410, 640
  %412 = trunc i64 %410 to i32
  %broadcast.splatinsert1079 = insertelement <4 x i32> poison, i32 %412, i32 0
  %broadcast.splat1080 = shufflevector <4 x i32> %broadcast.splatinsert1079, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %polly.loop_header760.2.2
  %index1073 = phi i64 [ 0, %polly.loop_header760.2.2 ], [ %index.next1074, %vector.body1071 ]
  %vec.ind1077 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header760.2.2 ], [ %vec.ind.next1078, %vector.body1071 ]
  %413 = add nuw nsw <4 x i64> %vec.ind1077, <i64 64, i64 64, i64 64, i64 64>
  %414 = trunc <4 x i64> %413 to <4 x i32>
  %415 = mul <4 x i32> %broadcast.splat1080, %414
  %416 = add <4 x i32> %415, <i32 3, i32 3, i32 3, i32 3>
  %417 = urem <4 x i32> %416, <i32 80, i32 80, i32 80, i32 80>
  %418 = sitofp <4 x i32> %417 to <4 x double>
  %419 = fmul fast <4 x double> %418, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %420 = extractelement <4 x i64> %413, i32 0
  %421 = shl i64 %420, 3
  %422 = add nuw nsw i64 %421, %411
  %423 = getelementptr i8, i8* %call, i64 %422
  %424 = bitcast i8* %423 to <4 x double>*
  store <4 x double> %419, <4 x double>* %424, align 8, !alias.scope !93, !noalias !95
  %index.next1074 = add i64 %index1073, 4
  %vec.ind.next1078 = add <4 x i64> %vec.ind1077, <i64 4, i64 4, i64 4, i64 4>
  %425 = icmp eq i64 %index.next1074, 16
  br i1 %425, label %polly.loop_exit768.2.2, label %vector.body1071, !llvm.loop !120

polly.loop_exit768.2.2:                           ; preds = %vector.body1071
  %polly.indvar_next764.2.2 = add nuw nsw i64 %polly.indvar763.2.2, 1
  %exitcond889.2.2.not = icmp eq i64 %polly.indvar_next764.2.2, 16
  br i1 %exitcond889.2.2.not, label %polly.loop_header787, label %polly.loop_header760.2.2
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
!28 = distinct !{!28, !12, !29}
!29 = !{!"llvm.loop.id", !"k1"}
!30 = !{!"llvm.loop.tile.followup_tile", !31}
!31 = distinct !{!31, !12, !32}
!32 = !{!"llvm.loop.id", !"k2"}
!33 = distinct !{!33, !12, !24, !34, !35, !36, !39}
!34 = !{!"llvm.loop.id", !"j"}
!35 = !{!"llvm.loop.tile.size", i32 2048}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !49, !50, !54}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.size", i32 128}
!50 = !{!"llvm.loop.tile.followup_floor", !51}
!51 = distinct !{!51, !12, !24, !52, !42, !53, !44}
!52 = !{!"llvm.loop.id", !"i1"}
!53 = !{!"llvm.data.pack.array", !22}
!54 = !{!"llvm.loop.tile.followup_tile", !55}
!55 = distinct !{!55, !12, !56}
!56 = !{!"llvm.loop.id", !"i2"}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !4, i64 0}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !66, !"polly.alias.scope.MemRef_call"}
!66 = distinct !{!66, !"polly.alias.scope.domain"}
!67 = !{!68, !69, !70, !71}
!68 = distinct !{!68, !66, !"polly.alias.scope.MemRef_call1"}
!69 = distinct !{!69, !66, !"polly.alias.scope.MemRef_call2"}
!70 = distinct !{!70, !66, !"polly.alias.scope.Packed_MemRef_call1"}
!71 = distinct !{!71, !66, !"polly.alias.scope.Packed_MemRef_call2"}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !74, !13}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = distinct !{!75, !76, !"polly.alias.scope.MemRef_call"}
!76 = distinct !{!76, !"polly.alias.scope.domain"}
!77 = !{!78, !79, !80, !81}
!78 = distinct !{!78, !76, !"polly.alias.scope.MemRef_call1"}
!79 = distinct !{!79, !76, !"polly.alias.scope.MemRef_call2"}
!80 = distinct !{!80, !76, !"polly.alias.scope.Packed_MemRef_call1"}
!81 = distinct !{!81, !76, !"polly.alias.scope.Packed_MemRef_call2"}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !74, !13}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89, !90}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !85, !"polly.alias.scope.Packed_MemRef_call2"}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !74, !13}
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
