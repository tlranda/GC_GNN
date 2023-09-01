; ModuleID = 'syr2k_recreations//mmp_syr2k_S_28.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_28.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 6400, i32 8) #5
  %call690 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #5
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #5
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1551 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1551, %call2
  %polly.access.call2571 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2571, %call1
  %2 = or i1 %0, %1
  %polly.access.call591 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call591, %call2
  %4 = icmp ule i8* %polly.access.call2571, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call591, %call1
  %8 = icmp ule i8* %polly.access.call1551, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header676, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep982 = getelementptr i8, i8* %call2, i64 %12
  %scevgep981 = getelementptr i8, i8* %call2, i64 %11
  %scevgep980 = getelementptr i8, i8* %call1, i64 %12
  %scevgep979 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep979, %scevgep982
  %bound1 = icmp ult i8* %scevgep981, %scevgep980
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
  br i1 %exitcond18.not.i, label %vector.ph986, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph986:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert993 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat994 = shufflevector <4 x i64> %broadcast.splatinsert993, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body985

vector.body985:                                   ; preds = %vector.body985, %vector.ph986
  %index987 = phi i64 [ 0, %vector.ph986 ], [ %index.next988, %vector.body985 ]
  %vec.ind991 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph986 ], [ %vec.ind.next992, %vector.body985 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind991, %broadcast.splat994
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv7.i, i64 %index987
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next988 = add i64 %index987, 4
  %vec.ind.next992 = add <4 x i64> %vec.ind991, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next988, 80
  br i1 %40, label %for.inc41.i, label %vector.body985, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body985
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph986, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit737.1.2
  tail call void (...) @polybench_timer_start() #5
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header477, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1342, label %vector.ph1268

vector.ph1268:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1268
  %index1269 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1270, %vector.body1267 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i, i64 %index1269
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1270 = add i64 %index1269, 4
  %46 = icmp eq i64 %index.next1270, %n.vec
  br i1 %46, label %middle.block1265, label %vector.body1267, !llvm.loop !18

middle.block1265:                                 ; preds = %vector.body1267
  %cmp.n1272 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1272, label %for.inc6.i, label %for.body3.i46.preheader1342

for.body3.i46.preheader1342:                      ; preds = %for.body3.i46.preheader, %middle.block1265
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1265 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1342, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1342 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1265, %for.cond1.preheader.i45
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
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv15.i, i64 %indvars.iv.i48
  %52 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %reass.add.i = fadd fast double %mul37.i, %mul27.i
  %reass.mul.i = fmul fast double %reass.add.i, 1.500000e+00
  %add42.i = fadd fast double %reass.mul.i, %52
  store double %add42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %indvars.iv13.i
  br i1 %exitcond.not.i50, label %for.inc46.i, label %for.body17.i, !llvm.loop !21

for.inc46.i:                                      ; preds = %for.body17.i
  %indvars.iv.next11.i51 = add nuw nsw i64 %indvars.iv10.i47, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 60
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !31

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 80
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit513.1.3
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header330, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1288 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1288, label %for.body3.i60.preheader1340, label %vector.ph1289

vector.ph1289:                                    ; preds = %for.body3.i60.preheader
  %n.vec1291 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %vector.ph1289
  %index1292 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1293, %vector.body1287 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i52, i64 %index1292
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1296 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1296, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1293 = add i64 %index1292, 4
  %57 = icmp eq i64 %index.next1293, %n.vec1291
  br i1 %57, label %middle.block1285, label %vector.body1287, !llvm.loop !51

middle.block1285:                                 ; preds = %vector.body1287
  %cmp.n1295 = icmp eq i64 %indvars.iv21.i52, %n.vec1291
  br i1 %cmp.n1295, label %for.inc6.i63, label %for.body3.i60.preheader1340

for.body3.i60.preheader1340:                      ; preds = %for.body3.i60.preheader, %middle.block1285
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1291, %middle.block1285 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1340, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1340 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !52

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1285, %for.cond1.preheader.i54
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
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
  %63 = load double, double* %arrayidx41.i76, align 8, !tbaa !2
  %reass.add.i77 = fadd fast double %mul37.i75, %mul27.i73
  %reass.mul.i78 = fmul fast double %reass.add.i77, 1.500000e+00
  %add42.i79 = fadd fast double %reass.mul.i78, %63
  store double %add42.i79, double* %arrayidx41.i76, align 8, !tbaa !2
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i71, 1
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %indvars.iv13.i65
  br i1 %exitcond.not.i81, label %for.inc46.i85, label %for.body17.i82, !llvm.loop !21

for.inc46.i85:                                    ; preds = %for.body17.i82
  %indvars.iv.next11.i83 = add nuw nsw i64 %indvars.iv10.i67, 1
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 60
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !31

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 80
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit366.1.3
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  tail call void (...) @polybench_timer_start() #5
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1314 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1314, label %for.body3.i99.preheader1338, label %vector.ph1315

vector.ph1315:                                    ; preds = %for.body3.i99.preheader
  %n.vec1317 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %vector.ph1315
  %index1318 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1319, %vector.body1313 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i91, i64 %index1318
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1322, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1319 = add i64 %index1318, 4
  %68 = icmp eq i64 %index.next1319, %n.vec1317
  br i1 %68, label %middle.block1311, label %vector.body1313, !llvm.loop !53

middle.block1311:                                 ; preds = %vector.body1313
  %cmp.n1321 = icmp eq i64 %indvars.iv21.i91, %n.vec1317
  br i1 %cmp.n1321, label %for.inc6.i102, label %for.body3.i99.preheader1338

for.body3.i99.preheader1338:                      ; preds = %for.body3.i99.preheader, %middle.block1311
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1317, %middle.block1311 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1338, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1338 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !54

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1311, %for.cond1.preheader.i93
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
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [60 x double], [60 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
  %74 = load double, double* %arrayidx41.i115, align 8, !tbaa !2
  %reass.add.i116 = fadd fast double %mul37.i114, %mul27.i112
  %reass.mul.i117 = fmul fast double %reass.add.i116, 1.500000e+00
  %add42.i118 = fadd fast double %reass.mul.i117, %74
  store double %add42.i118, double* %arrayidx41.i115, align 8, !tbaa !2
  %indvars.iv.next.i119 = add nuw nsw i64 %indvars.iv.i110, 1
  %exitcond.not.i120 = icmp eq i64 %indvars.iv.next.i119, %indvars.iv13.i104
  br i1 %exitcond.not.i120, label %for.inc46.i124, label %for.body17.i121, !llvm.loop !21

for.inc46.i124:                                   ; preds = %for.body17.i121
  %indvars.iv.next11.i122 = add nuw nsw i64 %indvars.iv10.i106, 1
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 60
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !31

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 80
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit219.1.3
  tail call void (...) @polybench_timer_stop() #5
  tail call void (...) @polybench_timer_print() #5
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !55
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #6
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call690, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #6
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !57

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !58

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !55
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #6
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #5
  tail call void @free(i8* %call1) #5
  tail call void @free(i8* %call2) #5
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1326 = phi i64 [ %indvar.next1327, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1326, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1328 = icmp ult i64 %88, 4
  br i1 %min.iters.check1328, label %polly.loop_header191.preheader, label %vector.ph1329

vector.ph1329:                                    ; preds = %polly.loop_header
  %n.vec1331 = and i64 %88, -4
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1329
  %index1332 = phi i64 [ 0, %vector.ph1329 ], [ %index.next1333, %vector.body1325 ]
  %90 = shl nuw nsw i64 %index1332, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !59, !noalias !61
  %93 = fmul fast <4 x double> %wide.load1336, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !59, !noalias !61
  %index.next1333 = add i64 %index1332, 4
  %95 = icmp eq i64 %index.next1333, %n.vec1331
  br i1 %95, label %middle.block1323, label %vector.body1325, !llvm.loop !64

middle.block1323:                                 ; preds = %vector.body1325
  %cmp.n1335 = icmp eq i64 %88, %n.vec1331
  br i1 %cmp.n1335, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1323
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1331, %middle.block1323 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1323
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond758.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1327 = add i64 %indvar1326, 1
  br i1 %exitcond758.not, label %polly.loop_header211, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond757.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond757.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !65

polly.loop_header211:                             ; preds = %polly.loop_exit193, %polly.loop_exit219
  %indvars.iv752 = phi i64 [ %indvars.iv.next753, %polly.loop_exit219 ], [ 1, %polly.loop_exit193 ]
  %polly.indvar214 = phi i64 [ %polly.indvar_next215, %polly.loop_exit219 ], [ 0, %polly.loop_exit193 ]
  %97 = mul nuw nsw i64 %polly.indvar214, 480
  %98 = mul nuw nsw i64 %polly.indvar214, 640
  br label %polly.loop_header217

polly.loop_exit219:                               ; preds = %polly.loop_exit225
  %polly.indvar_next215 = add nuw nsw i64 %polly.indvar214, 1
  %indvars.iv.next753 = add nuw nsw i64 %indvars.iv752, 1
  %exitcond755.not = icmp eq i64 %polly.indvar_next215, 20
  br i1 %exitcond755.not, label %polly.loop_header211.1, label %polly.loop_header211

polly.loop_header217:                             ; preds = %polly.loop_exit225, %polly.loop_header211
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header211 ], [ %polly.indvar_next221, %polly.loop_exit225 ]
  %99 = shl i64 %polly.indvar220, 3
  %100 = add i64 %99, %97
  %scevgep232 = getelementptr i8, i8* %call2, i64 %100
  %scevgep232233 = bitcast i8* %scevgep232 to double*
  %_p_scalar_234 = load double, double* %scevgep232233, align 8, !alias.scope !63, !noalias !67
  %scevgep238 = getelementptr i8, i8* %call1, i64 %100
  %scevgep238239 = bitcast i8* %scevgep238 to double*
  %_p_scalar_240 = load double, double* %scevgep238239, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223

polly.loop_exit225:                               ; preds = %polly.loop_header223
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond754.not = icmp eq i64 %polly.indvar_next221, 50
  br i1 %exitcond754.not, label %polly.loop_exit219, label %polly.loop_header217

polly.loop_header223:                             ; preds = %polly.loop_header223, %polly.loop_header217
  %polly.indvar226 = phi i64 [ 0, %polly.loop_header217 ], [ %polly.indvar_next227, %polly.loop_header223 ]
  %101 = mul nuw nsw i64 %polly.indvar226, 480
  %102 = add nuw nsw i64 %101, %99
  %scevgep229 = getelementptr i8, i8* %call1, i64 %102
  %scevgep229230 = bitcast i8* %scevgep229 to double*
  %_p_scalar_231 = load double, double* %scevgep229230, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112 = fmul fast double %_p_scalar_234, %_p_scalar_231
  %scevgep235 = getelementptr i8, i8* %call2, i64 %102
  %scevgep235236 = bitcast i8* %scevgep235 to double*
  %_p_scalar_237 = load double, double* %scevgep235236, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114 = fmul fast double %_p_scalar_240, %_p_scalar_237
  %103 = shl nuw nsw i64 %polly.indvar226, 3
  %104 = add nuw nsw i64 %103, %98
  %scevgep241 = getelementptr i8, i8* %call, i64 %104
  %scevgep241242 = bitcast i8* %scevgep241 to double*
  %_p_scalar_243 = load double, double* %scevgep241242, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_243
  store double %p_add42.i118, double* %scevgep241242, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227 = add nuw nsw i64 %polly.indvar226, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next227, %indvars.iv752
  br i1 %exitcond.not, label %polly.loop_exit225, label %polly.loop_header223

polly.loop_header330:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit338
  %indvar1300 = phi i64 [ %indvar.next1301, %polly.loop_exit338 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar333 = phi i64 [ %polly.indvar_next334, %polly.loop_exit338 ], [ 1, %kernel_syr2k.exit ]
  %105 = add i64 %indvar1300, 1
  %106 = mul nuw nsw i64 %polly.indvar333, 640
  %scevgep342 = getelementptr i8, i8* %call, i64 %106
  %min.iters.check1302 = icmp ult i64 %105, 4
  br i1 %min.iters.check1302, label %polly.loop_header336.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %polly.loop_header330
  %n.vec1305 = and i64 %105, -4
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1299 ]
  %107 = shl nuw nsw i64 %index1306, 3
  %108 = getelementptr i8, i8* %scevgep342, i64 %107
  %109 = bitcast i8* %108 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %109, align 8, !alias.scope !69, !noalias !71
  %110 = fmul fast <4 x double> %wide.load1310, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %111 = bitcast i8* %108 to <4 x double>*
  store <4 x double> %110, <4 x double>* %111, align 8, !alias.scope !69, !noalias !71
  %index.next1307 = add i64 %index1306, 4
  %112 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %112, label %middle.block1297, label %vector.body1299, !llvm.loop !74

middle.block1297:                                 ; preds = %vector.body1299
  %cmp.n1309 = icmp eq i64 %105, %n.vec1305
  br i1 %cmp.n1309, label %polly.loop_exit338, label %polly.loop_header336.preheader

polly.loop_header336.preheader:                   ; preds = %polly.loop_header330, %middle.block1297
  %polly.indvar339.ph = phi i64 [ 0, %polly.loop_header330 ], [ %n.vec1305, %middle.block1297 ]
  br label %polly.loop_header336

polly.loop_exit338:                               ; preds = %polly.loop_header336, %middle.block1297
  %polly.indvar_next334 = add nuw nsw i64 %polly.indvar333, 1
  %exitcond768.not = icmp eq i64 %polly.indvar_next334, 80
  %indvar.next1301 = add i64 %indvar1300, 1
  br i1 %exitcond768.not, label %polly.loop_header358, label %polly.loop_header330

polly.loop_header336:                             ; preds = %polly.loop_header336.preheader, %polly.loop_header336
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_header336 ], [ %polly.indvar339.ph, %polly.loop_header336.preheader ]
  %113 = shl nuw nsw i64 %polly.indvar339, 3
  %scevgep343 = getelementptr i8, i8* %scevgep342, i64 %113
  %scevgep343344 = bitcast i8* %scevgep343 to double*
  %_p_scalar_345 = load double, double* %scevgep343344, align 8, !alias.scope !69, !noalias !71
  %p_mul.i57 = fmul fast double %_p_scalar_345, 1.200000e+00
  store double %p_mul.i57, double* %scevgep343344, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond767.not = icmp eq i64 %polly.indvar_next340, %polly.indvar333
  br i1 %exitcond767.not, label %polly.loop_exit338, label %polly.loop_header336, !llvm.loop !75

polly.loop_header358:                             ; preds = %polly.loop_exit338, %polly.loop_exit366
  %indvars.iv761 = phi i64 [ %indvars.iv.next762, %polly.loop_exit366 ], [ 1, %polly.loop_exit338 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 0, %polly.loop_exit338 ]
  %114 = mul nuw nsw i64 %polly.indvar361, 480
  %115 = mul nuw nsw i64 %polly.indvar361, 640
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_exit372
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %indvars.iv.next762 = add nuw nsw i64 %indvars.iv761, 1
  %exitcond765.not = icmp eq i64 %polly.indvar_next362, 20
  br i1 %exitcond765.not, label %polly.loop_header358.1, label %polly.loop_header358

polly.loop_header364:                             ; preds = %polly.loop_exit372, %polly.loop_header358
  %polly.indvar367 = phi i64 [ 0, %polly.loop_header358 ], [ %polly.indvar_next368, %polly.loop_exit372 ]
  %116 = shl i64 %polly.indvar367, 3
  %117 = add i64 %116, %114
  %scevgep379 = getelementptr i8, i8* %call2, i64 %117
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !73, !noalias !76
  %scevgep385 = getelementptr i8, i8* %call1, i64 %117
  %scevgep385386 = bitcast i8* %scevgep385 to double*
  %_p_scalar_387 = load double, double* %scevgep385386, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370

polly.loop_exit372:                               ; preds = %polly.loop_header370
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond764.not = icmp eq i64 %polly.indvar_next368, 50
  br i1 %exitcond764.not, label %polly.loop_exit366, label %polly.loop_header364

polly.loop_header370:                             ; preds = %polly.loop_header370, %polly.loop_header364
  %polly.indvar373 = phi i64 [ 0, %polly.loop_header364 ], [ %polly.indvar_next374, %polly.loop_header370 ]
  %118 = mul nuw nsw i64 %polly.indvar373, 480
  %119 = add nuw nsw i64 %118, %116
  %scevgep376 = getelementptr i8, i8* %call1, i64 %119
  %scevgep376377 = bitcast i8* %scevgep376 to double*
  %_p_scalar_378 = load double, double* %scevgep376377, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73 = fmul fast double %_p_scalar_381, %_p_scalar_378
  %scevgep382 = getelementptr i8, i8* %call2, i64 %119
  %scevgep382383 = bitcast i8* %scevgep382 to double*
  %_p_scalar_384 = load double, double* %scevgep382383, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75 = fmul fast double %_p_scalar_387, %_p_scalar_384
  %120 = shl nuw nsw i64 %polly.indvar373, 3
  %121 = add nuw nsw i64 %120, %115
  %scevgep388 = getelementptr i8, i8* %call, i64 %121
  %scevgep388389 = bitcast i8* %scevgep388 to double*
  %_p_scalar_390 = load double, double* %scevgep388389, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_390
  store double %p_add42.i79, double* %scevgep388389, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond763.not = icmp eq i64 %polly.indvar_next374, %indvars.iv761
  br i1 %exitcond763.not, label %polly.loop_exit372, label %polly.loop_header370

polly.loop_header477:                             ; preds = %init_array.exit, %polly.loop_exit485
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit485 ], [ 0, %init_array.exit ]
  %polly.indvar480 = phi i64 [ %polly.indvar_next481, %polly.loop_exit485 ], [ 1, %init_array.exit ]
  %122 = add i64 %indvar, 1
  %123 = mul nuw nsw i64 %polly.indvar480, 640
  %scevgep489 = getelementptr i8, i8* %call, i64 %123
  %min.iters.check1276 = icmp ult i64 %122, 4
  br i1 %min.iters.check1276, label %polly.loop_header483.preheader, label %vector.ph1277

vector.ph1277:                                    ; preds = %polly.loop_header477
  %n.vec1279 = and i64 %122, -4
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %vector.ph1277
  %index1280 = phi i64 [ 0, %vector.ph1277 ], [ %index.next1281, %vector.body1275 ]
  %124 = shl nuw nsw i64 %index1280, 3
  %125 = getelementptr i8, i8* %scevgep489, i64 %124
  %126 = bitcast i8* %125 to <4 x double>*
  %wide.load1284 = load <4 x double>, <4 x double>* %126, align 8, !alias.scope !78, !noalias !80
  %127 = fmul fast <4 x double> %wide.load1284, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %128 = bitcast i8* %125 to <4 x double>*
  store <4 x double> %127, <4 x double>* %128, align 8, !alias.scope !78, !noalias !80
  %index.next1281 = add i64 %index1280, 4
  %129 = icmp eq i64 %index.next1281, %n.vec1279
  br i1 %129, label %middle.block1273, label %vector.body1275, !llvm.loop !83

middle.block1273:                                 ; preds = %vector.body1275
  %cmp.n1283 = icmp eq i64 %122, %n.vec1279
  br i1 %cmp.n1283, label %polly.loop_exit485, label %polly.loop_header483.preheader

polly.loop_header483.preheader:                   ; preds = %polly.loop_header477, %middle.block1273
  %polly.indvar486.ph = phi i64 [ 0, %polly.loop_header477 ], [ %n.vec1279, %middle.block1273 ]
  br label %polly.loop_header483

polly.loop_exit485:                               ; preds = %polly.loop_header483, %middle.block1273
  %polly.indvar_next481 = add nuw nsw i64 %polly.indvar480, 1
  %exitcond778.not = icmp eq i64 %polly.indvar_next481, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond778.not, label %polly.loop_header505, label %polly.loop_header477

polly.loop_header483:                             ; preds = %polly.loop_header483.preheader, %polly.loop_header483
  %polly.indvar486 = phi i64 [ %polly.indvar_next487, %polly.loop_header483 ], [ %polly.indvar486.ph, %polly.loop_header483.preheader ]
  %130 = shl nuw nsw i64 %polly.indvar486, 3
  %scevgep490 = getelementptr i8, i8* %scevgep489, i64 %130
  %scevgep490491 = bitcast i8* %scevgep490 to double*
  %_p_scalar_492 = load double, double* %scevgep490491, align 8, !alias.scope !78, !noalias !80
  %p_mul.i = fmul fast double %_p_scalar_492, 1.200000e+00
  store double %p_mul.i, double* %scevgep490491, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next487 = add nuw nsw i64 %polly.indvar486, 1
  %exitcond777.not = icmp eq i64 %polly.indvar_next487, %polly.indvar480
  br i1 %exitcond777.not, label %polly.loop_exit485, label %polly.loop_header483, !llvm.loop !84

polly.loop_header505:                             ; preds = %polly.loop_exit485, %polly.loop_exit513
  %indvars.iv771 = phi i64 [ %indvars.iv.next772, %polly.loop_exit513 ], [ 1, %polly.loop_exit485 ]
  %polly.indvar508 = phi i64 [ %polly.indvar_next509, %polly.loop_exit513 ], [ 0, %polly.loop_exit485 ]
  %131 = mul nuw nsw i64 %polly.indvar508, 480
  %132 = mul nuw nsw i64 %polly.indvar508, 640
  br label %polly.loop_header511

polly.loop_exit513:                               ; preds = %polly.loop_exit519
  %polly.indvar_next509 = add nuw nsw i64 %polly.indvar508, 1
  %indvars.iv.next772 = add nuw nsw i64 %indvars.iv771, 1
  %exitcond775.not = icmp eq i64 %polly.indvar_next509, 20
  br i1 %exitcond775.not, label %polly.loop_header505.1, label %polly.loop_header505

polly.loop_header511:                             ; preds = %polly.loop_exit519, %polly.loop_header505
  %polly.indvar514 = phi i64 [ 0, %polly.loop_header505 ], [ %polly.indvar_next515, %polly.loop_exit519 ]
  %133 = shl i64 %polly.indvar514, 3
  %134 = add i64 %133, %131
  %scevgep526 = getelementptr i8, i8* %call2, i64 %134
  %scevgep526527 = bitcast i8* %scevgep526 to double*
  %_p_scalar_528 = load double, double* %scevgep526527, align 8, !alias.scope !82, !noalias !85
  %scevgep532 = getelementptr i8, i8* %call1, i64 %134
  %scevgep532533 = bitcast i8* %scevgep532 to double*
  %_p_scalar_534 = load double, double* %scevgep532533, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517

polly.loop_exit519:                               ; preds = %polly.loop_header517
  %polly.indvar_next515 = add nuw nsw i64 %polly.indvar514, 1
  %exitcond774.not = icmp eq i64 %polly.indvar_next515, 50
  br i1 %exitcond774.not, label %polly.loop_exit513, label %polly.loop_header511

polly.loop_header517:                             ; preds = %polly.loop_header517, %polly.loop_header511
  %polly.indvar520 = phi i64 [ 0, %polly.loop_header511 ], [ %polly.indvar_next521, %polly.loop_header517 ]
  %135 = mul nuw nsw i64 %polly.indvar520, 480
  %136 = add nuw nsw i64 %135, %133
  %scevgep523 = getelementptr i8, i8* %call1, i64 %136
  %scevgep523524 = bitcast i8* %scevgep523 to double*
  %_p_scalar_525 = load double, double* %scevgep523524, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i = fmul fast double %_p_scalar_528, %_p_scalar_525
  %scevgep529 = getelementptr i8, i8* %call2, i64 %136
  %scevgep529530 = bitcast i8* %scevgep529 to double*
  %_p_scalar_531 = load double, double* %scevgep529530, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i = fmul fast double %_p_scalar_534, %_p_scalar_531
  %137 = shl nuw nsw i64 %polly.indvar520, 3
  %138 = add nuw nsw i64 %137, %132
  %scevgep535 = getelementptr i8, i8* %call, i64 %138
  %scevgep535536 = bitcast i8* %scevgep535 to double*
  %_p_scalar_537 = load double, double* %scevgep535536, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_537
  store double %p_add42.i, double* %scevgep535536, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521 = add nuw nsw i64 %polly.indvar520, 1
  %exitcond773.not = icmp eq i64 %polly.indvar_next521, %indvars.iv771
  br i1 %exitcond773.not, label %polly.loop_exit519, label %polly.loop_header517

polly.loop_header676:                             ; preds = %entry, %polly.loop_exit684
  %polly.indvar679 = phi i64 [ %polly.indvar_next680, %polly.loop_exit684 ], [ 0, %entry ]
  %139 = mul nuw nsw i64 %polly.indvar679, 640
  %140 = trunc i64 %polly.indvar679 to i32
  %broadcast.splatinsert1007 = insertelement <4 x i32> poison, i32 %140, i32 0
  %broadcast.splat1008 = shufflevector <4 x i32> %broadcast.splatinsert1007, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %polly.loop_header676
  %index999 = phi i64 [ 0, %polly.loop_header676 ], [ %index.next1000, %vector.body997 ]
  %vec.ind1005 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676 ], [ %vec.ind.next1006, %vector.body997 ]
  %141 = mul <4 x i32> %vec.ind1005, %broadcast.splat1008
  %142 = add <4 x i32> %141, <i32 3, i32 3, i32 3, i32 3>
  %143 = urem <4 x i32> %142, <i32 80, i32 80, i32 80, i32 80>
  %144 = sitofp <4 x i32> %143 to <4 x double>
  %145 = fmul fast <4 x double> %144, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %146 = shl i64 %index999, 3
  %147 = add nuw nsw i64 %146, %139
  %148 = getelementptr i8, i8* %call, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %145, <4 x double>* %149, align 8, !alias.scope !87, !noalias !89
  %index.next1000 = add i64 %index999, 4
  %vec.ind.next1006 = add <4 x i32> %vec.ind1005, <i32 4, i32 4, i32 4, i32 4>
  %150 = icmp eq i64 %index.next1000, 32
  br i1 %150, label %polly.loop_exit684, label %vector.body997, !llvm.loop !92

polly.loop_exit684:                               ; preds = %vector.body997
  %polly.indvar_next680 = add nuw nsw i64 %polly.indvar679, 1
  %exitcond797.not = icmp eq i64 %polly.indvar_next680, 32
  br i1 %exitcond797.not, label %polly.loop_header676.1, label %polly.loop_header676

polly.loop_header703:                             ; preds = %polly.loop_exit684.2.2, %polly.loop_exit711
  %polly.indvar706 = phi i64 [ %polly.indvar_next707, %polly.loop_exit711 ], [ 0, %polly.loop_exit684.2.2 ]
  %151 = mul nuw nsw i64 %polly.indvar706, 480
  %152 = trunc i64 %polly.indvar706 to i32
  %broadcast.splatinsert1121 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat1122 = shufflevector <4 x i32> %broadcast.splatinsert1121, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %polly.loop_header703
  %index1113 = phi i64 [ 0, %polly.loop_header703 ], [ %index.next1114, %vector.body1111 ]
  %vec.ind1119 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703 ], [ %vec.ind.next1120, %vector.body1111 ]
  %153 = mul <4 x i32> %vec.ind1119, %broadcast.splat1122
  %154 = add <4 x i32> %153, <i32 2, i32 2, i32 2, i32 2>
  %155 = urem <4 x i32> %154, <i32 60, i32 60, i32 60, i32 60>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %158 = shl i64 %index1113, 3
  %159 = add i64 %158, %151
  %160 = getelementptr i8, i8* %call2, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !91, !noalias !93
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1120 = add <4 x i32> %vec.ind1119, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next1114, 32
  br i1 %162, label %polly.loop_exit711, label %vector.body1111, !llvm.loop !94

polly.loop_exit711:                               ; preds = %vector.body1111
  %polly.indvar_next707 = add nuw nsw i64 %polly.indvar706, 1
  %exitcond788.not = icmp eq i64 %polly.indvar_next707, 32
  br i1 %exitcond788.not, label %polly.loop_header703.1, label %polly.loop_header703

polly.loop_header729:                             ; preds = %polly.loop_exit711.1.2, %polly.loop_exit737
  %polly.indvar732 = phi i64 [ %polly.indvar_next733, %polly.loop_exit737 ], [ 0, %polly.loop_exit711.1.2 ]
  %163 = mul nuw nsw i64 %polly.indvar732, 480
  %164 = trunc i64 %polly.indvar732 to i32
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %164, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %polly.loop_header729
  %index1191 = phi i64 [ 0, %polly.loop_header729 ], [ %index.next1192, %vector.body1189 ]
  %vec.ind1197 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729 ], [ %vec.ind.next1198, %vector.body1189 ]
  %165 = mul <4 x i32> %vec.ind1197, %broadcast.splat1200
  %166 = add <4 x i32> %165, <i32 1, i32 1, i32 1, i32 1>
  %167 = urem <4 x i32> %166, <i32 80, i32 80, i32 80, i32 80>
  %168 = sitofp <4 x i32> %167 to <4 x double>
  %169 = fmul fast <4 x double> %168, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %170 = shl i64 %index1191, 3
  %171 = add i64 %170, %163
  %172 = getelementptr i8, i8* %call1, i64 %171
  %173 = bitcast i8* %172 to <4 x double>*
  store <4 x double> %169, <4 x double>* %173, align 8, !alias.scope !90, !noalias !95
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1198 = add <4 x i32> %vec.ind1197, <i32 4, i32 4, i32 4, i32 4>
  %174 = icmp eq i64 %index.next1192, 32
  br i1 %174, label %polly.loop_exit737, label %vector.body1189, !llvm.loop !96

polly.loop_exit737:                               ; preds = %vector.body1189
  %polly.indvar_next733 = add nuw nsw i64 %polly.indvar732, 1
  %exitcond782.not = icmp eq i64 %polly.indvar_next733, 32
  br i1 %exitcond782.not, label %polly.loop_header729.1, label %polly.loop_header729

polly.loop_header211.1:                           ; preds = %polly.loop_exit219, %polly.loop_exit219.1
  %indvars.iv752.1 = phi i64 [ %indvars.iv.next753.1, %polly.loop_exit219.1 ], [ 1, %polly.loop_exit219 ]
  %polly.indvar214.1 = phi i64 [ %polly.indvar_next215.1, %polly.loop_exit219.1 ], [ 0, %polly.loop_exit219 ]
  %175 = mul nuw nsw i64 %polly.indvar214.1, 480
  %176 = mul nuw nsw i64 %polly.indvar214.1, 640
  br label %polly.loop_header217.1

polly.loop_header217.1:                           ; preds = %polly.loop_exit225.1, %polly.loop_header211.1
  %polly.indvar220.1 = phi i64 [ 0, %polly.loop_header211.1 ], [ %polly.indvar_next221.1, %polly.loop_exit225.1 ]
  %177 = shl i64 %polly.indvar220.1, 3
  %178 = add i64 %177, 400
  %179 = add i64 %178, %175
  %scevgep232.1 = getelementptr i8, i8* %call2, i64 %179
  %scevgep232233.1 = bitcast i8* %scevgep232.1 to double*
  %_p_scalar_234.1 = load double, double* %scevgep232233.1, align 8, !alias.scope !63, !noalias !67
  %scevgep238.1 = getelementptr i8, i8* %call1, i64 %179
  %scevgep238239.1 = bitcast i8* %scevgep238.1 to double*
  %_p_scalar_240.1 = load double, double* %scevgep238239.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.1

polly.loop_header223.1:                           ; preds = %polly.loop_header223.1, %polly.loop_header217.1
  %polly.indvar226.1 = phi i64 [ 0, %polly.loop_header217.1 ], [ %polly.indvar_next227.1, %polly.loop_header223.1 ]
  %180 = mul nuw nsw i64 %polly.indvar226.1, 480
  %181 = add nuw nsw i64 %180, %178
  %scevgep229.1 = getelementptr i8, i8* %call1, i64 %181
  %scevgep229230.1 = bitcast i8* %scevgep229.1 to double*
  %_p_scalar_231.1 = load double, double* %scevgep229230.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.1 = fmul fast double %_p_scalar_234.1, %_p_scalar_231.1
  %scevgep235.1 = getelementptr i8, i8* %call2, i64 %181
  %scevgep235236.1 = bitcast i8* %scevgep235.1 to double*
  %_p_scalar_237.1 = load double, double* %scevgep235236.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.1 = fmul fast double %_p_scalar_240.1, %_p_scalar_237.1
  %182 = shl nuw nsw i64 %polly.indvar226.1, 3
  %183 = add nuw nsw i64 %182, %176
  %scevgep241.1 = getelementptr i8, i8* %call, i64 %183
  %scevgep241242.1 = bitcast i8* %scevgep241.1 to double*
  %_p_scalar_243.1 = load double, double* %scevgep241242.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_243.1
  store double %p_add42.i118.1, double* %scevgep241242.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.1 = add nuw nsw i64 %polly.indvar226.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next227.1, %indvars.iv752.1
  br i1 %exitcond.1.not, label %polly.loop_exit225.1, label %polly.loop_header223.1

polly.loop_exit225.1:                             ; preds = %polly.loop_header223.1
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond754.1.not = icmp eq i64 %polly.indvar_next221.1, 10
  br i1 %exitcond754.1.not, label %polly.loop_exit219.1, label %polly.loop_header217.1

polly.loop_exit219.1:                             ; preds = %polly.loop_exit225.1
  %polly.indvar_next215.1 = add nuw nsw i64 %polly.indvar214.1, 1
  %indvars.iv.next753.1 = add nuw nsw i64 %indvars.iv752.1, 1
  %exitcond755.1.not = icmp eq i64 %polly.indvar_next215.1, 20
  br i1 %exitcond755.1.not, label %polly.loop_header211.1806, label %polly.loop_header211.1

polly.loop_header211.1806:                        ; preds = %polly.loop_exit219.1, %polly.loop_exit219.1839
  %indvars.iv752.1804 = phi i64 [ %indvars.iv.next753.1837, %polly.loop_exit219.1839 ], [ 21, %polly.loop_exit219.1 ]
  %polly.indvar214.1805 = phi i64 [ %polly.indvar_next215.1836, %polly.loop_exit219.1839 ], [ 0, %polly.loop_exit219.1 ]
  %184 = add nuw nsw i64 %polly.indvar214.1805, 20
  %185 = mul nuw nsw i64 %184, 480
  %186 = mul nuw nsw i64 %184, 640
  br label %polly.loop_header217.1814

polly.loop_header217.1814:                        ; preds = %polly.loop_exit225.1835, %polly.loop_header211.1806
  %polly.indvar220.1807 = phi i64 [ 0, %polly.loop_header211.1806 ], [ %polly.indvar_next221.1833, %polly.loop_exit225.1835 ]
  %187 = shl i64 %polly.indvar220.1807, 3
  %188 = add i64 %187, %185
  %scevgep232.1808 = getelementptr i8, i8* %call2, i64 %188
  %scevgep232233.1809 = bitcast i8* %scevgep232.1808 to double*
  %_p_scalar_234.1810 = load double, double* %scevgep232233.1809, align 8, !alias.scope !63, !noalias !67
  %scevgep238.1811 = getelementptr i8, i8* %call1, i64 %188
  %scevgep238239.1812 = bitcast i8* %scevgep238.1811 to double*
  %_p_scalar_240.1813 = load double, double* %scevgep238239.1812, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.1832

polly.loop_header223.1832:                        ; preds = %polly.loop_header223.1832, %polly.loop_header217.1814
  %polly.indvar226.1815 = phi i64 [ 0, %polly.loop_header217.1814 ], [ %polly.indvar_next227.1830, %polly.loop_header223.1832 ]
  %189 = mul nuw nsw i64 %polly.indvar226.1815, 480
  %190 = add nuw nsw i64 %189, %187
  %scevgep229.1816 = getelementptr i8, i8* %call1, i64 %190
  %scevgep229230.1817 = bitcast i8* %scevgep229.1816 to double*
  %_p_scalar_231.1818 = load double, double* %scevgep229230.1817, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.1819 = fmul fast double %_p_scalar_234.1810, %_p_scalar_231.1818
  %scevgep235.1820 = getelementptr i8, i8* %call2, i64 %190
  %scevgep235236.1821 = bitcast i8* %scevgep235.1820 to double*
  %_p_scalar_237.1822 = load double, double* %scevgep235236.1821, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.1823 = fmul fast double %_p_scalar_240.1813, %_p_scalar_237.1822
  %191 = shl nuw nsw i64 %polly.indvar226.1815, 3
  %192 = add nuw nsw i64 %191, %186
  %scevgep241.1824 = getelementptr i8, i8* %call, i64 %192
  %scevgep241242.1825 = bitcast i8* %scevgep241.1824 to double*
  %_p_scalar_243.1826 = load double, double* %scevgep241242.1825, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.1827 = fadd fast double %p_mul37.i114.1823, %p_mul27.i112.1819
  %p_reass.mul.i117.1828 = fmul fast double %p_reass.add.i116.1827, 1.500000e+00
  %p_add42.i118.1829 = fadd fast double %p_reass.mul.i117.1828, %_p_scalar_243.1826
  store double %p_add42.i118.1829, double* %scevgep241242.1825, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.1830 = add nuw nsw i64 %polly.indvar226.1815, 1
  %exitcond.1831.not = icmp eq i64 %polly.indvar_next227.1830, %indvars.iv752.1804
  br i1 %exitcond.1831.not, label %polly.loop_exit225.1835, label %polly.loop_header223.1832

polly.loop_exit225.1835:                          ; preds = %polly.loop_header223.1832
  %polly.indvar_next221.1833 = add nuw nsw i64 %polly.indvar220.1807, 1
  %exitcond754.1834.not = icmp eq i64 %polly.indvar_next221.1833, 50
  br i1 %exitcond754.1834.not, label %polly.loop_exit219.1839, label %polly.loop_header217.1814

polly.loop_exit219.1839:                          ; preds = %polly.loop_exit225.1835
  %polly.indvar_next215.1836 = add nuw nsw i64 %polly.indvar214.1805, 1
  %indvars.iv.next753.1837 = add nuw nsw i64 %indvars.iv752.1804, 1
  %exitcond755.1838.not = icmp eq i64 %polly.indvar_next215.1836, 20
  br i1 %exitcond755.1838.not, label %polly.loop_header211.1.1, label %polly.loop_header211.1806

polly.loop_header211.1.1:                         ; preds = %polly.loop_exit219.1839, %polly.loop_exit219.1.1
  %indvars.iv752.1.1 = phi i64 [ %indvars.iv.next753.1.1, %polly.loop_exit219.1.1 ], [ 21, %polly.loop_exit219.1839 ]
  %polly.indvar214.1.1 = phi i64 [ %polly.indvar_next215.1.1, %polly.loop_exit219.1.1 ], [ 0, %polly.loop_exit219.1839 ]
  %193 = add nuw nsw i64 %polly.indvar214.1.1, 20
  %194 = mul nuw nsw i64 %193, 480
  %195 = mul nuw nsw i64 %193, 640
  br label %polly.loop_header217.1.1

polly.loop_header217.1.1:                         ; preds = %polly.loop_exit225.1.1, %polly.loop_header211.1.1
  %polly.indvar220.1.1 = phi i64 [ 0, %polly.loop_header211.1.1 ], [ %polly.indvar_next221.1.1, %polly.loop_exit225.1.1 ]
  %196 = shl i64 %polly.indvar220.1.1, 3
  %197 = add i64 %196, 400
  %198 = add i64 %197, %194
  %scevgep232.1.1 = getelementptr i8, i8* %call2, i64 %198
  %scevgep232233.1.1 = bitcast i8* %scevgep232.1.1 to double*
  %_p_scalar_234.1.1 = load double, double* %scevgep232233.1.1, align 8, !alias.scope !63, !noalias !67
  %scevgep238.1.1 = getelementptr i8, i8* %call1, i64 %198
  %scevgep238239.1.1 = bitcast i8* %scevgep238.1.1 to double*
  %_p_scalar_240.1.1 = load double, double* %scevgep238239.1.1, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.1.1

polly.loop_header223.1.1:                         ; preds = %polly.loop_header223.1.1, %polly.loop_header217.1.1
  %polly.indvar226.1.1 = phi i64 [ 0, %polly.loop_header217.1.1 ], [ %polly.indvar_next227.1.1, %polly.loop_header223.1.1 ]
  %199 = mul nuw nsw i64 %polly.indvar226.1.1, 480
  %200 = add nuw nsw i64 %199, %197
  %scevgep229.1.1 = getelementptr i8, i8* %call1, i64 %200
  %scevgep229230.1.1 = bitcast i8* %scevgep229.1.1 to double*
  %_p_scalar_231.1.1 = load double, double* %scevgep229230.1.1, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.1.1 = fmul fast double %_p_scalar_234.1.1, %_p_scalar_231.1.1
  %scevgep235.1.1 = getelementptr i8, i8* %call2, i64 %200
  %scevgep235236.1.1 = bitcast i8* %scevgep235.1.1 to double*
  %_p_scalar_237.1.1 = load double, double* %scevgep235236.1.1, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.1.1 = fmul fast double %_p_scalar_240.1.1, %_p_scalar_237.1.1
  %201 = shl nuw nsw i64 %polly.indvar226.1.1, 3
  %202 = add nuw nsw i64 %201, %195
  %scevgep241.1.1 = getelementptr i8, i8* %call, i64 %202
  %scevgep241242.1.1 = bitcast i8* %scevgep241.1.1 to double*
  %_p_scalar_243.1.1 = load double, double* %scevgep241242.1.1, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.1.1 = fadd fast double %p_mul37.i114.1.1, %p_mul27.i112.1.1
  %p_reass.mul.i117.1.1 = fmul fast double %p_reass.add.i116.1.1, 1.500000e+00
  %p_add42.i118.1.1 = fadd fast double %p_reass.mul.i117.1.1, %_p_scalar_243.1.1
  store double %p_add42.i118.1.1, double* %scevgep241242.1.1, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.1.1 = add nuw nsw i64 %polly.indvar226.1.1, 1
  %exitcond.1.1.not = icmp eq i64 %polly.indvar_next227.1.1, %indvars.iv752.1.1
  br i1 %exitcond.1.1.not, label %polly.loop_exit225.1.1, label %polly.loop_header223.1.1

polly.loop_exit225.1.1:                           ; preds = %polly.loop_header223.1.1
  %polly.indvar_next221.1.1 = add nuw nsw i64 %polly.indvar220.1.1, 1
  %exitcond754.1.1.not = icmp eq i64 %polly.indvar_next221.1.1, 10
  br i1 %exitcond754.1.1.not, label %polly.loop_exit219.1.1, label %polly.loop_header217.1.1

polly.loop_exit219.1.1:                           ; preds = %polly.loop_exit225.1.1
  %polly.indvar_next215.1.1 = add nuw nsw i64 %polly.indvar214.1.1, 1
  %indvars.iv.next753.1.1 = add nuw nsw i64 %indvars.iv752.1.1, 1
  %exitcond755.1.1.not = icmp eq i64 %polly.indvar_next215.1.1, 20
  br i1 %exitcond755.1.1.not, label %polly.loop_header211.2, label %polly.loop_header211.1.1

polly.loop_header211.2:                           ; preds = %polly.loop_exit219.1.1, %polly.loop_exit219.2
  %indvars.iv752.2 = phi i64 [ %indvars.iv.next753.2, %polly.loop_exit219.2 ], [ 41, %polly.loop_exit219.1.1 ]
  %polly.indvar214.2 = phi i64 [ %polly.indvar_next215.2, %polly.loop_exit219.2 ], [ 0, %polly.loop_exit219.1.1 ]
  %203 = add nuw nsw i64 %polly.indvar214.2, 40
  %204 = mul nuw nsw i64 %203, 480
  %205 = mul nuw nsw i64 %203, 640
  br label %polly.loop_header217.2

polly.loop_header217.2:                           ; preds = %polly.loop_exit225.2, %polly.loop_header211.2
  %polly.indvar220.2 = phi i64 [ 0, %polly.loop_header211.2 ], [ %polly.indvar_next221.2, %polly.loop_exit225.2 ]
  %206 = shl i64 %polly.indvar220.2, 3
  %207 = add i64 %206, %204
  %scevgep232.2 = getelementptr i8, i8* %call2, i64 %207
  %scevgep232233.2 = bitcast i8* %scevgep232.2 to double*
  %_p_scalar_234.2 = load double, double* %scevgep232233.2, align 8, !alias.scope !63, !noalias !67
  %scevgep238.2 = getelementptr i8, i8* %call1, i64 %207
  %scevgep238239.2 = bitcast i8* %scevgep238.2 to double*
  %_p_scalar_240.2 = load double, double* %scevgep238239.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.2

polly.loop_header223.2:                           ; preds = %polly.loop_header223.2, %polly.loop_header217.2
  %polly.indvar226.2 = phi i64 [ 0, %polly.loop_header217.2 ], [ %polly.indvar_next227.2, %polly.loop_header223.2 ]
  %208 = mul nuw nsw i64 %polly.indvar226.2, 480
  %209 = add nuw nsw i64 %208, %206
  %scevgep229.2 = getelementptr i8, i8* %call1, i64 %209
  %scevgep229230.2 = bitcast i8* %scevgep229.2 to double*
  %_p_scalar_231.2 = load double, double* %scevgep229230.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.2 = fmul fast double %_p_scalar_234.2, %_p_scalar_231.2
  %scevgep235.2 = getelementptr i8, i8* %call2, i64 %209
  %scevgep235236.2 = bitcast i8* %scevgep235.2 to double*
  %_p_scalar_237.2 = load double, double* %scevgep235236.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.2 = fmul fast double %_p_scalar_240.2, %_p_scalar_237.2
  %210 = shl nuw nsw i64 %polly.indvar226.2, 3
  %211 = add nuw nsw i64 %210, %205
  %scevgep241.2 = getelementptr i8, i8* %call, i64 %211
  %scevgep241242.2 = bitcast i8* %scevgep241.2 to double*
  %_p_scalar_243.2 = load double, double* %scevgep241242.2, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.2 = fadd fast double %p_mul37.i114.2, %p_mul27.i112.2
  %p_reass.mul.i117.2 = fmul fast double %p_reass.add.i116.2, 1.500000e+00
  %p_add42.i118.2 = fadd fast double %p_reass.mul.i117.2, %_p_scalar_243.2
  store double %p_add42.i118.2, double* %scevgep241242.2, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.2 = add nuw nsw i64 %polly.indvar226.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next227.2, %indvars.iv752.2
  br i1 %exitcond.2.not, label %polly.loop_exit225.2, label %polly.loop_header223.2

polly.loop_exit225.2:                             ; preds = %polly.loop_header223.2
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond754.2.not = icmp eq i64 %polly.indvar_next221.2, 50
  br i1 %exitcond754.2.not, label %polly.loop_exit219.2, label %polly.loop_header217.2

polly.loop_exit219.2:                             ; preds = %polly.loop_exit225.2
  %polly.indvar_next215.2 = add nuw nsw i64 %polly.indvar214.2, 1
  %indvars.iv.next753.2 = add nuw nsw i64 %indvars.iv752.2, 1
  %exitcond755.2.not = icmp eq i64 %polly.indvar_next215.2, 20
  br i1 %exitcond755.2.not, label %polly.loop_header211.1.2, label %polly.loop_header211.2

polly.loop_header211.1.2:                         ; preds = %polly.loop_exit219.2, %polly.loop_exit219.1.2
  %indvars.iv752.1.2 = phi i64 [ %indvars.iv.next753.1.2, %polly.loop_exit219.1.2 ], [ 41, %polly.loop_exit219.2 ]
  %polly.indvar214.1.2 = phi i64 [ %polly.indvar_next215.1.2, %polly.loop_exit219.1.2 ], [ 0, %polly.loop_exit219.2 ]
  %212 = add nuw nsw i64 %polly.indvar214.1.2, 40
  %213 = mul nuw nsw i64 %212, 480
  %214 = mul nuw nsw i64 %212, 640
  br label %polly.loop_header217.1.2

polly.loop_header217.1.2:                         ; preds = %polly.loop_exit225.1.2, %polly.loop_header211.1.2
  %polly.indvar220.1.2 = phi i64 [ 0, %polly.loop_header211.1.2 ], [ %polly.indvar_next221.1.2, %polly.loop_exit225.1.2 ]
  %215 = shl i64 %polly.indvar220.1.2, 3
  %216 = add i64 %215, 400
  %217 = add i64 %216, %213
  %scevgep232.1.2 = getelementptr i8, i8* %call2, i64 %217
  %scevgep232233.1.2 = bitcast i8* %scevgep232.1.2 to double*
  %_p_scalar_234.1.2 = load double, double* %scevgep232233.1.2, align 8, !alias.scope !63, !noalias !67
  %scevgep238.1.2 = getelementptr i8, i8* %call1, i64 %217
  %scevgep238239.1.2 = bitcast i8* %scevgep238.1.2 to double*
  %_p_scalar_240.1.2 = load double, double* %scevgep238239.1.2, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.1.2

polly.loop_header223.1.2:                         ; preds = %polly.loop_header223.1.2, %polly.loop_header217.1.2
  %polly.indvar226.1.2 = phi i64 [ 0, %polly.loop_header217.1.2 ], [ %polly.indvar_next227.1.2, %polly.loop_header223.1.2 ]
  %218 = mul nuw nsw i64 %polly.indvar226.1.2, 480
  %219 = add nuw nsw i64 %218, %216
  %scevgep229.1.2 = getelementptr i8, i8* %call1, i64 %219
  %scevgep229230.1.2 = bitcast i8* %scevgep229.1.2 to double*
  %_p_scalar_231.1.2 = load double, double* %scevgep229230.1.2, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.1.2 = fmul fast double %_p_scalar_234.1.2, %_p_scalar_231.1.2
  %scevgep235.1.2 = getelementptr i8, i8* %call2, i64 %219
  %scevgep235236.1.2 = bitcast i8* %scevgep235.1.2 to double*
  %_p_scalar_237.1.2 = load double, double* %scevgep235236.1.2, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.1.2 = fmul fast double %_p_scalar_240.1.2, %_p_scalar_237.1.2
  %220 = shl nuw nsw i64 %polly.indvar226.1.2, 3
  %221 = add nuw nsw i64 %220, %214
  %scevgep241.1.2 = getelementptr i8, i8* %call, i64 %221
  %scevgep241242.1.2 = bitcast i8* %scevgep241.1.2 to double*
  %_p_scalar_243.1.2 = load double, double* %scevgep241242.1.2, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.1.2 = fadd fast double %p_mul37.i114.1.2, %p_mul27.i112.1.2
  %p_reass.mul.i117.1.2 = fmul fast double %p_reass.add.i116.1.2, 1.500000e+00
  %p_add42.i118.1.2 = fadd fast double %p_reass.mul.i117.1.2, %_p_scalar_243.1.2
  store double %p_add42.i118.1.2, double* %scevgep241242.1.2, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.1.2 = add nuw nsw i64 %polly.indvar226.1.2, 1
  %exitcond.1.2.not = icmp eq i64 %polly.indvar_next227.1.2, %indvars.iv752.1.2
  br i1 %exitcond.1.2.not, label %polly.loop_exit225.1.2, label %polly.loop_header223.1.2

polly.loop_exit225.1.2:                           ; preds = %polly.loop_header223.1.2
  %polly.indvar_next221.1.2 = add nuw nsw i64 %polly.indvar220.1.2, 1
  %exitcond754.1.2.not = icmp eq i64 %polly.indvar_next221.1.2, 10
  br i1 %exitcond754.1.2.not, label %polly.loop_exit219.1.2, label %polly.loop_header217.1.2

polly.loop_exit219.1.2:                           ; preds = %polly.loop_exit225.1.2
  %polly.indvar_next215.1.2 = add nuw nsw i64 %polly.indvar214.1.2, 1
  %indvars.iv.next753.1.2 = add nuw nsw i64 %indvars.iv752.1.2, 1
  %exitcond755.1.2.not = icmp eq i64 %polly.indvar_next215.1.2, 20
  br i1 %exitcond755.1.2.not, label %polly.loop_header211.3, label %polly.loop_header211.1.2

polly.loop_header211.3:                           ; preds = %polly.loop_exit219.1.2, %polly.loop_exit219.3
  %indvars.iv752.3 = phi i64 [ %indvars.iv.next753.3, %polly.loop_exit219.3 ], [ 61, %polly.loop_exit219.1.2 ]
  %polly.indvar214.3 = phi i64 [ %polly.indvar_next215.3, %polly.loop_exit219.3 ], [ 0, %polly.loop_exit219.1.2 ]
  %222 = add nuw nsw i64 %polly.indvar214.3, 60
  %223 = mul nuw nsw i64 %222, 480
  %224 = mul nuw nsw i64 %222, 640
  br label %polly.loop_header217.3

polly.loop_header217.3:                           ; preds = %polly.loop_exit225.3, %polly.loop_header211.3
  %polly.indvar220.3 = phi i64 [ 0, %polly.loop_header211.3 ], [ %polly.indvar_next221.3, %polly.loop_exit225.3 ]
  %225 = shl i64 %polly.indvar220.3, 3
  %226 = add i64 %225, %223
  %scevgep232.3 = getelementptr i8, i8* %call2, i64 %226
  %scevgep232233.3 = bitcast i8* %scevgep232.3 to double*
  %_p_scalar_234.3 = load double, double* %scevgep232233.3, align 8, !alias.scope !63, !noalias !67
  %scevgep238.3 = getelementptr i8, i8* %call1, i64 %226
  %scevgep238239.3 = bitcast i8* %scevgep238.3 to double*
  %_p_scalar_240.3 = load double, double* %scevgep238239.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.3

polly.loop_header223.3:                           ; preds = %polly.loop_header223.3, %polly.loop_header217.3
  %polly.indvar226.3 = phi i64 [ 0, %polly.loop_header217.3 ], [ %polly.indvar_next227.3, %polly.loop_header223.3 ]
  %227 = mul nuw nsw i64 %polly.indvar226.3, 480
  %228 = add nuw nsw i64 %227, %225
  %scevgep229.3 = getelementptr i8, i8* %call1, i64 %228
  %scevgep229230.3 = bitcast i8* %scevgep229.3 to double*
  %_p_scalar_231.3 = load double, double* %scevgep229230.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.3 = fmul fast double %_p_scalar_234.3, %_p_scalar_231.3
  %scevgep235.3 = getelementptr i8, i8* %call2, i64 %228
  %scevgep235236.3 = bitcast i8* %scevgep235.3 to double*
  %_p_scalar_237.3 = load double, double* %scevgep235236.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.3 = fmul fast double %_p_scalar_240.3, %_p_scalar_237.3
  %229 = shl nuw nsw i64 %polly.indvar226.3, 3
  %230 = add nuw nsw i64 %229, %224
  %scevgep241.3 = getelementptr i8, i8* %call, i64 %230
  %scevgep241242.3 = bitcast i8* %scevgep241.3 to double*
  %_p_scalar_243.3 = load double, double* %scevgep241242.3, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.3 = fadd fast double %p_mul37.i114.3, %p_mul27.i112.3
  %p_reass.mul.i117.3 = fmul fast double %p_reass.add.i116.3, 1.500000e+00
  %p_add42.i118.3 = fadd fast double %p_reass.mul.i117.3, %_p_scalar_243.3
  store double %p_add42.i118.3, double* %scevgep241242.3, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.3 = add nuw nsw i64 %polly.indvar226.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next227.3, %indvars.iv752.3
  br i1 %exitcond.3.not, label %polly.loop_exit225.3, label %polly.loop_header223.3

polly.loop_exit225.3:                             ; preds = %polly.loop_header223.3
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond754.3.not = icmp eq i64 %polly.indvar_next221.3, 50
  br i1 %exitcond754.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_exit225.3
  %polly.indvar_next215.3 = add nuw nsw i64 %polly.indvar214.3, 1
  %indvars.iv.next753.3 = add nuw nsw i64 %indvars.iv752.3, 1
  %exitcond755.3.not = icmp eq i64 %polly.indvar_next215.3, 20
  br i1 %exitcond755.3.not, label %polly.loop_header211.1.3, label %polly.loop_header211.3

polly.loop_header211.1.3:                         ; preds = %polly.loop_exit219.3, %polly.loop_exit219.1.3
  %indvars.iv752.1.3 = phi i64 [ %indvars.iv.next753.1.3, %polly.loop_exit219.1.3 ], [ 61, %polly.loop_exit219.3 ]
  %polly.indvar214.1.3 = phi i64 [ %polly.indvar_next215.1.3, %polly.loop_exit219.1.3 ], [ 0, %polly.loop_exit219.3 ]
  %231 = add nuw nsw i64 %polly.indvar214.1.3, 60
  %232 = mul nuw nsw i64 %231, 480
  %233 = mul nuw nsw i64 %231, 640
  br label %polly.loop_header217.1.3

polly.loop_header217.1.3:                         ; preds = %polly.loop_exit225.1.3, %polly.loop_header211.1.3
  %polly.indvar220.1.3 = phi i64 [ 0, %polly.loop_header211.1.3 ], [ %polly.indvar_next221.1.3, %polly.loop_exit225.1.3 ]
  %234 = shl i64 %polly.indvar220.1.3, 3
  %235 = add i64 %234, 400
  %236 = add i64 %235, %232
  %scevgep232.1.3 = getelementptr i8, i8* %call2, i64 %236
  %scevgep232233.1.3 = bitcast i8* %scevgep232.1.3 to double*
  %_p_scalar_234.1.3 = load double, double* %scevgep232233.1.3, align 8, !alias.scope !63, !noalias !67
  %scevgep238.1.3 = getelementptr i8, i8* %call1, i64 %236
  %scevgep238239.1.3 = bitcast i8* %scevgep238.1.3 to double*
  %_p_scalar_240.1.3 = load double, double* %scevgep238239.1.3, align 8, !alias.scope !62, !noalias !68
  br label %polly.loop_header223.1.3

polly.loop_header223.1.3:                         ; preds = %polly.loop_header223.1.3, %polly.loop_header217.1.3
  %polly.indvar226.1.3 = phi i64 [ 0, %polly.loop_header217.1.3 ], [ %polly.indvar_next227.1.3, %polly.loop_header223.1.3 ]
  %237 = mul nuw nsw i64 %polly.indvar226.1.3, 480
  %238 = add nuw nsw i64 %237, %235
  %scevgep229.1.3 = getelementptr i8, i8* %call1, i64 %238
  %scevgep229230.1.3 = bitcast i8* %scevgep229.1.3 to double*
  %_p_scalar_231.1.3 = load double, double* %scevgep229230.1.3, align 8, !alias.scope !62, !noalias !68
  %p_mul27.i112.1.3 = fmul fast double %_p_scalar_234.1.3, %_p_scalar_231.1.3
  %scevgep235.1.3 = getelementptr i8, i8* %call2, i64 %238
  %scevgep235236.1.3 = bitcast i8* %scevgep235.1.3 to double*
  %_p_scalar_237.1.3 = load double, double* %scevgep235236.1.3, align 8, !alias.scope !63, !noalias !67
  %p_mul37.i114.1.3 = fmul fast double %_p_scalar_240.1.3, %_p_scalar_237.1.3
  %239 = shl nuw nsw i64 %polly.indvar226.1.3, 3
  %240 = add nuw nsw i64 %239, %233
  %scevgep241.1.3 = getelementptr i8, i8* %call, i64 %240
  %scevgep241242.1.3 = bitcast i8* %scevgep241.1.3 to double*
  %_p_scalar_243.1.3 = load double, double* %scevgep241242.1.3, align 8, !alias.scope !59, !noalias !61
  %p_reass.add.i116.1.3 = fadd fast double %p_mul37.i114.1.3, %p_mul27.i112.1.3
  %p_reass.mul.i117.1.3 = fmul fast double %p_reass.add.i116.1.3, 1.500000e+00
  %p_add42.i118.1.3 = fadd fast double %p_reass.mul.i117.1.3, %_p_scalar_243.1.3
  store double %p_add42.i118.1.3, double* %scevgep241242.1.3, align 8, !alias.scope !59, !noalias !61
  %polly.indvar_next227.1.3 = add nuw nsw i64 %polly.indvar226.1.3, 1
  %exitcond.1.3.not = icmp eq i64 %polly.indvar_next227.1.3, %indvars.iv752.1.3
  br i1 %exitcond.1.3.not, label %polly.loop_exit225.1.3, label %polly.loop_header223.1.3

polly.loop_exit225.1.3:                           ; preds = %polly.loop_header223.1.3
  %polly.indvar_next221.1.3 = add nuw nsw i64 %polly.indvar220.1.3, 1
  %exitcond754.1.3.not = icmp eq i64 %polly.indvar_next221.1.3, 10
  br i1 %exitcond754.1.3.not, label %polly.loop_exit219.1.3, label %polly.loop_header217.1.3

polly.loop_exit219.1.3:                           ; preds = %polly.loop_exit225.1.3
  %polly.indvar_next215.1.3 = add nuw nsw i64 %polly.indvar214.1.3, 1
  %indvars.iv.next753.1.3 = add nuw nsw i64 %indvars.iv752.1.3, 1
  %exitcond755.1.3.not = icmp eq i64 %polly.indvar_next215.1.3, 20
  br i1 %exitcond755.1.3.not, label %kernel_syr2k.exit129, label %polly.loop_header211.1.3

polly.loop_header358.1:                           ; preds = %polly.loop_exit366, %polly.loop_exit366.1
  %indvars.iv761.1 = phi i64 [ %indvars.iv.next762.1, %polly.loop_exit366.1 ], [ 1, %polly.loop_exit366 ]
  %polly.indvar361.1 = phi i64 [ %polly.indvar_next362.1, %polly.loop_exit366.1 ], [ 0, %polly.loop_exit366 ]
  %241 = mul nuw nsw i64 %polly.indvar361.1, 480
  %242 = mul nuw nsw i64 %polly.indvar361.1, 640
  br label %polly.loop_header364.1

polly.loop_header364.1:                           ; preds = %polly.loop_exit372.1, %polly.loop_header358.1
  %polly.indvar367.1 = phi i64 [ 0, %polly.loop_header358.1 ], [ %polly.indvar_next368.1, %polly.loop_exit372.1 ]
  %243 = shl i64 %polly.indvar367.1, 3
  %244 = add i64 %243, 400
  %245 = add i64 %244, %241
  %scevgep379.1 = getelementptr i8, i8* %call2, i64 %245
  %scevgep379380.1 = bitcast i8* %scevgep379.1 to double*
  %_p_scalar_381.1 = load double, double* %scevgep379380.1, align 8, !alias.scope !73, !noalias !76
  %scevgep385.1 = getelementptr i8, i8* %call1, i64 %245
  %scevgep385386.1 = bitcast i8* %scevgep385.1 to double*
  %_p_scalar_387.1 = load double, double* %scevgep385386.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.1

polly.loop_header370.1:                           ; preds = %polly.loop_header370.1, %polly.loop_header364.1
  %polly.indvar373.1 = phi i64 [ 0, %polly.loop_header364.1 ], [ %polly.indvar_next374.1, %polly.loop_header370.1 ]
  %246 = mul nuw nsw i64 %polly.indvar373.1, 480
  %247 = add nuw nsw i64 %246, %244
  %scevgep376.1 = getelementptr i8, i8* %call1, i64 %247
  %scevgep376377.1 = bitcast i8* %scevgep376.1 to double*
  %_p_scalar_378.1 = load double, double* %scevgep376377.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1 = fmul fast double %_p_scalar_381.1, %_p_scalar_378.1
  %scevgep382.1 = getelementptr i8, i8* %call2, i64 %247
  %scevgep382383.1 = bitcast i8* %scevgep382.1 to double*
  %_p_scalar_384.1 = load double, double* %scevgep382383.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1 = fmul fast double %_p_scalar_387.1, %_p_scalar_384.1
  %248 = shl nuw nsw i64 %polly.indvar373.1, 3
  %249 = add nuw nsw i64 %248, %242
  %scevgep388.1 = getelementptr i8, i8* %call, i64 %249
  %scevgep388389.1 = bitcast i8* %scevgep388.1 to double*
  %_p_scalar_390.1 = load double, double* %scevgep388389.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_390.1
  store double %p_add42.i79.1, double* %scevgep388389.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.1 = add nuw nsw i64 %polly.indvar373.1, 1
  %exitcond763.1.not = icmp eq i64 %polly.indvar_next374.1, %indvars.iv761.1
  br i1 %exitcond763.1.not, label %polly.loop_exit372.1, label %polly.loop_header370.1

polly.loop_exit372.1:                             ; preds = %polly.loop_header370.1
  %polly.indvar_next368.1 = add nuw nsw i64 %polly.indvar367.1, 1
  %exitcond764.1.not = icmp eq i64 %polly.indvar_next368.1, 10
  br i1 %exitcond764.1.not, label %polly.loop_exit366.1, label %polly.loop_header364.1

polly.loop_exit366.1:                             ; preds = %polly.loop_exit372.1
  %polly.indvar_next362.1 = add nuw nsw i64 %polly.indvar361.1, 1
  %indvars.iv.next762.1 = add nuw nsw i64 %indvars.iv761.1, 1
  %exitcond765.1.not = icmp eq i64 %polly.indvar_next362.1, 20
  br i1 %exitcond765.1.not, label %polly.loop_header358.1843, label %polly.loop_header358.1

polly.loop_header358.1843:                        ; preds = %polly.loop_exit366.1, %polly.loop_exit366.1876
  %indvars.iv761.1841 = phi i64 [ %indvars.iv.next762.1874, %polly.loop_exit366.1876 ], [ 21, %polly.loop_exit366.1 ]
  %polly.indvar361.1842 = phi i64 [ %polly.indvar_next362.1873, %polly.loop_exit366.1876 ], [ 0, %polly.loop_exit366.1 ]
  %250 = add nuw nsw i64 %polly.indvar361.1842, 20
  %251 = mul nuw nsw i64 %250, 480
  %252 = mul nuw nsw i64 %250, 640
  br label %polly.loop_header364.1851

polly.loop_header364.1851:                        ; preds = %polly.loop_exit372.1872, %polly.loop_header358.1843
  %polly.indvar367.1844 = phi i64 [ 0, %polly.loop_header358.1843 ], [ %polly.indvar_next368.1870, %polly.loop_exit372.1872 ]
  %253 = shl i64 %polly.indvar367.1844, 3
  %254 = add i64 %253, %251
  %scevgep379.1845 = getelementptr i8, i8* %call2, i64 %254
  %scevgep379380.1846 = bitcast i8* %scevgep379.1845 to double*
  %_p_scalar_381.1847 = load double, double* %scevgep379380.1846, align 8, !alias.scope !73, !noalias !76
  %scevgep385.1848 = getelementptr i8, i8* %call1, i64 %254
  %scevgep385386.1849 = bitcast i8* %scevgep385.1848 to double*
  %_p_scalar_387.1850 = load double, double* %scevgep385386.1849, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.1869

polly.loop_header370.1869:                        ; preds = %polly.loop_header370.1869, %polly.loop_header364.1851
  %polly.indvar373.1852 = phi i64 [ 0, %polly.loop_header364.1851 ], [ %polly.indvar_next374.1867, %polly.loop_header370.1869 ]
  %255 = mul nuw nsw i64 %polly.indvar373.1852, 480
  %256 = add nuw nsw i64 %255, %253
  %scevgep376.1853 = getelementptr i8, i8* %call1, i64 %256
  %scevgep376377.1854 = bitcast i8* %scevgep376.1853 to double*
  %_p_scalar_378.1855 = load double, double* %scevgep376377.1854, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1856 = fmul fast double %_p_scalar_381.1847, %_p_scalar_378.1855
  %scevgep382.1857 = getelementptr i8, i8* %call2, i64 %256
  %scevgep382383.1858 = bitcast i8* %scevgep382.1857 to double*
  %_p_scalar_384.1859 = load double, double* %scevgep382383.1858, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1860 = fmul fast double %_p_scalar_387.1850, %_p_scalar_384.1859
  %257 = shl nuw nsw i64 %polly.indvar373.1852, 3
  %258 = add nuw nsw i64 %257, %252
  %scevgep388.1861 = getelementptr i8, i8* %call, i64 %258
  %scevgep388389.1862 = bitcast i8* %scevgep388.1861 to double*
  %_p_scalar_390.1863 = load double, double* %scevgep388389.1862, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.1864 = fadd fast double %p_mul37.i75.1860, %p_mul27.i73.1856
  %p_reass.mul.i78.1865 = fmul fast double %p_reass.add.i77.1864, 1.500000e+00
  %p_add42.i79.1866 = fadd fast double %p_reass.mul.i78.1865, %_p_scalar_390.1863
  store double %p_add42.i79.1866, double* %scevgep388389.1862, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.1867 = add nuw nsw i64 %polly.indvar373.1852, 1
  %exitcond763.1868.not = icmp eq i64 %polly.indvar_next374.1867, %indvars.iv761.1841
  br i1 %exitcond763.1868.not, label %polly.loop_exit372.1872, label %polly.loop_header370.1869

polly.loop_exit372.1872:                          ; preds = %polly.loop_header370.1869
  %polly.indvar_next368.1870 = add nuw nsw i64 %polly.indvar367.1844, 1
  %exitcond764.1871.not = icmp eq i64 %polly.indvar_next368.1870, 50
  br i1 %exitcond764.1871.not, label %polly.loop_exit366.1876, label %polly.loop_header364.1851

polly.loop_exit366.1876:                          ; preds = %polly.loop_exit372.1872
  %polly.indvar_next362.1873 = add nuw nsw i64 %polly.indvar361.1842, 1
  %indvars.iv.next762.1874 = add nuw nsw i64 %indvars.iv761.1841, 1
  %exitcond765.1875.not = icmp eq i64 %polly.indvar_next362.1873, 20
  br i1 %exitcond765.1875.not, label %polly.loop_header358.1.1, label %polly.loop_header358.1843

polly.loop_header358.1.1:                         ; preds = %polly.loop_exit366.1876, %polly.loop_exit366.1.1
  %indvars.iv761.1.1 = phi i64 [ %indvars.iv.next762.1.1, %polly.loop_exit366.1.1 ], [ 21, %polly.loop_exit366.1876 ]
  %polly.indvar361.1.1 = phi i64 [ %polly.indvar_next362.1.1, %polly.loop_exit366.1.1 ], [ 0, %polly.loop_exit366.1876 ]
  %259 = add nuw nsw i64 %polly.indvar361.1.1, 20
  %260 = mul nuw nsw i64 %259, 480
  %261 = mul nuw nsw i64 %259, 640
  br label %polly.loop_header364.1.1

polly.loop_header364.1.1:                         ; preds = %polly.loop_exit372.1.1, %polly.loop_header358.1.1
  %polly.indvar367.1.1 = phi i64 [ 0, %polly.loop_header358.1.1 ], [ %polly.indvar_next368.1.1, %polly.loop_exit372.1.1 ]
  %262 = shl i64 %polly.indvar367.1.1, 3
  %263 = add i64 %262, 400
  %264 = add i64 %263, %260
  %scevgep379.1.1 = getelementptr i8, i8* %call2, i64 %264
  %scevgep379380.1.1 = bitcast i8* %scevgep379.1.1 to double*
  %_p_scalar_381.1.1 = load double, double* %scevgep379380.1.1, align 8, !alias.scope !73, !noalias !76
  %scevgep385.1.1 = getelementptr i8, i8* %call1, i64 %264
  %scevgep385386.1.1 = bitcast i8* %scevgep385.1.1 to double*
  %_p_scalar_387.1.1 = load double, double* %scevgep385386.1.1, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.1.1

polly.loop_header370.1.1:                         ; preds = %polly.loop_header370.1.1, %polly.loop_header364.1.1
  %polly.indvar373.1.1 = phi i64 [ 0, %polly.loop_header364.1.1 ], [ %polly.indvar_next374.1.1, %polly.loop_header370.1.1 ]
  %265 = mul nuw nsw i64 %polly.indvar373.1.1, 480
  %266 = add nuw nsw i64 %265, %263
  %scevgep376.1.1 = getelementptr i8, i8* %call1, i64 %266
  %scevgep376377.1.1 = bitcast i8* %scevgep376.1.1 to double*
  %_p_scalar_378.1.1 = load double, double* %scevgep376377.1.1, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1.1 = fmul fast double %_p_scalar_381.1.1, %_p_scalar_378.1.1
  %scevgep382.1.1 = getelementptr i8, i8* %call2, i64 %266
  %scevgep382383.1.1 = bitcast i8* %scevgep382.1.1 to double*
  %_p_scalar_384.1.1 = load double, double* %scevgep382383.1.1, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1.1 = fmul fast double %_p_scalar_387.1.1, %_p_scalar_384.1.1
  %267 = shl nuw nsw i64 %polly.indvar373.1.1, 3
  %268 = add nuw nsw i64 %267, %261
  %scevgep388.1.1 = getelementptr i8, i8* %call, i64 %268
  %scevgep388389.1.1 = bitcast i8* %scevgep388.1.1 to double*
  %_p_scalar_390.1.1 = load double, double* %scevgep388389.1.1, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.1.1 = fadd fast double %p_mul37.i75.1.1, %p_mul27.i73.1.1
  %p_reass.mul.i78.1.1 = fmul fast double %p_reass.add.i77.1.1, 1.500000e+00
  %p_add42.i79.1.1 = fadd fast double %p_reass.mul.i78.1.1, %_p_scalar_390.1.1
  store double %p_add42.i79.1.1, double* %scevgep388389.1.1, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.1.1 = add nuw nsw i64 %polly.indvar373.1.1, 1
  %exitcond763.1.1.not = icmp eq i64 %polly.indvar_next374.1.1, %indvars.iv761.1.1
  br i1 %exitcond763.1.1.not, label %polly.loop_exit372.1.1, label %polly.loop_header370.1.1

polly.loop_exit372.1.1:                           ; preds = %polly.loop_header370.1.1
  %polly.indvar_next368.1.1 = add nuw nsw i64 %polly.indvar367.1.1, 1
  %exitcond764.1.1.not = icmp eq i64 %polly.indvar_next368.1.1, 10
  br i1 %exitcond764.1.1.not, label %polly.loop_exit366.1.1, label %polly.loop_header364.1.1

polly.loop_exit366.1.1:                           ; preds = %polly.loop_exit372.1.1
  %polly.indvar_next362.1.1 = add nuw nsw i64 %polly.indvar361.1.1, 1
  %indvars.iv.next762.1.1 = add nuw nsw i64 %indvars.iv761.1.1, 1
  %exitcond765.1.1.not = icmp eq i64 %polly.indvar_next362.1.1, 20
  br i1 %exitcond765.1.1.not, label %polly.loop_header358.2, label %polly.loop_header358.1.1

polly.loop_header358.2:                           ; preds = %polly.loop_exit366.1.1, %polly.loop_exit366.2
  %indvars.iv761.2 = phi i64 [ %indvars.iv.next762.2, %polly.loop_exit366.2 ], [ 41, %polly.loop_exit366.1.1 ]
  %polly.indvar361.2 = phi i64 [ %polly.indvar_next362.2, %polly.loop_exit366.2 ], [ 0, %polly.loop_exit366.1.1 ]
  %269 = add nuw nsw i64 %polly.indvar361.2, 40
  %270 = mul nuw nsw i64 %269, 480
  %271 = mul nuw nsw i64 %269, 640
  br label %polly.loop_header364.2

polly.loop_header364.2:                           ; preds = %polly.loop_exit372.2, %polly.loop_header358.2
  %polly.indvar367.2 = phi i64 [ 0, %polly.loop_header358.2 ], [ %polly.indvar_next368.2, %polly.loop_exit372.2 ]
  %272 = shl i64 %polly.indvar367.2, 3
  %273 = add i64 %272, %270
  %scevgep379.2 = getelementptr i8, i8* %call2, i64 %273
  %scevgep379380.2 = bitcast i8* %scevgep379.2 to double*
  %_p_scalar_381.2 = load double, double* %scevgep379380.2, align 8, !alias.scope !73, !noalias !76
  %scevgep385.2 = getelementptr i8, i8* %call1, i64 %273
  %scevgep385386.2 = bitcast i8* %scevgep385.2 to double*
  %_p_scalar_387.2 = load double, double* %scevgep385386.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.2

polly.loop_header370.2:                           ; preds = %polly.loop_header370.2, %polly.loop_header364.2
  %polly.indvar373.2 = phi i64 [ 0, %polly.loop_header364.2 ], [ %polly.indvar_next374.2, %polly.loop_header370.2 ]
  %274 = mul nuw nsw i64 %polly.indvar373.2, 480
  %275 = add nuw nsw i64 %274, %272
  %scevgep376.2 = getelementptr i8, i8* %call1, i64 %275
  %scevgep376377.2 = bitcast i8* %scevgep376.2 to double*
  %_p_scalar_378.2 = load double, double* %scevgep376377.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.2 = fmul fast double %_p_scalar_381.2, %_p_scalar_378.2
  %scevgep382.2 = getelementptr i8, i8* %call2, i64 %275
  %scevgep382383.2 = bitcast i8* %scevgep382.2 to double*
  %_p_scalar_384.2 = load double, double* %scevgep382383.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.2 = fmul fast double %_p_scalar_387.2, %_p_scalar_384.2
  %276 = shl nuw nsw i64 %polly.indvar373.2, 3
  %277 = add nuw nsw i64 %276, %271
  %scevgep388.2 = getelementptr i8, i8* %call, i64 %277
  %scevgep388389.2 = bitcast i8* %scevgep388.2 to double*
  %_p_scalar_390.2 = load double, double* %scevgep388389.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.2 = fadd fast double %p_mul37.i75.2, %p_mul27.i73.2
  %p_reass.mul.i78.2 = fmul fast double %p_reass.add.i77.2, 1.500000e+00
  %p_add42.i79.2 = fadd fast double %p_reass.mul.i78.2, %_p_scalar_390.2
  store double %p_add42.i79.2, double* %scevgep388389.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.2 = add nuw nsw i64 %polly.indvar373.2, 1
  %exitcond763.2.not = icmp eq i64 %polly.indvar_next374.2, %indvars.iv761.2
  br i1 %exitcond763.2.not, label %polly.loop_exit372.2, label %polly.loop_header370.2

polly.loop_exit372.2:                             ; preds = %polly.loop_header370.2
  %polly.indvar_next368.2 = add nuw nsw i64 %polly.indvar367.2, 1
  %exitcond764.2.not = icmp eq i64 %polly.indvar_next368.2, 50
  br i1 %exitcond764.2.not, label %polly.loop_exit366.2, label %polly.loop_header364.2

polly.loop_exit366.2:                             ; preds = %polly.loop_exit372.2
  %polly.indvar_next362.2 = add nuw nsw i64 %polly.indvar361.2, 1
  %indvars.iv.next762.2 = add nuw nsw i64 %indvars.iv761.2, 1
  %exitcond765.2.not = icmp eq i64 %polly.indvar_next362.2, 20
  br i1 %exitcond765.2.not, label %polly.loop_header358.1.2, label %polly.loop_header358.2

polly.loop_header358.1.2:                         ; preds = %polly.loop_exit366.2, %polly.loop_exit366.1.2
  %indvars.iv761.1.2 = phi i64 [ %indvars.iv.next762.1.2, %polly.loop_exit366.1.2 ], [ 41, %polly.loop_exit366.2 ]
  %polly.indvar361.1.2 = phi i64 [ %polly.indvar_next362.1.2, %polly.loop_exit366.1.2 ], [ 0, %polly.loop_exit366.2 ]
  %278 = add nuw nsw i64 %polly.indvar361.1.2, 40
  %279 = mul nuw nsw i64 %278, 480
  %280 = mul nuw nsw i64 %278, 640
  br label %polly.loop_header364.1.2

polly.loop_header364.1.2:                         ; preds = %polly.loop_exit372.1.2, %polly.loop_header358.1.2
  %polly.indvar367.1.2 = phi i64 [ 0, %polly.loop_header358.1.2 ], [ %polly.indvar_next368.1.2, %polly.loop_exit372.1.2 ]
  %281 = shl i64 %polly.indvar367.1.2, 3
  %282 = add i64 %281, 400
  %283 = add i64 %282, %279
  %scevgep379.1.2 = getelementptr i8, i8* %call2, i64 %283
  %scevgep379380.1.2 = bitcast i8* %scevgep379.1.2 to double*
  %_p_scalar_381.1.2 = load double, double* %scevgep379380.1.2, align 8, !alias.scope !73, !noalias !76
  %scevgep385.1.2 = getelementptr i8, i8* %call1, i64 %283
  %scevgep385386.1.2 = bitcast i8* %scevgep385.1.2 to double*
  %_p_scalar_387.1.2 = load double, double* %scevgep385386.1.2, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.1.2

polly.loop_header370.1.2:                         ; preds = %polly.loop_header370.1.2, %polly.loop_header364.1.2
  %polly.indvar373.1.2 = phi i64 [ 0, %polly.loop_header364.1.2 ], [ %polly.indvar_next374.1.2, %polly.loop_header370.1.2 ]
  %284 = mul nuw nsw i64 %polly.indvar373.1.2, 480
  %285 = add nuw nsw i64 %284, %282
  %scevgep376.1.2 = getelementptr i8, i8* %call1, i64 %285
  %scevgep376377.1.2 = bitcast i8* %scevgep376.1.2 to double*
  %_p_scalar_378.1.2 = load double, double* %scevgep376377.1.2, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1.2 = fmul fast double %_p_scalar_381.1.2, %_p_scalar_378.1.2
  %scevgep382.1.2 = getelementptr i8, i8* %call2, i64 %285
  %scevgep382383.1.2 = bitcast i8* %scevgep382.1.2 to double*
  %_p_scalar_384.1.2 = load double, double* %scevgep382383.1.2, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1.2 = fmul fast double %_p_scalar_387.1.2, %_p_scalar_384.1.2
  %286 = shl nuw nsw i64 %polly.indvar373.1.2, 3
  %287 = add nuw nsw i64 %286, %280
  %scevgep388.1.2 = getelementptr i8, i8* %call, i64 %287
  %scevgep388389.1.2 = bitcast i8* %scevgep388.1.2 to double*
  %_p_scalar_390.1.2 = load double, double* %scevgep388389.1.2, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.1.2 = fadd fast double %p_mul37.i75.1.2, %p_mul27.i73.1.2
  %p_reass.mul.i78.1.2 = fmul fast double %p_reass.add.i77.1.2, 1.500000e+00
  %p_add42.i79.1.2 = fadd fast double %p_reass.mul.i78.1.2, %_p_scalar_390.1.2
  store double %p_add42.i79.1.2, double* %scevgep388389.1.2, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.1.2 = add nuw nsw i64 %polly.indvar373.1.2, 1
  %exitcond763.1.2.not = icmp eq i64 %polly.indvar_next374.1.2, %indvars.iv761.1.2
  br i1 %exitcond763.1.2.not, label %polly.loop_exit372.1.2, label %polly.loop_header370.1.2

polly.loop_exit372.1.2:                           ; preds = %polly.loop_header370.1.2
  %polly.indvar_next368.1.2 = add nuw nsw i64 %polly.indvar367.1.2, 1
  %exitcond764.1.2.not = icmp eq i64 %polly.indvar_next368.1.2, 10
  br i1 %exitcond764.1.2.not, label %polly.loop_exit366.1.2, label %polly.loop_header364.1.2

polly.loop_exit366.1.2:                           ; preds = %polly.loop_exit372.1.2
  %polly.indvar_next362.1.2 = add nuw nsw i64 %polly.indvar361.1.2, 1
  %indvars.iv.next762.1.2 = add nuw nsw i64 %indvars.iv761.1.2, 1
  %exitcond765.1.2.not = icmp eq i64 %polly.indvar_next362.1.2, 20
  br i1 %exitcond765.1.2.not, label %polly.loop_header358.3, label %polly.loop_header358.1.2

polly.loop_header358.3:                           ; preds = %polly.loop_exit366.1.2, %polly.loop_exit366.3
  %indvars.iv761.3 = phi i64 [ %indvars.iv.next762.3, %polly.loop_exit366.3 ], [ 61, %polly.loop_exit366.1.2 ]
  %polly.indvar361.3 = phi i64 [ %polly.indvar_next362.3, %polly.loop_exit366.3 ], [ 0, %polly.loop_exit366.1.2 ]
  %288 = add nuw nsw i64 %polly.indvar361.3, 60
  %289 = mul nuw nsw i64 %288, 480
  %290 = mul nuw nsw i64 %288, 640
  br label %polly.loop_header364.3

polly.loop_header364.3:                           ; preds = %polly.loop_exit372.3, %polly.loop_header358.3
  %polly.indvar367.3 = phi i64 [ 0, %polly.loop_header358.3 ], [ %polly.indvar_next368.3, %polly.loop_exit372.3 ]
  %291 = shl i64 %polly.indvar367.3, 3
  %292 = add i64 %291, %289
  %scevgep379.3 = getelementptr i8, i8* %call2, i64 %292
  %scevgep379380.3 = bitcast i8* %scevgep379.3 to double*
  %_p_scalar_381.3 = load double, double* %scevgep379380.3, align 8, !alias.scope !73, !noalias !76
  %scevgep385.3 = getelementptr i8, i8* %call1, i64 %292
  %scevgep385386.3 = bitcast i8* %scevgep385.3 to double*
  %_p_scalar_387.3 = load double, double* %scevgep385386.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.3

polly.loop_header370.3:                           ; preds = %polly.loop_header370.3, %polly.loop_header364.3
  %polly.indvar373.3 = phi i64 [ 0, %polly.loop_header364.3 ], [ %polly.indvar_next374.3, %polly.loop_header370.3 ]
  %293 = mul nuw nsw i64 %polly.indvar373.3, 480
  %294 = add nuw nsw i64 %293, %291
  %scevgep376.3 = getelementptr i8, i8* %call1, i64 %294
  %scevgep376377.3 = bitcast i8* %scevgep376.3 to double*
  %_p_scalar_378.3 = load double, double* %scevgep376377.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.3 = fmul fast double %_p_scalar_381.3, %_p_scalar_378.3
  %scevgep382.3 = getelementptr i8, i8* %call2, i64 %294
  %scevgep382383.3 = bitcast i8* %scevgep382.3 to double*
  %_p_scalar_384.3 = load double, double* %scevgep382383.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.3 = fmul fast double %_p_scalar_387.3, %_p_scalar_384.3
  %295 = shl nuw nsw i64 %polly.indvar373.3, 3
  %296 = add nuw nsw i64 %295, %290
  %scevgep388.3 = getelementptr i8, i8* %call, i64 %296
  %scevgep388389.3 = bitcast i8* %scevgep388.3 to double*
  %_p_scalar_390.3 = load double, double* %scevgep388389.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.3 = fadd fast double %p_mul37.i75.3, %p_mul27.i73.3
  %p_reass.mul.i78.3 = fmul fast double %p_reass.add.i77.3, 1.500000e+00
  %p_add42.i79.3 = fadd fast double %p_reass.mul.i78.3, %_p_scalar_390.3
  store double %p_add42.i79.3, double* %scevgep388389.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.3 = add nuw nsw i64 %polly.indvar373.3, 1
  %exitcond763.3.not = icmp eq i64 %polly.indvar_next374.3, %indvars.iv761.3
  br i1 %exitcond763.3.not, label %polly.loop_exit372.3, label %polly.loop_header370.3

polly.loop_exit372.3:                             ; preds = %polly.loop_header370.3
  %polly.indvar_next368.3 = add nuw nsw i64 %polly.indvar367.3, 1
  %exitcond764.3.not = icmp eq i64 %polly.indvar_next368.3, 50
  br i1 %exitcond764.3.not, label %polly.loop_exit366.3, label %polly.loop_header364.3

polly.loop_exit366.3:                             ; preds = %polly.loop_exit372.3
  %polly.indvar_next362.3 = add nuw nsw i64 %polly.indvar361.3, 1
  %indvars.iv.next762.3 = add nuw nsw i64 %indvars.iv761.3, 1
  %exitcond765.3.not = icmp eq i64 %polly.indvar_next362.3, 20
  br i1 %exitcond765.3.not, label %polly.loop_header358.1.3, label %polly.loop_header358.3

polly.loop_header358.1.3:                         ; preds = %polly.loop_exit366.3, %polly.loop_exit366.1.3
  %indvars.iv761.1.3 = phi i64 [ %indvars.iv.next762.1.3, %polly.loop_exit366.1.3 ], [ 61, %polly.loop_exit366.3 ]
  %polly.indvar361.1.3 = phi i64 [ %polly.indvar_next362.1.3, %polly.loop_exit366.1.3 ], [ 0, %polly.loop_exit366.3 ]
  %297 = add nuw nsw i64 %polly.indvar361.1.3, 60
  %298 = mul nuw nsw i64 %297, 480
  %299 = mul nuw nsw i64 %297, 640
  br label %polly.loop_header364.1.3

polly.loop_header364.1.3:                         ; preds = %polly.loop_exit372.1.3, %polly.loop_header358.1.3
  %polly.indvar367.1.3 = phi i64 [ 0, %polly.loop_header358.1.3 ], [ %polly.indvar_next368.1.3, %polly.loop_exit372.1.3 ]
  %300 = shl i64 %polly.indvar367.1.3, 3
  %301 = add i64 %300, 400
  %302 = add i64 %301, %298
  %scevgep379.1.3 = getelementptr i8, i8* %call2, i64 %302
  %scevgep379380.1.3 = bitcast i8* %scevgep379.1.3 to double*
  %_p_scalar_381.1.3 = load double, double* %scevgep379380.1.3, align 8, !alias.scope !73, !noalias !76
  %scevgep385.1.3 = getelementptr i8, i8* %call1, i64 %302
  %scevgep385386.1.3 = bitcast i8* %scevgep385.1.3 to double*
  %_p_scalar_387.1.3 = load double, double* %scevgep385386.1.3, align 8, !alias.scope !72, !noalias !77
  br label %polly.loop_header370.1.3

polly.loop_header370.1.3:                         ; preds = %polly.loop_header370.1.3, %polly.loop_header364.1.3
  %polly.indvar373.1.3 = phi i64 [ 0, %polly.loop_header364.1.3 ], [ %polly.indvar_next374.1.3, %polly.loop_header370.1.3 ]
  %303 = mul nuw nsw i64 %polly.indvar373.1.3, 480
  %304 = add nuw nsw i64 %303, %301
  %scevgep376.1.3 = getelementptr i8, i8* %call1, i64 %304
  %scevgep376377.1.3 = bitcast i8* %scevgep376.1.3 to double*
  %_p_scalar_378.1.3 = load double, double* %scevgep376377.1.3, align 8, !alias.scope !72, !noalias !77
  %p_mul27.i73.1.3 = fmul fast double %_p_scalar_381.1.3, %_p_scalar_378.1.3
  %scevgep382.1.3 = getelementptr i8, i8* %call2, i64 %304
  %scevgep382383.1.3 = bitcast i8* %scevgep382.1.3 to double*
  %_p_scalar_384.1.3 = load double, double* %scevgep382383.1.3, align 8, !alias.scope !73, !noalias !76
  %p_mul37.i75.1.3 = fmul fast double %_p_scalar_387.1.3, %_p_scalar_384.1.3
  %305 = shl nuw nsw i64 %polly.indvar373.1.3, 3
  %306 = add nuw nsw i64 %305, %299
  %scevgep388.1.3 = getelementptr i8, i8* %call, i64 %306
  %scevgep388389.1.3 = bitcast i8* %scevgep388.1.3 to double*
  %_p_scalar_390.1.3 = load double, double* %scevgep388389.1.3, align 8, !alias.scope !69, !noalias !71
  %p_reass.add.i77.1.3 = fadd fast double %p_mul37.i75.1.3, %p_mul27.i73.1.3
  %p_reass.mul.i78.1.3 = fmul fast double %p_reass.add.i77.1.3, 1.500000e+00
  %p_add42.i79.1.3 = fadd fast double %p_reass.mul.i78.1.3, %_p_scalar_390.1.3
  store double %p_add42.i79.1.3, double* %scevgep388389.1.3, align 8, !alias.scope !69, !noalias !71
  %polly.indvar_next374.1.3 = add nuw nsw i64 %polly.indvar373.1.3, 1
  %exitcond763.1.3.not = icmp eq i64 %polly.indvar_next374.1.3, %indvars.iv761.1.3
  br i1 %exitcond763.1.3.not, label %polly.loop_exit372.1.3, label %polly.loop_header370.1.3

polly.loop_exit372.1.3:                           ; preds = %polly.loop_header370.1.3
  %polly.indvar_next368.1.3 = add nuw nsw i64 %polly.indvar367.1.3, 1
  %exitcond764.1.3.not = icmp eq i64 %polly.indvar_next368.1.3, 10
  br i1 %exitcond764.1.3.not, label %polly.loop_exit366.1.3, label %polly.loop_header364.1.3

polly.loop_exit366.1.3:                           ; preds = %polly.loop_exit372.1.3
  %polly.indvar_next362.1.3 = add nuw nsw i64 %polly.indvar361.1.3, 1
  %indvars.iv.next762.1.3 = add nuw nsw i64 %indvars.iv761.1.3, 1
  %exitcond765.1.3.not = icmp eq i64 %polly.indvar_next362.1.3, 20
  br i1 %exitcond765.1.3.not, label %kernel_syr2k.exit90, label %polly.loop_header358.1.3

polly.loop_header505.1:                           ; preds = %polly.loop_exit513, %polly.loop_exit513.1
  %indvars.iv771.1 = phi i64 [ %indvars.iv.next772.1, %polly.loop_exit513.1 ], [ 1, %polly.loop_exit513 ]
  %polly.indvar508.1 = phi i64 [ %polly.indvar_next509.1, %polly.loop_exit513.1 ], [ 0, %polly.loop_exit513 ]
  %307 = mul nuw nsw i64 %polly.indvar508.1, 480
  %308 = mul nuw nsw i64 %polly.indvar508.1, 640
  br label %polly.loop_header511.1

polly.loop_header511.1:                           ; preds = %polly.loop_exit519.1, %polly.loop_header505.1
  %polly.indvar514.1 = phi i64 [ 0, %polly.loop_header505.1 ], [ %polly.indvar_next515.1, %polly.loop_exit519.1 ]
  %309 = shl i64 %polly.indvar514.1, 3
  %310 = add i64 %309, 400
  %311 = add i64 %310, %307
  %scevgep526.1 = getelementptr i8, i8* %call2, i64 %311
  %scevgep526527.1 = bitcast i8* %scevgep526.1 to double*
  %_p_scalar_528.1 = load double, double* %scevgep526527.1, align 8, !alias.scope !82, !noalias !85
  %scevgep532.1 = getelementptr i8, i8* %call1, i64 %311
  %scevgep532533.1 = bitcast i8* %scevgep532.1 to double*
  %_p_scalar_534.1 = load double, double* %scevgep532533.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.1

polly.loop_header517.1:                           ; preds = %polly.loop_header517.1, %polly.loop_header511.1
  %polly.indvar520.1 = phi i64 [ 0, %polly.loop_header511.1 ], [ %polly.indvar_next521.1, %polly.loop_header517.1 ]
  %312 = mul nuw nsw i64 %polly.indvar520.1, 480
  %313 = add nuw nsw i64 %312, %310
  %scevgep523.1 = getelementptr i8, i8* %call1, i64 %313
  %scevgep523524.1 = bitcast i8* %scevgep523.1 to double*
  %_p_scalar_525.1 = load double, double* %scevgep523524.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1 = fmul fast double %_p_scalar_528.1, %_p_scalar_525.1
  %scevgep529.1 = getelementptr i8, i8* %call2, i64 %313
  %scevgep529530.1 = bitcast i8* %scevgep529.1 to double*
  %_p_scalar_531.1 = load double, double* %scevgep529530.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1 = fmul fast double %_p_scalar_534.1, %_p_scalar_531.1
  %314 = shl nuw nsw i64 %polly.indvar520.1, 3
  %315 = add nuw nsw i64 %314, %308
  %scevgep535.1 = getelementptr i8, i8* %call, i64 %315
  %scevgep535536.1 = bitcast i8* %scevgep535.1 to double*
  %_p_scalar_537.1 = load double, double* %scevgep535536.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_537.1
  store double %p_add42.i.1, double* %scevgep535536.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.1 = add nuw nsw i64 %polly.indvar520.1, 1
  %exitcond773.1.not = icmp eq i64 %polly.indvar_next521.1, %indvars.iv771.1
  br i1 %exitcond773.1.not, label %polly.loop_exit519.1, label %polly.loop_header517.1

polly.loop_exit519.1:                             ; preds = %polly.loop_header517.1
  %polly.indvar_next515.1 = add nuw nsw i64 %polly.indvar514.1, 1
  %exitcond774.1.not = icmp eq i64 %polly.indvar_next515.1, 10
  br i1 %exitcond774.1.not, label %polly.loop_exit513.1, label %polly.loop_header511.1

polly.loop_exit513.1:                             ; preds = %polly.loop_exit519.1
  %polly.indvar_next509.1 = add nuw nsw i64 %polly.indvar508.1, 1
  %indvars.iv.next772.1 = add nuw nsw i64 %indvars.iv771.1, 1
  %exitcond775.1.not = icmp eq i64 %polly.indvar_next509.1, 20
  br i1 %exitcond775.1.not, label %polly.loop_header505.1880, label %polly.loop_header505.1

polly.loop_header505.1880:                        ; preds = %polly.loop_exit513.1, %polly.loop_exit513.1913
  %indvars.iv771.1878 = phi i64 [ %indvars.iv.next772.1911, %polly.loop_exit513.1913 ], [ 21, %polly.loop_exit513.1 ]
  %polly.indvar508.1879 = phi i64 [ %polly.indvar_next509.1910, %polly.loop_exit513.1913 ], [ 0, %polly.loop_exit513.1 ]
  %316 = add nuw nsw i64 %polly.indvar508.1879, 20
  %317 = mul nuw nsw i64 %316, 480
  %318 = mul nuw nsw i64 %316, 640
  br label %polly.loop_header511.1888

polly.loop_header511.1888:                        ; preds = %polly.loop_exit519.1909, %polly.loop_header505.1880
  %polly.indvar514.1881 = phi i64 [ 0, %polly.loop_header505.1880 ], [ %polly.indvar_next515.1907, %polly.loop_exit519.1909 ]
  %319 = shl i64 %polly.indvar514.1881, 3
  %320 = add i64 %319, %317
  %scevgep526.1882 = getelementptr i8, i8* %call2, i64 %320
  %scevgep526527.1883 = bitcast i8* %scevgep526.1882 to double*
  %_p_scalar_528.1884 = load double, double* %scevgep526527.1883, align 8, !alias.scope !82, !noalias !85
  %scevgep532.1885 = getelementptr i8, i8* %call1, i64 %320
  %scevgep532533.1886 = bitcast i8* %scevgep532.1885 to double*
  %_p_scalar_534.1887 = load double, double* %scevgep532533.1886, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.1906

polly.loop_header517.1906:                        ; preds = %polly.loop_header517.1906, %polly.loop_header511.1888
  %polly.indvar520.1889 = phi i64 [ 0, %polly.loop_header511.1888 ], [ %polly.indvar_next521.1904, %polly.loop_header517.1906 ]
  %321 = mul nuw nsw i64 %polly.indvar520.1889, 480
  %322 = add nuw nsw i64 %321, %319
  %scevgep523.1890 = getelementptr i8, i8* %call1, i64 %322
  %scevgep523524.1891 = bitcast i8* %scevgep523.1890 to double*
  %_p_scalar_525.1892 = load double, double* %scevgep523524.1891, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1893 = fmul fast double %_p_scalar_528.1884, %_p_scalar_525.1892
  %scevgep529.1894 = getelementptr i8, i8* %call2, i64 %322
  %scevgep529530.1895 = bitcast i8* %scevgep529.1894 to double*
  %_p_scalar_531.1896 = load double, double* %scevgep529530.1895, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1897 = fmul fast double %_p_scalar_534.1887, %_p_scalar_531.1896
  %323 = shl nuw nsw i64 %polly.indvar520.1889, 3
  %324 = add nuw nsw i64 %323, %318
  %scevgep535.1898 = getelementptr i8, i8* %call, i64 %324
  %scevgep535536.1899 = bitcast i8* %scevgep535.1898 to double*
  %_p_scalar_537.1900 = load double, double* %scevgep535536.1899, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.1901 = fadd fast double %p_mul37.i.1897, %p_mul27.i.1893
  %p_reass.mul.i.1902 = fmul fast double %p_reass.add.i.1901, 1.500000e+00
  %p_add42.i.1903 = fadd fast double %p_reass.mul.i.1902, %_p_scalar_537.1900
  store double %p_add42.i.1903, double* %scevgep535536.1899, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.1904 = add nuw nsw i64 %polly.indvar520.1889, 1
  %exitcond773.1905.not = icmp eq i64 %polly.indvar_next521.1904, %indvars.iv771.1878
  br i1 %exitcond773.1905.not, label %polly.loop_exit519.1909, label %polly.loop_header517.1906

polly.loop_exit519.1909:                          ; preds = %polly.loop_header517.1906
  %polly.indvar_next515.1907 = add nuw nsw i64 %polly.indvar514.1881, 1
  %exitcond774.1908.not = icmp eq i64 %polly.indvar_next515.1907, 50
  br i1 %exitcond774.1908.not, label %polly.loop_exit513.1913, label %polly.loop_header511.1888

polly.loop_exit513.1913:                          ; preds = %polly.loop_exit519.1909
  %polly.indvar_next509.1910 = add nuw nsw i64 %polly.indvar508.1879, 1
  %indvars.iv.next772.1911 = add nuw nsw i64 %indvars.iv771.1878, 1
  %exitcond775.1912.not = icmp eq i64 %polly.indvar_next509.1910, 20
  br i1 %exitcond775.1912.not, label %polly.loop_header505.1.1, label %polly.loop_header505.1880

polly.loop_header505.1.1:                         ; preds = %polly.loop_exit513.1913, %polly.loop_exit513.1.1
  %indvars.iv771.1.1 = phi i64 [ %indvars.iv.next772.1.1, %polly.loop_exit513.1.1 ], [ 21, %polly.loop_exit513.1913 ]
  %polly.indvar508.1.1 = phi i64 [ %polly.indvar_next509.1.1, %polly.loop_exit513.1.1 ], [ 0, %polly.loop_exit513.1913 ]
  %325 = add nuw nsw i64 %polly.indvar508.1.1, 20
  %326 = mul nuw nsw i64 %325, 480
  %327 = mul nuw nsw i64 %325, 640
  br label %polly.loop_header511.1.1

polly.loop_header511.1.1:                         ; preds = %polly.loop_exit519.1.1, %polly.loop_header505.1.1
  %polly.indvar514.1.1 = phi i64 [ 0, %polly.loop_header505.1.1 ], [ %polly.indvar_next515.1.1, %polly.loop_exit519.1.1 ]
  %328 = shl i64 %polly.indvar514.1.1, 3
  %329 = add i64 %328, 400
  %330 = add i64 %329, %326
  %scevgep526.1.1 = getelementptr i8, i8* %call2, i64 %330
  %scevgep526527.1.1 = bitcast i8* %scevgep526.1.1 to double*
  %_p_scalar_528.1.1 = load double, double* %scevgep526527.1.1, align 8, !alias.scope !82, !noalias !85
  %scevgep532.1.1 = getelementptr i8, i8* %call1, i64 %330
  %scevgep532533.1.1 = bitcast i8* %scevgep532.1.1 to double*
  %_p_scalar_534.1.1 = load double, double* %scevgep532533.1.1, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.1.1

polly.loop_header517.1.1:                         ; preds = %polly.loop_header517.1.1, %polly.loop_header511.1.1
  %polly.indvar520.1.1 = phi i64 [ 0, %polly.loop_header511.1.1 ], [ %polly.indvar_next521.1.1, %polly.loop_header517.1.1 ]
  %331 = mul nuw nsw i64 %polly.indvar520.1.1, 480
  %332 = add nuw nsw i64 %331, %329
  %scevgep523.1.1 = getelementptr i8, i8* %call1, i64 %332
  %scevgep523524.1.1 = bitcast i8* %scevgep523.1.1 to double*
  %_p_scalar_525.1.1 = load double, double* %scevgep523524.1.1, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1.1 = fmul fast double %_p_scalar_528.1.1, %_p_scalar_525.1.1
  %scevgep529.1.1 = getelementptr i8, i8* %call2, i64 %332
  %scevgep529530.1.1 = bitcast i8* %scevgep529.1.1 to double*
  %_p_scalar_531.1.1 = load double, double* %scevgep529530.1.1, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1.1 = fmul fast double %_p_scalar_534.1.1, %_p_scalar_531.1.1
  %333 = shl nuw nsw i64 %polly.indvar520.1.1, 3
  %334 = add nuw nsw i64 %333, %327
  %scevgep535.1.1 = getelementptr i8, i8* %call, i64 %334
  %scevgep535536.1.1 = bitcast i8* %scevgep535.1.1 to double*
  %_p_scalar_537.1.1 = load double, double* %scevgep535536.1.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.1.1 = fadd fast double %p_mul37.i.1.1, %p_mul27.i.1.1
  %p_reass.mul.i.1.1 = fmul fast double %p_reass.add.i.1.1, 1.500000e+00
  %p_add42.i.1.1 = fadd fast double %p_reass.mul.i.1.1, %_p_scalar_537.1.1
  store double %p_add42.i.1.1, double* %scevgep535536.1.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.1.1 = add nuw nsw i64 %polly.indvar520.1.1, 1
  %exitcond773.1.1.not = icmp eq i64 %polly.indvar_next521.1.1, %indvars.iv771.1.1
  br i1 %exitcond773.1.1.not, label %polly.loop_exit519.1.1, label %polly.loop_header517.1.1

polly.loop_exit519.1.1:                           ; preds = %polly.loop_header517.1.1
  %polly.indvar_next515.1.1 = add nuw nsw i64 %polly.indvar514.1.1, 1
  %exitcond774.1.1.not = icmp eq i64 %polly.indvar_next515.1.1, 10
  br i1 %exitcond774.1.1.not, label %polly.loop_exit513.1.1, label %polly.loop_header511.1.1

polly.loop_exit513.1.1:                           ; preds = %polly.loop_exit519.1.1
  %polly.indvar_next509.1.1 = add nuw nsw i64 %polly.indvar508.1.1, 1
  %indvars.iv.next772.1.1 = add nuw nsw i64 %indvars.iv771.1.1, 1
  %exitcond775.1.1.not = icmp eq i64 %polly.indvar_next509.1.1, 20
  br i1 %exitcond775.1.1.not, label %polly.loop_header505.2, label %polly.loop_header505.1.1

polly.loop_header505.2:                           ; preds = %polly.loop_exit513.1.1, %polly.loop_exit513.2
  %indvars.iv771.2 = phi i64 [ %indvars.iv.next772.2, %polly.loop_exit513.2 ], [ 41, %polly.loop_exit513.1.1 ]
  %polly.indvar508.2 = phi i64 [ %polly.indvar_next509.2, %polly.loop_exit513.2 ], [ 0, %polly.loop_exit513.1.1 ]
  %335 = add nuw nsw i64 %polly.indvar508.2, 40
  %336 = mul nuw nsw i64 %335, 480
  %337 = mul nuw nsw i64 %335, 640
  br label %polly.loop_header511.2

polly.loop_header511.2:                           ; preds = %polly.loop_exit519.2, %polly.loop_header505.2
  %polly.indvar514.2 = phi i64 [ 0, %polly.loop_header505.2 ], [ %polly.indvar_next515.2, %polly.loop_exit519.2 ]
  %338 = shl i64 %polly.indvar514.2, 3
  %339 = add i64 %338, %336
  %scevgep526.2 = getelementptr i8, i8* %call2, i64 %339
  %scevgep526527.2 = bitcast i8* %scevgep526.2 to double*
  %_p_scalar_528.2 = load double, double* %scevgep526527.2, align 8, !alias.scope !82, !noalias !85
  %scevgep532.2 = getelementptr i8, i8* %call1, i64 %339
  %scevgep532533.2 = bitcast i8* %scevgep532.2 to double*
  %_p_scalar_534.2 = load double, double* %scevgep532533.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.2

polly.loop_header517.2:                           ; preds = %polly.loop_header517.2, %polly.loop_header511.2
  %polly.indvar520.2 = phi i64 [ 0, %polly.loop_header511.2 ], [ %polly.indvar_next521.2, %polly.loop_header517.2 ]
  %340 = mul nuw nsw i64 %polly.indvar520.2, 480
  %341 = add nuw nsw i64 %340, %338
  %scevgep523.2 = getelementptr i8, i8* %call1, i64 %341
  %scevgep523524.2 = bitcast i8* %scevgep523.2 to double*
  %_p_scalar_525.2 = load double, double* %scevgep523524.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.2 = fmul fast double %_p_scalar_528.2, %_p_scalar_525.2
  %scevgep529.2 = getelementptr i8, i8* %call2, i64 %341
  %scevgep529530.2 = bitcast i8* %scevgep529.2 to double*
  %_p_scalar_531.2 = load double, double* %scevgep529530.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.2 = fmul fast double %_p_scalar_534.2, %_p_scalar_531.2
  %342 = shl nuw nsw i64 %polly.indvar520.2, 3
  %343 = add nuw nsw i64 %342, %337
  %scevgep535.2 = getelementptr i8, i8* %call, i64 %343
  %scevgep535536.2 = bitcast i8* %scevgep535.2 to double*
  %_p_scalar_537.2 = load double, double* %scevgep535536.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.2 = fadd fast double %p_mul37.i.2, %p_mul27.i.2
  %p_reass.mul.i.2 = fmul fast double %p_reass.add.i.2, 1.500000e+00
  %p_add42.i.2 = fadd fast double %p_reass.mul.i.2, %_p_scalar_537.2
  store double %p_add42.i.2, double* %scevgep535536.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.2 = add nuw nsw i64 %polly.indvar520.2, 1
  %exitcond773.2.not = icmp eq i64 %polly.indvar_next521.2, %indvars.iv771.2
  br i1 %exitcond773.2.not, label %polly.loop_exit519.2, label %polly.loop_header517.2

polly.loop_exit519.2:                             ; preds = %polly.loop_header517.2
  %polly.indvar_next515.2 = add nuw nsw i64 %polly.indvar514.2, 1
  %exitcond774.2.not = icmp eq i64 %polly.indvar_next515.2, 50
  br i1 %exitcond774.2.not, label %polly.loop_exit513.2, label %polly.loop_header511.2

polly.loop_exit513.2:                             ; preds = %polly.loop_exit519.2
  %polly.indvar_next509.2 = add nuw nsw i64 %polly.indvar508.2, 1
  %indvars.iv.next772.2 = add nuw nsw i64 %indvars.iv771.2, 1
  %exitcond775.2.not = icmp eq i64 %polly.indvar_next509.2, 20
  br i1 %exitcond775.2.not, label %polly.loop_header505.1.2, label %polly.loop_header505.2

polly.loop_header505.1.2:                         ; preds = %polly.loop_exit513.2, %polly.loop_exit513.1.2
  %indvars.iv771.1.2 = phi i64 [ %indvars.iv.next772.1.2, %polly.loop_exit513.1.2 ], [ 41, %polly.loop_exit513.2 ]
  %polly.indvar508.1.2 = phi i64 [ %polly.indvar_next509.1.2, %polly.loop_exit513.1.2 ], [ 0, %polly.loop_exit513.2 ]
  %344 = add nuw nsw i64 %polly.indvar508.1.2, 40
  %345 = mul nuw nsw i64 %344, 480
  %346 = mul nuw nsw i64 %344, 640
  br label %polly.loop_header511.1.2

polly.loop_header511.1.2:                         ; preds = %polly.loop_exit519.1.2, %polly.loop_header505.1.2
  %polly.indvar514.1.2 = phi i64 [ 0, %polly.loop_header505.1.2 ], [ %polly.indvar_next515.1.2, %polly.loop_exit519.1.2 ]
  %347 = shl i64 %polly.indvar514.1.2, 3
  %348 = add i64 %347, 400
  %349 = add i64 %348, %345
  %scevgep526.1.2 = getelementptr i8, i8* %call2, i64 %349
  %scevgep526527.1.2 = bitcast i8* %scevgep526.1.2 to double*
  %_p_scalar_528.1.2 = load double, double* %scevgep526527.1.2, align 8, !alias.scope !82, !noalias !85
  %scevgep532.1.2 = getelementptr i8, i8* %call1, i64 %349
  %scevgep532533.1.2 = bitcast i8* %scevgep532.1.2 to double*
  %_p_scalar_534.1.2 = load double, double* %scevgep532533.1.2, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.1.2

polly.loop_header517.1.2:                         ; preds = %polly.loop_header517.1.2, %polly.loop_header511.1.2
  %polly.indvar520.1.2 = phi i64 [ 0, %polly.loop_header511.1.2 ], [ %polly.indvar_next521.1.2, %polly.loop_header517.1.2 ]
  %350 = mul nuw nsw i64 %polly.indvar520.1.2, 480
  %351 = add nuw nsw i64 %350, %348
  %scevgep523.1.2 = getelementptr i8, i8* %call1, i64 %351
  %scevgep523524.1.2 = bitcast i8* %scevgep523.1.2 to double*
  %_p_scalar_525.1.2 = load double, double* %scevgep523524.1.2, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1.2 = fmul fast double %_p_scalar_528.1.2, %_p_scalar_525.1.2
  %scevgep529.1.2 = getelementptr i8, i8* %call2, i64 %351
  %scevgep529530.1.2 = bitcast i8* %scevgep529.1.2 to double*
  %_p_scalar_531.1.2 = load double, double* %scevgep529530.1.2, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1.2 = fmul fast double %_p_scalar_534.1.2, %_p_scalar_531.1.2
  %352 = shl nuw nsw i64 %polly.indvar520.1.2, 3
  %353 = add nuw nsw i64 %352, %346
  %scevgep535.1.2 = getelementptr i8, i8* %call, i64 %353
  %scevgep535536.1.2 = bitcast i8* %scevgep535.1.2 to double*
  %_p_scalar_537.1.2 = load double, double* %scevgep535536.1.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.1.2 = fadd fast double %p_mul37.i.1.2, %p_mul27.i.1.2
  %p_reass.mul.i.1.2 = fmul fast double %p_reass.add.i.1.2, 1.500000e+00
  %p_add42.i.1.2 = fadd fast double %p_reass.mul.i.1.2, %_p_scalar_537.1.2
  store double %p_add42.i.1.2, double* %scevgep535536.1.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.1.2 = add nuw nsw i64 %polly.indvar520.1.2, 1
  %exitcond773.1.2.not = icmp eq i64 %polly.indvar_next521.1.2, %indvars.iv771.1.2
  br i1 %exitcond773.1.2.not, label %polly.loop_exit519.1.2, label %polly.loop_header517.1.2

polly.loop_exit519.1.2:                           ; preds = %polly.loop_header517.1.2
  %polly.indvar_next515.1.2 = add nuw nsw i64 %polly.indvar514.1.2, 1
  %exitcond774.1.2.not = icmp eq i64 %polly.indvar_next515.1.2, 10
  br i1 %exitcond774.1.2.not, label %polly.loop_exit513.1.2, label %polly.loop_header511.1.2

polly.loop_exit513.1.2:                           ; preds = %polly.loop_exit519.1.2
  %polly.indvar_next509.1.2 = add nuw nsw i64 %polly.indvar508.1.2, 1
  %indvars.iv.next772.1.2 = add nuw nsw i64 %indvars.iv771.1.2, 1
  %exitcond775.1.2.not = icmp eq i64 %polly.indvar_next509.1.2, 20
  br i1 %exitcond775.1.2.not, label %polly.loop_header505.3, label %polly.loop_header505.1.2

polly.loop_header505.3:                           ; preds = %polly.loop_exit513.1.2, %polly.loop_exit513.3
  %indvars.iv771.3 = phi i64 [ %indvars.iv.next772.3, %polly.loop_exit513.3 ], [ 61, %polly.loop_exit513.1.2 ]
  %polly.indvar508.3 = phi i64 [ %polly.indvar_next509.3, %polly.loop_exit513.3 ], [ 0, %polly.loop_exit513.1.2 ]
  %354 = add nuw nsw i64 %polly.indvar508.3, 60
  %355 = mul nuw nsw i64 %354, 480
  %356 = mul nuw nsw i64 %354, 640
  br label %polly.loop_header511.3

polly.loop_header511.3:                           ; preds = %polly.loop_exit519.3, %polly.loop_header505.3
  %polly.indvar514.3 = phi i64 [ 0, %polly.loop_header505.3 ], [ %polly.indvar_next515.3, %polly.loop_exit519.3 ]
  %357 = shl i64 %polly.indvar514.3, 3
  %358 = add i64 %357, %355
  %scevgep526.3 = getelementptr i8, i8* %call2, i64 %358
  %scevgep526527.3 = bitcast i8* %scevgep526.3 to double*
  %_p_scalar_528.3 = load double, double* %scevgep526527.3, align 8, !alias.scope !82, !noalias !85
  %scevgep532.3 = getelementptr i8, i8* %call1, i64 %358
  %scevgep532533.3 = bitcast i8* %scevgep532.3 to double*
  %_p_scalar_534.3 = load double, double* %scevgep532533.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.3

polly.loop_header517.3:                           ; preds = %polly.loop_header517.3, %polly.loop_header511.3
  %polly.indvar520.3 = phi i64 [ 0, %polly.loop_header511.3 ], [ %polly.indvar_next521.3, %polly.loop_header517.3 ]
  %359 = mul nuw nsw i64 %polly.indvar520.3, 480
  %360 = add nuw nsw i64 %359, %357
  %scevgep523.3 = getelementptr i8, i8* %call1, i64 %360
  %scevgep523524.3 = bitcast i8* %scevgep523.3 to double*
  %_p_scalar_525.3 = load double, double* %scevgep523524.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.3 = fmul fast double %_p_scalar_528.3, %_p_scalar_525.3
  %scevgep529.3 = getelementptr i8, i8* %call2, i64 %360
  %scevgep529530.3 = bitcast i8* %scevgep529.3 to double*
  %_p_scalar_531.3 = load double, double* %scevgep529530.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.3 = fmul fast double %_p_scalar_534.3, %_p_scalar_531.3
  %361 = shl nuw nsw i64 %polly.indvar520.3, 3
  %362 = add nuw nsw i64 %361, %356
  %scevgep535.3 = getelementptr i8, i8* %call, i64 %362
  %scevgep535536.3 = bitcast i8* %scevgep535.3 to double*
  %_p_scalar_537.3 = load double, double* %scevgep535536.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.3 = fadd fast double %p_mul37.i.3, %p_mul27.i.3
  %p_reass.mul.i.3 = fmul fast double %p_reass.add.i.3, 1.500000e+00
  %p_add42.i.3 = fadd fast double %p_reass.mul.i.3, %_p_scalar_537.3
  store double %p_add42.i.3, double* %scevgep535536.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.3 = add nuw nsw i64 %polly.indvar520.3, 1
  %exitcond773.3.not = icmp eq i64 %polly.indvar_next521.3, %indvars.iv771.3
  br i1 %exitcond773.3.not, label %polly.loop_exit519.3, label %polly.loop_header517.3

polly.loop_exit519.3:                             ; preds = %polly.loop_header517.3
  %polly.indvar_next515.3 = add nuw nsw i64 %polly.indvar514.3, 1
  %exitcond774.3.not = icmp eq i64 %polly.indvar_next515.3, 50
  br i1 %exitcond774.3.not, label %polly.loop_exit513.3, label %polly.loop_header511.3

polly.loop_exit513.3:                             ; preds = %polly.loop_exit519.3
  %polly.indvar_next509.3 = add nuw nsw i64 %polly.indvar508.3, 1
  %indvars.iv.next772.3 = add nuw nsw i64 %indvars.iv771.3, 1
  %exitcond775.3.not = icmp eq i64 %polly.indvar_next509.3, 20
  br i1 %exitcond775.3.not, label %polly.loop_header505.1.3, label %polly.loop_header505.3

polly.loop_header505.1.3:                         ; preds = %polly.loop_exit513.3, %polly.loop_exit513.1.3
  %indvars.iv771.1.3 = phi i64 [ %indvars.iv.next772.1.3, %polly.loop_exit513.1.3 ], [ 61, %polly.loop_exit513.3 ]
  %polly.indvar508.1.3 = phi i64 [ %polly.indvar_next509.1.3, %polly.loop_exit513.1.3 ], [ 0, %polly.loop_exit513.3 ]
  %363 = add nuw nsw i64 %polly.indvar508.1.3, 60
  %364 = mul nuw nsw i64 %363, 480
  %365 = mul nuw nsw i64 %363, 640
  br label %polly.loop_header511.1.3

polly.loop_header511.1.3:                         ; preds = %polly.loop_exit519.1.3, %polly.loop_header505.1.3
  %polly.indvar514.1.3 = phi i64 [ 0, %polly.loop_header505.1.3 ], [ %polly.indvar_next515.1.3, %polly.loop_exit519.1.3 ]
  %366 = shl i64 %polly.indvar514.1.3, 3
  %367 = add i64 %366, 400
  %368 = add i64 %367, %364
  %scevgep526.1.3 = getelementptr i8, i8* %call2, i64 %368
  %scevgep526527.1.3 = bitcast i8* %scevgep526.1.3 to double*
  %_p_scalar_528.1.3 = load double, double* %scevgep526527.1.3, align 8, !alias.scope !82, !noalias !85
  %scevgep532.1.3 = getelementptr i8, i8* %call1, i64 %368
  %scevgep532533.1.3 = bitcast i8* %scevgep532.1.3 to double*
  %_p_scalar_534.1.3 = load double, double* %scevgep532533.1.3, align 8, !alias.scope !81, !noalias !86
  br label %polly.loop_header517.1.3

polly.loop_header517.1.3:                         ; preds = %polly.loop_header517.1.3, %polly.loop_header511.1.3
  %polly.indvar520.1.3 = phi i64 [ 0, %polly.loop_header511.1.3 ], [ %polly.indvar_next521.1.3, %polly.loop_header517.1.3 ]
  %369 = mul nuw nsw i64 %polly.indvar520.1.3, 480
  %370 = add nuw nsw i64 %369, %367
  %scevgep523.1.3 = getelementptr i8, i8* %call1, i64 %370
  %scevgep523524.1.3 = bitcast i8* %scevgep523.1.3 to double*
  %_p_scalar_525.1.3 = load double, double* %scevgep523524.1.3, align 8, !alias.scope !81, !noalias !86
  %p_mul27.i.1.3 = fmul fast double %_p_scalar_528.1.3, %_p_scalar_525.1.3
  %scevgep529.1.3 = getelementptr i8, i8* %call2, i64 %370
  %scevgep529530.1.3 = bitcast i8* %scevgep529.1.3 to double*
  %_p_scalar_531.1.3 = load double, double* %scevgep529530.1.3, align 8, !alias.scope !82, !noalias !85
  %p_mul37.i.1.3 = fmul fast double %_p_scalar_534.1.3, %_p_scalar_531.1.3
  %371 = shl nuw nsw i64 %polly.indvar520.1.3, 3
  %372 = add nuw nsw i64 %371, %365
  %scevgep535.1.3 = getelementptr i8, i8* %call, i64 %372
  %scevgep535536.1.3 = bitcast i8* %scevgep535.1.3 to double*
  %_p_scalar_537.1.3 = load double, double* %scevgep535536.1.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i.1.3 = fadd fast double %p_mul37.i.1.3, %p_mul27.i.1.3
  %p_reass.mul.i.1.3 = fmul fast double %p_reass.add.i.1.3, 1.500000e+00
  %p_add42.i.1.3 = fadd fast double %p_reass.mul.i.1.3, %_p_scalar_537.1.3
  store double %p_add42.i.1.3, double* %scevgep535536.1.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next521.1.3 = add nuw nsw i64 %polly.indvar520.1.3, 1
  %exitcond773.1.3.not = icmp eq i64 %polly.indvar_next521.1.3, %indvars.iv771.1.3
  br i1 %exitcond773.1.3.not, label %polly.loop_exit519.1.3, label %polly.loop_header517.1.3

polly.loop_exit519.1.3:                           ; preds = %polly.loop_header517.1.3
  %polly.indvar_next515.1.3 = add nuw nsw i64 %polly.indvar514.1.3, 1
  %exitcond774.1.3.not = icmp eq i64 %polly.indvar_next515.1.3, 10
  br i1 %exitcond774.1.3.not, label %polly.loop_exit513.1.3, label %polly.loop_header511.1.3

polly.loop_exit513.1.3:                           ; preds = %polly.loop_exit519.1.3
  %polly.indvar_next509.1.3 = add nuw nsw i64 %polly.indvar508.1.3, 1
  %indvars.iv.next772.1.3 = add nuw nsw i64 %indvars.iv771.1.3, 1
  %exitcond775.1.3.not = icmp eq i64 %polly.indvar_next509.1.3, 20
  br i1 %exitcond775.1.3.not, label %kernel_syr2k.exit, label %polly.loop_header505.1.3

polly.loop_header729.1:                           ; preds = %polly.loop_exit737, %polly.loop_exit737.1
  %polly.indvar732.1 = phi i64 [ %polly.indvar_next733.1, %polly.loop_exit737.1 ], [ 0, %polly.loop_exit737 ]
  %373 = mul nuw nsw i64 %polly.indvar732.1, 480
  %374 = trunc i64 %polly.indvar732.1 to i32
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %374, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %polly.loop_header729.1
  %index1205 = phi i64 [ 0, %polly.loop_header729.1 ], [ %index.next1206, %vector.body1203 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1 ], [ %vec.ind.next1210, %vector.body1203 ]
  %375 = add nuw nsw <4 x i64> %vec.ind1209, <i64 32, i64 32, i64 32, i64 32>
  %376 = trunc <4 x i64> %375 to <4 x i32>
  %377 = mul <4 x i32> %broadcast.splat1212, %376
  %378 = add <4 x i32> %377, <i32 1, i32 1, i32 1, i32 1>
  %379 = urem <4 x i32> %378, <i32 80, i32 80, i32 80, i32 80>
  %380 = sitofp <4 x i32> %379 to <4 x double>
  %381 = fmul fast <4 x double> %380, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %382 = extractelement <4 x i64> %375, i32 0
  %383 = shl i64 %382, 3
  %384 = add i64 %383, %373
  %385 = getelementptr i8, i8* %call1, i64 %384
  %386 = bitcast i8* %385 to <4 x double>*
  store <4 x double> %381, <4 x double>* %386, align 8, !alias.scope !90, !noalias !95
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %387 = icmp eq i64 %index.next1206, 28
  br i1 %387, label %polly.loop_exit737.1, label %vector.body1203, !llvm.loop !97

polly.loop_exit737.1:                             ; preds = %vector.body1203
  %polly.indvar_next733.1 = add nuw nsw i64 %polly.indvar732.1, 1
  %exitcond782.1.not = icmp eq i64 %polly.indvar_next733.1, 32
  br i1 %exitcond782.1.not, label %polly.loop_header729.1916, label %polly.loop_header729.1

polly.loop_header729.1916:                        ; preds = %polly.loop_exit737.1, %polly.loop_exit737.1927
  %polly.indvar732.1915 = phi i64 [ %polly.indvar_next733.1925, %polly.loop_exit737.1927 ], [ 0, %polly.loop_exit737.1 ]
  %388 = add nuw nsw i64 %polly.indvar732.1915, 32
  %389 = mul nuw nsw i64 %388, 480
  %390 = trunc i64 %388 to i32
  %broadcast.splatinsert1225 = insertelement <4 x i32> poison, i32 %390, i32 0
  %broadcast.splat1226 = shufflevector <4 x i32> %broadcast.splatinsert1225, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %polly.loop_header729.1916
  %index1217 = phi i64 [ 0, %polly.loop_header729.1916 ], [ %index.next1218, %vector.body1215 ]
  %vec.ind1223 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729.1916 ], [ %vec.ind.next1224, %vector.body1215 ]
  %391 = mul <4 x i32> %vec.ind1223, %broadcast.splat1226
  %392 = add <4 x i32> %391, <i32 1, i32 1, i32 1, i32 1>
  %393 = urem <4 x i32> %392, <i32 80, i32 80, i32 80, i32 80>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %396 = shl i64 %index1217, 3
  %397 = add i64 %396, %389
  %398 = getelementptr i8, i8* %call1, i64 %397
  %399 = bitcast i8* %398 to <4 x double>*
  store <4 x double> %395, <4 x double>* %399, align 8, !alias.scope !90, !noalias !95
  %index.next1218 = add i64 %index1217, 4
  %vec.ind.next1224 = add <4 x i32> %vec.ind1223, <i32 4, i32 4, i32 4, i32 4>
  %400 = icmp eq i64 %index.next1218, 32
  br i1 %400, label %polly.loop_exit737.1927, label %vector.body1215, !llvm.loop !98

polly.loop_exit737.1927:                          ; preds = %vector.body1215
  %polly.indvar_next733.1925 = add nuw nsw i64 %polly.indvar732.1915, 1
  %exitcond782.1926.not = icmp eq i64 %polly.indvar_next733.1925, 32
  br i1 %exitcond782.1926.not, label %polly.loop_header729.1.1, label %polly.loop_header729.1916

polly.loop_header729.1.1:                         ; preds = %polly.loop_exit737.1927, %polly.loop_exit737.1.1
  %polly.indvar732.1.1 = phi i64 [ %polly.indvar_next733.1.1, %polly.loop_exit737.1.1 ], [ 0, %polly.loop_exit737.1927 ]
  %401 = add nuw nsw i64 %polly.indvar732.1.1, 32
  %402 = mul nuw nsw i64 %401, 480
  %403 = trunc i64 %401 to i32
  %broadcast.splatinsert1237 = insertelement <4 x i32> poison, i32 %403, i32 0
  %broadcast.splat1238 = shufflevector <4 x i32> %broadcast.splatinsert1237, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %polly.loop_header729.1.1
  %index1231 = phi i64 [ 0, %polly.loop_header729.1.1 ], [ %index.next1232, %vector.body1229 ]
  %vec.ind1235 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1.1 ], [ %vec.ind.next1236, %vector.body1229 ]
  %404 = add nuw nsw <4 x i64> %vec.ind1235, <i64 32, i64 32, i64 32, i64 32>
  %405 = trunc <4 x i64> %404 to <4 x i32>
  %406 = mul <4 x i32> %broadcast.splat1238, %405
  %407 = add <4 x i32> %406, <i32 1, i32 1, i32 1, i32 1>
  %408 = urem <4 x i32> %407, <i32 80, i32 80, i32 80, i32 80>
  %409 = sitofp <4 x i32> %408 to <4 x double>
  %410 = fmul fast <4 x double> %409, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %411 = extractelement <4 x i64> %404, i32 0
  %412 = shl i64 %411, 3
  %413 = add i64 %412, %402
  %414 = getelementptr i8, i8* %call1, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %410, <4 x double>* %415, align 8, !alias.scope !90, !noalias !95
  %index.next1232 = add i64 %index1231, 4
  %vec.ind.next1236 = add <4 x i64> %vec.ind1235, <i64 4, i64 4, i64 4, i64 4>
  %416 = icmp eq i64 %index.next1232, 28
  br i1 %416, label %polly.loop_exit737.1.1, label %vector.body1229, !llvm.loop !99

polly.loop_exit737.1.1:                           ; preds = %vector.body1229
  %polly.indvar_next733.1.1 = add nuw nsw i64 %polly.indvar732.1.1, 1
  %exitcond782.1.1.not = icmp eq i64 %polly.indvar_next733.1.1, 32
  br i1 %exitcond782.1.1.not, label %polly.loop_header729.2, label %polly.loop_header729.1.1

polly.loop_header729.2:                           ; preds = %polly.loop_exit737.1.1, %polly.loop_exit737.2
  %polly.indvar732.2 = phi i64 [ %polly.indvar_next733.2, %polly.loop_exit737.2 ], [ 0, %polly.loop_exit737.1.1 ]
  %417 = add nuw nsw i64 %polly.indvar732.2, 64
  %418 = mul nuw nsw i64 %417, 480
  %419 = trunc i64 %417 to i32
  %broadcast.splatinsert1251 = insertelement <4 x i32> poison, i32 %419, i32 0
  %broadcast.splat1252 = shufflevector <4 x i32> %broadcast.splatinsert1251, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %polly.loop_header729.2
  %index1243 = phi i64 [ 0, %polly.loop_header729.2 ], [ %index.next1244, %vector.body1241 ]
  %vec.ind1249 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header729.2 ], [ %vec.ind.next1250, %vector.body1241 ]
  %420 = mul <4 x i32> %vec.ind1249, %broadcast.splat1252
  %421 = add <4 x i32> %420, <i32 1, i32 1, i32 1, i32 1>
  %422 = urem <4 x i32> %421, <i32 80, i32 80, i32 80, i32 80>
  %423 = sitofp <4 x i32> %422 to <4 x double>
  %424 = fmul fast <4 x double> %423, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %425 = shl i64 %index1243, 3
  %426 = add i64 %425, %418
  %427 = getelementptr i8, i8* %call1, i64 %426
  %428 = bitcast i8* %427 to <4 x double>*
  store <4 x double> %424, <4 x double>* %428, align 8, !alias.scope !90, !noalias !95
  %index.next1244 = add i64 %index1243, 4
  %vec.ind.next1250 = add <4 x i32> %vec.ind1249, <i32 4, i32 4, i32 4, i32 4>
  %429 = icmp eq i64 %index.next1244, 32
  br i1 %429, label %polly.loop_exit737.2, label %vector.body1241, !llvm.loop !100

polly.loop_exit737.2:                             ; preds = %vector.body1241
  %polly.indvar_next733.2 = add nuw nsw i64 %polly.indvar732.2, 1
  %exitcond782.2.not = icmp eq i64 %polly.indvar_next733.2, 16
  br i1 %exitcond782.2.not, label %polly.loop_header729.1.2, label %polly.loop_header729.2

polly.loop_header729.1.2:                         ; preds = %polly.loop_exit737.2, %polly.loop_exit737.1.2
  %polly.indvar732.1.2 = phi i64 [ %polly.indvar_next733.1.2, %polly.loop_exit737.1.2 ], [ 0, %polly.loop_exit737.2 ]
  %430 = add nuw nsw i64 %polly.indvar732.1.2, 64
  %431 = mul nuw nsw i64 %430, 480
  %432 = trunc i64 %430 to i32
  %broadcast.splatinsert1263 = insertelement <4 x i32> poison, i32 %432, i32 0
  %broadcast.splat1264 = shufflevector <4 x i32> %broadcast.splatinsert1263, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %polly.loop_header729.1.2
  %index1257 = phi i64 [ 0, %polly.loop_header729.1.2 ], [ %index.next1258, %vector.body1255 ]
  %vec.ind1261 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header729.1.2 ], [ %vec.ind.next1262, %vector.body1255 ]
  %433 = add nuw nsw <4 x i64> %vec.ind1261, <i64 32, i64 32, i64 32, i64 32>
  %434 = trunc <4 x i64> %433 to <4 x i32>
  %435 = mul <4 x i32> %broadcast.splat1264, %434
  %436 = add <4 x i32> %435, <i32 1, i32 1, i32 1, i32 1>
  %437 = urem <4 x i32> %436, <i32 80, i32 80, i32 80, i32 80>
  %438 = sitofp <4 x i32> %437 to <4 x double>
  %439 = fmul fast <4 x double> %438, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %440 = extractelement <4 x i64> %433, i32 0
  %441 = shl i64 %440, 3
  %442 = add i64 %441, %431
  %443 = getelementptr i8, i8* %call1, i64 %442
  %444 = bitcast i8* %443 to <4 x double>*
  store <4 x double> %439, <4 x double>* %444, align 8, !alias.scope !90, !noalias !95
  %index.next1258 = add i64 %index1257, 4
  %vec.ind.next1262 = add <4 x i64> %vec.ind1261, <i64 4, i64 4, i64 4, i64 4>
  %445 = icmp eq i64 %index.next1258, 28
  br i1 %445, label %polly.loop_exit737.1.2, label %vector.body1255, !llvm.loop !101

polly.loop_exit737.1.2:                           ; preds = %vector.body1255
  %polly.indvar_next733.1.2 = add nuw nsw i64 %polly.indvar732.1.2, 1
  %exitcond782.1.2.not = icmp eq i64 %polly.indvar_next733.1.2, 16
  br i1 %exitcond782.1.2.not, label %init_array.exit, label %polly.loop_header729.1.2

polly.loop_header703.1:                           ; preds = %polly.loop_exit711, %polly.loop_exit711.1
  %polly.indvar706.1 = phi i64 [ %polly.indvar_next707.1, %polly.loop_exit711.1 ], [ 0, %polly.loop_exit711 ]
  %446 = mul nuw nsw i64 %polly.indvar706.1, 480
  %447 = trunc i64 %polly.indvar706.1 to i32
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %447, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %polly.loop_header703.1
  %index1127 = phi i64 [ 0, %polly.loop_header703.1 ], [ %index.next1128, %vector.body1125 ]
  %vec.ind1131 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1 ], [ %vec.ind.next1132, %vector.body1125 ]
  %448 = add nuw nsw <4 x i64> %vec.ind1131, <i64 32, i64 32, i64 32, i64 32>
  %449 = trunc <4 x i64> %448 to <4 x i32>
  %450 = mul <4 x i32> %broadcast.splat1134, %449
  %451 = add <4 x i32> %450, <i32 2, i32 2, i32 2, i32 2>
  %452 = urem <4 x i32> %451, <i32 60, i32 60, i32 60, i32 60>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = extractelement <4 x i64> %448, i32 0
  %456 = shl i64 %455, 3
  %457 = add i64 %456, %446
  %458 = getelementptr i8, i8* %call2, i64 %457
  %459 = bitcast i8* %458 to <4 x double>*
  store <4 x double> %454, <4 x double>* %459, align 8, !alias.scope !91, !noalias !93
  %index.next1128 = add i64 %index1127, 4
  %vec.ind.next1132 = add <4 x i64> %vec.ind1131, <i64 4, i64 4, i64 4, i64 4>
  %460 = icmp eq i64 %index.next1128, 28
  br i1 %460, label %polly.loop_exit711.1, label %vector.body1125, !llvm.loop !102

polly.loop_exit711.1:                             ; preds = %vector.body1125
  %polly.indvar_next707.1 = add nuw nsw i64 %polly.indvar706.1, 1
  %exitcond788.1.not = icmp eq i64 %polly.indvar_next707.1, 32
  br i1 %exitcond788.1.not, label %polly.loop_header703.1930, label %polly.loop_header703.1

polly.loop_header703.1930:                        ; preds = %polly.loop_exit711.1, %polly.loop_exit711.1941
  %polly.indvar706.1929 = phi i64 [ %polly.indvar_next707.1939, %polly.loop_exit711.1941 ], [ 0, %polly.loop_exit711.1 ]
  %461 = add nuw nsw i64 %polly.indvar706.1929, 32
  %462 = mul nuw nsw i64 %461, 480
  %463 = trunc i64 %461 to i32
  %broadcast.splatinsert1147 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat1148 = shufflevector <4 x i32> %broadcast.splatinsert1147, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %polly.loop_header703.1930
  %index1139 = phi i64 [ 0, %polly.loop_header703.1930 ], [ %index.next1140, %vector.body1137 ]
  %vec.ind1145 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703.1930 ], [ %vec.ind.next1146, %vector.body1137 ]
  %464 = mul <4 x i32> %vec.ind1145, %broadcast.splat1148
  %465 = add <4 x i32> %464, <i32 2, i32 2, i32 2, i32 2>
  %466 = urem <4 x i32> %465, <i32 60, i32 60, i32 60, i32 60>
  %467 = sitofp <4 x i32> %466 to <4 x double>
  %468 = fmul fast <4 x double> %467, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %469 = shl i64 %index1139, 3
  %470 = add i64 %469, %462
  %471 = getelementptr i8, i8* %call2, i64 %470
  %472 = bitcast i8* %471 to <4 x double>*
  store <4 x double> %468, <4 x double>* %472, align 8, !alias.scope !91, !noalias !93
  %index.next1140 = add i64 %index1139, 4
  %vec.ind.next1146 = add <4 x i32> %vec.ind1145, <i32 4, i32 4, i32 4, i32 4>
  %473 = icmp eq i64 %index.next1140, 32
  br i1 %473, label %polly.loop_exit711.1941, label %vector.body1137, !llvm.loop !103

polly.loop_exit711.1941:                          ; preds = %vector.body1137
  %polly.indvar_next707.1939 = add nuw nsw i64 %polly.indvar706.1929, 1
  %exitcond788.1940.not = icmp eq i64 %polly.indvar_next707.1939, 32
  br i1 %exitcond788.1940.not, label %polly.loop_header703.1.1, label %polly.loop_header703.1930

polly.loop_header703.1.1:                         ; preds = %polly.loop_exit711.1941, %polly.loop_exit711.1.1
  %polly.indvar706.1.1 = phi i64 [ %polly.indvar_next707.1.1, %polly.loop_exit711.1.1 ], [ 0, %polly.loop_exit711.1941 ]
  %474 = add nuw nsw i64 %polly.indvar706.1.1, 32
  %475 = mul nuw nsw i64 %474, 480
  %476 = trunc i64 %474 to i32
  %broadcast.splatinsert1159 = insertelement <4 x i32> poison, i32 %476, i32 0
  %broadcast.splat1160 = shufflevector <4 x i32> %broadcast.splatinsert1159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %polly.loop_header703.1.1
  %index1153 = phi i64 [ 0, %polly.loop_header703.1.1 ], [ %index.next1154, %vector.body1151 ]
  %vec.ind1157 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1.1 ], [ %vec.ind.next1158, %vector.body1151 ]
  %477 = add nuw nsw <4 x i64> %vec.ind1157, <i64 32, i64 32, i64 32, i64 32>
  %478 = trunc <4 x i64> %477 to <4 x i32>
  %479 = mul <4 x i32> %broadcast.splat1160, %478
  %480 = add <4 x i32> %479, <i32 2, i32 2, i32 2, i32 2>
  %481 = urem <4 x i32> %480, <i32 60, i32 60, i32 60, i32 60>
  %482 = sitofp <4 x i32> %481 to <4 x double>
  %483 = fmul fast <4 x double> %482, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %484 = extractelement <4 x i64> %477, i32 0
  %485 = shl i64 %484, 3
  %486 = add i64 %485, %475
  %487 = getelementptr i8, i8* %call2, i64 %486
  %488 = bitcast i8* %487 to <4 x double>*
  store <4 x double> %483, <4 x double>* %488, align 8, !alias.scope !91, !noalias !93
  %index.next1154 = add i64 %index1153, 4
  %vec.ind.next1158 = add <4 x i64> %vec.ind1157, <i64 4, i64 4, i64 4, i64 4>
  %489 = icmp eq i64 %index.next1154, 28
  br i1 %489, label %polly.loop_exit711.1.1, label %vector.body1151, !llvm.loop !104

polly.loop_exit711.1.1:                           ; preds = %vector.body1151
  %polly.indvar_next707.1.1 = add nuw nsw i64 %polly.indvar706.1.1, 1
  %exitcond788.1.1.not = icmp eq i64 %polly.indvar_next707.1.1, 32
  br i1 %exitcond788.1.1.not, label %polly.loop_header703.2, label %polly.loop_header703.1.1

polly.loop_header703.2:                           ; preds = %polly.loop_exit711.1.1, %polly.loop_exit711.2
  %polly.indvar706.2 = phi i64 [ %polly.indvar_next707.2, %polly.loop_exit711.2 ], [ 0, %polly.loop_exit711.1.1 ]
  %490 = add nuw nsw i64 %polly.indvar706.2, 64
  %491 = mul nuw nsw i64 %490, 480
  %492 = trunc i64 %490 to i32
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %492, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %polly.loop_header703.2
  %index1165 = phi i64 [ 0, %polly.loop_header703.2 ], [ %index.next1166, %vector.body1163 ]
  %vec.ind1171 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header703.2 ], [ %vec.ind.next1172, %vector.body1163 ]
  %493 = mul <4 x i32> %vec.ind1171, %broadcast.splat1174
  %494 = add <4 x i32> %493, <i32 2, i32 2, i32 2, i32 2>
  %495 = urem <4 x i32> %494, <i32 60, i32 60, i32 60, i32 60>
  %496 = sitofp <4 x i32> %495 to <4 x double>
  %497 = fmul fast <4 x double> %496, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %498 = shl i64 %index1165, 3
  %499 = add i64 %498, %491
  %500 = getelementptr i8, i8* %call2, i64 %499
  %501 = bitcast i8* %500 to <4 x double>*
  store <4 x double> %497, <4 x double>* %501, align 8, !alias.scope !91, !noalias !93
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1172 = add <4 x i32> %vec.ind1171, <i32 4, i32 4, i32 4, i32 4>
  %502 = icmp eq i64 %index.next1166, 32
  br i1 %502, label %polly.loop_exit711.2, label %vector.body1163, !llvm.loop !105

polly.loop_exit711.2:                             ; preds = %vector.body1163
  %polly.indvar_next707.2 = add nuw nsw i64 %polly.indvar706.2, 1
  %exitcond788.2.not = icmp eq i64 %polly.indvar_next707.2, 16
  br i1 %exitcond788.2.not, label %polly.loop_header703.1.2, label %polly.loop_header703.2

polly.loop_header703.1.2:                         ; preds = %polly.loop_exit711.2, %polly.loop_exit711.1.2
  %polly.indvar706.1.2 = phi i64 [ %polly.indvar_next707.1.2, %polly.loop_exit711.1.2 ], [ 0, %polly.loop_exit711.2 ]
  %503 = add nuw nsw i64 %polly.indvar706.1.2, 64
  %504 = mul nuw nsw i64 %503, 480
  %505 = trunc i64 %503 to i32
  %broadcast.splatinsert1185 = insertelement <4 x i32> poison, i32 %505, i32 0
  %broadcast.splat1186 = shufflevector <4 x i32> %broadcast.splatinsert1185, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %polly.loop_header703.1.2
  %index1179 = phi i64 [ 0, %polly.loop_header703.1.2 ], [ %index.next1180, %vector.body1177 ]
  %vec.ind1183 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header703.1.2 ], [ %vec.ind.next1184, %vector.body1177 ]
  %506 = add nuw nsw <4 x i64> %vec.ind1183, <i64 32, i64 32, i64 32, i64 32>
  %507 = trunc <4 x i64> %506 to <4 x i32>
  %508 = mul <4 x i32> %broadcast.splat1186, %507
  %509 = add <4 x i32> %508, <i32 2, i32 2, i32 2, i32 2>
  %510 = urem <4 x i32> %509, <i32 60, i32 60, i32 60, i32 60>
  %511 = sitofp <4 x i32> %510 to <4 x double>
  %512 = fmul fast <4 x double> %511, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %513 = extractelement <4 x i64> %506, i32 0
  %514 = shl i64 %513, 3
  %515 = add i64 %514, %504
  %516 = getelementptr i8, i8* %call2, i64 %515
  %517 = bitcast i8* %516 to <4 x double>*
  store <4 x double> %512, <4 x double>* %517, align 8, !alias.scope !91, !noalias !93
  %index.next1180 = add i64 %index1179, 4
  %vec.ind.next1184 = add <4 x i64> %vec.ind1183, <i64 4, i64 4, i64 4, i64 4>
  %518 = icmp eq i64 %index.next1180, 28
  br i1 %518, label %polly.loop_exit711.1.2, label %vector.body1177, !llvm.loop !106

polly.loop_exit711.1.2:                           ; preds = %vector.body1177
  %polly.indvar_next707.1.2 = add nuw nsw i64 %polly.indvar706.1.2, 1
  %exitcond788.1.2.not = icmp eq i64 %polly.indvar_next707.1.2, 16
  br i1 %exitcond788.1.2.not, label %polly.loop_header729, label %polly.loop_header703.1.2

polly.loop_header676.1:                           ; preds = %polly.loop_exit684, %polly.loop_exit684.1
  %polly.indvar679.1 = phi i64 [ %polly.indvar_next680.1, %polly.loop_exit684.1 ], [ 0, %polly.loop_exit684 ]
  %519 = mul nuw nsw i64 %polly.indvar679.1, 640
  %520 = trunc i64 %polly.indvar679.1 to i32
  %broadcast.splatinsert1019 = insertelement <4 x i32> poison, i32 %520, i32 0
  %broadcast.splat1020 = shufflevector <4 x i32> %broadcast.splatinsert1019, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %polly.loop_header676.1
  %index1013 = phi i64 [ 0, %polly.loop_header676.1 ], [ %index.next1014, %vector.body1011 ]
  %vec.ind1017 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1 ], [ %vec.ind.next1018, %vector.body1011 ]
  %521 = add nuw nsw <4 x i64> %vec.ind1017, <i64 32, i64 32, i64 32, i64 32>
  %522 = trunc <4 x i64> %521 to <4 x i32>
  %523 = mul <4 x i32> %broadcast.splat1020, %522
  %524 = add <4 x i32> %523, <i32 3, i32 3, i32 3, i32 3>
  %525 = urem <4 x i32> %524, <i32 80, i32 80, i32 80, i32 80>
  %526 = sitofp <4 x i32> %525 to <4 x double>
  %527 = fmul fast <4 x double> %526, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %528 = extractelement <4 x i64> %521, i32 0
  %529 = shl i64 %528, 3
  %530 = add nuw nsw i64 %529, %519
  %531 = getelementptr i8, i8* %call, i64 %530
  %532 = bitcast i8* %531 to <4 x double>*
  store <4 x double> %527, <4 x double>* %532, align 8, !alias.scope !87, !noalias !89
  %index.next1014 = add i64 %index1013, 4
  %vec.ind.next1018 = add <4 x i64> %vec.ind1017, <i64 4, i64 4, i64 4, i64 4>
  %533 = icmp eq i64 %index.next1014, 32
  br i1 %533, label %polly.loop_exit684.1, label %vector.body1011, !llvm.loop !107

polly.loop_exit684.1:                             ; preds = %vector.body1011
  %polly.indvar_next680.1 = add nuw nsw i64 %polly.indvar679.1, 1
  %exitcond797.1.not = icmp eq i64 %polly.indvar_next680.1, 32
  br i1 %exitcond797.1.not, label %polly.loop_header676.2, label %polly.loop_header676.1

polly.loop_header676.2:                           ; preds = %polly.loop_exit684.1, %polly.loop_exit684.2
  %polly.indvar679.2 = phi i64 [ %polly.indvar_next680.2, %polly.loop_exit684.2 ], [ 0, %polly.loop_exit684.1 ]
  %534 = mul nuw nsw i64 %polly.indvar679.2, 640
  %535 = trunc i64 %polly.indvar679.2 to i32
  %broadcast.splatinsert1031 = insertelement <4 x i32> poison, i32 %535, i32 0
  %broadcast.splat1032 = shufflevector <4 x i32> %broadcast.splatinsert1031, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1023

vector.body1023:                                  ; preds = %vector.body1023, %polly.loop_header676.2
  %index1025 = phi i64 [ 0, %polly.loop_header676.2 ], [ %index.next1026, %vector.body1023 ]
  %vec.ind1029 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2 ], [ %vec.ind.next1030, %vector.body1023 ]
  %536 = add nuw nsw <4 x i64> %vec.ind1029, <i64 64, i64 64, i64 64, i64 64>
  %537 = trunc <4 x i64> %536 to <4 x i32>
  %538 = mul <4 x i32> %broadcast.splat1032, %537
  %539 = add <4 x i32> %538, <i32 3, i32 3, i32 3, i32 3>
  %540 = urem <4 x i32> %539, <i32 80, i32 80, i32 80, i32 80>
  %541 = sitofp <4 x i32> %540 to <4 x double>
  %542 = fmul fast <4 x double> %541, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %543 = extractelement <4 x i64> %536, i32 0
  %544 = shl i64 %543, 3
  %545 = add nuw nsw i64 %544, %534
  %546 = getelementptr i8, i8* %call, i64 %545
  %547 = bitcast i8* %546 to <4 x double>*
  store <4 x double> %542, <4 x double>* %547, align 8, !alias.scope !87, !noalias !89
  %index.next1026 = add i64 %index1025, 4
  %vec.ind.next1030 = add <4 x i64> %vec.ind1029, <i64 4, i64 4, i64 4, i64 4>
  %548 = icmp eq i64 %index.next1026, 16
  br i1 %548, label %polly.loop_exit684.2, label %vector.body1023, !llvm.loop !108

polly.loop_exit684.2:                             ; preds = %vector.body1023
  %polly.indvar_next680.2 = add nuw nsw i64 %polly.indvar679.2, 1
  %exitcond797.2.not = icmp eq i64 %polly.indvar_next680.2, 32
  br i1 %exitcond797.2.not, label %polly.loop_header676.1944, label %polly.loop_header676.2

polly.loop_header676.1944:                        ; preds = %polly.loop_exit684.2, %polly.loop_exit684.1955
  %polly.indvar679.1943 = phi i64 [ %polly.indvar_next680.1953, %polly.loop_exit684.1955 ], [ 0, %polly.loop_exit684.2 ]
  %549 = add nuw nsw i64 %polly.indvar679.1943, 32
  %550 = mul nuw nsw i64 %549, 640
  %551 = trunc i64 %549 to i32
  %broadcast.splatinsert1045 = insertelement <4 x i32> poison, i32 %551, i32 0
  %broadcast.splat1046 = shufflevector <4 x i32> %broadcast.splatinsert1045, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %polly.loop_header676.1944
  %index1037 = phi i64 [ 0, %polly.loop_header676.1944 ], [ %index.next1038, %vector.body1035 ]
  %vec.ind1043 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676.1944 ], [ %vec.ind.next1044, %vector.body1035 ]
  %552 = mul <4 x i32> %vec.ind1043, %broadcast.splat1046
  %553 = add <4 x i32> %552, <i32 3, i32 3, i32 3, i32 3>
  %554 = urem <4 x i32> %553, <i32 80, i32 80, i32 80, i32 80>
  %555 = sitofp <4 x i32> %554 to <4 x double>
  %556 = fmul fast <4 x double> %555, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %557 = shl i64 %index1037, 3
  %558 = add nuw nsw i64 %557, %550
  %559 = getelementptr i8, i8* %call, i64 %558
  %560 = bitcast i8* %559 to <4 x double>*
  store <4 x double> %556, <4 x double>* %560, align 8, !alias.scope !87, !noalias !89
  %index.next1038 = add i64 %index1037, 4
  %vec.ind.next1044 = add <4 x i32> %vec.ind1043, <i32 4, i32 4, i32 4, i32 4>
  %561 = icmp eq i64 %index.next1038, 32
  br i1 %561, label %polly.loop_exit684.1955, label %vector.body1035, !llvm.loop !109

polly.loop_exit684.1955:                          ; preds = %vector.body1035
  %polly.indvar_next680.1953 = add nuw nsw i64 %polly.indvar679.1943, 1
  %exitcond797.1954.not = icmp eq i64 %polly.indvar_next680.1953, 32
  br i1 %exitcond797.1954.not, label %polly.loop_header676.1.1, label %polly.loop_header676.1944

polly.loop_header676.1.1:                         ; preds = %polly.loop_exit684.1955, %polly.loop_exit684.1.1
  %polly.indvar679.1.1 = phi i64 [ %polly.indvar_next680.1.1, %polly.loop_exit684.1.1 ], [ 0, %polly.loop_exit684.1955 ]
  %562 = add nuw nsw i64 %polly.indvar679.1.1, 32
  %563 = mul nuw nsw i64 %562, 640
  %564 = trunc i64 %562 to i32
  %broadcast.splatinsert1057 = insertelement <4 x i32> poison, i32 %564, i32 0
  %broadcast.splat1058 = shufflevector <4 x i32> %broadcast.splatinsert1057, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %polly.loop_header676.1.1
  %index1051 = phi i64 [ 0, %polly.loop_header676.1.1 ], [ %index.next1052, %vector.body1049 ]
  %vec.ind1055 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1.1 ], [ %vec.ind.next1056, %vector.body1049 ]
  %565 = add nuw nsw <4 x i64> %vec.ind1055, <i64 32, i64 32, i64 32, i64 32>
  %566 = trunc <4 x i64> %565 to <4 x i32>
  %567 = mul <4 x i32> %broadcast.splat1058, %566
  %568 = add <4 x i32> %567, <i32 3, i32 3, i32 3, i32 3>
  %569 = urem <4 x i32> %568, <i32 80, i32 80, i32 80, i32 80>
  %570 = sitofp <4 x i32> %569 to <4 x double>
  %571 = fmul fast <4 x double> %570, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %572 = extractelement <4 x i64> %565, i32 0
  %573 = shl i64 %572, 3
  %574 = add nuw nsw i64 %573, %563
  %575 = getelementptr i8, i8* %call, i64 %574
  %576 = bitcast i8* %575 to <4 x double>*
  store <4 x double> %571, <4 x double>* %576, align 8, !alias.scope !87, !noalias !89
  %index.next1052 = add i64 %index1051, 4
  %vec.ind.next1056 = add <4 x i64> %vec.ind1055, <i64 4, i64 4, i64 4, i64 4>
  %577 = icmp eq i64 %index.next1052, 32
  br i1 %577, label %polly.loop_exit684.1.1, label %vector.body1049, !llvm.loop !110

polly.loop_exit684.1.1:                           ; preds = %vector.body1049
  %polly.indvar_next680.1.1 = add nuw nsw i64 %polly.indvar679.1.1, 1
  %exitcond797.1.1.not = icmp eq i64 %polly.indvar_next680.1.1, 32
  br i1 %exitcond797.1.1.not, label %polly.loop_header676.2.1, label %polly.loop_header676.1.1

polly.loop_header676.2.1:                         ; preds = %polly.loop_exit684.1.1, %polly.loop_exit684.2.1
  %polly.indvar679.2.1 = phi i64 [ %polly.indvar_next680.2.1, %polly.loop_exit684.2.1 ], [ 0, %polly.loop_exit684.1.1 ]
  %578 = add nuw nsw i64 %polly.indvar679.2.1, 32
  %579 = mul nuw nsw i64 %578, 640
  %580 = trunc i64 %578 to i32
  %broadcast.splatinsert1069 = insertelement <4 x i32> poison, i32 %580, i32 0
  %broadcast.splat1070 = shufflevector <4 x i32> %broadcast.splatinsert1069, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1061

vector.body1061:                                  ; preds = %vector.body1061, %polly.loop_header676.2.1
  %index1063 = phi i64 [ 0, %polly.loop_header676.2.1 ], [ %index.next1064, %vector.body1061 ]
  %vec.ind1067 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2.1 ], [ %vec.ind.next1068, %vector.body1061 ]
  %581 = add nuw nsw <4 x i64> %vec.ind1067, <i64 64, i64 64, i64 64, i64 64>
  %582 = trunc <4 x i64> %581 to <4 x i32>
  %583 = mul <4 x i32> %broadcast.splat1070, %582
  %584 = add <4 x i32> %583, <i32 3, i32 3, i32 3, i32 3>
  %585 = urem <4 x i32> %584, <i32 80, i32 80, i32 80, i32 80>
  %586 = sitofp <4 x i32> %585 to <4 x double>
  %587 = fmul fast <4 x double> %586, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %588 = extractelement <4 x i64> %581, i32 0
  %589 = shl i64 %588, 3
  %590 = add nuw nsw i64 %589, %579
  %591 = getelementptr i8, i8* %call, i64 %590
  %592 = bitcast i8* %591 to <4 x double>*
  store <4 x double> %587, <4 x double>* %592, align 8, !alias.scope !87, !noalias !89
  %index.next1064 = add i64 %index1063, 4
  %vec.ind.next1068 = add <4 x i64> %vec.ind1067, <i64 4, i64 4, i64 4, i64 4>
  %593 = icmp eq i64 %index.next1064, 16
  br i1 %593, label %polly.loop_exit684.2.1, label %vector.body1061, !llvm.loop !111

polly.loop_exit684.2.1:                           ; preds = %vector.body1061
  %polly.indvar_next680.2.1 = add nuw nsw i64 %polly.indvar679.2.1, 1
  %exitcond797.2.1.not = icmp eq i64 %polly.indvar_next680.2.1, 32
  br i1 %exitcond797.2.1.not, label %polly.loop_header676.2958, label %polly.loop_header676.2.1

polly.loop_header676.2958:                        ; preds = %polly.loop_exit684.2.1, %polly.loop_exit684.2969
  %polly.indvar679.2957 = phi i64 [ %polly.indvar_next680.2967, %polly.loop_exit684.2969 ], [ 0, %polly.loop_exit684.2.1 ]
  %594 = add nuw nsw i64 %polly.indvar679.2957, 64
  %595 = mul nuw nsw i64 %594, 640
  %596 = trunc i64 %594 to i32
  %broadcast.splatinsert1083 = insertelement <4 x i32> poison, i32 %596, i32 0
  %broadcast.splat1084 = shufflevector <4 x i32> %broadcast.splatinsert1083, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %polly.loop_header676.2958
  %index1075 = phi i64 [ 0, %polly.loop_header676.2958 ], [ %index.next1076, %vector.body1073 ]
  %vec.ind1081 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header676.2958 ], [ %vec.ind.next1082, %vector.body1073 ]
  %597 = mul <4 x i32> %vec.ind1081, %broadcast.splat1084
  %598 = add <4 x i32> %597, <i32 3, i32 3, i32 3, i32 3>
  %599 = urem <4 x i32> %598, <i32 80, i32 80, i32 80, i32 80>
  %600 = sitofp <4 x i32> %599 to <4 x double>
  %601 = fmul fast <4 x double> %600, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %602 = shl i64 %index1075, 3
  %603 = add nuw nsw i64 %602, %595
  %604 = getelementptr i8, i8* %call, i64 %603
  %605 = bitcast i8* %604 to <4 x double>*
  store <4 x double> %601, <4 x double>* %605, align 8, !alias.scope !87, !noalias !89
  %index.next1076 = add i64 %index1075, 4
  %vec.ind.next1082 = add <4 x i32> %vec.ind1081, <i32 4, i32 4, i32 4, i32 4>
  %606 = icmp eq i64 %index.next1076, 32
  br i1 %606, label %polly.loop_exit684.2969, label %vector.body1073, !llvm.loop !112

polly.loop_exit684.2969:                          ; preds = %vector.body1073
  %polly.indvar_next680.2967 = add nuw nsw i64 %polly.indvar679.2957, 1
  %exitcond797.2968.not = icmp eq i64 %polly.indvar_next680.2967, 16
  br i1 %exitcond797.2968.not, label %polly.loop_header676.1.2, label %polly.loop_header676.2958

polly.loop_header676.1.2:                         ; preds = %polly.loop_exit684.2969, %polly.loop_exit684.1.2
  %polly.indvar679.1.2 = phi i64 [ %polly.indvar_next680.1.2, %polly.loop_exit684.1.2 ], [ 0, %polly.loop_exit684.2969 ]
  %607 = add nuw nsw i64 %polly.indvar679.1.2, 64
  %608 = mul nuw nsw i64 %607, 640
  %609 = trunc i64 %607 to i32
  %broadcast.splatinsert1095 = insertelement <4 x i32> poison, i32 %609, i32 0
  %broadcast.splat1096 = shufflevector <4 x i32> %broadcast.splatinsert1095, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1087

vector.body1087:                                  ; preds = %vector.body1087, %polly.loop_header676.1.2
  %index1089 = phi i64 [ 0, %polly.loop_header676.1.2 ], [ %index.next1090, %vector.body1087 ]
  %vec.ind1093 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.1.2 ], [ %vec.ind.next1094, %vector.body1087 ]
  %610 = add nuw nsw <4 x i64> %vec.ind1093, <i64 32, i64 32, i64 32, i64 32>
  %611 = trunc <4 x i64> %610 to <4 x i32>
  %612 = mul <4 x i32> %broadcast.splat1096, %611
  %613 = add <4 x i32> %612, <i32 3, i32 3, i32 3, i32 3>
  %614 = urem <4 x i32> %613, <i32 80, i32 80, i32 80, i32 80>
  %615 = sitofp <4 x i32> %614 to <4 x double>
  %616 = fmul fast <4 x double> %615, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %617 = extractelement <4 x i64> %610, i32 0
  %618 = shl i64 %617, 3
  %619 = add nuw nsw i64 %618, %608
  %620 = getelementptr i8, i8* %call, i64 %619
  %621 = bitcast i8* %620 to <4 x double>*
  store <4 x double> %616, <4 x double>* %621, align 8, !alias.scope !87, !noalias !89
  %index.next1090 = add i64 %index1089, 4
  %vec.ind.next1094 = add <4 x i64> %vec.ind1093, <i64 4, i64 4, i64 4, i64 4>
  %622 = icmp eq i64 %index.next1090, 32
  br i1 %622, label %polly.loop_exit684.1.2, label %vector.body1087, !llvm.loop !113

polly.loop_exit684.1.2:                           ; preds = %vector.body1087
  %polly.indvar_next680.1.2 = add nuw nsw i64 %polly.indvar679.1.2, 1
  %exitcond797.1.2.not = icmp eq i64 %polly.indvar_next680.1.2, 16
  br i1 %exitcond797.1.2.not, label %polly.loop_header676.2.2, label %polly.loop_header676.1.2

polly.loop_header676.2.2:                         ; preds = %polly.loop_exit684.1.2, %polly.loop_exit684.2.2
  %polly.indvar679.2.2 = phi i64 [ %polly.indvar_next680.2.2, %polly.loop_exit684.2.2 ], [ 0, %polly.loop_exit684.1.2 ]
  %623 = add nuw nsw i64 %polly.indvar679.2.2, 64
  %624 = mul nuw nsw i64 %623, 640
  %625 = trunc i64 %623 to i32
  %broadcast.splatinsert1107 = insertelement <4 x i32> poison, i32 %625, i32 0
  %broadcast.splat1108 = shufflevector <4 x i32> %broadcast.splatinsert1107, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.body1099, %polly.loop_header676.2.2
  %index1101 = phi i64 [ 0, %polly.loop_header676.2.2 ], [ %index.next1102, %vector.body1099 ]
  %vec.ind1105 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header676.2.2 ], [ %vec.ind.next1106, %vector.body1099 ]
  %626 = add nuw nsw <4 x i64> %vec.ind1105, <i64 64, i64 64, i64 64, i64 64>
  %627 = trunc <4 x i64> %626 to <4 x i32>
  %628 = mul <4 x i32> %broadcast.splat1108, %627
  %629 = add <4 x i32> %628, <i32 3, i32 3, i32 3, i32 3>
  %630 = urem <4 x i32> %629, <i32 80, i32 80, i32 80, i32 80>
  %631 = sitofp <4 x i32> %630 to <4 x double>
  %632 = fmul fast <4 x double> %631, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %633 = extractelement <4 x i64> %626, i32 0
  %634 = shl i64 %633, 3
  %635 = add nuw nsw i64 %634, %624
  %636 = getelementptr i8, i8* %call, i64 %635
  %637 = bitcast i8* %636 to <4 x double>*
  store <4 x double> %632, <4 x double>* %637, align 8, !alias.scope !87, !noalias !89
  %index.next1102 = add i64 %index1101, 4
  %vec.ind.next1106 = add <4 x i64> %vec.ind1105, <i64 4, i64 4, i64 4, i64 4>
  %638 = icmp eq i64 %index.next1102, 16
  br i1 %638, label %polly.loop_exit684.2.2, label %vector.body1099, !llvm.loop !114

polly.loop_exit684.2.2:                           ; preds = %vector.body1099
  %polly.indvar_next680.2.2 = add nuw nsw i64 %polly.indvar679.2.2, 1
  %exitcond797.2.2.not = icmp eq i64 %polly.indvar_next680.2.2, 16
  br i1 %exitcond797.2.2.not, label %polly.loop_header703, label %polly.loop_header676.2.2
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

attributes #0 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+bmi,+bmi2,+clflushopt,+clwb,+clzero,+cmov,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+lzcnt,+mmx,+movbe,+mwaitx,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-bf16,-amx-int8,-amx-tile,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxvnni,-cldemote,-enqcmd,-fma4,-gfni,-hreset,-invpcid,-kl,-lwp,-movdir64b,-movdiri,-pconfig,-pku,-prefetchwt1,-ptwrite,-rtm,-serialize,-sgx,-shstk,-tbm,-tsxldtrk,-uintr,-vaes,-vpclmulqdq,-waitpkg,-widekl,-xop" "unsafe-fp-math"="true" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!21 = distinct !{!21, !12, !22, !23, !24, !25, !28}
!22 = !{!"llvm.loop.disable_nonforced"}
!23 = !{!"llvm.loop.id", !"k"}
!24 = !{!"llvm.loop.tile.size", i32 128}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 50}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !48}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 20}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !47}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.tile.followup_tile", !49}
!49 = distinct !{!49, !12, !50}
!50 = !{!"llvm.loop.id", !"i2"}
!51 = distinct !{!51, !12, !13}
!52 = distinct !{!52, !12, !13}
!53 = distinct !{!53, !12, !13}
!54 = distinct !{!54, !12, !13}
!55 = !{!56, !56, i64 0}
!56 = !{!"any pointer", !4, i64 0}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !60, !"polly.alias.scope.MemRef_call"}
!60 = distinct !{!60, !"polly.alias.scope.domain"}
!61 = !{!62, !63}
!62 = distinct !{!62, !60, !"polly.alias.scope.MemRef_call1"}
!63 = distinct !{!63, !60, !"polly.alias.scope.MemRef_call2"}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !66, !13}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = !{!59, !62}
!68 = !{!59, !63}
!69 = distinct !{!69, !70, !"polly.alias.scope.MemRef_call"}
!70 = distinct !{!70, !"polly.alias.scope.domain"}
!71 = !{!72, !73}
!72 = distinct !{!72, !70, !"polly.alias.scope.MemRef_call1"}
!73 = distinct !{!73, !70, !"polly.alias.scope.MemRef_call2"}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !66, !13}
!76 = !{!69, !72}
!77 = !{!69, !73}
!78 = distinct !{!78, !79, !"polly.alias.scope.MemRef_call"}
!79 = distinct !{!79, !"polly.alias.scope.domain"}
!80 = !{!81, !82}
!81 = distinct !{!81, !79, !"polly.alias.scope.MemRef_call1"}
!82 = distinct !{!82, !79, !"polly.alias.scope.MemRef_call2"}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !66, !13}
!85 = !{!78, !81}
!86 = !{!78, !82}
!87 = distinct !{!87, !88, !"polly.alias.scope.MemRef_call"}
!88 = distinct !{!88, !"polly.alias.scope.domain"}
!89 = !{!90, !91}
!90 = distinct !{!90, !88, !"polly.alias.scope.MemRef_call1"}
!91 = distinct !{!91, !88, !"polly.alias.scope.MemRef_call2"}
!92 = distinct !{!92, !13}
!93 = !{!90, !87}
!94 = distinct !{!94, !13}
!95 = !{!91, !87}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
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
