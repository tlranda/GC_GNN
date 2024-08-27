; ModuleID = 'syr2k_recreations//mmp_syr2k_S_87.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_87.c"
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
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv7.i, i64 %index987
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
  br i1 %min.iters.check, label %for.body3.i46.preheader1339, label %vector.ph1268

vector.ph1268:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1268
  %index1269 = phi i64 [ 0, %vector.ph1268 ], [ %index.next1270, %vector.body1267 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i, i64 %index1269
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
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i, i64 %indvars.iv18.i
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit569.3
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start268, label %for.cond1.preheader.i54

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
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i52, i64 %index1292
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1296 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1296, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1293 = add i64 %index1292, 4
  %57 = icmp eq i64 %index.next1293, %n.vec1291
  br i1 %57, label %middle.block1285, label %vector.body1287, !llvm.loop !55

middle.block1285:                                 ; preds = %vector.body1287
  %cmp.n1295 = icmp eq i64 %indvars.iv21.i52, %n.vec1291
  br i1 %cmp.n1295, label %for.inc6.i63, label %for.body3.i60.preheader1338

for.body3.i60.preheader1338:                      ; preds = %for.body3.i60.preheader, %middle.block1285
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1291, %middle.block1285 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1338, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1338 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !56

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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit395.3
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
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i91, i64 %index1318
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1322 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1322, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1319 = add i64 %index1318, 4
  %68 = icmp eq i64 %index.next1319, %n.vec1317
  br i1 %68, label %middle.block1311, label %vector.body1313, !llvm.loop !57

middle.block1311:                                 ; preds = %vector.body1313
  %cmp.n1321 = icmp eq i64 %indvars.iv21.i91, %n.vec1317
  br i1 %cmp.n1321, label %for.inc6.i102, label %for.body3.i99.preheader1337

for.body3.i99.preheader1337:                      ; preds = %for.body3.i99.preheader, %middle.block1311
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1317, %middle.block1311 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1337, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1337 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !58

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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit223.3
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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call766, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %indvar1326 = phi i64 [ %indvar.next1327, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
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
  %wide.load1336 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !63, !noalias !65
  %93 = fmul fast <4 x double> %wide.load1336, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !63, !noalias !65
  %index.next1333 = add i64 %index1332, 4
  %95 = icmp eq i64 %index.next1333, %n.vec1331
  br i1 %95, label %middle.block1323, label %vector.body1325, !llvm.loop !69

middle.block1323:                                 ; preds = %vector.body1325
  %cmp.n1335 = icmp eq i64 %88, %n.vec1331
  br i1 %cmp.n1335, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1323
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1331, %middle.block1323 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1323
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond841.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1327 = add i64 %indvar1326, 1
  br i1 %exitcond841.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond840.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond840.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !70

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar202, 80
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_header205
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond839.not = icmp eq i64 %polly.indvar_next203, 60
  br i1 %exitcond839.not, label %polly.loop_header221, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_header205, %polly.loop_header199
  %polly.indvar208 = phi i64 [ 0, %polly.loop_header199 ], [ %polly.indvar_next209, %polly.loop_header205 ]
  %polly.access.mul.call2212 = mul nuw nsw i64 %polly.indvar208, 60
  %polly.access.add.call2213 = add nuw nsw i64 %polly.access.mul.call2212, %polly.indvar202
  %polly.access.call2214 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2213
  %polly.access.call2214.load = load double, double* %polly.access.call2214, align 8, !alias.scope !67, !noalias !72
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar208, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2214.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next209, 80
  br i1 %exitcond838.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header221:                             ; preds = %polly.loop_exit207, %polly.loop_exit229
  %indvars.iv829 = phi i64 [ %indvars.iv.next830, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %indvars.iv825 = phi i64 [ %indvars.iv.next826, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %polly.indvar224 = phi i64 [ %polly.indvar_next225, %polly.loop_exit229 ], [ 0, %polly.loop_exit207 ]
  %97 = shl i64 %polly.indvar224, 3
  %polly.loop_guard = icmp slt i64 %97, 20
  br i1 %polly.loop_guard, label %polly.loop_header227.preheader, label %polly.loop_exit229

polly.loop_header227.preheader:                   ; preds = %polly.loop_header221
  %98 = add i64 %indvars.iv825, %indvars.iv829
  br label %polly.loop_header227

polly.loop_exit229:                               ; preds = %polly.loop_exit235, %polly.loop_header221
  %polly.indvar_next225 = add nuw nsw i64 %polly.indvar224, 1
  %indvars.iv.next826 = add nuw nsw i64 %indvars.iv825, 8
  %indvars.iv.next830 = add nsw i64 %indvars.iv829, -8
  %exitcond836.not = icmp eq i64 %polly.indvar_next225, 3
  br i1 %exitcond836.not, label %polly.loop_header221.1, label %polly.loop_header221

polly.loop_header227:                             ; preds = %polly.loop_header227.preheader, %polly.loop_exit235
  %indvars.iv831 = phi i64 [ %98, %polly.loop_header227.preheader ], [ %indvars.iv.next832, %polly.loop_exit235 ]
  %polly.indvar230 = phi i64 [ %97, %polly.loop_header227.preheader ], [ %polly.indvar_next231, %polly.loop_exit235 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv831, i64 7)
  %99 = sub i64 %polly.indvar230, %97
  %polly.loop_guard243968 = icmp sgt i64 %99, -1
  %100 = mul i64 %polly.indvar230, 480
  %101 = mul i64 %polly.indvar230, 640
  br i1 %polly.loop_guard243968, label %polly.loop_header233.us, label %polly.loop_exit235

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
  %exitcond833.not = icmp eq i64 %polly.indvar_next237.us, 60
  br i1 %exitcond833.not, label %polly.loop_exit235, label %polly.loop_header233.us

polly.loop_exit235:                               ; preds = %polly.loop_exit242.loopexit.us, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %polly.loop_cond232 = icmp ult i64 %polly.indvar230, 19
  %indvars.iv.next832 = add i64 %indvars.iv831, 1
  br i1 %polly.loop_cond232, label %polly.loop_header227, label %polly.loop_exit229

polly.start268:                                   ; preds = %kernel_syr2k.exit
  %malloccall270 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header354

polly.loop_header354:                             ; preds = %polly.loop_exit362, %polly.start268
  %indvar1300 = phi i64 [ %indvar.next1301, %polly.loop_exit362 ], [ 0, %polly.start268 ]
  %polly.indvar357 = phi i64 [ %polly.indvar_next358, %polly.loop_exit362 ], [ 1, %polly.start268 ]
  %107 = add i64 %indvar1300, 1
  %108 = mul nuw nsw i64 %polly.indvar357, 640
  %scevgep366 = getelementptr i8, i8* %call, i64 %108
  %min.iters.check1302 = icmp ult i64 %107, 4
  br i1 %min.iters.check1302, label %polly.loop_header360.preheader, label %vector.ph1303

vector.ph1303:                                    ; preds = %polly.loop_header354
  %n.vec1305 = and i64 %107, -4
  br label %vector.body1299

vector.body1299:                                  ; preds = %vector.body1299, %vector.ph1303
  %index1306 = phi i64 [ 0, %vector.ph1303 ], [ %index.next1307, %vector.body1299 ]
  %109 = shl nuw nsw i64 %index1306, 3
  %110 = getelementptr i8, i8* %scevgep366, i64 %109
  %111 = bitcast i8* %110 to <4 x double>*
  %wide.load1310 = load <4 x double>, <4 x double>* %111, align 8, !alias.scope !74, !noalias !76
  %112 = fmul fast <4 x double> %wide.load1310, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %113 = bitcast i8* %110 to <4 x double>*
  store <4 x double> %112, <4 x double>* %113, align 8, !alias.scope !74, !noalias !76
  %index.next1307 = add i64 %index1306, 4
  %114 = icmp eq i64 %index.next1307, %n.vec1305
  br i1 %114, label %middle.block1297, label %vector.body1299, !llvm.loop !80

middle.block1297:                                 ; preds = %vector.body1299
  %cmp.n1309 = icmp eq i64 %107, %n.vec1305
  br i1 %cmp.n1309, label %polly.loop_exit362, label %polly.loop_header360.preheader

polly.loop_header360.preheader:                   ; preds = %polly.loop_header354, %middle.block1297
  %polly.indvar363.ph = phi i64 [ 0, %polly.loop_header354 ], [ %n.vec1305, %middle.block1297 ]
  br label %polly.loop_header360

polly.loop_exit362:                               ; preds = %polly.loop_header360, %middle.block1297
  %polly.indvar_next358 = add nuw nsw i64 %polly.indvar357, 1
  %exitcond863.not = icmp eq i64 %polly.indvar_next358, 80
  %indvar.next1301 = add i64 %indvar1300, 1
  br i1 %exitcond863.not, label %polly.loop_header370.preheader, label %polly.loop_header354

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
  %exitcond862.not = icmp eq i64 %polly.indvar_next364, %polly.indvar357
  br i1 %exitcond862.not, label %polly.loop_exit362, label %polly.loop_header360, !llvm.loop !81

polly.loop_header370:                             ; preds = %polly.loop_header370.preheader, %polly.loop_exit378
  %polly.indvar373 = phi i64 [ %polly.indvar_next374, %polly.loop_exit378 ], [ 0, %polly.loop_header370.preheader ]
  %polly.access.mul.Packed_MemRef_call2271 = mul nuw nsw i64 %polly.indvar373, 80
  br label %polly.loop_header376

polly.loop_exit378:                               ; preds = %polly.loop_header376
  %polly.indvar_next374 = add nuw nsw i64 %polly.indvar373, 1
  %exitcond861.not = icmp eq i64 %polly.indvar_next374, 60
  br i1 %exitcond861.not, label %polly.loop_header393, label %polly.loop_header370

polly.loop_header376:                             ; preds = %polly.loop_header376, %polly.loop_header370
  %polly.indvar379 = phi i64 [ 0, %polly.loop_header370 ], [ %polly.indvar_next380, %polly.loop_header376 ]
  %polly.access.mul.call2383 = mul nuw nsw i64 %polly.indvar379, 60
  %polly.access.add.call2384 = add nuw nsw i64 %polly.access.mul.call2383, %polly.indvar373
  %polly.access.call2385 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2384
  %polly.access.call2385.load = load double, double* %polly.access.call2385, align 8, !alias.scope !78, !noalias !82
  %polly.access.add.Packed_MemRef_call2271 = add nuw nsw i64 %polly.indvar379, %polly.access.mul.Packed_MemRef_call2271
  %polly.access.Packed_MemRef_call2271 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271
  store double %polly.access.call2385.load, double* %polly.access.Packed_MemRef_call2271, align 8
  %polly.indvar_next380 = add nuw nsw i64 %polly.indvar379, 1
  %exitcond860.not = icmp eq i64 %polly.indvar_next380, 80
  br i1 %exitcond860.not, label %polly.loop_exit378, label %polly.loop_header376

polly.loop_header393:                             ; preds = %polly.loop_exit378, %polly.loop_exit402
  %indvars.iv849 = phi i64 [ %indvars.iv.next850, %polly.loop_exit402 ], [ 0, %polly.loop_exit378 ]
  %indvars.iv844 = phi i64 [ %indvars.iv.next845, %polly.loop_exit402 ], [ 0, %polly.loop_exit378 ]
  %polly.indvar396 = phi i64 [ %polly.indvar_next397, %polly.loop_exit402 ], [ 0, %polly.loop_exit378 ]
  %116 = shl i64 %polly.indvar396, 3
  %polly.loop_guard403 = icmp slt i64 %116, 20
  br i1 %polly.loop_guard403, label %polly.loop_header400.preheader, label %polly.loop_exit402

polly.loop_header400.preheader:                   ; preds = %polly.loop_header393
  %117 = add i64 %indvars.iv844, %indvars.iv849
  br label %polly.loop_header400

polly.loop_exit402:                               ; preds = %polly.loop_exit409, %polly.loop_header393
  %polly.indvar_next397 = add nuw nsw i64 %polly.indvar396, 1
  %indvars.iv.next845 = add nuw nsw i64 %indvars.iv844, 8
  %indvars.iv.next850 = add nsw i64 %indvars.iv849, -8
  %exitcond858.not = icmp eq i64 %polly.indvar_next397, 3
  br i1 %exitcond858.not, label %polly.loop_header393.1, label %polly.loop_header393

polly.loop_header400:                             ; preds = %polly.loop_header400.preheader, %polly.loop_exit409
  %indvars.iv851 = phi i64 [ %117, %polly.loop_header400.preheader ], [ %indvars.iv.next852, %polly.loop_exit409 ]
  %polly.indvar404 = phi i64 [ %116, %polly.loop_header400.preheader ], [ %polly.indvar_next405, %polly.loop_exit409 ]
  %smin853 = call i64 @llvm.smin.i64(i64 %indvars.iv851, i64 7)
  %118 = sub i64 %polly.indvar404, %116
  %polly.loop_guard417972 = icmp sgt i64 %118, -1
  %119 = mul i64 %polly.indvar404, 480
  %120 = mul i64 %polly.indvar404, 640
  br i1 %polly.loop_guard417972, label %polly.loop_header407.us, label %polly.loop_exit409

polly.loop_header407.us:                          ; preds = %polly.loop_header400, %polly.loop_exit416.loopexit.us
  %polly.indvar410.us = phi i64 [ %polly.indvar_next411.us, %polly.loop_exit416.loopexit.us ], [ 0, %polly.loop_header400 ]
  %121 = shl nuw nsw i64 %polly.indvar410.us, 3
  %scevgep421.us = getelementptr i8, i8* %call1, i64 %121
  %polly.access.mul.Packed_MemRef_call2271425.us = mul nuw nsw i64 %polly.indvar410.us, 80
  %polly.access.add.Packed_MemRef_call2271426.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2271425.us, %polly.indvar404
  %polly.access.Packed_MemRef_call2271427.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271426.us
  %_p_scalar_428.us = load double, double* %polly.access.Packed_MemRef_call2271427.us, align 8
  %scevgep434.us = getelementptr i8, i8* %scevgep421.us, i64 %119
  %scevgep434435.us = bitcast i8* %scevgep434.us to double*
  %_p_scalar_436.us = load double, double* %scevgep434435.us, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header414.us

polly.loop_header414.us:                          ; preds = %polly.loop_header414.us, %polly.loop_header407.us
  %polly.indvar418.us = phi i64 [ 0, %polly.loop_header407.us ], [ %polly.indvar_next419.us, %polly.loop_header414.us ]
  %122 = add nuw nsw i64 %polly.indvar418.us, %116
  %123 = mul nuw nsw i64 %122, 480
  %scevgep422.us = getelementptr i8, i8* %scevgep421.us, i64 %123
  %scevgep422423.us = bitcast i8* %scevgep422.us to double*
  %_p_scalar_424.us = load double, double* %scevgep422423.us, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us = fmul fast double %_p_scalar_428.us, %_p_scalar_424.us
  %polly.access.add.Packed_MemRef_call2271430.us = add nuw nsw i64 %122, %polly.access.mul.Packed_MemRef_call2271425.us
  %polly.access.Packed_MemRef_call2271431.us = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271430.us
  %_p_scalar_432.us = load double, double* %polly.access.Packed_MemRef_call2271431.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_436.us, %_p_scalar_432.us
  %124 = shl i64 %122, 3
  %125 = add i64 %124, %120
  %scevgep437.us = getelementptr i8, i8* %call, i64 %125
  %scevgep437438.us = bitcast i8* %scevgep437.us to double*
  %_p_scalar_439.us = load double, double* %scevgep437438.us, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_439.us
  store double %p_add42.i79.us, double* %scevgep437438.us, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next419.us = add nuw nsw i64 %polly.indvar418.us, 1
  %exitcond854.not = icmp eq i64 %polly.indvar418.us, %smin853
  br i1 %exitcond854.not, label %polly.loop_exit416.loopexit.us, label %polly.loop_header414.us

polly.loop_exit416.loopexit.us:                   ; preds = %polly.loop_header414.us
  %polly.indvar_next411.us = add nuw nsw i64 %polly.indvar410.us, 1
  %exitcond855.not = icmp eq i64 %polly.indvar_next411.us, 60
  br i1 %exitcond855.not, label %polly.loop_exit409, label %polly.loop_header407.us

polly.loop_exit409:                               ; preds = %polly.loop_exit416.loopexit.us, %polly.loop_header400
  %polly.indvar_next405 = add nuw nsw i64 %polly.indvar404, 1
  %polly.loop_cond406 = icmp ult i64 %polly.indvar404, 19
  %indvars.iv.next852 = add i64 %indvars.iv851, 1
  br i1 %polly.loop_cond406, label %polly.loop_header400, label %polly.loop_exit402

polly.start442:                                   ; preds = %init_array.exit
  %malloccall444 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  br label %polly.loop_header528

polly.loop_header528:                             ; preds = %polly.loop_exit536, %polly.start442
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit536 ], [ 0, %polly.start442 ]
  %polly.indvar531 = phi i64 [ %polly.indvar_next532, %polly.loop_exit536 ], [ 1, %polly.start442 ]
  %126 = add i64 %indvar, 1
  %127 = mul nuw nsw i64 %polly.indvar531, 640
  %scevgep540 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1276 = icmp ult i64 %126, 4
  br i1 %min.iters.check1276, label %polly.loop_header534.preheader, label %vector.ph1277

vector.ph1277:                                    ; preds = %polly.loop_header528
  %n.vec1279 = and i64 %126, -4
  br label %vector.body1275

vector.body1275:                                  ; preds = %vector.body1275, %vector.ph1277
  %index1280 = phi i64 [ 0, %vector.ph1277 ], [ %index.next1281, %vector.body1275 ]
  %128 = shl nuw nsw i64 %index1280, 3
  %129 = getelementptr i8, i8* %scevgep540, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1284 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !84, !noalias !86
  %131 = fmul fast <4 x double> %wide.load1284, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !84, !noalias !86
  %index.next1281 = add i64 %index1280, 4
  %133 = icmp eq i64 %index.next1281, %n.vec1279
  br i1 %133, label %middle.block1273, label %vector.body1275, !llvm.loop !90

middle.block1273:                                 ; preds = %vector.body1275
  %cmp.n1283 = icmp eq i64 %126, %n.vec1279
  br i1 %cmp.n1283, label %polly.loop_exit536, label %polly.loop_header534.preheader

polly.loop_header534.preheader:                   ; preds = %polly.loop_header528, %middle.block1273
  %polly.indvar537.ph = phi i64 [ 0, %polly.loop_header528 ], [ %n.vec1279, %middle.block1273 ]
  br label %polly.loop_header534

polly.loop_exit536:                               ; preds = %polly.loop_header534, %middle.block1273
  %polly.indvar_next532 = add nuw nsw i64 %polly.indvar531, 1
  %exitcond885.not = icmp eq i64 %polly.indvar_next532, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond885.not, label %polly.loop_header544.preheader, label %polly.loop_header528

polly.loop_header544.preheader:                   ; preds = %polly.loop_exit536
  %Packed_MemRef_call2445 = bitcast i8* %malloccall444 to double*
  br label %polly.loop_header544

polly.loop_header534:                             ; preds = %polly.loop_header534.preheader, %polly.loop_header534
  %polly.indvar537 = phi i64 [ %polly.indvar_next538, %polly.loop_header534 ], [ %polly.indvar537.ph, %polly.loop_header534.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar537, 3
  %scevgep541 = getelementptr i8, i8* %scevgep540, i64 %134
  %scevgep541542 = bitcast i8* %scevgep541 to double*
  %_p_scalar_543 = load double, double* %scevgep541542, align 8, !alias.scope !84, !noalias !86
  %p_mul.i = fmul fast double %_p_scalar_543, 1.200000e+00
  store double %p_mul.i, double* %scevgep541542, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next538 = add nuw nsw i64 %polly.indvar537, 1
  %exitcond884.not = icmp eq i64 %polly.indvar_next538, %polly.indvar531
  br i1 %exitcond884.not, label %polly.loop_exit536, label %polly.loop_header534, !llvm.loop !91

polly.loop_header544:                             ; preds = %polly.loop_header544.preheader, %polly.loop_exit552
  %polly.indvar547 = phi i64 [ %polly.indvar_next548, %polly.loop_exit552 ], [ 0, %polly.loop_header544.preheader ]
  %polly.access.mul.Packed_MemRef_call2445 = mul nuw nsw i64 %polly.indvar547, 80
  br label %polly.loop_header550

polly.loop_exit552:                               ; preds = %polly.loop_header550
  %polly.indvar_next548 = add nuw nsw i64 %polly.indvar547, 1
  %exitcond883.not = icmp eq i64 %polly.indvar_next548, 60
  br i1 %exitcond883.not, label %polly.loop_header567, label %polly.loop_header544

polly.loop_header550:                             ; preds = %polly.loop_header550, %polly.loop_header544
  %polly.indvar553 = phi i64 [ 0, %polly.loop_header544 ], [ %polly.indvar_next554, %polly.loop_header550 ]
  %polly.access.mul.call2557 = mul nuw nsw i64 %polly.indvar553, 60
  %polly.access.add.call2558 = add nuw nsw i64 %polly.access.mul.call2557, %polly.indvar547
  %polly.access.call2559 = getelementptr double, double* %polly.access.cast.call2628, i64 %polly.access.add.call2558
  %polly.access.call2559.load = load double, double* %polly.access.call2559, align 8, !alias.scope !88, !noalias !92
  %polly.access.add.Packed_MemRef_call2445 = add nuw nsw i64 %polly.indvar553, %polly.access.mul.Packed_MemRef_call2445
  %polly.access.Packed_MemRef_call2445 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445
  store double %polly.access.call2559.load, double* %polly.access.Packed_MemRef_call2445, align 8
  %polly.indvar_next554 = add nuw nsw i64 %polly.indvar553, 1
  %exitcond882.not = icmp eq i64 %polly.indvar_next554, 80
  br i1 %exitcond882.not, label %polly.loop_exit552, label %polly.loop_header550

polly.loop_header567:                             ; preds = %polly.loop_exit552, %polly.loop_exit576
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %polly.loop_exit576 ], [ 0, %polly.loop_exit552 ]
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %polly.loop_exit576 ], [ 0, %polly.loop_exit552 ]
  %polly.indvar570 = phi i64 [ %polly.indvar_next571, %polly.loop_exit576 ], [ 0, %polly.loop_exit552 ]
  %135 = shl i64 %polly.indvar570, 3
  %polly.loop_guard577 = icmp slt i64 %135, 20
  br i1 %polly.loop_guard577, label %polly.loop_header574.preheader, label %polly.loop_exit576

polly.loop_header574.preheader:                   ; preds = %polly.loop_header567
  %136 = add i64 %indvars.iv866, %indvars.iv871
  br label %polly.loop_header574

polly.loop_exit576:                               ; preds = %polly.loop_exit583, %polly.loop_header567
  %polly.indvar_next571 = add nuw nsw i64 %polly.indvar570, 1
  %indvars.iv.next867 = add nuw nsw i64 %indvars.iv866, 8
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, -8
  %exitcond880.not = icmp eq i64 %polly.indvar_next571, 3
  br i1 %exitcond880.not, label %polly.loop_header567.1, label %polly.loop_header567

polly.loop_header574:                             ; preds = %polly.loop_header574.preheader, %polly.loop_exit583
  %indvars.iv873 = phi i64 [ %136, %polly.loop_header574.preheader ], [ %indvars.iv.next874, %polly.loop_exit583 ]
  %polly.indvar578 = phi i64 [ %135, %polly.loop_header574.preheader ], [ %polly.indvar_next579, %polly.loop_exit583 ]
  %smin875 = call i64 @llvm.smin.i64(i64 %indvars.iv873, i64 7)
  %137 = sub i64 %polly.indvar578, %135
  %polly.loop_guard591976 = icmp sgt i64 %137, -1
  %138 = mul i64 %polly.indvar578, 480
  %139 = mul i64 %polly.indvar578, 640
  br i1 %polly.loop_guard591976, label %polly.loop_header581.us, label %polly.loop_exit583

polly.loop_header581.us:                          ; preds = %polly.loop_header574, %polly.loop_exit590.loopexit.us
  %polly.indvar584.us = phi i64 [ %polly.indvar_next585.us, %polly.loop_exit590.loopexit.us ], [ 0, %polly.loop_header574 ]
  %140 = shl nuw nsw i64 %polly.indvar584.us, 3
  %scevgep595.us = getelementptr i8, i8* %call1, i64 %140
  %polly.access.mul.Packed_MemRef_call2445599.us = mul nuw nsw i64 %polly.indvar584.us, 80
  %polly.access.add.Packed_MemRef_call2445600.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2445599.us, %polly.indvar578
  %polly.access.Packed_MemRef_call2445601.us = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445600.us
  %_p_scalar_602.us = load double, double* %polly.access.Packed_MemRef_call2445601.us, align 8
  %scevgep608.us = getelementptr i8, i8* %scevgep595.us, i64 %138
  %scevgep608609.us = bitcast i8* %scevgep608.us to double*
  %_p_scalar_610.us = load double, double* %scevgep608609.us, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header588.us

polly.loop_header588.us:                          ; preds = %polly.loop_header588.us, %polly.loop_header581.us
  %polly.indvar592.us = phi i64 [ 0, %polly.loop_header581.us ], [ %polly.indvar_next593.us, %polly.loop_header588.us ]
  %141 = add nuw nsw i64 %polly.indvar592.us, %135
  %142 = mul nuw nsw i64 %141, 480
  %scevgep596.us = getelementptr i8, i8* %scevgep595.us, i64 %142
  %scevgep596597.us = bitcast i8* %scevgep596.us to double*
  %_p_scalar_598.us = load double, double* %scevgep596597.us, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us = fmul fast double %_p_scalar_602.us, %_p_scalar_598.us
  %polly.access.add.Packed_MemRef_call2445604.us = add nuw nsw i64 %141, %polly.access.mul.Packed_MemRef_call2445599.us
  %polly.access.Packed_MemRef_call2445605.us = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445604.us
  %_p_scalar_606.us = load double, double* %polly.access.Packed_MemRef_call2445605.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_610.us, %_p_scalar_606.us
  %143 = shl i64 %141, 3
  %144 = add i64 %143, %139
  %scevgep611.us = getelementptr i8, i8* %call, i64 %144
  %scevgep611612.us = bitcast i8* %scevgep611.us to double*
  %_p_scalar_613.us = load double, double* %scevgep611612.us, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_613.us
  store double %p_add42.i.us, double* %scevgep611612.us, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next593.us = add nuw nsw i64 %polly.indvar592.us, 1
  %exitcond876.not = icmp eq i64 %polly.indvar592.us, %smin875
  br i1 %exitcond876.not, label %polly.loop_exit590.loopexit.us, label %polly.loop_header588.us

polly.loop_exit590.loopexit.us:                   ; preds = %polly.loop_header588.us
  %polly.indvar_next585.us = add nuw nsw i64 %polly.indvar584.us, 1
  %exitcond877.not = icmp eq i64 %polly.indvar_next585.us, 60
  br i1 %exitcond877.not, label %polly.loop_exit583, label %polly.loop_header581.us

polly.loop_exit583:                               ; preds = %polly.loop_exit590.loopexit.us, %polly.loop_header574
  %polly.indvar_next579 = add nuw nsw i64 %polly.indvar578, 1
  %polly.loop_cond580 = icmp ult i64 %polly.indvar578, 19
  %indvars.iv.next874 = add i64 %indvars.iv873, 1
  br i1 %polly.loop_cond580, label %polly.loop_header574, label %polly.loop_exit576

polly.loop_header752:                             ; preds = %entry, %polly.loop_exit760
  %polly.indvar755 = phi i64 [ %polly.indvar_next756, %polly.loop_exit760 ], [ 0, %entry ]
  %145 = mul nuw nsw i64 %polly.indvar755, 640
  %146 = trunc i64 %polly.indvar755 to i32
  %broadcast.splatinsert1007 = insertelement <4 x i32> poison, i32 %146, i32 0
  %broadcast.splat1008 = shufflevector <4 x i32> %broadcast.splatinsert1007, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %polly.loop_header752
  %index999 = phi i64 [ 0, %polly.loop_header752 ], [ %index.next1000, %vector.body997 ]
  %vec.ind1005 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752 ], [ %vec.ind.next1006, %vector.body997 ]
  %147 = mul <4 x i32> %vec.ind1005, %broadcast.splat1008
  %148 = add <4 x i32> %147, <i32 3, i32 3, i32 3, i32 3>
  %149 = urem <4 x i32> %148, <i32 80, i32 80, i32 80, i32 80>
  %150 = sitofp <4 x i32> %149 to <4 x double>
  %151 = fmul fast <4 x double> %150, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %152 = shl i64 %index999, 3
  %153 = add nuw nsw i64 %152, %145
  %154 = getelementptr i8, i8* %call, i64 %153
  %155 = bitcast i8* %154 to <4 x double>*
  store <4 x double> %151, <4 x double>* %155, align 8, !alias.scope !94, !noalias !96
  %index.next1000 = add i64 %index999, 4
  %vec.ind.next1006 = add <4 x i32> %vec.ind1005, <i32 4, i32 4, i32 4, i32 4>
  %156 = icmp eq i64 %index.next1000, 32
  br i1 %156, label %polly.loop_exit760, label %vector.body997, !llvm.loop !99

polly.loop_exit760:                               ; preds = %vector.body997
  %polly.indvar_next756 = add nuw nsw i64 %polly.indvar755, 1
  %exitcond905.not = icmp eq i64 %polly.indvar_next756, 32
  br i1 %exitcond905.not, label %polly.loop_header752.1, label %polly.loop_header752

polly.loop_header779:                             ; preds = %polly.loop_exit760.2.2, %polly.loop_exit787
  %polly.indvar782 = phi i64 [ %polly.indvar_next783, %polly.loop_exit787 ], [ 0, %polly.loop_exit760.2.2 ]
  %157 = mul nuw nsw i64 %polly.indvar782, 480
  %158 = trunc i64 %polly.indvar782 to i32
  %broadcast.splatinsert1121 = insertelement <4 x i32> poison, i32 %158, i32 0
  %broadcast.splat1122 = shufflevector <4 x i32> %broadcast.splatinsert1121, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %polly.loop_header779
  %index1113 = phi i64 [ 0, %polly.loop_header779 ], [ %index.next1114, %vector.body1111 ]
  %vec.ind1119 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779 ], [ %vec.ind.next1120, %vector.body1111 ]
  %159 = mul <4 x i32> %vec.ind1119, %broadcast.splat1122
  %160 = add <4 x i32> %159, <i32 2, i32 2, i32 2, i32 2>
  %161 = urem <4 x i32> %160, <i32 60, i32 60, i32 60, i32 60>
  %162 = sitofp <4 x i32> %161 to <4 x double>
  %163 = fmul fast <4 x double> %162, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %164 = shl i64 %index1113, 3
  %165 = add i64 %164, %157
  %166 = getelementptr i8, i8* %call2, i64 %165
  %167 = bitcast i8* %166 to <4 x double>*
  store <4 x double> %163, <4 x double>* %167, align 8, !alias.scope !98, !noalias !100
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1120 = add <4 x i32> %vec.ind1119, <i32 4, i32 4, i32 4, i32 4>
  %168 = icmp eq i64 %index.next1114, 32
  br i1 %168, label %polly.loop_exit787, label %vector.body1111, !llvm.loop !101

polly.loop_exit787:                               ; preds = %vector.body1111
  %polly.indvar_next783 = add nuw nsw i64 %polly.indvar782, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next783, 32
  br i1 %exitcond896.not, label %polly.loop_header779.1, label %polly.loop_header779

polly.loop_header805:                             ; preds = %polly.loop_exit787.1.2, %polly.loop_exit813
  %polly.indvar808 = phi i64 [ %polly.indvar_next809, %polly.loop_exit813 ], [ 0, %polly.loop_exit787.1.2 ]
  %169 = mul nuw nsw i64 %polly.indvar808, 480
  %170 = trunc i64 %polly.indvar808 to i32
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %170, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %polly.loop_header805
  %index1191 = phi i64 [ 0, %polly.loop_header805 ], [ %index.next1192, %vector.body1189 ]
  %vec.ind1197 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805 ], [ %vec.ind.next1198, %vector.body1189 ]
  %171 = mul <4 x i32> %vec.ind1197, %broadcast.splat1200
  %172 = add <4 x i32> %171, <i32 1, i32 1, i32 1, i32 1>
  %173 = urem <4 x i32> %172, <i32 80, i32 80, i32 80, i32 80>
  %174 = sitofp <4 x i32> %173 to <4 x double>
  %175 = fmul fast <4 x double> %174, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %176 = shl i64 %index1191, 3
  %177 = add i64 %176, %169
  %178 = getelementptr i8, i8* %call1, i64 %177
  %179 = bitcast i8* %178 to <4 x double>*
  store <4 x double> %175, <4 x double>* %179, align 8, !alias.scope !97, !noalias !102
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1198 = add <4 x i32> %vec.ind1197, <i32 4, i32 4, i32 4, i32 4>
  %180 = icmp eq i64 %index.next1192, 32
  br i1 %180, label %polly.loop_exit813, label %vector.body1189, !llvm.loop !103

polly.loop_exit813:                               ; preds = %vector.body1189
  %polly.indvar_next809 = add nuw nsw i64 %polly.indvar808, 1
  %exitcond890.not = icmp eq i64 %polly.indvar_next809, 32
  br i1 %exitcond890.not, label %polly.loop_header805.1, label %polly.loop_header805

polly.loop_header221.1:                           ; preds = %polly.loop_exit229, %polly.loop_exit229.1
  %indvars.iv829.1 = phi i64 [ %indvars.iv.next830.1, %polly.loop_exit229.1 ], [ 20, %polly.loop_exit229 ]
  %indvars.iv825.1 = phi i64 [ %indvars.iv.next826.1, %polly.loop_exit229.1 ], [ -20, %polly.loop_exit229 ]
  %polly.indvar224.1 = phi i64 [ %polly.indvar_next225.1, %polly.loop_exit229.1 ], [ 0, %polly.loop_exit229 ]
  %181 = shl nsw i64 %polly.indvar224.1, 3
  %182 = icmp ugt i64 %181, 20
  %183 = select i1 %182, i64 %181, i64 20
  %polly.loop_guard.1 = icmp slt i64 %183, 40
  br i1 %polly.loop_guard.1, label %polly.loop_header227.preheader.1, label %polly.loop_exit229.1

polly.loop_header227.preheader.1:                 ; preds = %polly.loop_header221.1
  %184 = add nsw i64 %183, -20
  %smax.1 = call i64 @llvm.smax.i64(i64 %indvars.iv825.1, i64 0)
  %185 = add i64 %smax.1, %indvars.iv829.1
  %186 = sub nsw i64 20, %181
  br label %polly.loop_header227.1

polly.loop_header227.1:                           ; preds = %polly.loop_exit235.1, %polly.loop_header227.preheader.1
  %indvars.iv831.1 = phi i64 [ %185, %polly.loop_header227.preheader.1 ], [ %indvars.iv.next832.1, %polly.loop_exit235.1 ]
  %polly.indvar230.1 = phi i64 [ %184, %polly.loop_header227.preheader.1 ], [ %polly.indvar_next231.1, %polly.loop_exit235.1 ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv831.1, i64 7)
  %187 = add nsw i64 %polly.indvar230.1, %186
  %polly.loop_guard243.1967 = icmp sgt i64 %187, -1
  %188 = add nuw nsw i64 %polly.indvar230.1, 20
  %189 = mul i64 %188, 480
  %190 = mul i64 %188, 640
  br i1 %polly.loop_guard243.1967, label %polly.loop_header233.us.1, label %polly.loop_exit235.1

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
  %exitcond833.1.not = icmp eq i64 %polly.indvar_next237.us.1, 60
  br i1 %exitcond833.1.not, label %polly.loop_exit235.1, label %polly.loop_header233.us.1

polly.loop_exit235.1:                             ; preds = %polly.loop_exit242.loopexit.us.1, %polly.loop_header227.1
  %polly.indvar_next231.1 = add nuw nsw i64 %polly.indvar230.1, 1
  %polly.loop_cond232.1 = icmp ult i64 %polly.indvar230.1, 19
  %indvars.iv.next832.1 = add i64 %indvars.iv831.1, 1
  br i1 %polly.loop_cond232.1, label %polly.loop_header227.1, label %polly.loop_exit229.1

polly.loop_exit229.1:                             ; preds = %polly.loop_exit235.1, %polly.loop_header221.1
  %polly.indvar_next225.1 = add nuw nsw i64 %polly.indvar224.1, 1
  %indvars.iv.next826.1 = add nsw i64 %indvars.iv825.1, 8
  %indvars.iv.next830.1 = add nsw i64 %indvars.iv829.1, -8
  %exitcond836.1.not = icmp eq i64 %polly.indvar_next225.1, 5
  br i1 %exitcond836.1.not, label %polly.loop_header221.2, label %polly.loop_header221.1

polly.loop_header221.2:                           ; preds = %polly.loop_exit229.1, %polly.loop_exit229.2
  %indvars.iv829.2 = phi i64 [ %indvars.iv.next830.2, %polly.loop_exit229.2 ], [ 40, %polly.loop_exit229.1 ]
  %indvars.iv825.2 = phi i64 [ %indvars.iv.next826.2, %polly.loop_exit229.2 ], [ -40, %polly.loop_exit229.1 ]
  %polly.indvar224.2 = phi i64 [ %polly.indvar_next225.2, %polly.loop_exit229.2 ], [ 0, %polly.loop_exit229.1 ]
  %196 = shl nsw i64 %polly.indvar224.2, 3
  %197 = icmp ugt i64 %196, 40
  %198 = select i1 %197, i64 %196, i64 40
  %polly.loop_guard.2 = icmp slt i64 %198, 60
  br i1 %polly.loop_guard.2, label %polly.loop_header227.preheader.2, label %polly.loop_exit229.2

polly.loop_header227.preheader.2:                 ; preds = %polly.loop_header221.2
  %199 = add nsw i64 %198, -40
  %smax.2 = call i64 @llvm.smax.i64(i64 %indvars.iv825.2, i64 0)
  %200 = add i64 %smax.2, %indvars.iv829.2
  %201 = sub nsw i64 40, %196
  br label %polly.loop_header227.2

polly.loop_header227.2:                           ; preds = %polly.loop_exit235.2, %polly.loop_header227.preheader.2
  %indvars.iv831.2 = phi i64 [ %200, %polly.loop_header227.preheader.2 ], [ %indvars.iv.next832.2, %polly.loop_exit235.2 ]
  %polly.indvar230.2 = phi i64 [ %199, %polly.loop_header227.preheader.2 ], [ %polly.indvar_next231.2, %polly.loop_exit235.2 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv831.2, i64 7)
  %202 = add nsw i64 %polly.indvar230.2, %201
  %polly.loop_guard243.2966 = icmp sgt i64 %202, -1
  %203 = add nuw nsw i64 %polly.indvar230.2, 40
  %204 = mul i64 %203, 480
  %205 = mul i64 %203, 640
  br i1 %polly.loop_guard243.2966, label %polly.loop_header233.us.2, label %polly.loop_exit235.2

polly.loop_header233.us.2:                        ; preds = %polly.loop_header227.2, %polly.loop_exit242.loopexit.us.2
  %polly.indvar236.us.2 = phi i64 [ %polly.indvar_next237.us.2, %polly.loop_exit242.loopexit.us.2 ], [ 0, %polly.loop_header227.2 ]
  %206 = shl nuw nsw i64 %polly.indvar236.us.2, 3
  %scevgep247.us.2 = getelementptr i8, i8* %call1, i64 %206
  %polly.access.mul.Packed_MemRef_call2251.us.2 = mul nuw nsw i64 %polly.indvar236.us.2, 80
  %polly.access.add.Packed_MemRef_call2252.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2251.us.2, %203
  %polly.access.Packed_MemRef_call2253.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.us.2
  %_p_scalar_254.us.2 = load double, double* %polly.access.Packed_MemRef_call2253.us.2, align 8
  %scevgep260.us.2 = getelementptr i8, i8* %scevgep247.us.2, i64 %204
  %scevgep260261.us.2 = bitcast i8* %scevgep260.us.2 to double*
  %_p_scalar_262.us.2 = load double, double* %scevgep260261.us.2, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header240.us.2

polly.loop_header240.us.2:                        ; preds = %polly.loop_header240.us.2, %polly.loop_header233.us.2
  %polly.indvar244.us.2 = phi i64 [ 0, %polly.loop_header233.us.2 ], [ %polly.indvar_next245.us.2, %polly.loop_header240.us.2 ]
  %207 = add nuw nsw i64 %polly.indvar244.us.2, %196
  %208 = mul nuw nsw i64 %207, 480
  %scevgep248.us.2 = getelementptr i8, i8* %scevgep247.us.2, i64 %208
  %scevgep248249.us.2 = bitcast i8* %scevgep248.us.2 to double*
  %_p_scalar_250.us.2 = load double, double* %scevgep248249.us.2, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_254.us.2, %_p_scalar_250.us.2
  %polly.access.add.Packed_MemRef_call2256.us.2 = add nuw nsw i64 %207, %polly.access.mul.Packed_MemRef_call2251.us.2
  %polly.access.Packed_MemRef_call2257.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.us.2
  %_p_scalar_258.us.2 = load double, double* %polly.access.Packed_MemRef_call2257.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_262.us.2, %_p_scalar_258.us.2
  %209 = shl i64 %207, 3
  %210 = add i64 %209, %205
  %scevgep263.us.2 = getelementptr i8, i8* %call, i64 %210
  %scevgep263264.us.2 = bitcast i8* %scevgep263.us.2 to double*
  %_p_scalar_265.us.2 = load double, double* %scevgep263264.us.2, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_265.us.2
  store double %p_add42.i118.us.2, double* %scevgep263264.us.2, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next245.us.2 = add nuw nsw i64 %polly.indvar244.us.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar244.us.2, %smin.2
  br i1 %exitcond.2.not, label %polly.loop_exit242.loopexit.us.2, label %polly.loop_header240.us.2

polly.loop_exit242.loopexit.us.2:                 ; preds = %polly.loop_header240.us.2
  %polly.indvar_next237.us.2 = add nuw nsw i64 %polly.indvar236.us.2, 1
  %exitcond833.2.not = icmp eq i64 %polly.indvar_next237.us.2, 60
  br i1 %exitcond833.2.not, label %polly.loop_exit235.2, label %polly.loop_header233.us.2

polly.loop_exit235.2:                             ; preds = %polly.loop_exit242.loopexit.us.2, %polly.loop_header227.2
  %polly.indvar_next231.2 = add nuw nsw i64 %polly.indvar230.2, 1
  %polly.loop_cond232.2 = icmp ult i64 %polly.indvar230.2, 19
  %indvars.iv.next832.2 = add i64 %indvars.iv831.2, 1
  br i1 %polly.loop_cond232.2, label %polly.loop_header227.2, label %polly.loop_exit229.2

polly.loop_exit229.2:                             ; preds = %polly.loop_exit235.2, %polly.loop_header221.2
  %polly.indvar_next225.2 = add nuw nsw i64 %polly.indvar224.2, 1
  %indvars.iv.next826.2 = add nsw i64 %indvars.iv825.2, 8
  %indvars.iv.next830.2 = add nsw i64 %indvars.iv829.2, -8
  %exitcond836.2.not = icmp eq i64 %polly.indvar_next225.2, 8
  br i1 %exitcond836.2.not, label %polly.loop_header221.3, label %polly.loop_header221.2

polly.loop_header221.3:                           ; preds = %polly.loop_exit229.2, %polly.loop_exit229.3
  %indvars.iv829.3 = phi i64 [ %indvars.iv.next830.3, %polly.loop_exit229.3 ], [ 60, %polly.loop_exit229.2 ]
  %indvars.iv825.3 = phi i64 [ %indvars.iv.next826.3, %polly.loop_exit229.3 ], [ -60, %polly.loop_exit229.2 ]
  %polly.indvar224.3 = phi i64 [ %polly.indvar_next225.3, %polly.loop_exit229.3 ], [ 0, %polly.loop_exit229.2 ]
  %211 = shl nsw i64 %polly.indvar224.3, 3
  %212 = icmp ugt i64 %211, 60
  %213 = select i1 %212, i64 %211, i64 60
  %polly.loop_guard.3 = icmp slt i64 %213, 80
  br i1 %polly.loop_guard.3, label %polly.loop_header227.preheader.3, label %polly.loop_exit229.3

polly.loop_header227.preheader.3:                 ; preds = %polly.loop_header221.3
  %214 = add nsw i64 %213, -60
  %smax.3 = call i64 @llvm.smax.i64(i64 %indvars.iv825.3, i64 0)
  %215 = add i64 %smax.3, %indvars.iv829.3
  %216 = sub nsw i64 60, %211
  br label %polly.loop_header227.3

polly.loop_header227.3:                           ; preds = %polly.loop_exit235.3, %polly.loop_header227.preheader.3
  %indvars.iv831.3 = phi i64 [ %215, %polly.loop_header227.preheader.3 ], [ %indvars.iv.next832.3, %polly.loop_exit235.3 ]
  %polly.indvar230.3 = phi i64 [ %214, %polly.loop_header227.preheader.3 ], [ %polly.indvar_next231.3, %polly.loop_exit235.3 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv831.3, i64 7)
  %217 = add nsw i64 %polly.indvar230.3, %216
  %polly.loop_guard243.3965 = icmp sgt i64 %217, -1
  %218 = add nuw nsw i64 %polly.indvar230.3, 60
  %219 = mul i64 %218, 480
  %220 = mul i64 %218, 640
  br i1 %polly.loop_guard243.3965, label %polly.loop_header233.us.3, label %polly.loop_exit235.3

polly.loop_header233.us.3:                        ; preds = %polly.loop_header227.3, %polly.loop_exit242.loopexit.us.3
  %polly.indvar236.us.3 = phi i64 [ %polly.indvar_next237.us.3, %polly.loop_exit242.loopexit.us.3 ], [ 0, %polly.loop_header227.3 ]
  %221 = shl nuw nsw i64 %polly.indvar236.us.3, 3
  %scevgep247.us.3 = getelementptr i8, i8* %call1, i64 %221
  %polly.access.mul.Packed_MemRef_call2251.us.3 = mul nuw nsw i64 %polly.indvar236.us.3, 80
  %polly.access.add.Packed_MemRef_call2252.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2251.us.3, %218
  %polly.access.Packed_MemRef_call2253.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2252.us.3
  %_p_scalar_254.us.3 = load double, double* %polly.access.Packed_MemRef_call2253.us.3, align 8
  %scevgep260.us.3 = getelementptr i8, i8* %scevgep247.us.3, i64 %219
  %scevgep260261.us.3 = bitcast i8* %scevgep260.us.3 to double*
  %_p_scalar_262.us.3 = load double, double* %scevgep260261.us.3, align 8, !alias.scope !66, !noalias !73
  br label %polly.loop_header240.us.3

polly.loop_header240.us.3:                        ; preds = %polly.loop_header240.us.3, %polly.loop_header233.us.3
  %polly.indvar244.us.3 = phi i64 [ 0, %polly.loop_header233.us.3 ], [ %polly.indvar_next245.us.3, %polly.loop_header240.us.3 ]
  %222 = add nuw nsw i64 %polly.indvar244.us.3, %211
  %223 = mul nuw nsw i64 %222, 480
  %scevgep248.us.3 = getelementptr i8, i8* %scevgep247.us.3, i64 %223
  %scevgep248249.us.3 = bitcast i8* %scevgep248.us.3 to double*
  %_p_scalar_250.us.3 = load double, double* %scevgep248249.us.3, align 8, !alias.scope !66, !noalias !73
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_254.us.3, %_p_scalar_250.us.3
  %polly.access.add.Packed_MemRef_call2256.us.3 = add nuw nsw i64 %222, %polly.access.mul.Packed_MemRef_call2251.us.3
  %polly.access.Packed_MemRef_call2257.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2256.us.3
  %_p_scalar_258.us.3 = load double, double* %polly.access.Packed_MemRef_call2257.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_262.us.3, %_p_scalar_258.us.3
  %224 = shl i64 %222, 3
  %225 = add i64 %224, %220
  %scevgep263.us.3 = getelementptr i8, i8* %call, i64 %225
  %scevgep263264.us.3 = bitcast i8* %scevgep263.us.3 to double*
  %_p_scalar_265.us.3 = load double, double* %scevgep263264.us.3, align 8, !alias.scope !63, !noalias !65
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_265.us.3
  store double %p_add42.i118.us.3, double* %scevgep263264.us.3, align 8, !alias.scope !63, !noalias !65
  %polly.indvar_next245.us.3 = add nuw nsw i64 %polly.indvar244.us.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar244.us.3, %smin.3
  br i1 %exitcond.3.not, label %polly.loop_exit242.loopexit.us.3, label %polly.loop_header240.us.3

polly.loop_exit242.loopexit.us.3:                 ; preds = %polly.loop_header240.us.3
  %polly.indvar_next237.us.3 = add nuw nsw i64 %polly.indvar236.us.3, 1
  %exitcond833.3.not = icmp eq i64 %polly.indvar_next237.us.3, 60
  br i1 %exitcond833.3.not, label %polly.loop_exit235.3, label %polly.loop_header233.us.3

polly.loop_exit235.3:                             ; preds = %polly.loop_exit242.loopexit.us.3, %polly.loop_header227.3
  %polly.indvar_next231.3 = add nuw nsw i64 %polly.indvar230.3, 1
  %polly.loop_cond232.3 = icmp ult i64 %polly.indvar230.3, 19
  %indvars.iv.next832.3 = add i64 %indvars.iv831.3, 1
  br i1 %polly.loop_cond232.3, label %polly.loop_header227.3, label %polly.loop_exit229.3

polly.loop_exit229.3:                             ; preds = %polly.loop_exit235.3, %polly.loop_header221.3
  %polly.indvar_next225.3 = add nuw nsw i64 %polly.indvar224.3, 1
  %indvars.iv.next826.3 = add nsw i64 %indvars.iv825.3, 8
  %indvars.iv.next830.3 = add nsw i64 %indvars.iv829.3, -8
  %exitcond836.3.not = icmp eq i64 %polly.indvar_next225.3, 10
  br i1 %exitcond836.3.not, label %polly.loop_exit223.3, label %polly.loop_header221.3

polly.loop_exit223.3:                             ; preds = %polly.loop_exit229.3
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header393.1:                           ; preds = %polly.loop_exit402, %polly.loop_exit402.1
  %indvars.iv849.1 = phi i64 [ %indvars.iv.next850.1, %polly.loop_exit402.1 ], [ 20, %polly.loop_exit402 ]
  %indvars.iv844.1 = phi i64 [ %indvars.iv.next845.1, %polly.loop_exit402.1 ], [ -20, %polly.loop_exit402 ]
  %polly.indvar396.1 = phi i64 [ %polly.indvar_next397.1, %polly.loop_exit402.1 ], [ 0, %polly.loop_exit402 ]
  %226 = shl nsw i64 %polly.indvar396.1, 3
  %227 = icmp ugt i64 %226, 20
  %228 = select i1 %227, i64 %226, i64 20
  %polly.loop_guard403.1 = icmp slt i64 %228, 40
  br i1 %polly.loop_guard403.1, label %polly.loop_header400.preheader.1, label %polly.loop_exit402.1

polly.loop_header400.preheader.1:                 ; preds = %polly.loop_header393.1
  %229 = add nsw i64 %228, -20
  %smax846.1 = call i64 @llvm.smax.i64(i64 %indvars.iv844.1, i64 0)
  %230 = add i64 %smax846.1, %indvars.iv849.1
  %231 = sub nsw i64 20, %226
  br label %polly.loop_header400.1

polly.loop_header400.1:                           ; preds = %polly.loop_exit409.1, %polly.loop_header400.preheader.1
  %indvars.iv851.1 = phi i64 [ %230, %polly.loop_header400.preheader.1 ], [ %indvars.iv.next852.1, %polly.loop_exit409.1 ]
  %polly.indvar404.1 = phi i64 [ %229, %polly.loop_header400.preheader.1 ], [ %polly.indvar_next405.1, %polly.loop_exit409.1 ]
  %smin853.1 = call i64 @llvm.smin.i64(i64 %indvars.iv851.1, i64 7)
  %232 = add nsw i64 %polly.indvar404.1, %231
  %polly.loop_guard417.1971 = icmp sgt i64 %232, -1
  %233 = add nuw nsw i64 %polly.indvar404.1, 20
  %234 = mul i64 %233, 480
  %235 = mul i64 %233, 640
  br i1 %polly.loop_guard417.1971, label %polly.loop_header407.us.1, label %polly.loop_exit409.1

polly.loop_header407.us.1:                        ; preds = %polly.loop_header400.1, %polly.loop_exit416.loopexit.us.1
  %polly.indvar410.us.1 = phi i64 [ %polly.indvar_next411.us.1, %polly.loop_exit416.loopexit.us.1 ], [ 0, %polly.loop_header400.1 ]
  %236 = shl nuw nsw i64 %polly.indvar410.us.1, 3
  %scevgep421.us.1 = getelementptr i8, i8* %call1, i64 %236
  %polly.access.mul.Packed_MemRef_call2271425.us.1 = mul nuw nsw i64 %polly.indvar410.us.1, 80
  %polly.access.add.Packed_MemRef_call2271426.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2271425.us.1, %233
  %polly.access.Packed_MemRef_call2271427.us.1 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271426.us.1
  %_p_scalar_428.us.1 = load double, double* %polly.access.Packed_MemRef_call2271427.us.1, align 8
  %scevgep434.us.1 = getelementptr i8, i8* %scevgep421.us.1, i64 %234
  %scevgep434435.us.1 = bitcast i8* %scevgep434.us.1 to double*
  %_p_scalar_436.us.1 = load double, double* %scevgep434435.us.1, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header414.us.1

polly.loop_header414.us.1:                        ; preds = %polly.loop_header414.us.1, %polly.loop_header407.us.1
  %polly.indvar418.us.1 = phi i64 [ 0, %polly.loop_header407.us.1 ], [ %polly.indvar_next419.us.1, %polly.loop_header414.us.1 ]
  %237 = add nuw nsw i64 %polly.indvar418.us.1, %226
  %238 = mul nuw nsw i64 %237, 480
  %scevgep422.us.1 = getelementptr i8, i8* %scevgep421.us.1, i64 %238
  %scevgep422423.us.1 = bitcast i8* %scevgep422.us.1 to double*
  %_p_scalar_424.us.1 = load double, double* %scevgep422423.us.1, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_428.us.1, %_p_scalar_424.us.1
  %polly.access.add.Packed_MemRef_call2271430.us.1 = add nuw nsw i64 %237, %polly.access.mul.Packed_MemRef_call2271425.us.1
  %polly.access.Packed_MemRef_call2271431.us.1 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271430.us.1
  %_p_scalar_432.us.1 = load double, double* %polly.access.Packed_MemRef_call2271431.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_436.us.1, %_p_scalar_432.us.1
  %239 = shl i64 %237, 3
  %240 = add i64 %239, %235
  %scevgep437.us.1 = getelementptr i8, i8* %call, i64 %240
  %scevgep437438.us.1 = bitcast i8* %scevgep437.us.1 to double*
  %_p_scalar_439.us.1 = load double, double* %scevgep437438.us.1, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_439.us.1
  store double %p_add42.i79.us.1, double* %scevgep437438.us.1, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next419.us.1 = add nuw nsw i64 %polly.indvar418.us.1, 1
  %exitcond854.1.not = icmp eq i64 %polly.indvar418.us.1, %smin853.1
  br i1 %exitcond854.1.not, label %polly.loop_exit416.loopexit.us.1, label %polly.loop_header414.us.1

polly.loop_exit416.loopexit.us.1:                 ; preds = %polly.loop_header414.us.1
  %polly.indvar_next411.us.1 = add nuw nsw i64 %polly.indvar410.us.1, 1
  %exitcond855.1.not = icmp eq i64 %polly.indvar_next411.us.1, 60
  br i1 %exitcond855.1.not, label %polly.loop_exit409.1, label %polly.loop_header407.us.1

polly.loop_exit409.1:                             ; preds = %polly.loop_exit416.loopexit.us.1, %polly.loop_header400.1
  %polly.indvar_next405.1 = add nuw nsw i64 %polly.indvar404.1, 1
  %polly.loop_cond406.1 = icmp ult i64 %polly.indvar404.1, 19
  %indvars.iv.next852.1 = add i64 %indvars.iv851.1, 1
  br i1 %polly.loop_cond406.1, label %polly.loop_header400.1, label %polly.loop_exit402.1

polly.loop_exit402.1:                             ; preds = %polly.loop_exit409.1, %polly.loop_header393.1
  %polly.indvar_next397.1 = add nuw nsw i64 %polly.indvar396.1, 1
  %indvars.iv.next845.1 = add nsw i64 %indvars.iv844.1, 8
  %indvars.iv.next850.1 = add nsw i64 %indvars.iv849.1, -8
  %exitcond858.1.not = icmp eq i64 %polly.indvar_next397.1, 5
  br i1 %exitcond858.1.not, label %polly.loop_header393.2, label %polly.loop_header393.1

polly.loop_header393.2:                           ; preds = %polly.loop_exit402.1, %polly.loop_exit402.2
  %indvars.iv849.2 = phi i64 [ %indvars.iv.next850.2, %polly.loop_exit402.2 ], [ 40, %polly.loop_exit402.1 ]
  %indvars.iv844.2 = phi i64 [ %indvars.iv.next845.2, %polly.loop_exit402.2 ], [ -40, %polly.loop_exit402.1 ]
  %polly.indvar396.2 = phi i64 [ %polly.indvar_next397.2, %polly.loop_exit402.2 ], [ 0, %polly.loop_exit402.1 ]
  %241 = shl nsw i64 %polly.indvar396.2, 3
  %242 = icmp ugt i64 %241, 40
  %243 = select i1 %242, i64 %241, i64 40
  %polly.loop_guard403.2 = icmp slt i64 %243, 60
  br i1 %polly.loop_guard403.2, label %polly.loop_header400.preheader.2, label %polly.loop_exit402.2

polly.loop_header400.preheader.2:                 ; preds = %polly.loop_header393.2
  %244 = add nsw i64 %243, -40
  %smax846.2 = call i64 @llvm.smax.i64(i64 %indvars.iv844.2, i64 0)
  %245 = add i64 %smax846.2, %indvars.iv849.2
  %246 = sub nsw i64 40, %241
  br label %polly.loop_header400.2

polly.loop_header400.2:                           ; preds = %polly.loop_exit409.2, %polly.loop_header400.preheader.2
  %indvars.iv851.2 = phi i64 [ %245, %polly.loop_header400.preheader.2 ], [ %indvars.iv.next852.2, %polly.loop_exit409.2 ]
  %polly.indvar404.2 = phi i64 [ %244, %polly.loop_header400.preheader.2 ], [ %polly.indvar_next405.2, %polly.loop_exit409.2 ]
  %smin853.2 = call i64 @llvm.smin.i64(i64 %indvars.iv851.2, i64 7)
  %247 = add nsw i64 %polly.indvar404.2, %246
  %polly.loop_guard417.2970 = icmp sgt i64 %247, -1
  %248 = add nuw nsw i64 %polly.indvar404.2, 40
  %249 = mul i64 %248, 480
  %250 = mul i64 %248, 640
  br i1 %polly.loop_guard417.2970, label %polly.loop_header407.us.2, label %polly.loop_exit409.2

polly.loop_header407.us.2:                        ; preds = %polly.loop_header400.2, %polly.loop_exit416.loopexit.us.2
  %polly.indvar410.us.2 = phi i64 [ %polly.indvar_next411.us.2, %polly.loop_exit416.loopexit.us.2 ], [ 0, %polly.loop_header400.2 ]
  %251 = shl nuw nsw i64 %polly.indvar410.us.2, 3
  %scevgep421.us.2 = getelementptr i8, i8* %call1, i64 %251
  %polly.access.mul.Packed_MemRef_call2271425.us.2 = mul nuw nsw i64 %polly.indvar410.us.2, 80
  %polly.access.add.Packed_MemRef_call2271426.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2271425.us.2, %248
  %polly.access.Packed_MemRef_call2271427.us.2 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271426.us.2
  %_p_scalar_428.us.2 = load double, double* %polly.access.Packed_MemRef_call2271427.us.2, align 8
  %scevgep434.us.2 = getelementptr i8, i8* %scevgep421.us.2, i64 %249
  %scevgep434435.us.2 = bitcast i8* %scevgep434.us.2 to double*
  %_p_scalar_436.us.2 = load double, double* %scevgep434435.us.2, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header414.us.2

polly.loop_header414.us.2:                        ; preds = %polly.loop_header414.us.2, %polly.loop_header407.us.2
  %polly.indvar418.us.2 = phi i64 [ 0, %polly.loop_header407.us.2 ], [ %polly.indvar_next419.us.2, %polly.loop_header414.us.2 ]
  %252 = add nuw nsw i64 %polly.indvar418.us.2, %241
  %253 = mul nuw nsw i64 %252, 480
  %scevgep422.us.2 = getelementptr i8, i8* %scevgep421.us.2, i64 %253
  %scevgep422423.us.2 = bitcast i8* %scevgep422.us.2 to double*
  %_p_scalar_424.us.2 = load double, double* %scevgep422423.us.2, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_428.us.2, %_p_scalar_424.us.2
  %polly.access.add.Packed_MemRef_call2271430.us.2 = add nuw nsw i64 %252, %polly.access.mul.Packed_MemRef_call2271425.us.2
  %polly.access.Packed_MemRef_call2271431.us.2 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271430.us.2
  %_p_scalar_432.us.2 = load double, double* %polly.access.Packed_MemRef_call2271431.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_436.us.2, %_p_scalar_432.us.2
  %254 = shl i64 %252, 3
  %255 = add i64 %254, %250
  %scevgep437.us.2 = getelementptr i8, i8* %call, i64 %255
  %scevgep437438.us.2 = bitcast i8* %scevgep437.us.2 to double*
  %_p_scalar_439.us.2 = load double, double* %scevgep437438.us.2, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_439.us.2
  store double %p_add42.i79.us.2, double* %scevgep437438.us.2, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next419.us.2 = add nuw nsw i64 %polly.indvar418.us.2, 1
  %exitcond854.2.not = icmp eq i64 %polly.indvar418.us.2, %smin853.2
  br i1 %exitcond854.2.not, label %polly.loop_exit416.loopexit.us.2, label %polly.loop_header414.us.2

polly.loop_exit416.loopexit.us.2:                 ; preds = %polly.loop_header414.us.2
  %polly.indvar_next411.us.2 = add nuw nsw i64 %polly.indvar410.us.2, 1
  %exitcond855.2.not = icmp eq i64 %polly.indvar_next411.us.2, 60
  br i1 %exitcond855.2.not, label %polly.loop_exit409.2, label %polly.loop_header407.us.2

polly.loop_exit409.2:                             ; preds = %polly.loop_exit416.loopexit.us.2, %polly.loop_header400.2
  %polly.indvar_next405.2 = add nuw nsw i64 %polly.indvar404.2, 1
  %polly.loop_cond406.2 = icmp ult i64 %polly.indvar404.2, 19
  %indvars.iv.next852.2 = add i64 %indvars.iv851.2, 1
  br i1 %polly.loop_cond406.2, label %polly.loop_header400.2, label %polly.loop_exit402.2

polly.loop_exit402.2:                             ; preds = %polly.loop_exit409.2, %polly.loop_header393.2
  %polly.indvar_next397.2 = add nuw nsw i64 %polly.indvar396.2, 1
  %indvars.iv.next845.2 = add nsw i64 %indvars.iv844.2, 8
  %indvars.iv.next850.2 = add nsw i64 %indvars.iv849.2, -8
  %exitcond858.2.not = icmp eq i64 %polly.indvar_next397.2, 8
  br i1 %exitcond858.2.not, label %polly.loop_header393.3, label %polly.loop_header393.2

polly.loop_header393.3:                           ; preds = %polly.loop_exit402.2, %polly.loop_exit402.3
  %indvars.iv849.3 = phi i64 [ %indvars.iv.next850.3, %polly.loop_exit402.3 ], [ 60, %polly.loop_exit402.2 ]
  %indvars.iv844.3 = phi i64 [ %indvars.iv.next845.3, %polly.loop_exit402.3 ], [ -60, %polly.loop_exit402.2 ]
  %polly.indvar396.3 = phi i64 [ %polly.indvar_next397.3, %polly.loop_exit402.3 ], [ 0, %polly.loop_exit402.2 ]
  %256 = shl nsw i64 %polly.indvar396.3, 3
  %257 = icmp ugt i64 %256, 60
  %258 = select i1 %257, i64 %256, i64 60
  %polly.loop_guard403.3 = icmp slt i64 %258, 80
  br i1 %polly.loop_guard403.3, label %polly.loop_header400.preheader.3, label %polly.loop_exit402.3

polly.loop_header400.preheader.3:                 ; preds = %polly.loop_header393.3
  %259 = add nsw i64 %258, -60
  %smax846.3 = call i64 @llvm.smax.i64(i64 %indvars.iv844.3, i64 0)
  %260 = add i64 %smax846.3, %indvars.iv849.3
  %261 = sub nsw i64 60, %256
  br label %polly.loop_header400.3

polly.loop_header400.3:                           ; preds = %polly.loop_exit409.3, %polly.loop_header400.preheader.3
  %indvars.iv851.3 = phi i64 [ %260, %polly.loop_header400.preheader.3 ], [ %indvars.iv.next852.3, %polly.loop_exit409.3 ]
  %polly.indvar404.3 = phi i64 [ %259, %polly.loop_header400.preheader.3 ], [ %polly.indvar_next405.3, %polly.loop_exit409.3 ]
  %smin853.3 = call i64 @llvm.smin.i64(i64 %indvars.iv851.3, i64 7)
  %262 = add nsw i64 %polly.indvar404.3, %261
  %polly.loop_guard417.3969 = icmp sgt i64 %262, -1
  %263 = add nuw nsw i64 %polly.indvar404.3, 60
  %264 = mul i64 %263, 480
  %265 = mul i64 %263, 640
  br i1 %polly.loop_guard417.3969, label %polly.loop_header407.us.3, label %polly.loop_exit409.3

polly.loop_header407.us.3:                        ; preds = %polly.loop_header400.3, %polly.loop_exit416.loopexit.us.3
  %polly.indvar410.us.3 = phi i64 [ %polly.indvar_next411.us.3, %polly.loop_exit416.loopexit.us.3 ], [ 0, %polly.loop_header400.3 ]
  %266 = shl nuw nsw i64 %polly.indvar410.us.3, 3
  %scevgep421.us.3 = getelementptr i8, i8* %call1, i64 %266
  %polly.access.mul.Packed_MemRef_call2271425.us.3 = mul nuw nsw i64 %polly.indvar410.us.3, 80
  %polly.access.add.Packed_MemRef_call2271426.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2271425.us.3, %263
  %polly.access.Packed_MemRef_call2271427.us.3 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271426.us.3
  %_p_scalar_428.us.3 = load double, double* %polly.access.Packed_MemRef_call2271427.us.3, align 8
  %scevgep434.us.3 = getelementptr i8, i8* %scevgep421.us.3, i64 %264
  %scevgep434435.us.3 = bitcast i8* %scevgep434.us.3 to double*
  %_p_scalar_436.us.3 = load double, double* %scevgep434435.us.3, align 8, !alias.scope !77, !noalias !83
  br label %polly.loop_header414.us.3

polly.loop_header414.us.3:                        ; preds = %polly.loop_header414.us.3, %polly.loop_header407.us.3
  %polly.indvar418.us.3 = phi i64 [ 0, %polly.loop_header407.us.3 ], [ %polly.indvar_next419.us.3, %polly.loop_header414.us.3 ]
  %267 = add nuw nsw i64 %polly.indvar418.us.3, %256
  %268 = mul nuw nsw i64 %267, 480
  %scevgep422.us.3 = getelementptr i8, i8* %scevgep421.us.3, i64 %268
  %scevgep422423.us.3 = bitcast i8* %scevgep422.us.3 to double*
  %_p_scalar_424.us.3 = load double, double* %scevgep422423.us.3, align 8, !alias.scope !77, !noalias !83
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_428.us.3, %_p_scalar_424.us.3
  %polly.access.add.Packed_MemRef_call2271430.us.3 = add nuw nsw i64 %267, %polly.access.mul.Packed_MemRef_call2271425.us.3
  %polly.access.Packed_MemRef_call2271431.us.3 = getelementptr double, double* %Packed_MemRef_call2271, i64 %polly.access.add.Packed_MemRef_call2271430.us.3
  %_p_scalar_432.us.3 = load double, double* %polly.access.Packed_MemRef_call2271431.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_436.us.3, %_p_scalar_432.us.3
  %269 = shl i64 %267, 3
  %270 = add i64 %269, %265
  %scevgep437.us.3 = getelementptr i8, i8* %call, i64 %270
  %scevgep437438.us.3 = bitcast i8* %scevgep437.us.3 to double*
  %_p_scalar_439.us.3 = load double, double* %scevgep437438.us.3, align 8, !alias.scope !74, !noalias !76
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_439.us.3
  store double %p_add42.i79.us.3, double* %scevgep437438.us.3, align 8, !alias.scope !74, !noalias !76
  %polly.indvar_next419.us.3 = add nuw nsw i64 %polly.indvar418.us.3, 1
  %exitcond854.3.not = icmp eq i64 %polly.indvar418.us.3, %smin853.3
  br i1 %exitcond854.3.not, label %polly.loop_exit416.loopexit.us.3, label %polly.loop_header414.us.3

polly.loop_exit416.loopexit.us.3:                 ; preds = %polly.loop_header414.us.3
  %polly.indvar_next411.us.3 = add nuw nsw i64 %polly.indvar410.us.3, 1
  %exitcond855.3.not = icmp eq i64 %polly.indvar_next411.us.3, 60
  br i1 %exitcond855.3.not, label %polly.loop_exit409.3, label %polly.loop_header407.us.3

polly.loop_exit409.3:                             ; preds = %polly.loop_exit416.loopexit.us.3, %polly.loop_header400.3
  %polly.indvar_next405.3 = add nuw nsw i64 %polly.indvar404.3, 1
  %polly.loop_cond406.3 = icmp ult i64 %polly.indvar404.3, 19
  %indvars.iv.next852.3 = add i64 %indvars.iv851.3, 1
  br i1 %polly.loop_cond406.3, label %polly.loop_header400.3, label %polly.loop_exit402.3

polly.loop_exit402.3:                             ; preds = %polly.loop_exit409.3, %polly.loop_header393.3
  %polly.indvar_next397.3 = add nuw nsw i64 %polly.indvar396.3, 1
  %indvars.iv.next845.3 = add nsw i64 %indvars.iv844.3, 8
  %indvars.iv.next850.3 = add nsw i64 %indvars.iv849.3, -8
  %exitcond858.3.not = icmp eq i64 %polly.indvar_next397.3, 10
  br i1 %exitcond858.3.not, label %polly.loop_exit395.3, label %polly.loop_header393.3

polly.loop_exit395.3:                             ; preds = %polly.loop_exit402.3
  tail call void @free(i8* %malloccall270)
  br label %kernel_syr2k.exit90

polly.loop_header567.1:                           ; preds = %polly.loop_exit576, %polly.loop_exit576.1
  %indvars.iv871.1 = phi i64 [ %indvars.iv.next872.1, %polly.loop_exit576.1 ], [ 20, %polly.loop_exit576 ]
  %indvars.iv866.1 = phi i64 [ %indvars.iv.next867.1, %polly.loop_exit576.1 ], [ -20, %polly.loop_exit576 ]
  %polly.indvar570.1 = phi i64 [ %polly.indvar_next571.1, %polly.loop_exit576.1 ], [ 0, %polly.loop_exit576 ]
  %271 = shl nsw i64 %polly.indvar570.1, 3
  %272 = icmp ugt i64 %271, 20
  %273 = select i1 %272, i64 %271, i64 20
  %polly.loop_guard577.1 = icmp slt i64 %273, 40
  br i1 %polly.loop_guard577.1, label %polly.loop_header574.preheader.1, label %polly.loop_exit576.1

polly.loop_header574.preheader.1:                 ; preds = %polly.loop_header567.1
  %274 = add nsw i64 %273, -20
  %smax868.1 = call i64 @llvm.smax.i64(i64 %indvars.iv866.1, i64 0)
  %275 = add i64 %smax868.1, %indvars.iv871.1
  %276 = sub nsw i64 20, %271
  br label %polly.loop_header574.1

polly.loop_header574.1:                           ; preds = %polly.loop_exit583.1, %polly.loop_header574.preheader.1
  %indvars.iv873.1 = phi i64 [ %275, %polly.loop_header574.preheader.1 ], [ %indvars.iv.next874.1, %polly.loop_exit583.1 ]
  %polly.indvar578.1 = phi i64 [ %274, %polly.loop_header574.preheader.1 ], [ %polly.indvar_next579.1, %polly.loop_exit583.1 ]
  %smin875.1 = call i64 @llvm.smin.i64(i64 %indvars.iv873.1, i64 7)
  %277 = add nsw i64 %polly.indvar578.1, %276
  %polly.loop_guard591.1975 = icmp sgt i64 %277, -1
  %278 = add nuw nsw i64 %polly.indvar578.1, 20
  %279 = mul i64 %278, 480
  %280 = mul i64 %278, 640
  br i1 %polly.loop_guard591.1975, label %polly.loop_header581.us.1, label %polly.loop_exit583.1

polly.loop_header581.us.1:                        ; preds = %polly.loop_header574.1, %polly.loop_exit590.loopexit.us.1
  %polly.indvar584.us.1 = phi i64 [ %polly.indvar_next585.us.1, %polly.loop_exit590.loopexit.us.1 ], [ 0, %polly.loop_header574.1 ]
  %281 = shl nuw nsw i64 %polly.indvar584.us.1, 3
  %scevgep595.us.1 = getelementptr i8, i8* %call1, i64 %281
  %polly.access.mul.Packed_MemRef_call2445599.us.1 = mul nuw nsw i64 %polly.indvar584.us.1, 80
  %polly.access.add.Packed_MemRef_call2445600.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2445599.us.1, %278
  %polly.access.Packed_MemRef_call2445601.us.1 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445600.us.1
  %_p_scalar_602.us.1 = load double, double* %polly.access.Packed_MemRef_call2445601.us.1, align 8
  %scevgep608.us.1 = getelementptr i8, i8* %scevgep595.us.1, i64 %279
  %scevgep608609.us.1 = bitcast i8* %scevgep608.us.1 to double*
  %_p_scalar_610.us.1 = load double, double* %scevgep608609.us.1, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header588.us.1

polly.loop_header588.us.1:                        ; preds = %polly.loop_header588.us.1, %polly.loop_header581.us.1
  %polly.indvar592.us.1 = phi i64 [ 0, %polly.loop_header581.us.1 ], [ %polly.indvar_next593.us.1, %polly.loop_header588.us.1 ]
  %282 = add nuw nsw i64 %polly.indvar592.us.1, %271
  %283 = mul nuw nsw i64 %282, 480
  %scevgep596.us.1 = getelementptr i8, i8* %scevgep595.us.1, i64 %283
  %scevgep596597.us.1 = bitcast i8* %scevgep596.us.1 to double*
  %_p_scalar_598.us.1 = load double, double* %scevgep596597.us.1, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_602.us.1, %_p_scalar_598.us.1
  %polly.access.add.Packed_MemRef_call2445604.us.1 = add nuw nsw i64 %282, %polly.access.mul.Packed_MemRef_call2445599.us.1
  %polly.access.Packed_MemRef_call2445605.us.1 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445604.us.1
  %_p_scalar_606.us.1 = load double, double* %polly.access.Packed_MemRef_call2445605.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_610.us.1, %_p_scalar_606.us.1
  %284 = shl i64 %282, 3
  %285 = add i64 %284, %280
  %scevgep611.us.1 = getelementptr i8, i8* %call, i64 %285
  %scevgep611612.us.1 = bitcast i8* %scevgep611.us.1 to double*
  %_p_scalar_613.us.1 = load double, double* %scevgep611612.us.1, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_613.us.1
  store double %p_add42.i.us.1, double* %scevgep611612.us.1, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next593.us.1 = add nuw nsw i64 %polly.indvar592.us.1, 1
  %exitcond876.1.not = icmp eq i64 %polly.indvar592.us.1, %smin875.1
  br i1 %exitcond876.1.not, label %polly.loop_exit590.loopexit.us.1, label %polly.loop_header588.us.1

polly.loop_exit590.loopexit.us.1:                 ; preds = %polly.loop_header588.us.1
  %polly.indvar_next585.us.1 = add nuw nsw i64 %polly.indvar584.us.1, 1
  %exitcond877.1.not = icmp eq i64 %polly.indvar_next585.us.1, 60
  br i1 %exitcond877.1.not, label %polly.loop_exit583.1, label %polly.loop_header581.us.1

polly.loop_exit583.1:                             ; preds = %polly.loop_exit590.loopexit.us.1, %polly.loop_header574.1
  %polly.indvar_next579.1 = add nuw nsw i64 %polly.indvar578.1, 1
  %polly.loop_cond580.1 = icmp ult i64 %polly.indvar578.1, 19
  %indvars.iv.next874.1 = add i64 %indvars.iv873.1, 1
  br i1 %polly.loop_cond580.1, label %polly.loop_header574.1, label %polly.loop_exit576.1

polly.loop_exit576.1:                             ; preds = %polly.loop_exit583.1, %polly.loop_header567.1
  %polly.indvar_next571.1 = add nuw nsw i64 %polly.indvar570.1, 1
  %indvars.iv.next867.1 = add nsw i64 %indvars.iv866.1, 8
  %indvars.iv.next872.1 = add nsw i64 %indvars.iv871.1, -8
  %exitcond880.1.not = icmp eq i64 %polly.indvar_next571.1, 5
  br i1 %exitcond880.1.not, label %polly.loop_header567.2, label %polly.loop_header567.1

polly.loop_header567.2:                           ; preds = %polly.loop_exit576.1, %polly.loop_exit576.2
  %indvars.iv871.2 = phi i64 [ %indvars.iv.next872.2, %polly.loop_exit576.2 ], [ 40, %polly.loop_exit576.1 ]
  %indvars.iv866.2 = phi i64 [ %indvars.iv.next867.2, %polly.loop_exit576.2 ], [ -40, %polly.loop_exit576.1 ]
  %polly.indvar570.2 = phi i64 [ %polly.indvar_next571.2, %polly.loop_exit576.2 ], [ 0, %polly.loop_exit576.1 ]
  %286 = shl nsw i64 %polly.indvar570.2, 3
  %287 = icmp ugt i64 %286, 40
  %288 = select i1 %287, i64 %286, i64 40
  %polly.loop_guard577.2 = icmp slt i64 %288, 60
  br i1 %polly.loop_guard577.2, label %polly.loop_header574.preheader.2, label %polly.loop_exit576.2

polly.loop_header574.preheader.2:                 ; preds = %polly.loop_header567.2
  %289 = add nsw i64 %288, -40
  %smax868.2 = call i64 @llvm.smax.i64(i64 %indvars.iv866.2, i64 0)
  %290 = add i64 %smax868.2, %indvars.iv871.2
  %291 = sub nsw i64 40, %286
  br label %polly.loop_header574.2

polly.loop_header574.2:                           ; preds = %polly.loop_exit583.2, %polly.loop_header574.preheader.2
  %indvars.iv873.2 = phi i64 [ %290, %polly.loop_header574.preheader.2 ], [ %indvars.iv.next874.2, %polly.loop_exit583.2 ]
  %polly.indvar578.2 = phi i64 [ %289, %polly.loop_header574.preheader.2 ], [ %polly.indvar_next579.2, %polly.loop_exit583.2 ]
  %smin875.2 = call i64 @llvm.smin.i64(i64 %indvars.iv873.2, i64 7)
  %292 = add nsw i64 %polly.indvar578.2, %291
  %polly.loop_guard591.2974 = icmp sgt i64 %292, -1
  %293 = add nuw nsw i64 %polly.indvar578.2, 40
  %294 = mul i64 %293, 480
  %295 = mul i64 %293, 640
  br i1 %polly.loop_guard591.2974, label %polly.loop_header581.us.2, label %polly.loop_exit583.2

polly.loop_header581.us.2:                        ; preds = %polly.loop_header574.2, %polly.loop_exit590.loopexit.us.2
  %polly.indvar584.us.2 = phi i64 [ %polly.indvar_next585.us.2, %polly.loop_exit590.loopexit.us.2 ], [ 0, %polly.loop_header574.2 ]
  %296 = shl nuw nsw i64 %polly.indvar584.us.2, 3
  %scevgep595.us.2 = getelementptr i8, i8* %call1, i64 %296
  %polly.access.mul.Packed_MemRef_call2445599.us.2 = mul nuw nsw i64 %polly.indvar584.us.2, 80
  %polly.access.add.Packed_MemRef_call2445600.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2445599.us.2, %293
  %polly.access.Packed_MemRef_call2445601.us.2 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445600.us.2
  %_p_scalar_602.us.2 = load double, double* %polly.access.Packed_MemRef_call2445601.us.2, align 8
  %scevgep608.us.2 = getelementptr i8, i8* %scevgep595.us.2, i64 %294
  %scevgep608609.us.2 = bitcast i8* %scevgep608.us.2 to double*
  %_p_scalar_610.us.2 = load double, double* %scevgep608609.us.2, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header588.us.2

polly.loop_header588.us.2:                        ; preds = %polly.loop_header588.us.2, %polly.loop_header581.us.2
  %polly.indvar592.us.2 = phi i64 [ 0, %polly.loop_header581.us.2 ], [ %polly.indvar_next593.us.2, %polly.loop_header588.us.2 ]
  %297 = add nuw nsw i64 %polly.indvar592.us.2, %286
  %298 = mul nuw nsw i64 %297, 480
  %scevgep596.us.2 = getelementptr i8, i8* %scevgep595.us.2, i64 %298
  %scevgep596597.us.2 = bitcast i8* %scevgep596.us.2 to double*
  %_p_scalar_598.us.2 = load double, double* %scevgep596597.us.2, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_602.us.2, %_p_scalar_598.us.2
  %polly.access.add.Packed_MemRef_call2445604.us.2 = add nuw nsw i64 %297, %polly.access.mul.Packed_MemRef_call2445599.us.2
  %polly.access.Packed_MemRef_call2445605.us.2 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445604.us.2
  %_p_scalar_606.us.2 = load double, double* %polly.access.Packed_MemRef_call2445605.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_610.us.2, %_p_scalar_606.us.2
  %299 = shl i64 %297, 3
  %300 = add i64 %299, %295
  %scevgep611.us.2 = getelementptr i8, i8* %call, i64 %300
  %scevgep611612.us.2 = bitcast i8* %scevgep611.us.2 to double*
  %_p_scalar_613.us.2 = load double, double* %scevgep611612.us.2, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_613.us.2
  store double %p_add42.i.us.2, double* %scevgep611612.us.2, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next593.us.2 = add nuw nsw i64 %polly.indvar592.us.2, 1
  %exitcond876.2.not = icmp eq i64 %polly.indvar592.us.2, %smin875.2
  br i1 %exitcond876.2.not, label %polly.loop_exit590.loopexit.us.2, label %polly.loop_header588.us.2

polly.loop_exit590.loopexit.us.2:                 ; preds = %polly.loop_header588.us.2
  %polly.indvar_next585.us.2 = add nuw nsw i64 %polly.indvar584.us.2, 1
  %exitcond877.2.not = icmp eq i64 %polly.indvar_next585.us.2, 60
  br i1 %exitcond877.2.not, label %polly.loop_exit583.2, label %polly.loop_header581.us.2

polly.loop_exit583.2:                             ; preds = %polly.loop_exit590.loopexit.us.2, %polly.loop_header574.2
  %polly.indvar_next579.2 = add nuw nsw i64 %polly.indvar578.2, 1
  %polly.loop_cond580.2 = icmp ult i64 %polly.indvar578.2, 19
  %indvars.iv.next874.2 = add i64 %indvars.iv873.2, 1
  br i1 %polly.loop_cond580.2, label %polly.loop_header574.2, label %polly.loop_exit576.2

polly.loop_exit576.2:                             ; preds = %polly.loop_exit583.2, %polly.loop_header567.2
  %polly.indvar_next571.2 = add nuw nsw i64 %polly.indvar570.2, 1
  %indvars.iv.next867.2 = add nsw i64 %indvars.iv866.2, 8
  %indvars.iv.next872.2 = add nsw i64 %indvars.iv871.2, -8
  %exitcond880.2.not = icmp eq i64 %polly.indvar_next571.2, 8
  br i1 %exitcond880.2.not, label %polly.loop_header567.3, label %polly.loop_header567.2

polly.loop_header567.3:                           ; preds = %polly.loop_exit576.2, %polly.loop_exit576.3
  %indvars.iv871.3 = phi i64 [ %indvars.iv.next872.3, %polly.loop_exit576.3 ], [ 60, %polly.loop_exit576.2 ]
  %indvars.iv866.3 = phi i64 [ %indvars.iv.next867.3, %polly.loop_exit576.3 ], [ -60, %polly.loop_exit576.2 ]
  %polly.indvar570.3 = phi i64 [ %polly.indvar_next571.3, %polly.loop_exit576.3 ], [ 0, %polly.loop_exit576.2 ]
  %301 = shl nsw i64 %polly.indvar570.3, 3
  %302 = icmp ugt i64 %301, 60
  %303 = select i1 %302, i64 %301, i64 60
  %polly.loop_guard577.3 = icmp slt i64 %303, 80
  br i1 %polly.loop_guard577.3, label %polly.loop_header574.preheader.3, label %polly.loop_exit576.3

polly.loop_header574.preheader.3:                 ; preds = %polly.loop_header567.3
  %304 = add nsw i64 %303, -60
  %smax868.3 = call i64 @llvm.smax.i64(i64 %indvars.iv866.3, i64 0)
  %305 = add i64 %smax868.3, %indvars.iv871.3
  %306 = sub nsw i64 60, %301
  br label %polly.loop_header574.3

polly.loop_header574.3:                           ; preds = %polly.loop_exit583.3, %polly.loop_header574.preheader.3
  %indvars.iv873.3 = phi i64 [ %305, %polly.loop_header574.preheader.3 ], [ %indvars.iv.next874.3, %polly.loop_exit583.3 ]
  %polly.indvar578.3 = phi i64 [ %304, %polly.loop_header574.preheader.3 ], [ %polly.indvar_next579.3, %polly.loop_exit583.3 ]
  %smin875.3 = call i64 @llvm.smin.i64(i64 %indvars.iv873.3, i64 7)
  %307 = add nsw i64 %polly.indvar578.3, %306
  %polly.loop_guard591.3973 = icmp sgt i64 %307, -1
  %308 = add nuw nsw i64 %polly.indvar578.3, 60
  %309 = mul i64 %308, 480
  %310 = mul i64 %308, 640
  br i1 %polly.loop_guard591.3973, label %polly.loop_header581.us.3, label %polly.loop_exit583.3

polly.loop_header581.us.3:                        ; preds = %polly.loop_header574.3, %polly.loop_exit590.loopexit.us.3
  %polly.indvar584.us.3 = phi i64 [ %polly.indvar_next585.us.3, %polly.loop_exit590.loopexit.us.3 ], [ 0, %polly.loop_header574.3 ]
  %311 = shl nuw nsw i64 %polly.indvar584.us.3, 3
  %scevgep595.us.3 = getelementptr i8, i8* %call1, i64 %311
  %polly.access.mul.Packed_MemRef_call2445599.us.3 = mul nuw nsw i64 %polly.indvar584.us.3, 80
  %polly.access.add.Packed_MemRef_call2445600.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2445599.us.3, %308
  %polly.access.Packed_MemRef_call2445601.us.3 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445600.us.3
  %_p_scalar_602.us.3 = load double, double* %polly.access.Packed_MemRef_call2445601.us.3, align 8
  %scevgep608.us.3 = getelementptr i8, i8* %scevgep595.us.3, i64 %309
  %scevgep608609.us.3 = bitcast i8* %scevgep608.us.3 to double*
  %_p_scalar_610.us.3 = load double, double* %scevgep608609.us.3, align 8, !alias.scope !87, !noalias !93
  br label %polly.loop_header588.us.3

polly.loop_header588.us.3:                        ; preds = %polly.loop_header588.us.3, %polly.loop_header581.us.3
  %polly.indvar592.us.3 = phi i64 [ 0, %polly.loop_header581.us.3 ], [ %polly.indvar_next593.us.3, %polly.loop_header588.us.3 ]
  %312 = add nuw nsw i64 %polly.indvar592.us.3, %301
  %313 = mul nuw nsw i64 %312, 480
  %scevgep596.us.3 = getelementptr i8, i8* %scevgep595.us.3, i64 %313
  %scevgep596597.us.3 = bitcast i8* %scevgep596.us.3 to double*
  %_p_scalar_598.us.3 = load double, double* %scevgep596597.us.3, align 8, !alias.scope !87, !noalias !93
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_602.us.3, %_p_scalar_598.us.3
  %polly.access.add.Packed_MemRef_call2445604.us.3 = add nuw nsw i64 %312, %polly.access.mul.Packed_MemRef_call2445599.us.3
  %polly.access.Packed_MemRef_call2445605.us.3 = getelementptr double, double* %Packed_MemRef_call2445, i64 %polly.access.add.Packed_MemRef_call2445604.us.3
  %_p_scalar_606.us.3 = load double, double* %polly.access.Packed_MemRef_call2445605.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_610.us.3, %_p_scalar_606.us.3
  %314 = shl i64 %312, 3
  %315 = add i64 %314, %310
  %scevgep611.us.3 = getelementptr i8, i8* %call, i64 %315
  %scevgep611612.us.3 = bitcast i8* %scevgep611.us.3 to double*
  %_p_scalar_613.us.3 = load double, double* %scevgep611612.us.3, align 8, !alias.scope !84, !noalias !86
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_613.us.3
  store double %p_add42.i.us.3, double* %scevgep611612.us.3, align 8, !alias.scope !84, !noalias !86
  %polly.indvar_next593.us.3 = add nuw nsw i64 %polly.indvar592.us.3, 1
  %exitcond876.3.not = icmp eq i64 %polly.indvar592.us.3, %smin875.3
  br i1 %exitcond876.3.not, label %polly.loop_exit590.loopexit.us.3, label %polly.loop_header588.us.3

polly.loop_exit590.loopexit.us.3:                 ; preds = %polly.loop_header588.us.3
  %polly.indvar_next585.us.3 = add nuw nsw i64 %polly.indvar584.us.3, 1
  %exitcond877.3.not = icmp eq i64 %polly.indvar_next585.us.3, 60
  br i1 %exitcond877.3.not, label %polly.loop_exit583.3, label %polly.loop_header581.us.3

polly.loop_exit583.3:                             ; preds = %polly.loop_exit590.loopexit.us.3, %polly.loop_header574.3
  %polly.indvar_next579.3 = add nuw nsw i64 %polly.indvar578.3, 1
  %polly.loop_cond580.3 = icmp ult i64 %polly.indvar578.3, 19
  %indvars.iv.next874.3 = add i64 %indvars.iv873.3, 1
  br i1 %polly.loop_cond580.3, label %polly.loop_header574.3, label %polly.loop_exit576.3

polly.loop_exit576.3:                             ; preds = %polly.loop_exit583.3, %polly.loop_header567.3
  %polly.indvar_next571.3 = add nuw nsw i64 %polly.indvar570.3, 1
  %indvars.iv.next867.3 = add nsw i64 %indvars.iv866.3, 8
  %indvars.iv.next872.3 = add nsw i64 %indvars.iv871.3, -8
  %exitcond880.3.not = icmp eq i64 %polly.indvar_next571.3, 10
  br i1 %exitcond880.3.not, label %polly.loop_exit569.3, label %polly.loop_header567.3

polly.loop_exit569.3:                             ; preds = %polly.loop_exit576.3
  tail call void @free(i8* %malloccall444)
  br label %kernel_syr2k.exit

polly.loop_header805.1:                           ; preds = %polly.loop_exit813, %polly.loop_exit813.1
  %polly.indvar808.1 = phi i64 [ %polly.indvar_next809.1, %polly.loop_exit813.1 ], [ 0, %polly.loop_exit813 ]
  %316 = mul nuw nsw i64 %polly.indvar808.1, 480
  %317 = trunc i64 %polly.indvar808.1 to i32
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %317, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %polly.loop_header805.1
  %index1205 = phi i64 [ 0, %polly.loop_header805.1 ], [ %index.next1206, %vector.body1203 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1 ], [ %vec.ind.next1210, %vector.body1203 ]
  %318 = add nuw nsw <4 x i64> %vec.ind1209, <i64 32, i64 32, i64 32, i64 32>
  %319 = trunc <4 x i64> %318 to <4 x i32>
  %320 = mul <4 x i32> %broadcast.splat1212, %319
  %321 = add <4 x i32> %320, <i32 1, i32 1, i32 1, i32 1>
  %322 = urem <4 x i32> %321, <i32 80, i32 80, i32 80, i32 80>
  %323 = sitofp <4 x i32> %322 to <4 x double>
  %324 = fmul fast <4 x double> %323, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %325 = extractelement <4 x i64> %318, i32 0
  %326 = shl i64 %325, 3
  %327 = add i64 %326, %316
  %328 = getelementptr i8, i8* %call1, i64 %327
  %329 = bitcast i8* %328 to <4 x double>*
  store <4 x double> %324, <4 x double>* %329, align 8, !alias.scope !97, !noalias !102
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %330 = icmp eq i64 %index.next1206, 28
  br i1 %330, label %polly.loop_exit813.1, label %vector.body1203, !llvm.loop !104

polly.loop_exit813.1:                             ; preds = %vector.body1203
  %polly.indvar_next809.1 = add nuw nsw i64 %polly.indvar808.1, 1
  %exitcond890.1.not = icmp eq i64 %polly.indvar_next809.1, 32
  br i1 %exitcond890.1.not, label %polly.loop_header805.1910, label %polly.loop_header805.1

polly.loop_header805.1910:                        ; preds = %polly.loop_exit813.1, %polly.loop_exit813.1921
  %polly.indvar808.1909 = phi i64 [ %polly.indvar_next809.1919, %polly.loop_exit813.1921 ], [ 0, %polly.loop_exit813.1 ]
  %331 = add nuw nsw i64 %polly.indvar808.1909, 32
  %332 = mul nuw nsw i64 %331, 480
  %333 = trunc i64 %331 to i32
  %broadcast.splatinsert1225 = insertelement <4 x i32> poison, i32 %333, i32 0
  %broadcast.splat1226 = shufflevector <4 x i32> %broadcast.splatinsert1225, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %polly.loop_header805.1910
  %index1217 = phi i64 [ 0, %polly.loop_header805.1910 ], [ %index.next1218, %vector.body1215 ]
  %vec.ind1223 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.1910 ], [ %vec.ind.next1224, %vector.body1215 ]
  %334 = mul <4 x i32> %vec.ind1223, %broadcast.splat1226
  %335 = add <4 x i32> %334, <i32 1, i32 1, i32 1, i32 1>
  %336 = urem <4 x i32> %335, <i32 80, i32 80, i32 80, i32 80>
  %337 = sitofp <4 x i32> %336 to <4 x double>
  %338 = fmul fast <4 x double> %337, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %339 = shl i64 %index1217, 3
  %340 = add i64 %339, %332
  %341 = getelementptr i8, i8* %call1, i64 %340
  %342 = bitcast i8* %341 to <4 x double>*
  store <4 x double> %338, <4 x double>* %342, align 8, !alias.scope !97, !noalias !102
  %index.next1218 = add i64 %index1217, 4
  %vec.ind.next1224 = add <4 x i32> %vec.ind1223, <i32 4, i32 4, i32 4, i32 4>
  %343 = icmp eq i64 %index.next1218, 32
  br i1 %343, label %polly.loop_exit813.1921, label %vector.body1215, !llvm.loop !105

polly.loop_exit813.1921:                          ; preds = %vector.body1215
  %polly.indvar_next809.1919 = add nuw nsw i64 %polly.indvar808.1909, 1
  %exitcond890.1920.not = icmp eq i64 %polly.indvar_next809.1919, 32
  br i1 %exitcond890.1920.not, label %polly.loop_header805.1.1, label %polly.loop_header805.1910

polly.loop_header805.1.1:                         ; preds = %polly.loop_exit813.1921, %polly.loop_exit813.1.1
  %polly.indvar808.1.1 = phi i64 [ %polly.indvar_next809.1.1, %polly.loop_exit813.1.1 ], [ 0, %polly.loop_exit813.1921 ]
  %344 = add nuw nsw i64 %polly.indvar808.1.1, 32
  %345 = mul nuw nsw i64 %344, 480
  %346 = trunc i64 %344 to i32
  %broadcast.splatinsert1237 = insertelement <4 x i32> poison, i32 %346, i32 0
  %broadcast.splat1238 = shufflevector <4 x i32> %broadcast.splatinsert1237, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1229

vector.body1229:                                  ; preds = %vector.body1229, %polly.loop_header805.1.1
  %index1231 = phi i64 [ 0, %polly.loop_header805.1.1 ], [ %index.next1232, %vector.body1229 ]
  %vec.ind1235 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.1 ], [ %vec.ind.next1236, %vector.body1229 ]
  %347 = add nuw nsw <4 x i64> %vec.ind1235, <i64 32, i64 32, i64 32, i64 32>
  %348 = trunc <4 x i64> %347 to <4 x i32>
  %349 = mul <4 x i32> %broadcast.splat1238, %348
  %350 = add <4 x i32> %349, <i32 1, i32 1, i32 1, i32 1>
  %351 = urem <4 x i32> %350, <i32 80, i32 80, i32 80, i32 80>
  %352 = sitofp <4 x i32> %351 to <4 x double>
  %353 = fmul fast <4 x double> %352, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %354 = extractelement <4 x i64> %347, i32 0
  %355 = shl i64 %354, 3
  %356 = add i64 %355, %345
  %357 = getelementptr i8, i8* %call1, i64 %356
  %358 = bitcast i8* %357 to <4 x double>*
  store <4 x double> %353, <4 x double>* %358, align 8, !alias.scope !97, !noalias !102
  %index.next1232 = add i64 %index1231, 4
  %vec.ind.next1236 = add <4 x i64> %vec.ind1235, <i64 4, i64 4, i64 4, i64 4>
  %359 = icmp eq i64 %index.next1232, 28
  br i1 %359, label %polly.loop_exit813.1.1, label %vector.body1229, !llvm.loop !106

polly.loop_exit813.1.1:                           ; preds = %vector.body1229
  %polly.indvar_next809.1.1 = add nuw nsw i64 %polly.indvar808.1.1, 1
  %exitcond890.1.1.not = icmp eq i64 %polly.indvar_next809.1.1, 32
  br i1 %exitcond890.1.1.not, label %polly.loop_header805.2, label %polly.loop_header805.1.1

polly.loop_header805.2:                           ; preds = %polly.loop_exit813.1.1, %polly.loop_exit813.2
  %polly.indvar808.2 = phi i64 [ %polly.indvar_next809.2, %polly.loop_exit813.2 ], [ 0, %polly.loop_exit813.1.1 ]
  %360 = add nuw nsw i64 %polly.indvar808.2, 64
  %361 = mul nuw nsw i64 %360, 480
  %362 = trunc i64 %360 to i32
  %broadcast.splatinsert1251 = insertelement <4 x i32> poison, i32 %362, i32 0
  %broadcast.splat1252 = shufflevector <4 x i32> %broadcast.splatinsert1251, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1241

vector.body1241:                                  ; preds = %vector.body1241, %polly.loop_header805.2
  %index1243 = phi i64 [ 0, %polly.loop_header805.2 ], [ %index.next1244, %vector.body1241 ]
  %vec.ind1249 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header805.2 ], [ %vec.ind.next1250, %vector.body1241 ]
  %363 = mul <4 x i32> %vec.ind1249, %broadcast.splat1252
  %364 = add <4 x i32> %363, <i32 1, i32 1, i32 1, i32 1>
  %365 = urem <4 x i32> %364, <i32 80, i32 80, i32 80, i32 80>
  %366 = sitofp <4 x i32> %365 to <4 x double>
  %367 = fmul fast <4 x double> %366, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %368 = shl i64 %index1243, 3
  %369 = add i64 %368, %361
  %370 = getelementptr i8, i8* %call1, i64 %369
  %371 = bitcast i8* %370 to <4 x double>*
  store <4 x double> %367, <4 x double>* %371, align 8, !alias.scope !97, !noalias !102
  %index.next1244 = add i64 %index1243, 4
  %vec.ind.next1250 = add <4 x i32> %vec.ind1249, <i32 4, i32 4, i32 4, i32 4>
  %372 = icmp eq i64 %index.next1244, 32
  br i1 %372, label %polly.loop_exit813.2, label %vector.body1241, !llvm.loop !107

polly.loop_exit813.2:                             ; preds = %vector.body1241
  %polly.indvar_next809.2 = add nuw nsw i64 %polly.indvar808.2, 1
  %exitcond890.2.not = icmp eq i64 %polly.indvar_next809.2, 16
  br i1 %exitcond890.2.not, label %polly.loop_header805.1.2, label %polly.loop_header805.2

polly.loop_header805.1.2:                         ; preds = %polly.loop_exit813.2, %polly.loop_exit813.1.2
  %polly.indvar808.1.2 = phi i64 [ %polly.indvar_next809.1.2, %polly.loop_exit813.1.2 ], [ 0, %polly.loop_exit813.2 ]
  %373 = add nuw nsw i64 %polly.indvar808.1.2, 64
  %374 = mul nuw nsw i64 %373, 480
  %375 = trunc i64 %373 to i32
  %broadcast.splatinsert1263 = insertelement <4 x i32> poison, i32 %375, i32 0
  %broadcast.splat1264 = shufflevector <4 x i32> %broadcast.splatinsert1263, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1255

vector.body1255:                                  ; preds = %vector.body1255, %polly.loop_header805.1.2
  %index1257 = phi i64 [ 0, %polly.loop_header805.1.2 ], [ %index.next1258, %vector.body1255 ]
  %vec.ind1261 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header805.1.2 ], [ %vec.ind.next1262, %vector.body1255 ]
  %376 = add nuw nsw <4 x i64> %vec.ind1261, <i64 32, i64 32, i64 32, i64 32>
  %377 = trunc <4 x i64> %376 to <4 x i32>
  %378 = mul <4 x i32> %broadcast.splat1264, %377
  %379 = add <4 x i32> %378, <i32 1, i32 1, i32 1, i32 1>
  %380 = urem <4 x i32> %379, <i32 80, i32 80, i32 80, i32 80>
  %381 = sitofp <4 x i32> %380 to <4 x double>
  %382 = fmul fast <4 x double> %381, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %383 = extractelement <4 x i64> %376, i32 0
  %384 = shl i64 %383, 3
  %385 = add i64 %384, %374
  %386 = getelementptr i8, i8* %call1, i64 %385
  %387 = bitcast i8* %386 to <4 x double>*
  store <4 x double> %382, <4 x double>* %387, align 8, !alias.scope !97, !noalias !102
  %index.next1258 = add i64 %index1257, 4
  %vec.ind.next1262 = add <4 x i64> %vec.ind1261, <i64 4, i64 4, i64 4, i64 4>
  %388 = icmp eq i64 %index.next1258, 28
  br i1 %388, label %polly.loop_exit813.1.2, label %vector.body1255, !llvm.loop !108

polly.loop_exit813.1.2:                           ; preds = %vector.body1255
  %polly.indvar_next809.1.2 = add nuw nsw i64 %polly.indvar808.1.2, 1
  %exitcond890.1.2.not = icmp eq i64 %polly.indvar_next809.1.2, 16
  br i1 %exitcond890.1.2.not, label %init_array.exit, label %polly.loop_header805.1.2

polly.loop_header779.1:                           ; preds = %polly.loop_exit787, %polly.loop_exit787.1
  %polly.indvar782.1 = phi i64 [ %polly.indvar_next783.1, %polly.loop_exit787.1 ], [ 0, %polly.loop_exit787 ]
  %389 = mul nuw nsw i64 %polly.indvar782.1, 480
  %390 = trunc i64 %polly.indvar782.1 to i32
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %390, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %polly.loop_header779.1
  %index1127 = phi i64 [ 0, %polly.loop_header779.1 ], [ %index.next1128, %vector.body1125 ]
  %vec.ind1131 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1 ], [ %vec.ind.next1132, %vector.body1125 ]
  %391 = add nuw nsw <4 x i64> %vec.ind1131, <i64 32, i64 32, i64 32, i64 32>
  %392 = trunc <4 x i64> %391 to <4 x i32>
  %393 = mul <4 x i32> %broadcast.splat1134, %392
  %394 = add <4 x i32> %393, <i32 2, i32 2, i32 2, i32 2>
  %395 = urem <4 x i32> %394, <i32 60, i32 60, i32 60, i32 60>
  %396 = sitofp <4 x i32> %395 to <4 x double>
  %397 = fmul fast <4 x double> %396, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %398 = extractelement <4 x i64> %391, i32 0
  %399 = shl i64 %398, 3
  %400 = add i64 %399, %389
  %401 = getelementptr i8, i8* %call2, i64 %400
  %402 = bitcast i8* %401 to <4 x double>*
  store <4 x double> %397, <4 x double>* %402, align 8, !alias.scope !98, !noalias !100
  %index.next1128 = add i64 %index1127, 4
  %vec.ind.next1132 = add <4 x i64> %vec.ind1131, <i64 4, i64 4, i64 4, i64 4>
  %403 = icmp eq i64 %index.next1128, 28
  br i1 %403, label %polly.loop_exit787.1, label %vector.body1125, !llvm.loop !109

polly.loop_exit787.1:                             ; preds = %vector.body1125
  %polly.indvar_next783.1 = add nuw nsw i64 %polly.indvar782.1, 1
  %exitcond896.1.not = icmp eq i64 %polly.indvar_next783.1, 32
  br i1 %exitcond896.1.not, label %polly.loop_header779.1924, label %polly.loop_header779.1

polly.loop_header779.1924:                        ; preds = %polly.loop_exit787.1, %polly.loop_exit787.1935
  %polly.indvar782.1923 = phi i64 [ %polly.indvar_next783.1933, %polly.loop_exit787.1935 ], [ 0, %polly.loop_exit787.1 ]
  %404 = add nuw nsw i64 %polly.indvar782.1923, 32
  %405 = mul nuw nsw i64 %404, 480
  %406 = trunc i64 %404 to i32
  %broadcast.splatinsert1147 = insertelement <4 x i32> poison, i32 %406, i32 0
  %broadcast.splat1148 = shufflevector <4 x i32> %broadcast.splatinsert1147, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %polly.loop_header779.1924
  %index1139 = phi i64 [ 0, %polly.loop_header779.1924 ], [ %index.next1140, %vector.body1137 ]
  %vec.ind1145 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779.1924 ], [ %vec.ind.next1146, %vector.body1137 ]
  %407 = mul <4 x i32> %vec.ind1145, %broadcast.splat1148
  %408 = add <4 x i32> %407, <i32 2, i32 2, i32 2, i32 2>
  %409 = urem <4 x i32> %408, <i32 60, i32 60, i32 60, i32 60>
  %410 = sitofp <4 x i32> %409 to <4 x double>
  %411 = fmul fast <4 x double> %410, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %412 = shl i64 %index1139, 3
  %413 = add i64 %412, %405
  %414 = getelementptr i8, i8* %call2, i64 %413
  %415 = bitcast i8* %414 to <4 x double>*
  store <4 x double> %411, <4 x double>* %415, align 8, !alias.scope !98, !noalias !100
  %index.next1140 = add i64 %index1139, 4
  %vec.ind.next1146 = add <4 x i32> %vec.ind1145, <i32 4, i32 4, i32 4, i32 4>
  %416 = icmp eq i64 %index.next1140, 32
  br i1 %416, label %polly.loop_exit787.1935, label %vector.body1137, !llvm.loop !110

polly.loop_exit787.1935:                          ; preds = %vector.body1137
  %polly.indvar_next783.1933 = add nuw nsw i64 %polly.indvar782.1923, 1
  %exitcond896.1934.not = icmp eq i64 %polly.indvar_next783.1933, 32
  br i1 %exitcond896.1934.not, label %polly.loop_header779.1.1, label %polly.loop_header779.1924

polly.loop_header779.1.1:                         ; preds = %polly.loop_exit787.1935, %polly.loop_exit787.1.1
  %polly.indvar782.1.1 = phi i64 [ %polly.indvar_next783.1.1, %polly.loop_exit787.1.1 ], [ 0, %polly.loop_exit787.1935 ]
  %417 = add nuw nsw i64 %polly.indvar782.1.1, 32
  %418 = mul nuw nsw i64 %417, 480
  %419 = trunc i64 %417 to i32
  %broadcast.splatinsert1159 = insertelement <4 x i32> poison, i32 %419, i32 0
  %broadcast.splat1160 = shufflevector <4 x i32> %broadcast.splatinsert1159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %polly.loop_header779.1.1
  %index1153 = phi i64 [ 0, %polly.loop_header779.1.1 ], [ %index.next1154, %vector.body1151 ]
  %vec.ind1157 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1.1 ], [ %vec.ind.next1158, %vector.body1151 ]
  %420 = add nuw nsw <4 x i64> %vec.ind1157, <i64 32, i64 32, i64 32, i64 32>
  %421 = trunc <4 x i64> %420 to <4 x i32>
  %422 = mul <4 x i32> %broadcast.splat1160, %421
  %423 = add <4 x i32> %422, <i32 2, i32 2, i32 2, i32 2>
  %424 = urem <4 x i32> %423, <i32 60, i32 60, i32 60, i32 60>
  %425 = sitofp <4 x i32> %424 to <4 x double>
  %426 = fmul fast <4 x double> %425, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %427 = extractelement <4 x i64> %420, i32 0
  %428 = shl i64 %427, 3
  %429 = add i64 %428, %418
  %430 = getelementptr i8, i8* %call2, i64 %429
  %431 = bitcast i8* %430 to <4 x double>*
  store <4 x double> %426, <4 x double>* %431, align 8, !alias.scope !98, !noalias !100
  %index.next1154 = add i64 %index1153, 4
  %vec.ind.next1158 = add <4 x i64> %vec.ind1157, <i64 4, i64 4, i64 4, i64 4>
  %432 = icmp eq i64 %index.next1154, 28
  br i1 %432, label %polly.loop_exit787.1.1, label %vector.body1151, !llvm.loop !111

polly.loop_exit787.1.1:                           ; preds = %vector.body1151
  %polly.indvar_next783.1.1 = add nuw nsw i64 %polly.indvar782.1.1, 1
  %exitcond896.1.1.not = icmp eq i64 %polly.indvar_next783.1.1, 32
  br i1 %exitcond896.1.1.not, label %polly.loop_header779.2, label %polly.loop_header779.1.1

polly.loop_header779.2:                           ; preds = %polly.loop_exit787.1.1, %polly.loop_exit787.2
  %polly.indvar782.2 = phi i64 [ %polly.indvar_next783.2, %polly.loop_exit787.2 ], [ 0, %polly.loop_exit787.1.1 ]
  %433 = add nuw nsw i64 %polly.indvar782.2, 64
  %434 = mul nuw nsw i64 %433, 480
  %435 = trunc i64 %433 to i32
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %435, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %polly.loop_header779.2
  %index1165 = phi i64 [ 0, %polly.loop_header779.2 ], [ %index.next1166, %vector.body1163 ]
  %vec.ind1171 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header779.2 ], [ %vec.ind.next1172, %vector.body1163 ]
  %436 = mul <4 x i32> %vec.ind1171, %broadcast.splat1174
  %437 = add <4 x i32> %436, <i32 2, i32 2, i32 2, i32 2>
  %438 = urem <4 x i32> %437, <i32 60, i32 60, i32 60, i32 60>
  %439 = sitofp <4 x i32> %438 to <4 x double>
  %440 = fmul fast <4 x double> %439, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %441 = shl i64 %index1165, 3
  %442 = add i64 %441, %434
  %443 = getelementptr i8, i8* %call2, i64 %442
  %444 = bitcast i8* %443 to <4 x double>*
  store <4 x double> %440, <4 x double>* %444, align 8, !alias.scope !98, !noalias !100
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1172 = add <4 x i32> %vec.ind1171, <i32 4, i32 4, i32 4, i32 4>
  %445 = icmp eq i64 %index.next1166, 32
  br i1 %445, label %polly.loop_exit787.2, label %vector.body1163, !llvm.loop !112

polly.loop_exit787.2:                             ; preds = %vector.body1163
  %polly.indvar_next783.2 = add nuw nsw i64 %polly.indvar782.2, 1
  %exitcond896.2.not = icmp eq i64 %polly.indvar_next783.2, 16
  br i1 %exitcond896.2.not, label %polly.loop_header779.1.2, label %polly.loop_header779.2

polly.loop_header779.1.2:                         ; preds = %polly.loop_exit787.2, %polly.loop_exit787.1.2
  %polly.indvar782.1.2 = phi i64 [ %polly.indvar_next783.1.2, %polly.loop_exit787.1.2 ], [ 0, %polly.loop_exit787.2 ]
  %446 = add nuw nsw i64 %polly.indvar782.1.2, 64
  %447 = mul nuw nsw i64 %446, 480
  %448 = trunc i64 %446 to i32
  %broadcast.splatinsert1185 = insertelement <4 x i32> poison, i32 %448, i32 0
  %broadcast.splat1186 = shufflevector <4 x i32> %broadcast.splatinsert1185, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %polly.loop_header779.1.2
  %index1179 = phi i64 [ 0, %polly.loop_header779.1.2 ], [ %index.next1180, %vector.body1177 ]
  %vec.ind1183 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header779.1.2 ], [ %vec.ind.next1184, %vector.body1177 ]
  %449 = add nuw nsw <4 x i64> %vec.ind1183, <i64 32, i64 32, i64 32, i64 32>
  %450 = trunc <4 x i64> %449 to <4 x i32>
  %451 = mul <4 x i32> %broadcast.splat1186, %450
  %452 = add <4 x i32> %451, <i32 2, i32 2, i32 2, i32 2>
  %453 = urem <4 x i32> %452, <i32 60, i32 60, i32 60, i32 60>
  %454 = sitofp <4 x i32> %453 to <4 x double>
  %455 = fmul fast <4 x double> %454, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %456 = extractelement <4 x i64> %449, i32 0
  %457 = shl i64 %456, 3
  %458 = add i64 %457, %447
  %459 = getelementptr i8, i8* %call2, i64 %458
  %460 = bitcast i8* %459 to <4 x double>*
  store <4 x double> %455, <4 x double>* %460, align 8, !alias.scope !98, !noalias !100
  %index.next1180 = add i64 %index1179, 4
  %vec.ind.next1184 = add <4 x i64> %vec.ind1183, <i64 4, i64 4, i64 4, i64 4>
  %461 = icmp eq i64 %index.next1180, 28
  br i1 %461, label %polly.loop_exit787.1.2, label %vector.body1177, !llvm.loop !113

polly.loop_exit787.1.2:                           ; preds = %vector.body1177
  %polly.indvar_next783.1.2 = add nuw nsw i64 %polly.indvar782.1.2, 1
  %exitcond896.1.2.not = icmp eq i64 %polly.indvar_next783.1.2, 16
  br i1 %exitcond896.1.2.not, label %polly.loop_header805, label %polly.loop_header779.1.2

polly.loop_header752.1:                           ; preds = %polly.loop_exit760, %polly.loop_exit760.1
  %polly.indvar755.1 = phi i64 [ %polly.indvar_next756.1, %polly.loop_exit760.1 ], [ 0, %polly.loop_exit760 ]
  %462 = mul nuw nsw i64 %polly.indvar755.1, 640
  %463 = trunc i64 %polly.indvar755.1 to i32
  %broadcast.splatinsert1019 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat1020 = shufflevector <4 x i32> %broadcast.splatinsert1019, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1011

vector.body1011:                                  ; preds = %vector.body1011, %polly.loop_header752.1
  %index1013 = phi i64 [ 0, %polly.loop_header752.1 ], [ %index.next1014, %vector.body1011 ]
  %vec.ind1017 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1 ], [ %vec.ind.next1018, %vector.body1011 ]
  %464 = add nuw nsw <4 x i64> %vec.ind1017, <i64 32, i64 32, i64 32, i64 32>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat1020, %465
  %467 = add <4 x i32> %466, <i32 3, i32 3, i32 3, i32 3>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %462
  %474 = getelementptr i8, i8* %call, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !94, !noalias !96
  %index.next1014 = add i64 %index1013, 4
  %vec.ind.next1018 = add <4 x i64> %vec.ind1017, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next1014, 32
  br i1 %476, label %polly.loop_exit760.1, label %vector.body1011, !llvm.loop !114

polly.loop_exit760.1:                             ; preds = %vector.body1011
  %polly.indvar_next756.1 = add nuw nsw i64 %polly.indvar755.1, 1
  %exitcond905.1.not = icmp eq i64 %polly.indvar_next756.1, 32
  br i1 %exitcond905.1.not, label %polly.loop_header752.2, label %polly.loop_header752.1

polly.loop_header752.2:                           ; preds = %polly.loop_exit760.1, %polly.loop_exit760.2
  %polly.indvar755.2 = phi i64 [ %polly.indvar_next756.2, %polly.loop_exit760.2 ], [ 0, %polly.loop_exit760.1 ]
  %477 = mul nuw nsw i64 %polly.indvar755.2, 640
  %478 = trunc i64 %polly.indvar755.2 to i32
  %broadcast.splatinsert1031 = insertelement <4 x i32> poison, i32 %478, i32 0
  %broadcast.splat1032 = shufflevector <4 x i32> %broadcast.splatinsert1031, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1023

vector.body1023:                                  ; preds = %vector.body1023, %polly.loop_header752.2
  %index1025 = phi i64 [ 0, %polly.loop_header752.2 ], [ %index.next1026, %vector.body1023 ]
  %vec.ind1029 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2 ], [ %vec.ind.next1030, %vector.body1023 ]
  %479 = add nuw nsw <4 x i64> %vec.ind1029, <i64 64, i64 64, i64 64, i64 64>
  %480 = trunc <4 x i64> %479 to <4 x i32>
  %481 = mul <4 x i32> %broadcast.splat1032, %480
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
  %index.next1026 = add i64 %index1025, 4
  %vec.ind.next1030 = add <4 x i64> %vec.ind1029, <i64 4, i64 4, i64 4, i64 4>
  %491 = icmp eq i64 %index.next1026, 16
  br i1 %491, label %polly.loop_exit760.2, label %vector.body1023, !llvm.loop !115

polly.loop_exit760.2:                             ; preds = %vector.body1023
  %polly.indvar_next756.2 = add nuw nsw i64 %polly.indvar755.2, 1
  %exitcond905.2.not = icmp eq i64 %polly.indvar_next756.2, 32
  br i1 %exitcond905.2.not, label %polly.loop_header752.1938, label %polly.loop_header752.2

polly.loop_header752.1938:                        ; preds = %polly.loop_exit760.2, %polly.loop_exit760.1949
  %polly.indvar755.1937 = phi i64 [ %polly.indvar_next756.1947, %polly.loop_exit760.1949 ], [ 0, %polly.loop_exit760.2 ]
  %492 = add nuw nsw i64 %polly.indvar755.1937, 32
  %493 = mul nuw nsw i64 %492, 640
  %494 = trunc i64 %492 to i32
  %broadcast.splatinsert1045 = insertelement <4 x i32> poison, i32 %494, i32 0
  %broadcast.splat1046 = shufflevector <4 x i32> %broadcast.splatinsert1045, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %polly.loop_header752.1938
  %index1037 = phi i64 [ 0, %polly.loop_header752.1938 ], [ %index.next1038, %vector.body1035 ]
  %vec.ind1043 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.1938 ], [ %vec.ind.next1044, %vector.body1035 ]
  %495 = mul <4 x i32> %vec.ind1043, %broadcast.splat1046
  %496 = add <4 x i32> %495, <i32 3, i32 3, i32 3, i32 3>
  %497 = urem <4 x i32> %496, <i32 80, i32 80, i32 80, i32 80>
  %498 = sitofp <4 x i32> %497 to <4 x double>
  %499 = fmul fast <4 x double> %498, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %500 = shl i64 %index1037, 3
  %501 = add nuw nsw i64 %500, %493
  %502 = getelementptr i8, i8* %call, i64 %501
  %503 = bitcast i8* %502 to <4 x double>*
  store <4 x double> %499, <4 x double>* %503, align 8, !alias.scope !94, !noalias !96
  %index.next1038 = add i64 %index1037, 4
  %vec.ind.next1044 = add <4 x i32> %vec.ind1043, <i32 4, i32 4, i32 4, i32 4>
  %504 = icmp eq i64 %index.next1038, 32
  br i1 %504, label %polly.loop_exit760.1949, label %vector.body1035, !llvm.loop !116

polly.loop_exit760.1949:                          ; preds = %vector.body1035
  %polly.indvar_next756.1947 = add nuw nsw i64 %polly.indvar755.1937, 1
  %exitcond905.1948.not = icmp eq i64 %polly.indvar_next756.1947, 32
  br i1 %exitcond905.1948.not, label %polly.loop_header752.1.1, label %polly.loop_header752.1938

polly.loop_header752.1.1:                         ; preds = %polly.loop_exit760.1949, %polly.loop_exit760.1.1
  %polly.indvar755.1.1 = phi i64 [ %polly.indvar_next756.1.1, %polly.loop_exit760.1.1 ], [ 0, %polly.loop_exit760.1949 ]
  %505 = add nuw nsw i64 %polly.indvar755.1.1, 32
  %506 = mul nuw nsw i64 %505, 640
  %507 = trunc i64 %505 to i32
  %broadcast.splatinsert1057 = insertelement <4 x i32> poison, i32 %507, i32 0
  %broadcast.splat1058 = shufflevector <4 x i32> %broadcast.splatinsert1057, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %polly.loop_header752.1.1
  %index1051 = phi i64 [ 0, %polly.loop_header752.1.1 ], [ %index.next1052, %vector.body1049 ]
  %vec.ind1055 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.1 ], [ %vec.ind.next1056, %vector.body1049 ]
  %508 = add nuw nsw <4 x i64> %vec.ind1055, <i64 32, i64 32, i64 32, i64 32>
  %509 = trunc <4 x i64> %508 to <4 x i32>
  %510 = mul <4 x i32> %broadcast.splat1058, %509
  %511 = add <4 x i32> %510, <i32 3, i32 3, i32 3, i32 3>
  %512 = urem <4 x i32> %511, <i32 80, i32 80, i32 80, i32 80>
  %513 = sitofp <4 x i32> %512 to <4 x double>
  %514 = fmul fast <4 x double> %513, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %515 = extractelement <4 x i64> %508, i32 0
  %516 = shl i64 %515, 3
  %517 = add nuw nsw i64 %516, %506
  %518 = getelementptr i8, i8* %call, i64 %517
  %519 = bitcast i8* %518 to <4 x double>*
  store <4 x double> %514, <4 x double>* %519, align 8, !alias.scope !94, !noalias !96
  %index.next1052 = add i64 %index1051, 4
  %vec.ind.next1056 = add <4 x i64> %vec.ind1055, <i64 4, i64 4, i64 4, i64 4>
  %520 = icmp eq i64 %index.next1052, 32
  br i1 %520, label %polly.loop_exit760.1.1, label %vector.body1049, !llvm.loop !117

polly.loop_exit760.1.1:                           ; preds = %vector.body1049
  %polly.indvar_next756.1.1 = add nuw nsw i64 %polly.indvar755.1.1, 1
  %exitcond905.1.1.not = icmp eq i64 %polly.indvar_next756.1.1, 32
  br i1 %exitcond905.1.1.not, label %polly.loop_header752.2.1, label %polly.loop_header752.1.1

polly.loop_header752.2.1:                         ; preds = %polly.loop_exit760.1.1, %polly.loop_exit760.2.1
  %polly.indvar755.2.1 = phi i64 [ %polly.indvar_next756.2.1, %polly.loop_exit760.2.1 ], [ 0, %polly.loop_exit760.1.1 ]
  %521 = add nuw nsw i64 %polly.indvar755.2.1, 32
  %522 = mul nuw nsw i64 %521, 640
  %523 = trunc i64 %521 to i32
  %broadcast.splatinsert1069 = insertelement <4 x i32> poison, i32 %523, i32 0
  %broadcast.splat1070 = shufflevector <4 x i32> %broadcast.splatinsert1069, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1061

vector.body1061:                                  ; preds = %vector.body1061, %polly.loop_header752.2.1
  %index1063 = phi i64 [ 0, %polly.loop_header752.2.1 ], [ %index.next1064, %vector.body1061 ]
  %vec.ind1067 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2.1 ], [ %vec.ind.next1068, %vector.body1061 ]
  %524 = add nuw nsw <4 x i64> %vec.ind1067, <i64 64, i64 64, i64 64, i64 64>
  %525 = trunc <4 x i64> %524 to <4 x i32>
  %526 = mul <4 x i32> %broadcast.splat1070, %525
  %527 = add <4 x i32> %526, <i32 3, i32 3, i32 3, i32 3>
  %528 = urem <4 x i32> %527, <i32 80, i32 80, i32 80, i32 80>
  %529 = sitofp <4 x i32> %528 to <4 x double>
  %530 = fmul fast <4 x double> %529, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %531 = extractelement <4 x i64> %524, i32 0
  %532 = shl i64 %531, 3
  %533 = add nuw nsw i64 %532, %522
  %534 = getelementptr i8, i8* %call, i64 %533
  %535 = bitcast i8* %534 to <4 x double>*
  store <4 x double> %530, <4 x double>* %535, align 8, !alias.scope !94, !noalias !96
  %index.next1064 = add i64 %index1063, 4
  %vec.ind.next1068 = add <4 x i64> %vec.ind1067, <i64 4, i64 4, i64 4, i64 4>
  %536 = icmp eq i64 %index.next1064, 16
  br i1 %536, label %polly.loop_exit760.2.1, label %vector.body1061, !llvm.loop !118

polly.loop_exit760.2.1:                           ; preds = %vector.body1061
  %polly.indvar_next756.2.1 = add nuw nsw i64 %polly.indvar755.2.1, 1
  %exitcond905.2.1.not = icmp eq i64 %polly.indvar_next756.2.1, 32
  br i1 %exitcond905.2.1.not, label %polly.loop_header752.2952, label %polly.loop_header752.2.1

polly.loop_header752.2952:                        ; preds = %polly.loop_exit760.2.1, %polly.loop_exit760.2963
  %polly.indvar755.2951 = phi i64 [ %polly.indvar_next756.2961, %polly.loop_exit760.2963 ], [ 0, %polly.loop_exit760.2.1 ]
  %537 = add nuw nsw i64 %polly.indvar755.2951, 64
  %538 = mul nuw nsw i64 %537, 640
  %539 = trunc i64 %537 to i32
  %broadcast.splatinsert1083 = insertelement <4 x i32> poison, i32 %539, i32 0
  %broadcast.splat1084 = shufflevector <4 x i32> %broadcast.splatinsert1083, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %polly.loop_header752.2952
  %index1075 = phi i64 [ 0, %polly.loop_header752.2952 ], [ %index.next1076, %vector.body1073 ]
  %vec.ind1081 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header752.2952 ], [ %vec.ind.next1082, %vector.body1073 ]
  %540 = mul <4 x i32> %vec.ind1081, %broadcast.splat1084
  %541 = add <4 x i32> %540, <i32 3, i32 3, i32 3, i32 3>
  %542 = urem <4 x i32> %541, <i32 80, i32 80, i32 80, i32 80>
  %543 = sitofp <4 x i32> %542 to <4 x double>
  %544 = fmul fast <4 x double> %543, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %545 = shl i64 %index1075, 3
  %546 = add nuw nsw i64 %545, %538
  %547 = getelementptr i8, i8* %call, i64 %546
  %548 = bitcast i8* %547 to <4 x double>*
  store <4 x double> %544, <4 x double>* %548, align 8, !alias.scope !94, !noalias !96
  %index.next1076 = add i64 %index1075, 4
  %vec.ind.next1082 = add <4 x i32> %vec.ind1081, <i32 4, i32 4, i32 4, i32 4>
  %549 = icmp eq i64 %index.next1076, 32
  br i1 %549, label %polly.loop_exit760.2963, label %vector.body1073, !llvm.loop !119

polly.loop_exit760.2963:                          ; preds = %vector.body1073
  %polly.indvar_next756.2961 = add nuw nsw i64 %polly.indvar755.2951, 1
  %exitcond905.2962.not = icmp eq i64 %polly.indvar_next756.2961, 16
  br i1 %exitcond905.2962.not, label %polly.loop_header752.1.2, label %polly.loop_header752.2952

polly.loop_header752.1.2:                         ; preds = %polly.loop_exit760.2963, %polly.loop_exit760.1.2
  %polly.indvar755.1.2 = phi i64 [ %polly.indvar_next756.1.2, %polly.loop_exit760.1.2 ], [ 0, %polly.loop_exit760.2963 ]
  %550 = add nuw nsw i64 %polly.indvar755.1.2, 64
  %551 = mul nuw nsw i64 %550, 640
  %552 = trunc i64 %550 to i32
  %broadcast.splatinsert1095 = insertelement <4 x i32> poison, i32 %552, i32 0
  %broadcast.splat1096 = shufflevector <4 x i32> %broadcast.splatinsert1095, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1087

vector.body1087:                                  ; preds = %vector.body1087, %polly.loop_header752.1.2
  %index1089 = phi i64 [ 0, %polly.loop_header752.1.2 ], [ %index.next1090, %vector.body1087 ]
  %vec.ind1093 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.1.2 ], [ %vec.ind.next1094, %vector.body1087 ]
  %553 = add nuw nsw <4 x i64> %vec.ind1093, <i64 32, i64 32, i64 32, i64 32>
  %554 = trunc <4 x i64> %553 to <4 x i32>
  %555 = mul <4 x i32> %broadcast.splat1096, %554
  %556 = add <4 x i32> %555, <i32 3, i32 3, i32 3, i32 3>
  %557 = urem <4 x i32> %556, <i32 80, i32 80, i32 80, i32 80>
  %558 = sitofp <4 x i32> %557 to <4 x double>
  %559 = fmul fast <4 x double> %558, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %560 = extractelement <4 x i64> %553, i32 0
  %561 = shl i64 %560, 3
  %562 = add nuw nsw i64 %561, %551
  %563 = getelementptr i8, i8* %call, i64 %562
  %564 = bitcast i8* %563 to <4 x double>*
  store <4 x double> %559, <4 x double>* %564, align 8, !alias.scope !94, !noalias !96
  %index.next1090 = add i64 %index1089, 4
  %vec.ind.next1094 = add <4 x i64> %vec.ind1093, <i64 4, i64 4, i64 4, i64 4>
  %565 = icmp eq i64 %index.next1090, 32
  br i1 %565, label %polly.loop_exit760.1.2, label %vector.body1087, !llvm.loop !120

polly.loop_exit760.1.2:                           ; preds = %vector.body1087
  %polly.indvar_next756.1.2 = add nuw nsw i64 %polly.indvar755.1.2, 1
  %exitcond905.1.2.not = icmp eq i64 %polly.indvar_next756.1.2, 16
  br i1 %exitcond905.1.2.not, label %polly.loop_header752.2.2, label %polly.loop_header752.1.2

polly.loop_header752.2.2:                         ; preds = %polly.loop_exit760.1.2, %polly.loop_exit760.2.2
  %polly.indvar755.2.2 = phi i64 [ %polly.indvar_next756.2.2, %polly.loop_exit760.2.2 ], [ 0, %polly.loop_exit760.1.2 ]
  %566 = add nuw nsw i64 %polly.indvar755.2.2, 64
  %567 = mul nuw nsw i64 %566, 640
  %568 = trunc i64 %566 to i32
  %broadcast.splatinsert1107 = insertelement <4 x i32> poison, i32 %568, i32 0
  %broadcast.splat1108 = shufflevector <4 x i32> %broadcast.splatinsert1107, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.body1099, %polly.loop_header752.2.2
  %index1101 = phi i64 [ 0, %polly.loop_header752.2.2 ], [ %index.next1102, %vector.body1099 ]
  %vec.ind1105 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header752.2.2 ], [ %vec.ind.next1106, %vector.body1099 ]
  %569 = add nuw nsw <4 x i64> %vec.ind1105, <i64 64, i64 64, i64 64, i64 64>
  %570 = trunc <4 x i64> %569 to <4 x i32>
  %571 = mul <4 x i32> %broadcast.splat1108, %570
  %572 = add <4 x i32> %571, <i32 3, i32 3, i32 3, i32 3>
  %573 = urem <4 x i32> %572, <i32 80, i32 80, i32 80, i32 80>
  %574 = sitofp <4 x i32> %573 to <4 x double>
  %575 = fmul fast <4 x double> %574, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %576 = extractelement <4 x i64> %569, i32 0
  %577 = shl i64 %576, 3
  %578 = add nuw nsw i64 %577, %567
  %579 = getelementptr i8, i8* %call, i64 %578
  %580 = bitcast i8* %579 to <4 x double>*
  store <4 x double> %575, <4 x double>* %580, align 8, !alias.scope !94, !noalias !96
  %index.next1102 = add i64 %index1101, 4
  %vec.ind.next1106 = add <4 x i64> %vec.ind1105, <i64 4, i64 4, i64 4, i64 4>
  %581 = icmp eq i64 %index.next1102, 16
  br i1 %581, label %polly.loop_exit760.2.2, label %vector.body1099, !llvm.loop !121

polly.loop_exit760.2.2:                           ; preds = %vector.body1099
  %polly.indvar_next756.2.2 = add nuw nsw i64 %polly.indvar755.2.2, 1
  %exitcond905.2.2.not = icmp eq i64 %polly.indvar_next756.2.2, 16
  br i1 %exitcond905.2.2.not, label %polly.loop_header779, label %polly.loop_header752.2.2
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
!45 = !{!"llvm.loop.tile.size", i32 20}
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
