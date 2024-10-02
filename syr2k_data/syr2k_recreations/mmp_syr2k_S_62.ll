; ModuleID = 'syr2k_recreations//mmp_syr2k_S_62.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_62.c"
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
  %scevgep969 = getelementptr i8, i8* %call2, i64 %12
  %scevgep968 = getelementptr i8, i8* %call2, i64 %11
  %scevgep967 = getelementptr i8, i8* %call1, i64 %12
  %scevgep966 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep966, %scevgep969
  %bound1 = icmp ult i8* %scevgep968, %scevgep967
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
  br i1 %exitcond18.not.i, label %vector.ph973, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph973:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert980 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat981 = shufflevector <4 x i64> %broadcast.splatinsert980, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body972

vector.body972:                                   ; preds = %vector.body972, %vector.ph973
  %index974 = phi i64 [ 0, %vector.ph973 ], [ %index.next975, %vector.body972 ]
  %vec.ind978 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph973 ], [ %vec.ind.next979, %vector.body972 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind978, %broadcast.splat981
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv7.i, i64 %index974
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next975 = add i64 %index974, 4
  %vec.ind.next979 = add <4 x i64> %vec.ind978, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next975, 80
  br i1 %40, label %for.inc41.i, label %vector.body972, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body972
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph973, !llvm.loop !17

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
  br i1 %min.iters.check, label %for.body3.i46.preheader1326, label %vector.ph1255

vector.ph1255:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1255
  %index1256 = phi i64 [ 0, %vector.ph1255 ], [ %index.next1257, %vector.body1254 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i, i64 %index1256
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1257 = add i64 %index1256, 4
  %46 = icmp eq i64 %index.next1257, %n.vec
  br i1 %46, label %middle.block1252, label %vector.body1254, !llvm.loop !18

middle.block1252:                                 ; preds = %vector.body1254
  %cmp.n1259 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1259, label %for.inc6.i, label %for.body3.i46.preheader1326

for.body3.i46.preheader1326:                      ; preds = %for.body3.i46.preheader, %middle.block1252
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1252 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1326, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1326 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1252, %for.cond1.preheader.i45
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting442
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start268, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1275 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1275, label %for.body3.i60.preheader1325, label %vector.ph1276

vector.ph1276:                                    ; preds = %for.body3.i60.preheader
  %n.vec1278 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1276
  %index1279 = phi i64 [ 0, %vector.ph1276 ], [ %index.next1280, %vector.body1274 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i52, i64 %index1279
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1283 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1283, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1280 = add i64 %index1279, 4
  %57 = icmp eq i64 %index.next1280, %n.vec1278
  br i1 %57, label %middle.block1272, label %vector.body1274, !llvm.loop !59

middle.block1272:                                 ; preds = %vector.body1274
  %cmp.n1282 = icmp eq i64 %indvars.iv21.i52, %n.vec1278
  br i1 %cmp.n1282, label %for.inc6.i63, label %for.body3.i60.preheader1325

for.body3.i60.preheader1325:                      ; preds = %for.body3.i60.preheader, %middle.block1272
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1278, %middle.block1272 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1325, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1325 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1272, %for.cond1.preheader.i54
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
  %min.iters.check1301 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1301, label %for.body3.i99.preheader1324, label %vector.ph1302

vector.ph1302:                                    ; preds = %for.body3.i99.preheader
  %n.vec1304 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1300

vector.body1300:                                  ; preds = %vector.body1300, %vector.ph1302
  %index1305 = phi i64 [ 0, %vector.ph1302 ], [ %index.next1306, %vector.body1300 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i91, i64 %index1305
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1309 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1309, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1306 = add i64 %index1305, 4
  %68 = icmp eq i64 %index.next1306, %n.vec1304
  br i1 %68, label %middle.block1298, label %vector.body1300, !llvm.loop !61

middle.block1298:                                 ; preds = %vector.body1300
  %cmp.n1308 = icmp eq i64 %indvars.iv21.i91, %n.vec1304
  br i1 %cmp.n1308, label %for.inc6.i102, label %for.body3.i99.preheader1324

for.body3.i99.preheader1324:                      ; preds = %for.body3.i99.preheader, %middle.block1298
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1304, %middle.block1298 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1324, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1324 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1298, %for.cond1.preheader.i93
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !63
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call764, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !65

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !66

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !63
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

polly.exiting:                                    ; preds = %polly.loop_exit229.1
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1313 = phi i64 [ %indvar.next1314, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1313, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1315 = icmp ult i64 %88, 4
  br i1 %min.iters.check1315, label %polly.loop_header191.preheader, label %vector.ph1316

vector.ph1316:                                    ; preds = %polly.loop_header
  %n.vec1318 = and i64 %88, -4
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1320, %vector.body1312 ]
  %90 = shl nuw nsw i64 %index1319, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1323 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1323, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1320 = add i64 %index1319, 4
  %95 = icmp eq i64 %index.next1320, %n.vec1318
  br i1 %95, label %middle.block1310, label %vector.body1312, !llvm.loop !73

middle.block1310:                                 ; preds = %vector.body1312
  %cmp.n1322 = icmp eq i64 %88, %n.vec1318
  br i1 %cmp.n1322, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1310
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1318, %middle.block1310 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1310
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1314 = add i64 %indvar1313, 1
  br i1 %exitcond844.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call2 = bitcast i8* %malloccall to double*
  br label %polly.loop_header199

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond843.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond843.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit229.1
  %indvars.iv836 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next837, %polly.loop_exit229.1 ]
  %indvars.iv834 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %indvars.iv.next835, %polly.loop_exit229.1 ]
  %indvars.iv = phi i64 [ 80, %polly.loop_header199.preheader ], [ %indvars.iv.next, %polly.loop_exit229.1 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit229.1 ]
  %97 = mul i64 %polly.indvar202, 20
  br label %polly.loop_header205

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_exit213 ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar208, 80
  br label %polly.loop_header211

polly.loop_exit213:                               ; preds = %polly.loop_header211
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next209, 60
  br i1 %exitcond833.not, label %polly.loop_header221.preheader, label %polly.loop_header205

polly.loop_header221.preheader:                   ; preds = %polly.loop_exit213
  %98 = mul nsw i64 %polly.indvar202, -20
  %polly.loop_guard.not = icmp sgt i64 %97, 63
  br i1 %polly.loop_guard.not, label %polly.loop_exit229, label %polly.loop_header227.preheader

polly.loop_header211:                             ; preds = %polly.loop_header211, %polly.loop_header205
  %polly.indvar214 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next215, %polly.loop_header211 ]
  %99 = add nuw nsw i64 %polly.indvar214, %97
  %polly.access.mul.call2218 = mul nuw nsw i64 %99, 60
  %polly.access.add.call2219 = add nuw nsw i64 %polly.access.mul.call2218, %polly.indvar208
  %polly.access.call2220 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2219
  %polly.access.call2220.load = load double, double* %polly.access.call2220, align 8, !alias.scope !71, !noalias !76
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2220.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next215, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit213, label %polly.loop_header211

polly.loop_header227.preheader:                   ; preds = %polly.loop_header221.preheader
  %100 = add i64 %indvars.iv834, %indvars.iv836
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_header221.preheader
  %101 = icmp sgt i64 %97, 64
  %102 = select i1 %101, i64 %97, i64 64
  %103 = add nsw i64 %102, -64
  %polly.loop_guard.not.1 = icmp sgt i64 %102, 79
  br i1 %polly.loop_guard.not.1, label %polly.loop_exit229.1, label %polly.loop_header227.preheader.1

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ 0, %polly.loop_header227.preheader ]
  %104 = shl nuw nsw i64 %polly.indvar230, 3
  %scevgep247 = getelementptr i8, i8* %call1, i64 %104
  %polly.access.mul.Packed_MemRef_call2251 = mul nuw nsw i64 %polly.indvar230, 80
  br label %polly.loop_header233

polly.loop_exit235:                               ; preds = %polly.loop_exit242
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next231, 60
  br i1 %exitcond841.not, label %polly.loop_exit229, label %polly.loop_header227

polly.loop_header233:                             ; preds = %polly.loop_exit242, %polly.loop_header227
  %indvars.iv838 = phi i64 [ %indvars.iv.next839, %polly.loop_exit242 ], [ %100, %polly.loop_header227 ]
  %polly.indvar236 = phi i64 [ %polly.indvar_next237, %polly.loop_exit242 ], [ %97, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv838, i64 19)
  %105 = add i64 %polly.indvar236, %98
  %polly.loop_guard243958 = icmp sgt i64 %105, -1
  br i1 %polly.loop_guard243958, label %polly.loop_header240.preheader, label %polly.loop_exit242

polly.loop_header240.preheader:                   ; preds = %polly.loop_header233
  %polly.access.add.Packed_MemRef_call2252 = add nsw i64 %polly.access.mul.Packed_MemRef_call2251, %105
  %polly.access.Packed_MemRef_call2253 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252
  %_p_scalar_254 = load double, double* %polly.access.Packed_MemRef_call2253, align 8
  %106 = mul i64 %polly.indvar236, 480
  %scevgep260 = getelementptr i8, i8* %scevgep247, i64 %106
  %scevgep260261 = bitcast i8* %scevgep260 to double*
  %_p_scalar_262 = load double, double* %scevgep260261, align 8, !alias.scope !70, !noalias !77
  %107 = mul i64 %polly.indvar236, 640
  br label %polly.loop_header240

polly.loop_exit242:                               ; preds = %polly.loop_header240, %polly.loop_header233
  %polly.indvar_next237 = add nuw nsw i64 %polly.indvar236, 1
  %polly.loop_cond238.not.not = icmp ult i64 %polly.indvar236, 63
  %indvars.iv.next839 = add i64 %indvars.iv838, 1
  br i1 %polly.loop_cond238.not.not, label %polly.loop_header233, label %polly.loop_exit235

polly.loop_header240:                             ; preds = %polly.loop_header240.preheader, %polly.loop_header240
  %polly.indvar244 = phi i64 [ %polly.indvar_next245, %polly.loop_header240 ], [ 0, %polly.loop_header240.preheader ]
  %108 = add nuw nsw i64 %polly.indvar244, %97
  %109 = mul nuw nsw i64 %108, 480
  %scevgep248 = getelementptr i8, i8* %scevgep247, i64 %109
  %scevgep248249 = bitcast i8* %scevgep248 to double*
  %_p_scalar_250 = load double, double* %scevgep248249, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112 = fmul fast double %_p_scalar_254, %_p_scalar_250
  %polly.access.add.Packed_MemRef_call2256 = add nuw nsw i64 %polly.indvar244, %polly.access.mul.Packed_MemRef_call2251
  %polly.access.Packed_MemRef_call2257 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256
  %_p_scalar_258 = load double, double* %polly.access.Packed_MemRef_call2257, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_262, %_p_scalar_258
  %110 = shl i64 %108, 3
  %111 = add i64 %110, %107
  %scevgep263 = getelementptr i8, i8* %call, i64 %111
  %scevgep263264 = bitcast i8* %scevgep263 to double*
  %_p_scalar_265 = load double, double* %scevgep263264, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_265
  store double %p_add42.i118, double* %scevgep263264, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next245 = add nuw nsw i64 %polly.indvar244, 1
  %exitcond840.not = icmp eq i64 %polly.indvar244, %smin
  br i1 %exitcond840.not, label %polly.loop_exit242, label %polly.loop_header240

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit400.1
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1287 = phi i64 [ %indvar.next1288, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %112 = add i64 %indvar1287, 1
  %113 = mul nuw nsw i64 %polly.indvar357, 640
  %scevgep366 = getelementptr i8, i8* %call, i64 %113
  %min.iters.check1289 = icmp ult i64 %112, 4
  br i1 %min.iters.check1289, label %polly.loop_header360.preheader, label %vector.ph1290

vector.ph1290:                                    ; preds = %polly.loop_header354
  %n.vec1292 = and i64 %112, -4
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %vector.ph1290
  %index1293 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1294, %vector.body1286 ]
  %114 = shl nuw nsw i64 %index1293, 3
  %115 = getelementptr i8, i8* %scevgep366, i64 %114
  %116 = bitcast i8* %115 to <4 x double>*
  %wide.load1297 = load <4 x double>, <4 x double>* %116, align 8, !alias.scope !78, !noalias !80
  %117 = fmul fast <4 x double> %wide.load1297, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %118 = bitcast i8* %115 to <4 x double>*
  store <4 x double> %117, <4 x double>* %118, align 8, !alias.scope !78, !noalias !80
  %index.next1294 = add i64 %index1293, 4
  %119 = icmp eq i64 %index.next1294, %n.vec1292
  br i1 %119, label %middle.block1284, label %vector.body1286, !llvm.loop !84

middle.block1284:                                 ; preds = %vector.body1286
  %cmp.n1296 = icmp eq i64 %112, %n.vec1292
  br i1 %cmp.n1296, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1284
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1292, %middle.block1284 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1284
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next358, 80
  %indvar.next1288 = add i64 %indvar1287, 1
  br i1 %exitcond861.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call2271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %120 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %120
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond860.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !85

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit400.1
  %indvars.iv851 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next852, %polly.loop_exit400.1 ]
  %indvars.iv849 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %indvars.iv.next850, %polly.loop_exit400.1 ]
  %indvars.iv845 = phi i64 [ 80, %polly.loop_header370.preheader ], [ %indvars.iv.next846, %polly.loop_exit400.1 ]
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %polly.indvar_next374, %polly.loop_exit400.1 ]
  %121 = mul i64 %polly.indvar373, 20
  br label %polly.loop_header376

polly.loop_header376:                             ; preds = %polly.loop_exit384, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_exit384 ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar379, 80
  br label %polly.loop_header382

polly.loop_exit384:                               ; preds = %polly.loop_header382
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next380, 60
  br i1 %exitcond848.not, label %polly.loop_header392.preheader, label %polly.loop_header376

polly.loop_header392.preheader:                   ; preds = %polly.loop_exit384
  %122 = mul nsw i64 %polly.indvar373, -20
  %polly.loop_guard408.not = icmp sgt i64 %121, 63
  br i1 %polly.loop_guard408.not, label %polly.loop_exit400, label %polly.loop_header398.preheader

polly.loop_header382:                             ; preds = %polly.loop_header382, %polly.loop_header376
  %polly.indvar385 = phi i64 [ 0, %polly.loop_header376 ], [ %polly.indvar_next386, %polly.loop_header382 ]
  %123 = add nuw nsw i64 %polly.indvar385, %121
  %polly.access.mul.call2389 = mul nuw nsw i64 %123, 60
  %polly.access.add.call2390 = add nuw nsw i64 %polly.access.mul.call2389, %polly.indvar379
  %polly.access.call2391 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2390
  %polly.access.call2391.load = load double, double* %polly.access.call2391, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar385, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2391.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next386, %indvars.iv845
  br i1 %exitcond847.not, label %polly.loop_exit384, label %polly.loop_header382

polly.loop_header398.preheader:                   ; preds = %polly.loop_header392.preheader
  %124 = add i64 %indvars.iv849, %indvars.iv851
  br label %polly.loop_header398

polly.loop_exit400:                               ; preds = %polly.loop_exit407, %polly.loop_header392.preheader
  %125 = icmp sgt i64 %121, 64
  %126 = select i1 %125, i64 %121, i64 64
  %127 = add nsw i64 %126, -64
  %polly.loop_guard408.not.1 = icmp sgt i64 %126, 79
  br i1 %polly.loop_guard408.not.1, label %polly.loop_exit400.1, label %polly.loop_header398.preheader.1

polly.loop_header398:                             ; preds = %polly.loop_header398.preheader, %polly.loop_exit407
  %polly.indvar401 = phi i64 [ %polly.indvar_next402, %polly.loop_exit407 ], [ 0, %polly.loop_header398.preheader ]
  %128 = shl nuw nsw i64 %polly.indvar401, 3
  %scevgep420 = getelementptr i8, i8* %call1, i64 %128
  %polly.access.mul.Packed_MemRef_call2271424 = mul nuw nsw i64 %polly.indvar401, 80
  br label %polly.loop_header405

polly.loop_exit407:                               ; preds = %polly.loop_exit415
  %polly.indvar_next402 = add nuw nsw i64 %polly.indvar401, 1
  %exitcond858.not = icmp eq i64 %polly.indvar_next402, 60
  br i1 %exitcond858.not, label %polly.loop_exit400, label %polly.loop_header398

polly.loop_header405:                             ; preds = %polly.loop_exit415, %polly.loop_header398
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit415 ], [ %124, %polly.loop_header398 ]
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit415 ], [ %121, %polly.loop_header398 ]
  %smin856 = call i64 @llvm.smin.i64(i64 %indvars.iv854, i64 19)
  %129 = add i64 %polly.indvar409, %122
  %polly.loop_guard416960 = icmp sgt i64 %129, -1
  br i1 %polly.loop_guard416960, label %polly.loop_header413.preheader, label %polly.loop_exit415

polly.loop_header413.preheader:                   ; preds = %polly.loop_header405
  %polly.access.add.Packed_MemRef_call2271425 = add nsw i64 %polly.access.mul.Packed_MemRef_call2271424, %129
  %polly.access.Packed_MemRef_call2271426 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271425
  %_p_scalar_427 = load double, double* %polly.access.Packed_MemRef_call2271426, align 8
  %130 = mul i64 %polly.indvar409, 480
  %scevgep433 = getelementptr i8, i8* %scevgep420, i64 %130
  %scevgep433434 = bitcast i8* %scevgep433 to double*
  %_p_scalar_435 = load double, double* %scevgep433434, align 8, !alias.scope !81, !noalias !87
  %131 = mul i64 %polly.indvar409, 640
  br label %polly.loop_header413

polly.loop_exit415:                               ; preds = %polly.loop_header413, %polly.loop_header405
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %polly.loop_cond411.not.not = icmp ult i64 %polly.indvar409, 63
  %indvars.iv.next855 = add i64 %indvars.iv854, 1
  br i1 %polly.loop_cond411.not.not, label %polly.loop_header405, label %polly.loop_exit407

polly.loop_header413:                             ; preds = %polly.loop_header413.preheader, %polly.loop_header413
  %polly.indvar417 = phi i64 [ %polly.indvar_next418, %polly.loop_header413 ], [ 0, %polly.loop_header413.preheader ]
  %132 = add nuw nsw i64 %polly.indvar417, %121
  %133 = mul nuw nsw i64 %132, 480
  %scevgep421 = getelementptr i8, i8* %scevgep420, i64 %133
  %scevgep421422 = bitcast i8* %scevgep421 to double*
  %_p_scalar_423 = load double, double* %scevgep421422, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73 = fmul fast double %_p_scalar_427, %_p_scalar_423
  %polly.access.add.Packed_MemRef_call2271429 = add nuw nsw i64 %polly.indvar417, %polly.access.mul.Packed_MemRef_call2271424
  %polly.access.Packed_MemRef_call2271430 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271429
  %_p_scalar_431 = load double, double* %polly.access.Packed_MemRef_call2271430, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_435, %_p_scalar_431
  %134 = shl i64 %132, 3
  %135 = add i64 %134, %131
  %scevgep436 = getelementptr i8, i8* %call, i64 %135
  %scevgep436437 = bitcast i8* %scevgep436 to double*
  %_p_scalar_438 = load double, double* %scevgep436437, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_438
  store double %p_add42.i79, double* %scevgep436437, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next418 = add nuw nsw i64 %polly.indvar417, 1
  %exitcond857.not = icmp eq i64 %polly.indvar417, %smin856
  br i1 %exitcond857.not, label %polly.loop_exit415, label %polly.loop_header413

polly.start441:                                   ; preds = %init_array.exit
  %malloccall443 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header527

polly.exiting442:                                 ; preds = %polly.loop_exit573.1
  tail call void @free(i8* %malloccall443)
  br label %kernel_syr2k.exit

polly.loop_header527:                             ; preds = %polly.loop_exit535, %polly.start441
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit535 ], [ 0, %polly.start441 ]
  %polly.indvar530 = phi i64 [ %polly.indvar_next531, %polly.loop_exit535 ], [ 1, %polly.start441 ]
  %136 = add i64 %indvar, 1
  %137 = mul nuw nsw i64 %polly.indvar530, 640
  %scevgep539 = getelementptr i8, i8* %call, i64 %137
  %min.iters.check1263 = icmp ult i64 %136, 4
  br i1 %min.iters.check1263, label %polly.loop_header533.preheader, label %vector.ph1264

vector.ph1264:                                    ; preds = %polly.loop_header527
  %n.vec1266 = and i64 %136, -4
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1264
  %index1267 = phi i64 [ 0, %vector.ph1264 ], [ %index.next1268, %vector.body1262 ]
  %138 = shl nuw nsw i64 %index1267, 3
  %139 = getelementptr i8, i8* %scevgep539, i64 %138
  %140 = bitcast i8* %139 to <4 x double>*
  %wide.load1271 = load <4 x double>, <4 x double>* %140, align 8, !alias.scope !88, !noalias !90
  %141 = fmul fast <4 x double> %wide.load1271, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %142 = bitcast i8* %139 to <4 x double>*
  store <4 x double> %141, <4 x double>* %142, align 8, !alias.scope !88, !noalias !90
  %index.next1268 = add i64 %index1267, 4
  %143 = icmp eq i64 %index.next1268, %n.vec1266
  br i1 %143, label %middle.block1260, label %vector.body1262, !llvm.loop !94

middle.block1260:                                 ; preds = %vector.body1262
  %cmp.n1270 = icmp eq i64 %136, %n.vec1266
  br i1 %cmp.n1270, label %polly.loop_exit535, label %polly.loop_header533.preheader

polly.loop_header533.preheader:                   ; preds = %polly.loop_header527, %middle.block1260
  %polly.indvar536.ph = phi i64 [ 0, %polly.loop_header527 ], [ %n.vec1266, %middle.block1260 ]
  br label %polly.loop_header533

polly.loop_exit535:                               ; preds = %polly.loop_header533, %middle.block1260
  %polly.indvar_next531 = add nuw nsw i64 %polly.indvar530, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next531, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond878.not, label %polly.loop_header543.preheader, label %polly.loop_header527

polly.loop_header543.preheader:                   ; preds = %polly.loop_exit535
  %Packed_MemRef_call2444 = bitcast i8* %malloccall443 to double*
  br label %polly.loop_header543

polly.loop_header533:                             ; preds = %polly.loop_header533.preheader, %polly.loop_header533
  %polly.indvar536 = phi i64 [ %polly.indvar_next537, %polly.loop_header533 ], [ %polly.indvar536.ph, %polly.loop_header533.preheader ]
  %144 = shl nuw nsw i64 %polly.indvar536, 3
  %scevgep540 = getelementptr i8, i8* %scevgep539, i64 %144
  %scevgep540541 = bitcast i8* %scevgep540 to double*
  %_p_scalar_542 = load double, double* %scevgep540541, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_542, 1.200000e+00
  store double %p_mul.i, double* %scevgep540541, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next537 = add nuw nsw i64 %polly.indvar536, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next537, %polly.indvar530
  br i1 %exitcond877.not, label %polly.loop_exit535, label %polly.loop_header533, !llvm.loop !95

polly.loop_header543:                             ; preds = %polly.loop_header543.preheader, %polly.loop_exit573.1
  %indvars.iv868 = phi i64 [ 0, %polly.loop_header543.preheader ], [ %indvars.iv.next869, %polly.loop_exit573.1 ]
  %indvars.iv866 = phi i64 [ 0, %polly.loop_header543.preheader ], [ %indvars.iv.next867, %polly.loop_exit573.1 ]
  %indvars.iv862 = phi i64 [ 80, %polly.loop_header543.preheader ], [ %indvars.iv.next863, %polly.loop_exit573.1 ]
  %polly.indvar546 = phi i64 [ 0, %polly.loop_header543.preheader ], [ %polly.indvar_next547, %polly.loop_exit573.1 ]
  %145 = mul i64 %polly.indvar546, 20
  br label %polly.loop_header549

polly.loop_header549:                             ; preds = %polly.loop_exit557, %polly.loop_header543
  %polly.indvar552 = phi i64 [ 0, %polly.loop_header543 ], [ %polly.indvar_next553, %polly.loop_exit557 ]
  %polly.access.mul.Packed_MemRef_call2444 = mul nuw nsw i64 %polly.indvar552, 80
  br label %polly.loop_header555

polly.loop_exit557:                               ; preds = %polly.loop_header555
  %polly.indvar_next553 = add nuw nsw i64 %polly.indvar552, 1
  %exitcond865.not = icmp eq i64 %polly.indvar_next553, 60
  br i1 %exitcond865.not, label %polly.loop_header565.preheader, label %polly.loop_header549

polly.loop_header565.preheader:                   ; preds = %polly.loop_exit557
  %146 = mul nsw i64 %polly.indvar546, -20
  %polly.loop_guard581.not = icmp sgt i64 %145, 63
  br i1 %polly.loop_guard581.not, label %polly.loop_exit573, label %polly.loop_header571.preheader

polly.loop_header555:                             ; preds = %polly.loop_header555, %polly.loop_header549
  %polly.indvar558 = phi i64 [ 0, %polly.loop_header549 ], [ %polly.indvar_next559, %polly.loop_header555 ]
  %147 = add nuw nsw i64 %polly.indvar558, %145
  %polly.access.mul.call2562 = mul nuw nsw i64 %147, 60
  %polly.access.add.call2563 = add nuw nsw i64 %polly.access.mul.call2562, %polly.indvar552
  %polly.access.call2564 = getelementptr double, double* %polly.access.cast.call2626, i64 %polly.access.add.call2563
  %polly.access.call2564.load = load double, double* %polly.access.call2564, align 8, !alias.scope !92, !noalias !96
  %polly.access.add.Packed_MemRef_call2444 = add nuw nsw i64 %polly.indvar558, %polly.access.mul.Packed_MemRef_call2444
  %polly.access.Packed_MemRef_call2444 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444
  store double %polly.access.call2564.load, double* %polly.access.Packed_MemRef_call2444, align 8
  %polly.indvar_next559 = add nuw nsw i64 %polly.indvar558, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next559, %indvars.iv862
  br i1 %exitcond864.not, label %polly.loop_exit557, label %polly.loop_header555

polly.loop_header571.preheader:                   ; preds = %polly.loop_header565.preheader
  %148 = add i64 %indvars.iv866, %indvars.iv868
  br label %polly.loop_header571

polly.loop_exit573:                               ; preds = %polly.loop_exit580, %polly.loop_header565.preheader
  %149 = icmp sgt i64 %145, 64
  %150 = select i1 %149, i64 %145, i64 64
  %151 = add nsw i64 %150, -64
  %polly.loop_guard581.not.1 = icmp sgt i64 %150, 79
  br i1 %polly.loop_guard581.not.1, label %polly.loop_exit573.1, label %polly.loop_header571.preheader.1

polly.loop_header571:                             ; preds = %polly.loop_header571.preheader, %polly.loop_exit580
  %polly.indvar574 = phi i64 [ %polly.indvar_next575, %polly.loop_exit580 ], [ 0, %polly.loop_header571.preheader ]
  %152 = shl nuw nsw i64 %polly.indvar574, 3
  %scevgep593 = getelementptr i8, i8* %call1, i64 %152
  %polly.access.mul.Packed_MemRef_call2444597 = mul nuw nsw i64 %polly.indvar574, 80
  br label %polly.loop_header578

polly.loop_exit580:                               ; preds = %polly.loop_exit588
  %polly.indvar_next575 = add nuw nsw i64 %polly.indvar574, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next575, 60
  br i1 %exitcond875.not, label %polly.loop_exit573, label %polly.loop_header571

polly.loop_header578:                             ; preds = %polly.loop_exit588, %polly.loop_header571
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %polly.loop_exit588 ], [ %148, %polly.loop_header571 ]
  %polly.indvar582 = phi i64 [ %polly.indvar_next583, %polly.loop_exit588 ], [ %145, %polly.loop_header571 ]
  %smin873 = call i64 @llvm.smin.i64(i64 %indvars.iv871, i64 19)
  %153 = add i64 %polly.indvar582, %146
  %polly.loop_guard589962 = icmp sgt i64 %153, -1
  br i1 %polly.loop_guard589962, label %polly.loop_header586.preheader, label %polly.loop_exit588

polly.loop_header586.preheader:                   ; preds = %polly.loop_header578
  %polly.access.add.Packed_MemRef_call2444598 = add nsw i64 %polly.access.mul.Packed_MemRef_call2444597, %153
  %polly.access.Packed_MemRef_call2444599 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444598
  %_p_scalar_600 = load double, double* %polly.access.Packed_MemRef_call2444599, align 8
  %154 = mul i64 %polly.indvar582, 480
  %scevgep606 = getelementptr i8, i8* %scevgep593, i64 %154
  %scevgep606607 = bitcast i8* %scevgep606 to double*
  %_p_scalar_608 = load double, double* %scevgep606607, align 8, !alias.scope !91, !noalias !97
  %155 = mul i64 %polly.indvar582, 640
  br label %polly.loop_header586

polly.loop_exit588:                               ; preds = %polly.loop_header586, %polly.loop_header578
  %polly.indvar_next583 = add nuw nsw i64 %polly.indvar582, 1
  %polly.loop_cond584.not.not = icmp ult i64 %polly.indvar582, 63
  %indvars.iv.next872 = add i64 %indvars.iv871, 1
  br i1 %polly.loop_cond584.not.not, label %polly.loop_header578, label %polly.loop_exit580

polly.loop_header586:                             ; preds = %polly.loop_header586.preheader, %polly.loop_header586
  %polly.indvar590 = phi i64 [ %polly.indvar_next591, %polly.loop_header586 ], [ 0, %polly.loop_header586.preheader ]
  %156 = add nuw nsw i64 %polly.indvar590, %145
  %157 = mul nuw nsw i64 %156, 480
  %scevgep594 = getelementptr i8, i8* %scevgep593, i64 %157
  %scevgep594595 = bitcast i8* %scevgep594 to double*
  %_p_scalar_596 = load double, double* %scevgep594595, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i = fmul fast double %_p_scalar_600, %_p_scalar_596
  %polly.access.add.Packed_MemRef_call2444602 = add nuw nsw i64 %polly.indvar590, %polly.access.mul.Packed_MemRef_call2444597
  %polly.access.Packed_MemRef_call2444603 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444602
  %_p_scalar_604 = load double, double* %polly.access.Packed_MemRef_call2444603, align 8
  %p_mul37.i = fmul fast double %_p_scalar_608, %_p_scalar_604
  %158 = shl i64 %156, 3
  %159 = add i64 %158, %155
  %scevgep609 = getelementptr i8, i8* %call, i64 %159
  %scevgep609610 = bitcast i8* %scevgep609 to double*
  %_p_scalar_611 = load double, double* %scevgep609610, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_611
  store double %p_add42.i, double* %scevgep609610, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next591 = add nuw nsw i64 %polly.indvar590, 1
  %exitcond874.not = icmp eq i64 %polly.indvar590, %smin873
  br i1 %exitcond874.not, label %polly.loop_exit588, label %polly.loop_header586

polly.loop_header750:                             ; preds = %entry, %polly.loop_exit758
  %polly.indvar753 = phi i64 [ %polly.indvar_next754, %polly.loop_exit758 ], [ 0, %entry ]
  %160 = mul nuw nsw i64 %polly.indvar753, 640
  %161 = trunc i64 %polly.indvar753 to i32
  %broadcast.splatinsert994 = insertelement <4 x i32> poison, i32 %161, i32 0
  %broadcast.splat995 = shufflevector <4 x i32> %broadcast.splatinsert994, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body984

vector.body984:                                   ; preds = %vector.body984, %polly.loop_header750
  %index986 = phi i64 [ 0, %polly.loop_header750 ], [ %index.next987, %vector.body984 ]
  %vec.ind992 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header750 ], [ %vec.ind.next993, %vector.body984 ]
  %162 = mul <4 x i32> %vec.ind992, %broadcast.splat995
  %163 = add <4 x i32> %162, <i32 3, i32 3, i32 3, i32 3>
  %164 = urem <4 x i32> %163, <i32 80, i32 80, i32 80, i32 80>
  %165 = sitofp <4 x i32> %164 to <4 x double>
  %166 = fmul fast <4 x double> %165, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %167 = shl i64 %index986, 3
  %168 = add nuw nsw i64 %167, %160
  %169 = getelementptr i8, i8* %call, i64 %168
  %170 = bitcast i8* %169 to <4 x double>*
  store <4 x double> %166, <4 x double>* %170, align 8, !alias.scope !98, !noalias !100
  %index.next987 = add i64 %index986, 4
  %vec.ind.next993 = add <4 x i32> %vec.ind992, <i32 4, i32 4, i32 4, i32 4>
  %171 = icmp eq i64 %index.next987, 32
  br i1 %171, label %polly.loop_exit758, label %vector.body984, !llvm.loop !103

polly.loop_exit758:                               ; preds = %vector.body984
  %polly.indvar_next754 = add nuw nsw i64 %polly.indvar753, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next754, 32
  br i1 %exitcond898.not, label %polly.loop_header750.1, label %polly.loop_header750

polly.loop_header777:                             ; preds = %polly.loop_exit758.2.2, %polly.loop_exit785
  %polly.indvar780 = phi i64 [ %polly.indvar_next781, %polly.loop_exit785 ], [ 0, %polly.loop_exit758.2.2 ]
  %172 = mul nuw nsw i64 %polly.indvar780, 480
  %173 = trunc i64 %polly.indvar780 to i32
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %173, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %polly.loop_header777
  %index1100 = phi i64 [ 0, %polly.loop_header777 ], [ %index.next1101, %vector.body1098 ]
  %vec.ind1106 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header777 ], [ %vec.ind.next1107, %vector.body1098 ]
  %174 = mul <4 x i32> %vec.ind1106, %broadcast.splat1109
  %175 = add <4 x i32> %174, <i32 2, i32 2, i32 2, i32 2>
  %176 = urem <4 x i32> %175, <i32 60, i32 60, i32 60, i32 60>
  %177 = sitofp <4 x i32> %176 to <4 x double>
  %178 = fmul fast <4 x double> %177, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %179 = shl i64 %index1100, 3
  %180 = add i64 %179, %172
  %181 = getelementptr i8, i8* %call2, i64 %180
  %182 = bitcast i8* %181 to <4 x double>*
  store <4 x double> %178, <4 x double>* %182, align 8, !alias.scope !102, !noalias !104
  %index.next1101 = add i64 %index1100, 4
  %vec.ind.next1107 = add <4 x i32> %vec.ind1106, <i32 4, i32 4, i32 4, i32 4>
  %183 = icmp eq i64 %index.next1101, 32
  br i1 %183, label %polly.loop_exit785, label %vector.body1098, !llvm.loop !105

polly.loop_exit785:                               ; preds = %vector.body1098
  %polly.indvar_next781 = add nuw nsw i64 %polly.indvar780, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next781, 32
  br i1 %exitcond889.not, label %polly.loop_header777.1, label %polly.loop_header777

polly.loop_header803:                             ; preds = %polly.loop_exit785.1.2, %polly.loop_exit811
  %polly.indvar806 = phi i64 [ %polly.indvar_next807, %polly.loop_exit811 ], [ 0, %polly.loop_exit785.1.2 ]
  %184 = mul nuw nsw i64 %polly.indvar806, 480
  %185 = trunc i64 %polly.indvar806 to i32
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %185, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %polly.loop_header803
  %index1178 = phi i64 [ 0, %polly.loop_header803 ], [ %index.next1179, %vector.body1176 ]
  %vec.ind1184 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header803 ], [ %vec.ind.next1185, %vector.body1176 ]
  %186 = mul <4 x i32> %vec.ind1184, %broadcast.splat1187
  %187 = add <4 x i32> %186, <i32 1, i32 1, i32 1, i32 1>
  %188 = urem <4 x i32> %187, <i32 80, i32 80, i32 80, i32 80>
  %189 = sitofp <4 x i32> %188 to <4 x double>
  %190 = fmul fast <4 x double> %189, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %191 = shl i64 %index1178, 3
  %192 = add i64 %191, %184
  %193 = getelementptr i8, i8* %call1, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %190, <4 x double>* %194, align 8, !alias.scope !101, !noalias !106
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1185 = add <4 x i32> %vec.ind1184, <i32 4, i32 4, i32 4, i32 4>
  %195 = icmp eq i64 %index.next1179, 32
  br i1 %195, label %polly.loop_exit811, label %vector.body1176, !llvm.loop !107

polly.loop_exit811:                               ; preds = %vector.body1176
  %polly.indvar_next807 = add nuw nsw i64 %polly.indvar806, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next807, 32
  br i1 %exitcond883.not, label %polly.loop_header803.1, label %polly.loop_header803

polly.loop_header227.preheader.1:                 ; preds = %polly.loop_exit229
  %196 = add nsw i64 %indvars.iv836, -64
  %smax.1 = call i64 @llvm.smax.i64(i64 %196, i64 0)
  %197 = add i64 %indvars.iv834, %smax.1
  %198 = add i64 %197, 64
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header227.preheader.1
  %polly.indvar230.1 = phi i64 [ %polly.indvar_next231.1, %polly.loop_exit235.1 ], [ 0, %polly.loop_header227.preheader.1 ]
  %199 = shl nuw nsw i64 %polly.indvar230.1, 3
  %scevgep247.1 = getelementptr i8, i8* %call1, i64 %199
  %polly.access.mul.Packed_MemRef_call2251.1 = mul nuw nsw i64 %polly.indvar230.1, 80
  br label %polly.loop_header233.1

polly.loop_header233.1:                           ; preds = %polly.loop_exit242.1, %polly.loop_header227.1
  %indvars.iv838.1 = phi i64 [ %indvars.iv.next839.1, %polly.loop_exit242.1 ], [ %198, %polly.loop_header227.1 ]
  %polly.indvar236.1 = phi i64 [ %polly.indvar_next237.1, %polly.loop_exit242.1 ], [ %103, %polly.loop_header227.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv838.1, i64 19)
  %200 = add nuw i64 %polly.indvar236.1, 64
  %201 = add i64 %200, %98
  %polly.loop_guard243.1959 = icmp sgt i64 %201, -1
  br i1 %polly.loop_guard243.1959, label %polly.loop_header240.preheader.1, label %polly.loop_exit242.1

polly.loop_header240.preheader.1:                 ; preds = %polly.loop_header233.1
  %polly.access.add.Packed_MemRef_call2252.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2251.1, %201
  %polly.access.Packed_MemRef_call2253.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.1
  %_p_scalar_254.1 = load double, double* %polly.access.Packed_MemRef_call2253.1, align 8
  %202 = mul i64 %200, 480
  %scevgep260.1 = getelementptr i8, i8* %scevgep247.1, i64 %202
  %scevgep260261.1 = bitcast i8* %scevgep260.1 to double*
  %_p_scalar_262.1 = load double, double* %scevgep260261.1, align 8, !alias.scope !70, !noalias !77
  %203 = mul i64 %200, 640
  br label %polly.loop_header240.1

polly.loop_header240.1:                           ; preds = %polly.loop_header240.1, %polly.loop_header240.preheader.1
  %polly.indvar244.1 = phi i64 [ %polly.indvar_next245.1, %polly.loop_header240.1 ], [ 0, %polly.loop_header240.preheader.1 ]
  %204 = add nuw nsw i64 %polly.indvar244.1, %97
  %205 = mul nuw nsw i64 %204, 480
  %scevgep248.1 = getelementptr i8, i8* %scevgep247.1, i64 %205
  %scevgep248249.1 = bitcast i8* %scevgep248.1 to double*
  %_p_scalar_250.1 = load double, double* %scevgep248249.1, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112.1 = fmul fast double %_p_scalar_254.1, %_p_scalar_250.1
  %polly.access.add.Packed_MemRef_call2256.1 = add nuw nsw i64 %polly.indvar244.1, %polly.access.mul.Packed_MemRef_call2251.1
  %polly.access.Packed_MemRef_call2257.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.1
  %_p_scalar_258.1 = load double, double* %polly.access.Packed_MemRef_call2257.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_262.1, %_p_scalar_258.1
  %206 = shl i64 %204, 3
  %207 = add i64 %206, %203
  %scevgep263.1 = getelementptr i8, i8* %call, i64 %207
  %scevgep263264.1 = bitcast i8* %scevgep263.1 to double*
  %_p_scalar_265.1 = load double, double* %scevgep263264.1, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_265.1
  store double %p_add42.i118.1, double* %scevgep263264.1, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next245.1 = add nuw nsw i64 %polly.indvar244.1, 1
  %exitcond840.1.not = icmp eq i64 %polly.indvar244.1, %smin.1
  br i1 %exitcond840.1.not, label %polly.loop_exit242.1, label %polly.loop_header240.1

polly.loop_exit242.1:                             ; preds = %polly.loop_header240.1, %polly.loop_header233.1
  %polly.indvar_next237.1 = add nuw nsw i64 %polly.indvar236.1, 1
  %polly.loop_cond238.not.not.1 = icmp ult i64 %polly.indvar236.1, 15
  %indvars.iv.next839.1 = add i64 %indvars.iv838.1, 1
  br i1 %polly.loop_cond238.not.not.1, label %polly.loop_header233.1, label %polly.loop_exit235.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit242.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %exitcond841.1.not = icmp eq i64 %polly.indvar_next231.1, 60
  br i1 %exitcond841.1.not, label %polly.loop_exit229.1, label %polly.loop_header227.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1, %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -20
  %indvars.iv.next835 = add nsw i64 %indvars.iv834, -20
  %indvars.iv.next837 = add nuw nsw i64 %indvars.iv836, 20
  %exitcond842.not = icmp eq i64 %polly.indvar_next203, 4
  br i1 %exitcond842.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header398.preheader.1:                 ; preds = %polly.loop_exit400
  %208 = add nsw i64 %indvars.iv851, -64
  %smax853.1 = call i64 @llvm.smax.i64(i64 %208, i64 0)
  %209 = add i64 %indvars.iv849, %smax853.1
  %210 = add i64 %209, 64
  br label %polly.loop_header398.1

polly.loop_header398.1:                           ; preds = %polly.loop_exit407.1, %polly.loop_header398.preheader.1
  %polly.indvar401.1 = phi i64 [ %polly.indvar_next402.1, %polly.loop_exit407.1 ], [ 0, %polly.loop_header398.preheader.1 ]
  %211 = shl nuw nsw i64 %polly.indvar401.1, 3
  %scevgep420.1 = getelementptr i8, i8* %call1, i64 %211
  %polly.access.mul.Packed_MemRef_call2271424.1 = mul nuw nsw i64 %polly.indvar401.1, 80
  br label %polly.loop_header405.1

polly.loop_header405.1:                           ; preds = %polly.loop_exit415.1, %polly.loop_header398.1
  %indvars.iv854.1 = phi i64 [ %indvars.iv.next855.1, %polly.loop_exit415.1 ], [ %210, %polly.loop_header398.1 ]
  %polly.indvar409.1 = phi i64 [ %polly.indvar_next410.1, %polly.loop_exit415.1 ], [ %127, %polly.loop_header398.1 ]
  %smin856.1 = call i64 @llvm.smin.i64(i64 %indvars.iv854.1, i64 19)
  %212 = add nuw i64 %polly.indvar409.1, 64
  %213 = add i64 %212, %122
  %polly.loop_guard416.1961 = icmp sgt i64 %213, -1
  br i1 %polly.loop_guard416.1961, label %polly.loop_header413.preheader.1, label %polly.loop_exit415.1

polly.loop_header413.preheader.1:                 ; preds = %polly.loop_header405.1
  %polly.access.add.Packed_MemRef_call2271425.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2271424.1, %213
  %polly.access.Packed_MemRef_call2271426.1 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271425.1
  %_p_scalar_427.1 = load double, double* %polly.access.Packed_MemRef_call2271426.1, align 8
  %214 = mul i64 %212, 480
  %scevgep433.1 = getelementptr i8, i8* %scevgep420.1, i64 %214
  %scevgep433434.1 = bitcast i8* %scevgep433.1 to double*
  %_p_scalar_435.1 = load double, double* %scevgep433434.1, align 8, !alias.scope !81, !noalias !87
  %215 = mul i64 %212, 640
  br label %polly.loop_header413.1

polly.loop_header413.1:                           ; preds = %polly.loop_header413.1, %polly.loop_header413.preheader.1
  %polly.indvar417.1 = phi i64 [ %polly.indvar_next418.1, %polly.loop_header413.1 ], [ 0, %polly.loop_header413.preheader.1 ]
  %216 = add nuw nsw i64 %polly.indvar417.1, %121
  %217 = mul nuw nsw i64 %216, 480
  %scevgep421.1 = getelementptr i8, i8* %scevgep420.1, i64 %217
  %scevgep421422.1 = bitcast i8* %scevgep421.1 to double*
  %_p_scalar_423.1 = load double, double* %scevgep421422.1, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73.1 = fmul fast double %_p_scalar_427.1, %_p_scalar_423.1
  %polly.access.add.Packed_MemRef_call2271429.1 = add nuw nsw i64 %polly.indvar417.1, %polly.access.mul.Packed_MemRef_call2271424.1
  %polly.access.Packed_MemRef_call2271430.1 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271429.1
  %_p_scalar_431.1 = load double, double* %polly.access.Packed_MemRef_call2271430.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_435.1, %_p_scalar_431.1
  %218 = shl i64 %216, 3
  %219 = add i64 %218, %215
  %scevgep436.1 = getelementptr i8, i8* %call, i64 %219
  %scevgep436437.1 = bitcast i8* %scevgep436.1 to double*
  %_p_scalar_438.1 = load double, double* %scevgep436437.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_438.1
  store double %p_add42.i79.1, double* %scevgep436437.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next418.1 = add nuw nsw i64 %polly.indvar417.1, 1
  %exitcond857.1.not = icmp eq i64 %polly.indvar417.1, %smin856.1
  br i1 %exitcond857.1.not, label %polly.loop_exit415.1, label %polly.loop_header413.1

polly.loop_exit415.1:                             ; preds = %polly.loop_header413.1, %polly.loop_header405.1
  %polly.indvar_next410.1 = add nuw nsw i64 %polly.indvar409.1, 1
  %polly.loop_cond411.not.not.1 = icmp ult i64 %polly.indvar409.1, 15
  %indvars.iv.next855.1 = add i64 %indvars.iv854.1, 1
  br i1 %polly.loop_cond411.not.not.1, label %polly.loop_header405.1, label %polly.loop_exit407.1

polly.loop_exit407.1:                             ; preds = %polly.loop_exit415.1
  %polly.indvar_next402.1 = add nuw nsw i64 %polly.indvar401.1, 1
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next402.1, 60
  br i1 %exitcond858.1.not, label %polly.loop_exit400.1, label %polly.loop_header398.1

polly.loop_exit400.1:                             ; preds = %polly.loop_exit407.1, %polly.loop_exit400
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %indvars.iv.next846 = add nsw i64 %indvars.iv845, -20
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, -20
  %indvars.iv.next852 = add nuw nsw i64 %indvars.iv851, 20
  %exitcond859.not = icmp eq i64 %polly.indvar_next374, 4
  br i1 %exitcond859.not, label %polly.exiting269, label %polly.loop_header370

polly.loop_header571.preheader.1:                 ; preds = %polly.loop_exit573
  %220 = add nsw i64 %indvars.iv868, -64
  %smax870.1 = call i64 @llvm.smax.i64(i64 %220, i64 0)
  %221 = add i64 %indvars.iv866, %smax870.1
  %222 = add i64 %221, 64
  br label %polly.loop_header571.1

polly.loop_header571.1:                           ; preds = %polly.loop_exit580.1, %polly.loop_header571.preheader.1
  %polly.indvar574.1 = phi i64 [ %polly.indvar_next575.1, %polly.loop_exit580.1 ], [ 0, %polly.loop_header571.preheader.1 ]
  %223 = shl nuw nsw i64 %polly.indvar574.1, 3
  %scevgep593.1 = getelementptr i8, i8* %call1, i64 %223
  %polly.access.mul.Packed_MemRef_call2444597.1 = mul nuw nsw i64 %polly.indvar574.1, 80
  br label %polly.loop_header578.1

polly.loop_header578.1:                           ; preds = %polly.loop_exit588.1, %polly.loop_header571.1
  %indvars.iv871.1 = phi i64 [ %indvars.iv.next872.1, %polly.loop_exit588.1 ], [ %222, %polly.loop_header571.1 ]
  %polly.indvar582.1 = phi i64 [ %polly.indvar_next583.1, %polly.loop_exit588.1 ], [ %151, %polly.loop_header571.1 ]
  %smin873.1 = call i64 @llvm.smin.i64(i64 %indvars.iv871.1, i64 19)
  %224 = add nuw i64 %polly.indvar582.1, 64
  %225 = add i64 %224, %146
  %polly.loop_guard589.1963 = icmp sgt i64 %225, -1
  br i1 %polly.loop_guard589.1963, label %polly.loop_header586.preheader.1, label %polly.loop_exit588.1

polly.loop_header586.preheader.1:                 ; preds = %polly.loop_header578.1
  %polly.access.add.Packed_MemRef_call2444598.1 = add nsw i64 %polly.access.mul.Packed_MemRef_call2444597.1, %225
  %polly.access.Packed_MemRef_call2444599.1 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444598.1
  %_p_scalar_600.1 = load double, double* %polly.access.Packed_MemRef_call2444599.1, align 8
  %226 = mul i64 %224, 480
  %scevgep606.1 = getelementptr i8, i8* %scevgep593.1, i64 %226
  %scevgep606607.1 = bitcast i8* %scevgep606.1 to double*
  %_p_scalar_608.1 = load double, double* %scevgep606607.1, align 8, !alias.scope !91, !noalias !97
  %227 = mul i64 %224, 640
  br label %polly.loop_header586.1

polly.loop_header586.1:                           ; preds = %polly.loop_header586.1, %polly.loop_header586.preheader.1
  %polly.indvar590.1 = phi i64 [ %polly.indvar_next591.1, %polly.loop_header586.1 ], [ 0, %polly.loop_header586.preheader.1 ]
  %228 = add nuw nsw i64 %polly.indvar590.1, %145
  %229 = mul nuw nsw i64 %228, 480
  %scevgep594.1 = getelementptr i8, i8* %scevgep593.1, i64 %229
  %scevgep594595.1 = bitcast i8* %scevgep594.1 to double*
  %_p_scalar_596.1 = load double, double* %scevgep594595.1, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i.1 = fmul fast double %_p_scalar_600.1, %_p_scalar_596.1
  %polly.access.add.Packed_MemRef_call2444602.1 = add nuw nsw i64 %polly.indvar590.1, %polly.access.mul.Packed_MemRef_call2444597.1
  %polly.access.Packed_MemRef_call2444603.1 = getelementptr double, double* %Packed_MemRef_call2444, i64 %polly.access.add.Packed_MemRef_call2444602.1
  %_p_scalar_604.1 = load double, double* %polly.access.Packed_MemRef_call2444603.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_608.1, %_p_scalar_604.1
  %230 = shl i64 %228, 3
  %231 = add i64 %230, %227
  %scevgep609.1 = getelementptr i8, i8* %call, i64 %231
  %scevgep609610.1 = bitcast i8* %scevgep609.1 to double*
  %_p_scalar_611.1 = load double, double* %scevgep609610.1, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_611.1
  store double %p_add42.i.1, double* %scevgep609610.1, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next591.1 = add nuw nsw i64 %polly.indvar590.1, 1
  %exitcond874.1.not = icmp eq i64 %polly.indvar590.1, %smin873.1
  br i1 %exitcond874.1.not, label %polly.loop_exit588.1, label %polly.loop_header586.1

polly.loop_exit588.1:                             ; preds = %polly.loop_header586.1, %polly.loop_header578.1
  %polly.indvar_next583.1 = add nuw nsw i64 %polly.indvar582.1, 1
  %polly.loop_cond584.not.not.1 = icmp ult i64 %polly.indvar582.1, 15
  %indvars.iv.next872.1 = add i64 %indvars.iv871.1, 1
  br i1 %polly.loop_cond584.not.not.1, label %polly.loop_header578.1, label %polly.loop_exit580.1

polly.loop_exit580.1:                             ; preds = %polly.loop_exit588.1
  %polly.indvar_next575.1 = add nuw nsw i64 %polly.indvar574.1, 1
  %exitcond875.1.not = icmp eq i64 %polly.indvar_next575.1, 60
  br i1 %exitcond875.1.not, label %polly.loop_exit573.1, label %polly.loop_header571.1

polly.loop_exit573.1:                             ; preds = %polly.loop_exit580.1, %polly.loop_exit573
  %polly.indvar_next547 = add nuw nsw i64 %polly.indvar546, 1
  %indvars.iv.next863 = add nsw i64 %indvars.iv862, -20
  %indvars.iv.next867 = add nsw i64 %indvars.iv866, -20
  %indvars.iv.next869 = add nuw nsw i64 %indvars.iv868, 20
  %exitcond876.not = icmp eq i64 %polly.indvar_next547, 4
  br i1 %exitcond876.not, label %polly.exiting442, label %polly.loop_header543

polly.loop_header803.1:                           ; preds = %polly.loop_exit811, %polly.loop_exit811.1
  %polly.indvar806.1 = phi i64 [ %polly.indvar_next807.1, %polly.loop_exit811.1 ], [ 0, %polly.loop_exit811 ]
  %232 = mul nuw nsw i64 %polly.indvar806.1, 480
  %233 = trunc i64 %polly.indvar806.1 to i32
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %233, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %polly.loop_header803.1
  %index1192 = phi i64 [ 0, %polly.loop_header803.1 ], [ %index.next1193, %vector.body1190 ]
  %vec.ind1196 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.1 ], [ %vec.ind.next1197, %vector.body1190 ]
  %234 = add nuw nsw <4 x i64> %vec.ind1196, <i64 32, i64 32, i64 32, i64 32>
  %235 = trunc <4 x i64> %234 to <4 x i32>
  %236 = mul <4 x i32> %broadcast.splat1199, %235
  %237 = add <4 x i32> %236, <i32 1, i32 1, i32 1, i32 1>
  %238 = urem <4 x i32> %237, <i32 80, i32 80, i32 80, i32 80>
  %239 = sitofp <4 x i32> %238 to <4 x double>
  %240 = fmul fast <4 x double> %239, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %241 = extractelement <4 x i64> %234, i32 0
  %242 = shl i64 %241, 3
  %243 = add i64 %242, %232
  %244 = getelementptr i8, i8* %call1, i64 %243
  %245 = bitcast i8* %244 to <4 x double>*
  store <4 x double> %240, <4 x double>* %245, align 8, !alias.scope !101, !noalias !106
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1197 = add <4 x i64> %vec.ind1196, <i64 4, i64 4, i64 4, i64 4>
  %246 = icmp eq i64 %index.next1193, 28
  br i1 %246, label %polly.loop_exit811.1, label %vector.body1190, !llvm.loop !108

polly.loop_exit811.1:                             ; preds = %vector.body1190
  %polly.indvar_next807.1 = add nuw nsw i64 %polly.indvar806.1, 1
  %exitcond883.1.not = icmp eq i64 %polly.indvar_next807.1, 32
  br i1 %exitcond883.1.not, label %polly.loop_header803.1903, label %polly.loop_header803.1

polly.loop_header803.1903:                        ; preds = %polly.loop_exit811.1, %polly.loop_exit811.1914
  %polly.indvar806.1902 = phi i64 [ %polly.indvar_next807.1912, %polly.loop_exit811.1914 ], [ 0, %polly.loop_exit811.1 ]
  %247 = add nuw nsw i64 %polly.indvar806.1902, 32
  %248 = mul nuw nsw i64 %247, 480
  %249 = trunc i64 %247 to i32
  %broadcast.splatinsert1212 = insertelement <4 x i32> poison, i32 %249, i32 0
  %broadcast.splat1213 = shufflevector <4 x i32> %broadcast.splatinsert1212, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %polly.loop_header803.1903
  %index1204 = phi i64 [ 0, %polly.loop_header803.1903 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1210 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header803.1903 ], [ %vec.ind.next1211, %vector.body1202 ]
  %250 = mul <4 x i32> %vec.ind1210, %broadcast.splat1213
  %251 = add <4 x i32> %250, <i32 1, i32 1, i32 1, i32 1>
  %252 = urem <4 x i32> %251, <i32 80, i32 80, i32 80, i32 80>
  %253 = sitofp <4 x i32> %252 to <4 x double>
  %254 = fmul fast <4 x double> %253, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %255 = shl i64 %index1204, 3
  %256 = add i64 %255, %248
  %257 = getelementptr i8, i8* %call1, i64 %256
  %258 = bitcast i8* %257 to <4 x double>*
  store <4 x double> %254, <4 x double>* %258, align 8, !alias.scope !101, !noalias !106
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1211 = add <4 x i32> %vec.ind1210, <i32 4, i32 4, i32 4, i32 4>
  %259 = icmp eq i64 %index.next1205, 32
  br i1 %259, label %polly.loop_exit811.1914, label %vector.body1202, !llvm.loop !109

polly.loop_exit811.1914:                          ; preds = %vector.body1202
  %polly.indvar_next807.1912 = add nuw nsw i64 %polly.indvar806.1902, 1
  %exitcond883.1913.not = icmp eq i64 %polly.indvar_next807.1912, 32
  br i1 %exitcond883.1913.not, label %polly.loop_header803.1.1, label %polly.loop_header803.1903

polly.loop_header803.1.1:                         ; preds = %polly.loop_exit811.1914, %polly.loop_exit811.1.1
  %polly.indvar806.1.1 = phi i64 [ %polly.indvar_next807.1.1, %polly.loop_exit811.1.1 ], [ 0, %polly.loop_exit811.1914 ]
  %260 = add nuw nsw i64 %polly.indvar806.1.1, 32
  %261 = mul nuw nsw i64 %260, 480
  %262 = trunc i64 %260 to i32
  %broadcast.splatinsert1224 = insertelement <4 x i32> poison, i32 %262, i32 0
  %broadcast.splat1225 = shufflevector <4 x i32> %broadcast.splatinsert1224, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %polly.loop_header803.1.1
  %index1218 = phi i64 [ 0, %polly.loop_header803.1.1 ], [ %index.next1219, %vector.body1216 ]
  %vec.ind1222 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.1.1 ], [ %vec.ind.next1223, %vector.body1216 ]
  %263 = add nuw nsw <4 x i64> %vec.ind1222, <i64 32, i64 32, i64 32, i64 32>
  %264 = trunc <4 x i64> %263 to <4 x i32>
  %265 = mul <4 x i32> %broadcast.splat1225, %264
  %266 = add <4 x i32> %265, <i32 1, i32 1, i32 1, i32 1>
  %267 = urem <4 x i32> %266, <i32 80, i32 80, i32 80, i32 80>
  %268 = sitofp <4 x i32> %267 to <4 x double>
  %269 = fmul fast <4 x double> %268, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %270 = extractelement <4 x i64> %263, i32 0
  %271 = shl i64 %270, 3
  %272 = add i64 %271, %261
  %273 = getelementptr i8, i8* %call1, i64 %272
  %274 = bitcast i8* %273 to <4 x double>*
  store <4 x double> %269, <4 x double>* %274, align 8, !alias.scope !101, !noalias !106
  %index.next1219 = add i64 %index1218, 4
  %vec.ind.next1223 = add <4 x i64> %vec.ind1222, <i64 4, i64 4, i64 4, i64 4>
  %275 = icmp eq i64 %index.next1219, 28
  br i1 %275, label %polly.loop_exit811.1.1, label %vector.body1216, !llvm.loop !110

polly.loop_exit811.1.1:                           ; preds = %vector.body1216
  %polly.indvar_next807.1.1 = add nuw nsw i64 %polly.indvar806.1.1, 1
  %exitcond883.1.1.not = icmp eq i64 %polly.indvar_next807.1.1, 32
  br i1 %exitcond883.1.1.not, label %polly.loop_header803.2, label %polly.loop_header803.1.1

polly.loop_header803.2:                           ; preds = %polly.loop_exit811.1.1, %polly.loop_exit811.2
  %polly.indvar806.2 = phi i64 [ %polly.indvar_next807.2, %polly.loop_exit811.2 ], [ 0, %polly.loop_exit811.1.1 ]
  %276 = add nuw nsw i64 %polly.indvar806.2, 64
  %277 = mul nuw nsw i64 %276, 480
  %278 = trunc i64 %276 to i32
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %278, i32 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %polly.loop_header803.2
  %index1230 = phi i64 [ 0, %polly.loop_header803.2 ], [ %index.next1231, %vector.body1228 ]
  %vec.ind1236 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header803.2 ], [ %vec.ind.next1237, %vector.body1228 ]
  %279 = mul <4 x i32> %vec.ind1236, %broadcast.splat1239
  %280 = add <4 x i32> %279, <i32 1, i32 1, i32 1, i32 1>
  %281 = urem <4 x i32> %280, <i32 80, i32 80, i32 80, i32 80>
  %282 = sitofp <4 x i32> %281 to <4 x double>
  %283 = fmul fast <4 x double> %282, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %284 = shl i64 %index1230, 3
  %285 = add i64 %284, %277
  %286 = getelementptr i8, i8* %call1, i64 %285
  %287 = bitcast i8* %286 to <4 x double>*
  store <4 x double> %283, <4 x double>* %287, align 8, !alias.scope !101, !noalias !106
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1237 = add <4 x i32> %vec.ind1236, <i32 4, i32 4, i32 4, i32 4>
  %288 = icmp eq i64 %index.next1231, 32
  br i1 %288, label %polly.loop_exit811.2, label %vector.body1228, !llvm.loop !111

polly.loop_exit811.2:                             ; preds = %vector.body1228
  %polly.indvar_next807.2 = add nuw nsw i64 %polly.indvar806.2, 1
  %exitcond883.2.not = icmp eq i64 %polly.indvar_next807.2, 16
  br i1 %exitcond883.2.not, label %polly.loop_header803.1.2, label %polly.loop_header803.2

polly.loop_header803.1.2:                         ; preds = %polly.loop_exit811.2, %polly.loop_exit811.1.2
  %polly.indvar806.1.2 = phi i64 [ %polly.indvar_next807.1.2, %polly.loop_exit811.1.2 ], [ 0, %polly.loop_exit811.2 ]
  %289 = add nuw nsw i64 %polly.indvar806.1.2, 64
  %290 = mul nuw nsw i64 %289, 480
  %291 = trunc i64 %289 to i32
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %291, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %polly.loop_header803.1.2
  %index1244 = phi i64 [ 0, %polly.loop_header803.1.2 ], [ %index.next1245, %vector.body1242 ]
  %vec.ind1248 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header803.1.2 ], [ %vec.ind.next1249, %vector.body1242 ]
  %292 = add nuw nsw <4 x i64> %vec.ind1248, <i64 32, i64 32, i64 32, i64 32>
  %293 = trunc <4 x i64> %292 to <4 x i32>
  %294 = mul <4 x i32> %broadcast.splat1251, %293
  %295 = add <4 x i32> %294, <i32 1, i32 1, i32 1, i32 1>
  %296 = urem <4 x i32> %295, <i32 80, i32 80, i32 80, i32 80>
  %297 = sitofp <4 x i32> %296 to <4 x double>
  %298 = fmul fast <4 x double> %297, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %299 = extractelement <4 x i64> %292, i32 0
  %300 = shl i64 %299, 3
  %301 = add i64 %300, %290
  %302 = getelementptr i8, i8* %call1, i64 %301
  %303 = bitcast i8* %302 to <4 x double>*
  store <4 x double> %298, <4 x double>* %303, align 8, !alias.scope !101, !noalias !106
  %index.next1245 = add i64 %index1244, 4
  %vec.ind.next1249 = add <4 x i64> %vec.ind1248, <i64 4, i64 4, i64 4, i64 4>
  %304 = icmp eq i64 %index.next1245, 28
  br i1 %304, label %polly.loop_exit811.1.2, label %vector.body1242, !llvm.loop !112

polly.loop_exit811.1.2:                           ; preds = %vector.body1242
  %polly.indvar_next807.1.2 = add nuw nsw i64 %polly.indvar806.1.2, 1
  %exitcond883.1.2.not = icmp eq i64 %polly.indvar_next807.1.2, 16
  br i1 %exitcond883.1.2.not, label %init_array.exit, label %polly.loop_header803.1.2

polly.loop_header777.1:                           ; preds = %polly.loop_exit785, %polly.loop_exit785.1
  %polly.indvar780.1 = phi i64 [ %polly.indvar_next781.1, %polly.loop_exit785.1 ], [ 0, %polly.loop_exit785 ]
  %305 = mul nuw nsw i64 %polly.indvar780.1, 480
  %306 = trunc i64 %polly.indvar780.1 to i32
  %broadcast.splatinsert1120 = insertelement <4 x i32> poison, i32 %306, i32 0
  %broadcast.splat1121 = shufflevector <4 x i32> %broadcast.splatinsert1120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %polly.loop_header777.1
  %index1114 = phi i64 [ 0, %polly.loop_header777.1 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1118 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header777.1 ], [ %vec.ind.next1119, %vector.body1112 ]
  %307 = add nuw nsw <4 x i64> %vec.ind1118, <i64 32, i64 32, i64 32, i64 32>
  %308 = trunc <4 x i64> %307 to <4 x i32>
  %309 = mul <4 x i32> %broadcast.splat1121, %308
  %310 = add <4 x i32> %309, <i32 2, i32 2, i32 2, i32 2>
  %311 = urem <4 x i32> %310, <i32 60, i32 60, i32 60, i32 60>
  %312 = sitofp <4 x i32> %311 to <4 x double>
  %313 = fmul fast <4 x double> %312, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %314 = extractelement <4 x i64> %307, i32 0
  %315 = shl i64 %314, 3
  %316 = add i64 %315, %305
  %317 = getelementptr i8, i8* %call2, i64 %316
  %318 = bitcast i8* %317 to <4 x double>*
  store <4 x double> %313, <4 x double>* %318, align 8, !alias.scope !102, !noalias !104
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1119 = add <4 x i64> %vec.ind1118, <i64 4, i64 4, i64 4, i64 4>
  %319 = icmp eq i64 %index.next1115, 28
  br i1 %319, label %polly.loop_exit785.1, label %vector.body1112, !llvm.loop !113

polly.loop_exit785.1:                             ; preds = %vector.body1112
  %polly.indvar_next781.1 = add nuw nsw i64 %polly.indvar780.1, 1
  %exitcond889.1.not = icmp eq i64 %polly.indvar_next781.1, 32
  br i1 %exitcond889.1.not, label %polly.loop_header777.1917, label %polly.loop_header777.1

polly.loop_header777.1917:                        ; preds = %polly.loop_exit785.1, %polly.loop_exit785.1928
  %polly.indvar780.1916 = phi i64 [ %polly.indvar_next781.1926, %polly.loop_exit785.1928 ], [ 0, %polly.loop_exit785.1 ]
  %320 = add nuw nsw i64 %polly.indvar780.1916, 32
  %321 = mul nuw nsw i64 %320, 480
  %322 = trunc i64 %320 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %322, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %polly.loop_header777.1917
  %index1126 = phi i64 [ 0, %polly.loop_header777.1917 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1132 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header777.1917 ], [ %vec.ind.next1133, %vector.body1124 ]
  %323 = mul <4 x i32> %vec.ind1132, %broadcast.splat1135
  %324 = add <4 x i32> %323, <i32 2, i32 2, i32 2, i32 2>
  %325 = urem <4 x i32> %324, <i32 60, i32 60, i32 60, i32 60>
  %326 = sitofp <4 x i32> %325 to <4 x double>
  %327 = fmul fast <4 x double> %326, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %328 = shl i64 %index1126, 3
  %329 = add i64 %328, %321
  %330 = getelementptr i8, i8* %call2, i64 %329
  %331 = bitcast i8* %330 to <4 x double>*
  store <4 x double> %327, <4 x double>* %331, align 8, !alias.scope !102, !noalias !104
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1133 = add <4 x i32> %vec.ind1132, <i32 4, i32 4, i32 4, i32 4>
  %332 = icmp eq i64 %index.next1127, 32
  br i1 %332, label %polly.loop_exit785.1928, label %vector.body1124, !llvm.loop !114

polly.loop_exit785.1928:                          ; preds = %vector.body1124
  %polly.indvar_next781.1926 = add nuw nsw i64 %polly.indvar780.1916, 1
  %exitcond889.1927.not = icmp eq i64 %polly.indvar_next781.1926, 32
  br i1 %exitcond889.1927.not, label %polly.loop_header777.1.1, label %polly.loop_header777.1917

polly.loop_header777.1.1:                         ; preds = %polly.loop_exit785.1928, %polly.loop_exit785.1.1
  %polly.indvar780.1.1 = phi i64 [ %polly.indvar_next781.1.1, %polly.loop_exit785.1.1 ], [ 0, %polly.loop_exit785.1928 ]
  %333 = add nuw nsw i64 %polly.indvar780.1.1, 32
  %334 = mul nuw nsw i64 %333, 480
  %335 = trunc i64 %333 to i32
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %335, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_header777.1.1
  %index1140 = phi i64 [ 0, %polly.loop_header777.1.1 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1144 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header777.1.1 ], [ %vec.ind.next1145, %vector.body1138 ]
  %336 = add nuw nsw <4 x i64> %vec.ind1144, <i64 32, i64 32, i64 32, i64 32>
  %337 = trunc <4 x i64> %336 to <4 x i32>
  %338 = mul <4 x i32> %broadcast.splat1147, %337
  %339 = add <4 x i32> %338, <i32 2, i32 2, i32 2, i32 2>
  %340 = urem <4 x i32> %339, <i32 60, i32 60, i32 60, i32 60>
  %341 = sitofp <4 x i32> %340 to <4 x double>
  %342 = fmul fast <4 x double> %341, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %343 = extractelement <4 x i64> %336, i32 0
  %344 = shl i64 %343, 3
  %345 = add i64 %344, %334
  %346 = getelementptr i8, i8* %call2, i64 %345
  %347 = bitcast i8* %346 to <4 x double>*
  store <4 x double> %342, <4 x double>* %347, align 8, !alias.scope !102, !noalias !104
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1145 = add <4 x i64> %vec.ind1144, <i64 4, i64 4, i64 4, i64 4>
  %348 = icmp eq i64 %index.next1141, 28
  br i1 %348, label %polly.loop_exit785.1.1, label %vector.body1138, !llvm.loop !115

polly.loop_exit785.1.1:                           ; preds = %vector.body1138
  %polly.indvar_next781.1.1 = add nuw nsw i64 %polly.indvar780.1.1, 1
  %exitcond889.1.1.not = icmp eq i64 %polly.indvar_next781.1.1, 32
  br i1 %exitcond889.1.1.not, label %polly.loop_header777.2, label %polly.loop_header777.1.1

polly.loop_header777.2:                           ; preds = %polly.loop_exit785.1.1, %polly.loop_exit785.2
  %polly.indvar780.2 = phi i64 [ %polly.indvar_next781.2, %polly.loop_exit785.2 ], [ 0, %polly.loop_exit785.1.1 ]
  %349 = add nuw nsw i64 %polly.indvar780.2, 64
  %350 = mul nuw nsw i64 %349, 480
  %351 = trunc i64 %349 to i32
  %broadcast.splatinsert1160 = insertelement <4 x i32> poison, i32 %351, i32 0
  %broadcast.splat1161 = shufflevector <4 x i32> %broadcast.splatinsert1160, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %polly.loop_header777.2
  %index1152 = phi i64 [ 0, %polly.loop_header777.2 ], [ %index.next1153, %vector.body1150 ]
  %vec.ind1158 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header777.2 ], [ %vec.ind.next1159, %vector.body1150 ]
  %352 = mul <4 x i32> %vec.ind1158, %broadcast.splat1161
  %353 = add <4 x i32> %352, <i32 2, i32 2, i32 2, i32 2>
  %354 = urem <4 x i32> %353, <i32 60, i32 60, i32 60, i32 60>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %357 = shl i64 %index1152, 3
  %358 = add i64 %357, %350
  %359 = getelementptr i8, i8* %call2, i64 %358
  %360 = bitcast i8* %359 to <4 x double>*
  store <4 x double> %356, <4 x double>* %360, align 8, !alias.scope !102, !noalias !104
  %index.next1153 = add i64 %index1152, 4
  %vec.ind.next1159 = add <4 x i32> %vec.ind1158, <i32 4, i32 4, i32 4, i32 4>
  %361 = icmp eq i64 %index.next1153, 32
  br i1 %361, label %polly.loop_exit785.2, label %vector.body1150, !llvm.loop !116

polly.loop_exit785.2:                             ; preds = %vector.body1150
  %polly.indvar_next781.2 = add nuw nsw i64 %polly.indvar780.2, 1
  %exitcond889.2.not = icmp eq i64 %polly.indvar_next781.2, 16
  br i1 %exitcond889.2.not, label %polly.loop_header777.1.2, label %polly.loop_header777.2

polly.loop_header777.1.2:                         ; preds = %polly.loop_exit785.2, %polly.loop_exit785.1.2
  %polly.indvar780.1.2 = phi i64 [ %polly.indvar_next781.1.2, %polly.loop_exit785.1.2 ], [ 0, %polly.loop_exit785.2 ]
  %362 = add nuw nsw i64 %polly.indvar780.1.2, 64
  %363 = mul nuw nsw i64 %362, 480
  %364 = trunc i64 %362 to i32
  %broadcast.splatinsert1172 = insertelement <4 x i32> poison, i32 %364, i32 0
  %broadcast.splat1173 = shufflevector <4 x i32> %broadcast.splatinsert1172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %polly.loop_header777.1.2
  %index1166 = phi i64 [ 0, %polly.loop_header777.1.2 ], [ %index.next1167, %vector.body1164 ]
  %vec.ind1170 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header777.1.2 ], [ %vec.ind.next1171, %vector.body1164 ]
  %365 = add nuw nsw <4 x i64> %vec.ind1170, <i64 32, i64 32, i64 32, i64 32>
  %366 = trunc <4 x i64> %365 to <4 x i32>
  %367 = mul <4 x i32> %broadcast.splat1173, %366
  %368 = add <4 x i32> %367, <i32 2, i32 2, i32 2, i32 2>
  %369 = urem <4 x i32> %368, <i32 60, i32 60, i32 60, i32 60>
  %370 = sitofp <4 x i32> %369 to <4 x double>
  %371 = fmul fast <4 x double> %370, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %372 = extractelement <4 x i64> %365, i32 0
  %373 = shl i64 %372, 3
  %374 = add i64 %373, %363
  %375 = getelementptr i8, i8* %call2, i64 %374
  %376 = bitcast i8* %375 to <4 x double>*
  store <4 x double> %371, <4 x double>* %376, align 8, !alias.scope !102, !noalias !104
  %index.next1167 = add i64 %index1166, 4
  %vec.ind.next1171 = add <4 x i64> %vec.ind1170, <i64 4, i64 4, i64 4, i64 4>
  %377 = icmp eq i64 %index.next1167, 28
  br i1 %377, label %polly.loop_exit785.1.2, label %vector.body1164, !llvm.loop !117

polly.loop_exit785.1.2:                           ; preds = %vector.body1164
  %polly.indvar_next781.1.2 = add nuw nsw i64 %polly.indvar780.1.2, 1
  %exitcond889.1.2.not = icmp eq i64 %polly.indvar_next781.1.2, 16
  br i1 %exitcond889.1.2.not, label %polly.loop_header803, label %polly.loop_header777.1.2

polly.loop_header750.1:                           ; preds = %polly.loop_exit758, %polly.loop_exit758.1
  %polly.indvar753.1 = phi i64 [ %polly.indvar_next754.1, %polly.loop_exit758.1 ], [ 0, %polly.loop_exit758 ]
  %378 = mul nuw nsw i64 %polly.indvar753.1, 640
  %379 = trunc i64 %polly.indvar753.1 to i32
  %broadcast.splatinsert1006 = insertelement <4 x i32> poison, i32 %379, i32 0
  %broadcast.splat1007 = shufflevector <4 x i32> %broadcast.splatinsert1006, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %polly.loop_header750.1
  %index1000 = phi i64 [ 0, %polly.loop_header750.1 ], [ %index.next1001, %vector.body998 ]
  %vec.ind1004 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.1 ], [ %vec.ind.next1005, %vector.body998 ]
  %380 = add nuw nsw <4 x i64> %vec.ind1004, <i64 32, i64 32, i64 32, i64 32>
  %381 = trunc <4 x i64> %380 to <4 x i32>
  %382 = mul <4 x i32> %broadcast.splat1007, %381
  %383 = add <4 x i32> %382, <i32 3, i32 3, i32 3, i32 3>
  %384 = urem <4 x i32> %383, <i32 80, i32 80, i32 80, i32 80>
  %385 = sitofp <4 x i32> %384 to <4 x double>
  %386 = fmul fast <4 x double> %385, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %387 = extractelement <4 x i64> %380, i32 0
  %388 = shl i64 %387, 3
  %389 = add nuw nsw i64 %388, %378
  %390 = getelementptr i8, i8* %call, i64 %389
  %391 = bitcast i8* %390 to <4 x double>*
  store <4 x double> %386, <4 x double>* %391, align 8, !alias.scope !98, !noalias !100
  %index.next1001 = add i64 %index1000, 4
  %vec.ind.next1005 = add <4 x i64> %vec.ind1004, <i64 4, i64 4, i64 4, i64 4>
  %392 = icmp eq i64 %index.next1001, 32
  br i1 %392, label %polly.loop_exit758.1, label %vector.body998, !llvm.loop !118

polly.loop_exit758.1:                             ; preds = %vector.body998
  %polly.indvar_next754.1 = add nuw nsw i64 %polly.indvar753.1, 1
  %exitcond898.1.not = icmp eq i64 %polly.indvar_next754.1, 32
  br i1 %exitcond898.1.not, label %polly.loop_header750.2, label %polly.loop_header750.1

polly.loop_header750.2:                           ; preds = %polly.loop_exit758.1, %polly.loop_exit758.2
  %polly.indvar753.2 = phi i64 [ %polly.indvar_next754.2, %polly.loop_exit758.2 ], [ 0, %polly.loop_exit758.1 ]
  %393 = mul nuw nsw i64 %polly.indvar753.2, 640
  %394 = trunc i64 %polly.indvar753.2 to i32
  %broadcast.splatinsert1018 = insertelement <4 x i32> poison, i32 %394, i32 0
  %broadcast.splat1019 = shufflevector <4 x i32> %broadcast.splatinsert1018, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %polly.loop_header750.2
  %index1012 = phi i64 [ 0, %polly.loop_header750.2 ], [ %index.next1013, %vector.body1010 ]
  %vec.ind1016 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.2 ], [ %vec.ind.next1017, %vector.body1010 ]
  %395 = add nuw nsw <4 x i64> %vec.ind1016, <i64 64, i64 64, i64 64, i64 64>
  %396 = trunc <4 x i64> %395 to <4 x i32>
  %397 = mul <4 x i32> %broadcast.splat1019, %396
  %398 = add <4 x i32> %397, <i32 3, i32 3, i32 3, i32 3>
  %399 = urem <4 x i32> %398, <i32 80, i32 80, i32 80, i32 80>
  %400 = sitofp <4 x i32> %399 to <4 x double>
  %401 = fmul fast <4 x double> %400, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %402 = extractelement <4 x i64> %395, i32 0
  %403 = shl i64 %402, 3
  %404 = add nuw nsw i64 %403, %393
  %405 = getelementptr i8, i8* %call, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %401, <4 x double>* %406, align 8, !alias.scope !98, !noalias !100
  %index.next1013 = add i64 %index1012, 4
  %vec.ind.next1017 = add <4 x i64> %vec.ind1016, <i64 4, i64 4, i64 4, i64 4>
  %407 = icmp eq i64 %index.next1013, 16
  br i1 %407, label %polly.loop_exit758.2, label %vector.body1010, !llvm.loop !119

polly.loop_exit758.2:                             ; preds = %vector.body1010
  %polly.indvar_next754.2 = add nuw nsw i64 %polly.indvar753.2, 1
  %exitcond898.2.not = icmp eq i64 %polly.indvar_next754.2, 32
  br i1 %exitcond898.2.not, label %polly.loop_header750.1931, label %polly.loop_header750.2

polly.loop_header750.1931:                        ; preds = %polly.loop_exit758.2, %polly.loop_exit758.1942
  %polly.indvar753.1930 = phi i64 [ %polly.indvar_next754.1940, %polly.loop_exit758.1942 ], [ 0, %polly.loop_exit758.2 ]
  %408 = add nuw nsw i64 %polly.indvar753.1930, 32
  %409 = mul nuw nsw i64 %408, 640
  %410 = trunc i64 %408 to i32
  %broadcast.splatinsert1032 = insertelement <4 x i32> poison, i32 %410, i32 0
  %broadcast.splat1033 = shufflevector <4 x i32> %broadcast.splatinsert1032, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %polly.loop_header750.1931
  %index1024 = phi i64 [ 0, %polly.loop_header750.1931 ], [ %index.next1025, %vector.body1022 ]
  %vec.ind1030 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header750.1931 ], [ %vec.ind.next1031, %vector.body1022 ]
  %411 = mul <4 x i32> %vec.ind1030, %broadcast.splat1033
  %412 = add <4 x i32> %411, <i32 3, i32 3, i32 3, i32 3>
  %413 = urem <4 x i32> %412, <i32 80, i32 80, i32 80, i32 80>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = shl i64 %index1024, 3
  %417 = add nuw nsw i64 %416, %409
  %418 = getelementptr i8, i8* %call, i64 %417
  %419 = bitcast i8* %418 to <4 x double>*
  store <4 x double> %415, <4 x double>* %419, align 8, !alias.scope !98, !noalias !100
  %index.next1025 = add i64 %index1024, 4
  %vec.ind.next1031 = add <4 x i32> %vec.ind1030, <i32 4, i32 4, i32 4, i32 4>
  %420 = icmp eq i64 %index.next1025, 32
  br i1 %420, label %polly.loop_exit758.1942, label %vector.body1022, !llvm.loop !120

polly.loop_exit758.1942:                          ; preds = %vector.body1022
  %polly.indvar_next754.1940 = add nuw nsw i64 %polly.indvar753.1930, 1
  %exitcond898.1941.not = icmp eq i64 %polly.indvar_next754.1940, 32
  br i1 %exitcond898.1941.not, label %polly.loop_header750.1.1, label %polly.loop_header750.1931

polly.loop_header750.1.1:                         ; preds = %polly.loop_exit758.1942, %polly.loop_exit758.1.1
  %polly.indvar753.1.1 = phi i64 [ %polly.indvar_next754.1.1, %polly.loop_exit758.1.1 ], [ 0, %polly.loop_exit758.1942 ]
  %421 = add nuw nsw i64 %polly.indvar753.1.1, 32
  %422 = mul nuw nsw i64 %421, 640
  %423 = trunc i64 %421 to i32
  %broadcast.splatinsert1044 = insertelement <4 x i32> poison, i32 %423, i32 0
  %broadcast.splat1045 = shufflevector <4 x i32> %broadcast.splatinsert1044, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %polly.loop_header750.1.1
  %index1038 = phi i64 [ 0, %polly.loop_header750.1.1 ], [ %index.next1039, %vector.body1036 ]
  %vec.ind1042 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.1.1 ], [ %vec.ind.next1043, %vector.body1036 ]
  %424 = add nuw nsw <4 x i64> %vec.ind1042, <i64 32, i64 32, i64 32, i64 32>
  %425 = trunc <4 x i64> %424 to <4 x i32>
  %426 = mul <4 x i32> %broadcast.splat1045, %425
  %427 = add <4 x i32> %426, <i32 3, i32 3, i32 3, i32 3>
  %428 = urem <4 x i32> %427, <i32 80, i32 80, i32 80, i32 80>
  %429 = sitofp <4 x i32> %428 to <4 x double>
  %430 = fmul fast <4 x double> %429, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %431 = extractelement <4 x i64> %424, i32 0
  %432 = shl i64 %431, 3
  %433 = add nuw nsw i64 %432, %422
  %434 = getelementptr i8, i8* %call, i64 %433
  %435 = bitcast i8* %434 to <4 x double>*
  store <4 x double> %430, <4 x double>* %435, align 8, !alias.scope !98, !noalias !100
  %index.next1039 = add i64 %index1038, 4
  %vec.ind.next1043 = add <4 x i64> %vec.ind1042, <i64 4, i64 4, i64 4, i64 4>
  %436 = icmp eq i64 %index.next1039, 32
  br i1 %436, label %polly.loop_exit758.1.1, label %vector.body1036, !llvm.loop !121

polly.loop_exit758.1.1:                           ; preds = %vector.body1036
  %polly.indvar_next754.1.1 = add nuw nsw i64 %polly.indvar753.1.1, 1
  %exitcond898.1.1.not = icmp eq i64 %polly.indvar_next754.1.1, 32
  br i1 %exitcond898.1.1.not, label %polly.loop_header750.2.1, label %polly.loop_header750.1.1

polly.loop_header750.2.1:                         ; preds = %polly.loop_exit758.1.1, %polly.loop_exit758.2.1
  %polly.indvar753.2.1 = phi i64 [ %polly.indvar_next754.2.1, %polly.loop_exit758.2.1 ], [ 0, %polly.loop_exit758.1.1 ]
  %437 = add nuw nsw i64 %polly.indvar753.2.1, 32
  %438 = mul nuw nsw i64 %437, 640
  %439 = trunc i64 %437 to i32
  %broadcast.splatinsert1056 = insertelement <4 x i32> poison, i32 %439, i32 0
  %broadcast.splat1057 = shufflevector <4 x i32> %broadcast.splatinsert1056, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %polly.loop_header750.2.1
  %index1050 = phi i64 [ 0, %polly.loop_header750.2.1 ], [ %index.next1051, %vector.body1048 ]
  %vec.ind1054 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.2.1 ], [ %vec.ind.next1055, %vector.body1048 ]
  %440 = add nuw nsw <4 x i64> %vec.ind1054, <i64 64, i64 64, i64 64, i64 64>
  %441 = trunc <4 x i64> %440 to <4 x i32>
  %442 = mul <4 x i32> %broadcast.splat1057, %441
  %443 = add <4 x i32> %442, <i32 3, i32 3, i32 3, i32 3>
  %444 = urem <4 x i32> %443, <i32 80, i32 80, i32 80, i32 80>
  %445 = sitofp <4 x i32> %444 to <4 x double>
  %446 = fmul fast <4 x double> %445, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %447 = extractelement <4 x i64> %440, i32 0
  %448 = shl i64 %447, 3
  %449 = add nuw nsw i64 %448, %438
  %450 = getelementptr i8, i8* %call, i64 %449
  %451 = bitcast i8* %450 to <4 x double>*
  store <4 x double> %446, <4 x double>* %451, align 8, !alias.scope !98, !noalias !100
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1055 = add <4 x i64> %vec.ind1054, <i64 4, i64 4, i64 4, i64 4>
  %452 = icmp eq i64 %index.next1051, 16
  br i1 %452, label %polly.loop_exit758.2.1, label %vector.body1048, !llvm.loop !122

polly.loop_exit758.2.1:                           ; preds = %vector.body1048
  %polly.indvar_next754.2.1 = add nuw nsw i64 %polly.indvar753.2.1, 1
  %exitcond898.2.1.not = icmp eq i64 %polly.indvar_next754.2.1, 32
  br i1 %exitcond898.2.1.not, label %polly.loop_header750.2945, label %polly.loop_header750.2.1

polly.loop_header750.2945:                        ; preds = %polly.loop_exit758.2.1, %polly.loop_exit758.2956
  %polly.indvar753.2944 = phi i64 [ %polly.indvar_next754.2954, %polly.loop_exit758.2956 ], [ 0, %polly.loop_exit758.2.1 ]
  %453 = add nuw nsw i64 %polly.indvar753.2944, 64
  %454 = mul nuw nsw i64 %453, 640
  %455 = trunc i64 %453 to i32
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %455, i32 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %polly.loop_header750.2945
  %index1062 = phi i64 [ 0, %polly.loop_header750.2945 ], [ %index.next1063, %vector.body1060 ]
  %vec.ind1068 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header750.2945 ], [ %vec.ind.next1069, %vector.body1060 ]
  %456 = mul <4 x i32> %vec.ind1068, %broadcast.splat1071
  %457 = add <4 x i32> %456, <i32 3, i32 3, i32 3, i32 3>
  %458 = urem <4 x i32> %457, <i32 80, i32 80, i32 80, i32 80>
  %459 = sitofp <4 x i32> %458 to <4 x double>
  %460 = fmul fast <4 x double> %459, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %461 = shl i64 %index1062, 3
  %462 = add nuw nsw i64 %461, %454
  %463 = getelementptr i8, i8* %call, i64 %462
  %464 = bitcast i8* %463 to <4 x double>*
  store <4 x double> %460, <4 x double>* %464, align 8, !alias.scope !98, !noalias !100
  %index.next1063 = add i64 %index1062, 4
  %vec.ind.next1069 = add <4 x i32> %vec.ind1068, <i32 4, i32 4, i32 4, i32 4>
  %465 = icmp eq i64 %index.next1063, 32
  br i1 %465, label %polly.loop_exit758.2956, label %vector.body1060, !llvm.loop !123

polly.loop_exit758.2956:                          ; preds = %vector.body1060
  %polly.indvar_next754.2954 = add nuw nsw i64 %polly.indvar753.2944, 1
  %exitcond898.2955.not = icmp eq i64 %polly.indvar_next754.2954, 16
  br i1 %exitcond898.2955.not, label %polly.loop_header750.1.2, label %polly.loop_header750.2945

polly.loop_header750.1.2:                         ; preds = %polly.loop_exit758.2956, %polly.loop_exit758.1.2
  %polly.indvar753.1.2 = phi i64 [ %polly.indvar_next754.1.2, %polly.loop_exit758.1.2 ], [ 0, %polly.loop_exit758.2956 ]
  %466 = add nuw nsw i64 %polly.indvar753.1.2, 64
  %467 = mul nuw nsw i64 %466, 640
  %468 = trunc i64 %466 to i32
  %broadcast.splatinsert1082 = insertelement <4 x i32> poison, i32 %468, i32 0
  %broadcast.splat1083 = shufflevector <4 x i32> %broadcast.splatinsert1082, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %polly.loop_header750.1.2
  %index1076 = phi i64 [ 0, %polly.loop_header750.1.2 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1080 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.1.2 ], [ %vec.ind.next1081, %vector.body1074 ]
  %469 = add nuw nsw <4 x i64> %vec.ind1080, <i64 32, i64 32, i64 32, i64 32>
  %470 = trunc <4 x i64> %469 to <4 x i32>
  %471 = mul <4 x i32> %broadcast.splat1083, %470
  %472 = add <4 x i32> %471, <i32 3, i32 3, i32 3, i32 3>
  %473 = urem <4 x i32> %472, <i32 80, i32 80, i32 80, i32 80>
  %474 = sitofp <4 x i32> %473 to <4 x double>
  %475 = fmul fast <4 x double> %474, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %476 = extractelement <4 x i64> %469, i32 0
  %477 = shl i64 %476, 3
  %478 = add nuw nsw i64 %477, %467
  %479 = getelementptr i8, i8* %call, i64 %478
  %480 = bitcast i8* %479 to <4 x double>*
  store <4 x double> %475, <4 x double>* %480, align 8, !alias.scope !98, !noalias !100
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1081 = add <4 x i64> %vec.ind1080, <i64 4, i64 4, i64 4, i64 4>
  %481 = icmp eq i64 %index.next1077, 32
  br i1 %481, label %polly.loop_exit758.1.2, label %vector.body1074, !llvm.loop !124

polly.loop_exit758.1.2:                           ; preds = %vector.body1074
  %polly.indvar_next754.1.2 = add nuw nsw i64 %polly.indvar753.1.2, 1
  %exitcond898.1.2.not = icmp eq i64 %polly.indvar_next754.1.2, 16
  br i1 %exitcond898.1.2.not, label %polly.loop_header750.2.2, label %polly.loop_header750.1.2

polly.loop_header750.2.2:                         ; preds = %polly.loop_exit758.1.2, %polly.loop_exit758.2.2
  %polly.indvar753.2.2 = phi i64 [ %polly.indvar_next754.2.2, %polly.loop_exit758.2.2 ], [ 0, %polly.loop_exit758.1.2 ]
  %482 = add nuw nsw i64 %polly.indvar753.2.2, 64
  %483 = mul nuw nsw i64 %482, 640
  %484 = trunc i64 %482 to i32
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %484, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %polly.loop_header750.2.2
  %index1088 = phi i64 [ 0, %polly.loop_header750.2.2 ], [ %index.next1089, %vector.body1086 ]
  %vec.ind1092 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header750.2.2 ], [ %vec.ind.next1093, %vector.body1086 ]
  %485 = add nuw nsw <4 x i64> %vec.ind1092, <i64 64, i64 64, i64 64, i64 64>
  %486 = trunc <4 x i64> %485 to <4 x i32>
  %487 = mul <4 x i32> %broadcast.splat1095, %486
  %488 = add <4 x i32> %487, <i32 3, i32 3, i32 3, i32 3>
  %489 = urem <4 x i32> %488, <i32 80, i32 80, i32 80, i32 80>
  %490 = sitofp <4 x i32> %489 to <4 x double>
  %491 = fmul fast <4 x double> %490, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %492 = extractelement <4 x i64> %485, i32 0
  %493 = shl i64 %492, 3
  %494 = add nuw nsw i64 %493, %483
  %495 = getelementptr i8, i8* %call, i64 %494
  %496 = bitcast i8* %495 to <4 x double>*
  store <4 x double> %491, <4 x double>* %496, align 8, !alias.scope !98, !noalias !100
  %index.next1089 = add i64 %index1088, 4
  %vec.ind.next1093 = add <4 x i64> %vec.ind1092, <i64 4, i64 4, i64 4, i64 4>
  %497 = icmp eq i64 %index.next1089, 16
  br i1 %497, label %polly.loop_exit758.2.2, label %vector.body1086, !llvm.loop !125

polly.loop_exit758.2.2:                           ; preds = %vector.body1086
  %polly.indvar_next754.2.2 = add nuw nsw i64 %polly.indvar753.2.2, 1
  %exitcond898.2.2.not = icmp eq i64 %polly.indvar_next754.2.2, 16
  br i1 %exitcond898.2.2.not, label %polly.loop_header777, label %polly.loop_header750.2.2
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
!34 = !{!"llvm.loop.tile.size", i32 64}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !23, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = distinct !{!41, !12, !23, !42, !43, !44, !34, !45, !56}
!42 = !{!"llvm.loop.id", !"i"}
!43 = !{!"llvm.loop.tile.enable", i1 true}
!44 = !{!"llvm.loop.tile.depth", i32 3}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !23, !47, !48, !49, !50, !51}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.interchange.followup_interchanged", !52}
!52 = distinct !{!52, !12, !23, !47, !53, !54, !55}
!53 = !{!"llvm.data.pack.enable", i1 true}
!54 = !{!"llvm.data.pack.array", !21}
!55 = !{!"llvm.data.pack.allocate", !"malloc"}
!56 = !{!"llvm.loop.tile.followup_tile", !57}
!57 = distinct !{!57, !12, !23, !58}
!58 = !{!"llvm.loop.id", !"i2"}
!59 = distinct !{!59, !12, !13}
!60 = distinct !{!60, !12, !13}
!61 = distinct !{!61, !12, !13}
!62 = distinct !{!62, !12, !13}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !4, i64 0}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !68, !"polly.alias.scope.MemRef_call"}
!68 = distinct !{!68, !"polly.alias.scope.domain"}
!69 = !{!70, !71, !72}
!70 = distinct !{!70, !68, !"polly.alias.scope.MemRef_call1"}
!71 = distinct !{!71, !68, !"polly.alias.scope.MemRef_call2"}
!72 = distinct !{!72, !68, !"polly.alias.scope.Packed_MemRef_call2"}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !75, !13}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{!67, !70, !72}
!77 = !{!67, !71, !72}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82, !83}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !79, !"polly.alias.scope.Packed_MemRef_call2"}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !75, !13}
!86 = !{!78, !81, !83}
!87 = !{!78, !82, !83}
!88 = distinct !{!88, !89, !"polly.alias.scope.MemRef_call"}
!89 = distinct !{!89, !"polly.alias.scope.domain"}
!90 = !{!91, !92, !93}
!91 = distinct !{!91, !89, !"polly.alias.scope.MemRef_call1"}
!92 = distinct !{!92, !89, !"polly.alias.scope.MemRef_call2"}
!93 = distinct !{!93, !89, !"polly.alias.scope.Packed_MemRef_call2"}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !75, !13}
!96 = !{!88, !91, !93}
!97 = !{!88, !92, !93}
!98 = distinct !{!98, !99, !"polly.alias.scope.MemRef_call"}
!99 = distinct !{!99, !"polly.alias.scope.domain"}
!100 = !{!101, !102}
!101 = distinct !{!101, !99, !"polly.alias.scope.MemRef_call1"}
!102 = distinct !{!102, !99, !"polly.alias.scope.MemRef_call2"}
!103 = distinct !{!103, !13}
!104 = !{!101, !98}
!105 = distinct !{!105, !13}
!106 = !{!102, !98}
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
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
