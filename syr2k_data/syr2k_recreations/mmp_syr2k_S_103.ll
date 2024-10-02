; ModuleID = 'syr2k_recreations//mmp_syr2k_S_103.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_103.c"
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
  %scevgep966 = getelementptr i8, i8* %call2, i64 %12
  %scevgep965 = getelementptr i8, i8* %call2, i64 %11
  %scevgep964 = getelementptr i8, i8* %call1, i64 %12
  %scevgep963 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep963, %scevgep966
  %bound1 = icmp ult i8* %scevgep965, %scevgep964
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
  br i1 %exitcond18.not.i, label %vector.ph970, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph970:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert977 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat978 = shufflevector <4 x i64> %broadcast.splatinsert977, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body969

vector.body969:                                   ; preds = %vector.body969, %vector.ph970
  %index971 = phi i64 [ 0, %vector.ph970 ], [ %index.next972, %vector.body969 ]
  %vec.ind975 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph970 ], [ %vec.ind.next976, %vector.body969 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind975, %broadcast.splat978
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv7.i, i64 %index971
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next972 = add i64 %index971, 4
  %vec.ind.next976 = add <4 x i64> %vec.ind975, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next972, 80
  br i1 %40, label %for.inc41.i, label %vector.body969, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body969
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph970, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit813.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start443, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1323, label %vector.ph1252

vector.ph1252:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1251

vector.body1251:                                  ; preds = %vector.body1251, %vector.ph1252
  %index1253 = phi i64 [ 0, %vector.ph1252 ], [ %index.next1254, %vector.body1251 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i, i64 %index1253
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1254 = add i64 %index1253, 4
  %46 = icmp eq i64 %index.next1254, %n.vec
  br i1 %46, label %middle.block1249, label %vector.body1251, !llvm.loop !18

middle.block1249:                                 ; preds = %vector.body1251
  %cmp.n1256 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1256, label %for.inc6.i, label %for.body3.i46.preheader1323

for.body3.i46.preheader1323:                      ; preds = %for.body3.i46.preheader, %middle.block1249
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1249 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1323, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1323 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1249, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting444
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start270, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1272 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1272, label %for.body3.i60.preheader1322, label %vector.ph1273

vector.ph1273:                                    ; preds = %for.body3.i60.preheader
  %n.vec1275 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1271

vector.body1271:                                  ; preds = %vector.body1271, %vector.ph1273
  %index1276 = phi i64 [ 0, %vector.ph1273 ], [ %index.next1277, %vector.body1271 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i52, i64 %index1276
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1280 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1280, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1277 = add i64 %index1276, 4
  %57 = icmp eq i64 %index.next1277, %n.vec1275
  br i1 %57, label %middle.block1269, label %vector.body1271, !llvm.loop !60

middle.block1269:                                 ; preds = %vector.body1271
  %cmp.n1279 = icmp eq i64 %indvars.iv21.i52, %n.vec1275
  br i1 %cmp.n1279, label %for.inc6.i63, label %for.body3.i60.preheader1322

for.body3.i60.preheader1322:                      ; preds = %for.body3.i60.preheader, %middle.block1269
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1275, %middle.block1269 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1322, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1322 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1269, %for.cond1.preheader.i54
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting271
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1298 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1298, label %for.body3.i99.preheader1321, label %vector.ph1299

vector.ph1299:                                    ; preds = %for.body3.i99.preheader
  %n.vec1301 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1297

vector.body1297:                                  ; preds = %vector.body1297, %vector.ph1299
  %index1302 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1303, %vector.body1297 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i91, i64 %index1302
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1306, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1303 = add i64 %index1302, 4
  %68 = icmp eq i64 %index.next1303, %n.vec1301
  br i1 %68, label %middle.block1295, label %vector.body1297, !llvm.loop !62

middle.block1295:                                 ; preds = %vector.body1297
  %cmp.n1305 = icmp eq i64 %indvars.iv21.i91, %n.vec1301
  br i1 %cmp.n1305, label %for.inc6.i102, label %for.body3.i99.preheader1321

for.body3.i99.preheader1321:                      ; preds = %for.body3.i99.preheader, %middle.block1295
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1301, %middle.block1295 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1321, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1321 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1295, %for.cond1.preheader.i93
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
  %malloccall = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1310 = phi i64 [ %indvar.next1311, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1310, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1312 = icmp ult i64 %88, 4
  br i1 %min.iters.check1312, label %polly.loop_header191.preheader, label %vector.ph1313

vector.ph1313:                                    ; preds = %polly.loop_header
  %n.vec1315 = and i64 %88, -4
  br label %vector.body1309

vector.body1309:                                  ; preds = %vector.body1309, %vector.ph1313
  %index1316 = phi i64 [ 0, %vector.ph1313 ], [ %index.next1317, %vector.body1309 ]
  %90 = shl nuw nsw i64 %index1316, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1320 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1320, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1317 = add i64 %index1316, 4
  %95 = icmp eq i64 %index.next1317, %n.vec1315
  br i1 %95, label %middle.block1307, label %vector.body1309, !llvm.loop !74

middle.block1307:                                 ; preds = %vector.body1309
  %cmp.n1319 = icmp eq i64 %88, %n.vec1315
  br i1 %cmp.n1319, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1307
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1315, %middle.block1307 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1307
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1311 = add i64 %indvar1310, 1
  br i1 %exitcond849.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond848.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond848.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.loop_cond204 = phi i1 [ false, %polly.loop_exit207 ], [ true, %polly.loop_header199.preheader ]
  %polly.indvar202 = phi i64 [ 1, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = mul nuw nsw i64 %polly.indvar202, -50
  %98 = icmp slt i64 %97, -10
  %99 = select i1 %98, i64 %97, i64 -10
  %100 = mul nuw nsw i64 %polly.indvar202, 50
  %101 = add nsw i64 %99, 60
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  br i1 %polly.loop_cond204, label %polly.loop_header199, label %polly.exiting

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 80, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %102 = mul nuw nsw i64 %polly.indvar208, 20
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_exit219
  %103 = mul nsw i64 %polly.indvar208, -20
  %104 = mul nuw nsw i64 %polly.indvar208, 5
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %exitcond847.not = icmp eq i64 %polly.indvar_next209, 4
  br i1 %exitcond847.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_exit219, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_exit219 ]
  %105 = add nuw nsw i64 %polly.indvar214, %100
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_header217
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next215, %101
  br i1 %exitcond838.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %106 = add nuw nsw i64 %polly.indvar220, %102
  %polly.access.mul.call2224 = mul nuw nsw i64 %106, 60
  %polly.access.add.call2225 = add nuw nsw i64 %105, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !72, !noalias !77
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_exit213
  %indvars.iv839 = phi i64 [ %indvars.iv.next840, %polly.loop_exit235 ], [ 0, %polly.loop_exit213 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %104, %polly.loop_exit213 ]
  %107 = shl nsw i64 %polly.indvar230, 2
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv839, i64 19)
  %108 = add nsw i64 %107, %103
  %109 = mul nsw i64 %polly.indvar230, 1920
  %110 = mul nsw i64 %polly.indvar230, 2560
  %indvars.iv.next842 = or i64 %indvars.iv839, 1
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next842, i64 19)
  %111 = or i64 %107, 1
  %112 = add nsw i64 %111, %103
  %113 = mul nuw nsw i64 %111, 480
  %114 = mul nuw nsw i64 %111, 640
  %indvars.iv.next842.1 = add nuw nsw i64 %indvars.iv.next842, 1
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next842.1, i64 19)
  %115 = or i64 %107, 2
  %116 = add nsw i64 %115, %103
  %117 = mul nuw nsw i64 %115, 480
  %118 = mul nuw nsw i64 %115, 640
  %indvars.iv.next842.2 = or i64 %indvars.iv839, 3
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next842.2, i64 19)
  %119 = or i64 %107, 3
  %120 = add nsw i64 %119, %103
  %121 = mul nuw nsw i64 %119, 480
  %122 = mul nuw nsw i64 %119, 640
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit247.3
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next840 = add nuw nsw i64 %indvars.iv839, 4
  %exitcond846.not = icmp eq i64 %polly.indvar_next231, 20
  br i1 %exitcond846.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit247.3, %polly.loop_header227
  %polly.indvar236 = phi i64 [ 0, %polly.loop_header227 ], [ %polly.indvar_next237, %polly.loop_exit247.3 ]
  %123 = add nuw nsw i64 %polly.indvar236, %100
  %124 = shl i64 %123, 3
  %polly.access.mul.Packed_MemRef_call2254 = mul nuw nsw i64 %polly.indvar236, 80
  %polly.access.add.Packed_MemRef_call2255 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %108
  %polly.access.Packed_MemRef_call2256 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255
  %_p_scalar_257 = load double, double* %polly.access.Packed_MemRef_call2256, align 8
  %125 = add nuw nsw i64 %109, %124
  %scevgep262 = getelementptr i8, i8* %call1, i64 %125
  %scevgep262263 = bitcast i8* %scevgep262 to double*
  %_p_scalar_264 = load double, double* %scevgep262263, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245

polly.loop_exit247:                               ; preds = %polly.loop_header245
  %polly.access.add.Packed_MemRef_call2255.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %112
  %polly.access.Packed_MemRef_call2256.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.1
  %_p_scalar_257.1 = load double, double* %polly.access.Packed_MemRef_call2256.1, align 8
  %126 = add nuw nsw i64 %113, %124
  %scevgep262.1 = getelementptr i8, i8* %call1, i64 %126
  %scevgep262263.1 = bitcast i8* %scevgep262.1 to double*
  %_p_scalar_264.1 = load double, double* %scevgep262263.1, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.1

polly.loop_header245:                             ; preds = %polly.loop_header245, %polly.loop_header233
  %polly.indvar248 = phi i64 [ 0, %polly.loop_header233 ], [ %polly.indvar_next249, %polly.loop_header245 ]
  %127 = add nuw nsw i64 %polly.indvar248, %102
  %128 = mul nuw nsw i64 %127, 480
  %129 = add nuw nsw i64 %128, %124
  %scevgep251 = getelementptr i8, i8* %call1, i64 %129
  %scevgep251252 = bitcast i8* %scevgep251 to double*
  %_p_scalar_253 = load double, double* %scevgep251252, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_257, %_p_scalar_253
  %polly.access.add.Packed_MemRef_call2259 = add nuw nsw i64 %polly.indvar248, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259
  %_p_scalar_261 = load double, double* %polly.access.Packed_MemRef_call2260, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_264, %_p_scalar_261
  %130 = shl i64 %127, 3
  %131 = add nuw nsw i64 %130, %110
  %scevgep265 = getelementptr i8, i8* %call, i64 %131
  %scevgep265266 = bitcast i8* %scevgep265 to double*
  %_p_scalar_267 = load double, double* %scevgep265266, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_267
  store double %p_add42.i118, double* %scevgep265266, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249 = add nuw nsw i64 %polly.indvar248, 1
  %exitcond843.not = icmp eq i64 %polly.indvar248, %smin
  br i1 %exitcond843.not, label %polly.loop_exit247, label %polly.loop_header245

polly.start270:                                   ; preds = %kernel_syr2k.exit
  %malloccall272 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header356

polly.exiting271:                                 ; preds = %polly.loop_exit380
  tail call void @free(i8* nonnull %malloccall272)
  br label %kernel_syr2k.exit90

polly.loop_header356:                             ; preds = %polly.loop_exit364, %polly.start270
  %indvar1284 = phi i64 [ %indvar.next1285, %polly.loop_exit364 ], [ 0, %polly.start270 ]
  %polly.indvar359 = phi i64 [ %polly.indvar_next360, %polly.loop_exit364 ], [ 1, %polly.start270 ]
  %132 = add i64 %indvar1284, 1
  %133 = mul nuw nsw i64 %polly.indvar359, 640
  %scevgep368 = getelementptr i8, i8* %call, i64 %133
  %min.iters.check1286 = icmp ult i64 %132, 4
  br i1 %min.iters.check1286, label %polly.loop_header362.preheader, label %vector.ph1287

vector.ph1287:                                    ; preds = %polly.loop_header356
  %n.vec1289 = and i64 %132, -4
  br label %vector.body1283

vector.body1283:                                  ; preds = %vector.body1283, %vector.ph1287
  %index1290 = phi i64 [ 0, %vector.ph1287 ], [ %index.next1291, %vector.body1283 ]
  %134 = shl nuw nsw i64 %index1290, 3
  %135 = getelementptr i8, i8* %scevgep368, i64 %134
  %136 = bitcast i8* %135 to <4 x double>*
  %wide.load1294 = load <4 x double>, <4 x double>* %136, align 8, !alias.scope !79, !noalias !81
  %137 = fmul fast <4 x double> %wide.load1294, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %138 = bitcast i8* %135 to <4 x double>*
  store <4 x double> %137, <4 x double>* %138, align 8, !alias.scope !79, !noalias !81
  %index.next1291 = add i64 %index1290, 4
  %139 = icmp eq i64 %index.next1291, %n.vec1289
  br i1 %139, label %middle.block1281, label %vector.body1283, !llvm.loop !85

middle.block1281:                                 ; preds = %vector.body1283
  %cmp.n1293 = icmp eq i64 %132, %n.vec1289
  br i1 %cmp.n1293, label %polly.loop_exit364, label %polly.loop_header362.preheader

polly.loop_header362.preheader:                   ; preds = %polly.loop_header356, %middle.block1281
  %polly.indvar365.ph = phi i64 [ 0, %polly.loop_header356 ], [ %n.vec1289, %middle.block1281 ]
  br label %polly.loop_header362

polly.loop_exit364:                               ; preds = %polly.loop_header362, %middle.block1281
  %polly.indvar_next360 = add nuw nsw i64 %polly.indvar359, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next360, 80
  %indvar.next1285 = add i64 %indvar1284, 1
  br i1 %exitcond865.not, label %polly.loop_header372.preheader, label %polly.loop_header356

polly.loop_header372.preheader:                   ; preds = %polly.loop_exit364
  %Packed_MemRef_call2273 = bitcast i8* %malloccall272 to double*
  br label %polly.loop_header372

polly.loop_header362:                             ; preds = %polly.loop_header362.preheader, %polly.loop_header362
  %polly.indvar365 = phi i64 [ %polly.indvar_next366, %polly.loop_header362 ], [ %polly.indvar365.ph, %polly.loop_header362.preheader ]
  %140 = shl nuw nsw i64 %polly.indvar365, 3
  %scevgep369 = getelementptr i8, i8* %scevgep368, i64 %140
  %scevgep369370 = bitcast i8* %scevgep369 to double*
  %_p_scalar_371 = load double, double* %scevgep369370, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_371, 1.200000e+00
  store double %p_mul.i57, double* %scevgep369370, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next366 = add nuw nsw i64 %polly.indvar365, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next366, %polly.indvar359
  br i1 %exitcond864.not, label %polly.loop_exit364, label %polly.loop_header362, !llvm.loop !86

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_exit380
  %polly.loop_cond377 = phi i1 [ false, %polly.loop_exit380 ], [ true, %polly.loop_header372.preheader ]
  %polly.indvar375 = phi i64 [ 1, %polly.loop_exit380 ], [ 0, %polly.loop_header372.preheader ]
  %141 = mul nuw nsw i64 %polly.indvar375, -50
  %142 = icmp slt i64 %141, -10
  %143 = select i1 %142, i64 %141, i64 -10
  %144 = mul nuw nsw i64 %polly.indvar375, 50
  %145 = add nsw i64 %143, 60
  br label %polly.loop_header378

polly.loop_exit380:                               ; preds = %polly.loop_exit402
  br i1 %polly.loop_cond377, label %polly.loop_header372, label %polly.exiting271

polly.loop_header378:                             ; preds = %polly.loop_exit402, %polly.loop_header372
  %indvars.iv850 = phi i64 [ %indvars.iv.next851, %polly.loop_exit402 ], [ 80, %polly.loop_header372 ]
  %polly.indvar381 = phi i64 [ %polly.indvar_next382, %polly.loop_exit402 ], [ 0, %polly.loop_header372 ]
  %146 = mul nuw nsw i64 %polly.indvar381, 20
  br label %polly.loop_header384

polly.loop_exit386:                               ; preds = %polly.loop_exit392
  %147 = mul nsw i64 %polly.indvar381, -20
  %148 = mul nuw nsw i64 %polly.indvar381, 5
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit408
  %polly.indvar_next382 = add nuw nsw i64 %polly.indvar381, 1
  %indvars.iv.next851 = add nsw i64 %indvars.iv850, -20
  %exitcond863.not = icmp eq i64 %polly.indvar_next382, 4
  br i1 %exitcond863.not, label %polly.loop_exit380, label %polly.loop_header378

polly.loop_header384:                             ; preds = %polly.loop_exit392, %polly.loop_header378
  %polly.indvar387 = phi i64 [ 0, %polly.loop_header378 ], [ %polly.indvar_next388, %polly.loop_exit392 ]
  %149 = add nuw nsw i64 %polly.indvar387, %144
  %polly.access.mul.Packed_MemRef_call2273 = mul nuw nsw i64 %polly.indvar387, 80
  br label %polly.loop_header390

polly.loop_exit392:                               ; preds = %polly.loop_header390
  %polly.indvar_next388 = add nuw nsw i64 %polly.indvar387, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next388, %145
  br i1 %exitcond853.not, label %polly.loop_exit386, label %polly.loop_header384

polly.loop_header390:                             ; preds = %polly.loop_header390, %polly.loop_header384
  %polly.indvar393 = phi i64 [ 0, %polly.loop_header384 ], [ %polly.indvar_next394, %polly.loop_header390 ]
  %150 = add nuw nsw i64 %polly.indvar393, %146
  %polly.access.mul.call2397 = mul nuw nsw i64 %150, 60
  %polly.access.add.call2398 = add nuw nsw i64 %149, %polly.access.mul.call2397
  %polly.access.call2399 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2398
  %polly.access.call2399.load = load double, double* %polly.access.call2399, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2273 = add nuw nsw i64 %polly.indvar393, %polly.access.mul.Packed_MemRef_call2273
  %polly.access.Packed_MemRef_call2273 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273
  store double %polly.access.call2399.load, double* %polly.access.Packed_MemRef_call2273, align 8
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond852.not = icmp eq i64 %polly.indvar_next394, %indvars.iv850
  br i1 %exitcond852.not, label %polly.loop_exit392, label %polly.loop_header390

polly.loop_header400:                             ; preds = %polly.loop_exit408, %polly.loop_exit386
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit408 ], [ 0, %polly.loop_exit386 ]
  %polly.indvar403 = phi i64 [ %polly.indvar_next404, %polly.loop_exit408 ], [ %148, %polly.loop_exit386 ]
  %151 = shl nsw i64 %polly.indvar403, 2
  %smin858 = call i64 @llvm.smin.i64(i64 %indvars.iv854, i64 19)
  %152 = add nsw i64 %151, %147
  %153 = mul nsw i64 %polly.indvar403, 1920
  %154 = mul nsw i64 %polly.indvar403, 2560
  %indvars.iv.next857 = or i64 %indvars.iv854, 1
  %smin858.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next857, i64 19)
  %155 = or i64 %151, 1
  %156 = add nsw i64 %155, %147
  %157 = mul nuw nsw i64 %155, 480
  %158 = mul nuw nsw i64 %155, 640
  %indvars.iv.next857.1 = add nuw nsw i64 %indvars.iv.next857, 1
  %smin858.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next857.1, i64 19)
  %159 = or i64 %151, 2
  %160 = add nsw i64 %159, %147
  %161 = mul nuw nsw i64 %159, 480
  %162 = mul nuw nsw i64 %159, 640
  %indvars.iv.next857.2 = or i64 %indvars.iv854, 3
  %smin858.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next857.2, i64 19)
  %163 = or i64 %151, 3
  %164 = add nsw i64 %163, %147
  %165 = mul nuw nsw i64 %163, 480
  %166 = mul nuw nsw i64 %163, 640
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_exit420.3
  %polly.indvar_next404 = add nuw nsw i64 %polly.indvar403, 1
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 4
  %exitcond862.not = icmp eq i64 %polly.indvar_next404, 20
  br i1 %exitcond862.not, label %polly.loop_exit402, label %polly.loop_header400

polly.loop_header406:                             ; preds = %polly.loop_exit420.3, %polly.loop_header400
  %polly.indvar409 = phi i64 [ 0, %polly.loop_header400 ], [ %polly.indvar_next410, %polly.loop_exit420.3 ]
  %167 = add nuw nsw i64 %polly.indvar409, %144
  %168 = shl i64 %167, 3
  %polly.access.mul.Packed_MemRef_call2273427 = mul nuw nsw i64 %polly.indvar409, 80
  %polly.access.add.Packed_MemRef_call2273428 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %152
  %polly.access.Packed_MemRef_call2273429 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428
  %_p_scalar_430 = load double, double* %polly.access.Packed_MemRef_call2273429, align 8
  %169 = add nuw nsw i64 %153, %168
  %scevgep435 = getelementptr i8, i8* %call1, i64 %169
  %scevgep435436 = bitcast i8* %scevgep435 to double*
  %_p_scalar_437 = load double, double* %scevgep435436, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418

polly.loop_exit420:                               ; preds = %polly.loop_header418
  %polly.access.add.Packed_MemRef_call2273428.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %156
  %polly.access.Packed_MemRef_call2273429.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.1
  %_p_scalar_430.1 = load double, double* %polly.access.Packed_MemRef_call2273429.1, align 8
  %170 = add nuw nsw i64 %157, %168
  %scevgep435.1 = getelementptr i8, i8* %call1, i64 %170
  %scevgep435436.1 = bitcast i8* %scevgep435.1 to double*
  %_p_scalar_437.1 = load double, double* %scevgep435436.1, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.1

polly.loop_header418:                             ; preds = %polly.loop_header418, %polly.loop_header406
  %polly.indvar421 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next422, %polly.loop_header418 ]
  %171 = add nuw nsw i64 %polly.indvar421, %146
  %172 = mul nuw nsw i64 %171, 480
  %173 = add nuw nsw i64 %172, %168
  %scevgep424 = getelementptr i8, i8* %call1, i64 %173
  %scevgep424425 = bitcast i8* %scevgep424 to double*
  %_p_scalar_426 = load double, double* %scevgep424425, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_430, %_p_scalar_426
  %polly.access.add.Packed_MemRef_call2273432 = add nuw nsw i64 %polly.indvar421, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432
  %_p_scalar_434 = load double, double* %polly.access.Packed_MemRef_call2273433, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_437, %_p_scalar_434
  %174 = shl i64 %171, 3
  %175 = add nuw nsw i64 %174, %154
  %scevgep438 = getelementptr i8, i8* %call, i64 %175
  %scevgep438439 = bitcast i8* %scevgep438 to double*
  %_p_scalar_440 = load double, double* %scevgep438439, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_440
  store double %p_add42.i79, double* %scevgep438439, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422 = add nuw nsw i64 %polly.indvar421, 1
  %exitcond859.not = icmp eq i64 %polly.indvar421, %smin858
  br i1 %exitcond859.not, label %polly.loop_exit420, label %polly.loop_header418

polly.start443:                                   ; preds = %init_array.exit
  %malloccall445 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  br label %polly.loop_header529

polly.exiting444:                                 ; preds = %polly.loop_exit553
  tail call void @free(i8* nonnull %malloccall445)
  br label %kernel_syr2k.exit

polly.loop_header529:                             ; preds = %polly.loop_exit537, %polly.start443
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit537 ], [ 0, %polly.start443 ]
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_exit537 ], [ 1, %polly.start443 ]
  %176 = add i64 %indvar, 1
  %177 = mul nuw nsw i64 %polly.indvar532, 640
  %scevgep541 = getelementptr i8, i8* %call, i64 %177
  %min.iters.check1260 = icmp ult i64 %176, 4
  br i1 %min.iters.check1260, label %polly.loop_header535.preheader, label %vector.ph1261

vector.ph1261:                                    ; preds = %polly.loop_header529
  %n.vec1263 = and i64 %176, -4
  br label %vector.body1259

vector.body1259:                                  ; preds = %vector.body1259, %vector.ph1261
  %index1264 = phi i64 [ 0, %vector.ph1261 ], [ %index.next1265, %vector.body1259 ]
  %178 = shl nuw nsw i64 %index1264, 3
  %179 = getelementptr i8, i8* %scevgep541, i64 %178
  %180 = bitcast i8* %179 to <4 x double>*
  %wide.load1268 = load <4 x double>, <4 x double>* %180, align 8, !alias.scope !89, !noalias !91
  %181 = fmul fast <4 x double> %wide.load1268, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %182 = bitcast i8* %179 to <4 x double>*
  store <4 x double> %181, <4 x double>* %182, align 8, !alias.scope !89, !noalias !91
  %index.next1265 = add i64 %index1264, 4
  %183 = icmp eq i64 %index.next1265, %n.vec1263
  br i1 %183, label %middle.block1257, label %vector.body1259, !llvm.loop !95

middle.block1257:                                 ; preds = %vector.body1259
  %cmp.n1267 = icmp eq i64 %176, %n.vec1263
  br i1 %cmp.n1267, label %polly.loop_exit537, label %polly.loop_header535.preheader

polly.loop_header535.preheader:                   ; preds = %polly.loop_header529, %middle.block1257
  %polly.indvar538.ph = phi i64 [ 0, %polly.loop_header529 ], [ %n.vec1263, %middle.block1257 ]
  br label %polly.loop_header535

polly.loop_exit537:                               ; preds = %polly.loop_header535, %middle.block1257
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %exitcond881.not = icmp eq i64 %polly.indvar_next533, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond881.not, label %polly.loop_header545.preheader, label %polly.loop_header529

polly.loop_header545.preheader:                   ; preds = %polly.loop_exit537
  %Packed_MemRef_call2446 = bitcast i8* %malloccall445 to double*
  br label %polly.loop_header545

polly.loop_header535:                             ; preds = %polly.loop_header535.preheader, %polly.loop_header535
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_header535 ], [ %polly.indvar538.ph, %polly.loop_header535.preheader ]
  %184 = shl nuw nsw i64 %polly.indvar538, 3
  %scevgep542 = getelementptr i8, i8* %scevgep541, i64 %184
  %scevgep542543 = bitcast i8* %scevgep542 to double*
  %_p_scalar_544 = load double, double* %scevgep542543, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_544, 1.200000e+00
  store double %p_mul.i, double* %scevgep542543, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next539, %polly.indvar532
  br i1 %exitcond880.not, label %polly.loop_exit537, label %polly.loop_header535, !llvm.loop !96

polly.loop_header545:                             ; preds = %polly.loop_header545.preheader, %polly.loop_exit553
  %polly.loop_cond550 = phi i1 [ false, %polly.loop_exit553 ], [ true, %polly.loop_header545.preheader ]
  %polly.indvar548 = phi i64 [ 1, %polly.loop_exit553 ], [ 0, %polly.loop_header545.preheader ]
  %185 = mul nuw nsw i64 %polly.indvar548, -50
  %186 = icmp slt i64 %185, -10
  %187 = select i1 %186, i64 %185, i64 -10
  %188 = mul nuw nsw i64 %polly.indvar548, 50
  %189 = add nsw i64 %187, 60
  br label %polly.loop_header551

polly.loop_exit553:                               ; preds = %polly.loop_exit575
  br i1 %polly.loop_cond550, label %polly.loop_header545, label %polly.exiting444

polly.loop_header551:                             ; preds = %polly.loop_exit575, %polly.loop_header545
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %polly.loop_exit575 ], [ 80, %polly.loop_header545 ]
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_exit575 ], [ 0, %polly.loop_header545 ]
  %190 = mul nuw nsw i64 %polly.indvar554, 20
  br label %polly.loop_header557

polly.loop_exit559:                               ; preds = %polly.loop_exit565
  %191 = mul nsw i64 %polly.indvar554, -20
  %192 = mul nuw nsw i64 %polly.indvar554, 5
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit581
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %indvars.iv.next867 = add nsw i64 %indvars.iv866, -20
  %exitcond879.not = icmp eq i64 %polly.indvar_next555, 4
  br i1 %exitcond879.not, label %polly.loop_exit553, label %polly.loop_header551

polly.loop_header557:                             ; preds = %polly.loop_exit565, %polly.loop_header551
  %polly.indvar560 = phi i64 [ 0, %polly.loop_header551 ], [ %polly.indvar_next561, %polly.loop_exit565 ]
  %193 = add nuw nsw i64 %polly.indvar560, %188
  %polly.access.mul.Packed_MemRef_call2446 = mul nuw nsw i64 %polly.indvar560, 80
  br label %polly.loop_header563

polly.loop_exit565:                               ; preds = %polly.loop_header563
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond869.not = icmp eq i64 %polly.indvar_next561, %189
  br i1 %exitcond869.not, label %polly.loop_exit559, label %polly.loop_header557

polly.loop_header563:                             ; preds = %polly.loop_header563, %polly.loop_header557
  %polly.indvar566 = phi i64 [ 0, %polly.loop_header557 ], [ %polly.indvar_next567, %polly.loop_header563 ]
  %194 = add nuw nsw i64 %polly.indvar566, %190
  %polly.access.mul.call2570 = mul nuw nsw i64 %194, 60
  %polly.access.add.call2571 = add nuw nsw i64 %193, %polly.access.mul.call2570
  %polly.access.call2572 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2571
  %polly.access.call2572.load = load double, double* %polly.access.call2572, align 8, !alias.scope !93, !noalias !97
  %polly.access.add.Packed_MemRef_call2446 = add nuw nsw i64 %polly.indvar566, %polly.access.mul.Packed_MemRef_call2446
  %polly.access.Packed_MemRef_call2446 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446
  store double %polly.access.call2572.load, double* %polly.access.Packed_MemRef_call2446, align 8
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next567, %indvars.iv866
  br i1 %exitcond868.not, label %polly.loop_exit565, label %polly.loop_header563

polly.loop_header573:                             ; preds = %polly.loop_exit581, %polly.loop_exit559
  %indvars.iv870 = phi i64 [ %indvars.iv.next871, %polly.loop_exit581 ], [ 0, %polly.loop_exit559 ]
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit581 ], [ %192, %polly.loop_exit559 ]
  %195 = shl nsw i64 %polly.indvar576, 2
  %smin874 = call i64 @llvm.smin.i64(i64 %indvars.iv870, i64 19)
  %196 = add nsw i64 %195, %191
  %197 = mul nsw i64 %polly.indvar576, 1920
  %198 = mul nsw i64 %polly.indvar576, 2560
  %indvars.iv.next873 = or i64 %indvars.iv870, 1
  %smin874.1 = call i64 @llvm.smin.i64(i64 %indvars.iv.next873, i64 19)
  %199 = or i64 %195, 1
  %200 = add nsw i64 %199, %191
  %201 = mul nuw nsw i64 %199, 480
  %202 = mul nuw nsw i64 %199, 640
  %indvars.iv.next873.1 = add nuw nsw i64 %indvars.iv.next873, 1
  %smin874.2 = call i64 @llvm.smin.i64(i64 %indvars.iv.next873.1, i64 19)
  %203 = or i64 %195, 2
  %204 = add nsw i64 %203, %191
  %205 = mul nuw nsw i64 %203, 480
  %206 = mul nuw nsw i64 %203, 640
  %indvars.iv.next873.2 = or i64 %indvars.iv870, 3
  %smin874.3 = call i64 @llvm.smin.i64(i64 %indvars.iv.next873.2, i64 19)
  %207 = or i64 %195, 3
  %208 = add nsw i64 %207, %191
  %209 = mul nuw nsw i64 %207, 480
  %210 = mul nuw nsw i64 %207, 640
  br label %polly.loop_header579

polly.loop_exit581:                               ; preds = %polly.loop_exit593.3
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %indvars.iv.next871 = add nuw nsw i64 %indvars.iv870, 4
  %exitcond878.not = icmp eq i64 %polly.indvar_next577, 20
  br i1 %exitcond878.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header579:                             ; preds = %polly.loop_exit593.3, %polly.loop_header573
  %polly.indvar582 = phi i64 [ 0, %polly.loop_header573 ], [ %polly.indvar_next583, %polly.loop_exit593.3 ]
  %211 = add nuw nsw i64 %polly.indvar582, %188
  %212 = shl i64 %211, 3
  %polly.access.mul.Packed_MemRef_call2446600 = mul nuw nsw i64 %polly.indvar582, 80
  %polly.access.add.Packed_MemRef_call2446601 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %196
  %polly.access.Packed_MemRef_call2446602 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601
  %_p_scalar_603 = load double, double* %polly.access.Packed_MemRef_call2446602, align 8
  %213 = add nuw nsw i64 %197, %212
  %scevgep608 = getelementptr i8, i8* %call1, i64 %213
  %scevgep608609 = bitcast i8* %scevgep608 to double*
  %_p_scalar_610 = load double, double* %scevgep608609, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591

polly.loop_exit593:                               ; preds = %polly.loop_header591
  %polly.access.add.Packed_MemRef_call2446601.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %200
  %polly.access.Packed_MemRef_call2446602.1 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.1
  %_p_scalar_603.1 = load double, double* %polly.access.Packed_MemRef_call2446602.1, align 8
  %214 = add nuw nsw i64 %201, %212
  %scevgep608.1 = getelementptr i8, i8* %call1, i64 %214
  %scevgep608609.1 = bitcast i8* %scevgep608.1 to double*
  %_p_scalar_610.1 = load double, double* %scevgep608609.1, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.1

polly.loop_header591:                             ; preds = %polly.loop_header591, %polly.loop_header579
  %polly.indvar594 = phi i64 [ 0, %polly.loop_header579 ], [ %polly.indvar_next595, %polly.loop_header591 ]
  %215 = add nuw nsw i64 %polly.indvar594, %190
  %216 = mul nuw nsw i64 %215, 480
  %217 = add nuw nsw i64 %216, %212
  %scevgep597 = getelementptr i8, i8* %call1, i64 %217
  %scevgep597598 = bitcast i8* %scevgep597 to double*
  %_p_scalar_599 = load double, double* %scevgep597598, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_603, %_p_scalar_599
  %polly.access.add.Packed_MemRef_call2446605 = add nuw nsw i64 %polly.indvar594, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605
  %_p_scalar_607 = load double, double* %polly.access.Packed_MemRef_call2446606, align 8
  %p_mul37.i = fmul fast double %_p_scalar_610, %_p_scalar_607
  %218 = shl i64 %215, 3
  %219 = add nuw nsw i64 %218, %198
  %scevgep611 = getelementptr i8, i8* %call, i64 %219
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_613
  store double %p_add42.i, double* %scevgep611612, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595 = add nuw nsw i64 %polly.indvar594, 1
  %exitcond875.not = icmp eq i64 %polly.indvar594, %smin874
  br i1 %exitcond875.not, label %polly.loop_exit593, label %polly.loop_header591

polly.loop_header752:                             ; preds = %entry, %polly.loop_exit760
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %entry ]
  %220 = mul nuw nsw i64 %polly.indvar755, 640
  %221 = trunc i64 %polly.indvar755 to i32
  %broadcast.splatinsert991 = insertelement <4 x i32> poison, i32 %221, i32 0
  %broadcast.splat992 = shufflevector <4 x i32> %broadcast.splatinsert991, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body981

vector.body981:                                   ; preds = %vector.body981, %polly.loop_header752
  %index983 = phi i64 [ 0, %polly.loop_header752 ], [ %index.next984, %vector.body981 ]
  %vec.ind989 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752 ], [ %vec.ind.next990, %vector.body981 ]
  %222 = mul <4 x i32> %vec.ind989, %broadcast.splat992
  %223 = add <4 x i32> %222, <i32 3, i32 3, i32 3, i32 3>
  %224 = urem <4 x i32> %223, <i32 80, i32 80, i32 80, i32 80>
  %225 = sitofp <4 x i32> %224 to <4 x double>
  %226 = fmul fast <4 x double> %225, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %227 = shl i64 %index983, 3
  %228 = add nuw nsw i64 %227, %220
  %229 = getelementptr i8, i8* %call, i64 %228
  %230 = bitcast i8* %229 to <4 x double>*
  store <4 x double> %226, <4 x double>* %230, align 8, !alias.scope !99, !noalias !101
  %index.next984 = add i64 %index983, 4
  %vec.ind.next990 = add <4 x i32> %vec.ind989, <i32 4, i32 4, i32 4, i32 4>
  %231 = icmp eq i64 %index.next984, 32
  br i1 %231, label %polly.loop_exit760, label %vector.body981, !llvm.loop !104

polly.loop_exit760:                               ; preds = %vector.body981
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond901.not = icmp eq i64 %polly.indvar_next756, 32
  br i1 %exitcond901.not, label %polly.loop_header752.1, label %polly.loop_header752

polly.loop_header779:                             ; preds = %polly.loop_exit760.2.2, %polly.loop_exit787
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_exit760.2.2 ]
  %232 = mul nuw nsw i64 %polly.indvar782, 480
  %233 = trunc i64 %polly.indvar782 to i32
  %broadcast.splatinsert1105 = insertelement <4 x i32> poison, i32 %233, i32 0
  %broadcast.splat1106 = shufflevector <4 x i32> %broadcast.splatinsert1105, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1095

vector.body1095:                                  ; preds = %vector.body1095, %polly.loop_header779
  %index1097 = phi i64 [ 0, %polly.loop_header779 ], [ %index.next1098, %vector.body1095 ]
  %vec.ind1103 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779 ], [ %vec.ind.next1104, %vector.body1095 ]
  %234 = mul <4 x i32> %vec.ind1103, %broadcast.splat1106
  %235 = add <4 x i32> %234, <i32 2, i32 2, i32 2, i32 2>
  %236 = urem <4 x i32> %235, <i32 60, i32 60, i32 60, i32 60>
  %237 = sitofp <4 x i32> %236 to <4 x double>
  %238 = fmul fast <4 x double> %237, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %239 = shl i64 %index1097, 3
  %240 = add i64 %239, %232
  %241 = getelementptr i8, i8* %call2, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %238, <4 x double>* %242, align 8, !alias.scope !103, !noalias !105
  %index.next1098 = add i64 %index1097, 4
  %vec.ind.next1104 = add <4 x i32> %vec.ind1103, <i32 4, i32 4, i32 4, i32 4>
  %243 = icmp eq i64 %index.next1098, 32
  br i1 %243, label %polly.loop_exit787, label %vector.body1095, !llvm.loop !106

polly.loop_exit787:                               ; preds = %vector.body1095
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next783, 32
  br i1 %exitcond892.not, label %polly.loop_header779.1, label %polly.loop_header779

polly.loop_header805:                             ; preds = %polly.loop_exit787.1.2, %polly.loop_exit813
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_exit787.1.2 ]
  %244 = mul nuw nsw i64 %polly.indvar808, 480
  %245 = trunc i64 %polly.indvar808 to i32
  %broadcast.splatinsert1183 = insertelement <4 x i32> poison, i32 %245, i32 0
  %broadcast.splat1184 = shufflevector <4 x i32> %broadcast.splatinsert1183, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %polly.loop_header805
  %index1175 = phi i64 [ 0, %polly.loop_header805 ], [ %index.next1176, %vector.body1173 ]
  %vec.ind1181 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805 ], [ %vec.ind.next1182, %vector.body1173 ]
  %246 = mul <4 x i32> %vec.ind1181, %broadcast.splat1184
  %247 = add <4 x i32> %246, <i32 1, i32 1, i32 1, i32 1>
  %248 = urem <4 x i32> %247, <i32 80, i32 80, i32 80, i32 80>
  %249 = sitofp <4 x i32> %248 to <4 x double>
  %250 = fmul fast <4 x double> %249, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %251 = shl i64 %index1175, 3
  %252 = add i64 %251, %244
  %253 = getelementptr i8, i8* %call1, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %250, <4 x double>* %254, align 8, !alias.scope !102, !noalias !107
  %index.next1176 = add i64 %index1175, 4
  %vec.ind.next1182 = add <4 x i32> %vec.ind1181, <i32 4, i32 4, i32 4, i32 4>
  %255 = icmp eq i64 %index.next1176, 32
  br i1 %255, label %polly.loop_exit813, label %vector.body1173, !llvm.loop !108

polly.loop_exit813:                               ; preds = %vector.body1173
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond886.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond886.not, label %polly.loop_header805.1, label %polly.loop_header805

polly.loop_header245.1:                           ; preds = %polly.loop_header245.1, %polly.loop_exit247
  %polly.indvar248.1 = phi i64 [ 0, %polly.loop_exit247 ], [ %polly.indvar_next249.1, %polly.loop_header245.1 ]
  %256 = add nuw nsw i64 %polly.indvar248.1, %102
  %257 = mul nuw nsw i64 %256, 480
  %258 = add nuw nsw i64 %257, %124
  %scevgep251.1 = getelementptr i8, i8* %call1, i64 %258
  %scevgep251252.1 = bitcast i8* %scevgep251.1 to double*
  %_p_scalar_253.1 = load double, double* %scevgep251252.1, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.1 = fmul fast double %_p_scalar_257.1, %_p_scalar_253.1
  %polly.access.add.Packed_MemRef_call2259.1 = add nuw nsw i64 %polly.indvar248.1, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.1
  %_p_scalar_261.1 = load double, double* %polly.access.Packed_MemRef_call2260.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_264.1, %_p_scalar_261.1
  %259 = shl i64 %256, 3
  %260 = add nuw nsw i64 %259, %114
  %scevgep265.1 = getelementptr i8, i8* %call, i64 %260
  %scevgep265266.1 = bitcast i8* %scevgep265.1 to double*
  %_p_scalar_267.1 = load double, double* %scevgep265266.1, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_267.1
  store double %p_add42.i118.1, double* %scevgep265266.1, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.1 = add nuw nsw i64 %polly.indvar248.1, 1
  %exitcond843.1.not = icmp eq i64 %polly.indvar248.1, %smin.1
  br i1 %exitcond843.1.not, label %polly.loop_exit247.1, label %polly.loop_header245.1

polly.loop_exit247.1:                             ; preds = %polly.loop_header245.1
  %polly.access.add.Packed_MemRef_call2255.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %116
  %polly.access.Packed_MemRef_call2256.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.2
  %_p_scalar_257.2 = load double, double* %polly.access.Packed_MemRef_call2256.2, align 8
  %261 = add nuw nsw i64 %117, %124
  %scevgep262.2 = getelementptr i8, i8* %call1, i64 %261
  %scevgep262263.2 = bitcast i8* %scevgep262.2 to double*
  %_p_scalar_264.2 = load double, double* %scevgep262263.2, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.2

polly.loop_header245.2:                           ; preds = %polly.loop_header245.2, %polly.loop_exit247.1
  %polly.indvar248.2 = phi i64 [ 0, %polly.loop_exit247.1 ], [ %polly.indvar_next249.2, %polly.loop_header245.2 ]
  %262 = add nuw nsw i64 %polly.indvar248.2, %102
  %263 = mul nuw nsw i64 %262, 480
  %264 = add nuw nsw i64 %263, %124
  %scevgep251.2 = getelementptr i8, i8* %call1, i64 %264
  %scevgep251252.2 = bitcast i8* %scevgep251.2 to double*
  %_p_scalar_253.2 = load double, double* %scevgep251252.2, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.2 = fmul fast double %_p_scalar_257.2, %_p_scalar_253.2
  %polly.access.add.Packed_MemRef_call2259.2 = add nuw nsw i64 %polly.indvar248.2, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.2
  %_p_scalar_261.2 = load double, double* %polly.access.Packed_MemRef_call2260.2, align 8
  %p_mul37.i114.2 = fmul fast double %_p_scalar_264.2, %_p_scalar_261.2
  %265 = shl i64 %262, 3
  %266 = add nuw nsw i64 %265, %118
  %scevgep265.2 = getelementptr i8, i8* %call, i64 %266
  %scevgep265266.2 = bitcast i8* %scevgep265.2 to double*
  %_p_scalar_267.2 = load double, double* %scevgep265266.2, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_267.2
  store double %p_add42.i118.2, double* %scevgep265266.2, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.2 = add nuw nsw i64 %polly.indvar248.2, 1
  %exitcond843.2.not = icmp eq i64 %polly.indvar248.2, %smin.2
  br i1 %exitcond843.2.not, label %polly.loop_exit247.2, label %polly.loop_header245.2

polly.loop_exit247.2:                             ; preds = %polly.loop_header245.2
  %polly.access.add.Packed_MemRef_call2255.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2254, %120
  %polly.access.Packed_MemRef_call2256.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2255.3
  %_p_scalar_257.3 = load double, double* %polly.access.Packed_MemRef_call2256.3, align 8
  %267 = add nuw nsw i64 %121, %124
  %scevgep262.3 = getelementptr i8, i8* %call1, i64 %267
  %scevgep262263.3 = bitcast i8* %scevgep262.3 to double*
  %_p_scalar_264.3 = load double, double* %scevgep262263.3, align 8, !alias.scope !71, !noalias !78
  br label %polly.loop_header245.3

polly.loop_header245.3:                           ; preds = %polly.loop_header245.3, %polly.loop_exit247.2
  %polly.indvar248.3 = phi i64 [ 0, %polly.loop_exit247.2 ], [ %polly.indvar_next249.3, %polly.loop_header245.3 ]
  %268 = add nuw nsw i64 %polly.indvar248.3, %102
  %269 = mul nuw nsw i64 %268, 480
  %270 = add nuw nsw i64 %269, %124
  %scevgep251.3 = getelementptr i8, i8* %call1, i64 %270
  %scevgep251252.3 = bitcast i8* %scevgep251.3 to double*
  %_p_scalar_253.3 = load double, double* %scevgep251252.3, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112.3 = fmul fast double %_p_scalar_257.3, %_p_scalar_253.3
  %polly.access.add.Packed_MemRef_call2259.3 = add nuw nsw i64 %polly.indvar248.3, %polly.access.mul.Packed_MemRef_call2254
  %polly.access.Packed_MemRef_call2260.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2259.3
  %_p_scalar_261.3 = load double, double* %polly.access.Packed_MemRef_call2260.3, align 8
  %p_mul37.i114.3 = fmul fast double %_p_scalar_264.3, %_p_scalar_261.3
  %271 = shl i64 %268, 3
  %272 = add nuw nsw i64 %271, %122
  %scevgep265.3 = getelementptr i8, i8* %call, i64 %272
  %scevgep265266.3 = bitcast i8* %scevgep265.3 to double*
  %_p_scalar_267.3 = load double, double* %scevgep265266.3, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_267.3
  store double %p_add42.i118.3, double* %scevgep265266.3, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next249.3 = add nuw nsw i64 %polly.indvar248.3, 1
  %exitcond843.3.not = icmp eq i64 %polly.indvar248.3, %smin.3
  br i1 %exitcond843.3.not, label %polly.loop_exit247.3, label %polly.loop_header245.3

polly.loop_exit247.3:                             ; preds = %polly.loop_header245.3
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next237, %101
  br i1 %exitcond845.not, label %polly.loop_exit235, label %polly.loop_header233

polly.loop_header418.1:                           ; preds = %polly.loop_header418.1, %polly.loop_exit420
  %polly.indvar421.1 = phi i64 [ 0, %polly.loop_exit420 ], [ %polly.indvar_next422.1, %polly.loop_header418.1 ]
  %273 = add nuw nsw i64 %polly.indvar421.1, %146
  %274 = mul nuw nsw i64 %273, 480
  %275 = add nuw nsw i64 %274, %168
  %scevgep424.1 = getelementptr i8, i8* %call1, i64 %275
  %scevgep424425.1 = bitcast i8* %scevgep424.1 to double*
  %_p_scalar_426.1 = load double, double* %scevgep424425.1, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.1 = fmul fast double %_p_scalar_430.1, %_p_scalar_426.1
  %polly.access.add.Packed_MemRef_call2273432.1 = add nuw nsw i64 %polly.indvar421.1, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.1 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.1
  %_p_scalar_434.1 = load double, double* %polly.access.Packed_MemRef_call2273433.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_437.1, %_p_scalar_434.1
  %276 = shl i64 %273, 3
  %277 = add nuw nsw i64 %276, %158
  %scevgep438.1 = getelementptr i8, i8* %call, i64 %277
  %scevgep438439.1 = bitcast i8* %scevgep438.1 to double*
  %_p_scalar_440.1 = load double, double* %scevgep438439.1, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_440.1
  store double %p_add42.i79.1, double* %scevgep438439.1, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.1 = add nuw nsw i64 %polly.indvar421.1, 1
  %exitcond859.1.not = icmp eq i64 %polly.indvar421.1, %smin858.1
  br i1 %exitcond859.1.not, label %polly.loop_exit420.1, label %polly.loop_header418.1

polly.loop_exit420.1:                             ; preds = %polly.loop_header418.1
  %polly.access.add.Packed_MemRef_call2273428.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %160
  %polly.access.Packed_MemRef_call2273429.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.2
  %_p_scalar_430.2 = load double, double* %polly.access.Packed_MemRef_call2273429.2, align 8
  %278 = add nuw nsw i64 %161, %168
  %scevgep435.2 = getelementptr i8, i8* %call1, i64 %278
  %scevgep435436.2 = bitcast i8* %scevgep435.2 to double*
  %_p_scalar_437.2 = load double, double* %scevgep435436.2, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.2

polly.loop_header418.2:                           ; preds = %polly.loop_header418.2, %polly.loop_exit420.1
  %polly.indvar421.2 = phi i64 [ 0, %polly.loop_exit420.1 ], [ %polly.indvar_next422.2, %polly.loop_header418.2 ]
  %279 = add nuw nsw i64 %polly.indvar421.2, %146
  %280 = mul nuw nsw i64 %279, 480
  %281 = add nuw nsw i64 %280, %168
  %scevgep424.2 = getelementptr i8, i8* %call1, i64 %281
  %scevgep424425.2 = bitcast i8* %scevgep424.2 to double*
  %_p_scalar_426.2 = load double, double* %scevgep424425.2, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.2 = fmul fast double %_p_scalar_430.2, %_p_scalar_426.2
  %polly.access.add.Packed_MemRef_call2273432.2 = add nuw nsw i64 %polly.indvar421.2, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.2 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.2
  %_p_scalar_434.2 = load double, double* %polly.access.Packed_MemRef_call2273433.2, align 8
  %p_mul37.i75.2 = fmul fast double %_p_scalar_437.2, %_p_scalar_434.2
  %282 = shl i64 %279, 3
  %283 = add nuw nsw i64 %282, %162
  %scevgep438.2 = getelementptr i8, i8* %call, i64 %283
  %scevgep438439.2 = bitcast i8* %scevgep438.2 to double*
  %_p_scalar_440.2 = load double, double* %scevgep438439.2, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_440.2
  store double %p_add42.i79.2, double* %scevgep438439.2, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.2 = add nuw nsw i64 %polly.indvar421.2, 1
  %exitcond859.2.not = icmp eq i64 %polly.indvar421.2, %smin858.2
  br i1 %exitcond859.2.not, label %polly.loop_exit420.2, label %polly.loop_header418.2

polly.loop_exit420.2:                             ; preds = %polly.loop_header418.2
  %polly.access.add.Packed_MemRef_call2273428.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2273427, %164
  %polly.access.Packed_MemRef_call2273429.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273428.3
  %_p_scalar_430.3 = load double, double* %polly.access.Packed_MemRef_call2273429.3, align 8
  %284 = add nuw nsw i64 %165, %168
  %scevgep435.3 = getelementptr i8, i8* %call1, i64 %284
  %scevgep435436.3 = bitcast i8* %scevgep435.3 to double*
  %_p_scalar_437.3 = load double, double* %scevgep435436.3, align 8, !alias.scope !82, !noalias !88
  br label %polly.loop_header418.3

polly.loop_header418.3:                           ; preds = %polly.loop_header418.3, %polly.loop_exit420.2
  %polly.indvar421.3 = phi i64 [ 0, %polly.loop_exit420.2 ], [ %polly.indvar_next422.3, %polly.loop_header418.3 ]
  %285 = add nuw nsw i64 %polly.indvar421.3, %146
  %286 = mul nuw nsw i64 %285, 480
  %287 = add nuw nsw i64 %286, %168
  %scevgep424.3 = getelementptr i8, i8* %call1, i64 %287
  %scevgep424425.3 = bitcast i8* %scevgep424.3 to double*
  %_p_scalar_426.3 = load double, double* %scevgep424425.3, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73.3 = fmul fast double %_p_scalar_430.3, %_p_scalar_426.3
  %polly.access.add.Packed_MemRef_call2273432.3 = add nuw nsw i64 %polly.indvar421.3, %polly.access.mul.Packed_MemRef_call2273427
  %polly.access.Packed_MemRef_call2273433.3 = getelementptr double, double* %Packed_MemRef_call2273, i64 %polly.access.add.Packed_MemRef_call2273432.3
  %_p_scalar_434.3 = load double, double* %polly.access.Packed_MemRef_call2273433.3, align 8
  %p_mul37.i75.3 = fmul fast double %_p_scalar_437.3, %_p_scalar_434.3
  %288 = shl i64 %285, 3
  %289 = add nuw nsw i64 %288, %166
  %scevgep438.3 = getelementptr i8, i8* %call, i64 %289
  %scevgep438439.3 = bitcast i8* %scevgep438.3 to double*
  %_p_scalar_440.3 = load double, double* %scevgep438439.3, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_440.3
  store double %p_add42.i79.3, double* %scevgep438439.3, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next422.3 = add nuw nsw i64 %polly.indvar421.3, 1
  %exitcond859.3.not = icmp eq i64 %polly.indvar421.3, %smin858.3
  br i1 %exitcond859.3.not, label %polly.loop_exit420.3, label %polly.loop_header418.3

polly.loop_exit420.3:                             ; preds = %polly.loop_header418.3
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next410, %145
  br i1 %exitcond861.not, label %polly.loop_exit408, label %polly.loop_header406

polly.loop_header591.1:                           ; preds = %polly.loop_header591.1, %polly.loop_exit593
  %polly.indvar594.1 = phi i64 [ 0, %polly.loop_exit593 ], [ %polly.indvar_next595.1, %polly.loop_header591.1 ]
  %290 = add nuw nsw i64 %polly.indvar594.1, %190
  %291 = mul nuw nsw i64 %290, 480
  %292 = add nuw nsw i64 %291, %212
  %scevgep597.1 = getelementptr i8, i8* %call1, i64 %292
  %scevgep597598.1 = bitcast i8* %scevgep597.1 to double*
  %_p_scalar_599.1 = load double, double* %scevgep597598.1, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.1 = fmul fast double %_p_scalar_603.1, %_p_scalar_599.1
  %polly.access.add.Packed_MemRef_call2446605.1 = add nuw nsw i64 %polly.indvar594.1, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.1 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.1
  %_p_scalar_607.1 = load double, double* %polly.access.Packed_MemRef_call2446606.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_610.1, %_p_scalar_607.1
  %293 = shl i64 %290, 3
  %294 = add nuw nsw i64 %293, %202
  %scevgep611.1 = getelementptr i8, i8* %call, i64 %294
  %scevgep611612.1 = bitcast i8* %scevgep611.1 to double*
  %_p_scalar_613.1 = load double, double* %scevgep611612.1, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_613.1
  store double %p_add42.i.1, double* %scevgep611612.1, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.1 = add nuw nsw i64 %polly.indvar594.1, 1
  %exitcond875.1.not = icmp eq i64 %polly.indvar594.1, %smin874.1
  br i1 %exitcond875.1.not, label %polly.loop_exit593.1, label %polly.loop_header591.1

polly.loop_exit593.1:                             ; preds = %polly.loop_header591.1
  %polly.access.add.Packed_MemRef_call2446601.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %204
  %polly.access.Packed_MemRef_call2446602.2 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.2
  %_p_scalar_603.2 = load double, double* %polly.access.Packed_MemRef_call2446602.2, align 8
  %295 = add nuw nsw i64 %205, %212
  %scevgep608.2 = getelementptr i8, i8* %call1, i64 %295
  %scevgep608609.2 = bitcast i8* %scevgep608.2 to double*
  %_p_scalar_610.2 = load double, double* %scevgep608609.2, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.2

polly.loop_header591.2:                           ; preds = %polly.loop_header591.2, %polly.loop_exit593.1
  %polly.indvar594.2 = phi i64 [ 0, %polly.loop_exit593.1 ], [ %polly.indvar_next595.2, %polly.loop_header591.2 ]
  %296 = add nuw nsw i64 %polly.indvar594.2, %190
  %297 = mul nuw nsw i64 %296, 480
  %298 = add nuw nsw i64 %297, %212
  %scevgep597.2 = getelementptr i8, i8* %call1, i64 %298
  %scevgep597598.2 = bitcast i8* %scevgep597.2 to double*
  %_p_scalar_599.2 = load double, double* %scevgep597598.2, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.2 = fmul fast double %_p_scalar_603.2, %_p_scalar_599.2
  %polly.access.add.Packed_MemRef_call2446605.2 = add nuw nsw i64 %polly.indvar594.2, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.2 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.2
  %_p_scalar_607.2 = load double, double* %polly.access.Packed_MemRef_call2446606.2, align 8
  %p_mul37.i.2 = fmul fast double %_p_scalar_610.2, %_p_scalar_607.2
  %299 = shl i64 %296, 3
  %300 = add nuw nsw i64 %299, %206
  %scevgep611.2 = getelementptr i8, i8* %call, i64 %300
  %scevgep611612.2 = bitcast i8* %scevgep611.2 to double*
  %_p_scalar_613.2 = load double, double* %scevgep611612.2, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_613.2
  store double %p_add42.i.2, double* %scevgep611612.2, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.2 = add nuw nsw i64 %polly.indvar594.2, 1
  %exitcond875.2.not = icmp eq i64 %polly.indvar594.2, %smin874.2
  br i1 %exitcond875.2.not, label %polly.loop_exit593.2, label %polly.loop_header591.2

polly.loop_exit593.2:                             ; preds = %polly.loop_header591.2
  %polly.access.add.Packed_MemRef_call2446601.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2446600, %208
  %polly.access.Packed_MemRef_call2446602.3 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446601.3
  %_p_scalar_603.3 = load double, double* %polly.access.Packed_MemRef_call2446602.3, align 8
  %301 = add nuw nsw i64 %209, %212
  %scevgep608.3 = getelementptr i8, i8* %call1, i64 %301
  %scevgep608609.3 = bitcast i8* %scevgep608.3 to double*
  %_p_scalar_610.3 = load double, double* %scevgep608609.3, align 8, !alias.scope !92, !noalias !98
  br label %polly.loop_header591.3

polly.loop_header591.3:                           ; preds = %polly.loop_header591.3, %polly.loop_exit593.2
  %polly.indvar594.3 = phi i64 [ 0, %polly.loop_exit593.2 ], [ %polly.indvar_next595.3, %polly.loop_header591.3 ]
  %302 = add nuw nsw i64 %polly.indvar594.3, %190
  %303 = mul nuw nsw i64 %302, 480
  %304 = add nuw nsw i64 %303, %212
  %scevgep597.3 = getelementptr i8, i8* %call1, i64 %304
  %scevgep597598.3 = bitcast i8* %scevgep597.3 to double*
  %_p_scalar_599.3 = load double, double* %scevgep597598.3, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i.3 = fmul fast double %_p_scalar_603.3, %_p_scalar_599.3
  %polly.access.add.Packed_MemRef_call2446605.3 = add nuw nsw i64 %polly.indvar594.3, %polly.access.mul.Packed_MemRef_call2446600
  %polly.access.Packed_MemRef_call2446606.3 = getelementptr double, double* %Packed_MemRef_call2446, i64 %polly.access.add.Packed_MemRef_call2446605.3
  %_p_scalar_607.3 = load double, double* %polly.access.Packed_MemRef_call2446606.3, align 8
  %p_mul37.i.3 = fmul fast double %_p_scalar_610.3, %_p_scalar_607.3
  %305 = shl i64 %302, 3
  %306 = add nuw nsw i64 %305, %210
  %scevgep611.3 = getelementptr i8, i8* %call, i64 %306
  %scevgep611612.3 = bitcast i8* %scevgep611.3 to double*
  %_p_scalar_613.3 = load double, double* %scevgep611612.3, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_613.3
  store double %p_add42.i.3, double* %scevgep611612.3, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next595.3 = add nuw nsw i64 %polly.indvar594.3, 1
  %exitcond875.3.not = icmp eq i64 %polly.indvar594.3, %smin874.3
  br i1 %exitcond875.3.not, label %polly.loop_exit593.3, label %polly.loop_header591.3

polly.loop_exit593.3:                             ; preds = %polly.loop_header591.3
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next583, %189
  br i1 %exitcond877.not, label %polly.loop_exit581, label %polly.loop_header579

polly.loop_header805.1:                           ; preds = %polly.loop_exit813, %polly.loop_exit813.1
  %polly.indvar808.1 = phi i64 [ %polly.indvar_next809.1, %polly.loop_exit813.1 ], [ 0, %polly.loop_exit813 ]
  %307 = mul nuw nsw i64 %polly.indvar808.1, 480
  %308 = trunc i64 %polly.indvar808.1 to i32
  %broadcast.splatinsert1195 = insertelement <4 x i32> poison, i32 %308, i32 0
  %broadcast.splat1196 = shufflevector <4 x i32> %broadcast.splatinsert1195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %polly.loop_header805.1
  %index1189 = phi i64 [ 0, %polly.loop_header805.1 ], [ %index.next1190, %vector.body1187 ]
  %vec.ind1193 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1 ], [ %vec.ind.next1194, %vector.body1187 ]
  %309 = add nuw nsw <4 x i64> %vec.ind1193, <i64 32, i64 32, i64 32, i64 32>
  %310 = trunc <4 x i64> %309 to <4 x i32>
  %311 = mul <4 x i32> %broadcast.splat1196, %310
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
  %index.next1190 = add i64 %index1189, 4
  %vec.ind.next1194 = add <4 x i64> %vec.ind1193, <i64 4, i64 4, i64 4, i64 4>
  %321 = icmp eq i64 %index.next1190, 28
  br i1 %321, label %polly.loop_exit813.1, label %vector.body1187, !llvm.loop !109

polly.loop_exit813.1:                             ; preds = %vector.body1187
  %polly.indvar_next809.1 = add nuw nsw i64 %polly.indvar808.1, 1
  %exitcond886.1.not = icmp eq i64 %polly.indvar_next809.1, 32
  br i1 %exitcond886.1.not, label %polly.loop_header805.1906, label %polly.loop_header805.1

polly.loop_header805.1906:                        ; preds = %polly.loop_exit813.1, %polly.loop_exit813.1917
  %polly.indvar808.1905 = phi i64 [ %polly.indvar_next809.1915, %polly.loop_exit813.1917 ], [ 0, %polly.loop_exit813.1 ]
  %322 = add nuw nsw i64 %polly.indvar808.1905, 32
  %323 = mul nuw nsw i64 %322, 480
  %324 = trunc i64 %322 to i32
  %broadcast.splatinsert1209 = insertelement <4 x i32> poison, i32 %324, i32 0
  %broadcast.splat1210 = shufflevector <4 x i32> %broadcast.splatinsert1209, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1199

vector.body1199:                                  ; preds = %vector.body1199, %polly.loop_header805.1906
  %index1201 = phi i64 [ 0, %polly.loop_header805.1906 ], [ %index.next1202, %vector.body1199 ]
  %vec.ind1207 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.1906 ], [ %vec.ind.next1208, %vector.body1199 ]
  %325 = mul <4 x i32> %vec.ind1207, %broadcast.splat1210
  %326 = add <4 x i32> %325, <i32 1, i32 1, i32 1, i32 1>
  %327 = urem <4 x i32> %326, <i32 80, i32 80, i32 80, i32 80>
  %328 = sitofp <4 x i32> %327 to <4 x double>
  %329 = fmul fast <4 x double> %328, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %330 = shl i64 %index1201, 3
  %331 = add i64 %330, %323
  %332 = getelementptr i8, i8* %call1, i64 %331
  %333 = bitcast i8* %332 to <4 x double>*
  store <4 x double> %329, <4 x double>* %333, align 8, !alias.scope !102, !noalias !107
  %index.next1202 = add i64 %index1201, 4
  %vec.ind.next1208 = add <4 x i32> %vec.ind1207, <i32 4, i32 4, i32 4, i32 4>
  %334 = icmp eq i64 %index.next1202, 32
  br i1 %334, label %polly.loop_exit813.1917, label %vector.body1199, !llvm.loop !110

polly.loop_exit813.1917:                          ; preds = %vector.body1199
  %polly.indvar_next809.1915 = add nuw nsw i64 %polly.indvar808.1905, 1
  %exitcond886.1916.not = icmp eq i64 %polly.indvar_next809.1915, 32
  br i1 %exitcond886.1916.not, label %polly.loop_header805.1.1, label %polly.loop_header805.1906

polly.loop_header805.1.1:                         ; preds = %polly.loop_exit813.1917, %polly.loop_exit813.1.1
  %polly.indvar808.1.1 = phi i64 [ %polly.indvar_next809.1.1, %polly.loop_exit813.1.1 ], [ 0, %polly.loop_exit813.1917 ]
  %335 = add nuw nsw i64 %polly.indvar808.1.1, 32
  %336 = mul nuw nsw i64 %335, 480
  %337 = trunc i64 %335 to i32
  %broadcast.splatinsert1221 = insertelement <4 x i32> poison, i32 %337, i32 0
  %broadcast.splat1222 = shufflevector <4 x i32> %broadcast.splatinsert1221, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %polly.loop_header805.1.1
  %index1215 = phi i64 [ 0, %polly.loop_header805.1.1 ], [ %index.next1216, %vector.body1213 ]
  %vec.ind1219 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.1 ], [ %vec.ind.next1220, %vector.body1213 ]
  %338 = add nuw nsw <4 x i64> %vec.ind1219, <i64 32, i64 32, i64 32, i64 32>
  %339 = trunc <4 x i64> %338 to <4 x i32>
  %340 = mul <4 x i32> %broadcast.splat1222, %339
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
  %index.next1216 = add i64 %index1215, 4
  %vec.ind.next1220 = add <4 x i64> %vec.ind1219, <i64 4, i64 4, i64 4, i64 4>
  %350 = icmp eq i64 %index.next1216, 28
  br i1 %350, label %polly.loop_exit813.1.1, label %vector.body1213, !llvm.loop !111

polly.loop_exit813.1.1:                           ; preds = %vector.body1213
  %polly.indvar_next809.1.1 = add nuw nsw i64 %polly.indvar808.1.1, 1
  %exitcond886.1.1.not = icmp eq i64 %polly.indvar_next809.1.1, 32
  br i1 %exitcond886.1.1.not, label %polly.loop_header805.2, label %polly.loop_header805.1.1

polly.loop_header805.2:                           ; preds = %polly.loop_exit813.1.1, %polly.loop_exit813.2
  %polly.indvar808.2 = phi i64 [ %polly.indvar_next809.2, %polly.loop_exit813.2 ], [ 0, %polly.loop_exit813.1.1 ]
  %351 = add nuw nsw i64 %polly.indvar808.2, 64
  %352 = mul nuw nsw i64 %351, 480
  %353 = trunc i64 %351 to i32
  %broadcast.splatinsert1235 = insertelement <4 x i32> poison, i32 %353, i32 0
  %broadcast.splat1236 = shufflevector <4 x i32> %broadcast.splatinsert1235, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %polly.loop_header805.2
  %index1227 = phi i64 [ 0, %polly.loop_header805.2 ], [ %index.next1228, %vector.body1225 ]
  %vec.ind1233 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.2 ], [ %vec.ind.next1234, %vector.body1225 ]
  %354 = mul <4 x i32> %vec.ind1233, %broadcast.splat1236
  %355 = add <4 x i32> %354, <i32 1, i32 1, i32 1, i32 1>
  %356 = urem <4 x i32> %355, <i32 80, i32 80, i32 80, i32 80>
  %357 = sitofp <4 x i32> %356 to <4 x double>
  %358 = fmul fast <4 x double> %357, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %359 = shl i64 %index1227, 3
  %360 = add i64 %359, %352
  %361 = getelementptr i8, i8* %call1, i64 %360
  %362 = bitcast i8* %361 to <4 x double>*
  store <4 x double> %358, <4 x double>* %362, align 8, !alias.scope !102, !noalias !107
  %index.next1228 = add i64 %index1227, 4
  %vec.ind.next1234 = add <4 x i32> %vec.ind1233, <i32 4, i32 4, i32 4, i32 4>
  %363 = icmp eq i64 %index.next1228, 32
  br i1 %363, label %polly.loop_exit813.2, label %vector.body1225, !llvm.loop !112

polly.loop_exit813.2:                             ; preds = %vector.body1225
  %polly.indvar_next809.2 = add nuw nsw i64 %polly.indvar808.2, 1
  %exitcond886.2.not = icmp eq i64 %polly.indvar_next809.2, 16
  br i1 %exitcond886.2.not, label %polly.loop_header805.1.2, label %polly.loop_header805.2

polly.loop_header805.1.2:                         ; preds = %polly.loop_exit813.2, %polly.loop_exit813.1.2
  %polly.indvar808.1.2 = phi i64 [ %polly.indvar_next809.1.2, %polly.loop_exit813.1.2 ], [ 0, %polly.loop_exit813.2 ]
  %364 = add nuw nsw i64 %polly.indvar808.1.2, 64
  %365 = mul nuw nsw i64 %364, 480
  %366 = trunc i64 %364 to i32
  %broadcast.splatinsert1247 = insertelement <4 x i32> poison, i32 %366, i32 0
  %broadcast.splat1248 = shufflevector <4 x i32> %broadcast.splatinsert1247, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %polly.loop_header805.1.2
  %index1241 = phi i64 [ 0, %polly.loop_header805.1.2 ], [ %index.next1242, %vector.body1239 ]
  %vec.ind1245 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.2 ], [ %vec.ind.next1246, %vector.body1239 ]
  %367 = add nuw nsw <4 x i64> %vec.ind1245, <i64 32, i64 32, i64 32, i64 32>
  %368 = trunc <4 x i64> %367 to <4 x i32>
  %369 = mul <4 x i32> %broadcast.splat1248, %368
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
  %index.next1242 = add i64 %index1241, 4
  %vec.ind.next1246 = add <4 x i64> %vec.ind1245, <i64 4, i64 4, i64 4, i64 4>
  %379 = icmp eq i64 %index.next1242, 28
  br i1 %379, label %polly.loop_exit813.1.2, label %vector.body1239, !llvm.loop !113

polly.loop_exit813.1.2:                           ; preds = %vector.body1239
  %polly.indvar_next809.1.2 = add nuw nsw i64 %polly.indvar808.1.2, 1
  %exitcond886.1.2.not = icmp eq i64 %polly.indvar_next809.1.2, 16
  br i1 %exitcond886.1.2.not, label %init_array.exit, label %polly.loop_header805.1.2

polly.loop_header779.1:                           ; preds = %polly.loop_exit787, %polly.loop_exit787.1
  %polly.indvar782.1 = phi i64 [ %polly.indvar_next783.1, %polly.loop_exit787.1 ], [ 0, %polly.loop_exit787 ]
  %380 = mul nuw nsw i64 %polly.indvar782.1, 480
  %381 = trunc i64 %polly.indvar782.1 to i32
  %broadcast.splatinsert1117 = insertelement <4 x i32> poison, i32 %381, i32 0
  %broadcast.splat1118 = shufflevector <4 x i32> %broadcast.splatinsert1117, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1109

vector.body1109:                                  ; preds = %vector.body1109, %polly.loop_header779.1
  %index1111 = phi i64 [ 0, %polly.loop_header779.1 ], [ %index.next1112, %vector.body1109 ]
  %vec.ind1115 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1 ], [ %vec.ind.next1116, %vector.body1109 ]
  %382 = add nuw nsw <4 x i64> %vec.ind1115, <i64 32, i64 32, i64 32, i64 32>
  %383 = trunc <4 x i64> %382 to <4 x i32>
  %384 = mul <4 x i32> %broadcast.splat1118, %383
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
  %index.next1112 = add i64 %index1111, 4
  %vec.ind.next1116 = add <4 x i64> %vec.ind1115, <i64 4, i64 4, i64 4, i64 4>
  %394 = icmp eq i64 %index.next1112, 28
  br i1 %394, label %polly.loop_exit787.1, label %vector.body1109, !llvm.loop !114

polly.loop_exit787.1:                             ; preds = %vector.body1109
  %polly.indvar_next783.1 = add nuw nsw i64 %polly.indvar782.1, 1
  %exitcond892.1.not = icmp eq i64 %polly.indvar_next783.1, 32
  br i1 %exitcond892.1.not, label %polly.loop_header779.1920, label %polly.loop_header779.1

polly.loop_header779.1920:                        ; preds = %polly.loop_exit787.1, %polly.loop_exit787.1931
  %polly.indvar782.1919 = phi i64 [ %polly.indvar_next783.1929, %polly.loop_exit787.1931 ], [ 0, %polly.loop_exit787.1 ]
  %395 = add nuw nsw i64 %polly.indvar782.1919, 32
  %396 = mul nuw nsw i64 %395, 480
  %397 = trunc i64 %395 to i32
  %broadcast.splatinsert1131 = insertelement <4 x i32> poison, i32 %397, i32 0
  %broadcast.splat1132 = shufflevector <4 x i32> %broadcast.splatinsert1131, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %polly.loop_header779.1920
  %index1123 = phi i64 [ 0, %polly.loop_header779.1920 ], [ %index.next1124, %vector.body1121 ]
  %vec.ind1129 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779.1920 ], [ %vec.ind.next1130, %vector.body1121 ]
  %398 = mul <4 x i32> %vec.ind1129, %broadcast.splat1132
  %399 = add <4 x i32> %398, <i32 2, i32 2, i32 2, i32 2>
  %400 = urem <4 x i32> %399, <i32 60, i32 60, i32 60, i32 60>
  %401 = sitofp <4 x i32> %400 to <4 x double>
  %402 = fmul fast <4 x double> %401, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %403 = shl i64 %index1123, 3
  %404 = add i64 %403, %396
  %405 = getelementptr i8, i8* %call2, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %402, <4 x double>* %406, align 8, !alias.scope !103, !noalias !105
  %index.next1124 = add i64 %index1123, 4
  %vec.ind.next1130 = add <4 x i32> %vec.ind1129, <i32 4, i32 4, i32 4, i32 4>
  %407 = icmp eq i64 %index.next1124, 32
  br i1 %407, label %polly.loop_exit787.1931, label %vector.body1121, !llvm.loop !115

polly.loop_exit787.1931:                          ; preds = %vector.body1121
  %polly.indvar_next783.1929 = add nuw nsw i64 %polly.indvar782.1919, 1
  %exitcond892.1930.not = icmp eq i64 %polly.indvar_next783.1929, 32
  br i1 %exitcond892.1930.not, label %polly.loop_header779.1.1, label %polly.loop_header779.1920

polly.loop_header779.1.1:                         ; preds = %polly.loop_exit787.1931, %polly.loop_exit787.1.1
  %polly.indvar782.1.1 = phi i64 [ %polly.indvar_next783.1.1, %polly.loop_exit787.1.1 ], [ 0, %polly.loop_exit787.1931 ]
  %408 = add nuw nsw i64 %polly.indvar782.1.1, 32
  %409 = mul nuw nsw i64 %408, 480
  %410 = trunc i64 %408 to i32
  %broadcast.splatinsert1143 = insertelement <4 x i32> poison, i32 %410, i32 0
  %broadcast.splat1144 = shufflevector <4 x i32> %broadcast.splatinsert1143, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.body1135, %polly.loop_header779.1.1
  %index1137 = phi i64 [ 0, %polly.loop_header779.1.1 ], [ %index.next1138, %vector.body1135 ]
  %vec.ind1141 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1.1 ], [ %vec.ind.next1142, %vector.body1135 ]
  %411 = add nuw nsw <4 x i64> %vec.ind1141, <i64 32, i64 32, i64 32, i64 32>
  %412 = trunc <4 x i64> %411 to <4 x i32>
  %413 = mul <4 x i32> %broadcast.splat1144, %412
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
  %index.next1138 = add i64 %index1137, 4
  %vec.ind.next1142 = add <4 x i64> %vec.ind1141, <i64 4, i64 4, i64 4, i64 4>
  %423 = icmp eq i64 %index.next1138, 28
  br i1 %423, label %polly.loop_exit787.1.1, label %vector.body1135, !llvm.loop !116

polly.loop_exit787.1.1:                           ; preds = %vector.body1135
  %polly.indvar_next783.1.1 = add nuw nsw i64 %polly.indvar782.1.1, 1
  %exitcond892.1.1.not = icmp eq i64 %polly.indvar_next783.1.1, 32
  br i1 %exitcond892.1.1.not, label %polly.loop_header779.2, label %polly.loop_header779.1.1

polly.loop_header779.2:                           ; preds = %polly.loop_exit787.1.1, %polly.loop_exit787.2
  %polly.indvar782.2 = phi i64 [ %polly.indvar_next783.2, %polly.loop_exit787.2 ], [ 0, %polly.loop_exit787.1.1 ]
  %424 = add nuw nsw i64 %polly.indvar782.2, 64
  %425 = mul nuw nsw i64 %424, 480
  %426 = trunc i64 %424 to i32
  %broadcast.splatinsert1157 = insertelement <4 x i32> poison, i32 %426, i32 0
  %broadcast.splat1158 = shufflevector <4 x i32> %broadcast.splatinsert1157, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.body1147, %polly.loop_header779.2
  %index1149 = phi i64 [ 0, %polly.loop_header779.2 ], [ %index.next1150, %vector.body1147 ]
  %vec.ind1155 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779.2 ], [ %vec.ind.next1156, %vector.body1147 ]
  %427 = mul <4 x i32> %vec.ind1155, %broadcast.splat1158
  %428 = add <4 x i32> %427, <i32 2, i32 2, i32 2, i32 2>
  %429 = urem <4 x i32> %428, <i32 60, i32 60, i32 60, i32 60>
  %430 = sitofp <4 x i32> %429 to <4 x double>
  %431 = fmul fast <4 x double> %430, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %432 = shl i64 %index1149, 3
  %433 = add i64 %432, %425
  %434 = getelementptr i8, i8* %call2, i64 %433
  %435 = bitcast i8* %434 to <4 x double>*
  store <4 x double> %431, <4 x double>* %435, align 8, !alias.scope !103, !noalias !105
  %index.next1150 = add i64 %index1149, 4
  %vec.ind.next1156 = add <4 x i32> %vec.ind1155, <i32 4, i32 4, i32 4, i32 4>
  %436 = icmp eq i64 %index.next1150, 32
  br i1 %436, label %polly.loop_exit787.2, label %vector.body1147, !llvm.loop !117

polly.loop_exit787.2:                             ; preds = %vector.body1147
  %polly.indvar_next783.2 = add nuw nsw i64 %polly.indvar782.2, 1
  %exitcond892.2.not = icmp eq i64 %polly.indvar_next783.2, 16
  br i1 %exitcond892.2.not, label %polly.loop_header779.1.2, label %polly.loop_header779.2

polly.loop_header779.1.2:                         ; preds = %polly.loop_exit787.2, %polly.loop_exit787.1.2
  %polly.indvar782.1.2 = phi i64 [ %polly.indvar_next783.1.2, %polly.loop_exit787.1.2 ], [ 0, %polly.loop_exit787.2 ]
  %437 = add nuw nsw i64 %polly.indvar782.1.2, 64
  %438 = mul nuw nsw i64 %437, 480
  %439 = trunc i64 %437 to i32
  %broadcast.splatinsert1169 = insertelement <4 x i32> poison, i32 %439, i32 0
  %broadcast.splat1170 = shufflevector <4 x i32> %broadcast.splatinsert1169, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1161

vector.body1161:                                  ; preds = %vector.body1161, %polly.loop_header779.1.2
  %index1163 = phi i64 [ 0, %polly.loop_header779.1.2 ], [ %index.next1164, %vector.body1161 ]
  %vec.ind1167 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1.2 ], [ %vec.ind.next1168, %vector.body1161 ]
  %440 = add nuw nsw <4 x i64> %vec.ind1167, <i64 32, i64 32, i64 32, i64 32>
  %441 = trunc <4 x i64> %440 to <4 x i32>
  %442 = mul <4 x i32> %broadcast.splat1170, %441
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
  %index.next1164 = add i64 %index1163, 4
  %vec.ind.next1168 = add <4 x i64> %vec.ind1167, <i64 4, i64 4, i64 4, i64 4>
  %452 = icmp eq i64 %index.next1164, 28
  br i1 %452, label %polly.loop_exit787.1.2, label %vector.body1161, !llvm.loop !118

polly.loop_exit787.1.2:                           ; preds = %vector.body1161
  %polly.indvar_next783.1.2 = add nuw nsw i64 %polly.indvar782.1.2, 1
  %exitcond892.1.2.not = icmp eq i64 %polly.indvar_next783.1.2, 16
  br i1 %exitcond892.1.2.not, label %polly.loop_header805, label %polly.loop_header779.1.2

polly.loop_header752.1:                           ; preds = %polly.loop_exit760, %polly.loop_exit760.1
  %polly.indvar755.1 = phi i64 [ %polly.indvar_next756.1, %polly.loop_exit760.1 ], [ 0, %polly.loop_exit760 ]
  %453 = mul nuw nsw i64 %polly.indvar755.1, 640
  %454 = trunc i64 %polly.indvar755.1 to i32
  %broadcast.splatinsert1003 = insertelement <4 x i32> poison, i32 %454, i32 0
  %broadcast.splat1004 = shufflevector <4 x i32> %broadcast.splatinsert1003, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body995

vector.body995:                                   ; preds = %vector.body995, %polly.loop_header752.1
  %index997 = phi i64 [ 0, %polly.loop_header752.1 ], [ %index.next998, %vector.body995 ]
  %vec.ind1001 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1 ], [ %vec.ind.next1002, %vector.body995 ]
  %455 = add nuw nsw <4 x i64> %vec.ind1001, <i64 32, i64 32, i64 32, i64 32>
  %456 = trunc <4 x i64> %455 to <4 x i32>
  %457 = mul <4 x i32> %broadcast.splat1004, %456
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
  %index.next998 = add i64 %index997, 4
  %vec.ind.next1002 = add <4 x i64> %vec.ind1001, <i64 4, i64 4, i64 4, i64 4>
  %467 = icmp eq i64 %index.next998, 32
  br i1 %467, label %polly.loop_exit760.1, label %vector.body995, !llvm.loop !119

polly.loop_exit760.1:                             ; preds = %vector.body995
  %polly.indvar_next756.1 = add nuw nsw i64 %polly.indvar755.1, 1
  %exitcond901.1.not = icmp eq i64 %polly.indvar_next756.1, 32
  br i1 %exitcond901.1.not, label %polly.loop_header752.2, label %polly.loop_header752.1

polly.loop_header752.2:                           ; preds = %polly.loop_exit760.1, %polly.loop_exit760.2
  %polly.indvar755.2 = phi i64 [ %polly.indvar_next756.2, %polly.loop_exit760.2 ], [ 0, %polly.loop_exit760.1 ]
  %468 = mul nuw nsw i64 %polly.indvar755.2, 640
  %469 = trunc i64 %polly.indvar755.2 to i32
  %broadcast.splatinsert1015 = insertelement <4 x i32> poison, i32 %469, i32 0
  %broadcast.splat1016 = shufflevector <4 x i32> %broadcast.splatinsert1015, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1007

vector.body1007:                                  ; preds = %vector.body1007, %polly.loop_header752.2
  %index1009 = phi i64 [ 0, %polly.loop_header752.2 ], [ %index.next1010, %vector.body1007 ]
  %vec.ind1013 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2 ], [ %vec.ind.next1014, %vector.body1007 ]
  %470 = add nuw nsw <4 x i64> %vec.ind1013, <i64 64, i64 64, i64 64, i64 64>
  %471 = trunc <4 x i64> %470 to <4 x i32>
  %472 = mul <4 x i32> %broadcast.splat1016, %471
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
  %index.next1010 = add i64 %index1009, 4
  %vec.ind.next1014 = add <4 x i64> %vec.ind1013, <i64 4, i64 4, i64 4, i64 4>
  %482 = icmp eq i64 %index.next1010, 16
  br i1 %482, label %polly.loop_exit760.2, label %vector.body1007, !llvm.loop !120

polly.loop_exit760.2:                             ; preds = %vector.body1007
  %polly.indvar_next756.2 = add nuw nsw i64 %polly.indvar755.2, 1
  %exitcond901.2.not = icmp eq i64 %polly.indvar_next756.2, 32
  br i1 %exitcond901.2.not, label %polly.loop_header752.1934, label %polly.loop_header752.2

polly.loop_header752.1934:                        ; preds = %polly.loop_exit760.2, %polly.loop_exit760.1945
  %polly.indvar755.1933 = phi i64 [ %polly.indvar_next756.1943, %polly.loop_exit760.1945 ], [ 0, %polly.loop_exit760.2 ]
  %483 = add nuw nsw i64 %polly.indvar755.1933, 32
  %484 = mul nuw nsw i64 %483, 640
  %485 = trunc i64 %483 to i32
  %broadcast.splatinsert1029 = insertelement <4 x i32> poison, i32 %485, i32 0
  %broadcast.splat1030 = shufflevector <4 x i32> %broadcast.splatinsert1029, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1019

vector.body1019:                                  ; preds = %vector.body1019, %polly.loop_header752.1934
  %index1021 = phi i64 [ 0, %polly.loop_header752.1934 ], [ %index.next1022, %vector.body1019 ]
  %vec.ind1027 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.1934 ], [ %vec.ind.next1028, %vector.body1019 ]
  %486 = mul <4 x i32> %vec.ind1027, %broadcast.splat1030
  %487 = add <4 x i32> %486, <i32 3, i32 3, i32 3, i32 3>
  %488 = urem <4 x i32> %487, <i32 80, i32 80, i32 80, i32 80>
  %489 = sitofp <4 x i32> %488 to <4 x double>
  %490 = fmul fast <4 x double> %489, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %491 = shl i64 %index1021, 3
  %492 = add nuw nsw i64 %491, %484
  %493 = getelementptr i8, i8* %call, i64 %492
  %494 = bitcast i8* %493 to <4 x double>*
  store <4 x double> %490, <4 x double>* %494, align 8, !alias.scope !99, !noalias !101
  %index.next1022 = add i64 %index1021, 4
  %vec.ind.next1028 = add <4 x i32> %vec.ind1027, <i32 4, i32 4, i32 4, i32 4>
  %495 = icmp eq i64 %index.next1022, 32
  br i1 %495, label %polly.loop_exit760.1945, label %vector.body1019, !llvm.loop !121

polly.loop_exit760.1945:                          ; preds = %vector.body1019
  %polly.indvar_next756.1943 = add nuw nsw i64 %polly.indvar755.1933, 1
  %exitcond901.1944.not = icmp eq i64 %polly.indvar_next756.1943, 32
  br i1 %exitcond901.1944.not, label %polly.loop_header752.1.1, label %polly.loop_header752.1934

polly.loop_header752.1.1:                         ; preds = %polly.loop_exit760.1945, %polly.loop_exit760.1.1
  %polly.indvar755.1.1 = phi i64 [ %polly.indvar_next756.1.1, %polly.loop_exit760.1.1 ], [ 0, %polly.loop_exit760.1945 ]
  %496 = add nuw nsw i64 %polly.indvar755.1.1, 32
  %497 = mul nuw nsw i64 %496, 640
  %498 = trunc i64 %496 to i32
  %broadcast.splatinsert1041 = insertelement <4 x i32> poison, i32 %498, i32 0
  %broadcast.splat1042 = shufflevector <4 x i32> %broadcast.splatinsert1041, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %polly.loop_header752.1.1
  %index1035 = phi i64 [ 0, %polly.loop_header752.1.1 ], [ %index.next1036, %vector.body1033 ]
  %vec.ind1039 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.1 ], [ %vec.ind.next1040, %vector.body1033 ]
  %499 = add nuw nsw <4 x i64> %vec.ind1039, <i64 32, i64 32, i64 32, i64 32>
  %500 = trunc <4 x i64> %499 to <4 x i32>
  %501 = mul <4 x i32> %broadcast.splat1042, %500
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
  %index.next1036 = add i64 %index1035, 4
  %vec.ind.next1040 = add <4 x i64> %vec.ind1039, <i64 4, i64 4, i64 4, i64 4>
  %511 = icmp eq i64 %index.next1036, 32
  br i1 %511, label %polly.loop_exit760.1.1, label %vector.body1033, !llvm.loop !122

polly.loop_exit760.1.1:                           ; preds = %vector.body1033
  %polly.indvar_next756.1.1 = add nuw nsw i64 %polly.indvar755.1.1, 1
  %exitcond901.1.1.not = icmp eq i64 %polly.indvar_next756.1.1, 32
  br i1 %exitcond901.1.1.not, label %polly.loop_header752.2.1, label %polly.loop_header752.1.1

polly.loop_header752.2.1:                         ; preds = %polly.loop_exit760.1.1, %polly.loop_exit760.2.1
  %polly.indvar755.2.1 = phi i64 [ %polly.indvar_next756.2.1, %polly.loop_exit760.2.1 ], [ 0, %polly.loop_exit760.1.1 ]
  %512 = add nuw nsw i64 %polly.indvar755.2.1, 32
  %513 = mul nuw nsw i64 %512, 640
  %514 = trunc i64 %512 to i32
  %broadcast.splatinsert1053 = insertelement <4 x i32> poison, i32 %514, i32 0
  %broadcast.splat1054 = shufflevector <4 x i32> %broadcast.splatinsert1053, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1045

vector.body1045:                                  ; preds = %vector.body1045, %polly.loop_header752.2.1
  %index1047 = phi i64 [ 0, %polly.loop_header752.2.1 ], [ %index.next1048, %vector.body1045 ]
  %vec.ind1051 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2.1 ], [ %vec.ind.next1052, %vector.body1045 ]
  %515 = add nuw nsw <4 x i64> %vec.ind1051, <i64 64, i64 64, i64 64, i64 64>
  %516 = trunc <4 x i64> %515 to <4 x i32>
  %517 = mul <4 x i32> %broadcast.splat1054, %516
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
  %index.next1048 = add i64 %index1047, 4
  %vec.ind.next1052 = add <4 x i64> %vec.ind1051, <i64 4, i64 4, i64 4, i64 4>
  %527 = icmp eq i64 %index.next1048, 16
  br i1 %527, label %polly.loop_exit760.2.1, label %vector.body1045, !llvm.loop !123

polly.loop_exit760.2.1:                           ; preds = %vector.body1045
  %polly.indvar_next756.2.1 = add nuw nsw i64 %polly.indvar755.2.1, 1
  %exitcond901.2.1.not = icmp eq i64 %polly.indvar_next756.2.1, 32
  br i1 %exitcond901.2.1.not, label %polly.loop_header752.2948, label %polly.loop_header752.2.1

polly.loop_header752.2948:                        ; preds = %polly.loop_exit760.2.1, %polly.loop_exit760.2959
  %polly.indvar755.2947 = phi i64 [ %polly.indvar_next756.2957, %polly.loop_exit760.2959 ], [ 0, %polly.loop_exit760.2.1 ]
  %528 = add nuw nsw i64 %polly.indvar755.2947, 64
  %529 = mul nuw nsw i64 %528, 640
  %530 = trunc i64 %528 to i32
  %broadcast.splatinsert1067 = insertelement <4 x i32> poison, i32 %530, i32 0
  %broadcast.splat1068 = shufflevector <4 x i32> %broadcast.splatinsert1067, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1057

vector.body1057:                                  ; preds = %vector.body1057, %polly.loop_header752.2948
  %index1059 = phi i64 [ 0, %polly.loop_header752.2948 ], [ %index.next1060, %vector.body1057 ]
  %vec.ind1065 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.2948 ], [ %vec.ind.next1066, %vector.body1057 ]
  %531 = mul <4 x i32> %vec.ind1065, %broadcast.splat1068
  %532 = add <4 x i32> %531, <i32 3, i32 3, i32 3, i32 3>
  %533 = urem <4 x i32> %532, <i32 80, i32 80, i32 80, i32 80>
  %534 = sitofp <4 x i32> %533 to <4 x double>
  %535 = fmul fast <4 x double> %534, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %536 = shl i64 %index1059, 3
  %537 = add nuw nsw i64 %536, %529
  %538 = getelementptr i8, i8* %call, i64 %537
  %539 = bitcast i8* %538 to <4 x double>*
  store <4 x double> %535, <4 x double>* %539, align 8, !alias.scope !99, !noalias !101
  %index.next1060 = add i64 %index1059, 4
  %vec.ind.next1066 = add <4 x i32> %vec.ind1065, <i32 4, i32 4, i32 4, i32 4>
  %540 = icmp eq i64 %index.next1060, 32
  br i1 %540, label %polly.loop_exit760.2959, label %vector.body1057, !llvm.loop !124

polly.loop_exit760.2959:                          ; preds = %vector.body1057
  %polly.indvar_next756.2957 = add nuw nsw i64 %polly.indvar755.2947, 1
  %exitcond901.2958.not = icmp eq i64 %polly.indvar_next756.2957, 16
  br i1 %exitcond901.2958.not, label %polly.loop_header752.1.2, label %polly.loop_header752.2948

polly.loop_header752.1.2:                         ; preds = %polly.loop_exit760.2959, %polly.loop_exit760.1.2
  %polly.indvar755.1.2 = phi i64 [ %polly.indvar_next756.1.2, %polly.loop_exit760.1.2 ], [ 0, %polly.loop_exit760.2959 ]
  %541 = add nuw nsw i64 %polly.indvar755.1.2, 64
  %542 = mul nuw nsw i64 %541, 640
  %543 = trunc i64 %541 to i32
  %broadcast.splatinsert1079 = insertelement <4 x i32> poison, i32 %543, i32 0
  %broadcast.splat1080 = shufflevector <4 x i32> %broadcast.splatinsert1079, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1071

vector.body1071:                                  ; preds = %vector.body1071, %polly.loop_header752.1.2
  %index1073 = phi i64 [ 0, %polly.loop_header752.1.2 ], [ %index.next1074, %vector.body1071 ]
  %vec.ind1077 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.2 ], [ %vec.ind.next1078, %vector.body1071 ]
  %544 = add nuw nsw <4 x i64> %vec.ind1077, <i64 32, i64 32, i64 32, i64 32>
  %545 = trunc <4 x i64> %544 to <4 x i32>
  %546 = mul <4 x i32> %broadcast.splat1080, %545
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
  %index.next1074 = add i64 %index1073, 4
  %vec.ind.next1078 = add <4 x i64> %vec.ind1077, <i64 4, i64 4, i64 4, i64 4>
  %556 = icmp eq i64 %index.next1074, 32
  br i1 %556, label %polly.loop_exit760.1.2, label %vector.body1071, !llvm.loop !125

polly.loop_exit760.1.2:                           ; preds = %vector.body1071
  %polly.indvar_next756.1.2 = add nuw nsw i64 %polly.indvar755.1.2, 1
  %exitcond901.1.2.not = icmp eq i64 %polly.indvar_next756.1.2, 16
  br i1 %exitcond901.1.2.not, label %polly.loop_header752.2.2, label %polly.loop_header752.1.2

polly.loop_header752.2.2:                         ; preds = %polly.loop_exit760.1.2, %polly.loop_exit760.2.2
  %polly.indvar755.2.2 = phi i64 [ %polly.indvar_next756.2.2, %polly.loop_exit760.2.2 ], [ 0, %polly.loop_exit760.1.2 ]
  %557 = add nuw nsw i64 %polly.indvar755.2.2, 64
  %558 = mul nuw nsw i64 %557, 640
  %559 = trunc i64 %557 to i32
  %broadcast.splatinsert1091 = insertelement <4 x i32> poison, i32 %559, i32 0
  %broadcast.splat1092 = shufflevector <4 x i32> %broadcast.splatinsert1091, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1083

vector.body1083:                                  ; preds = %vector.body1083, %polly.loop_header752.2.2
  %index1085 = phi i64 [ 0, %polly.loop_header752.2.2 ], [ %index.next1086, %vector.body1083 ]
  %vec.ind1089 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2.2 ], [ %vec.ind.next1090, %vector.body1083 ]
  %560 = add nuw nsw <4 x i64> %vec.ind1089, <i64 64, i64 64, i64 64, i64 64>
  %561 = trunc <4 x i64> %560 to <4 x i32>
  %562 = mul <4 x i32> %broadcast.splat1092, %561
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
  %index.next1086 = add i64 %index1085, 4
  %vec.ind.next1090 = add <4 x i64> %vec.ind1089, <i64 4, i64 4, i64 4, i64 4>
  %572 = icmp eq i64 %index.next1086, 16
  br i1 %572, label %polly.loop_exit760.2.2, label %vector.body1083, !llvm.loop !126

polly.loop_exit760.2.2:                           ; preds = %vector.body1083
  %polly.indvar_next756.2.2 = add nuw nsw i64 %polly.indvar755.2.2, 1
  %exitcond901.2.2.not = icmp eq i64 %polly.indvar_next756.2.2, 16
  br i1 %exitcond901.2.2.not, label %polly.loop_header779, label %polly.loop_header752.2.2
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
!21 = distinct !{!"B"}
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 20}
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
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !45, !46, !57}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.size", i32 4}
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
