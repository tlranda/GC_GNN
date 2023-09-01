; ModuleID = 'syr2k_recreations//mmp_syr2k_S_101.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_101.c"
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
  %scevgep968 = getelementptr i8, i8* %call2, i64 %12
  %scevgep967 = getelementptr i8, i8* %call2, i64 %11
  %scevgep966 = getelementptr i8, i8* %call1, i64 %12
  %scevgep965 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep965, %scevgep968
  %bound1 = icmp ult i8* %scevgep967, %scevgep966
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
  br i1 %exitcond18.not.i, label %vector.ph972, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph972:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert979 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat980 = shufflevector <4 x i64> %broadcast.splatinsert979, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %vector.ph972
  %index973 = phi i64 [ 0, %vector.ph972 ], [ %index.next974, %vector.body971 ]
  %vec.ind977 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph972 ], [ %vec.ind.next978, %vector.body971 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind977, %broadcast.splat980
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv7.i, i64 %index973
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next974 = add i64 %index973, 4
  %vec.ind.next978 = add <4 x i64> %vec.ind977, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next974, 80
  br i1 %40, label %for.inc41.i, label %vector.body971, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body971
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph972, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1325, label %vector.ph1254

vector.ph1254:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1253

vector.body1253:                                  ; preds = %vector.body1253, %vector.ph1254
  %index1255 = phi i64 [ 0, %vector.ph1254 ], [ %index.next1256, %vector.body1253 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i, i64 %index1255
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1256 = add i64 %index1255, 4
  %46 = icmp eq i64 %index.next1256, %n.vec
  br i1 %46, label %middle.block1251, label %vector.body1253, !llvm.loop !18

middle.block1251:                                 ; preds = %vector.body1253
  %cmp.n1258 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1258, label %for.inc6.i, label %for.body3.i46.preheader1325

for.body3.i46.preheader1325:                      ; preds = %for.body3.i46.preheader, %middle.block1251
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1251 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1325, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1325 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1251, %for.cond1.preheader.i45
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
  %min.iters.check1274 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1274, label %for.body3.i60.preheader1324, label %vector.ph1275

vector.ph1275:                                    ; preds = %for.body3.i60.preheader
  %n.vec1277 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %vector.ph1275
  %index1278 = phi i64 [ 0, %vector.ph1275 ], [ %index.next1279, %vector.body1273 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i52, i64 %index1278
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1282 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1282, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1279 = add i64 %index1278, 4
  %57 = icmp eq i64 %index.next1279, %n.vec1277
  br i1 %57, label %middle.block1271, label %vector.body1273, !llvm.loop !60

middle.block1271:                                 ; preds = %vector.body1273
  %cmp.n1281 = icmp eq i64 %indvars.iv21.i52, %n.vec1277
  br i1 %cmp.n1281, label %for.inc6.i63, label %for.body3.i60.preheader1324

for.body3.i60.preheader1324:                      ; preds = %for.body3.i60.preheader, %middle.block1271
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1277, %middle.block1271 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1324, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1324 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !61

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1271, %for.cond1.preheader.i54
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
  %min.iters.check1300 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1300, label %for.body3.i99.preheader1323, label %vector.ph1301

vector.ph1301:                                    ; preds = %for.body3.i99.preheader
  %n.vec1303 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %vector.ph1301
  %index1304 = phi i64 [ 0, %vector.ph1301 ], [ %index.next1305, %vector.body1299 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i91, i64 %index1304
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1308 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1308, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1305 = add i64 %index1304, 4
  %68 = icmp eq i64 %index.next1305, %n.vec1303
  br i1 %68, label %middle.block1297, label %vector.body1299, !llvm.loop !62

middle.block1297:                                 ; preds = %vector.body1299
  %cmp.n1307 = icmp eq i64 %indvars.iv21.i91, %n.vec1303
  br i1 %cmp.n1307, label %for.inc6.i102, label %for.body3.i99.preheader1323

for.body3.i99.preheader1323:                      ; preds = %for.body3.i99.preheader, %middle.block1297
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1303, %middle.block1297 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1323, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1323 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !63

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1297, %for.cond1.preheader.i93
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
  %indvar1312 = phi i64 [ %indvar.next1313, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1312, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1314 = icmp ult i64 %88, 4
  br i1 %min.iters.check1314, label %polly.loop_header191.preheader, label %vector.ph1315

vector.ph1315:                                    ; preds = %polly.loop_header
  %n.vec1317 = and i64 %88, -4
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %vector.ph1315
  %index1318 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1319, %vector.body1311 ]
  %90 = shl nuw nsw i64 %index1318, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !68, !noalias !70
  %93 = fmul fast <4 x double> %wide.load1322, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !68, !noalias !70
  %index.next1319 = add i64 %index1318, 4
  %95 = icmp eq i64 %index.next1319, %n.vec1317
  br i1 %95, label %middle.block1309, label %vector.body1311, !llvm.loop !74

middle.block1309:                                 ; preds = %vector.body1311
  %cmp.n1321 = icmp eq i64 %88, %n.vec1317
  br i1 %cmp.n1321, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1309
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1317, %middle.block1309 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1309
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond846.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1313 = add i64 %indvar1312, 1
  br i1 %exitcond846.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond845.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond845.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !75

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit223
  %indvars.iv838 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next839, %polly.loop_exit223 ]
  %indvars.iv836 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next837, %polly.loop_exit223 ]
  %indvars.iv = phi i64 [ 80, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit223 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit223 ]
  %97 = mul nuw nsw i64 %polly.indvar202, 20
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %98 = mul nsw i64 %polly.indvar202, -20
  %99 = shl nuw nsw i64 %polly.indvar202, 1
  %pexp.p_div_q = udiv i64 %99, 5
  br label %polly.loop_header221

polly.loop_exit223:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %indvars.iv.next837 = add nsw i64 %indvars.iv836, -20
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 20
  %exitcond844.not = icmp eq i64 %polly.indvar_next203, 4
  br i1 %exitcond844.not, label %polly.exiting, label %polly.loop_header199

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
  %100 = add nuw nsw i64 %polly.indvar214, %97
  %polly.access.mul.call2218 = mul nuw nsw i64 %100, 60
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
  %polly.indvar224 = phi i64 [ %pexp.p_div_q, %polly.loop_exit207 ], [ 1, %polly.loop_exit229 ]
  %101 = mul nuw nsw i64 %polly.indvar224, 50
  %102 = sub nsw i64 %97, %101
  %103 = icmp sgt i64 %102, 0
  %104 = select i1 %103, i64 %102, i64 0
  %105 = mul nuw nsw i64 %polly.indvar224, -50
  %106 = icmp slt i64 %105, -30
  %107 = select i1 %106, i64 %105, i64 -30
  %108 = add nsw i64 %107, 79
  %polly.loop_guard.not = icmp sgt i64 %104, %108
  br i1 %polly.loop_guard.not, label %polly.loop_exit229, label %polly.loop_header227.preheader

polly.loop_header227.preheader:                   ; preds = %polly.loop_header221
  %109 = sub nsw i64 %indvars.iv838, %101
  %smax = call i64 @llvm.smax.i64(i64 %109, i64 0)
  %110 = add i64 %indvars.iv836, %smax
  %111 = add i64 %110, %101
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.loop_cond226 = icmp eq i64 %polly.indvar224, 0
  br i1 %polly.loop_cond226, label %polly.loop_header221, label %polly.loop_exit223

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header227.preheader ]
  %112 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep247 = getelementptr i8, i8* %call1, i64 %112
  %polly.access.mul.Packed_MemRef_call2251 = mul nuw nsw i64 %polly.indvar230, 80
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit242
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next231, 60
  br i1 %exitcond843.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit242, %polly.loop_header227
  %indvars.iv840 = phi i64 [ %indvars.iv.next841, %polly.loop_exit242 ], [ %111, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit242 ], [ %104, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv840, i64 19)
  %113 = add nuw i64 %polly.indvar236, %101
  %114 = add i64 %113, %98
  %polly.loop_guard243960 = icmp sgt i64 %114, -1
  br i1 %polly.loop_guard243960, label %polly.loop_header240.preheader, label %polly.loop_exit242

polly.loop_header240.preheader:                   ; preds = %polly.loop_header233
  %polly.access.add.Packed_MemRef_call2252 = add nsw i64 %polly.access.mul.Packed_MemRef_call2251, %114
  %polly.access.Packed_MemRef_call2253 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252
  %_p_scalar_254 = load double, double* %polly.access.Packed_MemRef_call2253, align 8
  %115 = mul i64 %113, 480
  %scevgep260 = getelementptr i8, i8* %scevgep247, i64 %115
  %scevgep260261 = bitcast i8* %scevgep260 to double*
  %_p_scalar_262 = load double, double* %scevgep260261, align 8, !alias.scope !71, !noalias !78
  %116 = mul i64 %113, 640
  br label %polly.loop_header240

polly.loop_exit242:                               ; preds = %polly.loop_header240, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp ult i64 %polly.indvar236, %108
  %indvars.iv.next841 = add i64 %indvars.iv840, 1
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header240:                             ; preds = %polly.loop_header240.preheader, %polly.loop_header240
  %polly.indvar244 = phi i64 [ %polly.indvar_next245, %polly.loop_header240 ], [ 0, %polly.loop_header240.preheader ]
  %117 = add nuw nsw i64 %polly.indvar244, %97
  %118 = mul nuw nsw i64 %117, 480
  %scevgep248 = getelementptr i8, i8* %scevgep247, i64 %118
  %scevgep248249 = bitcast i8* %scevgep248 to double*
  %_p_scalar_250 = load double, double* %scevgep248249, align 8, !alias.scope !71, !noalias !78
  %p_mul27.i112 = fmul fast double %_p_scalar_254, %_p_scalar_250
  %polly.access.add.Packed_MemRef_call2256 = add nuw nsw i64 %polly.indvar244, %polly.access.mul.Packed_MemRef_call2251
  %polly.access.Packed_MemRef_call2257 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256
  %_p_scalar_258 = load double, double* %polly.access.Packed_MemRef_call2257, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_262, %_p_scalar_258
  %119 = shl i64 %117, 3
  %120 = add i64 %119, %116
  %scevgep263 = getelementptr i8, i8* %call, i64 %120
  %scevgep263264 = bitcast i8* %scevgep263 to double*
  %_p_scalar_265 = load double, double* %scevgep263264, align 8, !alias.scope !68, !noalias !70
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_265
  store double %p_add42.i118, double* %scevgep263264, align 8, !alias.scope !68, !noalias !70
  %polly.indvar_next245 = add nuw nsw i64 %polly.indvar244, 1
  %exitcond842.not = icmp eq i64 %polly.indvar244, %smin
  br i1 %exitcond842.not, label %polly.loop_exit242, label %polly.loop_header240

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit395
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1286 = phi i64 [ %indvar.next1287, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %121 = add i64 %indvar1286, 1
  %122 = mul nuw nsw i64 %polly.indvar357, 640
  %scevgep366 = getelementptr i8, i8* %call, i64 %122
  %min.iters.check1288 = icmp ult i64 %121, 4
  br i1 %min.iters.check1288, label %polly.loop_header360.preheader, label %vector.ph1289

vector.ph1289:                                    ; preds = %polly.loop_header354
  %n.vec1291 = and i64 %121, -4
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.body1285, %vector.ph1289
  %index1292 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1293, %vector.body1285 ]
  %123 = shl nuw nsw i64 %index1292, 3
  %124 = getelementptr i8, i8* %scevgep366, i64 %123
  %125 = bitcast i8* %124 to <4 x double>*
  %wide.load1296 = load <4 x double>, <4 x double>* %125, align 8, !alias.scope !79, !noalias !81
  %126 = fmul fast <4 x double> %wide.load1296, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %127 = bitcast i8* %124 to <4 x double>*
  store <4 x double> %126, <4 x double>* %127, align 8, !alias.scope !79, !noalias !81
  %index.next1293 = add i64 %index1292, 4
  %128 = icmp eq i64 %index.next1293, %n.vec1291
  br i1 %128, label %middle.block1283, label %vector.body1285, !llvm.loop !85

middle.block1283:                                 ; preds = %vector.body1285
  %cmp.n1295 = icmp eq i64 %121, %n.vec1291
  br i1 %cmp.n1295, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1283
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1291, %middle.block1283 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1283
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next358, 80
  %indvar.next1287 = add i64 %indvar1286, 1
  br i1 %exitcond863.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %129 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %129
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !79, !noalias !81
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond862.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !86

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit395
  %indvars.iv853 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next854, %polly.loop_exit395 ]
  %indvars.iv851 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next852, %polly.loop_exit395 ]
  %indvars.iv847 = phi i64 [ 80, %polly.loop_header370.preheader ], [ %indvars.iv.next848, %polly.loop_exit395 ]
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %polly.indvar_next374, %polly.loop_exit395 ]
  %130 = mul nuw nsw i64 %polly.indvar373, 20
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_exit384
  %131 = mul nsw i64 %polly.indvar373, -20
  %132 = shl nuw nsw i64 %polly.indvar373, 1
  %pexp.p_div_q392 = udiv i64 %132, 5
  br label %polly.loop_header393

polly.loop_exit395:                               ; preds = %polly.loop_exit401
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %indvars.iv.next848 = add nsw i64 %indvars.iv847, -20
  %indvars.iv.next852 = add nsw i64 %indvars.iv851, -20
  %indvars.iv.next854 = add nuw nsw i64 %indvars.iv853, 20
  %exitcond861.not = icmp eq i64 %polly.indvar_next374, 4
  br i1 %exitcond861.not, label %polly.exiting269, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_exit384, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_exit384 ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar379, 80
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond850.not = icmp eq i64 %polly.indvar_next380, 60
  br i1 %exitcond850.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header376
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header376 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %133 = add nuw nsw i64 %polly.indvar385, %130
  %polly.access.mul.call2389 = mul nuw nsw i64 %133, 60
  %polly.access.add.call2390 = add nuw nsw i64 %polly.access.mul.call2389, %polly.indvar379
  %polly.access.call2391 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2390
  %polly.access.call2391.load = load double, double* %polly.access.call2391, align 8, !alias.scope !83, !noalias !87
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar385, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2391.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next386, %indvars.iv847
  br i1 %exitcond849.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header393:                             ; preds = %polly.loop_exit401, %polly.loop_exit378
  %polly.indvar396 = phi i64 [ %pexp.p_div_q392, %polly.loop_exit378 ], [ 1, %polly.loop_exit401 ]
  %134 = mul nuw nsw i64 %polly.indvar396, 50
  %135 = sub nsw i64 %130, %134
  %136 = icmp sgt i64 %135, 0
  %137 = select i1 %136, i64 %135, i64 0
  %138 = mul nuw nsw i64 %polly.indvar396, -50
  %139 = icmp slt i64 %138, -30
  %140 = select i1 %139, i64 %138, i64 -30
  %141 = add nsw i64 %140, 79
  %polly.loop_guard409.not = icmp sgt i64 %137, %141
  br i1 %polly.loop_guard409.not, label %polly.loop_exit401, label %polly.loop_header399.preheader

polly.loop_header399.preheader:                   ; preds = %polly.loop_header393
  %142 = sub nsw i64 %indvars.iv853, %134
  %smax855 = call i64 @llvm.smax.i64(i64 %142, i64 0)
  %143 = add i64 %indvars.iv851, %smax855
  %144 = add i64 %143, %134
  br label %polly.loop_header399

polly.loop_exit401:                               ; preds = %polly.loop_exit408, %polly.loop_header393
  %polly.loop_cond398 = icmp eq i64 %polly.indvar396, 0
  br i1 %polly.loop_cond398, label %polly.loop_header393, label %polly.loop_exit395

polly.loop_header399:                             ; preds = %polly.loop_header399.preheader, %polly.loop_exit408
  %polly.indvar402 = phi i64 [ %polly.indvar_next403, %polly.loop_exit408 ], [ 0, %polly.loop_header399.preheader ]
  %145 = shl nuw nsw i64 %polly.indvar402, 3
  %scevgep421 = getelementptr i8, i8* %call1, i64 %145
  %polly.access.mul.Packed_MemRef_call2271425 = mul nuw nsw i64 %polly.indvar402, 80
  br label %polly.loop_header406

polly.loop_exit408:                               ; preds = %polly.loop_exit416
  %polly.indvar_next403 = add nuw nsw i64 %polly.indvar402, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next403, 60
  br i1 %exitcond860.not, label %polly.loop_exit401, label %polly.loop_header399

polly.loop_header406:                             ; preds = %polly.loop_exit416, %polly.loop_header399
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit416 ], [ %144, %polly.loop_header399 ]
  %polly.indvar410 = phi i64 [ %polly.indvar_next411, %polly.loop_exit416 ], [ %137, %polly.loop_header399 ]
  %smin858 = call i64 @llvm.smin.i64(i64 %indvars.iv856, i64 19)
  %146 = add nuw i64 %polly.indvar410, %134
  %147 = add i64 %146, %131
  %polly.loop_guard417961 = icmp sgt i64 %147, -1
  br i1 %polly.loop_guard417961, label %polly.loop_header414.preheader, label %polly.loop_exit416

polly.loop_header414.preheader:                   ; preds = %polly.loop_header406
  %polly.access.add.Packed_MemRef_call2271426 = add nsw i64 %polly.access.mul.Packed_MemRef_call2271425, %147
  %polly.access.Packed_MemRef_call2271427 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271426
  %_p_scalar_428 = load double, double* %polly.access.Packed_MemRef_call2271427, align 8
  %148 = mul i64 %146, 480
  %scevgep434 = getelementptr i8, i8* %scevgep421, i64 %148
  %scevgep434435 = bitcast i8* %scevgep434 to double*
  %_p_scalar_436 = load double, double* %scevgep434435, align 8, !alias.scope !82, !noalias !88
  %149 = mul i64 %146, 640
  br label %polly.loop_header414

polly.loop_exit416:                               ; preds = %polly.loop_header414, %polly.loop_header406
  %polly.indvar_next411 = add nuw nsw i64 %polly.indvar410, 1
  %polly.loop_cond412.not.not = icmp ult i64 %polly.indvar410, %141
  %indvars.iv.next857 = add i64 %indvars.iv856, 1
  br i1 %polly.loop_cond412.not.not, label %polly.loop_header406, label %polly.loop_exit408

polly.loop_header414:                             ; preds = %polly.loop_header414.preheader, %polly.loop_header414
  %polly.indvar418 = phi i64 [ %polly.indvar_next419, %polly.loop_header414 ], [ 0, %polly.loop_header414.preheader ]
  %150 = add nuw nsw i64 %polly.indvar418, %130
  %151 = mul nuw nsw i64 %150, 480
  %scevgep422 = getelementptr i8, i8* %scevgep421, i64 %151
  %scevgep422423 = bitcast i8* %scevgep422 to double*
  %_p_scalar_424 = load double, double* %scevgep422423, align 8, !alias.scope !82, !noalias !88
  %p_mul27.i73 = fmul fast double %_p_scalar_428, %_p_scalar_424
  %polly.access.add.Packed_MemRef_call2271430 = add nuw nsw i64 %polly.indvar418, %polly.access.mul.Packed_MemRef_call2271425
  %polly.access.Packed_MemRef_call2271431 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271430
  %_p_scalar_432 = load double, double* %polly.access.Packed_MemRef_call2271431, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_436, %_p_scalar_432
  %152 = shl i64 %150, 3
  %153 = add i64 %152, %149
  %scevgep437 = getelementptr i8, i8* %call, i64 %153
  %scevgep437438 = bitcast i8* %scevgep437 to double*
  %_p_scalar_439 = load double, double* %scevgep437438, align 8, !alias.scope !79, !noalias !81
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_439
  store double %p_add42.i79, double* %scevgep437438, align 8, !alias.scope !79, !noalias !81
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond859.not = icmp eq i64 %polly.indvar418, %smin858
  br i1 %exitcond859.not, label %polly.loop_exit416, label %polly.loop_header414

polly.start442:                                   ; preds = %init_array.exit
  %malloccall444 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header528

polly.exiting443:                                 ; preds = %polly.loop_exit569
  tail call void @free(i8* %malloccall444)
  br label %kernel_syr2k.exit

polly.loop_header528:                             ; preds = %polly.loop_exit536, %polly.start442
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit536 ], [ 0, %polly.start442 ]
  %polly.indvar531 = phi i64 [ %polly.indvar_next532, %polly.loop_exit536 ], [ 1, %polly.start442 ]
  %154 = add i64 %indvar, 1
  %155 = mul nuw nsw i64 %polly.indvar531, 640
  %scevgep540 = getelementptr i8, i8* %call, i64 %155
  %min.iters.check1262 = icmp ult i64 %154, 4
  br i1 %min.iters.check1262, label %polly.loop_header534.preheader, label %vector.ph1263

vector.ph1263:                                    ; preds = %polly.loop_header528
  %n.vec1265 = and i64 %154, -4
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1261 ]
  %156 = shl nuw nsw i64 %index1266, 3
  %157 = getelementptr i8, i8* %scevgep540, i64 %156
  %158 = bitcast i8* %157 to <4 x double>*
  %wide.load1270 = load <4 x double>, <4 x double>* %158, align 8, !alias.scope !89, !noalias !91
  %159 = fmul fast <4 x double> %wide.load1270, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %160 = bitcast i8* %157 to <4 x double>*
  store <4 x double> %159, <4 x double>* %160, align 8, !alias.scope !89, !noalias !91
  %index.next1267 = add i64 %index1266, 4
  %161 = icmp eq i64 %index.next1267, %n.vec1265
  br i1 %161, label %middle.block1259, label %vector.body1261, !llvm.loop !95

middle.block1259:                                 ; preds = %vector.body1261
  %cmp.n1269 = icmp eq i64 %154, %n.vec1265
  br i1 %cmp.n1269, label %polly.loop_exit536, label %polly.loop_header534.preheader

polly.loop_header534.preheader:                   ; preds = %polly.loop_header528, %middle.block1259
  %polly.indvar537.ph = phi i64 [ 0, %polly.loop_header528 ], [ %n.vec1265, %middle.block1259 ]
  br label %polly.loop_header534

polly.loop_exit536:                               ; preds = %polly.loop_header534, %middle.block1259
  %polly.indvar_next532 = add nuw nsw i64 %polly.indvar531, 1
  %exitcond880.not = icmp eq i64 %polly.indvar_next532, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond880.not, label %polly.loop_header544.preheader, label %polly.loop_header528

polly.loop_header544.preheader:                   ; preds = %polly.loop_exit536
  %Packed_MemRef_call2445 = bitcast i8* %malloccall444 to double*
  br label %polly.loop_header544

polly.loop_header534:                             ; preds = %polly.loop_header534.preheader, %polly.loop_header534
  %polly.indvar537 = phi i64 [ %polly.indvar_next538, %polly.loop_header534 ], [ %polly.indvar537.ph, %polly.loop_header534.preheader ]
  %162 = shl nuw nsw i64 %polly.indvar537, 3
  %scevgep541 = getelementptr i8, i8* %scevgep540, i64 %162
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !89, !noalias !91
  %p_mul.i = fmul fast double %_p_scalar_543, 1.200000e+00
  store double %p_mul.i, double* %scevgep541542, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next538 = add nuw nsw i64 %polly.indvar537, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next538, %polly.indvar531
  br i1 %exitcond879.not, label %polly.loop_exit536, label %polly.loop_header534, !llvm.loop !96

polly.loop_header544:                             ; preds = %polly.loop_header544.preheader, %polly.loop_exit569
  %indvars.iv870 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %indvars.iv.next871, %polly.loop_exit569 ]
  %indvars.iv868 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %indvars.iv.next869, %polly.loop_exit569 ]
  %indvars.iv864 = phi i64 [ 80, %polly.loop_header544.preheader ], [ %indvars.iv.next865, %polly.loop_exit569 ]
  %polly.indvar547 = phi i64 [ 0, %polly.loop_header544.preheader ], [ %polly.indvar_next548, %polly.loop_exit569 ]
  %163 = mul nuw nsw i64 %polly.indvar547, 20
  br label %polly.loop_header550

polly.loop_exit552:                               ; preds = %polly.loop_exit558
  %164 = mul nsw i64 %polly.indvar547, -20
  %165 = shl nuw nsw i64 %polly.indvar547, 1
  %pexp.p_div_q566 = udiv i64 %165, 5
  br label %polly.loop_header567

polly.loop_exit569:                               ; preds = %polly.loop_exit575
  %polly.indvar_next548 = add nuw nsw i64 %polly.indvar547, 1
  %indvars.iv.next865 = add nsw i64 %indvars.iv864, -20
  %indvars.iv.next869 = add nsw i64 %indvars.iv868, -20
  %indvars.iv.next871 = add nuw nsw i64 %indvars.iv870, 20
  %exitcond878.not = icmp eq i64 %polly.indvar_next548, 4
  br i1 %exitcond878.not, label %polly.exiting443, label %polly.loop_header544

polly.loop_header550:                             ; preds = %polly.loop_exit558, %polly.loop_header544
  %polly.indvar553 = phi i64 [ 0, %polly.loop_header544 ], [ %polly.indvar_next554, %polly.loop_exit558 ]
  %polly.access.mul.Packed_MemRef_call2445 = mul nuw nsw i64 %polly.indvar553, 80
  br label %polly.loop_header556

polly.loop_exit558:                               ; preds = %polly.loop_header556
  %polly.indvar_next554 = add nuw nsw i64 %polly.indvar553, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next554, 60
  br i1 %exitcond867.not, label %polly.loop_exit552, label %polly.loop_header550

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
  %exitcond866.not = icmp eq i64 %polly.indvar_next560, %indvars.iv864
  br i1 %exitcond866.not, label %polly.loop_exit558, label %polly.loop_header556

polly.loop_header567:                             ; preds = %polly.loop_exit575, %polly.loop_exit552
  %polly.indvar570 = phi i64 [ %pexp.p_div_q566, %polly.loop_exit552 ], [ 1, %polly.loop_exit575 ]
  %167 = mul nuw nsw i64 %polly.indvar570, 50
  %168 = sub nsw i64 %163, %167
  %169 = icmp sgt i64 %168, 0
  %170 = select i1 %169, i64 %168, i64 0
  %171 = mul nuw nsw i64 %polly.indvar570, -50
  %172 = icmp slt i64 %171, -30
  %173 = select i1 %172, i64 %171, i64 -30
  %174 = add nsw i64 %173, 79
  %polly.loop_guard583.not = icmp sgt i64 %170, %174
  br i1 %polly.loop_guard583.not, label %polly.loop_exit575, label %polly.loop_header573.preheader

polly.loop_header573.preheader:                   ; preds = %polly.loop_header567
  %175 = sub nsw i64 %indvars.iv870, %167
  %smax872 = call i64 @llvm.smax.i64(i64 %175, i64 0)
  %176 = add i64 %indvars.iv868, %smax872
  %177 = add i64 %176, %167
  br label %polly.loop_header573

polly.loop_exit575:                               ; preds = %polly.loop_exit582, %polly.loop_header567
  %polly.loop_cond572 = icmp eq i64 %polly.indvar570, 0
  br i1 %polly.loop_cond572, label %polly.loop_header567, label %polly.loop_exit569

polly.loop_header573:                             ; preds = %polly.loop_header573.preheader, %polly.loop_exit582
  %polly.indvar576 = phi i64 [ %polly.indvar_next577, %polly.loop_exit582 ], [ 0, %polly.loop_header573.preheader ]
  %178 = shl nuw nsw i64 %polly.indvar576, 3
  %scevgep595 = getelementptr i8, i8* %call1, i64 %178
  %polly.access.mul.Packed_MemRef_call2445599 = mul nuw nsw i64 %polly.indvar576, 80
  br label %polly.loop_header580

polly.loop_exit582:                               ; preds = %polly.loop_exit590
  %polly.indvar_next577 = add nuw nsw i64 %polly.indvar576, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next577, 60
  br i1 %exitcond877.not, label %polly.loop_exit575, label %polly.loop_header573

polly.loop_header580:                             ; preds = %polly.loop_exit590, %polly.loop_header573
  %indvars.iv873 = phi i64 [ %indvars.iv.next874, %polly.loop_exit590 ], [ %177, %polly.loop_header573 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit590 ], [ %170, %polly.loop_header573 ]
  %smin875 = call i64 @llvm.smin.i64(i64 %indvars.iv873, i64 19)
  %179 = add nuw i64 %polly.indvar584, %167
  %180 = add i64 %179, %164
  %polly.loop_guard591962 = icmp sgt i64 %180, -1
  br i1 %polly.loop_guard591962, label %polly.loop_header588.preheader, label %polly.loop_exit590

polly.loop_header588.preheader:                   ; preds = %polly.loop_header580
  %polly.access.add.Packed_MemRef_call2445600 = add nsw i64 %polly.access.mul.Packed_MemRef_call2445599, %180
  %polly.access.Packed_MemRef_call2445601 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445600
  %_p_scalar_602 = load double, double* %polly.access.Packed_MemRef_call2445601, align 8
  %181 = mul i64 %179, 480
  %scevgep608 = getelementptr i8, i8* %scevgep595, i64 %181
  %scevgep608609 = bitcast i8* %scevgep608 to double*
  %_p_scalar_610 = load double, double* %scevgep608609, align 8, !alias.scope !92, !noalias !98
  %182 = mul i64 %179, 640
  br label %polly.loop_header588

polly.loop_exit590:                               ; preds = %polly.loop_header588, %polly.loop_header580
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %polly.loop_cond586.not.not = icmp ult i64 %polly.indvar584, %174
  %indvars.iv.next874 = add i64 %indvars.iv873, 1
  br i1 %polly.loop_cond586.not.not, label %polly.loop_header580, label %polly.loop_exit582

polly.loop_header588:                             ; preds = %polly.loop_header588.preheader, %polly.loop_header588
  %polly.indvar592 = phi i64 [ %polly.indvar_next593, %polly.loop_header588 ], [ 0, %polly.loop_header588.preheader ]
  %183 = add nuw nsw i64 %polly.indvar592, %163
  %184 = mul nuw nsw i64 %183, 480
  %scevgep596 = getelementptr i8, i8* %scevgep595, i64 %184
  %scevgep596597 = bitcast i8* %scevgep596 to double*
  %_p_scalar_598 = load double, double* %scevgep596597, align 8, !alias.scope !92, !noalias !98
  %p_mul27.i = fmul fast double %_p_scalar_602, %_p_scalar_598
  %polly.access.add.Packed_MemRef_call2445604 = add nuw nsw i64 %polly.indvar592, %polly.access.mul.Packed_MemRef_call2445599
  %polly.access.Packed_MemRef_call2445605 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445604
  %_p_scalar_606 = load double, double* %polly.access.Packed_MemRef_call2445605, align 8
  %p_mul37.i = fmul fast double %_p_scalar_610, %_p_scalar_606
  %185 = shl i64 %183, 3
  %186 = add i64 %185, %182
  %scevgep611 = getelementptr i8, i8* %call, i64 %186
  %scevgep611612 = bitcast i8* %scevgep611 to double*
  %_p_scalar_613 = load double, double* %scevgep611612, align 8, !alias.scope !89, !noalias !91
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_613
  store double %p_add42.i, double* %scevgep611612, align 8, !alias.scope !89, !noalias !91
  %polly.indvar_next593 = add nuw nsw i64 %polly.indvar592, 1
  %exitcond876.not = icmp eq i64 %polly.indvar592, %smin875
  br i1 %exitcond876.not, label %polly.loop_exit590, label %polly.loop_header588

polly.loop_header752:                             ; preds = %entry, %polly.loop_exit760
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %entry ]
  %187 = mul nuw nsw i64 %polly.indvar755, 640
  %188 = trunc i64 %polly.indvar755 to i32
  %broadcast.splatinsert993 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat994 = shufflevector <4 x i32> %broadcast.splatinsert993, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %polly.loop_header752
  %index985 = phi i64 [ 0, %polly.loop_header752 ], [ %index.next986, %vector.body983 ]
  %vec.ind991 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752 ], [ %vec.ind.next992, %vector.body983 ]
  %189 = mul <4 x i32> %vec.ind991, %broadcast.splat994
  %190 = add <4 x i32> %189, <i32 3, i32 3, i32 3, i32 3>
  %191 = urem <4 x i32> %190, <i32 80, i32 80, i32 80, i32 80>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %194 = shl i64 %index985, 3
  %195 = add nuw nsw i64 %194, %187
  %196 = getelementptr i8, i8* %call, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %193, <4 x double>* %197, align 8, !alias.scope !99, !noalias !101
  %index.next986 = add i64 %index985, 4
  %vec.ind.next992 = add <4 x i32> %vec.ind991, <i32 4, i32 4, i32 4, i32 4>
  %198 = icmp eq i64 %index.next986, 32
  br i1 %198, label %polly.loop_exit760, label %vector.body983, !llvm.loop !104

polly.loop_exit760:                               ; preds = %vector.body983
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond900.not = icmp eq i64 %polly.indvar_next756, 32
  br i1 %exitcond900.not, label %polly.loop_header752.1, label %polly.loop_header752

polly.loop_header779:                             ; preds = %polly.loop_exit760.2.2, %polly.loop_exit787
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_exit760.2.2 ]
  %199 = mul nuw nsw i64 %polly.indvar782, 480
  %200 = trunc i64 %polly.indvar782 to i32
  %broadcast.splatinsert1107 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat1108 = shufflevector <4 x i32> %broadcast.splatinsert1107, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %polly.loop_header779
  %index1099 = phi i64 [ 0, %polly.loop_header779 ], [ %index.next1100, %vector.body1097 ]
  %vec.ind1105 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779 ], [ %vec.ind.next1106, %vector.body1097 ]
  %201 = mul <4 x i32> %vec.ind1105, %broadcast.splat1108
  %202 = add <4 x i32> %201, <i32 2, i32 2, i32 2, i32 2>
  %203 = urem <4 x i32> %202, <i32 60, i32 60, i32 60, i32 60>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %206 = shl i64 %index1099, 3
  %207 = add i64 %206, %199
  %208 = getelementptr i8, i8* %call2, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %205, <4 x double>* %209, align 8, !alias.scope !103, !noalias !105
  %index.next1100 = add i64 %index1099, 4
  %vec.ind.next1106 = add <4 x i32> %vec.ind1105, <i32 4, i32 4, i32 4, i32 4>
  %210 = icmp eq i64 %index.next1100, 32
  br i1 %210, label %polly.loop_exit787, label %vector.body1097, !llvm.loop !106

polly.loop_exit787:                               ; preds = %vector.body1097
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next783, 32
  br i1 %exitcond891.not, label %polly.loop_header779.1, label %polly.loop_header779

polly.loop_header805:                             ; preds = %polly.loop_exit787.1.2, %polly.loop_exit813
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_exit787.1.2 ]
  %211 = mul nuw nsw i64 %polly.indvar808, 480
  %212 = trunc i64 %polly.indvar808 to i32
  %broadcast.splatinsert1185 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1186 = shufflevector <4 x i32> %broadcast.splatinsert1185, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %polly.loop_header805
  %index1177 = phi i64 [ 0, %polly.loop_header805 ], [ %index.next1178, %vector.body1175 ]
  %vec.ind1183 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805 ], [ %vec.ind.next1184, %vector.body1175 ]
  %213 = mul <4 x i32> %vec.ind1183, %broadcast.splat1186
  %214 = add <4 x i32> %213, <i32 1, i32 1, i32 1, i32 1>
  %215 = urem <4 x i32> %214, <i32 80, i32 80, i32 80, i32 80>
  %216 = sitofp <4 x i32> %215 to <4 x double>
  %217 = fmul fast <4 x double> %216, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %218 = shl i64 %index1177, 3
  %219 = add i64 %218, %211
  %220 = getelementptr i8, i8* %call1, i64 %219
  %221 = bitcast i8* %220 to <4 x double>*
  store <4 x double> %217, <4 x double>* %221, align 8, !alias.scope !102, !noalias !107
  %index.next1178 = add i64 %index1177, 4
  %vec.ind.next1184 = add <4 x i32> %vec.ind1183, <i32 4, i32 4, i32 4, i32 4>
  %222 = icmp eq i64 %index.next1178, 32
  br i1 %222, label %polly.loop_exit813, label %vector.body1175, !llvm.loop !108

polly.loop_exit813:                               ; preds = %vector.body1175
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond885.not, label %polly.loop_header805.1, label %polly.loop_header805

polly.loop_header805.1:                           ; preds = %polly.loop_exit813, %polly.loop_exit813.1
  %polly.indvar808.1 = phi i64 [ %polly.indvar_next809.1, %polly.loop_exit813.1 ], [ 0, %polly.loop_exit813 ]
  %223 = mul nuw nsw i64 %polly.indvar808.1, 480
  %224 = trunc i64 %polly.indvar808.1 to i32
  %broadcast.splatinsert1197 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1198 = shufflevector <4 x i32> %broadcast.splatinsert1197, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %polly.loop_header805.1
  %index1191 = phi i64 [ 0, %polly.loop_header805.1 ], [ %index.next1192, %vector.body1189 ]
  %vec.ind1195 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1 ], [ %vec.ind.next1196, %vector.body1189 ]
  %225 = add nuw nsw <4 x i64> %vec.ind1195, <i64 32, i64 32, i64 32, i64 32>
  %226 = trunc <4 x i64> %225 to <4 x i32>
  %227 = mul <4 x i32> %broadcast.splat1198, %226
  %228 = add <4 x i32> %227, <i32 1, i32 1, i32 1, i32 1>
  %229 = urem <4 x i32> %228, <i32 80, i32 80, i32 80, i32 80>
  %230 = sitofp <4 x i32> %229 to <4 x double>
  %231 = fmul fast <4 x double> %230, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %232 = extractelement <4 x i64> %225, i32 0
  %233 = shl i64 %232, 3
  %234 = add i64 %233, %223
  %235 = getelementptr i8, i8* %call1, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %231, <4 x double>* %236, align 8, !alias.scope !102, !noalias !107
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1196 = add <4 x i64> %vec.ind1195, <i64 4, i64 4, i64 4, i64 4>
  %237 = icmp eq i64 %index.next1192, 28
  br i1 %237, label %polly.loop_exit813.1, label %vector.body1189, !llvm.loop !109

polly.loop_exit813.1:                             ; preds = %vector.body1189
  %polly.indvar_next809.1 = add nuw nsw i64 %polly.indvar808.1, 1
  %exitcond885.1.not = icmp eq i64 %polly.indvar_next809.1, 32
  br i1 %exitcond885.1.not, label %polly.loop_header805.1905, label %polly.loop_header805.1

polly.loop_header805.1905:                        ; preds = %polly.loop_exit813.1, %polly.loop_exit813.1916
  %polly.indvar808.1904 = phi i64 [ %polly.indvar_next809.1914, %polly.loop_exit813.1916 ], [ 0, %polly.loop_exit813.1 ]
  %238 = add nuw nsw i64 %polly.indvar808.1904, 32
  %239 = mul nuw nsw i64 %238, 480
  %240 = trunc i64 %238 to i32
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %240, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %polly.loop_header805.1905
  %index1203 = phi i64 [ 0, %polly.loop_header805.1905 ], [ %index.next1204, %vector.body1201 ]
  %vec.ind1209 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.1905 ], [ %vec.ind.next1210, %vector.body1201 ]
  %241 = mul <4 x i32> %vec.ind1209, %broadcast.splat1212
  %242 = add <4 x i32> %241, <i32 1, i32 1, i32 1, i32 1>
  %243 = urem <4 x i32> %242, <i32 80, i32 80, i32 80, i32 80>
  %244 = sitofp <4 x i32> %243 to <4 x double>
  %245 = fmul fast <4 x double> %244, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %246 = shl i64 %index1203, 3
  %247 = add i64 %246, %239
  %248 = getelementptr i8, i8* %call1, i64 %247
  %249 = bitcast i8* %248 to <4 x double>*
  store <4 x double> %245, <4 x double>* %249, align 8, !alias.scope !102, !noalias !107
  %index.next1204 = add i64 %index1203, 4
  %vec.ind.next1210 = add <4 x i32> %vec.ind1209, <i32 4, i32 4, i32 4, i32 4>
  %250 = icmp eq i64 %index.next1204, 32
  br i1 %250, label %polly.loop_exit813.1916, label %vector.body1201, !llvm.loop !110

polly.loop_exit813.1916:                          ; preds = %vector.body1201
  %polly.indvar_next809.1914 = add nuw nsw i64 %polly.indvar808.1904, 1
  %exitcond885.1915.not = icmp eq i64 %polly.indvar_next809.1914, 32
  br i1 %exitcond885.1915.not, label %polly.loop_header805.1.1, label %polly.loop_header805.1905

polly.loop_header805.1.1:                         ; preds = %polly.loop_exit813.1916, %polly.loop_exit813.1.1
  %polly.indvar808.1.1 = phi i64 [ %polly.indvar_next809.1.1, %polly.loop_exit813.1.1 ], [ 0, %polly.loop_exit813.1916 ]
  %251 = add nuw nsw i64 %polly.indvar808.1.1, 32
  %252 = mul nuw nsw i64 %251, 480
  %253 = trunc i64 %251 to i32
  %broadcast.splatinsert1223 = insertelement <4 x i32> poison, i32 %253, i32 0
  %broadcast.splat1224 = shufflevector <4 x i32> %broadcast.splatinsert1223, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %polly.loop_header805.1.1
  %index1217 = phi i64 [ 0, %polly.loop_header805.1.1 ], [ %index.next1218, %vector.body1215 ]
  %vec.ind1221 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.1 ], [ %vec.ind.next1222, %vector.body1215 ]
  %254 = add nuw nsw <4 x i64> %vec.ind1221, <i64 32, i64 32, i64 32, i64 32>
  %255 = trunc <4 x i64> %254 to <4 x i32>
  %256 = mul <4 x i32> %broadcast.splat1224, %255
  %257 = add <4 x i32> %256, <i32 1, i32 1, i32 1, i32 1>
  %258 = urem <4 x i32> %257, <i32 80, i32 80, i32 80, i32 80>
  %259 = sitofp <4 x i32> %258 to <4 x double>
  %260 = fmul fast <4 x double> %259, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %261 = extractelement <4 x i64> %254, i32 0
  %262 = shl i64 %261, 3
  %263 = add i64 %262, %252
  %264 = getelementptr i8, i8* %call1, i64 %263
  %265 = bitcast i8* %264 to <4 x double>*
  store <4 x double> %260, <4 x double>* %265, align 8, !alias.scope !102, !noalias !107
  %index.next1218 = add i64 %index1217, 4
  %vec.ind.next1222 = add <4 x i64> %vec.ind1221, <i64 4, i64 4, i64 4, i64 4>
  %266 = icmp eq i64 %index.next1218, 28
  br i1 %266, label %polly.loop_exit813.1.1, label %vector.body1215, !llvm.loop !111

polly.loop_exit813.1.1:                           ; preds = %vector.body1215
  %polly.indvar_next809.1.1 = add nuw nsw i64 %polly.indvar808.1.1, 1
  %exitcond885.1.1.not = icmp eq i64 %polly.indvar_next809.1.1, 32
  br i1 %exitcond885.1.1.not, label %polly.loop_header805.2, label %polly.loop_header805.1.1

polly.loop_header805.2:                           ; preds = %polly.loop_exit813.1.1, %polly.loop_exit813.2
  %polly.indvar808.2 = phi i64 [ %polly.indvar_next809.2, %polly.loop_exit813.2 ], [ 0, %polly.loop_exit813.1.1 ]
  %267 = add nuw nsw i64 %polly.indvar808.2, 64
  %268 = mul nuw nsw i64 %267, 480
  %269 = trunc i64 %267 to i32
  %broadcast.splatinsert1237 = insertelement <4 x i32> poison, i32 %269, i32 0
  %broadcast.splat1238 = shufflevector <4 x i32> %broadcast.splatinsert1237, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1227

vector.body1227:                                  ; preds = %vector.body1227, %polly.loop_header805.2
  %index1229 = phi i64 [ 0, %polly.loop_header805.2 ], [ %index.next1230, %vector.body1227 ]
  %vec.ind1235 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.2 ], [ %vec.ind.next1236, %vector.body1227 ]
  %270 = mul <4 x i32> %vec.ind1235, %broadcast.splat1238
  %271 = add <4 x i32> %270, <i32 1, i32 1, i32 1, i32 1>
  %272 = urem <4 x i32> %271, <i32 80, i32 80, i32 80, i32 80>
  %273 = sitofp <4 x i32> %272 to <4 x double>
  %274 = fmul fast <4 x double> %273, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %275 = shl i64 %index1229, 3
  %276 = add i64 %275, %268
  %277 = getelementptr i8, i8* %call1, i64 %276
  %278 = bitcast i8* %277 to <4 x double>*
  store <4 x double> %274, <4 x double>* %278, align 8, !alias.scope !102, !noalias !107
  %index.next1230 = add i64 %index1229, 4
  %vec.ind.next1236 = add <4 x i32> %vec.ind1235, <i32 4, i32 4, i32 4, i32 4>
  %279 = icmp eq i64 %index.next1230, 32
  br i1 %279, label %polly.loop_exit813.2, label %vector.body1227, !llvm.loop !112

polly.loop_exit813.2:                             ; preds = %vector.body1227
  %polly.indvar_next809.2 = add nuw nsw i64 %polly.indvar808.2, 1
  %exitcond885.2.not = icmp eq i64 %polly.indvar_next809.2, 16
  br i1 %exitcond885.2.not, label %polly.loop_header805.1.2, label %polly.loop_header805.2

polly.loop_header805.1.2:                         ; preds = %polly.loop_exit813.2, %polly.loop_exit813.1.2
  %polly.indvar808.1.2 = phi i64 [ %polly.indvar_next809.1.2, %polly.loop_exit813.1.2 ], [ 0, %polly.loop_exit813.2 ]
  %280 = add nuw nsw i64 %polly.indvar808.1.2, 64
  %281 = mul nuw nsw i64 %280, 480
  %282 = trunc i64 %280 to i32
  %broadcast.splatinsert1249 = insertelement <4 x i32> poison, i32 %282, i32 0
  %broadcast.splat1250 = shufflevector <4 x i32> %broadcast.splatinsert1249, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %polly.loop_header805.1.2
  %index1243 = phi i64 [ 0, %polly.loop_header805.1.2 ], [ %index.next1244, %vector.body1241 ]
  %vec.ind1247 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.2 ], [ %vec.ind.next1248, %vector.body1241 ]
  %283 = add nuw nsw <4 x i64> %vec.ind1247, <i64 32, i64 32, i64 32, i64 32>
  %284 = trunc <4 x i64> %283 to <4 x i32>
  %285 = mul <4 x i32> %broadcast.splat1250, %284
  %286 = add <4 x i32> %285, <i32 1, i32 1, i32 1, i32 1>
  %287 = urem <4 x i32> %286, <i32 80, i32 80, i32 80, i32 80>
  %288 = sitofp <4 x i32> %287 to <4 x double>
  %289 = fmul fast <4 x double> %288, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %290 = extractelement <4 x i64> %283, i32 0
  %291 = shl i64 %290, 3
  %292 = add i64 %291, %281
  %293 = getelementptr i8, i8* %call1, i64 %292
  %294 = bitcast i8* %293 to <4 x double>*
  store <4 x double> %289, <4 x double>* %294, align 8, !alias.scope !102, !noalias !107
  %index.next1244 = add i64 %index1243, 4
  %vec.ind.next1248 = add <4 x i64> %vec.ind1247, <i64 4, i64 4, i64 4, i64 4>
  %295 = icmp eq i64 %index.next1244, 28
  br i1 %295, label %polly.loop_exit813.1.2, label %vector.body1241, !llvm.loop !113

polly.loop_exit813.1.2:                           ; preds = %vector.body1241
  %polly.indvar_next809.1.2 = add nuw nsw i64 %polly.indvar808.1.2, 1
  %exitcond885.1.2.not = icmp eq i64 %polly.indvar_next809.1.2, 16
  br i1 %exitcond885.1.2.not, label %init_array.exit, label %polly.loop_header805.1.2

polly.loop_header779.1:                           ; preds = %polly.loop_exit787, %polly.loop_exit787.1
  %polly.indvar782.1 = phi i64 [ %polly.indvar_next783.1, %polly.loop_exit787.1 ], [ 0, %polly.loop_exit787 ]
  %296 = mul nuw nsw i64 %polly.indvar782.1, 480
  %297 = trunc i64 %polly.indvar782.1 to i32
  %broadcast.splatinsert1119 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1120 = shufflevector <4 x i32> %broadcast.splatinsert1119, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %polly.loop_header779.1
  %index1113 = phi i64 [ 0, %polly.loop_header779.1 ], [ %index.next1114, %vector.body1111 ]
  %vec.ind1117 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1 ], [ %vec.ind.next1118, %vector.body1111 ]
  %298 = add nuw nsw <4 x i64> %vec.ind1117, <i64 32, i64 32, i64 32, i64 32>
  %299 = trunc <4 x i64> %298 to <4 x i32>
  %300 = mul <4 x i32> %broadcast.splat1120, %299
  %301 = add <4 x i32> %300, <i32 2, i32 2, i32 2, i32 2>
  %302 = urem <4 x i32> %301, <i32 60, i32 60, i32 60, i32 60>
  %303 = sitofp <4 x i32> %302 to <4 x double>
  %304 = fmul fast <4 x double> %303, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %305 = extractelement <4 x i64> %298, i32 0
  %306 = shl i64 %305, 3
  %307 = add i64 %306, %296
  %308 = getelementptr i8, i8* %call2, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %304, <4 x double>* %309, align 8, !alias.scope !103, !noalias !105
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1118 = add <4 x i64> %vec.ind1117, <i64 4, i64 4, i64 4, i64 4>
  %310 = icmp eq i64 %index.next1114, 28
  br i1 %310, label %polly.loop_exit787.1, label %vector.body1111, !llvm.loop !114

polly.loop_exit787.1:                             ; preds = %vector.body1111
  %polly.indvar_next783.1 = add nuw nsw i64 %polly.indvar782.1, 1
  %exitcond891.1.not = icmp eq i64 %polly.indvar_next783.1, 32
  br i1 %exitcond891.1.not, label %polly.loop_header779.1919, label %polly.loop_header779.1

polly.loop_header779.1919:                        ; preds = %polly.loop_exit787.1, %polly.loop_exit787.1930
  %polly.indvar782.1918 = phi i64 [ %polly.indvar_next783.1928, %polly.loop_exit787.1930 ], [ 0, %polly.loop_exit787.1 ]
  %311 = add nuw nsw i64 %polly.indvar782.1918, 32
  %312 = mul nuw nsw i64 %311, 480
  %313 = trunc i64 %311 to i32
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %313, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1123

vector.body1123:                                  ; preds = %vector.body1123, %polly.loop_header779.1919
  %index1125 = phi i64 [ 0, %polly.loop_header779.1919 ], [ %index.next1126, %vector.body1123 ]
  %vec.ind1131 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779.1919 ], [ %vec.ind.next1132, %vector.body1123 ]
  %314 = mul <4 x i32> %vec.ind1131, %broadcast.splat1134
  %315 = add <4 x i32> %314, <i32 2, i32 2, i32 2, i32 2>
  %316 = urem <4 x i32> %315, <i32 60, i32 60, i32 60, i32 60>
  %317 = sitofp <4 x i32> %316 to <4 x double>
  %318 = fmul fast <4 x double> %317, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %319 = shl i64 %index1125, 3
  %320 = add i64 %319, %312
  %321 = getelementptr i8, i8* %call2, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %318, <4 x double>* %322, align 8, !alias.scope !103, !noalias !105
  %index.next1126 = add i64 %index1125, 4
  %vec.ind.next1132 = add <4 x i32> %vec.ind1131, <i32 4, i32 4, i32 4, i32 4>
  %323 = icmp eq i64 %index.next1126, 32
  br i1 %323, label %polly.loop_exit787.1930, label %vector.body1123, !llvm.loop !115

polly.loop_exit787.1930:                          ; preds = %vector.body1123
  %polly.indvar_next783.1928 = add nuw nsw i64 %polly.indvar782.1918, 1
  %exitcond891.1929.not = icmp eq i64 %polly.indvar_next783.1928, 32
  br i1 %exitcond891.1929.not, label %polly.loop_header779.1.1, label %polly.loop_header779.1919

polly.loop_header779.1.1:                         ; preds = %polly.loop_exit787.1930, %polly.loop_exit787.1.1
  %polly.indvar782.1.1 = phi i64 [ %polly.indvar_next783.1.1, %polly.loop_exit787.1.1 ], [ 0, %polly.loop_exit787.1930 ]
  %324 = add nuw nsw i64 %polly.indvar782.1.1, 32
  %325 = mul nuw nsw i64 %324, 480
  %326 = trunc i64 %324 to i32
  %broadcast.splatinsert1145 = insertelement <4 x i32> poison, i32 %326, i32 0
  %broadcast.splat1146 = shufflevector <4 x i32> %broadcast.splatinsert1145, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %polly.loop_header779.1.1
  %index1139 = phi i64 [ 0, %polly.loop_header779.1.1 ], [ %index.next1140, %vector.body1137 ]
  %vec.ind1143 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1.1 ], [ %vec.ind.next1144, %vector.body1137 ]
  %327 = add nuw nsw <4 x i64> %vec.ind1143, <i64 32, i64 32, i64 32, i64 32>
  %328 = trunc <4 x i64> %327 to <4 x i32>
  %329 = mul <4 x i32> %broadcast.splat1146, %328
  %330 = add <4 x i32> %329, <i32 2, i32 2, i32 2, i32 2>
  %331 = urem <4 x i32> %330, <i32 60, i32 60, i32 60, i32 60>
  %332 = sitofp <4 x i32> %331 to <4 x double>
  %333 = fmul fast <4 x double> %332, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %334 = extractelement <4 x i64> %327, i32 0
  %335 = shl i64 %334, 3
  %336 = add i64 %335, %325
  %337 = getelementptr i8, i8* %call2, i64 %336
  %338 = bitcast i8* %337 to <4 x double>*
  store <4 x double> %333, <4 x double>* %338, align 8, !alias.scope !103, !noalias !105
  %index.next1140 = add i64 %index1139, 4
  %vec.ind.next1144 = add <4 x i64> %vec.ind1143, <i64 4, i64 4, i64 4, i64 4>
  %339 = icmp eq i64 %index.next1140, 28
  br i1 %339, label %polly.loop_exit787.1.1, label %vector.body1137, !llvm.loop !116

polly.loop_exit787.1.1:                           ; preds = %vector.body1137
  %polly.indvar_next783.1.1 = add nuw nsw i64 %polly.indvar782.1.1, 1
  %exitcond891.1.1.not = icmp eq i64 %polly.indvar_next783.1.1, 32
  br i1 %exitcond891.1.1.not, label %polly.loop_header779.2, label %polly.loop_header779.1.1

polly.loop_header779.2:                           ; preds = %polly.loop_exit787.1.1, %polly.loop_exit787.2
  %polly.indvar782.2 = phi i64 [ %polly.indvar_next783.2, %polly.loop_exit787.2 ], [ 0, %polly.loop_exit787.1.1 ]
  %340 = add nuw nsw i64 %polly.indvar782.2, 64
  %341 = mul nuw nsw i64 %340, 480
  %342 = trunc i64 %340 to i32
  %broadcast.splatinsert1159 = insertelement <4 x i32> poison, i32 %342, i32 0
  %broadcast.splat1160 = shufflevector <4 x i32> %broadcast.splatinsert1159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1149

vector.body1149:                                  ; preds = %vector.body1149, %polly.loop_header779.2
  %index1151 = phi i64 [ 0, %polly.loop_header779.2 ], [ %index.next1152, %vector.body1149 ]
  %vec.ind1157 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779.2 ], [ %vec.ind.next1158, %vector.body1149 ]
  %343 = mul <4 x i32> %vec.ind1157, %broadcast.splat1160
  %344 = add <4 x i32> %343, <i32 2, i32 2, i32 2, i32 2>
  %345 = urem <4 x i32> %344, <i32 60, i32 60, i32 60, i32 60>
  %346 = sitofp <4 x i32> %345 to <4 x double>
  %347 = fmul fast <4 x double> %346, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %348 = shl i64 %index1151, 3
  %349 = add i64 %348, %341
  %350 = getelementptr i8, i8* %call2, i64 %349
  %351 = bitcast i8* %350 to <4 x double>*
  store <4 x double> %347, <4 x double>* %351, align 8, !alias.scope !103, !noalias !105
  %index.next1152 = add i64 %index1151, 4
  %vec.ind.next1158 = add <4 x i32> %vec.ind1157, <i32 4, i32 4, i32 4, i32 4>
  %352 = icmp eq i64 %index.next1152, 32
  br i1 %352, label %polly.loop_exit787.2, label %vector.body1149, !llvm.loop !117

polly.loop_exit787.2:                             ; preds = %vector.body1149
  %polly.indvar_next783.2 = add nuw nsw i64 %polly.indvar782.2, 1
  %exitcond891.2.not = icmp eq i64 %polly.indvar_next783.2, 16
  br i1 %exitcond891.2.not, label %polly.loop_header779.1.2, label %polly.loop_header779.2

polly.loop_header779.1.2:                         ; preds = %polly.loop_exit787.2, %polly.loop_exit787.1.2
  %polly.indvar782.1.2 = phi i64 [ %polly.indvar_next783.1.2, %polly.loop_exit787.1.2 ], [ 0, %polly.loop_exit787.2 ]
  %353 = add nuw nsw i64 %polly.indvar782.1.2, 64
  %354 = mul nuw nsw i64 %353, 480
  %355 = trunc i64 %353 to i32
  %broadcast.splatinsert1171 = insertelement <4 x i32> poison, i32 %355, i32 0
  %broadcast.splat1172 = shufflevector <4 x i32> %broadcast.splatinsert1171, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %polly.loop_header779.1.2
  %index1165 = phi i64 [ 0, %polly.loop_header779.1.2 ], [ %index.next1166, %vector.body1163 ]
  %vec.ind1169 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1.2 ], [ %vec.ind.next1170, %vector.body1163 ]
  %356 = add nuw nsw <4 x i64> %vec.ind1169, <i64 32, i64 32, i64 32, i64 32>
  %357 = trunc <4 x i64> %356 to <4 x i32>
  %358 = mul <4 x i32> %broadcast.splat1172, %357
  %359 = add <4 x i32> %358, <i32 2, i32 2, i32 2, i32 2>
  %360 = urem <4 x i32> %359, <i32 60, i32 60, i32 60, i32 60>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %363 = extractelement <4 x i64> %356, i32 0
  %364 = shl i64 %363, 3
  %365 = add i64 %364, %354
  %366 = getelementptr i8, i8* %call2, i64 %365
  %367 = bitcast i8* %366 to <4 x double>*
  store <4 x double> %362, <4 x double>* %367, align 8, !alias.scope !103, !noalias !105
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1170 = add <4 x i64> %vec.ind1169, <i64 4, i64 4, i64 4, i64 4>
  %368 = icmp eq i64 %index.next1166, 28
  br i1 %368, label %polly.loop_exit787.1.2, label %vector.body1163, !llvm.loop !118

polly.loop_exit787.1.2:                           ; preds = %vector.body1163
  %polly.indvar_next783.1.2 = add nuw nsw i64 %polly.indvar782.1.2, 1
  %exitcond891.1.2.not = icmp eq i64 %polly.indvar_next783.1.2, 16
  br i1 %exitcond891.1.2.not, label %polly.loop_header805, label %polly.loop_header779.1.2

polly.loop_header752.1:                           ; preds = %polly.loop_exit760, %polly.loop_exit760.1
  %polly.indvar755.1 = phi i64 [ %polly.indvar_next756.1, %polly.loop_exit760.1 ], [ 0, %polly.loop_exit760 ]
  %369 = mul nuw nsw i64 %polly.indvar755.1, 640
  %370 = trunc i64 %polly.indvar755.1 to i32
  %broadcast.splatinsert1005 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1006 = shufflevector <4 x i32> %broadcast.splatinsert1005, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %polly.loop_header752.1
  %index999 = phi i64 [ 0, %polly.loop_header752.1 ], [ %index.next1000, %vector.body997 ]
  %vec.ind1003 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1 ], [ %vec.ind.next1004, %vector.body997 ]
  %371 = add nuw nsw <4 x i64> %vec.ind1003, <i64 32, i64 32, i64 32, i64 32>
  %372 = trunc <4 x i64> %371 to <4 x i32>
  %373 = mul <4 x i32> %broadcast.splat1006, %372
  %374 = add <4 x i32> %373, <i32 3, i32 3, i32 3, i32 3>
  %375 = urem <4 x i32> %374, <i32 80, i32 80, i32 80, i32 80>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %378 = extractelement <4 x i64> %371, i32 0
  %379 = shl i64 %378, 3
  %380 = add nuw nsw i64 %379, %369
  %381 = getelementptr i8, i8* %call, i64 %380
  %382 = bitcast i8* %381 to <4 x double>*
  store <4 x double> %377, <4 x double>* %382, align 8, !alias.scope !99, !noalias !101
  %index.next1000 = add i64 %index999, 4
  %vec.ind.next1004 = add <4 x i64> %vec.ind1003, <i64 4, i64 4, i64 4, i64 4>
  %383 = icmp eq i64 %index.next1000, 32
  br i1 %383, label %polly.loop_exit760.1, label %vector.body997, !llvm.loop !119

polly.loop_exit760.1:                             ; preds = %vector.body997
  %polly.indvar_next756.1 = add nuw nsw i64 %polly.indvar755.1, 1
  %exitcond900.1.not = icmp eq i64 %polly.indvar_next756.1, 32
  br i1 %exitcond900.1.not, label %polly.loop_header752.2, label %polly.loop_header752.1

polly.loop_header752.2:                           ; preds = %polly.loop_exit760.1, %polly.loop_exit760.2
  %polly.indvar755.2 = phi i64 [ %polly.indvar_next756.2, %polly.loop_exit760.2 ], [ 0, %polly.loop_exit760.1 ]
  %384 = mul nuw nsw i64 %polly.indvar755.2, 640
  %385 = trunc i64 %polly.indvar755.2 to i32
  %broadcast.splatinsert1017 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1018 = shufflevector <4 x i32> %broadcast.splatinsert1017, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %polly.loop_header752.2
  %index1011 = phi i64 [ 0, %polly.loop_header752.2 ], [ %index.next1012, %vector.body1009 ]
  %vec.ind1015 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2 ], [ %vec.ind.next1016, %vector.body1009 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1015, <i64 64, i64 64, i64 64, i64 64>
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1018, %387
  %389 = add <4 x i32> %388, <i32 3, i32 3, i32 3, i32 3>
  %390 = urem <4 x i32> %389, <i32 80, i32 80, i32 80, i32 80>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %384
  %396 = getelementptr i8, i8* %call, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !99, !noalias !101
  %index.next1012 = add i64 %index1011, 4
  %vec.ind.next1016 = add <4 x i64> %vec.ind1015, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1012, 16
  br i1 %398, label %polly.loop_exit760.2, label %vector.body1009, !llvm.loop !120

polly.loop_exit760.2:                             ; preds = %vector.body1009
  %polly.indvar_next756.2 = add nuw nsw i64 %polly.indvar755.2, 1
  %exitcond900.2.not = icmp eq i64 %polly.indvar_next756.2, 32
  br i1 %exitcond900.2.not, label %polly.loop_header752.1933, label %polly.loop_header752.2

polly.loop_header752.1933:                        ; preds = %polly.loop_exit760.2, %polly.loop_exit760.1944
  %polly.indvar755.1932 = phi i64 [ %polly.indvar_next756.1942, %polly.loop_exit760.1944 ], [ 0, %polly.loop_exit760.2 ]
  %399 = add nuw nsw i64 %polly.indvar755.1932, 32
  %400 = mul nuw nsw i64 %399, 640
  %401 = trunc i64 %399 to i32
  %broadcast.splatinsert1031 = insertelement <4 x i32> poison, i32 %401, i32 0
  %broadcast.splat1032 = shufflevector <4 x i32> %broadcast.splatinsert1031, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %polly.loop_header752.1933
  %index1023 = phi i64 [ 0, %polly.loop_header752.1933 ], [ %index.next1024, %vector.body1021 ]
  %vec.ind1029 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.1933 ], [ %vec.ind.next1030, %vector.body1021 ]
  %402 = mul <4 x i32> %vec.ind1029, %broadcast.splat1032
  %403 = add <4 x i32> %402, <i32 3, i32 3, i32 3, i32 3>
  %404 = urem <4 x i32> %403, <i32 80, i32 80, i32 80, i32 80>
  %405 = sitofp <4 x i32> %404 to <4 x double>
  %406 = fmul fast <4 x double> %405, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %407 = shl i64 %index1023, 3
  %408 = add nuw nsw i64 %407, %400
  %409 = getelementptr i8, i8* %call, i64 %408
  %410 = bitcast i8* %409 to <4 x double>*
  store <4 x double> %406, <4 x double>* %410, align 8, !alias.scope !99, !noalias !101
  %index.next1024 = add i64 %index1023, 4
  %vec.ind.next1030 = add <4 x i32> %vec.ind1029, <i32 4, i32 4, i32 4, i32 4>
  %411 = icmp eq i64 %index.next1024, 32
  br i1 %411, label %polly.loop_exit760.1944, label %vector.body1021, !llvm.loop !121

polly.loop_exit760.1944:                          ; preds = %vector.body1021
  %polly.indvar_next756.1942 = add nuw nsw i64 %polly.indvar755.1932, 1
  %exitcond900.1943.not = icmp eq i64 %polly.indvar_next756.1942, 32
  br i1 %exitcond900.1943.not, label %polly.loop_header752.1.1, label %polly.loop_header752.1933

polly.loop_header752.1.1:                         ; preds = %polly.loop_exit760.1944, %polly.loop_exit760.1.1
  %polly.indvar755.1.1 = phi i64 [ %polly.indvar_next756.1.1, %polly.loop_exit760.1.1 ], [ 0, %polly.loop_exit760.1944 ]
  %412 = add nuw nsw i64 %polly.indvar755.1.1, 32
  %413 = mul nuw nsw i64 %412, 640
  %414 = trunc i64 %412 to i32
  %broadcast.splatinsert1043 = insertelement <4 x i32> poison, i32 %414, i32 0
  %broadcast.splat1044 = shufflevector <4 x i32> %broadcast.splatinsert1043, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %polly.loop_header752.1.1
  %index1037 = phi i64 [ 0, %polly.loop_header752.1.1 ], [ %index.next1038, %vector.body1035 ]
  %vec.ind1041 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.1 ], [ %vec.ind.next1042, %vector.body1035 ]
  %415 = add nuw nsw <4 x i64> %vec.ind1041, <i64 32, i64 32, i64 32, i64 32>
  %416 = trunc <4 x i64> %415 to <4 x i32>
  %417 = mul <4 x i32> %broadcast.splat1044, %416
  %418 = add <4 x i32> %417, <i32 3, i32 3, i32 3, i32 3>
  %419 = urem <4 x i32> %418, <i32 80, i32 80, i32 80, i32 80>
  %420 = sitofp <4 x i32> %419 to <4 x double>
  %421 = fmul fast <4 x double> %420, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %422 = extractelement <4 x i64> %415, i32 0
  %423 = shl i64 %422, 3
  %424 = add nuw nsw i64 %423, %413
  %425 = getelementptr i8, i8* %call, i64 %424
  %426 = bitcast i8* %425 to <4 x double>*
  store <4 x double> %421, <4 x double>* %426, align 8, !alias.scope !99, !noalias !101
  %index.next1038 = add i64 %index1037, 4
  %vec.ind.next1042 = add <4 x i64> %vec.ind1041, <i64 4, i64 4, i64 4, i64 4>
  %427 = icmp eq i64 %index.next1038, 32
  br i1 %427, label %polly.loop_exit760.1.1, label %vector.body1035, !llvm.loop !122

polly.loop_exit760.1.1:                           ; preds = %vector.body1035
  %polly.indvar_next756.1.1 = add nuw nsw i64 %polly.indvar755.1.1, 1
  %exitcond900.1.1.not = icmp eq i64 %polly.indvar_next756.1.1, 32
  br i1 %exitcond900.1.1.not, label %polly.loop_header752.2.1, label %polly.loop_header752.1.1

polly.loop_header752.2.1:                         ; preds = %polly.loop_exit760.1.1, %polly.loop_exit760.2.1
  %polly.indvar755.2.1 = phi i64 [ %polly.indvar_next756.2.1, %polly.loop_exit760.2.1 ], [ 0, %polly.loop_exit760.1.1 ]
  %428 = add nuw nsw i64 %polly.indvar755.2.1, 32
  %429 = mul nuw nsw i64 %428, 640
  %430 = trunc i64 %428 to i32
  %broadcast.splatinsert1055 = insertelement <4 x i32> poison, i32 %430, i32 0
  %broadcast.splat1056 = shufflevector <4 x i32> %broadcast.splatinsert1055, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1047

vector.body1047:                                  ; preds = %vector.body1047, %polly.loop_header752.2.1
  %index1049 = phi i64 [ 0, %polly.loop_header752.2.1 ], [ %index.next1050, %vector.body1047 ]
  %vec.ind1053 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2.1 ], [ %vec.ind.next1054, %vector.body1047 ]
  %431 = add nuw nsw <4 x i64> %vec.ind1053, <i64 64, i64 64, i64 64, i64 64>
  %432 = trunc <4 x i64> %431 to <4 x i32>
  %433 = mul <4 x i32> %broadcast.splat1056, %432
  %434 = add <4 x i32> %433, <i32 3, i32 3, i32 3, i32 3>
  %435 = urem <4 x i32> %434, <i32 80, i32 80, i32 80, i32 80>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %438 = extractelement <4 x i64> %431, i32 0
  %439 = shl i64 %438, 3
  %440 = add nuw nsw i64 %439, %429
  %441 = getelementptr i8, i8* %call, i64 %440
  %442 = bitcast i8* %441 to <4 x double>*
  store <4 x double> %437, <4 x double>* %442, align 8, !alias.scope !99, !noalias !101
  %index.next1050 = add i64 %index1049, 4
  %vec.ind.next1054 = add <4 x i64> %vec.ind1053, <i64 4, i64 4, i64 4, i64 4>
  %443 = icmp eq i64 %index.next1050, 16
  br i1 %443, label %polly.loop_exit760.2.1, label %vector.body1047, !llvm.loop !123

polly.loop_exit760.2.1:                           ; preds = %vector.body1047
  %polly.indvar_next756.2.1 = add nuw nsw i64 %polly.indvar755.2.1, 1
  %exitcond900.2.1.not = icmp eq i64 %polly.indvar_next756.2.1, 32
  br i1 %exitcond900.2.1.not, label %polly.loop_header752.2947, label %polly.loop_header752.2.1

polly.loop_header752.2947:                        ; preds = %polly.loop_exit760.2.1, %polly.loop_exit760.2958
  %polly.indvar755.2946 = phi i64 [ %polly.indvar_next756.2956, %polly.loop_exit760.2958 ], [ 0, %polly.loop_exit760.2.1 ]
  %444 = add nuw nsw i64 %polly.indvar755.2946, 64
  %445 = mul nuw nsw i64 %444, 640
  %446 = trunc i64 %444 to i32
  %broadcast.splatinsert1069 = insertelement <4 x i32> poison, i32 %446, i32 0
  %broadcast.splat1070 = shufflevector <4 x i32> %broadcast.splatinsert1069, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1059

vector.body1059:                                  ; preds = %vector.body1059, %polly.loop_header752.2947
  %index1061 = phi i64 [ 0, %polly.loop_header752.2947 ], [ %index.next1062, %vector.body1059 ]
  %vec.ind1067 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.2947 ], [ %vec.ind.next1068, %vector.body1059 ]
  %447 = mul <4 x i32> %vec.ind1067, %broadcast.splat1070
  %448 = add <4 x i32> %447, <i32 3, i32 3, i32 3, i32 3>
  %449 = urem <4 x i32> %448, <i32 80, i32 80, i32 80, i32 80>
  %450 = sitofp <4 x i32> %449 to <4 x double>
  %451 = fmul fast <4 x double> %450, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %452 = shl i64 %index1061, 3
  %453 = add nuw nsw i64 %452, %445
  %454 = getelementptr i8, i8* %call, i64 %453
  %455 = bitcast i8* %454 to <4 x double>*
  store <4 x double> %451, <4 x double>* %455, align 8, !alias.scope !99, !noalias !101
  %index.next1062 = add i64 %index1061, 4
  %vec.ind.next1068 = add <4 x i32> %vec.ind1067, <i32 4, i32 4, i32 4, i32 4>
  %456 = icmp eq i64 %index.next1062, 32
  br i1 %456, label %polly.loop_exit760.2958, label %vector.body1059, !llvm.loop !124

polly.loop_exit760.2958:                          ; preds = %vector.body1059
  %polly.indvar_next756.2956 = add nuw nsw i64 %polly.indvar755.2946, 1
  %exitcond900.2957.not = icmp eq i64 %polly.indvar_next756.2956, 16
  br i1 %exitcond900.2957.not, label %polly.loop_header752.1.2, label %polly.loop_header752.2947

polly.loop_header752.1.2:                         ; preds = %polly.loop_exit760.2958, %polly.loop_exit760.1.2
  %polly.indvar755.1.2 = phi i64 [ %polly.indvar_next756.1.2, %polly.loop_exit760.1.2 ], [ 0, %polly.loop_exit760.2958 ]
  %457 = add nuw nsw i64 %polly.indvar755.1.2, 64
  %458 = mul nuw nsw i64 %457, 640
  %459 = trunc i64 %457 to i32
  %broadcast.splatinsert1081 = insertelement <4 x i32> poison, i32 %459, i32 0
  %broadcast.splat1082 = shufflevector <4 x i32> %broadcast.splatinsert1081, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %polly.loop_header752.1.2
  %index1075 = phi i64 [ 0, %polly.loop_header752.1.2 ], [ %index.next1076, %vector.body1073 ]
  %vec.ind1079 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.2 ], [ %vec.ind.next1080, %vector.body1073 ]
  %460 = add nuw nsw <4 x i64> %vec.ind1079, <i64 32, i64 32, i64 32, i64 32>
  %461 = trunc <4 x i64> %460 to <4 x i32>
  %462 = mul <4 x i32> %broadcast.splat1082, %461
  %463 = add <4 x i32> %462, <i32 3, i32 3, i32 3, i32 3>
  %464 = urem <4 x i32> %463, <i32 80, i32 80, i32 80, i32 80>
  %465 = sitofp <4 x i32> %464 to <4 x double>
  %466 = fmul fast <4 x double> %465, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %467 = extractelement <4 x i64> %460, i32 0
  %468 = shl i64 %467, 3
  %469 = add nuw nsw i64 %468, %458
  %470 = getelementptr i8, i8* %call, i64 %469
  %471 = bitcast i8* %470 to <4 x double>*
  store <4 x double> %466, <4 x double>* %471, align 8, !alias.scope !99, !noalias !101
  %index.next1076 = add i64 %index1075, 4
  %vec.ind.next1080 = add <4 x i64> %vec.ind1079, <i64 4, i64 4, i64 4, i64 4>
  %472 = icmp eq i64 %index.next1076, 32
  br i1 %472, label %polly.loop_exit760.1.2, label %vector.body1073, !llvm.loop !125

polly.loop_exit760.1.2:                           ; preds = %vector.body1073
  %polly.indvar_next756.1.2 = add nuw nsw i64 %polly.indvar755.1.2, 1
  %exitcond900.1.2.not = icmp eq i64 %polly.indvar_next756.1.2, 16
  br i1 %exitcond900.1.2.not, label %polly.loop_header752.2.2, label %polly.loop_header752.1.2

polly.loop_header752.2.2:                         ; preds = %polly.loop_exit760.1.2, %polly.loop_exit760.2.2
  %polly.indvar755.2.2 = phi i64 [ %polly.indvar_next756.2.2, %polly.loop_exit760.2.2 ], [ 0, %polly.loop_exit760.1.2 ]
  %473 = add nuw nsw i64 %polly.indvar755.2.2, 64
  %474 = mul nuw nsw i64 %473, 640
  %475 = trunc i64 %473 to i32
  %broadcast.splatinsert1093 = insertelement <4 x i32> poison, i32 %475, i32 0
  %broadcast.splat1094 = shufflevector <4 x i32> %broadcast.splatinsert1093, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %polly.loop_header752.2.2
  %index1087 = phi i64 [ 0, %polly.loop_header752.2.2 ], [ %index.next1088, %vector.body1085 ]
  %vec.ind1091 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2.2 ], [ %vec.ind.next1092, %vector.body1085 ]
  %476 = add nuw nsw <4 x i64> %vec.ind1091, <i64 64, i64 64, i64 64, i64 64>
  %477 = trunc <4 x i64> %476 to <4 x i32>
  %478 = mul <4 x i32> %broadcast.splat1094, %477
  %479 = add <4 x i32> %478, <i32 3, i32 3, i32 3, i32 3>
  %480 = urem <4 x i32> %479, <i32 80, i32 80, i32 80, i32 80>
  %481 = sitofp <4 x i32> %480 to <4 x double>
  %482 = fmul fast <4 x double> %481, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %483 = extractelement <4 x i64> %476, i32 0
  %484 = shl i64 %483, 3
  %485 = add nuw nsw i64 %484, %474
  %486 = getelementptr i8, i8* %call, i64 %485
  %487 = bitcast i8* %486 to <4 x double>*
  store <4 x double> %482, <4 x double>* %487, align 8, !alias.scope !99, !noalias !101
  %index.next1088 = add i64 %index1087, 4
  %vec.ind.next1092 = add <4 x i64> %vec.ind1091, <i64 4, i64 4, i64 4, i64 4>
  %488 = icmp eq i64 %index.next1088, 16
  br i1 %488, label %polly.loop_exit760.2.2, label %vector.body1085, !llvm.loop !126

polly.loop_exit760.2.2:                           ; preds = %vector.body1085
  %polly.indvar_next756.2.2 = add nuw nsw i64 %polly.indvar755.2.2, 1
  %exitcond900.2.2.not = icmp eq i64 %polly.indvar_next756.2.2, 16
  br i1 %exitcond900.2.2.not, label %polly.loop_header779, label %polly.loop_header752.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 20}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 100}
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
!45 = !{!"llvm.loop.tile.size", i32 50}
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
