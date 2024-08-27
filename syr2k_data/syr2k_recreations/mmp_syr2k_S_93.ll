; ModuleID = 'syr2k_recreations//mmp_syr2k_S_93.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_93.c"
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
  %call789 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1650 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1650, %call2
  %polly.access.call2670 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2670, %call1
  %2 = or i1 %0, %1
  %polly.access.call690 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call690, %call2
  %4 = icmp ule i8* %polly.access.call2670, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call690, %call1
  %8 = icmp ule i8* %polly.access.call1650, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header775, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call789, i64 %indvars.iv7.i, i64 %index974
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit836.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start458, label %for.cond1.preheader.i45

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
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call789, i64 %indvars.iv21.i, i64 %index1256
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
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call789, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call789, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit602.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start277, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call789, i64 %indvars.iv21.i52, i64 %index1279
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1283 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1283, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1280 = add i64 %index1279, 4
  %57 = icmp eq i64 %index.next1280, %n.vec1278
  br i1 %57, label %middle.block1272, label %vector.body1274, !llvm.loop !64

middle.block1272:                                 ; preds = %vector.body1274
  %cmp.n1282 = icmp eq i64 %indvars.iv21.i52, %n.vec1278
  br i1 %cmp.n1282, label %for.inc6.i63, label %for.body3.i60.preheader1325

for.body3.i60.preheader1325:                      ; preds = %for.body3.i60.preheader, %middle.block1272
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1278, %middle.block1272 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1325, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1325 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call789, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !65

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
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call789, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit421.1
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
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call789, i64 %indvars.iv21.i91, i64 %index1305
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1309 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1309, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1306 = add i64 %index1305, 4
  %68 = icmp eq i64 %index.next1306, %n.vec1304
  br i1 %68, label %middle.block1298, label %vector.body1300, !llvm.loop !66

middle.block1298:                                 ; preds = %vector.body1300
  %cmp.n1308 = icmp eq i64 %indvars.iv21.i91, %n.vec1304
  br i1 %cmp.n1308, label %for.inc6.i102, label %for.body3.i99.preheader1324

for.body3.i99.preheader1324:                      ; preds = %for.body3.i99.preheader, %middle.block1298
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1304, %middle.block1298 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1324, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1324 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call789, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !67

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
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call789, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit240.1
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call789, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1313 = phi i64 [ %indvar.next1314, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1313, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1315 = icmp ult i64 %88, 4
  br i1 %min.iters.check1315, label %polly.loop_header192.preheader, label %vector.ph1316

vector.ph1316:                                    ; preds = %polly.loop_header
  %n.vec1318 = and i64 %88, -4
  br label %vector.body1312

vector.body1312:                                  ; preds = %vector.body1312, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1320, %vector.body1312 ]
  %90 = shl nuw nsw i64 %index1319, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1323 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !72, !noalias !74
  %93 = fmul fast <4 x double> %wide.load1323, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !72, !noalias !74
  %index.next1320 = add i64 %index1319, 4
  %95 = icmp eq i64 %index.next1320, %n.vec1318
  br i1 %95, label %middle.block1310, label %vector.body1312, !llvm.loop !79

middle.block1310:                                 ; preds = %vector.body1312
  %cmp.n1322 = icmp eq i64 %88, %n.vec1318
  br i1 %cmp.n1322, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1310
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1318, %middle.block1310 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1310
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1314 = add i64 %indvar1313, 1
  br i1 %exitcond855.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall136, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep851.1 = getelementptr i8, i8* %malloccall136, i64 480
  %scevgep852.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.1, i64 480, i1 false)
  %scevgep851.2 = getelementptr i8, i8* %malloccall136, i64 960
  %scevgep852.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.2, i64 480, i1 false)
  %scevgep851.3 = getelementptr i8, i8* %malloccall136, i64 1440
  %scevgep852.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.3, i64 480, i1 false)
  %scevgep851.4 = getelementptr i8, i8* %malloccall136, i64 1920
  %scevgep852.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.4, i64 480, i1 false)
  %scevgep851.5 = getelementptr i8, i8* %malloccall136, i64 2400
  %scevgep852.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.5, i64 480, i1 false)
  %scevgep851.6 = getelementptr i8, i8* %malloccall136, i64 2880
  %scevgep852.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.6, i64 480, i1 false)
  %scevgep851.7 = getelementptr i8, i8* %malloccall136, i64 3360
  %scevgep852.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.7, i64 480, i1 false)
  %scevgep851.8 = getelementptr i8, i8* %malloccall136, i64 3840
  %scevgep852.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.8, i64 480, i1 false)
  %scevgep851.9 = getelementptr i8, i8* %malloccall136, i64 4320
  %scevgep852.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.9, i64 480, i1 false)
  %scevgep851.10 = getelementptr i8, i8* %malloccall136, i64 4800
  %scevgep852.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.10, i64 480, i1 false)
  %scevgep851.11 = getelementptr i8, i8* %malloccall136, i64 5280
  %scevgep852.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.11, i64 480, i1 false)
  %scevgep851.12 = getelementptr i8, i8* %malloccall136, i64 5760
  %scevgep852.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.12, i64 480, i1 false)
  %scevgep851.13 = getelementptr i8, i8* %malloccall136, i64 6240
  %scevgep852.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.13, i64 480, i1 false)
  %scevgep851.14 = getelementptr i8, i8* %malloccall136, i64 6720
  %scevgep852.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.14, i64 480, i1 false)
  %scevgep851.15 = getelementptr i8, i8* %malloccall136, i64 7200
  %scevgep852.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.15, i64 480, i1 false)
  %scevgep851.16 = getelementptr i8, i8* %malloccall136, i64 7680
  %scevgep852.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.16, i64 480, i1 false)
  %scevgep851.17 = getelementptr i8, i8* %malloccall136, i64 8160
  %scevgep852.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.17, i64 480, i1 false)
  %scevgep851.18 = getelementptr i8, i8* %malloccall136, i64 8640
  %scevgep852.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.18, i64 480, i1 false)
  %scevgep851.19 = getelementptr i8, i8* %malloccall136, i64 9120
  %scevgep852.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.19, i64 480, i1 false)
  %scevgep851.20 = getelementptr i8, i8* %malloccall136, i64 9600
  %scevgep852.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.20, i64 480, i1 false)
  %scevgep851.21 = getelementptr i8, i8* %malloccall136, i64 10080
  %scevgep852.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.21, i64 480, i1 false)
  %scevgep851.22 = getelementptr i8, i8* %malloccall136, i64 10560
  %scevgep852.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.22, i64 480, i1 false)
  %scevgep851.23 = getelementptr i8, i8* %malloccall136, i64 11040
  %scevgep852.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.23, i64 480, i1 false)
  %scevgep851.24 = getelementptr i8, i8* %malloccall136, i64 11520
  %scevgep852.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.24, i64 480, i1 false)
  %scevgep851.25 = getelementptr i8, i8* %malloccall136, i64 12000
  %scevgep852.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.25, i64 480, i1 false)
  %scevgep851.26 = getelementptr i8, i8* %malloccall136, i64 12480
  %scevgep852.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.26, i64 480, i1 false)
  %scevgep851.27 = getelementptr i8, i8* %malloccall136, i64 12960
  %scevgep852.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.27, i64 480, i1 false)
  %scevgep851.28 = getelementptr i8, i8* %malloccall136, i64 13440
  %scevgep852.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.28, i64 480, i1 false)
  %scevgep851.29 = getelementptr i8, i8* %malloccall136, i64 13920
  %scevgep852.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.29, i64 480, i1 false)
  %scevgep851.30 = getelementptr i8, i8* %malloccall136, i64 14400
  %scevgep852.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.30, i64 480, i1 false)
  %scevgep851.31 = getelementptr i8, i8* %malloccall136, i64 14880
  %scevgep852.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.31, i64 480, i1 false)
  %scevgep851.32 = getelementptr i8, i8* %malloccall136, i64 15360
  %scevgep852.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.32, i64 480, i1 false)
  %scevgep851.33 = getelementptr i8, i8* %malloccall136, i64 15840
  %scevgep852.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.33, i64 480, i1 false)
  %scevgep851.34 = getelementptr i8, i8* %malloccall136, i64 16320
  %scevgep852.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.34, i64 480, i1 false)
  %scevgep851.35 = getelementptr i8, i8* %malloccall136, i64 16800
  %scevgep852.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.35, i64 480, i1 false)
  %scevgep851.36 = getelementptr i8, i8* %malloccall136, i64 17280
  %scevgep852.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.36, i64 480, i1 false)
  %scevgep851.37 = getelementptr i8, i8* %malloccall136, i64 17760
  %scevgep852.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.37, i64 480, i1 false)
  %scevgep851.38 = getelementptr i8, i8* %malloccall136, i64 18240
  %scevgep852.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.38, i64 480, i1 false)
  %scevgep851.39 = getelementptr i8, i8* %malloccall136, i64 18720
  %scevgep852.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.39, i64 480, i1 false)
  %scevgep851.40 = getelementptr i8, i8* %malloccall136, i64 19200
  %scevgep852.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.40, i64 480, i1 false)
  %scevgep851.41 = getelementptr i8, i8* %malloccall136, i64 19680
  %scevgep852.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.41, i64 480, i1 false)
  %scevgep851.42 = getelementptr i8, i8* %malloccall136, i64 20160
  %scevgep852.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.42, i64 480, i1 false)
  %scevgep851.43 = getelementptr i8, i8* %malloccall136, i64 20640
  %scevgep852.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.43, i64 480, i1 false)
  %scevgep851.44 = getelementptr i8, i8* %malloccall136, i64 21120
  %scevgep852.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.44, i64 480, i1 false)
  %scevgep851.45 = getelementptr i8, i8* %malloccall136, i64 21600
  %scevgep852.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.45, i64 480, i1 false)
  %scevgep851.46 = getelementptr i8, i8* %malloccall136, i64 22080
  %scevgep852.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.46, i64 480, i1 false)
  %scevgep851.47 = getelementptr i8, i8* %malloccall136, i64 22560
  %scevgep852.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.47, i64 480, i1 false)
  %scevgep851.48 = getelementptr i8, i8* %malloccall136, i64 23040
  %scevgep852.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.48, i64 480, i1 false)
  %scevgep851.49 = getelementptr i8, i8* %malloccall136, i64 23520
  %scevgep852.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.49, i64 480, i1 false)
  %scevgep851.50 = getelementptr i8, i8* %malloccall136, i64 24000
  %scevgep852.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.50, i64 480, i1 false)
  %scevgep851.51 = getelementptr i8, i8* %malloccall136, i64 24480
  %scevgep852.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.51, i64 480, i1 false)
  %scevgep851.52 = getelementptr i8, i8* %malloccall136, i64 24960
  %scevgep852.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.52, i64 480, i1 false)
  %scevgep851.53 = getelementptr i8, i8* %malloccall136, i64 25440
  %scevgep852.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.53, i64 480, i1 false)
  %scevgep851.54 = getelementptr i8, i8* %malloccall136, i64 25920
  %scevgep852.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.54, i64 480, i1 false)
  %scevgep851.55 = getelementptr i8, i8* %malloccall136, i64 26400
  %scevgep852.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.55, i64 480, i1 false)
  %scevgep851.56 = getelementptr i8, i8* %malloccall136, i64 26880
  %scevgep852.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.56, i64 480, i1 false)
  %scevgep851.57 = getelementptr i8, i8* %malloccall136, i64 27360
  %scevgep852.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.57, i64 480, i1 false)
  %scevgep851.58 = getelementptr i8, i8* %malloccall136, i64 27840
  %scevgep852.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.58, i64 480, i1 false)
  %scevgep851.59 = getelementptr i8, i8* %malloccall136, i64 28320
  %scevgep852.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.59, i64 480, i1 false)
  %scevgep851.60 = getelementptr i8, i8* %malloccall136, i64 28800
  %scevgep852.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.60, i64 480, i1 false)
  %scevgep851.61 = getelementptr i8, i8* %malloccall136, i64 29280
  %scevgep852.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.61, i64 480, i1 false)
  %scevgep851.62 = getelementptr i8, i8* %malloccall136, i64 29760
  %scevgep852.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.62, i64 480, i1 false)
  %scevgep851.63 = getelementptr i8, i8* %malloccall136, i64 30240
  %scevgep852.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.63, i64 480, i1 false)
  %scevgep851.64 = getelementptr i8, i8* %malloccall136, i64 30720
  %scevgep852.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.64, i64 480, i1 false)
  %scevgep851.65 = getelementptr i8, i8* %malloccall136, i64 31200
  %scevgep852.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.65, i64 480, i1 false)
  %scevgep851.66 = getelementptr i8, i8* %malloccall136, i64 31680
  %scevgep852.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.66, i64 480, i1 false)
  %scevgep851.67 = getelementptr i8, i8* %malloccall136, i64 32160
  %scevgep852.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.67, i64 480, i1 false)
  %scevgep851.68 = getelementptr i8, i8* %malloccall136, i64 32640
  %scevgep852.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.68, i64 480, i1 false)
  %scevgep851.69 = getelementptr i8, i8* %malloccall136, i64 33120
  %scevgep852.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.69, i64 480, i1 false)
  %scevgep851.70 = getelementptr i8, i8* %malloccall136, i64 33600
  %scevgep852.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.70, i64 480, i1 false)
  %scevgep851.71 = getelementptr i8, i8* %malloccall136, i64 34080
  %scevgep852.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.71, i64 480, i1 false)
  %scevgep851.72 = getelementptr i8, i8* %malloccall136, i64 34560
  %scevgep852.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.72, i64 480, i1 false)
  %scevgep851.73 = getelementptr i8, i8* %malloccall136, i64 35040
  %scevgep852.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.73, i64 480, i1 false)
  %scevgep851.74 = getelementptr i8, i8* %malloccall136, i64 35520
  %scevgep852.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.74, i64 480, i1 false)
  %scevgep851.75 = getelementptr i8, i8* %malloccall136, i64 36000
  %scevgep852.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.75, i64 480, i1 false)
  %scevgep851.76 = getelementptr i8, i8* %malloccall136, i64 36480
  %scevgep852.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.76, i64 480, i1 false)
  %scevgep851.77 = getelementptr i8, i8* %malloccall136, i64 36960
  %scevgep852.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.77, i64 480, i1 false)
  %scevgep851.78 = getelementptr i8, i8* %malloccall136, i64 37440
  %scevgep852.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.78, i64 480, i1 false)
  %scevgep851.79 = getelementptr i8, i8* %malloccall136, i64 37920
  %scevgep852.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep851.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep852.79, i64 480, i1 false)
  br label %polly.loop_header222

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond854.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond854.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !80

polly.loop_header222:                             ; preds = %polly.loop_header222, %polly.loop_header200.preheader
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header200.preheader ], [ %polly.indvar_next226, %polly.loop_header222 ]
  %97 = mul nuw nsw i64 %polly.indvar225, 480
  %scevgep845 = getelementptr i8, i8* %malloccall, i64 %97
  %scevgep846 = getelementptr i8, i8* %call1, i64 %97
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep845, i8* noundef nonnull align 8 dereferenceable(480) %scevgep846, i64 480, i1 false)
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next226, 64
  br i1 %exitcond.not, label %polly.loop_header238, label %polly.loop_header222

polly.loop_header238:                             ; preds = %polly.loop_header222, %polly.loop_exit246
  %polly.indvar241 = phi i64 [ %polly.indvar_next242, %polly.loop_exit246 ], [ 0, %polly.loop_header222 ]
  br label %polly.loop_header244

polly.loop_exit246:                               ; preds = %polly.loop_exit252
  %polly.indvar_next242 = add nuw nsw i64 %polly.indvar241, 1
  %exitcond849.not = icmp eq i64 %polly.indvar_next242, 60
  br i1 %exitcond849.not, label %polly.loop_header222.1, label %polly.loop_header238

polly.loop_header244:                             ; preds = %polly.loop_exit252, %polly.loop_header238
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit252 ], [ 1, %polly.loop_header238 ]
  %polly.indvar247 = phi i64 [ %polly.indvar_next248, %polly.loop_exit252 ], [ 0, %polly.loop_header238 ]
  %polly.access.mul.Packed_MemRef_call2260 = mul nuw nsw i64 %polly.indvar247, 60
  %polly.access.add.Packed_MemRef_call2261 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2260, %polly.indvar241
  %polly.access.Packed_MemRef_call2262 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261
  %_p_scalar_263 = load double, double* %polly.access.Packed_MemRef_call2262, align 8
  %polly.access.Packed_MemRef_call1270 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2261
  %_p_scalar_271 = load double, double* %polly.access.Packed_MemRef_call1270, align 8
  %98 = mul nuw nsw i64 %polly.indvar247, 640
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond848.not = icmp eq i64 %polly.indvar_next248, 64
  br i1 %exitcond848.not, label %polly.loop_exit246, label %polly.loop_header244

polly.loop_header250:                             ; preds = %polly.loop_header250, %polly.loop_header244
  %polly.indvar253 = phi i64 [ 0, %polly.loop_header244 ], [ %polly.indvar_next254, %polly.loop_header250 ]
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar253, 60
  %polly.access.add.Packed_MemRef_call1257 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1256, %polly.indvar241
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  %_p_scalar_259 = load double, double* %polly.access.Packed_MemRef_call1258, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_263, %_p_scalar_259
  %polly.access.Packed_MemRef_call2266 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1257
  %_p_scalar_267 = load double, double* %polly.access.Packed_MemRef_call2266, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_271, %_p_scalar_267
  %99 = shl nuw nsw i64 %polly.indvar253, 3
  %100 = add nuw nsw i64 %99, %98
  %scevgep272 = getelementptr i8, i8* %call, i64 %100
  %scevgep272273 = bitcast i8* %scevgep272 to double*
  %_p_scalar_274 = load double, double* %scevgep272273, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_274
  store double %p_add42.i118, double* %scevgep272273, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %exitcond847.not = icmp eq i64 %polly.indvar_next254, %indvars.iv
  br i1 %exitcond847.not, label %polly.loop_exit252, label %polly.loop_header250

polly.start277:                                   ; preds = %kernel_syr2k.exit
  %malloccall279 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall281 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header365

polly.loop_header365:                             ; preds = %polly.loop_exit373, %polly.start277
  %indvar1287 = phi i64 [ %indvar.next1288, %polly.loop_exit373 ], [ 0, %polly.start277 ]
  %polly.indvar368 = phi i64 [ %polly.indvar_next369, %polly.loop_exit373 ], [ 1, %polly.start277 ]
  %101 = add i64 %indvar1287, 1
  %102 = mul nuw nsw i64 %polly.indvar368, 640
  %scevgep377 = getelementptr i8, i8* %call, i64 %102
  %min.iters.check1289 = icmp ult i64 %101, 4
  br i1 %min.iters.check1289, label %polly.loop_header371.preheader, label %vector.ph1290

vector.ph1290:                                    ; preds = %polly.loop_header365
  %n.vec1292 = and i64 %101, -4
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %vector.ph1290
  %index1293 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1294, %vector.body1286 ]
  %103 = shl nuw nsw i64 %index1293, 3
  %104 = getelementptr i8, i8* %scevgep377, i64 %103
  %105 = bitcast i8* %104 to <4 x double>*
  %wide.load1297 = load <4 x double>, <4 x double>* %105, align 8, !alias.scope !82, !noalias !84
  %106 = fmul fast <4 x double> %wide.load1297, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %107 = bitcast i8* %104 to <4 x double>*
  store <4 x double> %106, <4 x double>* %107, align 8, !alias.scope !82, !noalias !84
  %index.next1294 = add i64 %index1293, 4
  %108 = icmp eq i64 %index.next1294, %n.vec1292
  br i1 %108, label %middle.block1284, label %vector.body1286, !llvm.loop !89

middle.block1284:                                 ; preds = %vector.body1286
  %cmp.n1296 = icmp eq i64 %101, %n.vec1292
  br i1 %cmp.n1296, label %polly.loop_exit373, label %polly.loop_header371.preheader

polly.loop_header371.preheader:                   ; preds = %polly.loop_header365, %middle.block1284
  %polly.indvar374.ph = phi i64 [ 0, %polly.loop_header365 ], [ %n.vec1292, %middle.block1284 ]
  br label %polly.loop_header371

polly.loop_exit373:                               ; preds = %polly.loop_header371, %middle.block1284
  %polly.indvar_next369 = add nuw nsw i64 %polly.indvar368, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next369, 80
  %indvar.next1288 = add i64 %indvar1287, 1
  br i1 %exitcond870.not, label %polly.loop_header381.preheader, label %polly.loop_header365

polly.loop_header381.preheader:                   ; preds = %polly.loop_exit373
  %Packed_MemRef_call1280 = bitcast i8* %malloccall279 to double*
  %Packed_MemRef_call2282 = bitcast i8* %malloccall281 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall281, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep866.1 = getelementptr i8, i8* %malloccall281, i64 480
  %scevgep867.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.1, i64 480, i1 false)
  %scevgep866.2 = getelementptr i8, i8* %malloccall281, i64 960
  %scevgep867.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.2, i64 480, i1 false)
  %scevgep866.3 = getelementptr i8, i8* %malloccall281, i64 1440
  %scevgep867.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.3, i64 480, i1 false)
  %scevgep866.4 = getelementptr i8, i8* %malloccall281, i64 1920
  %scevgep867.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.4, i64 480, i1 false)
  %scevgep866.5 = getelementptr i8, i8* %malloccall281, i64 2400
  %scevgep867.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.5, i64 480, i1 false)
  %scevgep866.6 = getelementptr i8, i8* %malloccall281, i64 2880
  %scevgep867.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.6, i64 480, i1 false)
  %scevgep866.7 = getelementptr i8, i8* %malloccall281, i64 3360
  %scevgep867.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.7, i64 480, i1 false)
  %scevgep866.8 = getelementptr i8, i8* %malloccall281, i64 3840
  %scevgep867.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.8, i64 480, i1 false)
  %scevgep866.9 = getelementptr i8, i8* %malloccall281, i64 4320
  %scevgep867.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.9, i64 480, i1 false)
  %scevgep866.10 = getelementptr i8, i8* %malloccall281, i64 4800
  %scevgep867.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.10, i64 480, i1 false)
  %scevgep866.11 = getelementptr i8, i8* %malloccall281, i64 5280
  %scevgep867.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.11, i64 480, i1 false)
  %scevgep866.12 = getelementptr i8, i8* %malloccall281, i64 5760
  %scevgep867.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.12, i64 480, i1 false)
  %scevgep866.13 = getelementptr i8, i8* %malloccall281, i64 6240
  %scevgep867.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.13, i64 480, i1 false)
  %scevgep866.14 = getelementptr i8, i8* %malloccall281, i64 6720
  %scevgep867.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.14, i64 480, i1 false)
  %scevgep866.15 = getelementptr i8, i8* %malloccall281, i64 7200
  %scevgep867.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.15, i64 480, i1 false)
  %scevgep866.16 = getelementptr i8, i8* %malloccall281, i64 7680
  %scevgep867.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.16, i64 480, i1 false)
  %scevgep866.17 = getelementptr i8, i8* %malloccall281, i64 8160
  %scevgep867.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.17, i64 480, i1 false)
  %scevgep866.18 = getelementptr i8, i8* %malloccall281, i64 8640
  %scevgep867.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.18, i64 480, i1 false)
  %scevgep866.19 = getelementptr i8, i8* %malloccall281, i64 9120
  %scevgep867.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.19, i64 480, i1 false)
  %scevgep866.20 = getelementptr i8, i8* %malloccall281, i64 9600
  %scevgep867.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.20, i64 480, i1 false)
  %scevgep866.21 = getelementptr i8, i8* %malloccall281, i64 10080
  %scevgep867.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.21, i64 480, i1 false)
  %scevgep866.22 = getelementptr i8, i8* %malloccall281, i64 10560
  %scevgep867.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.22, i64 480, i1 false)
  %scevgep866.23 = getelementptr i8, i8* %malloccall281, i64 11040
  %scevgep867.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.23, i64 480, i1 false)
  %scevgep866.24 = getelementptr i8, i8* %malloccall281, i64 11520
  %scevgep867.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.24, i64 480, i1 false)
  %scevgep866.25 = getelementptr i8, i8* %malloccall281, i64 12000
  %scevgep867.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.25, i64 480, i1 false)
  %scevgep866.26 = getelementptr i8, i8* %malloccall281, i64 12480
  %scevgep867.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.26, i64 480, i1 false)
  %scevgep866.27 = getelementptr i8, i8* %malloccall281, i64 12960
  %scevgep867.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.27, i64 480, i1 false)
  %scevgep866.28 = getelementptr i8, i8* %malloccall281, i64 13440
  %scevgep867.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.28, i64 480, i1 false)
  %scevgep866.29 = getelementptr i8, i8* %malloccall281, i64 13920
  %scevgep867.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.29, i64 480, i1 false)
  %scevgep866.30 = getelementptr i8, i8* %malloccall281, i64 14400
  %scevgep867.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.30, i64 480, i1 false)
  %scevgep866.31 = getelementptr i8, i8* %malloccall281, i64 14880
  %scevgep867.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.31, i64 480, i1 false)
  %scevgep866.32 = getelementptr i8, i8* %malloccall281, i64 15360
  %scevgep867.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.32, i64 480, i1 false)
  %scevgep866.33 = getelementptr i8, i8* %malloccall281, i64 15840
  %scevgep867.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.33, i64 480, i1 false)
  %scevgep866.34 = getelementptr i8, i8* %malloccall281, i64 16320
  %scevgep867.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.34, i64 480, i1 false)
  %scevgep866.35 = getelementptr i8, i8* %malloccall281, i64 16800
  %scevgep867.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.35, i64 480, i1 false)
  %scevgep866.36 = getelementptr i8, i8* %malloccall281, i64 17280
  %scevgep867.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.36, i64 480, i1 false)
  %scevgep866.37 = getelementptr i8, i8* %malloccall281, i64 17760
  %scevgep867.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.37, i64 480, i1 false)
  %scevgep866.38 = getelementptr i8, i8* %malloccall281, i64 18240
  %scevgep867.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.38, i64 480, i1 false)
  %scevgep866.39 = getelementptr i8, i8* %malloccall281, i64 18720
  %scevgep867.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.39, i64 480, i1 false)
  %scevgep866.40 = getelementptr i8, i8* %malloccall281, i64 19200
  %scevgep867.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.40, i64 480, i1 false)
  %scevgep866.41 = getelementptr i8, i8* %malloccall281, i64 19680
  %scevgep867.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.41, i64 480, i1 false)
  %scevgep866.42 = getelementptr i8, i8* %malloccall281, i64 20160
  %scevgep867.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.42, i64 480, i1 false)
  %scevgep866.43 = getelementptr i8, i8* %malloccall281, i64 20640
  %scevgep867.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.43, i64 480, i1 false)
  %scevgep866.44 = getelementptr i8, i8* %malloccall281, i64 21120
  %scevgep867.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.44, i64 480, i1 false)
  %scevgep866.45 = getelementptr i8, i8* %malloccall281, i64 21600
  %scevgep867.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.45, i64 480, i1 false)
  %scevgep866.46 = getelementptr i8, i8* %malloccall281, i64 22080
  %scevgep867.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.46, i64 480, i1 false)
  %scevgep866.47 = getelementptr i8, i8* %malloccall281, i64 22560
  %scevgep867.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.47, i64 480, i1 false)
  %scevgep866.48 = getelementptr i8, i8* %malloccall281, i64 23040
  %scevgep867.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.48, i64 480, i1 false)
  %scevgep866.49 = getelementptr i8, i8* %malloccall281, i64 23520
  %scevgep867.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.49, i64 480, i1 false)
  %scevgep866.50 = getelementptr i8, i8* %malloccall281, i64 24000
  %scevgep867.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.50, i64 480, i1 false)
  %scevgep866.51 = getelementptr i8, i8* %malloccall281, i64 24480
  %scevgep867.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.51, i64 480, i1 false)
  %scevgep866.52 = getelementptr i8, i8* %malloccall281, i64 24960
  %scevgep867.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.52, i64 480, i1 false)
  %scevgep866.53 = getelementptr i8, i8* %malloccall281, i64 25440
  %scevgep867.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.53, i64 480, i1 false)
  %scevgep866.54 = getelementptr i8, i8* %malloccall281, i64 25920
  %scevgep867.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.54, i64 480, i1 false)
  %scevgep866.55 = getelementptr i8, i8* %malloccall281, i64 26400
  %scevgep867.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.55, i64 480, i1 false)
  %scevgep866.56 = getelementptr i8, i8* %malloccall281, i64 26880
  %scevgep867.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.56, i64 480, i1 false)
  %scevgep866.57 = getelementptr i8, i8* %malloccall281, i64 27360
  %scevgep867.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.57, i64 480, i1 false)
  %scevgep866.58 = getelementptr i8, i8* %malloccall281, i64 27840
  %scevgep867.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.58, i64 480, i1 false)
  %scevgep866.59 = getelementptr i8, i8* %malloccall281, i64 28320
  %scevgep867.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.59, i64 480, i1 false)
  %scevgep866.60 = getelementptr i8, i8* %malloccall281, i64 28800
  %scevgep867.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.60, i64 480, i1 false)
  %scevgep866.61 = getelementptr i8, i8* %malloccall281, i64 29280
  %scevgep867.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.61, i64 480, i1 false)
  %scevgep866.62 = getelementptr i8, i8* %malloccall281, i64 29760
  %scevgep867.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.62, i64 480, i1 false)
  %scevgep866.63 = getelementptr i8, i8* %malloccall281, i64 30240
  %scevgep867.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.63, i64 480, i1 false)
  %scevgep866.64 = getelementptr i8, i8* %malloccall281, i64 30720
  %scevgep867.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.64, i64 480, i1 false)
  %scevgep866.65 = getelementptr i8, i8* %malloccall281, i64 31200
  %scevgep867.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.65, i64 480, i1 false)
  %scevgep866.66 = getelementptr i8, i8* %malloccall281, i64 31680
  %scevgep867.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.66, i64 480, i1 false)
  %scevgep866.67 = getelementptr i8, i8* %malloccall281, i64 32160
  %scevgep867.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.67, i64 480, i1 false)
  %scevgep866.68 = getelementptr i8, i8* %malloccall281, i64 32640
  %scevgep867.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.68, i64 480, i1 false)
  %scevgep866.69 = getelementptr i8, i8* %malloccall281, i64 33120
  %scevgep867.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.69, i64 480, i1 false)
  %scevgep866.70 = getelementptr i8, i8* %malloccall281, i64 33600
  %scevgep867.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.70, i64 480, i1 false)
  %scevgep866.71 = getelementptr i8, i8* %malloccall281, i64 34080
  %scevgep867.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.71, i64 480, i1 false)
  %scevgep866.72 = getelementptr i8, i8* %malloccall281, i64 34560
  %scevgep867.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.72, i64 480, i1 false)
  %scevgep866.73 = getelementptr i8, i8* %malloccall281, i64 35040
  %scevgep867.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.73, i64 480, i1 false)
  %scevgep866.74 = getelementptr i8, i8* %malloccall281, i64 35520
  %scevgep867.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.74, i64 480, i1 false)
  %scevgep866.75 = getelementptr i8, i8* %malloccall281, i64 36000
  %scevgep867.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.75, i64 480, i1 false)
  %scevgep866.76 = getelementptr i8, i8* %malloccall281, i64 36480
  %scevgep867.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.76, i64 480, i1 false)
  %scevgep866.77 = getelementptr i8, i8* %malloccall281, i64 36960
  %scevgep867.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.77, i64 480, i1 false)
  %scevgep866.78 = getelementptr i8, i8* %malloccall281, i64 37440
  %scevgep867.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.78, i64 480, i1 false)
  %scevgep866.79 = getelementptr i8, i8* %malloccall281, i64 37920
  %scevgep867.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep866.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep867.79, i64 480, i1 false)
  br label %polly.loop_header403

polly.loop_header371:                             ; preds = %polly.loop_header371.preheader, %polly.loop_header371
  %polly.indvar374 = phi i64 [ %polly.indvar_next375, %polly.loop_header371 ], [ %polly.indvar374.ph, %polly.loop_header371.preheader ]
  %109 = shl nuw nsw i64 %polly.indvar374, 3
  %scevgep378 = getelementptr i8, i8* %scevgep377, i64 %109
  %scevgep378379 = bitcast i8* %scevgep378 to double*
  %_p_scalar_380 = load double, double* %scevgep378379, align 8, !alias.scope !82, !noalias !84
  %p_mul.i57 = fmul fast double %_p_scalar_380, 1.200000e+00
  store double %p_mul.i57, double* %scevgep378379, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next375 = add nuw nsw i64 %polly.indvar374, 1
  %exitcond869.not = icmp eq i64 %polly.indvar_next375, %polly.indvar368
  br i1 %exitcond869.not, label %polly.loop_exit373, label %polly.loop_header371, !llvm.loop !90

polly.loop_header403:                             ; preds = %polly.loop_header403, %polly.loop_header381.preheader
  %polly.indvar406 = phi i64 [ 0, %polly.loop_header381.preheader ], [ %polly.indvar_next407, %polly.loop_header403 ]
  %110 = mul nuw nsw i64 %polly.indvar406, 480
  %scevgep857 = getelementptr i8, i8* %malloccall279, i64 %110
  %scevgep858 = getelementptr i8, i8* %call1, i64 %110
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep857, i8* noundef nonnull align 8 dereferenceable(480) %scevgep858, i64 480, i1 false)
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next407, 64
  br i1 %exitcond859.not, label %polly.loop_header419, label %polly.loop_header403

polly.loop_header419:                             ; preds = %polly.loop_header403, %polly.loop_exit427
  %polly.indvar422 = phi i64 [ %polly.indvar_next423, %polly.loop_exit427 ], [ 0, %polly.loop_header403 ]
  br label %polly.loop_header425

polly.loop_exit427:                               ; preds = %polly.loop_exit433
  %polly.indvar_next423 = add nuw nsw i64 %polly.indvar422, 1
  %exitcond864.not = icmp eq i64 %polly.indvar_next423, 60
  br i1 %exitcond864.not, label %polly.loop_header403.1, label %polly.loop_header419

polly.loop_header425:                             ; preds = %polly.loop_exit433, %polly.loop_header419
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit433 ], [ 1, %polly.loop_header419 ]
  %polly.indvar428 = phi i64 [ %polly.indvar_next429, %polly.loop_exit433 ], [ 0, %polly.loop_header419 ]
  %polly.access.mul.Packed_MemRef_call2282441 = mul nuw nsw i64 %polly.indvar428, 60
  %polly.access.add.Packed_MemRef_call2282442 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2282441, %polly.indvar422
  %polly.access.Packed_MemRef_call2282443 = getelementptr double, double* %Packed_MemRef_call2282, i64 %polly.access.add.Packed_MemRef_call2282442
  %_p_scalar_444 = load double, double* %polly.access.Packed_MemRef_call2282443, align 8
  %polly.access.Packed_MemRef_call1280451 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call2282442
  %_p_scalar_452 = load double, double* %polly.access.Packed_MemRef_call1280451, align 8
  %111 = mul nuw nsw i64 %polly.indvar428, 640
  br label %polly.loop_header431

polly.loop_exit433:                               ; preds = %polly.loop_header431
  %polly.indvar_next429 = add nuw nsw i64 %polly.indvar428, 1
  %indvars.iv.next861 = add nuw nsw i64 %indvars.iv860, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next429, 64
  br i1 %exitcond863.not, label %polly.loop_exit427, label %polly.loop_header425

polly.loop_header431:                             ; preds = %polly.loop_header431, %polly.loop_header425
  %polly.indvar434 = phi i64 [ 0, %polly.loop_header425 ], [ %polly.indvar_next435, %polly.loop_header431 ]
  %polly.access.mul.Packed_MemRef_call1280437 = mul nuw nsw i64 %polly.indvar434, 60
  %polly.access.add.Packed_MemRef_call1280438 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1280437, %polly.indvar422
  %polly.access.Packed_MemRef_call1280439 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280438
  %_p_scalar_440 = load double, double* %polly.access.Packed_MemRef_call1280439, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_444, %_p_scalar_440
  %polly.access.Packed_MemRef_call2282447 = getelementptr double, double* %Packed_MemRef_call2282, i64 %polly.access.add.Packed_MemRef_call1280438
  %_p_scalar_448 = load double, double* %polly.access.Packed_MemRef_call2282447, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_452, %_p_scalar_448
  %112 = shl nuw nsw i64 %polly.indvar434, 3
  %113 = add nuw nsw i64 %112, %111
  %scevgep453 = getelementptr i8, i8* %call, i64 %113
  %scevgep453454 = bitcast i8* %scevgep453 to double*
  %_p_scalar_455 = load double, double* %scevgep453454, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_455
  store double %p_add42.i79, double* %scevgep453454, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next435 = add nuw nsw i64 %polly.indvar434, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next435, %indvars.iv860
  br i1 %exitcond862.not, label %polly.loop_exit433, label %polly.loop_header431

polly.start458:                                   ; preds = %init_array.exit
  %malloccall460 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall462 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header546

polly.loop_header546:                             ; preds = %polly.loop_exit554, %polly.start458
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit554 ], [ 0, %polly.start458 ]
  %polly.indvar549 = phi i64 [ %polly.indvar_next550, %polly.loop_exit554 ], [ 1, %polly.start458 ]
  %114 = add i64 %indvar, 1
  %115 = mul nuw nsw i64 %polly.indvar549, 640
  %scevgep558 = getelementptr i8, i8* %call, i64 %115
  %min.iters.check1263 = icmp ult i64 %114, 4
  br i1 %min.iters.check1263, label %polly.loop_header552.preheader, label %vector.ph1264

vector.ph1264:                                    ; preds = %polly.loop_header546
  %n.vec1266 = and i64 %114, -4
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1264
  %index1267 = phi i64 [ 0, %vector.ph1264 ], [ %index.next1268, %vector.body1262 ]
  %116 = shl nuw nsw i64 %index1267, 3
  %117 = getelementptr i8, i8* %scevgep558, i64 %116
  %118 = bitcast i8* %117 to <4 x double>*
  %wide.load1271 = load <4 x double>, <4 x double>* %118, align 8, !alias.scope !91, !noalias !93
  %119 = fmul fast <4 x double> %wide.load1271, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %120 = bitcast i8* %117 to <4 x double>*
  store <4 x double> %119, <4 x double>* %120, align 8, !alias.scope !91, !noalias !93
  %index.next1268 = add i64 %index1267, 4
  %121 = icmp eq i64 %index.next1268, %n.vec1266
  br i1 %121, label %middle.block1260, label %vector.body1262, !llvm.loop !98

middle.block1260:                                 ; preds = %vector.body1262
  %cmp.n1270 = icmp eq i64 %114, %n.vec1266
  br i1 %cmp.n1270, label %polly.loop_exit554, label %polly.loop_header552.preheader

polly.loop_header552.preheader:                   ; preds = %polly.loop_header546, %middle.block1260
  %polly.indvar555.ph = phi i64 [ 0, %polly.loop_header546 ], [ %n.vec1266, %middle.block1260 ]
  br label %polly.loop_header552

polly.loop_exit554:                               ; preds = %polly.loop_header552, %middle.block1260
  %polly.indvar_next550 = add nuw nsw i64 %polly.indvar549, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next550, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond885.not, label %polly.loop_header562.preheader, label %polly.loop_header546

polly.loop_header562.preheader:                   ; preds = %polly.loop_exit554
  %Packed_MemRef_call1461 = bitcast i8* %malloccall460 to double*
  %Packed_MemRef_call2463 = bitcast i8* %malloccall462 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall462, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep881.1 = getelementptr i8, i8* %malloccall462, i64 480
  %scevgep882.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.1, i64 480, i1 false)
  %scevgep881.2 = getelementptr i8, i8* %malloccall462, i64 960
  %scevgep882.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.2, i64 480, i1 false)
  %scevgep881.3 = getelementptr i8, i8* %malloccall462, i64 1440
  %scevgep882.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.3, i64 480, i1 false)
  %scevgep881.4 = getelementptr i8, i8* %malloccall462, i64 1920
  %scevgep882.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.4, i64 480, i1 false)
  %scevgep881.5 = getelementptr i8, i8* %malloccall462, i64 2400
  %scevgep882.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.5, i64 480, i1 false)
  %scevgep881.6 = getelementptr i8, i8* %malloccall462, i64 2880
  %scevgep882.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.6, i64 480, i1 false)
  %scevgep881.7 = getelementptr i8, i8* %malloccall462, i64 3360
  %scevgep882.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.7, i64 480, i1 false)
  %scevgep881.8 = getelementptr i8, i8* %malloccall462, i64 3840
  %scevgep882.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.8, i64 480, i1 false)
  %scevgep881.9 = getelementptr i8, i8* %malloccall462, i64 4320
  %scevgep882.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.9, i64 480, i1 false)
  %scevgep881.10 = getelementptr i8, i8* %malloccall462, i64 4800
  %scevgep882.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.10, i64 480, i1 false)
  %scevgep881.11 = getelementptr i8, i8* %malloccall462, i64 5280
  %scevgep882.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.11, i64 480, i1 false)
  %scevgep881.12 = getelementptr i8, i8* %malloccall462, i64 5760
  %scevgep882.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.12, i64 480, i1 false)
  %scevgep881.13 = getelementptr i8, i8* %malloccall462, i64 6240
  %scevgep882.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.13, i64 480, i1 false)
  %scevgep881.14 = getelementptr i8, i8* %malloccall462, i64 6720
  %scevgep882.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.14, i64 480, i1 false)
  %scevgep881.15 = getelementptr i8, i8* %malloccall462, i64 7200
  %scevgep882.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.15, i64 480, i1 false)
  %scevgep881.16 = getelementptr i8, i8* %malloccall462, i64 7680
  %scevgep882.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.16, i64 480, i1 false)
  %scevgep881.17 = getelementptr i8, i8* %malloccall462, i64 8160
  %scevgep882.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.17, i64 480, i1 false)
  %scevgep881.18 = getelementptr i8, i8* %malloccall462, i64 8640
  %scevgep882.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.18, i64 480, i1 false)
  %scevgep881.19 = getelementptr i8, i8* %malloccall462, i64 9120
  %scevgep882.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.19, i64 480, i1 false)
  %scevgep881.20 = getelementptr i8, i8* %malloccall462, i64 9600
  %scevgep882.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.20, i64 480, i1 false)
  %scevgep881.21 = getelementptr i8, i8* %malloccall462, i64 10080
  %scevgep882.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.21, i64 480, i1 false)
  %scevgep881.22 = getelementptr i8, i8* %malloccall462, i64 10560
  %scevgep882.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.22, i64 480, i1 false)
  %scevgep881.23 = getelementptr i8, i8* %malloccall462, i64 11040
  %scevgep882.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.23, i64 480, i1 false)
  %scevgep881.24 = getelementptr i8, i8* %malloccall462, i64 11520
  %scevgep882.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.24, i64 480, i1 false)
  %scevgep881.25 = getelementptr i8, i8* %malloccall462, i64 12000
  %scevgep882.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.25, i64 480, i1 false)
  %scevgep881.26 = getelementptr i8, i8* %malloccall462, i64 12480
  %scevgep882.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.26, i64 480, i1 false)
  %scevgep881.27 = getelementptr i8, i8* %malloccall462, i64 12960
  %scevgep882.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.27, i64 480, i1 false)
  %scevgep881.28 = getelementptr i8, i8* %malloccall462, i64 13440
  %scevgep882.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.28, i64 480, i1 false)
  %scevgep881.29 = getelementptr i8, i8* %malloccall462, i64 13920
  %scevgep882.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.29, i64 480, i1 false)
  %scevgep881.30 = getelementptr i8, i8* %malloccall462, i64 14400
  %scevgep882.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.30, i64 480, i1 false)
  %scevgep881.31 = getelementptr i8, i8* %malloccall462, i64 14880
  %scevgep882.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.31, i64 480, i1 false)
  %scevgep881.32 = getelementptr i8, i8* %malloccall462, i64 15360
  %scevgep882.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.32, i64 480, i1 false)
  %scevgep881.33 = getelementptr i8, i8* %malloccall462, i64 15840
  %scevgep882.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.33, i64 480, i1 false)
  %scevgep881.34 = getelementptr i8, i8* %malloccall462, i64 16320
  %scevgep882.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.34, i64 480, i1 false)
  %scevgep881.35 = getelementptr i8, i8* %malloccall462, i64 16800
  %scevgep882.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.35, i64 480, i1 false)
  %scevgep881.36 = getelementptr i8, i8* %malloccall462, i64 17280
  %scevgep882.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.36, i64 480, i1 false)
  %scevgep881.37 = getelementptr i8, i8* %malloccall462, i64 17760
  %scevgep882.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.37, i64 480, i1 false)
  %scevgep881.38 = getelementptr i8, i8* %malloccall462, i64 18240
  %scevgep882.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.38, i64 480, i1 false)
  %scevgep881.39 = getelementptr i8, i8* %malloccall462, i64 18720
  %scevgep882.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.39, i64 480, i1 false)
  %scevgep881.40 = getelementptr i8, i8* %malloccall462, i64 19200
  %scevgep882.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.40, i64 480, i1 false)
  %scevgep881.41 = getelementptr i8, i8* %malloccall462, i64 19680
  %scevgep882.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.41, i64 480, i1 false)
  %scevgep881.42 = getelementptr i8, i8* %malloccall462, i64 20160
  %scevgep882.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.42, i64 480, i1 false)
  %scevgep881.43 = getelementptr i8, i8* %malloccall462, i64 20640
  %scevgep882.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.43, i64 480, i1 false)
  %scevgep881.44 = getelementptr i8, i8* %malloccall462, i64 21120
  %scevgep882.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.44, i64 480, i1 false)
  %scevgep881.45 = getelementptr i8, i8* %malloccall462, i64 21600
  %scevgep882.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.45, i64 480, i1 false)
  %scevgep881.46 = getelementptr i8, i8* %malloccall462, i64 22080
  %scevgep882.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.46, i64 480, i1 false)
  %scevgep881.47 = getelementptr i8, i8* %malloccall462, i64 22560
  %scevgep882.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.47, i64 480, i1 false)
  %scevgep881.48 = getelementptr i8, i8* %malloccall462, i64 23040
  %scevgep882.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.48, i64 480, i1 false)
  %scevgep881.49 = getelementptr i8, i8* %malloccall462, i64 23520
  %scevgep882.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.49, i64 480, i1 false)
  %scevgep881.50 = getelementptr i8, i8* %malloccall462, i64 24000
  %scevgep882.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.50, i64 480, i1 false)
  %scevgep881.51 = getelementptr i8, i8* %malloccall462, i64 24480
  %scevgep882.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.51, i64 480, i1 false)
  %scevgep881.52 = getelementptr i8, i8* %malloccall462, i64 24960
  %scevgep882.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.52, i64 480, i1 false)
  %scevgep881.53 = getelementptr i8, i8* %malloccall462, i64 25440
  %scevgep882.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.53, i64 480, i1 false)
  %scevgep881.54 = getelementptr i8, i8* %malloccall462, i64 25920
  %scevgep882.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.54, i64 480, i1 false)
  %scevgep881.55 = getelementptr i8, i8* %malloccall462, i64 26400
  %scevgep882.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.55, i64 480, i1 false)
  %scevgep881.56 = getelementptr i8, i8* %malloccall462, i64 26880
  %scevgep882.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.56, i64 480, i1 false)
  %scevgep881.57 = getelementptr i8, i8* %malloccall462, i64 27360
  %scevgep882.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.57, i64 480, i1 false)
  %scevgep881.58 = getelementptr i8, i8* %malloccall462, i64 27840
  %scevgep882.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.58, i64 480, i1 false)
  %scevgep881.59 = getelementptr i8, i8* %malloccall462, i64 28320
  %scevgep882.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.59, i64 480, i1 false)
  %scevgep881.60 = getelementptr i8, i8* %malloccall462, i64 28800
  %scevgep882.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.60, i64 480, i1 false)
  %scevgep881.61 = getelementptr i8, i8* %malloccall462, i64 29280
  %scevgep882.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.61, i64 480, i1 false)
  %scevgep881.62 = getelementptr i8, i8* %malloccall462, i64 29760
  %scevgep882.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.62, i64 480, i1 false)
  %scevgep881.63 = getelementptr i8, i8* %malloccall462, i64 30240
  %scevgep882.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.63, i64 480, i1 false)
  %scevgep881.64 = getelementptr i8, i8* %malloccall462, i64 30720
  %scevgep882.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.64, i64 480, i1 false)
  %scevgep881.65 = getelementptr i8, i8* %malloccall462, i64 31200
  %scevgep882.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.65, i64 480, i1 false)
  %scevgep881.66 = getelementptr i8, i8* %malloccall462, i64 31680
  %scevgep882.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.66, i64 480, i1 false)
  %scevgep881.67 = getelementptr i8, i8* %malloccall462, i64 32160
  %scevgep882.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.67, i64 480, i1 false)
  %scevgep881.68 = getelementptr i8, i8* %malloccall462, i64 32640
  %scevgep882.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.68, i64 480, i1 false)
  %scevgep881.69 = getelementptr i8, i8* %malloccall462, i64 33120
  %scevgep882.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.69, i64 480, i1 false)
  %scevgep881.70 = getelementptr i8, i8* %malloccall462, i64 33600
  %scevgep882.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.70, i64 480, i1 false)
  %scevgep881.71 = getelementptr i8, i8* %malloccall462, i64 34080
  %scevgep882.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.71, i64 480, i1 false)
  %scevgep881.72 = getelementptr i8, i8* %malloccall462, i64 34560
  %scevgep882.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.72, i64 480, i1 false)
  %scevgep881.73 = getelementptr i8, i8* %malloccall462, i64 35040
  %scevgep882.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.73, i64 480, i1 false)
  %scevgep881.74 = getelementptr i8, i8* %malloccall462, i64 35520
  %scevgep882.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.74, i64 480, i1 false)
  %scevgep881.75 = getelementptr i8, i8* %malloccall462, i64 36000
  %scevgep882.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.75, i64 480, i1 false)
  %scevgep881.76 = getelementptr i8, i8* %malloccall462, i64 36480
  %scevgep882.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.76, i64 480, i1 false)
  %scevgep881.77 = getelementptr i8, i8* %malloccall462, i64 36960
  %scevgep882.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.77, i64 480, i1 false)
  %scevgep881.78 = getelementptr i8, i8* %malloccall462, i64 37440
  %scevgep882.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.78, i64 480, i1 false)
  %scevgep881.79 = getelementptr i8, i8* %malloccall462, i64 37920
  %scevgep882.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep881.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep882.79, i64 480, i1 false)
  br label %polly.loop_header584

polly.loop_header552:                             ; preds = %polly.loop_header552.preheader, %polly.loop_header552
  %polly.indvar555 = phi i64 [ %polly.indvar_next556, %polly.loop_header552 ], [ %polly.indvar555.ph, %polly.loop_header552.preheader ]
  %122 = shl nuw nsw i64 %polly.indvar555, 3
  %scevgep559 = getelementptr i8, i8* %scevgep558, i64 %122
  %scevgep559560 = bitcast i8* %scevgep559 to double*
  %_p_scalar_561 = load double, double* %scevgep559560, align 8, !alias.scope !91, !noalias !93
  %p_mul.i = fmul fast double %_p_scalar_561, 1.200000e+00
  store double %p_mul.i, double* %scevgep559560, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next556 = add nuw nsw i64 %polly.indvar555, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next556, %polly.indvar549
  br i1 %exitcond884.not, label %polly.loop_exit554, label %polly.loop_header552, !llvm.loop !99

polly.loop_header584:                             ; preds = %polly.loop_header584, %polly.loop_header562.preheader
  %polly.indvar587 = phi i64 [ 0, %polly.loop_header562.preheader ], [ %polly.indvar_next588, %polly.loop_header584 ]
  %123 = mul nuw nsw i64 %polly.indvar587, 480
  %scevgep872 = getelementptr i8, i8* %malloccall460, i64 %123
  %scevgep873 = getelementptr i8, i8* %call1, i64 %123
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep872, i8* noundef nonnull align 8 dereferenceable(480) %scevgep873, i64 480, i1 false)
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next588, 64
  br i1 %exitcond874.not, label %polly.loop_header600, label %polly.loop_header584

polly.loop_header600:                             ; preds = %polly.loop_header584, %polly.loop_exit608
  %polly.indvar603 = phi i64 [ %polly.indvar_next604, %polly.loop_exit608 ], [ 0, %polly.loop_header584 ]
  br label %polly.loop_header606

polly.loop_exit608:                               ; preds = %polly.loop_exit614
  %polly.indvar_next604 = add nuw nsw i64 %polly.indvar603, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next604, 60
  br i1 %exitcond879.not, label %polly.loop_header584.1, label %polly.loop_header600

polly.loop_header606:                             ; preds = %polly.loop_exit614, %polly.loop_header600
  %indvars.iv875 = phi i64 [ %indvars.iv.next876, %polly.loop_exit614 ], [ 1, %polly.loop_header600 ]
  %polly.indvar609 = phi i64 [ %polly.indvar_next610, %polly.loop_exit614 ], [ 0, %polly.loop_header600 ]
  %polly.access.mul.Packed_MemRef_call2463622 = mul nuw nsw i64 %polly.indvar609, 60
  %polly.access.add.Packed_MemRef_call2463623 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2463622, %polly.indvar603
  %polly.access.Packed_MemRef_call2463624 = getelementptr double, double* %Packed_MemRef_call2463, i64 %polly.access.add.Packed_MemRef_call2463623
  %_p_scalar_625 = load double, double* %polly.access.Packed_MemRef_call2463624, align 8
  %polly.access.Packed_MemRef_call1461632 = getelementptr double, double* %Packed_MemRef_call1461, i64 %polly.access.add.Packed_MemRef_call2463623
  %_p_scalar_633 = load double, double* %polly.access.Packed_MemRef_call1461632, align 8
  %124 = mul nuw nsw i64 %polly.indvar609, 640
  br label %polly.loop_header612

polly.loop_exit614:                               ; preds = %polly.loop_header612
  %polly.indvar_next610 = add nuw nsw i64 %polly.indvar609, 1
  %indvars.iv.next876 = add nuw nsw i64 %indvars.iv875, 1
  %exitcond878.not = icmp eq i64 %polly.indvar_next610, 64
  br i1 %exitcond878.not, label %polly.loop_exit608, label %polly.loop_header606

polly.loop_header612:                             ; preds = %polly.loop_header612, %polly.loop_header606
  %polly.indvar615 = phi i64 [ 0, %polly.loop_header606 ], [ %polly.indvar_next616, %polly.loop_header612 ]
  %polly.access.mul.Packed_MemRef_call1461618 = mul nuw nsw i64 %polly.indvar615, 60
  %polly.access.add.Packed_MemRef_call1461619 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1461618, %polly.indvar603
  %polly.access.Packed_MemRef_call1461620 = getelementptr double, double* %Packed_MemRef_call1461, i64 %polly.access.add.Packed_MemRef_call1461619
  %_p_scalar_621 = load double, double* %polly.access.Packed_MemRef_call1461620, align 8
  %p_mul27.i = fmul fast double %_p_scalar_625, %_p_scalar_621
  %polly.access.Packed_MemRef_call2463628 = getelementptr double, double* %Packed_MemRef_call2463, i64 %polly.access.add.Packed_MemRef_call1461619
  %_p_scalar_629 = load double, double* %polly.access.Packed_MemRef_call2463628, align 8
  %p_mul37.i = fmul fast double %_p_scalar_633, %_p_scalar_629
  %125 = shl nuw nsw i64 %polly.indvar615, 3
  %126 = add nuw nsw i64 %125, %124
  %scevgep634 = getelementptr i8, i8* %call, i64 %126
  %scevgep634635 = bitcast i8* %scevgep634 to double*
  %_p_scalar_636 = load double, double* %scevgep634635, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_636
  store double %p_add42.i, double* %scevgep634635, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next616 = add nuw nsw i64 %polly.indvar615, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next616, %indvars.iv875
  br i1 %exitcond877.not, label %polly.loop_exit614, label %polly.loop_header612

polly.loop_header775:                             ; preds = %entry, %polly.loop_exit783
  %polly.indvar778 = phi i64 [ %polly.indvar_next779, %polly.loop_exit783 ], [ 0, %entry ]
  %127 = mul nuw nsw i64 %polly.indvar778, 640
  %128 = trunc i64 %polly.indvar778 to i32
  %broadcast.splatinsert994 = insertelement <4 x i32> poison, i32 %128, i32 0
  %broadcast.splat995 = shufflevector <4 x i32> %broadcast.splatinsert994, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body984

vector.body984:                                   ; preds = %vector.body984, %polly.loop_header775
  %index986 = phi i64 [ 0, %polly.loop_header775 ], [ %index.next987, %vector.body984 ]
  %vec.ind992 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775 ], [ %vec.ind.next993, %vector.body984 ]
  %129 = mul <4 x i32> %vec.ind992, %broadcast.splat995
  %130 = add <4 x i32> %129, <i32 3, i32 3, i32 3, i32 3>
  %131 = urem <4 x i32> %130, <i32 80, i32 80, i32 80, i32 80>
  %132 = sitofp <4 x i32> %131 to <4 x double>
  %133 = fmul fast <4 x double> %132, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %134 = shl i64 %index986, 3
  %135 = add nuw nsw i64 %134, %127
  %136 = getelementptr i8, i8* %call, i64 %135
  %137 = bitcast i8* %136 to <4 x double>*
  store <4 x double> %133, <4 x double>* %137, align 8, !alias.scope !100, !noalias !102
  %index.next987 = add i64 %index986, 4
  %vec.ind.next993 = add <4 x i32> %vec.ind992, <i32 4, i32 4, i32 4, i32 4>
  %138 = icmp eq i64 %index.next987, 32
  br i1 %138, label %polly.loop_exit783, label %vector.body984, !llvm.loop !105

polly.loop_exit783:                               ; preds = %vector.body984
  %polly.indvar_next779 = add nuw nsw i64 %polly.indvar778, 1
  %exitcond904.not = icmp eq i64 %polly.indvar_next779, 32
  br i1 %exitcond904.not, label %polly.loop_header775.1, label %polly.loop_header775

polly.loop_header802:                             ; preds = %polly.loop_exit783.2.2, %polly.loop_exit810
  %polly.indvar805 = phi i64 [ %polly.indvar_next806, %polly.loop_exit810 ], [ 0, %polly.loop_exit783.2.2 ]
  %139 = mul nuw nsw i64 %polly.indvar805, 480
  %140 = trunc i64 %polly.indvar805 to i32
  %broadcast.splatinsert1108 = insertelement <4 x i32> poison, i32 %140, i32 0
  %broadcast.splat1109 = shufflevector <4 x i32> %broadcast.splatinsert1108, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1098

vector.body1098:                                  ; preds = %vector.body1098, %polly.loop_header802
  %index1100 = phi i64 [ 0, %polly.loop_header802 ], [ %index.next1101, %vector.body1098 ]
  %vec.ind1106 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header802 ], [ %vec.ind.next1107, %vector.body1098 ]
  %141 = mul <4 x i32> %vec.ind1106, %broadcast.splat1109
  %142 = add <4 x i32> %141, <i32 2, i32 2, i32 2, i32 2>
  %143 = urem <4 x i32> %142, <i32 60, i32 60, i32 60, i32 60>
  %144 = sitofp <4 x i32> %143 to <4 x double>
  %145 = fmul fast <4 x double> %144, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %146 = shl i64 %index1100, 3
  %147 = add i64 %146, %139
  %148 = getelementptr i8, i8* %call2, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %145, <4 x double>* %149, align 8, !alias.scope !104, !noalias !106
  %index.next1101 = add i64 %index1100, 4
  %vec.ind.next1107 = add <4 x i32> %vec.ind1106, <i32 4, i32 4, i32 4, i32 4>
  %150 = icmp eq i64 %index.next1101, 32
  br i1 %150, label %polly.loop_exit810, label %vector.body1098, !llvm.loop !107

polly.loop_exit810:                               ; preds = %vector.body1098
  %polly.indvar_next806 = add nuw nsw i64 %polly.indvar805, 1
  %exitcond895.not = icmp eq i64 %polly.indvar_next806, 32
  br i1 %exitcond895.not, label %polly.loop_header802.1, label %polly.loop_header802

polly.loop_header828:                             ; preds = %polly.loop_exit810.1.2, %polly.loop_exit836
  %polly.indvar831 = phi i64 [ %polly.indvar_next832, %polly.loop_exit836 ], [ 0, %polly.loop_exit810.1.2 ]
  %151 = mul nuw nsw i64 %polly.indvar831, 480
  %152 = trunc i64 %polly.indvar831 to i32
  %broadcast.splatinsert1186 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat1187 = shufflevector <4 x i32> %broadcast.splatinsert1186, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1176

vector.body1176:                                  ; preds = %vector.body1176, %polly.loop_header828
  %index1178 = phi i64 [ 0, %polly.loop_header828 ], [ %index.next1179, %vector.body1176 ]
  %vec.ind1184 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header828 ], [ %vec.ind.next1185, %vector.body1176 ]
  %153 = mul <4 x i32> %vec.ind1184, %broadcast.splat1187
  %154 = add <4 x i32> %153, <i32 1, i32 1, i32 1, i32 1>
  %155 = urem <4 x i32> %154, <i32 80, i32 80, i32 80, i32 80>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %158 = shl i64 %index1178, 3
  %159 = add i64 %158, %151
  %160 = getelementptr i8, i8* %call1, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !103, !noalias !108
  %index.next1179 = add i64 %index1178, 4
  %vec.ind.next1185 = add <4 x i32> %vec.ind1184, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next1179, 32
  br i1 %162, label %polly.loop_exit836, label %vector.body1176, !llvm.loop !109

polly.loop_exit836:                               ; preds = %vector.body1176
  %polly.indvar_next832 = add nuw nsw i64 %polly.indvar831, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next832, 32
  br i1 %exitcond889.not, label %polly.loop_header828.1, label %polly.loop_header828

polly.loop_header222.1:                           ; preds = %polly.loop_exit246, %polly.loop_header222.1
  %polly.indvar225.1 = phi i64 [ %polly.indvar_next226.1, %polly.loop_header222.1 ], [ 0, %polly.loop_exit246 ]
  %163 = mul nuw nsw i64 %polly.indvar225.1, 480
  %scevgep845.1 = getelementptr i8, i8* %malloccall, i64 %163
  %scevgep846.1 = getelementptr i8, i8* %call1, i64 %163
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep845.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep846.1, i64 480, i1 false)
  %polly.indvar_next226.1 = add nuw nsw i64 %polly.indvar225.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next226.1, 80
  br i1 %exitcond.1.not, label %polly.loop_header238.1, label %polly.loop_header222.1

polly.loop_header238.1:                           ; preds = %polly.loop_header222.1, %polly.loop_exit246.1
  %polly.indvar241.1 = phi i64 [ %polly.indvar_next242.1, %polly.loop_exit246.1 ], [ 0, %polly.loop_header222.1 ]
  br label %polly.loop_header244.1

polly.loop_header244.1:                           ; preds = %polly.loop_exit252.1, %polly.loop_header238.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit252.1 ], [ 65, %polly.loop_header238.1 ]
  %polly.indvar247.1 = phi i64 [ %polly.indvar_next248.1, %polly.loop_exit252.1 ], [ 0, %polly.loop_header238.1 ]
  %164 = add nuw nsw i64 %polly.indvar247.1, 64
  %polly.access.mul.Packed_MemRef_call2260.1 = mul nuw nsw i64 %164, 60
  %polly.access.add.Packed_MemRef_call2261.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2260.1, %polly.indvar241.1
  %polly.access.Packed_MemRef_call2262.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.1
  %_p_scalar_263.1 = load double, double* %polly.access.Packed_MemRef_call2262.1, align 8
  %polly.access.Packed_MemRef_call1270.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call2261.1
  %_p_scalar_271.1 = load double, double* %polly.access.Packed_MemRef_call1270.1, align 8
  %165 = mul nuw nsw i64 %164, 640
  br label %polly.loop_header250.1

polly.loop_header250.1:                           ; preds = %polly.loop_header250.1, %polly.loop_header244.1
  %polly.indvar253.1 = phi i64 [ 0, %polly.loop_header244.1 ], [ %polly.indvar_next254.1, %polly.loop_header250.1 ]
  %polly.access.mul.Packed_MemRef_call1256.1 = mul nuw nsw i64 %polly.indvar253.1, 60
  %polly.access.add.Packed_MemRef_call1257.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1256.1, %polly.indvar241.1
  %polly.access.Packed_MemRef_call1258.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.1
  %_p_scalar_259.1 = load double, double* %polly.access.Packed_MemRef_call1258.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_263.1, %_p_scalar_259.1
  %polly.access.Packed_MemRef_call2266.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call1257.1
  %_p_scalar_267.1 = load double, double* %polly.access.Packed_MemRef_call2266.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_271.1, %_p_scalar_267.1
  %166 = shl nuw nsw i64 %polly.indvar253.1, 3
  %167 = add nuw nsw i64 %166, %165
  %scevgep272.1 = getelementptr i8, i8* %call, i64 %167
  %scevgep272273.1 = bitcast i8* %scevgep272.1 to double*
  %_p_scalar_274.1 = load double, double* %scevgep272273.1, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_274.1
  store double %p_add42.i118.1, double* %scevgep272273.1, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %exitcond847.1.not = icmp eq i64 %polly.indvar_next254.1, %indvars.iv.1
  br i1 %exitcond847.1.not, label %polly.loop_exit252.1, label %polly.loop_header250.1

polly.loop_exit252.1:                             ; preds = %polly.loop_header250.1
  %polly.indvar_next248.1 = add nuw nsw i64 %polly.indvar247.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond848.1.not = icmp eq i64 %polly.indvar_next248.1, 16
  br i1 %exitcond848.1.not, label %polly.loop_exit246.1, label %polly.loop_header244.1

polly.loop_exit246.1:                             ; preds = %polly.loop_exit252.1
  %polly.indvar_next242.1 = add nuw nsw i64 %polly.indvar241.1, 1
  %exitcond849.1.not = icmp eq i64 %polly.indvar_next242.1, 60
  br i1 %exitcond849.1.not, label %polly.loop_exit240.1, label %polly.loop_header238.1

polly.loop_exit240.1:                             ; preds = %polly.loop_exit246.1
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header403.1:                           ; preds = %polly.loop_exit427, %polly.loop_header403.1
  %polly.indvar406.1 = phi i64 [ %polly.indvar_next407.1, %polly.loop_header403.1 ], [ 0, %polly.loop_exit427 ]
  %168 = mul nuw nsw i64 %polly.indvar406.1, 480
  %scevgep857.1 = getelementptr i8, i8* %malloccall279, i64 %168
  %scevgep858.1 = getelementptr i8, i8* %call1, i64 %168
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep857.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep858.1, i64 480, i1 false)
  %polly.indvar_next407.1 = add nuw nsw i64 %polly.indvar406.1, 1
  %exitcond859.1.not = icmp eq i64 %polly.indvar_next407.1, 80
  br i1 %exitcond859.1.not, label %polly.loop_header419.1, label %polly.loop_header403.1

polly.loop_header419.1:                           ; preds = %polly.loop_header403.1, %polly.loop_exit427.1
  %polly.indvar422.1 = phi i64 [ %polly.indvar_next423.1, %polly.loop_exit427.1 ], [ 0, %polly.loop_header403.1 ]
  br label %polly.loop_header425.1

polly.loop_header425.1:                           ; preds = %polly.loop_exit433.1, %polly.loop_header419.1
  %indvars.iv860.1 = phi i64 [ %indvars.iv.next861.1, %polly.loop_exit433.1 ], [ 65, %polly.loop_header419.1 ]
  %polly.indvar428.1 = phi i64 [ %polly.indvar_next429.1, %polly.loop_exit433.1 ], [ 0, %polly.loop_header419.1 ]
  %169 = add nuw nsw i64 %polly.indvar428.1, 64
  %polly.access.mul.Packed_MemRef_call2282441.1 = mul nuw nsw i64 %169, 60
  %polly.access.add.Packed_MemRef_call2282442.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2282441.1, %polly.indvar422.1
  %polly.access.Packed_MemRef_call2282443.1 = getelementptr double, double* %Packed_MemRef_call2282, i64 %polly.access.add.Packed_MemRef_call2282442.1
  %_p_scalar_444.1 = load double, double* %polly.access.Packed_MemRef_call2282443.1, align 8
  %polly.access.Packed_MemRef_call1280451.1 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call2282442.1
  %_p_scalar_452.1 = load double, double* %polly.access.Packed_MemRef_call1280451.1, align 8
  %170 = mul nuw nsw i64 %169, 640
  br label %polly.loop_header431.1

polly.loop_header431.1:                           ; preds = %polly.loop_header431.1, %polly.loop_header425.1
  %polly.indvar434.1 = phi i64 [ 0, %polly.loop_header425.1 ], [ %polly.indvar_next435.1, %polly.loop_header431.1 ]
  %polly.access.mul.Packed_MemRef_call1280437.1 = mul nuw nsw i64 %polly.indvar434.1, 60
  %polly.access.add.Packed_MemRef_call1280438.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1280437.1, %polly.indvar422.1
  %polly.access.Packed_MemRef_call1280439.1 = getelementptr double, double* %Packed_MemRef_call1280, i64 %polly.access.add.Packed_MemRef_call1280438.1
  %_p_scalar_440.1 = load double, double* %polly.access.Packed_MemRef_call1280439.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_444.1, %_p_scalar_440.1
  %polly.access.Packed_MemRef_call2282447.1 = getelementptr double, double* %Packed_MemRef_call2282, i64 %polly.access.add.Packed_MemRef_call1280438.1
  %_p_scalar_448.1 = load double, double* %polly.access.Packed_MemRef_call2282447.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_452.1, %_p_scalar_448.1
  %171 = shl nuw nsw i64 %polly.indvar434.1, 3
  %172 = add nuw nsw i64 %171, %170
  %scevgep453.1 = getelementptr i8, i8* %call, i64 %172
  %scevgep453454.1 = bitcast i8* %scevgep453.1 to double*
  %_p_scalar_455.1 = load double, double* %scevgep453454.1, align 8, !alias.scope !82, !noalias !84
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_455.1
  store double %p_add42.i79.1, double* %scevgep453454.1, align 8, !alias.scope !82, !noalias !84
  %polly.indvar_next435.1 = add nuw nsw i64 %polly.indvar434.1, 1
  %exitcond862.1.not = icmp eq i64 %polly.indvar_next435.1, %indvars.iv860.1
  br i1 %exitcond862.1.not, label %polly.loop_exit433.1, label %polly.loop_header431.1

polly.loop_exit433.1:                             ; preds = %polly.loop_header431.1
  %polly.indvar_next429.1 = add nuw nsw i64 %polly.indvar428.1, 1
  %indvars.iv.next861.1 = add nuw nsw i64 %indvars.iv860.1, 1
  %exitcond863.1.not = icmp eq i64 %polly.indvar_next429.1, 16
  br i1 %exitcond863.1.not, label %polly.loop_exit427.1, label %polly.loop_header425.1

polly.loop_exit427.1:                             ; preds = %polly.loop_exit433.1
  %polly.indvar_next423.1 = add nuw nsw i64 %polly.indvar422.1, 1
  %exitcond864.1.not = icmp eq i64 %polly.indvar_next423.1, 60
  br i1 %exitcond864.1.not, label %polly.loop_exit421.1, label %polly.loop_header419.1

polly.loop_exit421.1:                             ; preds = %polly.loop_exit427.1
  tail call void @free(i8* nonnull %malloccall279)
  tail call void @free(i8* nonnull %malloccall281)
  br label %kernel_syr2k.exit90

polly.loop_header584.1:                           ; preds = %polly.loop_exit608, %polly.loop_header584.1
  %polly.indvar587.1 = phi i64 [ %polly.indvar_next588.1, %polly.loop_header584.1 ], [ 0, %polly.loop_exit608 ]
  %173 = mul nuw nsw i64 %polly.indvar587.1, 480
  %scevgep872.1 = getelementptr i8, i8* %malloccall460, i64 %173
  %scevgep873.1 = getelementptr i8, i8* %call1, i64 %173
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep872.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep873.1, i64 480, i1 false)
  %polly.indvar_next588.1 = add nuw nsw i64 %polly.indvar587.1, 1
  %exitcond874.1.not = icmp eq i64 %polly.indvar_next588.1, 80
  br i1 %exitcond874.1.not, label %polly.loop_header600.1, label %polly.loop_header584.1

polly.loop_header600.1:                           ; preds = %polly.loop_header584.1, %polly.loop_exit608.1
  %polly.indvar603.1 = phi i64 [ %polly.indvar_next604.1, %polly.loop_exit608.1 ], [ 0, %polly.loop_header584.1 ]
  br label %polly.loop_header606.1

polly.loop_header606.1:                           ; preds = %polly.loop_exit614.1, %polly.loop_header600.1
  %indvars.iv875.1 = phi i64 [ %indvars.iv.next876.1, %polly.loop_exit614.1 ], [ 65, %polly.loop_header600.1 ]
  %polly.indvar609.1 = phi i64 [ %polly.indvar_next610.1, %polly.loop_exit614.1 ], [ 0, %polly.loop_header600.1 ]
  %174 = add nuw nsw i64 %polly.indvar609.1, 64
  %polly.access.mul.Packed_MemRef_call2463622.1 = mul nuw nsw i64 %174, 60
  %polly.access.add.Packed_MemRef_call2463623.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2463622.1, %polly.indvar603.1
  %polly.access.Packed_MemRef_call2463624.1 = getelementptr double, double* %Packed_MemRef_call2463, i64 %polly.access.add.Packed_MemRef_call2463623.1
  %_p_scalar_625.1 = load double, double* %polly.access.Packed_MemRef_call2463624.1, align 8
  %polly.access.Packed_MemRef_call1461632.1 = getelementptr double, double* %Packed_MemRef_call1461, i64 %polly.access.add.Packed_MemRef_call2463623.1
  %_p_scalar_633.1 = load double, double* %polly.access.Packed_MemRef_call1461632.1, align 8
  %175 = mul nuw nsw i64 %174, 640
  br label %polly.loop_header612.1

polly.loop_header612.1:                           ; preds = %polly.loop_header612.1, %polly.loop_header606.1
  %polly.indvar615.1 = phi i64 [ 0, %polly.loop_header606.1 ], [ %polly.indvar_next616.1, %polly.loop_header612.1 ]
  %polly.access.mul.Packed_MemRef_call1461618.1 = mul nuw nsw i64 %polly.indvar615.1, 60
  %polly.access.add.Packed_MemRef_call1461619.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1461618.1, %polly.indvar603.1
  %polly.access.Packed_MemRef_call1461620.1 = getelementptr double, double* %Packed_MemRef_call1461, i64 %polly.access.add.Packed_MemRef_call1461619.1
  %_p_scalar_621.1 = load double, double* %polly.access.Packed_MemRef_call1461620.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_625.1, %_p_scalar_621.1
  %polly.access.Packed_MemRef_call2463628.1 = getelementptr double, double* %Packed_MemRef_call2463, i64 %polly.access.add.Packed_MemRef_call1461619.1
  %_p_scalar_629.1 = load double, double* %polly.access.Packed_MemRef_call2463628.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_633.1, %_p_scalar_629.1
  %176 = shl nuw nsw i64 %polly.indvar615.1, 3
  %177 = add nuw nsw i64 %176, %175
  %scevgep634.1 = getelementptr i8, i8* %call, i64 %177
  %scevgep634635.1 = bitcast i8* %scevgep634.1 to double*
  %_p_scalar_636.1 = load double, double* %scevgep634635.1, align 8, !alias.scope !91, !noalias !93
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_636.1
  store double %p_add42.i.1, double* %scevgep634635.1, align 8, !alias.scope !91, !noalias !93
  %polly.indvar_next616.1 = add nuw nsw i64 %polly.indvar615.1, 1
  %exitcond877.1.not = icmp eq i64 %polly.indvar_next616.1, %indvars.iv875.1
  br i1 %exitcond877.1.not, label %polly.loop_exit614.1, label %polly.loop_header612.1

polly.loop_exit614.1:                             ; preds = %polly.loop_header612.1
  %polly.indvar_next610.1 = add nuw nsw i64 %polly.indvar609.1, 1
  %indvars.iv.next876.1 = add nuw nsw i64 %indvars.iv875.1, 1
  %exitcond878.1.not = icmp eq i64 %polly.indvar_next610.1, 16
  br i1 %exitcond878.1.not, label %polly.loop_exit608.1, label %polly.loop_header606.1

polly.loop_exit608.1:                             ; preds = %polly.loop_exit614.1
  %polly.indvar_next604.1 = add nuw nsw i64 %polly.indvar603.1, 1
  %exitcond879.1.not = icmp eq i64 %polly.indvar_next604.1, 60
  br i1 %exitcond879.1.not, label %polly.loop_exit602.1, label %polly.loop_header600.1

polly.loop_exit602.1:                             ; preds = %polly.loop_exit608.1
  tail call void @free(i8* nonnull %malloccall460)
  tail call void @free(i8* nonnull %malloccall462)
  br label %kernel_syr2k.exit

polly.loop_header828.1:                           ; preds = %polly.loop_exit836, %polly.loop_exit836.1
  %polly.indvar831.1 = phi i64 [ %polly.indvar_next832.1, %polly.loop_exit836.1 ], [ 0, %polly.loop_exit836 ]
  %178 = mul nuw nsw i64 %polly.indvar831.1, 480
  %179 = trunc i64 %polly.indvar831.1 to i32
  %broadcast.splatinsert1198 = insertelement <4 x i32> poison, i32 %179, i32 0
  %broadcast.splat1199 = shufflevector <4 x i32> %broadcast.splatinsert1198, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1190

vector.body1190:                                  ; preds = %vector.body1190, %polly.loop_header828.1
  %index1192 = phi i64 [ 0, %polly.loop_header828.1 ], [ %index.next1193, %vector.body1190 ]
  %vec.ind1196 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header828.1 ], [ %vec.ind.next1197, %vector.body1190 ]
  %180 = add nuw nsw <4 x i64> %vec.ind1196, <i64 32, i64 32, i64 32, i64 32>
  %181 = trunc <4 x i64> %180 to <4 x i32>
  %182 = mul <4 x i32> %broadcast.splat1199, %181
  %183 = add <4 x i32> %182, <i32 1, i32 1, i32 1, i32 1>
  %184 = urem <4 x i32> %183, <i32 80, i32 80, i32 80, i32 80>
  %185 = sitofp <4 x i32> %184 to <4 x double>
  %186 = fmul fast <4 x double> %185, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %187 = extractelement <4 x i64> %180, i32 0
  %188 = shl i64 %187, 3
  %189 = add i64 %188, %178
  %190 = getelementptr i8, i8* %call1, i64 %189
  %191 = bitcast i8* %190 to <4 x double>*
  store <4 x double> %186, <4 x double>* %191, align 8, !alias.scope !103, !noalias !108
  %index.next1193 = add i64 %index1192, 4
  %vec.ind.next1197 = add <4 x i64> %vec.ind1196, <i64 4, i64 4, i64 4, i64 4>
  %192 = icmp eq i64 %index.next1193, 28
  br i1 %192, label %polly.loop_exit836.1, label %vector.body1190, !llvm.loop !110

polly.loop_exit836.1:                             ; preds = %vector.body1190
  %polly.indvar_next832.1 = add nuw nsw i64 %polly.indvar831.1, 1
  %exitcond889.1.not = icmp eq i64 %polly.indvar_next832.1, 32
  br i1 %exitcond889.1.not, label %polly.loop_header828.1909, label %polly.loop_header828.1

polly.loop_header828.1909:                        ; preds = %polly.loop_exit836.1, %polly.loop_exit836.1920
  %polly.indvar831.1908 = phi i64 [ %polly.indvar_next832.1918, %polly.loop_exit836.1920 ], [ 0, %polly.loop_exit836.1 ]
  %193 = add nuw nsw i64 %polly.indvar831.1908, 32
  %194 = mul nuw nsw i64 %193, 480
  %195 = trunc i64 %193 to i32
  %broadcast.splatinsert1212 = insertelement <4 x i32> poison, i32 %195, i32 0
  %broadcast.splat1213 = shufflevector <4 x i32> %broadcast.splatinsert1212, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %polly.loop_header828.1909
  %index1204 = phi i64 [ 0, %polly.loop_header828.1909 ], [ %index.next1205, %vector.body1202 ]
  %vec.ind1210 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header828.1909 ], [ %vec.ind.next1211, %vector.body1202 ]
  %196 = mul <4 x i32> %vec.ind1210, %broadcast.splat1213
  %197 = add <4 x i32> %196, <i32 1, i32 1, i32 1, i32 1>
  %198 = urem <4 x i32> %197, <i32 80, i32 80, i32 80, i32 80>
  %199 = sitofp <4 x i32> %198 to <4 x double>
  %200 = fmul fast <4 x double> %199, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %201 = shl i64 %index1204, 3
  %202 = add i64 %201, %194
  %203 = getelementptr i8, i8* %call1, i64 %202
  %204 = bitcast i8* %203 to <4 x double>*
  store <4 x double> %200, <4 x double>* %204, align 8, !alias.scope !103, !noalias !108
  %index.next1205 = add i64 %index1204, 4
  %vec.ind.next1211 = add <4 x i32> %vec.ind1210, <i32 4, i32 4, i32 4, i32 4>
  %205 = icmp eq i64 %index.next1205, 32
  br i1 %205, label %polly.loop_exit836.1920, label %vector.body1202, !llvm.loop !111

polly.loop_exit836.1920:                          ; preds = %vector.body1202
  %polly.indvar_next832.1918 = add nuw nsw i64 %polly.indvar831.1908, 1
  %exitcond889.1919.not = icmp eq i64 %polly.indvar_next832.1918, 32
  br i1 %exitcond889.1919.not, label %polly.loop_header828.1.1, label %polly.loop_header828.1909

polly.loop_header828.1.1:                         ; preds = %polly.loop_exit836.1920, %polly.loop_exit836.1.1
  %polly.indvar831.1.1 = phi i64 [ %polly.indvar_next832.1.1, %polly.loop_exit836.1.1 ], [ 0, %polly.loop_exit836.1920 ]
  %206 = add nuw nsw i64 %polly.indvar831.1.1, 32
  %207 = mul nuw nsw i64 %206, 480
  %208 = trunc i64 %206 to i32
  %broadcast.splatinsert1224 = insertelement <4 x i32> poison, i32 %208, i32 0
  %broadcast.splat1225 = shufflevector <4 x i32> %broadcast.splatinsert1224, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1216

vector.body1216:                                  ; preds = %vector.body1216, %polly.loop_header828.1.1
  %index1218 = phi i64 [ 0, %polly.loop_header828.1.1 ], [ %index.next1219, %vector.body1216 ]
  %vec.ind1222 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header828.1.1 ], [ %vec.ind.next1223, %vector.body1216 ]
  %209 = add nuw nsw <4 x i64> %vec.ind1222, <i64 32, i64 32, i64 32, i64 32>
  %210 = trunc <4 x i64> %209 to <4 x i32>
  %211 = mul <4 x i32> %broadcast.splat1225, %210
  %212 = add <4 x i32> %211, <i32 1, i32 1, i32 1, i32 1>
  %213 = urem <4 x i32> %212, <i32 80, i32 80, i32 80, i32 80>
  %214 = sitofp <4 x i32> %213 to <4 x double>
  %215 = fmul fast <4 x double> %214, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %216 = extractelement <4 x i64> %209, i32 0
  %217 = shl i64 %216, 3
  %218 = add i64 %217, %207
  %219 = getelementptr i8, i8* %call1, i64 %218
  %220 = bitcast i8* %219 to <4 x double>*
  store <4 x double> %215, <4 x double>* %220, align 8, !alias.scope !103, !noalias !108
  %index.next1219 = add i64 %index1218, 4
  %vec.ind.next1223 = add <4 x i64> %vec.ind1222, <i64 4, i64 4, i64 4, i64 4>
  %221 = icmp eq i64 %index.next1219, 28
  br i1 %221, label %polly.loop_exit836.1.1, label %vector.body1216, !llvm.loop !112

polly.loop_exit836.1.1:                           ; preds = %vector.body1216
  %polly.indvar_next832.1.1 = add nuw nsw i64 %polly.indvar831.1.1, 1
  %exitcond889.1.1.not = icmp eq i64 %polly.indvar_next832.1.1, 32
  br i1 %exitcond889.1.1.not, label %polly.loop_header828.2, label %polly.loop_header828.1.1

polly.loop_header828.2:                           ; preds = %polly.loop_exit836.1.1, %polly.loop_exit836.2
  %polly.indvar831.2 = phi i64 [ %polly.indvar_next832.2, %polly.loop_exit836.2 ], [ 0, %polly.loop_exit836.1.1 ]
  %222 = add nuw nsw i64 %polly.indvar831.2, 64
  %223 = mul nuw nsw i64 %222, 480
  %224 = trunc i64 %222 to i32
  %broadcast.splatinsert1238 = insertelement <4 x i32> poison, i32 %224, i32 0
  %broadcast.splat1239 = shufflevector <4 x i32> %broadcast.splatinsert1238, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1228

vector.body1228:                                  ; preds = %vector.body1228, %polly.loop_header828.2
  %index1230 = phi i64 [ 0, %polly.loop_header828.2 ], [ %index.next1231, %vector.body1228 ]
  %vec.ind1236 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header828.2 ], [ %vec.ind.next1237, %vector.body1228 ]
  %225 = mul <4 x i32> %vec.ind1236, %broadcast.splat1239
  %226 = add <4 x i32> %225, <i32 1, i32 1, i32 1, i32 1>
  %227 = urem <4 x i32> %226, <i32 80, i32 80, i32 80, i32 80>
  %228 = sitofp <4 x i32> %227 to <4 x double>
  %229 = fmul fast <4 x double> %228, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %230 = shl i64 %index1230, 3
  %231 = add i64 %230, %223
  %232 = getelementptr i8, i8* %call1, i64 %231
  %233 = bitcast i8* %232 to <4 x double>*
  store <4 x double> %229, <4 x double>* %233, align 8, !alias.scope !103, !noalias !108
  %index.next1231 = add i64 %index1230, 4
  %vec.ind.next1237 = add <4 x i32> %vec.ind1236, <i32 4, i32 4, i32 4, i32 4>
  %234 = icmp eq i64 %index.next1231, 32
  br i1 %234, label %polly.loop_exit836.2, label %vector.body1228, !llvm.loop !113

polly.loop_exit836.2:                             ; preds = %vector.body1228
  %polly.indvar_next832.2 = add nuw nsw i64 %polly.indvar831.2, 1
  %exitcond889.2.not = icmp eq i64 %polly.indvar_next832.2, 16
  br i1 %exitcond889.2.not, label %polly.loop_header828.1.2, label %polly.loop_header828.2

polly.loop_header828.1.2:                         ; preds = %polly.loop_exit836.2, %polly.loop_exit836.1.2
  %polly.indvar831.1.2 = phi i64 [ %polly.indvar_next832.1.2, %polly.loop_exit836.1.2 ], [ 0, %polly.loop_exit836.2 ]
  %235 = add nuw nsw i64 %polly.indvar831.1.2, 64
  %236 = mul nuw nsw i64 %235, 480
  %237 = trunc i64 %235 to i32
  %broadcast.splatinsert1250 = insertelement <4 x i32> poison, i32 %237, i32 0
  %broadcast.splat1251 = shufflevector <4 x i32> %broadcast.splatinsert1250, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %polly.loop_header828.1.2
  %index1244 = phi i64 [ 0, %polly.loop_header828.1.2 ], [ %index.next1245, %vector.body1242 ]
  %vec.ind1248 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header828.1.2 ], [ %vec.ind.next1249, %vector.body1242 ]
  %238 = add nuw nsw <4 x i64> %vec.ind1248, <i64 32, i64 32, i64 32, i64 32>
  %239 = trunc <4 x i64> %238 to <4 x i32>
  %240 = mul <4 x i32> %broadcast.splat1251, %239
  %241 = add <4 x i32> %240, <i32 1, i32 1, i32 1, i32 1>
  %242 = urem <4 x i32> %241, <i32 80, i32 80, i32 80, i32 80>
  %243 = sitofp <4 x i32> %242 to <4 x double>
  %244 = fmul fast <4 x double> %243, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %245 = extractelement <4 x i64> %238, i32 0
  %246 = shl i64 %245, 3
  %247 = add i64 %246, %236
  %248 = getelementptr i8, i8* %call1, i64 %247
  %249 = bitcast i8* %248 to <4 x double>*
  store <4 x double> %244, <4 x double>* %249, align 8, !alias.scope !103, !noalias !108
  %index.next1245 = add i64 %index1244, 4
  %vec.ind.next1249 = add <4 x i64> %vec.ind1248, <i64 4, i64 4, i64 4, i64 4>
  %250 = icmp eq i64 %index.next1245, 28
  br i1 %250, label %polly.loop_exit836.1.2, label %vector.body1242, !llvm.loop !114

polly.loop_exit836.1.2:                           ; preds = %vector.body1242
  %polly.indvar_next832.1.2 = add nuw nsw i64 %polly.indvar831.1.2, 1
  %exitcond889.1.2.not = icmp eq i64 %polly.indvar_next832.1.2, 16
  br i1 %exitcond889.1.2.not, label %init_array.exit, label %polly.loop_header828.1.2

polly.loop_header802.1:                           ; preds = %polly.loop_exit810, %polly.loop_exit810.1
  %polly.indvar805.1 = phi i64 [ %polly.indvar_next806.1, %polly.loop_exit810.1 ], [ 0, %polly.loop_exit810 ]
  %251 = mul nuw nsw i64 %polly.indvar805.1, 480
  %252 = trunc i64 %polly.indvar805.1 to i32
  %broadcast.splatinsert1120 = insertelement <4 x i32> poison, i32 %252, i32 0
  %broadcast.splat1121 = shufflevector <4 x i32> %broadcast.splatinsert1120, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1112

vector.body1112:                                  ; preds = %vector.body1112, %polly.loop_header802.1
  %index1114 = phi i64 [ 0, %polly.loop_header802.1 ], [ %index.next1115, %vector.body1112 ]
  %vec.ind1118 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header802.1 ], [ %vec.ind.next1119, %vector.body1112 ]
  %253 = add nuw nsw <4 x i64> %vec.ind1118, <i64 32, i64 32, i64 32, i64 32>
  %254 = trunc <4 x i64> %253 to <4 x i32>
  %255 = mul <4 x i32> %broadcast.splat1121, %254
  %256 = add <4 x i32> %255, <i32 2, i32 2, i32 2, i32 2>
  %257 = urem <4 x i32> %256, <i32 60, i32 60, i32 60, i32 60>
  %258 = sitofp <4 x i32> %257 to <4 x double>
  %259 = fmul fast <4 x double> %258, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %260 = extractelement <4 x i64> %253, i32 0
  %261 = shl i64 %260, 3
  %262 = add i64 %261, %251
  %263 = getelementptr i8, i8* %call2, i64 %262
  %264 = bitcast i8* %263 to <4 x double>*
  store <4 x double> %259, <4 x double>* %264, align 8, !alias.scope !104, !noalias !106
  %index.next1115 = add i64 %index1114, 4
  %vec.ind.next1119 = add <4 x i64> %vec.ind1118, <i64 4, i64 4, i64 4, i64 4>
  %265 = icmp eq i64 %index.next1115, 28
  br i1 %265, label %polly.loop_exit810.1, label %vector.body1112, !llvm.loop !115

polly.loop_exit810.1:                             ; preds = %vector.body1112
  %polly.indvar_next806.1 = add nuw nsw i64 %polly.indvar805.1, 1
  %exitcond895.1.not = icmp eq i64 %polly.indvar_next806.1, 32
  br i1 %exitcond895.1.not, label %polly.loop_header802.1923, label %polly.loop_header802.1

polly.loop_header802.1923:                        ; preds = %polly.loop_exit810.1, %polly.loop_exit810.1934
  %polly.indvar805.1922 = phi i64 [ %polly.indvar_next806.1932, %polly.loop_exit810.1934 ], [ 0, %polly.loop_exit810.1 ]
  %266 = add nuw nsw i64 %polly.indvar805.1922, 32
  %267 = mul nuw nsw i64 %266, 480
  %268 = trunc i64 %266 to i32
  %broadcast.splatinsert1134 = insertelement <4 x i32> poison, i32 %268, i32 0
  %broadcast.splat1135 = shufflevector <4 x i32> %broadcast.splatinsert1134, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %polly.loop_header802.1923
  %index1126 = phi i64 [ 0, %polly.loop_header802.1923 ], [ %index.next1127, %vector.body1124 ]
  %vec.ind1132 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header802.1923 ], [ %vec.ind.next1133, %vector.body1124 ]
  %269 = mul <4 x i32> %vec.ind1132, %broadcast.splat1135
  %270 = add <4 x i32> %269, <i32 2, i32 2, i32 2, i32 2>
  %271 = urem <4 x i32> %270, <i32 60, i32 60, i32 60, i32 60>
  %272 = sitofp <4 x i32> %271 to <4 x double>
  %273 = fmul fast <4 x double> %272, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %274 = shl i64 %index1126, 3
  %275 = add i64 %274, %267
  %276 = getelementptr i8, i8* %call2, i64 %275
  %277 = bitcast i8* %276 to <4 x double>*
  store <4 x double> %273, <4 x double>* %277, align 8, !alias.scope !104, !noalias !106
  %index.next1127 = add i64 %index1126, 4
  %vec.ind.next1133 = add <4 x i32> %vec.ind1132, <i32 4, i32 4, i32 4, i32 4>
  %278 = icmp eq i64 %index.next1127, 32
  br i1 %278, label %polly.loop_exit810.1934, label %vector.body1124, !llvm.loop !116

polly.loop_exit810.1934:                          ; preds = %vector.body1124
  %polly.indvar_next806.1932 = add nuw nsw i64 %polly.indvar805.1922, 1
  %exitcond895.1933.not = icmp eq i64 %polly.indvar_next806.1932, 32
  br i1 %exitcond895.1933.not, label %polly.loop_header802.1.1, label %polly.loop_header802.1923

polly.loop_header802.1.1:                         ; preds = %polly.loop_exit810.1934, %polly.loop_exit810.1.1
  %polly.indvar805.1.1 = phi i64 [ %polly.indvar_next806.1.1, %polly.loop_exit810.1.1 ], [ 0, %polly.loop_exit810.1934 ]
  %279 = add nuw nsw i64 %polly.indvar805.1.1, 32
  %280 = mul nuw nsw i64 %279, 480
  %281 = trunc i64 %279 to i32
  %broadcast.splatinsert1146 = insertelement <4 x i32> poison, i32 %281, i32 0
  %broadcast.splat1147 = shufflevector <4 x i32> %broadcast.splatinsert1146, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1138

vector.body1138:                                  ; preds = %vector.body1138, %polly.loop_header802.1.1
  %index1140 = phi i64 [ 0, %polly.loop_header802.1.1 ], [ %index.next1141, %vector.body1138 ]
  %vec.ind1144 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header802.1.1 ], [ %vec.ind.next1145, %vector.body1138 ]
  %282 = add nuw nsw <4 x i64> %vec.ind1144, <i64 32, i64 32, i64 32, i64 32>
  %283 = trunc <4 x i64> %282 to <4 x i32>
  %284 = mul <4 x i32> %broadcast.splat1147, %283
  %285 = add <4 x i32> %284, <i32 2, i32 2, i32 2, i32 2>
  %286 = urem <4 x i32> %285, <i32 60, i32 60, i32 60, i32 60>
  %287 = sitofp <4 x i32> %286 to <4 x double>
  %288 = fmul fast <4 x double> %287, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %289 = extractelement <4 x i64> %282, i32 0
  %290 = shl i64 %289, 3
  %291 = add i64 %290, %280
  %292 = getelementptr i8, i8* %call2, i64 %291
  %293 = bitcast i8* %292 to <4 x double>*
  store <4 x double> %288, <4 x double>* %293, align 8, !alias.scope !104, !noalias !106
  %index.next1141 = add i64 %index1140, 4
  %vec.ind.next1145 = add <4 x i64> %vec.ind1144, <i64 4, i64 4, i64 4, i64 4>
  %294 = icmp eq i64 %index.next1141, 28
  br i1 %294, label %polly.loop_exit810.1.1, label %vector.body1138, !llvm.loop !117

polly.loop_exit810.1.1:                           ; preds = %vector.body1138
  %polly.indvar_next806.1.1 = add nuw nsw i64 %polly.indvar805.1.1, 1
  %exitcond895.1.1.not = icmp eq i64 %polly.indvar_next806.1.1, 32
  br i1 %exitcond895.1.1.not, label %polly.loop_header802.2, label %polly.loop_header802.1.1

polly.loop_header802.2:                           ; preds = %polly.loop_exit810.1.1, %polly.loop_exit810.2
  %polly.indvar805.2 = phi i64 [ %polly.indvar_next806.2, %polly.loop_exit810.2 ], [ 0, %polly.loop_exit810.1.1 ]
  %295 = add nuw nsw i64 %polly.indvar805.2, 64
  %296 = mul nuw nsw i64 %295, 480
  %297 = trunc i64 %295 to i32
  %broadcast.splatinsert1160 = insertelement <4 x i32> poison, i32 %297, i32 0
  %broadcast.splat1161 = shufflevector <4 x i32> %broadcast.splatinsert1160, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %polly.loop_header802.2
  %index1152 = phi i64 [ 0, %polly.loop_header802.2 ], [ %index.next1153, %vector.body1150 ]
  %vec.ind1158 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header802.2 ], [ %vec.ind.next1159, %vector.body1150 ]
  %298 = mul <4 x i32> %vec.ind1158, %broadcast.splat1161
  %299 = add <4 x i32> %298, <i32 2, i32 2, i32 2, i32 2>
  %300 = urem <4 x i32> %299, <i32 60, i32 60, i32 60, i32 60>
  %301 = sitofp <4 x i32> %300 to <4 x double>
  %302 = fmul fast <4 x double> %301, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %303 = shl i64 %index1152, 3
  %304 = add i64 %303, %296
  %305 = getelementptr i8, i8* %call2, i64 %304
  %306 = bitcast i8* %305 to <4 x double>*
  store <4 x double> %302, <4 x double>* %306, align 8, !alias.scope !104, !noalias !106
  %index.next1153 = add i64 %index1152, 4
  %vec.ind.next1159 = add <4 x i32> %vec.ind1158, <i32 4, i32 4, i32 4, i32 4>
  %307 = icmp eq i64 %index.next1153, 32
  br i1 %307, label %polly.loop_exit810.2, label %vector.body1150, !llvm.loop !118

polly.loop_exit810.2:                             ; preds = %vector.body1150
  %polly.indvar_next806.2 = add nuw nsw i64 %polly.indvar805.2, 1
  %exitcond895.2.not = icmp eq i64 %polly.indvar_next806.2, 16
  br i1 %exitcond895.2.not, label %polly.loop_header802.1.2, label %polly.loop_header802.2

polly.loop_header802.1.2:                         ; preds = %polly.loop_exit810.2, %polly.loop_exit810.1.2
  %polly.indvar805.1.2 = phi i64 [ %polly.indvar_next806.1.2, %polly.loop_exit810.1.2 ], [ 0, %polly.loop_exit810.2 ]
  %308 = add nuw nsw i64 %polly.indvar805.1.2, 64
  %309 = mul nuw nsw i64 %308, 480
  %310 = trunc i64 %308 to i32
  %broadcast.splatinsert1172 = insertelement <4 x i32> poison, i32 %310, i32 0
  %broadcast.splat1173 = shufflevector <4 x i32> %broadcast.splatinsert1172, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1164

vector.body1164:                                  ; preds = %vector.body1164, %polly.loop_header802.1.2
  %index1166 = phi i64 [ 0, %polly.loop_header802.1.2 ], [ %index.next1167, %vector.body1164 ]
  %vec.ind1170 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header802.1.2 ], [ %vec.ind.next1171, %vector.body1164 ]
  %311 = add nuw nsw <4 x i64> %vec.ind1170, <i64 32, i64 32, i64 32, i64 32>
  %312 = trunc <4 x i64> %311 to <4 x i32>
  %313 = mul <4 x i32> %broadcast.splat1173, %312
  %314 = add <4 x i32> %313, <i32 2, i32 2, i32 2, i32 2>
  %315 = urem <4 x i32> %314, <i32 60, i32 60, i32 60, i32 60>
  %316 = sitofp <4 x i32> %315 to <4 x double>
  %317 = fmul fast <4 x double> %316, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %318 = extractelement <4 x i64> %311, i32 0
  %319 = shl i64 %318, 3
  %320 = add i64 %319, %309
  %321 = getelementptr i8, i8* %call2, i64 %320
  %322 = bitcast i8* %321 to <4 x double>*
  store <4 x double> %317, <4 x double>* %322, align 8, !alias.scope !104, !noalias !106
  %index.next1167 = add i64 %index1166, 4
  %vec.ind.next1171 = add <4 x i64> %vec.ind1170, <i64 4, i64 4, i64 4, i64 4>
  %323 = icmp eq i64 %index.next1167, 28
  br i1 %323, label %polly.loop_exit810.1.2, label %vector.body1164, !llvm.loop !119

polly.loop_exit810.1.2:                           ; preds = %vector.body1164
  %polly.indvar_next806.1.2 = add nuw nsw i64 %polly.indvar805.1.2, 1
  %exitcond895.1.2.not = icmp eq i64 %polly.indvar_next806.1.2, 16
  br i1 %exitcond895.1.2.not, label %polly.loop_header828, label %polly.loop_header802.1.2

polly.loop_header775.1:                           ; preds = %polly.loop_exit783, %polly.loop_exit783.1
  %polly.indvar778.1 = phi i64 [ %polly.indvar_next779.1, %polly.loop_exit783.1 ], [ 0, %polly.loop_exit783 ]
  %324 = mul nuw nsw i64 %polly.indvar778.1, 640
  %325 = trunc i64 %polly.indvar778.1 to i32
  %broadcast.splatinsert1006 = insertelement <4 x i32> poison, i32 %325, i32 0
  %broadcast.splat1007 = shufflevector <4 x i32> %broadcast.splatinsert1006, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body998

vector.body998:                                   ; preds = %vector.body998, %polly.loop_header775.1
  %index1000 = phi i64 [ 0, %polly.loop_header775.1 ], [ %index.next1001, %vector.body998 ]
  %vec.ind1004 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1 ], [ %vec.ind.next1005, %vector.body998 ]
  %326 = add nuw nsw <4 x i64> %vec.ind1004, <i64 32, i64 32, i64 32, i64 32>
  %327 = trunc <4 x i64> %326 to <4 x i32>
  %328 = mul <4 x i32> %broadcast.splat1007, %327
  %329 = add <4 x i32> %328, <i32 3, i32 3, i32 3, i32 3>
  %330 = urem <4 x i32> %329, <i32 80, i32 80, i32 80, i32 80>
  %331 = sitofp <4 x i32> %330 to <4 x double>
  %332 = fmul fast <4 x double> %331, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %333 = extractelement <4 x i64> %326, i32 0
  %334 = shl i64 %333, 3
  %335 = add nuw nsw i64 %334, %324
  %336 = getelementptr i8, i8* %call, i64 %335
  %337 = bitcast i8* %336 to <4 x double>*
  store <4 x double> %332, <4 x double>* %337, align 8, !alias.scope !100, !noalias !102
  %index.next1001 = add i64 %index1000, 4
  %vec.ind.next1005 = add <4 x i64> %vec.ind1004, <i64 4, i64 4, i64 4, i64 4>
  %338 = icmp eq i64 %index.next1001, 32
  br i1 %338, label %polly.loop_exit783.1, label %vector.body998, !llvm.loop !120

polly.loop_exit783.1:                             ; preds = %vector.body998
  %polly.indvar_next779.1 = add nuw nsw i64 %polly.indvar778.1, 1
  %exitcond904.1.not = icmp eq i64 %polly.indvar_next779.1, 32
  br i1 %exitcond904.1.not, label %polly.loop_header775.2, label %polly.loop_header775.1

polly.loop_header775.2:                           ; preds = %polly.loop_exit783.1, %polly.loop_exit783.2
  %polly.indvar778.2 = phi i64 [ %polly.indvar_next779.2, %polly.loop_exit783.2 ], [ 0, %polly.loop_exit783.1 ]
  %339 = mul nuw nsw i64 %polly.indvar778.2, 640
  %340 = trunc i64 %polly.indvar778.2 to i32
  %broadcast.splatinsert1018 = insertelement <4 x i32> poison, i32 %340, i32 0
  %broadcast.splat1019 = shufflevector <4 x i32> %broadcast.splatinsert1018, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %polly.loop_header775.2
  %index1012 = phi i64 [ 0, %polly.loop_header775.2 ], [ %index.next1013, %vector.body1010 ]
  %vec.ind1016 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.2 ], [ %vec.ind.next1017, %vector.body1010 ]
  %341 = add nuw nsw <4 x i64> %vec.ind1016, <i64 64, i64 64, i64 64, i64 64>
  %342 = trunc <4 x i64> %341 to <4 x i32>
  %343 = mul <4 x i32> %broadcast.splat1019, %342
  %344 = add <4 x i32> %343, <i32 3, i32 3, i32 3, i32 3>
  %345 = urem <4 x i32> %344, <i32 80, i32 80, i32 80, i32 80>
  %346 = sitofp <4 x i32> %345 to <4 x double>
  %347 = fmul fast <4 x double> %346, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %348 = extractelement <4 x i64> %341, i32 0
  %349 = shl i64 %348, 3
  %350 = add nuw nsw i64 %349, %339
  %351 = getelementptr i8, i8* %call, i64 %350
  %352 = bitcast i8* %351 to <4 x double>*
  store <4 x double> %347, <4 x double>* %352, align 8, !alias.scope !100, !noalias !102
  %index.next1013 = add i64 %index1012, 4
  %vec.ind.next1017 = add <4 x i64> %vec.ind1016, <i64 4, i64 4, i64 4, i64 4>
  %353 = icmp eq i64 %index.next1013, 16
  br i1 %353, label %polly.loop_exit783.2, label %vector.body1010, !llvm.loop !121

polly.loop_exit783.2:                             ; preds = %vector.body1010
  %polly.indvar_next779.2 = add nuw nsw i64 %polly.indvar778.2, 1
  %exitcond904.2.not = icmp eq i64 %polly.indvar_next779.2, 32
  br i1 %exitcond904.2.not, label %polly.loop_header775.1937, label %polly.loop_header775.2

polly.loop_header775.1937:                        ; preds = %polly.loop_exit783.2, %polly.loop_exit783.1948
  %polly.indvar778.1936 = phi i64 [ %polly.indvar_next779.1946, %polly.loop_exit783.1948 ], [ 0, %polly.loop_exit783.2 ]
  %354 = add nuw nsw i64 %polly.indvar778.1936, 32
  %355 = mul nuw nsw i64 %354, 640
  %356 = trunc i64 %354 to i32
  %broadcast.splatinsert1032 = insertelement <4 x i32> poison, i32 %356, i32 0
  %broadcast.splat1033 = shufflevector <4 x i32> %broadcast.splatinsert1032, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1022

vector.body1022:                                  ; preds = %vector.body1022, %polly.loop_header775.1937
  %index1024 = phi i64 [ 0, %polly.loop_header775.1937 ], [ %index.next1025, %vector.body1022 ]
  %vec.ind1030 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.1937 ], [ %vec.ind.next1031, %vector.body1022 ]
  %357 = mul <4 x i32> %vec.ind1030, %broadcast.splat1033
  %358 = add <4 x i32> %357, <i32 3, i32 3, i32 3, i32 3>
  %359 = urem <4 x i32> %358, <i32 80, i32 80, i32 80, i32 80>
  %360 = sitofp <4 x i32> %359 to <4 x double>
  %361 = fmul fast <4 x double> %360, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %362 = shl i64 %index1024, 3
  %363 = add nuw nsw i64 %362, %355
  %364 = getelementptr i8, i8* %call, i64 %363
  %365 = bitcast i8* %364 to <4 x double>*
  store <4 x double> %361, <4 x double>* %365, align 8, !alias.scope !100, !noalias !102
  %index.next1025 = add i64 %index1024, 4
  %vec.ind.next1031 = add <4 x i32> %vec.ind1030, <i32 4, i32 4, i32 4, i32 4>
  %366 = icmp eq i64 %index.next1025, 32
  br i1 %366, label %polly.loop_exit783.1948, label %vector.body1022, !llvm.loop !122

polly.loop_exit783.1948:                          ; preds = %vector.body1022
  %polly.indvar_next779.1946 = add nuw nsw i64 %polly.indvar778.1936, 1
  %exitcond904.1947.not = icmp eq i64 %polly.indvar_next779.1946, 32
  br i1 %exitcond904.1947.not, label %polly.loop_header775.1.1, label %polly.loop_header775.1937

polly.loop_header775.1.1:                         ; preds = %polly.loop_exit783.1948, %polly.loop_exit783.1.1
  %polly.indvar778.1.1 = phi i64 [ %polly.indvar_next779.1.1, %polly.loop_exit783.1.1 ], [ 0, %polly.loop_exit783.1948 ]
  %367 = add nuw nsw i64 %polly.indvar778.1.1, 32
  %368 = mul nuw nsw i64 %367, 640
  %369 = trunc i64 %367 to i32
  %broadcast.splatinsert1044 = insertelement <4 x i32> poison, i32 %369, i32 0
  %broadcast.splat1045 = shufflevector <4 x i32> %broadcast.splatinsert1044, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1036

vector.body1036:                                  ; preds = %vector.body1036, %polly.loop_header775.1.1
  %index1038 = phi i64 [ 0, %polly.loop_header775.1.1 ], [ %index.next1039, %vector.body1036 ]
  %vec.ind1042 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.1 ], [ %vec.ind.next1043, %vector.body1036 ]
  %370 = add nuw nsw <4 x i64> %vec.ind1042, <i64 32, i64 32, i64 32, i64 32>
  %371 = trunc <4 x i64> %370 to <4 x i32>
  %372 = mul <4 x i32> %broadcast.splat1045, %371
  %373 = add <4 x i32> %372, <i32 3, i32 3, i32 3, i32 3>
  %374 = urem <4 x i32> %373, <i32 80, i32 80, i32 80, i32 80>
  %375 = sitofp <4 x i32> %374 to <4 x double>
  %376 = fmul fast <4 x double> %375, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %377 = extractelement <4 x i64> %370, i32 0
  %378 = shl i64 %377, 3
  %379 = add nuw nsw i64 %378, %368
  %380 = getelementptr i8, i8* %call, i64 %379
  %381 = bitcast i8* %380 to <4 x double>*
  store <4 x double> %376, <4 x double>* %381, align 8, !alias.scope !100, !noalias !102
  %index.next1039 = add i64 %index1038, 4
  %vec.ind.next1043 = add <4 x i64> %vec.ind1042, <i64 4, i64 4, i64 4, i64 4>
  %382 = icmp eq i64 %index.next1039, 32
  br i1 %382, label %polly.loop_exit783.1.1, label %vector.body1036, !llvm.loop !123

polly.loop_exit783.1.1:                           ; preds = %vector.body1036
  %polly.indvar_next779.1.1 = add nuw nsw i64 %polly.indvar778.1.1, 1
  %exitcond904.1.1.not = icmp eq i64 %polly.indvar_next779.1.1, 32
  br i1 %exitcond904.1.1.not, label %polly.loop_header775.2.1, label %polly.loop_header775.1.1

polly.loop_header775.2.1:                         ; preds = %polly.loop_exit783.1.1, %polly.loop_exit783.2.1
  %polly.indvar778.2.1 = phi i64 [ %polly.indvar_next779.2.1, %polly.loop_exit783.2.1 ], [ 0, %polly.loop_exit783.1.1 ]
  %383 = add nuw nsw i64 %polly.indvar778.2.1, 32
  %384 = mul nuw nsw i64 %383, 640
  %385 = trunc i64 %383 to i32
  %broadcast.splatinsert1056 = insertelement <4 x i32> poison, i32 %385, i32 0
  %broadcast.splat1057 = shufflevector <4 x i32> %broadcast.splatinsert1056, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1048

vector.body1048:                                  ; preds = %vector.body1048, %polly.loop_header775.2.1
  %index1050 = phi i64 [ 0, %polly.loop_header775.2.1 ], [ %index.next1051, %vector.body1048 ]
  %vec.ind1054 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.2.1 ], [ %vec.ind.next1055, %vector.body1048 ]
  %386 = add nuw nsw <4 x i64> %vec.ind1054, <i64 64, i64 64, i64 64, i64 64>
  %387 = trunc <4 x i64> %386 to <4 x i32>
  %388 = mul <4 x i32> %broadcast.splat1057, %387
  %389 = add <4 x i32> %388, <i32 3, i32 3, i32 3, i32 3>
  %390 = urem <4 x i32> %389, <i32 80, i32 80, i32 80, i32 80>
  %391 = sitofp <4 x i32> %390 to <4 x double>
  %392 = fmul fast <4 x double> %391, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %393 = extractelement <4 x i64> %386, i32 0
  %394 = shl i64 %393, 3
  %395 = add nuw nsw i64 %394, %384
  %396 = getelementptr i8, i8* %call, i64 %395
  %397 = bitcast i8* %396 to <4 x double>*
  store <4 x double> %392, <4 x double>* %397, align 8, !alias.scope !100, !noalias !102
  %index.next1051 = add i64 %index1050, 4
  %vec.ind.next1055 = add <4 x i64> %vec.ind1054, <i64 4, i64 4, i64 4, i64 4>
  %398 = icmp eq i64 %index.next1051, 16
  br i1 %398, label %polly.loop_exit783.2.1, label %vector.body1048, !llvm.loop !124

polly.loop_exit783.2.1:                           ; preds = %vector.body1048
  %polly.indvar_next779.2.1 = add nuw nsw i64 %polly.indvar778.2.1, 1
  %exitcond904.2.1.not = icmp eq i64 %polly.indvar_next779.2.1, 32
  br i1 %exitcond904.2.1.not, label %polly.loop_header775.2951, label %polly.loop_header775.2.1

polly.loop_header775.2951:                        ; preds = %polly.loop_exit783.2.1, %polly.loop_exit783.2962
  %polly.indvar778.2950 = phi i64 [ %polly.indvar_next779.2960, %polly.loop_exit783.2962 ], [ 0, %polly.loop_exit783.2.1 ]
  %399 = add nuw nsw i64 %polly.indvar778.2950, 64
  %400 = mul nuw nsw i64 %399, 640
  %401 = trunc i64 %399 to i32
  %broadcast.splatinsert1070 = insertelement <4 x i32> poison, i32 %401, i32 0
  %broadcast.splat1071 = shufflevector <4 x i32> %broadcast.splatinsert1070, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1060

vector.body1060:                                  ; preds = %vector.body1060, %polly.loop_header775.2951
  %index1062 = phi i64 [ 0, %polly.loop_header775.2951 ], [ %index.next1063, %vector.body1060 ]
  %vec.ind1068 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header775.2951 ], [ %vec.ind.next1069, %vector.body1060 ]
  %402 = mul <4 x i32> %vec.ind1068, %broadcast.splat1071
  %403 = add <4 x i32> %402, <i32 3, i32 3, i32 3, i32 3>
  %404 = urem <4 x i32> %403, <i32 80, i32 80, i32 80, i32 80>
  %405 = sitofp <4 x i32> %404 to <4 x double>
  %406 = fmul fast <4 x double> %405, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %407 = shl i64 %index1062, 3
  %408 = add nuw nsw i64 %407, %400
  %409 = getelementptr i8, i8* %call, i64 %408
  %410 = bitcast i8* %409 to <4 x double>*
  store <4 x double> %406, <4 x double>* %410, align 8, !alias.scope !100, !noalias !102
  %index.next1063 = add i64 %index1062, 4
  %vec.ind.next1069 = add <4 x i32> %vec.ind1068, <i32 4, i32 4, i32 4, i32 4>
  %411 = icmp eq i64 %index.next1063, 32
  br i1 %411, label %polly.loop_exit783.2962, label %vector.body1060, !llvm.loop !125

polly.loop_exit783.2962:                          ; preds = %vector.body1060
  %polly.indvar_next779.2960 = add nuw nsw i64 %polly.indvar778.2950, 1
  %exitcond904.2961.not = icmp eq i64 %polly.indvar_next779.2960, 16
  br i1 %exitcond904.2961.not, label %polly.loop_header775.1.2, label %polly.loop_header775.2951

polly.loop_header775.1.2:                         ; preds = %polly.loop_exit783.2962, %polly.loop_exit783.1.2
  %polly.indvar778.1.2 = phi i64 [ %polly.indvar_next779.1.2, %polly.loop_exit783.1.2 ], [ 0, %polly.loop_exit783.2962 ]
  %412 = add nuw nsw i64 %polly.indvar778.1.2, 64
  %413 = mul nuw nsw i64 %412, 640
  %414 = trunc i64 %412 to i32
  %broadcast.splatinsert1082 = insertelement <4 x i32> poison, i32 %414, i32 0
  %broadcast.splat1083 = shufflevector <4 x i32> %broadcast.splatinsert1082, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1074

vector.body1074:                                  ; preds = %vector.body1074, %polly.loop_header775.1.2
  %index1076 = phi i64 [ 0, %polly.loop_header775.1.2 ], [ %index.next1077, %vector.body1074 ]
  %vec.ind1080 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.1.2 ], [ %vec.ind.next1081, %vector.body1074 ]
  %415 = add nuw nsw <4 x i64> %vec.ind1080, <i64 32, i64 32, i64 32, i64 32>
  %416 = trunc <4 x i64> %415 to <4 x i32>
  %417 = mul <4 x i32> %broadcast.splat1083, %416
  %418 = add <4 x i32> %417, <i32 3, i32 3, i32 3, i32 3>
  %419 = urem <4 x i32> %418, <i32 80, i32 80, i32 80, i32 80>
  %420 = sitofp <4 x i32> %419 to <4 x double>
  %421 = fmul fast <4 x double> %420, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %422 = extractelement <4 x i64> %415, i32 0
  %423 = shl i64 %422, 3
  %424 = add nuw nsw i64 %423, %413
  %425 = getelementptr i8, i8* %call, i64 %424
  %426 = bitcast i8* %425 to <4 x double>*
  store <4 x double> %421, <4 x double>* %426, align 8, !alias.scope !100, !noalias !102
  %index.next1077 = add i64 %index1076, 4
  %vec.ind.next1081 = add <4 x i64> %vec.ind1080, <i64 4, i64 4, i64 4, i64 4>
  %427 = icmp eq i64 %index.next1077, 32
  br i1 %427, label %polly.loop_exit783.1.2, label %vector.body1074, !llvm.loop !126

polly.loop_exit783.1.2:                           ; preds = %vector.body1074
  %polly.indvar_next779.1.2 = add nuw nsw i64 %polly.indvar778.1.2, 1
  %exitcond904.1.2.not = icmp eq i64 %polly.indvar_next779.1.2, 16
  br i1 %exitcond904.1.2.not, label %polly.loop_header775.2.2, label %polly.loop_header775.1.2

polly.loop_header775.2.2:                         ; preds = %polly.loop_exit783.1.2, %polly.loop_exit783.2.2
  %polly.indvar778.2.2 = phi i64 [ %polly.indvar_next779.2.2, %polly.loop_exit783.2.2 ], [ 0, %polly.loop_exit783.1.2 ]
  %428 = add nuw nsw i64 %polly.indvar778.2.2, 64
  %429 = mul nuw nsw i64 %428, 640
  %430 = trunc i64 %428 to i32
  %broadcast.splatinsert1094 = insertelement <4 x i32> poison, i32 %430, i32 0
  %broadcast.splat1095 = shufflevector <4 x i32> %broadcast.splatinsert1094, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %polly.loop_header775.2.2
  %index1088 = phi i64 [ 0, %polly.loop_header775.2.2 ], [ %index.next1089, %vector.body1086 ]
  %vec.ind1092 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header775.2.2 ], [ %vec.ind.next1093, %vector.body1086 ]
  %431 = add nuw nsw <4 x i64> %vec.ind1092, <i64 64, i64 64, i64 64, i64 64>
  %432 = trunc <4 x i64> %431 to <4 x i32>
  %433 = mul <4 x i32> %broadcast.splat1095, %432
  %434 = add <4 x i32> %433, <i32 3, i32 3, i32 3, i32 3>
  %435 = urem <4 x i32> %434, <i32 80, i32 80, i32 80, i32 80>
  %436 = sitofp <4 x i32> %435 to <4 x double>
  %437 = fmul fast <4 x double> %436, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %438 = extractelement <4 x i64> %431, i32 0
  %439 = shl i64 %438, 3
  %440 = add nuw nsw i64 %439, %429
  %441 = getelementptr i8, i8* %call, i64 %440
  %442 = bitcast i8* %441 to <4 x double>*
  store <4 x double> %437, <4 x double>* %442, align 8, !alias.scope !100, !noalias !102
  %index.next1089 = add i64 %index1088, 4
  %vec.ind.next1093 = add <4 x i64> %vec.ind1092, <i64 4, i64 4, i64 4, i64 4>
  %443 = icmp eq i64 %index.next1089, 16
  br i1 %443, label %polly.loop_exit783.2.2, label %vector.body1086, !llvm.loop !127

polly.loop_exit783.2.2:                           ; preds = %vector.body1086
  %polly.indvar_next779.2.2 = add nuw nsw i64 %polly.indvar778.2.2, 1
  %exitcond904.2.2.not = icmp eq i64 %polly.indvar_next779.2.2, 16
  br i1 %exitcond904.2.2.not, label %polly.loop_header802, label %polly.loop_header775.2.2
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
!26 = !{!"llvm.loop.tile.size", i32 256}
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
!82 = distinct !{!82, !83, !"polly.alias.scope.MemRef_call"}
!83 = distinct !{!83, !"polly.alias.scope.domain"}
!84 = !{!85, !86, !87, !88}
!85 = distinct !{!85, !83, !"polly.alias.scope.MemRef_call1"}
!86 = distinct !{!86, !83, !"polly.alias.scope.MemRef_call2"}
!87 = distinct !{!87, !83, !"polly.alias.scope.Packed_MemRef_call1"}
!88 = distinct !{!88, !83, !"polly.alias.scope.Packed_MemRef_call2"}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !81, !13}
!91 = distinct !{!91, !92, !"polly.alias.scope.MemRef_call"}
!92 = distinct !{!92, !"polly.alias.scope.domain"}
!93 = !{!94, !95, !96, !97}
!94 = distinct !{!94, !92, !"polly.alias.scope.MemRef_call1"}
!95 = distinct !{!95, !92, !"polly.alias.scope.MemRef_call2"}
!96 = distinct !{!96, !92, !"polly.alias.scope.Packed_MemRef_call1"}
!97 = distinct !{!97, !92, !"polly.alias.scope.Packed_MemRef_call2"}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !81, !13}
!100 = distinct !{!100, !101, !"polly.alias.scope.MemRef_call"}
!101 = distinct !{!101, !"polly.alias.scope.domain"}
!102 = !{!103, !104}
!103 = distinct !{!103, !101, !"polly.alias.scope.MemRef_call1"}
!104 = distinct !{!104, !101, !"polly.alias.scope.MemRef_call2"}
!105 = distinct !{!105, !13}
!106 = !{!103, !100}
!107 = distinct !{!107, !13}
!108 = !{!104, !100}
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
!127 = distinct !{!127, !13}
