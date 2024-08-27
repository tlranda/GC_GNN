; ModuleID = 'syr2k_exhaustive/mmp_all_XL_2308.c'
source_filename = "syr2k_exhaustive/mmp_all_XL_2308.c"
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
  %exitcond1069.not = icmp eq i64 %polly.indvar_next, 1200
  %indvar.next1534 = add i64 %indvar1533, 1
  br i1 %exitcond1069.not, label %polly.loop_header200.preheader, label %polly.loop_header

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
  %exitcond1068.not = icmp eq i64 %polly.indvar_next196, %polly.indvar
  br i1 %exitcond1068.not, label %polly.loop_exit194, label %polly.loop_header192, !llvm.loop !73

polly.loop_header200:                             ; preds = %polly.loop_header200.preheader, %polly.loop_exit208
  %polly.indvar203 = phi i64 [ %polly.indvar_next204, %polly.loop_exit208 ], [ 0, %polly.loop_header200.preheader ]
  %polly.access.mul.Packed_MemRef_call2 = mul nuw nsw i64 %polly.indvar203, 1200
  br label %polly.loop_header206

polly.loop_exit208:                               ; preds = %polly.loop_header206
  %polly.indvar_next204 = add nuw nsw i64 %polly.indvar203, 1
  %exitcond1067.not = icmp eq i64 %polly.indvar_next204, 1000
  br i1 %exitcond1067.not, label %polly.loop_header216.preheader, label %polly.loop_header200

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
  %exitcond1066.not = icmp eq i64 %polly.indvar_next210, 1200
  br i1 %exitcond1066.not, label %polly.loop_exit208, label %polly.loop_header206

polly.loop_header216:                             ; preds = %polly.loop_header216.preheader, %polly.loop_exit224
  %indvars.iv1061 = phi i64 [ %indvars.iv.next1062, %polly.loop_exit224 ], [ 1, %polly.loop_header216.preheader ]
  %indvars.iv1050 = phi i64 [ %indvars.iv.next1051, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %polly.indvar219 = phi i64 [ %113, %polly.loop_exit224 ], [ 0, %polly.loop_header216.preheader ]
  %97 = mul nsw i64 %polly.indvar219, -96
  %98 = mul nuw nsw i64 %polly.indvar219, 96
  %99 = mul nuw nsw i64 %polly.indvar219, 96
  %100 = mul nsw i64 %polly.indvar219, -96
  %101 = mul nsw i64 %polly.indvar219, -96
  %102 = mul nuw nsw i64 %polly.indvar219, 96
  %103 = mul nuw nsw i64 %polly.indvar219, 96
  %104 = mul nsw i64 %polly.indvar219, -96
  %105 = mul nsw i64 %polly.indvar219, -96
  %106 = mul nuw nsw i64 %polly.indvar219, 96
  %107 = mul nuw nsw i64 %polly.indvar219, 96
  %108 = mul nsw i64 %polly.indvar219, -96
  %109 = mul nsw i64 %polly.indvar219, -96
  %110 = mul nuw nsw i64 %polly.indvar219, 96
  %111 = lshr i64 %indvars.iv1061, 2
  %112 = sub nsw i64 %indvars.iv1061, %111
  %113 = add nuw nsw i64 %polly.indvar219, 1
  %pexp.p_div_q = lshr i64 %113, 2
  %polly.loop_guard.not = icmp ult i64 %polly.indvar219, %pexp.p_div_q
  %114 = mul nsw i64 %polly.indvar219, -96
  %115 = icmp slt i64 %114, -1104
  %116 = select i1 %115, i64 %114, i64 -1104
  %117 = add nsw i64 %116, 1199
  %118 = mul nuw nsw i64 %polly.indvar219, 96
  br label %polly.loop_header222

polly.loop_exit224:                               ; preds = %polly.loop_exit230
  %indvars.iv.next = add nsw i64 %indvars.iv, -96
  %indvars.iv.next1051 = add nuw nsw i64 %indvars.iv1050, 96
  %indvars.iv.next1062 = add nuw nsw i64 %indvars.iv1061, 1
  %exitcond1065.not = icmp eq i64 %113, 13
  br i1 %exitcond1065.not, label %polly.exiting, label %polly.loop_header216

polly.loop_header222:                             ; preds = %polly.loop_exit230, %polly.loop_header216
  %polly.indvar225 = phi i64 [ 0, %polly.loop_header216 ], [ %polly.indvar_next226, %polly.loop_exit230 ]
  br i1 %polly.loop_guard.not, label %polly.loop_exit230, label %polly.loop_header228.preheader

polly.loop_header228.preheader:                   ; preds = %polly.loop_header222
  %119 = shl nsw i64 %polly.indvar225, 2
  %120 = or i64 %119, 1
  %121 = or i64 %119, 2
  %122 = or i64 %119, 3
  %polly.access.mul.Packed_MemRef_call2285.us = mul nsw i64 %polly.indvar225, 4800
  %123 = or i64 %119, 1
  %polly.access.mul.Packed_MemRef_call2285.us.1 = mul nuw nsw i64 %123, 1200
  %124 = or i64 %119, 2
  %polly.access.mul.Packed_MemRef_call2285.us.2 = mul nuw nsw i64 %124, 1200
  %125 = or i64 %119, 3
  %polly.access.mul.Packed_MemRef_call2285.us.3 = mul nuw nsw i64 %125, 1200
  br label %polly.loop_header228

polly.loop_exit230:                               ; preds = %polly.loop_exit237, %polly.loop_header222
  %polly.indvar_next226 = add nuw nsw i64 %polly.indvar225, 1
  %exitcond1064.not = icmp eq i64 %polly.indvar_next226, 250
  br i1 %exitcond1064.not, label %polly.loop_exit224, label %polly.loop_header222

polly.loop_header228:                             ; preds = %polly.loop_header228.preheader, %polly.loop_exit237
  %indvars.iv1052 = phi i64 [ %indvars.iv1050, %polly.loop_header228.preheader ], [ %indvars.iv.next1053, %polly.loop_exit237 ]
  %indvars.iv1048 = phi i64 [ %indvars.iv, %polly.loop_header228.preheader ], [ %indvars.iv.next1049, %polly.loop_exit237 ]
  %polly.indvar231 = phi i64 [ 0, %polly.loop_header228.preheader ], [ %polly.indvar_next232, %polly.loop_exit237 ]
  %126 = shl i64 %polly.indvar231, 7
  %127 = add i64 %97, %126
  %smax1647 = call i64 @llvm.smax.i64(i64 %127, i64 0)
  %128 = mul i64 %polly.indvar231, -128
  %129 = add i64 %98, %128
  %130 = add i64 %smax1647, %129
  %131 = shl i64 %polly.indvar231, 10
  %132 = shl i64 %polly.indvar231, 7
  %133 = add i64 %100, %132
  %smax1633 = call i64 @llvm.smax.i64(i64 %133, i64 0)
  %134 = add nuw i64 %99, %smax1633
  %135 = mul i64 %134, 9600
  %136 = add i64 %131, %135
  %137 = or i64 %131, 8
  %138 = add i64 %137, %135
  %139 = mul i64 %polly.indvar231, -128
  %140 = add i64 %99, %139
  %141 = add i64 %smax1633, %140
  %142 = shl i64 %polly.indvar231, 7
  %143 = add i64 %101, %142
  %smax1615 = call i64 @llvm.smax.i64(i64 %143, i64 0)
  %144 = mul i64 %polly.indvar231, -128
  %145 = add i64 %102, %144
  %146 = add i64 %smax1615, %145
  %147 = shl i64 %polly.indvar231, 10
  %148 = shl i64 %polly.indvar231, 7
  %149 = add i64 %104, %148
  %smax1600 = call i64 @llvm.smax.i64(i64 %149, i64 0)
  %150 = add nuw i64 %103, %smax1600
  %151 = mul i64 %150, 9600
  %152 = add i64 %147, %151
  %153 = or i64 %147, 8
  %154 = add i64 %153, %151
  %155 = mul i64 %polly.indvar231, -128
  %156 = add i64 %103, %155
  %157 = add i64 %smax1600, %156
  %158 = shl i64 %polly.indvar231, 7
  %159 = add i64 %105, %158
  %smax1582 = call i64 @llvm.smax.i64(i64 %159, i64 0)
  %160 = mul i64 %polly.indvar231, -128
  %161 = add i64 %106, %160
  %162 = add i64 %smax1582, %161
  %163 = shl i64 %polly.indvar231, 10
  %164 = shl i64 %polly.indvar231, 7
  %165 = add i64 %108, %164
  %smax1567 = call i64 @llvm.smax.i64(i64 %165, i64 0)
  %166 = add nuw i64 %107, %smax1567
  %167 = mul i64 %166, 9600
  %168 = add i64 %163, %167
  %169 = or i64 %163, 8
  %170 = add i64 %169, %167
  %171 = mul i64 %polly.indvar231, -128
  %172 = add i64 %107, %171
  %173 = add i64 %smax1567, %172
  %174 = shl i64 %polly.indvar231, 7
  %175 = add i64 %109, %174
  %smax1547 = call i64 @llvm.smax.i64(i64 %175, i64 0)
  %176 = mul i64 %polly.indvar231, -128
  %177 = add i64 %110, %176
  %178 = add i64 %smax1547, %177
  %179 = shl nsw i64 %polly.indvar231, 7
  %180 = add nsw i64 %179, %114
  %181 = icmp sgt i64 %180, 0
  %182 = select i1 %181, i64 %180, i64 0
  %polly.loop_guard238.not = icmp sgt i64 %182, %117
  br i1 %polly.loop_guard238.not, label %polly.loop_exit237, label %polly.loop_header235.preheader

polly.loop_header235.preheader:                   ; preds = %polly.loop_header228
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv1048, i64 0)
  %183 = add i64 %smax, %indvars.iv1052
  %184 = sub nsw i64 %118, %179
  %185 = add nuw nsw i64 %179, 128
  br label %polly.loop_header235

polly.loop_exit237:                               ; preds = %polly.loop_exit269, %polly.loop_header228
  %polly.indvar_next232 = add nuw nsw i64 %polly.indvar231, 1
  %indvars.iv.next1049 = add nsw i64 %indvars.iv1048, 128
  %indvars.iv.next1053 = add nsw i64 %indvars.iv1052, -128
  %exitcond1063.not = icmp eq i64 %polly.indvar_next232, %112
  br i1 %exitcond1063.not, label %polly.loop_exit230, label %polly.loop_header228

polly.loop_header235:                             ; preds = %polly.loop_header235.preheader, %polly.loop_exit269
  %indvar1548 = phi i64 [ 0, %polly.loop_header235.preheader ], [ %indvar.next1549, %polly.loop_exit269 ]
  %indvars.iv1054 = phi i64 [ %183, %polly.loop_header235.preheader ], [ %indvars.iv.next1055, %polly.loop_exit269 ]
  %polly.indvar239 = phi i64 [ %182, %polly.loop_header235.preheader ], [ %polly.indvar_next240, %polly.loop_exit269 ]
  %186 = add i64 %130, %indvar1548
  %smin1648 = call i64 @llvm.smin.i64(i64 %186, i64 127)
  %187 = add nsw i64 %smin1648, 1
  %188 = mul i64 %indvar1548, 9600
  %189 = add i64 %136, %188
  %scevgep1634 = getelementptr i8, i8* %call, i64 %189
  %190 = add i64 %138, %188
  %scevgep1635 = getelementptr i8, i8* %call, i64 %190
  %191 = add i64 %141, %indvar1548
  %smin1636 = call i64 @llvm.smin.i64(i64 %191, i64 127)
  %192 = shl i64 %smin1636, 3
  %scevgep1637 = getelementptr i8, i8* %scevgep1635, i64 %192
  %scevgep1639 = getelementptr i8, i8* %scevgep1638, i64 %192
  %193 = add i64 %146, %indvar1548
  %smin1616 = call i64 @llvm.smin.i64(i64 %193, i64 127)
  %194 = add nsw i64 %smin1616, 1
  %195 = mul i64 %indvar1548, 9600
  %196 = add i64 %152, %195
  %scevgep1601 = getelementptr i8, i8* %call, i64 %196
  %197 = add i64 %154, %195
  %scevgep1602 = getelementptr i8, i8* %call, i64 %197
  %198 = add i64 %157, %indvar1548
  %smin1603 = call i64 @llvm.smin.i64(i64 %198, i64 127)
  %199 = shl i64 %smin1603, 3
  %scevgep1604 = getelementptr i8, i8* %scevgep1602, i64 %199
  %scevgep1607 = getelementptr i8, i8* %scevgep1606, i64 %199
  %200 = add i64 %162, %indvar1548
  %smin1583 = call i64 @llvm.smin.i64(i64 %200, i64 127)
  %201 = add nsw i64 %smin1583, 1
  %202 = mul i64 %indvar1548, 9600
  %203 = add i64 %168, %202
  %scevgep1568 = getelementptr i8, i8* %call, i64 %203
  %204 = add i64 %170, %202
  %scevgep1569 = getelementptr i8, i8* %call, i64 %204
  %205 = add i64 %173, %indvar1548
  %smin1570 = call i64 @llvm.smin.i64(i64 %205, i64 127)
  %206 = shl i64 %smin1570, 3
  %scevgep1571 = getelementptr i8, i8* %scevgep1569, i64 %206
  %scevgep1574 = getelementptr i8, i8* %scevgep1573, i64 %206
  %207 = add i64 %178, %indvar1548
  %smin1550 = call i64 @llvm.smin.i64(i64 %207, i64 127)
  %208 = add nsw i64 %smin1550, 1
  %smin1058 = call i64 @llvm.smin.i64(i64 %indvars.iv1054, i64 127)
  %209 = add nsw i64 %polly.indvar239, %184
  %polly.loop_guard2521158 = icmp sgt i64 %209, -1
  %210 = add nuw nsw i64 %polly.indvar239, %118
  %.not = icmp ult i64 %210, %185
  %polly.access.mul.call1261 = mul nsw i64 %210, 1000
  %211 = add nuw i64 %polly.access.mul.call1261, %119
  br i1 %polly.loop_guard2521158, label %polly.loop_header249.us, label %polly.loop_header235.split

polly.loop_header249.us:                          ; preds = %polly.loop_header235, %polly.loop_header249.us
  %polly.indvar253.us = phi i64 [ %polly.indvar_next254.us, %polly.loop_header249.us ], [ 0, %polly.loop_header235 ]
  %212 = add nuw nsw i64 %polly.indvar253.us, %179
  %polly.access.mul.call1257.us = mul nuw nsw i64 %212, 1000
  %polly.access.add.call1258.us = add nuw nsw i64 %119, %polly.access.mul.call1257.us
  %polly.access.call1259.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us
  %polly.access.call1259.load.us = load double, double* %polly.access.call1259.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar253.us
  store double %polly.access.call1259.load.us, double* %polly.access.Packed_MemRef_call1.us, align 8
  %polly.indvar_next254.us = add nuw nsw i64 %polly.indvar253.us, 1
  %exitcond1056.not = icmp eq i64 %polly.indvar253.us, %smin1058
  br i1 %exitcond1056.not, label %polly.cond.loopexit.us, label %polly.loop_header249.us

polly.then.us:                                    ; preds = %polly.cond.loopexit.us
  %polly.access.call1263.us = getelementptr double, double* %polly.access.cast.call1730, i64 %211
  %polly.access.call1263.load.us = load double, double* %polly.access.call1263.us, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1266.us = getelementptr double, double* %Packed_MemRef_call1, i64 %209
  store double %polly.access.call1263.load.us, double* %polly.access.Packed_MemRef_call1266.us, align 8
  br label %polly.loop_header249.us.1.preheader

polly.cond.loopexit.us:                           ; preds = %polly.loop_header249.us
  br i1 %.not, label %polly.loop_header249.us.1.preheader, label %polly.then.us

polly.loop_header249.us.1.preheader:              ; preds = %polly.then.us, %polly.cond.loopexit.us
  br label %polly.loop_header249.us.1

polly.loop_header235.split:                       ; preds = %polly.loop_header235
  br i1 %.not, label %polly.loop_exit269, label %polly.loop_header242.preheader

polly.loop_header242.preheader:                   ; preds = %polly.loop_header235.split
  %polly.access.call1263 = getelementptr double, double* %polly.access.cast.call1730, i64 %211
  %polly.access.call1263.load = load double, double* %polly.access.call1263, align 8, !alias.scope !68, !noalias !76
  %polly.access.Packed_MemRef_call1266 = getelementptr double, double* %Packed_MemRef_call1, i64 %209
  store double %polly.access.call1263.load, double* %polly.access.Packed_MemRef_call1266, align 8
  %polly.access.add.call1262.1 = or i64 %211, 1
  %polly.access.call1263.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.1
  %polly.access.call1263.load.1 = load double, double* %polly.access.call1263.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.1 = add nsw i64 %209, 1200
  %polly.access.Packed_MemRef_call1266.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.1
  store double %polly.access.call1263.load.1, double* %polly.access.Packed_MemRef_call1266.1, align 8
  %polly.access.add.call1262.2 = or i64 %211, 2
  %polly.access.call1263.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.2
  %polly.access.call1263.load.2 = load double, double* %polly.access.call1263.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.2 = add nsw i64 %209, 2400
  %polly.access.Packed_MemRef_call1266.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.2
  store double %polly.access.call1263.load.2, double* %polly.access.Packed_MemRef_call1266.2, align 8
  %polly.access.add.call1262.3 = or i64 %211, 3
  %polly.access.call1263.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.3
  %polly.access.call1263.load.3 = load double, double* %polly.access.call1263.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.3 = add nsw i64 %209, 3600
  %polly.access.Packed_MemRef_call1266.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.3
  store double %polly.access.call1263.load.3, double* %polly.access.Packed_MemRef_call1266.3, align 8
  br label %polly.loop_exit269

polly.loop_exit269:                               ; preds = %polly.loop_header274.us.3, %middle.block1544, %polly.loop_header235.split, %polly.loop_header242.preheader, %polly.loop_header267.preheader
  %polly.indvar_next240 = add nuw nsw i64 %polly.indvar239, 1
  %polly.loop_cond241.not.not = icmp ult i64 %polly.indvar239, %117
  %indvars.iv.next1055 = add i64 %indvars.iv1054, 1
  %indvar.next1549 = add i64 %indvar1548, 1
  br i1 %polly.loop_cond241.not.not, label %polly.loop_header235, label %polly.loop_exit237

polly.loop_header267.preheader:                   ; preds = %polly.cond.loopexit.us.3, %polly.then.us.3
  %213 = mul i64 %210, 9600
  br i1 %polly.loop_guard2521158, label %polly.loop_header267.us.preheader, label %polly.loop_exit269

polly.loop_header267.us.preheader:                ; preds = %polly.loop_header267.preheader
  %polly.access.add.Packed_MemRef_call2286.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us, %210
  %polly.access.Packed_MemRef_call2287.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us
  %_p_scalar_288.us = load double, double* %polly.access.Packed_MemRef_call2287.us, align 8
  %polly.access.Packed_MemRef_call1295.us = getelementptr double, double* %Packed_MemRef_call1, i64 %209
  %_p_scalar_296.us = load double, double* %polly.access.Packed_MemRef_call1295.us, align 8
  %min.iters.check1649 = icmp ult i64 %187, 4
  br i1 %min.iters.check1649, label %polly.loop_header274.us.preheader, label %vector.memcheck1632

vector.memcheck1632:                              ; preds = %polly.loop_header267.us.preheader
  %bound01640 = icmp ult i8* %scevgep1634, %scevgep1639
  %bound11641 = icmp ult i8* %malloccall, %scevgep1637
  %found.conflict1642 = and i1 %bound01640, %bound11641
  br i1 %found.conflict1642, label %polly.loop_header274.us.preheader, label %vector.ph1650

vector.ph1650:                                    ; preds = %vector.memcheck1632
  %n.vec1652 = and i64 %187, -4
  %broadcast.splatinsert1658 = insertelement <4 x double> poison, double %_p_scalar_288.us, i32 0
  %broadcast.splat1659 = shufflevector <4 x double> %broadcast.splatinsert1658, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1661 = insertelement <4 x double> poison, double %_p_scalar_296.us, i32 0
  %broadcast.splat1662 = shufflevector <4 x double> %broadcast.splatinsert1661, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1646

vector.body1646:                                  ; preds = %vector.body1646, %vector.ph1650
  %index1653 = phi i64 [ 0, %vector.ph1650 ], [ %index.next1654, %vector.body1646 ]
  %214 = add nuw nsw i64 %index1653, %179
  %215 = getelementptr double, double* %Packed_MemRef_call1, i64 %index1653
  %216 = bitcast double* %215 to <4 x double>*
  %wide.load1657 = load <4 x double>, <4 x double>* %216, align 8, !alias.scope !77
  %217 = fmul fast <4 x double> %broadcast.splat1659, %wide.load1657
  %218 = add nuw nsw i64 %214, %polly.access.mul.Packed_MemRef_call2285.us
  %219 = getelementptr double, double* %Packed_MemRef_call2, i64 %218
  %220 = bitcast double* %219 to <4 x double>*
  %wide.load1660 = load <4 x double>, <4 x double>* %220, align 8
  %221 = fmul fast <4 x double> %broadcast.splat1662, %wide.load1660
  %222 = shl i64 %214, 3
  %223 = add i64 %222, %213
  %224 = getelementptr i8, i8* %call, i64 %223
  %225 = bitcast i8* %224 to <4 x double>*
  %wide.load1663 = load <4 x double>, <4 x double>* %225, align 8, !alias.scope !80, !noalias !82
  %226 = fadd fast <4 x double> %221, %217
  %227 = fmul fast <4 x double> %226, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %228 = fadd fast <4 x double> %227, %wide.load1663
  %229 = bitcast i8* %224 to <4 x double>*
  store <4 x double> %228, <4 x double>* %229, align 8, !alias.scope !80, !noalias !82
  %index.next1654 = add i64 %index1653, 4
  %230 = icmp eq i64 %index.next1654, %n.vec1652
  br i1 %230, label %middle.block1644, label %vector.body1646, !llvm.loop !83

middle.block1644:                                 ; preds = %vector.body1646
  %cmp.n1656 = icmp eq i64 %187, %n.vec1652
  br i1 %cmp.n1656, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us.preheader

polly.loop_header274.us.preheader:                ; preds = %vector.memcheck1632, %polly.loop_header267.us.preheader, %middle.block1644
  %polly.indvar278.us.ph = phi i64 [ 0, %vector.memcheck1632 ], [ 0, %polly.loop_header267.us.preheader ], [ %n.vec1652, %middle.block1644 ]
  br label %polly.loop_header274.us

polly.loop_header274.us:                          ; preds = %polly.loop_header274.us.preheader, %polly.loop_header274.us
  %polly.indvar278.us = phi i64 [ %polly.indvar_next279.us, %polly.loop_header274.us ], [ %polly.indvar278.us.ph, %polly.loop_header274.us.preheader ]
  %231 = add nuw nsw i64 %polly.indvar278.us, %179
  %polly.access.Packed_MemRef_call1283.us = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.indvar278.us
  %_p_scalar_284.us = load double, double* %polly.access.Packed_MemRef_call1283.us, align 8
  %p_mul27.i112.us = fmul fast double %_p_scalar_288.us, %_p_scalar_284.us
  %polly.access.add.Packed_MemRef_call2290.us = add nuw nsw i64 %231, %polly.access.mul.Packed_MemRef_call2285.us
  %polly.access.Packed_MemRef_call2291.us = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us
  %_p_scalar_292.us = load double, double* %polly.access.Packed_MemRef_call2291.us, align 8
  %p_mul37.i114.us = fmul fast double %_p_scalar_296.us, %_p_scalar_292.us
  %232 = shl i64 %231, 3
  %233 = add i64 %232, %213
  %scevgep297.us = getelementptr i8, i8* %call, i64 %233
  %scevgep297298.us = bitcast i8* %scevgep297.us to double*
  %_p_scalar_299.us = load double, double* %scevgep297298.us, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_299.us
  store double %p_add42.i118.us, double* %scevgep297298.us, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us = add nuw nsw i64 %polly.indvar278.us, 1
  %exitcond1059.not = icmp eq i64 %polly.indvar278.us, %smin1058
  br i1 %exitcond1059.not, label %polly.loop_exit276.loopexit.us, label %polly.loop_header274.us, !llvm.loop !84

polly.loop_exit276.loopexit.us:                   ; preds = %polly.loop_header274.us, %middle.block1644
  %polly.access.add.Packed_MemRef_call2286.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.1, %210
  %polly.access.Packed_MemRef_call2287.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.1
  %_p_scalar_288.us.1 = load double, double* %polly.access.Packed_MemRef_call2287.us.1, align 8
  %polly.access.add.Packed_MemRef_call1294.us.1 = add nsw i64 %209, 1200
  %polly.access.Packed_MemRef_call1295.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.1
  %_p_scalar_296.us.1 = load double, double* %polly.access.Packed_MemRef_call1295.us.1, align 8
  %min.iters.check1617 = icmp ult i64 %194, 4
  br i1 %min.iters.check1617, label %polly.loop_header274.us.1.preheader, label %vector.memcheck1599

vector.memcheck1599:                              ; preds = %polly.loop_exit276.loopexit.us
  %bound01608 = icmp ult i8* %scevgep1601, %scevgep1607
  %bound11609 = icmp ult i8* %scevgep1605, %scevgep1604
  %found.conflict1610 = and i1 %bound01608, %bound11609
  br i1 %found.conflict1610, label %polly.loop_header274.us.1.preheader, label %vector.ph1618

vector.ph1618:                                    ; preds = %vector.memcheck1599
  %n.vec1620 = and i64 %194, -4
  %broadcast.splatinsert1626 = insertelement <4 x double> poison, double %_p_scalar_288.us.1, i32 0
  %broadcast.splat1627 = shufflevector <4 x double> %broadcast.splatinsert1626, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1629 = insertelement <4 x double> poison, double %_p_scalar_296.us.1, i32 0
  %broadcast.splat1630 = shufflevector <4 x double> %broadcast.splatinsert1629, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1614

vector.body1614:                                  ; preds = %vector.body1614, %vector.ph1618
  %index1621 = phi i64 [ 0, %vector.ph1618 ], [ %index.next1622, %vector.body1614 ]
  %234 = add nuw nsw i64 %index1621, %179
  %235 = add nuw nsw i64 %index1621, 1200
  %236 = getelementptr double, double* %Packed_MemRef_call1, i64 %235
  %237 = bitcast double* %236 to <4 x double>*
  %wide.load1625 = load <4 x double>, <4 x double>* %237, align 8, !alias.scope !85
  %238 = fmul fast <4 x double> %broadcast.splat1627, %wide.load1625
  %239 = add nuw nsw i64 %234, %polly.access.mul.Packed_MemRef_call2285.us.1
  %240 = getelementptr double, double* %Packed_MemRef_call2, i64 %239
  %241 = bitcast double* %240 to <4 x double>*
  %wide.load1628 = load <4 x double>, <4 x double>* %241, align 8
  %242 = fmul fast <4 x double> %broadcast.splat1630, %wide.load1628
  %243 = shl i64 %234, 3
  %244 = add i64 %243, %213
  %245 = getelementptr i8, i8* %call, i64 %244
  %246 = bitcast i8* %245 to <4 x double>*
  %wide.load1631 = load <4 x double>, <4 x double>* %246, align 8, !alias.scope !88, !noalias !90
  %247 = fadd fast <4 x double> %242, %238
  %248 = fmul fast <4 x double> %247, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %249 = fadd fast <4 x double> %248, %wide.load1631
  %250 = bitcast i8* %245 to <4 x double>*
  store <4 x double> %249, <4 x double>* %250, align 8, !alias.scope !88, !noalias !90
  %index.next1622 = add i64 %index1621, 4
  %251 = icmp eq i64 %index.next1622, %n.vec1620
  br i1 %251, label %middle.block1612, label %vector.body1614, !llvm.loop !91

middle.block1612:                                 ; preds = %vector.body1614
  %cmp.n1624 = icmp eq i64 %194, %n.vec1620
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
  %252 = add i64 %indvar1387, 1
  %253 = mul nuw nsw i64 %polly.indvar393, 9600
  %scevgep402 = getelementptr i8, i8* %call, i64 %253
  %min.iters.check1389 = icmp ult i64 %252, 4
  br i1 %min.iters.check1389, label %polly.loop_header396.preheader, label %vector.ph1390

vector.ph1390:                                    ; preds = %polly.loop_header390
  %n.vec1392 = and i64 %252, -4
  br label %vector.body1386

vector.body1386:                                  ; preds = %vector.body1386, %vector.ph1390
  %index1393 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1394, %vector.body1386 ]
  %254 = shl nuw nsw i64 %index1393, 3
  %255 = getelementptr i8, i8* %scevgep402, i64 %254
  %256 = bitcast i8* %255 to <4 x double>*
  %wide.load1397 = load <4 x double>, <4 x double>* %256, align 8, !alias.scope !92, !noalias !94
  %257 = fmul fast <4 x double> %wide.load1397, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %258 = bitcast i8* %255 to <4 x double>*
  store <4 x double> %257, <4 x double>* %258, align 8, !alias.scope !92, !noalias !94
  %index.next1394 = add i64 %index1393, 4
  %259 = icmp eq i64 %index.next1394, %n.vec1392
  br i1 %259, label %middle.block1384, label %vector.body1386, !llvm.loop !99

middle.block1384:                                 ; preds = %vector.body1386
  %cmp.n1396 = icmp eq i64 %252, %n.vec1392
  br i1 %cmp.n1396, label %polly.loop_exit398, label %polly.loop_header396.preheader

polly.loop_header396.preheader:                   ; preds = %polly.loop_header390, %middle.block1384
  %polly.indvar399.ph = phi i64 [ 0, %polly.loop_header390 ], [ %n.vec1392, %middle.block1384 ]
  br label %polly.loop_header396

polly.loop_exit398:                               ; preds = %polly.loop_header396, %middle.block1384
  %polly.indvar_next394 = add nuw nsw i64 %polly.indvar393, 1
  %exitcond1096.not = icmp eq i64 %polly.indvar_next394, 1200
  %indvar.next1388 = add i64 %indvar1387, 1
  br i1 %exitcond1096.not, label %polly.loop_header406.preheader, label %polly.loop_header390

polly.loop_header406.preheader:                   ; preds = %polly.loop_exit398
  %Packed_MemRef_call1305 = bitcast i8* %malloccall304 to double*
  %Packed_MemRef_call2307 = bitcast i8* %malloccall306 to double*
  br label %polly.loop_header406

polly.loop_header396:                             ; preds = %polly.loop_header396.preheader, %polly.loop_header396
  %polly.indvar399 = phi i64 [ %polly.indvar_next400, %polly.loop_header396 ], [ %polly.indvar399.ph, %polly.loop_header396.preheader ]
  %260 = shl nuw nsw i64 %polly.indvar399, 3
  %scevgep403 = getelementptr i8, i8* %scevgep402, i64 %260
  %scevgep403404 = bitcast i8* %scevgep403 to double*
  %_p_scalar_405 = load double, double* %scevgep403404, align 8, !alias.scope !92, !noalias !94
  %p_mul.i57 = fmul fast double %_p_scalar_405, 1.200000e+00
  store double %p_mul.i57, double* %scevgep403404, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next400 = add nuw nsw i64 %polly.indvar399, 1
  %exitcond1095.not = icmp eq i64 %polly.indvar_next400, %polly.indvar393
  br i1 %exitcond1095.not, label %polly.loop_exit398, label %polly.loop_header396, !llvm.loop !100

polly.loop_header406:                             ; preds = %polly.loop_header406.preheader, %polly.loop_exit414
  %polly.indvar409 = phi i64 [ %polly.indvar_next410, %polly.loop_exit414 ], [ 0, %polly.loop_header406.preheader ]
  %polly.access.mul.Packed_MemRef_call2307 = mul nuw nsw i64 %polly.indvar409, 1200
  br label %polly.loop_header412

polly.loop_exit414:                               ; preds = %polly.loop_header412
  %polly.indvar_next410 = add nuw nsw i64 %polly.indvar409, 1
  %exitcond1094.not = icmp eq i64 %polly.indvar_next410, 1000
  br i1 %exitcond1094.not, label %polly.loop_header422.preheader, label %polly.loop_header406

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
  %exitcond1093.not = icmp eq i64 %polly.indvar_next416, 1200
  br i1 %exitcond1093.not, label %polly.loop_exit414, label %polly.loop_header412

polly.loop_header422:                             ; preds = %polly.loop_header422.preheader, %polly.loop_exit430
  %indvars.iv1088 = phi i64 [ %indvars.iv.next1089, %polly.loop_exit430 ], [ 1, %polly.loop_header422.preheader ]
  %indvars.iv1076 = phi i64 [ %indvars.iv.next1077, %polly.loop_exit430 ], [ 0, %polly.loop_header422.preheader ]
  %indvars.iv1071 = phi i64 [ %indvars.iv.next1072, %polly.loop_exit430 ], [ 0, %polly.loop_header422.preheader ]
  %polly.indvar425 = phi i64 [ %277, %polly.loop_exit430 ], [ 0, %polly.loop_header422.preheader ]
  %261 = mul nsw i64 %polly.indvar425, -96
  %262 = mul nuw nsw i64 %polly.indvar425, 96
  %263 = mul nuw nsw i64 %polly.indvar425, 96
  %264 = mul nsw i64 %polly.indvar425, -96
  %265 = mul nsw i64 %polly.indvar425, -96
  %266 = mul nuw nsw i64 %polly.indvar425, 96
  %267 = mul nuw nsw i64 %polly.indvar425, 96
  %268 = mul nsw i64 %polly.indvar425, -96
  %269 = mul nsw i64 %polly.indvar425, -96
  %270 = mul nuw nsw i64 %polly.indvar425, 96
  %271 = mul nuw nsw i64 %polly.indvar425, 96
  %272 = mul nsw i64 %polly.indvar425, -96
  %273 = mul nsw i64 %polly.indvar425, -96
  %274 = mul nuw nsw i64 %polly.indvar425, 96
  %275 = lshr i64 %indvars.iv1088, 2
  %276 = sub nsw i64 %indvars.iv1088, %275
  %277 = add nuw nsw i64 %polly.indvar425, 1
  %pexp.p_div_q434 = lshr i64 %277, 2
  %polly.loop_guard439.not = icmp ult i64 %polly.indvar425, %pexp.p_div_q434
  %278 = mul nsw i64 %polly.indvar425, -96
  %279 = icmp slt i64 %278, -1104
  %280 = select i1 %279, i64 %278, i64 -1104
  %281 = add nsw i64 %280, 1199
  %282 = mul nuw nsw i64 %polly.indvar425, 96
  br label %polly.loop_header428

polly.loop_exit430:                               ; preds = %polly.loop_exit438
  %indvars.iv.next1072 = add nsw i64 %indvars.iv1071, -96
  %indvars.iv.next1077 = add nuw nsw i64 %indvars.iv1076, 96
  %indvars.iv.next1089 = add nuw nsw i64 %indvars.iv1088, 1
  %exitcond1092.not = icmp eq i64 %277, 13
  br i1 %exitcond1092.not, label %polly.exiting303, label %polly.loop_header422

polly.loop_header428:                             ; preds = %polly.loop_exit438, %polly.loop_header422
  %polly.indvar431 = phi i64 [ 0, %polly.loop_header422 ], [ %polly.indvar_next432, %polly.loop_exit438 ]
  br i1 %polly.loop_guard439.not, label %polly.loop_exit438, label %polly.loop_header436.preheader

polly.loop_header436.preheader:                   ; preds = %polly.loop_header428
  %283 = shl nsw i64 %polly.indvar431, 2
  %284 = or i64 %283, 1
  %285 = or i64 %283, 2
  %286 = or i64 %283, 3
  %polly.access.mul.Packed_MemRef_call2307498.us = mul nsw i64 %polly.indvar431, 4800
  %287 = or i64 %283, 1
  %polly.access.mul.Packed_MemRef_call2307498.us.1 = mul nuw nsw i64 %287, 1200
  %288 = or i64 %283, 2
  %polly.access.mul.Packed_MemRef_call2307498.us.2 = mul nuw nsw i64 %288, 1200
  %289 = or i64 %283, 3
  %polly.access.mul.Packed_MemRef_call2307498.us.3 = mul nuw nsw i64 %289, 1200
  br label %polly.loop_header436

polly.loop_exit438:                               ; preds = %polly.loop_exit446, %polly.loop_header428
  %polly.indvar_next432 = add nuw nsw i64 %polly.indvar431, 1
  %exitcond1091.not = icmp eq i64 %polly.indvar_next432, 250
  br i1 %exitcond1091.not, label %polly.loop_exit430, label %polly.loop_header428

polly.loop_header436:                             ; preds = %polly.loop_header436.preheader, %polly.loop_exit446
  %indvars.iv1078 = phi i64 [ %indvars.iv1076, %polly.loop_header436.preheader ], [ %indvars.iv.next1079, %polly.loop_exit446 ]
  %indvars.iv1073 = phi i64 [ %indvars.iv1071, %polly.loop_header436.preheader ], [ %indvars.iv.next1074, %polly.loop_exit446 ]
  %polly.indvar440 = phi i64 [ 0, %polly.loop_header436.preheader ], [ %polly.indvar_next441, %polly.loop_exit446 ]
  %290 = shl i64 %polly.indvar440, 7
  %291 = add i64 %261, %290
  %smax1501 = call i64 @llvm.smax.i64(i64 %291, i64 0)
  %292 = mul i64 %polly.indvar440, -128
  %293 = add i64 %262, %292
  %294 = add i64 %smax1501, %293
  %295 = shl i64 %polly.indvar440, 10
  %296 = shl i64 %polly.indvar440, 7
  %297 = add i64 %264, %296
  %smax1487 = call i64 @llvm.smax.i64(i64 %297, i64 0)
  %298 = add nuw i64 %263, %smax1487
  %299 = mul i64 %298, 9600
  %300 = add i64 %295, %299
  %301 = or i64 %295, 8
  %302 = add i64 %301, %299
  %303 = mul i64 %polly.indvar440, -128
  %304 = add i64 %263, %303
  %305 = add i64 %smax1487, %304
  %306 = shl i64 %polly.indvar440, 7
  %307 = add i64 %265, %306
  %smax1469 = call i64 @llvm.smax.i64(i64 %307, i64 0)
  %308 = mul i64 %polly.indvar440, -128
  %309 = add i64 %266, %308
  %310 = add i64 %smax1469, %309
  %311 = shl i64 %polly.indvar440, 10
  %312 = shl i64 %polly.indvar440, 7
  %313 = add i64 %268, %312
  %smax1454 = call i64 @llvm.smax.i64(i64 %313, i64 0)
  %314 = add nuw i64 %267, %smax1454
  %315 = mul i64 %314, 9600
  %316 = add i64 %311, %315
  %317 = or i64 %311, 8
  %318 = add i64 %317, %315
  %319 = mul i64 %polly.indvar440, -128
  %320 = add i64 %267, %319
  %321 = add i64 %smax1454, %320
  %322 = shl i64 %polly.indvar440, 7
  %323 = add i64 %269, %322
  %smax1436 = call i64 @llvm.smax.i64(i64 %323, i64 0)
  %324 = mul i64 %polly.indvar440, -128
  %325 = add i64 %270, %324
  %326 = add i64 %smax1436, %325
  %327 = shl i64 %polly.indvar440, 10
  %328 = shl i64 %polly.indvar440, 7
  %329 = add i64 %272, %328
  %smax1421 = call i64 @llvm.smax.i64(i64 %329, i64 0)
  %330 = add nuw i64 %271, %smax1421
  %331 = mul i64 %330, 9600
  %332 = add i64 %327, %331
  %333 = or i64 %327, 8
  %334 = add i64 %333, %331
  %335 = mul i64 %polly.indvar440, -128
  %336 = add i64 %271, %335
  %337 = add i64 %smax1421, %336
  %338 = shl i64 %polly.indvar440, 7
  %339 = add i64 %273, %338
  %smax1401 = call i64 @llvm.smax.i64(i64 %339, i64 0)
  %340 = mul i64 %polly.indvar440, -128
  %341 = add i64 %274, %340
  %342 = add i64 %smax1401, %341
  %343 = shl nsw i64 %polly.indvar440, 7
  %344 = add nsw i64 %343, %278
  %345 = icmp sgt i64 %344, 0
  %346 = select i1 %345, i64 %344, i64 0
  %polly.loop_guard447.not = icmp sgt i64 %346, %281
  br i1 %polly.loop_guard447.not, label %polly.loop_exit446, label %polly.loop_header444.preheader

polly.loop_header444.preheader:                   ; preds = %polly.loop_header436
  %smax1075 = call i64 @llvm.smax.i64(i64 %indvars.iv1073, i64 0)
  %347 = add i64 %smax1075, %indvars.iv1078
  %348 = sub nsw i64 %282, %343
  %349 = add nuw nsw i64 %343, 128
  br label %polly.loop_header444

polly.loop_exit446:                               ; preds = %polly.loop_exit482, %polly.loop_header436
  %polly.indvar_next441 = add nuw nsw i64 %polly.indvar440, 1
  %indvars.iv.next1074 = add nsw i64 %indvars.iv1073, 128
  %indvars.iv.next1079 = add nsw i64 %indvars.iv1078, -128
  %exitcond1090.not = icmp eq i64 %polly.indvar_next441, %276
  br i1 %exitcond1090.not, label %polly.loop_exit438, label %polly.loop_header436

polly.loop_header444:                             ; preds = %polly.loop_header444.preheader, %polly.loop_exit482
  %indvar1402 = phi i64 [ 0, %polly.loop_header444.preheader ], [ %indvar.next1403, %polly.loop_exit482 ]
  %indvars.iv1080 = phi i64 [ %347, %polly.loop_header444.preheader ], [ %indvars.iv.next1081, %polly.loop_exit482 ]
  %polly.indvar448 = phi i64 [ %346, %polly.loop_header444.preheader ], [ %polly.indvar_next449, %polly.loop_exit482 ]
  %350 = add i64 %294, %indvar1402
  %smin1502 = call i64 @llvm.smin.i64(i64 %350, i64 127)
  %351 = add nsw i64 %smin1502, 1
  %352 = mul i64 %indvar1402, 9600
  %353 = add i64 %300, %352
  %scevgep1488 = getelementptr i8, i8* %call, i64 %353
  %354 = add i64 %302, %352
  %scevgep1489 = getelementptr i8, i8* %call, i64 %354
  %355 = add i64 %305, %indvar1402
  %smin1490 = call i64 @llvm.smin.i64(i64 %355, i64 127)
  %356 = shl i64 %smin1490, 3
  %scevgep1491 = getelementptr i8, i8* %scevgep1489, i64 %356
  %scevgep1493 = getelementptr i8, i8* %scevgep1492, i64 %356
  %357 = add i64 %310, %indvar1402
  %smin1470 = call i64 @llvm.smin.i64(i64 %357, i64 127)
  %358 = add nsw i64 %smin1470, 1
  %359 = mul i64 %indvar1402, 9600
  %360 = add i64 %316, %359
  %scevgep1455 = getelementptr i8, i8* %call, i64 %360
  %361 = add i64 %318, %359
  %scevgep1456 = getelementptr i8, i8* %call, i64 %361
  %362 = add i64 %321, %indvar1402
  %smin1457 = call i64 @llvm.smin.i64(i64 %362, i64 127)
  %363 = shl i64 %smin1457, 3
  %scevgep1458 = getelementptr i8, i8* %scevgep1456, i64 %363
  %scevgep1461 = getelementptr i8, i8* %scevgep1460, i64 %363
  %364 = add i64 %326, %indvar1402
  %smin1437 = call i64 @llvm.smin.i64(i64 %364, i64 127)
  %365 = add nsw i64 %smin1437, 1
  %366 = mul i64 %indvar1402, 9600
  %367 = add i64 %332, %366
  %scevgep1422 = getelementptr i8, i8* %call, i64 %367
  %368 = add i64 %334, %366
  %scevgep1423 = getelementptr i8, i8* %call, i64 %368
  %369 = add i64 %337, %indvar1402
  %smin1424 = call i64 @llvm.smin.i64(i64 %369, i64 127)
  %370 = shl i64 %smin1424, 3
  %scevgep1425 = getelementptr i8, i8* %scevgep1423, i64 %370
  %scevgep1428 = getelementptr i8, i8* %scevgep1427, i64 %370
  %371 = add i64 %342, %indvar1402
  %smin1404 = call i64 @llvm.smin.i64(i64 %371, i64 127)
  %372 = add nsw i64 %smin1404, 1
  %smin1085 = call i64 @llvm.smin.i64(i64 %indvars.iv1080, i64 127)
  %373 = add nsw i64 %polly.indvar448, %348
  %polly.loop_guard4611159 = icmp sgt i64 %373, -1
  %374 = add nuw nsw i64 %polly.indvar448, %282
  %.not932 = icmp ult i64 %374, %349
  %polly.access.mul.call1474 = mul nsw i64 %374, 1000
  %375 = add nuw i64 %polly.access.mul.call1474, %283
  br i1 %polly.loop_guard4611159, label %polly.loop_header458.us, label %polly.loop_header444.split

polly.loop_header458.us:                          ; preds = %polly.loop_header444, %polly.loop_header458.us
  %polly.indvar462.us = phi i64 [ %polly.indvar_next463.us, %polly.loop_header458.us ], [ 0, %polly.loop_header444 ]
  %376 = add nuw nsw i64 %polly.indvar462.us, %343
  %polly.access.mul.call1466.us = mul nuw nsw i64 %376, 1000
  %polly.access.add.call1467.us = add nuw nsw i64 %283, %polly.access.mul.call1466.us
  %polly.access.call1468.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us
  %polly.access.call1468.load.us = load double, double* %polly.access.call1468.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.indvar462.us
  store double %polly.access.call1468.load.us, double* %polly.access.Packed_MemRef_call1305.us, align 8
  %polly.indvar_next463.us = add nuw nsw i64 %polly.indvar462.us, 1
  %exitcond1083.not = icmp eq i64 %polly.indvar462.us, %smin1085
  br i1 %exitcond1083.not, label %polly.cond469.loopexit.us, label %polly.loop_header458.us

polly.then471.us:                                 ; preds = %polly.cond469.loopexit.us
  %polly.access.call1476.us = getelementptr double, double* %polly.access.cast.call1730, i64 %375
  %polly.access.call1476.load.us = load double, double* %polly.access.call1476.us, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305479.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %373
  store double %polly.access.call1476.load.us, double* %polly.access.Packed_MemRef_call1305479.us, align 8
  br label %polly.loop_header458.us.1.preheader

polly.cond469.loopexit.us:                        ; preds = %polly.loop_header458.us
  br i1 %.not932, label %polly.loop_header458.us.1.preheader, label %polly.then471.us

polly.loop_header458.us.1.preheader:              ; preds = %polly.then471.us, %polly.cond469.loopexit.us
  br label %polly.loop_header458.us.1

polly.loop_header444.split:                       ; preds = %polly.loop_header444
  br i1 %.not932, label %polly.loop_exit482, label %polly.loop_header451.preheader

polly.loop_header451.preheader:                   ; preds = %polly.loop_header444.split
  %polly.access.call1476 = getelementptr double, double* %polly.access.cast.call1730, i64 %375
  %polly.access.call1476.load = load double, double* %polly.access.call1476, align 8, !alias.scope !95, !noalias !102
  %polly.access.Packed_MemRef_call1305479 = getelementptr double, double* %Packed_MemRef_call1305, i64 %373
  store double %polly.access.call1476.load, double* %polly.access.Packed_MemRef_call1305479, align 8
  %polly.access.add.call1475.1 = or i64 %375, 1
  %polly.access.call1476.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.1
  %polly.access.call1476.load.1 = load double, double* %polly.access.call1476.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.1 = add nsw i64 %373, 1200
  %polly.access.Packed_MemRef_call1305479.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.1
  store double %polly.access.call1476.load.1, double* %polly.access.Packed_MemRef_call1305479.1, align 8
  %polly.access.add.call1475.2 = or i64 %375, 2
  %polly.access.call1476.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.2
  %polly.access.call1476.load.2 = load double, double* %polly.access.call1476.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.2 = add nsw i64 %373, 2400
  %polly.access.Packed_MemRef_call1305479.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.2
  store double %polly.access.call1476.load.2, double* %polly.access.Packed_MemRef_call1305479.2, align 8
  %polly.access.add.call1475.3 = or i64 %375, 3
  %polly.access.call1476.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.3
  %polly.access.call1476.load.3 = load double, double* %polly.access.call1476.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.3 = add nsw i64 %373, 3600
  %polly.access.Packed_MemRef_call1305479.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.3
  store double %polly.access.call1476.load.3, double* %polly.access.Packed_MemRef_call1305479.3, align 8
  br label %polly.loop_exit482

polly.loop_exit482:                               ; preds = %polly.loop_header487.us.3, %middle.block1398, %polly.loop_header444.split, %polly.loop_header451.preheader, %polly.loop_header480.preheader
  %polly.indvar_next449 = add nuw nsw i64 %polly.indvar448, 1
  %polly.loop_cond450.not.not = icmp ult i64 %polly.indvar448, %281
  %indvars.iv.next1081 = add i64 %indvars.iv1080, 1
  %indvar.next1403 = add i64 %indvar1402, 1
  br i1 %polly.loop_cond450.not.not, label %polly.loop_header444, label %polly.loop_exit446

polly.loop_header480.preheader:                   ; preds = %polly.cond469.loopexit.us.3, %polly.then471.us.3
  %377 = mul i64 %374, 9600
  br i1 %polly.loop_guard4611159, label %polly.loop_header480.us.preheader, label %polly.loop_exit482

polly.loop_header480.us.preheader:                ; preds = %polly.loop_header480.preheader
  %polly.access.add.Packed_MemRef_call2307499.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us, %374
  %polly.access.Packed_MemRef_call2307500.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us
  %_p_scalar_501.us = load double, double* %polly.access.Packed_MemRef_call2307500.us, align 8
  %polly.access.Packed_MemRef_call1305508.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %373
  %_p_scalar_509.us = load double, double* %polly.access.Packed_MemRef_call1305508.us, align 8
  %min.iters.check1503 = icmp ult i64 %351, 4
  br i1 %min.iters.check1503, label %polly.loop_header487.us.preheader, label %vector.memcheck1486

vector.memcheck1486:                              ; preds = %polly.loop_header480.us.preheader
  %bound01494 = icmp ult i8* %scevgep1488, %scevgep1493
  %bound11495 = icmp ult i8* %malloccall304, %scevgep1491
  %found.conflict1496 = and i1 %bound01494, %bound11495
  br i1 %found.conflict1496, label %polly.loop_header487.us.preheader, label %vector.ph1504

vector.ph1504:                                    ; preds = %vector.memcheck1486
  %n.vec1506 = and i64 %351, -4
  %broadcast.splatinsert1512 = insertelement <4 x double> poison, double %_p_scalar_501.us, i32 0
  %broadcast.splat1513 = shufflevector <4 x double> %broadcast.splatinsert1512, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1515 = insertelement <4 x double> poison, double %_p_scalar_509.us, i32 0
  %broadcast.splat1516 = shufflevector <4 x double> %broadcast.splatinsert1515, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1500

vector.body1500:                                  ; preds = %vector.body1500, %vector.ph1504
  %index1507 = phi i64 [ 0, %vector.ph1504 ], [ %index.next1508, %vector.body1500 ]
  %378 = add nuw nsw i64 %index1507, %343
  %379 = getelementptr double, double* %Packed_MemRef_call1305, i64 %index1507
  %380 = bitcast double* %379 to <4 x double>*
  %wide.load1511 = load <4 x double>, <4 x double>* %380, align 8, !alias.scope !103
  %381 = fmul fast <4 x double> %broadcast.splat1513, %wide.load1511
  %382 = add nuw nsw i64 %378, %polly.access.mul.Packed_MemRef_call2307498.us
  %383 = getelementptr double, double* %Packed_MemRef_call2307, i64 %382
  %384 = bitcast double* %383 to <4 x double>*
  %wide.load1514 = load <4 x double>, <4 x double>* %384, align 8
  %385 = fmul fast <4 x double> %broadcast.splat1516, %wide.load1514
  %386 = shl i64 %378, 3
  %387 = add i64 %386, %377
  %388 = getelementptr i8, i8* %call, i64 %387
  %389 = bitcast i8* %388 to <4 x double>*
  %wide.load1517 = load <4 x double>, <4 x double>* %389, align 8, !alias.scope !106, !noalias !108
  %390 = fadd fast <4 x double> %385, %381
  %391 = fmul fast <4 x double> %390, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %392 = fadd fast <4 x double> %391, %wide.load1517
  %393 = bitcast i8* %388 to <4 x double>*
  store <4 x double> %392, <4 x double>* %393, align 8, !alias.scope !106, !noalias !108
  %index.next1508 = add i64 %index1507, 4
  %394 = icmp eq i64 %index.next1508, %n.vec1506
  br i1 %394, label %middle.block1498, label %vector.body1500, !llvm.loop !109

middle.block1498:                                 ; preds = %vector.body1500
  %cmp.n1510 = icmp eq i64 %351, %n.vec1506
  br i1 %cmp.n1510, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us.preheader

polly.loop_header487.us.preheader:                ; preds = %vector.memcheck1486, %polly.loop_header480.us.preheader, %middle.block1498
  %polly.indvar491.us.ph = phi i64 [ 0, %vector.memcheck1486 ], [ 0, %polly.loop_header480.us.preheader ], [ %n.vec1506, %middle.block1498 ]
  br label %polly.loop_header487.us

polly.loop_header487.us:                          ; preds = %polly.loop_header487.us.preheader, %polly.loop_header487.us
  %polly.indvar491.us = phi i64 [ %polly.indvar_next492.us, %polly.loop_header487.us ], [ %polly.indvar491.us.ph, %polly.loop_header487.us.preheader ]
  %395 = add nuw nsw i64 %polly.indvar491.us, %343
  %polly.access.Packed_MemRef_call1305496.us = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.indvar491.us
  %_p_scalar_497.us = load double, double* %polly.access.Packed_MemRef_call1305496.us, align 8
  %p_mul27.i73.us = fmul fast double %_p_scalar_501.us, %_p_scalar_497.us
  %polly.access.add.Packed_MemRef_call2307503.us = add nuw nsw i64 %395, %polly.access.mul.Packed_MemRef_call2307498.us
  %polly.access.Packed_MemRef_call2307504.us = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us
  %_p_scalar_505.us = load double, double* %polly.access.Packed_MemRef_call2307504.us, align 8
  %p_mul37.i75.us = fmul fast double %_p_scalar_509.us, %_p_scalar_505.us
  %396 = shl i64 %395, 3
  %397 = add i64 %396, %377
  %scevgep510.us = getelementptr i8, i8* %call, i64 %397
  %scevgep510511.us = bitcast i8* %scevgep510.us to double*
  %_p_scalar_512.us = load double, double* %scevgep510511.us, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_512.us
  store double %p_add42.i79.us, double* %scevgep510511.us, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us = add nuw nsw i64 %polly.indvar491.us, 1
  %exitcond1086.not = icmp eq i64 %polly.indvar491.us, %smin1085
  br i1 %exitcond1086.not, label %polly.loop_exit489.loopexit.us, label %polly.loop_header487.us, !llvm.loop !110

polly.loop_exit489.loopexit.us:                   ; preds = %polly.loop_header487.us, %middle.block1498
  %polly.access.add.Packed_MemRef_call2307499.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.1, %374
  %polly.access.Packed_MemRef_call2307500.us.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.1
  %_p_scalar_501.us.1 = load double, double* %polly.access.Packed_MemRef_call2307500.us.1, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.1 = add nsw i64 %373, 1200
  %polly.access.Packed_MemRef_call1305508.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.1
  %_p_scalar_509.us.1 = load double, double* %polly.access.Packed_MemRef_call1305508.us.1, align 8
  %min.iters.check1471 = icmp ult i64 %358, 4
  br i1 %min.iters.check1471, label %polly.loop_header487.us.1.preheader, label %vector.memcheck1453

vector.memcheck1453:                              ; preds = %polly.loop_exit489.loopexit.us
  %bound01462 = icmp ult i8* %scevgep1455, %scevgep1461
  %bound11463 = icmp ult i8* %scevgep1459, %scevgep1458
  %found.conflict1464 = and i1 %bound01462, %bound11463
  br i1 %found.conflict1464, label %polly.loop_header487.us.1.preheader, label %vector.ph1472

vector.ph1472:                                    ; preds = %vector.memcheck1453
  %n.vec1474 = and i64 %358, -4
  %broadcast.splatinsert1480 = insertelement <4 x double> poison, double %_p_scalar_501.us.1, i32 0
  %broadcast.splat1481 = shufflevector <4 x double> %broadcast.splatinsert1480, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1483 = insertelement <4 x double> poison, double %_p_scalar_509.us.1, i32 0
  %broadcast.splat1484 = shufflevector <4 x double> %broadcast.splatinsert1483, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1468

vector.body1468:                                  ; preds = %vector.body1468, %vector.ph1472
  %index1475 = phi i64 [ 0, %vector.ph1472 ], [ %index.next1476, %vector.body1468 ]
  %398 = add nuw nsw i64 %index1475, %343
  %399 = add nuw nsw i64 %index1475, 1200
  %400 = getelementptr double, double* %Packed_MemRef_call1305, i64 %399
  %401 = bitcast double* %400 to <4 x double>*
  %wide.load1479 = load <4 x double>, <4 x double>* %401, align 8, !alias.scope !111
  %402 = fmul fast <4 x double> %broadcast.splat1481, %wide.load1479
  %403 = add nuw nsw i64 %398, %polly.access.mul.Packed_MemRef_call2307498.us.1
  %404 = getelementptr double, double* %Packed_MemRef_call2307, i64 %403
  %405 = bitcast double* %404 to <4 x double>*
  %wide.load1482 = load <4 x double>, <4 x double>* %405, align 8
  %406 = fmul fast <4 x double> %broadcast.splat1484, %wide.load1482
  %407 = shl i64 %398, 3
  %408 = add i64 %407, %377
  %409 = getelementptr i8, i8* %call, i64 %408
  %410 = bitcast i8* %409 to <4 x double>*
  %wide.load1485 = load <4 x double>, <4 x double>* %410, align 8, !alias.scope !114, !noalias !116
  %411 = fadd fast <4 x double> %406, %402
  %412 = fmul fast <4 x double> %411, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %413 = fadd fast <4 x double> %412, %wide.load1485
  %414 = bitcast i8* %409 to <4 x double>*
  store <4 x double> %413, <4 x double>* %414, align 8, !alias.scope !114, !noalias !116
  %index.next1476 = add i64 %index1475, 4
  %415 = icmp eq i64 %index.next1476, %n.vec1474
  br i1 %415, label %middle.block1466, label %vector.body1468, !llvm.loop !117

middle.block1466:                                 ; preds = %vector.body1468
  %cmp.n1478 = icmp eq i64 %358, %n.vec1474
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
  %416 = add i64 %indvar, 1
  %417 = mul nuw nsw i64 %polly.indvar606, 9600
  %scevgep615 = getelementptr i8, i8* %call, i64 %417
  %min.iters.check1243 = icmp ult i64 %416, 4
  br i1 %min.iters.check1243, label %polly.loop_header609.preheader, label %vector.ph1244

vector.ph1244:                                    ; preds = %polly.loop_header603
  %n.vec1246 = and i64 %416, -4
  br label %vector.body1242

vector.body1242:                                  ; preds = %vector.body1242, %vector.ph1244
  %index1247 = phi i64 [ 0, %vector.ph1244 ], [ %index.next1248, %vector.body1242 ]
  %418 = shl nuw nsw i64 %index1247, 3
  %419 = getelementptr i8, i8* %scevgep615, i64 %418
  %420 = bitcast i8* %419 to <4 x double>*
  %wide.load1251 = load <4 x double>, <4 x double>* %420, align 8, !alias.scope !118, !noalias !120
  %421 = fmul fast <4 x double> %wide.load1251, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %422 = bitcast i8* %419 to <4 x double>*
  store <4 x double> %421, <4 x double>* %422, align 8, !alias.scope !118, !noalias !120
  %index.next1248 = add i64 %index1247, 4
  %423 = icmp eq i64 %index.next1248, %n.vec1246
  br i1 %423, label %middle.block1240, label %vector.body1242, !llvm.loop !125

middle.block1240:                                 ; preds = %vector.body1242
  %cmp.n1250 = icmp eq i64 %416, %n.vec1246
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
  %424 = shl nuw nsw i64 %polly.indvar612, 3
  %scevgep616 = getelementptr i8, i8* %scevgep615, i64 %424
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
  %indvars.iv1115 = phi i64 [ %indvars.iv.next1116, %polly.loop_exit643 ], [ 1, %polly.loop_header635.preheader ]
  %indvars.iv1103 = phi i64 [ %indvars.iv.next1104, %polly.loop_exit643 ], [ 0, %polly.loop_header635.preheader ]
  %indvars.iv1098 = phi i64 [ %indvars.iv.next1099, %polly.loop_exit643 ], [ 0, %polly.loop_header635.preheader ]
  %polly.indvar638 = phi i64 [ %441, %polly.loop_exit643 ], [ 0, %polly.loop_header635.preheader ]
  %425 = mul nsw i64 %polly.indvar638, -96
  %426 = mul nuw nsw i64 %polly.indvar638, 96
  %427 = mul nuw nsw i64 %polly.indvar638, 96
  %428 = mul nsw i64 %polly.indvar638, -96
  %429 = mul nsw i64 %polly.indvar638, -96
  %430 = mul nuw nsw i64 %polly.indvar638, 96
  %431 = mul nuw nsw i64 %polly.indvar638, 96
  %432 = mul nsw i64 %polly.indvar638, -96
  %433 = mul nsw i64 %polly.indvar638, -96
  %434 = mul nuw nsw i64 %polly.indvar638, 96
  %435 = mul nuw nsw i64 %polly.indvar638, 96
  %436 = mul nsw i64 %polly.indvar638, -96
  %437 = mul nsw i64 %polly.indvar638, -96
  %438 = mul nuw nsw i64 %polly.indvar638, 96
  %439 = lshr i64 %indvars.iv1115, 2
  %440 = sub nsw i64 %indvars.iv1115, %439
  %441 = add nuw nsw i64 %polly.indvar638, 1
  %pexp.p_div_q647 = lshr i64 %441, 2
  %polly.loop_guard652.not = icmp ult i64 %polly.indvar638, %pexp.p_div_q647
  %442 = mul nsw i64 %polly.indvar638, -96
  %443 = icmp slt i64 %442, -1104
  %444 = select i1 %443, i64 %442, i64 -1104
  %445 = add nsw i64 %444, 1199
  %446 = mul nuw nsw i64 %polly.indvar638, 96
  br label %polly.loop_header641

polly.loop_exit643:                               ; preds = %polly.loop_exit651
  %indvars.iv.next1099 = add nsw i64 %indvars.iv1098, -96
  %indvars.iv.next1104 = add nuw nsw i64 %indvars.iv1103, 96
  %indvars.iv.next1116 = add nuw nsw i64 %indvars.iv1115, 1
  %exitcond1119.not = icmp eq i64 %441, 13
  br i1 %exitcond1119.not, label %polly.exiting516, label %polly.loop_header635

polly.loop_header641:                             ; preds = %polly.loop_exit651, %polly.loop_header635
  %polly.indvar644 = phi i64 [ 0, %polly.loop_header635 ], [ %polly.indvar_next645, %polly.loop_exit651 ]
  br i1 %polly.loop_guard652.not, label %polly.loop_exit651, label %polly.loop_header649.preheader

polly.loop_header649.preheader:                   ; preds = %polly.loop_header641
  %447 = shl nsw i64 %polly.indvar644, 2
  %448 = or i64 %447, 1
  %449 = or i64 %447, 2
  %450 = or i64 %447, 3
  %polly.access.mul.Packed_MemRef_call2520711.us = mul nsw i64 %polly.indvar644, 4800
  %451 = or i64 %447, 1
  %polly.access.mul.Packed_MemRef_call2520711.us.1 = mul nuw nsw i64 %451, 1200
  %452 = or i64 %447, 2
  %polly.access.mul.Packed_MemRef_call2520711.us.2 = mul nuw nsw i64 %452, 1200
  %453 = or i64 %447, 3
  %polly.access.mul.Packed_MemRef_call2520711.us.3 = mul nuw nsw i64 %453, 1200
  br label %polly.loop_header649

polly.loop_exit651:                               ; preds = %polly.loop_exit659, %polly.loop_header641
  %polly.indvar_next645 = add nuw nsw i64 %polly.indvar644, 1
  %exitcond1118.not = icmp eq i64 %polly.indvar_next645, 250
  br i1 %exitcond1118.not, label %polly.loop_exit643, label %polly.loop_header641

polly.loop_header649:                             ; preds = %polly.loop_header649.preheader, %polly.loop_exit659
  %indvars.iv1105 = phi i64 [ %indvars.iv1103, %polly.loop_header649.preheader ], [ %indvars.iv.next1106, %polly.loop_exit659 ]
  %indvars.iv1100 = phi i64 [ %indvars.iv1098, %polly.loop_header649.preheader ], [ %indvars.iv.next1101, %polly.loop_exit659 ]
  %polly.indvar653 = phi i64 [ 0, %polly.loop_header649.preheader ], [ %polly.indvar_next654, %polly.loop_exit659 ]
  %454 = shl i64 %polly.indvar653, 7
  %455 = add i64 %425, %454
  %smax1355 = call i64 @llvm.smax.i64(i64 %455, i64 0)
  %456 = mul i64 %polly.indvar653, -128
  %457 = add i64 %426, %456
  %458 = add i64 %smax1355, %457
  %459 = shl i64 %polly.indvar653, 10
  %460 = shl i64 %polly.indvar653, 7
  %461 = add i64 %428, %460
  %smax1341 = call i64 @llvm.smax.i64(i64 %461, i64 0)
  %462 = add nuw i64 %427, %smax1341
  %463 = mul i64 %462, 9600
  %464 = add i64 %459, %463
  %465 = or i64 %459, 8
  %466 = add i64 %465, %463
  %467 = mul i64 %polly.indvar653, -128
  %468 = add i64 %427, %467
  %469 = add i64 %smax1341, %468
  %470 = shl i64 %polly.indvar653, 7
  %471 = add i64 %429, %470
  %smax1323 = call i64 @llvm.smax.i64(i64 %471, i64 0)
  %472 = mul i64 %polly.indvar653, -128
  %473 = add i64 %430, %472
  %474 = add i64 %smax1323, %473
  %475 = shl i64 %polly.indvar653, 10
  %476 = shl i64 %polly.indvar653, 7
  %477 = add i64 %432, %476
  %smax1308 = call i64 @llvm.smax.i64(i64 %477, i64 0)
  %478 = add nuw i64 %431, %smax1308
  %479 = mul i64 %478, 9600
  %480 = add i64 %475, %479
  %481 = or i64 %475, 8
  %482 = add i64 %481, %479
  %483 = mul i64 %polly.indvar653, -128
  %484 = add i64 %431, %483
  %485 = add i64 %smax1308, %484
  %486 = shl i64 %polly.indvar653, 7
  %487 = add i64 %433, %486
  %smax1290 = call i64 @llvm.smax.i64(i64 %487, i64 0)
  %488 = mul i64 %polly.indvar653, -128
  %489 = add i64 %434, %488
  %490 = add i64 %smax1290, %489
  %491 = shl i64 %polly.indvar653, 10
  %492 = shl i64 %polly.indvar653, 7
  %493 = add i64 %436, %492
  %smax1275 = call i64 @llvm.smax.i64(i64 %493, i64 0)
  %494 = add nuw i64 %435, %smax1275
  %495 = mul i64 %494, 9600
  %496 = add i64 %491, %495
  %497 = or i64 %491, 8
  %498 = add i64 %497, %495
  %499 = mul i64 %polly.indvar653, -128
  %500 = add i64 %435, %499
  %501 = add i64 %smax1275, %500
  %502 = shl i64 %polly.indvar653, 7
  %503 = add i64 %437, %502
  %smax1255 = call i64 @llvm.smax.i64(i64 %503, i64 0)
  %504 = mul i64 %polly.indvar653, -128
  %505 = add i64 %438, %504
  %506 = add i64 %smax1255, %505
  %507 = shl nsw i64 %polly.indvar653, 7
  %508 = add nsw i64 %507, %442
  %509 = icmp sgt i64 %508, 0
  %510 = select i1 %509, i64 %508, i64 0
  %polly.loop_guard660.not = icmp sgt i64 %510, %445
  br i1 %polly.loop_guard660.not, label %polly.loop_exit659, label %polly.loop_header657.preheader

polly.loop_header657.preheader:                   ; preds = %polly.loop_header649
  %smax1102 = call i64 @llvm.smax.i64(i64 %indvars.iv1100, i64 0)
  %511 = add i64 %smax1102, %indvars.iv1105
  %512 = sub nsw i64 %446, %507
  %513 = add nuw nsw i64 %507, 128
  br label %polly.loop_header657

polly.loop_exit659:                               ; preds = %polly.loop_exit695, %polly.loop_header649
  %polly.indvar_next654 = add nuw nsw i64 %polly.indvar653, 1
  %indvars.iv.next1101 = add nsw i64 %indvars.iv1100, 128
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, -128
  %exitcond1117.not = icmp eq i64 %polly.indvar_next654, %440
  br i1 %exitcond1117.not, label %polly.loop_exit651, label %polly.loop_header649

polly.loop_header657:                             ; preds = %polly.loop_header657.preheader, %polly.loop_exit695
  %indvar1256 = phi i64 [ 0, %polly.loop_header657.preheader ], [ %indvar.next1257, %polly.loop_exit695 ]
  %indvars.iv1107 = phi i64 [ %511, %polly.loop_header657.preheader ], [ %indvars.iv.next1108, %polly.loop_exit695 ]
  %polly.indvar661 = phi i64 [ %510, %polly.loop_header657.preheader ], [ %polly.indvar_next662, %polly.loop_exit695 ]
  %514 = add i64 %458, %indvar1256
  %smin1356 = call i64 @llvm.smin.i64(i64 %514, i64 127)
  %515 = add nsw i64 %smin1356, 1
  %516 = mul i64 %indvar1256, 9600
  %517 = add i64 %464, %516
  %scevgep1342 = getelementptr i8, i8* %call, i64 %517
  %518 = add i64 %466, %516
  %scevgep1343 = getelementptr i8, i8* %call, i64 %518
  %519 = add i64 %469, %indvar1256
  %smin1344 = call i64 @llvm.smin.i64(i64 %519, i64 127)
  %520 = shl i64 %smin1344, 3
  %scevgep1345 = getelementptr i8, i8* %scevgep1343, i64 %520
  %scevgep1347 = getelementptr i8, i8* %scevgep1346, i64 %520
  %521 = add i64 %474, %indvar1256
  %smin1324 = call i64 @llvm.smin.i64(i64 %521, i64 127)
  %522 = add nsw i64 %smin1324, 1
  %523 = mul i64 %indvar1256, 9600
  %524 = add i64 %480, %523
  %scevgep1309 = getelementptr i8, i8* %call, i64 %524
  %525 = add i64 %482, %523
  %scevgep1310 = getelementptr i8, i8* %call, i64 %525
  %526 = add i64 %485, %indvar1256
  %smin1311 = call i64 @llvm.smin.i64(i64 %526, i64 127)
  %527 = shl i64 %smin1311, 3
  %scevgep1312 = getelementptr i8, i8* %scevgep1310, i64 %527
  %scevgep1315 = getelementptr i8, i8* %scevgep1314, i64 %527
  %528 = add i64 %490, %indvar1256
  %smin1291 = call i64 @llvm.smin.i64(i64 %528, i64 127)
  %529 = add nsw i64 %smin1291, 1
  %530 = mul i64 %indvar1256, 9600
  %531 = add i64 %496, %530
  %scevgep1276 = getelementptr i8, i8* %call, i64 %531
  %532 = add i64 %498, %530
  %scevgep1277 = getelementptr i8, i8* %call, i64 %532
  %533 = add i64 %501, %indvar1256
  %smin1278 = call i64 @llvm.smin.i64(i64 %533, i64 127)
  %534 = shl i64 %smin1278, 3
  %scevgep1279 = getelementptr i8, i8* %scevgep1277, i64 %534
  %scevgep1282 = getelementptr i8, i8* %scevgep1281, i64 %534
  %535 = add i64 %506, %indvar1256
  %smin1258 = call i64 @llvm.smin.i64(i64 %535, i64 127)
  %536 = add nsw i64 %smin1258, 1
  %smin1112 = call i64 @llvm.smin.i64(i64 %indvars.iv1107, i64 127)
  %537 = add nsw i64 %polly.indvar661, %512
  %polly.loop_guard6741160 = icmp sgt i64 %537, -1
  %538 = add nuw nsw i64 %polly.indvar661, %446
  %.not933 = icmp ult i64 %538, %513
  %polly.access.mul.call1687 = mul nsw i64 %538, 1000
  %539 = add nuw i64 %polly.access.mul.call1687, %447
  br i1 %polly.loop_guard6741160, label %polly.loop_header671.us, label %polly.loop_header657.split

polly.loop_header671.us:                          ; preds = %polly.loop_header657, %polly.loop_header671.us
  %polly.indvar675.us = phi i64 [ %polly.indvar_next676.us, %polly.loop_header671.us ], [ 0, %polly.loop_header657 ]
  %540 = add nuw nsw i64 %polly.indvar675.us, %507
  %polly.access.mul.call1679.us = mul nuw nsw i64 %540, 1000
  %polly.access.add.call1680.us = add nuw nsw i64 %447, %polly.access.mul.call1679.us
  %polly.access.call1681.us = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us
  %polly.access.call1681.load.us = load double, double* %polly.access.call1681.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.indvar675.us
  store double %polly.access.call1681.load.us, double* %polly.access.Packed_MemRef_call1518.us, align 8
  %polly.indvar_next676.us = add nuw nsw i64 %polly.indvar675.us, 1
  %exitcond1110.not = icmp eq i64 %polly.indvar675.us, %smin1112
  br i1 %exitcond1110.not, label %polly.cond682.loopexit.us, label %polly.loop_header671.us

polly.then684.us:                                 ; preds = %polly.cond682.loopexit.us
  %polly.access.call1689.us = getelementptr double, double* %polly.access.cast.call1730, i64 %539
  %polly.access.call1689.load.us = load double, double* %polly.access.call1689.us, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518692.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %537
  store double %polly.access.call1689.load.us, double* %polly.access.Packed_MemRef_call1518692.us, align 8
  br label %polly.loop_header671.us.1.preheader

polly.cond682.loopexit.us:                        ; preds = %polly.loop_header671.us
  br i1 %.not933, label %polly.loop_header671.us.1.preheader, label %polly.then684.us

polly.loop_header671.us.1.preheader:              ; preds = %polly.then684.us, %polly.cond682.loopexit.us
  br label %polly.loop_header671.us.1

polly.loop_header657.split:                       ; preds = %polly.loop_header657
  br i1 %.not933, label %polly.loop_exit695, label %polly.loop_header664.preheader

polly.loop_header664.preheader:                   ; preds = %polly.loop_header657.split
  %polly.access.call1689 = getelementptr double, double* %polly.access.cast.call1730, i64 %539
  %polly.access.call1689.load = load double, double* %polly.access.call1689, align 8, !alias.scope !121, !noalias !128
  %polly.access.Packed_MemRef_call1518692 = getelementptr double, double* %Packed_MemRef_call1518, i64 %537
  store double %polly.access.call1689.load, double* %polly.access.Packed_MemRef_call1518692, align 8
  %polly.access.add.call1688.1 = or i64 %539, 1
  %polly.access.call1689.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.1
  %polly.access.call1689.load.1 = load double, double* %polly.access.call1689.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.1 = add nsw i64 %537, 1200
  %polly.access.Packed_MemRef_call1518692.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.1
  store double %polly.access.call1689.load.1, double* %polly.access.Packed_MemRef_call1518692.1, align 8
  %polly.access.add.call1688.2 = or i64 %539, 2
  %polly.access.call1689.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.2
  %polly.access.call1689.load.2 = load double, double* %polly.access.call1689.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.2 = add nsw i64 %537, 2400
  %polly.access.Packed_MemRef_call1518692.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.2
  store double %polly.access.call1689.load.2, double* %polly.access.Packed_MemRef_call1518692.2, align 8
  %polly.access.add.call1688.3 = or i64 %539, 3
  %polly.access.call1689.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.3
  %polly.access.call1689.load.3 = load double, double* %polly.access.call1689.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.3 = add nsw i64 %537, 3600
  %polly.access.Packed_MemRef_call1518692.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.3
  store double %polly.access.call1689.load.3, double* %polly.access.Packed_MemRef_call1518692.3, align 8
  br label %polly.loop_exit695

polly.loop_exit695:                               ; preds = %polly.loop_header700.us.3, %middle.block1252, %polly.loop_header657.split, %polly.loop_header664.preheader, %polly.loop_header693.preheader
  %polly.indvar_next662 = add nuw nsw i64 %polly.indvar661, 1
  %polly.loop_cond663.not.not = icmp ult i64 %polly.indvar661, %445
  %indvars.iv.next1108 = add i64 %indvars.iv1107, 1
  %indvar.next1257 = add i64 %indvar1256, 1
  br i1 %polly.loop_cond663.not.not, label %polly.loop_header657, label %polly.loop_exit659

polly.loop_header693.preheader:                   ; preds = %polly.cond682.loopexit.us.3, %polly.then684.us.3
  %541 = mul i64 %538, 9600
  br i1 %polly.loop_guard6741160, label %polly.loop_header693.us.preheader, label %polly.loop_exit695

polly.loop_header693.us.preheader:                ; preds = %polly.loop_header693.preheader
  %polly.access.add.Packed_MemRef_call2520712.us = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us, %538
  %polly.access.Packed_MemRef_call2520713.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us
  %_p_scalar_714.us = load double, double* %polly.access.Packed_MemRef_call2520713.us, align 8
  %polly.access.Packed_MemRef_call1518721.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %537
  %_p_scalar_722.us = load double, double* %polly.access.Packed_MemRef_call1518721.us, align 8
  %min.iters.check1357 = icmp ult i64 %515, 4
  br i1 %min.iters.check1357, label %polly.loop_header700.us.preheader, label %vector.memcheck1340

vector.memcheck1340:                              ; preds = %polly.loop_header693.us.preheader
  %bound01348 = icmp ult i8* %scevgep1342, %scevgep1347
  %bound11349 = icmp ult i8* %malloccall517, %scevgep1345
  %found.conflict1350 = and i1 %bound01348, %bound11349
  br i1 %found.conflict1350, label %polly.loop_header700.us.preheader, label %vector.ph1358

vector.ph1358:                                    ; preds = %vector.memcheck1340
  %n.vec1360 = and i64 %515, -4
  %broadcast.splatinsert1366 = insertelement <4 x double> poison, double %_p_scalar_714.us, i32 0
  %broadcast.splat1367 = shufflevector <4 x double> %broadcast.splatinsert1366, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1369 = insertelement <4 x double> poison, double %_p_scalar_722.us, i32 0
  %broadcast.splat1370 = shufflevector <4 x double> %broadcast.splatinsert1369, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1354

vector.body1354:                                  ; preds = %vector.body1354, %vector.ph1358
  %index1361 = phi i64 [ 0, %vector.ph1358 ], [ %index.next1362, %vector.body1354 ]
  %542 = add nuw nsw i64 %index1361, %507
  %543 = getelementptr double, double* %Packed_MemRef_call1518, i64 %index1361
  %544 = bitcast double* %543 to <4 x double>*
  %wide.load1365 = load <4 x double>, <4 x double>* %544, align 8, !alias.scope !129
  %545 = fmul fast <4 x double> %broadcast.splat1367, %wide.load1365
  %546 = add nuw nsw i64 %542, %polly.access.mul.Packed_MemRef_call2520711.us
  %547 = getelementptr double, double* %Packed_MemRef_call2520, i64 %546
  %548 = bitcast double* %547 to <4 x double>*
  %wide.load1368 = load <4 x double>, <4 x double>* %548, align 8
  %549 = fmul fast <4 x double> %broadcast.splat1370, %wide.load1368
  %550 = shl i64 %542, 3
  %551 = add i64 %550, %541
  %552 = getelementptr i8, i8* %call, i64 %551
  %553 = bitcast i8* %552 to <4 x double>*
  %wide.load1371 = load <4 x double>, <4 x double>* %553, align 8, !alias.scope !132, !noalias !134
  %554 = fadd fast <4 x double> %549, %545
  %555 = fmul fast <4 x double> %554, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %556 = fadd fast <4 x double> %555, %wide.load1371
  %557 = bitcast i8* %552 to <4 x double>*
  store <4 x double> %556, <4 x double>* %557, align 8, !alias.scope !132, !noalias !134
  %index.next1362 = add i64 %index1361, 4
  %558 = icmp eq i64 %index.next1362, %n.vec1360
  br i1 %558, label %middle.block1352, label %vector.body1354, !llvm.loop !135

middle.block1352:                                 ; preds = %vector.body1354
  %cmp.n1364 = icmp eq i64 %515, %n.vec1360
  br i1 %cmp.n1364, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us.preheader

polly.loop_header700.us.preheader:                ; preds = %vector.memcheck1340, %polly.loop_header693.us.preheader, %middle.block1352
  %polly.indvar704.us.ph = phi i64 [ 0, %vector.memcheck1340 ], [ 0, %polly.loop_header693.us.preheader ], [ %n.vec1360, %middle.block1352 ]
  br label %polly.loop_header700.us

polly.loop_header700.us:                          ; preds = %polly.loop_header700.us.preheader, %polly.loop_header700.us
  %polly.indvar704.us = phi i64 [ %polly.indvar_next705.us, %polly.loop_header700.us ], [ %polly.indvar704.us.ph, %polly.loop_header700.us.preheader ]
  %559 = add nuw nsw i64 %polly.indvar704.us, %507
  %polly.access.Packed_MemRef_call1518709.us = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.indvar704.us
  %_p_scalar_710.us = load double, double* %polly.access.Packed_MemRef_call1518709.us, align 8
  %p_mul27.i.us = fmul fast double %_p_scalar_714.us, %_p_scalar_710.us
  %polly.access.add.Packed_MemRef_call2520716.us = add nuw nsw i64 %559, %polly.access.mul.Packed_MemRef_call2520711.us
  %polly.access.Packed_MemRef_call2520717.us = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us
  %_p_scalar_718.us = load double, double* %polly.access.Packed_MemRef_call2520717.us, align 8
  %p_mul37.i.us = fmul fast double %_p_scalar_722.us, %_p_scalar_718.us
  %560 = shl i64 %559, 3
  %561 = add i64 %560, %541
  %scevgep723.us = getelementptr i8, i8* %call, i64 %561
  %scevgep723724.us = bitcast i8* %scevgep723.us to double*
  %_p_scalar_725.us = load double, double* %scevgep723724.us, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_725.us
  store double %p_add42.i.us, double* %scevgep723724.us, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us = add nuw nsw i64 %polly.indvar704.us, 1
  %exitcond1113.not = icmp eq i64 %polly.indvar704.us, %smin1112
  br i1 %exitcond1113.not, label %polly.loop_exit702.loopexit.us, label %polly.loop_header700.us, !llvm.loop !136

polly.loop_exit702.loopexit.us:                   ; preds = %polly.loop_header700.us, %middle.block1352
  %polly.access.add.Packed_MemRef_call2520712.us.1 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.1, %538
  %polly.access.Packed_MemRef_call2520713.us.1 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.1
  %_p_scalar_714.us.1 = load double, double* %polly.access.Packed_MemRef_call2520713.us.1, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.1 = add nsw i64 %537, 1200
  %polly.access.Packed_MemRef_call1518721.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.1
  %_p_scalar_722.us.1 = load double, double* %polly.access.Packed_MemRef_call1518721.us.1, align 8
  %min.iters.check1325 = icmp ult i64 %522, 4
  br i1 %min.iters.check1325, label %polly.loop_header700.us.1.preheader, label %vector.memcheck1307

vector.memcheck1307:                              ; preds = %polly.loop_exit702.loopexit.us
  %bound01316 = icmp ult i8* %scevgep1309, %scevgep1315
  %bound11317 = icmp ult i8* %scevgep1313, %scevgep1312
  %found.conflict1318 = and i1 %bound01316, %bound11317
  br i1 %found.conflict1318, label %polly.loop_header700.us.1.preheader, label %vector.ph1326

vector.ph1326:                                    ; preds = %vector.memcheck1307
  %n.vec1328 = and i64 %522, -4
  %broadcast.splatinsert1334 = insertelement <4 x double> poison, double %_p_scalar_714.us.1, i32 0
  %broadcast.splat1335 = shufflevector <4 x double> %broadcast.splatinsert1334, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1337 = insertelement <4 x double> poison, double %_p_scalar_722.us.1, i32 0
  %broadcast.splat1338 = shufflevector <4 x double> %broadcast.splatinsert1337, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1322

vector.body1322:                                  ; preds = %vector.body1322, %vector.ph1326
  %index1329 = phi i64 [ 0, %vector.ph1326 ], [ %index.next1330, %vector.body1322 ]
  %562 = add nuw nsw i64 %index1329, %507
  %563 = add nuw nsw i64 %index1329, 1200
  %564 = getelementptr double, double* %Packed_MemRef_call1518, i64 %563
  %565 = bitcast double* %564 to <4 x double>*
  %wide.load1333 = load <4 x double>, <4 x double>* %565, align 8, !alias.scope !137
  %566 = fmul fast <4 x double> %broadcast.splat1335, %wide.load1333
  %567 = add nuw nsw i64 %562, %polly.access.mul.Packed_MemRef_call2520711.us.1
  %568 = getelementptr double, double* %Packed_MemRef_call2520, i64 %567
  %569 = bitcast double* %568 to <4 x double>*
  %wide.load1336 = load <4 x double>, <4 x double>* %569, align 8
  %570 = fmul fast <4 x double> %broadcast.splat1338, %wide.load1336
  %571 = shl i64 %562, 3
  %572 = add i64 %571, %541
  %573 = getelementptr i8, i8* %call, i64 %572
  %574 = bitcast i8* %573 to <4 x double>*
  %wide.load1339 = load <4 x double>, <4 x double>* %574, align 8, !alias.scope !140, !noalias !142
  %575 = fadd fast <4 x double> %570, %566
  %576 = fmul fast <4 x double> %575, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %577 = fadd fast <4 x double> %576, %wide.load1339
  %578 = bitcast i8* %573 to <4 x double>*
  store <4 x double> %577, <4 x double>* %578, align 8, !alias.scope !140, !noalias !142
  %index.next1330 = add i64 %index1329, 4
  %579 = icmp eq i64 %index.next1330, %n.vec1328
  br i1 %579, label %middle.block1320, label %vector.body1322, !llvm.loop !143

middle.block1320:                                 ; preds = %vector.body1322
  %cmp.n1332 = icmp eq i64 %522, %n.vec1328
  br i1 %cmp.n1332, label %polly.loop_exit702.loopexit.us.1, label %polly.loop_header700.us.1.preheader

polly.loop_header700.us.1.preheader:              ; preds = %vector.memcheck1307, %polly.loop_exit702.loopexit.us, %middle.block1320
  %polly.indvar704.us.1.ph = phi i64 [ 0, %vector.memcheck1307 ], [ 0, %polly.loop_exit702.loopexit.us ], [ %n.vec1328, %middle.block1320 ]
  br label %polly.loop_header700.us.1

polly.loop_header852:                             ; preds = %entry, %polly.loop_exit860
  %indvars.iv1148 = phi i64 [ %indvars.iv.next1149, %polly.loop_exit860 ], [ 0, %entry ]
  %polly.indvar855 = phi i64 [ %polly.indvar_next856, %polly.loop_exit860 ], [ 0, %entry ]
  %smin1150 = call i64 @llvm.smin.i64(i64 %indvars.iv1148, i64 -1168)
  %580 = shl nsw i64 %polly.indvar855, 5
  %581 = add nsw i64 %smin1150, 1199
  br label %polly.loop_header858

polly.loop_exit860:                               ; preds = %polly.loop_exit866
  %polly.indvar_next856 = add nuw nsw i64 %polly.indvar855, 1
  %indvars.iv.next1149 = add nsw i64 %indvars.iv1148, -32
  %exitcond1153.not = icmp eq i64 %polly.indvar_next856, 38
  br i1 %exitcond1153.not, label %polly.loop_header879, label %polly.loop_header852

polly.loop_header858:                             ; preds = %polly.loop_exit866, %polly.loop_header852
  %indvars.iv1144 = phi i64 [ %indvars.iv.next1145, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %polly.indvar861 = phi i64 [ %polly.indvar_next862, %polly.loop_exit866 ], [ 0, %polly.loop_header852 ]
  %582 = mul nsw i64 %polly.indvar861, -32
  %smin = call i64 @llvm.smin.i64(i64 %582, i64 -1168)
  %583 = add nsw i64 %smin, 1200
  %smin1146 = call i64 @llvm.smin.i64(i64 %indvars.iv1144, i64 -1168)
  %584 = shl nsw i64 %polly.indvar861, 5
  %585 = add nsw i64 %smin1146, 1199
  br label %polly.loop_header864

polly.loop_exit866:                               ; preds = %polly.loop_exit872
  %polly.indvar_next862 = add nuw nsw i64 %polly.indvar861, 1
  %indvars.iv.next1145 = add nsw i64 %indvars.iv1144, -32
  %exitcond1152.not = icmp eq i64 %polly.indvar_next862, 38
  br i1 %exitcond1152.not, label %polly.loop_exit860, label %polly.loop_header858

polly.loop_header864:                             ; preds = %polly.loop_exit872, %polly.loop_header858
  %polly.indvar867 = phi i64 [ 0, %polly.loop_header858 ], [ %polly.indvar_next868, %polly.loop_exit872 ]
  %586 = add nuw nsw i64 %polly.indvar867, %580
  %587 = trunc i64 %586 to i32
  %588 = mul nuw nsw i64 %586, 9600
  %min.iters.check = icmp eq i64 %583, 0
  br i1 %min.iters.check, label %polly.loop_header870, label %vector.ph1182

vector.ph1182:                                    ; preds = %polly.loop_header864
  %broadcast.splatinsert1189 = insertelement <4 x i64> poison, i64 %584, i32 0
  %broadcast.splat1190 = shufflevector <4 x i64> %broadcast.splatinsert1189, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1191 = insertelement <4 x i32> poison, i32 %587, i32 0
  %broadcast.splat1192 = shufflevector <4 x i32> %broadcast.splatinsert1191, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1181

vector.body1181:                                  ; preds = %vector.body1181, %vector.ph1182
  %index1183 = phi i64 [ 0, %vector.ph1182 ], [ %index.next1184, %vector.body1181 ]
  %vec.ind1187 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1182 ], [ %vec.ind.next1188, %vector.body1181 ]
  %589 = add nuw nsw <4 x i64> %vec.ind1187, %broadcast.splat1190
  %590 = trunc <4 x i64> %589 to <4 x i32>
  %591 = mul <4 x i32> %broadcast.splat1192, %590
  %592 = add <4 x i32> %591, <i32 3, i32 3, i32 3, i32 3>
  %593 = urem <4 x i32> %592, <i32 1200, i32 1200, i32 1200, i32 1200>
  %594 = sitofp <4 x i32> %593 to <4 x double>
  %595 = fmul fast <4 x double> %594, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %596 = extractelement <4 x i64> %589, i32 0
  %597 = shl i64 %596, 3
  %598 = add nuw nsw i64 %597, %588
  %599 = getelementptr i8, i8* %call, i64 %598
  %600 = bitcast i8* %599 to <4 x double>*
  store <4 x double> %595, <4 x double>* %600, align 8, !alias.scope !144, !noalias !146
  %index.next1184 = add i64 %index1183, 4
  %vec.ind.next1188 = add <4 x i64> %vec.ind1187, <i64 4, i64 4, i64 4, i64 4>
  %601 = icmp eq i64 %index.next1184, %583
  br i1 %601, label %polly.loop_exit872, label %vector.body1181, !llvm.loop !149

polly.loop_exit872:                               ; preds = %vector.body1181, %polly.loop_header870
  %polly.indvar_next868 = add nuw nsw i64 %polly.indvar867, 1
  %exitcond1151.not = icmp eq i64 %polly.indvar867, %581
  br i1 %exitcond1151.not, label %polly.loop_exit866, label %polly.loop_header864

polly.loop_header870:                             ; preds = %polly.loop_header864, %polly.loop_header870
  %polly.indvar873 = phi i64 [ %polly.indvar_next874, %polly.loop_header870 ], [ 0, %polly.loop_header864 ]
  %602 = add nuw nsw i64 %polly.indvar873, %584
  %603 = trunc i64 %602 to i32
  %604 = mul i32 %603, %587
  %605 = add i32 %604, 3
  %606 = urem i32 %605, 1200
  %p_conv31.i = sitofp i32 %606 to double
  %p_div33.i = fmul fast double %p_conv31.i, 1.000000e-03
  %607 = shl i64 %602, 3
  %608 = add nuw nsw i64 %607, %588
  %scevgep876 = getelementptr i8, i8* %call, i64 %608
  %scevgep876877 = bitcast i8* %scevgep876 to double*
  store double %p_div33.i, double* %scevgep876877, align 8, !alias.scope !144, !noalias !146
  %polly.indvar_next874 = add nuw nsw i64 %polly.indvar873, 1
  %exitcond1147.not = icmp eq i64 %polly.indvar873, %585
  br i1 %exitcond1147.not, label %polly.loop_exit872, label %polly.loop_header870, !llvm.loop !150

polly.loop_header879:                             ; preds = %polly.loop_exit860, %polly.loop_exit887
  %indvars.iv1138 = phi i64 [ %indvars.iv.next1139, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %polly.indvar882 = phi i64 [ %polly.indvar_next883, %polly.loop_exit887 ], [ 0, %polly.loop_exit860 ]
  %smin1140 = call i64 @llvm.smin.i64(i64 %indvars.iv1138, i64 -1168)
  %609 = shl nsw i64 %polly.indvar882, 5
  %610 = add nsw i64 %smin1140, 1199
  br label %polly.loop_header885

polly.loop_exit887:                               ; preds = %polly.loop_exit893
  %polly.indvar_next883 = add nuw nsw i64 %polly.indvar882, 1
  %indvars.iv.next1139 = add nsw i64 %indvars.iv1138, -32
  %exitcond1143.not = icmp eq i64 %polly.indvar_next883, 38
  br i1 %exitcond1143.not, label %polly.loop_header905, label %polly.loop_header879

polly.loop_header885:                             ; preds = %polly.loop_exit893, %polly.loop_header879
  %indvars.iv1134 = phi i64 [ %indvars.iv.next1135, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %polly.indvar888 = phi i64 [ %polly.indvar_next889, %polly.loop_exit893 ], [ 0, %polly.loop_header879 ]
  %611 = mul nsw i64 %polly.indvar888, -32
  %smin1196 = call i64 @llvm.smin.i64(i64 %611, i64 -968)
  %612 = add nsw i64 %smin1196, 1000
  %smin1136 = call i64 @llvm.smin.i64(i64 %indvars.iv1134, i64 -968)
  %613 = shl nsw i64 %polly.indvar888, 5
  %614 = add nsw i64 %smin1136, 999
  br label %polly.loop_header891

polly.loop_exit893:                               ; preds = %polly.loop_exit899
  %polly.indvar_next889 = add nuw nsw i64 %polly.indvar888, 1
  %indvars.iv.next1135 = add nsw i64 %indvars.iv1134, -32
  %exitcond1142.not = icmp eq i64 %polly.indvar_next889, 32
  br i1 %exitcond1142.not, label %polly.loop_exit887, label %polly.loop_header885

polly.loop_header891:                             ; preds = %polly.loop_exit899, %polly.loop_header885
  %polly.indvar894 = phi i64 [ 0, %polly.loop_header885 ], [ %polly.indvar_next895, %polly.loop_exit899 ]
  %615 = add nuw nsw i64 %polly.indvar894, %609
  %616 = trunc i64 %615 to i32
  %617 = mul nuw nsw i64 %615, 8000
  %min.iters.check1197 = icmp eq i64 %612, 0
  br i1 %min.iters.check1197, label %polly.loop_header897, label %vector.ph1198

vector.ph1198:                                    ; preds = %polly.loop_header891
  %broadcast.splatinsert1207 = insertelement <4 x i64> poison, i64 %613, i32 0
  %broadcast.splat1208 = shufflevector <4 x i64> %broadcast.splatinsert1207, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1209 = insertelement <4 x i32> poison, i32 %616, i32 0
  %broadcast.splat1210 = shufflevector <4 x i32> %broadcast.splatinsert1209, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1195

vector.body1195:                                  ; preds = %vector.body1195, %vector.ph1198
  %index1201 = phi i64 [ 0, %vector.ph1198 ], [ %index.next1202, %vector.body1195 ]
  %vec.ind1205 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1198 ], [ %vec.ind.next1206, %vector.body1195 ]
  %618 = add nuw nsw <4 x i64> %vec.ind1205, %broadcast.splat1208
  %619 = trunc <4 x i64> %618 to <4 x i32>
  %620 = mul <4 x i32> %broadcast.splat1210, %619
  %621 = add <4 x i32> %620, <i32 2, i32 2, i32 2, i32 2>
  %622 = urem <4 x i32> %621, <i32 1000, i32 1000, i32 1000, i32 1000>
  %623 = sitofp <4 x i32> %622 to <4 x double>
  %624 = fmul fast <4 x double> %623, <double 1.000000e-03, double 1.000000e-03, double 1.000000e-03, double 1.000000e-03>
  %625 = extractelement <4 x i64> %618, i32 0
  %626 = shl i64 %625, 3
  %627 = add nuw nsw i64 %626, %617
  %628 = getelementptr i8, i8* %call2, i64 %627
  %629 = bitcast i8* %628 to <4 x double>*
  store <4 x double> %624, <4 x double>* %629, align 8, !alias.scope !148, !noalias !151
  %index.next1202 = add i64 %index1201, 4
  %vec.ind.next1206 = add <4 x i64> %vec.ind1205, <i64 4, i64 4, i64 4, i64 4>
  %630 = icmp eq i64 %index.next1202, %612
  br i1 %630, label %polly.loop_exit899, label %vector.body1195, !llvm.loop !152

polly.loop_exit899:                               ; preds = %vector.body1195, %polly.loop_header897
  %polly.indvar_next895 = add nuw nsw i64 %polly.indvar894, 1
  %exitcond1141.not = icmp eq i64 %polly.indvar894, %610
  br i1 %exitcond1141.not, label %polly.loop_exit893, label %polly.loop_header891

polly.loop_header897:                             ; preds = %polly.loop_header891, %polly.loop_header897
  %polly.indvar900 = phi i64 [ %polly.indvar_next901, %polly.loop_header897 ], [ 0, %polly.loop_header891 ]
  %631 = add nuw nsw i64 %polly.indvar900, %613
  %632 = trunc i64 %631 to i32
  %633 = mul i32 %632, %616
  %634 = add i32 %633, 2
  %635 = urem i32 %634, 1000
  %p_conv10.i = sitofp i32 %635 to double
  %p_div12.i = fmul fast double %p_conv10.i, 1.000000e-03
  %636 = shl i64 %631, 3
  %637 = add nuw nsw i64 %636, %617
  %scevgep903 = getelementptr i8, i8* %call2, i64 %637
  %scevgep903904 = bitcast i8* %scevgep903 to double*
  store double %p_div12.i, double* %scevgep903904, align 8, !alias.scope !148, !noalias !151
  %polly.indvar_next901 = add nuw nsw i64 %polly.indvar900, 1
  %exitcond1137.not = icmp eq i64 %polly.indvar900, %614
  br i1 %exitcond1137.not, label %polly.loop_exit899, label %polly.loop_header897, !llvm.loop !153

polly.loop_header905:                             ; preds = %polly.loop_exit887, %polly.loop_exit913
  %indvars.iv1128 = phi i64 [ %indvars.iv.next1129, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %polly.indvar908 = phi i64 [ %polly.indvar_next909, %polly.loop_exit913 ], [ 0, %polly.loop_exit887 ]
  %smin1130 = call i64 @llvm.smin.i64(i64 %indvars.iv1128, i64 -1168)
  %638 = shl nsw i64 %polly.indvar908, 5
  %639 = add nsw i64 %smin1130, 1199
  br label %polly.loop_header911

polly.loop_exit913:                               ; preds = %polly.loop_exit919
  %polly.indvar_next909 = add nuw nsw i64 %polly.indvar908, 1
  %indvars.iv.next1129 = add nsw i64 %indvars.iv1128, -32
  %exitcond1133.not = icmp eq i64 %polly.indvar_next909, 38
  br i1 %exitcond1133.not, label %init_array.exit, label %polly.loop_header905

polly.loop_header911:                             ; preds = %polly.loop_exit919, %polly.loop_header905
  %indvars.iv1124 = phi i64 [ %indvars.iv.next1125, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %polly.indvar914 = phi i64 [ %polly.indvar_next915, %polly.loop_exit919 ], [ 0, %polly.loop_header905 ]
  %640 = mul nsw i64 %polly.indvar914, -32
  %smin1214 = call i64 @llvm.smin.i64(i64 %640, i64 -968)
  %641 = add nsw i64 %smin1214, 1000
  %smin1126 = call i64 @llvm.smin.i64(i64 %indvars.iv1124, i64 -968)
  %642 = shl nsw i64 %polly.indvar914, 5
  %643 = add nsw i64 %smin1126, 999
  br label %polly.loop_header917

polly.loop_exit919:                               ; preds = %polly.loop_exit925
  %polly.indvar_next915 = add nuw nsw i64 %polly.indvar914, 1
  %indvars.iv.next1125 = add nsw i64 %indvars.iv1124, -32
  %exitcond1132.not = icmp eq i64 %polly.indvar_next915, 32
  br i1 %exitcond1132.not, label %polly.loop_exit913, label %polly.loop_header911

polly.loop_header917:                             ; preds = %polly.loop_exit925, %polly.loop_header911
  %polly.indvar920 = phi i64 [ 0, %polly.loop_header911 ], [ %polly.indvar_next921, %polly.loop_exit925 ]
  %644 = add nuw nsw i64 %polly.indvar920, %638
  %645 = trunc i64 %644 to i32
  %646 = mul nuw nsw i64 %644, 8000
  %min.iters.check1215 = icmp eq i64 %641, 0
  br i1 %min.iters.check1215, label %polly.loop_header923, label %vector.ph1216

vector.ph1216:                                    ; preds = %polly.loop_header917
  %broadcast.splatinsert1225 = insertelement <4 x i64> poison, i64 %642, i32 0
  %broadcast.splat1226 = shufflevector <4 x i64> %broadcast.splatinsert1225, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1227 = insertelement <4 x i32> poison, i32 %645, i32 0
  %broadcast.splat1228 = shufflevector <4 x i32> %broadcast.splatinsert1227, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1213

vector.body1213:                                  ; preds = %vector.body1213, %vector.ph1216
  %index1219 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1220, %vector.body1213 ]
  %vec.ind1223 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1216 ], [ %vec.ind.next1224, %vector.body1213 ]
  %647 = add nuw nsw <4 x i64> %vec.ind1223, %broadcast.splat1226
  %648 = trunc <4 x i64> %647 to <4 x i32>
  %649 = mul <4 x i32> %broadcast.splat1228, %648
  %650 = add <4 x i32> %649, <i32 1, i32 1, i32 1, i32 1>
  %651 = urem <4 x i32> %650, <i32 1200, i32 1200, i32 1200, i32 1200>
  %652 = sitofp <4 x i32> %651 to <4 x double>
  %653 = fmul fast <4 x double> %652, <double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F, double 0x3F4B4E81B4E81B4F>
  %654 = extractelement <4 x i64> %647, i32 0
  %655 = shl i64 %654, 3
  %656 = add nuw nsw i64 %655, %646
  %657 = getelementptr i8, i8* %call1, i64 %656
  %658 = bitcast i8* %657 to <4 x double>*
  store <4 x double> %653, <4 x double>* %658, align 8, !alias.scope !147, !noalias !154
  %index.next1220 = add i64 %index1219, 4
  %vec.ind.next1224 = add <4 x i64> %vec.ind1223, <i64 4, i64 4, i64 4, i64 4>
  %659 = icmp eq i64 %index.next1220, %641
  br i1 %659, label %polly.loop_exit925, label %vector.body1213, !llvm.loop !155

polly.loop_exit925:                               ; preds = %vector.body1213, %polly.loop_header923
  %polly.indvar_next921 = add nuw nsw i64 %polly.indvar920, 1
  %exitcond1131.not = icmp eq i64 %polly.indvar920, %639
  br i1 %exitcond1131.not, label %polly.loop_exit919, label %polly.loop_header917

polly.loop_header923:                             ; preds = %polly.loop_header917, %polly.loop_header923
  %polly.indvar926 = phi i64 [ %polly.indvar_next927, %polly.loop_header923 ], [ 0, %polly.loop_header917 ]
  %660 = add nuw nsw i64 %polly.indvar926, %642
  %661 = trunc i64 %660 to i32
  %662 = mul i32 %661, %645
  %663 = add i32 %662, 1
  %664 = urem i32 %663, 1200
  %p_conv.i = sitofp i32 %664 to double
  %p_div.i = fmul fast double %p_conv.i, 0x3F4B4E81B4E81B4F
  %665 = shl i64 %660, 3
  %666 = add nuw nsw i64 %665, %646
  %scevgep930 = getelementptr i8, i8* %call1, i64 %666
  %scevgep930931 = bitcast i8* %scevgep930 to double*
  store double %p_div.i, double* %scevgep930931, align 8, !alias.scope !147, !noalias !154
  %polly.indvar_next927 = add nuw nsw i64 %polly.indvar926, 1
  %exitcond1127.not = icmp eq i64 %polly.indvar926, %643
  br i1 %exitcond1127.not, label %polly.loop_exit925, label %polly.loop_header923, !llvm.loop !156

polly.loop_header249.us.1:                        ; preds = %polly.loop_header249.us.1.preheader, %polly.loop_header249.us.1
  %polly.indvar253.us.1 = phi i64 [ %polly.indvar_next254.us.1, %polly.loop_header249.us.1 ], [ 0, %polly.loop_header249.us.1.preheader ]
  %667 = add nuw nsw i64 %polly.indvar253.us.1, %179
  %polly.access.mul.call1257.us.1 = mul nuw nsw i64 %667, 1000
  %polly.access.add.call1258.us.1 = add nuw nsw i64 %120, %polly.access.mul.call1257.us.1
  %polly.access.call1259.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us.1
  %polly.access.call1259.load.us.1 = load double, double* %polly.access.call1259.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1200
  %polly.access.Packed_MemRef_call1.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.1
  store double %polly.access.call1259.load.us.1, double* %polly.access.Packed_MemRef_call1.us.1, align 8
  %polly.indvar_next254.us.1 = add nuw nsw i64 %polly.indvar253.us.1, 1
  %exitcond1056.1.not = icmp eq i64 %polly.indvar253.us.1, %smin1058
  br i1 %exitcond1056.1.not, label %polly.cond.loopexit.us.1, label %polly.loop_header249.us.1

polly.cond.loopexit.us.1:                         ; preds = %polly.loop_header249.us.1
  br i1 %.not, label %polly.loop_header249.us.2.preheader, label %polly.then.us.1

polly.then.us.1:                                  ; preds = %polly.cond.loopexit.us.1
  %polly.access.add.call1262.us.1 = or i64 %211, 1
  %polly.access.call1263.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.1
  %polly.access.call1263.load.us.1 = load double, double* %polly.access.call1263.us.1, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.1 = add nsw i64 %209, 1200
  %polly.access.Packed_MemRef_call1266.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.1
  store double %polly.access.call1263.load.us.1, double* %polly.access.Packed_MemRef_call1266.us.1, align 8
  br label %polly.loop_header249.us.2.preheader

polly.loop_header249.us.2.preheader:              ; preds = %polly.then.us.1, %polly.cond.loopexit.us.1
  br label %polly.loop_header249.us.2

polly.loop_header249.us.2:                        ; preds = %polly.loop_header249.us.2.preheader, %polly.loop_header249.us.2
  %polly.indvar253.us.2 = phi i64 [ %polly.indvar_next254.us.2, %polly.loop_header249.us.2 ], [ 0, %polly.loop_header249.us.2.preheader ]
  %668 = add nuw nsw i64 %polly.indvar253.us.2, %179
  %polly.access.mul.call1257.us.2 = mul nuw nsw i64 %668, 1000
  %polly.access.add.call1258.us.2 = add nuw nsw i64 %121, %polly.access.mul.call1257.us.2
  %polly.access.call1259.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us.2
  %polly.access.call1259.load.us.2 = load double, double* %polly.access.call1259.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 2400
  %polly.access.Packed_MemRef_call1.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.2
  store double %polly.access.call1259.load.us.2, double* %polly.access.Packed_MemRef_call1.us.2, align 8
  %polly.indvar_next254.us.2 = add nuw nsw i64 %polly.indvar253.us.2, 1
  %exitcond1056.2.not = icmp eq i64 %polly.indvar253.us.2, %smin1058
  br i1 %exitcond1056.2.not, label %polly.cond.loopexit.us.2, label %polly.loop_header249.us.2

polly.cond.loopexit.us.2:                         ; preds = %polly.loop_header249.us.2
  br i1 %.not, label %polly.loop_header249.us.3.preheader, label %polly.then.us.2

polly.then.us.2:                                  ; preds = %polly.cond.loopexit.us.2
  %polly.access.add.call1262.us.2 = or i64 %211, 2
  %polly.access.call1263.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.2
  %polly.access.call1263.load.us.2 = load double, double* %polly.access.call1263.us.2, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.2 = add nsw i64 %209, 2400
  %polly.access.Packed_MemRef_call1266.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.2
  store double %polly.access.call1263.load.us.2, double* %polly.access.Packed_MemRef_call1266.us.2, align 8
  br label %polly.loop_header249.us.3.preheader

polly.loop_header249.us.3.preheader:              ; preds = %polly.then.us.2, %polly.cond.loopexit.us.2
  br label %polly.loop_header249.us.3

polly.loop_header249.us.3:                        ; preds = %polly.loop_header249.us.3.preheader, %polly.loop_header249.us.3
  %polly.indvar253.us.3 = phi i64 [ %polly.indvar_next254.us.3, %polly.loop_header249.us.3 ], [ 0, %polly.loop_header249.us.3.preheader ]
  %669 = add nuw nsw i64 %polly.indvar253.us.3, %179
  %polly.access.mul.call1257.us.3 = mul nuw nsw i64 %669, 1000
  %polly.access.add.call1258.us.3 = add nuw nsw i64 %122, %polly.access.mul.call1257.us.3
  %polly.access.call1259.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1258.us.3
  %polly.access.call1259.load.us.3 = load double, double* %polly.access.call1259.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 3600
  %polly.access.Packed_MemRef_call1.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1.us.3
  store double %polly.access.call1259.load.us.3, double* %polly.access.Packed_MemRef_call1.us.3, align 8
  %polly.indvar_next254.us.3 = add nuw nsw i64 %polly.indvar253.us.3, 1
  %exitcond1056.3.not = icmp eq i64 %polly.indvar253.us.3, %smin1058
  br i1 %exitcond1056.3.not, label %polly.cond.loopexit.us.3, label %polly.loop_header249.us.3

polly.cond.loopexit.us.3:                         ; preds = %polly.loop_header249.us.3
  br i1 %.not, label %polly.loop_header267.preheader, label %polly.then.us.3

polly.then.us.3:                                  ; preds = %polly.cond.loopexit.us.3
  %polly.access.add.call1262.us.3 = or i64 %211, 3
  %polly.access.call1263.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1262.us.3
  %polly.access.call1263.load.us.3 = load double, double* %polly.access.call1263.us.3, align 8, !alias.scope !68, !noalias !76
  %polly.access.add.Packed_MemRef_call1265.us.3 = add nsw i64 %209, 3600
  %polly.access.Packed_MemRef_call1266.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1265.us.3
  store double %polly.access.call1263.load.us.3, double* %polly.access.Packed_MemRef_call1266.us.3, align 8
  br label %polly.loop_header267.preheader

polly.loop_header274.us.1:                        ; preds = %polly.loop_header274.us.1.preheader, %polly.loop_header274.us.1
  %polly.indvar278.us.1 = phi i64 [ %polly.indvar_next279.us.1, %polly.loop_header274.us.1 ], [ %polly.indvar278.us.1.ph, %polly.loop_header274.us.1.preheader ]
  %670 = add nuw nsw i64 %polly.indvar278.us.1, %179
  %polly.access.add.Packed_MemRef_call1282.us.1 = add nuw nsw i64 %polly.indvar278.us.1, 1200
  %polly.access.Packed_MemRef_call1283.us.1 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.1
  %_p_scalar_284.us.1 = load double, double* %polly.access.Packed_MemRef_call1283.us.1, align 8
  %p_mul27.i112.us.1 = fmul fast double %_p_scalar_288.us.1, %_p_scalar_284.us.1
  %polly.access.add.Packed_MemRef_call2290.us.1 = add nuw nsw i64 %670, %polly.access.mul.Packed_MemRef_call2285.us.1
  %polly.access.Packed_MemRef_call2291.us.1 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.1
  %_p_scalar_292.us.1 = load double, double* %polly.access.Packed_MemRef_call2291.us.1, align 8
  %p_mul37.i114.us.1 = fmul fast double %_p_scalar_296.us.1, %_p_scalar_292.us.1
  %671 = shl i64 %670, 3
  %672 = add i64 %671, %213
  %scevgep297.us.1 = getelementptr i8, i8* %call, i64 %672
  %scevgep297298.us.1 = bitcast i8* %scevgep297.us.1 to double*
  %_p_scalar_299.us.1 = load double, double* %scevgep297298.us.1, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.1 = fadd fast double %p_mul37.i114.us.1, %p_mul27.i112.us.1
  %p_reass.mul.i117.us.1 = fmul fast double %p_reass.add.i116.us.1, 1.500000e+00
  %p_add42.i118.us.1 = fadd fast double %p_reass.mul.i117.us.1, %_p_scalar_299.us.1
  store double %p_add42.i118.us.1, double* %scevgep297298.us.1, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us.1 = add nuw nsw i64 %polly.indvar278.us.1, 1
  %exitcond1059.1.not = icmp eq i64 %polly.indvar278.us.1, %smin1058
  br i1 %exitcond1059.1.not, label %polly.loop_exit276.loopexit.us.1, label %polly.loop_header274.us.1, !llvm.loop !157

polly.loop_exit276.loopexit.us.1:                 ; preds = %polly.loop_header274.us.1, %middle.block1612
  %polly.access.add.Packed_MemRef_call2286.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.2, %210
  %polly.access.Packed_MemRef_call2287.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.2
  %_p_scalar_288.us.2 = load double, double* %polly.access.Packed_MemRef_call2287.us.2, align 8
  %polly.access.add.Packed_MemRef_call1294.us.2 = add nsw i64 %209, 2400
  %polly.access.Packed_MemRef_call1295.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.2
  %_p_scalar_296.us.2 = load double, double* %polly.access.Packed_MemRef_call1295.us.2, align 8
  %min.iters.check1584 = icmp ult i64 %201, 4
  br i1 %min.iters.check1584, label %polly.loop_header274.us.2.preheader, label %vector.memcheck1566

vector.memcheck1566:                              ; preds = %polly.loop_exit276.loopexit.us.1
  %bound01575 = icmp ult i8* %scevgep1568, %scevgep1574
  %bound11576 = icmp ult i8* %scevgep1572, %scevgep1571
  %found.conflict1577 = and i1 %bound01575, %bound11576
  br i1 %found.conflict1577, label %polly.loop_header274.us.2.preheader, label %vector.ph1585

vector.ph1585:                                    ; preds = %vector.memcheck1566
  %n.vec1587 = and i64 %201, -4
  %broadcast.splatinsert1593 = insertelement <4 x double> poison, double %_p_scalar_288.us.2, i32 0
  %broadcast.splat1594 = shufflevector <4 x double> %broadcast.splatinsert1593, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1596 = insertelement <4 x double> poison, double %_p_scalar_296.us.2, i32 0
  %broadcast.splat1597 = shufflevector <4 x double> %broadcast.splatinsert1596, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1581

vector.body1581:                                  ; preds = %vector.body1581, %vector.ph1585
  %index1588 = phi i64 [ 0, %vector.ph1585 ], [ %index.next1589, %vector.body1581 ]
  %673 = add nuw nsw i64 %index1588, %179
  %674 = add nuw nsw i64 %index1588, 2400
  %675 = getelementptr double, double* %Packed_MemRef_call1, i64 %674
  %676 = bitcast double* %675 to <4 x double>*
  %wide.load1592 = load <4 x double>, <4 x double>* %676, align 8, !alias.scope !158
  %677 = fmul fast <4 x double> %broadcast.splat1594, %wide.load1592
  %678 = add nuw nsw i64 %673, %polly.access.mul.Packed_MemRef_call2285.us.2
  %679 = getelementptr double, double* %Packed_MemRef_call2, i64 %678
  %680 = bitcast double* %679 to <4 x double>*
  %wide.load1595 = load <4 x double>, <4 x double>* %680, align 8
  %681 = fmul fast <4 x double> %broadcast.splat1597, %wide.load1595
  %682 = shl i64 %673, 3
  %683 = add i64 %682, %213
  %684 = getelementptr i8, i8* %call, i64 %683
  %685 = bitcast i8* %684 to <4 x double>*
  %wide.load1598 = load <4 x double>, <4 x double>* %685, align 8, !alias.scope !161, !noalias !163
  %686 = fadd fast <4 x double> %681, %677
  %687 = fmul fast <4 x double> %686, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %688 = fadd fast <4 x double> %687, %wide.load1598
  %689 = bitcast i8* %684 to <4 x double>*
  store <4 x double> %688, <4 x double>* %689, align 8, !alias.scope !161, !noalias !163
  %index.next1589 = add i64 %index1588, 4
  %690 = icmp eq i64 %index.next1589, %n.vec1587
  br i1 %690, label %middle.block1579, label %vector.body1581, !llvm.loop !164

middle.block1579:                                 ; preds = %vector.body1581
  %cmp.n1591 = icmp eq i64 %201, %n.vec1587
  br i1 %cmp.n1591, label %polly.loop_exit276.loopexit.us.2, label %polly.loop_header274.us.2.preheader

polly.loop_header274.us.2.preheader:              ; preds = %vector.memcheck1566, %polly.loop_exit276.loopexit.us.1, %middle.block1579
  %polly.indvar278.us.2.ph = phi i64 [ 0, %vector.memcheck1566 ], [ 0, %polly.loop_exit276.loopexit.us.1 ], [ %n.vec1587, %middle.block1579 ]
  br label %polly.loop_header274.us.2

polly.loop_header274.us.2:                        ; preds = %polly.loop_header274.us.2.preheader, %polly.loop_header274.us.2
  %polly.indvar278.us.2 = phi i64 [ %polly.indvar_next279.us.2, %polly.loop_header274.us.2 ], [ %polly.indvar278.us.2.ph, %polly.loop_header274.us.2.preheader ]
  %691 = add nuw nsw i64 %polly.indvar278.us.2, %179
  %polly.access.add.Packed_MemRef_call1282.us.2 = add nuw nsw i64 %polly.indvar278.us.2, 2400
  %polly.access.Packed_MemRef_call1283.us.2 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.2
  %_p_scalar_284.us.2 = load double, double* %polly.access.Packed_MemRef_call1283.us.2, align 8
  %p_mul27.i112.us.2 = fmul fast double %_p_scalar_288.us.2, %_p_scalar_284.us.2
  %polly.access.add.Packed_MemRef_call2290.us.2 = add nuw nsw i64 %691, %polly.access.mul.Packed_MemRef_call2285.us.2
  %polly.access.Packed_MemRef_call2291.us.2 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.2
  %_p_scalar_292.us.2 = load double, double* %polly.access.Packed_MemRef_call2291.us.2, align 8
  %p_mul37.i114.us.2 = fmul fast double %_p_scalar_296.us.2, %_p_scalar_292.us.2
  %692 = shl i64 %691, 3
  %693 = add i64 %692, %213
  %scevgep297.us.2 = getelementptr i8, i8* %call, i64 %693
  %scevgep297298.us.2 = bitcast i8* %scevgep297.us.2 to double*
  %_p_scalar_299.us.2 = load double, double* %scevgep297298.us.2, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.2 = fadd fast double %p_mul37.i114.us.2, %p_mul27.i112.us.2
  %p_reass.mul.i117.us.2 = fmul fast double %p_reass.add.i116.us.2, 1.500000e+00
  %p_add42.i118.us.2 = fadd fast double %p_reass.mul.i117.us.2, %_p_scalar_299.us.2
  store double %p_add42.i118.us.2, double* %scevgep297298.us.2, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us.2 = add nuw nsw i64 %polly.indvar278.us.2, 1
  %exitcond1059.2.not = icmp eq i64 %polly.indvar278.us.2, %smin1058
  br i1 %exitcond1059.2.not, label %polly.loop_exit276.loopexit.us.2, label %polly.loop_header274.us.2, !llvm.loop !165

polly.loop_exit276.loopexit.us.2:                 ; preds = %polly.loop_header274.us.2, %middle.block1579
  %polly.access.add.Packed_MemRef_call2286.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2285.us.3, %210
  %polly.access.Packed_MemRef_call2287.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2286.us.3
  %_p_scalar_288.us.3 = load double, double* %polly.access.Packed_MemRef_call2287.us.3, align 8
  %polly.access.add.Packed_MemRef_call1294.us.3 = add nsw i64 %209, 3600
  %polly.access.Packed_MemRef_call1295.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1294.us.3
  %_p_scalar_296.us.3 = load double, double* %polly.access.Packed_MemRef_call1295.us.3, align 8
  %min.iters.check1551 = icmp ult i64 %208, 4
  br i1 %min.iters.check1551, label %polly.loop_header274.us.3.preheader, label %vector.ph1552

vector.ph1552:                                    ; preds = %polly.loop_exit276.loopexit.us.2
  %n.vec1554 = and i64 %208, -4
  %broadcast.splatinsert1560 = insertelement <4 x double> poison, double %_p_scalar_288.us.3, i32 0
  %broadcast.splat1561 = shufflevector <4 x double> %broadcast.splatinsert1560, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1563 = insertelement <4 x double> poison, double %_p_scalar_296.us.3, i32 0
  %broadcast.splat1564 = shufflevector <4 x double> %broadcast.splatinsert1563, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1546

vector.body1546:                                  ; preds = %vector.body1546, %vector.ph1552
  %index1555 = phi i64 [ 0, %vector.ph1552 ], [ %index.next1556, %vector.body1546 ]
  %694 = add nuw nsw i64 %index1555, %179
  %695 = add nuw nsw i64 %index1555, 3600
  %696 = getelementptr double, double* %Packed_MemRef_call1, i64 %695
  %697 = bitcast double* %696 to <4 x double>*
  %wide.load1559 = load <4 x double>, <4 x double>* %697, align 8
  %698 = fmul fast <4 x double> %broadcast.splat1561, %wide.load1559
  %699 = add nuw nsw i64 %694, %polly.access.mul.Packed_MemRef_call2285.us.3
  %700 = getelementptr double, double* %Packed_MemRef_call2, i64 %699
  %701 = bitcast double* %700 to <4 x double>*
  %wide.load1562 = load <4 x double>, <4 x double>* %701, align 8
  %702 = fmul fast <4 x double> %broadcast.splat1564, %wide.load1562
  %703 = shl i64 %694, 3
  %704 = add i64 %703, %213
  %705 = getelementptr i8, i8* %call, i64 %704
  %706 = bitcast i8* %705 to <4 x double>*
  %wide.load1565 = load <4 x double>, <4 x double>* %706, align 8, !alias.scope !65, !noalias !67
  %707 = fadd fast <4 x double> %702, %698
  %708 = fmul fast <4 x double> %707, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %709 = fadd fast <4 x double> %708, %wide.load1565
  %710 = bitcast i8* %705 to <4 x double>*
  store <4 x double> %709, <4 x double>* %710, align 8, !alias.scope !65, !noalias !67
  %index.next1556 = add i64 %index1555, 4
  %711 = icmp eq i64 %index.next1556, %n.vec1554
  br i1 %711, label %middle.block1544, label %vector.body1546, !llvm.loop !166

middle.block1544:                                 ; preds = %vector.body1546
  %cmp.n1558 = icmp eq i64 %208, %n.vec1554
  br i1 %cmp.n1558, label %polly.loop_exit269, label %polly.loop_header274.us.3.preheader

polly.loop_header274.us.3.preheader:              ; preds = %polly.loop_exit276.loopexit.us.2, %middle.block1544
  %polly.indvar278.us.3.ph = phi i64 [ 0, %polly.loop_exit276.loopexit.us.2 ], [ %n.vec1554, %middle.block1544 ]
  br label %polly.loop_header274.us.3

polly.loop_header274.us.3:                        ; preds = %polly.loop_header274.us.3.preheader, %polly.loop_header274.us.3
  %polly.indvar278.us.3 = phi i64 [ %polly.indvar_next279.us.3, %polly.loop_header274.us.3 ], [ %polly.indvar278.us.3.ph, %polly.loop_header274.us.3.preheader ]
  %712 = add nuw nsw i64 %polly.indvar278.us.3, %179
  %polly.access.add.Packed_MemRef_call1282.us.3 = add nuw nsw i64 %polly.indvar278.us.3, 3600
  %polly.access.Packed_MemRef_call1283.us.3 = getelementptr double, double* %Packed_MemRef_call1, i64 %polly.access.add.Packed_MemRef_call1282.us.3
  %_p_scalar_284.us.3 = load double, double* %polly.access.Packed_MemRef_call1283.us.3, align 8
  %p_mul27.i112.us.3 = fmul fast double %_p_scalar_288.us.3, %_p_scalar_284.us.3
  %polly.access.add.Packed_MemRef_call2290.us.3 = add nuw nsw i64 %712, %polly.access.mul.Packed_MemRef_call2285.us.3
  %polly.access.Packed_MemRef_call2291.us.3 = getelementptr double, double* %Packed_MemRef_call2, i64 %polly.access.add.Packed_MemRef_call2290.us.3
  %_p_scalar_292.us.3 = load double, double* %polly.access.Packed_MemRef_call2291.us.3, align 8
  %p_mul37.i114.us.3 = fmul fast double %_p_scalar_296.us.3, %_p_scalar_292.us.3
  %713 = shl i64 %712, 3
  %714 = add i64 %713, %213
  %scevgep297.us.3 = getelementptr i8, i8* %call, i64 %714
  %scevgep297298.us.3 = bitcast i8* %scevgep297.us.3 to double*
  %_p_scalar_299.us.3 = load double, double* %scevgep297298.us.3, align 8, !alias.scope !65, !noalias !67
  %p_reass.add.i116.us.3 = fadd fast double %p_mul37.i114.us.3, %p_mul27.i112.us.3
  %p_reass.mul.i117.us.3 = fmul fast double %p_reass.add.i116.us.3, 1.500000e+00
  %p_add42.i118.us.3 = fadd fast double %p_reass.mul.i117.us.3, %_p_scalar_299.us.3
  store double %p_add42.i118.us.3, double* %scevgep297298.us.3, align 8, !alias.scope !65, !noalias !67
  %polly.indvar_next279.us.3 = add nuw nsw i64 %polly.indvar278.us.3, 1
  %exitcond1059.3.not = icmp eq i64 %polly.indvar278.us.3, %smin1058
  br i1 %exitcond1059.3.not, label %polly.loop_exit269, label %polly.loop_header274.us.3, !llvm.loop !167

polly.loop_header458.us.1:                        ; preds = %polly.loop_header458.us.1.preheader, %polly.loop_header458.us.1
  %polly.indvar462.us.1 = phi i64 [ %polly.indvar_next463.us.1, %polly.loop_header458.us.1 ], [ 0, %polly.loop_header458.us.1.preheader ]
  %715 = add nuw nsw i64 %polly.indvar462.us.1, %343
  %polly.access.mul.call1466.us.1 = mul nuw nsw i64 %715, 1000
  %polly.access.add.call1467.us.1 = add nuw nsw i64 %284, %polly.access.mul.call1466.us.1
  %polly.access.call1468.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us.1
  %polly.access.call1468.load.us.1 = load double, double* %polly.access.call1468.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305.us.1 = add nuw nsw i64 %polly.indvar462.us.1, 1200
  %polly.access.Packed_MemRef_call1305.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.1
  store double %polly.access.call1468.load.us.1, double* %polly.access.Packed_MemRef_call1305.us.1, align 8
  %polly.indvar_next463.us.1 = add nuw nsw i64 %polly.indvar462.us.1, 1
  %exitcond1083.1.not = icmp eq i64 %polly.indvar462.us.1, %smin1085
  br i1 %exitcond1083.1.not, label %polly.cond469.loopexit.us.1, label %polly.loop_header458.us.1

polly.cond469.loopexit.us.1:                      ; preds = %polly.loop_header458.us.1
  br i1 %.not932, label %polly.loop_header458.us.2.preheader, label %polly.then471.us.1

polly.then471.us.1:                               ; preds = %polly.cond469.loopexit.us.1
  %polly.access.add.call1475.us.1 = or i64 %375, 1
  %polly.access.call1476.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.1
  %polly.access.call1476.load.us.1 = load double, double* %polly.access.call1476.us.1, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.1 = add nsw i64 %373, 1200
  %polly.access.Packed_MemRef_call1305479.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.1
  store double %polly.access.call1476.load.us.1, double* %polly.access.Packed_MemRef_call1305479.us.1, align 8
  br label %polly.loop_header458.us.2.preheader

polly.loop_header458.us.2.preheader:              ; preds = %polly.then471.us.1, %polly.cond469.loopexit.us.1
  br label %polly.loop_header458.us.2

polly.loop_header458.us.2:                        ; preds = %polly.loop_header458.us.2.preheader, %polly.loop_header458.us.2
  %polly.indvar462.us.2 = phi i64 [ %polly.indvar_next463.us.2, %polly.loop_header458.us.2 ], [ 0, %polly.loop_header458.us.2.preheader ]
  %716 = add nuw nsw i64 %polly.indvar462.us.2, %343
  %polly.access.mul.call1466.us.2 = mul nuw nsw i64 %716, 1000
  %polly.access.add.call1467.us.2 = add nuw nsw i64 %285, %polly.access.mul.call1466.us.2
  %polly.access.call1468.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us.2
  %polly.access.call1468.load.us.2 = load double, double* %polly.access.call1468.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305.us.2 = add nuw nsw i64 %polly.indvar462.us.2, 2400
  %polly.access.Packed_MemRef_call1305.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.2
  store double %polly.access.call1468.load.us.2, double* %polly.access.Packed_MemRef_call1305.us.2, align 8
  %polly.indvar_next463.us.2 = add nuw nsw i64 %polly.indvar462.us.2, 1
  %exitcond1083.2.not = icmp eq i64 %polly.indvar462.us.2, %smin1085
  br i1 %exitcond1083.2.not, label %polly.cond469.loopexit.us.2, label %polly.loop_header458.us.2

polly.cond469.loopexit.us.2:                      ; preds = %polly.loop_header458.us.2
  br i1 %.not932, label %polly.loop_header458.us.3.preheader, label %polly.then471.us.2

polly.then471.us.2:                               ; preds = %polly.cond469.loopexit.us.2
  %polly.access.add.call1475.us.2 = or i64 %375, 2
  %polly.access.call1476.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.2
  %polly.access.call1476.load.us.2 = load double, double* %polly.access.call1476.us.2, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.2 = add nsw i64 %373, 2400
  %polly.access.Packed_MemRef_call1305479.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.2
  store double %polly.access.call1476.load.us.2, double* %polly.access.Packed_MemRef_call1305479.us.2, align 8
  br label %polly.loop_header458.us.3.preheader

polly.loop_header458.us.3.preheader:              ; preds = %polly.then471.us.2, %polly.cond469.loopexit.us.2
  br label %polly.loop_header458.us.3

polly.loop_header458.us.3:                        ; preds = %polly.loop_header458.us.3.preheader, %polly.loop_header458.us.3
  %polly.indvar462.us.3 = phi i64 [ %polly.indvar_next463.us.3, %polly.loop_header458.us.3 ], [ 0, %polly.loop_header458.us.3.preheader ]
  %717 = add nuw nsw i64 %polly.indvar462.us.3, %343
  %polly.access.mul.call1466.us.3 = mul nuw nsw i64 %717, 1000
  %polly.access.add.call1467.us.3 = add nuw nsw i64 %286, %polly.access.mul.call1466.us.3
  %polly.access.call1468.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1467.us.3
  %polly.access.call1468.load.us.3 = load double, double* %polly.access.call1468.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305.us.3 = add nuw nsw i64 %polly.indvar462.us.3, 3600
  %polly.access.Packed_MemRef_call1305.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305.us.3
  store double %polly.access.call1468.load.us.3, double* %polly.access.Packed_MemRef_call1305.us.3, align 8
  %polly.indvar_next463.us.3 = add nuw nsw i64 %polly.indvar462.us.3, 1
  %exitcond1083.3.not = icmp eq i64 %polly.indvar462.us.3, %smin1085
  br i1 %exitcond1083.3.not, label %polly.cond469.loopexit.us.3, label %polly.loop_header458.us.3

polly.cond469.loopexit.us.3:                      ; preds = %polly.loop_header458.us.3
  br i1 %.not932, label %polly.loop_header480.preheader, label %polly.then471.us.3

polly.then471.us.3:                               ; preds = %polly.cond469.loopexit.us.3
  %polly.access.add.call1475.us.3 = or i64 %375, 3
  %polly.access.call1476.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1475.us.3
  %polly.access.call1476.load.us.3 = load double, double* %polly.access.call1476.us.3, align 8, !alias.scope !95, !noalias !102
  %polly.access.add.Packed_MemRef_call1305478.us.3 = add nsw i64 %373, 3600
  %polly.access.Packed_MemRef_call1305479.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305478.us.3
  store double %polly.access.call1476.load.us.3, double* %polly.access.Packed_MemRef_call1305479.us.3, align 8
  br label %polly.loop_header480.preheader

polly.loop_header487.us.1:                        ; preds = %polly.loop_header487.us.1.preheader, %polly.loop_header487.us.1
  %polly.indvar491.us.1 = phi i64 [ %polly.indvar_next492.us.1, %polly.loop_header487.us.1 ], [ %polly.indvar491.us.1.ph, %polly.loop_header487.us.1.preheader ]
  %718 = add nuw nsw i64 %polly.indvar491.us.1, %343
  %polly.access.add.Packed_MemRef_call1305495.us.1 = add nuw nsw i64 %polly.indvar491.us.1, 1200
  %polly.access.Packed_MemRef_call1305496.us.1 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.1
  %_p_scalar_497.us.1 = load double, double* %polly.access.Packed_MemRef_call1305496.us.1, align 8
  %p_mul27.i73.us.1 = fmul fast double %_p_scalar_501.us.1, %_p_scalar_497.us.1
  %polly.access.add.Packed_MemRef_call2307503.us.1 = add nuw nsw i64 %718, %polly.access.mul.Packed_MemRef_call2307498.us.1
  %polly.access.Packed_MemRef_call2307504.us.1 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.1
  %_p_scalar_505.us.1 = load double, double* %polly.access.Packed_MemRef_call2307504.us.1, align 8
  %p_mul37.i75.us.1 = fmul fast double %_p_scalar_509.us.1, %_p_scalar_505.us.1
  %719 = shl i64 %718, 3
  %720 = add i64 %719, %377
  %scevgep510.us.1 = getelementptr i8, i8* %call, i64 %720
  %scevgep510511.us.1 = bitcast i8* %scevgep510.us.1 to double*
  %_p_scalar_512.us.1 = load double, double* %scevgep510511.us.1, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.1 = fadd fast double %p_mul37.i75.us.1, %p_mul27.i73.us.1
  %p_reass.mul.i78.us.1 = fmul fast double %p_reass.add.i77.us.1, 1.500000e+00
  %p_add42.i79.us.1 = fadd fast double %p_reass.mul.i78.us.1, %_p_scalar_512.us.1
  store double %p_add42.i79.us.1, double* %scevgep510511.us.1, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us.1 = add nuw nsw i64 %polly.indvar491.us.1, 1
  %exitcond1086.1.not = icmp eq i64 %polly.indvar491.us.1, %smin1085
  br i1 %exitcond1086.1.not, label %polly.loop_exit489.loopexit.us.1, label %polly.loop_header487.us.1, !llvm.loop !168

polly.loop_exit489.loopexit.us.1:                 ; preds = %polly.loop_header487.us.1, %middle.block1466
  %polly.access.add.Packed_MemRef_call2307499.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.2, %374
  %polly.access.Packed_MemRef_call2307500.us.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.2
  %_p_scalar_501.us.2 = load double, double* %polly.access.Packed_MemRef_call2307500.us.2, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.2 = add nsw i64 %373, 2400
  %polly.access.Packed_MemRef_call1305508.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.2
  %_p_scalar_509.us.2 = load double, double* %polly.access.Packed_MemRef_call1305508.us.2, align 8
  %min.iters.check1438 = icmp ult i64 %365, 4
  br i1 %min.iters.check1438, label %polly.loop_header487.us.2.preheader, label %vector.memcheck1420

vector.memcheck1420:                              ; preds = %polly.loop_exit489.loopexit.us.1
  %bound01429 = icmp ult i8* %scevgep1422, %scevgep1428
  %bound11430 = icmp ult i8* %scevgep1426, %scevgep1425
  %found.conflict1431 = and i1 %bound01429, %bound11430
  br i1 %found.conflict1431, label %polly.loop_header487.us.2.preheader, label %vector.ph1439

vector.ph1439:                                    ; preds = %vector.memcheck1420
  %n.vec1441 = and i64 %365, -4
  %broadcast.splatinsert1447 = insertelement <4 x double> poison, double %_p_scalar_501.us.2, i32 0
  %broadcast.splat1448 = shufflevector <4 x double> %broadcast.splatinsert1447, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1450 = insertelement <4 x double> poison, double %_p_scalar_509.us.2, i32 0
  %broadcast.splat1451 = shufflevector <4 x double> %broadcast.splatinsert1450, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1435

vector.body1435:                                  ; preds = %vector.body1435, %vector.ph1439
  %index1442 = phi i64 [ 0, %vector.ph1439 ], [ %index.next1443, %vector.body1435 ]
  %721 = add nuw nsw i64 %index1442, %343
  %722 = add nuw nsw i64 %index1442, 2400
  %723 = getelementptr double, double* %Packed_MemRef_call1305, i64 %722
  %724 = bitcast double* %723 to <4 x double>*
  %wide.load1446 = load <4 x double>, <4 x double>* %724, align 8, !alias.scope !169
  %725 = fmul fast <4 x double> %broadcast.splat1448, %wide.load1446
  %726 = add nuw nsw i64 %721, %polly.access.mul.Packed_MemRef_call2307498.us.2
  %727 = getelementptr double, double* %Packed_MemRef_call2307, i64 %726
  %728 = bitcast double* %727 to <4 x double>*
  %wide.load1449 = load <4 x double>, <4 x double>* %728, align 8
  %729 = fmul fast <4 x double> %broadcast.splat1451, %wide.load1449
  %730 = shl i64 %721, 3
  %731 = add i64 %730, %377
  %732 = getelementptr i8, i8* %call, i64 %731
  %733 = bitcast i8* %732 to <4 x double>*
  %wide.load1452 = load <4 x double>, <4 x double>* %733, align 8, !alias.scope !172, !noalias !174
  %734 = fadd fast <4 x double> %729, %725
  %735 = fmul fast <4 x double> %734, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %736 = fadd fast <4 x double> %735, %wide.load1452
  %737 = bitcast i8* %732 to <4 x double>*
  store <4 x double> %736, <4 x double>* %737, align 8, !alias.scope !172, !noalias !174
  %index.next1443 = add i64 %index1442, 4
  %738 = icmp eq i64 %index.next1443, %n.vec1441
  br i1 %738, label %middle.block1433, label %vector.body1435, !llvm.loop !175

middle.block1433:                                 ; preds = %vector.body1435
  %cmp.n1445 = icmp eq i64 %365, %n.vec1441
  br i1 %cmp.n1445, label %polly.loop_exit489.loopexit.us.2, label %polly.loop_header487.us.2.preheader

polly.loop_header487.us.2.preheader:              ; preds = %vector.memcheck1420, %polly.loop_exit489.loopexit.us.1, %middle.block1433
  %polly.indvar491.us.2.ph = phi i64 [ 0, %vector.memcheck1420 ], [ 0, %polly.loop_exit489.loopexit.us.1 ], [ %n.vec1441, %middle.block1433 ]
  br label %polly.loop_header487.us.2

polly.loop_header487.us.2:                        ; preds = %polly.loop_header487.us.2.preheader, %polly.loop_header487.us.2
  %polly.indvar491.us.2 = phi i64 [ %polly.indvar_next492.us.2, %polly.loop_header487.us.2 ], [ %polly.indvar491.us.2.ph, %polly.loop_header487.us.2.preheader ]
  %739 = add nuw nsw i64 %polly.indvar491.us.2, %343
  %polly.access.add.Packed_MemRef_call1305495.us.2 = add nuw nsw i64 %polly.indvar491.us.2, 2400
  %polly.access.Packed_MemRef_call1305496.us.2 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.2
  %_p_scalar_497.us.2 = load double, double* %polly.access.Packed_MemRef_call1305496.us.2, align 8
  %p_mul27.i73.us.2 = fmul fast double %_p_scalar_501.us.2, %_p_scalar_497.us.2
  %polly.access.add.Packed_MemRef_call2307503.us.2 = add nuw nsw i64 %739, %polly.access.mul.Packed_MemRef_call2307498.us.2
  %polly.access.Packed_MemRef_call2307504.us.2 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.2
  %_p_scalar_505.us.2 = load double, double* %polly.access.Packed_MemRef_call2307504.us.2, align 8
  %p_mul37.i75.us.2 = fmul fast double %_p_scalar_509.us.2, %_p_scalar_505.us.2
  %740 = shl i64 %739, 3
  %741 = add i64 %740, %377
  %scevgep510.us.2 = getelementptr i8, i8* %call, i64 %741
  %scevgep510511.us.2 = bitcast i8* %scevgep510.us.2 to double*
  %_p_scalar_512.us.2 = load double, double* %scevgep510511.us.2, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.2 = fadd fast double %p_mul37.i75.us.2, %p_mul27.i73.us.2
  %p_reass.mul.i78.us.2 = fmul fast double %p_reass.add.i77.us.2, 1.500000e+00
  %p_add42.i79.us.2 = fadd fast double %p_reass.mul.i78.us.2, %_p_scalar_512.us.2
  store double %p_add42.i79.us.2, double* %scevgep510511.us.2, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us.2 = add nuw nsw i64 %polly.indvar491.us.2, 1
  %exitcond1086.2.not = icmp eq i64 %polly.indvar491.us.2, %smin1085
  br i1 %exitcond1086.2.not, label %polly.loop_exit489.loopexit.us.2, label %polly.loop_header487.us.2, !llvm.loop !176

polly.loop_exit489.loopexit.us.2:                 ; preds = %polly.loop_header487.us.2, %middle.block1433
  %polly.access.add.Packed_MemRef_call2307499.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2307498.us.3, %374
  %polly.access.Packed_MemRef_call2307500.us.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307499.us.3
  %_p_scalar_501.us.3 = load double, double* %polly.access.Packed_MemRef_call2307500.us.3, align 8
  %polly.access.add.Packed_MemRef_call1305507.us.3 = add nsw i64 %373, 3600
  %polly.access.Packed_MemRef_call1305508.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305507.us.3
  %_p_scalar_509.us.3 = load double, double* %polly.access.Packed_MemRef_call1305508.us.3, align 8
  %min.iters.check1405 = icmp ult i64 %372, 4
  br i1 %min.iters.check1405, label %polly.loop_header487.us.3.preheader, label %vector.ph1406

vector.ph1406:                                    ; preds = %polly.loop_exit489.loopexit.us.2
  %n.vec1408 = and i64 %372, -4
  %broadcast.splatinsert1414 = insertelement <4 x double> poison, double %_p_scalar_501.us.3, i32 0
  %broadcast.splat1415 = shufflevector <4 x double> %broadcast.splatinsert1414, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1417 = insertelement <4 x double> poison, double %_p_scalar_509.us.3, i32 0
  %broadcast.splat1418 = shufflevector <4 x double> %broadcast.splatinsert1417, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1400

vector.body1400:                                  ; preds = %vector.body1400, %vector.ph1406
  %index1409 = phi i64 [ 0, %vector.ph1406 ], [ %index.next1410, %vector.body1400 ]
  %742 = add nuw nsw i64 %index1409, %343
  %743 = add nuw nsw i64 %index1409, 3600
  %744 = getelementptr double, double* %Packed_MemRef_call1305, i64 %743
  %745 = bitcast double* %744 to <4 x double>*
  %wide.load1413 = load <4 x double>, <4 x double>* %745, align 8
  %746 = fmul fast <4 x double> %broadcast.splat1415, %wide.load1413
  %747 = add nuw nsw i64 %742, %polly.access.mul.Packed_MemRef_call2307498.us.3
  %748 = getelementptr double, double* %Packed_MemRef_call2307, i64 %747
  %749 = bitcast double* %748 to <4 x double>*
  %wide.load1416 = load <4 x double>, <4 x double>* %749, align 8
  %750 = fmul fast <4 x double> %broadcast.splat1418, %wide.load1416
  %751 = shl i64 %742, 3
  %752 = add i64 %751, %377
  %753 = getelementptr i8, i8* %call, i64 %752
  %754 = bitcast i8* %753 to <4 x double>*
  %wide.load1419 = load <4 x double>, <4 x double>* %754, align 8, !alias.scope !92, !noalias !94
  %755 = fadd fast <4 x double> %750, %746
  %756 = fmul fast <4 x double> %755, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %757 = fadd fast <4 x double> %756, %wide.load1419
  %758 = bitcast i8* %753 to <4 x double>*
  store <4 x double> %757, <4 x double>* %758, align 8, !alias.scope !92, !noalias !94
  %index.next1410 = add i64 %index1409, 4
  %759 = icmp eq i64 %index.next1410, %n.vec1408
  br i1 %759, label %middle.block1398, label %vector.body1400, !llvm.loop !177

middle.block1398:                                 ; preds = %vector.body1400
  %cmp.n1412 = icmp eq i64 %372, %n.vec1408
  br i1 %cmp.n1412, label %polly.loop_exit482, label %polly.loop_header487.us.3.preheader

polly.loop_header487.us.3.preheader:              ; preds = %polly.loop_exit489.loopexit.us.2, %middle.block1398
  %polly.indvar491.us.3.ph = phi i64 [ 0, %polly.loop_exit489.loopexit.us.2 ], [ %n.vec1408, %middle.block1398 ]
  br label %polly.loop_header487.us.3

polly.loop_header487.us.3:                        ; preds = %polly.loop_header487.us.3.preheader, %polly.loop_header487.us.3
  %polly.indvar491.us.3 = phi i64 [ %polly.indvar_next492.us.3, %polly.loop_header487.us.3 ], [ %polly.indvar491.us.3.ph, %polly.loop_header487.us.3.preheader ]
  %760 = add nuw nsw i64 %polly.indvar491.us.3, %343
  %polly.access.add.Packed_MemRef_call1305495.us.3 = add nuw nsw i64 %polly.indvar491.us.3, 3600
  %polly.access.Packed_MemRef_call1305496.us.3 = getelementptr double, double* %Packed_MemRef_call1305, i64 %polly.access.add.Packed_MemRef_call1305495.us.3
  %_p_scalar_497.us.3 = load double, double* %polly.access.Packed_MemRef_call1305496.us.3, align 8
  %p_mul27.i73.us.3 = fmul fast double %_p_scalar_501.us.3, %_p_scalar_497.us.3
  %polly.access.add.Packed_MemRef_call2307503.us.3 = add nuw nsw i64 %760, %polly.access.mul.Packed_MemRef_call2307498.us.3
  %polly.access.Packed_MemRef_call2307504.us.3 = getelementptr double, double* %Packed_MemRef_call2307, i64 %polly.access.add.Packed_MemRef_call2307503.us.3
  %_p_scalar_505.us.3 = load double, double* %polly.access.Packed_MemRef_call2307504.us.3, align 8
  %p_mul37.i75.us.3 = fmul fast double %_p_scalar_509.us.3, %_p_scalar_505.us.3
  %761 = shl i64 %760, 3
  %762 = add i64 %761, %377
  %scevgep510.us.3 = getelementptr i8, i8* %call, i64 %762
  %scevgep510511.us.3 = bitcast i8* %scevgep510.us.3 to double*
  %_p_scalar_512.us.3 = load double, double* %scevgep510511.us.3, align 8, !alias.scope !92, !noalias !94
  %p_reass.add.i77.us.3 = fadd fast double %p_mul37.i75.us.3, %p_mul27.i73.us.3
  %p_reass.mul.i78.us.3 = fmul fast double %p_reass.add.i77.us.3, 1.500000e+00
  %p_add42.i79.us.3 = fadd fast double %p_reass.mul.i78.us.3, %_p_scalar_512.us.3
  store double %p_add42.i79.us.3, double* %scevgep510511.us.3, align 8, !alias.scope !92, !noalias !94
  %polly.indvar_next492.us.3 = add nuw nsw i64 %polly.indvar491.us.3, 1
  %exitcond1086.3.not = icmp eq i64 %polly.indvar491.us.3, %smin1085
  br i1 %exitcond1086.3.not, label %polly.loop_exit482, label %polly.loop_header487.us.3, !llvm.loop !178

polly.loop_header671.us.1:                        ; preds = %polly.loop_header671.us.1.preheader, %polly.loop_header671.us.1
  %polly.indvar675.us.1 = phi i64 [ %polly.indvar_next676.us.1, %polly.loop_header671.us.1 ], [ 0, %polly.loop_header671.us.1.preheader ]
  %763 = add nuw nsw i64 %polly.indvar675.us.1, %507
  %polly.access.mul.call1679.us.1 = mul nuw nsw i64 %763, 1000
  %polly.access.add.call1680.us.1 = add nuw nsw i64 %448, %polly.access.mul.call1679.us.1
  %polly.access.call1681.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us.1
  %polly.access.call1681.load.us.1 = load double, double* %polly.access.call1681.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518.us.1 = add nuw nsw i64 %polly.indvar675.us.1, 1200
  %polly.access.Packed_MemRef_call1518.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us.1
  store double %polly.access.call1681.load.us.1, double* %polly.access.Packed_MemRef_call1518.us.1, align 8
  %polly.indvar_next676.us.1 = add nuw nsw i64 %polly.indvar675.us.1, 1
  %exitcond1110.1.not = icmp eq i64 %polly.indvar675.us.1, %smin1112
  br i1 %exitcond1110.1.not, label %polly.cond682.loopexit.us.1, label %polly.loop_header671.us.1

polly.cond682.loopexit.us.1:                      ; preds = %polly.loop_header671.us.1
  br i1 %.not933, label %polly.loop_header671.us.2.preheader, label %polly.then684.us.1

polly.then684.us.1:                               ; preds = %polly.cond682.loopexit.us.1
  %polly.access.add.call1688.us.1 = or i64 %539, 1
  %polly.access.call1689.us.1 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.1
  %polly.access.call1689.load.us.1 = load double, double* %polly.access.call1689.us.1, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.1 = add nsw i64 %537, 1200
  %polly.access.Packed_MemRef_call1518692.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.1
  store double %polly.access.call1689.load.us.1, double* %polly.access.Packed_MemRef_call1518692.us.1, align 8
  br label %polly.loop_header671.us.2.preheader

polly.loop_header671.us.2.preheader:              ; preds = %polly.then684.us.1, %polly.cond682.loopexit.us.1
  br label %polly.loop_header671.us.2

polly.loop_header671.us.2:                        ; preds = %polly.loop_header671.us.2.preheader, %polly.loop_header671.us.2
  %polly.indvar675.us.2 = phi i64 [ %polly.indvar_next676.us.2, %polly.loop_header671.us.2 ], [ 0, %polly.loop_header671.us.2.preheader ]
  %764 = add nuw nsw i64 %polly.indvar675.us.2, %507
  %polly.access.mul.call1679.us.2 = mul nuw nsw i64 %764, 1000
  %polly.access.add.call1680.us.2 = add nuw nsw i64 %449, %polly.access.mul.call1679.us.2
  %polly.access.call1681.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us.2
  %polly.access.call1681.load.us.2 = load double, double* %polly.access.call1681.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518.us.2 = add nuw nsw i64 %polly.indvar675.us.2, 2400
  %polly.access.Packed_MemRef_call1518.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us.2
  store double %polly.access.call1681.load.us.2, double* %polly.access.Packed_MemRef_call1518.us.2, align 8
  %polly.indvar_next676.us.2 = add nuw nsw i64 %polly.indvar675.us.2, 1
  %exitcond1110.2.not = icmp eq i64 %polly.indvar675.us.2, %smin1112
  br i1 %exitcond1110.2.not, label %polly.cond682.loopexit.us.2, label %polly.loop_header671.us.2

polly.cond682.loopexit.us.2:                      ; preds = %polly.loop_header671.us.2
  br i1 %.not933, label %polly.loop_header671.us.3.preheader, label %polly.then684.us.2

polly.then684.us.2:                               ; preds = %polly.cond682.loopexit.us.2
  %polly.access.add.call1688.us.2 = or i64 %539, 2
  %polly.access.call1689.us.2 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.2
  %polly.access.call1689.load.us.2 = load double, double* %polly.access.call1689.us.2, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.2 = add nsw i64 %537, 2400
  %polly.access.Packed_MemRef_call1518692.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.2
  store double %polly.access.call1689.load.us.2, double* %polly.access.Packed_MemRef_call1518692.us.2, align 8
  br label %polly.loop_header671.us.3.preheader

polly.loop_header671.us.3.preheader:              ; preds = %polly.then684.us.2, %polly.cond682.loopexit.us.2
  br label %polly.loop_header671.us.3

polly.loop_header671.us.3:                        ; preds = %polly.loop_header671.us.3.preheader, %polly.loop_header671.us.3
  %polly.indvar675.us.3 = phi i64 [ %polly.indvar_next676.us.3, %polly.loop_header671.us.3 ], [ 0, %polly.loop_header671.us.3.preheader ]
  %765 = add nuw nsw i64 %polly.indvar675.us.3, %507
  %polly.access.mul.call1679.us.3 = mul nuw nsw i64 %765, 1000
  %polly.access.add.call1680.us.3 = add nuw nsw i64 %450, %polly.access.mul.call1679.us.3
  %polly.access.call1681.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1680.us.3
  %polly.access.call1681.load.us.3 = load double, double* %polly.access.call1681.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518.us.3 = add nuw nsw i64 %polly.indvar675.us.3, 3600
  %polly.access.Packed_MemRef_call1518.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518.us.3
  store double %polly.access.call1681.load.us.3, double* %polly.access.Packed_MemRef_call1518.us.3, align 8
  %polly.indvar_next676.us.3 = add nuw nsw i64 %polly.indvar675.us.3, 1
  %exitcond1110.3.not = icmp eq i64 %polly.indvar675.us.3, %smin1112
  br i1 %exitcond1110.3.not, label %polly.cond682.loopexit.us.3, label %polly.loop_header671.us.3

polly.cond682.loopexit.us.3:                      ; preds = %polly.loop_header671.us.3
  br i1 %.not933, label %polly.loop_header693.preheader, label %polly.then684.us.3

polly.then684.us.3:                               ; preds = %polly.cond682.loopexit.us.3
  %polly.access.add.call1688.us.3 = or i64 %539, 3
  %polly.access.call1689.us.3 = getelementptr double, double* %polly.access.cast.call1730, i64 %polly.access.add.call1688.us.3
  %polly.access.call1689.load.us.3 = load double, double* %polly.access.call1689.us.3, align 8, !alias.scope !121, !noalias !128
  %polly.access.add.Packed_MemRef_call1518691.us.3 = add nsw i64 %537, 3600
  %polly.access.Packed_MemRef_call1518692.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518691.us.3
  store double %polly.access.call1689.load.us.3, double* %polly.access.Packed_MemRef_call1518692.us.3, align 8
  br label %polly.loop_header693.preheader

polly.loop_header700.us.1:                        ; preds = %polly.loop_header700.us.1.preheader, %polly.loop_header700.us.1
  %polly.indvar704.us.1 = phi i64 [ %polly.indvar_next705.us.1, %polly.loop_header700.us.1 ], [ %polly.indvar704.us.1.ph, %polly.loop_header700.us.1.preheader ]
  %766 = add nuw nsw i64 %polly.indvar704.us.1, %507
  %polly.access.add.Packed_MemRef_call1518708.us.1 = add nuw nsw i64 %polly.indvar704.us.1, 1200
  %polly.access.Packed_MemRef_call1518709.us.1 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.1
  %_p_scalar_710.us.1 = load double, double* %polly.access.Packed_MemRef_call1518709.us.1, align 8
  %p_mul27.i.us.1 = fmul fast double %_p_scalar_714.us.1, %_p_scalar_710.us.1
  %polly.access.add.Packed_MemRef_call2520716.us.1 = add nuw nsw i64 %766, %polly.access.mul.Packed_MemRef_call2520711.us.1
  %polly.access.Packed_MemRef_call2520717.us.1 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.1
  %_p_scalar_718.us.1 = load double, double* %polly.access.Packed_MemRef_call2520717.us.1, align 8
  %p_mul37.i.us.1 = fmul fast double %_p_scalar_722.us.1, %_p_scalar_718.us.1
  %767 = shl i64 %766, 3
  %768 = add i64 %767, %541
  %scevgep723.us.1 = getelementptr i8, i8* %call, i64 %768
  %scevgep723724.us.1 = bitcast i8* %scevgep723.us.1 to double*
  %_p_scalar_725.us.1 = load double, double* %scevgep723724.us.1, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.1 = fadd fast double %p_mul37.i.us.1, %p_mul27.i.us.1
  %p_reass.mul.i.us.1 = fmul fast double %p_reass.add.i.us.1, 1.500000e+00
  %p_add42.i.us.1 = fadd fast double %p_reass.mul.i.us.1, %_p_scalar_725.us.1
  store double %p_add42.i.us.1, double* %scevgep723724.us.1, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us.1 = add nuw nsw i64 %polly.indvar704.us.1, 1
  %exitcond1113.1.not = icmp eq i64 %polly.indvar704.us.1, %smin1112
  br i1 %exitcond1113.1.not, label %polly.loop_exit702.loopexit.us.1, label %polly.loop_header700.us.1, !llvm.loop !179

polly.loop_exit702.loopexit.us.1:                 ; preds = %polly.loop_header700.us.1, %middle.block1320
  %polly.access.add.Packed_MemRef_call2520712.us.2 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.2, %538
  %polly.access.Packed_MemRef_call2520713.us.2 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.2
  %_p_scalar_714.us.2 = load double, double* %polly.access.Packed_MemRef_call2520713.us.2, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.2 = add nsw i64 %537, 2400
  %polly.access.Packed_MemRef_call1518721.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.2
  %_p_scalar_722.us.2 = load double, double* %polly.access.Packed_MemRef_call1518721.us.2, align 8
  %min.iters.check1292 = icmp ult i64 %529, 4
  br i1 %min.iters.check1292, label %polly.loop_header700.us.2.preheader, label %vector.memcheck1274

vector.memcheck1274:                              ; preds = %polly.loop_exit702.loopexit.us.1
  %bound01283 = icmp ult i8* %scevgep1276, %scevgep1282
  %bound11284 = icmp ult i8* %scevgep1280, %scevgep1279
  %found.conflict1285 = and i1 %bound01283, %bound11284
  br i1 %found.conflict1285, label %polly.loop_header700.us.2.preheader, label %vector.ph1293

vector.ph1293:                                    ; preds = %vector.memcheck1274
  %n.vec1295 = and i64 %529, -4
  %broadcast.splatinsert1301 = insertelement <4 x double> poison, double %_p_scalar_714.us.2, i32 0
  %broadcast.splat1302 = shufflevector <4 x double> %broadcast.splatinsert1301, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1304 = insertelement <4 x double> poison, double %_p_scalar_722.us.2, i32 0
  %broadcast.splat1305 = shufflevector <4 x double> %broadcast.splatinsert1304, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1289

vector.body1289:                                  ; preds = %vector.body1289, %vector.ph1293
  %index1296 = phi i64 [ 0, %vector.ph1293 ], [ %index.next1297, %vector.body1289 ]
  %769 = add nuw nsw i64 %index1296, %507
  %770 = add nuw nsw i64 %index1296, 2400
  %771 = getelementptr double, double* %Packed_MemRef_call1518, i64 %770
  %772 = bitcast double* %771 to <4 x double>*
  %wide.load1300 = load <4 x double>, <4 x double>* %772, align 8, !alias.scope !180
  %773 = fmul fast <4 x double> %broadcast.splat1302, %wide.load1300
  %774 = add nuw nsw i64 %769, %polly.access.mul.Packed_MemRef_call2520711.us.2
  %775 = getelementptr double, double* %Packed_MemRef_call2520, i64 %774
  %776 = bitcast double* %775 to <4 x double>*
  %wide.load1303 = load <4 x double>, <4 x double>* %776, align 8
  %777 = fmul fast <4 x double> %broadcast.splat1305, %wide.load1303
  %778 = shl i64 %769, 3
  %779 = add i64 %778, %541
  %780 = getelementptr i8, i8* %call, i64 %779
  %781 = bitcast i8* %780 to <4 x double>*
  %wide.load1306 = load <4 x double>, <4 x double>* %781, align 8, !alias.scope !183, !noalias !185
  %782 = fadd fast <4 x double> %777, %773
  %783 = fmul fast <4 x double> %782, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %784 = fadd fast <4 x double> %783, %wide.load1306
  %785 = bitcast i8* %780 to <4 x double>*
  store <4 x double> %784, <4 x double>* %785, align 8, !alias.scope !183, !noalias !185
  %index.next1297 = add i64 %index1296, 4
  %786 = icmp eq i64 %index.next1297, %n.vec1295
  br i1 %786, label %middle.block1287, label %vector.body1289, !llvm.loop !186

middle.block1287:                                 ; preds = %vector.body1289
  %cmp.n1299 = icmp eq i64 %529, %n.vec1295
  br i1 %cmp.n1299, label %polly.loop_exit702.loopexit.us.2, label %polly.loop_header700.us.2.preheader

polly.loop_header700.us.2.preheader:              ; preds = %vector.memcheck1274, %polly.loop_exit702.loopexit.us.1, %middle.block1287
  %polly.indvar704.us.2.ph = phi i64 [ 0, %vector.memcheck1274 ], [ 0, %polly.loop_exit702.loopexit.us.1 ], [ %n.vec1295, %middle.block1287 ]
  br label %polly.loop_header700.us.2

polly.loop_header700.us.2:                        ; preds = %polly.loop_header700.us.2.preheader, %polly.loop_header700.us.2
  %polly.indvar704.us.2 = phi i64 [ %polly.indvar_next705.us.2, %polly.loop_header700.us.2 ], [ %polly.indvar704.us.2.ph, %polly.loop_header700.us.2.preheader ]
  %787 = add nuw nsw i64 %polly.indvar704.us.2, %507
  %polly.access.add.Packed_MemRef_call1518708.us.2 = add nuw nsw i64 %polly.indvar704.us.2, 2400
  %polly.access.Packed_MemRef_call1518709.us.2 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.2
  %_p_scalar_710.us.2 = load double, double* %polly.access.Packed_MemRef_call1518709.us.2, align 8
  %p_mul27.i.us.2 = fmul fast double %_p_scalar_714.us.2, %_p_scalar_710.us.2
  %polly.access.add.Packed_MemRef_call2520716.us.2 = add nuw nsw i64 %787, %polly.access.mul.Packed_MemRef_call2520711.us.2
  %polly.access.Packed_MemRef_call2520717.us.2 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.2
  %_p_scalar_718.us.2 = load double, double* %polly.access.Packed_MemRef_call2520717.us.2, align 8
  %p_mul37.i.us.2 = fmul fast double %_p_scalar_722.us.2, %_p_scalar_718.us.2
  %788 = shl i64 %787, 3
  %789 = add i64 %788, %541
  %scevgep723.us.2 = getelementptr i8, i8* %call, i64 %789
  %scevgep723724.us.2 = bitcast i8* %scevgep723.us.2 to double*
  %_p_scalar_725.us.2 = load double, double* %scevgep723724.us.2, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.2 = fadd fast double %p_mul37.i.us.2, %p_mul27.i.us.2
  %p_reass.mul.i.us.2 = fmul fast double %p_reass.add.i.us.2, 1.500000e+00
  %p_add42.i.us.2 = fadd fast double %p_reass.mul.i.us.2, %_p_scalar_725.us.2
  store double %p_add42.i.us.2, double* %scevgep723724.us.2, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us.2 = add nuw nsw i64 %polly.indvar704.us.2, 1
  %exitcond1113.2.not = icmp eq i64 %polly.indvar704.us.2, %smin1112
  br i1 %exitcond1113.2.not, label %polly.loop_exit702.loopexit.us.2, label %polly.loop_header700.us.2, !llvm.loop !187

polly.loop_exit702.loopexit.us.2:                 ; preds = %polly.loop_header700.us.2, %middle.block1287
  %polly.access.add.Packed_MemRef_call2520712.us.3 = add nuw nsw i64 %polly.access.mul.Packed_MemRef_call2520711.us.3, %538
  %polly.access.Packed_MemRef_call2520713.us.3 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520712.us.3
  %_p_scalar_714.us.3 = load double, double* %polly.access.Packed_MemRef_call2520713.us.3, align 8
  %polly.access.add.Packed_MemRef_call1518720.us.3 = add nsw i64 %537, 3600
  %polly.access.Packed_MemRef_call1518721.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518720.us.3
  %_p_scalar_722.us.3 = load double, double* %polly.access.Packed_MemRef_call1518721.us.3, align 8
  %min.iters.check1259 = icmp ult i64 %536, 4
  br i1 %min.iters.check1259, label %polly.loop_header700.us.3.preheader, label %vector.ph1260

vector.ph1260:                                    ; preds = %polly.loop_exit702.loopexit.us.2
  %n.vec1262 = and i64 %536, -4
  %broadcast.splatinsert1268 = insertelement <4 x double> poison, double %_p_scalar_714.us.3, i32 0
  %broadcast.splat1269 = shufflevector <4 x double> %broadcast.splatinsert1268, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1271 = insertelement <4 x double> poison, double %_p_scalar_722.us.3, i32 0
  %broadcast.splat1272 = shufflevector <4 x double> %broadcast.splatinsert1271, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body1254

vector.body1254:                                  ; preds = %vector.body1254, %vector.ph1260
  %index1263 = phi i64 [ 0, %vector.ph1260 ], [ %index.next1264, %vector.body1254 ]
  %790 = add nuw nsw i64 %index1263, %507
  %791 = add nuw nsw i64 %index1263, 3600
  %792 = getelementptr double, double* %Packed_MemRef_call1518, i64 %791
  %793 = bitcast double* %792 to <4 x double>*
  %wide.load1267 = load <4 x double>, <4 x double>* %793, align 8
  %794 = fmul fast <4 x double> %broadcast.splat1269, %wide.load1267
  %795 = add nuw nsw i64 %790, %polly.access.mul.Packed_MemRef_call2520711.us.3
  %796 = getelementptr double, double* %Packed_MemRef_call2520, i64 %795
  %797 = bitcast double* %796 to <4 x double>*
  %wide.load1270 = load <4 x double>, <4 x double>* %797, align 8
  %798 = fmul fast <4 x double> %broadcast.splat1272, %wide.load1270
  %799 = shl i64 %790, 3
  %800 = add i64 %799, %541
  %801 = getelementptr i8, i8* %call, i64 %800
  %802 = bitcast i8* %801 to <4 x double>*
  %wide.load1273 = load <4 x double>, <4 x double>* %802, align 8, !alias.scope !118, !noalias !120
  %803 = fadd fast <4 x double> %798, %794
  %804 = fmul fast <4 x double> %803, <double 1.500000e+00, double 1.500000e+00, double 1.500000e+00, double 1.500000e+00>
  %805 = fadd fast <4 x double> %804, %wide.load1273
  %806 = bitcast i8* %801 to <4 x double>*
  store <4 x double> %805, <4 x double>* %806, align 8, !alias.scope !118, !noalias !120
  %index.next1264 = add i64 %index1263, 4
  %807 = icmp eq i64 %index.next1264, %n.vec1262
  br i1 %807, label %middle.block1252, label %vector.body1254, !llvm.loop !188

middle.block1252:                                 ; preds = %vector.body1254
  %cmp.n1266 = icmp eq i64 %536, %n.vec1262
  br i1 %cmp.n1266, label %polly.loop_exit695, label %polly.loop_header700.us.3.preheader

polly.loop_header700.us.3.preheader:              ; preds = %polly.loop_exit702.loopexit.us.2, %middle.block1252
  %polly.indvar704.us.3.ph = phi i64 [ 0, %polly.loop_exit702.loopexit.us.2 ], [ %n.vec1262, %middle.block1252 ]
  br label %polly.loop_header700.us.3

polly.loop_header700.us.3:                        ; preds = %polly.loop_header700.us.3.preheader, %polly.loop_header700.us.3
  %polly.indvar704.us.3 = phi i64 [ %polly.indvar_next705.us.3, %polly.loop_header700.us.3 ], [ %polly.indvar704.us.3.ph, %polly.loop_header700.us.3.preheader ]
  %808 = add nuw nsw i64 %polly.indvar704.us.3, %507
  %polly.access.add.Packed_MemRef_call1518708.us.3 = add nuw nsw i64 %polly.indvar704.us.3, 3600
  %polly.access.Packed_MemRef_call1518709.us.3 = getelementptr double, double* %Packed_MemRef_call1518, i64 %polly.access.add.Packed_MemRef_call1518708.us.3
  %_p_scalar_710.us.3 = load double, double* %polly.access.Packed_MemRef_call1518709.us.3, align 8
  %p_mul27.i.us.3 = fmul fast double %_p_scalar_714.us.3, %_p_scalar_710.us.3
  %polly.access.add.Packed_MemRef_call2520716.us.3 = add nuw nsw i64 %808, %polly.access.mul.Packed_MemRef_call2520711.us.3
  %polly.access.Packed_MemRef_call2520717.us.3 = getelementptr double, double* %Packed_MemRef_call2520, i64 %polly.access.add.Packed_MemRef_call2520716.us.3
  %_p_scalar_718.us.3 = load double, double* %polly.access.Packed_MemRef_call2520717.us.3, align 8
  %p_mul37.i.us.3 = fmul fast double %_p_scalar_722.us.3, %_p_scalar_718.us.3
  %809 = shl i64 %808, 3
  %810 = add i64 %809, %541
  %scevgep723.us.3 = getelementptr i8, i8* %call, i64 %810
  %scevgep723724.us.3 = bitcast i8* %scevgep723.us.3 to double*
  %_p_scalar_725.us.3 = load double, double* %scevgep723724.us.3, align 8, !alias.scope !118, !noalias !120
  %p_reass.add.i.us.3 = fadd fast double %p_mul37.i.us.3, %p_mul27.i.us.3
  %p_reass.mul.i.us.3 = fmul fast double %p_reass.add.i.us.3, 1.500000e+00
  %p_add42.i.us.3 = fadd fast double %p_reass.mul.i.us.3, %_p_scalar_725.us.3
  store double %p_add42.i.us.3, double* %scevgep723724.us.3, align 8, !alias.scope !118, !noalias !120
  %polly.indvar_next705.us.3 = add nuw nsw i64 %polly.indvar704.us.3, 1
  %exitcond1113.3.not = icmp eq i64 %polly.indvar704.us.3, %smin1112
  br i1 %exitcond1113.3.not, label %polly.loop_exit695, label %polly.loop_header700.us.3, !llvm.loop !189
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
!26 = !{!"llvm.loop.tile.size", i32 128}
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
!49 = !{!"llvm.loop.tile.size", i32 96}
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
