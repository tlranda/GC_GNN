; ModuleID = 'syr2k_exhaustive/mmp_all_SM_1943.c'
source_filename = "syr2k_exhaustive/mmp_all_SM_1943.c"
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
  %call = tail call i8* @polybench_alloc_data(i64 1440000, i32 8) #6
  %call878 = bitcast i8* %call to [1200 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 1200000, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [1000 x double]*
  %arraydecay4 = bitcast i8* %call2 to [1000 x double]*
  %polly.access.cast.call1730 = bitcast i8* %call1 to double*
  %polly.access.call1739 = getelementptr i8, i8* %call1, i64 9600000
  %polly.access.cast.call2740 = bitcast i8* %call2 to double*
  %0 = icmp ule i8* %polly.access.call1739, %call2
  %polly.access.call2759 = getelementptr i8, i8* %call2, i64 9600000
  %1 = icmp ule i8* %polly.access.call2759, %call1
  %2 = or i1 %0, %1
  %polly.access.call779 = getelementptr i8, i8* %call, i64 11520000
  %3 = icmp ule i8* %polly.access.call779, %call2
  %4 = icmp ule i8* %polly.access.call2759, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call779, %call1
  %8 = icmp ule i8* %polly.access.call1739, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header852, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 8000
  %12 = add nuw i64 %11, 8000
  %scevgep1166 = getelementptr i8, i8* %call2, i64 %12
  %scevgep1165 = getelementptr i8, i8* %call2, i64 %11
  %scevgep1164 = getelementptr i8, i8* %call1, i64 %12
  %scevgep1163 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep1163, %scevgep1166
  %bound1 = icmp ult i8* %scevgep1165, %scevgep1164
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
  %16 = urem <4 x i32> %15, <i32 1200, i32 1200, i32 1200, i32 1200>
  %17 = sitofp <4 x i32> %16 to <4 x double>
  %18 = fmul fast <4 x double> %17, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %19 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %index
  %20 = bitcast double* %19 to <4 x double>*
  store <4 x double> %18, <4 x double>* %20, align 8, !tbaa !2, !alias.scope !6, !noalias !9
  %21 = add <4 x i32> %14, <i32 2, i32 2, i32 2, i32 2>
  %22 = urem <4 x i32> %21, <i32 1000, i32 1000, i32 1000, i32 1000>
  %23 = sitofp <4 x i32> %22 to <4 x double>
  %24 = fmul fast <4 x double> %23, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %25 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %index
  %26 = bitcast double* %25 to <4 x double>*
  store <4 x double> %24, <4 x double>* %26, align 8, !tbaa !2, !alias.scope !9
  %index.next = add i64 %index, 4
  %vec.ind.next = add <4 x i64> %vec.ind, <i64 4, i64 4, i64 4, i64 4>
  %27 = icmp eq i64 %index.next, 1000
  br i1 %27, label %for.inc17.i, label %vector.body, !llvm.loop !11

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %28 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv16.i
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %rem.i = urem i32 %30, 1200
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fmul fast double %conv.i, 0x3F4B4E81B4E81B4F
  %arrayidx6.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %31 = add i32 %29, 2
  %rem9.i = urem i32 %31, 1000
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fmul fast double %conv10.i, 1.000000e-03
  %arrayidx16.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv16.i, i64 %indvars.iv10.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 1000
  br i1 %exitcond15.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !14

for.inc17.i:                                      ; preds = %vector.body, %for.body3.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 1200
  br i1 %exitcond18.not.i, label %vector.ph1170, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph1170:                                    ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert1177 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat1178 = shufflevector <4 x i64> %broadcast.splatinsert1177, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1169

vector.body1169:                                  ; preds = %vector.body1169, %vector.ph1170
  %index1171 = phi i64 [ 0, %vector.ph1170 ], [ %index.next1172, %vector.body1169 ]
  %vec.ind1175 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1170 ], [ %vec.ind.next1176, %vector.body1169 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind1175, %broadcast.splat1178
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 1200, i32 1200, i32 1200, i32 1200>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %38 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv7.i, i64 %index1171
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next1172 = add i64 %index1171, 4
  %vec.ind.next1176 = add <4 x i64> %vec.ind1175, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next1172, 1200
  br i1 %40, label %for.inc41.i, label %vector.body1169, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body1169
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 1200
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph1170, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit913
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.start515, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check1232 = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check1232, label %for.body3.i46.preheader1666, label %vector.ph1233

vector.ph1233:                                    ; preds = %for.body3.i46.preheader
  %n.vec1235 = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1231

vector.body1231:                                  ; preds = %vector.body1231, %vector.ph1233
  %index1236 = phi i64 [ 0, %vector.ph1233 ], [ %index.next1237, %vector.body1231 ]
  %42 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i, i64 %index1236
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1237 = add i64 %index1236, 4
  %46 = icmp eq i64 %index.next1237, %n.vec1235
  br i1 %46, label %middle.block1229, label %vector.body1231, !llvm.loop !18

middle.block1229:                                 ; preds = %vector.body1231
  %cmp.n1239 = icmp eq i64 %indvars.iv21.i, %n.vec1235
  br i1 %cmp.n1239, label %for.inc6.i, label %for.body3.i46.preheader1666

for.body3.i46.preheader1666:                      ; preds = %for.body3.i46.preheader, %middle.block1229
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec1235, %middle.block1229 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1666, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1666 ]
  %arrayidx5.i = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1229, %for.cond1.preheader.i45
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 1200
  br i1 %exitcond23.not.i, label %for.cond12.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !20

for.cond12.preheader.i:                           ; preds = %for.inc6.i, %for.inc49.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc49.i ], [ 0, %for.inc6.i ]
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.inc49.i ], [ 1, %for.inc6.i ]
  br label %for.cond15.preheader.i

for.cond15.preheader.i:                           ; preds = %for.inc46.i, %for.cond12.preheader.i
  %indvars.iv10.i47 = phi i64 [ 0, %for.cond12.preheader.i ], [ %indvars.iv.next11.i51, %for.inc46.i ]
  %arrayidx26.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  %arrayidx36.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i, i64 %indvars.iv10.i47
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond15.preheader.i
  %indvars.iv.i48 = phi i64 [ 0, %for.cond15.preheader.i ], [ %indvars.iv.next.i49, %for.body17.i ]
  %arrayidx21.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %48 = load double, double* %arrayidx21.i, align 8, !tbaa !2, !llvm.access !21
  %49 = load double, double* %arrayidx26.i, align 8, !tbaa !2, !llvm.access !22
  %mul27.i = fmul fast double %49, %48
  %arrayidx31.i = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i48, i64 %indvars.iv10.i47
  %50 = load double, double* %arrayidx31.i, align 8, !tbaa !2, !llvm.access !22
  %51 = load double, double* %arrayidx36.i, align 8, !tbaa !2, !llvm.access !21
  %mul37.i = fmul fast double %51, %50
  %arrayidx41.i = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i51, 1000
  br i1 %exitcond12.not.i, label %for.inc49.i, label %for.cond15.preheader.i, !llvm.loop !33

for.inc49.i:                                      ; preds = %for.inc46.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 1200
  br i1 %exitcond17.not.i, label %kernel_syr2k.exit, label %for.cond12.preheader.i, !llvm.loop !45

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.exiting516
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start302, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1375 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1375, label %for.body3.i60.preheader1665, label %vector.ph1376

vector.ph1376:                                    ; preds = %for.body3.i60.preheader
  %n.vec1378 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1374

vector.body1374:                                  ; preds = %vector.body1374, %vector.ph1376
  %index1379 = phi i64 [ 0, %vector.ph1376 ], [ %index.next1380, %vector.body1374 ]
  %53 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i52, i64 %index1379
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1383 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1383, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1380 = add i64 %index1379, 4
  %57 = icmp eq i64 %index.next1380, %n.vec1378
  br i1 %57, label %middle.block1372, label %vector.body1374, !llvm.loop !57

middle.block1372:                                 ; preds = %vector.body1374
  %cmp.n1382 = icmp eq i64 %indvars.iv21.i52, %n.vec1378
  br i1 %cmp.n1382, label %for.inc6.i63, label %for.body3.i60.preheader1665

for.body3.i60.preheader1665:                      ; preds = %for.body3.i60.preheader, %middle.block1372
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1378, %middle.block1372 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1665, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1665 ]
  %arrayidx5.i56 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !58

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1372, %for.cond1.preheader.i54
  %indvars.iv.next22.i61 = add nuw nsw i64 %indvars.iv21.i52, 1
  %exitcond23.not.i62 = icmp eq i64 %indvars.iv.next22.i61, 1200
  br i1 %exitcond23.not.i62, label %for.cond12.preheader.i66, label %for.cond1.preheader.i54, !llvm.loop !20

for.cond12.preheader.i66:                         ; preds = %for.inc6.i63, %for.inc49.i89
  %indvars.iv15.i64 = phi i64 [ %indvars.iv.next16.i86, %for.inc49.i89 ], [ 0, %for.inc6.i63 ]
  %indvars.iv13.i65 = phi i64 [ %indvars.iv.next14.i87, %for.inc49.i89 ], [ 1, %for.inc6.i63 ]
  br label %for.cond15.preheader.i70

for.cond15.preheader.i70:                         ; preds = %for.inc46.i85, %for.cond12.preheader.i66
  %indvars.iv10.i67 = phi i64 [ 0, %for.cond12.preheader.i66 ], [ %indvars.iv.next11.i83, %for.inc46.i85 ]
  %arrayidx26.i68 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  %arrayidx36.i69 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i64, i64 %indvars.iv10.i67
  br label %for.body17.i82

for.body17.i82:                                   ; preds = %for.body17.i82, %for.cond15.preheader.i70
  %indvars.iv.i71 = phi i64 [ 0, %for.cond15.preheader.i70 ], [ %indvars.iv.next.i80, %for.body17.i82 ]
  %arrayidx21.i72 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %59 = load double, double* %arrayidx21.i72, align 8, !tbaa !2, !llvm.access !21
  %60 = load double, double* %arrayidx26.i68, align 8, !tbaa !2, !llvm.access !22
  %mul27.i73 = fmul fast double %60, %59
  %arrayidx31.i74 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i71, i64 %indvars.iv10.i67
  %61 = load double, double* %arrayidx31.i74, align 8, !tbaa !2, !llvm.access !22
  %62 = load double, double* %arrayidx36.i69, align 8, !tbaa !2, !llvm.access !21
  %mul37.i75 = fmul fast double %62, %61
  %arrayidx41.i76 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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
  %exitcond12.not.i84 = icmp eq i64 %indvars.iv.next11.i83, 1000
  br i1 %exitcond12.not.i84, label %for.inc49.i89, label %for.cond15.preheader.i70, !llvm.loop !33

for.inc49.i89:                                    ; preds = %for.inc46.i85
  %indvars.iv.next16.i86 = add nuw nsw i64 %indvars.iv15.i64, 1
  %indvars.iv.next14.i87 = add nuw nsw i64 %indvars.iv13.i65, 1
  %exitcond17.not.i88 = icmp eq i64 %indvars.iv.next16.i86, 1200
  br i1 %exitcond17.not.i88, label %kernel_syr2k.exit90, label %for.cond12.preheader.i66, !llvm.loop !45

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.exiting303
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.start, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1521 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1521, label %for.body3.i99.preheader1664, label %vector.ph1522

vector.ph1522:                                    ; preds = %for.body3.i99.preheader
  %n.vec1524 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1520

vector.body1520:                                  ; preds = %vector.body1520, %vector.ph1522
  %index1525 = phi i64 [ 0, %vector.ph1522 ], [ %index.next1526, %vector.body1520 ]
  %64 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i91, i64 %index1525
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1529 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1529, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1526 = add i64 %index1525, 4
  %68 = icmp eq i64 %index.next1526, %n.vec1524
  br i1 %68, label %middle.block1518, label %vector.body1520, !llvm.loop !59

middle.block1518:                                 ; preds = %vector.body1520
  %cmp.n1528 = icmp eq i64 %indvars.iv21.i91, %n.vec1524
  br i1 %cmp.n1528, label %for.inc6.i102, label %for.body3.i99.preheader1664

for.body3.i99.preheader1664:                      ; preds = %for.body3.i99.preheader, %middle.block1518
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1524, %middle.block1518 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1664, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1664 ]
  %arrayidx5.i95 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !60

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1518, %for.cond1.preheader.i93
  %indvars.iv.next22.i100 = add nuw nsw i64 %indvars.iv21.i91, 1
  %exitcond23.not.i101 = icmp eq i64 %indvars.iv.next22.i100, 1200
  br i1 %exitcond23.not.i101, label %for.cond12.preheader.i105, label %for.cond1.preheader.i93, !llvm.loop !20

for.cond12.preheader.i105:                        ; preds = %for.inc6.i102, %for.inc49.i128
  %indvars.iv15.i103 = phi i64 [ %indvars.iv.next16.i125, %for.inc49.i128 ], [ 0, %for.inc6.i102 ]
  %indvars.iv13.i104 = phi i64 [ %indvars.iv.next14.i126, %for.inc49.i128 ], [ 1, %for.inc6.i102 ]
  br label %for.cond15.preheader.i109

for.cond15.preheader.i109:                        ; preds = %for.inc46.i124, %for.cond12.preheader.i105
  %indvars.iv10.i106 = phi i64 [ 0, %for.cond12.preheader.i105 ], [ %indvars.iv.next11.i122, %for.inc46.i124 ]
  %arrayidx26.i107 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  %arrayidx36.i108 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv15.i103, i64 %indvars.iv10.i106
  br label %for.body17.i121

for.body17.i121:                                  ; preds = %for.body17.i121, %for.cond15.preheader.i109
  %indvars.iv.i110 = phi i64 [ 0, %for.cond15.preheader.i109 ], [ %indvars.iv.next.i119, %for.body17.i121 ]
  %arrayidx21.i111 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay3, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %70 = load double, double* %arrayidx21.i111, align 8, !tbaa !2, !llvm.access !21
  %71 = load double, double* %arrayidx26.i107, align 8, !tbaa !2, !llvm.access !22
  %mul27.i112 = fmul fast double %71, %70
  %arrayidx31.i113 = getelementptr inbounds [1000 x double], [1000 x double]* %arraydecay4, i64 %indvars.iv.i110, i64 %indvars.iv10.i106
  %72 = load double, double* %arrayidx31.i113, align 8, !tbaa !2, !llvm.access !22
  %73 = load double, double* %arrayidx36.i108, align 8, !tbaa !2, !llvm.access !21
  %mul37.i114 = fmul fast double %73, %72
  %arrayidx41.i115 = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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
  %exitcond12.not.i123 = icmp eq i64 %indvars.iv.next11.i122, 1000
  br i1 %exitcond12.not.i123, label %for.inc49.i128, label %for.cond15.preheader.i109, !llvm.loop !33

for.inc49.i128:                                   ; preds = %for.inc46.i124
  %indvars.iv.next16.i125 = add nuw nsw i64 %indvars.iv15.i103, 1
  %indvars.iv.next14.i126 = add nuw nsw i64 %indvars.iv13.i104, 1
  %exitcond17.not.i127 = icmp eq i64 %indvars.iv.next16.i125, 1200
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
  %79 = mul nuw nsw i64 %indvars.iv4.i, 1200
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
  %arrayidx8.i = getelementptr inbounds [1200 x double], [1200 x double]* %call878, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 1200
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !63

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1200
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
  %malloccall136 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header

polly.exiting:                                    ; preds = %polly.loop_exit224
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall136)
  br label %kernel_syr2k.exit129

polly.loop_header:                                ; preds = %polly.loop_exit194, %polly.start
  %indvar1533 = phi i64 [ %indvar.next1534, %polly.loop_exit194 ], [ 0, %polly.start ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit194 ], [ 1, %polly.start ]
  %88 = add i64 %indvar1533, 1
  %89 = mul nuw nsw i64 %polly.indvar, 9600
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1535 = icmp ult i64 %88, 4
  br i1 %min.iters.check1535, label %polly.loop_header192.preheader, label %vector.ph1536

vector.ph1536:                                    ; preds = %polly.loop_header
  %n.vec1538 = and i64 %88, -4
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.body1532, %vector.ph1536
  %index1539 = phi i64 [ 0, %vector.ph1536 ], [ %index.next1540, %vector.body1532 ]
  %90 = shl nuw nsw i64 %index1539, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1543 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !65, !noalias !67
  %93 = fmul fast <4 x double> %wide.load1543, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !65, !noalias !67
  %index.next1540 = add i64 %index1539, 4
  %95 = icmp eq i64 %index.next1540, %n.vec1538
  br i1 %95, label %middle.block1530, label %vector.body1532, !llvm.loop !72

middle.block1530:                                 ; preds = %vector.body1532
  %cmp.n1542 = icmp eq i64 %88, %n.vec1538
  br i1 %cmp.n1542, label %polly.loop_exit194, label %polly.loop_header192.preheader

polly.loop_header192.preheader:                   ; preds = %polly.loop_header, %middle.block1530
  %polly.indvar195.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1538, %middle.block1530 ]
  br label %polly.loop_header192

polly.loop_exit194:                               ; preds = %polly.loop_header192, %middle.block1530
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond1065.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1534 = add i64 %indvar1533, 1
  br i1 %exitcond1065.not, label %polly.loop_header200.preheader, label %polly.loop_header

polly.loop_header200.preheader:                   ; preds = %polly.loop_exit194
  %Packed_MemRef_call1 = bitcast i8* %malloccall to double*
  %Packed_MemRef_call2 = bitcast i8* %malloccall136 to double*
  br label %polly.loop_header200

polly.loop_header192:                             ; preds = %polly.loop_header192.preheader, %polly.loop_header192
  %polly.indvar195 = phi i64 [ %polly.indvar_next196, %polly.loop_header192 ], [ %polly.indvar195.ph, %polly.loop_header192.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar195, 3
  %scevgep198 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep198199 = bitcast i8* %scevgep198 to double*
  %_p_scalar_ = load double, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep198199, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next196 = add nuw nsw i64 %polly.indvar195, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1064.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1063.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1063.not, label %polly.loop_header216.preheader, label %polly.loop_header200

polly.loop_header216.preheader:                   ; preds = %polly.loop_exit208
  %scevgep1572 = getelementptr i8, i8* %malloccall, i64 19200
  %scevgep1573 = getelementptr i8, i8* %malloccall, i64 19208
  %scevgep1605 = getelementptr i8, i8* %malloccall, i64 9600
  %scevgep1606 = getelementptr i8, i8* %malloccall, i64 9608
  %scevgep1638 = getelementptr i8, i8* %malloccall, i64 8
  br label %polly.loop_header216

polly.loop_header206:                             ; preds = %polly.loop_header206, %polly.loop_header200
  %polly.indvar209 = phi i64 [ 0, %polly.loop_header200 ], [ %polly.indvar_next210, %polly.loop_header206 ]
  %polly.access.mul.call2213 = mul nuw nsw i64 %polly.indvar209, 1000
  %polly.access.add.call2214 = add nuw nsw i64 %polly.access.mul.call2213, %polly.indvar203
  %polly.access.call2215 = getelementptr double, double* %polly.access.cast.call2740, i64 %polly.access.add.call2214
  %polly.access.call2215.load = load double, double* %polly.access.call2215, align 8, !alias.scope !69, !noalias !75
  %polly.access.add.Packed_MemRef_call2 = add nuw nsw i64 %polly.indvar209, %polly.access.mul.Packed_MemRef_call2
  %polly.access.Packed_MemRef_call2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2
  store double %polly.access.call2215.load, double* %polly.access.Packed_MemRef_call2, align 8
  %polly.indvar_next210 = add nuw nsw i64 %polly.indvar209, 1
  %exitcond1062.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1062.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1057 = phi i64 [ %indvars.iv.next1058, %polly.loop_exit224 ], [ 3, %polly.loop_header216.preheader ]
  %indvars.iv1055 = phi i64 [ %indvars.iv.next1056, %polly.loop_exit224 ], [ 1, %polly.loop_header216.preheader ]
  %indvars.iv1044 = phi i64 [ %indvars.iv.next1045, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %polly.indvar219 = phi i64 [ %polly.indvar_next220, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %97 = mul nsw i64 %polly.indvar219, -50
  %98 = mul nuw nsw i64 %polly.indvar219, 50
  %99 = mul nuw nsw i64 %polly.indvar219, 50
  %100 = mul nsw i64 %polly.indvar219, -50
  %101 = mul nsw i64 %polly.indvar219, -50
  %102 = mul nuw nsw i64 %polly.indvar219, 50
  %103 = mul nuw nsw i64 %polly.indvar219, 50
  %104 = mul nsw i64 %polly.indvar219, -50
  %105 = mul nsw i64 %polly.indvar219, -50
  %106 = mul nuw nsw i64 %polly.indvar219, 50
  %107 = mul nuw nsw i64 %polly.indvar219, 50
  %108 = mul nsw i64 %polly.indvar219, -50
  %109 = mul nsw i64 %polly.indvar219, -50
  %110 = mul nuw nsw i64 %polly.indvar219, 50
  %111 = lshr i64 %indvars.iv1057, 3
  %112 = sub nsw i64 %indvars.iv1055, %111
  %113 = mul nuw nsw i64 %polly.indvar219, 3
  %114 = add nuw nsw i64 %113, 3
  %pexp.p_div_q = lshr i64 %114, 3
  %polly.loop_guard.not = icmp ult i64 %polly.indvar219, %pexp.p_div_q
  %115 = mul nsw i64 %polly.indvar219, -50
  %116 = mul nuw nsw i64 %polly.indvar219, 50
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %polly.indvar_next220 = add nuw nsw i64 %polly.indvar219, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -50
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 50
  %indvars.iv.next1056 = add nuw nsw i64 %indvars.iv1055, 1
  %indvars.iv.next1058 = add nuw nsw i64 %indvars.iv1057, 3
  %exitcond1061.not = icmp eq i64 %polly.indvar_next220, 24
  br i1 %exitcond1061.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  br i1 %polly.loop_guard.not, label %polly.loop_exit230, label %polly.loop_header228.preheader

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %117 = shl nsw i64 %polly.indvar225, 2
  %118 = or i64 %117, 1
  %119 = or i64 %117, 2
  %120 = or i64 %117, 3
  %polly.access.mul.Packed_MemRef_call2285.us = mul nsw i64 %polly.indvar225, 4800
  %121 = or i64 %117, 1
  %polly.access.mul.Packed_MemRef_call2285.us.1 = mul nuw nsw i64 %121, 1200
  %122 = or i64 %117, 2
  %polly.access.mul.Packed_MemRef_call2285.us.2 = mul nuw nsw i64 %122, 1200
  %123 = or i64 %117, 3
  %polly.access.mul.Packed_MemRef_call2285.us.3 = mul nuw nsw i64 %123, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit237, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1060.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1060.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit237
  %indvars.iv1046 = phi i64 [ %indvars.iv1044, %polly.loop_header228.preheader ], [ %indvars.iv.next1047, %polly.loop_exit237 ]
  %indvars.iv1042 = phi i64 [ %indvars.iv, %polly.loop_header228.preheader ], [ %indvars.iv.next1043, %polly.loop_exit237 ]
  %polly.indvar231 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit237 ]
  %124 = mul i64 %polly.indvar231, 80
  %125 = add i64 %97, %124
  %smax1647 = call i64 @llvm.smax.i64(i64 %125, i64 0)
  %126 = mul i64 %polly.indvar231, -80
  %127 = add i64 %98, %126
  %128 = add i64 %smax1647, %127
  %129 = mul i64 %polly.indvar231, 640
  %130 = mul i64 %polly.indvar231, 80
  %131 = add i64 %100, %130
  %smax1633 = call i64 @llvm.smax.i64(i64 %131, i64 0)
  %132 = add nuw i64 %99, %smax1633
  %133 = mul i64 %132, 9600
  %134 = add i64 %129, %133
  %135 = or i64 %129, 8
  %136 = add i64 %135, %133
  %137 = mul i64 %polly.indvar231, -80
  %138 = add i64 %99, %137
  %139 = add i64 %smax1633, %138
  %140 = mul i64 %polly.indvar231, 80
  %141 = add i64 %101, %140
  %smax1615 = call i64 @llvm.smax.i64(i64 %141, i64 0)
  %142 = mul i64 %polly.indvar231, -80
  %143 = add i64 %102, %142
  %144 = add i64 %smax1615, %143
  %145 = mul i64 %polly.indvar231, 640
  %146 = mul i64 %polly.indvar231, 80
  %147 = add i64 %104, %146
  %smax1600 = call i64 @llvm.smax.i64(i64 %147, i64 0)
  %148 = add nuw i64 %103, %smax1600
  %149 = mul i64 %148, 9600
  %150 = add i64 %145, %149
  %151 = or i64 %145, 8
  %152 = add i64 %151, %149
  %153 = mul i64 %polly.indvar231, -80
  %154 = add i64 %103, %153
  %155 = add i64 %smax1600, %154
  %156 = mul i64 %polly.indvar231, 80
  %157 = add i64 %105, %156
  %smax1582 = call i64 @llvm.smax.i64(i64 %157, i64 0)
  %158 = mul i64 %polly.indvar231, -80
  %159 = add i64 %106, %158
  %160 = add i64 %smax1582, %159
  %161 = mul i64 %polly.indvar231, 640
  %162 = mul i64 %polly.indvar231, 80
  %163 = add i64 %108, %162
  %smax1567 = call i64 @llvm.smax.i64(i64 %163, i64 0)
  %164 = add nuw i64 %107, %smax1567
  %165 = mul i64 %164, 9600
  %166 = add i64 %161, %165
  %167 = or i64 %161, 8
  %168 = add i64 %167, %165
  %169 = mul i64 %polly.indvar231, -80
  %170 = add i64 %107, %169
  %171 = add i64 %smax1567, %170
  %172 = mul i64 %polly.indvar231, 80
  %173 = add i64 %109, %172
  %smax1547 = call i64 @llvm.smax.i64(i64 %173, i64 0)
  %174 = mul i64 %polly.indvar231, -80
  %175 = add i64 %110, %174
  %176 = add i64 %smax1547, %175
  %177 = mul nuw nsw i64 %polly.indvar231, 80
  %178 = add nsw i64 %177, %115
  %179 = icmp sgt i64 %178, 0
  %180 = select i1 %179, i64 %178, i64 0
  %polly.loop_guard238 = icmp slt i64 %180, 50
  br i1 %polly.loop_guard238, label %polly.loop_header235.preheader, label %polly.loop_exit237

polly.loop_header235.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1042, i64 0)
  %181 = add i64 %smax, %indvars.iv1046
  %182 = sub nsw i64 %116, %177
  %183 = add nuw nsw i64 %177, 80
  br label %polly.loop_header235

polly.loop_exit237:                               ; preds = %polly.loop_exit269, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1043 = add nsw i64 %indvars.iv1042, 80
  %indvars.iv.next1047 = add nsw i64 %indvars.iv1046, -80
  %exitcond1059.not = icmp eq i64 %polly.indvar_next232, %112
  br i1 %exitcond1059.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header235:                             ; preds = %polly.loop_header235.preheader, %polly.loop_exit269
  %indvar1548 = phi i64 [ 0, %polly.loop_header235.preheader ], [ %indvar.next1549, %polly.loop_exit269 ]
  %indvars.iv1048 = phi i64 [ %181, %polly.loop_header235.preheader ], [ %indvars.iv.next1049, %polly.loop_exit269 ]
  %polly.indvar239 = phi i64 [ %180, %polly.loop_header235.preheader ], [ %polly.indvar_next240, %polly.loop_exit269 ]
  %184 = add i64 %128, %indvar1548
  %smin1648 = call i64 @llvm.smin.i64(i64 %184, i64 79)
  %185 = add nsw i64 %smin1648, 1
  %186 = mul nuw nsw i64 %indvar1548, 9600
  %187 = add i64 %134, %186
  %scevgep1634 = getelementptr i8, i8* %call, i64 %187
  %188 = add i64 %136, %186
  %scevgep1635 = getelementptr i8, i8* %call, i64 %188
  %189 = add i64 %139, %indvar1548
  %smin1636 = call i64 @llvm.smin.i64(i64 %189, i64 79)
  %190 = shl i64 %smin1636, 3
  %scevgep1637 = getelementptr i8, i8* %scevgep1635, i64 %190
  %scevgep1639 = getelementptr i8, i8* %scevgep1638, i64 %190
  %191 = add i64 %144, %indvar1548
  %smin1616 = call i64 @llvm.smin.i64(i64 %191, i64 79)
  %192 = add nsw i64 %smin1616, 1
  %193 = mul nuw nsw i64 %indvar1548, 9600
  %194 = add i64 %150, %193
  %scevgep1601 = getelementptr i8, i8* %call, i64 %194
  %195 = add i64 %152, %193
  %scevgep1602 = getelementptr i8, i8* %call, i64 %195
  %196 = add i64 %155, %indvar1548
  %smin1603 = call i64 @llvm.smin.i64(i64 %196, i64 79)
  %197 = shl i64 %smin1603, 3
  %scevgep1604 = getelementptr i8, i8* %scevgep1602, i64 %197
  %scevgep1607 = getelementptr i8, i8* %scevgep1606, i64 %197
  %198 = add i64 %160, %indvar1548
  %smin1583 = call i64 @llvm.smin.i64(i64 %198, i64 79)
  %199 = add nsw i64 %smin1583, 1
  %200 = mul nuw nsw i64 %indvar1548, 9600
  %201 = add i64 %166, %200
  %scevgep1568 = getelementptr i8, i8* %call, i64 %201
  %202 = add i64 %168, %200
  %scevgep1569 = getelementptr i8, i8* %call, i64 %202
  %203 = add i64 %171, %indvar1548
  %smin1570 = call i64 @llvm.smin.i64(i64 %203, i64 79)
  %204 = shl i64 %smin1570, 3
  %scevgep1571 = getelementptr i8, i8* %scevgep1569, i64 %204
  %scevgep1574 = getelementptr i8, i8* %scevgep1573, i64 %204
  %205 = add i64 %176, %indvar1548
  %smin1550 = call i64 @llvm.smin.i64(i64 %205, i64 79)
  %206 = add nsw i64 %smin1550, 1
  %smin1052 = call i64 @llvm.smin.i64(i64 %indvars.iv1048, i64 79)
  %207 = add nsw i64 %polly.indvar239, %182
  %polly.loop_guard2521158 = icmp sgt i64 %207, -1
  %208 = add nuw nsw i64 %polly.indvar239, %116
  %.not = icmp ult i64 %208, %183
  %polly.access.mul.call1261 = mul nsw i64 %208, 1000
  %209 = add nuw i64 %polly.access.mul.call1261, %117
  br i1 %polly.loop_guard2521158, label %polly.loop_header249.us, label %polly.loop_header235.split

polly.loop_header249.us:                          ; preds = %polly.loop_header235, %polly.loop_header249.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header249.us ], [ 0, %polly.loop_header235 ]
  %210 = add nuw nsw i64 %polly.indvar253.us, %177
  %polly.access.mul.call1257.us = mul nuw nsw i64 %210, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %117, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond1050.not = icmp eq i64 %polly.indvar253.us, %smin1052
  br i1 %exitcond1050.not, label %polly.cond.loopexit.us, label %polly.loop_header249.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1263.us = getelementptr double, double* %polly.access.cast.call1730, i64 %209
  %polly.access.call1263.load.us = load double, double* %polly.access.call1263.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %207
  store double %polly.access.call1263.load.us, double* %polly.access.Packed_MemRef_call1266.us, align 8
  br label %polly.loop_header249.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header249.us
  br i1 %.not, label %polly.loop_header249.us.1.preheader, label %polly.then.us

polly.loop_header249.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header249.us.1

polly.loop_header235.split:                       ; preds = %polly.loop_header235
  br i1 %.not, label %polly.loop_exit269, label %polly.loop_header242.preheader

polly.loop_header242.preheader:                   ; preds = %polly.loop_header235.split
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1730, i64 %209
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %207
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.access.add.call1262.1 = or i64 %209, 1
  %polly.access.call1263.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.1
  %polly.access.call1263.load.1 = load double, double* %polly.access.call1263.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.1 = add nsw i64 %207, 1200
  %polly.access.Packed_MemRef_call1266.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.1
  store double %polly.access.call1263.load.1, double* %polly.access.Packed_MemRef_call1266.1, align 8
  %polly.access.add.call1262.2 = or i64 %209, 2
  %polly.access.call1263.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.2
  %polly.access.call1263.load.2 = load double, double* %polly.access.call1263.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.2 = add nsw i64 %207, 2400
  %polly.access.Packed_MemRef_call1266.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.2
  store double %polly.access.call1263.load.2, double* %polly.access.Packed_MemRef_call1266.2, align 8
  %polly.access.add.call1262.3 = or i64 %209, 3
  %polly.access.call1263.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.3
  %polly.access.call1263.load.3 = load double, double* %polly.access.call1263.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.3 = add nsw i64 %207, 3600
  %polly.access.Packed_MemRef_call1266.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.3
  store double %polly.access.call1263.load.3, double* %polly.access.Packed_MemRef_call1266.3, align 8
  br label %polly.loop_exit269

polly.loop_exit269:                               ; preds = %polly.loop_header274.us.3, %middle.block1544, %polly.loop_header235.split, %polly.loop_header242.preheader, %polly.loop_header267.preheader
  %polly.indvar_next240 = add nuw nsw i64 %polly.indvar239, 1
  %polly.loop_cond241 = icmp ult i64 %polly.indvar239, 49
  %indvars.iv.next1049 = add i64 %indvars.iv1048, 1
  %indvar.next1549 = add i64 %indvar1548, 1
  br i1 %polly.loop_cond241, label %polly.loop_header235, label %polly.loop_exit237

polly.loop_header267.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %211 = mul i64 %208, 9600
  br i1 %polly.loop_guard2521158, label %polly.loop_header267.us.preheader, label %polly.loop_exit269

polly.loop_header267.us.preheader:                ; preds = %polly.loop_header267.preheader
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us, %208
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1, i64 %207
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %min.iters.check1649 = icmp ult i64 %185, 4
  br i1 %min.iters.check1649, label %polly.loop_header274.us.preheader, label %vector.memcheck1632

vector.memcheck1632:                              ; preds = %polly.loop_header267.us.preheader
  %bound01640 = icmp ult i8* %scevgep1634, %scevgep1639
  %bound11641 = icmp ult i8* %malloccall, %scevgep1637
  %found.conflict1642 = and i1 %bound01640, %bound11641
  br i1 %found.conflict1642, label %polly.loop_header274.us.preheader, label %vector.ph1650

vector.ph1650:                                    ; preds = %vector.memcheck1632
  %n.vec1652 = and i64 %185, -4
  %broadcast.splatinsert1658 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1659 = shufflevector <4 x double> %broadcast.splatinsert1658, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1661 = insertelement <4 x double> poison, double %_p_scalar_296.us, i32 0
  %broadcast.splat1662 = shufflevector <4 x double> %broadcast.splatinsert1661, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1646

vector.body1646:                                  ; preds = %vector.body1646, %vector.ph1650
  %index1653 = phi i64 [ 0, %vector.ph1650 ], [ %index.next1654, %vector.body1646 ]
  %212 = add nuw nsw i64 %index1653, %177
  %213 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1653
  %214 = bitcast double* %213 to <4 x double>*
  %wide.load1657 = load <4 x double>, <4 x double>* %214, align 8, !alias.scope !77
  %215 = fmul fast <4 x double> %broadcast.splat1659, %wide.load1657
  %216 = add nuw nsw i64 %212, %polly.access.mul.Packed_MemRef_call2285.us
  %217 = getelementptr double, double* %Packed_MemRef_call2, i64 %216
  %218 = bitcast double* %217 to <4 x double>*
  %wide.load1660 = load <4 x double>, <4 x double>* %218, align 8
  %219 = fmul fast <4 x double> %broadcast.splat1662, %wide.load1660
  %220 = shl i64 %212, 3
  %221 = add i64 %220, %211
  %222 = getelementptr i8, i8* %call, i64 %221
  %223 = bitcast i8* %222 to <4 x double>*
  %wide.load1663 = load <4 x double>, <4 x double>* %223, align 8, !alias.scope !80, !noalias !82
  %224 = fadd fast <4 x double> %219, %215
  %225 = fmul fast <4 x double> %224, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %226 = fadd fast <4 x double> %225, %wide.load1663
  %227 = bitcast i8* %222 to <4 x double>*
  store <4 x double> %226, <4 x double>* %227, align 8, !alias.scope !80, !noalias !82
  %index.next1654 = add i64 %index1653, 4
  %228 = icmp eq i64 %index.next1654, %n.vec1652
  br i1 %228, label %middle.block1644, label %vector.body1646, !llvm.loop !83

middle.block1644:                                 ; preds = %vector.body1646
  %cmp.n1656 = icmp eq i64 %185, %n.vec1652
  br i1 %cmp.n1656, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us.preheader

polly.loop_header274.us.preheader:                ; preds = %vector.memcheck1632, %polly.loop_header267.us.preheader, %middle.block1644
  %polly.indvar278.us.ph = phi i64 [ 0, %vector.memcheck1632 ], [ 0, %polly.loop_header267.us.preheader ], [ %n.vec1652, %middle.block1644 ]
  br label %polly.loop_header274.us

polly.loop_header274.us:                          ; preds = %polly.loop_header274.us.preheader, %polly.loop_header274.us
  %polly.indvar278.us = phi i64 [ %polly.indvar_next279.us, %polly.loop_header274.us ], [ %polly.indvar278.us.ph, %polly.loop_header274.us.preheader ]
  %229 = add nuw nsw i64 %polly.indvar278.us, %177
  %polly.access.Packed_MemRef_call1283.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar278.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call1283.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %polly.access.add.Packed_MemRef_call2290.us = add nuw nsw i64 %229, %polly.access.mul.Packed_MemRef_call2285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %230 = shl i64 %229, 3
  %231 = add i64 %230, %211
  %scevgep297.us = getelementptr i8, i8* %call, i64 %231
  %scevgep297298.us = bitcast i8* %scevgep297.us to double*
  %_p_scalar_299.us = load double, double* %scevgep297298.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_299.us
  store double %p_add42.i118.us, double* %scevgep297298.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us = add nuw nsw i64 %polly.indvar278.us, 1
  %exitcond1053.not = icmp eq i64 %polly.indvar278.us, %smin1052
  br i1 %exitcond1053.not, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us, !llvm.loop !84

polly.loop_exit276.loopexit.us:                   ; preds = %polly.loop_header274.us, %middle.block1644
  %polly.access.add.Packed_MemRef_call2286.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.1, %208
  %polly.access.Packed_MemRef_call2287.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call2287.us.1, align 8
  %polly.access.add.Packed_MemRef_call1294.us.1 = add nsw i64 %207, 1200
  %polly.access.Packed_MemRef_call1295.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.1
  %_p_scalar_296.us.1 = load double, double* %polly.access.Packed_MemRef_call1295.us.1, align 8
  %min.iters.check1617 = icmp ult i64 %192, 4
  br i1 %min.iters.check1617, label %polly.loop_header274.us.1.preheader, label %vector.memcheck1599

vector.memcheck1599:                              ; preds = %polly.loop_exit276.loopexit.us
  %bound01608 = icmp ult i8* %scevgep1601, %scevgep1607
  %bound11609 = icmp ult i8* %scevgep1605, %scevgep1604
  %found.conflict1610 = and i1 %bound01608, %bound11609
  br i1 %found.conflict1610, label %polly.loop_header274.us.1.preheader, label %vector.ph1618

vector.ph1618:                                    ; preds = %vector.memcheck1599
  %n.vec1620 = and i64 %192, -4
  %broadcast.splatinsert1626 = insertelement <4 x double> poison, double %_p_scalar_288.us.1, i32 0
  %broadcast.splat1627 = shufflevector <4 x double> %broadcast.splatinsert1626, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1629 = insertelement <4 x double> poison, double %_p_scalar_296.us.1, i32 0
  %broadcast.splat1630 = shufflevector <4 x double> %broadcast.splatinsert1629, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1614

vector.body1614:                                  ; preds = %vector.body1614, %vector.ph1618
  %index1621 = phi i64 [ 0, %vector.ph1618 ], [ %index.next1622, %vector.body1614 ]
  %232 = add nuw nsw i64 %index1621, %177
  %233 = add nuw nsw i64 %index1621, 1200
  %234 = getelementptr double, double* %Packed_MemRef_call1, i64 %233
  %235 = bitcast double* %234 to <4 x double>*
  %wide.load1625 = load <4 x double>, <4 x double>* %235, align 8, !alias.scope !85
  %236 = fmul fast <4 x double> %broadcast.splat1627, %wide.load1625
  %237 = add nuw nsw i64 %232, %polly.access.mul.Packed_MemRef_call2285.us.1
  %238 = getelementptr double, double* %Packed_MemRef_call2, i64 %237
  %239 = bitcast double* %238 to <4 x double>*
  %wide.load1628 = load <4 x double>, <4 x double>* %239, align 8
  %240 = fmul fast <4 x double> %broadcast.splat1630, %wide.load1628
  %241 = shl i64 %232, 3
  %242 = add i64 %241, %211
  %243 = getelementptr i8, i8* %call, i64 %242
  %244 = bitcast i8* %243 to <4 x double>*
  %wide.load1631 = load <4 x double>, <4 x double>* %244, align 8, !alias.scope !88, !noalias !90
  %245 = fadd fast <4 x double> %240, %236
  %246 = fmul fast <4 x double> %245, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %247 = fadd fast <4 x double> %246, %wide.load1631
  %248 = bitcast i8* %243 to <4 x double>*
  store <4 x double> %247, <4 x double>* %248, align 8, !alias.scope !88, !noalias !90
  %index.next1622 = add i64 %index1621, 4
  %249 = icmp eq i64 %index.next1622, %n.vec1620
  br i1 %249, label %middle.block1612, label %vector.body1614, !llvm.loop !91

middle.block1612:                                 ; preds = %vector.body1614
  %cmp.n1624 = icmp eq i64 %192, %n.vec1620
  br i1 %cmp.n1624, label %polly.loop_exit276.loopexit.us.1, label %polly.loop_header274.us.1.preheader

polly.loop_header274.us.1.preheader:              ; preds = %vector.memcheck1599, %polly.loop_exit276.loopexit.us, %middle.block1612
  %polly.indvar278.us.1.ph = phi i64 [ 0, %vector.memcheck1599 ], [ 0, %polly.loop_exit276.loopexit.us ], [ %n.vec1620, %middle.block1612 ]
  br label %polly.loop_header274.us.1

polly.start302:                                   ; preds = %kernel_syr2k.exit
  %malloccall304 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall306 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header390

polly.exiting303:                                 ; preds = %polly.loop_exit430
  tail call void @free(i8* %malloccall304)
  tail call void @free(i8* %malloccall306)
  br label %kernel_syr2k.exit90

polly.loop_header390:                             ; preds = %polly.loop_exit398, %polly.start302
  %indvar1387 = phi i64 [ %indvar.next1388, %polly.loop_exit398 ], [ 0, %polly.start302 ]
  %polly.indvar393 = phi i64 [ %polly.indvar_next394, %polly.loop_exit398 ], [ 1, %polly.start302 ]
  %250 = add i64 %indvar1387, 1
  %251 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %251
  %min.iters.check1389 = icmp ult i64 %250, 4
  br i1 %min.iters.check1389, label %polly.loop_header396.preheader, label %vector.ph1390

vector.ph1390:                                    ; preds = %polly.loop_header390
  %n.vec1392 = and i64 %250, -4
  br label %vector.body1386

vector.body1386:                                  ; preds = %vector.body1386, %vector.ph1390
  %index1393 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1394, %vector.body1386 ]
  %252 = shl nuw nsw i64 %index1393, 3
  %253 = getelementptr i8, i8* %scevgep402, i64 %252
  %254 = bitcast i8* %253 to <4 x double>*
  %wide.load1397 = load <4 x double>, <4 x double>* %254, align 8, !alias.scope !92, !noalias !94
  %255 = fmul fast <4 x double> %wide.load1397, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %256 = bitcast i8* %253 to <4 x double>*
  store <4 x double> %255, <4 x double>* %256, align 8, !alias.scope !92, !noalias !94
  %index.next1394 = add i64 %index1393, 4
  %257 = icmp eq i64 %index.next1394, %n.vec1392
  br i1 %257, label %middle.block1384, label %vector.body1386, !llvm.loop !99

middle.block1384:                                 ; preds = %vector.body1386
  %cmp.n1396 = icmp eq i64 %250, %n.vec1392
  br i1 %cmp.n1396, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1384
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1392, %middle.block1384 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1384
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1388 = add i64 %indvar1387, 1
  br i1 %exitcond1094.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %258 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %258
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1093.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1093.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !100

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit414
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit414 ], [ 0, %polly.loop_header406.preheader ]
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar409, 1200
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_header412
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond1092.not = icmp eq i64 %polly.indvar_next410, 1000
  br i1 %exitcond1092.not, label %polly.loop_header422.preheader, label %polly.loop_header406

polly.loop_header422.preheader:                   ; preds = %polly.loop_exit414
  %scevgep1426 = getelementptr i8, i8* %malloccall304, i64 19200
  %scevgep1427 = getelementptr i8, i8* %malloccall304, i64 19208
  %scevgep1459 = getelementptr i8, i8* %malloccall304, i64 9600
  %scevgep1460 = getelementptr i8, i8* %malloccall304, i64 9608
  %scevgep1492 = getelementptr i8, i8* %malloccall304, i64 8
  br label %polly.loop_header422

polly.loop_header412:                             ; preds = %polly.loop_header412, %polly.loop_header406
  %polly.indvar415 = phi i64 [ 0, %polly.loop_header406 ], [ %polly.indvar_next416, %polly.loop_header412 ]
  %polly.access.mul.call2419 = mul nuw nsw i64 %polly.indvar415, 1000
  %polly.access.add.call2420 = add nuw nsw i64 %polly.access.mul.call2419, %polly.indvar409
  %polly.access.call2421 = getelementptr double, double* %polly.access.cast.call2740, i64 %polly.access.add.call2420
  %polly.access.call2421.load = load double, double* %polly.access.call2421, align 8, !alias.scope !96, !noalias !101
  %polly.access.add.Packed_MemRef_call2307 = add nuw nsw i64 %polly.indvar415, %polly.access.mul.Packed_MemRef_call2307
  %polly.access.Packed_MemRef_call2307 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307
  store double %polly.access.call2421.load, double* %polly.access.Packed_MemRef_call2307, align 8
  %polly.indvar_next416 = add nuw nsw i64 %polly.indvar415, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next416, 1200
  br i1 %exitcond1091.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header422:                             ; preds = %polly.loop_header422.preheader, %polly.loop_exit430
  %indvars.iv1086 = phi i64 [ %indvars.iv.next1087, %polly.loop_exit430 ], [ 3, %polly.loop_header422.preheader ]
  %indvars.iv1084 = phi i64 [ %indvars.iv.next1085, %polly.loop_exit430 ], [ 1, %polly.loop_header422.preheader ]
  %indvars.iv1072 = phi i64 [ %indvars.iv.next1073, %polly.loop_exit430 ], [ 0, %polly.loop_header422.preheader ]
  %indvars.iv1067 = phi i64 [ %indvars.iv.next1068, %polly.loop_exit430 ], [ 0, %polly.loop_header422.preheader ]
  %polly.indvar425 = phi i64 [ %polly.indvar_next426, %polly.loop_exit430 ], [ 0, %polly.loop_header422.preheader ]
  %259 = mul nsw i64 %polly.indvar425, -50
  %260 = mul nuw nsw i64 %polly.indvar425, 50
  %261 = mul nuw nsw i64 %polly.indvar425, 50
  %262 = mul nsw i64 %polly.indvar425, -50
  %263 = mul nsw i64 %polly.indvar425, -50
  %264 = mul nuw nsw i64 %polly.indvar425, 50
  %265 = mul nuw nsw i64 %polly.indvar425, 50
  %266 = mul nsw i64 %polly.indvar425, -50
  %267 = mul nsw i64 %polly.indvar425, -50
  %268 = mul nuw nsw i64 %polly.indvar425, 50
  %269 = mul nuw nsw i64 %polly.indvar425, 50
  %270 = mul nsw i64 %polly.indvar425, -50
  %271 = mul nsw i64 %polly.indvar425, -50
  %272 = mul nuw nsw i64 %polly.indvar425, 50
  %273 = lshr i64 %indvars.iv1086, 3
  %274 = sub nsw i64 %indvars.iv1084, %273
  %275 = mul nuw nsw i64 %polly.indvar425, 3
  %276 = add nuw nsw i64 %275, 3
  %pexp.p_div_q434 = lshr i64 %276, 3
  %polly.loop_guard439.not = icmp ult i64 %polly.indvar425, %pexp.p_div_q434
  %277 = mul nsw i64 %polly.indvar425, -50
  %278 = mul nuw nsw i64 %polly.indvar425, 50
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_exit438
  %polly.indvar_next426 = add nuw nsw i64 %polly.indvar425, 1
  %indvars.iv.next1068 = add nsw i64 %indvars.iv1067, -50
  %indvars.iv.next1073 = add nuw nsw i64 %indvars.iv1072, 50
  %indvars.iv.next1085 = add nuw nsw i64 %indvars.iv1084, 1
  %indvars.iv.next1087 = add nuw nsw i64 %indvars.iv1086, 3
  %exitcond1090.not = icmp eq i64 %polly.indvar_next426, 24
  br i1 %exitcond1090.not, label %polly.exiting303, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_exit438, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_exit438 ]
  br i1 %polly.loop_guard439.not, label %polly.loop_exit438, label %polly.loop_header436.preheader

polly.loop_header436.preheader:                   ; preds = %polly.loop_header428
  %279 = shl nsw i64 %polly.indvar431, 2
  %280 = or i64 %279, 1
  %281 = or i64 %279, 2
  %282 = or i64 %279, 3
  %polly.access.mul.Packed_MemRef_call2307498.us = mul nsw i64 %polly.indvar431, 4800
  %283 = or i64 %279, 1
  %polly.access.mul.Packed_MemRef_call2307498.us.1 = mul nuw nsw i64 %283, 1200
  %284 = or i64 %279, 2
  %polly.access.mul.Packed_MemRef_call2307498.us.2 = mul nuw nsw i64 %284, 1200
  %285 = or i64 %279, 3
  %polly.access.mul.Packed_MemRef_call2307498.us.3 = mul nuw nsw i64 %285, 1200
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit446, %polly.loop_header428
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1089.not = icmp eq i64 %polly.indvar_next432, 250
  br i1 %exitcond1089.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header436:                             ; preds = %polly.loop_header436.preheader, %polly.loop_exit446
  %indvars.iv1074 = phi i64 [ %indvars.iv1072, %polly.loop_header436.preheader ], [ %indvars.iv.next1075, %polly.loop_exit446 ]
  %indvars.iv1069 = phi i64 [ %indvars.iv1067, %polly.loop_header436.preheader ], [ %indvars.iv.next1070, %polly.loop_exit446 ]
  %polly.indvar440 = phi i64 [ 0, %polly.loop_header436.preheader ], [ %polly.indvar_next441, %polly.loop_exit446 ]
  %286 = mul i64 %polly.indvar440, 80
  %287 = add i64 %259, %286
  %smax1501 = call i64 @llvm.smax.i64(i64 %287, i64 0)
  %288 = mul i64 %polly.indvar440, -80
  %289 = add i64 %260, %288
  %290 = add i64 %smax1501, %289
  %291 = mul i64 %polly.indvar440, 640
  %292 = mul i64 %polly.indvar440, 80
  %293 = add i64 %262, %292
  %smax1487 = call i64 @llvm.smax.i64(i64 %293, i64 0)
  %294 = add nuw i64 %261, %smax1487
  %295 = mul i64 %294, 9600
  %296 = add i64 %291, %295
  %297 = or i64 %291, 8
  %298 = add i64 %297, %295
  %299 = mul i64 %polly.indvar440, -80
  %300 = add i64 %261, %299
  %301 = add i64 %smax1487, %300
  %302 = mul i64 %polly.indvar440, 80
  %303 = add i64 %263, %302
  %smax1469 = call i64 @llvm.smax.i64(i64 %303, i64 0)
  %304 = mul i64 %polly.indvar440, -80
  %305 = add i64 %264, %304
  %306 = add i64 %smax1469, %305
  %307 = mul i64 %polly.indvar440, 640
  %308 = mul i64 %polly.indvar440, 80
  %309 = add i64 %266, %308
  %smax1454 = call i64 @llvm.smax.i64(i64 %309, i64 0)
  %310 = add nuw i64 %265, %smax1454
  %311 = mul i64 %310, 9600
  %312 = add i64 %307, %311
  %313 = or i64 %307, 8
  %314 = add i64 %313, %311
  %315 = mul i64 %polly.indvar440, -80
  %316 = add i64 %265, %315
  %317 = add i64 %smax1454, %316
  %318 = mul i64 %polly.indvar440, 80
  %319 = add i64 %267, %318
  %smax1436 = call i64 @llvm.smax.i64(i64 %319, i64 0)
  %320 = mul i64 %polly.indvar440, -80
  %321 = add i64 %268, %320
  %322 = add i64 %smax1436, %321
  %323 = mul i64 %polly.indvar440, 640
  %324 = mul i64 %polly.indvar440, 80
  %325 = add i64 %270, %324
  %smax1421 = call i64 @llvm.smax.i64(i64 %325, i64 0)
  %326 = add nuw i64 %269, %smax1421
  %327 = mul i64 %326, 9600
  %328 = add i64 %323, %327
  %329 = or i64 %323, 8
  %330 = add i64 %329, %327
  %331 = mul i64 %polly.indvar440, -80
  %332 = add i64 %269, %331
  %333 = add i64 %smax1421, %332
  %334 = mul i64 %polly.indvar440, 80
  %335 = add i64 %271, %334
  %smax1401 = call i64 @llvm.smax.i64(i64 %335, i64 0)
  %336 = mul i64 %polly.indvar440, -80
  %337 = add i64 %272, %336
  %338 = add i64 %smax1401, %337
  %339 = mul nuw nsw i64 %polly.indvar440, 80
  %340 = add nsw i64 %339, %277
  %341 = icmp sgt i64 %340, 0
  %342 = select i1 %341, i64 %340, i64 0
  %polly.loop_guard447 = icmp slt i64 %342, 50
  br i1 %polly.loop_guard447, label %polly.loop_header444.preheader, label %polly.loop_exit446

polly.loop_header444.preheader:                   ; preds = %polly.loop_header436
  %smax1071 = call i64 @llvm.smax.i64(i64 %indvars.iv1069, i64 0)
  %343 = add i64 %smax1071, %indvars.iv1074
  %344 = sub nsw i64 %278, %339
  %345 = add nuw nsw i64 %339, 80
  br label %polly.loop_header444

polly.loop_exit446:                               ; preds = %polly.loop_exit482, %polly.loop_header436
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %indvars.iv.next1070 = add nsw i64 %indvars.iv1069, 80
  %indvars.iv.next1075 = add nsw i64 %indvars.iv1074, -80
  %exitcond1088.not = icmp eq i64 %polly.indvar_next441, %274
  br i1 %exitcond1088.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header444:                             ; preds = %polly.loop_header444.preheader, %polly.loop_exit482
  %indvar1402 = phi i64 [ 0, %polly.loop_header444.preheader ], [ %indvar.next1403, %polly.loop_exit482 ]
  %indvars.iv1076 = phi i64 [ %343, %polly.loop_header444.preheader ], [ %indvars.iv.next1077, %polly.loop_exit482 ]
  %polly.indvar448 = phi i64 [ %342, %polly.loop_header444.preheader ], [ %polly.indvar_next449, %polly.loop_exit482 ]
  %346 = add i64 %290, %indvar1402
  %smin1502 = call i64 @llvm.smin.i64(i64 %346, i64 79)
  %347 = add nsw i64 %smin1502, 1
  %348 = mul nuw nsw i64 %indvar1402, 9600
  %349 = add i64 %296, %348
  %scevgep1488 = getelementptr i8, i8* %call, i64 %349
  %350 = add i64 %298, %348
  %scevgep1489 = getelementptr i8, i8* %call, i64 %350
  %351 = add i64 %301, %indvar1402
  %smin1490 = call i64 @llvm.smin.i64(i64 %351, i64 79)
  %352 = shl i64 %smin1490, 3
  %scevgep1491 = getelementptr i8, i8* %scevgep1489, i64 %352
  %scevgep1493 = getelementptr i8, i8* %scevgep1492, i64 %352
  %353 = add i64 %306, %indvar1402
  %smin1470 = call i64 @llvm.smin.i64(i64 %353, i64 79)
  %354 = add nsw i64 %smin1470, 1
  %355 = mul nuw nsw i64 %indvar1402, 9600
  %356 = add i64 %312, %355
  %scevgep1455 = getelementptr i8, i8* %call, i64 %356
  %357 = add i64 %314, %355
  %scevgep1456 = getelementptr i8, i8* %call, i64 %357
  %358 = add i64 %317, %indvar1402
  %smin1457 = call i64 @llvm.smin.i64(i64 %358, i64 79)
  %359 = shl i64 %smin1457, 3
  %scevgep1458 = getelementptr i8, i8* %scevgep1456, i64 %359
  %scevgep1461 = getelementptr i8, i8* %scevgep1460, i64 %359
  %360 = add i64 %322, %indvar1402
  %smin1437 = call i64 @llvm.smin.i64(i64 %360, i64 79)
  %361 = add nsw i64 %smin1437, 1
  %362 = mul nuw nsw i64 %indvar1402, 9600
  %363 = add i64 %328, %362
  %scevgep1422 = getelementptr i8, i8* %call, i64 %363
  %364 = add i64 %330, %362
  %scevgep1423 = getelementptr i8, i8* %call, i64 %364
  %365 = add i64 %333, %indvar1402
  %smin1424 = call i64 @llvm.smin.i64(i64 %365, i64 79)
  %366 = shl i64 %smin1424, 3
  %scevgep1425 = getelementptr i8, i8* %scevgep1423, i64 %366
  %scevgep1428 = getelementptr i8, i8* %scevgep1427, i64 %366
  %367 = add i64 %338, %indvar1402
  %smin1404 = call i64 @llvm.smin.i64(i64 %367, i64 79)
  %368 = add nsw i64 %smin1404, 1
  %smin1081 = call i64 @llvm.smin.i64(i64 %indvars.iv1076, i64 79)
  %369 = add nsw i64 %polly.indvar448, %344
  %polly.loop_guard4611159 = icmp sgt i64 %369, -1
  %370 = add nuw nsw i64 %polly.indvar448, %278
  %.not932 = icmp ult i64 %370, %345
  %polly.access.mul.call1474 = mul nsw i64 %370, 1000
  %371 = add nuw i64 %polly.access.mul.call1474, %279
  br i1 %polly.loop_guard4611159, label %polly.loop_header458.us, label %polly.loop_header444.split

polly.loop_header458.us:                          ; preds = %polly.loop_header444, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header444 ]
  %372 = add nuw nsw i64 %polly.indvar462.us, %339
  %polly.access.mul.call1466.us = mul nuw nsw i64 %372, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %279, %polly.access.mul.call1466.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.indvar462.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1079.not = icmp eq i64 %polly.indvar462.us, %smin1081
  br i1 %exitcond1079.not, label %polly.cond469.loopexit.us, label %polly.loop_header458.us

polly.then471.us:                                 ; preds = %polly.cond469.loopexit.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1730, i64 %371
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305479.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %369
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1305479.us, align 8
  br label %polly.loop_header458.us.1.preheader

polly.cond469.loopexit.us:                        ; preds = %polly.loop_header458.us
  br i1 %.not932, label %polly.loop_header458.us.1.preheader, label %polly.then471.us

polly.loop_header458.us.1.preheader:              ; preds = %polly.then471.us, %polly.cond469.loopexit.us
  br label %polly.loop_header458.us.1

polly.loop_header444.split:                       ; preds = %polly.loop_header444
  br i1 %.not932, label %polly.loop_exit482, label %polly.loop_header451.preheader

polly.loop_header451.preheader:                   ; preds = %polly.loop_header444.split
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1730, i64 %371
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305479 = getelementptr double, double* %Packed_MemRef_call1305, i64 %369
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1305479, align 8
  %polly.access.add.call1475.1 = or i64 %371, 1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.1 = add nsw i64 %369, 1200
  %polly.access.Packed_MemRef_call1305479.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1305479.1, align 8
  %polly.access.add.call1475.2 = or i64 %371, 2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.2 = add nsw i64 %369, 2400
  %polly.access.Packed_MemRef_call1305479.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1305479.2, align 8
  %polly.access.add.call1475.3 = or i64 %371, 3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.3 = add nsw i64 %369, 3600
  %polly.access.Packed_MemRef_call1305479.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1305479.3, align 8
  br label %polly.loop_exit482

polly.loop_exit482:                               ; preds = %polly.loop_header487.us.3, %middle.block1398, %polly.loop_header444.split, %polly.loop_header451.preheader, %polly.loop_header480.preheader
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %polly.loop_cond450 = icmp ult i64 %polly.indvar448, 49
  %indvars.iv.next1077 = add i64 %indvars.iv1076, 1
  %indvar.next1403 = add i64 %indvar1402, 1
  br i1 %polly.loop_cond450, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_header480.preheader:                   ; preds = %polly.cond469.loopexit.us.3, %polly.then471.us.3
  %373 = mul i64 %370, 9600
  br i1 %polly.loop_guard4611159, label %polly.loop_header480.us.preheader, label %polly.loop_exit482

polly.loop_header480.us.preheader:                ; preds = %polly.loop_header480.preheader
  %polly.access.add.Packed_MemRef_call2307499.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us, %370
  %polly.access.Packed_MemRef_call2307500.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2307500.us, align 8
  %polly.access.Packed_MemRef_call1305508.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %369
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call1305508.us, align 8
  %min.iters.check1503 = icmp ult i64 %347, 4
  br i1 %min.iters.check1503, label %polly.loop_header487.us.preheader, label %vector.memcheck1486

vector.memcheck1486:                              ; preds = %polly.loop_header480.us.preheader
  %bound01494 = icmp ult i8* %scevgep1488, %scevgep1493
  %bound11495 = icmp ult i8* %malloccall304, %scevgep1491
  %found.conflict1496 = and i1 %bound01494, %bound11495
  br i1 %found.conflict1496, label %polly.loop_header487.us.preheader, label %vector.ph1504

vector.ph1504:                                    ; preds = %vector.memcheck1486
  %n.vec1506 = and i64 %347, -4
  %broadcast.splatinsert1512 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1513 = shufflevector <4 x double> %broadcast.splatinsert1512, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1515 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1516 = shufflevector <4 x double> %broadcast.splatinsert1515, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1500

vector.body1500:                                  ; preds = %vector.body1500, %vector.ph1504
  %index1507 = phi i64 [ 0, %vector.ph1504 ], [ %index.next1508, %vector.body1500 ]
  %374 = add nuw nsw i64 %index1507, %339
  %375 = getelementptr double, double* %Packed_MemRef_call1305, i64 %index1507
  %376 = bitcast double* %375 to <4 x double>*
  %wide.load1511 = load <4 x double>, <4 x double>* %376, align 8, !alias.scope !103
  %377 = fmul fast <4 x double> %broadcast.splat1513, %wide.load1511
  %378 = add nuw nsw i64 %374, %polly.access.mul.Packed_MemRef_call2307498.us
  %379 = getelementptr double, double* %Packed_MemRef_call2307, i64 %378
  %380 = bitcast double* %379 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %380, align 8
  %381 = fmul fast <4 x double> %broadcast.splat1516, %wide.load1514
  %382 = shl i64 %374, 3
  %383 = add i64 %382, %373
  %384 = getelementptr i8, i8* %call, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  %wide.load1517 = load <4 x double>, <4 x double>* %385, align 8, !alias.scope !106, !noalias !108
  %386 = fadd fast <4 x double> %381, %377
  %387 = fmul fast <4 x double> %386, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %388 = fadd fast <4 x double> %387, %wide.load1517
  %389 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %388, <4 x double>* %389, align 8, !alias.scope !106, !noalias !108
  %index.next1508 = add i64 %index1507, 4
  %390 = icmp eq i64 %index.next1508, %n.vec1506
  br i1 %390, label %middle.block1498, label %vector.body1500, !llvm.loop !109

middle.block1498:                                 ; preds = %vector.body1500
  %cmp.n1510 = icmp eq i64 %347, %n.vec1506
  br i1 %cmp.n1510, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us.preheader

polly.loop_header487.us.preheader:                ; preds = %vector.memcheck1486, %polly.loop_header480.us.preheader, %middle.block1498
  %polly.indvar491.us.ph = phi i64 [ 0, %vector.memcheck1486 ], [ 0, %polly.loop_header480.us.preheader ], [ %n.vec1506, %middle.block1498 ]
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header487.us.preheader, %polly.loop_header487.us
  %polly.indvar491.us = phi i64 [ %polly.indvar_next492.us, %polly.loop_header487.us ], [ %polly.indvar491.us.ph, %polly.loop_header487.us.preheader ]
  %391 = add nuw nsw i64 %polly.indvar491.us, %339
  %polly.access.Packed_MemRef_call1305496.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.indvar491.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call1305496.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %polly.access.add.Packed_MemRef_call2307503.us = add nuw nsw i64 %391, %polly.access.mul.Packed_MemRef_call2307498.us
  %polly.access.Packed_MemRef_call2307504.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call2307504.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %392 = shl i64 %391, 3
  %393 = add i64 %392, %373
  %scevgep510.us = getelementptr i8, i8* %call, i64 %393
  %scevgep510511.us = bitcast i8* %scevgep510.us to double*
  %_p_scalar_512.us = load double, double* %scevgep510511.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_512.us
  store double %p_add42.i79.us, double* %scevgep510511.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %exitcond1082.not = icmp eq i64 %polly.indvar491.us, %smin1081
  br i1 %exitcond1082.not, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us, !llvm.loop !110

polly.loop_exit489.loopexit.us:                   ; preds = %polly.loop_header487.us, %middle.block1498
  %polly.access.add.Packed_MemRef_call2307499.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.1, %370
  %polly.access.Packed_MemRef_call2307500.us.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.1
  %_p_scalar_501.us.1 = load double, double* %polly.access.Packed_MemRef_call2307500.us.1, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.1 = add nsw i64 %369, 1200
  %polly.access.Packed_MemRef_call1305508.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.1
  %_p_scalar_509.us.1 = load double, double* %polly.access.Packed_MemRef_call1305508.us.1, align 8
  %min.iters.check1471 = icmp ult i64 %354, 4
  br i1 %min.iters.check1471, label %polly.loop_header487.us.1.preheader, label %vector.memcheck1453

vector.memcheck1453:                              ; preds = %polly.loop_exit489.loopexit.us
  %bound01462 = icmp ult i8* %scevgep1455, %scevgep1461
  %bound11463 = icmp ult i8* %scevgep1459, %scevgep1458
  %found.conflict1464 = and i1 %bound01462, %bound11463
  br i1 %found.conflict1464, label %polly.loop_header487.us.1.preheader, label %vector.ph1472

vector.ph1472:                                    ; preds = %vector.memcheck1453
  %n.vec1474 = and i64 %354, -4
  %broadcast.splatinsert1480 = insertelement <4 x double> poison, double %_p_scalar_501.us.1, i32 0
  %broadcast.splat1481 = shufflevector <4 x double> %broadcast.splatinsert1480, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1483 = insertelement <4 x double> poison, double %_p_scalar_509.us.1, i32 0
  %broadcast.splat1484 = shufflevector <4 x double> %broadcast.splatinsert1483, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1468

vector.body1468:                                  ; preds = %vector.body1468, %vector.ph1472
  %index1475 = phi i64 [ 0, %vector.ph1472 ], [ %index.next1476, %vector.body1468 ]
  %394 = add nuw nsw i64 %index1475, %339
  %395 = add nuw nsw i64 %index1475, 1200
  %396 = getelementptr double, double* %Packed_MemRef_call1305, i64 %395
  %397 = bitcast double* %396 to <4 x double>*
  %wide.load1479 = load <4 x double>, <4 x double>* %397, align 8, !alias.scope !111
  %398 = fmul fast <4 x double> %broadcast.splat1481, %wide.load1479
  %399 = add nuw nsw i64 %394, %polly.access.mul.Packed_MemRef_call2307498.us.1
  %400 = getelementptr double, double* %Packed_MemRef_call2307, i64 %399
  %401 = bitcast double* %400 to <4 x double>*
  %wide.load1482 = load <4 x double>, <4 x double>* %401, align 8
  %402 = fmul fast <4 x double> %broadcast.splat1484, %wide.load1482
  %403 = shl i64 %394, 3
  %404 = add i64 %403, %373
  %405 = getelementptr i8, i8* %call, i64 %404
  %406 = bitcast i8* %405 to <4 x double>*
  %wide.load1485 = load <4 x double>, <4 x double>* %406, align 8, !alias.scope !114, !noalias !116
  %407 = fadd fast <4 x double> %402, %398
  %408 = fmul fast <4 x double> %407, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %409 = fadd fast <4 x double> %408, %wide.load1485
  %410 = bitcast i8* %405 to <4 x double>*
  store <4 x double> %409, <4 x double>* %410, align 8, !alias.scope !114, !noalias !116
  %index.next1476 = add i64 %index1475, 4
  %411 = icmp eq i64 %index.next1476, %n.vec1474
  br i1 %411, label %middle.block1466, label %vector.body1468, !llvm.loop !117

middle.block1466:                                 ; preds = %vector.body1468
  %cmp.n1478 = icmp eq i64 %354, %n.vec1474
  br i1 %cmp.n1478, label %polly.loop_exit489.loopexit.us.1, label %polly.loop_header487.us.1.preheader

polly.loop_header487.us.1.preheader:              ; preds = %vector.memcheck1453, %polly.loop_exit489.loopexit.us, %middle.block1466
  %polly.indvar491.us.1.ph = phi i64 [ 0, %vector.memcheck1453 ], [ 0, %polly.loop_exit489.loopexit.us ], [ %n.vec1474, %middle.block1466 ]
  br label %polly.loop_header487.us.1

polly.start515:                                   ; preds = %init_array.exit
  %malloccall517 = tail call dereferenceable_or_null(38400) i8* @malloc(i64 38400) #6
  %malloccall519 = tail call dereferenceable_or_null(9600000) i8* @malloc(i64 9600000) #6
  br label %polly.loop_header603

polly.exiting516:                                 ; preds = %polly.loop_exit643
  tail call void @free(i8* %malloccall517)
  tail call void @free(i8* %malloccall519)
  br label %kernel_syr2k.exit

polly.loop_header603:                             ; preds = %polly.loop_exit611, %polly.start515
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit611 ], [ 0, %polly.start515 ]
  %polly.indvar606 = phi i64 [ %polly.indvar_next607, %polly.loop_exit611 ], [ 1, %polly.start515 ]
  %412 = add i64 %indvar, 1
  %413 = mul nuw nsw i64 %polly.indvar606, 9600
  %scevgep615 = getelementptr i8, i8* %call, i64 %413
  %min.iters.check1243 = icmp ult i64 %412, 4
  br i1 %min.iters.check1243, label %polly.loop_header609.preheader, label %vector.ph1244

vector.ph1244:                                    ; preds = %polly.loop_header603
  %n.vec1246 = and i64 %412, -4
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1244
  %index1247 = phi i64 [ 0, %vector.ph1244 ], [ %index.next1248, %vector.body1242 ]
  %414 = shl nuw nsw i64 %index1247, 3
  %415 = getelementptr i8, i8* %scevgep615, i64 %414
  %416 = bitcast i8* %415 to <4 x double>*
  %wide.load1251 = load <4 x double>, <4 x double>* %416, align 8, !alias.scope !118, !noalias !120
  %417 = fmul fast <4 x double> %wide.load1251, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %418 = bitcast i8* %415 to <4 x double>*
  store <4 x double> %417, <4 x double>* %418, align 8, !alias.scope !118, !noalias !120
  %index.next1248 = add i64 %index1247, 4
  %419 = icmp eq i64 %index.next1248, %n.vec1246
  br i1 %419, label %middle.block1240, label %vector.body1242, !llvm.loop !125

middle.block1240:                                 ; preds = %vector.body1242
  %cmp.n1250 = icmp eq i64 %412, %n.vec1246
  br i1 %cmp.n1250, label %polly.loop_exit611, label %polly.loop_header609.preheader

polly.loop_header609.preheader:                   ; preds = %polly.loop_header603, %middle.block1240
  %polly.indvar612.ph = phi i64 [ 0, %polly.loop_header603 ], [ %n.vec1246, %middle.block1240 ]
  br label %polly.loop_header609

polly.loop_exit611:                               ; preds = %polly.loop_header609, %middle.block1240
  %polly.indvar_next607 = add nuw nsw i64 %polly.indvar606, 1
  %exitcond1123.not = icmp eq i64 %polly.indvar_next607, 1200
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond1123.not, label %polly.loop_header619.preheader, label %polly.loop_header603

polly.loop_header619.preheader:                   ; preds = %polly.loop_exit611
  %Packed_MemRef_call1518 = bitcast i8* %malloccall517 to double*
  %Packed_MemRef_call2520 = bitcast i8* %malloccall519 to double*
  br label %polly.loop_header619

polly.loop_header609:                             ; preds = %polly.loop_header609.preheader, %polly.loop_header609
  %polly.indvar612 = phi i64 [ %polly.indvar_next613, %polly.loop_header609 ], [ %polly.indvar612.ph, %polly.loop_header609.preheader ]
  %420 = shl nuw nsw i64 %polly.indvar612, 3
  %scevgep616 = getelementptr i8, i8* %scevgep615, i64 %420
  %scevgep616617 = bitcast i8* %scevgep616 to double*
  %_p_scalar_618 = load double, double* %scevgep616617, align 8, !alias.scope !118, !noalias !120
  %p_mul.i = fmul fast double %_p_scalar_618, 1.200000e+00
  store double %p_mul.i, double* %scevgep616617, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next613 = add nuw nsw i64 %polly.indvar612, 1
  %exitcond1122.not = icmp eq i64 %polly.indvar_next613, %polly.indvar606
  br i1 %exitcond1122.not, label %polly.loop_exit611, label %polly.loop_header609, !llvm.loop !126

polly.loop_header619:                             ; preds = %polly.loop_header619.preheader, %polly.loop_exit627
  %polly.indvar622 = phi i64 [ %polly.indvar_next623, %polly.loop_exit627 ], [ 0, %polly.loop_header619.preheader ]
  %polly.access.mul.Packed_MemRef_call2520 = mul nuw nsw i64 %polly.indvar622, 1200
  br label %polly.loop_header625

polly.loop_exit627:                               ; preds = %polly.loop_header625
  %polly.indvar_next623 = add nuw nsw i64 %polly.indvar622, 1
  %exitcond1121.not = icmp eq i64 %polly.indvar_next623, 1000
  br i1 %exitcond1121.not, label %polly.loop_header635.preheader, label %polly.loop_header619

polly.loop_header635.preheader:                   ; preds = %polly.loop_exit627
  %scevgep1280 = getelementptr i8, i8* %malloccall517, i64 19200
  %scevgep1281 = getelementptr i8, i8* %malloccall517, i64 19208
  %scevgep1313 = getelementptr i8, i8* %malloccall517, i64 9600
  %scevgep1314 = getelementptr i8, i8* %malloccall517, i64 9608
  %scevgep1346 = getelementptr i8, i8* %malloccall517, i64 8
  br label %polly.loop_header635

polly.loop_header625:                             ; preds = %polly.loop_header625, %polly.loop_header619
  %polly.indvar628 = phi i64 [ 0, %polly.loop_header619 ], [ %polly.indvar_next629, %polly.loop_header625 ]
  %polly.access.mul.call2632 = mul nuw nsw i64 %polly.indvar628, 1000
  %polly.access.add.call2633 = add nuw nsw i64 %polly.access.mul.call2632, %polly.indvar622
  %polly.access.call2634 = getelementptr double, double* %polly.access.cast.call2740, i64 %polly.access.add.call2633
  %polly.access.call2634.load = load double, double* %polly.access.call2634, align 8, !alias.scope !122, !noalias !127
  %polly.access.add.Packed_MemRef_call2520 = add nuw nsw i64 %polly.indvar628, %polly.access.mul.Packed_MemRef_call2520
  %polly.access.Packed_MemRef_call2520 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520
  store double %polly.access.call2634.load, double* %polly.access.Packed_MemRef_call2520, align 8
  %polly.indvar_next629 = add nuw nsw i64 %polly.indvar628, 1
  %exitcond1120.not = icmp eq i64 %polly.indvar_next629, 1200
  br i1 %exitcond1120.not, label %polly.loop_exit627, label %polly.loop_header625

polly.loop_header635:                             ; preds = %polly.loop_header635.preheader, %polly.loop_exit643
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit643 ], [ 3, %polly.loop_header635.preheader ]
  %indvars.iv1113 = phi i64 [ %indvars.iv.next1114, %polly.loop_exit643 ], [ 1, %polly.loop_header635.preheader ]
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102, %polly.loop_exit643 ], [ 0, %polly.loop_header635.preheader ]
  %indvars.iv1096 = phi i64 [ %indvars.iv.next1097, %polly.loop_exit643 ], [ 0, %polly.loop_header635.preheader ]
  %polly.indvar638 = phi i64 [ %polly.indvar_next639, %polly.loop_exit643 ], [ 0, %polly.loop_header635.preheader ]
  %421 = mul nsw i64 %polly.indvar638, -50
  %422 = mul nuw nsw i64 %polly.indvar638, 50
  %423 = mul nuw nsw i64 %polly.indvar638, 50
  %424 = mul nsw i64 %polly.indvar638, -50
  %425 = mul nsw i64 %polly.indvar638, -50
  %426 = mul nuw nsw i64 %polly.indvar638, 50
  %427 = mul nuw nsw i64 %polly.indvar638, 50
  %428 = mul nsw i64 %polly.indvar638, -50
  %429 = mul nsw i64 %polly.indvar638, -50
  %430 = mul nuw nsw i64 %polly.indvar638, 50
  %431 = mul nuw nsw i64 %polly.indvar638, 50
  %432 = mul nsw i64 %polly.indvar638, -50
  %433 = mul nsw i64 %polly.indvar638, -50
  %434 = mul nuw nsw i64 %polly.indvar638, 50
  %435 = lshr i64 %indvars.iv1115, 3
  %436 = sub nsw i64 %indvars.iv1113, %435
  %437 = mul nuw nsw i64 %polly.indvar638, 3
  %438 = add nuw nsw i64 %437, 3
  %pexp.p_div_q647 = lshr i64 %438, 3
  %polly.loop_guard652.not = icmp ult i64 %polly.indvar638, %pexp.p_div_q647
  %439 = mul nsw i64 %polly.indvar638, -50
  %440 = mul nuw nsw i64 %polly.indvar638, 50
  br label %polly.loop_header641

polly.loop_exit643:                               ; preds = %polly.loop_exit651
  %polly.indvar_next639 = add nuw nsw i64 %polly.indvar638, 1
  %indvars.iv.next1097 = add nsw i64 %indvars.iv1096, -50
  %indvars.iv.next1102 = add nuw nsw i64 %indvars.iv1101, 50
  %indvars.iv.next1114 = add nuw nsw i64 %indvars.iv1113, 1
  %indvars.iv.next1116 = add nuw nsw i64 %indvars.iv1115, 3
  %exitcond1119.not = icmp eq i64 %polly.indvar_next639, 24
  br i1 %exitcond1119.not, label %polly.exiting516, label %polly.loop_header635

polly.loop_header641:                             ; preds = %polly.loop_exit651, %polly.loop_header635
  %polly.indvar644 = phi i64 [ 0, %polly.loop_header635 ], [ %polly.indvar_next645, %polly.loop_exit651 ]
  br i1 %polly.loop_guard652.not, label %polly.loop_exit651, label %polly.loop_header649.preheader

polly.loop_header649.preheader:                   ; preds = %polly.loop_header641
  %441 = shl nsw i64 %polly.indvar644, 2
  %442 = or i64 %441, 1
  %443 = or i64 %441, 2
  %444 = or i64 %441, 3
  %polly.access.mul.Packed_MemRef_call2520711.us = mul nsw i64 %polly.indvar644, 4800
  %445 = or i64 %441, 1
  %polly.access.mul.Packed_MemRef_call2520711.us.1 = mul nuw nsw i64 %445, 1200
  %446 = or i64 %441, 2
  %polly.access.mul.Packed_MemRef_call2520711.us.2 = mul nuw nsw i64 %446, 1200
  %447 = or i64 %441, 3
  %polly.access.mul.Packed_MemRef_call2520711.us.3 = mul nuw nsw i64 %447, 1200
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit659, %polly.loop_header641
  %polly.indvar_next645 = add nuw nsw i64 %polly.indvar644, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next645, 250
  br i1 %exitcond1118.not, label %polly.loop_exit643, label %polly.loop_header641

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit659
  %indvars.iv1103 = phi i64 [ %indvars.iv1101, %polly.loop_header649.preheader ], [ %indvars.iv.next1104, %polly.loop_exit659 ]
  %indvars.iv1098 = phi i64 [ %indvars.iv1096, %polly.loop_header649.preheader ], [ %indvars.iv.next1099, %polly.loop_exit659 ]
  %polly.indvar653 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit659 ]
  %448 = mul i64 %polly.indvar653, 80
  %449 = add i64 %421, %448
  %smax1355 = call i64 @llvm.smax.i64(i64 %449, i64 0)
  %450 = mul i64 %polly.indvar653, -80
  %451 = add i64 %422, %450
  %452 = add i64 %smax1355, %451
  %453 = mul i64 %polly.indvar653, 640
  %454 = mul i64 %polly.indvar653, 80
  %455 = add i64 %424, %454
  %smax1341 = call i64 @llvm.smax.i64(i64 %455, i64 0)
  %456 = add nuw i64 %423, %smax1341
  %457 = mul i64 %456, 9600
  %458 = add i64 %453, %457
  %459 = or i64 %453, 8
  %460 = add i64 %459, %457
  %461 = mul i64 %polly.indvar653, -80
  %462 = add i64 %423, %461
  %463 = add i64 %smax1341, %462
  %464 = mul i64 %polly.indvar653, 80
  %465 = add i64 %425, %464
  %smax1323 = call i64 @llvm.smax.i64(i64 %465, i64 0)
  %466 = mul i64 %polly.indvar653, -80
  %467 = add i64 %426, %466
  %468 = add i64 %smax1323, %467
  %469 = mul i64 %polly.indvar653, 640
  %470 = mul i64 %polly.indvar653, 80
  %471 = add i64 %428, %470
  %smax1308 = call i64 @llvm.smax.i64(i64 %471, i64 0)
  %472 = add nuw i64 %427, %smax1308
  %473 = mul i64 %472, 9600
  %474 = add i64 %469, %473
  %475 = or i64 %469, 8
  %476 = add i64 %475, %473
  %477 = mul i64 %polly.indvar653, -80
  %478 = add i64 %427, %477
  %479 = add i64 %smax1308, %478
  %480 = mul i64 %polly.indvar653, 80
  %481 = add i64 %429, %480
  %smax1290 = call i64 @llvm.smax.i64(i64 %481, i64 0)
  %482 = mul i64 %polly.indvar653, -80
  %483 = add i64 %430, %482
  %484 = add i64 %smax1290, %483
  %485 = mul i64 %polly.indvar653, 640
  %486 = mul i64 %polly.indvar653, 80
  %487 = add i64 %432, %486
  %smax1275 = call i64 @llvm.smax.i64(i64 %487, i64 0)
  %488 = add nuw i64 %431, %smax1275
  %489 = mul i64 %488, 9600
  %490 = add i64 %485, %489
  %491 = or i64 %485, 8
  %492 = add i64 %491, %489
  %493 = mul i64 %polly.indvar653, -80
  %494 = add i64 %431, %493
  %495 = add i64 %smax1275, %494
  %496 = mul i64 %polly.indvar653, 80
  %497 = add i64 %433, %496
  %smax1255 = call i64 @llvm.smax.i64(i64 %497, i64 0)
  %498 = mul i64 %polly.indvar653, -80
  %499 = add i64 %434, %498
  %500 = add i64 %smax1255, %499
  %501 = mul nuw nsw i64 %polly.indvar653, 80
  %502 = add nsw i64 %501, %439
  %503 = icmp sgt i64 %502, 0
  %504 = select i1 %503, i64 %502, i64 0
  %polly.loop_guard660 = icmp slt i64 %504, 50
  br i1 %polly.loop_guard660, label %polly.loop_header657.preheader, label %polly.loop_exit659

polly.loop_header657.preheader:                   ; preds = %polly.loop_header649
  %smax1100 = call i64 @llvm.smax.i64(i64 %indvars.iv1098, i64 0)
  %505 = add i64 %smax1100, %indvars.iv1103
  %506 = sub nsw i64 %440, %501
  %507 = add nuw nsw i64 %501, 80
  br label %polly.loop_header657

polly.loop_exit659:                               ; preds = %polly.loop_exit695, %polly.loop_header649
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, 80
  %indvars.iv.next1104 = add nsw i64 %indvars.iv1103, -80
  %exitcond1117.not = icmp eq i64 %polly.indvar_next654, %436
  br i1 %exitcond1117.not, label %polly.loop_exit651, label %polly.loop_header649

polly.loop_header657:                             ; preds = %polly.loop_header657.preheader, %polly.loop_exit695
  %indvar1256 = phi i64 [ 0, %polly.loop_header657.preheader ], [ %indvar.next1257, %polly.loop_exit695 ]
  %indvars.iv1105 = phi i64 [ %505, %polly.loop_header657.preheader ], [ %indvars.iv.next1106, %polly.loop_exit695 ]
  %polly.indvar661 = phi i64 [ %504, %polly.loop_header657.preheader ], [ %polly.indvar_next662, %polly.loop_exit695 ]
  %508 = add i64 %452, %indvar1256
  %smin1356 = call i64 @llvm.smin.i64(i64 %508, i64 79)
  %509 = add nsw i64 %smin1356, 1
  %510 = mul nuw nsw i64 %indvar1256, 9600
  %511 = add i64 %458, %510
  %scevgep1342 = getelementptr i8, i8* %call, i64 %511
  %512 = add i64 %460, %510
  %scevgep1343 = getelementptr i8, i8* %call, i64 %512
  %513 = add i64 %463, %indvar1256
  %smin1344 = call i64 @llvm.smin.i64(i64 %513, i64 79)
  %514 = shl i64 %smin1344, 3
  %scevgep1345 = getelementptr i8, i8* %scevgep1343, i64 %514
  %scevgep1347 = getelementptr i8, i8* %scevgep1346, i64 %514
  %515 = add i64 %468, %indvar1256
  %smin1324 = call i64 @llvm.smin.i64(i64 %515, i64 79)
  %516 = add nsw i64 %smin1324, 1
  %517 = mul nuw nsw i64 %indvar1256, 9600
  %518 = add i64 %474, %517
  %scevgep1309 = getelementptr i8, i8* %call, i64 %518
  %519 = add i64 %476, %517
  %scevgep1310 = getelementptr i8, i8* %call, i64 %519
  %520 = add i64 %479, %indvar1256
  %smin1311 = call i64 @llvm.smin.i64(i64 %520, i64 79)
  %521 = shl i64 %smin1311, 3
  %scevgep1312 = getelementptr i8, i8* %scevgep1310, i64 %521
  %scevgep1315 = getelementptr i8, i8* %scevgep1314, i64 %521
  %522 = add i64 %484, %indvar1256
  %smin1291 = call i64 @llvm.smin.i64(i64 %522, i64 79)
  %523 = add nsw i64 %smin1291, 1
  %524 = mul nuw nsw i64 %indvar1256, 9600
  %525 = add i64 %490, %524
  %scevgep1276 = getelementptr i8, i8* %call, i64 %525
  %526 = add i64 %492, %524
  %scevgep1277 = getelementptr i8, i8* %call, i64 %526
  %527 = add i64 %495, %indvar1256
  %smin1278 = call i64 @llvm.smin.i64(i64 %527, i64 79)
  %528 = shl i64 %smin1278, 3
  %scevgep1279 = getelementptr i8, i8* %scevgep1277, i64 %528
  %scevgep1282 = getelementptr i8, i8* %scevgep1281, i64 %528
  %529 = add i64 %500, %indvar1256
  %smin1258 = call i64 @llvm.smin.i64(i64 %529, i64 79)
  %530 = add nsw i64 %smin1258, 1
  %smin1110 = call i64 @llvm.smin.i64(i64 %indvars.iv1105, i64 79)
  %531 = add nsw i64 %polly.indvar661, %506
  %polly.loop_guard6741160 = icmp sgt i64 %531, -1
  %532 = add nuw nsw i64 %polly.indvar661, %440
  %.not933 = icmp ult i64 %532, %507
  %polly.access.mul.call1687 = mul nsw i64 %532, 1000
  %533 = add nuw i64 %polly.access.mul.call1687, %441
  br i1 %polly.loop_guard6741160, label %polly.loop_header671.us, label %polly.loop_header657.split

polly.loop_header671.us:                          ; preds = %polly.loop_header657, %polly.loop_header671.us
  %polly.indvar675.us = phi i64 [ %polly.indvar_next676.us, %polly.loop_header671.us ], [ 0, %polly.loop_header657 ]
  %534 = add nuw nsw i64 %polly.indvar675.us, %501
  %polly.access.mul.call1679.us = mul nuw nsw i64 %534, 1000
  %polly.access.add.call1680.us = add nuw nsw i64 %441, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.indvar675.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1518.us, align 8
  %polly.indvar_next676.us = add nuw nsw i64 %polly.indvar675.us, 1
  %exitcond1108.not = icmp eq i64 %polly.indvar675.us, %smin1110
  br i1 %exitcond1108.not, label %polly.cond682.loopexit.us, label %polly.loop_header671.us

polly.then684.us:                                 ; preds = %polly.cond682.loopexit.us
  %polly.access.call1689.us = getelementptr double, double* %polly.access.cast.call1730, i64 %533
  %polly.access.call1689.load.us = load double, double* %polly.access.call1689.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518692.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %531
  store double %polly.access.call1689.load.us, double* %polly.access.Packed_MemRef_call1518692.us, align 8
  br label %polly.loop_header671.us.1.preheader

polly.cond682.loopexit.us:                        ; preds = %polly.loop_header671.us
  br i1 %.not933, label %polly.loop_header671.us.1.preheader, label %polly.then684.us

polly.loop_header671.us.1.preheader:              ; preds = %polly.then684.us, %polly.cond682.loopexit.us
  br label %polly.loop_header671.us.1

polly.loop_header657.split:                       ; preds = %polly.loop_header657
  br i1 %.not933, label %polly.loop_exit695, label %polly.loop_header664.preheader

polly.loop_header664.preheader:                   ; preds = %polly.loop_header657.split
  %polly.access.call1689 = getelementptr double, double* %polly.access.cast.call1730, i64 %533
  %polly.access.call1689.load = load double, double* %polly.access.call1689, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518692 = getelementptr double, double* %Packed_MemRef_call1518, i64 %531
  store double %polly.access.call1689.load, double* %polly.access.Packed_MemRef_call1518692, align 8
  %polly.access.add.call1688.1 = or i64 %533, 1
  %polly.access.call1689.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.1
  %polly.access.call1689.load.1 = load double, double* %polly.access.call1689.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.1 = add nsw i64 %531, 1200
  %polly.access.Packed_MemRef_call1518692.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.1
  store double %polly.access.call1689.load.1, double* %polly.access.Packed_MemRef_call1518692.1, align 8
  %polly.access.add.call1688.2 = or i64 %533, 2
  %polly.access.call1689.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.2
  %polly.access.call1689.load.2 = load double, double* %polly.access.call1689.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.2 = add nsw i64 %531, 2400
  %polly.access.Packed_MemRef_call1518692.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.2
  store double %polly.access.call1689.load.2, double* %polly.access.Packed_MemRef_call1518692.2, align 8
  %polly.access.add.call1688.3 = or i64 %533, 3
  %polly.access.call1689.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.3
  %polly.access.call1689.load.3 = load double, double* %polly.access.call1689.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.3 = add nsw i64 %531, 3600
  %polly.access.Packed_MemRef_call1518692.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.3
  store double %polly.access.call1689.load.3, double* %polly.access.Packed_MemRef_call1518692.3, align 8
  br label %polly.loop_exit695

polly.loop_exit695:                               ; preds = %polly.loop_header700.us.3, %middle.block1252, %polly.loop_header657.split, %polly.loop_header664.preheader, %polly.loop_header693.preheader
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %polly.loop_cond663 = icmp ult i64 %polly.indvar661, 49
  %indvars.iv.next1106 = add i64 %indvars.iv1105, 1
  %indvar.next1257 = add i64 %indvar1256, 1
  br i1 %polly.loop_cond663, label %polly.loop_header657, label %polly.loop_exit659

polly.loop_header693.preheader:                   ; preds = %polly.cond682.loopexit.us.3, %polly.then684.us.3
  %535 = mul i64 %532, 9600
  br i1 %polly.loop_guard6741160, label %polly.loop_header693.us.preheader, label %polly.loop_exit695

polly.loop_header693.us.preheader:                ; preds = %polly.loop_header693.preheader
  %polly.access.add.Packed_MemRef_call2520712.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us, %532
  %polly.access.Packed_MemRef_call2520713.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call2520713.us, align 8
  %polly.access.Packed_MemRef_call1518721.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %531
  %_p_scalar_722.us = load double, double* %polly.access.Packed_MemRef_call1518721.us, align 8
  %min.iters.check1357 = icmp ult i64 %509, 4
  br i1 %min.iters.check1357, label %polly.loop_header700.us.preheader, label %vector.memcheck1340

vector.memcheck1340:                              ; preds = %polly.loop_header693.us.preheader
  %bound01348 = icmp ult i8* %scevgep1342, %scevgep1347
  %bound11349 = icmp ult i8* %malloccall517, %scevgep1345
  %found.conflict1350 = and i1 %bound01348, %bound11349
  br i1 %found.conflict1350, label %polly.loop_header700.us.preheader, label %vector.ph1358

vector.ph1358:                                    ; preds = %vector.memcheck1340
  %n.vec1360 = and i64 %509, -4
  %broadcast.splatinsert1366 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1367 = shufflevector <4 x double> %broadcast.splatinsert1366, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1369 = insertelement <4 x double> poison, double %_p_scalar_722.us, i32 0
  %broadcast.splat1370 = shufflevector <4 x double> %broadcast.splatinsert1369, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %vector.ph1358
  %index1361 = phi i64 [ 0, %vector.ph1358 ], [ %index.next1362, %vector.body1354 ]
  %536 = add nuw nsw i64 %index1361, %501
  %537 = getelementptr double, double* %Packed_MemRef_call1518, i64 %index1361
  %538 = bitcast double* %537 to <4 x double>*
  %wide.load1365 = load <4 x double>, <4 x double>* %538, align 8, !alias.scope !129
  %539 = fmul fast <4 x double> %broadcast.splat1367, %wide.load1365
  %540 = add nuw nsw i64 %536, %polly.access.mul.Packed_MemRef_call2520711.us
  %541 = getelementptr double, double* %Packed_MemRef_call2520, i64 %540
  %542 = bitcast double* %541 to <4 x double>*
  %wide.load1368 = load <4 x double>, <4 x double>* %542, align 8
  %543 = fmul fast <4 x double> %broadcast.splat1370, %wide.load1368
  %544 = shl i64 %536, 3
  %545 = add i64 %544, %535
  %546 = getelementptr i8, i8* %call, i64 %545
  %547 = bitcast i8* %546 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %547, align 8, !alias.scope !132, !noalias !134
  %548 = fadd fast <4 x double> %543, %539
  %549 = fmul fast <4 x double> %548, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %550 = fadd fast <4 x double> %549, %wide.load1371
  %551 = bitcast i8* %546 to <4 x double>*
  store <4 x double> %550, <4 x double>* %551, align 8, !alias.scope !132, !noalias !134
  %index.next1362 = add i64 %index1361, 4
  %552 = icmp eq i64 %index.next1362, %n.vec1360
  br i1 %552, label %middle.block1352, label %vector.body1354, !llvm.loop !135

middle.block1352:                                 ; preds = %vector.body1354
  %cmp.n1364 = icmp eq i64 %509, %n.vec1360
  br i1 %cmp.n1364, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us.preheader

polly.loop_header700.us.preheader:                ; preds = %vector.memcheck1340, %polly.loop_header693.us.preheader, %middle.block1352
  %polly.indvar704.us.ph = phi i64 [ 0, %vector.memcheck1340 ], [ 0, %polly.loop_header693.us.preheader ], [ %n.vec1360, %middle.block1352 ]
  br label %polly.loop_header700.us

polly.loop_header700.us:                          ; preds = %polly.loop_header700.us.preheader, %polly.loop_header700.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_header700.us ], [ %polly.indvar704.us.ph, %polly.loop_header700.us.preheader ]
  %553 = add nuw nsw i64 %polly.indvar704.us, %501
  %polly.access.Packed_MemRef_call1518709.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.indvar704.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1518709.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %polly.access.add.Packed_MemRef_call2520716.us = add nuw nsw i64 %553, %polly.access.mul.Packed_MemRef_call2520711.us
  %polly.access.Packed_MemRef_call2520717.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us
  %_p_scalar_718.us = load double, double* %polly.access.Packed_MemRef_call2520717.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_722.us, %_p_scalar_718.us
  %554 = shl i64 %553, 3
  %555 = add i64 %554, %535
  %scevgep723.us = getelementptr i8, i8* %call, i64 %555
  %scevgep723724.us = bitcast i8* %scevgep723.us to double*
  %_p_scalar_725.us = load double, double* %scevgep723724.us, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_725.us
  store double %p_add42.i.us, double* %scevgep723724.us, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us = add nuw nsw i64 %polly.indvar704.us, 1
  %exitcond1111.not = icmp eq i64 %polly.indvar704.us, %smin1110
  br i1 %exitcond1111.not, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us, !llvm.loop !136

polly.loop_exit702.loopexit.us:                   ; preds = %polly.loop_header700.us, %middle.block1352
  %polly.access.add.Packed_MemRef_call2520712.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.1, %532
  %polly.access.Packed_MemRef_call2520713.us.1 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.1
  %_p_scalar_714.us.1 = load double, double* %polly.access.Packed_MemRef_call2520713.us.1, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.1 = add nsw i64 %531, 1200
  %polly.access.Packed_MemRef_call1518721.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.1
  %_p_scalar_722.us.1 = load double, double* %polly.access.Packed_MemRef_call1518721.us.1, align 8
  %min.iters.check1325 = icmp ult i64 %516, 4
  br i1 %min.iters.check1325, label %polly.loop_header700.us.1.preheader, label %vector.memcheck1307

vector.memcheck1307:                              ; preds = %polly.loop_exit702.loopexit.us
  %bound01316 = icmp ult i8* %scevgep1309, %scevgep1315
  %bound11317 = icmp ult i8* %scevgep1313, %scevgep1312
  %found.conflict1318 = and i1 %bound01316, %bound11317
  br i1 %found.conflict1318, label %polly.loop_header700.us.1.preheader, label %vector.ph1326

vector.ph1326:                                    ; preds = %vector.memcheck1307
  %n.vec1328 = and i64 %516, -4
  %broadcast.splatinsert1334 = insertelement <4 x double> poison, double %_p_scalar_714.us.1, i32 0
  %broadcast.splat1335 = shufflevector <4 x double> %broadcast.splatinsert1334, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_722.us.1, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1322

vector.body1322:                                  ; preds = %vector.body1322, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1322 ]
  %556 = add nuw nsw i64 %index1329, %501
  %557 = add nuw nsw i64 %index1329, 1200
  %558 = getelementptr double, double* %Packed_MemRef_call1518, i64 %557
  %559 = bitcast double* %558 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %559, align 8, !alias.scope !137
  %560 = fmul fast <4 x double> %broadcast.splat1335, %wide.load1333
  %561 = add nuw nsw i64 %556, %polly.access.mul.Packed_MemRef_call2520711.us.1
  %562 = getelementptr double, double* %Packed_MemRef_call2520, i64 %561
  %563 = bitcast double* %562 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %563, align 8
  %564 = fmul fast <4 x double> %broadcast.splat1338, %wide.load1336
  %565 = shl i64 %556, 3
  %566 = add i64 %565, %535
  %567 = getelementptr i8, i8* %call, i64 %566
  %568 = bitcast i8* %567 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %568, align 8, !alias.scope !140, !noalias !142
  %569 = fadd fast <4 x double> %564, %560
  %570 = fmul fast <4 x double> %569, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %571 = fadd fast <4 x double> %570, %wide.load1339
  %572 = bitcast i8* %567 to <4 x double>*
  store <4 x double> %571, <4 x double>* %572, align 8, !alias.scope !140, !noalias !142
  %index.next1330 = add i64 %index1329, 4
  %573 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %573, label %middle.block1320, label %vector.body1322, !llvm.loop !143

middle.block1320:                                 ; preds = %vector.body1322
  %cmp.n1332 = icmp eq i64 %516, %n.vec1328
  br i1 %cmp.n1332, label %polly.loop_exit702.loopexit.us.1, label %polly.loop_header700.us.1.preheader

polly.loop_header700.us.1.preheader:              ; preds = %vector.memcheck1307, %polly.loop_exit702.loopexit.us, %middle.block1320
  %polly.indvar704.us.1.ph = phi i64 [ 0, %vector.memcheck1307 ], [ 0, %polly.loop_exit702.loopexit.us ], [ %n.vec1328, %middle.block1320 ]
  br label %polly.loop_header700.us.1

polly.loop_header852:                             ; preds = %entry, %polly.loop_exit860
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %polly.loop_exit860 ], [ 0, %entry ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %entry ]
  %smin1150 = call i64 @llvm.smin.i64(i64 %indvars.iv1148, i64 -1168)
  %574 = shl nsw i64 %polly.indvar855, 5
  %575 = add nsw i64 %smin1150, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1149 = add nsw i64 %indvars.iv1148, -32
  %exitcond1153.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1153.not, label %polly.loop_header879, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %576 = mul nsw i64 %polly.indvar861, -32
  %smin = call i64 @llvm.smin.i64(i64 %576, i64 -1168)
  %577 = add nsw i64 %smin, 1200
  %smin1146 = call i64 @llvm.smin.i64(i64 %indvars.iv1144, i64 -1168)
  %578 = shl nsw i64 %polly.indvar861, 5
  %579 = add nsw i64 %smin1146, 1199
  br label %polly.loop_header864

polly.loop_exit866:                               ; preds = %polly.loop_exit872
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %indvars.iv.next1145 = add nsw i64 %indvars.iv1144, -32
  %exitcond1152.not = icmp eq i64 %polly.indvar_next862, 38
  br i1 %exitcond1152.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_exit872, %polly.loop_header858
  %polly.indvar867 = phi i64 [ 0, %polly.loop_header858 ], [ %polly.indvar_next868, %polly.loop_exit872 ]
  %580 = add nuw nsw i64 %polly.indvar867, %574
  %581 = trunc i64 %580 to i32
  %582 = mul nuw nsw i64 %580, 9600
  %min.iters.check = icmp eq i64 %577, 0
  br i1 %min.iters.check, label %polly.loop_header870, label %vector.ph1182

vector.ph1182:                                    ; preds = %polly.loop_header864
  %broadcast.splatinsert1189 = insertelement <4 x i64> poison, i64 %578, i32 0
  %broadcast.splat1190 = shufflevector <4 x i64> %broadcast.splatinsert1189, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1191 = insertelement <4 x i32> poison, i32 %581, i32 0
  %broadcast.splat1192 = shufflevector <4 x i32> %broadcast.splatinsert1191, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %vector.ph1182
  %index1183 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1184, %vector.body1181 ]
  %vec.ind1187 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1182 ], [ %vec.ind.next1188, %vector.body1181 ]
  %583 = add nuw nsw <4 x i64> %vec.ind1187, %broadcast.splat1190
  %584 = trunc <4 x i64> %583 to <4 x i32>
  %585 = mul <4 x i32> %broadcast.splat1192, %584
  %586 = add <4 x i32> %585, <i32 3, i32 3, i32 3, i32 3>
  %587 = urem <4 x i32> %586, <i32 1200, i32 1200, i32 1200, i32 1200>
  %588 = sitofp <4 x i32> %587 to <4 x double>
  %589 = fmul fast <4 x double> %588, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %590 = extractelement <4 x i64> %583, i32 0
  %591 = shl i64 %590, 3
  %592 = add nuw nsw i64 %591, %582
  %593 = getelementptr i8, i8* %call, i64 %592
  %594 = bitcast i8* %593 to <4 x double>*
  store <4 x double> %589, <4 x double>* %594, align 8, !alias.scope !144, !noalias !146
  %index.next1184 = add i64 %index1183, 4
  %vec.ind.next1188 = add <4 x i64> %vec.ind1187, <i64 4, i64 4, i64 4, i64 4>
  %595 = icmp eq i64 %index.next1184, %577
  br i1 %595, label %polly.loop_exit872, label %vector.body1181, !llvm.loop !149

polly.loop_exit872:                               ; preds = %vector.body1181, %polly.loop_header870
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar867, %575
  br i1 %exitcond1151.not, label %polly.loop_exit866, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_header864, %polly.loop_header870
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_header870 ], [ 0, %polly.loop_header864 ]
  %596 = add nuw nsw i64 %polly.indvar873, %578
  %597 = trunc i64 %596 to i32
  %598 = mul i32 %597, %581
  %599 = add i32 %598, 3
  %600 = urem i32 %599, 1200
  %p_conv31.i = sitofp i32 %600 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %601 = shl i64 %596, 3
  %602 = add nuw nsw i64 %601, %582
  %scevgep876 = getelementptr i8, i8* %call, i64 %602
  %scevgep876877 = bitcast i8* %scevgep876 to double*
  store double %p_div33.i, double* %scevgep876877, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar873, %579
  br i1 %exitcond1147.not, label %polly.loop_exit872, label %polly.loop_header870, !llvm.loop !150

polly.loop_header879:                             ; preds = %polly.loop_exit860, %polly.loop_exit887
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %smin1140 = call i64 @llvm.smin.i64(i64 %indvars.iv1138, i64 -1168)
  %603 = shl nsw i64 %polly.indvar882, 5
  %604 = add nsw i64 %smin1140, 1199
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1139 = add nsw i64 %indvars.iv1138, -32
  %exitcond1143.not = icmp eq i64 %polly.indvar_next883, 38
  br i1 %exitcond1143.not, label %polly.loop_header905, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %605 = mul nsw i64 %polly.indvar888, -32
  %smin1196 = call i64 @llvm.smin.i64(i64 %605, i64 -968)
  %606 = add nsw i64 %smin1196, 1000
  %smin1136 = call i64 @llvm.smin.i64(i64 %indvars.iv1134, i64 -968)
  %607 = shl nsw i64 %polly.indvar888, 5
  %608 = add nsw i64 %smin1136, 999
  br label %polly.loop_header891

polly.loop_exit893:                               ; preds = %polly.loop_exit899
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %indvars.iv.next1135 = add nsw i64 %indvars.iv1134, -32
  %exitcond1142.not = icmp eq i64 %polly.indvar_next889, 32
  br i1 %exitcond1142.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_exit899, %polly.loop_header885
  %polly.indvar894 = phi i64 [ 0, %polly.loop_header885 ], [ %polly.indvar_next895, %polly.loop_exit899 ]
  %609 = add nuw nsw i64 %polly.indvar894, %603
  %610 = trunc i64 %609 to i32
  %611 = mul nuw nsw i64 %609, 8000
  %min.iters.check1197 = icmp eq i64 %606, 0
  br i1 %min.iters.check1197, label %polly.loop_header897, label %vector.ph1198

vector.ph1198:                                    ; preds = %polly.loop_header891
  %broadcast.splatinsert1207 = insertelement <4 x i64> poison, i64 %607, i32 0
  %broadcast.splat1208 = shufflevector <4 x i64> %broadcast.splatinsert1207, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1209 = insertelement <4 x i32> poison, i32 %610, i32 0
  %broadcast.splat1210 = shufflevector <4 x i32> %broadcast.splatinsert1209, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %vector.ph1198
  %index1201 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1202, %vector.body1195 ]
  %vec.ind1205 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1198 ], [ %vec.ind.next1206, %vector.body1195 ]
  %612 = add nuw nsw <4 x i64> %vec.ind1205, %broadcast.splat1208
  %613 = trunc <4 x i64> %612 to <4 x i32>
  %614 = mul <4 x i32> %broadcast.splat1210, %613
  %615 = add <4 x i32> %614, <i32 2, i32 2, i32 2, i32 2>
  %616 = urem <4 x i32> %615, <i32 1000, i32 1000, i32 1000, i32 1000>
  %617 = sitofp <4 x i32> %616 to <4 x double>
  %618 = fmul fast <4 x double> %617, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %619 = extractelement <4 x i64> %612, i32 0
  %620 = shl i64 %619, 3
  %621 = add nuw nsw i64 %620, %611
  %622 = getelementptr i8, i8* %call2, i64 %621
  %623 = bitcast i8* %622 to <4 x double>*
  store <4 x double> %618, <4 x double>* %623, align 8, !alias.scope !148, !noalias !151
  %index.next1202 = add i64 %index1201, 4
  %vec.ind.next1206 = add <4 x i64> %vec.ind1205, <i64 4, i64 4, i64 4, i64 4>
  %624 = icmp eq i64 %index.next1202, %606
  br i1 %624, label %polly.loop_exit899, label %vector.body1195, !llvm.loop !152

polly.loop_exit899:                               ; preds = %vector.body1195, %polly.loop_header897
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar894, %604
  br i1 %exitcond1141.not, label %polly.loop_exit893, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_header891, %polly.loop_header897
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_header897 ], [ 0, %polly.loop_header891 ]
  %625 = add nuw nsw i64 %polly.indvar900, %607
  %626 = trunc i64 %625 to i32
  %627 = mul i32 %626, %610
  %628 = add i32 %627, 2
  %629 = urem i32 %628, 1000
  %p_conv10.i = sitofp i32 %629 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %630 = shl i64 %625, 3
  %631 = add nuw nsw i64 %630, %611
  %scevgep903 = getelementptr i8, i8* %call2, i64 %631
  %scevgep903904 = bitcast i8* %scevgep903 to double*
  store double %p_div12.i, double* %scevgep903904, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar900, %608
  br i1 %exitcond1137.not, label %polly.loop_exit899, label %polly.loop_header897, !llvm.loop !153

polly.loop_header905:                             ; preds = %polly.loop_exit887, %polly.loop_exit913
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %632 = shl nsw i64 %polly.indvar908, 5
  %633 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next909, 38
  br i1 %exitcond1133.not, label %init_array.exit, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %polly.indvar914 = phi i64 [ %polly.indvar_next915, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %634 = mul nsw i64 %polly.indvar914, -32
  %smin1214 = call i64 @llvm.smin.i64(i64 %634, i64 -968)
  %635 = add nsw i64 %smin1214, 1000
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 -968)
  %636 = shl nsw i64 %polly.indvar914, 5
  %637 = add nsw i64 %smin1126, 999
  br label %polly.loop_header917

polly.loop_exit919:                               ; preds = %polly.loop_exit925
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -32
  %exitcond1132.not = icmp eq i64 %polly.indvar_next915, 32
  br i1 %exitcond1132.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_exit925, %polly.loop_header911
  %polly.indvar920 = phi i64 [ 0, %polly.loop_header911 ], [ %polly.indvar_next921, %polly.loop_exit925 ]
  %638 = add nuw nsw i64 %polly.indvar920, %632
  %639 = trunc i64 %638 to i32
  %640 = mul nuw nsw i64 %638, 8000
  %min.iters.check1215 = icmp eq i64 %635, 0
  br i1 %min.iters.check1215, label %polly.loop_header923, label %vector.ph1216

vector.ph1216:                                    ; preds = %polly.loop_header917
  %broadcast.splatinsert1225 = insertelement <4 x i64> poison, i64 %636, i32 0
  %broadcast.splat1226 = shufflevector <4 x i64> %broadcast.splatinsert1225, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1227 = insertelement <4 x i32> poison, i32 %639, i32 0
  %broadcast.splat1228 = shufflevector <4 x i32> %broadcast.splatinsert1227, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1216
  %index1219 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1220, %vector.body1213 ]
  %vec.ind1223 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1216 ], [ %vec.ind.next1224, %vector.body1213 ]
  %641 = add nuw nsw <4 x i64> %vec.ind1223, %broadcast.splat1226
  %642 = trunc <4 x i64> %641 to <4 x i32>
  %643 = mul <4 x i32> %broadcast.splat1228, %642
  %644 = add <4 x i32> %643, <i32 1, i32 1, i32 1, i32 1>
  %645 = urem <4 x i32> %644, <i32 1200, i32 1200, i32 1200, i32 1200>
  %646 = sitofp <4 x i32> %645 to <4 x double>
  %647 = fmul fast <4 x double> %646, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %648 = extractelement <4 x i64> %641, i32 0
  %649 = shl i64 %648, 3
  %650 = add nuw nsw i64 %649, %640
  %651 = getelementptr i8, i8* %call1, i64 %650
  %652 = bitcast i8* %651 to <4 x double>*
  store <4 x double> %647, <4 x double>* %652, align 8, !alias.scope !147, !noalias !154
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1224 = add <4 x i64> %vec.ind1223, <i64 4, i64 4, i64 4, i64 4>
  %653 = icmp eq i64 %index.next1220, %635
  br i1 %653, label %polly.loop_exit925, label %vector.body1213, !llvm.loop !155

polly.loop_exit925:                               ; preds = %vector.body1213, %polly.loop_header923
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar920, %633
  br i1 %exitcond1131.not, label %polly.loop_exit919, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_header917, %polly.loop_header923
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_header923 ], [ 0, %polly.loop_header917 ]
  %654 = add nuw nsw i64 %polly.indvar926, %636
  %655 = trunc i64 %654 to i32
  %656 = mul i32 %655, %639
  %657 = add i32 %656, 1
  %658 = urem i32 %657, 1200
  %p_conv.i = sitofp i32 %658 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %659 = shl i64 %654, 3
  %660 = add nuw nsw i64 %659, %640
  %scevgep930 = getelementptr i8, i8* %call1, i64 %660
  %scevgep930931 = bitcast i8* %scevgep930 to double*
  store double %p_div.i, double* %scevgep930931, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar926, %637
  br i1 %exitcond1127.not, label %polly.loop_exit925, label %polly.loop_header923, !llvm.loop !156

polly.loop_header249.us.1:                        ; preds = %polly.loop_header249.us.1.preheader, %polly.loop_header249.us.1
  %polly.indvar253.us.1 = phi i64 [ %polly.indvar_next254.us.1, %polly.loop_header249.us.1 ], [ 0, %polly.loop_header249.us.1.preheader ]
  %661 = add nuw nsw i64 %polly.indvar253.us.1, %177
  %polly.access.mul.call1257.us.1 = mul nuw nsw i64 %661, 1000
  %polly.access.add.call1258.us.1 = add nuw nsw i64 %118, %polly.access.mul.call1257.us.1
  %polly.access.call1259.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us.1
  %polly.access.call1259.load.us.1 = load double, double* %polly.access.call1259.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1259.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next254.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1
  %exitcond1050.1.not = icmp eq i64 %polly.indvar253.us.1, %smin1052
  br i1 %exitcond1050.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header249.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header249.us.1
  br i1 %.not, label %polly.loop_header249.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1262.us.1 = or i64 %209, 1
  %polly.access.call1263.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.1
  %polly.access.call1263.load.us.1 = load double, double* %polly.access.call1263.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.1 = add nsw i64 %207, 1200
  %polly.access.Packed_MemRef_call1266.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.1
  store double %polly.access.call1263.load.us.1, double* %polly.access.Packed_MemRef_call1266.us.1, align 8
  br label %polly.loop_header249.us.2.preheader

polly.loop_header249.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header249.us.2

polly.loop_header249.us.2:                        ; preds = %polly.loop_header249.us.2.preheader, %polly.loop_header249.us.2
  %polly.indvar253.us.2 = phi i64 [ %polly.indvar_next254.us.2, %polly.loop_header249.us.2 ], [ 0, %polly.loop_header249.us.2.preheader ]
  %662 = add nuw nsw i64 %polly.indvar253.us.2, %177
  %polly.access.mul.call1257.us.2 = mul nuw nsw i64 %662, 1000
  %polly.access.add.call1258.us.2 = add nuw nsw i64 %119, %polly.access.mul.call1257.us.2
  %polly.access.call1259.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us.2
  %polly.access.call1259.load.us.2 = load double, double* %polly.access.call1259.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1259.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next254.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 1
  %exitcond1050.2.not = icmp eq i64 %polly.indvar253.us.2, %smin1052
  br i1 %exitcond1050.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header249.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header249.us.2
  br i1 %.not, label %polly.loop_header249.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1262.us.2 = or i64 %209, 2
  %polly.access.call1263.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.2
  %polly.access.call1263.load.us.2 = load double, double* %polly.access.call1263.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.2 = add nsw i64 %207, 2400
  %polly.access.Packed_MemRef_call1266.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.2
  store double %polly.access.call1263.load.us.2, double* %polly.access.Packed_MemRef_call1266.us.2, align 8
  br label %polly.loop_header249.us.3.preheader

polly.loop_header249.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header249.us.3

polly.loop_header249.us.3:                        ; preds = %polly.loop_header249.us.3.preheader, %polly.loop_header249.us.3
  %polly.indvar253.us.3 = phi i64 [ %polly.indvar_next254.us.3, %polly.loop_header249.us.3 ], [ 0, %polly.loop_header249.us.3.preheader ]
  %663 = add nuw nsw i64 %polly.indvar253.us.3, %177
  %polly.access.mul.call1257.us.3 = mul nuw nsw i64 %663, 1000
  %polly.access.add.call1258.us.3 = add nuw nsw i64 %120, %polly.access.mul.call1257.us.3
  %polly.access.call1259.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us.3
  %polly.access.call1259.load.us.3 = load double, double* %polly.access.call1259.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1259.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next254.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 1
  %exitcond1050.3.not = icmp eq i64 %polly.indvar253.us.3, %smin1052
  br i1 %exitcond1050.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header249.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header249.us.3
  br i1 %.not, label %polly.loop_header267.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1262.us.3 = or i64 %209, 3
  %polly.access.call1263.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.3
  %polly.access.call1263.load.us.3 = load double, double* %polly.access.call1263.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.3 = add nsw i64 %207, 3600
  %polly.access.Packed_MemRef_call1266.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.3
  store double %polly.access.call1263.load.us.3, double* %polly.access.Packed_MemRef_call1266.us.3, align 8
  br label %polly.loop_header267.preheader

polly.loop_header274.us.1:                        ; preds = %polly.loop_header274.us.1.preheader, %polly.loop_header274.us.1
  %polly.indvar278.us.1 = phi i64 [ %polly.indvar_next279.us.1, %polly.loop_header274.us.1 ], [ %polly.indvar278.us.1.ph, %polly.loop_header274.us.1.preheader ]
  %664 = add nuw nsw i64 %polly.indvar278.us.1, %177
  %polly.access.add.Packed_MemRef_call1282.us.1 = add nuw nsw i64 %polly.indvar278.us.1, 1200
  %polly.access.Packed_MemRef_call1283.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.1
  %_p_scalar_284.us.1 = load double, double* %polly.access.Packed_MemRef_call1283.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_288.us.1, %_p_scalar_284.us.1
  %polly.access.add.Packed_MemRef_call2290.us.1 = add nuw nsw i64 %664, %polly.access.mul.Packed_MemRef_call2285.us.1
  %polly.access.Packed_MemRef_call2291.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call2291.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_296.us.1, %_p_scalar_292.us.1
  %665 = shl i64 %664, 3
  %666 = add i64 %665, %211
  %scevgep297.us.1 = getelementptr i8, i8* %call, i64 %666
  %scevgep297298.us.1 = bitcast i8* %scevgep297.us.1 to double*
  %_p_scalar_299.us.1 = load double, double* %scevgep297298.us.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_299.us.1
  store double %p_add42.i118.us.1, double* %scevgep297298.us.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us.1 = add nuw nsw i64 %polly.indvar278.us.1, 1
  %exitcond1053.1.not = icmp eq i64 %polly.indvar278.us.1, %smin1052
  br i1 %exitcond1053.1.not, label %polly.loop_exit276.loopexit.us.1, label %polly.loop_header274.us.1, !llvm.loop !157

polly.loop_exit276.loopexit.us.1:                 ; preds = %polly.loop_header274.us.1, %middle.block1612
  %polly.access.add.Packed_MemRef_call2286.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.2, %208
  %polly.access.Packed_MemRef_call2287.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.2
  %_p_scalar_288.us.2 = load double, double* %polly.access.Packed_MemRef_call2287.us.2, align 8
  %polly.access.add.Packed_MemRef_call1294.us.2 = add nsw i64 %207, 2400
  %polly.access.Packed_MemRef_call1295.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.2
  %_p_scalar_296.us.2 = load double, double* %polly.access.Packed_MemRef_call1295.us.2, align 8
  %min.iters.check1584 = icmp ult i64 %199, 4
  br i1 %min.iters.check1584, label %polly.loop_header274.us.2.preheader, label %vector.memcheck1566

vector.memcheck1566:                              ; preds = %polly.loop_exit276.loopexit.us.1
  %bound01575 = icmp ult i8* %scevgep1568, %scevgep1574
  %bound11576 = icmp ult i8* %scevgep1572, %scevgep1571
  %found.conflict1577 = and i1 %bound01575, %bound11576
  br i1 %found.conflict1577, label %polly.loop_header274.us.2.preheader, label %vector.ph1585

vector.ph1585:                                    ; preds = %vector.memcheck1566
  %n.vec1587 = and i64 %199, -4
  %broadcast.splatinsert1593 = insertelement <4 x double> poison, double %_p_scalar_288.us.2, i32 0
  %broadcast.splat1594 = shufflevector <4 x double> %broadcast.splatinsert1593, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1596 = insertelement <4 x double> poison, double %_p_scalar_296.us.2, i32 0
  %broadcast.splat1597 = shufflevector <4 x double> %broadcast.splatinsert1596, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1581

vector.body1581:                                  ; preds = %vector.body1581, %vector.ph1585
  %index1588 = phi i64 [ 0, %vector.ph1585 ], [ %index.next1589, %vector.body1581 ]
  %667 = add nuw nsw i64 %index1588, %177
  %668 = add nuw nsw i64 %index1588, 2400
  %669 = getelementptr double, double* %Packed_MemRef_call1, i64 %668
  %670 = bitcast double* %669 to <4 x double>*
  %wide.load1592 = load <4 x double>, <4 x double>* %670, align 8, !alias.scope !158
  %671 = fmul fast <4 x double> %broadcast.splat1594, %wide.load1592
  %672 = add nuw nsw i64 %667, %polly.access.mul.Packed_MemRef_call2285.us.2
  %673 = getelementptr double, double* %Packed_MemRef_call2, i64 %672
  %674 = bitcast double* %673 to <4 x double>*
  %wide.load1595 = load <4 x double>, <4 x double>* %674, align 8
  %675 = fmul fast <4 x double> %broadcast.splat1597, %wide.load1595
  %676 = shl i64 %667, 3
  %677 = add i64 %676, %211
  %678 = getelementptr i8, i8* %call, i64 %677
  %679 = bitcast i8* %678 to <4 x double>*
  %wide.load1598 = load <4 x double>, <4 x double>* %679, align 8, !alias.scope !161, !noalias !163
  %680 = fadd fast <4 x double> %675, %671
  %681 = fmul fast <4 x double> %680, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %682 = fadd fast <4 x double> %681, %wide.load1598
  %683 = bitcast i8* %678 to <4 x double>*
  store <4 x double> %682, <4 x double>* %683, align 8, !alias.scope !161, !noalias !163
  %index.next1589 = add i64 %index1588, 4
  %684 = icmp eq i64 %index.next1589, %n.vec1587
  br i1 %684, label %middle.block1579, label %vector.body1581, !llvm.loop !164

middle.block1579:                                 ; preds = %vector.body1581
  %cmp.n1591 = icmp eq i64 %199, %n.vec1587
  br i1 %cmp.n1591, label %polly.loop_exit276.loopexit.us.2, label %polly.loop_header274.us.2.preheader

polly.loop_header274.us.2.preheader:              ; preds = %vector.memcheck1566, %polly.loop_exit276.loopexit.us.1, %middle.block1579
  %polly.indvar278.us.2.ph = phi i64 [ 0, %vector.memcheck1566 ], [ 0, %polly.loop_exit276.loopexit.us.1 ], [ %n.vec1587, %middle.block1579 ]
  br label %polly.loop_header274.us.2

polly.loop_header274.us.2:                        ; preds = %polly.loop_header274.us.2.preheader, %polly.loop_header274.us.2
  %polly.indvar278.us.2 = phi i64 [ %polly.indvar_next279.us.2, %polly.loop_header274.us.2 ], [ %polly.indvar278.us.2.ph, %polly.loop_header274.us.2.preheader ]
  %685 = add nuw nsw i64 %polly.indvar278.us.2, %177
  %polly.access.add.Packed_MemRef_call1282.us.2 = add nuw nsw i64 %polly.indvar278.us.2, 2400
  %polly.access.Packed_MemRef_call1283.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.2
  %_p_scalar_284.us.2 = load double, double* %polly.access.Packed_MemRef_call1283.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_288.us.2, %_p_scalar_284.us.2
  %polly.access.add.Packed_MemRef_call2290.us.2 = add nuw nsw i64 %685, %polly.access.mul.Packed_MemRef_call2285.us.2
  %polly.access.Packed_MemRef_call2291.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call2291.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_296.us.2, %_p_scalar_292.us.2
  %686 = shl i64 %685, 3
  %687 = add i64 %686, %211
  %scevgep297.us.2 = getelementptr i8, i8* %call, i64 %687
  %scevgep297298.us.2 = bitcast i8* %scevgep297.us.2 to double*
  %_p_scalar_299.us.2 = load double, double* %scevgep297298.us.2, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_299.us.2
  store double %p_add42.i118.us.2, double* %scevgep297298.us.2, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us.2 = add nuw nsw i64 %polly.indvar278.us.2, 1
  %exitcond1053.2.not = icmp eq i64 %polly.indvar278.us.2, %smin1052
  br i1 %exitcond1053.2.not, label %polly.loop_exit276.loopexit.us.2, label %polly.loop_header274.us.2, !llvm.loop !165

polly.loop_exit276.loopexit.us.2:                 ; preds = %polly.loop_header274.us.2, %middle.block1579
  %polly.access.add.Packed_MemRef_call2286.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.3, %208
  %polly.access.Packed_MemRef_call2287.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.3
  %_p_scalar_288.us.3 = load double, double* %polly.access.Packed_MemRef_call2287.us.3, align 8
  %polly.access.add.Packed_MemRef_call1294.us.3 = add nsw i64 %207, 3600
  %polly.access.Packed_MemRef_call1295.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.3
  %_p_scalar_296.us.3 = load double, double* %polly.access.Packed_MemRef_call1295.us.3, align 8
  %min.iters.check1551 = icmp ult i64 %206, 4
  br i1 %min.iters.check1551, label %polly.loop_header274.us.3.preheader, label %vector.ph1552

vector.ph1552:                                    ; preds = %polly.loop_exit276.loopexit.us.2
  %n.vec1554 = and i64 %206, -4
  %broadcast.splatinsert1560 = insertelement <4 x double> poison, double %_p_scalar_288.us.3, i32 0
  %broadcast.splat1561 = shufflevector <4 x double> %broadcast.splatinsert1560, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1563 = insertelement <4 x double> poison, double %_p_scalar_296.us.3, i32 0
  %broadcast.splat1564 = shufflevector <4 x double> %broadcast.splatinsert1563, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1546

vector.body1546:                                  ; preds = %vector.body1546, %vector.ph1552
  %index1555 = phi i64 [ 0, %vector.ph1552 ], [ %index.next1556, %vector.body1546 ]
  %688 = add nuw nsw i64 %index1555, %177
  %689 = add nuw nsw i64 %index1555, 3600
  %690 = getelementptr double, double* %Packed_MemRef_call1, i64 %689
  %691 = bitcast double* %690 to <4 x double>*
  %wide.load1559 = load <4 x double>, <4 x double>* %691, align 8
  %692 = fmul fast <4 x double> %broadcast.splat1561, %wide.load1559
  %693 = add nuw nsw i64 %688, %polly.access.mul.Packed_MemRef_call2285.us.3
  %694 = getelementptr double, double* %Packed_MemRef_call2, i64 %693
  %695 = bitcast double* %694 to <4 x double>*
  %wide.load1562 = load <4 x double>, <4 x double>* %695, align 8
  %696 = fmul fast <4 x double> %broadcast.splat1564, %wide.load1562
  %697 = shl i64 %688, 3
  %698 = add i64 %697, %211
  %699 = getelementptr i8, i8* %call, i64 %698
  %700 = bitcast i8* %699 to <4 x double>*
  %wide.load1565 = load <4 x double>, <4 x double>* %700, align 8, !alias.scope !65, !noalias !67
  %701 = fadd fast <4 x double> %696, %692
  %702 = fmul fast <4 x double> %701, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %703 = fadd fast <4 x double> %702, %wide.load1565
  %704 = bitcast i8* %699 to <4 x double>*
  store <4 x double> %703, <4 x double>* %704, align 8, !alias.scope !65, !noalias !67
  %index.next1556 = add i64 %index1555, 4
  %705 = icmp eq i64 %index.next1556, %n.vec1554
  br i1 %705, label %middle.block1544, label %vector.body1546, !llvm.loop !166

middle.block1544:                                 ; preds = %vector.body1546
  %cmp.n1558 = icmp eq i64 %206, %n.vec1554
  br i1 %cmp.n1558, label %polly.loop_exit269, label %polly.loop_header274.us.3.preheader

polly.loop_header274.us.3.preheader:              ; preds = %polly.loop_exit276.loopexit.us.2, %middle.block1544
  %polly.indvar278.us.3.ph = phi i64 [ 0, %polly.loop_exit276.loopexit.us.2 ], [ %n.vec1554, %middle.block1544 ]
  br label %polly.loop_header274.us.3

polly.loop_header274.us.3:                        ; preds = %polly.loop_header274.us.3.preheader, %polly.loop_header274.us.3
  %polly.indvar278.us.3 = phi i64 [ %polly.indvar_next279.us.3, %polly.loop_header274.us.3 ], [ %polly.indvar278.us.3.ph, %polly.loop_header274.us.3.preheader ]
  %706 = add nuw nsw i64 %polly.indvar278.us.3, %177
  %polly.access.add.Packed_MemRef_call1282.us.3 = add nuw nsw i64 %polly.indvar278.us.3, 3600
  %polly.access.Packed_MemRef_call1283.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.3
  %_p_scalar_284.us.3 = load double, double* %polly.access.Packed_MemRef_call1283.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_288.us.3, %_p_scalar_284.us.3
  %polly.access.add.Packed_MemRef_call2290.us.3 = add nuw nsw i64 %706, %polly.access.mul.Packed_MemRef_call2285.us.3
  %polly.access.Packed_MemRef_call2291.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call2291.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_296.us.3, %_p_scalar_292.us.3
  %707 = shl i64 %706, 3
  %708 = add i64 %707, %211
  %scevgep297.us.3 = getelementptr i8, i8* %call, i64 %708
  %scevgep297298.us.3 = bitcast i8* %scevgep297.us.3 to double*
  %_p_scalar_299.us.3 = load double, double* %scevgep297298.us.3, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_299.us.3
  store double %p_add42.i118.us.3, double* %scevgep297298.us.3, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us.3 = add nuw nsw i64 %polly.indvar278.us.3, 1
  %exitcond1053.3.not = icmp eq i64 %polly.indvar278.us.3, %smin1052
  br i1 %exitcond1053.3.not, label %polly.loop_exit269, label %polly.loop_header274.us.3, !llvm.loop !167

polly.loop_header458.us.1:                        ; preds = %polly.loop_header458.us.1.preheader, %polly.loop_header458.us.1
  %polly.indvar462.us.1 = phi i64 [ %polly.indvar_next463.us.1, %polly.loop_header458.us.1 ], [ 0, %polly.loop_header458.us.1.preheader ]
  %709 = add nuw nsw i64 %polly.indvar462.us.1, %339
  %polly.access.mul.call1466.us.1 = mul nuw nsw i64 %709, 1000
  %polly.access.add.call1467.us.1 = add nuw nsw i64 %280, %polly.access.mul.call1466.us.1
  %polly.access.call1468.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us.1
  %polly.access.call1468.load.us.1 = load double, double* %polly.access.call1468.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305.us.1 = add nuw nsw i64 %polly.indvar462.us.1, 1200
  %polly.access.Packed_MemRef_call1305.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.1
  store double %polly.access.call1468.load.us.1, double* %polly.access.Packed_MemRef_call1305.us.1, align 8
  %polly.indvar_next463.us.1 = add nuw nsw i64 %polly.indvar462.us.1, 1
  %exitcond1079.1.not = icmp eq i64 %polly.indvar462.us.1, %smin1081
  br i1 %exitcond1079.1.not, label %polly.cond469.loopexit.us.1, label %polly.loop_header458.us.1

polly.cond469.loopexit.us.1:                      ; preds = %polly.loop_header458.us.1
  br i1 %.not932, label %polly.loop_header458.us.2.preheader, label %polly.then471.us.1

polly.then471.us.1:                               ; preds = %polly.cond469.loopexit.us.1
  %polly.access.add.call1475.us.1 = or i64 %371, 1
  %polly.access.call1476.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.1
  %polly.access.call1476.load.us.1 = load double, double* %polly.access.call1476.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.1 = add nsw i64 %369, 1200
  %polly.access.Packed_MemRef_call1305479.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.1
  store double %polly.access.call1476.load.us.1, double* %polly.access.Packed_MemRef_call1305479.us.1, align 8
  br label %polly.loop_header458.us.2.preheader

polly.loop_header458.us.2.preheader:              ; preds = %polly.then471.us.1, %polly.cond469.loopexit.us.1
  br label %polly.loop_header458.us.2

polly.loop_header458.us.2:                        ; preds = %polly.loop_header458.us.2.preheader, %polly.loop_header458.us.2
  %polly.indvar462.us.2 = phi i64 [ %polly.indvar_next463.us.2, %polly.loop_header458.us.2 ], [ 0, %polly.loop_header458.us.2.preheader ]
  %710 = add nuw nsw i64 %polly.indvar462.us.2, %339
  %polly.access.mul.call1466.us.2 = mul nuw nsw i64 %710, 1000
  %polly.access.add.call1467.us.2 = add nuw nsw i64 %281, %polly.access.mul.call1466.us.2
  %polly.access.call1468.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us.2
  %polly.access.call1468.load.us.2 = load double, double* %polly.access.call1468.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305.us.2 = add nuw nsw i64 %polly.indvar462.us.2, 2400
  %polly.access.Packed_MemRef_call1305.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.2
  store double %polly.access.call1468.load.us.2, double* %polly.access.Packed_MemRef_call1305.us.2, align 8
  %polly.indvar_next463.us.2 = add nuw nsw i64 %polly.indvar462.us.2, 1
  %exitcond1079.2.not = icmp eq i64 %polly.indvar462.us.2, %smin1081
  br i1 %exitcond1079.2.not, label %polly.cond469.loopexit.us.2, label %polly.loop_header458.us.2

polly.cond469.loopexit.us.2:                      ; preds = %polly.loop_header458.us.2
  br i1 %.not932, label %polly.loop_header458.us.3.preheader, label %polly.then471.us.2

polly.then471.us.2:                               ; preds = %polly.cond469.loopexit.us.2
  %polly.access.add.call1475.us.2 = or i64 %371, 2
  %polly.access.call1476.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.2
  %polly.access.call1476.load.us.2 = load double, double* %polly.access.call1476.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.2 = add nsw i64 %369, 2400
  %polly.access.Packed_MemRef_call1305479.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.2
  store double %polly.access.call1476.load.us.2, double* %polly.access.Packed_MemRef_call1305479.us.2, align 8
  br label %polly.loop_header458.us.3.preheader

polly.loop_header458.us.3.preheader:              ; preds = %polly.then471.us.2, %polly.cond469.loopexit.us.2
  br label %polly.loop_header458.us.3

polly.loop_header458.us.3:                        ; preds = %polly.loop_header458.us.3.preheader, %polly.loop_header458.us.3
  %polly.indvar462.us.3 = phi i64 [ %polly.indvar_next463.us.3, %polly.loop_header458.us.3 ], [ 0, %polly.loop_header458.us.3.preheader ]
  %711 = add nuw nsw i64 %polly.indvar462.us.3, %339
  %polly.access.mul.call1466.us.3 = mul nuw nsw i64 %711, 1000
  %polly.access.add.call1467.us.3 = add nuw nsw i64 %282, %polly.access.mul.call1466.us.3
  %polly.access.call1468.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us.3
  %polly.access.call1468.load.us.3 = load double, double* %polly.access.call1468.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305.us.3 = add nuw nsw i64 %polly.indvar462.us.3, 3600
  %polly.access.Packed_MemRef_call1305.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.3
  store double %polly.access.call1468.load.us.3, double* %polly.access.Packed_MemRef_call1305.us.3, align 8
  %polly.indvar_next463.us.3 = add nuw nsw i64 %polly.indvar462.us.3, 1
  %exitcond1079.3.not = icmp eq i64 %polly.indvar462.us.3, %smin1081
  br i1 %exitcond1079.3.not, label %polly.cond469.loopexit.us.3, label %polly.loop_header458.us.3

polly.cond469.loopexit.us.3:                      ; preds = %polly.loop_header458.us.3
  br i1 %.not932, label %polly.loop_header480.preheader, label %polly.then471.us.3

polly.then471.us.3:                               ; preds = %polly.cond469.loopexit.us.3
  %polly.access.add.call1475.us.3 = or i64 %371, 3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.3 = add nsw i64 %369, 3600
  %polly.access.Packed_MemRef_call1305479.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1305479.us.3, align 8
  br label %polly.loop_header480.preheader

polly.loop_header487.us.1:                        ; preds = %polly.loop_header487.us.1.preheader, %polly.loop_header487.us.1
  %polly.indvar491.us.1 = phi i64 [ %polly.indvar_next492.us.1, %polly.loop_header487.us.1 ], [ %polly.indvar491.us.1.ph, %polly.loop_header487.us.1.preheader ]
  %712 = add nuw nsw i64 %polly.indvar491.us.1, %339
  %polly.access.add.Packed_MemRef_call1305495.us.1 = add nuw nsw i64 %polly.indvar491.us.1, 1200
  %polly.access.Packed_MemRef_call1305496.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call1305496.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_501.us.1, %_p_scalar_497.us.1
  %polly.access.add.Packed_MemRef_call2307503.us.1 = add nuw nsw i64 %712, %polly.access.mul.Packed_MemRef_call2307498.us.1
  %polly.access.Packed_MemRef_call2307504.us.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call2307504.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_509.us.1, %_p_scalar_505.us.1
  %713 = shl i64 %712, 3
  %714 = add i64 %713, %373
  %scevgep510.us.1 = getelementptr i8, i8* %call, i64 %714
  %scevgep510511.us.1 = bitcast i8* %scevgep510.us.1 to double*
  %_p_scalar_512.us.1 = load double, double* %scevgep510511.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_512.us.1
  store double %p_add42.i79.us.1, double* %scevgep510511.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us.1 = add nuw nsw i64 %polly.indvar491.us.1, 1
  %exitcond1082.1.not = icmp eq i64 %polly.indvar491.us.1, %smin1081
  br i1 %exitcond1082.1.not, label %polly.loop_exit489.loopexit.us.1, label %polly.loop_header487.us.1, !llvm.loop !168

polly.loop_exit489.loopexit.us.1:                 ; preds = %polly.loop_header487.us.1, %middle.block1466
  %polly.access.add.Packed_MemRef_call2307499.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.2, %370
  %polly.access.Packed_MemRef_call2307500.us.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.2
  %_p_scalar_501.us.2 = load double, double* %polly.access.Packed_MemRef_call2307500.us.2, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.2 = add nsw i64 %369, 2400
  %polly.access.Packed_MemRef_call1305508.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.2
  %_p_scalar_509.us.2 = load double, double* %polly.access.Packed_MemRef_call1305508.us.2, align 8
  %min.iters.check1438 = icmp ult i64 %361, 4
  br i1 %min.iters.check1438, label %polly.loop_header487.us.2.preheader, label %vector.memcheck1420

vector.memcheck1420:                              ; preds = %polly.loop_exit489.loopexit.us.1
  %bound01429 = icmp ult i8* %scevgep1422, %scevgep1428
  %bound11430 = icmp ult i8* %scevgep1426, %scevgep1425
  %found.conflict1431 = and i1 %bound01429, %bound11430
  br i1 %found.conflict1431, label %polly.loop_header487.us.2.preheader, label %vector.ph1439

vector.ph1439:                                    ; preds = %vector.memcheck1420
  %n.vec1441 = and i64 %361, -4
  %broadcast.splatinsert1447 = insertelement <4 x double> poison, double %_p_scalar_501.us.2, i32 0
  %broadcast.splat1448 = shufflevector <4 x double> %broadcast.splatinsert1447, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1450 = insertelement <4 x double> poison, double %_p_scalar_509.us.2, i32 0
  %broadcast.splat1451 = shufflevector <4 x double> %broadcast.splatinsert1450, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1435

vector.body1435:                                  ; preds = %vector.body1435, %vector.ph1439
  %index1442 = phi i64 [ 0, %vector.ph1439 ], [ %index.next1443, %vector.body1435 ]
  %715 = add nuw nsw i64 %index1442, %339
  %716 = add nuw nsw i64 %index1442, 2400
  %717 = getelementptr double, double* %Packed_MemRef_call1305, i64 %716
  %718 = bitcast double* %717 to <4 x double>*
  %wide.load1446 = load <4 x double>, <4 x double>* %718, align 8, !alias.scope !169
  %719 = fmul fast <4 x double> %broadcast.splat1448, %wide.load1446
  %720 = add nuw nsw i64 %715, %polly.access.mul.Packed_MemRef_call2307498.us.2
  %721 = getelementptr double, double* %Packed_MemRef_call2307, i64 %720
  %722 = bitcast double* %721 to <4 x double>*
  %wide.load1449 = load <4 x double>, <4 x double>* %722, align 8
  %723 = fmul fast <4 x double> %broadcast.splat1451, %wide.load1449
  %724 = shl i64 %715, 3
  %725 = add i64 %724, %373
  %726 = getelementptr i8, i8* %call, i64 %725
  %727 = bitcast i8* %726 to <4 x double>*
  %wide.load1452 = load <4 x double>, <4 x double>* %727, align 8, !alias.scope !172, !noalias !174
  %728 = fadd fast <4 x double> %723, %719
  %729 = fmul fast <4 x double> %728, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %730 = fadd fast <4 x double> %729, %wide.load1452
  %731 = bitcast i8* %726 to <4 x double>*
  store <4 x double> %730, <4 x double>* %731, align 8, !alias.scope !172, !noalias !174
  %index.next1443 = add i64 %index1442, 4
  %732 = icmp eq i64 %index.next1443, %n.vec1441
  br i1 %732, label %middle.block1433, label %vector.body1435, !llvm.loop !175

middle.block1433:                                 ; preds = %vector.body1435
  %cmp.n1445 = icmp eq i64 %361, %n.vec1441
  br i1 %cmp.n1445, label %polly.loop_exit489.loopexit.us.2, label %polly.loop_header487.us.2.preheader

polly.loop_header487.us.2.preheader:              ; preds = %vector.memcheck1420, %polly.loop_exit489.loopexit.us.1, %middle.block1433
  %polly.indvar491.us.2.ph = phi i64 [ 0, %vector.memcheck1420 ], [ 0, %polly.loop_exit489.loopexit.us.1 ], [ %n.vec1441, %middle.block1433 ]
  br label %polly.loop_header487.us.2

polly.loop_header487.us.2:                        ; preds = %polly.loop_header487.us.2.preheader, %polly.loop_header487.us.2
  %polly.indvar491.us.2 = phi i64 [ %polly.indvar_next492.us.2, %polly.loop_header487.us.2 ], [ %polly.indvar491.us.2.ph, %polly.loop_header487.us.2.preheader ]
  %733 = add nuw nsw i64 %polly.indvar491.us.2, %339
  %polly.access.add.Packed_MemRef_call1305495.us.2 = add nuw nsw i64 %polly.indvar491.us.2, 2400
  %polly.access.Packed_MemRef_call1305496.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call1305496.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_501.us.2, %_p_scalar_497.us.2
  %polly.access.add.Packed_MemRef_call2307503.us.2 = add nuw nsw i64 %733, %polly.access.mul.Packed_MemRef_call2307498.us.2
  %polly.access.Packed_MemRef_call2307504.us.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call2307504.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_509.us.2, %_p_scalar_505.us.2
  %734 = shl i64 %733, 3
  %735 = add i64 %734, %373
  %scevgep510.us.2 = getelementptr i8, i8* %call, i64 %735
  %scevgep510511.us.2 = bitcast i8* %scevgep510.us.2 to double*
  %_p_scalar_512.us.2 = load double, double* %scevgep510511.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_512.us.2
  store double %p_add42.i79.us.2, double* %scevgep510511.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us.2 = add nuw nsw i64 %polly.indvar491.us.2, 1
  %exitcond1082.2.not = icmp eq i64 %polly.indvar491.us.2, %smin1081
  br i1 %exitcond1082.2.not, label %polly.loop_exit489.loopexit.us.2, label %polly.loop_header487.us.2, !llvm.loop !176

polly.loop_exit489.loopexit.us.2:                 ; preds = %polly.loop_header487.us.2, %middle.block1433
  %polly.access.add.Packed_MemRef_call2307499.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.3, %370
  %polly.access.Packed_MemRef_call2307500.us.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.3
  %_p_scalar_501.us.3 = load double, double* %polly.access.Packed_MemRef_call2307500.us.3, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.3 = add nsw i64 %369, 3600
  %polly.access.Packed_MemRef_call1305508.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.3
  %_p_scalar_509.us.3 = load double, double* %polly.access.Packed_MemRef_call1305508.us.3, align 8
  %min.iters.check1405 = icmp ult i64 %368, 4
  br i1 %min.iters.check1405, label %polly.loop_header487.us.3.preheader, label %vector.ph1406

vector.ph1406:                                    ; preds = %polly.loop_exit489.loopexit.us.2
  %n.vec1408 = and i64 %368, -4
  %broadcast.splatinsert1414 = insertelement <4 x double> poison, double %_p_scalar_501.us.3, i32 0
  %broadcast.splat1415 = shufflevector <4 x double> %broadcast.splatinsert1414, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1417 = insertelement <4 x double> poison, double %_p_scalar_509.us.3, i32 0
  %broadcast.splat1418 = shufflevector <4 x double> %broadcast.splatinsert1417, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1400

vector.body1400:                                  ; preds = %vector.body1400, %vector.ph1406
  %index1409 = phi i64 [ 0, %vector.ph1406 ], [ %index.next1410, %vector.body1400 ]
  %736 = add nuw nsw i64 %index1409, %339
  %737 = add nuw nsw i64 %index1409, 3600
  %738 = getelementptr double, double* %Packed_MemRef_call1305, i64 %737
  %739 = bitcast double* %738 to <4 x double>*
  %wide.load1413 = load <4 x double>, <4 x double>* %739, align 8
  %740 = fmul fast <4 x double> %broadcast.splat1415, %wide.load1413
  %741 = add nuw nsw i64 %736, %polly.access.mul.Packed_MemRef_call2307498.us.3
  %742 = getelementptr double, double* %Packed_MemRef_call2307, i64 %741
  %743 = bitcast double* %742 to <4 x double>*
  %wide.load1416 = load <4 x double>, <4 x double>* %743, align 8
  %744 = fmul fast <4 x double> %broadcast.splat1418, %wide.load1416
  %745 = shl i64 %736, 3
  %746 = add i64 %745, %373
  %747 = getelementptr i8, i8* %call, i64 %746
  %748 = bitcast i8* %747 to <4 x double>*
  %wide.load1419 = load <4 x double>, <4 x double>* %748, align 8, !alias.scope !92, !noalias !94
  %749 = fadd fast <4 x double> %744, %740
  %750 = fmul fast <4 x double> %749, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %751 = fadd fast <4 x double> %750, %wide.load1419
  %752 = bitcast i8* %747 to <4 x double>*
  store <4 x double> %751, <4 x double>* %752, align 8, !alias.scope !92, !noalias !94
  %index.next1410 = add i64 %index1409, 4
  %753 = icmp eq i64 %index.next1410, %n.vec1408
  br i1 %753, label %middle.block1398, label %vector.body1400, !llvm.loop !177

middle.block1398:                                 ; preds = %vector.body1400
  %cmp.n1412 = icmp eq i64 %368, %n.vec1408
  br i1 %cmp.n1412, label %polly.loop_exit482, label %polly.loop_header487.us.3.preheader

polly.loop_header487.us.3.preheader:              ; preds = %polly.loop_exit489.loopexit.us.2, %middle.block1398
  %polly.indvar491.us.3.ph = phi i64 [ 0, %polly.loop_exit489.loopexit.us.2 ], [ %n.vec1408, %middle.block1398 ]
  br label %polly.loop_header487.us.3

polly.loop_header487.us.3:                        ; preds = %polly.loop_header487.us.3.preheader, %polly.loop_header487.us.3
  %polly.indvar491.us.3 = phi i64 [ %polly.indvar_next492.us.3, %polly.loop_header487.us.3 ], [ %polly.indvar491.us.3.ph, %polly.loop_header487.us.3.preheader ]
  %754 = add nuw nsw i64 %polly.indvar491.us.3, %339
  %polly.access.add.Packed_MemRef_call1305495.us.3 = add nuw nsw i64 %polly.indvar491.us.3, 3600
  %polly.access.Packed_MemRef_call1305496.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call1305496.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_501.us.3, %_p_scalar_497.us.3
  %polly.access.add.Packed_MemRef_call2307503.us.3 = add nuw nsw i64 %754, %polly.access.mul.Packed_MemRef_call2307498.us.3
  %polly.access.Packed_MemRef_call2307504.us.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call2307504.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_509.us.3, %_p_scalar_505.us.3
  %755 = shl i64 %754, 3
  %756 = add i64 %755, %373
  %scevgep510.us.3 = getelementptr i8, i8* %call, i64 %756
  %scevgep510511.us.3 = bitcast i8* %scevgep510.us.3 to double*
  %_p_scalar_512.us.3 = load double, double* %scevgep510511.us.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_512.us.3
  store double %p_add42.i79.us.3, double* %scevgep510511.us.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us.3 = add nuw nsw i64 %polly.indvar491.us.3, 1
  %exitcond1082.3.not = icmp eq i64 %polly.indvar491.us.3, %smin1081
  br i1 %exitcond1082.3.not, label %polly.loop_exit482, label %polly.loop_header487.us.3, !llvm.loop !178

polly.loop_header671.us.1:                        ; preds = %polly.loop_header671.us.1.preheader, %polly.loop_header671.us.1
  %polly.indvar675.us.1 = phi i64 [ %polly.indvar_next676.us.1, %polly.loop_header671.us.1 ], [ 0, %polly.loop_header671.us.1.preheader ]
  %757 = add nuw nsw i64 %polly.indvar675.us.1, %501
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %757, 1000
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %442, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518.us.1 = add nuw nsw i64 %polly.indvar675.us.1, 1200
  %polly.access.Packed_MemRef_call1518.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1518.us.1, align 8
  %polly.indvar_next676.us.1 = add nuw nsw i64 %polly.indvar675.us.1, 1
  %exitcond1108.1.not = icmp eq i64 %polly.indvar675.us.1, %smin1110
  br i1 %exitcond1108.1.not, label %polly.cond682.loopexit.us.1, label %polly.loop_header671.us.1

polly.cond682.loopexit.us.1:                      ; preds = %polly.loop_header671.us.1
  br i1 %.not933, label %polly.loop_header671.us.2.preheader, label %polly.then684.us.1

polly.then684.us.1:                               ; preds = %polly.cond682.loopexit.us.1
  %polly.access.add.call1688.us.1 = or i64 %533, 1
  %polly.access.call1689.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.1
  %polly.access.call1689.load.us.1 = load double, double* %polly.access.call1689.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.1 = add nsw i64 %531, 1200
  %polly.access.Packed_MemRef_call1518692.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.1
  store double %polly.access.call1689.load.us.1, double* %polly.access.Packed_MemRef_call1518692.us.1, align 8
  br label %polly.loop_header671.us.2.preheader

polly.loop_header671.us.2.preheader:              ; preds = %polly.then684.us.1, %polly.cond682.loopexit.us.1
  br label %polly.loop_header671.us.2

polly.loop_header671.us.2:                        ; preds = %polly.loop_header671.us.2.preheader, %polly.loop_header671.us.2
  %polly.indvar675.us.2 = phi i64 [ %polly.indvar_next676.us.2, %polly.loop_header671.us.2 ], [ 0, %polly.loop_header671.us.2.preheader ]
  %758 = add nuw nsw i64 %polly.indvar675.us.2, %501
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %758, 1000
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %443, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518.us.2 = add nuw nsw i64 %polly.indvar675.us.2, 2400
  %polly.access.Packed_MemRef_call1518.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1518.us.2, align 8
  %polly.indvar_next676.us.2 = add nuw nsw i64 %polly.indvar675.us.2, 1
  %exitcond1108.2.not = icmp eq i64 %polly.indvar675.us.2, %smin1110
  br i1 %exitcond1108.2.not, label %polly.cond682.loopexit.us.2, label %polly.loop_header671.us.2

polly.cond682.loopexit.us.2:                      ; preds = %polly.loop_header671.us.2
  br i1 %.not933, label %polly.loop_header671.us.3.preheader, label %polly.then684.us.2

polly.then684.us.2:                               ; preds = %polly.cond682.loopexit.us.2
  %polly.access.add.call1688.us.2 = or i64 %533, 2
  %polly.access.call1689.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.2
  %polly.access.call1689.load.us.2 = load double, double* %polly.access.call1689.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.2 = add nsw i64 %531, 2400
  %polly.access.Packed_MemRef_call1518692.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.2
  store double %polly.access.call1689.load.us.2, double* %polly.access.Packed_MemRef_call1518692.us.2, align 8
  br label %polly.loop_header671.us.3.preheader

polly.loop_header671.us.3.preheader:              ; preds = %polly.then684.us.2, %polly.cond682.loopexit.us.2
  br label %polly.loop_header671.us.3

polly.loop_header671.us.3:                        ; preds = %polly.loop_header671.us.3.preheader, %polly.loop_header671.us.3
  %polly.indvar675.us.3 = phi i64 [ %polly.indvar_next676.us.3, %polly.loop_header671.us.3 ], [ 0, %polly.loop_header671.us.3.preheader ]
  %759 = add nuw nsw i64 %polly.indvar675.us.3, %501
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %759, 1000
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %444, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518.us.3 = add nuw nsw i64 %polly.indvar675.us.3, 3600
  %polly.access.Packed_MemRef_call1518.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1518.us.3, align 8
  %polly.indvar_next676.us.3 = add nuw nsw i64 %polly.indvar675.us.3, 1
  %exitcond1108.3.not = icmp eq i64 %polly.indvar675.us.3, %smin1110
  br i1 %exitcond1108.3.not, label %polly.cond682.loopexit.us.3, label %polly.loop_header671.us.3

polly.cond682.loopexit.us.3:                      ; preds = %polly.loop_header671.us.3
  br i1 %.not933, label %polly.loop_header693.preheader, label %polly.then684.us.3

polly.then684.us.3:                               ; preds = %polly.cond682.loopexit.us.3
  %polly.access.add.call1688.us.3 = or i64 %533, 3
  %polly.access.call1689.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.3
  %polly.access.call1689.load.us.3 = load double, double* %polly.access.call1689.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.3 = add nsw i64 %531, 3600
  %polly.access.Packed_MemRef_call1518692.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.3
  store double %polly.access.call1689.load.us.3, double* %polly.access.Packed_MemRef_call1518692.us.3, align 8
  br label %polly.loop_header693.preheader

polly.loop_header700.us.1:                        ; preds = %polly.loop_header700.us.1.preheader, %polly.loop_header700.us.1
  %polly.indvar704.us.1 = phi i64 [ %polly.indvar_next705.us.1, %polly.loop_header700.us.1 ], [ %polly.indvar704.us.1.ph, %polly.loop_header700.us.1.preheader ]
  %760 = add nuw nsw i64 %polly.indvar704.us.1, %501
  %polly.access.add.Packed_MemRef_call1518708.us.1 = add nuw nsw i64 %polly.indvar704.us.1, 1200
  %polly.access.Packed_MemRef_call1518709.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.1
  %_p_scalar_710.us.1 = load double, double* %polly.access.Packed_MemRef_call1518709.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_714.us.1, %_p_scalar_710.us.1
  %polly.access.add.Packed_MemRef_call2520716.us.1 = add nuw nsw i64 %760, %polly.access.mul.Packed_MemRef_call2520711.us.1
  %polly.access.Packed_MemRef_call2520717.us.1 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.1
  %_p_scalar_718.us.1 = load double, double* %polly.access.Packed_MemRef_call2520717.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_722.us.1, %_p_scalar_718.us.1
  %761 = shl i64 %760, 3
  %762 = add i64 %761, %535
  %scevgep723.us.1 = getelementptr i8, i8* %call, i64 %762
  %scevgep723724.us.1 = bitcast i8* %scevgep723.us.1 to double*
  %_p_scalar_725.us.1 = load double, double* %scevgep723724.us.1, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_725.us.1
  store double %p_add42.i.us.1, double* %scevgep723724.us.1, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us.1 = add nuw nsw i64 %polly.indvar704.us.1, 1
  %exitcond1111.1.not = icmp eq i64 %polly.indvar704.us.1, %smin1110
  br i1 %exitcond1111.1.not, label %polly.loop_exit702.loopexit.us.1, label %polly.loop_header700.us.1, !llvm.loop !179

polly.loop_exit702.loopexit.us.1:                 ; preds = %polly.loop_header700.us.1, %middle.block1320
  %polly.access.add.Packed_MemRef_call2520712.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.2, %532
  %polly.access.Packed_MemRef_call2520713.us.2 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.2
  %_p_scalar_714.us.2 = load double, double* %polly.access.Packed_MemRef_call2520713.us.2, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.2 = add nsw i64 %531, 2400
  %polly.access.Packed_MemRef_call1518721.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.2
  %_p_scalar_722.us.2 = load double, double* %polly.access.Packed_MemRef_call1518721.us.2, align 8
  %min.iters.check1292 = icmp ult i64 %523, 4
  br i1 %min.iters.check1292, label %polly.loop_header700.us.2.preheader, label %vector.memcheck1274

vector.memcheck1274:                              ; preds = %polly.loop_exit702.loopexit.us.1
  %bound01283 = icmp ult i8* %scevgep1276, %scevgep1282
  %bound11284 = icmp ult i8* %scevgep1280, %scevgep1279
  %found.conflict1285 = and i1 %bound01283, %bound11284
  br i1 %found.conflict1285, label %polly.loop_header700.us.2.preheader, label %vector.ph1293

vector.ph1293:                                    ; preds = %vector.memcheck1274
  %n.vec1295 = and i64 %523, -4
  %broadcast.splatinsert1301 = insertelement <4 x double> poison, double %_p_scalar_714.us.2, i32 0
  %broadcast.splat1302 = shufflevector <4 x double> %broadcast.splatinsert1301, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1304 = insertelement <4 x double> poison, double %_p_scalar_722.us.2, i32 0
  %broadcast.splat1305 = shufflevector <4 x double> %broadcast.splatinsert1304, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %vector.ph1293
  %index1296 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1297, %vector.body1289 ]
  %763 = add nuw nsw i64 %index1296, %501
  %764 = add nuw nsw i64 %index1296, 2400
  %765 = getelementptr double, double* %Packed_MemRef_call1518, i64 %764
  %766 = bitcast double* %765 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %766, align 8, !alias.scope !180
  %767 = fmul fast <4 x double> %broadcast.splat1302, %wide.load1300
  %768 = add nuw nsw i64 %763, %polly.access.mul.Packed_MemRef_call2520711.us.2
  %769 = getelementptr double, double* %Packed_MemRef_call2520, i64 %768
  %770 = bitcast double* %769 to <4 x double>*
  %wide.load1303 = load <4 x double>, <4 x double>* %770, align 8
  %771 = fmul fast <4 x double> %broadcast.splat1305, %wide.load1303
  %772 = shl i64 %763, 3
  %773 = add i64 %772, %535
  %774 = getelementptr i8, i8* %call, i64 %773
  %775 = bitcast i8* %774 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %775, align 8, !alias.scope !183, !noalias !185
  %776 = fadd fast <4 x double> %771, %767
  %777 = fmul fast <4 x double> %776, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %778 = fadd fast <4 x double> %777, %wide.load1306
  %779 = bitcast i8* %774 to <4 x double>*
  store <4 x double> %778, <4 x double>* %779, align 8, !alias.scope !183, !noalias !185
  %index.next1297 = add i64 %index1296, 4
  %780 = icmp eq i64 %index.next1297, %n.vec1295
  br i1 %780, label %middle.block1287, label %vector.body1289, !llvm.loop !186

middle.block1287:                                 ; preds = %vector.body1289
  %cmp.n1299 = icmp eq i64 %523, %n.vec1295
  br i1 %cmp.n1299, label %polly.loop_exit702.loopexit.us.2, label %polly.loop_header700.us.2.preheader

polly.loop_header700.us.2.preheader:              ; preds = %vector.memcheck1274, %polly.loop_exit702.loopexit.us.1, %middle.block1287
  %polly.indvar704.us.2.ph = phi i64 [ 0, %vector.memcheck1274 ], [ 0, %polly.loop_exit702.loopexit.us.1 ], [ %n.vec1295, %middle.block1287 ]
  br label %polly.loop_header700.us.2

polly.loop_header700.us.2:                        ; preds = %polly.loop_header700.us.2.preheader, %polly.loop_header700.us.2
  %polly.indvar704.us.2 = phi i64 [ %polly.indvar_next705.us.2, %polly.loop_header700.us.2 ], [ %polly.indvar704.us.2.ph, %polly.loop_header700.us.2.preheader ]
  %781 = add nuw nsw i64 %polly.indvar704.us.2, %501
  %polly.access.add.Packed_MemRef_call1518708.us.2 = add nuw nsw i64 %polly.indvar704.us.2, 2400
  %polly.access.Packed_MemRef_call1518709.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.2
  %_p_scalar_710.us.2 = load double, double* %polly.access.Packed_MemRef_call1518709.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_714.us.2, %_p_scalar_710.us.2
  %polly.access.add.Packed_MemRef_call2520716.us.2 = add nuw nsw i64 %781, %polly.access.mul.Packed_MemRef_call2520711.us.2
  %polly.access.Packed_MemRef_call2520717.us.2 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.2
  %_p_scalar_718.us.2 = load double, double* %polly.access.Packed_MemRef_call2520717.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_722.us.2, %_p_scalar_718.us.2
  %782 = shl i64 %781, 3
  %783 = add i64 %782, %535
  %scevgep723.us.2 = getelementptr i8, i8* %call, i64 %783
  %scevgep723724.us.2 = bitcast i8* %scevgep723.us.2 to double*
  %_p_scalar_725.us.2 = load double, double* %scevgep723724.us.2, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_725.us.2
  store double %p_add42.i.us.2, double* %scevgep723724.us.2, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us.2 = add nuw nsw i64 %polly.indvar704.us.2, 1
  %exitcond1111.2.not = icmp eq i64 %polly.indvar704.us.2, %smin1110
  br i1 %exitcond1111.2.not, label %polly.loop_exit702.loopexit.us.2, label %polly.loop_header700.us.2, !llvm.loop !187

polly.loop_exit702.loopexit.us.2:                 ; preds = %polly.loop_header700.us.2, %middle.block1287
  %polly.access.add.Packed_MemRef_call2520712.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.3, %532
  %polly.access.Packed_MemRef_call2520713.us.3 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.3
  %_p_scalar_714.us.3 = load double, double* %polly.access.Packed_MemRef_call2520713.us.3, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.3 = add nsw i64 %531, 3600
  %polly.access.Packed_MemRef_call1518721.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.3
  %_p_scalar_722.us.3 = load double, double* %polly.access.Packed_MemRef_call1518721.us.3, align 8
  %min.iters.check1259 = icmp ult i64 %530, 4
  br i1 %min.iters.check1259, label %polly.loop_header700.us.3.preheader, label %vector.ph1260

vector.ph1260:                                    ; preds = %polly.loop_exit702.loopexit.us.2
  %n.vec1262 = and i64 %530, -4
  %broadcast.splatinsert1268 = insertelement <4 x double> poison, double %_p_scalar_714.us.3, i32 0
  %broadcast.splat1269 = shufflevector <4 x double> %broadcast.splatinsert1268, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1271 = insertelement <4 x double> poison, double %_p_scalar_722.us.3, i32 0
  %broadcast.splat1272 = shufflevector <4 x double> %broadcast.splatinsert1271, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1260
  %index1263 = phi i64 [ 0, %vector.ph1260 ], [ %index.next1264, %vector.body1254 ]
  %784 = add nuw nsw i64 %index1263, %501
  %785 = add nuw nsw i64 %index1263, 3600
  %786 = getelementptr double, double* %Packed_MemRef_call1518, i64 %785
  %787 = bitcast double* %786 to <4 x double>*
  %wide.load1267 = load <4 x double>, <4 x double>* %787, align 8
  %788 = fmul fast <4 x double> %broadcast.splat1269, %wide.load1267
  %789 = add nuw nsw i64 %784, %polly.access.mul.Packed_MemRef_call2520711.us.3
  %790 = getelementptr double, double* %Packed_MemRef_call2520, i64 %789
  %791 = bitcast double* %790 to <4 x double>*
  %wide.load1270 = load <4 x double>, <4 x double>* %791, align 8
  %792 = fmul fast <4 x double> %broadcast.splat1272, %wide.load1270
  %793 = shl i64 %784, 3
  %794 = add i64 %793, %535
  %795 = getelementptr i8, i8* %call, i64 %794
  %796 = bitcast i8* %795 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %796, align 8, !alias.scope !118, !noalias !120
  %797 = fadd fast <4 x double> %792, %788
  %798 = fmul fast <4 x double> %797, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %799 = fadd fast <4 x double> %798, %wide.load1273
  %800 = bitcast i8* %795 to <4 x double>*
  store <4 x double> %799, <4 x double>* %800, align 8, !alias.scope !118, !noalias !120
  %index.next1264 = add i64 %index1263, 4
  %801 = icmp eq i64 %index.next1264, %n.vec1262
  br i1 %801, label %middle.block1252, label %vector.body1254, !llvm.loop !188

middle.block1252:                                 ; preds = %vector.body1254
  %cmp.n1266 = icmp eq i64 %530, %n.vec1262
  br i1 %cmp.n1266, label %polly.loop_exit695, label %polly.loop_header700.us.3.preheader

polly.loop_header700.us.3.preheader:              ; preds = %polly.loop_exit702.loopexit.us.2, %middle.block1252
  %polly.indvar704.us.3.ph = phi i64 [ 0, %polly.loop_exit702.loopexit.us.2 ], [ %n.vec1262, %middle.block1252 ]
  br label %polly.loop_header700.us.3

polly.loop_header700.us.3:                        ; preds = %polly.loop_header700.us.3.preheader, %polly.loop_header700.us.3
  %polly.indvar704.us.3 = phi i64 [ %polly.indvar_next705.us.3, %polly.loop_header700.us.3 ], [ %polly.indvar704.us.3.ph, %polly.loop_header700.us.3.preheader ]
  %802 = add nuw nsw i64 %polly.indvar704.us.3, %501
  %polly.access.add.Packed_MemRef_call1518708.us.3 = add nuw nsw i64 %polly.indvar704.us.3, 3600
  %polly.access.Packed_MemRef_call1518709.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.3
  %_p_scalar_710.us.3 = load double, double* %polly.access.Packed_MemRef_call1518709.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_714.us.3, %_p_scalar_710.us.3
  %polly.access.add.Packed_MemRef_call2520716.us.3 = add nuw nsw i64 %802, %polly.access.mul.Packed_MemRef_call2520711.us.3
  %polly.access.Packed_MemRef_call2520717.us.3 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.3
  %_p_scalar_718.us.3 = load double, double* %polly.access.Packed_MemRef_call2520717.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_722.us.3, %_p_scalar_718.us.3
  %803 = shl i64 %802, 3
  %804 = add i64 %803, %535
  %scevgep723.us.3 = getelementptr i8, i8* %call, i64 %804
  %scevgep723724.us.3 = bitcast i8* %scevgep723.us.3 to double*
  %_p_scalar_725.us.3 = load double, double* %scevgep723724.us.3, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_725.us.3
  store double %p_add42.i.us.3, double* %scevgep723724.us.3, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us.3 = add nuw nsw i64 %polly.indvar704.us.3, 1
  %exitcond1111.3.not = icmp eq i64 %polly.indvar704.us.3, %smin1110
  br i1 %exitcond1111.3.not, label %polly.loop_exit695, label %polly.loop_header700.us.3, !llvm.loop !189
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
!35 = !{!"llvm.loop.tile.size", i32 4}
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
!49 = !{!"llvm.loop.tile.size", i32 50}
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
!75 = !{!65, !68, !70, !71}
!76 = !{!65, !69, !70, !71}
!77 = !{!78}
!78 = distinct !{!78, !79}
!79 = distinct !{!79, !"LVerDomain"}
!80 = !{!65, !66, !"polly.alias.scope.MemRef_call", !81}
!81 = distinct !{!81, !79}
!82 = !{!68, !69, !70, !71, !78}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = !{!86}
!86 = distinct !{!86, !87}
!87 = distinct !{!87, !"LVerDomain"}
!88 = !{!65, !66, !"polly.alias.scope.MemRef_call", !89}
!89 = distinct !{!89, !87}
!90 = !{!68, !69, !70, !71, !86}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !93, !"polly.alias.scope.MemRef_call"}
!93 = distinct !{!93, !"polly.alias.scope.domain"}
!94 = !{!95, !96, !97, !98}
!95 = distinct !{!95, !93, !"polly.alias.scope.MemRef_call1"}
!96 = distinct !{!96, !93, !"polly.alias.scope.MemRef_call2"}
!97 = distinct !{!97, !93, !"polly.alias.scope.Packed_MemRef_call1"}
!98 = distinct !{!98, !93, !"polly.alias.scope.Packed_MemRef_call2"}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !74, !13}
!101 = !{!92, !95, !97, !98}
!102 = !{!92, !96, !97, !98}
!103 = !{!104}
!104 = distinct !{!104, !105}
!105 = distinct !{!105, !"LVerDomain"}
!106 = !{!92, !93, !"polly.alias.scope.MemRef_call", !107}
!107 = distinct !{!107, !105}
!108 = !{!95, !96, !97, !98, !104}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = !{!112}
!112 = distinct !{!112, !113}
!113 = distinct !{!113, !"LVerDomain"}
!114 = !{!92, !93, !"polly.alias.scope.MemRef_call", !115}
!115 = distinct !{!115, !113}
!116 = !{!95, !96, !97, !98, !112}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !119, !"polly.alias.scope.MemRef_call"}
!119 = distinct !{!119, !"polly.alias.scope.domain"}
!120 = !{!121, !122, !123, !124}
!121 = distinct !{!121, !119, !"polly.alias.scope.MemRef_call1"}
!122 = distinct !{!122, !119, !"polly.alias.scope.MemRef_call2"}
!123 = distinct !{!123, !119, !"polly.alias.scope.Packed_MemRef_call1"}
!124 = distinct !{!124, !119, !"polly.alias.scope.Packed_MemRef_call2"}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !74, !13}
!127 = !{!118, !121, !123, !124}
!128 = !{!118, !122, !123, !124}
!129 = !{!130}
!130 = distinct !{!130, !131}
!131 = distinct !{!131, !"LVerDomain"}
!132 = !{!118, !119, !"polly.alias.scope.MemRef_call", !133}
!133 = distinct !{!133, !131}
!134 = !{!121, !122, !123, !124, !130}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!118, !119, !"polly.alias.scope.MemRef_call", !141}
!141 = distinct !{!141, !139}
!142 = !{!121, !122, !123, !124, !138}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !145, !"polly.alias.scope.MemRef_call"}
!145 = distinct !{!145, !"polly.alias.scope.domain"}
!146 = !{!147, !148}
!147 = distinct !{!147, !145, !"polly.alias.scope.MemRef_call1"}
!148 = distinct !{!148, !145, !"polly.alias.scope.MemRef_call2"}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !74, !13}
!151 = !{!147, !144}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !74, !13}
!154 = !{!148, !144}
!155 = distinct !{!155, !13}
!156 = distinct !{!156, !74, !13}
!157 = distinct !{!157, !13}
!158 = !{!159}
!159 = distinct !{!159, !160}
!160 = distinct !{!160, !"LVerDomain"}
!161 = !{!65, !66, !"polly.alias.scope.MemRef_call", !162}
!162 = distinct !{!162, !160}
!163 = !{!68, !69, !70, !71, !159}
!164 = distinct !{!164, !13}
!165 = distinct !{!165, !13}
!166 = distinct !{!166, !13}
!167 = distinct !{!167, !74, !13}
!168 = distinct !{!168, !13}
!169 = !{!170}
!170 = distinct !{!170, !171}
!171 = distinct !{!171, !"LVerDomain"}
!172 = !{!92, !93, !"polly.alias.scope.MemRef_call", !173}
!173 = distinct !{!173, !171}
!174 = !{!95, !96, !97, !98, !170}
!175 = distinct !{!175, !13}
!176 = distinct !{!176, !13}
!177 = distinct !{!177, !13}
!178 = distinct !{!178, !74, !13}
!179 = distinct !{!179, !13}
!180 = !{!181}
!181 = distinct !{!181, !182}
!182 = distinct !{!182, !"LVerDomain"}
!183 = !{!118, !119, !"polly.alias.scope.MemRef_call", !184}
!184 = distinct !{!184, !182}
!185 = !{!121, !122, !123, !124, !181}
!186 = distinct !{!186, !13}
!187 = distinct !{!187, !13}
!188 = distinct !{!188, !13}
!189 = distinct !{!189, !74, !13}
