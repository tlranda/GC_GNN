; ModuleID = 'syr2k_recreations//mmp_syr2k_S_78.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_78.c"
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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv7.i, i64 %index987
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
  br i1 %min.iters.check, label %for.body3.i46.preheader1339, label %vector.ph1268

vector.ph1268:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1268
  %index1269 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1270, %vector.body1267 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i, i64 %index1269
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
  br i1 %cmp.n1272, label %for.inc6.i, label %for.body3.i46.preheader1339

for.body3.i46.preheader1339:                      ; preds = %for.body3.i46.preheader, %middle.block1265
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1265 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1339, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1339 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit588.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start278, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1288 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1288, label %for.body3.i60.preheader1338, label %vector.ph1289

vector.ph1289:                                    ; preds = %for.body3.i60.preheader
  %n.vec1291 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1287

vector.body1287:                                  ; preds = %vector.body1287, %vector.ph1289
  %index1292 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1293, %vector.body1287 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i52, i64 %index1292
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1296 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1296, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1293 = add i64 %index1292, 4
  %57 = icmp eq i64 %index.next1293, %n.vec1291
  br i1 %57, label %middle.block1285, label %vector.body1287, !llvm.loop !56

middle.block1285:                                 ; preds = %vector.body1287
  %cmp.n1295 = icmp eq i64 %indvars.iv21.i52, %n.vec1291
  br i1 %cmp.n1295, label %for.inc6.i63, label %for.body3.i60.preheader1338

for.body3.i60.preheader1338:                      ; preds = %for.body3.i60.preheader, %middle.block1285
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1291, %middle.block1285 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1338, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1338 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !57

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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit406.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1314 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1314, label %for.body3.i99.preheader1337, label %vector.ph1315

vector.ph1315:                                    ; preds = %for.body3.i99.preheader
  %n.vec1317 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1313

vector.body1313:                                  ; preds = %vector.body1313, %vector.ph1315
  %index1318 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1319, %vector.body1313 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i91, i64 %index1318
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1322, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1319 = add i64 %index1318, 4
  %68 = icmp eq i64 %index.next1319, %n.vec1317
  br i1 %68, label %middle.block1311, label %vector.body1313, !llvm.loop !58

middle.block1311:                                 ; preds = %vector.body1313
  %cmp.n1321 = icmp eq i64 %indvars.iv21.i91, %n.vec1317
  br i1 %cmp.n1321, label %for.inc6.i102, label %for.body3.i99.preheader1337

for.body3.i99.preheader1337:                      ; preds = %for.body3.i99.preheader, %middle.block1311
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1317, %middle.block1311 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1337, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1337 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !59

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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !45

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit224.1
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !60
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call792, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !62

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !63

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !60
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.start:                                      ; preds = %kernel_syr2k.exit90
  %malloccall = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall136 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1326 = phi i64 [ %indvar.next1327, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1326, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1328 = icmp ult i64 %88, 4
  br i1 %min.iters.check1328, label %polly.loop_header192.preheader, label %vector.ph1329

vector.ph1329:                                    ; preds = %polly.loop_header
  %n.vec1331 = and i64 %88, -4
  br label %vector.body1325

vector.body1325:                                  ; preds = %vector.body1325, %vector.ph1329
  %index1332 = phi i64 [ 0, %vector.ph1329 ], [ %index.next1333, %vector.body1325 ]
  %90 = shl nuw nsw i64 %index1332, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !64, !noalias !66
  %93 = fmul fast <4 x double> %wide.load1336, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !64, !noalias !66
  %index.next1333 = add i64 %index1332, 4
  %95 = icmp eq i64 %index.next1333, %n.vec1331
  br i1 %95, label %middle.block1323, label %vector.body1325, !llvm.loop !71

middle.block1323:                                 ; preds = %vector.body1325
  %cmp.n1335 = icmp eq i64 %88, %n.vec1331
  br i1 %cmp.n1335, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1323
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1331, %middle.block1323 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1323
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1327 = add i64 %indvar1326, 1
  br i1 %exitcond868.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall136, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep864.1 = getelementptr i8, i8* %malloccall136, i64 480
  %scevgep865.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.1, i64 480, i1 false)
  %scevgep864.2 = getelementptr i8, i8* %malloccall136, i64 960
  %scevgep865.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.2, i64 480, i1 false)
  %scevgep864.3 = getelementptr i8, i8* %malloccall136, i64 1440
  %scevgep865.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.3, i64 480, i1 false)
  %scevgep864.4 = getelementptr i8, i8* %malloccall136, i64 1920
  %scevgep865.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.4, i64 480, i1 false)
  %scevgep864.5 = getelementptr i8, i8* %malloccall136, i64 2400
  %scevgep865.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.5, i64 480, i1 false)
  %scevgep864.6 = getelementptr i8, i8* %malloccall136, i64 2880
  %scevgep865.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.6, i64 480, i1 false)
  %scevgep864.7 = getelementptr i8, i8* %malloccall136, i64 3360
  %scevgep865.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.7, i64 480, i1 false)
  %scevgep864.8 = getelementptr i8, i8* %malloccall136, i64 3840
  %scevgep865.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.8, i64 480, i1 false)
  %scevgep864.9 = getelementptr i8, i8* %malloccall136, i64 4320
  %scevgep865.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.9, i64 480, i1 false)
  %scevgep864.10 = getelementptr i8, i8* %malloccall136, i64 4800
  %scevgep865.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.10, i64 480, i1 false)
  %scevgep864.11 = getelementptr i8, i8* %malloccall136, i64 5280
  %scevgep865.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.11, i64 480, i1 false)
  %scevgep864.12 = getelementptr i8, i8* %malloccall136, i64 5760
  %scevgep865.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.12, i64 480, i1 false)
  %scevgep864.13 = getelementptr i8, i8* %malloccall136, i64 6240
  %scevgep865.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.13, i64 480, i1 false)
  %scevgep864.14 = getelementptr i8, i8* %malloccall136, i64 6720
  %scevgep865.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.14, i64 480, i1 false)
  %scevgep864.15 = getelementptr i8, i8* %malloccall136, i64 7200
  %scevgep865.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.15, i64 480, i1 false)
  %scevgep864.16 = getelementptr i8, i8* %malloccall136, i64 7680
  %scevgep865.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.16, i64 480, i1 false)
  %scevgep864.17 = getelementptr i8, i8* %malloccall136, i64 8160
  %scevgep865.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.17, i64 480, i1 false)
  %scevgep864.18 = getelementptr i8, i8* %malloccall136, i64 8640
  %scevgep865.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.18, i64 480, i1 false)
  %scevgep864.19 = getelementptr i8, i8* %malloccall136, i64 9120
  %scevgep865.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.19, i64 480, i1 false)
  %scevgep864.20 = getelementptr i8, i8* %malloccall136, i64 9600
  %scevgep865.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.20, i64 480, i1 false)
  %scevgep864.21 = getelementptr i8, i8* %malloccall136, i64 10080
  %scevgep865.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.21, i64 480, i1 false)
  %scevgep864.22 = getelementptr i8, i8* %malloccall136, i64 10560
  %scevgep865.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.22, i64 480, i1 false)
  %scevgep864.23 = getelementptr i8, i8* %malloccall136, i64 11040
  %scevgep865.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.23, i64 480, i1 false)
  %scevgep864.24 = getelementptr i8, i8* %malloccall136, i64 11520
  %scevgep865.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.24, i64 480, i1 false)
  %scevgep864.25 = getelementptr i8, i8* %malloccall136, i64 12000
  %scevgep865.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.25, i64 480, i1 false)
  %scevgep864.26 = getelementptr i8, i8* %malloccall136, i64 12480
  %scevgep865.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.26, i64 480, i1 false)
  %scevgep864.27 = getelementptr i8, i8* %malloccall136, i64 12960
  %scevgep865.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.27, i64 480, i1 false)
  %scevgep864.28 = getelementptr i8, i8* %malloccall136, i64 13440
  %scevgep865.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.28, i64 480, i1 false)
  %scevgep864.29 = getelementptr i8, i8* %malloccall136, i64 13920
  %scevgep865.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.29, i64 480, i1 false)
  %scevgep864.30 = getelementptr i8, i8* %malloccall136, i64 14400
  %scevgep865.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.30, i64 480, i1 false)
  %scevgep864.31 = getelementptr i8, i8* %malloccall136, i64 14880
  %scevgep865.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.31, i64 480, i1 false)
  %scevgep864.32 = getelementptr i8, i8* %malloccall136, i64 15360
  %scevgep865.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.32, i64 480, i1 false)
  %scevgep864.33 = getelementptr i8, i8* %malloccall136, i64 15840
  %scevgep865.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.33, i64 480, i1 false)
  %scevgep864.34 = getelementptr i8, i8* %malloccall136, i64 16320
  %scevgep865.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.34, i64 480, i1 false)
  %scevgep864.35 = getelementptr i8, i8* %malloccall136, i64 16800
  %scevgep865.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.35, i64 480, i1 false)
  %scevgep864.36 = getelementptr i8, i8* %malloccall136, i64 17280
  %scevgep865.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.36, i64 480, i1 false)
  %scevgep864.37 = getelementptr i8, i8* %malloccall136, i64 17760
  %scevgep865.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.37, i64 480, i1 false)
  %scevgep864.38 = getelementptr i8, i8* %malloccall136, i64 18240
  %scevgep865.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.38, i64 480, i1 false)
  %scevgep864.39 = getelementptr i8, i8* %malloccall136, i64 18720
  %scevgep865.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.39, i64 480, i1 false)
  %scevgep864.40 = getelementptr i8, i8* %malloccall136, i64 19200
  %scevgep865.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.40, i64 480, i1 false)
  %scevgep864.41 = getelementptr i8, i8* %malloccall136, i64 19680
  %scevgep865.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.41, i64 480, i1 false)
  %scevgep864.42 = getelementptr i8, i8* %malloccall136, i64 20160
  %scevgep865.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.42, i64 480, i1 false)
  %scevgep864.43 = getelementptr i8, i8* %malloccall136, i64 20640
  %scevgep865.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.43, i64 480, i1 false)
  %scevgep864.44 = getelementptr i8, i8* %malloccall136, i64 21120
  %scevgep865.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.44, i64 480, i1 false)
  %scevgep864.45 = getelementptr i8, i8* %malloccall136, i64 21600
  %scevgep865.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.45, i64 480, i1 false)
  %scevgep864.46 = getelementptr i8, i8* %malloccall136, i64 22080
  %scevgep865.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.46, i64 480, i1 false)
  %scevgep864.47 = getelementptr i8, i8* %malloccall136, i64 22560
  %scevgep865.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.47, i64 480, i1 false)
  %scevgep864.48 = getelementptr i8, i8* %malloccall136, i64 23040
  %scevgep865.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.48, i64 480, i1 false)
  %scevgep864.49 = getelementptr i8, i8* %malloccall136, i64 23520
  %scevgep865.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.49, i64 480, i1 false)
  %scevgep864.50 = getelementptr i8, i8* %malloccall136, i64 24000
  %scevgep865.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.50, i64 480, i1 false)
  %scevgep864.51 = getelementptr i8, i8* %malloccall136, i64 24480
  %scevgep865.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.51, i64 480, i1 false)
  %scevgep864.52 = getelementptr i8, i8* %malloccall136, i64 24960
  %scevgep865.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.52, i64 480, i1 false)
  %scevgep864.53 = getelementptr i8, i8* %malloccall136, i64 25440
  %scevgep865.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.53, i64 480, i1 false)
  %scevgep864.54 = getelementptr i8, i8* %malloccall136, i64 25920
  %scevgep865.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.54, i64 480, i1 false)
  %scevgep864.55 = getelementptr i8, i8* %malloccall136, i64 26400
  %scevgep865.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.55, i64 480, i1 false)
  %scevgep864.56 = getelementptr i8, i8* %malloccall136, i64 26880
  %scevgep865.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.56, i64 480, i1 false)
  %scevgep864.57 = getelementptr i8, i8* %malloccall136, i64 27360
  %scevgep865.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.57, i64 480, i1 false)
  %scevgep864.58 = getelementptr i8, i8* %malloccall136, i64 27840
  %scevgep865.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.58, i64 480, i1 false)
  %scevgep864.59 = getelementptr i8, i8* %malloccall136, i64 28320
  %scevgep865.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.59, i64 480, i1 false)
  %scevgep864.60 = getelementptr i8, i8* %malloccall136, i64 28800
  %scevgep865.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.60, i64 480, i1 false)
  %scevgep864.61 = getelementptr i8, i8* %malloccall136, i64 29280
  %scevgep865.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.61, i64 480, i1 false)
  %scevgep864.62 = getelementptr i8, i8* %malloccall136, i64 29760
  %scevgep865.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.62, i64 480, i1 false)
  %scevgep864.63 = getelementptr i8, i8* %malloccall136, i64 30240
  %scevgep865.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.63, i64 480, i1 false)
  %scevgep864.64 = getelementptr i8, i8* %malloccall136, i64 30720
  %scevgep865.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.64, i64 480, i1 false)
  %scevgep864.65 = getelementptr i8, i8* %malloccall136, i64 31200
  %scevgep865.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.65, i64 480, i1 false)
  %scevgep864.66 = getelementptr i8, i8* %malloccall136, i64 31680
  %scevgep865.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.66, i64 480, i1 false)
  %scevgep864.67 = getelementptr i8, i8* %malloccall136, i64 32160
  %scevgep865.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.67, i64 480, i1 false)
  %scevgep864.68 = getelementptr i8, i8* %malloccall136, i64 32640
  %scevgep865.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.68, i64 480, i1 false)
  %scevgep864.69 = getelementptr i8, i8* %malloccall136, i64 33120
  %scevgep865.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.69, i64 480, i1 false)
  %scevgep864.70 = getelementptr i8, i8* %malloccall136, i64 33600
  %scevgep865.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.70, i64 480, i1 false)
  %scevgep864.71 = getelementptr i8, i8* %malloccall136, i64 34080
  %scevgep865.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.71, i64 480, i1 false)
  %scevgep864.72 = getelementptr i8, i8* %malloccall136, i64 34560
  %scevgep865.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.72, i64 480, i1 false)
  %scevgep864.73 = getelementptr i8, i8* %malloccall136, i64 35040
  %scevgep865.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.73, i64 480, i1 false)
  %scevgep864.74 = getelementptr i8, i8* %malloccall136, i64 35520
  %scevgep865.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.74, i64 480, i1 false)
  %scevgep864.75 = getelementptr i8, i8* %malloccall136, i64 36000
  %scevgep865.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.75, i64 480, i1 false)
  %scevgep864.76 = getelementptr i8, i8* %malloccall136, i64 36480
  %scevgep865.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.76, i64 480, i1 false)
  %scevgep864.77 = getelementptr i8, i8* %malloccall136, i64 36960
  %scevgep865.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.77, i64 480, i1 false)
  %scevgep864.78 = getelementptr i8, i8* %malloccall136, i64 37440
  %scevgep865.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.78, i64 480, i1 false)
  %scevgep864.79 = getelementptr i8, i8* %malloccall136, i64 37920
  %scevgep865.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep864.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep865.79, i64 480, i1 false)
  br label %polly.loop_header222

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond867.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond867.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !72

polly.loop_header222:                             ; preds = %polly.loop_exit246, %polly.loop_header200.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit246 ], [ 1, %polly.loop_header200.preheader ]
  %polly.indvar225 = phi i64 [ %polly.indvar_next226, %polly.loop_exit246 ], [ 0, %polly.loop_header200.preheader ]
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_header228
  %97 = mul nuw nsw i64 %polly.indvar225, 640
  %scevgep272 = getelementptr i8, i8* %call, i64 %97
  %polly.access.mul.Packed_MemRef_call2260 = mul nuw nsw i64 %polly.indvar225, 60
  %polly.access.mul.Packed_MemRef_call1268 = mul nuw nsw i64 %polly.indvar225, 50
  br label %polly.loop_header244

polly.loop_exit246:                               ; preds = %polly.loop_exit252
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond862.not = icmp eq i64 %polly.indvar_next226, 80
  br i1 %exitcond862.not, label %polly.loop_header222.1, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228, %polly.loop_header222
  %polly.indvar231 = phi i64 [ 0, %polly.loop_header222 ], [ %polly.indvar_next232, %polly.loop_header228 ]
  %98 = mul nuw nsw i64 %polly.indvar231, 400
  %scevgep858 = getelementptr i8, i8* %malloccall, i64 %98
  %99 = mul nuw nsw i64 %polly.indvar231, 480
  %scevgep859 = getelementptr i8, i8* %call1, i64 %99
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(400) %scevgep858, i8* noundef nonnull align 8 dereferenceable(400) %scevgep859, i64 400, i1 false)
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next232, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header244:                             ; preds = %polly.loop_exit252, %polly.loop_exit230
  %polly.indvar247 = phi i64 [ 0, %polly.loop_exit230 ], [ %polly.indvar_next248, %polly.loop_exit252 ]
  %polly.access.add.Packed_MemRef_call2261 = add nuw nsw i64 %polly.indvar247, %polly.access.mul.Packed_MemRef_call2260
  %polly.access.Packed_MemRef_call2262 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261
  %_p_scalar_263 = load double, double* %polly.access.Packed_MemRef_call2262, align 8
  %polly.access.add.Packed_MemRef_call1269 = add nuw nsw i64 %polly.indvar247, %polly.access.mul.Packed_MemRef_call1268
  %polly.access.Packed_MemRef_call1270 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269
  %_p_scalar_271 = load double, double* %polly.access.Packed_MemRef_call1270, align 8
  br label %polly.loop_header250

polly.loop_exit252:                               ; preds = %polly.loop_header250
  %polly.indvar_next248 = add nuw nsw i64 %polly.indvar247, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next248, 50
  br i1 %exitcond861.not, label %polly.loop_exit246, label %polly.loop_header244

polly.loop_header250:                             ; preds = %polly.loop_header250, %polly.loop_header244
  %polly.indvar253 = phi i64 [ 0, %polly.loop_header244 ], [ %polly.indvar_next254, %polly.loop_header250 ]
  %polly.access.mul.Packed_MemRef_call1256 = mul nuw nsw i64 %polly.indvar253, 50
  %polly.access.add.Packed_MemRef_call1257 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1256, %polly.indvar247
  %polly.access.Packed_MemRef_call1258 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257
  %_p_scalar_259 = load double, double* %polly.access.Packed_MemRef_call1258, align 8
  %p_mul27.i112 = fmul fast double %_p_scalar_263, %_p_scalar_259
  %polly.access.mul.Packed_MemRef_call2264 = mul nuw nsw i64 %polly.indvar253, 60
  %polly.access.add.Packed_MemRef_call2265 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2264, %polly.indvar247
  %polly.access.Packed_MemRef_call2266 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2265
  %_p_scalar_267 = load double, double* %polly.access.Packed_MemRef_call2266, align 8
  %p_mul37.i114 = fmul fast double %_p_scalar_271, %_p_scalar_267
  %100 = shl nuw nsw i64 %polly.indvar253, 3
  %scevgep273 = getelementptr i8, i8* %scevgep272, i64 %100
  %scevgep273274 = bitcast i8* %scevgep273 to double*
  %_p_scalar_275 = load double, double* %scevgep273274, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116 = fadd fast double %p_mul37.i114, %p_mul27.i112
  %p_reass.mul.i117 = fmul fast double %p_reass.add.i116, 1.500000e+00
  %p_add42.i118 = fadd fast double %p_reass.mul.i117, %_p_scalar_275
  store double %p_add42.i118, double* %scevgep273274, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next254 = add nuw nsw i64 %polly.indvar253, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next254, %indvars.iv
  br i1 %exitcond860.not, label %polly.loop_exit252, label %polly.loop_header250

polly.start278:                                   ; preds = %kernel_syr2k.exit
  %malloccall280 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall282 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header366

polly.loop_header366:                             ; preds = %polly.loop_exit374, %polly.start278
  %indvar1300 = phi i64 [ %indvar.next1301, %polly.loop_exit374 ], [ 0, %polly.start278 ]
  %polly.indvar369 = phi i64 [ %polly.indvar_next370, %polly.loop_exit374 ], [ 1, %polly.start278 ]
  %101 = add i64 %indvar1300, 1
  %102 = mul nuw nsw i64 %polly.indvar369, 640
  %scevgep378 = getelementptr i8, i8* %call, i64 %102
  %min.iters.check1302 = icmp ult i64 %101, 4
  br i1 %min.iters.check1302, label %polly.loop_header372.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %polly.loop_header366
  %n.vec1305 = and i64 %101, -4
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1299 ]
  %103 = shl nuw nsw i64 %index1306, 3
  %104 = getelementptr i8, i8* %scevgep378, i64 %103
  %105 = bitcast i8* %104 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %105, align 8, !alias.scope !74, !noalias !76
  %106 = fmul fast <4 x double> %wide.load1310, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %107 = bitcast i8* %104 to <4 x double>*
  store <4 x double> %106, <4 x double>* %107, align 8, !alias.scope !74, !noalias !76
  %index.next1307 = add i64 %index1306, 4
  %108 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %108, label %middle.block1297, label %vector.body1299, !llvm.loop !81

middle.block1297:                                 ; preds = %vector.body1299
  %cmp.n1309 = icmp eq i64 %101, %n.vec1305
  br i1 %cmp.n1309, label %polly.loop_exit374, label %polly.loop_header372.preheader

polly.loop_header372.preheader:                   ; preds = %polly.loop_header366, %middle.block1297
  %polly.indvar375.ph = phi i64 [ 0, %polly.loop_header366 ], [ %n.vec1305, %middle.block1297 ]
  br label %polly.loop_header372

polly.loop_exit374:                               ; preds = %polly.loop_header372, %middle.block1297
  %polly.indvar_next370 = add nuw nsw i64 %polly.indvar369, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next370, 80
  %indvar.next1301 = add i64 %indvar1300, 1
  br i1 %exitcond883.not, label %polly.loop_header382.preheader, label %polly.loop_header366

polly.loop_header382.preheader:                   ; preds = %polly.loop_exit374
  %Packed_MemRef_call1281 = bitcast i8* %malloccall280 to double*
  %Packed_MemRef_call2283 = bitcast i8* %malloccall282 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall282, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep879.1 = getelementptr i8, i8* %malloccall282, i64 480
  %scevgep880.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.1, i64 480, i1 false)
  %scevgep879.2 = getelementptr i8, i8* %malloccall282, i64 960
  %scevgep880.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.2, i64 480, i1 false)
  %scevgep879.3 = getelementptr i8, i8* %malloccall282, i64 1440
  %scevgep880.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.3, i64 480, i1 false)
  %scevgep879.4 = getelementptr i8, i8* %malloccall282, i64 1920
  %scevgep880.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.4, i64 480, i1 false)
  %scevgep879.5 = getelementptr i8, i8* %malloccall282, i64 2400
  %scevgep880.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.5, i64 480, i1 false)
  %scevgep879.6 = getelementptr i8, i8* %malloccall282, i64 2880
  %scevgep880.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.6, i64 480, i1 false)
  %scevgep879.7 = getelementptr i8, i8* %malloccall282, i64 3360
  %scevgep880.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.7, i64 480, i1 false)
  %scevgep879.8 = getelementptr i8, i8* %malloccall282, i64 3840
  %scevgep880.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.8, i64 480, i1 false)
  %scevgep879.9 = getelementptr i8, i8* %malloccall282, i64 4320
  %scevgep880.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.9, i64 480, i1 false)
  %scevgep879.10 = getelementptr i8, i8* %malloccall282, i64 4800
  %scevgep880.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.10, i64 480, i1 false)
  %scevgep879.11 = getelementptr i8, i8* %malloccall282, i64 5280
  %scevgep880.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.11, i64 480, i1 false)
  %scevgep879.12 = getelementptr i8, i8* %malloccall282, i64 5760
  %scevgep880.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.12, i64 480, i1 false)
  %scevgep879.13 = getelementptr i8, i8* %malloccall282, i64 6240
  %scevgep880.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.13, i64 480, i1 false)
  %scevgep879.14 = getelementptr i8, i8* %malloccall282, i64 6720
  %scevgep880.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.14, i64 480, i1 false)
  %scevgep879.15 = getelementptr i8, i8* %malloccall282, i64 7200
  %scevgep880.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.15, i64 480, i1 false)
  %scevgep879.16 = getelementptr i8, i8* %malloccall282, i64 7680
  %scevgep880.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.16, i64 480, i1 false)
  %scevgep879.17 = getelementptr i8, i8* %malloccall282, i64 8160
  %scevgep880.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.17, i64 480, i1 false)
  %scevgep879.18 = getelementptr i8, i8* %malloccall282, i64 8640
  %scevgep880.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.18, i64 480, i1 false)
  %scevgep879.19 = getelementptr i8, i8* %malloccall282, i64 9120
  %scevgep880.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.19, i64 480, i1 false)
  %scevgep879.20 = getelementptr i8, i8* %malloccall282, i64 9600
  %scevgep880.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.20, i64 480, i1 false)
  %scevgep879.21 = getelementptr i8, i8* %malloccall282, i64 10080
  %scevgep880.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.21, i64 480, i1 false)
  %scevgep879.22 = getelementptr i8, i8* %malloccall282, i64 10560
  %scevgep880.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.22, i64 480, i1 false)
  %scevgep879.23 = getelementptr i8, i8* %malloccall282, i64 11040
  %scevgep880.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.23, i64 480, i1 false)
  %scevgep879.24 = getelementptr i8, i8* %malloccall282, i64 11520
  %scevgep880.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.24, i64 480, i1 false)
  %scevgep879.25 = getelementptr i8, i8* %malloccall282, i64 12000
  %scevgep880.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.25, i64 480, i1 false)
  %scevgep879.26 = getelementptr i8, i8* %malloccall282, i64 12480
  %scevgep880.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.26, i64 480, i1 false)
  %scevgep879.27 = getelementptr i8, i8* %malloccall282, i64 12960
  %scevgep880.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.27, i64 480, i1 false)
  %scevgep879.28 = getelementptr i8, i8* %malloccall282, i64 13440
  %scevgep880.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.28, i64 480, i1 false)
  %scevgep879.29 = getelementptr i8, i8* %malloccall282, i64 13920
  %scevgep880.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.29, i64 480, i1 false)
  %scevgep879.30 = getelementptr i8, i8* %malloccall282, i64 14400
  %scevgep880.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.30, i64 480, i1 false)
  %scevgep879.31 = getelementptr i8, i8* %malloccall282, i64 14880
  %scevgep880.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.31, i64 480, i1 false)
  %scevgep879.32 = getelementptr i8, i8* %malloccall282, i64 15360
  %scevgep880.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.32, i64 480, i1 false)
  %scevgep879.33 = getelementptr i8, i8* %malloccall282, i64 15840
  %scevgep880.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.33, i64 480, i1 false)
  %scevgep879.34 = getelementptr i8, i8* %malloccall282, i64 16320
  %scevgep880.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.34, i64 480, i1 false)
  %scevgep879.35 = getelementptr i8, i8* %malloccall282, i64 16800
  %scevgep880.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.35, i64 480, i1 false)
  %scevgep879.36 = getelementptr i8, i8* %malloccall282, i64 17280
  %scevgep880.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.36, i64 480, i1 false)
  %scevgep879.37 = getelementptr i8, i8* %malloccall282, i64 17760
  %scevgep880.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.37, i64 480, i1 false)
  %scevgep879.38 = getelementptr i8, i8* %malloccall282, i64 18240
  %scevgep880.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.38, i64 480, i1 false)
  %scevgep879.39 = getelementptr i8, i8* %malloccall282, i64 18720
  %scevgep880.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.39, i64 480, i1 false)
  %scevgep879.40 = getelementptr i8, i8* %malloccall282, i64 19200
  %scevgep880.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.40, i64 480, i1 false)
  %scevgep879.41 = getelementptr i8, i8* %malloccall282, i64 19680
  %scevgep880.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.41, i64 480, i1 false)
  %scevgep879.42 = getelementptr i8, i8* %malloccall282, i64 20160
  %scevgep880.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.42, i64 480, i1 false)
  %scevgep879.43 = getelementptr i8, i8* %malloccall282, i64 20640
  %scevgep880.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.43, i64 480, i1 false)
  %scevgep879.44 = getelementptr i8, i8* %malloccall282, i64 21120
  %scevgep880.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.44, i64 480, i1 false)
  %scevgep879.45 = getelementptr i8, i8* %malloccall282, i64 21600
  %scevgep880.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.45, i64 480, i1 false)
  %scevgep879.46 = getelementptr i8, i8* %malloccall282, i64 22080
  %scevgep880.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.46, i64 480, i1 false)
  %scevgep879.47 = getelementptr i8, i8* %malloccall282, i64 22560
  %scevgep880.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.47, i64 480, i1 false)
  %scevgep879.48 = getelementptr i8, i8* %malloccall282, i64 23040
  %scevgep880.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.48, i64 480, i1 false)
  %scevgep879.49 = getelementptr i8, i8* %malloccall282, i64 23520
  %scevgep880.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.49, i64 480, i1 false)
  %scevgep879.50 = getelementptr i8, i8* %malloccall282, i64 24000
  %scevgep880.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.50, i64 480, i1 false)
  %scevgep879.51 = getelementptr i8, i8* %malloccall282, i64 24480
  %scevgep880.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.51, i64 480, i1 false)
  %scevgep879.52 = getelementptr i8, i8* %malloccall282, i64 24960
  %scevgep880.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.52, i64 480, i1 false)
  %scevgep879.53 = getelementptr i8, i8* %malloccall282, i64 25440
  %scevgep880.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.53, i64 480, i1 false)
  %scevgep879.54 = getelementptr i8, i8* %malloccall282, i64 25920
  %scevgep880.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.54, i64 480, i1 false)
  %scevgep879.55 = getelementptr i8, i8* %malloccall282, i64 26400
  %scevgep880.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.55, i64 480, i1 false)
  %scevgep879.56 = getelementptr i8, i8* %malloccall282, i64 26880
  %scevgep880.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.56, i64 480, i1 false)
  %scevgep879.57 = getelementptr i8, i8* %malloccall282, i64 27360
  %scevgep880.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.57, i64 480, i1 false)
  %scevgep879.58 = getelementptr i8, i8* %malloccall282, i64 27840
  %scevgep880.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.58, i64 480, i1 false)
  %scevgep879.59 = getelementptr i8, i8* %malloccall282, i64 28320
  %scevgep880.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.59, i64 480, i1 false)
  %scevgep879.60 = getelementptr i8, i8* %malloccall282, i64 28800
  %scevgep880.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.60, i64 480, i1 false)
  %scevgep879.61 = getelementptr i8, i8* %malloccall282, i64 29280
  %scevgep880.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.61, i64 480, i1 false)
  %scevgep879.62 = getelementptr i8, i8* %malloccall282, i64 29760
  %scevgep880.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.62, i64 480, i1 false)
  %scevgep879.63 = getelementptr i8, i8* %malloccall282, i64 30240
  %scevgep880.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.63, i64 480, i1 false)
  %scevgep879.64 = getelementptr i8, i8* %malloccall282, i64 30720
  %scevgep880.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.64, i64 480, i1 false)
  %scevgep879.65 = getelementptr i8, i8* %malloccall282, i64 31200
  %scevgep880.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.65, i64 480, i1 false)
  %scevgep879.66 = getelementptr i8, i8* %malloccall282, i64 31680
  %scevgep880.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.66, i64 480, i1 false)
  %scevgep879.67 = getelementptr i8, i8* %malloccall282, i64 32160
  %scevgep880.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.67, i64 480, i1 false)
  %scevgep879.68 = getelementptr i8, i8* %malloccall282, i64 32640
  %scevgep880.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.68, i64 480, i1 false)
  %scevgep879.69 = getelementptr i8, i8* %malloccall282, i64 33120
  %scevgep880.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.69, i64 480, i1 false)
  %scevgep879.70 = getelementptr i8, i8* %malloccall282, i64 33600
  %scevgep880.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.70, i64 480, i1 false)
  %scevgep879.71 = getelementptr i8, i8* %malloccall282, i64 34080
  %scevgep880.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.71, i64 480, i1 false)
  %scevgep879.72 = getelementptr i8, i8* %malloccall282, i64 34560
  %scevgep880.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.72, i64 480, i1 false)
  %scevgep879.73 = getelementptr i8, i8* %malloccall282, i64 35040
  %scevgep880.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.73, i64 480, i1 false)
  %scevgep879.74 = getelementptr i8, i8* %malloccall282, i64 35520
  %scevgep880.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.74, i64 480, i1 false)
  %scevgep879.75 = getelementptr i8, i8* %malloccall282, i64 36000
  %scevgep880.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.75, i64 480, i1 false)
  %scevgep879.76 = getelementptr i8, i8* %malloccall282, i64 36480
  %scevgep880.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.76, i64 480, i1 false)
  %scevgep879.77 = getelementptr i8, i8* %malloccall282, i64 36960
  %scevgep880.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.77, i64 480, i1 false)
  %scevgep879.78 = getelementptr i8, i8* %malloccall282, i64 37440
  %scevgep880.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.78, i64 480, i1 false)
  %scevgep879.79 = getelementptr i8, i8* %malloccall282, i64 37920
  %scevgep880.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep879.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep880.79, i64 480, i1 false)
  br label %polly.loop_header404

polly.loop_header372:                             ; preds = %polly.loop_header372.preheader, %polly.loop_header372
  %polly.indvar375 = phi i64 [ %polly.indvar_next376, %polly.loop_header372 ], [ %polly.indvar375.ph, %polly.loop_header372.preheader ]
  %109 = shl nuw nsw i64 %polly.indvar375, 3
  %scevgep379 = getelementptr i8, i8* %scevgep378, i64 %109
  %scevgep379380 = bitcast i8* %scevgep379 to double*
  %_p_scalar_381 = load double, double* %scevgep379380, align 8, !alias.scope !74, !noalias !76
  %p_mul.i57 = fmul fast double %_p_scalar_381, 1.200000e+00
  store double %p_mul.i57, double* %scevgep379380, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next376 = add nuw nsw i64 %polly.indvar375, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next376, %polly.indvar369
  br i1 %exitcond882.not, label %polly.loop_exit374, label %polly.loop_header372, !llvm.loop !82

polly.loop_header404:                             ; preds = %polly.loop_exit428, %polly.loop_header382.preheader
  %indvars.iv872 = phi i64 [ %indvars.iv.next873, %polly.loop_exit428 ], [ 1, %polly.loop_header382.preheader ]
  %polly.indvar407 = phi i64 [ %polly.indvar_next408, %polly.loop_exit428 ], [ 0, %polly.loop_header382.preheader ]
  br label %polly.loop_header410

polly.loop_exit412:                               ; preds = %polly.loop_header410
  %110 = mul nuw nsw i64 %polly.indvar407, 640
  %scevgep454 = getelementptr i8, i8* %call, i64 %110
  %polly.access.mul.Packed_MemRef_call2283442 = mul nuw nsw i64 %polly.indvar407, 60
  %polly.access.mul.Packed_MemRef_call1281450 = mul nuw nsw i64 %polly.indvar407, 50
  br label %polly.loop_header426

polly.loop_exit428:                               ; preds = %polly.loop_exit434
  %polly.indvar_next408 = add nuw nsw i64 %polly.indvar407, 1
  %indvars.iv.next873 = add nuw nsw i64 %indvars.iv872, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next408, 80
  br i1 %exitcond877.not, label %polly.loop_header404.1, label %polly.loop_header404

polly.loop_header410:                             ; preds = %polly.loop_header410, %polly.loop_header404
  %polly.indvar413 = phi i64 [ 0, %polly.loop_header404 ], [ %polly.indvar_next414, %polly.loop_header410 ]
  %111 = mul nuw nsw i64 %polly.indvar413, 400
  %scevgep870 = getelementptr i8, i8* %malloccall280, i64 %111
  %112 = mul nuw nsw i64 %polly.indvar413, 480
  %scevgep871 = getelementptr i8, i8* %call1, i64 %112
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(400) %scevgep870, i8* noundef nonnull align 8 dereferenceable(400) %scevgep871, i64 400, i1 false)
  %polly.indvar_next414 = add nuw nsw i64 %polly.indvar413, 1
  %exitcond874.not = icmp eq i64 %polly.indvar_next414, %indvars.iv872
  br i1 %exitcond874.not, label %polly.loop_exit412, label %polly.loop_header410

polly.loop_header426:                             ; preds = %polly.loop_exit434, %polly.loop_exit412
  %polly.indvar429 = phi i64 [ 0, %polly.loop_exit412 ], [ %polly.indvar_next430, %polly.loop_exit434 ]
  %polly.access.add.Packed_MemRef_call2283443 = add nuw nsw i64 %polly.indvar429, %polly.access.mul.Packed_MemRef_call2283442
  %polly.access.Packed_MemRef_call2283444 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.add.Packed_MemRef_call2283443
  %_p_scalar_445 = load double, double* %polly.access.Packed_MemRef_call2283444, align 8
  %polly.access.add.Packed_MemRef_call1281451 = add nuw nsw i64 %polly.indvar429, %polly.access.mul.Packed_MemRef_call1281450
  %polly.access.Packed_MemRef_call1281452 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.add.Packed_MemRef_call1281451
  %_p_scalar_453 = load double, double* %polly.access.Packed_MemRef_call1281452, align 8
  br label %polly.loop_header432

polly.loop_exit434:                               ; preds = %polly.loop_header432
  %polly.indvar_next430 = add nuw nsw i64 %polly.indvar429, 1
  %exitcond876.not = icmp eq i64 %polly.indvar_next430, 50
  br i1 %exitcond876.not, label %polly.loop_exit428, label %polly.loop_header426

polly.loop_header432:                             ; preds = %polly.loop_header432, %polly.loop_header426
  %polly.indvar435 = phi i64 [ 0, %polly.loop_header426 ], [ %polly.indvar_next436, %polly.loop_header432 ]
  %polly.access.mul.Packed_MemRef_call1281438 = mul nuw nsw i64 %polly.indvar435, 50
  %polly.access.add.Packed_MemRef_call1281439 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1281438, %polly.indvar429
  %polly.access.Packed_MemRef_call1281440 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.add.Packed_MemRef_call1281439
  %_p_scalar_441 = load double, double* %polly.access.Packed_MemRef_call1281440, align 8
  %p_mul27.i73 = fmul fast double %_p_scalar_445, %_p_scalar_441
  %polly.access.mul.Packed_MemRef_call2283446 = mul nuw nsw i64 %polly.indvar435, 60
  %polly.access.add.Packed_MemRef_call2283447 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283446, %polly.indvar429
  %polly.access.Packed_MemRef_call2283448 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.add.Packed_MemRef_call2283447
  %_p_scalar_449 = load double, double* %polly.access.Packed_MemRef_call2283448, align 8
  %p_mul37.i75 = fmul fast double %_p_scalar_453, %_p_scalar_449
  %113 = shl nuw nsw i64 %polly.indvar435, 3
  %scevgep455 = getelementptr i8, i8* %scevgep454, i64 %113
  %scevgep455456 = bitcast i8* %scevgep455 to double*
  %_p_scalar_457 = load double, double* %scevgep455456, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77 = fadd fast double %p_mul37.i75, %p_mul27.i73
  %p_reass.mul.i78 = fmul fast double %p_reass.add.i77, 1.500000e+00
  %p_add42.i79 = fadd fast double %p_reass.mul.i78, %_p_scalar_457
  store double %p_add42.i79, double* %scevgep455456, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next436 = add nuw nsw i64 %polly.indvar435, 1
  %exitcond875.not = icmp eq i64 %polly.indvar_next436, %indvars.iv872
  br i1 %exitcond875.not, label %polly.loop_exit434, label %polly.loop_header432

polly.start460:                                   ; preds = %init_array.exit
  %malloccall462 = tail call dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %malloccall464 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header548

polly.loop_header548:                             ; preds = %polly.loop_exit556, %polly.start460
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit556 ], [ 0, %polly.start460 ]
  %polly.indvar551 = phi i64 [ %polly.indvar_next552, %polly.loop_exit556 ], [ 1, %polly.start460 ]
  %114 = add i64 %indvar, 1
  %115 = mul nuw nsw i64 %polly.indvar551, 640
  %scevgep560 = getelementptr i8, i8* %call, i64 %115
  %min.iters.check1276 = icmp ult i64 %114, 4
  br i1 %min.iters.check1276, label %polly.loop_header554.preheader, label %vector.ph1277

vector.ph1277:                                    ; preds = %polly.loop_header548
  %n.vec1279 = and i64 %114, -4
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %vector.ph1277
  %index1280 = phi i64 [ 0, %vector.ph1277 ], [ %index.next1281, %vector.body1275 ]
  %116 = shl nuw nsw i64 %index1280, 3
  %117 = getelementptr i8, i8* %scevgep560, i64 %116
  %118 = bitcast i8* %117 to <4 x double>*
  %wide.load1284 = load <4 x double>, <4 x double>* %118, align 8, !alias.scope !83, !noalias !85
  %119 = fmul fast <4 x double> %wide.load1284, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %120 = bitcast i8* %117 to <4 x double>*
  store <4 x double> %119, <4 x double>* %120, align 8, !alias.scope !83, !noalias !85
  %index.next1281 = add i64 %index1280, 4
  %121 = icmp eq i64 %index.next1281, %n.vec1279
  br i1 %121, label %middle.block1273, label %vector.body1275, !llvm.loop !90

middle.block1273:                                 ; preds = %vector.body1275
  %cmp.n1283 = icmp eq i64 %114, %n.vec1279
  br i1 %cmp.n1283, label %polly.loop_exit556, label %polly.loop_header554.preheader

polly.loop_header554.preheader:                   ; preds = %polly.loop_header548, %middle.block1273
  %polly.indvar557.ph = phi i64 [ 0, %polly.loop_header548 ], [ %n.vec1279, %middle.block1273 ]
  br label %polly.loop_header554

polly.loop_exit556:                               ; preds = %polly.loop_header554, %middle.block1273
  %polly.indvar_next552 = add nuw nsw i64 %polly.indvar551, 1
  %exitcond898.not = icmp eq i64 %polly.indvar_next552, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond898.not, label %polly.loop_header564.preheader, label %polly.loop_header548

polly.loop_header564.preheader:                   ; preds = %polly.loop_exit556
  %Packed_MemRef_call1463 = bitcast i8* %malloccall462 to double*
  %Packed_MemRef_call2465 = bitcast i8* %malloccall464 to double*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %malloccall464, i8* noundef nonnull align 8 dereferenceable(480) %call2, i64 480, i1 false)
  %scevgep894.1 = getelementptr i8, i8* %malloccall464, i64 480
  %scevgep895.1 = getelementptr i8, i8* %call2, i64 480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.1, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.1, i64 480, i1 false)
  %scevgep894.2 = getelementptr i8, i8* %malloccall464, i64 960
  %scevgep895.2 = getelementptr i8, i8* %call2, i64 960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.2, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.2, i64 480, i1 false)
  %scevgep894.3 = getelementptr i8, i8* %malloccall464, i64 1440
  %scevgep895.3 = getelementptr i8, i8* %call2, i64 1440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.3, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.3, i64 480, i1 false)
  %scevgep894.4 = getelementptr i8, i8* %malloccall464, i64 1920
  %scevgep895.4 = getelementptr i8, i8* %call2, i64 1920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.4, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.4, i64 480, i1 false)
  %scevgep894.5 = getelementptr i8, i8* %malloccall464, i64 2400
  %scevgep895.5 = getelementptr i8, i8* %call2, i64 2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.5, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.5, i64 480, i1 false)
  %scevgep894.6 = getelementptr i8, i8* %malloccall464, i64 2880
  %scevgep895.6 = getelementptr i8, i8* %call2, i64 2880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.6, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.6, i64 480, i1 false)
  %scevgep894.7 = getelementptr i8, i8* %malloccall464, i64 3360
  %scevgep895.7 = getelementptr i8, i8* %call2, i64 3360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.7, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.7, i64 480, i1 false)
  %scevgep894.8 = getelementptr i8, i8* %malloccall464, i64 3840
  %scevgep895.8 = getelementptr i8, i8* %call2, i64 3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.8, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.8, i64 480, i1 false)
  %scevgep894.9 = getelementptr i8, i8* %malloccall464, i64 4320
  %scevgep895.9 = getelementptr i8, i8* %call2, i64 4320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.9, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.9, i64 480, i1 false)
  %scevgep894.10 = getelementptr i8, i8* %malloccall464, i64 4800
  %scevgep895.10 = getelementptr i8, i8* %call2, i64 4800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.10, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.10, i64 480, i1 false)
  %scevgep894.11 = getelementptr i8, i8* %malloccall464, i64 5280
  %scevgep895.11 = getelementptr i8, i8* %call2, i64 5280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.11, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.11, i64 480, i1 false)
  %scevgep894.12 = getelementptr i8, i8* %malloccall464, i64 5760
  %scevgep895.12 = getelementptr i8, i8* %call2, i64 5760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.12, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.12, i64 480, i1 false)
  %scevgep894.13 = getelementptr i8, i8* %malloccall464, i64 6240
  %scevgep895.13 = getelementptr i8, i8* %call2, i64 6240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.13, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.13, i64 480, i1 false)
  %scevgep894.14 = getelementptr i8, i8* %malloccall464, i64 6720
  %scevgep895.14 = getelementptr i8, i8* %call2, i64 6720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.14, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.14, i64 480, i1 false)
  %scevgep894.15 = getelementptr i8, i8* %malloccall464, i64 7200
  %scevgep895.15 = getelementptr i8, i8* %call2, i64 7200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.15, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.15, i64 480, i1 false)
  %scevgep894.16 = getelementptr i8, i8* %malloccall464, i64 7680
  %scevgep895.16 = getelementptr i8, i8* %call2, i64 7680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.16, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.16, i64 480, i1 false)
  %scevgep894.17 = getelementptr i8, i8* %malloccall464, i64 8160
  %scevgep895.17 = getelementptr i8, i8* %call2, i64 8160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.17, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.17, i64 480, i1 false)
  %scevgep894.18 = getelementptr i8, i8* %malloccall464, i64 8640
  %scevgep895.18 = getelementptr i8, i8* %call2, i64 8640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.18, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.18, i64 480, i1 false)
  %scevgep894.19 = getelementptr i8, i8* %malloccall464, i64 9120
  %scevgep895.19 = getelementptr i8, i8* %call2, i64 9120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.19, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.19, i64 480, i1 false)
  %scevgep894.20 = getelementptr i8, i8* %malloccall464, i64 9600
  %scevgep895.20 = getelementptr i8, i8* %call2, i64 9600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.20, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.20, i64 480, i1 false)
  %scevgep894.21 = getelementptr i8, i8* %malloccall464, i64 10080
  %scevgep895.21 = getelementptr i8, i8* %call2, i64 10080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.21, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.21, i64 480, i1 false)
  %scevgep894.22 = getelementptr i8, i8* %malloccall464, i64 10560
  %scevgep895.22 = getelementptr i8, i8* %call2, i64 10560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.22, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.22, i64 480, i1 false)
  %scevgep894.23 = getelementptr i8, i8* %malloccall464, i64 11040
  %scevgep895.23 = getelementptr i8, i8* %call2, i64 11040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.23, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.23, i64 480, i1 false)
  %scevgep894.24 = getelementptr i8, i8* %malloccall464, i64 11520
  %scevgep895.24 = getelementptr i8, i8* %call2, i64 11520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.24, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.24, i64 480, i1 false)
  %scevgep894.25 = getelementptr i8, i8* %malloccall464, i64 12000
  %scevgep895.25 = getelementptr i8, i8* %call2, i64 12000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.25, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.25, i64 480, i1 false)
  %scevgep894.26 = getelementptr i8, i8* %malloccall464, i64 12480
  %scevgep895.26 = getelementptr i8, i8* %call2, i64 12480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.26, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.26, i64 480, i1 false)
  %scevgep894.27 = getelementptr i8, i8* %malloccall464, i64 12960
  %scevgep895.27 = getelementptr i8, i8* %call2, i64 12960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.27, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.27, i64 480, i1 false)
  %scevgep894.28 = getelementptr i8, i8* %malloccall464, i64 13440
  %scevgep895.28 = getelementptr i8, i8* %call2, i64 13440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.28, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.28, i64 480, i1 false)
  %scevgep894.29 = getelementptr i8, i8* %malloccall464, i64 13920
  %scevgep895.29 = getelementptr i8, i8* %call2, i64 13920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.29, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.29, i64 480, i1 false)
  %scevgep894.30 = getelementptr i8, i8* %malloccall464, i64 14400
  %scevgep895.30 = getelementptr i8, i8* %call2, i64 14400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.30, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.30, i64 480, i1 false)
  %scevgep894.31 = getelementptr i8, i8* %malloccall464, i64 14880
  %scevgep895.31 = getelementptr i8, i8* %call2, i64 14880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.31, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.31, i64 480, i1 false)
  %scevgep894.32 = getelementptr i8, i8* %malloccall464, i64 15360
  %scevgep895.32 = getelementptr i8, i8* %call2, i64 15360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.32, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.32, i64 480, i1 false)
  %scevgep894.33 = getelementptr i8, i8* %malloccall464, i64 15840
  %scevgep895.33 = getelementptr i8, i8* %call2, i64 15840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.33, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.33, i64 480, i1 false)
  %scevgep894.34 = getelementptr i8, i8* %malloccall464, i64 16320
  %scevgep895.34 = getelementptr i8, i8* %call2, i64 16320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.34, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.34, i64 480, i1 false)
  %scevgep894.35 = getelementptr i8, i8* %malloccall464, i64 16800
  %scevgep895.35 = getelementptr i8, i8* %call2, i64 16800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.35, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.35, i64 480, i1 false)
  %scevgep894.36 = getelementptr i8, i8* %malloccall464, i64 17280
  %scevgep895.36 = getelementptr i8, i8* %call2, i64 17280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.36, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.36, i64 480, i1 false)
  %scevgep894.37 = getelementptr i8, i8* %malloccall464, i64 17760
  %scevgep895.37 = getelementptr i8, i8* %call2, i64 17760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.37, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.37, i64 480, i1 false)
  %scevgep894.38 = getelementptr i8, i8* %malloccall464, i64 18240
  %scevgep895.38 = getelementptr i8, i8* %call2, i64 18240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.38, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.38, i64 480, i1 false)
  %scevgep894.39 = getelementptr i8, i8* %malloccall464, i64 18720
  %scevgep895.39 = getelementptr i8, i8* %call2, i64 18720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.39, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.39, i64 480, i1 false)
  %scevgep894.40 = getelementptr i8, i8* %malloccall464, i64 19200
  %scevgep895.40 = getelementptr i8, i8* %call2, i64 19200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.40, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.40, i64 480, i1 false)
  %scevgep894.41 = getelementptr i8, i8* %malloccall464, i64 19680
  %scevgep895.41 = getelementptr i8, i8* %call2, i64 19680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.41, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.41, i64 480, i1 false)
  %scevgep894.42 = getelementptr i8, i8* %malloccall464, i64 20160
  %scevgep895.42 = getelementptr i8, i8* %call2, i64 20160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.42, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.42, i64 480, i1 false)
  %scevgep894.43 = getelementptr i8, i8* %malloccall464, i64 20640
  %scevgep895.43 = getelementptr i8, i8* %call2, i64 20640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.43, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.43, i64 480, i1 false)
  %scevgep894.44 = getelementptr i8, i8* %malloccall464, i64 21120
  %scevgep895.44 = getelementptr i8, i8* %call2, i64 21120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.44, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.44, i64 480, i1 false)
  %scevgep894.45 = getelementptr i8, i8* %malloccall464, i64 21600
  %scevgep895.45 = getelementptr i8, i8* %call2, i64 21600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.45, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.45, i64 480, i1 false)
  %scevgep894.46 = getelementptr i8, i8* %malloccall464, i64 22080
  %scevgep895.46 = getelementptr i8, i8* %call2, i64 22080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.46, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.46, i64 480, i1 false)
  %scevgep894.47 = getelementptr i8, i8* %malloccall464, i64 22560
  %scevgep895.47 = getelementptr i8, i8* %call2, i64 22560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.47, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.47, i64 480, i1 false)
  %scevgep894.48 = getelementptr i8, i8* %malloccall464, i64 23040
  %scevgep895.48 = getelementptr i8, i8* %call2, i64 23040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.48, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.48, i64 480, i1 false)
  %scevgep894.49 = getelementptr i8, i8* %malloccall464, i64 23520
  %scevgep895.49 = getelementptr i8, i8* %call2, i64 23520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.49, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.49, i64 480, i1 false)
  %scevgep894.50 = getelementptr i8, i8* %malloccall464, i64 24000
  %scevgep895.50 = getelementptr i8, i8* %call2, i64 24000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.50, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.50, i64 480, i1 false)
  %scevgep894.51 = getelementptr i8, i8* %malloccall464, i64 24480
  %scevgep895.51 = getelementptr i8, i8* %call2, i64 24480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.51, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.51, i64 480, i1 false)
  %scevgep894.52 = getelementptr i8, i8* %malloccall464, i64 24960
  %scevgep895.52 = getelementptr i8, i8* %call2, i64 24960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.52, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.52, i64 480, i1 false)
  %scevgep894.53 = getelementptr i8, i8* %malloccall464, i64 25440
  %scevgep895.53 = getelementptr i8, i8* %call2, i64 25440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.53, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.53, i64 480, i1 false)
  %scevgep894.54 = getelementptr i8, i8* %malloccall464, i64 25920
  %scevgep895.54 = getelementptr i8, i8* %call2, i64 25920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.54, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.54, i64 480, i1 false)
  %scevgep894.55 = getelementptr i8, i8* %malloccall464, i64 26400
  %scevgep895.55 = getelementptr i8, i8* %call2, i64 26400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.55, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.55, i64 480, i1 false)
  %scevgep894.56 = getelementptr i8, i8* %malloccall464, i64 26880
  %scevgep895.56 = getelementptr i8, i8* %call2, i64 26880
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.56, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.56, i64 480, i1 false)
  %scevgep894.57 = getelementptr i8, i8* %malloccall464, i64 27360
  %scevgep895.57 = getelementptr i8, i8* %call2, i64 27360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.57, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.57, i64 480, i1 false)
  %scevgep894.58 = getelementptr i8, i8* %malloccall464, i64 27840
  %scevgep895.58 = getelementptr i8, i8* %call2, i64 27840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.58, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.58, i64 480, i1 false)
  %scevgep894.59 = getelementptr i8, i8* %malloccall464, i64 28320
  %scevgep895.59 = getelementptr i8, i8* %call2, i64 28320
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.59, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.59, i64 480, i1 false)
  %scevgep894.60 = getelementptr i8, i8* %malloccall464, i64 28800
  %scevgep895.60 = getelementptr i8, i8* %call2, i64 28800
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.60, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.60, i64 480, i1 false)
  %scevgep894.61 = getelementptr i8, i8* %malloccall464, i64 29280
  %scevgep895.61 = getelementptr i8, i8* %call2, i64 29280
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.61, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.61, i64 480, i1 false)
  %scevgep894.62 = getelementptr i8, i8* %malloccall464, i64 29760
  %scevgep895.62 = getelementptr i8, i8* %call2, i64 29760
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.62, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.62, i64 480, i1 false)
  %scevgep894.63 = getelementptr i8, i8* %malloccall464, i64 30240
  %scevgep895.63 = getelementptr i8, i8* %call2, i64 30240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.63, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.63, i64 480, i1 false)
  %scevgep894.64 = getelementptr i8, i8* %malloccall464, i64 30720
  %scevgep895.64 = getelementptr i8, i8* %call2, i64 30720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.64, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.64, i64 480, i1 false)
  %scevgep894.65 = getelementptr i8, i8* %malloccall464, i64 31200
  %scevgep895.65 = getelementptr i8, i8* %call2, i64 31200
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.65, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.65, i64 480, i1 false)
  %scevgep894.66 = getelementptr i8, i8* %malloccall464, i64 31680
  %scevgep895.66 = getelementptr i8, i8* %call2, i64 31680
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.66, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.66, i64 480, i1 false)
  %scevgep894.67 = getelementptr i8, i8* %malloccall464, i64 32160
  %scevgep895.67 = getelementptr i8, i8* %call2, i64 32160
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.67, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.67, i64 480, i1 false)
  %scevgep894.68 = getelementptr i8, i8* %malloccall464, i64 32640
  %scevgep895.68 = getelementptr i8, i8* %call2, i64 32640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.68, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.68, i64 480, i1 false)
  %scevgep894.69 = getelementptr i8, i8* %malloccall464, i64 33120
  %scevgep895.69 = getelementptr i8, i8* %call2, i64 33120
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.69, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.69, i64 480, i1 false)
  %scevgep894.70 = getelementptr i8, i8* %malloccall464, i64 33600
  %scevgep895.70 = getelementptr i8, i8* %call2, i64 33600
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.70, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.70, i64 480, i1 false)
  %scevgep894.71 = getelementptr i8, i8* %malloccall464, i64 34080
  %scevgep895.71 = getelementptr i8, i8* %call2, i64 34080
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.71, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.71, i64 480, i1 false)
  %scevgep894.72 = getelementptr i8, i8* %malloccall464, i64 34560
  %scevgep895.72 = getelementptr i8, i8* %call2, i64 34560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.72, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.72, i64 480, i1 false)
  %scevgep894.73 = getelementptr i8, i8* %malloccall464, i64 35040
  %scevgep895.73 = getelementptr i8, i8* %call2, i64 35040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.73, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.73, i64 480, i1 false)
  %scevgep894.74 = getelementptr i8, i8* %malloccall464, i64 35520
  %scevgep895.74 = getelementptr i8, i8* %call2, i64 35520
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.74, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.74, i64 480, i1 false)
  %scevgep894.75 = getelementptr i8, i8* %malloccall464, i64 36000
  %scevgep895.75 = getelementptr i8, i8* %call2, i64 36000
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.75, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.75, i64 480, i1 false)
  %scevgep894.76 = getelementptr i8, i8* %malloccall464, i64 36480
  %scevgep895.76 = getelementptr i8, i8* %call2, i64 36480
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.76, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.76, i64 480, i1 false)
  %scevgep894.77 = getelementptr i8, i8* %malloccall464, i64 36960
  %scevgep895.77 = getelementptr i8, i8* %call2, i64 36960
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.77, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.77, i64 480, i1 false)
  %scevgep894.78 = getelementptr i8, i8* %malloccall464, i64 37440
  %scevgep895.78 = getelementptr i8, i8* %call2, i64 37440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.78, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.78, i64 480, i1 false)
  %scevgep894.79 = getelementptr i8, i8* %malloccall464, i64 37920
  %scevgep895.79 = getelementptr i8, i8* %call2, i64 37920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(480) %scevgep894.79, i8* noundef nonnull align 8 dereferenceable(480) %scevgep895.79, i64 480, i1 false)
  br label %polly.loop_header586

polly.loop_header554:                             ; preds = %polly.loop_header554.preheader, %polly.loop_header554
  %polly.indvar557 = phi i64 [ %polly.indvar_next558, %polly.loop_header554 ], [ %polly.indvar557.ph, %polly.loop_header554.preheader ]
  %122 = shl nuw nsw i64 %polly.indvar557, 3
  %scevgep561 = getelementptr i8, i8* %scevgep560, i64 %122
  %scevgep561562 = bitcast i8* %scevgep561 to double*
  %_p_scalar_563 = load double, double* %scevgep561562, align 8, !alias.scope !83, !noalias !85
  %p_mul.i = fmul fast double %_p_scalar_563, 1.200000e+00
  store double %p_mul.i, double* %scevgep561562, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next558 = add nuw nsw i64 %polly.indvar557, 1
  %exitcond897.not = icmp eq i64 %polly.indvar_next558, %polly.indvar551
  br i1 %exitcond897.not, label %polly.loop_exit556, label %polly.loop_header554, !llvm.loop !91

polly.loop_header586:                             ; preds = %polly.loop_exit610, %polly.loop_header564.preheader
  %indvars.iv887 = phi i64 [ %indvars.iv.next888, %polly.loop_exit610 ], [ 1, %polly.loop_header564.preheader ]
  %polly.indvar589 = phi i64 [ %polly.indvar_next590, %polly.loop_exit610 ], [ 0, %polly.loop_header564.preheader ]
  br label %polly.loop_header592

polly.loop_exit594:                               ; preds = %polly.loop_header592
  %123 = mul nuw nsw i64 %polly.indvar589, 640
  %scevgep636 = getelementptr i8, i8* %call, i64 %123
  %polly.access.mul.Packed_MemRef_call2465624 = mul nuw nsw i64 %polly.indvar589, 60
  %polly.access.mul.Packed_MemRef_call1463632 = mul nuw nsw i64 %polly.indvar589, 50
  br label %polly.loop_header608

polly.loop_exit610:                               ; preds = %polly.loop_exit616
  %polly.indvar_next590 = add nuw nsw i64 %polly.indvar589, 1
  %indvars.iv.next888 = add nuw nsw i64 %indvars.iv887, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next590, 80
  br i1 %exitcond892.not, label %polly.loop_header586.1, label %polly.loop_header586

polly.loop_header592:                             ; preds = %polly.loop_header592, %polly.loop_header586
  %polly.indvar595 = phi i64 [ 0, %polly.loop_header586 ], [ %polly.indvar_next596, %polly.loop_header592 ]
  %124 = mul nuw nsw i64 %polly.indvar595, 400
  %scevgep885 = getelementptr i8, i8* %malloccall462, i64 %124
  %125 = mul nuw nsw i64 %polly.indvar595, 480
  %scevgep886 = getelementptr i8, i8* %call1, i64 %125
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(400) %scevgep885, i8* noundef nonnull align 8 dereferenceable(400) %scevgep886, i64 400, i1 false)
  %polly.indvar_next596 = add nuw nsw i64 %polly.indvar595, 1
  %exitcond889.not = icmp eq i64 %polly.indvar_next596, %indvars.iv887
  br i1 %exitcond889.not, label %polly.loop_exit594, label %polly.loop_header592

polly.loop_header608:                             ; preds = %polly.loop_exit616, %polly.loop_exit594
  %polly.indvar611 = phi i64 [ 0, %polly.loop_exit594 ], [ %polly.indvar_next612, %polly.loop_exit616 ]
  %polly.access.add.Packed_MemRef_call2465625 = add nuw nsw i64 %polly.indvar611, %polly.access.mul.Packed_MemRef_call2465624
  %polly.access.Packed_MemRef_call2465626 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.add.Packed_MemRef_call2465625
  %_p_scalar_627 = load double, double* %polly.access.Packed_MemRef_call2465626, align 8
  %polly.access.add.Packed_MemRef_call1463633 = add nuw nsw i64 %polly.indvar611, %polly.access.mul.Packed_MemRef_call1463632
  %polly.access.Packed_MemRef_call1463634 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463633
  %_p_scalar_635 = load double, double* %polly.access.Packed_MemRef_call1463634, align 8
  br label %polly.loop_header614

polly.loop_exit616:                               ; preds = %polly.loop_header614
  %polly.indvar_next612 = add nuw nsw i64 %polly.indvar611, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next612, 50
  br i1 %exitcond891.not, label %polly.loop_exit610, label %polly.loop_header608

polly.loop_header614:                             ; preds = %polly.loop_header614, %polly.loop_header608
  %polly.indvar617 = phi i64 [ 0, %polly.loop_header608 ], [ %polly.indvar_next618, %polly.loop_header614 ]
  %polly.access.mul.Packed_MemRef_call1463620 = mul nuw nsw i64 %polly.indvar617, 50
  %polly.access.add.Packed_MemRef_call1463621 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1463620, %polly.indvar611
  %polly.access.Packed_MemRef_call1463622 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463621
  %_p_scalar_623 = load double, double* %polly.access.Packed_MemRef_call1463622, align 8
  %p_mul27.i = fmul fast double %_p_scalar_627, %_p_scalar_623
  %polly.access.mul.Packed_MemRef_call2465628 = mul nuw nsw i64 %polly.indvar617, 60
  %polly.access.add.Packed_MemRef_call2465629 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2465628, %polly.indvar611
  %polly.access.Packed_MemRef_call2465630 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.add.Packed_MemRef_call2465629
  %_p_scalar_631 = load double, double* %polly.access.Packed_MemRef_call2465630, align 8
  %p_mul37.i = fmul fast double %_p_scalar_635, %_p_scalar_631
  %126 = shl nuw nsw i64 %polly.indvar617, 3
  %scevgep637 = getelementptr i8, i8* %scevgep636, i64 %126
  %scevgep637638 = bitcast i8* %scevgep637 to double*
  %_p_scalar_639 = load double, double* %scevgep637638, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i = fadd fast double %p_mul37.i, %p_mul27.i
  %p_reass.mul.i = fmul fast double %p_reass.add.i, 1.500000e+00
  %p_add42.i = fadd fast double %p_reass.mul.i, %_p_scalar_639
  store double %p_add42.i, double* %scevgep637638, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next618 = add nuw nsw i64 %polly.indvar617, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next618, %indvars.iv887
  br i1 %exitcond890.not, label %polly.loop_exit616, label %polly.loop_header614

polly.loop_header778:                             ; preds = %entry, %polly.loop_exit786
  %polly.indvar781 = phi i64 [ %polly.indvar_next782, %polly.loop_exit786 ], [ 0, %entry ]
  %127 = mul nuw nsw i64 %polly.indvar781, 640
  %128 = trunc i64 %polly.indvar781 to i32
  %broadcast.splatinsert1007 = insertelement <4 x i32> poison, i32 %128, i32 0
  %broadcast.splat1008 = shufflevector <4 x i32> %broadcast.splatinsert1007, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %polly.loop_header778
  %index999 = phi i64 [ 0, %polly.loop_header778 ], [ %index.next1000, %vector.body997 ]
  %vec.ind1005 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778 ], [ %vec.ind.next1006, %vector.body997 ]
  %129 = mul <4 x i32> %vec.ind1005, %broadcast.splat1008
  %130 = add <4 x i32> %129, <i32 3, i32 3, i32 3, i32 3>
  %131 = urem <4 x i32> %130, <i32 80, i32 80, i32 80, i32 80>
  %132 = sitofp <4 x i32> %131 to <4 x double>
  %133 = fmul fast <4 x double> %132, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %134 = shl i64 %index999, 3
  %135 = add nuw nsw i64 %134, %127
  %136 = getelementptr i8, i8* %call, i64 %135
  %137 = bitcast i8* %136 to <4 x double>*
  store <4 x double> %133, <4 x double>* %137, align 8, !alias.scope !92, !noalias !94
  %index.next1000 = add i64 %index999, 4
  %vec.ind.next1006 = add <4 x i32> %vec.ind1005, <i32 4, i32 4, i32 4, i32 4>
  %138 = icmp eq i64 %index.next1000, 32
  br i1 %138, label %polly.loop_exit786, label %vector.body997, !llvm.loop !97

polly.loop_exit786:                               ; preds = %vector.body997
  %polly.indvar_next782 = add nuw nsw i64 %polly.indvar781, 1
  %exitcond917.not = icmp eq i64 %polly.indvar_next782, 32
  br i1 %exitcond917.not, label %polly.loop_header778.1, label %polly.loop_header778

polly.loop_header805:                             ; preds = %polly.loop_exit786.2.2, %polly.loop_exit813
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_exit786.2.2 ]
  %139 = mul nuw nsw i64 %polly.indvar808, 480
  %140 = trunc i64 %polly.indvar808 to i32
  %broadcast.splatinsert1121 = insertelement <4 x i32> poison, i32 %140, i32 0
  %broadcast.splat1122 = shufflevector <4 x i32> %broadcast.splatinsert1121, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %polly.loop_header805
  %index1113 = phi i64 [ 0, %polly.loop_header805 ], [ %index.next1114, %vector.body1111 ]
  %vec.ind1119 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805 ], [ %vec.ind.next1120, %vector.body1111 ]
  %141 = mul <4 x i32> %vec.ind1119, %broadcast.splat1122
  %142 = add <4 x i32> %141, <i32 2, i32 2, i32 2, i32 2>
  %143 = urem <4 x i32> %142, <i32 60, i32 60, i32 60, i32 60>
  %144 = sitofp <4 x i32> %143 to <4 x double>
  %145 = fmul fast <4 x double> %144, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %146 = shl i64 %index1113, 3
  %147 = add i64 %146, %139
  %148 = getelementptr i8, i8* %call2, i64 %147
  %149 = bitcast i8* %148 to <4 x double>*
  store <4 x double> %145, <4 x double>* %149, align 8, !alias.scope !96, !noalias !98
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1120 = add <4 x i32> %vec.ind1119, <i32 4, i32 4, i32 4, i32 4>
  %150 = icmp eq i64 %index.next1114, 32
  br i1 %150, label %polly.loop_exit813, label %vector.body1111, !llvm.loop !99

polly.loop_exit813:                               ; preds = %vector.body1111
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond908.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond908.not, label %polly.loop_header805.1, label %polly.loop_header805

polly.loop_header831:                             ; preds = %polly.loop_exit813.1.2, %polly.loop_exit839
  %polly.indvar834 = phi i64 [ %polly.indvar_next835, %polly.loop_exit839 ], [ 0, %polly.loop_exit813.1.2 ]
  %151 = mul nuw nsw i64 %polly.indvar834, 480
  %152 = trunc i64 %polly.indvar834 to i32
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %152, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %polly.loop_header831
  %index1191 = phi i64 [ 0, %polly.loop_header831 ], [ %index.next1192, %vector.body1189 ]
  %vec.ind1197 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header831 ], [ %vec.ind.next1198, %vector.body1189 ]
  %153 = mul <4 x i32> %vec.ind1197, %broadcast.splat1200
  %154 = add <4 x i32> %153, <i32 1, i32 1, i32 1, i32 1>
  %155 = urem <4 x i32> %154, <i32 80, i32 80, i32 80, i32 80>
  %156 = sitofp <4 x i32> %155 to <4 x double>
  %157 = fmul fast <4 x double> %156, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %158 = shl i64 %index1191, 3
  %159 = add i64 %158, %151
  %160 = getelementptr i8, i8* %call1, i64 %159
  %161 = bitcast i8* %160 to <4 x double>*
  store <4 x double> %157, <4 x double>* %161, align 8, !alias.scope !95, !noalias !100
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1198 = add <4 x i32> %vec.ind1197, <i32 4, i32 4, i32 4, i32 4>
  %162 = icmp eq i64 %index.next1192, 32
  br i1 %162, label %polly.loop_exit839, label %vector.body1189, !llvm.loop !101

polly.loop_exit839:                               ; preds = %vector.body1189
  %polly.indvar_next835 = add nuw nsw i64 %polly.indvar834, 1
  %exitcond902.not = icmp eq i64 %polly.indvar_next835, 32
  br i1 %exitcond902.not, label %polly.loop_header831.1, label %polly.loop_header831

polly.loop_header222.1:                           ; preds = %polly.loop_exit246, %polly.loop_exit246.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %polly.loop_exit246.1 ], [ 1, %polly.loop_exit246 ]
  %polly.indvar225.1 = phi i64 [ %polly.indvar_next226.1, %polly.loop_exit246.1 ], [ 0, %polly.loop_exit246 ]
  br label %polly.loop_header228.1

polly.loop_header228.1:                           ; preds = %polly.loop_header228.1, %polly.loop_header222.1
  %polly.indvar231.1 = phi i64 [ 0, %polly.loop_header222.1 ], [ %polly.indvar_next232.1, %polly.loop_header228.1 ]
  %163 = mul nuw nsw i64 %polly.indvar231.1, 400
  %scevgep858.1 = getelementptr i8, i8* %malloccall, i64 %163
  %164 = mul nuw nsw i64 %polly.indvar231.1, 480
  %165 = add nuw nsw i64 %164, 400
  %scevgep859.1 = getelementptr i8, i8* %call1, i64 %165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %scevgep858.1, i8* noundef nonnull align 8 dereferenceable(80) %scevgep859.1, i64 80, i1 false)
  %polly.indvar_next232.1 = add nuw nsw i64 %polly.indvar231.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next232.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %polly.loop_exit230.1, label %polly.loop_header228.1

polly.loop_exit230.1:                             ; preds = %polly.loop_header228.1
  %166 = mul nuw nsw i64 %polly.indvar225.1, 640
  %scevgep272.1 = getelementptr i8, i8* %call, i64 %166
  %polly.access.mul.Packed_MemRef_call2260.1 = mul nuw nsw i64 %polly.indvar225.1, 60
  %polly.access.mul.Packed_MemRef_call1268.1 = mul nuw nsw i64 %polly.indvar225.1, 50
  br label %polly.loop_header244.1

polly.loop_header244.1:                           ; preds = %polly.loop_exit252.1, %polly.loop_exit230.1
  %polly.indvar247.1 = phi i64 [ 0, %polly.loop_exit230.1 ], [ %polly.indvar_next248.1, %polly.loop_exit252.1 ]
  %167 = add nuw nsw i64 %polly.indvar247.1, 50
  %polly.access.add.Packed_MemRef_call2261.1 = add nuw nsw i64 %167, %polly.access.mul.Packed_MemRef_call2260.1
  %polly.access.Packed_MemRef_call2262.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.1
  %_p_scalar_263.1 = load double, double* %polly.access.Packed_MemRef_call2262.1, align 8
  %polly.access.add.Packed_MemRef_call1269.1 = add nuw nsw i64 %polly.indvar247.1, %polly.access.mul.Packed_MemRef_call1268.1
  %polly.access.Packed_MemRef_call1270.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1269.1
  %_p_scalar_271.1 = load double, double* %polly.access.Packed_MemRef_call1270.1, align 8
  br label %polly.loop_header250.1

polly.loop_header250.1:                           ; preds = %polly.loop_header250.1, %polly.loop_header244.1
  %polly.indvar253.1 = phi i64 [ 0, %polly.loop_header244.1 ], [ %polly.indvar_next254.1, %polly.loop_header250.1 ]
  %polly.access.mul.Packed_MemRef_call1256.1 = mul nuw nsw i64 %polly.indvar253.1, 50
  %polly.access.add.Packed_MemRef_call1257.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1256.1, %polly.indvar247.1
  %polly.access.Packed_MemRef_call1258.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1257.1
  %_p_scalar_259.1 = load double, double* %polly.access.Packed_MemRef_call1258.1, align 8
  %p_mul27.i112.1 = fmul fast double %_p_scalar_263.1, %_p_scalar_259.1
  %polly.access.mul.Packed_MemRef_call2264.1 = mul nuw nsw i64 %polly.indvar253.1, 60
  %polly.access.add.Packed_MemRef_call2265.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2264.1, %167
  %polly.access.Packed_MemRef_call2266.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2265.1
  %_p_scalar_267.1 = load double, double* %polly.access.Packed_MemRef_call2266.1, align 8
  %p_mul37.i114.1 = fmul fast double %_p_scalar_271.1, %_p_scalar_267.1
  %168 = shl nuw nsw i64 %polly.indvar253.1, 3
  %scevgep273.1 = getelementptr i8, i8* %scevgep272.1, i64 %168
  %scevgep273274.1 = bitcast i8* %scevgep273.1 to double*
  %_p_scalar_275.1 = load double, double* %scevgep273274.1, align 8, !alias.scope !64, !noalias !66
  %p_reass.add.i116.1 = fadd fast double %p_mul37.i114.1, %p_mul27.i112.1
  %p_reass.mul.i117.1 = fmul fast double %p_reass.add.i116.1, 1.500000e+00
  %p_add42.i118.1 = fadd fast double %p_reass.mul.i117.1, %_p_scalar_275.1
  store double %p_add42.i118.1, double* %scevgep273274.1, align 8, !alias.scope !64, !noalias !66
  %polly.indvar_next254.1 = add nuw nsw i64 %polly.indvar253.1, 1
  %exitcond860.1.not = icmp eq i64 %polly.indvar_next254.1, %indvars.iv.1
  br i1 %exitcond860.1.not, label %polly.loop_exit252.1, label %polly.loop_header250.1

polly.loop_exit252.1:                             ; preds = %polly.loop_header250.1
  %polly.indvar_next248.1 = add nuw nsw i64 %polly.indvar247.1, 1
  %exitcond861.1.not = icmp eq i64 %polly.indvar_next248.1, 10
  br i1 %exitcond861.1.not, label %polly.loop_exit246.1, label %polly.loop_header244.1

polly.loop_exit246.1:                             ; preds = %polly.loop_exit252.1
  %polly.indvar_next226.1 = add nuw nsw i64 %polly.indvar225.1, 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond862.1.not = icmp eq i64 %polly.indvar_next226.1, 80
  br i1 %exitcond862.1.not, label %polly.loop_exit224.1, label %polly.loop_header222.1

polly.loop_exit224.1:                             ; preds = %polly.loop_exit246.1
  tail call void @free(i8* nonnull %malloccall)
  tail call void @free(i8* nonnull %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header404.1:                           ; preds = %polly.loop_exit428, %polly.loop_exit428.1
  %indvars.iv872.1 = phi i64 [ %indvars.iv.next873.1, %polly.loop_exit428.1 ], [ 1, %polly.loop_exit428 ]
  %polly.indvar407.1 = phi i64 [ %polly.indvar_next408.1, %polly.loop_exit428.1 ], [ 0, %polly.loop_exit428 ]
  br label %polly.loop_header410.1

polly.loop_header410.1:                           ; preds = %polly.loop_header410.1, %polly.loop_header404.1
  %polly.indvar413.1 = phi i64 [ 0, %polly.loop_header404.1 ], [ %polly.indvar_next414.1, %polly.loop_header410.1 ]
  %169 = mul nuw nsw i64 %polly.indvar413.1, 400
  %scevgep870.1 = getelementptr i8, i8* %malloccall280, i64 %169
  %170 = mul nuw nsw i64 %polly.indvar413.1, 480
  %171 = add nuw nsw i64 %170, 400
  %scevgep871.1 = getelementptr i8, i8* %call1, i64 %171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %scevgep870.1, i8* noundef nonnull align 8 dereferenceable(80) %scevgep871.1, i64 80, i1 false)
  %polly.indvar_next414.1 = add nuw nsw i64 %polly.indvar413.1, 1
  %exitcond874.1.not = icmp eq i64 %polly.indvar_next414.1, %indvars.iv872.1
  br i1 %exitcond874.1.not, label %polly.loop_exit412.1, label %polly.loop_header410.1

polly.loop_exit412.1:                             ; preds = %polly.loop_header410.1
  %172 = mul nuw nsw i64 %polly.indvar407.1, 640
  %scevgep454.1 = getelementptr i8, i8* %call, i64 %172
  %polly.access.mul.Packed_MemRef_call2283442.1 = mul nuw nsw i64 %polly.indvar407.1, 60
  %polly.access.mul.Packed_MemRef_call1281450.1 = mul nuw nsw i64 %polly.indvar407.1, 50
  br label %polly.loop_header426.1

polly.loop_header426.1:                           ; preds = %polly.loop_exit434.1, %polly.loop_exit412.1
  %polly.indvar429.1 = phi i64 [ 0, %polly.loop_exit412.1 ], [ %polly.indvar_next430.1, %polly.loop_exit434.1 ]
  %173 = add nuw nsw i64 %polly.indvar429.1, 50
  %polly.access.add.Packed_MemRef_call2283443.1 = add nuw nsw i64 %173, %polly.access.mul.Packed_MemRef_call2283442.1
  %polly.access.Packed_MemRef_call2283444.1 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.add.Packed_MemRef_call2283443.1
  %_p_scalar_445.1 = load double, double* %polly.access.Packed_MemRef_call2283444.1, align 8
  %polly.access.add.Packed_MemRef_call1281451.1 = add nuw nsw i64 %polly.indvar429.1, %polly.access.mul.Packed_MemRef_call1281450.1
  %polly.access.Packed_MemRef_call1281452.1 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.add.Packed_MemRef_call1281451.1
  %_p_scalar_453.1 = load double, double* %polly.access.Packed_MemRef_call1281452.1, align 8
  br label %polly.loop_header432.1

polly.loop_header432.1:                           ; preds = %polly.loop_header432.1, %polly.loop_header426.1
  %polly.indvar435.1 = phi i64 [ 0, %polly.loop_header426.1 ], [ %polly.indvar_next436.1, %polly.loop_header432.1 ]
  %polly.access.mul.Packed_MemRef_call1281438.1 = mul nuw nsw i64 %polly.indvar435.1, 50
  %polly.access.add.Packed_MemRef_call1281439.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1281438.1, %polly.indvar429.1
  %polly.access.Packed_MemRef_call1281440.1 = getelementptr double, double* %Packed_MemRef_call1281, i64 %polly.access.add.Packed_MemRef_call1281439.1
  %_p_scalar_441.1 = load double, double* %polly.access.Packed_MemRef_call1281440.1, align 8
  %p_mul27.i73.1 = fmul fast double %_p_scalar_445.1, %_p_scalar_441.1
  %polly.access.mul.Packed_MemRef_call2283446.1 = mul nuw nsw i64 %polly.indvar435.1, 60
  %polly.access.add.Packed_MemRef_call2283447.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2283446.1, %173
  %polly.access.Packed_MemRef_call2283448.1 = getelementptr double, double* %Packed_MemRef_call2283, i64 %polly.access.add.Packed_MemRef_call2283447.1
  %_p_scalar_449.1 = load double, double* %polly.access.Packed_MemRef_call2283448.1, align 8
  %p_mul37.i75.1 = fmul fast double %_p_scalar_453.1, %_p_scalar_449.1
  %174 = shl nuw nsw i64 %polly.indvar435.1, 3
  %scevgep455.1 = getelementptr i8, i8* %scevgep454.1, i64 %174
  %scevgep455456.1 = bitcast i8* %scevgep455.1 to double*
  %_p_scalar_457.1 = load double, double* %scevgep455456.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.1 = fadd fast double %p_mul37.i75.1, %p_mul27.i73.1
  %p_reass.mul.i78.1 = fmul fast double %p_reass.add.i77.1, 1.500000e+00
  %p_add42.i79.1 = fadd fast double %p_reass.mul.i78.1, %_p_scalar_457.1
  store double %p_add42.i79.1, double* %scevgep455456.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next436.1 = add nuw nsw i64 %polly.indvar435.1, 1
  %exitcond875.1.not = icmp eq i64 %polly.indvar_next436.1, %indvars.iv872.1
  br i1 %exitcond875.1.not, label %polly.loop_exit434.1, label %polly.loop_header432.1

polly.loop_exit434.1:                             ; preds = %polly.loop_header432.1
  %polly.indvar_next430.1 = add nuw nsw i64 %polly.indvar429.1, 1
  %exitcond876.1.not = icmp eq i64 %polly.indvar_next430.1, 10
  br i1 %exitcond876.1.not, label %polly.loop_exit428.1, label %polly.loop_header426.1

polly.loop_exit428.1:                             ; preds = %polly.loop_exit434.1
  %polly.indvar_next408.1 = add nuw nsw i64 %polly.indvar407.1, 1
  %indvars.iv.next873.1 = add nuw nsw i64 %indvars.iv872.1, 1
  %exitcond877.1.not = icmp eq i64 %polly.indvar_next408.1, 80
  br i1 %exitcond877.1.not, label %polly.loop_exit406.1, label %polly.loop_header404.1

polly.loop_exit406.1:                             ; preds = %polly.loop_exit428.1
  tail call void @free(i8* nonnull %malloccall280)
  tail call void @free(i8* nonnull %malloccall282)
  br label %kernel_syr2k.exit90

polly.loop_header586.1:                           ; preds = %polly.loop_exit610, %polly.loop_exit610.1
  %indvars.iv887.1 = phi i64 [ %indvars.iv.next888.1, %polly.loop_exit610.1 ], [ 1, %polly.loop_exit610 ]
  %polly.indvar589.1 = phi i64 [ %polly.indvar_next590.1, %polly.loop_exit610.1 ], [ 0, %polly.loop_exit610 ]
  br label %polly.loop_header592.1

polly.loop_header592.1:                           ; preds = %polly.loop_header592.1, %polly.loop_header586.1
  %polly.indvar595.1 = phi i64 [ 0, %polly.loop_header586.1 ], [ %polly.indvar_next596.1, %polly.loop_header592.1 ]
  %175 = mul nuw nsw i64 %polly.indvar595.1, 400
  %scevgep885.1 = getelementptr i8, i8* %malloccall462, i64 %175
  %176 = mul nuw nsw i64 %polly.indvar595.1, 480
  %177 = add nuw nsw i64 %176, 400
  %scevgep886.1 = getelementptr i8, i8* %call1, i64 %177
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(80) %scevgep885.1, i8* noundef nonnull align 8 dereferenceable(80) %scevgep886.1, i64 80, i1 false)
  %polly.indvar_next596.1 = add nuw nsw i64 %polly.indvar595.1, 1
  %exitcond889.1.not = icmp eq i64 %polly.indvar_next596.1, %indvars.iv887.1
  br i1 %exitcond889.1.not, label %polly.loop_exit594.1, label %polly.loop_header592.1

polly.loop_exit594.1:                             ; preds = %polly.loop_header592.1
  %178 = mul nuw nsw i64 %polly.indvar589.1, 640
  %scevgep636.1 = getelementptr i8, i8* %call, i64 %178
  %polly.access.mul.Packed_MemRef_call2465624.1 = mul nuw nsw i64 %polly.indvar589.1, 60
  %polly.access.mul.Packed_MemRef_call1463632.1 = mul nuw nsw i64 %polly.indvar589.1, 50
  br label %polly.loop_header608.1

polly.loop_header608.1:                           ; preds = %polly.loop_exit616.1, %polly.loop_exit594.1
  %polly.indvar611.1 = phi i64 [ 0, %polly.loop_exit594.1 ], [ %polly.indvar_next612.1, %polly.loop_exit616.1 ]
  %179 = add nuw nsw i64 %polly.indvar611.1, 50
  %polly.access.add.Packed_MemRef_call2465625.1 = add nuw nsw i64 %179, %polly.access.mul.Packed_MemRef_call2465624.1
  %polly.access.Packed_MemRef_call2465626.1 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.add.Packed_MemRef_call2465625.1
  %_p_scalar_627.1 = load double, double* %polly.access.Packed_MemRef_call2465626.1, align 8
  %polly.access.add.Packed_MemRef_call1463633.1 = add nuw nsw i64 %polly.indvar611.1, %polly.access.mul.Packed_MemRef_call1463632.1
  %polly.access.Packed_MemRef_call1463634.1 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463633.1
  %_p_scalar_635.1 = load double, double* %polly.access.Packed_MemRef_call1463634.1, align 8
  br label %polly.loop_header614.1

polly.loop_header614.1:                           ; preds = %polly.loop_header614.1, %polly.loop_header608.1
  %polly.indvar617.1 = phi i64 [ 0, %polly.loop_header608.1 ], [ %polly.indvar_next618.1, %polly.loop_header614.1 ]
  %polly.access.mul.Packed_MemRef_call1463620.1 = mul nuw nsw i64 %polly.indvar617.1, 50
  %polly.access.add.Packed_MemRef_call1463621.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call1463620.1, %polly.indvar611.1
  %polly.access.Packed_MemRef_call1463622.1 = getelementptr double, double* %Packed_MemRef_call1463, i64 %polly.access.add.Packed_MemRef_call1463621.1
  %_p_scalar_623.1 = load double, double* %polly.access.Packed_MemRef_call1463622.1, align 8
  %p_mul27.i.1 = fmul fast double %_p_scalar_627.1, %_p_scalar_623.1
  %polly.access.mul.Packed_MemRef_call2465628.1 = mul nuw nsw i64 %polly.indvar617.1, 60
  %polly.access.add.Packed_MemRef_call2465629.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2465628.1, %179
  %polly.access.Packed_MemRef_call2465630.1 = getelementptr double, double* %Packed_MemRef_call2465, i64 %polly.access.add.Packed_MemRef_call2465629.1
  %_p_scalar_631.1 = load double, double* %polly.access.Packed_MemRef_call2465630.1, align 8
  %p_mul37.i.1 = fmul fast double %_p_scalar_635.1, %_p_scalar_631.1
  %180 = shl nuw nsw i64 %polly.indvar617.1, 3
  %scevgep637.1 = getelementptr i8, i8* %scevgep636.1, i64 %180
  %scevgep637638.1 = bitcast i8* %scevgep637.1 to double*
  %_p_scalar_639.1 = load double, double* %scevgep637638.1, align 8, !alias.scope !83, !noalias !85
  %p_reass.add.i.1 = fadd fast double %p_mul37.i.1, %p_mul27.i.1
  %p_reass.mul.i.1 = fmul fast double %p_reass.add.i.1, 1.500000e+00
  %p_add42.i.1 = fadd fast double %p_reass.mul.i.1, %_p_scalar_639.1
  store double %p_add42.i.1, double* %scevgep637638.1, align 8, !alias.scope !83, !noalias !85
  %polly.indvar_next618.1 = add nuw nsw i64 %polly.indvar617.1, 1
  %exitcond890.1.not = icmp eq i64 %polly.indvar_next618.1, %indvars.iv887.1
  br i1 %exitcond890.1.not, label %polly.loop_exit616.1, label %polly.loop_header614.1

polly.loop_exit616.1:                             ; preds = %polly.loop_header614.1
  %polly.indvar_next612.1 = add nuw nsw i64 %polly.indvar611.1, 1
  %exitcond891.1.not = icmp eq i64 %polly.indvar_next612.1, 10
  br i1 %exitcond891.1.not, label %polly.loop_exit610.1, label %polly.loop_header608.1

polly.loop_exit610.1:                             ; preds = %polly.loop_exit616.1
  %polly.indvar_next590.1 = add nuw nsw i64 %polly.indvar589.1, 1
  %indvars.iv.next888.1 = add nuw nsw i64 %indvars.iv887.1, 1
  %exitcond892.1.not = icmp eq i64 %polly.indvar_next590.1, 80
  br i1 %exitcond892.1.not, label %polly.loop_exit588.1, label %polly.loop_header586.1

polly.loop_exit588.1:                             ; preds = %polly.loop_exit610.1
  tail call void @free(i8* nonnull %malloccall462)
  tail call void @free(i8* nonnull %malloccall464)
  br label %kernel_syr2k.exit

polly.loop_header831.1:                           ; preds = %polly.loop_exit839, %polly.loop_exit839.1
  %polly.indvar834.1 = phi i64 [ %polly.indvar_next835.1, %polly.loop_exit839.1 ], [ 0, %polly.loop_exit839 ]
  %181 = mul nuw nsw i64 %polly.indvar834.1, 480
  %182 = trunc i64 %polly.indvar834.1 to i32
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %182, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %polly.loop_header831.1
  %index1205 = phi i64 [ 0, %polly.loop_header831.1 ], [ %index.next1206, %vector.body1203 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header831.1 ], [ %vec.ind.next1210, %vector.body1203 ]
  %183 = add nuw nsw <4 x i64> %vec.ind1209, <i64 32, i64 32, i64 32, i64 32>
  %184 = trunc <4 x i64> %183 to <4 x i32>
  %185 = mul <4 x i32> %broadcast.splat1212, %184
  %186 = add <4 x i32> %185, <i32 1, i32 1, i32 1, i32 1>
  %187 = urem <4 x i32> %186, <i32 80, i32 80, i32 80, i32 80>
  %188 = sitofp <4 x i32> %187 to <4 x double>
  %189 = fmul fast <4 x double> %188, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %190 = extractelement <4 x i64> %183, i32 0
  %191 = shl i64 %190, 3
  %192 = add i64 %191, %181
  %193 = getelementptr i8, i8* %call1, i64 %192
  %194 = bitcast i8* %193 to <4 x double>*
  store <4 x double> %189, <4 x double>* %194, align 8, !alias.scope !95, !noalias !100
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %195 = icmp eq i64 %index.next1206, 28
  br i1 %195, label %polly.loop_exit839.1, label %vector.body1203, !llvm.loop !102

polly.loop_exit839.1:                             ; preds = %vector.body1203
  %polly.indvar_next835.1 = add nuw nsw i64 %polly.indvar834.1, 1
  %exitcond902.1.not = icmp eq i64 %polly.indvar_next835.1, 32
  br i1 %exitcond902.1.not, label %polly.loop_header831.1922, label %polly.loop_header831.1

polly.loop_header831.1922:                        ; preds = %polly.loop_exit839.1, %polly.loop_exit839.1933
  %polly.indvar834.1921 = phi i64 [ %polly.indvar_next835.1931, %polly.loop_exit839.1933 ], [ 0, %polly.loop_exit839.1 ]
  %196 = add nuw nsw i64 %polly.indvar834.1921, 32
  %197 = mul nuw nsw i64 %196, 480
  %198 = trunc i64 %196 to i32
  %broadcast.splatinsert1225 = insertelement <4 x i32> poison, i32 %198, i32 0
  %broadcast.splat1226 = shufflevector <4 x i32> %broadcast.splatinsert1225, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %polly.loop_header831.1922
  %index1217 = phi i64 [ 0, %polly.loop_header831.1922 ], [ %index.next1218, %vector.body1215 ]
  %vec.ind1223 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header831.1922 ], [ %vec.ind.next1224, %vector.body1215 ]
  %199 = mul <4 x i32> %vec.ind1223, %broadcast.splat1226
  %200 = add <4 x i32> %199, <i32 1, i32 1, i32 1, i32 1>
  %201 = urem <4 x i32> %200, <i32 80, i32 80, i32 80, i32 80>
  %202 = sitofp <4 x i32> %201 to <4 x double>
  %203 = fmul fast <4 x double> %202, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %204 = shl i64 %index1217, 3
  %205 = add i64 %204, %197
  %206 = getelementptr i8, i8* %call1, i64 %205
  %207 = bitcast i8* %206 to <4 x double>*
  store <4 x double> %203, <4 x double>* %207, align 8, !alias.scope !95, !noalias !100
  %index.next1218 = add i64 %index1217, 4
  %vec.ind.next1224 = add <4 x i32> %vec.ind1223, <i32 4, i32 4, i32 4, i32 4>
  %208 = icmp eq i64 %index.next1218, 32
  br i1 %208, label %polly.loop_exit839.1933, label %vector.body1215, !llvm.loop !103

polly.loop_exit839.1933:                          ; preds = %vector.body1215
  %polly.indvar_next835.1931 = add nuw nsw i64 %polly.indvar834.1921, 1
  %exitcond902.1932.not = icmp eq i64 %polly.indvar_next835.1931, 32
  br i1 %exitcond902.1932.not, label %polly.loop_header831.1.1, label %polly.loop_header831.1922

polly.loop_header831.1.1:                         ; preds = %polly.loop_exit839.1933, %polly.loop_exit839.1.1
  %polly.indvar834.1.1 = phi i64 [ %polly.indvar_next835.1.1, %polly.loop_exit839.1.1 ], [ 0, %polly.loop_exit839.1933 ]
  %209 = add nuw nsw i64 %polly.indvar834.1.1, 32
  %210 = mul nuw nsw i64 %209, 480
  %211 = trunc i64 %209 to i32
  %broadcast.splatinsert1237 = insertelement <4 x i32> poison, i32 %211, i32 0
  %broadcast.splat1238 = shufflevector <4 x i32> %broadcast.splatinsert1237, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %polly.loop_header831.1.1
  %index1231 = phi i64 [ 0, %polly.loop_header831.1.1 ], [ %index.next1232, %vector.body1229 ]
  %vec.ind1235 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header831.1.1 ], [ %vec.ind.next1236, %vector.body1229 ]
  %212 = add nuw nsw <4 x i64> %vec.ind1235, <i64 32, i64 32, i64 32, i64 32>
  %213 = trunc <4 x i64> %212 to <4 x i32>
  %214 = mul <4 x i32> %broadcast.splat1238, %213
  %215 = add <4 x i32> %214, <i32 1, i32 1, i32 1, i32 1>
  %216 = urem <4 x i32> %215, <i32 80, i32 80, i32 80, i32 80>
  %217 = sitofp <4 x i32> %216 to <4 x double>
  %218 = fmul fast <4 x double> %217, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %219 = extractelement <4 x i64> %212, i32 0
  %220 = shl i64 %219, 3
  %221 = add i64 %220, %210
  %222 = getelementptr i8, i8* %call1, i64 %221
  %223 = bitcast i8* %222 to <4 x double>*
  store <4 x double> %218, <4 x double>* %223, align 8, !alias.scope !95, !noalias !100
  %index.next1232 = add i64 %index1231, 4
  %vec.ind.next1236 = add <4 x i64> %vec.ind1235, <i64 4, i64 4, i64 4, i64 4>
  %224 = icmp eq i64 %index.next1232, 28
  br i1 %224, label %polly.loop_exit839.1.1, label %vector.body1229, !llvm.loop !104

polly.loop_exit839.1.1:                           ; preds = %vector.body1229
  %polly.indvar_next835.1.1 = add nuw nsw i64 %polly.indvar834.1.1, 1
  %exitcond902.1.1.not = icmp eq i64 %polly.indvar_next835.1.1, 32
  br i1 %exitcond902.1.1.not, label %polly.loop_header831.2, label %polly.loop_header831.1.1

polly.loop_header831.2:                           ; preds = %polly.loop_exit839.1.1, %polly.loop_exit839.2
  %polly.indvar834.2 = phi i64 [ %polly.indvar_next835.2, %polly.loop_exit839.2 ], [ 0, %polly.loop_exit839.1.1 ]
  %225 = add nuw nsw i64 %polly.indvar834.2, 64
  %226 = mul nuw nsw i64 %225, 480
  %227 = trunc i64 %225 to i32
  %broadcast.splatinsert1251 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1252 = shufflevector <4 x i32> %broadcast.splatinsert1251, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %polly.loop_header831.2
  %index1243 = phi i64 [ 0, %polly.loop_header831.2 ], [ %index.next1244, %vector.body1241 ]
  %vec.ind1249 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header831.2 ], [ %vec.ind.next1250, %vector.body1241 ]
  %228 = mul <4 x i32> %vec.ind1249, %broadcast.splat1252
  %229 = add <4 x i32> %228, <i32 1, i32 1, i32 1, i32 1>
  %230 = urem <4 x i32> %229, <i32 80, i32 80, i32 80, i32 80>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %233 = shl i64 %index1243, 3
  %234 = add i64 %233, %226
  %235 = getelementptr i8, i8* %call1, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %232, <4 x double>* %236, align 8, !alias.scope !95, !noalias !100
  %index.next1244 = add i64 %index1243, 4
  %vec.ind.next1250 = add <4 x i32> %vec.ind1249, <i32 4, i32 4, i32 4, i32 4>
  %237 = icmp eq i64 %index.next1244, 32
  br i1 %237, label %polly.loop_exit839.2, label %vector.body1241, !llvm.loop !105

polly.loop_exit839.2:                             ; preds = %vector.body1241
  %polly.indvar_next835.2 = add nuw nsw i64 %polly.indvar834.2, 1
  %exitcond902.2.not = icmp eq i64 %polly.indvar_next835.2, 16
  br i1 %exitcond902.2.not, label %polly.loop_header831.1.2, label %polly.loop_header831.2

polly.loop_header831.1.2:                         ; preds = %polly.loop_exit839.2, %polly.loop_exit839.1.2
  %polly.indvar834.1.2 = phi i64 [ %polly.indvar_next835.1.2, %polly.loop_exit839.1.2 ], [ 0, %polly.loop_exit839.2 ]
  %238 = add nuw nsw i64 %polly.indvar834.1.2, 64
  %239 = mul nuw nsw i64 %238, 480
  %240 = trunc i64 %238 to i32
  %broadcast.splatinsert1263 = insertelement <4 x i32> poison, i32 %240, i32 0
  %broadcast.splat1264 = shufflevector <4 x i32> %broadcast.splatinsert1263, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %polly.loop_header831.1.2
  %index1257 = phi i64 [ 0, %polly.loop_header831.1.2 ], [ %index.next1258, %vector.body1255 ]
  %vec.ind1261 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header831.1.2 ], [ %vec.ind.next1262, %vector.body1255 ]
  %241 = add nuw nsw <4 x i64> %vec.ind1261, <i64 32, i64 32, i64 32, i64 32>
  %242 = trunc <4 x i64> %241 to <4 x i32>
  %243 = mul <4 x i32> %broadcast.splat1264, %242
  %244 = add <4 x i32> %243, <i32 1, i32 1, i32 1, i32 1>
  %245 = urem <4 x i32> %244, <i32 80, i32 80, i32 80, i32 80>
  %246 = sitofp <4 x i32> %245 to <4 x double>
  %247 = fmul fast <4 x double> %246, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %248 = extractelement <4 x i64> %241, i32 0
  %249 = shl i64 %248, 3
  %250 = add i64 %249, %239
  %251 = getelementptr i8, i8* %call1, i64 %250
  %252 = bitcast i8* %251 to <4 x double>*
  store <4 x double> %247, <4 x double>* %252, align 8, !alias.scope !95, !noalias !100
  %index.next1258 = add i64 %index1257, 4
  %vec.ind.next1262 = add <4 x i64> %vec.ind1261, <i64 4, i64 4, i64 4, i64 4>
  %253 = icmp eq i64 %index.next1258, 28
  br i1 %253, label %polly.loop_exit839.1.2, label %vector.body1255, !llvm.loop !106

polly.loop_exit839.1.2:                           ; preds = %vector.body1255
  %polly.indvar_next835.1.2 = add nuw nsw i64 %polly.indvar834.1.2, 1
  %exitcond902.1.2.not = icmp eq i64 %polly.indvar_next835.1.2, 16
  br i1 %exitcond902.1.2.not, label %init_array.exit, label %polly.loop_header831.1.2

polly.loop_header805.1:                           ; preds = %polly.loop_exit813, %polly.loop_exit813.1
  %polly.indvar808.1 = phi i64 [ %polly.indvar_next809.1, %polly.loop_exit813.1 ], [ 0, %polly.loop_exit813 ]
  %254 = mul nuw nsw i64 %polly.indvar808.1, 480
  %255 = trunc i64 %polly.indvar808.1 to i32
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %255, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %polly.loop_header805.1
  %index1127 = phi i64 [ 0, %polly.loop_header805.1 ], [ %index.next1128, %vector.body1125 ]
  %vec.ind1131 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1 ], [ %vec.ind.next1132, %vector.body1125 ]
  %256 = add nuw nsw <4 x i64> %vec.ind1131, <i64 32, i64 32, i64 32, i64 32>
  %257 = trunc <4 x i64> %256 to <4 x i32>
  %258 = mul <4 x i32> %broadcast.splat1134, %257
  %259 = add <4 x i32> %258, <i32 2, i32 2, i32 2, i32 2>
  %260 = urem <4 x i32> %259, <i32 60, i32 60, i32 60, i32 60>
  %261 = sitofp <4 x i32> %260 to <4 x double>
  %262 = fmul fast <4 x double> %261, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %263 = extractelement <4 x i64> %256, i32 0
  %264 = shl i64 %263, 3
  %265 = add i64 %264, %254
  %266 = getelementptr i8, i8* %call2, i64 %265
  %267 = bitcast i8* %266 to <4 x double>*
  store <4 x double> %262, <4 x double>* %267, align 8, !alias.scope !96, !noalias !98
  %index.next1128 = add i64 %index1127, 4
  %vec.ind.next1132 = add <4 x i64> %vec.ind1131, <i64 4, i64 4, i64 4, i64 4>
  %268 = icmp eq i64 %index.next1128, 28
  br i1 %268, label %polly.loop_exit813.1, label %vector.body1125, !llvm.loop !107

polly.loop_exit813.1:                             ; preds = %vector.body1125
  %polly.indvar_next809.1 = add nuw nsw i64 %polly.indvar808.1, 1
  %exitcond908.1.not = icmp eq i64 %polly.indvar_next809.1, 32
  br i1 %exitcond908.1.not, label %polly.loop_header805.1936, label %polly.loop_header805.1

polly.loop_header805.1936:                        ; preds = %polly.loop_exit813.1, %polly.loop_exit813.1947
  %polly.indvar808.1935 = phi i64 [ %polly.indvar_next809.1945, %polly.loop_exit813.1947 ], [ 0, %polly.loop_exit813.1 ]
  %269 = add nuw nsw i64 %polly.indvar808.1935, 32
  %270 = mul nuw nsw i64 %269, 480
  %271 = trunc i64 %269 to i32
  %broadcast.splatinsert1147 = insertelement <4 x i32> poison, i32 %271, i32 0
  %broadcast.splat1148 = shufflevector <4 x i32> %broadcast.splatinsert1147, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %polly.loop_header805.1936
  %index1139 = phi i64 [ 0, %polly.loop_header805.1936 ], [ %index.next1140, %vector.body1137 ]
  %vec.ind1145 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.1936 ], [ %vec.ind.next1146, %vector.body1137 ]
  %272 = mul <4 x i32> %vec.ind1145, %broadcast.splat1148
  %273 = add <4 x i32> %272, <i32 2, i32 2, i32 2, i32 2>
  %274 = urem <4 x i32> %273, <i32 60, i32 60, i32 60, i32 60>
  %275 = sitofp <4 x i32> %274 to <4 x double>
  %276 = fmul fast <4 x double> %275, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %277 = shl i64 %index1139, 3
  %278 = add i64 %277, %270
  %279 = getelementptr i8, i8* %call2, i64 %278
  %280 = bitcast i8* %279 to <4 x double>*
  store <4 x double> %276, <4 x double>* %280, align 8, !alias.scope !96, !noalias !98
  %index.next1140 = add i64 %index1139, 4
  %vec.ind.next1146 = add <4 x i32> %vec.ind1145, <i32 4, i32 4, i32 4, i32 4>
  %281 = icmp eq i64 %index.next1140, 32
  br i1 %281, label %polly.loop_exit813.1947, label %vector.body1137, !llvm.loop !108

polly.loop_exit813.1947:                          ; preds = %vector.body1137
  %polly.indvar_next809.1945 = add nuw nsw i64 %polly.indvar808.1935, 1
  %exitcond908.1946.not = icmp eq i64 %polly.indvar_next809.1945, 32
  br i1 %exitcond908.1946.not, label %polly.loop_header805.1.1, label %polly.loop_header805.1936

polly.loop_header805.1.1:                         ; preds = %polly.loop_exit813.1947, %polly.loop_exit813.1.1
  %polly.indvar808.1.1 = phi i64 [ %polly.indvar_next809.1.1, %polly.loop_exit813.1.1 ], [ 0, %polly.loop_exit813.1947 ]
  %282 = add nuw nsw i64 %polly.indvar808.1.1, 32
  %283 = mul nuw nsw i64 %282, 480
  %284 = trunc i64 %282 to i32
  %broadcast.splatinsert1159 = insertelement <4 x i32> poison, i32 %284, i32 0
  %broadcast.splat1160 = shufflevector <4 x i32> %broadcast.splatinsert1159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %polly.loop_header805.1.1
  %index1153 = phi i64 [ 0, %polly.loop_header805.1.1 ], [ %index.next1154, %vector.body1151 ]
  %vec.ind1157 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.1 ], [ %vec.ind.next1158, %vector.body1151 ]
  %285 = add nuw nsw <4 x i64> %vec.ind1157, <i64 32, i64 32, i64 32, i64 32>
  %286 = trunc <4 x i64> %285 to <4 x i32>
  %287 = mul <4 x i32> %broadcast.splat1160, %286
  %288 = add <4 x i32> %287, <i32 2, i32 2, i32 2, i32 2>
  %289 = urem <4 x i32> %288, <i32 60, i32 60, i32 60, i32 60>
  %290 = sitofp <4 x i32> %289 to <4 x double>
  %291 = fmul fast <4 x double> %290, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %292 = extractelement <4 x i64> %285, i32 0
  %293 = shl i64 %292, 3
  %294 = add i64 %293, %283
  %295 = getelementptr i8, i8* %call2, i64 %294
  %296 = bitcast i8* %295 to <4 x double>*
  store <4 x double> %291, <4 x double>* %296, align 8, !alias.scope !96, !noalias !98
  %index.next1154 = add i64 %index1153, 4
  %vec.ind.next1158 = add <4 x i64> %vec.ind1157, <i64 4, i64 4, i64 4, i64 4>
  %297 = icmp eq i64 %index.next1154, 28
  br i1 %297, label %polly.loop_exit813.1.1, label %vector.body1151, !llvm.loop !109

polly.loop_exit813.1.1:                           ; preds = %vector.body1151
  %polly.indvar_next809.1.1 = add nuw nsw i64 %polly.indvar808.1.1, 1
  %exitcond908.1.1.not = icmp eq i64 %polly.indvar_next809.1.1, 32
  br i1 %exitcond908.1.1.not, label %polly.loop_header805.2, label %polly.loop_header805.1.1

polly.loop_header805.2:                           ; preds = %polly.loop_exit813.1.1, %polly.loop_exit813.2
  %polly.indvar808.2 = phi i64 [ %polly.indvar_next809.2, %polly.loop_exit813.2 ], [ 0, %polly.loop_exit813.1.1 ]
  %298 = add nuw nsw i64 %polly.indvar808.2, 64
  %299 = mul nuw nsw i64 %298, 480
  %300 = trunc i64 %298 to i32
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %300, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %polly.loop_header805.2
  %index1165 = phi i64 [ 0, %polly.loop_header805.2 ], [ %index.next1166, %vector.body1163 ]
  %vec.ind1171 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.2 ], [ %vec.ind.next1172, %vector.body1163 ]
  %301 = mul <4 x i32> %vec.ind1171, %broadcast.splat1174
  %302 = add <4 x i32> %301, <i32 2, i32 2, i32 2, i32 2>
  %303 = urem <4 x i32> %302, <i32 60, i32 60, i32 60, i32 60>
  %304 = sitofp <4 x i32> %303 to <4 x double>
  %305 = fmul fast <4 x double> %304, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %306 = shl i64 %index1165, 3
  %307 = add i64 %306, %299
  %308 = getelementptr i8, i8* %call2, i64 %307
  %309 = bitcast i8* %308 to <4 x double>*
  store <4 x double> %305, <4 x double>* %309, align 8, !alias.scope !96, !noalias !98
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1172 = add <4 x i32> %vec.ind1171, <i32 4, i32 4, i32 4, i32 4>
  %310 = icmp eq i64 %index.next1166, 32
  br i1 %310, label %polly.loop_exit813.2, label %vector.body1163, !llvm.loop !110

polly.loop_exit813.2:                             ; preds = %vector.body1163
  %polly.indvar_next809.2 = add nuw nsw i64 %polly.indvar808.2, 1
  %exitcond908.2.not = icmp eq i64 %polly.indvar_next809.2, 16
  br i1 %exitcond908.2.not, label %polly.loop_header805.1.2, label %polly.loop_header805.2

polly.loop_header805.1.2:                         ; preds = %polly.loop_exit813.2, %polly.loop_exit813.1.2
  %polly.indvar808.1.2 = phi i64 [ %polly.indvar_next809.1.2, %polly.loop_exit813.1.2 ], [ 0, %polly.loop_exit813.2 ]
  %311 = add nuw nsw i64 %polly.indvar808.1.2, 64
  %312 = mul nuw nsw i64 %311, 480
  %313 = trunc i64 %311 to i32
  %broadcast.splatinsert1185 = insertelement <4 x i32> poison, i32 %313, i32 0
  %broadcast.splat1186 = shufflevector <4 x i32> %broadcast.splatinsert1185, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %polly.loop_header805.1.2
  %index1179 = phi i64 [ 0, %polly.loop_header805.1.2 ], [ %index.next1180, %vector.body1177 ]
  %vec.ind1183 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.2 ], [ %vec.ind.next1184, %vector.body1177 ]
  %314 = add nuw nsw <4 x i64> %vec.ind1183, <i64 32, i64 32, i64 32, i64 32>
  %315 = trunc <4 x i64> %314 to <4 x i32>
  %316 = mul <4 x i32> %broadcast.splat1186, %315
  %317 = add <4 x i32> %316, <i32 2, i32 2, i32 2, i32 2>
  %318 = urem <4 x i32> %317, <i32 60, i32 60, i32 60, i32 60>
  %319 = sitofp <4 x i32> %318 to <4 x double>
  %320 = fmul fast <4 x double> %319, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %321 = extractelement <4 x i64> %314, i32 0
  %322 = shl i64 %321, 3
  %323 = add i64 %322, %312
  %324 = getelementptr i8, i8* %call2, i64 %323
  %325 = bitcast i8* %324 to <4 x double>*
  store <4 x double> %320, <4 x double>* %325, align 8, !alias.scope !96, !noalias !98
  %index.next1180 = add i64 %index1179, 4
  %vec.ind.next1184 = add <4 x i64> %vec.ind1183, <i64 4, i64 4, i64 4, i64 4>
  %326 = icmp eq i64 %index.next1180, 28
  br i1 %326, label %polly.loop_exit813.1.2, label %vector.body1177, !llvm.loop !111

polly.loop_exit813.1.2:                           ; preds = %vector.body1177
  %polly.indvar_next809.1.2 = add nuw nsw i64 %polly.indvar808.1.2, 1
  %exitcond908.1.2.not = icmp eq i64 %polly.indvar_next809.1.2, 16
  br i1 %exitcond908.1.2.not, label %polly.loop_header831, label %polly.loop_header805.1.2

polly.loop_header778.1:                           ; preds = %polly.loop_exit786, %polly.loop_exit786.1
  %polly.indvar781.1 = phi i64 [ %polly.indvar_next782.1, %polly.loop_exit786.1 ], [ 0, %polly.loop_exit786 ]
  %327 = mul nuw nsw i64 %polly.indvar781.1, 640
  %328 = trunc i64 %polly.indvar781.1 to i32
  %broadcast.splatinsert1019 = insertelement <4 x i32> poison, i32 %328, i32 0
  %broadcast.splat1020 = shufflevector <4 x i32> %broadcast.splatinsert1019, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %polly.loop_header778.1
  %index1013 = phi i64 [ 0, %polly.loop_header778.1 ], [ %index.next1014, %vector.body1011 ]
  %vec.ind1017 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1 ], [ %vec.ind.next1018, %vector.body1011 ]
  %329 = add nuw nsw <4 x i64> %vec.ind1017, <i64 32, i64 32, i64 32, i64 32>
  %330 = trunc <4 x i64> %329 to <4 x i32>
  %331 = mul <4 x i32> %broadcast.splat1020, %330
  %332 = add <4 x i32> %331, <i32 3, i32 3, i32 3, i32 3>
  %333 = urem <4 x i32> %332, <i32 80, i32 80, i32 80, i32 80>
  %334 = sitofp <4 x i32> %333 to <4 x double>
  %335 = fmul fast <4 x double> %334, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %336 = extractelement <4 x i64> %329, i32 0
  %337 = shl i64 %336, 3
  %338 = add nuw nsw i64 %337, %327
  %339 = getelementptr i8, i8* %call, i64 %338
  %340 = bitcast i8* %339 to <4 x double>*
  store <4 x double> %335, <4 x double>* %340, align 8, !alias.scope !92, !noalias !94
  %index.next1014 = add i64 %index1013, 4
  %vec.ind.next1018 = add <4 x i64> %vec.ind1017, <i64 4, i64 4, i64 4, i64 4>
  %341 = icmp eq i64 %index.next1014, 32
  br i1 %341, label %polly.loop_exit786.1, label %vector.body1011, !llvm.loop !112

polly.loop_exit786.1:                             ; preds = %vector.body1011
  %polly.indvar_next782.1 = add nuw nsw i64 %polly.indvar781.1, 1
  %exitcond917.1.not = icmp eq i64 %polly.indvar_next782.1, 32
  br i1 %exitcond917.1.not, label %polly.loop_header778.2, label %polly.loop_header778.1

polly.loop_header778.2:                           ; preds = %polly.loop_exit786.1, %polly.loop_exit786.2
  %polly.indvar781.2 = phi i64 [ %polly.indvar_next782.2, %polly.loop_exit786.2 ], [ 0, %polly.loop_exit786.1 ]
  %342 = mul nuw nsw i64 %polly.indvar781.2, 640
  %343 = trunc i64 %polly.indvar781.2 to i32
  %broadcast.splatinsert1031 = insertelement <4 x i32> poison, i32 %343, i32 0
  %broadcast.splat1032 = shufflevector <4 x i32> %broadcast.splatinsert1031, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1023

vector.body1023:                                  ; preds = %vector.body1023, %polly.loop_header778.2
  %index1025 = phi i64 [ 0, %polly.loop_header778.2 ], [ %index.next1026, %vector.body1023 ]
  %vec.ind1029 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.2 ], [ %vec.ind.next1030, %vector.body1023 ]
  %344 = add nuw nsw <4 x i64> %vec.ind1029, <i64 64, i64 64, i64 64, i64 64>
  %345 = trunc <4 x i64> %344 to <4 x i32>
  %346 = mul <4 x i32> %broadcast.splat1032, %345
  %347 = add <4 x i32> %346, <i32 3, i32 3, i32 3, i32 3>
  %348 = urem <4 x i32> %347, <i32 80, i32 80, i32 80, i32 80>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %351 = extractelement <4 x i64> %344, i32 0
  %352 = shl i64 %351, 3
  %353 = add nuw nsw i64 %352, %342
  %354 = getelementptr i8, i8* %call, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %350, <4 x double>* %355, align 8, !alias.scope !92, !noalias !94
  %index.next1026 = add i64 %index1025, 4
  %vec.ind.next1030 = add <4 x i64> %vec.ind1029, <i64 4, i64 4, i64 4, i64 4>
  %356 = icmp eq i64 %index.next1026, 16
  br i1 %356, label %polly.loop_exit786.2, label %vector.body1023, !llvm.loop !113

polly.loop_exit786.2:                             ; preds = %vector.body1023
  %polly.indvar_next782.2 = add nuw nsw i64 %polly.indvar781.2, 1
  %exitcond917.2.not = icmp eq i64 %polly.indvar_next782.2, 32
  br i1 %exitcond917.2.not, label %polly.loop_header778.1950, label %polly.loop_header778.2

polly.loop_header778.1950:                        ; preds = %polly.loop_exit786.2, %polly.loop_exit786.1961
  %polly.indvar781.1949 = phi i64 [ %polly.indvar_next782.1959, %polly.loop_exit786.1961 ], [ 0, %polly.loop_exit786.2 ]
  %357 = add nuw nsw i64 %polly.indvar781.1949, 32
  %358 = mul nuw nsw i64 %357, 640
  %359 = trunc i64 %357 to i32
  %broadcast.splatinsert1045 = insertelement <4 x i32> poison, i32 %359, i32 0
  %broadcast.splat1046 = shufflevector <4 x i32> %broadcast.splatinsert1045, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %polly.loop_header778.1950
  %index1037 = phi i64 [ 0, %polly.loop_header778.1950 ], [ %index.next1038, %vector.body1035 ]
  %vec.ind1043 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.1950 ], [ %vec.ind.next1044, %vector.body1035 ]
  %360 = mul <4 x i32> %vec.ind1043, %broadcast.splat1046
  %361 = add <4 x i32> %360, <i32 3, i32 3, i32 3, i32 3>
  %362 = urem <4 x i32> %361, <i32 80, i32 80, i32 80, i32 80>
  %363 = sitofp <4 x i32> %362 to <4 x double>
  %364 = fmul fast <4 x double> %363, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %365 = shl i64 %index1037, 3
  %366 = add nuw nsw i64 %365, %358
  %367 = getelementptr i8, i8* %call, i64 %366
  %368 = bitcast i8* %367 to <4 x double>*
  store <4 x double> %364, <4 x double>* %368, align 8, !alias.scope !92, !noalias !94
  %index.next1038 = add i64 %index1037, 4
  %vec.ind.next1044 = add <4 x i32> %vec.ind1043, <i32 4, i32 4, i32 4, i32 4>
  %369 = icmp eq i64 %index.next1038, 32
  br i1 %369, label %polly.loop_exit786.1961, label %vector.body1035, !llvm.loop !114

polly.loop_exit786.1961:                          ; preds = %vector.body1035
  %polly.indvar_next782.1959 = add nuw nsw i64 %polly.indvar781.1949, 1
  %exitcond917.1960.not = icmp eq i64 %polly.indvar_next782.1959, 32
  br i1 %exitcond917.1960.not, label %polly.loop_header778.1.1, label %polly.loop_header778.1950

polly.loop_header778.1.1:                         ; preds = %polly.loop_exit786.1961, %polly.loop_exit786.1.1
  %polly.indvar781.1.1 = phi i64 [ %polly.indvar_next782.1.1, %polly.loop_exit786.1.1 ], [ 0, %polly.loop_exit786.1961 ]
  %370 = add nuw nsw i64 %polly.indvar781.1.1, 32
  %371 = mul nuw nsw i64 %370, 640
  %372 = trunc i64 %370 to i32
  %broadcast.splatinsert1057 = insertelement <4 x i32> poison, i32 %372, i32 0
  %broadcast.splat1058 = shufflevector <4 x i32> %broadcast.splatinsert1057, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %polly.loop_header778.1.1
  %index1051 = phi i64 [ 0, %polly.loop_header778.1.1 ], [ %index.next1052, %vector.body1049 ]
  %vec.ind1055 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.1 ], [ %vec.ind.next1056, %vector.body1049 ]
  %373 = add nuw nsw <4 x i64> %vec.ind1055, <i64 32, i64 32, i64 32, i64 32>
  %374 = trunc <4 x i64> %373 to <4 x i32>
  %375 = mul <4 x i32> %broadcast.splat1058, %374
  %376 = add <4 x i32> %375, <i32 3, i32 3, i32 3, i32 3>
  %377 = urem <4 x i32> %376, <i32 80, i32 80, i32 80, i32 80>
  %378 = sitofp <4 x i32> %377 to <4 x double>
  %379 = fmul fast <4 x double> %378, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %380 = extractelement <4 x i64> %373, i32 0
  %381 = shl i64 %380, 3
  %382 = add nuw nsw i64 %381, %371
  %383 = getelementptr i8, i8* %call, i64 %382
  %384 = bitcast i8* %383 to <4 x double>*
  store <4 x double> %379, <4 x double>* %384, align 8, !alias.scope !92, !noalias !94
  %index.next1052 = add i64 %index1051, 4
  %vec.ind.next1056 = add <4 x i64> %vec.ind1055, <i64 4, i64 4, i64 4, i64 4>
  %385 = icmp eq i64 %index.next1052, 32
  br i1 %385, label %polly.loop_exit786.1.1, label %vector.body1049, !llvm.loop !115

polly.loop_exit786.1.1:                           ; preds = %vector.body1049
  %polly.indvar_next782.1.1 = add nuw nsw i64 %polly.indvar781.1.1, 1
  %exitcond917.1.1.not = icmp eq i64 %polly.indvar_next782.1.1, 32
  br i1 %exitcond917.1.1.not, label %polly.loop_header778.2.1, label %polly.loop_header778.1.1

polly.loop_header778.2.1:                         ; preds = %polly.loop_exit786.1.1, %polly.loop_exit786.2.1
  %polly.indvar781.2.1 = phi i64 [ %polly.indvar_next782.2.1, %polly.loop_exit786.2.1 ], [ 0, %polly.loop_exit786.1.1 ]
  %386 = add nuw nsw i64 %polly.indvar781.2.1, 32
  %387 = mul nuw nsw i64 %386, 640
  %388 = trunc i64 %386 to i32
  %broadcast.splatinsert1069 = insertelement <4 x i32> poison, i32 %388, i32 0
  %broadcast.splat1070 = shufflevector <4 x i32> %broadcast.splatinsert1069, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1061

vector.body1061:                                  ; preds = %vector.body1061, %polly.loop_header778.2.1
  %index1063 = phi i64 [ 0, %polly.loop_header778.2.1 ], [ %index.next1064, %vector.body1061 ]
  %vec.ind1067 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.2.1 ], [ %vec.ind.next1068, %vector.body1061 ]
  %389 = add nuw nsw <4 x i64> %vec.ind1067, <i64 64, i64 64, i64 64, i64 64>
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = mul <4 x i32> %broadcast.splat1070, %390
  %392 = add <4 x i32> %391, <i32 3, i32 3, i32 3, i32 3>
  %393 = urem <4 x i32> %392, <i32 80, i32 80, i32 80, i32 80>
  %394 = sitofp <4 x i32> %393 to <4 x double>
  %395 = fmul fast <4 x double> %394, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %396 = extractelement <4 x i64> %389, i32 0
  %397 = shl i64 %396, 3
  %398 = add nuw nsw i64 %397, %387
  %399 = getelementptr i8, i8* %call, i64 %398
  %400 = bitcast i8* %399 to <4 x double>*
  store <4 x double> %395, <4 x double>* %400, align 8, !alias.scope !92, !noalias !94
  %index.next1064 = add i64 %index1063, 4
  %vec.ind.next1068 = add <4 x i64> %vec.ind1067, <i64 4, i64 4, i64 4, i64 4>
  %401 = icmp eq i64 %index.next1064, 16
  br i1 %401, label %polly.loop_exit786.2.1, label %vector.body1061, !llvm.loop !116

polly.loop_exit786.2.1:                           ; preds = %vector.body1061
  %polly.indvar_next782.2.1 = add nuw nsw i64 %polly.indvar781.2.1, 1
  %exitcond917.2.1.not = icmp eq i64 %polly.indvar_next782.2.1, 32
  br i1 %exitcond917.2.1.not, label %polly.loop_header778.2964, label %polly.loop_header778.2.1

polly.loop_header778.2964:                        ; preds = %polly.loop_exit786.2.1, %polly.loop_exit786.2975
  %polly.indvar781.2963 = phi i64 [ %polly.indvar_next782.2973, %polly.loop_exit786.2975 ], [ 0, %polly.loop_exit786.2.1 ]
  %402 = add nuw nsw i64 %polly.indvar781.2963, 64
  %403 = mul nuw nsw i64 %402, 640
  %404 = trunc i64 %402 to i32
  %broadcast.splatinsert1083 = insertelement <4 x i32> poison, i32 %404, i32 0
  %broadcast.splat1084 = shufflevector <4 x i32> %broadcast.splatinsert1083, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %polly.loop_header778.2964
  %index1075 = phi i64 [ 0, %polly.loop_header778.2964 ], [ %index.next1076, %vector.body1073 ]
  %vec.ind1081 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header778.2964 ], [ %vec.ind.next1082, %vector.body1073 ]
  %405 = mul <4 x i32> %vec.ind1081, %broadcast.splat1084
  %406 = add <4 x i32> %405, <i32 3, i32 3, i32 3, i32 3>
  %407 = urem <4 x i32> %406, <i32 80, i32 80, i32 80, i32 80>
  %408 = sitofp <4 x i32> %407 to <4 x double>
  %409 = fmul fast <4 x double> %408, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %410 = shl i64 %index1075, 3
  %411 = add nuw nsw i64 %410, %403
  %412 = getelementptr i8, i8* %call, i64 %411
  %413 = bitcast i8* %412 to <4 x double>*
  store <4 x double> %409, <4 x double>* %413, align 8, !alias.scope !92, !noalias !94
  %index.next1076 = add i64 %index1075, 4
  %vec.ind.next1082 = add <4 x i32> %vec.ind1081, <i32 4, i32 4, i32 4, i32 4>
  %414 = icmp eq i64 %index.next1076, 32
  br i1 %414, label %polly.loop_exit786.2975, label %vector.body1073, !llvm.loop !117

polly.loop_exit786.2975:                          ; preds = %vector.body1073
  %polly.indvar_next782.2973 = add nuw nsw i64 %polly.indvar781.2963, 1
  %exitcond917.2974.not = icmp eq i64 %polly.indvar_next782.2973, 16
  br i1 %exitcond917.2974.not, label %polly.loop_header778.1.2, label %polly.loop_header778.2964

polly.loop_header778.1.2:                         ; preds = %polly.loop_exit786.2975, %polly.loop_exit786.1.2
  %polly.indvar781.1.2 = phi i64 [ %polly.indvar_next782.1.2, %polly.loop_exit786.1.2 ], [ 0, %polly.loop_exit786.2975 ]
  %415 = add nuw nsw i64 %polly.indvar781.1.2, 64
  %416 = mul nuw nsw i64 %415, 640
  %417 = trunc i64 %415 to i32
  %broadcast.splatinsert1095 = insertelement <4 x i32> poison, i32 %417, i32 0
  %broadcast.splat1096 = shufflevector <4 x i32> %broadcast.splatinsert1095, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1087

vector.body1087:                                  ; preds = %vector.body1087, %polly.loop_header778.1.2
  %index1089 = phi i64 [ 0, %polly.loop_header778.1.2 ], [ %index.next1090, %vector.body1087 ]
  %vec.ind1093 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.1.2 ], [ %vec.ind.next1094, %vector.body1087 ]
  %418 = add nuw nsw <4 x i64> %vec.ind1093, <i64 32, i64 32, i64 32, i64 32>
  %419 = trunc <4 x i64> %418 to <4 x i32>
  %420 = mul <4 x i32> %broadcast.splat1096, %419
  %421 = add <4 x i32> %420, <i32 3, i32 3, i32 3, i32 3>
  %422 = urem <4 x i32> %421, <i32 80, i32 80, i32 80, i32 80>
  %423 = sitofp <4 x i32> %422 to <4 x double>
  %424 = fmul fast <4 x double> %423, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %425 = extractelement <4 x i64> %418, i32 0
  %426 = shl i64 %425, 3
  %427 = add nuw nsw i64 %426, %416
  %428 = getelementptr i8, i8* %call, i64 %427
  %429 = bitcast i8* %428 to <4 x double>*
  store <4 x double> %424, <4 x double>* %429, align 8, !alias.scope !92, !noalias !94
  %index.next1090 = add i64 %index1089, 4
  %vec.ind.next1094 = add <4 x i64> %vec.ind1093, <i64 4, i64 4, i64 4, i64 4>
  %430 = icmp eq i64 %index.next1090, 32
  br i1 %430, label %polly.loop_exit786.1.2, label %vector.body1087, !llvm.loop !118

polly.loop_exit786.1.2:                           ; preds = %vector.body1087
  %polly.indvar_next782.1.2 = add nuw nsw i64 %polly.indvar781.1.2, 1
  %exitcond917.1.2.not = icmp eq i64 %polly.indvar_next782.1.2, 16
  br i1 %exitcond917.1.2.not, label %polly.loop_header778.2.2, label %polly.loop_header778.1.2

polly.loop_header778.2.2:                         ; preds = %polly.loop_exit786.1.2, %polly.loop_exit786.2.2
  %polly.indvar781.2.2 = phi i64 [ %polly.indvar_next782.2.2, %polly.loop_exit786.2.2 ], [ 0, %polly.loop_exit786.1.2 ]
  %431 = add nuw nsw i64 %polly.indvar781.2.2, 64
  %432 = mul nuw nsw i64 %431, 640
  %433 = trunc i64 %431 to i32
  %broadcast.splatinsert1107 = insertelement <4 x i32> poison, i32 %433, i32 0
  %broadcast.splat1108 = shufflevector <4 x i32> %broadcast.splatinsert1107, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.body1099, %polly.loop_header778.2.2
  %index1101 = phi i64 [ 0, %polly.loop_header778.2.2 ], [ %index.next1102, %vector.body1099 ]
  %vec.ind1105 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header778.2.2 ], [ %vec.ind.next1106, %vector.body1099 ]
  %434 = add nuw nsw <4 x i64> %vec.ind1105, <i64 64, i64 64, i64 64, i64 64>
  %435 = trunc <4 x i64> %434 to <4 x i32>
  %436 = mul <4 x i32> %broadcast.splat1108, %435
  %437 = add <4 x i32> %436, <i32 3, i32 3, i32 3, i32 3>
  %438 = urem <4 x i32> %437, <i32 80, i32 80, i32 80, i32 80>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = extractelement <4 x i64> %434, i32 0
  %442 = shl i64 %441, 3
  %443 = add nuw nsw i64 %442, %432
  %444 = getelementptr i8, i8* %call, i64 %443
  %445 = bitcast i8* %444 to <4 x double>*
  store <4 x double> %440, <4 x double>* %445, align 8, !alias.scope !92, !noalias !94
  %index.next1102 = add i64 %index1101, 4
  %vec.ind.next1106 = add <4 x i64> %vec.ind1105, <i64 4, i64 4, i64 4, i64 4>
  %446 = icmp eq i64 %index.next1102, 16
  br i1 %446, label %polly.loop_exit786.2.2, label %vector.body1099, !llvm.loop !119

polly.loop_exit786.2.2:                           ; preds = %vector.body1099
  %polly.indvar_next782.2.2 = add nuw nsw i64 %polly.indvar781.2.2, 1
  %exitcond917.2.2.not = icmp eq i64 %polly.indvar_next782.2.2, 16
  br i1 %exitcond917.2.2.not, label %polly.loop_header805, label %polly.loop_header778.2.2
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
!35 = !{!"llvm.loop.tile.size", i32 50}
!36 = !{!"llvm.loop.tile.followup_floor", !37}
!37 = distinct !{!37, !12, !38}
!38 = !{!"llvm.loop.id", !"j1"}
!39 = !{!"llvm.loop.tile.followup_tile", !40}
!40 = distinct !{!40, !12, !24, !41, !42, !43, !44}
!41 = !{!"llvm.loop.id", !"j2"}
!42 = !{!"llvm.data.pack.enable", i1 true}
!43 = !{!"llvm.data.pack.array", !21}
!44 = !{!"llvm.data.pack.allocate", !"malloc"}
!45 = distinct !{!45, !12, !24, !46, !47, !48, !26, !49, !53}
!46 = !{!"llvm.loop.id", !"i"}
!47 = !{!"llvm.loop.tile.enable", i1 true}
!48 = !{!"llvm.loop.tile.depth", i32 3}
!49 = !{!"llvm.loop.tile.followup_floor", !50}
!50 = distinct !{!50, !12, !24, !51, !42, !52, !44}
!51 = !{!"llvm.loop.id", !"i1"}
!52 = !{!"llvm.data.pack.array", !22}
!53 = !{!"llvm.loop.tile.followup_tile", !54}
!54 = distinct !{!54, !12, !55}
!55 = !{!"llvm.loop.id", !"i2"}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = distinct !{!58, !12, !13}
!59 = distinct !{!59, !12, !13}
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !4, i64 0}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !65, !"polly.alias.scope.MemRef_call"}
!65 = distinct !{!65, !"polly.alias.scope.domain"}
!66 = !{!67, !68, !69, !70}
!67 = distinct !{!67, !65, !"polly.alias.scope.MemRef_call1"}
!68 = distinct !{!68, !65, !"polly.alias.scope.MemRef_call2"}
!69 = distinct !{!69, !65, !"polly.alias.scope.Packed_MemRef_call1"}
!70 = distinct !{!70, !65, !"polly.alias.scope.Packed_MemRef_call2"}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !73, !13}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = distinct !{!74, !75, !"polly.alias.scope.MemRef_call"}
!75 = distinct !{!75, !"polly.alias.scope.domain"}
!76 = !{!77, !78, !79, !80}
!77 = distinct !{!77, !75, !"polly.alias.scope.MemRef_call1"}
!78 = distinct !{!78, !75, !"polly.alias.scope.MemRef_call2"}
!79 = distinct !{!79, !75, !"polly.alias.scope.Packed_MemRef_call1"}
!80 = distinct !{!80, !75, !"polly.alias.scope.Packed_MemRef_call2"}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !73, !13}
!83 = distinct !{!83, !84, !"polly.alias.scope.MemRef_call"}
!84 = distinct !{!84, !"polly.alias.scope.domain"}
!85 = !{!86, !87, !88, !89}
!86 = distinct !{!86, !84, !"polly.alias.scope.MemRef_call1"}
!87 = distinct !{!87, !84, !"polly.alias.scope.MemRef_call2"}
!88 = distinct !{!88, !84, !"polly.alias.scope.Packed_MemRef_call1"}
!89 = distinct !{!89, !84, !"polly.alias.scope.Packed_MemRef_call2"}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !73, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !13}
!98 = !{!95, !92}
!99 = distinct !{!99, !13}
!100 = !{!96, !92}
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
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = distinct !{!119, !13}
