; ModuleID = 'syr2k_recreations//mmp_syr2k_S_187.c'
source_filename = "syr2k_recreations//mmp_syr2k_S_187.c"
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
  %call714 = bitcast i8* %call to [80 x double]*
  %call1 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %call2 = tail call i8* @polybench_alloc_data(i64 4800, i32 8) #6
  %arraydecay3 = bitcast i8* %call1 to [60 x double]*
  %arraydecay4 = bitcast i8* %call2 to [60 x double]*
  %polly.access.call1575 = getelementptr i8, i8* %call1, i64 38400
  %0 = icmp ule i8* %polly.access.call1575, %call2
  %polly.access.call2595 = getelementptr i8, i8* %call2, i64 38400
  %1 = icmp ule i8* %polly.access.call2595, %call1
  %2 = or i1 %0, %1
  %polly.access.call615 = getelementptr i8, i8* %call, i64 51200
  %3 = icmp ule i8* %polly.access.call615, %call2
  %4 = icmp ule i8* %polly.access.call2595, %call
  %5 = or i1 %3, %4
  %6 = and i1 %2, %5
  %7 = icmp ule i8* %polly.access.call615, %call1
  %8 = icmp ule i8* %polly.access.call1575, %call
  %9 = or i1 %7, %8
  %10 = and i1 %9, %6
  br i1 %10, label %polly.loop_header700, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %entry, %for.inc17.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc17.i ], [ 0, %entry ]
  %11 = mul nuw nsw i64 %indvars.iv16.i, 480
  %12 = add nuw i64 %11, 480
  %scevgep930 = getelementptr i8, i8* %call2, i64 %12
  %scevgep929 = getelementptr i8, i8* %call2, i64 %11
  %scevgep928 = getelementptr i8, i8* %call1, i64 %12
  %scevgep927 = getelementptr i8, i8* %call1, i64 %11
  %bound0 = icmp ult i8* %scevgep927, %scevgep930
  %bound1 = icmp ult i8* %scevgep929, %scevgep928
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
  br i1 %exitcond18.not.i, label %vector.ph934, label %for.cond1.preheader.i, !llvm.loop !15

vector.ph934:                                     ; preds = %for.inc17.i, %for.inc41.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.inc41.i ], [ 0, %for.inc17.i ]
  %broadcast.splatinsert941 = insertelement <4 x i64> poison, i64 %indvars.iv7.i, i32 0
  %broadcast.splat942 = shufflevector <4 x i64> %broadcast.splatinsert941, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body933

vector.body933:                                   ; preds = %vector.body933, %vector.ph934
  %index935 = phi i64 [ 0, %vector.ph934 ], [ %index.next936, %vector.body933 ]
  %vec.ind939 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph934 ], [ %vec.ind.next940, %vector.body933 ]
  %32 = mul nuw nsw <4 x i64> %vec.ind939, %broadcast.splat942
  %33 = trunc <4 x i64> %32 to <4 x i32>
  %34 = add <4 x i32> %33, <i32 3, i32 3, i32 3, i32 3>
  %35 = urem <4 x i32> %34, <i32 80, i32 80, i32 80, i32 80>
  %36 = sitofp <4 x i32> %35 to <4 x double>
  %37 = fmul fast <4 x double> %36, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %38 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv7.i, i64 %index935
  %39 = bitcast double* %38 to <4 x double>*
  store <4 x double> %37, <4 x double>* %39, align 8, !tbaa !2
  %index.next936 = add i64 %index935, 4
  %vec.ind.next940 = add <4 x i64> %vec.ind939, <i64 4, i64 4, i64 4, i64 4>
  %40 = icmp eq i64 %index.next936, 80
  br i1 %40, label %for.inc41.i, label %vector.body933, !llvm.loop !16

for.inc41.i:                                      ; preds = %vector.body933
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 80
  br i1 %exitcond9.not.i, label %init_array.exit, label %vector.ph934, !llvm.loop !17

init_array.exit:                                  ; preds = %for.inc41.i, %polly.loop_exit761.1.2
  tail call void (...) @polybench_timer_start() #6
  %41 = and i1 %9, %5
  br i1 %41, label %polly.loop_header492, label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %init_array.exit, %for.inc6.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc6.i ], [ 0, %init_array.exit ]
  %cmp24.not.i = icmp eq i64 %indvars.iv21.i, 0
  br i1 %cmp24.not.i, label %for.inc6.i, label %for.body3.i46.preheader

for.body3.i46.preheader:                          ; preds = %for.cond1.preheader.i45
  %min.iters.check = icmp ult i64 %indvars.iv21.i, 4
  br i1 %min.iters.check, label %for.body3.i46.preheader1290, label %vector.ph1216

vector.ph1216:                                    ; preds = %for.body3.i46.preheader
  %n.vec = and i64 %indvars.iv21.i, 9223372036854775804
  br label %vector.body1215

vector.body1215:                                  ; preds = %vector.body1215, %vector.ph1216
  %index1217 = phi i64 [ 0, %vector.ph1216 ], [ %index.next1218, %vector.body1215 ]
  %42 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i, i64 %index1217
  %43 = bitcast double* %42 to <4 x double>*
  %wide.load = load <4 x double>, <4 x double>* %43, align 8, !tbaa !2
  %44 = fmul fast <4 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %45 = bitcast double* %42 to <4 x double>*
  store <4 x double> %44, <4 x double>* %45, align 8, !tbaa !2
  %index.next1218 = add i64 %index1217, 4
  %46 = icmp eq i64 %index.next1218, %n.vec
  br i1 %46, label %middle.block1213, label %vector.body1215, !llvm.loop !18

middle.block1213:                                 ; preds = %vector.body1215
  %cmp.n1220 = icmp eq i64 %indvars.iv21.i, %n.vec
  br i1 %cmp.n1220, label %for.inc6.i, label %for.body3.i46.preheader1290

for.body3.i46.preheader1290:                      ; preds = %for.body3.i46.preheader, %middle.block1213
  %indvars.iv18.i.ph = phi i64 [ 0, %for.body3.i46.preheader ], [ %n.vec, %middle.block1213 ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.body3.i46.preheader1290, %for.body3.i46
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.body3.i46 ], [ %indvars.iv18.i.ph, %for.body3.i46.preheader1290 ]
  %arrayidx5.i = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i, i64 %indvars.iv18.i
  %47 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul fast double %47, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, %indvars.iv21.i
  br i1 %exitcond20.not.i, label %for.inc6.i, label %for.body3.i46, !llvm.loop !19

for.inc6.i:                                       ; preds = %for.body3.i46, %middle.block1213, %for.cond1.preheader.i45
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
  %arrayidx41.i = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv15.i, i64 %indvars.iv.i48
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

kernel_syr2k.exit:                                ; preds = %for.inc49.i, %polly.loop_exit517
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header336, label %for.cond1.preheader.i54

for.cond1.preheader.i54:                          ; preds = %kernel_syr2k.exit, %for.inc6.i63
  %indvars.iv21.i52 = phi i64 [ %indvars.iv.next22.i61, %for.inc6.i63 ], [ 0, %kernel_syr2k.exit ]
  %cmp24.not.i53 = icmp eq i64 %indvars.iv21.i52, 0
  br i1 %cmp24.not.i53, label %for.inc6.i63, label %for.body3.i60.preheader

for.body3.i60.preheader:                          ; preds = %for.cond1.preheader.i54
  %min.iters.check1236 = icmp ult i64 %indvars.iv21.i52, 4
  br i1 %min.iters.check1236, label %for.body3.i60.preheader1288, label %vector.ph1237

vector.ph1237:                                    ; preds = %for.body3.i60.preheader
  %n.vec1239 = and i64 %indvars.iv21.i52, 9223372036854775804
  br label %vector.body1235

vector.body1235:                                  ; preds = %vector.body1235, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1241, %vector.body1235 ]
  %53 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i52, i64 %index1240
  %54 = bitcast double* %53 to <4 x double>*
  %wide.load1244 = load <4 x double>, <4 x double>* %54, align 8, !tbaa !2
  %55 = fmul fast <4 x double> %wide.load1244, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %56 = bitcast double* %53 to <4 x double>*
  store <4 x double> %55, <4 x double>* %56, align 8, !tbaa !2
  %index.next1241 = add i64 %index1240, 4
  %57 = icmp eq i64 %index.next1241, %n.vec1239
  br i1 %57, label %middle.block1233, label %vector.body1235, !llvm.loop !54

middle.block1233:                                 ; preds = %vector.body1235
  %cmp.n1243 = icmp eq i64 %indvars.iv21.i52, %n.vec1239
  br i1 %cmp.n1243, label %for.inc6.i63, label %for.body3.i60.preheader1288

for.body3.i60.preheader1288:                      ; preds = %for.body3.i60.preheader, %middle.block1233
  %indvars.iv18.i55.ph = phi i64 [ 0, %for.body3.i60.preheader ], [ %n.vec1239, %middle.block1233 ]
  br label %for.body3.i60

for.body3.i60:                                    ; preds = %for.body3.i60.preheader1288, %for.body3.i60
  %indvars.iv18.i55 = phi i64 [ %indvars.iv.next19.i58, %for.body3.i60 ], [ %indvars.iv18.i55.ph, %for.body3.i60.preheader1288 ]
  %arrayidx5.i56 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i52, i64 %indvars.iv18.i55
  %58 = load double, double* %arrayidx5.i56, align 8, !tbaa !2
  %mul.i57 = fmul fast double %58, 1.200000e+00
  store double %mul.i57, double* %arrayidx5.i56, align 8, !tbaa !2
  %indvars.iv.next19.i58 = add nuw nsw i64 %indvars.iv18.i55, 1
  %exitcond20.not.i59 = icmp eq i64 %indvars.iv.next19.i58, %indvars.iv21.i52
  br i1 %exitcond20.not.i59, label %for.inc6.i63, label %for.body3.i60, !llvm.loop !55

for.inc6.i63:                                     ; preds = %for.body3.i60, %middle.block1233, %for.cond1.preheader.i54
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
  %arrayidx41.i76 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv15.i64, i64 %indvars.iv.i71
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

kernel_syr2k.exit90:                              ; preds = %for.inc49.i89, %polly.loop_exit361
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  tail call void (...) @polybench_timer_start() #6
  br i1 %41, label %polly.loop_header, label %for.cond1.preheader.i93

for.cond1.preheader.i93:                          ; preds = %kernel_syr2k.exit90, %for.inc6.i102
  %indvars.iv21.i91 = phi i64 [ %indvars.iv.next22.i100, %for.inc6.i102 ], [ 0, %kernel_syr2k.exit90 ]
  %cmp24.not.i92 = icmp eq i64 %indvars.iv21.i91, 0
  br i1 %cmp24.not.i92, label %for.inc6.i102, label %for.body3.i99.preheader

for.body3.i99.preheader:                          ; preds = %for.cond1.preheader.i93
  %min.iters.check1262 = icmp ult i64 %indvars.iv21.i91, 4
  br i1 %min.iters.check1262, label %for.body3.i99.preheader1286, label %vector.ph1263

vector.ph1263:                                    ; preds = %for.body3.i99.preheader
  %n.vec1265 = and i64 %indvars.iv21.i91, 9223372036854775804
  br label %vector.body1261

vector.body1261:                                  ; preds = %vector.body1261, %vector.ph1263
  %index1266 = phi i64 [ 0, %vector.ph1263 ], [ %index.next1267, %vector.body1261 ]
  %64 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i91, i64 %index1266
  %65 = bitcast double* %64 to <4 x double>*
  %wide.load1270 = load <4 x double>, <4 x double>* %65, align 8, !tbaa !2
  %66 = fmul fast <4 x double> %wide.load1270, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %67 = bitcast double* %64 to <4 x double>*
  store <4 x double> %66, <4 x double>* %67, align 8, !tbaa !2
  %index.next1267 = add i64 %index1266, 4
  %68 = icmp eq i64 %index.next1267, %n.vec1265
  br i1 %68, label %middle.block1259, label %vector.body1261, !llvm.loop !56

middle.block1259:                                 ; preds = %vector.body1261
  %cmp.n1269 = icmp eq i64 %indvars.iv21.i91, %n.vec1265
  br i1 %cmp.n1269, label %for.inc6.i102, label %for.body3.i99.preheader1286

for.body3.i99.preheader1286:                      ; preds = %for.body3.i99.preheader, %middle.block1259
  %indvars.iv18.i94.ph = phi i64 [ 0, %for.body3.i99.preheader ], [ %n.vec1265, %middle.block1259 ]
  br label %for.body3.i99

for.body3.i99:                                    ; preds = %for.body3.i99.preheader1286, %for.body3.i99
  %indvars.iv18.i94 = phi i64 [ %indvars.iv.next19.i97, %for.body3.i99 ], [ %indvars.iv18.i94.ph, %for.body3.i99.preheader1286 ]
  %arrayidx5.i95 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv21.i91, i64 %indvars.iv18.i94
  %69 = load double, double* %arrayidx5.i95, align 8, !tbaa !2
  %mul.i96 = fmul fast double %69, 1.200000e+00
  store double %mul.i96, double* %arrayidx5.i95, align 8, !tbaa !2
  %indvars.iv.next19.i97 = add nuw nsw i64 %indvars.iv18.i94, 1
  %exitcond20.not.i98 = icmp eq i64 %indvars.iv.next19.i97, %indvars.iv21.i91
  br i1 %exitcond20.not.i98, label %for.inc6.i102, label %for.body3.i99, !llvm.loop !57

for.inc6.i102:                                    ; preds = %for.body3.i99, %middle.block1259, %for.cond1.preheader.i93
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
  %arrayidx41.i115 = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv15.i103, i64 %indvars.iv.i110
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

kernel_syr2k.exit129:                             ; preds = %for.inc49.i128, %polly.loop_exit207
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit129
  %75 = load i8*, i8** %argv, align 8, !tbaa !58
  %strcmpload = load i8, i8* %75, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %77 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %76) #7
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
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
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %82) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %arrayidx8.i = getelementptr inbounds [80 x double], [80 x double]* %call714, i64 %indvars.iv4.i, i64 %indvars.iv.i41
  %84 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %84) #7
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 80
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !60

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 80
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !61

print_array.exit:                                 ; preds = %for.inc10.i
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !58
  %87 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %86) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit129
  tail call void @free(i8* nonnull %call) #6
  tail call void @free(i8* %call1) #6
  tail call void @free(i8* %call2) #6
  ret i32 0

polly.loop_header:                                ; preds = %kernel_syr2k.exit90, %polly.loop_exit193
  %indvar1274 = phi i64 [ %indvar.next1275, %polly.loop_exit193 ], [ 0, %kernel_syr2k.exit90 ]
  %polly.indvar = phi i64 [ %polly.indvar_next, %polly.loop_exit193 ], [ 1, %kernel_syr2k.exit90 ]
  %88 = add i64 %indvar1274, 1
  %89 = mul nuw nsw i64 %polly.indvar, 640
  %scevgep = getelementptr i8, i8* %call, i64 %89
  %min.iters.check1276 = icmp ult i64 %88, 4
  br i1 %min.iters.check1276, label %polly.loop_header191.preheader, label %vector.ph1277

vector.ph1277:                                    ; preds = %polly.loop_header
  %n.vec1279 = and i64 %88, -4
  br label %vector.body1273

vector.body1273:                                  ; preds = %vector.body1273, %vector.ph1277
  %index1280 = phi i64 [ 0, %vector.ph1277 ], [ %index.next1281, %vector.body1273 ]
  %90 = shl nuw nsw i64 %index1280, 3
  %91 = getelementptr i8, i8* %scevgep, i64 %90
  %92 = bitcast i8* %91 to <4 x double>*
  %wide.load1284 = load <4 x double>, <4 x double>* %92, align 8, !alias.scope !62, !noalias !64
  %93 = fmul fast <4 x double> %wide.load1284, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %94 = bitcast i8* %91 to <4 x double>*
  store <4 x double> %93, <4 x double>* %94, align 8, !alias.scope !62, !noalias !64
  %index.next1281 = add i64 %index1280, 4
  %95 = icmp eq i64 %index.next1281, %n.vec1279
  br i1 %95, label %middle.block1271, label %vector.body1273, !llvm.loop !67

middle.block1271:                                 ; preds = %vector.body1273
  %cmp.n1283 = icmp eq i64 %88, %n.vec1279
  br i1 %cmp.n1283, label %polly.loop_exit193, label %polly.loop_header191.preheader

polly.loop_header191.preheader:                   ; preds = %polly.loop_header, %middle.block1271
  %polly.indvar194.ph = phi i64 [ 0, %polly.loop_header ], [ %n.vec1279, %middle.block1271 ]
  br label %polly.loop_header191

polly.loop_exit193:                               ; preds = %polly.loop_header191, %middle.block1271
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond795.not = icmp eq i64 %polly.indvar_next, 80
  %indvar.next1275 = add i64 %indvar1274, 1
  br i1 %exitcond795.not, label %polly.loop_header199, label %polly.loop_header

polly.loop_header191:                             ; preds = %polly.loop_header191.preheader, %polly.loop_header191
  %polly.indvar194 = phi i64 [ %polly.indvar_next195, %polly.loop_header191 ], [ %polly.indvar194.ph, %polly.loop_header191.preheader ]
  %96 = shl nuw nsw i64 %polly.indvar194, 3
  %scevgep197 = getelementptr i8, i8* %scevgep, i64 %96
  %scevgep197198 = bitcast i8* %scevgep197 to double*
  %_p_scalar_ = load double, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %p_mul.i96 = fmul fast double %_p_scalar_, 1.200000e+00
  store double %p_mul.i96, double* %scevgep197198, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next195 = add nuw nsw i64 %polly.indvar194, 1
  %exitcond794.not = icmp eq i64 %polly.indvar_next195, %polly.indvar
  br i1 %exitcond794.not, label %polly.loop_exit193, label %polly.loop_header191, !llvm.loop !68

polly.loop_header199:                             ; preds = %polly.loop_exit193, %polly.loop_exit207
  %indvars.iv786 = phi i64 [ %indvars.iv.next787, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv782 = phi i64 [ %indvars.iv.next783, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %polly.indvar202 = phi i64 [ %polly.indvar_next203, %polly.loop_exit207 ], [ 0, %polly.loop_exit193 ]
  %97 = udiv i64 %indvars.iv782, 5
  %98 = mul nuw nsw i64 %97, 20
  %99 = sub nsw i64 %indvars.iv, %98
  %100 = add i64 %indvars.iv786, %98
  %polly.indvar202.tr = trunc i64 %polly.indvar202 to i8
  %pexp.p_div_q.lhs.trunc = shl i8 %polly.indvar202.tr, 1
  %pexp.p_div_q770 = udiv i8 %pexp.p_div_q.lhs.trunc, 5
  %pexp.p_div_q.zext = zext i8 %pexp.p_div_q770 to i64
  %101 = shl nsw i64 %polly.indvar202, 3
  %102 = mul nsw i64 %polly.indvar202, -8
  br label %polly.loop_header205

polly.loop_exit207:                               ; preds = %polly.loop_exit213
  %polly.indvar_next203 = add nuw nsw i64 %polly.indvar202, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 2
  %indvars.iv.next787 = add nsw i64 %indvars.iv786, -8
  %exitcond793.not = icmp eq i64 %polly.indvar_next203, 10
  br i1 %exitcond793.not, label %kernel_syr2k.exit129, label %polly.loop_header199

polly.loop_header205:                             ; preds = %polly.loop_exit213, %polly.loop_header199
  %indvars.iv788 = phi i64 [ %indvars.iv.next789, %polly.loop_exit213 ], [ %100, %polly.loop_header199 ]
  %indvars.iv784 = phi i64 [ %indvars.iv.next785, %polly.loop_exit213 ], [ %99, %polly.loop_header199 ]
  %polly.indvar208 = phi i64 [ %polly.indvar_next209, %polly.loop_exit213 ], [ %pexp.p_div_q.zext, %polly.loop_header199 ]
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv784, i64 0)
  %103 = add i64 %smax, %indvars.iv788
  %104 = mul nuw nsw i64 %polly.indvar208, 20
  %105 = sub nsw i64 %101, %104
  %106 = icmp sgt i64 %105, 0
  %107 = select i1 %106, i64 %105, i64 0
  %polly.loop_guard = icmp slt i64 %107, 20
  br i1 %polly.loop_guard, label %polly.loop_header211.us, label %polly.loop_exit213

polly.loop_header211.us:                          ; preds = %polly.loop_header205, %polly.loop_exit219.loopexit.us
  %polly.indvar214.us = phi i64 [ %polly.indvar_next215.us, %polly.loop_exit219.loopexit.us ], [ 0, %polly.loop_header205 ]
  %108 = shl nuw nsw i64 %polly.indvar214.us, 3
  %scevgep231.us = getelementptr i8, i8* %call1, i64 %108
  %scevgep235.us = getelementptr i8, i8* %call2, i64 %108
  br label %polly.loop_header217.us

polly.loop_header217.us:                          ; preds = %polly.loop_exit226.us, %polly.loop_header211.us
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %polly.loop_exit226.us ], [ %103, %polly.loop_header211.us ]
  %polly.indvar220.us = phi i64 [ %polly.indvar_next221.us, %polly.loop_exit226.us ], [ %107, %polly.loop_header211.us ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv790, i64 7)
  %109 = add nuw i64 %polly.indvar220.us, %104
  %110 = add i64 %109, %102
  %polly.loop_guard227.us916 = icmp sgt i64 %110, -1
  br i1 %polly.loop_guard227.us916, label %polly.loop_header224.preheader.us, label %polly.loop_exit226.us

polly.loop_header224.us:                          ; preds = %polly.loop_header224.preheader.us, %polly.loop_header224.us
  %polly.indvar228.us = phi i64 [ %polly.indvar_next229.us, %polly.loop_header224.us ], [ 0, %polly.loop_header224.preheader.us ]
  %111 = add nuw nsw i64 %polly.indvar228.us, %101
  %112 = mul nuw nsw i64 %111, 480
  %scevgep232.us = getelementptr i8, i8* %scevgep231.us, i64 %112
  %scevgep232233.us = bitcast i8* %scevgep232.us to double*
  %_p_scalar_234.us = load double, double* %scevgep232233.us, align 8, !alias.scope !65, !noalias !70
  %p_mul27.i112.us = fmul fast double %_p_scalar_238.us, %_p_scalar_234.us
  %scevgep240.us = getelementptr i8, i8* %scevgep235.us, i64 %112
  %scevgep240241.us = bitcast i8* %scevgep240.us to double*
  %_p_scalar_242.us = load double, double* %scevgep240241.us, align 8, !alias.scope !66, !noalias !71
  %p_mul37.i114.us = fmul fast double %_p_scalar_246.us, %_p_scalar_242.us
  %113 = shl i64 %111, 3
  %114 = add i64 %113, %116
  %scevgep247.us = getelementptr i8, i8* %call, i64 %114
  %scevgep247248.us = bitcast i8* %scevgep247.us to double*
  %_p_scalar_249.us = load double, double* %scevgep247248.us, align 8, !alias.scope !62, !noalias !64
  %p_reass.add.i116.us = fadd fast double %p_mul37.i114.us, %p_mul27.i112.us
  %p_reass.mul.i117.us = fmul fast double %p_reass.add.i116.us, 1.500000e+00
  %p_add42.i118.us = fadd fast double %p_reass.mul.i117.us, %_p_scalar_249.us
  store double %p_add42.i118.us, double* %scevgep247248.us, align 8, !alias.scope !62, !noalias !64
  %polly.indvar_next229.us = add nuw nsw i64 %polly.indvar228.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar228.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit226.us, label %polly.loop_header224.us

polly.loop_exit226.us:                            ; preds = %polly.loop_header224.us, %polly.loop_header217.us
  %polly.indvar_next221.us = add nuw nsw i64 %polly.indvar220.us, 1
  %polly.loop_cond222.us = icmp ult i64 %polly.indvar220.us, 19
  %indvars.iv.next791 = add i64 %indvars.iv790, 1
  br i1 %polly.loop_cond222.us, label %polly.loop_header217.us, label %polly.loop_exit219.loopexit.us

polly.loop_header224.preheader.us:                ; preds = %polly.loop_header217.us
  %115 = mul i64 %109, 480
  %scevgep236.us = getelementptr i8, i8* %scevgep235.us, i64 %115
  %scevgep236237.us = bitcast i8* %scevgep236.us to double*
  %_p_scalar_238.us = load double, double* %scevgep236237.us, align 8, !alias.scope !66, !noalias !71
  %scevgep244.us = getelementptr i8, i8* %scevgep231.us, i64 %115
  %scevgep244245.us = bitcast i8* %scevgep244.us to double*
  %_p_scalar_246.us = load double, double* %scevgep244245.us, align 8, !alias.scope !65, !noalias !70
  %116 = mul i64 %109, 640
  br label %polly.loop_header224.us

polly.loop_exit219.loopexit.us:                   ; preds = %polly.loop_exit226.us
  %polly.indvar_next215.us = add nuw nsw i64 %polly.indvar214.us, 1
  %exitcond792.not = icmp eq i64 %polly.indvar_next215.us, 60
  br i1 %exitcond792.not, label %polly.loop_exit213, label %polly.loop_header211.us

polly.loop_exit213:                               ; preds = %polly.loop_exit219.loopexit.us, %polly.loop_header205
  %polly.indvar_next209 = add nuw nsw i64 %polly.indvar208, 1
  %polly.loop_cond210 = icmp ult i64 %polly.indvar208, 3
  %indvars.iv.next785 = add i64 %indvars.iv784, -20
  %indvars.iv.next789 = add i64 %indvars.iv788, 20
  br i1 %polly.loop_cond210, label %polly.loop_header205, label %polly.loop_exit207

polly.loop_header336:                             ; preds = %kernel_syr2k.exit, %polly.loop_exit344
  %indvar1248 = phi i64 [ %indvar.next1249, %polly.loop_exit344 ], [ 0, %kernel_syr2k.exit ]
  %polly.indvar339 = phi i64 [ %polly.indvar_next340, %polly.loop_exit344 ], [ 1, %kernel_syr2k.exit ]
  %117 = add i64 %indvar1248, 1
  %118 = mul nuw nsw i64 %polly.indvar339, 640
  %scevgep348 = getelementptr i8, i8* %call, i64 %118
  %min.iters.check1250 = icmp ult i64 %117, 4
  br i1 %min.iters.check1250, label %polly.loop_header342.preheader, label %vector.ph1251

vector.ph1251:                                    ; preds = %polly.loop_header336
  %n.vec1253 = and i64 %117, -4
  br label %vector.body1247

vector.body1247:                                  ; preds = %vector.body1247, %vector.ph1251
  %index1254 = phi i64 [ 0, %vector.ph1251 ], [ %index.next1255, %vector.body1247 ]
  %119 = shl nuw nsw i64 %index1254, 3
  %120 = getelementptr i8, i8* %scevgep348, i64 %119
  %121 = bitcast i8* %120 to <4 x double>*
  %wide.load1258 = load <4 x double>, <4 x double>* %121, align 8, !alias.scope !72, !noalias !74
  %122 = fmul fast <4 x double> %wide.load1258, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %123 = bitcast i8* %120 to <4 x double>*
  store <4 x double> %122, <4 x double>* %123, align 8, !alias.scope !72, !noalias !74
  %index.next1255 = add i64 %index1254, 4
  %124 = icmp eq i64 %index.next1255, %n.vec1253
  br i1 %124, label %middle.block1245, label %vector.body1247, !llvm.loop !77

middle.block1245:                                 ; preds = %vector.body1247
  %cmp.n1257 = icmp eq i64 %117, %n.vec1253
  br i1 %cmp.n1257, label %polly.loop_exit344, label %polly.loop_header342.preheader

polly.loop_header342.preheader:                   ; preds = %polly.loop_header336, %middle.block1245
  %polly.indvar345.ph = phi i64 [ 0, %polly.loop_header336 ], [ %n.vec1253, %middle.block1245 ]
  br label %polly.loop_header342

polly.loop_exit344:                               ; preds = %polly.loop_header342, %middle.block1245
  %polly.indvar_next340 = add nuw nsw i64 %polly.indvar339, 1
  %exitcond814.not = icmp eq i64 %polly.indvar_next340, 80
  %indvar.next1249 = add i64 %indvar1248, 1
  br i1 %exitcond814.not, label %polly.loop_header352, label %polly.loop_header336

polly.loop_header342:                             ; preds = %polly.loop_header342.preheader, %polly.loop_header342
  %polly.indvar345 = phi i64 [ %polly.indvar_next346, %polly.loop_header342 ], [ %polly.indvar345.ph, %polly.loop_header342.preheader ]
  %125 = shl nuw nsw i64 %polly.indvar345, 3
  %scevgep349 = getelementptr i8, i8* %scevgep348, i64 %125
  %scevgep349350 = bitcast i8* %scevgep349 to double*
  %_p_scalar_351 = load double, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %p_mul.i57 = fmul fast double %_p_scalar_351, 1.200000e+00
  store double %p_mul.i57, double* %scevgep349350, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next346 = add nuw nsw i64 %polly.indvar345, 1
  %exitcond813.not = icmp eq i64 %polly.indvar_next346, %polly.indvar339
  br i1 %exitcond813.not, label %polly.loop_exit344, label %polly.loop_header342, !llvm.loop !78

polly.loop_header352:                             ; preds = %polly.loop_exit344, %polly.loop_exit361
  %indvars.iv803 = phi i64 [ %indvars.iv.next804, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %indvars.iv796 = phi i64 [ %indvars.iv.next797, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %polly.indvar355 = phi i64 [ %polly.indvar_next356, %polly.loop_exit361 ], [ 0, %polly.loop_exit344 ]
  %126 = udiv i64 %indvars.iv798, 5
  %127 = mul nuw nsw i64 %126, 20
  %128 = sub nsw i64 %indvars.iv796, %127
  %129 = add i64 %indvars.iv803, %127
  %polly.indvar355.tr = trunc i64 %polly.indvar355 to i8
  %pexp.p_div_q358.lhs.trunc = shl i8 %polly.indvar355.tr, 1
  %pexp.p_div_q358769 = udiv i8 %pexp.p_div_q358.lhs.trunc, 5
  %pexp.p_div_q358.zext = zext i8 %pexp.p_div_q358769 to i64
  %130 = shl nsw i64 %polly.indvar355, 3
  %131 = mul nsw i64 %polly.indvar355, -8
  br label %polly.loop_header359

polly.loop_exit361:                               ; preds = %polly.loop_exit367
  %polly.indvar_next356 = add nuw nsw i64 %polly.indvar355, 1
  %indvars.iv.next797 = add nuw nsw i64 %indvars.iv796, 8
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 2
  %indvars.iv.next804 = add nsw i64 %indvars.iv803, -8
  %exitcond812.not = icmp eq i64 %polly.indvar_next356, 10
  br i1 %exitcond812.not, label %kernel_syr2k.exit90, label %polly.loop_header352

polly.loop_header359:                             ; preds = %polly.loop_exit367, %polly.loop_header352
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %polly.loop_exit367 ], [ %129, %polly.loop_header352 ]
  %indvars.iv800 = phi i64 [ %indvars.iv.next801, %polly.loop_exit367 ], [ %128, %polly.loop_header352 ]
  %polly.indvar362 = phi i64 [ %polly.indvar_next363, %polly.loop_exit367 ], [ %pexp.p_div_q358.zext, %polly.loop_header352 ]
  %smax802 = call i64 @llvm.smax.i64(i64 %indvars.iv800, i64 0)
  %132 = add i64 %smax802, %indvars.iv805
  %133 = mul nuw nsw i64 %polly.indvar362, 20
  %134 = sub nsw i64 %130, %133
  %135 = icmp sgt i64 %134, 0
  %136 = select i1 %135, i64 %134, i64 0
  %polly.loop_guard375 = icmp slt i64 %136, 20
  br i1 %polly.loop_guard375, label %polly.loop_header365.us, label %polly.loop_exit367

polly.loop_header365.us:                          ; preds = %polly.loop_header359, %polly.loop_exit374.loopexit.us
  %polly.indvar368.us = phi i64 [ %polly.indvar_next369.us, %polly.loop_exit374.loopexit.us ], [ 0, %polly.loop_header359 ]
  %137 = shl nuw nsw i64 %polly.indvar368.us, 3
  %scevgep387.us = getelementptr i8, i8* %call1, i64 %137
  %scevgep391.us = getelementptr i8, i8* %call2, i64 %137
  br label %polly.loop_header372.us

polly.loop_header372.us:                          ; preds = %polly.loop_exit382.us, %polly.loop_header365.us
  %indvars.iv807 = phi i64 [ %indvars.iv.next808, %polly.loop_exit382.us ], [ %132, %polly.loop_header365.us ]
  %polly.indvar376.us = phi i64 [ %polly.indvar_next377.us, %polly.loop_exit382.us ], [ %136, %polly.loop_header365.us ]
  %smin809 = call i64 @llvm.smin.i64(i64 %indvars.iv807, i64 7)
  %138 = add nuw i64 %polly.indvar376.us, %133
  %139 = add i64 %138, %131
  %polly.loop_guard383.us917 = icmp sgt i64 %139, -1
  br i1 %polly.loop_guard383.us917, label %polly.loop_header380.preheader.us, label %polly.loop_exit382.us

polly.loop_header380.us:                          ; preds = %polly.loop_header380.preheader.us, %polly.loop_header380.us
  %polly.indvar384.us = phi i64 [ %polly.indvar_next385.us, %polly.loop_header380.us ], [ 0, %polly.loop_header380.preheader.us ]
  %140 = add nuw nsw i64 %polly.indvar384.us, %130
  %141 = mul nuw nsw i64 %140, 480
  %scevgep388.us = getelementptr i8, i8* %scevgep387.us, i64 %141
  %scevgep388389.us = bitcast i8* %scevgep388.us to double*
  %_p_scalar_390.us = load double, double* %scevgep388389.us, align 8, !alias.scope !75, !noalias !79
  %p_mul27.i73.us = fmul fast double %_p_scalar_394.us, %_p_scalar_390.us
  %scevgep396.us = getelementptr i8, i8* %scevgep391.us, i64 %141
  %scevgep396397.us = bitcast i8* %scevgep396.us to double*
  %_p_scalar_398.us = load double, double* %scevgep396397.us, align 8, !alias.scope !76, !noalias !80
  %p_mul37.i75.us = fmul fast double %_p_scalar_402.us, %_p_scalar_398.us
  %142 = shl i64 %140, 3
  %143 = add i64 %142, %145
  %scevgep403.us = getelementptr i8, i8* %call, i64 %143
  %scevgep403404.us = bitcast i8* %scevgep403.us to double*
  %_p_scalar_405.us = load double, double* %scevgep403404.us, align 8, !alias.scope !72, !noalias !74
  %p_reass.add.i77.us = fadd fast double %p_mul37.i75.us, %p_mul27.i73.us
  %p_reass.mul.i78.us = fmul fast double %p_reass.add.i77.us, 1.500000e+00
  %p_add42.i79.us = fadd fast double %p_reass.mul.i78.us, %_p_scalar_405.us
  store double %p_add42.i79.us, double* %scevgep403404.us, align 8, !alias.scope !72, !noalias !74
  %polly.indvar_next385.us = add nuw nsw i64 %polly.indvar384.us, 1
  %exitcond810.not = icmp eq i64 %polly.indvar384.us, %smin809
  br i1 %exitcond810.not, label %polly.loop_exit382.us, label %polly.loop_header380.us

polly.loop_exit382.us:                            ; preds = %polly.loop_header380.us, %polly.loop_header372.us
  %polly.indvar_next377.us = add nuw nsw i64 %polly.indvar376.us, 1
  %polly.loop_cond378.us = icmp ult i64 %polly.indvar376.us, 19
  %indvars.iv.next808 = add i64 %indvars.iv807, 1
  br i1 %polly.loop_cond378.us, label %polly.loop_header372.us, label %polly.loop_exit374.loopexit.us

polly.loop_header380.preheader.us:                ; preds = %polly.loop_header372.us
  %144 = mul i64 %138, 480
  %scevgep392.us = getelementptr i8, i8* %scevgep391.us, i64 %144
  %scevgep392393.us = bitcast i8* %scevgep392.us to double*
  %_p_scalar_394.us = load double, double* %scevgep392393.us, align 8, !alias.scope !76, !noalias !80
  %scevgep400.us = getelementptr i8, i8* %scevgep387.us, i64 %144
  %scevgep400401.us = bitcast i8* %scevgep400.us to double*
  %_p_scalar_402.us = load double, double* %scevgep400401.us, align 8, !alias.scope !75, !noalias !79
  %145 = mul i64 %138, 640
  br label %polly.loop_header380.us

polly.loop_exit374.loopexit.us:                   ; preds = %polly.loop_exit382.us
  %polly.indvar_next369.us = add nuw nsw i64 %polly.indvar368.us, 1
  %exitcond811.not = icmp eq i64 %polly.indvar_next369.us, 60
  br i1 %exitcond811.not, label %polly.loop_exit367, label %polly.loop_header365.us

polly.loop_exit367:                               ; preds = %polly.loop_exit374.loopexit.us, %polly.loop_header359
  %polly.indvar_next363 = add nuw nsw i64 %polly.indvar362, 1
  %polly.loop_cond364 = icmp ult i64 %polly.indvar362, 3
  %indvars.iv.next801 = add i64 %indvars.iv800, -20
  %indvars.iv.next806 = add i64 %indvars.iv805, 20
  br i1 %polly.loop_cond364, label %polly.loop_header359, label %polly.loop_exit361

polly.loop_header492:                             ; preds = %init_array.exit, %polly.loop_exit500
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit500 ], [ 0, %init_array.exit ]
  %polly.indvar495 = phi i64 [ %polly.indvar_next496, %polly.loop_exit500 ], [ 1, %init_array.exit ]
  %146 = add i64 %indvar, 1
  %147 = mul nuw nsw i64 %polly.indvar495, 640
  %scevgep504 = getelementptr i8, i8* %call, i64 %147
  %min.iters.check1224 = icmp ult i64 %146, 4
  br i1 %min.iters.check1224, label %polly.loop_header498.preheader, label %vector.ph1225

vector.ph1225:                                    ; preds = %polly.loop_header492
  %n.vec1227 = and i64 %146, -4
  br label %vector.body1223

vector.body1223:                                  ; preds = %vector.body1223, %vector.ph1225
  %index1228 = phi i64 [ 0, %vector.ph1225 ], [ %index.next1229, %vector.body1223 ]
  %148 = shl nuw nsw i64 %index1228, 3
  %149 = getelementptr i8, i8* %scevgep504, i64 %148
  %150 = bitcast i8* %149 to <4 x double>*
  %wide.load1232 = load <4 x double>, <4 x double>* %150, align 8, !alias.scope !81, !noalias !83
  %151 = fmul fast <4 x double> %wide.load1232, <double 1.200000e+00, double 1.200000e+00, double 1.200000e+00, double 1.200000e+00>
  %152 = bitcast i8* %149 to <4 x double>*
  store <4 x double> %151, <4 x double>* %152, align 8, !alias.scope !81, !noalias !83
  %index.next1229 = add i64 %index1228, 4
  %153 = icmp eq i64 %index.next1229, %n.vec1227
  br i1 %153, label %middle.block1221, label %vector.body1223, !llvm.loop !86

middle.block1221:                                 ; preds = %vector.body1223
  %cmp.n1231 = icmp eq i64 %146, %n.vec1227
  br i1 %cmp.n1231, label %polly.loop_exit500, label %polly.loop_header498.preheader

polly.loop_header498.preheader:                   ; preds = %polly.loop_header492, %middle.block1221
  %polly.indvar501.ph = phi i64 [ 0, %polly.loop_header492 ], [ %n.vec1227, %middle.block1221 ]
  br label %polly.loop_header498

polly.loop_exit500:                               ; preds = %polly.loop_header498, %middle.block1221
  %polly.indvar_next496 = add nuw nsw i64 %polly.indvar495, 1
  %exitcond833.not = icmp eq i64 %polly.indvar_next496, 80
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond833.not, label %polly.loop_header508, label %polly.loop_header492

polly.loop_header498:                             ; preds = %polly.loop_header498.preheader, %polly.loop_header498
  %polly.indvar501 = phi i64 [ %polly.indvar_next502, %polly.loop_header498 ], [ %polly.indvar501.ph, %polly.loop_header498.preheader ]
  %154 = shl nuw nsw i64 %polly.indvar501, 3
  %scevgep505 = getelementptr i8, i8* %scevgep504, i64 %154
  %scevgep505506 = bitcast i8* %scevgep505 to double*
  %_p_scalar_507 = load double, double* %scevgep505506, align 8, !alias.scope !81, !noalias !83
  %p_mul.i = fmul fast double %_p_scalar_507, 1.200000e+00
  store double %p_mul.i, double* %scevgep505506, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next502 = add nuw nsw i64 %polly.indvar501, 1
  %exitcond832.not = icmp eq i64 %polly.indvar_next502, %polly.indvar495
  br i1 %exitcond832.not, label %polly.loop_exit500, label %polly.loop_header498, !llvm.loop !87

polly.loop_header508:                             ; preds = %polly.loop_exit500, %polly.loop_exit517
  %indvars.iv822 = phi i64 [ %indvars.iv.next823, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %indvars.iv817 = phi i64 [ %indvars.iv.next818, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %indvars.iv815 = phi i64 [ %indvars.iv.next816, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %polly.indvar511 = phi i64 [ %polly.indvar_next512, %polly.loop_exit517 ], [ 0, %polly.loop_exit500 ]
  %155 = udiv i64 %indvars.iv817, 5
  %156 = mul nuw nsw i64 %155, 20
  %157 = sub nsw i64 %indvars.iv815, %156
  %158 = add i64 %indvars.iv822, %156
  %polly.indvar511.tr = trunc i64 %polly.indvar511 to i8
  %pexp.p_div_q514.lhs.trunc = shl i8 %polly.indvar511.tr, 1
  %pexp.p_div_q514768 = udiv i8 %pexp.p_div_q514.lhs.trunc, 5
  %pexp.p_div_q514.zext = zext i8 %pexp.p_div_q514768 to i64
  %159 = shl nsw i64 %polly.indvar511, 3
  %160 = mul nsw i64 %polly.indvar511, -8
  br label %polly.loop_header515

polly.loop_exit517:                               ; preds = %polly.loop_exit523
  %polly.indvar_next512 = add nuw nsw i64 %polly.indvar511, 1
  %indvars.iv.next816 = add nuw nsw i64 %indvars.iv815, 8
  %indvars.iv.next818 = add nuw nsw i64 %indvars.iv817, 2
  %indvars.iv.next823 = add nsw i64 %indvars.iv822, -8
  %exitcond831.not = icmp eq i64 %polly.indvar_next512, 10
  br i1 %exitcond831.not, label %kernel_syr2k.exit, label %polly.loop_header508

polly.loop_header515:                             ; preds = %polly.loop_exit523, %polly.loop_header508
  %indvars.iv824 = phi i64 [ %indvars.iv.next825, %polly.loop_exit523 ], [ %158, %polly.loop_header508 ]
  %indvars.iv819 = phi i64 [ %indvars.iv.next820, %polly.loop_exit523 ], [ %157, %polly.loop_header508 ]
  %polly.indvar518 = phi i64 [ %polly.indvar_next519, %polly.loop_exit523 ], [ %pexp.p_div_q514.zext, %polly.loop_header508 ]
  %smax821 = call i64 @llvm.smax.i64(i64 %indvars.iv819, i64 0)
  %161 = add i64 %smax821, %indvars.iv824
  %162 = mul nuw nsw i64 %polly.indvar518, 20
  %163 = sub nsw i64 %159, %162
  %164 = icmp sgt i64 %163, 0
  %165 = select i1 %164, i64 %163, i64 0
  %polly.loop_guard531 = icmp slt i64 %165, 20
  br i1 %polly.loop_guard531, label %polly.loop_header521.us, label %polly.loop_exit523

polly.loop_header521.us:                          ; preds = %polly.loop_header515, %polly.loop_exit530.loopexit.us
  %polly.indvar524.us = phi i64 [ %polly.indvar_next525.us, %polly.loop_exit530.loopexit.us ], [ 0, %polly.loop_header515 ]
  %166 = shl nuw nsw i64 %polly.indvar524.us, 3
  %scevgep543.us = getelementptr i8, i8* %call1, i64 %166
  %scevgep547.us = getelementptr i8, i8* %call2, i64 %166
  br label %polly.loop_header528.us

polly.loop_header528.us:                          ; preds = %polly.loop_exit538.us, %polly.loop_header521.us
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %polly.loop_exit538.us ], [ %161, %polly.loop_header521.us ]
  %polly.indvar532.us = phi i64 [ %polly.indvar_next533.us, %polly.loop_exit538.us ], [ %165, %polly.loop_header521.us ]
  %smin828 = call i64 @llvm.smin.i64(i64 %indvars.iv826, i64 7)
  %167 = add nuw i64 %polly.indvar532.us, %162
  %168 = add i64 %167, %160
  %polly.loop_guard539.us918 = icmp sgt i64 %168, -1
  br i1 %polly.loop_guard539.us918, label %polly.loop_header536.preheader.us, label %polly.loop_exit538.us

polly.loop_header536.us:                          ; preds = %polly.loop_header536.preheader.us, %polly.loop_header536.us
  %polly.indvar540.us = phi i64 [ %polly.indvar_next541.us, %polly.loop_header536.us ], [ 0, %polly.loop_header536.preheader.us ]
  %169 = add nuw nsw i64 %polly.indvar540.us, %159
  %170 = mul nuw nsw i64 %169, 480
  %scevgep544.us = getelementptr i8, i8* %scevgep543.us, i64 %170
  %scevgep544545.us = bitcast i8* %scevgep544.us to double*
  %_p_scalar_546.us = load double, double* %scevgep544545.us, align 8, !alias.scope !84, !noalias !88
  %p_mul27.i.us = fmul fast double %_p_scalar_550.us, %_p_scalar_546.us
  %scevgep552.us = getelementptr i8, i8* %scevgep547.us, i64 %170
  %scevgep552553.us = bitcast i8* %scevgep552.us to double*
  %_p_scalar_554.us = load double, double* %scevgep552553.us, align 8, !alias.scope !85, !noalias !89
  %p_mul37.i.us = fmul fast double %_p_scalar_558.us, %_p_scalar_554.us
  %171 = shl i64 %169, 3
  %172 = add i64 %171, %174
  %scevgep559.us = getelementptr i8, i8* %call, i64 %172
  %scevgep559560.us = bitcast i8* %scevgep559.us to double*
  %_p_scalar_561.us = load double, double* %scevgep559560.us, align 8, !alias.scope !81, !noalias !83
  %p_reass.add.i.us = fadd fast double %p_mul37.i.us, %p_mul27.i.us
  %p_reass.mul.i.us = fmul fast double %p_reass.add.i.us, 1.500000e+00
  %p_add42.i.us = fadd fast double %p_reass.mul.i.us, %_p_scalar_561.us
  store double %p_add42.i.us, double* %scevgep559560.us, align 8, !alias.scope !81, !noalias !83
  %polly.indvar_next541.us = add nuw nsw i64 %polly.indvar540.us, 1
  %exitcond829.not = icmp eq i64 %polly.indvar540.us, %smin828
  br i1 %exitcond829.not, label %polly.loop_exit538.us, label %polly.loop_header536.us

polly.loop_exit538.us:                            ; preds = %polly.loop_header536.us, %polly.loop_header528.us
  %polly.indvar_next533.us = add nuw nsw i64 %polly.indvar532.us, 1
  %polly.loop_cond534.us = icmp ult i64 %polly.indvar532.us, 19
  %indvars.iv.next827 = add i64 %indvars.iv826, 1
  br i1 %polly.loop_cond534.us, label %polly.loop_header528.us, label %polly.loop_exit530.loopexit.us

polly.loop_header536.preheader.us:                ; preds = %polly.loop_header528.us
  %173 = mul i64 %167, 480
  %scevgep548.us = getelementptr i8, i8* %scevgep547.us, i64 %173
  %scevgep548549.us = bitcast i8* %scevgep548.us to double*
  %_p_scalar_550.us = load double, double* %scevgep548549.us, align 8, !alias.scope !85, !noalias !89
  %scevgep556.us = getelementptr i8, i8* %scevgep543.us, i64 %173
  %scevgep556557.us = bitcast i8* %scevgep556.us to double*
  %_p_scalar_558.us = load double, double* %scevgep556557.us, align 8, !alias.scope !84, !noalias !88
  %174 = mul i64 %167, 640
  br label %polly.loop_header536.us

polly.loop_exit530.loopexit.us:                   ; preds = %polly.loop_exit538.us
  %polly.indvar_next525.us = add nuw nsw i64 %polly.indvar524.us, 1
  %exitcond830.not = icmp eq i64 %polly.indvar_next525.us, 60
  br i1 %exitcond830.not, label %polly.loop_exit523, label %polly.loop_header521.us

polly.loop_exit523:                               ; preds = %polly.loop_exit530.loopexit.us, %polly.loop_header515
  %polly.indvar_next519 = add nuw nsw i64 %polly.indvar518, 1
  %polly.loop_cond520 = icmp ult i64 %polly.indvar518, 3
  %indvars.iv.next820 = add i64 %indvars.iv819, -20
  %indvars.iv.next825 = add i64 %indvars.iv824, 20
  br i1 %polly.loop_cond520, label %polly.loop_header515, label %polly.loop_exit517

polly.loop_header700:                             ; preds = %entry, %polly.loop_exit708
  %polly.indvar703 = phi i64 [ %polly.indvar_next704, %polly.loop_exit708 ], [ 0, %entry ]
  %175 = mul nuw nsw i64 %polly.indvar703, 640
  %176 = trunc i64 %polly.indvar703 to i32
  %broadcast.splatinsert955 = insertelement <4 x i32> poison, i32 %176, i32 0
  %broadcast.splat956 = shufflevector <4 x i32> %broadcast.splatinsert955, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body945

vector.body945:                                   ; preds = %vector.body945, %polly.loop_header700
  %index947 = phi i64 [ 0, %polly.loop_header700 ], [ %index.next948, %vector.body945 ]
  %vec.ind953 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700 ], [ %vec.ind.next954, %vector.body945 ]
  %177 = mul <4 x i32> %vec.ind953, %broadcast.splat956
  %178 = add <4 x i32> %177, <i32 3, i32 3, i32 3, i32 3>
  %179 = urem <4 x i32> %178, <i32 80, i32 80, i32 80, i32 80>
  %180 = sitofp <4 x i32> %179 to <4 x double>
  %181 = fmul fast <4 x double> %180, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %182 = shl i64 %index947, 3
  %183 = add nuw nsw i64 %182, %175
  %184 = getelementptr i8, i8* %call, i64 %183
  %185 = bitcast i8* %184 to <4 x double>*
  store <4 x double> %181, <4 x double>* %185, align 8, !alias.scope !90, !noalias !92
  %index.next948 = add i64 %index947, 4
  %vec.ind.next954 = add <4 x i32> %vec.ind953, <i32 4, i32 4, i32 4, i32 4>
  %186 = icmp eq i64 %index.next948, 32
  br i1 %186, label %polly.loop_exit708, label %vector.body945, !llvm.loop !95

polly.loop_exit708:                               ; preds = %vector.body945
  %polly.indvar_next704 = add nuw nsw i64 %polly.indvar703, 1
  %exitcond853.not = icmp eq i64 %polly.indvar_next704, 32
  br i1 %exitcond853.not, label %polly.loop_header700.1, label %polly.loop_header700

polly.loop_header727:                             ; preds = %polly.loop_exit708.2.2, %polly.loop_exit735
  %polly.indvar730 = phi i64 [ %polly.indvar_next731, %polly.loop_exit735 ], [ 0, %polly.loop_exit708.2.2 ]
  %187 = mul nuw nsw i64 %polly.indvar730, 480
  %188 = trunc i64 %polly.indvar730 to i32
  %broadcast.splatinsert1069 = insertelement <4 x i32> poison, i32 %188, i32 0
  %broadcast.splat1070 = shufflevector <4 x i32> %broadcast.splatinsert1069, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1059

vector.body1059:                                  ; preds = %vector.body1059, %polly.loop_header727
  %index1061 = phi i64 [ 0, %polly.loop_header727 ], [ %index.next1062, %vector.body1059 ]
  %vec.ind1067 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727 ], [ %vec.ind.next1068, %vector.body1059 ]
  %189 = mul <4 x i32> %vec.ind1067, %broadcast.splat1070
  %190 = add <4 x i32> %189, <i32 2, i32 2, i32 2, i32 2>
  %191 = urem <4 x i32> %190, <i32 60, i32 60, i32 60, i32 60>
  %192 = sitofp <4 x i32> %191 to <4 x double>
  %193 = fmul fast <4 x double> %192, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %194 = shl i64 %index1061, 3
  %195 = add i64 %194, %187
  %196 = getelementptr i8, i8* %call2, i64 %195
  %197 = bitcast i8* %196 to <4 x double>*
  store <4 x double> %193, <4 x double>* %197, align 8, !alias.scope !94, !noalias !96
  %index.next1062 = add i64 %index1061, 4
  %vec.ind.next1068 = add <4 x i32> %vec.ind1067, <i32 4, i32 4, i32 4, i32 4>
  %198 = icmp eq i64 %index.next1062, 32
  br i1 %198, label %polly.loop_exit735, label %vector.body1059, !llvm.loop !97

polly.loop_exit735:                               ; preds = %vector.body1059
  %polly.indvar_next731 = add nuw nsw i64 %polly.indvar730, 1
  %exitcond844.not = icmp eq i64 %polly.indvar_next731, 32
  br i1 %exitcond844.not, label %polly.loop_header727.1, label %polly.loop_header727

polly.loop_header753:                             ; preds = %polly.loop_exit735.1.2, %polly.loop_exit761
  %polly.indvar756 = phi i64 [ %polly.indvar_next757, %polly.loop_exit761 ], [ 0, %polly.loop_exit735.1.2 ]
  %199 = mul nuw nsw i64 %polly.indvar756, 480
  %200 = trunc i64 %polly.indvar756 to i32
  %broadcast.splatinsert1147 = insertelement <4 x i32> poison, i32 %200, i32 0
  %broadcast.splat1148 = shufflevector <4 x i32> %broadcast.splatinsert1147, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1137

vector.body1137:                                  ; preds = %vector.body1137, %polly.loop_header753
  %index1139 = phi i64 [ 0, %polly.loop_header753 ], [ %index.next1140, %vector.body1137 ]
  %vec.ind1145 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753 ], [ %vec.ind.next1146, %vector.body1137 ]
  %201 = mul <4 x i32> %vec.ind1145, %broadcast.splat1148
  %202 = add <4 x i32> %201, <i32 1, i32 1, i32 1, i32 1>
  %203 = urem <4 x i32> %202, <i32 80, i32 80, i32 80, i32 80>
  %204 = sitofp <4 x i32> %203 to <4 x double>
  %205 = fmul fast <4 x double> %204, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %206 = shl i64 %index1139, 3
  %207 = add i64 %206, %199
  %208 = getelementptr i8, i8* %call1, i64 %207
  %209 = bitcast i8* %208 to <4 x double>*
  store <4 x double> %205, <4 x double>* %209, align 8, !alias.scope !93, !noalias !98
  %index.next1140 = add i64 %index1139, 4
  %vec.ind.next1146 = add <4 x i32> %vec.ind1145, <i32 4, i32 4, i32 4, i32 4>
  %210 = icmp eq i64 %index.next1140, 32
  br i1 %210, label %polly.loop_exit761, label %vector.body1137, !llvm.loop !99

polly.loop_exit761:                               ; preds = %vector.body1137
  %polly.indvar_next757 = add nuw nsw i64 %polly.indvar756, 1
  %exitcond838.not = icmp eq i64 %polly.indvar_next757, 32
  br i1 %exitcond838.not, label %polly.loop_header753.1, label %polly.loop_header753

polly.loop_header753.1:                           ; preds = %polly.loop_exit761, %polly.loop_exit761.1
  %polly.indvar756.1 = phi i64 [ %polly.indvar_next757.1, %polly.loop_exit761.1 ], [ 0, %polly.loop_exit761 ]
  %211 = mul nuw nsw i64 %polly.indvar756.1, 480
  %212 = trunc i64 %polly.indvar756.1 to i32
  %broadcast.splatinsert1159 = insertelement <4 x i32> poison, i32 %212, i32 0
  %broadcast.splat1160 = shufflevector <4 x i32> %broadcast.splatinsert1159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1151

vector.body1151:                                  ; preds = %vector.body1151, %polly.loop_header753.1
  %index1153 = phi i64 [ 0, %polly.loop_header753.1 ], [ %index.next1154, %vector.body1151 ]
  %vec.ind1157 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1 ], [ %vec.ind.next1158, %vector.body1151 ]
  %213 = add nuw nsw <4 x i64> %vec.ind1157, <i64 32, i64 32, i64 32, i64 32>
  %214 = trunc <4 x i64> %213 to <4 x i32>
  %215 = mul <4 x i32> %broadcast.splat1160, %214
  %216 = add <4 x i32> %215, <i32 1, i32 1, i32 1, i32 1>
  %217 = urem <4 x i32> %216, <i32 80, i32 80, i32 80, i32 80>
  %218 = sitofp <4 x i32> %217 to <4 x double>
  %219 = fmul fast <4 x double> %218, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %220 = extractelement <4 x i64> %213, i32 0
  %221 = shl i64 %220, 3
  %222 = add i64 %221, %211
  %223 = getelementptr i8, i8* %call1, i64 %222
  %224 = bitcast i8* %223 to <4 x double>*
  store <4 x double> %219, <4 x double>* %224, align 8, !alias.scope !93, !noalias !98
  %index.next1154 = add i64 %index1153, 4
  %vec.ind.next1158 = add <4 x i64> %vec.ind1157, <i64 4, i64 4, i64 4, i64 4>
  %225 = icmp eq i64 %index.next1154, 28
  br i1 %225, label %polly.loop_exit761.1, label %vector.body1151, !llvm.loop !100

polly.loop_exit761.1:                             ; preds = %vector.body1151
  %polly.indvar_next757.1 = add nuw nsw i64 %polly.indvar756.1, 1
  %exitcond838.1.not = icmp eq i64 %polly.indvar_next757.1, 32
  br i1 %exitcond838.1.not, label %polly.loop_header753.1861, label %polly.loop_header753.1

polly.loop_header753.1861:                        ; preds = %polly.loop_exit761.1, %polly.loop_exit761.1872
  %polly.indvar756.1860 = phi i64 [ %polly.indvar_next757.1870, %polly.loop_exit761.1872 ], [ 0, %polly.loop_exit761.1 ]
  %226 = add nuw nsw i64 %polly.indvar756.1860, 32
  %227 = mul nuw nsw i64 %226, 480
  %228 = trunc i64 %226 to i32
  %broadcast.splatinsert1173 = insertelement <4 x i32> poison, i32 %228, i32 0
  %broadcast.splat1174 = shufflevector <4 x i32> %broadcast.splatinsert1173, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1163

vector.body1163:                                  ; preds = %vector.body1163, %polly.loop_header753.1861
  %index1165 = phi i64 [ 0, %polly.loop_header753.1861 ], [ %index.next1166, %vector.body1163 ]
  %vec.ind1171 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753.1861 ], [ %vec.ind.next1172, %vector.body1163 ]
  %229 = mul <4 x i32> %vec.ind1171, %broadcast.splat1174
  %230 = add <4 x i32> %229, <i32 1, i32 1, i32 1, i32 1>
  %231 = urem <4 x i32> %230, <i32 80, i32 80, i32 80, i32 80>
  %232 = sitofp <4 x i32> %231 to <4 x double>
  %233 = fmul fast <4 x double> %232, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %234 = shl i64 %index1165, 3
  %235 = add i64 %234, %227
  %236 = getelementptr i8, i8* %call1, i64 %235
  %237 = bitcast i8* %236 to <4 x double>*
  store <4 x double> %233, <4 x double>* %237, align 8, !alias.scope !93, !noalias !98
  %index.next1166 = add i64 %index1165, 4
  %vec.ind.next1172 = add <4 x i32> %vec.ind1171, <i32 4, i32 4, i32 4, i32 4>
  %238 = icmp eq i64 %index.next1166, 32
  br i1 %238, label %polly.loop_exit761.1872, label %vector.body1163, !llvm.loop !101

polly.loop_exit761.1872:                          ; preds = %vector.body1163
  %polly.indvar_next757.1870 = add nuw nsw i64 %polly.indvar756.1860, 1
  %exitcond838.1871.not = icmp eq i64 %polly.indvar_next757.1870, 32
  br i1 %exitcond838.1871.not, label %polly.loop_header753.1.1, label %polly.loop_header753.1861

polly.loop_header753.1.1:                         ; preds = %polly.loop_exit761.1872, %polly.loop_exit761.1.1
  %polly.indvar756.1.1 = phi i64 [ %polly.indvar_next757.1.1, %polly.loop_exit761.1.1 ], [ 0, %polly.loop_exit761.1872 ]
  %239 = add nuw nsw i64 %polly.indvar756.1.1, 32
  %240 = mul nuw nsw i64 %239, 480
  %241 = trunc i64 %239 to i32
  %broadcast.splatinsert1185 = insertelement <4 x i32> poison, i32 %241, i32 0
  %broadcast.splat1186 = shufflevector <4 x i32> %broadcast.splatinsert1185, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1177

vector.body1177:                                  ; preds = %vector.body1177, %polly.loop_header753.1.1
  %index1179 = phi i64 [ 0, %polly.loop_header753.1.1 ], [ %index.next1180, %vector.body1177 ]
  %vec.ind1183 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1.1 ], [ %vec.ind.next1184, %vector.body1177 ]
  %242 = add nuw nsw <4 x i64> %vec.ind1183, <i64 32, i64 32, i64 32, i64 32>
  %243 = trunc <4 x i64> %242 to <4 x i32>
  %244 = mul <4 x i32> %broadcast.splat1186, %243
  %245 = add <4 x i32> %244, <i32 1, i32 1, i32 1, i32 1>
  %246 = urem <4 x i32> %245, <i32 80, i32 80, i32 80, i32 80>
  %247 = sitofp <4 x i32> %246 to <4 x double>
  %248 = fmul fast <4 x double> %247, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %249 = extractelement <4 x i64> %242, i32 0
  %250 = shl i64 %249, 3
  %251 = add i64 %250, %240
  %252 = getelementptr i8, i8* %call1, i64 %251
  %253 = bitcast i8* %252 to <4 x double>*
  store <4 x double> %248, <4 x double>* %253, align 8, !alias.scope !93, !noalias !98
  %index.next1180 = add i64 %index1179, 4
  %vec.ind.next1184 = add <4 x i64> %vec.ind1183, <i64 4, i64 4, i64 4, i64 4>
  %254 = icmp eq i64 %index.next1180, 28
  br i1 %254, label %polly.loop_exit761.1.1, label %vector.body1177, !llvm.loop !102

polly.loop_exit761.1.1:                           ; preds = %vector.body1177
  %polly.indvar_next757.1.1 = add nuw nsw i64 %polly.indvar756.1.1, 1
  %exitcond838.1.1.not = icmp eq i64 %polly.indvar_next757.1.1, 32
  br i1 %exitcond838.1.1.not, label %polly.loop_header753.2, label %polly.loop_header753.1.1

polly.loop_header753.2:                           ; preds = %polly.loop_exit761.1.1, %polly.loop_exit761.2
  %polly.indvar756.2 = phi i64 [ %polly.indvar_next757.2, %polly.loop_exit761.2 ], [ 0, %polly.loop_exit761.1.1 ]
  %255 = add nuw nsw i64 %polly.indvar756.2, 64
  %256 = mul nuw nsw i64 %255, 480
  %257 = trunc i64 %255 to i32
  %broadcast.splatinsert1199 = insertelement <4 x i32> poison, i32 %257, i32 0
  %broadcast.splat1200 = shufflevector <4 x i32> %broadcast.splatinsert1199, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %polly.loop_header753.2
  %index1191 = phi i64 [ 0, %polly.loop_header753.2 ], [ %index.next1192, %vector.body1189 ]
  %vec.ind1197 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header753.2 ], [ %vec.ind.next1198, %vector.body1189 ]
  %258 = mul <4 x i32> %vec.ind1197, %broadcast.splat1200
  %259 = add <4 x i32> %258, <i32 1, i32 1, i32 1, i32 1>
  %260 = urem <4 x i32> %259, <i32 80, i32 80, i32 80, i32 80>
  %261 = sitofp <4 x i32> %260 to <4 x double>
  %262 = fmul fast <4 x double> %261, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %263 = shl i64 %index1191, 3
  %264 = add i64 %263, %256
  %265 = getelementptr i8, i8* %call1, i64 %264
  %266 = bitcast i8* %265 to <4 x double>*
  store <4 x double> %262, <4 x double>* %266, align 8, !alias.scope !93, !noalias !98
  %index.next1192 = add i64 %index1191, 4
  %vec.ind.next1198 = add <4 x i32> %vec.ind1197, <i32 4, i32 4, i32 4, i32 4>
  %267 = icmp eq i64 %index.next1192, 32
  br i1 %267, label %polly.loop_exit761.2, label %vector.body1189, !llvm.loop !103

polly.loop_exit761.2:                             ; preds = %vector.body1189
  %polly.indvar_next757.2 = add nuw nsw i64 %polly.indvar756.2, 1
  %exitcond838.2.not = icmp eq i64 %polly.indvar_next757.2, 16
  br i1 %exitcond838.2.not, label %polly.loop_header753.1.2, label %polly.loop_header753.2

polly.loop_header753.1.2:                         ; preds = %polly.loop_exit761.2, %polly.loop_exit761.1.2
  %polly.indvar756.1.2 = phi i64 [ %polly.indvar_next757.1.2, %polly.loop_exit761.1.2 ], [ 0, %polly.loop_exit761.2 ]
  %268 = add nuw nsw i64 %polly.indvar756.1.2, 64
  %269 = mul nuw nsw i64 %268, 480
  %270 = trunc i64 %268 to i32
  %broadcast.splatinsert1211 = insertelement <4 x i32> poison, i32 %270, i32 0
  %broadcast.splat1212 = shufflevector <4 x i32> %broadcast.splatinsert1211, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1203

vector.body1203:                                  ; preds = %vector.body1203, %polly.loop_header753.1.2
  %index1205 = phi i64 [ 0, %polly.loop_header753.1.2 ], [ %index.next1206, %vector.body1203 ]
  %vec.ind1209 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header753.1.2 ], [ %vec.ind.next1210, %vector.body1203 ]
  %271 = add nuw nsw <4 x i64> %vec.ind1209, <i64 32, i64 32, i64 32, i64 32>
  %272 = trunc <4 x i64> %271 to <4 x i32>
  %273 = mul <4 x i32> %broadcast.splat1212, %272
  %274 = add <4 x i32> %273, <i32 1, i32 1, i32 1, i32 1>
  %275 = urem <4 x i32> %274, <i32 80, i32 80, i32 80, i32 80>
  %276 = sitofp <4 x i32> %275 to <4 x double>
  %277 = fmul fast <4 x double> %276, <double 1.250000e-02, double 1.250000e-02, double 1.250000e-02, double 1.250000e-02>
  %278 = extractelement <4 x i64> %271, i32 0
  %279 = shl i64 %278, 3
  %280 = add i64 %279, %269
  %281 = getelementptr i8, i8* %call1, i64 %280
  %282 = bitcast i8* %281 to <4 x double>*
  store <4 x double> %277, <4 x double>* %282, align 8, !alias.scope !93, !noalias !98
  %index.next1206 = add i64 %index1205, 4
  %vec.ind.next1210 = add <4 x i64> %vec.ind1209, <i64 4, i64 4, i64 4, i64 4>
  %283 = icmp eq i64 %index.next1206, 28
  br i1 %283, label %polly.loop_exit761.1.2, label %vector.body1203, !llvm.loop !104

polly.loop_exit761.1.2:                           ; preds = %vector.body1203
  %polly.indvar_next757.1.2 = add nuw nsw i64 %polly.indvar756.1.2, 1
  %exitcond838.1.2.not = icmp eq i64 %polly.indvar_next757.1.2, 16
  br i1 %exitcond838.1.2.not, label %init_array.exit, label %polly.loop_header753.1.2

polly.loop_header727.1:                           ; preds = %polly.loop_exit735, %polly.loop_exit735.1
  %polly.indvar730.1 = phi i64 [ %polly.indvar_next731.1, %polly.loop_exit735.1 ], [ 0, %polly.loop_exit735 ]
  %284 = mul nuw nsw i64 %polly.indvar730.1, 480
  %285 = trunc i64 %polly.indvar730.1 to i32
  %broadcast.splatinsert1081 = insertelement <4 x i32> poison, i32 %285, i32 0
  %broadcast.splat1082 = shufflevector <4 x i32> %broadcast.splatinsert1081, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1073

vector.body1073:                                  ; preds = %vector.body1073, %polly.loop_header727.1
  %index1075 = phi i64 [ 0, %polly.loop_header727.1 ], [ %index.next1076, %vector.body1073 ]
  %vec.ind1079 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1 ], [ %vec.ind.next1080, %vector.body1073 ]
  %286 = add nuw nsw <4 x i64> %vec.ind1079, <i64 32, i64 32, i64 32, i64 32>
  %287 = trunc <4 x i64> %286 to <4 x i32>
  %288 = mul <4 x i32> %broadcast.splat1082, %287
  %289 = add <4 x i32> %288, <i32 2, i32 2, i32 2, i32 2>
  %290 = urem <4 x i32> %289, <i32 60, i32 60, i32 60, i32 60>
  %291 = sitofp <4 x i32> %290 to <4 x double>
  %292 = fmul fast <4 x double> %291, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %293 = extractelement <4 x i64> %286, i32 0
  %294 = shl i64 %293, 3
  %295 = add i64 %294, %284
  %296 = getelementptr i8, i8* %call2, i64 %295
  %297 = bitcast i8* %296 to <4 x double>*
  store <4 x double> %292, <4 x double>* %297, align 8, !alias.scope !94, !noalias !96
  %index.next1076 = add i64 %index1075, 4
  %vec.ind.next1080 = add <4 x i64> %vec.ind1079, <i64 4, i64 4, i64 4, i64 4>
  %298 = icmp eq i64 %index.next1076, 28
  br i1 %298, label %polly.loop_exit735.1, label %vector.body1073, !llvm.loop !105

polly.loop_exit735.1:                             ; preds = %vector.body1073
  %polly.indvar_next731.1 = add nuw nsw i64 %polly.indvar730.1, 1
  %exitcond844.1.not = icmp eq i64 %polly.indvar_next731.1, 32
  br i1 %exitcond844.1.not, label %polly.loop_header727.1875, label %polly.loop_header727.1

polly.loop_header727.1875:                        ; preds = %polly.loop_exit735.1, %polly.loop_exit735.1886
  %polly.indvar730.1874 = phi i64 [ %polly.indvar_next731.1884, %polly.loop_exit735.1886 ], [ 0, %polly.loop_exit735.1 ]
  %299 = add nuw nsw i64 %polly.indvar730.1874, 32
  %300 = mul nuw nsw i64 %299, 480
  %301 = trunc i64 %299 to i32
  %broadcast.splatinsert1095 = insertelement <4 x i32> poison, i32 %301, i32 0
  %broadcast.splat1096 = shufflevector <4 x i32> %broadcast.splatinsert1095, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1085

vector.body1085:                                  ; preds = %vector.body1085, %polly.loop_header727.1875
  %index1087 = phi i64 [ 0, %polly.loop_header727.1875 ], [ %index.next1088, %vector.body1085 ]
  %vec.ind1093 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727.1875 ], [ %vec.ind.next1094, %vector.body1085 ]
  %302 = mul <4 x i32> %vec.ind1093, %broadcast.splat1096
  %303 = add <4 x i32> %302, <i32 2, i32 2, i32 2, i32 2>
  %304 = urem <4 x i32> %303, <i32 60, i32 60, i32 60, i32 60>
  %305 = sitofp <4 x i32> %304 to <4 x double>
  %306 = fmul fast <4 x double> %305, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %307 = shl i64 %index1087, 3
  %308 = add i64 %307, %300
  %309 = getelementptr i8, i8* %call2, i64 %308
  %310 = bitcast i8* %309 to <4 x double>*
  store <4 x double> %306, <4 x double>* %310, align 8, !alias.scope !94, !noalias !96
  %index.next1088 = add i64 %index1087, 4
  %vec.ind.next1094 = add <4 x i32> %vec.ind1093, <i32 4, i32 4, i32 4, i32 4>
  %311 = icmp eq i64 %index.next1088, 32
  br i1 %311, label %polly.loop_exit735.1886, label %vector.body1085, !llvm.loop !106

polly.loop_exit735.1886:                          ; preds = %vector.body1085
  %polly.indvar_next731.1884 = add nuw nsw i64 %polly.indvar730.1874, 1
  %exitcond844.1885.not = icmp eq i64 %polly.indvar_next731.1884, 32
  br i1 %exitcond844.1885.not, label %polly.loop_header727.1.1, label %polly.loop_header727.1875

polly.loop_header727.1.1:                         ; preds = %polly.loop_exit735.1886, %polly.loop_exit735.1.1
  %polly.indvar730.1.1 = phi i64 [ %polly.indvar_next731.1.1, %polly.loop_exit735.1.1 ], [ 0, %polly.loop_exit735.1886 ]
  %312 = add nuw nsw i64 %polly.indvar730.1.1, 32
  %313 = mul nuw nsw i64 %312, 480
  %314 = trunc i64 %312 to i32
  %broadcast.splatinsert1107 = insertelement <4 x i32> poison, i32 %314, i32 0
  %broadcast.splat1108 = shufflevector <4 x i32> %broadcast.splatinsert1107, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.body1099, %polly.loop_header727.1.1
  %index1101 = phi i64 [ 0, %polly.loop_header727.1.1 ], [ %index.next1102, %vector.body1099 ]
  %vec.ind1105 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1.1 ], [ %vec.ind.next1106, %vector.body1099 ]
  %315 = add nuw nsw <4 x i64> %vec.ind1105, <i64 32, i64 32, i64 32, i64 32>
  %316 = trunc <4 x i64> %315 to <4 x i32>
  %317 = mul <4 x i32> %broadcast.splat1108, %316
  %318 = add <4 x i32> %317, <i32 2, i32 2, i32 2, i32 2>
  %319 = urem <4 x i32> %318, <i32 60, i32 60, i32 60, i32 60>
  %320 = sitofp <4 x i32> %319 to <4 x double>
  %321 = fmul fast <4 x double> %320, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %322 = extractelement <4 x i64> %315, i32 0
  %323 = shl i64 %322, 3
  %324 = add i64 %323, %313
  %325 = getelementptr i8, i8* %call2, i64 %324
  %326 = bitcast i8* %325 to <4 x double>*
  store <4 x double> %321, <4 x double>* %326, align 8, !alias.scope !94, !noalias !96
  %index.next1102 = add i64 %index1101, 4
  %vec.ind.next1106 = add <4 x i64> %vec.ind1105, <i64 4, i64 4, i64 4, i64 4>
  %327 = icmp eq i64 %index.next1102, 28
  br i1 %327, label %polly.loop_exit735.1.1, label %vector.body1099, !llvm.loop !107

polly.loop_exit735.1.1:                           ; preds = %vector.body1099
  %polly.indvar_next731.1.1 = add nuw nsw i64 %polly.indvar730.1.1, 1
  %exitcond844.1.1.not = icmp eq i64 %polly.indvar_next731.1.1, 32
  br i1 %exitcond844.1.1.not, label %polly.loop_header727.2, label %polly.loop_header727.1.1

polly.loop_header727.2:                           ; preds = %polly.loop_exit735.1.1, %polly.loop_exit735.2
  %polly.indvar730.2 = phi i64 [ %polly.indvar_next731.2, %polly.loop_exit735.2 ], [ 0, %polly.loop_exit735.1.1 ]
  %328 = add nuw nsw i64 %polly.indvar730.2, 64
  %329 = mul nuw nsw i64 %328, 480
  %330 = trunc i64 %328 to i32
  %broadcast.splatinsert1121 = insertelement <4 x i32> poison, i32 %330, i32 0
  %broadcast.splat1122 = shufflevector <4 x i32> %broadcast.splatinsert1121, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.body1111, %polly.loop_header727.2
  %index1113 = phi i64 [ 0, %polly.loop_header727.2 ], [ %index.next1114, %vector.body1111 ]
  %vec.ind1119 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header727.2 ], [ %vec.ind.next1120, %vector.body1111 ]
  %331 = mul <4 x i32> %vec.ind1119, %broadcast.splat1122
  %332 = add <4 x i32> %331, <i32 2, i32 2, i32 2, i32 2>
  %333 = urem <4 x i32> %332, <i32 60, i32 60, i32 60, i32 60>
  %334 = sitofp <4 x i32> %333 to <4 x double>
  %335 = fmul fast <4 x double> %334, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %336 = shl i64 %index1113, 3
  %337 = add i64 %336, %329
  %338 = getelementptr i8, i8* %call2, i64 %337
  %339 = bitcast i8* %338 to <4 x double>*
  store <4 x double> %335, <4 x double>* %339, align 8, !alias.scope !94, !noalias !96
  %index.next1114 = add i64 %index1113, 4
  %vec.ind.next1120 = add <4 x i32> %vec.ind1119, <i32 4, i32 4, i32 4, i32 4>
  %340 = icmp eq i64 %index.next1114, 32
  br i1 %340, label %polly.loop_exit735.2, label %vector.body1111, !llvm.loop !108

polly.loop_exit735.2:                             ; preds = %vector.body1111
  %polly.indvar_next731.2 = add nuw nsw i64 %polly.indvar730.2, 1
  %exitcond844.2.not = icmp eq i64 %polly.indvar_next731.2, 16
  br i1 %exitcond844.2.not, label %polly.loop_header727.1.2, label %polly.loop_header727.2

polly.loop_header727.1.2:                         ; preds = %polly.loop_exit735.2, %polly.loop_exit735.1.2
  %polly.indvar730.1.2 = phi i64 [ %polly.indvar_next731.1.2, %polly.loop_exit735.1.2 ], [ 0, %polly.loop_exit735.2 ]
  %341 = add nuw nsw i64 %polly.indvar730.1.2, 64
  %342 = mul nuw nsw i64 %341, 480
  %343 = trunc i64 %341 to i32
  %broadcast.splatinsert1133 = insertelement <4 x i32> poison, i32 %343, i32 0
  %broadcast.splat1134 = shufflevector <4 x i32> %broadcast.splatinsert1133, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1125

vector.body1125:                                  ; preds = %vector.body1125, %polly.loop_header727.1.2
  %index1127 = phi i64 [ 0, %polly.loop_header727.1.2 ], [ %index.next1128, %vector.body1125 ]
  %vec.ind1131 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header727.1.2 ], [ %vec.ind.next1132, %vector.body1125 ]
  %344 = add nuw nsw <4 x i64> %vec.ind1131, <i64 32, i64 32, i64 32, i64 32>
  %345 = trunc <4 x i64> %344 to <4 x i32>
  %346 = mul <4 x i32> %broadcast.splat1134, %345
  %347 = add <4 x i32> %346, <i32 2, i32 2, i32 2, i32 2>
  %348 = urem <4 x i32> %347, <i32 60, i32 60, i32 60, i32 60>
  %349 = sitofp <4 x i32> %348 to <4 x double>
  %350 = fmul fast <4 x double> %349, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %351 = extractelement <4 x i64> %344, i32 0
  %352 = shl i64 %351, 3
  %353 = add i64 %352, %342
  %354 = getelementptr i8, i8* %call2, i64 %353
  %355 = bitcast i8* %354 to <4 x double>*
  store <4 x double> %350, <4 x double>* %355, align 8, !alias.scope !94, !noalias !96
  %index.next1128 = add i64 %index1127, 4
  %vec.ind.next1132 = add <4 x i64> %vec.ind1131, <i64 4, i64 4, i64 4, i64 4>
  %356 = icmp eq i64 %index.next1128, 28
  br i1 %356, label %polly.loop_exit735.1.2, label %vector.body1125, !llvm.loop !109

polly.loop_exit735.1.2:                           ; preds = %vector.body1125
  %polly.indvar_next731.1.2 = add nuw nsw i64 %polly.indvar730.1.2, 1
  %exitcond844.1.2.not = icmp eq i64 %polly.indvar_next731.1.2, 16
  br i1 %exitcond844.1.2.not, label %polly.loop_header753, label %polly.loop_header727.1.2

polly.loop_header700.1:                           ; preds = %polly.loop_exit708, %polly.loop_exit708.1
  %polly.indvar703.1 = phi i64 [ %polly.indvar_next704.1, %polly.loop_exit708.1 ], [ 0, %polly.loop_exit708 ]
  %357 = mul nuw nsw i64 %polly.indvar703.1, 640
  %358 = trunc i64 %polly.indvar703.1 to i32
  %broadcast.splatinsert967 = insertelement <4 x i32> poison, i32 %358, i32 0
  %broadcast.splat968 = shufflevector <4 x i32> %broadcast.splatinsert967, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body959

vector.body959:                                   ; preds = %vector.body959, %polly.loop_header700.1
  %index961 = phi i64 [ 0, %polly.loop_header700.1 ], [ %index.next962, %vector.body959 ]
  %vec.ind965 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1 ], [ %vec.ind.next966, %vector.body959 ]
  %359 = add nuw nsw <4 x i64> %vec.ind965, <i64 32, i64 32, i64 32, i64 32>
  %360 = trunc <4 x i64> %359 to <4 x i32>
  %361 = mul <4 x i32> %broadcast.splat968, %360
  %362 = add <4 x i32> %361, <i32 3, i32 3, i32 3, i32 3>
  %363 = urem <4 x i32> %362, <i32 80, i32 80, i32 80, i32 80>
  %364 = sitofp <4 x i32> %363 to <4 x double>
  %365 = fmul fast <4 x double> %364, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %366 = extractelement <4 x i64> %359, i32 0
  %367 = shl i64 %366, 3
  %368 = add nuw nsw i64 %367, %357
  %369 = getelementptr i8, i8* %call, i64 %368
  %370 = bitcast i8* %369 to <4 x double>*
  store <4 x double> %365, <4 x double>* %370, align 8, !alias.scope !90, !noalias !92
  %index.next962 = add i64 %index961, 4
  %vec.ind.next966 = add <4 x i64> %vec.ind965, <i64 4, i64 4, i64 4, i64 4>
  %371 = icmp eq i64 %index.next962, 32
  br i1 %371, label %polly.loop_exit708.1, label %vector.body959, !llvm.loop !110

polly.loop_exit708.1:                             ; preds = %vector.body959
  %polly.indvar_next704.1 = add nuw nsw i64 %polly.indvar703.1, 1
  %exitcond853.1.not = icmp eq i64 %polly.indvar_next704.1, 32
  br i1 %exitcond853.1.not, label %polly.loop_header700.2, label %polly.loop_header700.1

polly.loop_header700.2:                           ; preds = %polly.loop_exit708.1, %polly.loop_exit708.2
  %polly.indvar703.2 = phi i64 [ %polly.indvar_next704.2, %polly.loop_exit708.2 ], [ 0, %polly.loop_exit708.1 ]
  %372 = mul nuw nsw i64 %polly.indvar703.2, 640
  %373 = trunc i64 %polly.indvar703.2 to i32
  %broadcast.splatinsert979 = insertelement <4 x i32> poison, i32 %373, i32 0
  %broadcast.splat980 = shufflevector <4 x i32> %broadcast.splatinsert979, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body971

vector.body971:                                   ; preds = %vector.body971, %polly.loop_header700.2
  %index973 = phi i64 [ 0, %polly.loop_header700.2 ], [ %index.next974, %vector.body971 ]
  %vec.ind977 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2 ], [ %vec.ind.next978, %vector.body971 ]
  %374 = add nuw nsw <4 x i64> %vec.ind977, <i64 64, i64 64, i64 64, i64 64>
  %375 = trunc <4 x i64> %374 to <4 x i32>
  %376 = mul <4 x i32> %broadcast.splat980, %375
  %377 = add <4 x i32> %376, <i32 3, i32 3, i32 3, i32 3>
  %378 = urem <4 x i32> %377, <i32 80, i32 80, i32 80, i32 80>
  %379 = sitofp <4 x i32> %378 to <4 x double>
  %380 = fmul fast <4 x double> %379, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %381 = extractelement <4 x i64> %374, i32 0
  %382 = shl i64 %381, 3
  %383 = add nuw nsw i64 %382, %372
  %384 = getelementptr i8, i8* %call, i64 %383
  %385 = bitcast i8* %384 to <4 x double>*
  store <4 x double> %380, <4 x double>* %385, align 8, !alias.scope !90, !noalias !92
  %index.next974 = add i64 %index973, 4
  %vec.ind.next978 = add <4 x i64> %vec.ind977, <i64 4, i64 4, i64 4, i64 4>
  %386 = icmp eq i64 %index.next974, 16
  br i1 %386, label %polly.loop_exit708.2, label %vector.body971, !llvm.loop !111

polly.loop_exit708.2:                             ; preds = %vector.body971
  %polly.indvar_next704.2 = add nuw nsw i64 %polly.indvar703.2, 1
  %exitcond853.2.not = icmp eq i64 %polly.indvar_next704.2, 32
  br i1 %exitcond853.2.not, label %polly.loop_header700.1889, label %polly.loop_header700.2

polly.loop_header700.1889:                        ; preds = %polly.loop_exit708.2, %polly.loop_exit708.1900
  %polly.indvar703.1888 = phi i64 [ %polly.indvar_next704.1898, %polly.loop_exit708.1900 ], [ 0, %polly.loop_exit708.2 ]
  %387 = add nuw nsw i64 %polly.indvar703.1888, 32
  %388 = mul nuw nsw i64 %387, 640
  %389 = trunc i64 %387 to i32
  %broadcast.splatinsert993 = insertelement <4 x i32> poison, i32 %389, i32 0
  %broadcast.splat994 = shufflevector <4 x i32> %broadcast.splatinsert993, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body983

vector.body983:                                   ; preds = %vector.body983, %polly.loop_header700.1889
  %index985 = phi i64 [ 0, %polly.loop_header700.1889 ], [ %index.next986, %vector.body983 ]
  %vec.ind991 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.1889 ], [ %vec.ind.next992, %vector.body983 ]
  %390 = mul <4 x i32> %vec.ind991, %broadcast.splat994
  %391 = add <4 x i32> %390, <i32 3, i32 3, i32 3, i32 3>
  %392 = urem <4 x i32> %391, <i32 80, i32 80, i32 80, i32 80>
  %393 = sitofp <4 x i32> %392 to <4 x double>
  %394 = fmul fast <4 x double> %393, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %395 = shl i64 %index985, 3
  %396 = add nuw nsw i64 %395, %388
  %397 = getelementptr i8, i8* %call, i64 %396
  %398 = bitcast i8* %397 to <4 x double>*
  store <4 x double> %394, <4 x double>* %398, align 8, !alias.scope !90, !noalias !92
  %index.next986 = add i64 %index985, 4
  %vec.ind.next992 = add <4 x i32> %vec.ind991, <i32 4, i32 4, i32 4, i32 4>
  %399 = icmp eq i64 %index.next986, 32
  br i1 %399, label %polly.loop_exit708.1900, label %vector.body983, !llvm.loop !112

polly.loop_exit708.1900:                          ; preds = %vector.body983
  %polly.indvar_next704.1898 = add nuw nsw i64 %polly.indvar703.1888, 1
  %exitcond853.1899.not = icmp eq i64 %polly.indvar_next704.1898, 32
  br i1 %exitcond853.1899.not, label %polly.loop_header700.1.1, label %polly.loop_header700.1889

polly.loop_header700.1.1:                         ; preds = %polly.loop_exit708.1900, %polly.loop_exit708.1.1
  %polly.indvar703.1.1 = phi i64 [ %polly.indvar_next704.1.1, %polly.loop_exit708.1.1 ], [ 0, %polly.loop_exit708.1900 ]
  %400 = add nuw nsw i64 %polly.indvar703.1.1, 32
  %401 = mul nuw nsw i64 %400, 640
  %402 = trunc i64 %400 to i32
  %broadcast.splatinsert1005 = insertelement <4 x i32> poison, i32 %402, i32 0
  %broadcast.splat1006 = shufflevector <4 x i32> %broadcast.splatinsert1005, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body997

vector.body997:                                   ; preds = %vector.body997, %polly.loop_header700.1.1
  %index999 = phi i64 [ 0, %polly.loop_header700.1.1 ], [ %index.next1000, %vector.body997 ]
  %vec.ind1003 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.1 ], [ %vec.ind.next1004, %vector.body997 ]
  %403 = add nuw nsw <4 x i64> %vec.ind1003, <i64 32, i64 32, i64 32, i64 32>
  %404 = trunc <4 x i64> %403 to <4 x i32>
  %405 = mul <4 x i32> %broadcast.splat1006, %404
  %406 = add <4 x i32> %405, <i32 3, i32 3, i32 3, i32 3>
  %407 = urem <4 x i32> %406, <i32 80, i32 80, i32 80, i32 80>
  %408 = sitofp <4 x i32> %407 to <4 x double>
  %409 = fmul fast <4 x double> %408, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %410 = extractelement <4 x i64> %403, i32 0
  %411 = shl i64 %410, 3
  %412 = add nuw nsw i64 %411, %401
  %413 = getelementptr i8, i8* %call, i64 %412
  %414 = bitcast i8* %413 to <4 x double>*
  store <4 x double> %409, <4 x double>* %414, align 8, !alias.scope !90, !noalias !92
  %index.next1000 = add i64 %index999, 4
  %vec.ind.next1004 = add <4 x i64> %vec.ind1003, <i64 4, i64 4, i64 4, i64 4>
  %415 = icmp eq i64 %index.next1000, 32
  br i1 %415, label %polly.loop_exit708.1.1, label %vector.body997, !llvm.loop !113

polly.loop_exit708.1.1:                           ; preds = %vector.body997
  %polly.indvar_next704.1.1 = add nuw nsw i64 %polly.indvar703.1.1, 1
  %exitcond853.1.1.not = icmp eq i64 %polly.indvar_next704.1.1, 32
  br i1 %exitcond853.1.1.not, label %polly.loop_header700.2.1, label %polly.loop_header700.1.1

polly.loop_header700.2.1:                         ; preds = %polly.loop_exit708.1.1, %polly.loop_exit708.2.1
  %polly.indvar703.2.1 = phi i64 [ %polly.indvar_next704.2.1, %polly.loop_exit708.2.1 ], [ 0, %polly.loop_exit708.1.1 ]
  %416 = add nuw nsw i64 %polly.indvar703.2.1, 32
  %417 = mul nuw nsw i64 %416, 640
  %418 = trunc i64 %416 to i32
  %broadcast.splatinsert1017 = insertelement <4 x i32> poison, i32 %418, i32 0
  %broadcast.splat1018 = shufflevector <4 x i32> %broadcast.splatinsert1017, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1009

vector.body1009:                                  ; preds = %vector.body1009, %polly.loop_header700.2.1
  %index1011 = phi i64 [ 0, %polly.loop_header700.2.1 ], [ %index.next1012, %vector.body1009 ]
  %vec.ind1015 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2.1 ], [ %vec.ind.next1016, %vector.body1009 ]
  %419 = add nuw nsw <4 x i64> %vec.ind1015, <i64 64, i64 64, i64 64, i64 64>
  %420 = trunc <4 x i64> %419 to <4 x i32>
  %421 = mul <4 x i32> %broadcast.splat1018, %420
  %422 = add <4 x i32> %421, <i32 3, i32 3, i32 3, i32 3>
  %423 = urem <4 x i32> %422, <i32 80, i32 80, i32 80, i32 80>
  %424 = sitofp <4 x i32> %423 to <4 x double>
  %425 = fmul fast <4 x double> %424, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %426 = extractelement <4 x i64> %419, i32 0
  %427 = shl i64 %426, 3
  %428 = add nuw nsw i64 %427, %417
  %429 = getelementptr i8, i8* %call, i64 %428
  %430 = bitcast i8* %429 to <4 x double>*
  store <4 x double> %425, <4 x double>* %430, align 8, !alias.scope !90, !noalias !92
  %index.next1012 = add i64 %index1011, 4
  %vec.ind.next1016 = add <4 x i64> %vec.ind1015, <i64 4, i64 4, i64 4, i64 4>
  %431 = icmp eq i64 %index.next1012, 16
  br i1 %431, label %polly.loop_exit708.2.1, label %vector.body1009, !llvm.loop !114

polly.loop_exit708.2.1:                           ; preds = %vector.body1009
  %polly.indvar_next704.2.1 = add nuw nsw i64 %polly.indvar703.2.1, 1
  %exitcond853.2.1.not = icmp eq i64 %polly.indvar_next704.2.1, 32
  br i1 %exitcond853.2.1.not, label %polly.loop_header700.2903, label %polly.loop_header700.2.1

polly.loop_header700.2903:                        ; preds = %polly.loop_exit708.2.1, %polly.loop_exit708.2914
  %polly.indvar703.2902 = phi i64 [ %polly.indvar_next704.2912, %polly.loop_exit708.2914 ], [ 0, %polly.loop_exit708.2.1 ]
  %432 = add nuw nsw i64 %polly.indvar703.2902, 64
  %433 = mul nuw nsw i64 %432, 640
  %434 = trunc i64 %432 to i32
  %broadcast.splatinsert1031 = insertelement <4 x i32> poison, i32 %434, i32 0
  %broadcast.splat1032 = shufflevector <4 x i32> %broadcast.splatinsert1031, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1021

vector.body1021:                                  ; preds = %vector.body1021, %polly.loop_header700.2903
  %index1023 = phi i64 [ 0, %polly.loop_header700.2903 ], [ %index.next1024, %vector.body1021 ]
  %vec.ind1029 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %polly.loop_header700.2903 ], [ %vec.ind.next1030, %vector.body1021 ]
  %435 = mul <4 x i32> %vec.ind1029, %broadcast.splat1032
  %436 = add <4 x i32> %435, <i32 3, i32 3, i32 3, i32 3>
  %437 = urem <4 x i32> %436, <i32 80, i32 80, i32 80, i32 80>
  %438 = sitofp <4 x i32> %437 to <4 x double>
  %439 = fmul fast <4 x double> %438, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %440 = shl i64 %index1023, 3
  %441 = add nuw nsw i64 %440, %433
  %442 = getelementptr i8, i8* %call, i64 %441
  %443 = bitcast i8* %442 to <4 x double>*
  store <4 x double> %439, <4 x double>* %443, align 8, !alias.scope !90, !noalias !92
  %index.next1024 = add i64 %index1023, 4
  %vec.ind.next1030 = add <4 x i32> %vec.ind1029, <i32 4, i32 4, i32 4, i32 4>
  %444 = icmp eq i64 %index.next1024, 32
  br i1 %444, label %polly.loop_exit708.2914, label %vector.body1021, !llvm.loop !115

polly.loop_exit708.2914:                          ; preds = %vector.body1021
  %polly.indvar_next704.2912 = add nuw nsw i64 %polly.indvar703.2902, 1
  %exitcond853.2913.not = icmp eq i64 %polly.indvar_next704.2912, 16
  br i1 %exitcond853.2913.not, label %polly.loop_header700.1.2, label %polly.loop_header700.2903

polly.loop_header700.1.2:                         ; preds = %polly.loop_exit708.2914, %polly.loop_exit708.1.2
  %polly.indvar703.1.2 = phi i64 [ %polly.indvar_next704.1.2, %polly.loop_exit708.1.2 ], [ 0, %polly.loop_exit708.2914 ]
  %445 = add nuw nsw i64 %polly.indvar703.1.2, 64
  %446 = mul nuw nsw i64 %445, 640
  %447 = trunc i64 %445 to i32
  %broadcast.splatinsert1043 = insertelement <4 x i32> poison, i32 %447, i32 0
  %broadcast.splat1044 = shufflevector <4 x i32> %broadcast.splatinsert1043, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1035

vector.body1035:                                  ; preds = %vector.body1035, %polly.loop_header700.1.2
  %index1037 = phi i64 [ 0, %polly.loop_header700.1.2 ], [ %index.next1038, %vector.body1035 ]
  %vec.ind1041 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.1.2 ], [ %vec.ind.next1042, %vector.body1035 ]
  %448 = add nuw nsw <4 x i64> %vec.ind1041, <i64 32, i64 32, i64 32, i64 32>
  %449 = trunc <4 x i64> %448 to <4 x i32>
  %450 = mul <4 x i32> %broadcast.splat1044, %449
  %451 = add <4 x i32> %450, <i32 3, i32 3, i32 3, i32 3>
  %452 = urem <4 x i32> %451, <i32 80, i32 80, i32 80, i32 80>
  %453 = sitofp <4 x i32> %452 to <4 x double>
  %454 = fmul fast <4 x double> %453, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %455 = extractelement <4 x i64> %448, i32 0
  %456 = shl i64 %455, 3
  %457 = add nuw nsw i64 %456, %446
  %458 = getelementptr i8, i8* %call, i64 %457
  %459 = bitcast i8* %458 to <4 x double>*
  store <4 x double> %454, <4 x double>* %459, align 8, !alias.scope !90, !noalias !92
  %index.next1038 = add i64 %index1037, 4
  %vec.ind.next1042 = add <4 x i64> %vec.ind1041, <i64 4, i64 4, i64 4, i64 4>
  %460 = icmp eq i64 %index.next1038, 32
  br i1 %460, label %polly.loop_exit708.1.2, label %vector.body1035, !llvm.loop !116

polly.loop_exit708.1.2:                           ; preds = %vector.body1035
  %polly.indvar_next704.1.2 = add nuw nsw i64 %polly.indvar703.1.2, 1
  %exitcond853.1.2.not = icmp eq i64 %polly.indvar_next704.1.2, 16
  br i1 %exitcond853.1.2.not, label %polly.loop_header700.2.2, label %polly.loop_header700.1.2

polly.loop_header700.2.2:                         ; preds = %polly.loop_exit708.1.2, %polly.loop_exit708.2.2
  %polly.indvar703.2.2 = phi i64 [ %polly.indvar_next704.2.2, %polly.loop_exit708.2.2 ], [ 0, %polly.loop_exit708.1.2 ]
  %461 = add nuw nsw i64 %polly.indvar703.2.2, 64
  %462 = mul nuw nsw i64 %461, 640
  %463 = trunc i64 %461 to i32
  %broadcast.splatinsert1055 = insertelement <4 x i32> poison, i32 %463, i32 0
  %broadcast.splat1056 = shufflevector <4 x i32> %broadcast.splatinsert1055, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body1047

vector.body1047:                                  ; preds = %vector.body1047, %polly.loop_header700.2.2
  %index1049 = phi i64 [ 0, %polly.loop_header700.2.2 ], [ %index.next1050, %vector.body1047 ]
  %vec.ind1053 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %polly.loop_header700.2.2 ], [ %vec.ind.next1054, %vector.body1047 ]
  %464 = add nuw nsw <4 x i64> %vec.ind1053, <i64 64, i64 64, i64 64, i64 64>
  %465 = trunc <4 x i64> %464 to <4 x i32>
  %466 = mul <4 x i32> %broadcast.splat1056, %465
  %467 = add <4 x i32> %466, <i32 3, i32 3, i32 3, i32 3>
  %468 = urem <4 x i32> %467, <i32 80, i32 80, i32 80, i32 80>
  %469 = sitofp <4 x i32> %468 to <4 x double>
  %470 = fmul fast <4 x double> %469, <double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111, double 0x3F91111111111111>
  %471 = extractelement <4 x i64> %464, i32 0
  %472 = shl i64 %471, 3
  %473 = add nuw nsw i64 %472, %462
  %474 = getelementptr i8, i8* %call, i64 %473
  %475 = bitcast i8* %474 to <4 x double>*
  store <4 x double> %470, <4 x double>* %475, align 8, !alias.scope !90, !noalias !92
  %index.next1050 = add i64 %index1049, 4
  %vec.ind.next1054 = add <4 x i64> %vec.ind1053, <i64 4, i64 4, i64 4, i64 4>
  %476 = icmp eq i64 %index.next1050, 16
  br i1 %476, label %polly.loop_exit708.2.2, label %vector.body1047, !llvm.loop !117

polly.loop_exit708.2.2:                           ; preds = %vector.body1047
  %polly.indvar_next704.2.2 = add nuw nsw i64 %polly.indvar703.2.2, 1
  %exitcond853.2.2.not = icmp eq i64 %polly.indvar_next704.2.2, 16
  br i1 %exitcond853.2.2.not, label %polly.loop_header727, label %polly.loop_header700.2.2
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
!21 = distinct !{!21, !12, !22, !23, !24, !25, !28}
!22 = !{!"llvm.loop.disable_nonforced"}
!23 = !{!"llvm.loop.id", !"k"}
!24 = !{!"llvm.loop.tile.size", i32 8}
!25 = !{!"llvm.loop.tile.followup_floor", !26}
!26 = distinct !{!26, !12, !22, !27}
!27 = !{!"llvm.loop.id", !"k1"}
!28 = !{!"llvm.loop.tile.followup_tile", !29}
!29 = distinct !{!29, !12, !30}
!30 = !{!"llvm.loop.id", !"k2"}
!31 = distinct !{!31, !12, !22, !32, !33, !34, !37}
!32 = !{!"llvm.loop.id", !"j"}
!33 = !{!"llvm.loop.tile.size", i32 64}
!34 = !{!"llvm.loop.tile.followup_floor", !35}
!35 = distinct !{!35, !12, !22, !36}
!36 = !{!"llvm.loop.id", !"j1"}
!37 = !{!"llvm.loop.tile.followup_tile", !38}
!38 = distinct !{!38, !12, !22, !39}
!39 = !{!"llvm.loop.id", !"j2"}
!40 = distinct !{!40, !12, !22, !41, !42, !43, !44, !45, !51}
!41 = !{!"llvm.loop.id", !"i"}
!42 = !{!"llvm.loop.tile.enable", i1 true}
!43 = !{!"llvm.loop.tile.depth", i32 3}
!44 = !{!"llvm.loop.tile.size", i32 20}
!45 = !{!"llvm.loop.tile.followup_floor", !46}
!46 = distinct !{!46, !12, !22, !47, !48, !49, !50}
!47 = !{!"llvm.loop.id", !"i1"}
!48 = !{!"llvm.loop.interchange.enable", i1 true}
!49 = !{!"llvm.loop.interchange.depth", i32 5}
!50 = !{!"llvm.loop.interchange.permutation", i32 2, i32 0, i32 1, i32 4, i32 3}
!51 = !{!"llvm.loop.tile.followup_tile", !52}
!52 = distinct !{!52, !12, !22, !53}
!53 = !{!"llvm.loop.id", !"i2"}
!54 = distinct !{!54, !12, !13}
!55 = distinct !{!55, !12, !13}
!56 = distinct !{!56, !12, !13}
!57 = distinct !{!57, !12, !13}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !4, i64 0}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !63, !"polly.alias.scope.MemRef_call"}
!63 = distinct !{!63, !"polly.alias.scope.domain"}
!64 = !{!65, !66}
!65 = distinct !{!65, !63, !"polly.alias.scope.MemRef_call1"}
!66 = distinct !{!66, !63, !"polly.alias.scope.MemRef_call2"}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !69, !13}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!62, !66}
!71 = !{!62, !65}
!72 = distinct !{!72, !73, !"polly.alias.scope.MemRef_call"}
!73 = distinct !{!73, !"polly.alias.scope.domain"}
!74 = !{!75, !76}
!75 = distinct !{!75, !73, !"polly.alias.scope.MemRef_call1"}
!76 = distinct !{!76, !73, !"polly.alias.scope.MemRef_call2"}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !69, !13}
!79 = !{!72, !76}
!80 = !{!72, !75}
!81 = distinct !{!81, !82, !"polly.alias.scope.MemRef_call"}
!82 = distinct !{!82, !"polly.alias.scope.domain"}
!83 = !{!84, !85}
!84 = distinct !{!84, !82, !"polly.alias.scope.MemRef_call1"}
!85 = distinct !{!85, !82, !"polly.alias.scope.MemRef_call2"}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !69, !13}
!88 = !{!81, !85}
!89 = !{!81, !84}
!90 = distinct !{!90, !91, !"polly.alias.scope.MemRef_call"}
!91 = distinct !{!91, !"polly.alias.scope.domain"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"polly.alias.scope.MemRef_call1"}
!94 = distinct !{!94, !91, !"polly.alias.scope.MemRef_call2"}
!95 = distinct !{!95, !13}
!96 = !{!93, !90}
!97 = distinct !{!97, !13}
!98 = !{!94, !90}
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
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = distinct !{!117, !13}
