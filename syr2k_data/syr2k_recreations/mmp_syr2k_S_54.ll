; ModuleID = 'syr2k_recreations//mmp_syr2k_S_54.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_54.c"
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
  %call768 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.cast.call1620 = bitcast i8* %call1 to double*
  %polly.access.call1629 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1629, %call2
  %polly.access.call2649 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2649, %call1
  %2 = or i1 %0, %1
  %polly.access.call669 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call669, %call2
  %4 = icmp ule i8* %polly.access.call2649, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call669, %call1
  %8 = icmp ule i8* %polly.access.call1629, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header754, label %for.cond1.preheader.i

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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv7.i, i64 %index984
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

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit815.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start443, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1339, label %vector.ph1265

vector.ph1265:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1264

vector.body1264:                                  ; preds = %vector.body1264, %vector.ph1265
  %index1266 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1267, %vector.body1264 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv21.i, i64 %index1266
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
  br i1 %cmp.n1269, label %for.inc6.i, label %for.body3.i46.preheader1339

for.body3.i46.preheader1339:                      ; preds = %for.body3.i46.preheader, %middle.block1262
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1262 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1339, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1339 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !44

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting444
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start268, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1285 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1285, label %for.body3.i60.preheader1337, label %vector.ph1286

vector.ph1286:                                    ; preds = %for.body3.i60.preheader
  %n.vec1288 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1284

vector.body1284:                                  ; preds = %vector.body1284, %vector.ph1286
  %index1289 = phi i64 [ 0, %vector.ph1286 ], [ %index.next1290, %vector.body1284 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv21.i52, i64 %index1289
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1293 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1293, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1290 = add i64 %index1289, 4
  %57 = icmp eq i64 %index.next1290, %n.vec1288
  br i1 %57, label %middle.block1282, label %vector.body1284, !llvm.loop !55

middle.block1282:                                 ; preds = %vector.body1284
  %cmp.n1292 = icmp eq i64 %indvars.iv21.i52, %n.vec1288
  br i1 %cmp.n1292, label %for.inc6.i63, label %for.body3.i60.preheader1337

for.body3.i60.preheader1337:                      ; preds = %for.body3.i60.preheader, %middle.block1282
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1288, %middle.block1282 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1337, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1337 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1282, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !44

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
  %min.iters.check1311 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1311, label %for.body3.i99.preheader1335, label %vector.ph1312

vector.ph1312:                                    ; preds = %for.body3.i99.preheader
  %n.vec1314 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1310

vector.body1310:                                  ; preds = %vector.body1310, %vector.ph1312
  %index1315 = phi i64 [ 0, %vector.ph1312 ], [ %index.next1316, %vector.body1310 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv21.i91, i64 %index1315
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1319 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1319, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1316 = add i64 %index1315, 4
  %68 = icmp eq i64 %index.next1316, %n.vec1314
  br i1 %68, label %middle.block1308, label %vector.body1310, !llvm.loop !57

middle.block1308:                                 ; preds = %vector.body1310
  %cmp.n1318 = icmp eq i64 %indvars.iv21.i91, %n.vec1314
  br i1 %cmp.n1318, label %for.inc6.i102, label %for.body3.i99.preheader1335

for.body3.i99.preheader1335:                      ; preds = %for.body3.i99.preheader, %middle.block1308
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1314, %middle.block1308 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1335, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1335 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1308, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !44

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.exiting
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call768, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* nonnull %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1323 = phi i64 [ %indvar.next1324, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1323, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1325 = icmp ult i64 %88, 4
  br i1 %min.iters.check1325, label %polly.loop_header191.preheader, label %vector.ph1326

vector.ph1326:                                    ; preds = %polly.loop_header
  %n.vec1328 = and i64 %88, -4
  br label %vector.body1322

vector.body1322:                                  ; preds = %vector.body1322, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1322 ]
  %90 = shl nuw nsw i64 %index1329, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1333, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1330 = add i64 %index1329, 4
  %95 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %95, label %middle.block1320, label %vector.body1322, !llvm.loop !69

middle.block1320:                                 ; preds = %vector.body1322
  %cmp.n1332 = icmp eq i64 %88, %n.vec1328
  br i1 %cmp.n1332, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1320
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1328, %middle.block1320 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1320
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond851.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1324 = add i64 %indvar1323, 1
  br i1 %exitcond851.not, label %polly.loop_header199.preheader, label %polly.loop_header

polly.loop_header199.preheader:                   ; preds = %polly.loop_exit193
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
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
  %exitcond850.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond850.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %indvars.iv846 = phi i64 [ 80, %polly.loop_header199.preheader ], [ %indvars.iv.next847, %polly.loop_exit207 ]
  %polly.indvar202 = phi i64 [ 0, %polly.loop_header199.preheader ], [ %polly.indvar_next203, %polly.loop_exit207 ]
  %97 = shl nuw nsw i64 %polly.indvar202, 2
  %98 = mul nsw i64 %polly.indvar202, -4
  %99 = add nuw nsw i64 %97, 4
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit236
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next847 = add nsw i64 %indvars.iv846, -4
  %exitcond849.not = icmp eq i64 %polly.indvar_next203, 20
  br i1 %exitcond849.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit236, %polly.loop_header199
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit236 ], [ 0, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit236 ], [ %97, %polly.loop_header199 ]
  %smin843 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 3)
  %100 = add nsw i64 %polly.indvar208, %98
  %.not = icmp ult i64 %polly.indvar208, %99
  %polly.access.mul.call1228 = mul nuw nsw i64 %polly.indvar208, 60
  br i1 %.not, label %polly.loop_header211.us, label %polly.loop_header211

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.merge.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.merge.us ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1.us = mul nuw nsw i64 %polly.indvar214.us, 80
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_header217.us, %polly.loop_header211.us
  %polly.indvar220.us = phi i64 [ 0, %polly.loop_header211.us ], [ %polly.indvar_next221.us, %polly.loop_header217.us ]
  %101 = add nuw nsw i64 %polly.indvar220.us, %97
  %polly.access.mul.call1224.us = mul nuw nsw i64 %101, 60
  %polly.access.add.call1225.us = add nuw nsw i64 %polly.access.mul.call1224.us, %polly.indvar214.us
  %polly.access.call1226.us = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1225.us
  %polly.access.call1226.load.us = load double, double* %polly.access.call1226.us, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1.us = add nuw nsw i64 %polly.indvar220.us, %polly.access.mul.Packed_MemRef_call1.us
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us
  store double %polly.access.call1226.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %exitcond841.not = icmp eq i64 %polly.indvar220.us, %smin843
  br i1 %exitcond841.not, label %polly.merge.us, label %polly.loop_header217.us

polly.merge.us:                                   ; preds = %polly.loop_header217.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond842.not = icmp eq i64 %polly.indvar_next215.us, 60
  br i1 %exitcond842.not, label %polly.loop_preheader235, label %polly.loop_header211.us

polly.loop_exit236:                               ; preds = %polly.loop_exit242
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond848.not = icmp eq i64 %indvars.iv.next, %indvars.iv846
  br i1 %exitcond848.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header211:                             ; preds = %polly.loop_header205, %polly.then
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.then ], [ 0, %polly.loop_header205 ]
  %polly.access.mul.Packed_MemRef_call1 = mul nuw nsw i64 %polly.indvar214, 80
  br label %polly.loop_header217

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %102 = add nuw nsw i64 %polly.indvar220, %97
  %polly.access.mul.call1224 = mul nuw nsw i64 %102, 60
  %polly.access.add.call1225 = add nuw nsw i64 %polly.access.mul.call1224, %polly.indvar214
  %polly.access.call1226 = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1225
  %polly.access.call1226.load = load double, double* %polly.access.call1226, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1 = add nuw nsw i64 %polly.indvar220, %polly.access.mul.Packed_MemRef_call1
  %polly.access.Packed_MemRef_call1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1
  store double %polly.access.call1226.load, double* %polly.access.Packed_MemRef_call1, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar220, %smin843
  br i1 %exitcond.not, label %polly.then, label %polly.loop_header217

polly.then:                                       ; preds = %polly.loop_header217
  %polly.access.add.call1229 = add nuw nsw i64 %polly.indvar214, %polly.access.mul.call1228
  %polly.access.call1230 = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1229
  %polly.access.call1230.load = load double, double* %polly.access.call1230, align 8, !alias.scope !66, !noalias !72
  %polly.access.add.Packed_MemRef_call1232 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1, %100
  %polly.access.Packed_MemRef_call1233 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1232
  store double %polly.access.call1230.load, double* %polly.access.Packed_MemRef_call1233, align 8
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next215, 60
  br i1 %exitcond839.not, label %polly.loop_preheader235, label %polly.loop_header211

polly.loop_header234:                             ; preds = %polly.loop_exit242, %polly.loop_preheader235
  %polly.indvar237 = phi i64 [ 0, %polly.loop_preheader235 ], [ %polly.indvar_next238, %polly.loop_exit242 ]
  %103 = shl nuw nsw i64 %polly.indvar237, 3
  %scevgep251 = getelementptr i8, i8* %scevgep250, i64 %103
  %scevgep251252 = bitcast i8* %scevgep251 to double*
  %scevgep254 = getelementptr i8, i8* %call2, i64 %103
  %_p_scalar_253.pre = load double, double* %scevgep251252, align 8, !alias.scope !67, !noalias !73
  %polly.access.mul.Packed_MemRef_call1246 = mul nuw nsw i64 %polly.indvar237, 80
  %polly.access.add.Packed_MemRef_call1259 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1246, %100
  %polly.access.Packed_MemRef_call1260 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1259
  %_p_scalar_261 = load double, double* %polly.access.Packed_MemRef_call1260, align 8
  br label %polly.loop_header240

polly.loop_exit242:                               ; preds = %polly.loop_header240
  %polly.indvar_next238 = add nuw nsw i64 %polly.indvar237, 1
  %exitcond845.not = icmp eq i64 %polly.indvar_next238, 60
  br i1 %exitcond845.not, label %polly.loop_exit236, label %polly.loop_header234

polly.loop_preheader235:                          ; preds = %polly.then, %polly.merge.us
  %104 = mul nuw nsw i64 %polly.indvar208, 480
  %scevgep250 = getelementptr i8, i8* %call2, i64 %104
  %105 = mul nuw nsw i64 %polly.indvar208, 640
  %scevgep262 = getelementptr i8, i8* %call, i64 %105
  br label %polly.loop_header234

polly.loop_header240:                             ; preds = %polly.loop_header240, %polly.loop_header234
  %polly.indvar243 = phi i64 [ 0, %polly.loop_header234 ], [ %polly.indvar_next244, %polly.loop_header240 ]
  %106 = add nuw nsw i64 %polly.indvar243, %97
  %polly.access.add.Packed_MemRef_call1247 = add nuw nsw i64 %polly.indvar243, %polly.access.mul.Packed_MemRef_call1246
  %polly.access.Packed_MemRef_call1248 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1247
  %_p_scalar_249 = load double, double* %polly.access.Packed_MemRef_call1248, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_253.pre, %_p_scalar_249
  %107 = mul nuw nsw i64 %106, 480
  %scevgep255 = getelementptr i8, i8* %scevgep254, i64 %107
  %scevgep255256 = bitcast i8* %scevgep255 to double*
  %_p_scalar_257 = load double, double* %scevgep255256, align 8, !alias.scope !67, !noalias !73
  %p_mul37.i114 = fmul fast double %_p_scalar_261, %_p_scalar_257
  %108 = shl i64 %106, 3
  %scevgep263 = getelementptr i8, i8* %scevgep262, i64 %108
  %scevgep263264 = bitcast i8* %scevgep263 to double*
  %_p_scalar_265 = load double, double* %scevgep263264, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_265
  store double %p_add42.i118, double* %scevgep263264, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next244 = add nuw nsw i64 %polly.indvar243, 1
  %exitcond844.not = icmp eq i64 %polly.indvar243, %smin843
  br i1 %exitcond844.not, label %polly.loop_exit242, label %polly.loop_header240

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header354

polly.exiting269:                                 ; preds = %polly.loop_exit378
  tail call void @free(i8* nonnull %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1297 = phi i64 [ %indvar.next1298, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %109 = add i64 %indvar1297, 1
  %110 = mul nuw nsw i64 %polly.indvar357, 640
  %scevgep366 = getelementptr i8, i8* %call, i64 %110
  %min.iters.check1299 = icmp ult i64 %109, 4
  br i1 %min.iters.check1299, label %polly.loop_header360.preheader, label %vector.ph1300

vector.ph1300:                                    ; preds = %polly.loop_header354
  %n.vec1302 = and i64 %109, -4
  br label %vector.body1296

vector.body1296:                                  ; preds = %vector.body1296, %vector.ph1300
  %index1303 = phi i64 [ 0, %vector.ph1300 ], [ %index.next1304, %vector.body1296 ]
  %111 = shl nuw nsw i64 %index1303, 3
  %112 = getelementptr i8, i8* %scevgep366, i64 %111
  %113 = bitcast i8* %112 to <4 x double>*
  %wide.load1307 = load <4 x double>, <4 x double>* %113, align 8, !alias.scope !74, !noalias !76
  %114 = fmul fast <4 x double> %wide.load1307, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %115 = bitcast i8* %112 to <4 x double>*
  store <4 x double> %114, <4 x double>* %115, align 8, !alias.scope !74, !noalias !76
  %index.next1304 = add i64 %index1303, 4
  %116 = icmp eq i64 %index.next1304, %n.vec1302
  br i1 %116, label %middle.block1294, label %vector.body1296, !llvm.loop !80

middle.block1294:                                 ; preds = %vector.body1296
  %cmp.n1306 = icmp eq i64 %109, %n.vec1302
  br i1 %cmp.n1306, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1294
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1302, %middle.block1294 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1294
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next358, 80
  %indvar.next1298 = add i64 %indvar1297, 1
  br i1 %exitcond868.not, label %polly.loop_header370.preheader, label %polly.loop_header354

polly.loop_header370.preheader:                   ; preds = %polly.loop_exit362
  %Packed_MemRef_call1271 = bitcast i8* %malloccall270 to double*
  br label %polly.loop_header370

polly.loop_header360:                             ; preds = %polly.loop_header360.preheader, %polly.loop_header360
  %polly.indvar363 = phi i64 [ %polly.indvar_next364, %polly.loop_header360 ], [ %polly.indvar363.ph, %polly.loop_header360.preheader ]
  %117 = shl nuw nsw i64 %polly.indvar363, 3
  %scevgep367 = getelementptr i8, i8* %scevgep366, i64 %117
  %scevgep367368 = bitcast i8* %scevgep367 to double*
  %_p_scalar_369 = load double, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_369, 1.200000e+00
  store double %p_mul.i57, double* %scevgep367368, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next364 = add nuw nsw i64 %polly.indvar363, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond867.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !81

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit378
  %indvars.iv863 = phi i64 [ 80, %polly.loop_header370.preheader ], [ %indvars.iv.next864, %polly.loop_exit378 ]
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header370.preheader ], [ %polly.indvar_next374, %polly.loop_exit378 ]
  %118 = shl nuw nsw i64 %polly.indvar373, 2
  %119 = mul nsw i64 %polly.indvar373, -4
  %120 = add nuw nsw i64 %118, 4
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_exit411
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %indvars.iv.next864 = add nsw i64 %indvars.iv863, -4
  %exitcond866.not = icmp eq i64 %polly.indvar_next374, 20
  br i1 %exitcond866.not, label %polly.exiting269, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_exit411, %polly.loop_header370
  %indvars.iv852 = phi i64 [ %indvars.iv.next853, %polly.loop_exit411 ], [ 0, %polly.loop_header370 ]
  %polly.indvar379 = phi i64 [ %polly.indvar_next380, %polly.loop_exit411 ], [ %118, %polly.loop_header370 ]
  %smin860 = call i64 @llvm.smin.i64(i64 %indvars.iv852, i64 3)
  %121 = add nsw i64 %polly.indvar379, %119
  %.not822 = icmp ult i64 %polly.indvar379, %120
  %polly.access.mul.call1403 = mul nuw nsw i64 %polly.indvar379, 60
  br i1 %.not822, label %polly.loop_header382.us, label %polly.loop_header382

polly.loop_header382.us:                          ; preds = %polly.loop_header376, %polly.merge399.us
  %polly.indvar385.us = phi i64 [ %polly.indvar_next386.us, %polly.merge399.us ], [ 0, %polly.loop_header376 ]
  %polly.access.mul.Packed_MemRef_call1271.us = mul nuw nsw i64 %polly.indvar385.us, 80
  br label %polly.loop_header388.us

polly.loop_header388.us:                          ; preds = %polly.loop_header388.us, %polly.loop_header382.us
  %polly.indvar391.us = phi i64 [ 0, %polly.loop_header382.us ], [ %polly.indvar_next392.us, %polly.loop_header388.us ]
  %122 = add nuw nsw i64 %polly.indvar391.us, %118
  %polly.access.mul.call1395.us = mul nuw nsw i64 %122, 60
  %polly.access.add.call1396.us = add nuw nsw i64 %polly.access.mul.call1395.us, %polly.indvar385.us
  %polly.access.call1397.us = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1396.us
  %polly.access.call1397.load.us = load double, double* %polly.access.call1397.us, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1271.us = add nuw nsw i64 %polly.indvar391.us, %polly.access.mul.Packed_MemRef_call1271.us
  %polly.access.Packed_MemRef_call1271.us = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271.us
  store double %polly.access.call1397.load.us, double* %polly.access.Packed_MemRef_call1271.us, align 8
  %polly.indvar_next392.us = add nuw nsw i64 %polly.indvar391.us, 1
  %exitcond858.not = icmp eq i64 %polly.indvar391.us, %smin860
  br i1 %exitcond858.not, label %polly.merge399.us, label %polly.loop_header388.us

polly.merge399.us:                                ; preds = %polly.loop_header388.us
  %polly.indvar_next386.us = add nuw nsw i64 %polly.indvar385.us, 1
  %exitcond859.not = icmp eq i64 %polly.indvar_next386.us, 60
  br i1 %exitcond859.not, label %polly.loop_preheader410, label %polly.loop_header382.us

polly.loop_exit411:                               ; preds = %polly.loop_exit417
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %indvars.iv.next853 = add nuw nsw i64 %indvars.iv852, 1
  %exitcond865.not = icmp eq i64 %indvars.iv.next853, %indvars.iv863
  br i1 %exitcond865.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header382:                             ; preds = %polly.loop_header376, %polly.then400
  %polly.indvar385 = phi i64 [ %polly.indvar_next386, %polly.then400 ], [ 0, %polly.loop_header376 ]
  %polly.access.mul.Packed_MemRef_call1271 = mul nuw nsw i64 %polly.indvar385, 80
  br label %polly.loop_header388

polly.loop_header388:                             ; preds = %polly.loop_header388, %polly.loop_header382
  %polly.indvar391 = phi i64 [ 0, %polly.loop_header382 ], [ %polly.indvar_next392, %polly.loop_header388 ]
  %123 = add nuw nsw i64 %polly.indvar391, %118
  %polly.access.mul.call1395 = mul nuw nsw i64 %123, 60
  %polly.access.add.call1396 = add nuw nsw i64 %polly.access.mul.call1395, %polly.indvar385
  %polly.access.call1397 = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1396
  %polly.access.call1397.load = load double, double* %polly.access.call1397, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1271 = add nuw nsw i64 %polly.indvar391, %polly.access.mul.Packed_MemRef_call1271
  %polly.access.Packed_MemRef_call1271 = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271
  store double %polly.access.call1397.load, double* %polly.access.Packed_MemRef_call1271, align 8
  %polly.indvar_next392 = add nuw nsw i64 %polly.indvar391, 1
  %exitcond855.not = icmp eq i64 %polly.indvar391, %smin860
  br i1 %exitcond855.not, label %polly.then400, label %polly.loop_header388

polly.then400:                                    ; preds = %polly.loop_header388
  %polly.access.add.call1404 = add nuw nsw i64 %polly.indvar385, %polly.access.mul.call1403
  %polly.access.call1405 = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1404
  %polly.access.call1405.load = load double, double* %polly.access.call1405, align 8, !alias.scope !77, !noalias !82
  %polly.access.add.Packed_MemRef_call1271407 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1271, %121
  %polly.access.Packed_MemRef_call1271408 = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271407
  store double %polly.access.call1405.load, double* %polly.access.Packed_MemRef_call1271408, align 8
  %polly.indvar_next386 = add nuw nsw i64 %polly.indvar385, 1
  %exitcond856.not = icmp eq i64 %polly.indvar_next386, 60
  br i1 %exitcond856.not, label %polly.loop_preheader410, label %polly.loop_header382

polly.loop_header409:                             ; preds = %polly.loop_exit417, %polly.loop_preheader410
  %polly.indvar412 = phi i64 [ 0, %polly.loop_preheader410 ], [ %polly.indvar_next413, %polly.loop_exit417 ]
  %124 = shl nuw nsw i64 %polly.indvar412, 3
  %scevgep426 = getelementptr i8, i8* %scevgep425, i64 %124
  %scevgep426427 = bitcast i8* %scevgep426 to double*
  %scevgep429 = getelementptr i8, i8* %call2, i64 %124
  %_p_scalar_428.pre = load double, double* %scevgep426427, align 8, !alias.scope !78, !noalias !83
  %polly.access.mul.Packed_MemRef_call1271421 = mul nuw nsw i64 %polly.indvar412, 80
  %polly.access.add.Packed_MemRef_call1271434 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1271421, %121
  %polly.access.Packed_MemRef_call1271435 = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271434
  %_p_scalar_436 = load double, double* %polly.access.Packed_MemRef_call1271435, align 8
  br label %polly.loop_header415

polly.loop_exit417:                               ; preds = %polly.loop_header415
  %polly.indvar_next413 = add nuw nsw i64 %polly.indvar412, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next413, 60
  br i1 %exitcond862.not, label %polly.loop_exit411, label %polly.loop_header409

polly.loop_preheader410:                          ; preds = %polly.then400, %polly.merge399.us
  %125 = mul nuw nsw i64 %polly.indvar379, 480
  %scevgep425 = getelementptr i8, i8* %call2, i64 %125
  %126 = mul nuw nsw i64 %polly.indvar379, 640
  %scevgep437 = getelementptr i8, i8* %call, i64 %126
  br label %polly.loop_header409

polly.loop_header415:                             ; preds = %polly.loop_header415, %polly.loop_header409
  %polly.indvar418 = phi i64 [ 0, %polly.loop_header409 ], [ %polly.indvar_next419, %polly.loop_header415 ]
  %127 = add nuw nsw i64 %polly.indvar418, %118
  %polly.access.add.Packed_MemRef_call1271422 = add nuw nsw i64 %polly.indvar418, %polly.access.mul.Packed_MemRef_call1271421
  %polly.access.Packed_MemRef_call1271423 = getelementptr double, double* %Packed_MemRef_call1271, i64 %polly.access.add.Packed_MemRef_call1271422
  %_p_scalar_424 = load double, double* %polly.access.Packed_MemRef_call1271423, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_428.pre, %_p_scalar_424
  %128 = mul nuw nsw i64 %127, 480
  %scevgep430 = getelementptr i8, i8* %scevgep429, i64 %128
  %scevgep430431 = bitcast i8* %scevgep430 to double*
  %_p_scalar_432 = load double, double* %scevgep430431, align 8, !alias.scope !78, !noalias !83
  %p_mul37.i75 = fmul fast double %_p_scalar_436, %_p_scalar_432
  %129 = shl i64 %127, 3
  %scevgep438 = getelementptr i8, i8* %scevgep437, i64 %129
  %scevgep438439 = bitcast i8* %scevgep438 to double*
  %_p_scalar_440 = load double, double* %scevgep438439, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_440
  store double %p_add42.i79, double* %scevgep438439, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next419 = add nuw nsw i64 %polly.indvar418, 1
  %exitcond861.not = icmp eq i64 %polly.indvar418, %smin860
  br i1 %exitcond861.not, label %polly.loop_exit417, label %polly.loop_header415

polly.start443:                                   ; preds = %init_array.exit
  %malloccall445 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header529

polly.exiting444:                                 ; preds = %polly.loop_exit553
  tail call void @free(i8* nonnull %malloccall445)
  br label %kernel_syr2k.exit

polly.loop_header529:                             ; preds = %polly.loop_exit537, %polly.start443
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit537 ], [ 0, %polly.start443 ]
  %polly.indvar532 = phi i64 [ %polly.indvar_next533, %polly.loop_exit537 ], [ 1, %polly.start443 ]
  %130 = add i64 %indvar, 1
  %131 = mul nuw nsw i64 %polly.indvar532, 640
  %scevgep541 = getelementptr i8, i8* %call, i64 %131
  %min.iters.check1273 = icmp ult i64 %130, 4
  br i1 %min.iters.check1273, label %polly.loop_header535.preheader, label %vector.ph1274

vector.ph1274:                                    ; preds = %polly.loop_header529
  %n.vec1276 = and i64 %130, -4
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %vector.ph1274
  %index1277 = phi i64 [ 0, %vector.ph1274 ], [ %index.next1278, %vector.body1272 ]
  %132 = shl nuw nsw i64 %index1277, 3
  %133 = getelementptr i8, i8* %scevgep541, i64 %132
  %134 = bitcast i8* %133 to <4 x double>*
  %wide.load1281 = load <4 x double>, <4 x double>* %134, align 8, !alias.scope !84, !noalias !86
  %135 = fmul fast <4 x double> %wide.load1281, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %136 = bitcast i8* %133 to <4 x double>*
  store <4 x double> %135, <4 x double>* %136, align 8, !alias.scope !84, !noalias !86
  %index.next1278 = add i64 %index1277, 4
  %137 = icmp eq i64 %index.next1278, %n.vec1276
  br i1 %137, label %middle.block1270, label %vector.body1272, !llvm.loop !90

middle.block1270:                                 ; preds = %vector.body1272
  %cmp.n1280 = icmp eq i64 %130, %n.vec1276
  br i1 %cmp.n1280, label %polly.loop_exit537, label %polly.loop_header535.preheader

polly.loop_header535.preheader:                   ; preds = %polly.loop_header529, %middle.block1270
  %polly.indvar538.ph = phi i64 [ 0, %polly.loop_header529 ], [ %n.vec1276, %middle.block1270 ]
  br label %polly.loop_header535

polly.loop_exit537:                               ; preds = %polly.loop_header535, %middle.block1270
  %polly.indvar_next533 = add nuw nsw i64 %polly.indvar532, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next533, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond885.not, label %polly.loop_header545.preheader, label %polly.loop_header529

polly.loop_header545.preheader:                   ; preds = %polly.loop_exit537
  %Packed_MemRef_call1446 = bitcast i8* %malloccall445 to double*
  br label %polly.loop_header545

polly.loop_header535:                             ; preds = %polly.loop_header535.preheader, %polly.loop_header535
  %polly.indvar538 = phi i64 [ %polly.indvar_next539, %polly.loop_header535 ], [ %polly.indvar538.ph, %polly.loop_header535.preheader ]
  %138 = shl nuw nsw i64 %polly.indvar538, 3
  %scevgep542 = getelementptr i8, i8* %scevgep541, i64 %138
  %scevgep542543 = bitcast i8* %scevgep542 to double*
  %_p_scalar_544 = load double, double* %scevgep542543, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_544, 1.200000e+00
  store double %p_mul.i, double* %scevgep542543, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next539 = add nuw nsw i64 %polly.indvar538, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next539, %polly.indvar532
  br i1 %exitcond884.not, label %polly.loop_exit537, label %polly.loop_header535, !llvm.loop !91

polly.loop_header545:                             ; preds = %polly.loop_header545.preheader, %polly.loop_exit553
  %indvars.iv880 = phi i64 [ 80, %polly.loop_header545.preheader ], [ %indvars.iv.next881, %polly.loop_exit553 ]
  %polly.indvar548 = phi i64 [ 0, %polly.loop_header545.preheader ], [ %polly.indvar_next549, %polly.loop_exit553 ]
  %139 = shl nuw nsw i64 %polly.indvar548, 2
  %140 = mul nsw i64 %polly.indvar548, -4
  %141 = add nuw nsw i64 %139, 4
  br label %polly.loop_header551

polly.loop_exit553:                               ; preds = %polly.loop_exit586
  %polly.indvar_next549 = add nuw nsw i64 %polly.indvar548, 1
  %indvars.iv.next881 = add nsw i64 %indvars.iv880, -4
  %exitcond883.not = icmp eq i64 %polly.indvar_next549, 20
  br i1 %exitcond883.not, label %polly.exiting444, label %polly.loop_header545

polly.loop_header551:                             ; preds = %polly.loop_exit586, %polly.loop_header545
  %indvars.iv869 = phi i64 [ %indvars.iv.next870, %polly.loop_exit586 ], [ 0, %polly.loop_header545 ]
  %polly.indvar554 = phi i64 [ %polly.indvar_next555, %polly.loop_exit586 ], [ %139, %polly.loop_header545 ]
  %smin877 = call i64 @llvm.smin.i64(i64 %indvars.iv869, i64 3)
  %142 = add nsw i64 %polly.indvar554, %140
  %.not823 = icmp ult i64 %polly.indvar554, %141
  %polly.access.mul.call1578 = mul nuw nsw i64 %polly.indvar554, 60
  br i1 %.not823, label %polly.loop_header557.us, label %polly.loop_header557

polly.loop_header557.us:                          ; preds = %polly.loop_header551, %polly.merge574.us
  %polly.indvar560.us = phi i64 [ %polly.indvar_next561.us, %polly.merge574.us ], [ 0, %polly.loop_header551 ]
  %polly.access.mul.Packed_MemRef_call1446.us = mul nuw nsw i64 %polly.indvar560.us, 80
  br label %polly.loop_header563.us

polly.loop_header563.us:                          ; preds = %polly.loop_header563.us, %polly.loop_header557.us
  %polly.indvar566.us = phi i64 [ 0, %polly.loop_header557.us ], [ %polly.indvar_next567.us, %polly.loop_header563.us ]
  %143 = add nuw nsw i64 %polly.indvar566.us, %139
  %polly.access.mul.call1570.us = mul nuw nsw i64 %143, 60
  %polly.access.add.call1571.us = add nuw nsw i64 %polly.access.mul.call1570.us, %polly.indvar560.us
  %polly.access.call1572.us = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1571.us
  %polly.access.call1572.load.us = load double, double* %polly.access.call1572.us, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1446.us = add nuw nsw i64 %polly.indvar566.us, %polly.access.mul.Packed_MemRef_call1446.us
  %polly.access.Packed_MemRef_call1446.us = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446.us
  store double %polly.access.call1572.load.us, double* %polly.access.Packed_MemRef_call1446.us, align 8
  %polly.indvar_next567.us = add nuw nsw i64 %polly.indvar566.us, 1
  %exitcond875.not = icmp eq i64 %polly.indvar566.us, %smin877
  br i1 %exitcond875.not, label %polly.merge574.us, label %polly.loop_header563.us

polly.merge574.us:                                ; preds = %polly.loop_header563.us
  %polly.indvar_next561.us = add nuw nsw i64 %polly.indvar560.us, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next561.us, 60
  br i1 %exitcond876.not, label %polly.loop_preheader585, label %polly.loop_header557.us

polly.loop_exit586:                               ; preds = %polly.loop_exit592
  %polly.indvar_next555 = add nuw nsw i64 %polly.indvar554, 1
  %indvars.iv.next870 = add nuw nsw i64 %indvars.iv869, 1
  %exitcond882.not = icmp eq i64 %indvars.iv.next870, %indvars.iv880
  br i1 %exitcond882.not, label %polly.loop_exit553, label %polly.loop_header551

polly.loop_header557:                             ; preds = %polly.loop_header551, %polly.then575
  %polly.indvar560 = phi i64 [ %polly.indvar_next561, %polly.then575 ], [ 0, %polly.loop_header551 ]
  %polly.access.mul.Packed_MemRef_call1446 = mul nuw nsw i64 %polly.indvar560, 80
  br label %polly.loop_header563

polly.loop_header563:                             ; preds = %polly.loop_header563, %polly.loop_header557
  %polly.indvar566 = phi i64 [ 0, %polly.loop_header557 ], [ %polly.indvar_next567, %polly.loop_header563 ]
  %144 = add nuw nsw i64 %polly.indvar566, %139
  %polly.access.mul.call1570 = mul nuw nsw i64 %144, 60
  %polly.access.add.call1571 = add nuw nsw i64 %polly.access.mul.call1570, %polly.indvar560
  %polly.access.call1572 = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1571
  %polly.access.call1572.load = load double, double* %polly.access.call1572, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1446 = add nuw nsw i64 %polly.indvar566, %polly.access.mul.Packed_MemRef_call1446
  %polly.access.Packed_MemRef_call1446 = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446
  store double %polly.access.call1572.load, double* %polly.access.Packed_MemRef_call1446, align 8
  %polly.indvar_next567 = add nuw nsw i64 %polly.indvar566, 1
  %exitcond872.not = icmp eq i64 %polly.indvar566, %smin877
  br i1 %exitcond872.not, label %polly.then575, label %polly.loop_header563

polly.then575:                                    ; preds = %polly.loop_header563
  %polly.access.add.call1579 = add nuw nsw i64 %polly.indvar560, %polly.access.mul.call1578
  %polly.access.call1580 = getelementptr double, double* %polly.access.cast.call1620, i64 %polly.access.add.call1579
  %polly.access.call1580.load = load double, double* %polly.access.call1580, align 8, !alias.scope !87, !noalias !92
  %polly.access.add.Packed_MemRef_call1446582 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1446, %142
  %polly.access.Packed_MemRef_call1446583 = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446582
  store double %polly.access.call1580.load, double* %polly.access.Packed_MemRef_call1446583, align 8
  %polly.indvar_next561 = add nuw nsw i64 %polly.indvar560, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next561, 60
  br i1 %exitcond873.not, label %polly.loop_preheader585, label %polly.loop_header557

polly.loop_header584:                             ; preds = %polly.loop_exit592, %polly.loop_preheader585
  %polly.indvar587 = phi i64 [ 0, %polly.loop_preheader585 ], [ %polly.indvar_next588, %polly.loop_exit592 ]
  %145 = shl nuw nsw i64 %polly.indvar587, 3
  %scevgep601 = getelementptr i8, i8* %scevgep600, i64 %145
  %scevgep601602 = bitcast i8* %scevgep601 to double*
  %scevgep604 = getelementptr i8, i8* %call2, i64 %145
  %_p_scalar_603.pre = load double, double* %scevgep601602, align 8, !alias.scope !88, !noalias !93
  %polly.access.mul.Packed_MemRef_call1446596 = mul nuw nsw i64 %polly.indvar587, 80
  %polly.access.add.Packed_MemRef_call1446609 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1446596, %142
  %polly.access.Packed_MemRef_call1446610 = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446609
  %_p_scalar_611 = load double, double* %polly.access.Packed_MemRef_call1446610, align 8
  br label %polly.loop_header590

polly.loop_exit592:                               ; preds = %polly.loop_header590
  %polly.indvar_next588 = add nuw nsw i64 %polly.indvar587, 1
  %exitcond879.not = icmp eq i64 %polly.indvar_next588, 60
  br i1 %exitcond879.not, label %polly.loop_exit586, label %polly.loop_header584

polly.loop_preheader585:                          ; preds = %polly.then575, %polly.merge574.us
  %146 = mul nuw nsw i64 %polly.indvar554, 480
  %scevgep600 = getelementptr i8, i8* %call2, i64 %146
  %147 = mul nuw nsw i64 %polly.indvar554, 640
  %scevgep612 = getelementptr i8, i8* %call, i64 %147
  br label %polly.loop_header584

polly.loop_header590:                             ; preds = %polly.loop_header590, %polly.loop_header584
  %polly.indvar593 = phi i64 [ 0, %polly.loop_header584 ], [ %polly.indvar_next594, %polly.loop_header590 ]
  %148 = add nuw nsw i64 %polly.indvar593, %139
  %polly.access.add.Packed_MemRef_call1446597 = add nuw nsw i64 %polly.indvar593, %polly.access.mul.Packed_MemRef_call1446596
  %polly.access.Packed_MemRef_call1446598 = getelementptr double, double* %Packed_MemRef_call1446, i64 %polly.access.add.Packed_MemRef_call1446597
  %_p_scalar_599 = load double, double* %polly.access.Packed_MemRef_call1446598, align 8
  %p_mul27.i = fmul fast double %_p_scalar_603.pre, %_p_scalar_599
  %149 = mul nuw nsw i64 %148, 480
  %scevgep605 = getelementptr i8, i8* %scevgep604, i64 %149
  %scevgep605606 = bitcast i8* %scevgep605 to double*
  %_p_scalar_607 = load double, double* %scevgep605606, align 8, !alias.scope !88, !noalias !93
  %p_mul37.i = fmul fast double %_p_scalar_611, %_p_scalar_607
  %150 = shl i64 %148, 3
  %scevgep613 = getelementptr i8, i8* %scevgep612, i64 %150
  %scevgep613614 = bitcast i8* %scevgep613 to double*
  %_p_scalar_615 = load double, double* %scevgep613614, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_615
  store double %p_add42.i, double* %scevgep613614, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next594 = add nuw nsw i64 %polly.indvar593, 1
  %exitcond878.not = icmp eq i64 %polly.indvar593, %smin877
  br i1 %exitcond878.not, label %polly.loop_exit592, label %polly.loop_header590

polly.loop_header754:                             ; preds = %entry, %polly.loop_exit762
  %polly.indvar757 = phi i64 [ %polly.indvar_next758, %polly.loop_exit762 ], [ 0, %entry ]
  %151 = mul nuw nsw i64 %polly.indvar757, 640
  %152 = trunc i64 %polly.indvar757 to i32
  %broadcast.splatinsert1004 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat1005 = shufflevector <4 x i32> %broadcast.splatinsert1004, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body994

vector.body994:                                   ; preds = %vector.body994, %polly.loop_header754
  %index996 = phi i64 [ 0, %polly.loop_header754 ], [ %index.next997, %vector.body994 ]
  %vec.ind1002 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header754 ], [ %vec.ind.next1003, %vector.body994 ]
  %153 = mul <4 x i32> %vec.ind1002, %broadcast.splat1005
  %154 = add <4 x i32> %153, <i32 3, i32 3, i32 3, i32 3>
  %155 = urem <4 x i32> %154, <i32 80, i32 80, i32 80, i32 80>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index996, 3
  %159 = add nuw nsw i64 %158, %151
  %160 = getelementptr i8, i8* %call, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !94, !noalias !96
  %index.next997 = add i64 %index996, 4
  %vec.ind.next1003 = add <4 x i32> %vec.ind1002, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next997, 32
  br i1 %162, label %polly.loop_exit762, label %vector.body994, !llvm.loop !99

polly.loop_exit762:                               ; preds = %vector.body994
  %polly.indvar_next758 = add nuw nsw i64 %polly.indvar757, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next758, 32
  br i1 %exitcond905.not, label %polly.loop_header754.1, label %polly.loop_header754

polly.loop_header781:                             ; preds = %polly.loop_exit762.2.2, %polly.loop_exit789
  %polly.indvar784 = phi i64 [ %polly.indvar_next785, %polly.loop_exit789 ], [ 0, %polly.loop_exit762.2.2 ]
  %163 = mul nuw nsw i64 %polly.indvar784, 480
  %164 = trunc i64 %polly.indvar784 to i32
  %broadcast.splatinsert1118 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1119 = shufflevector <4 x i32> %broadcast.splatinsert1118, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1108

vector.body1108:                                  ; preds = %vector.body1108, %polly.loop_header781
  %index1110 = phi i64 [ 0, %polly.loop_header781 ], [ %index.next1111, %vector.body1108 ]
  %vec.ind1116 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header781 ], [ %vec.ind.next1117, %vector.body1108 ]
  %165 = mul <4 x i32> %vec.ind1116, %broadcast.splat1119
  %166 = add <4 x i32> %165, <i32 2, i32 2, i32 2, i32 2>
  %167 = urem <4 x i32> %166, <i32 60, i32 60, i32 60, i32 60>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %170 = shl i64 %index1110, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call2, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !98, !noalias !100
  %index.next1111 = add i64 %index1110, 4
  %vec.ind.next1117 = add <4 x i32> %vec.ind1116, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1111, 32
  br i1 %174, label %polly.loop_exit789, label %vector.body1108, !llvm.loop !101

polly.loop_exit789:                               ; preds = %vector.body1108
  %polly.indvar_next785 = add nuw nsw i64 %polly.indvar784, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next785, 32
  br i1 %exitcond896.not, label %polly.loop_header781.1, label %polly.loop_header781

polly.loop_header807:                             ; preds = %polly.loop_exit789.1.2, %polly.loop_exit815
  %polly.indvar810 = phi i64 [ %polly.indvar_next811, %polly.loop_exit815 ], [ 0, %polly.loop_exit789.1.2 ]
  %175 = mul nuw nsw i64 %polly.indvar810, 480
  %176 = trunc i64 %polly.indvar810 to i32
  %broadcast.splatinsert1196 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat1197 = shufflevector <4 x i32> %broadcast.splatinsert1196, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1186

vector.body1186:                                  ; preds = %vector.body1186, %polly.loop_header807
  %index1188 = phi i64 [ 0, %polly.loop_header807 ], [ %index.next1189, %vector.body1186 ]
  %vec.ind1194 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header807 ], [ %vec.ind.next1195, %vector.body1186 ]
  %177 = mul <4 x i32> %vec.ind1194, %broadcast.splat1197
  %178 = add <4 x i32> %177, <i32 1, i32 1, i32 1, i32 1>
  %179 = urem <4 x i32> %178, <i32 80, i32 80, i32 80, i32 80>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %182 = shl i64 %index1188, 3
  %183 = add i64 %182, %175
  %184 = getelementptr i8, i8* %call1, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !97, !noalias !102
  %index.next1189 = add i64 %index1188, 4
  %vec.ind.next1195 = add <4 x i32> %vec.ind1194, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next1189, 32
  br i1 %186, label %polly.loop_exit815, label %vector.body1186, !llvm.loop !103

polly.loop_exit815:                               ; preds = %vector.body1186
  %polly.indvar_next811 = add nuw nsw i64 %polly.indvar810, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next811, 32
  br i1 %exitcond890.not, label %polly.loop_header807.1, label %polly.loop_header807

polly.loop_header807.1:                           ; preds = %polly.loop_exit815, %polly.loop_exit815.1
  %polly.indvar810.1 = phi i64 [ %polly.indvar_next811.1, %polly.loop_exit815.1 ], [ 0, %polly.loop_exit815 ]
  %187 = mul nuw nsw i64 %polly.indvar810.1, 480
  %188 = trunc i64 %polly.indvar810.1 to i32
  %broadcast.splatinsert1208 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat1209 = shufflevector <4 x i32> %broadcast.splatinsert1208, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1200

vector.body1200:                                  ; preds = %vector.body1200, %polly.loop_header807.1
  %index1202 = phi i64 [ 0, %polly.loop_header807.1 ], [ %index.next1203, %vector.body1200 ]
  %vec.ind1206 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.1 ], [ %vec.ind.next1207, %vector.body1200 ]
  %189 = add nuw nsw <4 x i64> %vec.ind1206, <i64 32, i64 32, i64 32, i64 32>
  %190 = trunc <4 x i64> %189 to <4 x i32>
  %191 = mul <4 x i32> %broadcast.splat1209, %190
  %192 = add <4 x i32> %191, <i32 1, i32 1, i32 1, i32 1>
  %193 = urem <4 x i32> %192, <i32 80, i32 80, i32 80, i32 80>
  %194 = sitofp <4 x i32> %193 to <4 x double>
  %195 = fmul fast <4 x double> %194, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %196 = extractelement <4 x i64> %189, i32 0
  %197 = shl i64 %196, 3
  %198 = add i64 %197, %187
  %199 = getelementptr i8, i8* %call1, i64 %198
  %200 = bitcast i8* %199 to <4 x double>*
  store <4 x double> %195, <4 x double>* %200, align 8, !alias.scope !97, !noalias !102
  %index.next1203 = add i64 %index1202, 4
  %vec.ind.next1207 = add <4 x i64> %vec.ind1206, <i64 4, i64 4, i64 4, i64 4>
  %201 = icmp eq i64 %index.next1203, 28
  br i1 %201, label %polly.loop_exit815.1, label %vector.body1200, !llvm.loop !104

polly.loop_exit815.1:                             ; preds = %vector.body1200
  %polly.indvar_next811.1 = add nuw nsw i64 %polly.indvar810.1, 1
  %exitcond890.1.not = icmp eq i64 %polly.indvar_next811.1, 32
  br i1 %exitcond890.1.not, label %polly.loop_header807.1913, label %polly.loop_header807.1

polly.loop_header807.1913:                        ; preds = %polly.loop_exit815.1, %polly.loop_exit815.1924
  %polly.indvar810.1912 = phi i64 [ %polly.indvar_next811.1922, %polly.loop_exit815.1924 ], [ 0, %polly.loop_exit815.1 ]
  %202 = add nuw nsw i64 %polly.indvar810.1912, 32
  %203 = mul nuw nsw i64 %202, 480
  %204 = trunc i64 %202 to i32
  %broadcast.splatinsert1222 = insertelement <4 x i32> poison, i32 %204, i32 0
  %broadcast.splat1223 = shufflevector <4 x i32> %broadcast.splatinsert1222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1212

vector.body1212:                                  ; preds = %vector.body1212, %polly.loop_header807.1913
  %index1214 = phi i64 [ 0, %polly.loop_header807.1913 ], [ %index.next1215, %vector.body1212 ]
  %vec.ind1220 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header807.1913 ], [ %vec.ind.next1221, %vector.body1212 ]
  %205 = mul <4 x i32> %vec.ind1220, %broadcast.splat1223
  %206 = add <4 x i32> %205, <i32 1, i32 1, i32 1, i32 1>
  %207 = urem <4 x i32> %206, <i32 80, i32 80, i32 80, i32 80>
  %208 = sitofp <4 x i32> %207 to <4 x double>
  %209 = fmul fast <4 x double> %208, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %210 = shl i64 %index1214, 3
  %211 = add i64 %210, %203
  %212 = getelementptr i8, i8* %call1, i64 %211
  %213 = bitcast i8* %212 to <4 x double>*
  store <4 x double> %209, <4 x double>* %213, align 8, !alias.scope !97, !noalias !102
  %index.next1215 = add i64 %index1214, 4
  %vec.ind.next1221 = add <4 x i32> %vec.ind1220, <i32 4, i32 4, i32 4, i32 4>
  %214 = icmp eq i64 %index.next1215, 32
  br i1 %214, label %polly.loop_exit815.1924, label %vector.body1212, !llvm.loop !105

polly.loop_exit815.1924:                          ; preds = %vector.body1212
  %polly.indvar_next811.1922 = add nuw nsw i64 %polly.indvar810.1912, 1
  %exitcond890.1923.not = icmp eq i64 %polly.indvar_next811.1922, 32
  br i1 %exitcond890.1923.not, label %polly.loop_header807.1.1, label %polly.loop_header807.1913

polly.loop_header807.1.1:                         ; preds = %polly.loop_exit815.1924, %polly.loop_exit815.1.1
  %polly.indvar810.1.1 = phi i64 [ %polly.indvar_next811.1.1, %polly.loop_exit815.1.1 ], [ 0, %polly.loop_exit815.1924 ]
  %215 = add nuw nsw i64 %polly.indvar810.1.1, 32
  %216 = mul nuw nsw i64 %215, 480
  %217 = trunc i64 %215 to i32
  %broadcast.splatinsert1234 = insertelement <4 x i32> poison, i32 %217, i32 0
  %broadcast.splat1235 = shufflevector <4 x i32> %broadcast.splatinsert1234, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1226

vector.body1226:                                  ; preds = %vector.body1226, %polly.loop_header807.1.1
  %index1228 = phi i64 [ 0, %polly.loop_header807.1.1 ], [ %index.next1229, %vector.body1226 ]
  %vec.ind1232 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.1.1 ], [ %vec.ind.next1233, %vector.body1226 ]
  %218 = add nuw nsw <4 x i64> %vec.ind1232, <i64 32, i64 32, i64 32, i64 32>
  %219 = trunc <4 x i64> %218 to <4 x i32>
  %220 = mul <4 x i32> %broadcast.splat1235, %219
  %221 = add <4 x i32> %220, <i32 1, i32 1, i32 1, i32 1>
  %222 = urem <4 x i32> %221, <i32 80, i32 80, i32 80, i32 80>
  %223 = sitofp <4 x i32> %222 to <4 x double>
  %224 = fmul fast <4 x double> %223, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %225 = extractelement <4 x i64> %218, i32 0
  %226 = shl i64 %225, 3
  %227 = add i64 %226, %216
  %228 = getelementptr i8, i8* %call1, i64 %227
  %229 = bitcast i8* %228 to <4 x double>*
  store <4 x double> %224, <4 x double>* %229, align 8, !alias.scope !97, !noalias !102
  %index.next1229 = add i64 %index1228, 4
  %vec.ind.next1233 = add <4 x i64> %vec.ind1232, <i64 4, i64 4, i64 4, i64 4>
  %230 = icmp eq i64 %index.next1229, 28
  br i1 %230, label %polly.loop_exit815.1.1, label %vector.body1226, !llvm.loop !106

polly.loop_exit815.1.1:                           ; preds = %vector.body1226
  %polly.indvar_next811.1.1 = add nuw nsw i64 %polly.indvar810.1.1, 1
  %exitcond890.1.1.not = icmp eq i64 %polly.indvar_next811.1.1, 32
  br i1 %exitcond890.1.1.not, label %polly.loop_header807.2, label %polly.loop_header807.1.1

polly.loop_header807.2:                           ; preds = %polly.loop_exit815.1.1, %polly.loop_exit815.2
  %polly.indvar810.2 = phi i64 [ %polly.indvar_next811.2, %polly.loop_exit815.2 ], [ 0, %polly.loop_exit815.1.1 ]
  %231 = add nuw nsw i64 %polly.indvar810.2, 64
  %232 = mul nuw nsw i64 %231, 480
  %233 = trunc i64 %231 to i32
  %broadcast.splatinsert1248 = insertelement <4 x i32> poison, i32 %233, i32 0
  %broadcast.splat1249 = shufflevector <4 x i32> %broadcast.splatinsert1248, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1238

vector.body1238:                                  ; preds = %vector.body1238, %polly.loop_header807.2
  %index1240 = phi i64 [ 0, %polly.loop_header807.2 ], [ %index.next1241, %vector.body1238 ]
  %vec.ind1246 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header807.2 ], [ %vec.ind.next1247, %vector.body1238 ]
  %234 = mul <4 x i32> %vec.ind1246, %broadcast.splat1249
  %235 = add <4 x i32> %234, <i32 1, i32 1, i32 1, i32 1>
  %236 = urem <4 x i32> %235, <i32 80, i32 80, i32 80, i32 80>
  %237 = sitofp <4 x i32> %236 to <4 x double>
  %238 = fmul fast <4 x double> %237, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %239 = shl i64 %index1240, 3
  %240 = add i64 %239, %232
  %241 = getelementptr i8, i8* %call1, i64 %240
  %242 = bitcast i8* %241 to <4 x double>*
  store <4 x double> %238, <4 x double>* %242, align 8, !alias.scope !97, !noalias !102
  %index.next1241 = add i64 %index1240, 4
  %vec.ind.next1247 = add <4 x i32> %vec.ind1246, <i32 4, i32 4, i32 4, i32 4>
  %243 = icmp eq i64 %index.next1241, 32
  br i1 %243, label %polly.loop_exit815.2, label %vector.body1238, !llvm.loop !107

polly.loop_exit815.2:                             ; preds = %vector.body1238
  %polly.indvar_next811.2 = add nuw nsw i64 %polly.indvar810.2, 1
  %exitcond890.2.not = icmp eq i64 %polly.indvar_next811.2, 16
  br i1 %exitcond890.2.not, label %polly.loop_header807.1.2, label %polly.loop_header807.2

polly.loop_header807.1.2:                         ; preds = %polly.loop_exit815.2, %polly.loop_exit815.1.2
  %polly.indvar810.1.2 = phi i64 [ %polly.indvar_next811.1.2, %polly.loop_exit815.1.2 ], [ 0, %polly.loop_exit815.2 ]
  %244 = add nuw nsw i64 %polly.indvar810.1.2, 64
  %245 = mul nuw nsw i64 %244, 480
  %246 = trunc i64 %244 to i32
  %broadcast.splatinsert1260 = insertelement <4 x i32> poison, i32 %246, i32 0
  %broadcast.splat1261 = shufflevector <4 x i32> %broadcast.splatinsert1260, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %polly.loop_header807.1.2
  %index1254 = phi i64 [ 0, %polly.loop_header807.1.2 ], [ %index.next1255, %vector.body1252 ]
  %vec.ind1258 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header807.1.2 ], [ %vec.ind.next1259, %vector.body1252 ]
  %247 = add nuw nsw <4 x i64> %vec.ind1258, <i64 32, i64 32, i64 32, i64 32>
  %248 = trunc <4 x i64> %247 to <4 x i32>
  %249 = mul <4 x i32> %broadcast.splat1261, %248
  %250 = add <4 x i32> %249, <i32 1, i32 1, i32 1, i32 1>
  %251 = urem <4 x i32> %250, <i32 80, i32 80, i32 80, i32 80>
  %252 = sitofp <4 x i32> %251 to <4 x double>
  %253 = fmul fast <4 x double> %252, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %254 = extractelement <4 x i64> %247, i32 0
  %255 = shl i64 %254, 3
  %256 = add i64 %255, %245
  %257 = getelementptr i8, i8* %call1, i64 %256
  %258 = bitcast i8* %257 to <4 x double>*
  store <4 x double> %253, <4 x double>* %258, align 8, !alias.scope !97, !noalias !102
  %index.next1255 = add i64 %index1254, 4
  %vec.ind.next1259 = add <4 x i64> %vec.ind1258, <i64 4, i64 4, i64 4, i64 4>
  %259 = icmp eq i64 %index.next1255, 28
  br i1 %259, label %polly.loop_exit815.1.2, label %vector.body1252, !llvm.loop !108

polly.loop_exit815.1.2:                           ; preds = %vector.body1252
  %polly.indvar_next811.1.2 = add nuw nsw i64 %polly.indvar810.1.2, 1
  %exitcond890.1.2.not = icmp eq i64 %polly.indvar_next811.1.2, 16
  br i1 %exitcond890.1.2.not, label %init_array.exit, label %polly.loop_header807.1.2

polly.loop_header781.1:                           ; preds = %polly.loop_exit789, %polly.loop_exit789.1
  %polly.indvar784.1 = phi i64 [ %polly.indvar_next785.1, %polly.loop_exit789.1 ], [ 0, %polly.loop_exit789 ]
  %260 = mul nuw nsw i64 %polly.indvar784.1, 480
  %261 = trunc i64 %polly.indvar784.1 to i32
  %broadcast.splatinsert1130 = insertelement <4 x i32> poison, i32 %261, i32 0
  %broadcast.splat1131 = shufflevector <4 x i32> %broadcast.splatinsert1130, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1122

vector.body1122:                                  ; preds = %vector.body1122, %polly.loop_header781.1
  %index1124 = phi i64 [ 0, %polly.loop_header781.1 ], [ %index.next1125, %vector.body1122 ]
  %vec.ind1128 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header781.1 ], [ %vec.ind.next1129, %vector.body1122 ]
  %262 = add nuw nsw <4 x i64> %vec.ind1128, <i64 32, i64 32, i64 32, i64 32>
  %263 = trunc <4 x i64> %262 to <4 x i32>
  %264 = mul <4 x i32> %broadcast.splat1131, %263
  %265 = add <4 x i32> %264, <i32 2, i32 2, i32 2, i32 2>
  %266 = urem <4 x i32> %265, <i32 60, i32 60, i32 60, i32 60>
  %267 = sitofp <4 x i32> %266 to <4 x double>
  %268 = fmul fast <4 x double> %267, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %269 = extractelement <4 x i64> %262, i32 0
  %270 = shl i64 %269, 3
  %271 = add i64 %270, %260
  %272 = getelementptr i8, i8* %call2, i64 %271
  %273 = bitcast i8* %272 to <4 x double>*
  store <4 x double> %268, <4 x double>* %273, align 8, !alias.scope !98, !noalias !100
  %index.next1125 = add i64 %index1124, 4
  %vec.ind.next1129 = add <4 x i64> %vec.ind1128, <i64 4, i64 4, i64 4, i64 4>
  %274 = icmp eq i64 %index.next1125, 28
  br i1 %274, label %polly.loop_exit789.1, label %vector.body1122, !llvm.loop !109

polly.loop_exit789.1:                             ; preds = %vector.body1122
  %polly.indvar_next785.1 = add nuw nsw i64 %polly.indvar784.1, 1
  %exitcond896.1.not = icmp eq i64 %polly.indvar_next785.1, 32
  br i1 %exitcond896.1.not, label %polly.loop_header781.1927, label %polly.loop_header781.1

polly.loop_header781.1927:                        ; preds = %polly.loop_exit789.1, %polly.loop_exit789.1938
  %polly.indvar784.1926 = phi i64 [ %polly.indvar_next785.1936, %polly.loop_exit789.1938 ], [ 0, %polly.loop_exit789.1 ]
  %275 = add nuw nsw i64 %polly.indvar784.1926, 32
  %276 = mul nuw nsw i64 %275, 480
  %277 = trunc i64 %275 to i32
  %broadcast.splatinsert1144 = insertelement <4 x i32> poison, i32 %277, i32 0
  %broadcast.splat1145 = shufflevector <4 x i32> %broadcast.splatinsert1144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1134

vector.body1134:                                  ; preds = %vector.body1134, %polly.loop_header781.1927
  %index1136 = phi i64 [ 0, %polly.loop_header781.1927 ], [ %index.next1137, %vector.body1134 ]
  %vec.ind1142 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header781.1927 ], [ %vec.ind.next1143, %vector.body1134 ]
  %278 = mul <4 x i32> %vec.ind1142, %broadcast.splat1145
  %279 = add <4 x i32> %278, <i32 2, i32 2, i32 2, i32 2>
  %280 = urem <4 x i32> %279, <i32 60, i32 60, i32 60, i32 60>
  %281 = sitofp <4 x i32> %280 to <4 x double>
  %282 = fmul fast <4 x double> %281, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %283 = shl i64 %index1136, 3
  %284 = add i64 %283, %276
  %285 = getelementptr i8, i8* %call2, i64 %284
  %286 = bitcast i8* %285 to <4 x double>*
  store <4 x double> %282, <4 x double>* %286, align 8, !alias.scope !98, !noalias !100
  %index.next1137 = add i64 %index1136, 4
  %vec.ind.next1143 = add <4 x i32> %vec.ind1142, <i32 4, i32 4, i32 4, i32 4>
  %287 = icmp eq i64 %index.next1137, 32
  br i1 %287, label %polly.loop_exit789.1938, label %vector.body1134, !llvm.loop !110

polly.loop_exit789.1938:                          ; preds = %vector.body1134
  %polly.indvar_next785.1936 = add nuw nsw i64 %polly.indvar784.1926, 1
  %exitcond896.1937.not = icmp eq i64 %polly.indvar_next785.1936, 32
  br i1 %exitcond896.1937.not, label %polly.loop_header781.1.1, label %polly.loop_header781.1927

polly.loop_header781.1.1:                         ; preds = %polly.loop_exit789.1938, %polly.loop_exit789.1.1
  %polly.indvar784.1.1 = phi i64 [ %polly.indvar_next785.1.1, %polly.loop_exit789.1.1 ], [ 0, %polly.loop_exit789.1938 ]
  %288 = add nuw nsw i64 %polly.indvar784.1.1, 32
  %289 = mul nuw nsw i64 %288, 480
  %290 = trunc i64 %288 to i32
  %broadcast.splatinsert1156 = insertelement <4 x i32> poison, i32 %290, i32 0
  %broadcast.splat1157 = shufflevector <4 x i32> %broadcast.splatinsert1156, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1148

vector.body1148:                                  ; preds = %vector.body1148, %polly.loop_header781.1.1
  %index1150 = phi i64 [ 0, %polly.loop_header781.1.1 ], [ %index.next1151, %vector.body1148 ]
  %vec.ind1154 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header781.1.1 ], [ %vec.ind.next1155, %vector.body1148 ]
  %291 = add nuw nsw <4 x i64> %vec.ind1154, <i64 32, i64 32, i64 32, i64 32>
  %292 = trunc <4 x i64> %291 to <4 x i32>
  %293 = mul <4 x i32> %broadcast.splat1157, %292
  %294 = add <4 x i32> %293, <i32 2, i32 2, i32 2, i32 2>
  %295 = urem <4 x i32> %294, <i32 60, i32 60, i32 60, i32 60>
  %296 = sitofp <4 x i32> %295 to <4 x double>
  %297 = fmul fast <4 x double> %296, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %298 = extractelement <4 x i64> %291, i32 0
  %299 = shl i64 %298, 3
  %300 = add i64 %299, %289
  %301 = getelementptr i8, i8* %call2, i64 %300
  %302 = bitcast i8* %301 to <4 x double>*
  store <4 x double> %297, <4 x double>* %302, align 8, !alias.scope !98, !noalias !100
  %index.next1151 = add i64 %index1150, 4
  %vec.ind.next1155 = add <4 x i64> %vec.ind1154, <i64 4, i64 4, i64 4, i64 4>
  %303 = icmp eq i64 %index.next1151, 28
  br i1 %303, label %polly.loop_exit789.1.1, label %vector.body1148, !llvm.loop !111

polly.loop_exit789.1.1:                           ; preds = %vector.body1148
  %polly.indvar_next785.1.1 = add nuw nsw i64 %polly.indvar784.1.1, 1
  %exitcond896.1.1.not = icmp eq i64 %polly.indvar_next785.1.1, 32
  br i1 %exitcond896.1.1.not, label %polly.loop_header781.2, label %polly.loop_header781.1.1

polly.loop_header781.2:                           ; preds = %polly.loop_exit789.1.1, %polly.loop_exit789.2
  %polly.indvar784.2 = phi i64 [ %polly.indvar_next785.2, %polly.loop_exit789.2 ], [ 0, %polly.loop_exit789.1.1 ]
  %304 = add nuw nsw i64 %polly.indvar784.2, 64
  %305 = mul nuw nsw i64 %304, 480
  %306 = trunc i64 %304 to i32
  %broadcast.splatinsert1170 = insertelement <4 x i32> poison, i32 %306, i32 0
  %broadcast.splat1171 = shufflevector <4 x i32> %broadcast.splatinsert1170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %polly.loop_header781.2
  %index1162 = phi i64 [ 0, %polly.loop_header781.2 ], [ %index.next1163, %vector.body1160 ]
  %vec.ind1168 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header781.2 ], [ %vec.ind.next1169, %vector.body1160 ]
  %307 = mul <4 x i32> %vec.ind1168, %broadcast.splat1171
  %308 = add <4 x i32> %307, <i32 2, i32 2, i32 2, i32 2>
  %309 = urem <4 x i32> %308, <i32 60, i32 60, i32 60, i32 60>
  %310 = sitofp <4 x i32> %309 to <4 x double>
  %311 = fmul fast <4 x double> %310, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %312 = shl i64 %index1162, 3
  %313 = add i64 %312, %305
  %314 = getelementptr i8, i8* %call2, i64 %313
  %315 = bitcast i8* %314 to <4 x double>*
  store <4 x double> %311, <4 x double>* %315, align 8, !alias.scope !98, !noalias !100
  %index.next1163 = add i64 %index1162, 4
  %vec.ind.next1169 = add <4 x i32> %vec.ind1168, <i32 4, i32 4, i32 4, i32 4>
  %316 = icmp eq i64 %index.next1163, 32
  br i1 %316, label %polly.loop_exit789.2, label %vector.body1160, !llvm.loop !112

polly.loop_exit789.2:                             ; preds = %vector.body1160
  %polly.indvar_next785.2 = add nuw nsw i64 %polly.indvar784.2, 1
  %exitcond896.2.not = icmp eq i64 %polly.indvar_next785.2, 16
  br i1 %exitcond896.2.not, label %polly.loop_header781.1.2, label %polly.loop_header781.2

polly.loop_header781.1.2:                         ; preds = %polly.loop_exit789.2, %polly.loop_exit789.1.2
  %polly.indvar784.1.2 = phi i64 [ %polly.indvar_next785.1.2, %polly.loop_exit789.1.2 ], [ 0, %polly.loop_exit789.2 ]
  %317 = add nuw nsw i64 %polly.indvar784.1.2, 64
  %318 = mul nuw nsw i64 %317, 480
  %319 = trunc i64 %317 to i32
  %broadcast.splatinsert1182 = insertelement <4 x i32> poison, i32 %319, i32 0
  %broadcast.splat1183 = shufflevector <4 x i32> %broadcast.splatinsert1182, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1174

vector.body1174:                                  ; preds = %vector.body1174, %polly.loop_header781.1.2
  %index1176 = phi i64 [ 0, %polly.loop_header781.1.2 ], [ %index.next1177, %vector.body1174 ]
  %vec.ind1180 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header781.1.2 ], [ %vec.ind.next1181, %vector.body1174 ]
  %320 = add nuw nsw <4 x i64> %vec.ind1180, <i64 32, i64 32, i64 32, i64 32>
  %321 = trunc <4 x i64> %320 to <4 x i32>
  %322 = mul <4 x i32> %broadcast.splat1183, %321
  %323 = add <4 x i32> %322, <i32 2, i32 2, i32 2, i32 2>
  %324 = urem <4 x i32> %323, <i32 60, i32 60, i32 60, i32 60>
  %325 = sitofp <4 x i32> %324 to <4 x double>
  %326 = fmul fast <4 x double> %325, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %327 = extractelement <4 x i64> %320, i32 0
  %328 = shl i64 %327, 3
  %329 = add i64 %328, %318
  %330 = getelementptr i8, i8* %call2, i64 %329
  %331 = bitcast i8* %330 to <4 x double>*
  store <4 x double> %326, <4 x double>* %331, align 8, !alias.scope !98, !noalias !100
  %index.next1177 = add i64 %index1176, 4
  %vec.ind.next1181 = add <4 x i64> %vec.ind1180, <i64 4, i64 4, i64 4, i64 4>
  %332 = icmp eq i64 %index.next1177, 28
  br i1 %332, label %polly.loop_exit789.1.2, label %vector.body1174, !llvm.loop !113

polly.loop_exit789.1.2:                           ; preds = %vector.body1174
  %polly.indvar_next785.1.2 = add nuw nsw i64 %polly.indvar784.1.2, 1
  %exitcond896.1.2.not = icmp eq i64 %polly.indvar_next785.1.2, 16
  br i1 %exitcond896.1.2.not, label %polly.loop_header807, label %polly.loop_header781.1.2

polly.loop_header754.1:                           ; preds = %polly.loop_exit762, %polly.loop_exit762.1
  %polly.indvar757.1 = phi i64 [ %polly.indvar_next758.1, %polly.loop_exit762.1 ], [ 0, %polly.loop_exit762 ]
  %333 = mul nuw nsw i64 %polly.indvar757.1, 640
  %334 = trunc i64 %polly.indvar757.1 to i32
  %broadcast.splatinsert1016 = insertelement <4 x i32> poison, i32 %334, i32 0
  %broadcast.splat1017 = shufflevector <4 x i32> %broadcast.splatinsert1016, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1008

vector.body1008:                                  ; preds = %vector.body1008, %polly.loop_header754.1
  %index1010 = phi i64 [ 0, %polly.loop_header754.1 ], [ %index.next1011, %vector.body1008 ]
  %vec.ind1014 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header754.1 ], [ %vec.ind.next1015, %vector.body1008 ]
  %335 = add nuw nsw <4 x i64> %vec.ind1014, <i64 32, i64 32, i64 32, i64 32>
  %336 = trunc <4 x i64> %335 to <4 x i32>
  %337 = mul <4 x i32> %broadcast.splat1017, %336
  %338 = add <4 x i32> %337, <i32 3, i32 3, i32 3, i32 3>
  %339 = urem <4 x i32> %338, <i32 80, i32 80, i32 80, i32 80>
  %340 = sitofp <4 x i32> %339 to <4 x double>
  %341 = fmul fast <4 x double> %340, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %342 = extractelement <4 x i64> %335, i32 0
  %343 = shl i64 %342, 3
  %344 = add nuw nsw i64 %343, %333
  %345 = getelementptr i8, i8* %call, i64 %344
  %346 = bitcast i8* %345 to <4 x double>*
  store <4 x double> %341, <4 x double>* %346, align 8, !alias.scope !94, !noalias !96
  %index.next1011 = add i64 %index1010, 4
  %vec.ind.next1015 = add <4 x i64> %vec.ind1014, <i64 4, i64 4, i64 4, i64 4>
  %347 = icmp eq i64 %index.next1011, 32
  br i1 %347, label %polly.loop_exit762.1, label %vector.body1008, !llvm.loop !114

polly.loop_exit762.1:                             ; preds = %vector.body1008
  %polly.indvar_next758.1 = add nuw nsw i64 %polly.indvar757.1, 1
  %exitcond905.1.not = icmp eq i64 %polly.indvar_next758.1, 32
  br i1 %exitcond905.1.not, label %polly.loop_header754.2, label %polly.loop_header754.1

polly.loop_header754.2:                           ; preds = %polly.loop_exit762.1, %polly.loop_exit762.2
  %polly.indvar757.2 = phi i64 [ %polly.indvar_next758.2, %polly.loop_exit762.2 ], [ 0, %polly.loop_exit762.1 ]
  %348 = mul nuw nsw i64 %polly.indvar757.2, 640
  %349 = trunc i64 %polly.indvar757.2 to i32
  %broadcast.splatinsert1028 = insertelement <4 x i32> poison, i32 %349, i32 0
  %broadcast.splat1029 = shufflevector <4 x i32> %broadcast.splatinsert1028, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1020

vector.body1020:                                  ; preds = %vector.body1020, %polly.loop_header754.2
  %index1022 = phi i64 [ 0, %polly.loop_header754.2 ], [ %index.next1023, %vector.body1020 ]
  %vec.ind1026 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header754.2 ], [ %vec.ind.next1027, %vector.body1020 ]
  %350 = add nuw nsw <4 x i64> %vec.ind1026, <i64 64, i64 64, i64 64, i64 64>
  %351 = trunc <4 x i64> %350 to <4 x i32>
  %352 = mul <4 x i32> %broadcast.splat1029, %351
  %353 = add <4 x i32> %352, <i32 3, i32 3, i32 3, i32 3>
  %354 = urem <4 x i32> %353, <i32 80, i32 80, i32 80, i32 80>
  %355 = sitofp <4 x i32> %354 to <4 x double>
  %356 = fmul fast <4 x double> %355, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %357 = extractelement <4 x i64> %350, i32 0
  %358 = shl i64 %357, 3
  %359 = add nuw nsw i64 %358, %348
  %360 = getelementptr i8, i8* %call, i64 %359
  %361 = bitcast i8* %360 to <4 x double>*
  store <4 x double> %356, <4 x double>* %361, align 8, !alias.scope !94, !noalias !96
  %index.next1023 = add i64 %index1022, 4
  %vec.ind.next1027 = add <4 x i64> %vec.ind1026, <i64 4, i64 4, i64 4, i64 4>
  %362 = icmp eq i64 %index.next1023, 16
  br i1 %362, label %polly.loop_exit762.2, label %vector.body1020, !llvm.loop !115

polly.loop_exit762.2:                             ; preds = %vector.body1020
  %polly.indvar_next758.2 = add nuw nsw i64 %polly.indvar757.2, 1
  %exitcond905.2.not = icmp eq i64 %polly.indvar_next758.2, 32
  br i1 %exitcond905.2.not, label %polly.loop_header754.1941, label %polly.loop_header754.2

polly.loop_header754.1941:                        ; preds = %polly.loop_exit762.2, %polly.loop_exit762.1952
  %polly.indvar757.1940 = phi i64 [ %polly.indvar_next758.1950, %polly.loop_exit762.1952 ], [ 0, %polly.loop_exit762.2 ]
  %363 = add nuw nsw i64 %polly.indvar757.1940, 32
  %364 = mul nuw nsw i64 %363, 640
  %365 = trunc i64 %363 to i32
  %broadcast.splatinsert1042 = insertelement <4 x i32> poison, i32 %365, i32 0
  %broadcast.splat1043 = shufflevector <4 x i32> %broadcast.splatinsert1042, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %polly.loop_header754.1941
  %index1034 = phi i64 [ 0, %polly.loop_header754.1941 ], [ %index.next1035, %vector.body1032 ]
  %vec.ind1040 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header754.1941 ], [ %vec.ind.next1041, %vector.body1032 ]
  %366 = mul <4 x i32> %vec.ind1040, %broadcast.splat1043
  %367 = add <4 x i32> %366, <i32 3, i32 3, i32 3, i32 3>
  %368 = urem <4 x i32> %367, <i32 80, i32 80, i32 80, i32 80>
  %369 = sitofp <4 x i32> %368 to <4 x double>
  %370 = fmul fast <4 x double> %369, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %371 = shl i64 %index1034, 3
  %372 = add nuw nsw i64 %371, %364
  %373 = getelementptr i8, i8* %call, i64 %372
  %374 = bitcast i8* %373 to <4 x double>*
  store <4 x double> %370, <4 x double>* %374, align 8, !alias.scope !94, !noalias !96
  %index.next1035 = add i64 %index1034, 4
  %vec.ind.next1041 = add <4 x i32> %vec.ind1040, <i32 4, i32 4, i32 4, i32 4>
  %375 = icmp eq i64 %index.next1035, 32
  br i1 %375, label %polly.loop_exit762.1952, label %vector.body1032, !llvm.loop !116

polly.loop_exit762.1952:                          ; preds = %vector.body1032
  %polly.indvar_next758.1950 = add nuw nsw i64 %polly.indvar757.1940, 1
  %exitcond905.1951.not = icmp eq i64 %polly.indvar_next758.1950, 32
  br i1 %exitcond905.1951.not, label %polly.loop_header754.1.1, label %polly.loop_header754.1941

polly.loop_header754.1.1:                         ; preds = %polly.loop_exit762.1952, %polly.loop_exit762.1.1
  %polly.indvar757.1.1 = phi i64 [ %polly.indvar_next758.1.1, %polly.loop_exit762.1.1 ], [ 0, %polly.loop_exit762.1952 ]
  %376 = add nuw nsw i64 %polly.indvar757.1.1, 32
  %377 = mul nuw nsw i64 %376, 640
  %378 = trunc i64 %376 to i32
  %broadcast.splatinsert1054 = insertelement <4 x i32> poison, i32 %378, i32 0
  %broadcast.splat1055 = shufflevector <4 x i32> %broadcast.splatinsert1054, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1046

vector.body1046:                                  ; preds = %vector.body1046, %polly.loop_header754.1.1
  %index1048 = phi i64 [ 0, %polly.loop_header754.1.1 ], [ %index.next1049, %vector.body1046 ]
  %vec.ind1052 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header754.1.1 ], [ %vec.ind.next1053, %vector.body1046 ]
  %379 = add nuw nsw <4 x i64> %vec.ind1052, <i64 32, i64 32, i64 32, i64 32>
  %380 = trunc <4 x i64> %379 to <4 x i32>
  %381 = mul <4 x i32> %broadcast.splat1055, %380
  %382 = add <4 x i32> %381, <i32 3, i32 3, i32 3, i32 3>
  %383 = urem <4 x i32> %382, <i32 80, i32 80, i32 80, i32 80>
  %384 = sitofp <4 x i32> %383 to <4 x double>
  %385 = fmul fast <4 x double> %384, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %386 = extractelement <4 x i64> %379, i32 0
  %387 = shl i64 %386, 3
  %388 = add nuw nsw i64 %387, %377
  %389 = getelementptr i8, i8* %call, i64 %388
  %390 = bitcast i8* %389 to <4 x double>*
  store <4 x double> %385, <4 x double>* %390, align 8, !alias.scope !94, !noalias !96
  %index.next1049 = add i64 %index1048, 4
  %vec.ind.next1053 = add <4 x i64> %vec.ind1052, <i64 4, i64 4, i64 4, i64 4>
  %391 = icmp eq i64 %index.next1049, 32
  br i1 %391, label %polly.loop_exit762.1.1, label %vector.body1046, !llvm.loop !117

polly.loop_exit762.1.1:                           ; preds = %vector.body1046
  %polly.indvar_next758.1.1 = add nuw nsw i64 %polly.indvar757.1.1, 1
  %exitcond905.1.1.not = icmp eq i64 %polly.indvar_next758.1.1, 32
  br i1 %exitcond905.1.1.not, label %polly.loop_header754.2.1, label %polly.loop_header754.1.1

polly.loop_header754.2.1:                         ; preds = %polly.loop_exit762.1.1, %polly.loop_exit762.2.1
  %polly.indvar757.2.1 = phi i64 [ %polly.indvar_next758.2.1, %polly.loop_exit762.2.1 ], [ 0, %polly.loop_exit762.1.1 ]
  %392 = add nuw nsw i64 %polly.indvar757.2.1, 32
  %393 = mul nuw nsw i64 %392, 640
  %394 = trunc i64 %392 to i32
  %broadcast.splatinsert1066 = insertelement <4 x i32> poison, i32 %394, i32 0
  %broadcast.splat1067 = shufflevector <4 x i32> %broadcast.splatinsert1066, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1058

vector.body1058:                                  ; preds = %vector.body1058, %polly.loop_header754.2.1
  %index1060 = phi i64 [ 0, %polly.loop_header754.2.1 ], [ %index.next1061, %vector.body1058 ]
  %vec.ind1064 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header754.2.1 ], [ %vec.ind.next1065, %vector.body1058 ]
  %395 = add nuw nsw <4 x i64> %vec.ind1064, <i64 64, i64 64, i64 64, i64 64>
  %396 = trunc <4 x i64> %395 to <4 x i32>
  %397 = mul <4 x i32> %broadcast.splat1067, %396
  %398 = add <4 x i32> %397, <i32 3, i32 3, i32 3, i32 3>
  %399 = urem <4 x i32> %398, <i32 80, i32 80, i32 80, i32 80>
  %400 = sitofp <4 x i32> %399 to <4 x double>
  %401 = fmul fast <4 x double> %400, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %402 = extractelement <4 x i64> %395, i32 0
  %403 = shl i64 %402, 3
  %404 = add nuw nsw i64 %403, %393
  %405 = getelementptr i8, i8* %call, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %401, <4 x double>* %406, align 8, !alias.scope !94, !noalias !96
  %index.next1061 = add i64 %index1060, 4
  %vec.ind.next1065 = add <4 x i64> %vec.ind1064, <i64 4, i64 4, i64 4, i64 4>
  %407 = icmp eq i64 %index.next1061, 16
  br i1 %407, label %polly.loop_exit762.2.1, label %vector.body1058, !llvm.loop !118

polly.loop_exit762.2.1:                           ; preds = %vector.body1058
  %polly.indvar_next758.2.1 = add nuw nsw i64 %polly.indvar757.2.1, 1
  %exitcond905.2.1.not = icmp eq i64 %polly.indvar_next758.2.1, 32
  br i1 %exitcond905.2.1.not, label %polly.loop_header754.2955, label %polly.loop_header754.2.1

polly.loop_header754.2955:                        ; preds = %polly.loop_exit762.2.1, %polly.loop_exit762.2966
  %polly.indvar757.2954 = phi i64 [ %polly.indvar_next758.2964, %polly.loop_exit762.2966 ], [ 0, %polly.loop_exit762.2.1 ]
  %408 = add nuw nsw i64 %polly.indvar757.2954, 64
  %409 = mul nuw nsw i64 %408, 640
  %410 = trunc i64 %408 to i32
  %broadcast.splatinsert1080 = insertelement <4 x i32> poison, i32 %410, i32 0
  %broadcast.splat1081 = shufflevector <4 x i32> %broadcast.splatinsert1080, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1070

vector.body1070:                                  ; preds = %vector.body1070, %polly.loop_header754.2955
  %index1072 = phi i64 [ 0, %polly.loop_header754.2955 ], [ %index.next1073, %vector.body1070 ]
  %vec.ind1078 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header754.2955 ], [ %vec.ind.next1079, %vector.body1070 ]
  %411 = mul <4 x i32> %vec.ind1078, %broadcast.splat1081
  %412 = add <4 x i32> %411, <i32 3, i32 3, i32 3, i32 3>
  %413 = urem <4 x i32> %412, <i32 80, i32 80, i32 80, i32 80>
  %414 = sitofp <4 x i32> %413 to <4 x double>
  %415 = fmul fast <4 x double> %414, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %416 = shl i64 %index1072, 3
  %417 = add nuw nsw i64 %416, %409
  %418 = getelementptr i8, i8* %call, i64 %417
  %419 = bitcast i8* %418 to <4 x double>*
  store <4 x double> %415, <4 x double>* %419, align 8, !alias.scope !94, !noalias !96
  %index.next1073 = add i64 %index1072, 4
  %vec.ind.next1079 = add <4 x i32> %vec.ind1078, <i32 4, i32 4, i32 4, i32 4>
  %420 = icmp eq i64 %index.next1073, 32
  br i1 %420, label %polly.loop_exit762.2966, label %vector.body1070, !llvm.loop !119

polly.loop_exit762.2966:                          ; preds = %vector.body1070
  %polly.indvar_next758.2964 = add nuw nsw i64 %polly.indvar757.2954, 1
  %exitcond905.2965.not = icmp eq i64 %polly.indvar_next758.2964, 16
  br i1 %exitcond905.2965.not, label %polly.loop_header754.1.2, label %polly.loop_header754.2955

polly.loop_header754.1.2:                         ; preds = %polly.loop_exit762.2966, %polly.loop_exit762.1.2
  %polly.indvar757.1.2 = phi i64 [ %polly.indvar_next758.1.2, %polly.loop_exit762.1.2 ], [ 0, %polly.loop_exit762.2966 ]
  %421 = add nuw nsw i64 %polly.indvar757.1.2, 64
  %422 = mul nuw nsw i64 %421, 640
  %423 = trunc i64 %421 to i32
  %broadcast.splatinsert1092 = insertelement <4 x i32> poison, i32 %423, i32 0
  %broadcast.splat1093 = shufflevector <4 x i32> %broadcast.splatinsert1092, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %polly.loop_header754.1.2
  %index1086 = phi i64 [ 0, %polly.loop_header754.1.2 ], [ %index.next1087, %vector.body1084 ]
  %vec.ind1090 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header754.1.2 ], [ %vec.ind.next1091, %vector.body1084 ]
  %424 = add nuw nsw <4 x i64> %vec.ind1090, <i64 32, i64 32, i64 32, i64 32>
  %425 = trunc <4 x i64> %424 to <4 x i32>
  %426 = mul <4 x i32> %broadcast.splat1093, %425
  %427 = add <4 x i32> %426, <i32 3, i32 3, i32 3, i32 3>
  %428 = urem <4 x i32> %427, <i32 80, i32 80, i32 80, i32 80>
  %429 = sitofp <4 x i32> %428 to <4 x double>
  %430 = fmul fast <4 x double> %429, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %431 = extractelement <4 x i64> %424, i32 0
  %432 = shl i64 %431, 3
  %433 = add nuw nsw i64 %432, %422
  %434 = getelementptr i8, i8* %call, i64 %433
  %435 = bitcast i8* %434 to <4 x double>*
  store <4 x double> %430, <4 x double>* %435, align 8, !alias.scope !94, !noalias !96
  %index.next1087 = add i64 %index1086, 4
  %vec.ind.next1091 = add <4 x i64> %vec.ind1090, <i64 4, i64 4, i64 4, i64 4>
  %436 = icmp eq i64 %index.next1087, 32
  br i1 %436, label %polly.loop_exit762.1.2, label %vector.body1084, !llvm.loop !120

polly.loop_exit762.1.2:                           ; preds = %vector.body1084
  %polly.indvar_next758.1.2 = add nuw nsw i64 %polly.indvar757.1.2, 1
  %exitcond905.1.2.not = icmp eq i64 %polly.indvar_next758.1.2, 16
  br i1 %exitcond905.1.2.not, label %polly.loop_header754.2.2, label %polly.loop_header754.1.2

polly.loop_header754.2.2:                         ; preds = %polly.loop_exit762.1.2, %polly.loop_exit762.2.2
  %polly.indvar757.2.2 = phi i64 [ %polly.indvar_next758.2.2, %polly.loop_exit762.2.2 ], [ 0, %polly.loop_exit762.1.2 ]
  %437 = add nuw nsw i64 %polly.indvar757.2.2, 64
  %438 = mul nuw nsw i64 %437, 640
  %439 = trunc i64 %437 to i32
  %broadcast.splatinsert1104 = insertelement <4 x i32> poison, i32 %439, i32 0
  %broadcast.splat1105 = shufflevector <4 x i32> %broadcast.splatinsert1104, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1096

vector.body1096:                                  ; preds = %vector.body1096, %polly.loop_header754.2.2
  %index1098 = phi i64 [ 0, %polly.loop_header754.2.2 ], [ %index.next1099, %vector.body1096 ]
  %vec.ind1102 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header754.2.2 ], [ %vec.ind.next1103, %vector.body1096 ]
  %440 = add nuw nsw <4 x i64> %vec.ind1102, <i64 64, i64 64, i64 64, i64 64>
  %441 = trunc <4 x i64> %440 to <4 x i32>
  %442 = mul <4 x i32> %broadcast.splat1105, %441
  %443 = add <4 x i32> %442, <i32 3, i32 3, i32 3, i32 3>
  %444 = urem <4 x i32> %443, <i32 80, i32 80, i32 80, i32 80>
  %445 = sitofp <4 x i32> %444 to <4 x double>
  %446 = fmul fast <4 x double> %445, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %447 = extractelement <4 x i64> %440, i32 0
  %448 = shl i64 %447, 3
  %449 = add nuw nsw i64 %448, %438
  %450 = getelementptr i8, i8* %call, i64 %449
  %451 = bitcast i8* %450 to <4 x double>*
  store <4 x double> %446, <4 x double>* %451, align 8, !alias.scope !94, !noalias !96
  %index.next1099 = add i64 %index1098, 4
  %vec.ind.next1103 = add <4 x i64> %vec.ind1102, <i64 4, i64 4, i64 4, i64 4>
  %452 = icmp eq i64 %index.next1099, 16
  br i1 %452, label %polly.loop_exit762.2.2, label %vector.body1096, !llvm.loop !121

polly.loop_exit762.2.2:                           ; preds = %vector.body1096
  %polly.indvar_next758.2.2 = add nuw nsw i64 %polly.indvar757.2.2, 1
  %exitcond905.2.2.not = icmp eq i64 %polly.indvar_next758.2.2, 16
  br i1 %exitcond905.2.2.not, label %polly.loop_header781, label %polly.loop_header754.2.2
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
!22 = distinct !{!22, !12, !23, !24, !25, !26, !29}
!23 = !{!"llvm.loop.disable_nonforced"}
!24 = !{!"llvm.loop.id", !"k"}
!25 = !{!"llvm.loop.tile.size", i32 4}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !34, !35, !38}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.size", i32 80}
!35 = !{!"llvm.loop.tile.followup_floor", !36}
!36 = distinct !{!36, !12, !37}
!37 = !{!"llvm.loop.id", !"j1"}
!38 = !{!"llvm.loop.tile.followup_tile", !39}
!39 = distinct !{!39, !12, !23, !40, !41, !42, !43}
!40 = !{!"llvm.loop.id", !"j2"}
!41 = !{!"llvm.data.pack.enable", i1 true}
!42 = !{!"llvm.data.pack.array", !21}
!43 = !{!"llvm.data.pack.allocate", !"malloc"}
!44 = distinct !{!44, !12, !23, !45, !46, !47, !48, !49, !52}
!45 = !{!"llvm.loop.id", !"i"}
!46 = !{!"llvm.loop.tile.enable", i1 true}
!47 = !{!"llvm.loop.tile.depth", i32 3}
!48 = !{!"llvm.loop.tile.size", i32 100}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !51}
!51 = !{!"llvm.loop.id", !"i1"}
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
!68 = distinct !{!68, !64, !"polly.alias.scope.Packed_MemRef_call1"}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !71, !13}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = !{!63, !67, !68}
!73 = !{!63, !66, !68}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call1"}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !71, !13}
!82 = !{!74, !78, !79}
!83 = !{!74, !77, !79}
!84 = distinct !{!84, !85, !"polly.alias.scope.MemRef_call"}
!85 = distinct !{!85, !"polly.alias.scope.domain"}
!86 = !{!87, !88, !89}
!87 = distinct !{!87, !85, !"polly.alias.scope.MemRef_call1"}
!88 = distinct !{!88, !85, !"polly.alias.scope.MemRef_call2"}
!89 = distinct !{!89, !85, !"polly.alias.scope.Packed_MemRef_call1"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !71, !13}
!92 = !{!84, !88, !89}
!93 = !{!84, !87, !89}
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
