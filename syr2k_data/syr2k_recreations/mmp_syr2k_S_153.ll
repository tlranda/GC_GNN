; ModuleID = 'syr2k_recreations//mmp_syr2k_S_153.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_153.c"
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
  %call778 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1639 = getelementptr i8, i8* %call1, i64 38400
  %polly.access.cast.call2640 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1639, %call2
  %polly.access.call2659 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2659, %call1
  %2 = or i1 %0, %1
  %polly.access.call679 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call679, %call2
  %4 = icmp ule i8* %polly.access.call2659, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call679, %call1
  %8 = icmp ule i8* %polly.access.call1639, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header764, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep1013 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1012 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1011 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1010 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1010, %scevgep1013
  %bound1 = icmp ult i8* %scevgep1012, %scevgep1011
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
  br i1 %exitcond18.not.i, label %vector.ph1017, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1017:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1024 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1025 = shufflevector <4 x i64> %broadcast.splatinsert1024, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %vector.ph1017
  %index1018 = phi i64 [ 0, %vector.ph1017 ], [ %index.next1019, %vector.body1016 ]
  %vec.ind1022 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1017 ], [ %vec.ind.next1023, %vector.body1016 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1022, %broadcast.splat1025
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv7.i, i64 %index1018
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1019 = add i64 %index1018, 4
  %vec.ind.next1023 = add <4 x i64> %vec.ind1022, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1019, 80
  br i1 %40, label %for.inc41.i, label %vector.body1016, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1016
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1017, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit825.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start450, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1370, label %vector.ph1299

vector.ph1299:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1298

vector.body1298:                                  ; preds = %vector.body1298, %vector.ph1299
  %index1300 = phi i64 [ 0, %vector.ph1299 ], [ %index.next1301, %vector.body1298 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i, i64 %index1300
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1301 = add i64 %index1300, 4
  %46 = icmp eq i64 %index.next1301, %n.vec
  br i1 %46, label %middle.block1296, label %vector.body1298, !llvm.loop !18

middle.block1296:                                 ; preds = %vector.body1298
  %cmp.n1303 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1303, label %for.inc6.i, label %for.body3.i46.preheader1370

for.body3.i46.preheader1370:                      ; preds = %for.body3.i46.preheader, %middle.block1296
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1296 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1370, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1370 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1296, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !40

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting451
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start272, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1319 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1319, label %for.body3.i60.preheader1369, label %vector.ph1320

vector.ph1320:                                    ; preds = %for.body3.i60.preheader
  %n.vec1322 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %vector.ph1320
  %index1323 = phi i64 [ 0, %vector.ph1320 ], [ %index.next1324, %vector.body1318 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i52, i64 %index1323
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1327 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1327, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1324 = add i64 %index1323, 4
  %57 = icmp eq i64 %index.next1324, %n.vec1322
  br i1 %57, label %middle.block1316, label %vector.body1318, !llvm.loop !59

middle.block1316:                                 ; preds = %vector.body1318
  %cmp.n1326 = icmp eq i64 %indvars.iv21.i52, %n.vec1322
  br i1 %cmp.n1326, label %for.inc6.i63, label %for.body3.i60.preheader1369

for.body3.i60.preheader1369:                      ; preds = %for.body3.i60.preheader, %middle.block1316
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1322, %middle.block1316 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1369, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1369 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !60

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1316, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !40

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
  %min.iters.check1345 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1345, label %for.body3.i99.preheader1368, label %vector.ph1346

vector.ph1346:                                    ; preds = %for.body3.i99.preheader
  %n.vec1348 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1344

vector.body1344:                                  ; preds = %vector.body1344, %vector.ph1346
  %index1349 = phi i64 [ 0, %vector.ph1346 ], [ %index.next1350, %vector.body1344 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i91, i64 %index1349
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1353 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1353, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1350 = add i64 %index1349, 4
  %68 = icmp eq i64 %index.next1350, %n.vec1348
  br i1 %68, label %middle.block1342, label %vector.body1344, !llvm.loop !61

middle.block1342:                                 ; preds = %vector.body1344
  %cmp.n1352 = icmp eq i64 %indvars.iv21.i91, %n.vec1348
  br i1 %cmp.n1352, label %for.inc6.i102, label %for.body3.i99.preheader1368

for.body3.i99.preheader1368:                      ; preds = %for.body3.i99.preheader, %middle.block1342
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1348, %middle.block1342 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1368, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1368 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !62

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1342, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  br i1 %exitcond17.not.i127, label %kernel_syr2k.exit129, label %for.cond12.preheader.i105, !llvm.loop !40

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
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call778, i64 %indvars.iv4.i, i64 %indvars.iv.i41
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
  %malloccall = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit207
  tail call void @free(i8* %malloccall)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit193, %polly.start
  %indvar1357 = phi i64 [ %indvar.next1358, %polly.loop_exit193 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1357, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1359 = icmp ult i64 %88, 4
  br i1 %min.iters.check1359, label %polly.loop_header191.preheader, label %vector.ph1360

vector.ph1360:                                    ; preds = %polly.loop_header
  %n.vec1362 = and i64 %88, -4
  br label %vector.body1356

vector.body1356:                                  ; preds = %vector.body1356, %vector.ph1360
  %index1363 = phi i64 [ 0, %vector.ph1360 ], [ %index.next1364, %vector.body1356 ]
  %90 = shl nuw nsw i64 %index1363, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1367 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !67, !noalias !69
  %93 = fmul fast <4 x double> %wide.load1367, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !67, !noalias !69
  %index.next1364 = add i64 %index1363, 4
  %95 = icmp eq i64 %index.next1364, %n.vec1362
  br i1 %95, label %middle.block1354, label %vector.body1356, !llvm.loop !73

middle.block1354:                                 ; preds = %vector.body1356
  %cmp.n1366 = icmp eq i64 %88, %n.vec1362
  br i1 %cmp.n1366, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1354
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1362, %middle.block1354 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1354
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond870.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1358 = add i64 %indvar1357, 1
  br i1 %exitcond870.not, label %polly.loop_header199.preheader, label %polly.loop_header

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
  %exitcond869.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond869.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !74

polly.loop_header199:                             ; preds = %polly.loop_header199.preheader, %polly.loop_exit207
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_header199.preheader ]
  %97 = shl nsw i64 %polly.indvar202, 2
  %98 = or i64 %97, 1
  %99 = or i64 %97, 2
  %100 = or i64 %97, 3
  %101 = shl i64 %polly.indvar202, 5
  %102 = shl i64 %98, 3
  %103 = shl i64 %99, 3
  %104 = shl i64 %100, 3
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit229
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %exitcond868.not = icmp eq i64 %polly.indvar_next203, 15
  br i1 %exitcond868.not, label %polly.exiting, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit229, %polly.loop_header199
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv854 = phi i64 [ %indvars.iv.next855, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit229 ], [ 80, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit229 ], [ 0, %polly.loop_header199 ]
  %105 = lshr i64 %polly.indvar208, 1
  %106 = shl nuw nsw i64 %105, 3
  %107 = sub nsw i64 %indvars.iv854, %106
  %108 = add i64 %indvars.iv858, %106
  %109 = shl nsw i64 %polly.indvar208, 2
  br label %polly.loop_header217

polly.loop_exit229:                               ; preds = %polly.loop_exit235
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -4
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 4
  %indvars.iv.next859 = add nsw i64 %indvars.iv858, -4
  %exitcond867.not = icmp eq i64 %polly.indvar_next209, 20
  br i1 %exitcond867.not, label %polly.loop_exit207, label %polly.loop_header205

polly.loop_header217:                             ; preds = %polly.loop_header217, %polly.loop_header205
  %polly.indvar220 = phi i64 [ 0, %polly.loop_header205 ], [ %polly.indvar_next221, %polly.loop_header217 ]
  %110 = add nuw nsw i64 %polly.indvar220, %109
  %polly.access.mul.call2224 = mul nuw nsw i64 %110, 60
  %polly.access.add.call2225 = add nuw nsw i64 %97, %polly.access.mul.call2224
  %polly.access.call2226 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2225
  %polly.access.call2226.load = load double, double* %polly.access.call2226, align 8, !alias.scope !71, !noalias !76
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar220
  store double %polly.access.call2226.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next221 = add nuw nsw i64 %polly.indvar220, 1
  %exitcond.not = icmp eq i64 %polly.indvar_next221, %indvars.iv
  br i1 %exitcond.not, label %polly.loop_header217.1, label %polly.loop_header217

polly.loop_header227:                             ; preds = %polly.loop_exit235, %polly.loop_exit219.3
  %indvars.iv860 = phi i64 [ %indvars.iv.next861, %polly.loop_exit235 ], [ %108, %polly.loop_exit219.3 ]
  %indvars.iv856 = phi i64 [ %indvars.iv.next857, %polly.loop_exit235 ], [ %107, %polly.loop_exit219.3 ]
  %polly.indvar230 = phi i64 [ %polly.indvar_next231, %polly.loop_exit235 ], [ %105, %polly.loop_exit219.3 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv856, i64 0)
  %111 = add i64 %smax, %indvars.iv860
  %112 = shl nsw i64 %polly.indvar230, 3
  %113 = sub nsw i64 %109, %112
  %114 = icmp sgt i64 %113, 0
  %115 = select i1 %114, i64 %113, i64 0
  %polly.loop_guard = icmp slt i64 %115, 8
  br i1 %polly.loop_guard, label %polly.loop_header239.us, label %polly.loop_exit235

polly.loop_header239.us:                          ; preds = %polly.loop_header227, %polly.loop_exit248.us
  %indvars.iv862 = phi i64 [ %indvars.iv.next863, %polly.loop_exit248.us ], [ %111, %polly.loop_header227 ]
  %polly.indvar242.us = phi i64 [ %polly.indvar_next243.us, %polly.loop_exit248.us ], [ %115, %polly.loop_header227 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv862, i64 3)
  %116 = add nuw i64 %polly.indvar242.us, %112
  %117 = add i64 %116, %241
  %polly.loop_guard249.us996 = icmp sgt i64 %117, -1
  br i1 %polly.loop_guard249.us996, label %polly.loop_header246.preheader.us, label %polly.loop_exit248.us

polly.loop_header246.us:                          ; preds = %polly.loop_header246.preheader.us, %polly.loop_header246.us
  %polly.indvar250.us = phi i64 [ %polly.indvar_next251.us, %polly.loop_header246.us ], [ 0, %polly.loop_header246.preheader.us ]
  %118 = add nuw nsw i64 %polly.indvar250.us, %109
  %119 = mul nuw nsw i64 %118, 480
  %120 = add nuw nsw i64 %119, %101
  %scevgep253.us = getelementptr i8, i8* %call1, i64 %120
  %scevgep253254.us = bitcast i8* %scevgep253.us to double*
  %_p_scalar_255.us = load double, double* %scevgep253254.us, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112.us = fmul fast double %_p_scalar_259.us, %_p_scalar_255.us
  %polly.access.Packed_MemRef_call2262.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.indvar250.us
  %_p_scalar_263.us = load double, double* %polly.access.Packed_MemRef_call2262.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_266.us, %_p_scalar_263.us
  %121 = shl i64 %118, 3
  %122 = add i64 %121, %125
  %scevgep267.us = getelementptr i8, i8* %call, i64 %122
  %scevgep267268.us = bitcast i8* %scevgep267.us to double*
  %_p_scalar_269.us = load double, double* %scevgep267268.us, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_269.us
  store double %p_add42.i118.us, double* %scevgep267268.us, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next251.us = add nuw nsw i64 %polly.indvar250.us, 1
  %exitcond864.not = icmp eq i64 %polly.indvar250.us, %smin
  br i1 %exitcond864.not, label %polly.loop_exit248.us, label %polly.loop_header246.us

polly.loop_exit248.us:                            ; preds = %polly.loop_header246.us, %polly.loop_header239.us
  %polly.indvar_next243.us = add nuw nsw i64 %polly.indvar242.us, 1
  %polly.loop_cond244.us = icmp ult i64 %polly.indvar242.us, 7
  %indvars.iv.next863 = add i64 %indvars.iv862, 1
  br i1 %polly.loop_cond244.us, label %polly.loop_header239.us, label %polly.loop_header239.us.1

polly.loop_header246.preheader.us:                ; preds = %polly.loop_header239.us
  %polly.access.Packed_MemRef_call2258.us = getelementptr double, double* %Packed_MemRef_call2, i64 %117
  %_p_scalar_259.us = load double, double* %polly.access.Packed_MemRef_call2258.us, align 8
  %123 = mul i64 %116, 480
  %124 = add i64 %123, %101
  %scevgep264.us = getelementptr i8, i8* %call1, i64 %124
  %scevgep264265.us = bitcast i8* %scevgep264.us to double*
  %_p_scalar_266.us = load double, double* %scevgep264265.us, align 8, !alias.scope !70, !noalias !77
  %125 = mul i64 %116, 640
  br label %polly.loop_header246.us

polly.loop_exit235:                               ; preds = %polly.loop_exit248.us.3, %polly.loop_header227
  %polly.indvar_next231 = add nuw nsw i64 %polly.indvar230, 1
  %indvars.iv.next857 = add i64 %indvars.iv856, -8
  %indvars.iv.next861 = add i64 %indvars.iv860, 8
  %exitcond866.not = icmp eq i64 %polly.indvar_next231, 10
  br i1 %exitcond866.not, label %polly.loop_exit229, label %polly.loop_header227

polly.start272:                                   ; preds = %kernel_syr2k.exit
  %malloccall274 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header358

polly.exiting273:                                 ; preds = %polly.loop_exit382
  tail call void @free(i8* %malloccall274)
  br label %kernel_syr2k.exit90

polly.loop_header358:                             ; preds = %polly.loop_exit366, %polly.start272
  %indvar1331 = phi i64 [ %indvar.next1332, %polly.loop_exit366 ], [ 0, %polly.start272 ]
  %polly.indvar361 = phi i64 [ %polly.indvar_next362, %polly.loop_exit366 ], [ 1, %polly.start272 ]
  %126 = add i64 %indvar1331, 1
  %127 = mul nuw nsw i64 %polly.indvar361, 640
  %scevgep370 = getelementptr i8, i8* %call, i64 %127
  %min.iters.check1333 = icmp ult i64 %126, 4
  br i1 %min.iters.check1333, label %polly.loop_header364.preheader, label %vector.ph1334

vector.ph1334:                                    ; preds = %polly.loop_header358
  %n.vec1336 = and i64 %126, -4
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %vector.ph1334
  %index1337 = phi i64 [ 0, %vector.ph1334 ], [ %index.next1338, %vector.body1330 ]
  %128 = shl nuw nsw i64 %index1337, 3
  %129 = getelementptr i8, i8* %scevgep370, i64 %128
  %130 = bitcast i8* %129 to <4 x double>*
  %wide.load1341 = load <4 x double>, <4 x double>* %130, align 8, !alias.scope !78, !noalias !80
  %131 = fmul fast <4 x double> %wide.load1341, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %132 = bitcast i8* %129 to <4 x double>*
  store <4 x double> %131, <4 x double>* %132, align 8, !alias.scope !78, !noalias !80
  %index.next1338 = add i64 %index1337, 4
  %133 = icmp eq i64 %index.next1338, %n.vec1336
  br i1 %133, label %middle.block1328, label %vector.body1330, !llvm.loop !84

middle.block1328:                                 ; preds = %vector.body1330
  %cmp.n1340 = icmp eq i64 %126, %n.vec1336
  br i1 %cmp.n1340, label %polly.loop_exit366, label %polly.loop_header364.preheader

polly.loop_header364.preheader:                   ; preds = %polly.loop_header358, %middle.block1328
  %polly.indvar367.ph = phi i64 [ 0, %polly.loop_header358 ], [ %n.vec1336, %middle.block1328 ]
  br label %polly.loop_header364

polly.loop_exit366:                               ; preds = %polly.loop_header364, %middle.block1328
  %polly.indvar_next362 = add nuw nsw i64 %polly.indvar361, 1
  %exitcond893.not = icmp eq i64 %polly.indvar_next362, 80
  %indvar.next1332 = add i64 %indvar1331, 1
  br i1 %exitcond893.not, label %polly.loop_header374.preheader, label %polly.loop_header358

polly.loop_header374.preheader:                   ; preds = %polly.loop_exit366
  %Packed_MemRef_call2275 = bitcast i8* %malloccall274 to double*
  br label %polly.loop_header374

polly.loop_header364:                             ; preds = %polly.loop_header364.preheader, %polly.loop_header364
  %polly.indvar367 = phi i64 [ %polly.indvar_next368, %polly.loop_header364 ], [ %polly.indvar367.ph, %polly.loop_header364.preheader ]
  %134 = shl nuw nsw i64 %polly.indvar367, 3
  %scevgep371 = getelementptr i8, i8* %scevgep370, i64 %134
  %scevgep371372 = bitcast i8* %scevgep371 to double*
  %_p_scalar_373 = load double, double* %scevgep371372, align 8, !alias.scope !78, !noalias !80
  %p_mul.i57 = fmul fast double %_p_scalar_373, 1.200000e+00
  store double %p_mul.i57, double* %scevgep371372, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next368 = add nuw nsw i64 %polly.indvar367, 1
  %exitcond892.not = icmp eq i64 %polly.indvar_next368, %polly.indvar361
  br i1 %exitcond892.not, label %polly.loop_exit366, label %polly.loop_header364, !llvm.loop !85

polly.loop_header374:                             ; preds = %polly.loop_header374.preheader, %polly.loop_exit382
  %polly.indvar377 = phi i64 [ %polly.indvar_next378, %polly.loop_exit382 ], [ 0, %polly.loop_header374.preheader ]
  %135 = shl nsw i64 %polly.indvar377, 2
  %136 = or i64 %135, 1
  %137 = or i64 %135, 2
  %138 = or i64 %135, 3
  %139 = shl i64 %polly.indvar377, 5
  %140 = shl i64 %136, 3
  %141 = shl i64 %137, 3
  %142 = shl i64 %138, 3
  br label %polly.loop_header380

polly.loop_exit382:                               ; preds = %polly.loop_exit405
  %polly.indvar_next378 = add nuw nsw i64 %polly.indvar377, 1
  %exitcond891.not = icmp eq i64 %polly.indvar_next378, 15
  br i1 %exitcond891.not, label %polly.exiting273, label %polly.loop_header374

polly.loop_header380:                             ; preds = %polly.loop_exit405, %polly.loop_header374
  %indvars.iv880 = phi i64 [ %indvars.iv.next881, %polly.loop_exit405 ], [ 0, %polly.loop_header374 ]
  %indvars.iv875 = phi i64 [ %indvars.iv.next876, %polly.loop_exit405 ], [ 0, %polly.loop_header374 ]
  %indvars.iv871 = phi i64 [ %indvars.iv.next872, %polly.loop_exit405 ], [ 80, %polly.loop_header374 ]
  %polly.indvar383 = phi i64 [ %polly.indvar_next384, %polly.loop_exit405 ], [ 0, %polly.loop_header374 ]
  %143 = lshr i64 %polly.indvar383, 1
  %144 = shl nuw nsw i64 %143, 3
  %145 = sub nsw i64 %indvars.iv875, %144
  %146 = add i64 %indvars.iv880, %144
  %147 = shl nsw i64 %polly.indvar383, 2
  br label %polly.loop_header392

polly.loop_exit405:                               ; preds = %polly.loop_exit411
  %polly.indvar_next384 = add nuw nsw i64 %polly.indvar383, 1
  %indvars.iv.next872 = add nsw i64 %indvars.iv871, -4
  %indvars.iv.next876 = add nuw nsw i64 %indvars.iv875, 4
  %indvars.iv.next881 = add nsw i64 %indvars.iv880, -4
  %exitcond890.not = icmp eq i64 %polly.indvar_next384, 20
  br i1 %exitcond890.not, label %polly.loop_exit382, label %polly.loop_header380

polly.loop_header392:                             ; preds = %polly.loop_header392, %polly.loop_header380
  %polly.indvar395 = phi i64 [ 0, %polly.loop_header380 ], [ %polly.indvar_next396, %polly.loop_header392 ]
  %148 = add nuw nsw i64 %polly.indvar395, %147
  %polly.access.mul.call2399 = mul nuw nsw i64 %148, 60
  %polly.access.add.call2400 = add nuw nsw i64 %135, %polly.access.mul.call2399
  %polly.access.call2401 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400
  %polly.access.call2401.load = load double, double* %polly.access.call2401, align 8, !alias.scope !82, !noalias !86
  %polly.access.Packed_MemRef_call2275 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.indvar395
  store double %polly.access.call2401.load, double* %polly.access.Packed_MemRef_call2275, align 8
  %polly.indvar_next396 = add nuw nsw i64 %polly.indvar395, 1
  %exitcond873.not = icmp eq i64 %polly.indvar_next396, %indvars.iv871
  br i1 %exitcond873.not, label %polly.loop_header392.1, label %polly.loop_header392

polly.loop_header403:                             ; preds = %polly.loop_exit411, %polly.loop_exit394.3
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %polly.loop_exit411 ], [ %146, %polly.loop_exit394.3 ]
  %indvars.iv877 = phi i64 [ %indvars.iv.next878, %polly.loop_exit411 ], [ %145, %polly.loop_exit394.3 ]
  %polly.indvar406 = phi i64 [ %polly.indvar_next407, %polly.loop_exit411 ], [ %143, %polly.loop_exit394.3 ]
  %smax879 = call i64 @llvm.smax.i64(i64 %indvars.iv877, i64 0)
  %149 = add i64 %smax879, %indvars.iv882
  %150 = shl nsw i64 %polly.indvar406, 3
  %151 = sub nsw i64 %147, %150
  %152 = icmp sgt i64 %151, 0
  %153 = select i1 %152, i64 %151, i64 0
  %polly.loop_guard419 = icmp slt i64 %153, 8
  br i1 %polly.loop_guard419, label %polly.loop_header416.us, label %polly.loop_exit411

polly.loop_header416.us:                          ; preds = %polly.loop_header403, %polly.loop_exit426.us
  %indvars.iv884 = phi i64 [ %indvars.iv.next885, %polly.loop_exit426.us ], [ %149, %polly.loop_header403 ]
  %polly.indvar420.us = phi i64 [ %polly.indvar_next421.us, %polly.loop_exit426.us ], [ %153, %polly.loop_header403 ]
  %smin886 = call i64 @llvm.smin.i64(i64 %indvars.iv884, i64 3)
  %154 = add nuw i64 %polly.indvar420.us, %150
  %155 = add i64 %154, %275
  %polly.loop_guard427.us1000 = icmp sgt i64 %155, -1
  br i1 %polly.loop_guard427.us1000, label %polly.loop_header424.preheader.us, label %polly.loop_exit426.us

polly.loop_header424.us:                          ; preds = %polly.loop_header424.preheader.us, %polly.loop_header424.us
  %polly.indvar428.us = phi i64 [ %polly.indvar_next429.us, %polly.loop_header424.us ], [ 0, %polly.loop_header424.preheader.us ]
  %156 = add nuw nsw i64 %polly.indvar428.us, %147
  %157 = mul nuw nsw i64 %156, 480
  %158 = add nuw nsw i64 %157, %139
  %scevgep431.us = getelementptr i8, i8* %call1, i64 %158
  %scevgep431432.us = bitcast i8* %scevgep431.us to double*
  %_p_scalar_433.us = load double, double* %scevgep431432.us, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73.us = fmul fast double %_p_scalar_437.us, %_p_scalar_433.us
  %polly.access.Packed_MemRef_call2275440.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.indvar428.us
  %_p_scalar_441.us = load double, double* %polly.access.Packed_MemRef_call2275440.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_444.us, %_p_scalar_441.us
  %159 = shl i64 %156, 3
  %160 = add i64 %159, %163
  %scevgep445.us = getelementptr i8, i8* %call, i64 %160
  %scevgep445446.us = bitcast i8* %scevgep445.us to double*
  %_p_scalar_447.us = load double, double* %scevgep445446.us, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_447.us
  store double %p_add42.i79.us, double* %scevgep445446.us, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next429.us = add nuw nsw i64 %polly.indvar428.us, 1
  %exitcond887.not = icmp eq i64 %polly.indvar428.us, %smin886
  br i1 %exitcond887.not, label %polly.loop_exit426.us, label %polly.loop_header424.us

polly.loop_exit426.us:                            ; preds = %polly.loop_header424.us, %polly.loop_header416.us
  %polly.indvar_next421.us = add nuw nsw i64 %polly.indvar420.us, 1
  %polly.loop_cond422.us = icmp ult i64 %polly.indvar420.us, 7
  %indvars.iv.next885 = add i64 %indvars.iv884, 1
  br i1 %polly.loop_cond422.us, label %polly.loop_header416.us, label %polly.loop_header416.us.1

polly.loop_header424.preheader.us:                ; preds = %polly.loop_header416.us
  %polly.access.Packed_MemRef_call2275436.us = getelementptr double, double* %Packed_MemRef_call2275, i64 %155
  %_p_scalar_437.us = load double, double* %polly.access.Packed_MemRef_call2275436.us, align 8
  %161 = mul i64 %154, 480
  %162 = add i64 %161, %139
  %scevgep442.us = getelementptr i8, i8* %call1, i64 %162
  %scevgep442443.us = bitcast i8* %scevgep442.us to double*
  %_p_scalar_444.us = load double, double* %scevgep442443.us, align 8, !alias.scope !81, !noalias !87
  %163 = mul i64 %154, 640
  br label %polly.loop_header424.us

polly.loop_exit411:                               ; preds = %polly.loop_exit426.us.3, %polly.loop_header403
  %polly.indvar_next407 = add nuw nsw i64 %polly.indvar406, 1
  %indvars.iv.next878 = add i64 %indvars.iv877, -8
  %indvars.iv.next883 = add i64 %indvars.iv882, 8
  %exitcond889.not = icmp eq i64 %polly.indvar_next407, 10
  br i1 %exitcond889.not, label %polly.loop_exit405, label %polly.loop_header403

polly.start450:                                   ; preds = %init_array.exit
  %malloccall452 = tail call dereferenceable_or_null(2560) i8* @malloc(i64 2560) #6
  br label %polly.loop_header536

polly.exiting451:                                 ; preds = %polly.loop_exit560
  tail call void @free(i8* %malloccall452)
  br label %kernel_syr2k.exit

polly.loop_header536:                             ; preds = %polly.loop_exit544, %polly.start450
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit544 ], [ 0, %polly.start450 ]
  %polly.indvar539 = phi i64 [ %polly.indvar_next540, %polly.loop_exit544 ], [ 1, %polly.start450 ]
  %164 = add i64 %indvar, 1
  %165 = mul nuw nsw i64 %polly.indvar539, 640
  %scevgep548 = getelementptr i8, i8* %call, i64 %165
  %min.iters.check1307 = icmp ult i64 %164, 4
  br i1 %min.iters.check1307, label %polly.loop_header542.preheader, label %vector.ph1308

vector.ph1308:                                    ; preds = %polly.loop_header536
  %n.vec1310 = and i64 %164, -4
  br label %vector.body1306

vector.body1306:                                  ; preds = %vector.body1306, %vector.ph1308
  %index1311 = phi i64 [ 0, %vector.ph1308 ], [ %index.next1312, %vector.body1306 ]
  %166 = shl nuw nsw i64 %index1311, 3
  %167 = getelementptr i8, i8* %scevgep548, i64 %166
  %168 = bitcast i8* %167 to <4 x double>*
  %wide.load1315 = load <4 x double>, <4 x double>* %168, align 8, !alias.scope !88, !noalias !90
  %169 = fmul fast <4 x double> %wide.load1315, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %170 = bitcast i8* %167 to <4 x double>*
  store <4 x double> %169, <4 x double>* %170, align 8, !alias.scope !88, !noalias !90
  %index.next1312 = add i64 %index1311, 4
  %171 = icmp eq i64 %index.next1312, %n.vec1310
  br i1 %171, label %middle.block1304, label %vector.body1306, !llvm.loop !94

middle.block1304:                                 ; preds = %vector.body1306
  %cmp.n1314 = icmp eq i64 %164, %n.vec1310
  br i1 %cmp.n1314, label %polly.loop_exit544, label %polly.loop_header542.preheader

polly.loop_header542.preheader:                   ; preds = %polly.loop_header536, %middle.block1304
  %polly.indvar545.ph = phi i64 [ 0, %polly.loop_header536 ], [ %n.vec1310, %middle.block1304 ]
  br label %polly.loop_header542

polly.loop_exit544:                               ; preds = %polly.loop_header542, %middle.block1304
  %polly.indvar_next540 = add nuw nsw i64 %polly.indvar539, 1
  %exitcond916.not = icmp eq i64 %polly.indvar_next540, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond916.not, label %polly.loop_header552.preheader, label %polly.loop_header536

polly.loop_header552.preheader:                   ; preds = %polly.loop_exit544
  %Packed_MemRef_call2453 = bitcast i8* %malloccall452 to double*
  br label %polly.loop_header552

polly.loop_header542:                             ; preds = %polly.loop_header542.preheader, %polly.loop_header542
  %polly.indvar545 = phi i64 [ %polly.indvar_next546, %polly.loop_header542 ], [ %polly.indvar545.ph, %polly.loop_header542.preheader ]
  %172 = shl nuw nsw i64 %polly.indvar545, 3
  %scevgep549 = getelementptr i8, i8* %scevgep548, i64 %172
  %scevgep549550 = bitcast i8* %scevgep549 to double*
  %_p_scalar_551 = load double, double* %scevgep549550, align 8, !alias.scope !88, !noalias !90
  %p_mul.i = fmul fast double %_p_scalar_551, 1.200000e+00
  store double %p_mul.i, double* %scevgep549550, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next546 = add nuw nsw i64 %polly.indvar545, 1
  %exitcond915.not = icmp eq i64 %polly.indvar_next546, %polly.indvar539
  br i1 %exitcond915.not, label %polly.loop_exit544, label %polly.loop_header542, !llvm.loop !95

polly.loop_header552:                             ; preds = %polly.loop_header552.preheader, %polly.loop_exit560
  %polly.indvar555 = phi i64 [ %polly.indvar_next556, %polly.loop_exit560 ], [ 0, %polly.loop_header552.preheader ]
  %173 = shl nsw i64 %polly.indvar555, 2
  %174 = or i64 %173, 1
  %175 = or i64 %173, 2
  %176 = or i64 %173, 3
  %177 = shl i64 %polly.indvar555, 5
  %178 = shl i64 %174, 3
  %179 = shl i64 %175, 3
  %180 = shl i64 %176, 3
  br label %polly.loop_header558

polly.loop_exit560:                               ; preds = %polly.loop_exit583
  %polly.indvar_next556 = add nuw nsw i64 %polly.indvar555, 1
  %exitcond914.not = icmp eq i64 %polly.indvar_next556, 15
  br i1 %exitcond914.not, label %polly.exiting451, label %polly.loop_header552

polly.loop_header558:                             ; preds = %polly.loop_exit583, %polly.loop_header552
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %polly.loop_exit583 ], [ 0, %polly.loop_header552 ]
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %polly.loop_exit583 ], [ 0, %polly.loop_header552 ]
  %indvars.iv894 = phi i64 [ %indvars.iv.next895, %polly.loop_exit583 ], [ 80, %polly.loop_header552 ]
  %polly.indvar561 = phi i64 [ %polly.indvar_next562, %polly.loop_exit583 ], [ 0, %polly.loop_header552 ]
  %181 = lshr i64 %polly.indvar561, 1
  %182 = shl nuw nsw i64 %181, 3
  %183 = sub nsw i64 %indvars.iv898, %182
  %184 = add i64 %indvars.iv903, %182
  %185 = shl nsw i64 %polly.indvar561, 2
  br label %polly.loop_header570

polly.loop_exit583:                               ; preds = %polly.loop_exit589
  %polly.indvar_next562 = add nuw nsw i64 %polly.indvar561, 1
  %indvars.iv.next895 = add nsw i64 %indvars.iv894, -4
  %indvars.iv.next899 = add nuw nsw i64 %indvars.iv898, 4
  %indvars.iv.next904 = add nsw i64 %indvars.iv903, -4
  %exitcond913.not = icmp eq i64 %polly.indvar_next562, 20
  br i1 %exitcond913.not, label %polly.loop_exit560, label %polly.loop_header558

polly.loop_header570:                             ; preds = %polly.loop_header570, %polly.loop_header558
  %polly.indvar573 = phi i64 [ 0, %polly.loop_header558 ], [ %polly.indvar_next574, %polly.loop_header570 ]
  %186 = add nuw nsw i64 %polly.indvar573, %185
  %polly.access.mul.call2577 = mul nuw nsw i64 %186, 60
  %polly.access.add.call2578 = add nuw nsw i64 %173, %polly.access.mul.call2577
  %polly.access.call2579 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578
  %polly.access.call2579.load = load double, double* %polly.access.call2579, align 8, !alias.scope !92, !noalias !96
  %polly.access.Packed_MemRef_call2453 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.indvar573
  store double %polly.access.call2579.load, double* %polly.access.Packed_MemRef_call2453, align 8
  %polly.indvar_next574 = add nuw nsw i64 %polly.indvar573, 1
  %exitcond896.not = icmp eq i64 %polly.indvar_next574, %indvars.iv894
  br i1 %exitcond896.not, label %polly.loop_header570.1, label %polly.loop_header570

polly.loop_header581:                             ; preds = %polly.loop_exit589, %polly.loop_exit572.3
  %indvars.iv905 = phi i64 [ %indvars.iv.next906, %polly.loop_exit589 ], [ %184, %polly.loop_exit572.3 ]
  %indvars.iv900 = phi i64 [ %indvars.iv.next901, %polly.loop_exit589 ], [ %183, %polly.loop_exit572.3 ]
  %polly.indvar584 = phi i64 [ %polly.indvar_next585, %polly.loop_exit589 ], [ %181, %polly.loop_exit572.3 ]
  %smax902 = call i64 @llvm.smax.i64(i64 %indvars.iv900, i64 0)
  %187 = add i64 %smax902, %indvars.iv905
  %188 = shl nsw i64 %polly.indvar584, 3
  %189 = sub nsw i64 %185, %188
  %190 = icmp sgt i64 %189, 0
  %191 = select i1 %190, i64 %189, i64 0
  %polly.loop_guard597 = icmp slt i64 %191, 8
  br i1 %polly.loop_guard597, label %polly.loop_header594.us, label %polly.loop_exit589

polly.loop_header594.us:                          ; preds = %polly.loop_header581, %polly.loop_exit604.us
  %indvars.iv907 = phi i64 [ %indvars.iv.next908, %polly.loop_exit604.us ], [ %187, %polly.loop_header581 ]
  %polly.indvar598.us = phi i64 [ %polly.indvar_next599.us, %polly.loop_exit604.us ], [ %191, %polly.loop_header581 ]
  %smin909 = call i64 @llvm.smin.i64(i64 %indvars.iv907, i64 3)
  %192 = add nuw i64 %polly.indvar598.us, %188
  %193 = add i64 %192, %309
  %polly.loop_guard605.us1004 = icmp sgt i64 %193, -1
  br i1 %polly.loop_guard605.us1004, label %polly.loop_header602.preheader.us, label %polly.loop_exit604.us

polly.loop_header602.us:                          ; preds = %polly.loop_header602.preheader.us, %polly.loop_header602.us
  %polly.indvar606.us = phi i64 [ %polly.indvar_next607.us, %polly.loop_header602.us ], [ 0, %polly.loop_header602.preheader.us ]
  %194 = add nuw nsw i64 %polly.indvar606.us, %185
  %195 = mul nuw nsw i64 %194, 480
  %196 = add nuw nsw i64 %195, %177
  %scevgep609.us = getelementptr i8, i8* %call1, i64 %196
  %scevgep609610.us = bitcast i8* %scevgep609.us to double*
  %_p_scalar_611.us = load double, double* %scevgep609610.us, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i.us = fmul fast double %_p_scalar_615.us, %_p_scalar_611.us
  %polly.access.Packed_MemRef_call2453618.us = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.indvar606.us
  %_p_scalar_619.us = load double, double* %polly.access.Packed_MemRef_call2453618.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_622.us, %_p_scalar_619.us
  %197 = shl i64 %194, 3
  %198 = add i64 %197, %201
  %scevgep623.us = getelementptr i8, i8* %call, i64 %198
  %scevgep623624.us = bitcast i8* %scevgep623.us to double*
  %_p_scalar_625.us = load double, double* %scevgep623624.us, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_625.us
  store double %p_add42.i.us, double* %scevgep623624.us, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next607.us = add nuw nsw i64 %polly.indvar606.us, 1
  %exitcond910.not = icmp eq i64 %polly.indvar606.us, %smin909
  br i1 %exitcond910.not, label %polly.loop_exit604.us, label %polly.loop_header602.us

polly.loop_exit604.us:                            ; preds = %polly.loop_header602.us, %polly.loop_header594.us
  %polly.indvar_next599.us = add nuw nsw i64 %polly.indvar598.us, 1
  %polly.loop_cond600.us = icmp ult i64 %polly.indvar598.us, 7
  %indvars.iv.next908 = add i64 %indvars.iv907, 1
  br i1 %polly.loop_cond600.us, label %polly.loop_header594.us, label %polly.loop_header594.us.1

polly.loop_header602.preheader.us:                ; preds = %polly.loop_header594.us
  %polly.access.Packed_MemRef_call2453614.us = getelementptr double, double* %Packed_MemRef_call2453, i64 %193
  %_p_scalar_615.us = load double, double* %polly.access.Packed_MemRef_call2453614.us, align 8
  %199 = mul i64 %192, 480
  %200 = add i64 %199, %177
  %scevgep620.us = getelementptr i8, i8* %call1, i64 %200
  %scevgep620621.us = bitcast i8* %scevgep620.us to double*
  %_p_scalar_622.us = load double, double* %scevgep620621.us, align 8, !alias.scope !91, !noalias !97
  %201 = mul i64 %192, 640
  br label %polly.loop_header602.us

polly.loop_exit589:                               ; preds = %polly.loop_exit604.us.3, %polly.loop_header581
  %polly.indvar_next585 = add nuw nsw i64 %polly.indvar584, 1
  %indvars.iv.next901 = add i64 %indvars.iv900, -8
  %indvars.iv.next906 = add i64 %indvars.iv905, 8
  %exitcond912.not = icmp eq i64 %polly.indvar_next585, 10
  br i1 %exitcond912.not, label %polly.loop_exit583, label %polly.loop_header581

polly.loop_header764:                             ; preds = %entry, %polly.loop_exit772
  %polly.indvar767 = phi i64 [ %polly.indvar_next768, %polly.loop_exit772 ], [ 0, %entry ]
  %202 = mul nuw nsw i64 %polly.indvar767, 640
  %203 = trunc i64 %polly.indvar767 to i32
  %broadcast.splatinsert1038 = insertelement <4 x i32> poison, i32 %203, i32 0
  %broadcast.splat1039 = shufflevector <4 x i32> %broadcast.splatinsert1038, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1028

vector.body1028:                                  ; preds = %vector.body1028, %polly.loop_header764
  %index1030 = phi i64 [ 0, %polly.loop_header764 ], [ %index.next1031, %vector.body1028 ]
  %vec.ind1036 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header764 ], [ %vec.ind.next1037, %vector.body1028 ]
  %204 = mul <4 x i32> %vec.ind1036, %broadcast.splat1039
  %205 = add <4 x i32> %204, <i32 3, i32 3, i32 3, i32 3>
  %206 = urem <4 x i32> %205, <i32 80, i32 80, i32 80, i32 80>
  %207 = sitofp <4 x i32> %206 to <4 x double>
  %208 = fmul fast <4 x double> %207, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %209 = shl i64 %index1030, 3
  %210 = add nuw nsw i64 %209, %202
  %211 = getelementptr i8, i8* %call, i64 %210
  %212 = bitcast i8* %211 to <4 x double>*
  store <4 x double> %208, <4 x double>* %212, align 8, !alias.scope !98, !noalias !100
  %index.next1031 = add i64 %index1030, 4
  %vec.ind.next1037 = add <4 x i32> %vec.ind1036, <i32 4, i32 4, i32 4, i32 4>
  %213 = icmp eq i64 %index.next1031, 32
  br i1 %213, label %polly.loop_exit772, label %vector.body1028, !llvm.loop !103

polly.loop_exit772:                               ; preds = %vector.body1028
  %polly.indvar_next768 = add nuw nsw i64 %polly.indvar767, 1
  %exitcond936.not = icmp eq i64 %polly.indvar_next768, 32
  br i1 %exitcond936.not, label %polly.loop_header764.1, label %polly.loop_header764

polly.loop_header791:                             ; preds = %polly.loop_exit772.2.2, %polly.loop_exit799
  %polly.indvar794 = phi i64 [ %polly.indvar_next795, %polly.loop_exit799 ], [ 0, %polly.loop_exit772.2.2 ]
  %214 = mul nuw nsw i64 %polly.indvar794, 480
  %215 = trunc i64 %polly.indvar794 to i32
  %broadcast.splatinsert1152 = insertelement <4 x i32> poison, i32 %215, i32 0
  %broadcast.splat1153 = shufflevector <4 x i32> %broadcast.splatinsert1152, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %polly.loop_header791
  %index1144 = phi i64 [ 0, %polly.loop_header791 ], [ %index.next1145, %vector.body1142 ]
  %vec.ind1150 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791 ], [ %vec.ind.next1151, %vector.body1142 ]
  %216 = mul <4 x i32> %vec.ind1150, %broadcast.splat1153
  %217 = add <4 x i32> %216, <i32 2, i32 2, i32 2, i32 2>
  %218 = urem <4 x i32> %217, <i32 60, i32 60, i32 60, i32 60>
  %219 = sitofp <4 x i32> %218 to <4 x double>
  %220 = fmul fast <4 x double> %219, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %221 = shl i64 %index1144, 3
  %222 = add i64 %221, %214
  %223 = getelementptr i8, i8* %call2, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %220, <4 x double>* %224, align 8, !alias.scope !102, !noalias !104
  %index.next1145 = add i64 %index1144, 4
  %vec.ind.next1151 = add <4 x i32> %vec.ind1150, <i32 4, i32 4, i32 4, i32 4>
  %225 = icmp eq i64 %index.next1145, 32
  br i1 %225, label %polly.loop_exit799, label %vector.body1142, !llvm.loop !105

polly.loop_exit799:                               ; preds = %vector.body1142
  %polly.indvar_next795 = add nuw nsw i64 %polly.indvar794, 1
  %exitcond927.not = icmp eq i64 %polly.indvar_next795, 32
  br i1 %exitcond927.not, label %polly.loop_header791.1, label %polly.loop_header791

polly.loop_header817:                             ; preds = %polly.loop_exit799.1.2, %polly.loop_exit825
  %polly.indvar820 = phi i64 [ %polly.indvar_next821, %polly.loop_exit825 ], [ 0, %polly.loop_exit799.1.2 ]
  %226 = mul nuw nsw i64 %polly.indvar820, 480
  %227 = trunc i64 %polly.indvar820 to i32
  %broadcast.splatinsert1230 = insertelement <4 x i32> poison, i32 %227, i32 0
  %broadcast.splat1231 = shufflevector <4 x i32> %broadcast.splatinsert1230, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1220

vector.body1220:                                  ; preds = %vector.body1220, %polly.loop_header817
  %index1222 = phi i64 [ 0, %polly.loop_header817 ], [ %index.next1223, %vector.body1220 ]
  %vec.ind1228 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817 ], [ %vec.ind.next1229, %vector.body1220 ]
  %228 = mul <4 x i32> %vec.ind1228, %broadcast.splat1231
  %229 = add <4 x i32> %228, <i32 1, i32 1, i32 1, i32 1>
  %230 = urem <4 x i32> %229, <i32 80, i32 80, i32 80, i32 80>
  %231 = sitofp <4 x i32> %230 to <4 x double>
  %232 = fmul fast <4 x double> %231, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %233 = shl i64 %index1222, 3
  %234 = add i64 %233, %226
  %235 = getelementptr i8, i8* %call1, i64 %234
  %236 = bitcast i8* %235 to <4 x double>*
  store <4 x double> %232, <4 x double>* %236, align 8, !alias.scope !101, !noalias !106
  %index.next1223 = add i64 %index1222, 4
  %vec.ind.next1229 = add <4 x i32> %vec.ind1228, <i32 4, i32 4, i32 4, i32 4>
  %237 = icmp eq i64 %index.next1223, 32
  br i1 %237, label %polly.loop_exit825, label %vector.body1220, !llvm.loop !107

polly.loop_exit825:                               ; preds = %vector.body1220
  %polly.indvar_next821 = add nuw nsw i64 %polly.indvar820, 1
  %exitcond921.not = icmp eq i64 %polly.indvar_next821, 32
  br i1 %exitcond921.not, label %polly.loop_header817.1, label %polly.loop_header817

polly.loop_header217.1:                           ; preds = %polly.loop_header217, %polly.loop_header217.1
  %polly.indvar220.1 = phi i64 [ %polly.indvar_next221.1, %polly.loop_header217.1 ], [ 0, %polly.loop_header217 ]
  %238 = add nuw nsw i64 %polly.indvar220.1, %109
  %polly.access.mul.call2224.1 = mul nuw nsw i64 %238, 60
  %polly.access.add.call2225.1 = add nuw nsw i64 %98, %polly.access.mul.call2224.1
  %polly.access.call2226.1 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2225.1
  %polly.access.call2226.load.1 = load double, double* %polly.access.call2226.1, align 8, !alias.scope !71, !noalias !76
  %polly.access.add.Packed_MemRef_call2.1 = add nuw nsw i64 %polly.indvar220.1, 80
  %polly.access.Packed_MemRef_call2.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.1
  store double %polly.access.call2226.load.1, double* %polly.access.Packed_MemRef_call2.1, align 8
  %polly.indvar_next221.1 = add nuw nsw i64 %polly.indvar220.1, 1
  %exitcond.1.not = icmp eq i64 %polly.indvar_next221.1, %indvars.iv
  br i1 %exitcond.1.not, label %polly.loop_header217.2, label %polly.loop_header217.1

polly.loop_header217.2:                           ; preds = %polly.loop_header217.1, %polly.loop_header217.2
  %polly.indvar220.2 = phi i64 [ %polly.indvar_next221.2, %polly.loop_header217.2 ], [ 0, %polly.loop_header217.1 ]
  %239 = add nuw nsw i64 %polly.indvar220.2, %109
  %polly.access.mul.call2224.2 = mul nuw nsw i64 %239, 60
  %polly.access.add.call2225.2 = add nuw nsw i64 %99, %polly.access.mul.call2224.2
  %polly.access.call2226.2 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2225.2
  %polly.access.call2226.load.2 = load double, double* %polly.access.call2226.2, align 8, !alias.scope !71, !noalias !76
  %polly.access.add.Packed_MemRef_call2.2 = add nuw nsw i64 %polly.indvar220.2, 160
  %polly.access.Packed_MemRef_call2.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.2
  store double %polly.access.call2226.load.2, double* %polly.access.Packed_MemRef_call2.2, align 8
  %polly.indvar_next221.2 = add nuw nsw i64 %polly.indvar220.2, 1
  %exitcond.2.not = icmp eq i64 %polly.indvar_next221.2, %indvars.iv
  br i1 %exitcond.2.not, label %polly.loop_header217.3, label %polly.loop_header217.2

polly.loop_header217.3:                           ; preds = %polly.loop_header217.2, %polly.loop_header217.3
  %polly.indvar220.3 = phi i64 [ %polly.indvar_next221.3, %polly.loop_header217.3 ], [ 0, %polly.loop_header217.2 ]
  %240 = add nuw nsw i64 %polly.indvar220.3, %109
  %polly.access.mul.call2224.3 = mul nuw nsw i64 %240, 60
  %polly.access.add.call2225.3 = add nuw nsw i64 %100, %polly.access.mul.call2224.3
  %polly.access.call2226.3 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2225.3
  %polly.access.call2226.load.3 = load double, double* %polly.access.call2226.3, align 8, !alias.scope !71, !noalias !76
  %polly.access.add.Packed_MemRef_call2.3 = add nuw nsw i64 %polly.indvar220.3, 240
  %polly.access.Packed_MemRef_call2.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2.3
  store double %polly.access.call2226.load.3, double* %polly.access.Packed_MemRef_call2.3, align 8
  %polly.indvar_next221.3 = add nuw nsw i64 %polly.indvar220.3, 1
  %exitcond.3.not = icmp eq i64 %polly.indvar_next221.3, %indvars.iv
  br i1 %exitcond.3.not, label %polly.loop_exit219.3, label %polly.loop_header217.3

polly.loop_exit219.3:                             ; preds = %polly.loop_header217.3
  %241 = mul nsw i64 %polly.indvar208, -4
  br label %polly.loop_header227

polly.loop_header239.us.1:                        ; preds = %polly.loop_exit248.us, %polly.loop_exit248.us.1
  %indvars.iv862.1 = phi i64 [ %indvars.iv.next863.1, %polly.loop_exit248.us.1 ], [ %111, %polly.loop_exit248.us ]
  %polly.indvar242.us.1 = phi i64 [ %polly.indvar_next243.us.1, %polly.loop_exit248.us.1 ], [ %115, %polly.loop_exit248.us ]
  %smin.1 = call i64 @llvm.smin.i64(i64 %indvars.iv862.1, i64 3)
  %242 = add nuw i64 %polly.indvar242.us.1, %112
  %243 = add i64 %242, %241
  %polly.loop_guard249.us.1997 = icmp sgt i64 %243, -1
  br i1 %polly.loop_guard249.us.1997, label %polly.loop_header246.preheader.us.1, label %polly.loop_exit248.us.1

polly.loop_header246.preheader.us.1:              ; preds = %polly.loop_header239.us.1
  %polly.access.add.Packed_MemRef_call2257.us.1 = add nuw nsw i64 %243, 80
  %polly.access.Packed_MemRef_call2258.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us.1
  %_p_scalar_259.us.1 = load double, double* %polly.access.Packed_MemRef_call2258.us.1, align 8
  %244 = mul i64 %242, 480
  %245 = add i64 %244, %102
  %scevgep264.us.1 = getelementptr i8, i8* %call1, i64 %245
  %scevgep264265.us.1 = bitcast i8* %scevgep264.us.1 to double*
  %_p_scalar_266.us.1 = load double, double* %scevgep264265.us.1, align 8, !alias.scope !70, !noalias !77
  %246 = mul i64 %242, 640
  br label %polly.loop_header246.us.1

polly.loop_header246.us.1:                        ; preds = %polly.loop_header246.us.1, %polly.loop_header246.preheader.us.1
  %polly.indvar250.us.1 = phi i64 [ %polly.indvar_next251.us.1, %polly.loop_header246.us.1 ], [ 0, %polly.loop_header246.preheader.us.1 ]
  %247 = add nuw nsw i64 %polly.indvar250.us.1, %109
  %248 = mul nuw nsw i64 %247, 480
  %249 = add nuw nsw i64 %248, %102
  %scevgep253.us.1 = getelementptr i8, i8* %call1, i64 %249
  %scevgep253254.us.1 = bitcast i8* %scevgep253.us.1 to double*
  %_p_scalar_255.us.1 = load double, double* %scevgep253254.us.1, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_259.us.1, %_p_scalar_255.us.1
  %polly.access.add.Packed_MemRef_call2261.us.1 = add nuw nsw i64 %polly.indvar250.us.1, 80
  %polly.access.Packed_MemRef_call2262.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us.1
  %_p_scalar_263.us.1 = load double, double* %polly.access.Packed_MemRef_call2262.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_266.us.1, %_p_scalar_263.us.1
  %250 = shl i64 %247, 3
  %251 = add i64 %250, %246
  %scevgep267.us.1 = getelementptr i8, i8* %call, i64 %251
  %scevgep267268.us.1 = bitcast i8* %scevgep267.us.1 to double*
  %_p_scalar_269.us.1 = load double, double* %scevgep267268.us.1, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_269.us.1
  store double %p_add42.i118.us.1, double* %scevgep267268.us.1, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next251.us.1 = add nuw nsw i64 %polly.indvar250.us.1, 1
  %exitcond864.1.not = icmp eq i64 %polly.indvar250.us.1, %smin.1
  br i1 %exitcond864.1.not, label %polly.loop_exit248.us.1, label %polly.loop_header246.us.1

polly.loop_exit248.us.1:                          ; preds = %polly.loop_header246.us.1, %polly.loop_header239.us.1
  %polly.indvar_next243.us.1 = add nuw nsw i64 %polly.indvar242.us.1, 1
  %polly.loop_cond244.us.1 = icmp ult i64 %polly.indvar242.us.1, 7
  %indvars.iv.next863.1 = add i64 %indvars.iv862.1, 1
  br i1 %polly.loop_cond244.us.1, label %polly.loop_header239.us.1, label %polly.loop_header239.us.2

polly.loop_header239.us.2:                        ; preds = %polly.loop_exit248.us.1, %polly.loop_exit248.us.2
  %indvars.iv862.2 = phi i64 [ %indvars.iv.next863.2, %polly.loop_exit248.us.2 ], [ %111, %polly.loop_exit248.us.1 ]
  %polly.indvar242.us.2 = phi i64 [ %polly.indvar_next243.us.2, %polly.loop_exit248.us.2 ], [ %115, %polly.loop_exit248.us.1 ]
  %smin.2 = call i64 @llvm.smin.i64(i64 %indvars.iv862.2, i64 3)
  %252 = add nuw i64 %polly.indvar242.us.2, %112
  %253 = add i64 %252, %241
  %polly.loop_guard249.us.2998 = icmp sgt i64 %253, -1
  br i1 %polly.loop_guard249.us.2998, label %polly.loop_header246.preheader.us.2, label %polly.loop_exit248.us.2

polly.loop_header246.preheader.us.2:              ; preds = %polly.loop_header239.us.2
  %polly.access.add.Packed_MemRef_call2257.us.2 = add nuw nsw i64 %253, 160
  %polly.access.Packed_MemRef_call2258.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us.2
  %_p_scalar_259.us.2 = load double, double* %polly.access.Packed_MemRef_call2258.us.2, align 8
  %254 = mul i64 %252, 480
  %255 = add i64 %254, %103
  %scevgep264.us.2 = getelementptr i8, i8* %call1, i64 %255
  %scevgep264265.us.2 = bitcast i8* %scevgep264.us.2 to double*
  %_p_scalar_266.us.2 = load double, double* %scevgep264265.us.2, align 8, !alias.scope !70, !noalias !77
  %256 = mul i64 %252, 640
  br label %polly.loop_header246.us.2

polly.loop_header246.us.2:                        ; preds = %polly.loop_header246.us.2, %polly.loop_header246.preheader.us.2
  %polly.indvar250.us.2 = phi i64 [ %polly.indvar_next251.us.2, %polly.loop_header246.us.2 ], [ 0, %polly.loop_header246.preheader.us.2 ]
  %257 = add nuw nsw i64 %polly.indvar250.us.2, %109
  %258 = mul nuw nsw i64 %257, 480
  %259 = add nuw nsw i64 %258, %103
  %scevgep253.us.2 = getelementptr i8, i8* %call1, i64 %259
  %scevgep253254.us.2 = bitcast i8* %scevgep253.us.2 to double*
  %_p_scalar_255.us.2 = load double, double* %scevgep253254.us.2, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_259.us.2, %_p_scalar_255.us.2
  %polly.access.add.Packed_MemRef_call2261.us.2 = add nuw nsw i64 %polly.indvar250.us.2, 160
  %polly.access.Packed_MemRef_call2262.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us.2
  %_p_scalar_263.us.2 = load double, double* %polly.access.Packed_MemRef_call2262.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_266.us.2, %_p_scalar_263.us.2
  %260 = shl i64 %257, 3
  %261 = add i64 %260, %256
  %scevgep267.us.2 = getelementptr i8, i8* %call, i64 %261
  %scevgep267268.us.2 = bitcast i8* %scevgep267.us.2 to double*
  %_p_scalar_269.us.2 = load double, double* %scevgep267268.us.2, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_269.us.2
  store double %p_add42.i118.us.2, double* %scevgep267268.us.2, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next251.us.2 = add nuw nsw i64 %polly.indvar250.us.2, 1
  %exitcond864.2.not = icmp eq i64 %polly.indvar250.us.2, %smin.2
  br i1 %exitcond864.2.not, label %polly.loop_exit248.us.2, label %polly.loop_header246.us.2

polly.loop_exit248.us.2:                          ; preds = %polly.loop_header246.us.2, %polly.loop_header239.us.2
  %polly.indvar_next243.us.2 = add nuw nsw i64 %polly.indvar242.us.2, 1
  %polly.loop_cond244.us.2 = icmp ult i64 %polly.indvar242.us.2, 7
  %indvars.iv.next863.2 = add i64 %indvars.iv862.2, 1
  br i1 %polly.loop_cond244.us.2, label %polly.loop_header239.us.2, label %polly.loop_header239.us.3

polly.loop_header239.us.3:                        ; preds = %polly.loop_exit248.us.2, %polly.loop_exit248.us.3
  %indvars.iv862.3 = phi i64 [ %indvars.iv.next863.3, %polly.loop_exit248.us.3 ], [ %111, %polly.loop_exit248.us.2 ]
  %polly.indvar242.us.3 = phi i64 [ %polly.indvar_next243.us.3, %polly.loop_exit248.us.3 ], [ %115, %polly.loop_exit248.us.2 ]
  %smin.3 = call i64 @llvm.smin.i64(i64 %indvars.iv862.3, i64 3)
  %262 = add nuw i64 %polly.indvar242.us.3, %112
  %263 = add i64 %262, %241
  %polly.loop_guard249.us.3999 = icmp sgt i64 %263, -1
  br i1 %polly.loop_guard249.us.3999, label %polly.loop_header246.preheader.us.3, label %polly.loop_exit248.us.3

polly.loop_header246.preheader.us.3:              ; preds = %polly.loop_header239.us.3
  %polly.access.add.Packed_MemRef_call2257.us.3 = add nuw nsw i64 %263, 240
  %polly.access.Packed_MemRef_call2258.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2257.us.3
  %_p_scalar_259.us.3 = load double, double* %polly.access.Packed_MemRef_call2258.us.3, align 8
  %264 = mul i64 %262, 480
  %265 = add i64 %264, %104
  %scevgep264.us.3 = getelementptr i8, i8* %call1, i64 %265
  %scevgep264265.us.3 = bitcast i8* %scevgep264.us.3 to double*
  %_p_scalar_266.us.3 = load double, double* %scevgep264265.us.3, align 8, !alias.scope !70, !noalias !77
  %266 = mul i64 %262, 640
  br label %polly.loop_header246.us.3

polly.loop_header246.us.3:                        ; preds = %polly.loop_header246.us.3, %polly.loop_header246.preheader.us.3
  %polly.indvar250.us.3 = phi i64 [ %polly.indvar_next251.us.3, %polly.loop_header246.us.3 ], [ 0, %polly.loop_header246.preheader.us.3 ]
  %267 = add nuw nsw i64 %polly.indvar250.us.3, %109
  %268 = mul nuw nsw i64 %267, 480
  %269 = add nuw nsw i64 %268, %104
  %scevgep253.us.3 = getelementptr i8, i8* %call1, i64 %269
  %scevgep253254.us.3 = bitcast i8* %scevgep253.us.3 to double*
  %_p_scalar_255.us.3 = load double, double* %scevgep253254.us.3, align 8, !alias.scope !70, !noalias !77
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_259.us.3, %_p_scalar_255.us.3
  %polly.access.add.Packed_MemRef_call2261.us.3 = add nuw nsw i64 %polly.indvar250.us.3, 240
  %polly.access.Packed_MemRef_call2262.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2261.us.3
  %_p_scalar_263.us.3 = load double, double* %polly.access.Packed_MemRef_call2262.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_266.us.3, %_p_scalar_263.us.3
  %270 = shl i64 %267, 3
  %271 = add i64 %270, %266
  %scevgep267.us.3 = getelementptr i8, i8* %call, i64 %271
  %scevgep267268.us.3 = bitcast i8* %scevgep267.us.3 to double*
  %_p_scalar_269.us.3 = load double, double* %scevgep267268.us.3, align 8, !alias.scope !67, !noalias !69
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_269.us.3
  store double %p_add42.i118.us.3, double* %scevgep267268.us.3, align 8, !alias.scope !67, !noalias !69
  %polly.indvar_next251.us.3 = add nuw nsw i64 %polly.indvar250.us.3, 1
  %exitcond864.3.not = icmp eq i64 %polly.indvar250.us.3, %smin.3
  br i1 %exitcond864.3.not, label %polly.loop_exit248.us.3, label %polly.loop_header246.us.3

polly.loop_exit248.us.3:                          ; preds = %polly.loop_header246.us.3, %polly.loop_header239.us.3
  %polly.indvar_next243.us.3 = add nuw nsw i64 %polly.indvar242.us.3, 1
  %polly.loop_cond244.us.3 = icmp ult i64 %polly.indvar242.us.3, 7
  %indvars.iv.next863.3 = add i64 %indvars.iv862.3, 1
  br i1 %polly.loop_cond244.us.3, label %polly.loop_header239.us.3, label %polly.loop_exit235

polly.loop_header392.1:                           ; preds = %polly.loop_header392, %polly.loop_header392.1
  %polly.indvar395.1 = phi i64 [ %polly.indvar_next396.1, %polly.loop_header392.1 ], [ 0, %polly.loop_header392 ]
  %272 = add nuw nsw i64 %polly.indvar395.1, %147
  %polly.access.mul.call2399.1 = mul nuw nsw i64 %272, 60
  %polly.access.add.call2400.1 = add nuw nsw i64 %136, %polly.access.mul.call2399.1
  %polly.access.call2401.1 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400.1
  %polly.access.call2401.load.1 = load double, double* %polly.access.call2401.1, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call2275.1 = add nuw nsw i64 %polly.indvar395.1, 80
  %polly.access.Packed_MemRef_call2275.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275.1
  store double %polly.access.call2401.load.1, double* %polly.access.Packed_MemRef_call2275.1, align 8
  %polly.indvar_next396.1 = add nuw nsw i64 %polly.indvar395.1, 1
  %exitcond873.1.not = icmp eq i64 %polly.indvar_next396.1, %indvars.iv871
  br i1 %exitcond873.1.not, label %polly.loop_header392.2, label %polly.loop_header392.1

polly.loop_header392.2:                           ; preds = %polly.loop_header392.1, %polly.loop_header392.2
  %polly.indvar395.2 = phi i64 [ %polly.indvar_next396.2, %polly.loop_header392.2 ], [ 0, %polly.loop_header392.1 ]
  %273 = add nuw nsw i64 %polly.indvar395.2, %147
  %polly.access.mul.call2399.2 = mul nuw nsw i64 %273, 60
  %polly.access.add.call2400.2 = add nuw nsw i64 %137, %polly.access.mul.call2399.2
  %polly.access.call2401.2 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400.2
  %polly.access.call2401.load.2 = load double, double* %polly.access.call2401.2, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call2275.2 = add nuw nsw i64 %polly.indvar395.2, 160
  %polly.access.Packed_MemRef_call2275.2 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275.2
  store double %polly.access.call2401.load.2, double* %polly.access.Packed_MemRef_call2275.2, align 8
  %polly.indvar_next396.2 = add nuw nsw i64 %polly.indvar395.2, 1
  %exitcond873.2.not = icmp eq i64 %polly.indvar_next396.2, %indvars.iv871
  br i1 %exitcond873.2.not, label %polly.loop_header392.3, label %polly.loop_header392.2

polly.loop_header392.3:                           ; preds = %polly.loop_header392.2, %polly.loop_header392.3
  %polly.indvar395.3 = phi i64 [ %polly.indvar_next396.3, %polly.loop_header392.3 ], [ 0, %polly.loop_header392.2 ]
  %274 = add nuw nsw i64 %polly.indvar395.3, %147
  %polly.access.mul.call2399.3 = mul nuw nsw i64 %274, 60
  %polly.access.add.call2400.3 = add nuw nsw i64 %138, %polly.access.mul.call2399.3
  %polly.access.call2401.3 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2400.3
  %polly.access.call2401.load.3 = load double, double* %polly.access.call2401.3, align 8, !alias.scope !82, !noalias !86
  %polly.access.add.Packed_MemRef_call2275.3 = add nuw nsw i64 %polly.indvar395.3, 240
  %polly.access.Packed_MemRef_call2275.3 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275.3
  store double %polly.access.call2401.load.3, double* %polly.access.Packed_MemRef_call2275.3, align 8
  %polly.indvar_next396.3 = add nuw nsw i64 %polly.indvar395.3, 1
  %exitcond873.3.not = icmp eq i64 %polly.indvar_next396.3, %indvars.iv871
  br i1 %exitcond873.3.not, label %polly.loop_exit394.3, label %polly.loop_header392.3

polly.loop_exit394.3:                             ; preds = %polly.loop_header392.3
  %275 = mul nsw i64 %polly.indvar383, -4
  br label %polly.loop_header403

polly.loop_header416.us.1:                        ; preds = %polly.loop_exit426.us, %polly.loop_exit426.us.1
  %indvars.iv884.1 = phi i64 [ %indvars.iv.next885.1, %polly.loop_exit426.us.1 ], [ %149, %polly.loop_exit426.us ]
  %polly.indvar420.us.1 = phi i64 [ %polly.indvar_next421.us.1, %polly.loop_exit426.us.1 ], [ %153, %polly.loop_exit426.us ]
  %smin886.1 = call i64 @llvm.smin.i64(i64 %indvars.iv884.1, i64 3)
  %276 = add nuw i64 %polly.indvar420.us.1, %150
  %277 = add i64 %276, %275
  %polly.loop_guard427.us.11001 = icmp sgt i64 %277, -1
  br i1 %polly.loop_guard427.us.11001, label %polly.loop_header424.preheader.us.1, label %polly.loop_exit426.us.1

polly.loop_header424.preheader.us.1:              ; preds = %polly.loop_header416.us.1
  %polly.access.add.Packed_MemRef_call2275435.us.1 = add nuw nsw i64 %277, 80
  %polly.access.Packed_MemRef_call2275436.us.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.us.1
  %_p_scalar_437.us.1 = load double, double* %polly.access.Packed_MemRef_call2275436.us.1, align 8
  %278 = mul i64 %276, 480
  %279 = add i64 %278, %140
  %scevgep442.us.1 = getelementptr i8, i8* %call1, i64 %279
  %scevgep442443.us.1 = bitcast i8* %scevgep442.us.1 to double*
  %_p_scalar_444.us.1 = load double, double* %scevgep442443.us.1, align 8, !alias.scope !81, !noalias !87
  %280 = mul i64 %276, 640
  br label %polly.loop_header424.us.1

polly.loop_header424.us.1:                        ; preds = %polly.loop_header424.us.1, %polly.loop_header424.preheader.us.1
  %polly.indvar428.us.1 = phi i64 [ %polly.indvar_next429.us.1, %polly.loop_header424.us.1 ], [ 0, %polly.loop_header424.preheader.us.1 ]
  %281 = add nuw nsw i64 %polly.indvar428.us.1, %147
  %282 = mul nuw nsw i64 %281, 480
  %283 = add nuw nsw i64 %282, %140
  %scevgep431.us.1 = getelementptr i8, i8* %call1, i64 %283
  %scevgep431432.us.1 = bitcast i8* %scevgep431.us.1 to double*
  %_p_scalar_433.us.1 = load double, double* %scevgep431432.us.1, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_437.us.1, %_p_scalar_433.us.1
  %polly.access.add.Packed_MemRef_call2275439.us.1 = add nuw nsw i64 %polly.indvar428.us.1, 80
  %polly.access.Packed_MemRef_call2275440.us.1 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.us.1
  %_p_scalar_441.us.1 = load double, double* %polly.access.Packed_MemRef_call2275440.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_444.us.1, %_p_scalar_441.us.1
  %284 = shl i64 %281, 3
  %285 = add i64 %284, %280
  %scevgep445.us.1 = getelementptr i8, i8* %call, i64 %285
  %scevgep445446.us.1 = bitcast i8* %scevgep445.us.1 to double*
  %_p_scalar_447.us.1 = load double, double* %scevgep445446.us.1, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_447.us.1
  store double %p_add42.i79.us.1, double* %scevgep445446.us.1, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next429.us.1 = add nuw nsw i64 %polly.indvar428.us.1, 1
  %exitcond887.1.not = icmp eq i64 %polly.indvar428.us.1, %smin886.1
  br i1 %exitcond887.1.not, label %polly.loop_exit426.us.1, label %polly.loop_header424.us.1

polly.loop_exit426.us.1:                          ; preds = %polly.loop_header424.us.1, %polly.loop_header416.us.1
  %polly.indvar_next421.us.1 = add nuw nsw i64 %polly.indvar420.us.1, 1
  %polly.loop_cond422.us.1 = icmp ult i64 %polly.indvar420.us.1, 7
  %indvars.iv.next885.1 = add i64 %indvars.iv884.1, 1
  br i1 %polly.loop_cond422.us.1, label %polly.loop_header416.us.1, label %polly.loop_header416.us.2

polly.loop_header416.us.2:                        ; preds = %polly.loop_exit426.us.1, %polly.loop_exit426.us.2
  %indvars.iv884.2 = phi i64 [ %indvars.iv.next885.2, %polly.loop_exit426.us.2 ], [ %149, %polly.loop_exit426.us.1 ]
  %polly.indvar420.us.2 = phi i64 [ %polly.indvar_next421.us.2, %polly.loop_exit426.us.2 ], [ %153, %polly.loop_exit426.us.1 ]
  %smin886.2 = call i64 @llvm.smin.i64(i64 %indvars.iv884.2, i64 3)
  %286 = add nuw i64 %polly.indvar420.us.2, %150
  %287 = add i64 %286, %275
  %polly.loop_guard427.us.21002 = icmp sgt i64 %287, -1
  br i1 %polly.loop_guard427.us.21002, label %polly.loop_header424.preheader.us.2, label %polly.loop_exit426.us.2

polly.loop_header424.preheader.us.2:              ; preds = %polly.loop_header416.us.2
  %polly.access.add.Packed_MemRef_call2275435.us.2 = add nuw nsw i64 %287, 160
  %polly.access.Packed_MemRef_call2275436.us.2 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.us.2
  %_p_scalar_437.us.2 = load double, double* %polly.access.Packed_MemRef_call2275436.us.2, align 8
  %288 = mul i64 %286, 480
  %289 = add i64 %288, %141
  %scevgep442.us.2 = getelementptr i8, i8* %call1, i64 %289
  %scevgep442443.us.2 = bitcast i8* %scevgep442.us.2 to double*
  %_p_scalar_444.us.2 = load double, double* %scevgep442443.us.2, align 8, !alias.scope !81, !noalias !87
  %290 = mul i64 %286, 640
  br label %polly.loop_header424.us.2

polly.loop_header424.us.2:                        ; preds = %polly.loop_header424.us.2, %polly.loop_header424.preheader.us.2
  %polly.indvar428.us.2 = phi i64 [ %polly.indvar_next429.us.2, %polly.loop_header424.us.2 ], [ 0, %polly.loop_header424.preheader.us.2 ]
  %291 = add nuw nsw i64 %polly.indvar428.us.2, %147
  %292 = mul nuw nsw i64 %291, 480
  %293 = add nuw nsw i64 %292, %141
  %scevgep431.us.2 = getelementptr i8, i8* %call1, i64 %293
  %scevgep431432.us.2 = bitcast i8* %scevgep431.us.2 to double*
  %_p_scalar_433.us.2 = load double, double* %scevgep431432.us.2, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_437.us.2, %_p_scalar_433.us.2
  %polly.access.add.Packed_MemRef_call2275439.us.2 = add nuw nsw i64 %polly.indvar428.us.2, 160
  %polly.access.Packed_MemRef_call2275440.us.2 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.us.2
  %_p_scalar_441.us.2 = load double, double* %polly.access.Packed_MemRef_call2275440.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_444.us.2, %_p_scalar_441.us.2
  %294 = shl i64 %291, 3
  %295 = add i64 %294, %290
  %scevgep445.us.2 = getelementptr i8, i8* %call, i64 %295
  %scevgep445446.us.2 = bitcast i8* %scevgep445.us.2 to double*
  %_p_scalar_447.us.2 = load double, double* %scevgep445446.us.2, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_447.us.2
  store double %p_add42.i79.us.2, double* %scevgep445446.us.2, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next429.us.2 = add nuw nsw i64 %polly.indvar428.us.2, 1
  %exitcond887.2.not = icmp eq i64 %polly.indvar428.us.2, %smin886.2
  br i1 %exitcond887.2.not, label %polly.loop_exit426.us.2, label %polly.loop_header424.us.2

polly.loop_exit426.us.2:                          ; preds = %polly.loop_header424.us.2, %polly.loop_header416.us.2
  %polly.indvar_next421.us.2 = add nuw nsw i64 %polly.indvar420.us.2, 1
  %polly.loop_cond422.us.2 = icmp ult i64 %polly.indvar420.us.2, 7
  %indvars.iv.next885.2 = add i64 %indvars.iv884.2, 1
  br i1 %polly.loop_cond422.us.2, label %polly.loop_header416.us.2, label %polly.loop_header416.us.3

polly.loop_header416.us.3:                        ; preds = %polly.loop_exit426.us.2, %polly.loop_exit426.us.3
  %indvars.iv884.3 = phi i64 [ %indvars.iv.next885.3, %polly.loop_exit426.us.3 ], [ %149, %polly.loop_exit426.us.2 ]
  %polly.indvar420.us.3 = phi i64 [ %polly.indvar_next421.us.3, %polly.loop_exit426.us.3 ], [ %153, %polly.loop_exit426.us.2 ]
  %smin886.3 = call i64 @llvm.smin.i64(i64 %indvars.iv884.3, i64 3)
  %296 = add nuw i64 %polly.indvar420.us.3, %150
  %297 = add i64 %296, %275
  %polly.loop_guard427.us.31003 = icmp sgt i64 %297, -1
  br i1 %polly.loop_guard427.us.31003, label %polly.loop_header424.preheader.us.3, label %polly.loop_exit426.us.3

polly.loop_header424.preheader.us.3:              ; preds = %polly.loop_header416.us.3
  %polly.access.add.Packed_MemRef_call2275435.us.3 = add nuw nsw i64 %297, 240
  %polly.access.Packed_MemRef_call2275436.us.3 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275435.us.3
  %_p_scalar_437.us.3 = load double, double* %polly.access.Packed_MemRef_call2275436.us.3, align 8
  %298 = mul i64 %296, 480
  %299 = add i64 %298, %142
  %scevgep442.us.3 = getelementptr i8, i8* %call1, i64 %299
  %scevgep442443.us.3 = bitcast i8* %scevgep442.us.3 to double*
  %_p_scalar_444.us.3 = load double, double* %scevgep442443.us.3, align 8, !alias.scope !81, !noalias !87
  %300 = mul i64 %296, 640
  br label %polly.loop_header424.us.3

polly.loop_header424.us.3:                        ; preds = %polly.loop_header424.us.3, %polly.loop_header424.preheader.us.3
  %polly.indvar428.us.3 = phi i64 [ %polly.indvar_next429.us.3, %polly.loop_header424.us.3 ], [ 0, %polly.loop_header424.preheader.us.3 ]
  %301 = add nuw nsw i64 %polly.indvar428.us.3, %147
  %302 = mul nuw nsw i64 %301, 480
  %303 = add nuw nsw i64 %302, %142
  %scevgep431.us.3 = getelementptr i8, i8* %call1, i64 %303
  %scevgep431432.us.3 = bitcast i8* %scevgep431.us.3 to double*
  %_p_scalar_433.us.3 = load double, double* %scevgep431432.us.3, align 8, !alias.scope !81, !noalias !87
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_437.us.3, %_p_scalar_433.us.3
  %polly.access.add.Packed_MemRef_call2275439.us.3 = add nuw nsw i64 %polly.indvar428.us.3, 240
  %polly.access.Packed_MemRef_call2275440.us.3 = getelementptr double, double* %Packed_MemRef_call2275, i64 %polly.access.add.Packed_MemRef_call2275439.us.3
  %_p_scalar_441.us.3 = load double, double* %polly.access.Packed_MemRef_call2275440.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_444.us.3, %_p_scalar_441.us.3
  %304 = shl i64 %301, 3
  %305 = add i64 %304, %300
  %scevgep445.us.3 = getelementptr i8, i8* %call, i64 %305
  %scevgep445446.us.3 = bitcast i8* %scevgep445.us.3 to double*
  %_p_scalar_447.us.3 = load double, double* %scevgep445446.us.3, align 8, !alias.scope !78, !noalias !80
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_447.us.3
  store double %p_add42.i79.us.3, double* %scevgep445446.us.3, align 8, !alias.scope !78, !noalias !80
  %polly.indvar_next429.us.3 = add nuw nsw i64 %polly.indvar428.us.3, 1
  %exitcond887.3.not = icmp eq i64 %polly.indvar428.us.3, %smin886.3
  br i1 %exitcond887.3.not, label %polly.loop_exit426.us.3, label %polly.loop_header424.us.3

polly.loop_exit426.us.3:                          ; preds = %polly.loop_header424.us.3, %polly.loop_header416.us.3
  %polly.indvar_next421.us.3 = add nuw nsw i64 %polly.indvar420.us.3, 1
  %polly.loop_cond422.us.3 = icmp ult i64 %polly.indvar420.us.3, 7
  %indvars.iv.next885.3 = add i64 %indvars.iv884.3, 1
  br i1 %polly.loop_cond422.us.3, label %polly.loop_header416.us.3, label %polly.loop_exit411

polly.loop_header570.1:                           ; preds = %polly.loop_header570, %polly.loop_header570.1
  %polly.indvar573.1 = phi i64 [ %polly.indvar_next574.1, %polly.loop_header570.1 ], [ 0, %polly.loop_header570 ]
  %306 = add nuw nsw i64 %polly.indvar573.1, %185
  %polly.access.mul.call2577.1 = mul nuw nsw i64 %306, 60
  %polly.access.add.call2578.1 = add nuw nsw i64 %174, %polly.access.mul.call2577.1
  %polly.access.call2579.1 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578.1
  %polly.access.call2579.load.1 = load double, double* %polly.access.call2579.1, align 8, !alias.scope !92, !noalias !96
  %polly.access.add.Packed_MemRef_call2453.1 = add nuw nsw i64 %polly.indvar573.1, 80
  %polly.access.Packed_MemRef_call2453.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453.1
  store double %polly.access.call2579.load.1, double* %polly.access.Packed_MemRef_call2453.1, align 8
  %polly.indvar_next574.1 = add nuw nsw i64 %polly.indvar573.1, 1
  %exitcond896.1.not = icmp eq i64 %polly.indvar_next574.1, %indvars.iv894
  br i1 %exitcond896.1.not, label %polly.loop_header570.2, label %polly.loop_header570.1

polly.loop_header570.2:                           ; preds = %polly.loop_header570.1, %polly.loop_header570.2
  %polly.indvar573.2 = phi i64 [ %polly.indvar_next574.2, %polly.loop_header570.2 ], [ 0, %polly.loop_header570.1 ]
  %307 = add nuw nsw i64 %polly.indvar573.2, %185
  %polly.access.mul.call2577.2 = mul nuw nsw i64 %307, 60
  %polly.access.add.call2578.2 = add nuw nsw i64 %175, %polly.access.mul.call2577.2
  %polly.access.call2579.2 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578.2
  %polly.access.call2579.load.2 = load double, double* %polly.access.call2579.2, align 8, !alias.scope !92, !noalias !96
  %polly.access.add.Packed_MemRef_call2453.2 = add nuw nsw i64 %polly.indvar573.2, 160
  %polly.access.Packed_MemRef_call2453.2 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453.2
  store double %polly.access.call2579.load.2, double* %polly.access.Packed_MemRef_call2453.2, align 8
  %polly.indvar_next574.2 = add nuw nsw i64 %polly.indvar573.2, 1
  %exitcond896.2.not = icmp eq i64 %polly.indvar_next574.2, %indvars.iv894
  br i1 %exitcond896.2.not, label %polly.loop_header570.3, label %polly.loop_header570.2

polly.loop_header570.3:                           ; preds = %polly.loop_header570.2, %polly.loop_header570.3
  %polly.indvar573.3 = phi i64 [ %polly.indvar_next574.3, %polly.loop_header570.3 ], [ 0, %polly.loop_header570.2 ]
  %308 = add nuw nsw i64 %polly.indvar573.3, %185
  %polly.access.mul.call2577.3 = mul nuw nsw i64 %308, 60
  %polly.access.add.call2578.3 = add nuw nsw i64 %176, %polly.access.mul.call2577.3
  %polly.access.call2579.3 = getelementptr double, double* %polly.access.cast.call2640, i64 %polly.access.add.call2578.3
  %polly.access.call2579.load.3 = load double, double* %polly.access.call2579.3, align 8, !alias.scope !92, !noalias !96
  %polly.access.add.Packed_MemRef_call2453.3 = add nuw nsw i64 %polly.indvar573.3, 240
  %polly.access.Packed_MemRef_call2453.3 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453.3
  store double %polly.access.call2579.load.3, double* %polly.access.Packed_MemRef_call2453.3, align 8
  %polly.indvar_next574.3 = add nuw nsw i64 %polly.indvar573.3, 1
  %exitcond896.3.not = icmp eq i64 %polly.indvar_next574.3, %indvars.iv894
  br i1 %exitcond896.3.not, label %polly.loop_exit572.3, label %polly.loop_header570.3

polly.loop_exit572.3:                             ; preds = %polly.loop_header570.3
  %309 = mul nsw i64 %polly.indvar561, -4
  br label %polly.loop_header581

polly.loop_header594.us.1:                        ; preds = %polly.loop_exit604.us, %polly.loop_exit604.us.1
  %indvars.iv907.1 = phi i64 [ %indvars.iv.next908.1, %polly.loop_exit604.us.1 ], [ %187, %polly.loop_exit604.us ]
  %polly.indvar598.us.1 = phi i64 [ %polly.indvar_next599.us.1, %polly.loop_exit604.us.1 ], [ %191, %polly.loop_exit604.us ]
  %smin909.1 = call i64 @llvm.smin.i64(i64 %indvars.iv907.1, i64 3)
  %310 = add nuw i64 %polly.indvar598.us.1, %188
  %311 = add i64 %310, %309
  %polly.loop_guard605.us.11005 = icmp sgt i64 %311, -1
  br i1 %polly.loop_guard605.us.11005, label %polly.loop_header602.preheader.us.1, label %polly.loop_exit604.us.1

polly.loop_header602.preheader.us.1:              ; preds = %polly.loop_header594.us.1
  %polly.access.add.Packed_MemRef_call2453613.us.1 = add nuw nsw i64 %311, 80
  %polly.access.Packed_MemRef_call2453614.us.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.us.1
  %_p_scalar_615.us.1 = load double, double* %polly.access.Packed_MemRef_call2453614.us.1, align 8
  %312 = mul i64 %310, 480
  %313 = add i64 %312, %178
  %scevgep620.us.1 = getelementptr i8, i8* %call1, i64 %313
  %scevgep620621.us.1 = bitcast i8* %scevgep620.us.1 to double*
  %_p_scalar_622.us.1 = load double, double* %scevgep620621.us.1, align 8, !alias.scope !91, !noalias !97
  %314 = mul i64 %310, 640
  br label %polly.loop_header602.us.1

polly.loop_header602.us.1:                        ; preds = %polly.loop_header602.us.1, %polly.loop_header602.preheader.us.1
  %polly.indvar606.us.1 = phi i64 [ %polly.indvar_next607.us.1, %polly.loop_header602.us.1 ], [ 0, %polly.loop_header602.preheader.us.1 ]
  %315 = add nuw nsw i64 %polly.indvar606.us.1, %185
  %316 = mul nuw nsw i64 %315, 480
  %317 = add nuw nsw i64 %316, %178
  %scevgep609.us.1 = getelementptr i8, i8* %call1, i64 %317
  %scevgep609610.us.1 = bitcast i8* %scevgep609.us.1 to double*
  %_p_scalar_611.us.1 = load double, double* %scevgep609610.us.1, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_615.us.1, %_p_scalar_611.us.1
  %polly.access.add.Packed_MemRef_call2453617.us.1 = add nuw nsw i64 %polly.indvar606.us.1, 80
  %polly.access.Packed_MemRef_call2453618.us.1 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.us.1
  %_p_scalar_619.us.1 = load double, double* %polly.access.Packed_MemRef_call2453618.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_622.us.1, %_p_scalar_619.us.1
  %318 = shl i64 %315, 3
  %319 = add i64 %318, %314
  %scevgep623.us.1 = getelementptr i8, i8* %call, i64 %319
  %scevgep623624.us.1 = bitcast i8* %scevgep623.us.1 to double*
  %_p_scalar_625.us.1 = load double, double* %scevgep623624.us.1, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_625.us.1
  store double %p_add42.i.us.1, double* %scevgep623624.us.1, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next607.us.1 = add nuw nsw i64 %polly.indvar606.us.1, 1
  %exitcond910.1.not = icmp eq i64 %polly.indvar606.us.1, %smin909.1
  br i1 %exitcond910.1.not, label %polly.loop_exit604.us.1, label %polly.loop_header602.us.1

polly.loop_exit604.us.1:                          ; preds = %polly.loop_header602.us.1, %polly.loop_header594.us.1
  %polly.indvar_next599.us.1 = add nuw nsw i64 %polly.indvar598.us.1, 1
  %polly.loop_cond600.us.1 = icmp ult i64 %polly.indvar598.us.1, 7
  %indvars.iv.next908.1 = add i64 %indvars.iv907.1, 1
  br i1 %polly.loop_cond600.us.1, label %polly.loop_header594.us.1, label %polly.loop_header594.us.2

polly.loop_header594.us.2:                        ; preds = %polly.loop_exit604.us.1, %polly.loop_exit604.us.2
  %indvars.iv907.2 = phi i64 [ %indvars.iv.next908.2, %polly.loop_exit604.us.2 ], [ %187, %polly.loop_exit604.us.1 ]
  %polly.indvar598.us.2 = phi i64 [ %polly.indvar_next599.us.2, %polly.loop_exit604.us.2 ], [ %191, %polly.loop_exit604.us.1 ]
  %smin909.2 = call i64 @llvm.smin.i64(i64 %indvars.iv907.2, i64 3)
  %320 = add nuw i64 %polly.indvar598.us.2, %188
  %321 = add i64 %320, %309
  %polly.loop_guard605.us.21006 = icmp sgt i64 %321, -1
  br i1 %polly.loop_guard605.us.21006, label %polly.loop_header602.preheader.us.2, label %polly.loop_exit604.us.2

polly.loop_header602.preheader.us.2:              ; preds = %polly.loop_header594.us.2
  %polly.access.add.Packed_MemRef_call2453613.us.2 = add nuw nsw i64 %321, 160
  %polly.access.Packed_MemRef_call2453614.us.2 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.us.2
  %_p_scalar_615.us.2 = load double, double* %polly.access.Packed_MemRef_call2453614.us.2, align 8
  %322 = mul i64 %320, 480
  %323 = add i64 %322, %179
  %scevgep620.us.2 = getelementptr i8, i8* %call1, i64 %323
  %scevgep620621.us.2 = bitcast i8* %scevgep620.us.2 to double*
  %_p_scalar_622.us.2 = load double, double* %scevgep620621.us.2, align 8, !alias.scope !91, !noalias !97
  %324 = mul i64 %320, 640
  br label %polly.loop_header602.us.2

polly.loop_header602.us.2:                        ; preds = %polly.loop_header602.us.2, %polly.loop_header602.preheader.us.2
  %polly.indvar606.us.2 = phi i64 [ %polly.indvar_next607.us.2, %polly.loop_header602.us.2 ], [ 0, %polly.loop_header602.preheader.us.2 ]
  %325 = add nuw nsw i64 %polly.indvar606.us.2, %185
  %326 = mul nuw nsw i64 %325, 480
  %327 = add nuw nsw i64 %326, %179
  %scevgep609.us.2 = getelementptr i8, i8* %call1, i64 %327
  %scevgep609610.us.2 = bitcast i8* %scevgep609.us.2 to double*
  %_p_scalar_611.us.2 = load double, double* %scevgep609610.us.2, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_615.us.2, %_p_scalar_611.us.2
  %polly.access.add.Packed_MemRef_call2453617.us.2 = add nuw nsw i64 %polly.indvar606.us.2, 160
  %polly.access.Packed_MemRef_call2453618.us.2 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.us.2
  %_p_scalar_619.us.2 = load double, double* %polly.access.Packed_MemRef_call2453618.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_622.us.2, %_p_scalar_619.us.2
  %328 = shl i64 %325, 3
  %329 = add i64 %328, %324
  %scevgep623.us.2 = getelementptr i8, i8* %call, i64 %329
  %scevgep623624.us.2 = bitcast i8* %scevgep623.us.2 to double*
  %_p_scalar_625.us.2 = load double, double* %scevgep623624.us.2, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_625.us.2
  store double %p_add42.i.us.2, double* %scevgep623624.us.2, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next607.us.2 = add nuw nsw i64 %polly.indvar606.us.2, 1
  %exitcond910.2.not = icmp eq i64 %polly.indvar606.us.2, %smin909.2
  br i1 %exitcond910.2.not, label %polly.loop_exit604.us.2, label %polly.loop_header602.us.2

polly.loop_exit604.us.2:                          ; preds = %polly.loop_header602.us.2, %polly.loop_header594.us.2
  %polly.indvar_next599.us.2 = add nuw nsw i64 %polly.indvar598.us.2, 1
  %polly.loop_cond600.us.2 = icmp ult i64 %polly.indvar598.us.2, 7
  %indvars.iv.next908.2 = add i64 %indvars.iv907.2, 1
  br i1 %polly.loop_cond600.us.2, label %polly.loop_header594.us.2, label %polly.loop_header594.us.3

polly.loop_header594.us.3:                        ; preds = %polly.loop_exit604.us.2, %polly.loop_exit604.us.3
  %indvars.iv907.3 = phi i64 [ %indvars.iv.next908.3, %polly.loop_exit604.us.3 ], [ %187, %polly.loop_exit604.us.2 ]
  %polly.indvar598.us.3 = phi i64 [ %polly.indvar_next599.us.3, %polly.loop_exit604.us.3 ], [ %191, %polly.loop_exit604.us.2 ]
  %smin909.3 = call i64 @llvm.smin.i64(i64 %indvars.iv907.3, i64 3)
  %330 = add nuw i64 %polly.indvar598.us.3, %188
  %331 = add i64 %330, %309
  %polly.loop_guard605.us.31007 = icmp sgt i64 %331, -1
  br i1 %polly.loop_guard605.us.31007, label %polly.loop_header602.preheader.us.3, label %polly.loop_exit604.us.3

polly.loop_header602.preheader.us.3:              ; preds = %polly.loop_header594.us.3
  %polly.access.add.Packed_MemRef_call2453613.us.3 = add nuw nsw i64 %331, 240
  %polly.access.Packed_MemRef_call2453614.us.3 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453613.us.3
  %_p_scalar_615.us.3 = load double, double* %polly.access.Packed_MemRef_call2453614.us.3, align 8
  %332 = mul i64 %330, 480
  %333 = add i64 %332, %180
  %scevgep620.us.3 = getelementptr i8, i8* %call1, i64 %333
  %scevgep620621.us.3 = bitcast i8* %scevgep620.us.3 to double*
  %_p_scalar_622.us.3 = load double, double* %scevgep620621.us.3, align 8, !alias.scope !91, !noalias !97
  %334 = mul i64 %330, 640
  br label %polly.loop_header602.us.3

polly.loop_header602.us.3:                        ; preds = %polly.loop_header602.us.3, %polly.loop_header602.preheader.us.3
  %polly.indvar606.us.3 = phi i64 [ %polly.indvar_next607.us.3, %polly.loop_header602.us.3 ], [ 0, %polly.loop_header602.preheader.us.3 ]
  %335 = add nuw nsw i64 %polly.indvar606.us.3, %185
  %336 = mul nuw nsw i64 %335, 480
  %337 = add nuw nsw i64 %336, %180
  %scevgep609.us.3 = getelementptr i8, i8* %call1, i64 %337
  %scevgep609610.us.3 = bitcast i8* %scevgep609.us.3 to double*
  %_p_scalar_611.us.3 = load double, double* %scevgep609610.us.3, align 8, !alias.scope !91, !noalias !97
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_615.us.3, %_p_scalar_611.us.3
  %polly.access.add.Packed_MemRef_call2453617.us.3 = add nuw nsw i64 %polly.indvar606.us.3, 240
  %polly.access.Packed_MemRef_call2453618.us.3 = getelementptr double, double* %Packed_MemRef_call2453, i64 %polly.access.add.Packed_MemRef_call2453617.us.3
  %_p_scalar_619.us.3 = load double, double* %polly.access.Packed_MemRef_call2453618.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_622.us.3, %_p_scalar_619.us.3
  %338 = shl i64 %335, 3
  %339 = add i64 %338, %334
  %scevgep623.us.3 = getelementptr i8, i8* %call, i64 %339
  %scevgep623624.us.3 = bitcast i8* %scevgep623.us.3 to double*
  %_p_scalar_625.us.3 = load double, double* %scevgep623624.us.3, align 8, !alias.scope !88, !noalias !90
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_625.us.3
  store double %p_add42.i.us.3, double* %scevgep623624.us.3, align 8, !alias.scope !88, !noalias !90
  %polly.indvar_next607.us.3 = add nuw nsw i64 %polly.indvar606.us.3, 1
  %exitcond910.3.not = icmp eq i64 %polly.indvar606.us.3, %smin909.3
  br i1 %exitcond910.3.not, label %polly.loop_exit604.us.3, label %polly.loop_header602.us.3

polly.loop_exit604.us.3:                          ; preds = %polly.loop_header602.us.3, %polly.loop_header594.us.3
  %polly.indvar_next599.us.3 = add nuw nsw i64 %polly.indvar598.us.3, 1
  %polly.loop_cond600.us.3 = icmp ult i64 %polly.indvar598.us.3, 7
  %indvars.iv.next908.3 = add i64 %indvars.iv907.3, 1
  br i1 %polly.loop_cond600.us.3, label %polly.loop_header594.us.3, label %polly.loop_exit589

polly.loop_header817.1:                           ; preds = %polly.loop_exit825, %polly.loop_exit825.1
  %polly.indvar820.1 = phi i64 [ %polly.indvar_next821.1, %polly.loop_exit825.1 ], [ 0, %polly.loop_exit825 ]
  %340 = mul nuw nsw i64 %polly.indvar820.1, 480
  %341 = trunc i64 %polly.indvar820.1 to i32
  %broadcast.splatinsert1242 = insertelement <4 x i32> poison, i32 %341, i32 0
  %broadcast.splat1243 = shufflevector <4 x i32> %broadcast.splatinsert1242, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1234

vector.body1234:                                  ; preds = %vector.body1234, %polly.loop_header817.1
  %index1236 = phi i64 [ 0, %polly.loop_header817.1 ], [ %index.next1237, %vector.body1234 ]
  %vec.ind1240 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1 ], [ %vec.ind.next1241, %vector.body1234 ]
  %342 = add nuw nsw <4 x i64> %vec.ind1240, <i64 32, i64 32, i64 32, i64 32>
  %343 = trunc <4 x i64> %342 to <4 x i32>
  %344 = mul <4 x i32> %broadcast.splat1243, %343
  %345 = add <4 x i32> %344, <i32 1, i32 1, i32 1, i32 1>
  %346 = urem <4 x i32> %345, <i32 80, i32 80, i32 80, i32 80>
  %347 = sitofp <4 x i32> %346 to <4 x double>
  %348 = fmul fast <4 x double> %347, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %349 = extractelement <4 x i64> %342, i32 0
  %350 = shl i64 %349, 3
  %351 = add i64 %350, %340
  %352 = getelementptr i8, i8* %call1, i64 %351
  %353 = bitcast i8* %352 to <4 x double>*
  store <4 x double> %348, <4 x double>* %353, align 8, !alias.scope !101, !noalias !106
  %index.next1237 = add i64 %index1236, 4
  %vec.ind.next1241 = add <4 x i64> %vec.ind1240, <i64 4, i64 4, i64 4, i64 4>
  %354 = icmp eq i64 %index.next1237, 28
  br i1 %354, label %polly.loop_exit825.1, label %vector.body1234, !llvm.loop !108

polly.loop_exit825.1:                             ; preds = %vector.body1234
  %polly.indvar_next821.1 = add nuw nsw i64 %polly.indvar820.1, 1
  %exitcond921.1.not = icmp eq i64 %polly.indvar_next821.1, 32
  br i1 %exitcond921.1.not, label %polly.loop_header817.1941, label %polly.loop_header817.1

polly.loop_header817.1941:                        ; preds = %polly.loop_exit825.1, %polly.loop_exit825.1952
  %polly.indvar820.1940 = phi i64 [ %polly.indvar_next821.1950, %polly.loop_exit825.1952 ], [ 0, %polly.loop_exit825.1 ]
  %355 = add nuw nsw i64 %polly.indvar820.1940, 32
  %356 = mul nuw nsw i64 %355, 480
  %357 = trunc i64 %355 to i32
  %broadcast.splatinsert1256 = insertelement <4 x i32> poison, i32 %357, i32 0
  %broadcast.splat1257 = shufflevector <4 x i32> %broadcast.splatinsert1256, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1246

vector.body1246:                                  ; preds = %vector.body1246, %polly.loop_header817.1941
  %index1248 = phi i64 [ 0, %polly.loop_header817.1941 ], [ %index.next1249, %vector.body1246 ]
  %vec.ind1254 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817.1941 ], [ %vec.ind.next1255, %vector.body1246 ]
  %358 = mul <4 x i32> %vec.ind1254, %broadcast.splat1257
  %359 = add <4 x i32> %358, <i32 1, i32 1, i32 1, i32 1>
  %360 = urem <4 x i32> %359, <i32 80, i32 80, i32 80, i32 80>
  %361 = sitofp <4 x i32> %360 to <4 x double>
  %362 = fmul fast <4 x double> %361, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %363 = shl i64 %index1248, 3
  %364 = add i64 %363, %356
  %365 = getelementptr i8, i8* %call1, i64 %364
  %366 = bitcast i8* %365 to <4 x double>*
  store <4 x double> %362, <4 x double>* %366, align 8, !alias.scope !101, !noalias !106
  %index.next1249 = add i64 %index1248, 4
  %vec.ind.next1255 = add <4 x i32> %vec.ind1254, <i32 4, i32 4, i32 4, i32 4>
  %367 = icmp eq i64 %index.next1249, 32
  br i1 %367, label %polly.loop_exit825.1952, label %vector.body1246, !llvm.loop !109

polly.loop_exit825.1952:                          ; preds = %vector.body1246
  %polly.indvar_next821.1950 = add nuw nsw i64 %polly.indvar820.1940, 1
  %exitcond921.1951.not = icmp eq i64 %polly.indvar_next821.1950, 32
  br i1 %exitcond921.1951.not, label %polly.loop_header817.1.1, label %polly.loop_header817.1941

polly.loop_header817.1.1:                         ; preds = %polly.loop_exit825.1952, %polly.loop_exit825.1.1
  %polly.indvar820.1.1 = phi i64 [ %polly.indvar_next821.1.1, %polly.loop_exit825.1.1 ], [ 0, %polly.loop_exit825.1952 ]
  %368 = add nuw nsw i64 %polly.indvar820.1.1, 32
  %369 = mul nuw nsw i64 %368, 480
  %370 = trunc i64 %368 to i32
  %broadcast.splatinsert1268 = insertelement <4 x i32> poison, i32 %370, i32 0
  %broadcast.splat1269 = shufflevector <4 x i32> %broadcast.splatinsert1268, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1260

vector.body1260:                                  ; preds = %vector.body1260, %polly.loop_header817.1.1
  %index1262 = phi i64 [ 0, %polly.loop_header817.1.1 ], [ %index.next1263, %vector.body1260 ]
  %vec.ind1266 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1.1 ], [ %vec.ind.next1267, %vector.body1260 ]
  %371 = add nuw nsw <4 x i64> %vec.ind1266, <i64 32, i64 32, i64 32, i64 32>
  %372 = trunc <4 x i64> %371 to <4 x i32>
  %373 = mul <4 x i32> %broadcast.splat1269, %372
  %374 = add <4 x i32> %373, <i32 1, i32 1, i32 1, i32 1>
  %375 = urem <4 x i32> %374, <i32 80, i32 80, i32 80, i32 80>
  %376 = sitofp <4 x i32> %375 to <4 x double>
  %377 = fmul fast <4 x double> %376, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %378 = extractelement <4 x i64> %371, i32 0
  %379 = shl i64 %378, 3
  %380 = add i64 %379, %369
  %381 = getelementptr i8, i8* %call1, i64 %380
  %382 = bitcast i8* %381 to <4 x double>*
  store <4 x double> %377, <4 x double>* %382, align 8, !alias.scope !101, !noalias !106
  %index.next1263 = add i64 %index1262, 4
  %vec.ind.next1267 = add <4 x i64> %vec.ind1266, <i64 4, i64 4, i64 4, i64 4>
  %383 = icmp eq i64 %index.next1263, 28
  br i1 %383, label %polly.loop_exit825.1.1, label %vector.body1260, !llvm.loop !110

polly.loop_exit825.1.1:                           ; preds = %vector.body1260
  %polly.indvar_next821.1.1 = add nuw nsw i64 %polly.indvar820.1.1, 1
  %exitcond921.1.1.not = icmp eq i64 %polly.indvar_next821.1.1, 32
  br i1 %exitcond921.1.1.not, label %polly.loop_header817.2, label %polly.loop_header817.1.1

polly.loop_header817.2:                           ; preds = %polly.loop_exit825.1.1, %polly.loop_exit825.2
  %polly.indvar820.2 = phi i64 [ %polly.indvar_next821.2, %polly.loop_exit825.2 ], [ 0, %polly.loop_exit825.1.1 ]
  %384 = add nuw nsw i64 %polly.indvar820.2, 64
  %385 = mul nuw nsw i64 %384, 480
  %386 = trunc i64 %384 to i32
  %broadcast.splatinsert1282 = insertelement <4 x i32> poison, i32 %386, i32 0
  %broadcast.splat1283 = shufflevector <4 x i32> %broadcast.splatinsert1282, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1272

vector.body1272:                                  ; preds = %vector.body1272, %polly.loop_header817.2
  %index1274 = phi i64 [ 0, %polly.loop_header817.2 ], [ %index.next1275, %vector.body1272 ]
  %vec.ind1280 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header817.2 ], [ %vec.ind.next1281, %vector.body1272 ]
  %387 = mul <4 x i32> %vec.ind1280, %broadcast.splat1283
  %388 = add <4 x i32> %387, <i32 1, i32 1, i32 1, i32 1>
  %389 = urem <4 x i32> %388, <i32 80, i32 80, i32 80, i32 80>
  %390 = sitofp <4 x i32> %389 to <4 x double>
  %391 = fmul fast <4 x double> %390, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %392 = shl i64 %index1274, 3
  %393 = add i64 %392, %385
  %394 = getelementptr i8, i8* %call1, i64 %393
  %395 = bitcast i8* %394 to <4 x double>*
  store <4 x double> %391, <4 x double>* %395, align 8, !alias.scope !101, !noalias !106
  %index.next1275 = add i64 %index1274, 4
  %vec.ind.next1281 = add <4 x i32> %vec.ind1280, <i32 4, i32 4, i32 4, i32 4>
  %396 = icmp eq i64 %index.next1275, 32
  br i1 %396, label %polly.loop_exit825.2, label %vector.body1272, !llvm.loop !111

polly.loop_exit825.2:                             ; preds = %vector.body1272
  %polly.indvar_next821.2 = add nuw nsw i64 %polly.indvar820.2, 1
  %exitcond921.2.not = icmp eq i64 %polly.indvar_next821.2, 16
  br i1 %exitcond921.2.not, label %polly.loop_header817.1.2, label %polly.loop_header817.2

polly.loop_header817.1.2:                         ; preds = %polly.loop_exit825.2, %polly.loop_exit825.1.2
  %polly.indvar820.1.2 = phi i64 [ %polly.indvar_next821.1.2, %polly.loop_exit825.1.2 ], [ 0, %polly.loop_exit825.2 ]
  %397 = add nuw nsw i64 %polly.indvar820.1.2, 64
  %398 = mul nuw nsw i64 %397, 480
  %399 = trunc i64 %397 to i32
  %broadcast.splatinsert1294 = insertelement <4 x i32> poison, i32 %399, i32 0
  %broadcast.splat1295 = shufflevector <4 x i32> %broadcast.splatinsert1294, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1286

vector.body1286:                                  ; preds = %vector.body1286, %polly.loop_header817.1.2
  %index1288 = phi i64 [ 0, %polly.loop_header817.1.2 ], [ %index.next1289, %vector.body1286 ]
  %vec.ind1292 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header817.1.2 ], [ %vec.ind.next1293, %vector.body1286 ]
  %400 = add nuw nsw <4 x i64> %vec.ind1292, <i64 32, i64 32, i64 32, i64 32>
  %401 = trunc <4 x i64> %400 to <4 x i32>
  %402 = mul <4 x i32> %broadcast.splat1295, %401
  %403 = add <4 x i32> %402, <i32 1, i32 1, i32 1, i32 1>
  %404 = urem <4 x i32> %403, <i32 80, i32 80, i32 80, i32 80>
  %405 = sitofp <4 x i32> %404 to <4 x double>
  %406 = fmul fast <4 x double> %405, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %407 = extractelement <4 x i64> %400, i32 0
  %408 = shl i64 %407, 3
  %409 = add i64 %408, %398
  %410 = getelementptr i8, i8* %call1, i64 %409
  %411 = bitcast i8* %410 to <4 x double>*
  store <4 x double> %406, <4 x double>* %411, align 8, !alias.scope !101, !noalias !106
  %index.next1289 = add i64 %index1288, 4
  %vec.ind.next1293 = add <4 x i64> %vec.ind1292, <i64 4, i64 4, i64 4, i64 4>
  %412 = icmp eq i64 %index.next1289, 28
  br i1 %412, label %polly.loop_exit825.1.2, label %vector.body1286, !llvm.loop !112

polly.loop_exit825.1.2:                           ; preds = %vector.body1286
  %polly.indvar_next821.1.2 = add nuw nsw i64 %polly.indvar820.1.2, 1
  %exitcond921.1.2.not = icmp eq i64 %polly.indvar_next821.1.2, 16
  br i1 %exitcond921.1.2.not, label %init_array.exit, label %polly.loop_header817.1.2

polly.loop_header791.1:                           ; preds = %polly.loop_exit799, %polly.loop_exit799.1
  %polly.indvar794.1 = phi i64 [ %polly.indvar_next795.1, %polly.loop_exit799.1 ], [ 0, %polly.loop_exit799 ]
  %413 = mul nuw nsw i64 %polly.indvar794.1, 480
  %414 = trunc i64 %polly.indvar794.1 to i32
  %broadcast.splatinsert1164 = insertelement <4 x i32> poison, i32 %414, i32 0
  %broadcast.splat1165 = shufflevector <4 x i32> %broadcast.splatinsert1164, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %polly.loop_header791.1
  %index1158 = phi i64 [ 0, %polly.loop_header791.1 ], [ %index.next1159, %vector.body1156 ]
  %vec.ind1162 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1 ], [ %vec.ind.next1163, %vector.body1156 ]
  %415 = add nuw nsw <4 x i64> %vec.ind1162, <i64 32, i64 32, i64 32, i64 32>
  %416 = trunc <4 x i64> %415 to <4 x i32>
  %417 = mul <4 x i32> %broadcast.splat1165, %416
  %418 = add <4 x i32> %417, <i32 2, i32 2, i32 2, i32 2>
  %419 = urem <4 x i32> %418, <i32 60, i32 60, i32 60, i32 60>
  %420 = sitofp <4 x i32> %419 to <4 x double>
  %421 = fmul fast <4 x double> %420, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %422 = extractelement <4 x i64> %415, i32 0
  %423 = shl i64 %422, 3
  %424 = add i64 %423, %413
  %425 = getelementptr i8, i8* %call2, i64 %424
  %426 = bitcast i8* %425 to <4 x double>*
  store <4 x double> %421, <4 x double>* %426, align 8, !alias.scope !102, !noalias !104
  %index.next1159 = add i64 %index1158, 4
  %vec.ind.next1163 = add <4 x i64> %vec.ind1162, <i64 4, i64 4, i64 4, i64 4>
  %427 = icmp eq i64 %index.next1159, 28
  br i1 %427, label %polly.loop_exit799.1, label %vector.body1156, !llvm.loop !113

polly.loop_exit799.1:                             ; preds = %vector.body1156
  %polly.indvar_next795.1 = add nuw nsw i64 %polly.indvar794.1, 1
  %exitcond927.1.not = icmp eq i64 %polly.indvar_next795.1, 32
  br i1 %exitcond927.1.not, label %polly.loop_header791.1955, label %polly.loop_header791.1

polly.loop_header791.1955:                        ; preds = %polly.loop_exit799.1, %polly.loop_exit799.1966
  %polly.indvar794.1954 = phi i64 [ %polly.indvar_next795.1964, %polly.loop_exit799.1966 ], [ 0, %polly.loop_exit799.1 ]
  %428 = add nuw nsw i64 %polly.indvar794.1954, 32
  %429 = mul nuw nsw i64 %428, 480
  %430 = trunc i64 %428 to i32
  %broadcast.splatinsert1178 = insertelement <4 x i32> poison, i32 %430, i32 0
  %broadcast.splat1179 = shufflevector <4 x i32> %broadcast.splatinsert1178, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1168

vector.body1168:                                  ; preds = %vector.body1168, %polly.loop_header791.1955
  %index1170 = phi i64 [ 0, %polly.loop_header791.1955 ], [ %index.next1171, %vector.body1168 ]
  %vec.ind1176 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791.1955 ], [ %vec.ind.next1177, %vector.body1168 ]
  %431 = mul <4 x i32> %vec.ind1176, %broadcast.splat1179
  %432 = add <4 x i32> %431, <i32 2, i32 2, i32 2, i32 2>
  %433 = urem <4 x i32> %432, <i32 60, i32 60, i32 60, i32 60>
  %434 = sitofp <4 x i32> %433 to <4 x double>
  %435 = fmul fast <4 x double> %434, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %436 = shl i64 %index1170, 3
  %437 = add i64 %436, %429
  %438 = getelementptr i8, i8* %call2, i64 %437
  %439 = bitcast i8* %438 to <4 x double>*
  store <4 x double> %435, <4 x double>* %439, align 8, !alias.scope !102, !noalias !104
  %index.next1171 = add i64 %index1170, 4
  %vec.ind.next1177 = add <4 x i32> %vec.ind1176, <i32 4, i32 4, i32 4, i32 4>
  %440 = icmp eq i64 %index.next1171, 32
  br i1 %440, label %polly.loop_exit799.1966, label %vector.body1168, !llvm.loop !114

polly.loop_exit799.1966:                          ; preds = %vector.body1168
  %polly.indvar_next795.1964 = add nuw nsw i64 %polly.indvar794.1954, 1
  %exitcond927.1965.not = icmp eq i64 %polly.indvar_next795.1964, 32
  br i1 %exitcond927.1965.not, label %polly.loop_header791.1.1, label %polly.loop_header791.1955

polly.loop_header791.1.1:                         ; preds = %polly.loop_exit799.1966, %polly.loop_exit799.1.1
  %polly.indvar794.1.1 = phi i64 [ %polly.indvar_next795.1.1, %polly.loop_exit799.1.1 ], [ 0, %polly.loop_exit799.1966 ]
  %441 = add nuw nsw i64 %polly.indvar794.1.1, 32
  %442 = mul nuw nsw i64 %441, 480
  %443 = trunc i64 %441 to i32
  %broadcast.splatinsert1190 = insertelement <4 x i32> poison, i32 %443, i32 0
  %broadcast.splat1191 = shufflevector <4 x i32> %broadcast.splatinsert1190, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %polly.loop_header791.1.1
  %index1184 = phi i64 [ 0, %polly.loop_header791.1.1 ], [ %index.next1185, %vector.body1182 ]
  %vec.ind1188 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1.1 ], [ %vec.ind.next1189, %vector.body1182 ]
  %444 = add nuw nsw <4 x i64> %vec.ind1188, <i64 32, i64 32, i64 32, i64 32>
  %445 = trunc <4 x i64> %444 to <4 x i32>
  %446 = mul <4 x i32> %broadcast.splat1191, %445
  %447 = add <4 x i32> %446, <i32 2, i32 2, i32 2, i32 2>
  %448 = urem <4 x i32> %447, <i32 60, i32 60, i32 60, i32 60>
  %449 = sitofp <4 x i32> %448 to <4 x double>
  %450 = fmul fast <4 x double> %449, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %451 = extractelement <4 x i64> %444, i32 0
  %452 = shl i64 %451, 3
  %453 = add i64 %452, %442
  %454 = getelementptr i8, i8* %call2, i64 %453
  %455 = bitcast i8* %454 to <4 x double>*
  store <4 x double> %450, <4 x double>* %455, align 8, !alias.scope !102, !noalias !104
  %index.next1185 = add i64 %index1184, 4
  %vec.ind.next1189 = add <4 x i64> %vec.ind1188, <i64 4, i64 4, i64 4, i64 4>
  %456 = icmp eq i64 %index.next1185, 28
  br i1 %456, label %polly.loop_exit799.1.1, label %vector.body1182, !llvm.loop !115

polly.loop_exit799.1.1:                           ; preds = %vector.body1182
  %polly.indvar_next795.1.1 = add nuw nsw i64 %polly.indvar794.1.1, 1
  %exitcond927.1.1.not = icmp eq i64 %polly.indvar_next795.1.1, 32
  br i1 %exitcond927.1.1.not, label %polly.loop_header791.2, label %polly.loop_header791.1.1

polly.loop_header791.2:                           ; preds = %polly.loop_exit799.1.1, %polly.loop_exit799.2
  %polly.indvar794.2 = phi i64 [ %polly.indvar_next795.2, %polly.loop_exit799.2 ], [ 0, %polly.loop_exit799.1.1 ]
  %457 = add nuw nsw i64 %polly.indvar794.2, 64
  %458 = mul nuw nsw i64 %457, 480
  %459 = trunc i64 %457 to i32
  %broadcast.splatinsert1204 = insertelement <4 x i32> poison, i32 %459, i32 0
  %broadcast.splat1205 = shufflevector <4 x i32> %broadcast.splatinsert1204, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1194

vector.body1194:                                  ; preds = %vector.body1194, %polly.loop_header791.2
  %index1196 = phi i64 [ 0, %polly.loop_header791.2 ], [ %index.next1197, %vector.body1194 ]
  %vec.ind1202 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header791.2 ], [ %vec.ind.next1203, %vector.body1194 ]
  %460 = mul <4 x i32> %vec.ind1202, %broadcast.splat1205
  %461 = add <4 x i32> %460, <i32 2, i32 2, i32 2, i32 2>
  %462 = urem <4 x i32> %461, <i32 60, i32 60, i32 60, i32 60>
  %463 = sitofp <4 x i32> %462 to <4 x double>
  %464 = fmul fast <4 x double> %463, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %465 = shl i64 %index1196, 3
  %466 = add i64 %465, %458
  %467 = getelementptr i8, i8* %call2, i64 %466
  %468 = bitcast i8* %467 to <4 x double>*
  store <4 x double> %464, <4 x double>* %468, align 8, !alias.scope !102, !noalias !104
  %index.next1197 = add i64 %index1196, 4
  %vec.ind.next1203 = add <4 x i32> %vec.ind1202, <i32 4, i32 4, i32 4, i32 4>
  %469 = icmp eq i64 %index.next1197, 32
  br i1 %469, label %polly.loop_exit799.2, label %vector.body1194, !llvm.loop !116

polly.loop_exit799.2:                             ; preds = %vector.body1194
  %polly.indvar_next795.2 = add nuw nsw i64 %polly.indvar794.2, 1
  %exitcond927.2.not = icmp eq i64 %polly.indvar_next795.2, 16
  br i1 %exitcond927.2.not, label %polly.loop_header791.1.2, label %polly.loop_header791.2

polly.loop_header791.1.2:                         ; preds = %polly.loop_exit799.2, %polly.loop_exit799.1.2
  %polly.indvar794.1.2 = phi i64 [ %polly.indvar_next795.1.2, %polly.loop_exit799.1.2 ], [ 0, %polly.loop_exit799.2 ]
  %470 = add nuw nsw i64 %polly.indvar794.1.2, 64
  %471 = mul nuw nsw i64 %470, 480
  %472 = trunc i64 %470 to i32
  %broadcast.splatinsert1216 = insertelement <4 x i32> poison, i32 %472, i32 0
  %broadcast.splat1217 = shufflevector <4 x i32> %broadcast.splatinsert1216, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %polly.loop_header791.1.2
  %index1210 = phi i64 [ 0, %polly.loop_header791.1.2 ], [ %index.next1211, %vector.body1208 ]
  %vec.ind1214 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header791.1.2 ], [ %vec.ind.next1215, %vector.body1208 ]
  %473 = add nuw nsw <4 x i64> %vec.ind1214, <i64 32, i64 32, i64 32, i64 32>
  %474 = trunc <4 x i64> %473 to <4 x i32>
  %475 = mul <4 x i32> %broadcast.splat1217, %474
  %476 = add <4 x i32> %475, <i32 2, i32 2, i32 2, i32 2>
  %477 = urem <4 x i32> %476, <i32 60, i32 60, i32 60, i32 60>
  %478 = sitofp <4 x i32> %477 to <4 x double>
  %479 = fmul fast <4 x double> %478, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %480 = extractelement <4 x i64> %473, i32 0
  %481 = shl i64 %480, 3
  %482 = add i64 %481, %471
  %483 = getelementptr i8, i8* %call2, i64 %482
  %484 = bitcast i8* %483 to <4 x double>*
  store <4 x double> %479, <4 x double>* %484, align 8, !alias.scope !102, !noalias !104
  %index.next1211 = add i64 %index1210, 4
  %vec.ind.next1215 = add <4 x i64> %vec.ind1214, <i64 4, i64 4, i64 4, i64 4>
  %485 = icmp eq i64 %index.next1211, 28
  br i1 %485, label %polly.loop_exit799.1.2, label %vector.body1208, !llvm.loop !117

polly.loop_exit799.1.2:                           ; preds = %vector.body1208
  %polly.indvar_next795.1.2 = add nuw nsw i64 %polly.indvar794.1.2, 1
  %exitcond927.1.2.not = icmp eq i64 %polly.indvar_next795.1.2, 16
  br i1 %exitcond927.1.2.not, label %polly.loop_header817, label %polly.loop_header791.1.2

polly.loop_header764.1:                           ; preds = %polly.loop_exit772, %polly.loop_exit772.1
  %polly.indvar767.1 = phi i64 [ %polly.indvar_next768.1, %polly.loop_exit772.1 ], [ 0, %polly.loop_exit772 ]
  %486 = mul nuw nsw i64 %polly.indvar767.1, 640
  %487 = trunc i64 %polly.indvar767.1 to i32
  %broadcast.splatinsert1050 = insertelement <4 x i32> poison, i32 %487, i32 0
  %broadcast.splat1051 = shufflevector <4 x i32> %broadcast.splatinsert1050, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %polly.loop_header764.1
  %index1044 = phi i64 [ 0, %polly.loop_header764.1 ], [ %index.next1045, %vector.body1042 ]
  %vec.ind1048 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.1 ], [ %vec.ind.next1049, %vector.body1042 ]
  %488 = add nuw nsw <4 x i64> %vec.ind1048, <i64 32, i64 32, i64 32, i64 32>
  %489 = trunc <4 x i64> %488 to <4 x i32>
  %490 = mul <4 x i32> %broadcast.splat1051, %489
  %491 = add <4 x i32> %490, <i32 3, i32 3, i32 3, i32 3>
  %492 = urem <4 x i32> %491, <i32 80, i32 80, i32 80, i32 80>
  %493 = sitofp <4 x i32> %492 to <4 x double>
  %494 = fmul fast <4 x double> %493, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %495 = extractelement <4 x i64> %488, i32 0
  %496 = shl i64 %495, 3
  %497 = add nuw nsw i64 %496, %486
  %498 = getelementptr i8, i8* %call, i64 %497
  %499 = bitcast i8* %498 to <4 x double>*
  store <4 x double> %494, <4 x double>* %499, align 8, !alias.scope !98, !noalias !100
  %index.next1045 = add i64 %index1044, 4
  %vec.ind.next1049 = add <4 x i64> %vec.ind1048, <i64 4, i64 4, i64 4, i64 4>
  %500 = icmp eq i64 %index.next1045, 32
  br i1 %500, label %polly.loop_exit772.1, label %vector.body1042, !llvm.loop !118

polly.loop_exit772.1:                             ; preds = %vector.body1042
  %polly.indvar_next768.1 = add nuw nsw i64 %polly.indvar767.1, 1
  %exitcond936.1.not = icmp eq i64 %polly.indvar_next768.1, 32
  br i1 %exitcond936.1.not, label %polly.loop_header764.2, label %polly.loop_header764.1

polly.loop_header764.2:                           ; preds = %polly.loop_exit772.1, %polly.loop_exit772.2
  %polly.indvar767.2 = phi i64 [ %polly.indvar_next768.2, %polly.loop_exit772.2 ], [ 0, %polly.loop_exit772.1 ]
  %501 = mul nuw nsw i64 %polly.indvar767.2, 640
  %502 = trunc i64 %polly.indvar767.2 to i32
  %broadcast.splatinsert1062 = insertelement <4 x i32> poison, i32 %502, i32 0
  %broadcast.splat1063 = shufflevector <4 x i32> %broadcast.splatinsert1062, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1054

vector.body1054:                                  ; preds = %vector.body1054, %polly.loop_header764.2
  %index1056 = phi i64 [ 0, %polly.loop_header764.2 ], [ %index.next1057, %vector.body1054 ]
  %vec.ind1060 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.2 ], [ %vec.ind.next1061, %vector.body1054 ]
  %503 = add nuw nsw <4 x i64> %vec.ind1060, <i64 64, i64 64, i64 64, i64 64>
  %504 = trunc <4 x i64> %503 to <4 x i32>
  %505 = mul <4 x i32> %broadcast.splat1063, %504
  %506 = add <4 x i32> %505, <i32 3, i32 3, i32 3, i32 3>
  %507 = urem <4 x i32> %506, <i32 80, i32 80, i32 80, i32 80>
  %508 = sitofp <4 x i32> %507 to <4 x double>
  %509 = fmul fast <4 x double> %508, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %510 = extractelement <4 x i64> %503, i32 0
  %511 = shl i64 %510, 3
  %512 = add nuw nsw i64 %511, %501
  %513 = getelementptr i8, i8* %call, i64 %512
  %514 = bitcast i8* %513 to <4 x double>*
  store <4 x double> %509, <4 x double>* %514, align 8, !alias.scope !98, !noalias !100
  %index.next1057 = add i64 %index1056, 4
  %vec.ind.next1061 = add <4 x i64> %vec.ind1060, <i64 4, i64 4, i64 4, i64 4>
  %515 = icmp eq i64 %index.next1057, 16
  br i1 %515, label %polly.loop_exit772.2, label %vector.body1054, !llvm.loop !119

polly.loop_exit772.2:                             ; preds = %vector.body1054
  %polly.indvar_next768.2 = add nuw nsw i64 %polly.indvar767.2, 1
  %exitcond936.2.not = icmp eq i64 %polly.indvar_next768.2, 32
  br i1 %exitcond936.2.not, label %polly.loop_header764.1969, label %polly.loop_header764.2

polly.loop_header764.1969:                        ; preds = %polly.loop_exit772.2, %polly.loop_exit772.1980
  %polly.indvar767.1968 = phi i64 [ %polly.indvar_next768.1978, %polly.loop_exit772.1980 ], [ 0, %polly.loop_exit772.2 ]
  %516 = add nuw nsw i64 %polly.indvar767.1968, 32
  %517 = mul nuw nsw i64 %516, 640
  %518 = trunc i64 %516 to i32
  %broadcast.splatinsert1076 = insertelement <4 x i32> poison, i32 %518, i32 0
  %broadcast.splat1077 = shufflevector <4 x i32> %broadcast.splatinsert1076, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1066

vector.body1066:                                  ; preds = %vector.body1066, %polly.loop_header764.1969
  %index1068 = phi i64 [ 0, %polly.loop_header764.1969 ], [ %index.next1069, %vector.body1066 ]
  %vec.ind1074 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header764.1969 ], [ %vec.ind.next1075, %vector.body1066 ]
  %519 = mul <4 x i32> %vec.ind1074, %broadcast.splat1077
  %520 = add <4 x i32> %519, <i32 3, i32 3, i32 3, i32 3>
  %521 = urem <4 x i32> %520, <i32 80, i32 80, i32 80, i32 80>
  %522 = sitofp <4 x i32> %521 to <4 x double>
  %523 = fmul fast <4 x double> %522, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %524 = shl i64 %index1068, 3
  %525 = add nuw nsw i64 %524, %517
  %526 = getelementptr i8, i8* %call, i64 %525
  %527 = bitcast i8* %526 to <4 x double>*
  store <4 x double> %523, <4 x double>* %527, align 8, !alias.scope !98, !noalias !100
  %index.next1069 = add i64 %index1068, 4
  %vec.ind.next1075 = add <4 x i32> %vec.ind1074, <i32 4, i32 4, i32 4, i32 4>
  %528 = icmp eq i64 %index.next1069, 32
  br i1 %528, label %polly.loop_exit772.1980, label %vector.body1066, !llvm.loop !120

polly.loop_exit772.1980:                          ; preds = %vector.body1066
  %polly.indvar_next768.1978 = add nuw nsw i64 %polly.indvar767.1968, 1
  %exitcond936.1979.not = icmp eq i64 %polly.indvar_next768.1978, 32
  br i1 %exitcond936.1979.not, label %polly.loop_header764.1.1, label %polly.loop_header764.1969

polly.loop_header764.1.1:                         ; preds = %polly.loop_exit772.1980, %polly.loop_exit772.1.1
  %polly.indvar767.1.1 = phi i64 [ %polly.indvar_next768.1.1, %polly.loop_exit772.1.1 ], [ 0, %polly.loop_exit772.1980 ]
  %529 = add nuw nsw i64 %polly.indvar767.1.1, 32
  %530 = mul nuw nsw i64 %529, 640
  %531 = trunc i64 %529 to i32
  %broadcast.splatinsert1088 = insertelement <4 x i32> poison, i32 %531, i32 0
  %broadcast.splat1089 = shufflevector <4 x i32> %broadcast.splatinsert1088, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1080

vector.body1080:                                  ; preds = %vector.body1080, %polly.loop_header764.1.1
  %index1082 = phi i64 [ 0, %polly.loop_header764.1.1 ], [ %index.next1083, %vector.body1080 ]
  %vec.ind1086 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.1.1 ], [ %vec.ind.next1087, %vector.body1080 ]
  %532 = add nuw nsw <4 x i64> %vec.ind1086, <i64 32, i64 32, i64 32, i64 32>
  %533 = trunc <4 x i64> %532 to <4 x i32>
  %534 = mul <4 x i32> %broadcast.splat1089, %533
  %535 = add <4 x i32> %534, <i32 3, i32 3, i32 3, i32 3>
  %536 = urem <4 x i32> %535, <i32 80, i32 80, i32 80, i32 80>
  %537 = sitofp <4 x i32> %536 to <4 x double>
  %538 = fmul fast <4 x double> %537, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %539 = extractelement <4 x i64> %532, i32 0
  %540 = shl i64 %539, 3
  %541 = add nuw nsw i64 %540, %530
  %542 = getelementptr i8, i8* %call, i64 %541
  %543 = bitcast i8* %542 to <4 x double>*
  store <4 x double> %538, <4 x double>* %543, align 8, !alias.scope !98, !noalias !100
  %index.next1083 = add i64 %index1082, 4
  %vec.ind.next1087 = add <4 x i64> %vec.ind1086, <i64 4, i64 4, i64 4, i64 4>
  %544 = icmp eq i64 %index.next1083, 32
  br i1 %544, label %polly.loop_exit772.1.1, label %vector.body1080, !llvm.loop !121

polly.loop_exit772.1.1:                           ; preds = %vector.body1080
  %polly.indvar_next768.1.1 = add nuw nsw i64 %polly.indvar767.1.1, 1
  %exitcond936.1.1.not = icmp eq i64 %polly.indvar_next768.1.1, 32
  br i1 %exitcond936.1.1.not, label %polly.loop_header764.2.1, label %polly.loop_header764.1.1

polly.loop_header764.2.1:                         ; preds = %polly.loop_exit772.1.1, %polly.loop_exit772.2.1
  %polly.indvar767.2.1 = phi i64 [ %polly.indvar_next768.2.1, %polly.loop_exit772.2.1 ], [ 0, %polly.loop_exit772.1.1 ]
  %545 = add nuw nsw i64 %polly.indvar767.2.1, 32
  %546 = mul nuw nsw i64 %545, 640
  %547 = trunc i64 %545 to i32
  %broadcast.splatinsert1100 = insertelement <4 x i32> poison, i32 %547, i32 0
  %broadcast.splat1101 = shufflevector <4 x i32> %broadcast.splatinsert1100, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1092

vector.body1092:                                  ; preds = %vector.body1092, %polly.loop_header764.2.1
  %index1094 = phi i64 [ 0, %polly.loop_header764.2.1 ], [ %index.next1095, %vector.body1092 ]
  %vec.ind1098 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.2.1 ], [ %vec.ind.next1099, %vector.body1092 ]
  %548 = add nuw nsw <4 x i64> %vec.ind1098, <i64 64, i64 64, i64 64, i64 64>
  %549 = trunc <4 x i64> %548 to <4 x i32>
  %550 = mul <4 x i32> %broadcast.splat1101, %549
  %551 = add <4 x i32> %550, <i32 3, i32 3, i32 3, i32 3>
  %552 = urem <4 x i32> %551, <i32 80, i32 80, i32 80, i32 80>
  %553 = sitofp <4 x i32> %552 to <4 x double>
  %554 = fmul fast <4 x double> %553, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %555 = extractelement <4 x i64> %548, i32 0
  %556 = shl i64 %555, 3
  %557 = add nuw nsw i64 %556, %546
  %558 = getelementptr i8, i8* %call, i64 %557
  %559 = bitcast i8* %558 to <4 x double>*
  store <4 x double> %554, <4 x double>* %559, align 8, !alias.scope !98, !noalias !100
  %index.next1095 = add i64 %index1094, 4
  %vec.ind.next1099 = add <4 x i64> %vec.ind1098, <i64 4, i64 4, i64 4, i64 4>
  %560 = icmp eq i64 %index.next1095, 16
  br i1 %560, label %polly.loop_exit772.2.1, label %vector.body1092, !llvm.loop !122

polly.loop_exit772.2.1:                           ; preds = %vector.body1092
  %polly.indvar_next768.2.1 = add nuw nsw i64 %polly.indvar767.2.1, 1
  %exitcond936.2.1.not = icmp eq i64 %polly.indvar_next768.2.1, 32
  br i1 %exitcond936.2.1.not, label %polly.loop_header764.2983, label %polly.loop_header764.2.1

polly.loop_header764.2983:                        ; preds = %polly.loop_exit772.2.1, %polly.loop_exit772.2994
  %polly.indvar767.2982 = phi i64 [ %polly.indvar_next768.2992, %polly.loop_exit772.2994 ], [ 0, %polly.loop_exit772.2.1 ]
  %561 = add nuw nsw i64 %polly.indvar767.2982, 64
  %562 = mul nuw nsw i64 %561, 640
  %563 = trunc i64 %561 to i32
  %broadcast.splatinsert1114 = insertelement <4 x i32> poison, i32 %563, i32 0
  %broadcast.splat1115 = shufflevector <4 x i32> %broadcast.splatinsert1114, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %polly.loop_header764.2983
  %index1106 = phi i64 [ 0, %polly.loop_header764.2983 ], [ %index.next1107, %vector.body1104 ]
  %vec.ind1112 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header764.2983 ], [ %vec.ind.next1113, %vector.body1104 ]
  %564 = mul <4 x i32> %vec.ind1112, %broadcast.splat1115
  %565 = add <4 x i32> %564, <i32 3, i32 3, i32 3, i32 3>
  %566 = urem <4 x i32> %565, <i32 80, i32 80, i32 80, i32 80>
  %567 = sitofp <4 x i32> %566 to <4 x double>
  %568 = fmul fast <4 x double> %567, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %569 = shl i64 %index1106, 3
  %570 = add nuw nsw i64 %569, %562
  %571 = getelementptr i8, i8* %call, i64 %570
  %572 = bitcast i8* %571 to <4 x double>*
  store <4 x double> %568, <4 x double>* %572, align 8, !alias.scope !98, !noalias !100
  %index.next1107 = add i64 %index1106, 4
  %vec.ind.next1113 = add <4 x i32> %vec.ind1112, <i32 4, i32 4, i32 4, i32 4>
  %573 = icmp eq i64 %index.next1107, 32
  br i1 %573, label %polly.loop_exit772.2994, label %vector.body1104, !llvm.loop !123

polly.loop_exit772.2994:                          ; preds = %vector.body1104
  %polly.indvar_next768.2992 = add nuw nsw i64 %polly.indvar767.2982, 1
  %exitcond936.2993.not = icmp eq i64 %polly.indvar_next768.2992, 16
  br i1 %exitcond936.2993.not, label %polly.loop_header764.1.2, label %polly.loop_header764.2983

polly.loop_header764.1.2:                         ; preds = %polly.loop_exit772.2994, %polly.loop_exit772.1.2
  %polly.indvar767.1.2 = phi i64 [ %polly.indvar_next768.1.2, %polly.loop_exit772.1.2 ], [ 0, %polly.loop_exit772.2994 ]
  %574 = add nuw nsw i64 %polly.indvar767.1.2, 64
  %575 = mul nuw nsw i64 %574, 640
  %576 = trunc i64 %574 to i32
  %broadcast.splatinsert1126 = insertelement <4 x i32> poison, i32 %576, i32 0
  %broadcast.splat1127 = shufflevector <4 x i32> %broadcast.splatinsert1126, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.body1118, %polly.loop_header764.1.2
  %index1120 = phi i64 [ 0, %polly.loop_header764.1.2 ], [ %index.next1121, %vector.body1118 ]
  %vec.ind1124 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.1.2 ], [ %vec.ind.next1125, %vector.body1118 ]
  %577 = add nuw nsw <4 x i64> %vec.ind1124, <i64 32, i64 32, i64 32, i64 32>
  %578 = trunc <4 x i64> %577 to <4 x i32>
  %579 = mul <4 x i32> %broadcast.splat1127, %578
  %580 = add <4 x i32> %579, <i32 3, i32 3, i32 3, i32 3>
  %581 = urem <4 x i32> %580, <i32 80, i32 80, i32 80, i32 80>
  %582 = sitofp <4 x i32> %581 to <4 x double>
  %583 = fmul fast <4 x double> %582, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %584 = extractelement <4 x i64> %577, i32 0
  %585 = shl i64 %584, 3
  %586 = add nuw nsw i64 %585, %575
  %587 = getelementptr i8, i8* %call, i64 %586
  %588 = bitcast i8* %587 to <4 x double>*
  store <4 x double> %583, <4 x double>* %588, align 8, !alias.scope !98, !noalias !100
  %index.next1121 = add i64 %index1120, 4
  %vec.ind.next1125 = add <4 x i64> %vec.ind1124, <i64 4, i64 4, i64 4, i64 4>
  %589 = icmp eq i64 %index.next1121, 32
  br i1 %589, label %polly.loop_exit772.1.2, label %vector.body1118, !llvm.loop !124

polly.loop_exit772.1.2:                           ; preds = %vector.body1118
  %polly.indvar_next768.1.2 = add nuw nsw i64 %polly.indvar767.1.2, 1
  %exitcond936.1.2.not = icmp eq i64 %polly.indvar_next768.1.2, 16
  br i1 %exitcond936.1.2.not, label %polly.loop_header764.2.2, label %polly.loop_header764.1.2

polly.loop_header764.2.2:                         ; preds = %polly.loop_exit772.1.2, %polly.loop_exit772.2.2
  %polly.indvar767.2.2 = phi i64 [ %polly.indvar_next768.2.2, %polly.loop_exit772.2.2 ], [ 0, %polly.loop_exit772.1.2 ]
  %590 = add nuw nsw i64 %polly.indvar767.2.2, 64
  %591 = mul nuw nsw i64 %590, 640
  %592 = trunc i64 %590 to i32
  %broadcast.splatinsert1138 = insertelement <4 x i32> poison, i32 %592, i32 0
  %broadcast.splat1139 = shufflevector <4 x i32> %broadcast.splatinsert1138, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1130

vector.body1130:                                  ; preds = %vector.body1130, %polly.loop_header764.2.2
  %index1132 = phi i64 [ 0, %polly.loop_header764.2.2 ], [ %index.next1133, %vector.body1130 ]
  %vec.ind1136 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header764.2.2 ], [ %vec.ind.next1137, %vector.body1130 ]
  %593 = add nuw nsw <4 x i64> %vec.ind1136, <i64 64, i64 64, i64 64, i64 64>
  %594 = trunc <4 x i64> %593 to <4 x i32>
  %595 = mul <4 x i32> %broadcast.splat1139, %594
  %596 = add <4 x i32> %595, <i32 3, i32 3, i32 3, i32 3>
  %597 = urem <4 x i32> %596, <i32 80, i32 80, i32 80, i32 80>
  %598 = sitofp <4 x i32> %597 to <4 x double>
  %599 = fmul fast <4 x double> %598, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %600 = extractelement <4 x i64> %593, i32 0
  %601 = shl i64 %600, 3
  %602 = add nuw nsw i64 %601, %591
  %603 = getelementptr i8, i8* %call, i64 %602
  %604 = bitcast i8* %603 to <4 x double>*
  store <4 x double> %599, <4 x double>* %604, align 8, !alias.scope !98, !noalias !100
  %index.next1133 = add i64 %index1132, 4
  %vec.ind.next1137 = add <4 x i64> %vec.ind1136, <i64 4, i64 4, i64 4, i64 4>
  %605 = icmp eq i64 %index.next1133, 16
  br i1 %605, label %polly.loop_exit772.2.2, label %vector.body1130, !llvm.loop !125

polly.loop_exit772.2.2:                           ; preds = %vector.body1130
  %polly.indvar_next768.2.2 = add nuw nsw i64 %polly.indvar767.2.2, 1
  %exitcond936.2.2.not = icmp eq i64 %polly.indvar_next768.2.2, 16
  br i1 %exitcond936.2.2.not, label %polly.loop_header791, label %polly.loop_header764.2.2
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
!25 = !{!"llvm.loop.tile.size", i32 4}
!26 = !{!"llvm.loop.tile.followup_floor", !27}
!27 = distinct !{!27, !12, !23, !28}
!28 = !{!"llvm.loop.id", !"k1"}
!29 = !{!"llvm.loop.tile.followup_tile", !30}
!30 = distinct !{!30, !12, !31}
!31 = !{!"llvm.loop.id", !"k2"}
!32 = distinct !{!32, !12, !23, !33, !25, !34, !37}
!33 = !{!"llvm.loop.id", !"j"}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !23, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !23, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !23, !41, !42, !43, !44, !45, !56}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 8}
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
